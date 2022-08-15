Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0A85A02C7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697D8C7D7A;
	Wed, 24 Aug 2022 20:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA6B113803
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 10:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661252359; x=1692788359;
 h=resent-to:resent-from:resent-date:resent-message-id:
 mime-version:from:to:cc:subject:date:message-id:
 in-reply-to:references:content-transfer-encoding;
 bh=+QXcJIOXR1vrrsHnPhx+seBgBDzNwvg86mSKHqQu/lE=;
 b=JW4HmTpZS4xthAs0zV74wwR4JKpfh2pl6ziU37MsnPWIbBio6YIvQEVd
 mbLubNpGx1EcULmujV3xX5qfiDGK9N3hRD/gdQ1y3xMYb3AwiK26Pj20h
 fiCIwQIT2RbjMPIiztAuorBBR8/HtJ047Nw4LjoHgmlKI1BwIsZArgxV6
 6BkHpCUOQXw9alR7AQVKTgPD3pOnQLSVDHx6KdSQy0U/0MqZSGryNSP/4
 EoTIo0wkz62EWgV59M+dj952CfElu13vsoasD0aDK66NG/2ZrSQoZkzB4
 EgBepHDtTOQkZJniN1v3ao3kE63AsMfGaUf2EsggzIPuwPi5592u1kLZh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="276683549"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="276683549"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 03:59:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="585923950"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 03:59:15 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 23 Aug 2022 13:59:13 +0300
Resent-Message-ID: <87sflnkyym.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [10.22.254.45]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Mon, 15 Aug 2022 11:59:06 +0300 (EEST)
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Mailbox Transport; Mon, 15 Aug 2022 01:58:45 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 01:58:45 -0700
Received: from orsmga008.jf.intel.com (10.7.209.65) by
 fmsmsx609.amr.corp.intel.com (10.18.84.219) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 01:58:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="635408160"
Received: from abelova-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.50.172])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 01:58:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: <dri-devel@lists.freedesktop.org>
Date: Mon, 15 Aug 2022 11:58:34 +0300
Message-ID: <b08dc12a7e621a48ec35546d6cd1ed4b1434810d.1660553850.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660553850.git.jani.nikula@intel.com>
References: <cover.1660553850.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: 2d53fecc-dfeb-4672-2fb0-08da7e9c5c34
X-MS-Exchange-Organization-AuthSource: fmsmsx609.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-SCL: -1
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.5539349
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2375.028
Subject: [Intel-gfx] [PATCH v2 1/2] drm/dp: add drm_dp_phy_name() for
 getting DP PHY name
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper for getting the DP PHY name. In the interest of caller
simplicity and to avoid allocations and passing in of buffers, duplicate
the const strings to return. It's a minor penalty to pay for simplicity
in all the call sites.

v2: Rebase, add kernel-doc, ensure non-NULL always

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 32 +++++++++++++++++++++++++
 include/drm/display/drm_dp_helper.h     |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 32b295003f49..92990a3d577a 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -390,6 +390,38 @@ void drm_dp_link_train_channel_eq_delay(const struct drm_dp_aux *aux,
 }
 EXPORT_SYMBOL(drm_dp_link_train_channel_eq_delay);
 
+/**
+ * drm_dp_phy_name() - Get the name of the given DP PHY
+ * @dp_phy: The DP PHY identifier
+ *
+ * Given the @dp_phy, get a user friendly name of the DP PHY, either "DPRX" or
+ * "LTTPR <N>", or "<INVALID DP PHY>" on errors. The returned string is always
+ * non-NULL and valid.
+ *
+ * Returns: Name of the DP PHY.
+ */
+const char *drm_dp_phy_name(enum drm_dp_phy dp_phy)
+{
+	static const char * const phy_names[] = {
+		[DP_PHY_DPRX] = "DPRX",
+		[DP_PHY_LTTPR1] = "LTTPR 1",
+		[DP_PHY_LTTPR2] = "LTTPR 2",
+		[DP_PHY_LTTPR3] = "LTTPR 3",
+		[DP_PHY_LTTPR4] = "LTTPR 4",
+		[DP_PHY_LTTPR5] = "LTTPR 5",
+		[DP_PHY_LTTPR6] = "LTTPR 6",
+		[DP_PHY_LTTPR7] = "LTTPR 7",
+		[DP_PHY_LTTPR8] = "LTTPR 8",
+	};
+
+	if (dp_phy < 0 || dp_phy >= ARRAY_SIZE(phy_names) ||
+	    WARN_ON(!phy_names[dp_phy]))
+		return "<INVALID DP PHY>";
+
+	return phy_names[dp_phy];
+}
+EXPORT_SYMBOL(drm_dp_phy_name);
+
 void drm_dp_lttpr_link_train_clock_recovery_delay(void)
 {
 	usleep_range(100, 200);
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index db0fe9f8a612..ab55453f2d2c 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -69,6 +69,8 @@ bool drm_dp_128b132b_link_training_failed(const u8 link_status[DP_LINK_STATUS_SI
 u8 drm_dp_link_rate_to_bw_code(int link_rate);
 int drm_dp_bw_code_to_link_rate(u8 link_bw);
 
+const char *drm_dp_phy_name(enum drm_dp_phy dp_phy);
+
 /**
  * struct drm_dp_vsc_sdp - drm DP VSC SDP
  *
-- 
2.34.1

