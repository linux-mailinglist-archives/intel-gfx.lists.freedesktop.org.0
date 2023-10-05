Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3F37B9B27
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 08:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B153B10E1B3;
	Thu,  5 Oct 2023 06:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3BF10E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 06:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696488299; x=1728024299;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t/NXuWQh1nK2VWA3ePXTfxxwU7FWwZXTHH6Yz7+OQeg=;
 b=A1fCeyDoBEQk0+RBxZdC6LB1irwI5serjsa5lyuAD43U3SN2vb1i4ZWR
 f7ATlPFpWcSMtk0jz+XtP9uoMbULCYOXgAhKN6rGsa9Fc2oDFu/HjYhor
 Um0SBSOIpmNgsec1ooEmsIaWG4FblFprbbHIT55N8r+Z5otTiIV2s15Xf
 7jiIeN7s7fRu7imlLBSBboZ1nvURZ7Tup+hmzufYH/4+j4WSRbiY0kKSE
 BpgHXGgLat3F3SB2CXGo02gS+pG9/A1lpyyIwC+RCyEtlvLUojQHF9eC0
 pSD9RqTdlnyutAE5ZLVNAav4REeX7WPNsJ4SxTDqN4w8nw0WqclljNrbe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363701226"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="363701226"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 23:44:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="842259151"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="842259151"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2023 23:44:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 12:12:58 +0530
Message-Id: <20231005064257.570671-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
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

i2c_adapter is being assigned using intel_connector even before the
NULL check occurs and even though it shouldn't be a problem
lets just clean this up as logically it does not make sense to check
the connector for NULL but dereference it before that.

Fixes: e046d1562491 ("drm/i915/hdmi: Use connector->ddc everwhere")

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4668de45d6fe..6b658faf1fc3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4326,7 +4326,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 	struct intel_connector *connector = hdmi->attached_connector;
-	struct i2c_adapter *ddc = connector->base.ddc;
+	struct i2c_adapter *ddc;
 	struct drm_connector_state *conn_state;
 	struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
@@ -4336,6 +4336,8 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	if (!connector || connector->base.status != connector_status_connected)
 		return 0;
 
+	ddc = connector->base.ddc;
+
 	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
 			       ctx);
 	if (ret)
-- 
2.25.1

