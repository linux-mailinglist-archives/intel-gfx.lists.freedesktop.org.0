Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0DF49B9B4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 18:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4C510E383;
	Tue, 25 Jan 2022 17:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819EF10E383;
 Tue, 25 Jan 2022 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643130555; x=1674666555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GbBK+i/RuveNxM9v9zVDRk3T51YgfaE8tgV5aHX8yAQ=;
 b=a/UeuOzxxegNcc1lz2FkdDFwdWPHdQnxH4//m0ft7qU7Ct40PUDB1ZKR
 AQc1vw3vipsocHKzVuhoLh00a81DWi5MqLGUodwBN5NibutmF5FUqdbFJ
 UICAnIskr4Pgo4xWROhnaJu9G6iN+n+MuEbEWMA3tIVHpI1mer2KjoM0r
 BP9v1wtRT6F1SPAEnio4eywxN/9GuEKl2VXxhZVC/3SdaN7eCDKK/4EV6
 iBAgz0lJcIssaTjOTTbsGNfpPbsCgqJjU1MZzFhtFV3hkhnJ6hLBlGjL2
 Wx+93w66RTsFgh7UA3L8+nQ/0BFomxqbVhy/OjIW+QeO5yXjMvTKpjLmf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="270799050"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="270799050"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 09:04:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="520456044"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 09:04:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 19:03:39 +0200
Message-Id: <46401f9df30907ba851b68d7772740d64fc6ee83.1643130139.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643130139.git.jani.nikula@intel.com>
References: <cover.1643130139.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/dp: add
 drm_dp_128b132b_read_aux_rd_interval()
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The DP 2.0 errata changes DP_128B132B_TRAINING_AUX_RD_INTERVAL (DPCD
0x2216) completely. Add a new function to read that. Follow-up will need
to clean up existing functions.

v2: fix reversed interpretation of bit 7 meaning (Uma)

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/dp/drm_dp.c    | 20 ++++++++++++++++++++
 include/drm/dp/drm_dp_helper.h |  3 +++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/dp/drm_dp.c b/drivers/gpu/drm/dp/drm_dp.c
index 6d43325acca5..52c6da510142 100644
--- a/drivers/gpu/drm/dp/drm_dp.c
+++ b/drivers/gpu/drm/dp/drm_dp.c
@@ -281,6 +281,26 @@ int drm_dp_read_channel_eq_delay(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIV
 }
 EXPORT_SYMBOL(drm_dp_read_channel_eq_delay);
 
+/* Per DP 2.0 Errata */
+int drm_dp_128b132b_read_aux_rd_interval(struct drm_dp_aux *aux)
+{
+	int unit;
+	u8 val;
+
+	if (drm_dp_dpcd_readb(aux, DP_128B132B_TRAINING_AUX_RD_INTERVAL, &val) != 1) {
+		drm_err(aux->drm_dev, "%s: failed rd interval read\n",
+			aux->name);
+		/* default to max */
+		val = DP_128B132B_TRAINING_AUX_RD_INTERVAL_MASK;
+	}
+
+	unit = (val & DP_128B132B_TRAINING_AUX_RD_INTERVAL_1MS_UNIT) ? 1 : 2;
+	val &= DP_128B132B_TRAINING_AUX_RD_INTERVAL_MASK;
+
+	return (val + 1) * unit * 1000;
+}
+EXPORT_SYMBOL(drm_dp_128b132b_read_aux_rd_interval);
+
 void drm_dp_link_train_clock_recovery_delay(const struct drm_dp_aux *aux,
 					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
diff --git a/include/drm/dp/drm_dp_helper.h b/include/drm/dp/drm_dp_helper.h
index 98d020835b49..aa73dfc817ff 100644
--- a/include/drm/dp/drm_dp_helper.h
+++ b/include/drm/dp/drm_dp_helper.h
@@ -1112,6 +1112,7 @@ struct drm_panel;
 # define DP_UHBR13_5                           (1 << 2)
 
 #define DP_128B132B_TRAINING_AUX_RD_INTERVAL                    0x2216 /* 2.0 */
+# define DP_128B132B_TRAINING_AUX_RD_INTERVAL_1MS_UNIT          (1 << 7)
 # define DP_128B132B_TRAINING_AUX_RD_INTERVAL_MASK              0x7f
 # define DP_128B132B_TRAINING_AUX_RD_INTERVAL_400_US            0x00
 # define DP_128B132B_TRAINING_AUX_RD_INTERVAL_4_MS              0x01
@@ -1549,6 +1550,8 @@ void drm_dp_link_train_channel_eq_delay(const struct drm_dp_aux *aux,
 void drm_dp_lttpr_link_train_channel_eq_delay(const struct drm_dp_aux *aux,
 					      const u8 caps[DP_LTTPR_PHY_CAP_SIZE]);
 
+int drm_dp_128b132b_read_aux_rd_interval(struct drm_dp_aux *aux);
+
 u8 drm_dp_link_rate_to_bw_code(int link_rate);
 int drm_dp_bw_code_to_link_rate(u8 link_bw);
 
-- 
2.30.2

