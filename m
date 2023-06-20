Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A7D7372FA
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 19:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FB410E193;
	Tue, 20 Jun 2023 17:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC9E10E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 17:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687282437; x=1718818437;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vwq3YA5jiZ00WfLgg7hX7fb1FiBAIQRqH1VjL9roB5o=;
 b=Ym0cpymn4vHpAVP3zhXRCtQYfVTUNxFJn2WmSW+zClJZ2GIOzcLzOrC3
 8gbDao5rt90BCG03TtZx6E/fPB22sGcA5iplmW8iN1az4tkI82+CsDm7Q
 7B3saT6q8mjK2Ju7ipJCgkJ7QYQ5d7lX2iT+U5uahtfskvIYqBSiypAf6
 TBXPCHNd8Y6S2qfazG324SjY9tyooyrTwrRnnwIOQQ2qJblcZfKbeZARu
 2Q3wmQVAZtNVwNOyNjyYDpE0p8qbmV2M4sVtHzWZoG6dO6Uh61hN2PyuI
 wyz1j2FZrJaOJYERnL5CJbP9RP7Z3FUi97RP5neRMxTu6Qt83HfYZGjRX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363353796"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="363353796"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 10:32:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804029139"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="804029139"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jun 2023 10:32:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Jun 2023 20:32:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 20:32:38 +0300
Message-Id: <20230620173242.26923-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915: Initialize dig_port->aux_ch to
 NONE to be sure
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make sure dig_port->aux_ch is trustworthy by initializing it
to NONE (-1) at the start. The encoder init will later fill in
the actual value, if appropriate.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 2 ++
 drivers/gpu/drm/i915/display/g4x_hdmi.c  | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index c58a3f249a01..0cab5992e3da 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1273,6 +1273,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (!dig_port)
 		return false;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
 		goto err_connector_alloc;
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8c71e3ede680..c1fd13bdc9d2 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -698,6 +698,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	if (!dig_port)
 		return;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector) {
 		kfree(dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 61722556bb47..6cb24a472a9b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4747,6 +4747,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	if (!dig_port)
 		return;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-- 
2.39.3

