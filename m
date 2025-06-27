Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE25AEB6A8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7278410E9F6;
	Fri, 27 Jun 2025 11:38:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMeyrpOk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 438E710E9F8;
 Fri, 27 Jun 2025 11:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024282; x=1782560282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SJAd6zlyzeQBb14jA0/AKd6BdpSg4MjnCjfID5PoX28=;
 b=bMeyrpOk1hHEzSDUMRdaT9WyiV1/IJg4JQUKZwjmQGRlAWiGGawPUGba
 Hus21ZW623sWc2LaPkaygza8yW7UDjZrXIqYE9k1tWobMa1vgWMsNeE/b
 mHfONMvnBYx53MvmzLgI4ATNmlLDP5y47kfnlLYGC2NmArBMYzi1KIr3D
 SeaB1PSHHEoD53SUpdHfIXjW65mxHJmRgM2wdDbbdYVdRSUO342I6QCzM
 sME6CPB9Em52ZRvkS/0bNQTDZRXUNo9NHKxl+CeXlyC1TtPMDCeOUcDfh
 7Ta7yMpmH6t8RXY5ihEVpS2Z7nqReyo5dCALrEsaRN3piXDWS5DrodSm4 g==;
X-CSE-ConnectionGUID: zo2Bz2bQQomTztzhS6/eCw==
X-CSE-MsgGUID: 4gp1eB1tSQCQ1bcO/h4PHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416442"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416442"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:38:02 -0700
X-CSE-ConnectionGUID: oa8U4CmlSCeY3BAWIpPKRA==
X-CSE-MsgGUID: IaSGe7wpTt2U7msYgUG0fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311159"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:38:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
Date: Fri, 27 Jun 2025 14:36:32 +0300
Message-Id: <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Unify on using read_poll_timeout() throughout instead of mixing with
readx_poll_timeout(). While the latter can be ever so slightly simpler,
they are both complicated enough that it's better to unify on one
approach only.

While at it, better separate the handling of error returns from
drm_dp_dpcd_readb() and the actual status byte. This is best achieved by
inlining the read_fec_detected_status() function.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 33 +++++++++---------------
 1 file changed, 12 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0405396c7750..fc4587311607 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2339,34 +2339,25 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
 		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
 }
 
-static int read_fec_detected_status(struct drm_dp_aux *aux)
-{
-	int ret;
-	u8 status;
-
-	ret = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
-	if (ret < 0)
-		return ret;
-
-	return status;
-}
-
 static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
 {
 	struct intel_display *display = to_intel_display(aux->drm_dev);
 	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
-	int status;
-	int err;
+	u8 status = 0;
+	int ret, err;
 
-	err = readx_poll_timeout(read_fec_detected_status, aux, status,
-				 status & mask || status < 0,
-				 10000, 200000);
+	ret = read_poll_timeout(drm_dp_dpcd_readb, err,
+				err || (status & mask),
+				10 * 1000, 200 * 1000, false,
+				aux, DP_FEC_STATUS, &status);
 
-	if (err || status < 0) {
+	/* Either can be non-zero, but not both */
+	ret = ret ?: err;
+	if (ret) {
 		drm_dbg_kms(display->drm,
-			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
-			    str_enabled_disabled(enabled), err, status);
-		return err ? err : status;
+			    "Failed waiting for FEC %s to get detected: %d (status 0x%02x)\n",
+			    str_enabled_disabled(enabled), ret, status);
+		return ret;
 	}
 
 	return 0;
-- 
2.39.5

