Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6F2608087
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 23:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6300710E16F;
	Fri, 21 Oct 2022 21:07:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4E5E10E16F
 for <Intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 21:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666386459; x=1697922459;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/lorBcumupX1A0EyrbeQjXNsv8sSPtoqSFV3eKX1gHU=;
 b=Hj7kneqJRu7r5MhrEGQ/6libbqAYbdnoJqPXDKOOhE783Aqw69YTI2vV
 Iy+5gRFwWPY3TrjVtkxsRfgbRAx8QM0Dec83fBlwP9G8CZoGnZKvwJJR5
 kPwsd8krRJTOK/yVgHlT+ppqOsmvgnnO1olYyAKREOJO+rmeR2PcetrLh
 3GIqQzD7NMC4lgJuw5RTueaj0mYesOnqMEAbiDREwqS7pKNetWqCDDjM+
 +6OcP/CnCNHwhhXrZA9xWuJ7S0iOJUDEs3Q/TwHOiOUTd9ZowOnPZYFRC
 DiAqwFJRJh57CZkzc3lTe5XjZbKsYnqauw6FaHJhtQFLPbHlgjc973FWd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="304717406"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="304717406"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:07:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="719876917"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="719876917"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:07:38 -0700
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 14:05:13 -0700
Message-Id: <20221021210513.1846620-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
References: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdmi: SPD infoframe update for
 discrete
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

Replace internal with discrete of dgfx platforms.

v2: commit title reword (Jani)
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93519fb23d9d..9070da469bdd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -766,6 +766,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
 	int ret;
 
@@ -775,7 +776,10 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 	crtc_state->infoframes.enable |=
 		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);
 
-	ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
+	if (IS_DGFX(dev_priv))
+		ret = hdmi_spd_infoframe_init(frame, "Intel", "Discrete gfx");
+	else
+		ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
 	if (drm_WARN_ON(encoder->base.dev, ret))
 		return false;
 
-- 
2.25.1

