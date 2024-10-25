Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469119AF976
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C1010E296;
	Fri, 25 Oct 2024 06:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XofbEWur";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD3010E280;
 Fri, 25 Oct 2024 06:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729836117; x=1761372117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JljgrqF/O9UKnBr4XfOowQ0Bz/ijHlGNu9SKcGI+1zs=;
 b=XofbEWurfzq/gNCncArJv5DPHTy9eBckXirvXBbQGe07Q68sZJhbnQ2i
 jvImSt6jf0T7raa9lVkeFQ92oGD0cf61txpzSnMKJnO3wtGVSWLAxEu7d
 lumwis4JiIrAIoN+pGsKHEqj6+Tb4tQkANF8E2rrIpXHV87WN7YhCpGBC
 Ltc8BnlNJMz9OimQavBhSVVUoDPvewwaYQq5mczB1yE9cbpy35MosaKDO
 uQzgsajdLLJq01npjSO9QDudEn/bkWjIEja0CtdspzAozc4JGYFf9HJ8h
 GhA9583geA62RfoSNTHYnZsCxKvvZxYAN05F22DspjRJA4ycBGD2dYLv+ Q==;
X-CSE-ConnectionGUID: Lrm5UZ4KTe+mXWbmmOLAFQ==
X-CSE-MsgGUID: yVCeFCVyTv6Hk/NkGZ/Ykg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29620677"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29620677"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:01:57 -0700
X-CSE-ConnectionGUID: TTGknhVgQCe5rXTsWdJTAA==
X-CSE-MsgGUID: ZvBic3lkTXq0Q3NCdHq9sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80734401"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 24 Oct 2024 23:01:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Date: Fri, 25 Oct 2024 11:31:32 +0530
Message-Id: <20241025060136.9884-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241025060136.9884-1-suraj.kandpal@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
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

Fix the plane max height and width limits taking into account the
joined pipe limits too.

Bspec: 28692, 49199, 68858
Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..fc578af4f394 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_width_max = 5120 * num_joined_pipes;
-		plane_height_max = 4320;
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		if (num_joined_pipes > 1) {
+			plane_width_max = 8192;
+			plane_height_max = 4800;
+		} else {
+			plane_width_max = 5120;
+			plane_height_max = 4096;
+		}
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
+		if (num_joined_pipes > 1) {
+			plane_width_max = 7680;
+			plane_height_max = 4320;
+		} else {
+			plane_width_max = 5120;
+			plane_height_max = 4096;
+		}
 	} else {
 		plane_width_max = 5120;
 		plane_height_max = 4096;
-- 
2.34.1

