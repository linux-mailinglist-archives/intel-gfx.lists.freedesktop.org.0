Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C022EC42A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 20:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA7B6E212;
	Wed,  6 Jan 2021 19:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A9C6E212
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 19:50:21 +0000 (UTC)
IronPort-SDR: 2xYfgGSDpirh55CGPes4arMhtZvG8WF2ttLLlwyYkOzIkkSHU1SiYZ6sZD3XO0zgMUbJR6ghUZ
 dWESSD2WRzHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="156516229"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="156516229"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 11:50:21 -0800
IronPort-SDR: TbUEW2+sOIxGRweL95aVkR4X6ol94pFc/hZ//AFVG8sZ2neYNWP/xM01q+ChcJbQ8ZyprVMVfX
 2j15xTQPspJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="398354890"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2021 11:50:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 Jan 2021 11:50:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 Jan 2021 11:50:20 -0800
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.1713.004;
 Wed, 6 Jan 2021 11:50:20 -0800
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/rkl: Add DP vswing programming tables
Thread-Index: AQHW45SuvhsWKH9tQEGB6FLLoFafKKobAw5Q
Date: Wed, 6 Jan 2021 19:50:20 +0000
Message-ID: <f9f4c3a4d42747b9a9ae8bda2ed0a333@intel.com>
References: <20201218040535.45492-1-matthew.d.roper@intel.com>
In-Reply-To: <20201218040535.45492-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Add DP vswing programming
 tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

-----Original Message-----
From: Matt Roper <matthew.d.roper@intel.com> 
Sent: Thursday, December 17, 2020 8:06 PM
To: intel-gfx@lists.freedesktop.org
Cc: Roper, Matthew D <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915/rkl: Add DP vswing programming tables

The bspec has been updated with new vswing programming for RKL DP.  No data is provided for HDMI or eDP, so for now we'll continue to assume that those are the same as TGL.

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 42 ++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6863236df1d0..7fb168c52c58 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -766,6 +766,34 @@ static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_edp_hbr2_ho
 	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 2	1	*/
 };
 
+static const struct cnl_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr[] = {
+						/* NT mV Trans mV db    */
+	{ 0xA, 0x2F, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
+	{ 0xA, 0x4F, 0x37, 0x00, 0x08 },	/* 350   500      3.1   */
+	{ 0xC, 0x63, 0x2F, 0x00, 0x10 },	/* 350   700      6.0   */
+	{ 0x6, 0x7D, 0x2A, 0x00, 0x15 },	/* 350   900      8.2   */
+	{ 0xA, 0x4C, 0x3F, 0x00, 0x00 },	/* 500   500      0.0   */
+	{ 0xC, 0x73, 0x34, 0x00, 0x0B },	/* 500   700      2.9   */
+	{ 0x6, 0x7F, 0x2F, 0x00, 0x10 },	/* 500   900      5.1   */
+	{ 0xC, 0x6E, 0x3E, 0x00, 0x01 },	/* 650   700      0.6   */
+	{ 0x6, 0x7F, 0x35, 0x00, 0x0A },	/* 600   900      3.5   */
+	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
+};
+
+static const struct cnl_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
+						/* NT mV Trans mV db    */
+	{ 0xA, 0x35, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
+	{ 0xA, 0x50, 0x38, 0x00, 0x07 },	/* 350   500      3.1   */
+	{ 0xC, 0x61, 0x33, 0x00, 0x0C },	/* 350   700      6.0   */
+	{ 0x6, 0x7F, 0x2E, 0x00, 0x11 },	/* 350   900      8.2   */
+	{ 0xA, 0x47, 0x3F, 0x00, 0x00 },	/* 500   500      0.0   */
+	{ 0xC, 0x5F, 0x38, 0x00, 0x07 },	/* 500   700      2.9   */
+	{ 0x6, 0x7F, 0x2F, 0x00, 0x10 },	/* 500   900      5.1   */
+	{ 0xC, 0x5F, 0x3F, 0x00, 0x00 },	/* 650   700      0.6   */
+	{ 0x6, 0x7E, 0x36, 0x00, 0x09 },	/* 600   900      3.5   */
+	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
+};
+
 static bool is_hobl_buf_trans(const struct cnl_ddi_buf_trans *table)  {
 	return table == tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
@@ -1259,7 +1287,10 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (crtc_state->port_clock > 270000) {
-		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
+		if (IS_ROCKETLAKE(dev_priv)) {
+			*n_entries = ARRAY_SIZE(rkl_combo_phy_ddi_translations_dp_hbr2_hbr3);
+			return rkl_combo_phy_ddi_translations_dp_hbr2_hbr3;
+		} else if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
 			*n_entries = ARRAY_SIZE(tgl_uy_combo_phy_ddi_translations_dp_hbr2);
 			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
 		} else {
@@ -1267,8 +1298,13 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			return tgl_combo_phy_ddi_translations_dp_hbr2;
 		}
 	} else {
-		*n_entries = ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr);
-		return tgl_combo_phy_ddi_translations_dp_hbr;
+		if (IS_ROCKETLAKE(dev_priv)) {
+			*n_entries = ARRAY_SIZE(rkl_combo_phy_ddi_translations_dp_hbr);
+			return rkl_combo_phy_ddi_translations_dp_hbr;
+		} else {
+			*n_entries = ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr);
+			return tgl_combo_phy_ddi_translations_dp_hbr;
+		}
 	}
 }
 
--
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
