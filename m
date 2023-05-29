Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D041E7148B3
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C1210E0A9;
	Mon, 29 May 2023 11:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F2B10E0A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685360326; x=1716896326;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9uxU6JkaGVvMk+SukshAde43XO0KPqujU25RXSeiQ4A=;
 b=S+N6HEywklWtDDniVVQ5uvvbiixn9ZeqorPrJtbCdaBZ5C/tGc2nQrys
 fRN9+XTUG/dUAAEX7GaTOMdrlVkbV58GQsHm1bHXJ+KSENb0BRPDgme7o
 VruqBymd/JsVTGh6JcHqO+AWbweuBoi/tv+kO0cRWo2HECE+xpno0OLKJ
 Id8Q266o05zXLSK78lM0O9/9OyWUOE+Z9z6MKicc57uEhouIgxVxtME+R
 LhWmSKUXT+WhpPOTi3vMYg4G7lQrluzuSocrDe8dFU/PDwhKn1elBXlQN
 j/X6LE+Li2DGA/OOALApgU7YnW0C1LlpfHBlPeUdNwsxFivVtEfhiXKlf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441042485"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441042485"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:38:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880361047"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880361047"
Received: from iswiersz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:38:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 14:38:39 +0300
Message-Id: <20230529113839.1966864-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Fix a use-after-free when
 intel_edp_init_connector fails
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

We enable the DP aux channel during probe, but may free the connector
soon afterwards. Ensure the DP aux display power put (and any other
async put for that matter) is completed before everything is freed, to
prevent a use-after-free in icl_aux_pw_to_phy(), called from
icl_combo_phy_aux_power_well_disable.

v2 by Jani:
- do a regular flush before freeing dig_port

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

v2 of https://patchwork.freedesktop.org/patch/msgid/20221220094618.207126-1-maarten.lankhorst@linux.intel.com

The encoder cleanup paths could use some cleanup and unification, but do
what's needed here.
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 112d91d81fdc..e8147c18fa93 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1379,6 +1379,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	return true;
 
 err_init_connector:
+	/* aync put accesses the dig_port, ensure it's done before free */
+	intel_display_power_flush_work(dev_priv);
 	drm_encoder_cleanup(encoder);
 err_encoder_init:
 	kfree(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d1a9a3cf94b5..dfa1c44dc442 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4971,6 +4971,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	return;
 
 err:
+	/* aync put accesses the dig_port, ensure it's done before free */
+	intel_display_power_flush_work(dev_priv);
 	drm_encoder_cleanup(&encoder->base);
 	kfree(dig_port);
 }
-- 
2.39.2

