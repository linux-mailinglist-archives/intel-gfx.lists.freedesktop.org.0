Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pklnC67femm2/AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:18:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D825ABA4F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C2D10E7BA;
	Thu, 29 Jan 2026 04:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1T8+xta";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6412B10E1F4;
 Thu, 29 Jan 2026 04:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769660329; x=1801196329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=USE6LafXa09gCWuWsT7cVe0vIunkLfSv7TGpm+jbBeE=;
 b=l1T8+xtaIMltf0oOIB/wh2npDtNPffgEatbwg0TZMRv39NqgF8X2LJdL
 QokUPLXu1RJUP9mWdZnHefNERzTbFRo60lljh4r5//D21LZLTmPmBYoqW
 T+EwJrnGRiy/4YyUtAmNySG2hsAmIrEeRtLyrFQVrfB4WZGYoZiOoMhsV
 Lzxif5cJhZYH06gwfAoZcGXK0+BInWzAu1UI6P58OKJU0v3zrA6qdK3rp
 8Ka53ltixjHewXqvmPJ0B2XDVFt+F3WqF73uJlBh3RM3OChBcPBHi9xNb
 KWWUabLLaJvK60ui2DreS1Eq0SPzcWlkPEcWWplLg1Y7D1JfQNjPnneFa g==;
X-CSE-ConnectionGUID: TmcB2H7jRdq7Q48XxjziwQ==
X-CSE-MsgGUID: CYnyQ7/ERkS08DOQOVwdeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="69902653"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="69902653"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:18:49 -0800
X-CSE-ConnectionGUID: 2bUshlg+R8C06GH6IMBV2Q==
X-CSE-MsgGUID: yHqzQxjyST6xP7f95l0jUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208055623"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 28 Jan 2026 20:18:47 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/dp: Add a meaningful return to
 intel_dp_read_dsc_dpcd
Date: Thu, 29 Jan 2026 09:48:17 +0530
Message-Id: <20260129041816.1332954-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260128044904.1293185-1-suraj.kandpal@intel.com>
References: <20260128044904.1293185-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7D825ABA4F
X-Rspamd-Action: no action

Add a meaningful return to intel_dp_read_dsc_dpcd. This is to avoid
unwanted DPCD reads which are not needed once we know DSC DPCD
read fails. To do this convert drm_dp_dpcd_read to drm_dp_dpcd_read_data
which returns a meaningful error which can be propogated up when all
bits are not read.
While we are at it convert the drm_err in intel_dp_read_dsc_dpcd to
drm_dbg_kms. This is because we do not want a hard ERROR when we
call this function, during the intel_dp_detect phase since AUX may not
be up, it is expected to fail but we do not expect a failure in read
when we call intel_dp_dsc_get_sink_cap so we move the drm_err there.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
V1 -> V2:
-Commit message fixup (Jani)
-Convert drm_dp_dpcd_read to drm_dp_dpcd_read_data (Jani)
-Propogate the error sent by drm_dp_dpcd_read_data up (Jani)
-Use %pe and ERR_PTR() to log the extact error (Jani)

 drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++++++++---------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 79fd3b8d8b25..ec277dcb24bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4281,20 +4281,24 @@ static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
 }
 
-static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
-				   u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
-{
-	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
-			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
-		drm_err(aux->drm_dev,
-			"Failed to read DPCD register 0x%x\n",
-			DP_DSC_SUPPORT);
-		return;
+static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
+				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
+{
+	int ret;
+
+	ret = drm_dp_dpcd_read_data(aux, DP_DSC_SUPPORT, dsc_dpcd,
+				    DP_DSC_RECEIVER_CAP_SIZE);
+	if (ret) {
+		drm_dbg_kms(aux->drm_dev,
+			    "Could not read DSC DPCD register 0x%x Error: %pe\n",
+			    DP_DSC_SUPPORT, ERR_PTR(ret));
+		return ret;
 	}
 
 	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
 		    DP_DSC_RECEIVER_CAP_SIZE,
 		    dsc_dpcd);
+	return 0;
 }
 
 static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
@@ -4345,8 +4349,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
 
-	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
-			       connector->dp.dsc_dpcd);
+	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
+				   connector->dp.dsc_dpcd) < 0) {
+		drm_err(display->drm, "Failed to read DSC DPCD register\n");
+		return;
+	}
 
 	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
 			      &connector->dp.fec_capability) < 0) {
@@ -4376,7 +4383,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
 	if (edp_dpcd_rev < DP_EDP_14)
 		return;
 
-	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
+	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
+				   connector->dp.dsc_dpcd) < 0)
+		return;
 
 	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
 		init_dsc_overall_throughput_limits(connector, false);
-- 
2.34.1

