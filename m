Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3913AFC4D0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 09:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15CD10E5BE;
	Tue,  8 Jul 2025 07:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBhkFDIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6132810E5BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jul 2025 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751961413; x=1783497413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4+M3GT2DMbABOFqLl4nxKJJ+iNEX2VDJo7gmG884dsw=;
 b=DBhkFDIbbsDN85T6oyfdgf+peH+txxEMNPNCS+L+DbMWqxICnB/LhK1l
 BZgVaVZMYnNCSmdOxot9S2MmphcEla/PybVj+jNxVco2IyvPQTjEjXR/F
 ghKh7KuLL4sfAVZY3YA0tb6wzJrpxvEdZE7UgNRoTegALHGaJMW9xr5+Z
 nbw6fdKke29W3Z9At42+1hTdkLCC493AACCN33Y7bQgzMvArVQcnj+Y9+
 UDWfZnxIz5EB1uOqXz8N+JxXx/YZ4sTIFyc5CbHd3onsANcNWQBrnQ60I
 VpcLm6iRsgQ2VLwn5lwdt6O4Ujf0mRW3EPl/AAqWK3LeEQnOxCZPffi/J Q==;
X-CSE-ConnectionGUID: 29FQjufiSdSNdQNvTtVOKQ==
X-CSE-MsgGUID: HcqRn4pzQiO1GtF06EXaKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="57990747"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="57990747"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 00:56:47 -0700
X-CSE-ConnectionGUID: OnZWcYJqRo+gx0dw6pSIfw==
X-CSE-MsgGUID: E9lshkeiSpCAAVXCMDn1Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="155772453"
Received: from intel-s2600wft.iind.intel.com (HELO biaas-d105.iind.intel.com)
 ([10.223.26.161])
 by fmviesa009.fm.intel.com with ESMTP; 08 Jul 2025 00:56:46 -0700
From: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com,
 Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
Subject: [PATCH v3] drm/i915/display: Fix dma_fence_wait_timeout() return
 value handling
Date: Tue,  8 Jul 2025 07:33:27 +0000
Message-ID: <20250708073327.1947354-1-aakash.deep.sarkar@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dma_fence_wait_timeout returns a long type but the driver is
only using the lower 32 bits of the retval and discarding the
upper 32 bits.

This is particularly problematic if there are already signalled
or stub fences on some of the hw planes. In this case the
dma_fence_wait_timeout function will immediately return with
timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
the fence is already signalled. If the driver only uses the lower
32 bits of this return value then it'll interpret it as an error
code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.

This issue was first observed in the xe driver with the Android
compositor where the GPU composited layer was not properly waited
on when there were stub fences in other overlay planes resulting in
visual artifacts.

Fixes: d59cf7bb73f3c ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence")
Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 456fc4b04cda..7035c1fc9033 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
 	struct drm_plane *plane;
 	struct drm_plane_state *new_plane_state;
-	int ret, i;
+	long ret;
+	int i;
 
 	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
 		if (new_plane_state->fence) {
-- 
2.49.0

