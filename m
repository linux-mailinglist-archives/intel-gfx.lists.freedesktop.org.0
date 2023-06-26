Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0A473D9AD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 10:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0320910E1D0;
	Mon, 26 Jun 2023 08:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD6889D8E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 08:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687768117; x=1719304117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xSTIZsKynpHVhpNf1LhiNOl2TmAPCgDqoFJTAYp+6ks=;
 b=dilf9cBMu3CIzaiuiPC/ddSRTmn0Vf5Wxuz5mDJYhk16LRf3oYcsyHpH
 AhRKkivhdzoO0D5OJmQlpfmP+2q6KJxSELdB81PqMtugHbWrzYpmgZFVg
 myOo1nFZ1S/oi7uBeDpyWJ7jQ8pJBrXJIK8eeRA4pAnTlbGG66HwwT8Tg
 tougU2LhO24SX0HNyhsY0Q2QV9QDFIADD5IXaPpOnBvkJXVnKVCQJLcMv
 YEA/i0+w9R2g8yPoZPhgMrkOXOye9VmhDZLufAPbF+a8S+uDkU41XzvXV
 8ioFGyFpdxya9lT8wUPzpK8nUSCRWG2sh4NYLZ87gj06wpdKgdLU28ziR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="361252142"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="361252142"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 01:28:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="962693779"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="962693779"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jun 2023 01:28:22 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:28:21 +0300
Message-Id: <20230626082821.2085-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fail if DSC compression requirement
 is less than platform supports
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

Currently we just clamp that value to the highest supported one, however that
means, we are not able to fit this into our available bandwidth range, so we
might see glitches or FIFO underruns.
While choosing less compressed bpp than min bpp required to handle the mode is
harmless and might even save some bandwidth, choosing higher compressed bpp than
min bpp required to handle the required mode config, can cause issues.
So in that case lets just conclude that even with DSC, we are not able to comply
with bandwidth requirements and fail.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9f40da20e88d..8696a1f02805 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -713,8 +713,17 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 
 		/*
 		 * According to BSpec, 27 is the max DSC output bpp,
-		 * 8 is the min DSC output bpp
+		 * 8 is the min DSC output bpp.
+		 * While we can still clamp higher bpp values to 27, saving bandwidth,
+		 * if it is required to oompress up to bpp < 8, means we can't do
+		 * that and probably means we can't fit the required mode, even with
+		 * DSC enabled.
 		 */
+		if (bits_per_pixel < 8) {
+			drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min 8\n",
+				    bits_per_pixel);
+			return 0;
+		}
 		bits_per_pixel = clamp_t(u32, bits_per_pixel, 8, 27);
 	} else {
 		/* Find the nearest match in the array of known BPPs from VESA */
-- 
2.37.3

