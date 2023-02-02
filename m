Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC36168796D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 10:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24CA10E4C7;
	Thu,  2 Feb 2023 09:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7340110E4B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 09:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675331257; x=1706867257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tFM5rg+DSgd5imsEmB3pFpalCS21/tjww2BWKaEB5w0=;
 b=gUy6wTGKaVlP5OGnZ/VOGYtM/yz/PqFUAZDeLQHxvcFgNkKYMysB0dJl
 fBkVpaJj02txSX3ULc1F0EazWRSuwdTWIdEg/ZQW2YpzwUczBbL/QBux2
 67NdyPZsVcINlKeqfpR9cIU4yjRNYsdV+tH4KlSsNI30CDYFsSNHe0IEC
 gt3DdtvpNE4w0G5b+LqIEdsQ0v6BTwRfF/YGcmAIFXqpFuKkC36C4h8gk
 rk5uhEgCfKdnpUvHIWdwsfvePOn8TuDbgdr6vKqC81BFoDRvbuieUZAwP
 LA0cEgzXHKg+lBDyDL067zvD+95r+GDAS4C/jj1vKbWqr10dAAK2LRZIn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316403291"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316403291"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 01:47:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="807910300"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="807910300"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2023 01:47:32 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 11:47:26 +0200
Message-Id: <20230202094726.6435-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
References: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Implement UHBR bandwidth check
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

According to spec, we should check if output_bpp * pixel_rate is less
than DDI clock * 72, if UHBR is used.

HSDES: 1406899791
BSPEC: 49259

v2: - Removed wrong comment(Rodrigo Vivi)
    - Added HSDES to the commit msg(Rodrigo Vivi)
    - Moved UHBR check to the MST specific code

v3: - Changed commit subject(Rodrigo Vivi)
    - Fixed the error message if check fails(Rodrigo Vivi)

v4: - Move UHBR check to new helper function
    - Now both for non-DSC/DSC we use that new check as
      one of the constraints, when figuring out output bpp
      to be used(Ville Syrjälä)

v5: - Use symbol clock (32 bit per lane for DP2) instead of port
      clock in the formula(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3e7c305fece..e63132557690 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -47,8 +47,21 @@
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
 					  const struct drm_display_mode *adjusted_mode,
-					  struct intel_crtc_state *crtc_state)
+					  struct intel_crtc_state *pipe_config)
 {
+	if (intel_dp_is_uhbr(pipe_config)) {
+		int output_bpp = bpp;
+		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
+		int symbol_clock = pipe_config->port_clock / 32;
+
+		if (output_bpp * adjusted_mode->crtc_clock >=
+		    symbol_clock * 72) {
+			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
+				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
+			return -EINVAL;
+		}
+	}
+
 	return 0;
 }
 
-- 
2.37.3

