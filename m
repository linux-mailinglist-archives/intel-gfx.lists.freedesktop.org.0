Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B6DAF9153
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 13:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B556C10E9E5;
	Fri,  4 Jul 2025 11:18:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxdm16Qi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E85910E9E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jul 2025 11:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751627918; x=1783163918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QCcC96bzaxkFfCvXs4KMqXhebzqxbeB7zGNPIdw0ZAI=;
 b=mxdm16QivV2GUI3Yij2yHLIZxm1CTwxOkELypqlksedFzKpEmgcItFTD
 4zNylketvRWMS9dGozJA0TZn8BJAyZ6d+LMg/rOiqChPm2anaP4ZCGwH/
 0QJFVlGY8nCPb365g//QVFhviQio2tnmZge/ZDDcP0cfY1ko/qLj8OJg4
 BdYdmO3V0oPPlRuJQ8ddmmLDt/IBwfDwwF7S4AZg9Ur4JoMNwgHqEoduU
 XDRJbH0tXy2zwlE6bgmhNuPtI1QW9hno3FSGSMya8yZsNGLPJWCW7J1oT
 aAoGQF+0OOpF2VoklXggRzyikYIAyHnDjST3eQEl1K2wWLVPbuPz6TDMr g==;
X-CSE-ConnectionGUID: y8v7NL1eSea5yBv7oJuNYA==
X-CSE-MsgGUID: +9qyjg7cSD24bjyUkcDUrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="65414970"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="65414970"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 04:18:37 -0700
X-CSE-ConnectionGUID: MNMrjD7/Q1Gq8v/ggSN3Mg==
X-CSE-MsgGUID: pV9Ho9acSJqtPKsxksUtSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="154705240"
Received: from intel-s2600wft.iind.intel.com (HELO biaas-d105.iind.intel.com)
 ([10.223.26.161])
 by fmviesa006.fm.intel.com with ESMTP; 04 Jul 2025 04:18:36 -0700
From: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com,
 Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
Subject: [PATCH] drm/i915/display: Change ret value type from int to long
Date: Fri,  4 Jul 2025 10:56:00 +0000
Message-ID: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
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

This issue was first observed with the Android compositor where
the GPU composited layer was not properly waited on when there
were stub fences in other overlay planes resulting in significant
visual artifacts.

Test: No graphical artifacts with shadertoy
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
2.34.1

