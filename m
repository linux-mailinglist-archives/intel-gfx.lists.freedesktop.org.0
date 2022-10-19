Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EED0605165
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 22:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2D310E0A5;
	Wed, 19 Oct 2022 20:38:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0563F10E0A5
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 20:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666211875; x=1697747875;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yUxPhfA1StRrRnNSazLEQZVyQM6Gjkyi+z7kDw5DtdI=;
 b=kZ4GmTmL5hcr16FSX7qreHAd4+4uPFfPJdVnK/iDM1EEffiZ/yT7iWyx
 R2NzpYy8dJcEwoPLuAOVtuC1wAbzLxgE3oqf0pwuynS8/GE8rJR0udMks
 1q3aVvnZNFwQgbH8ig1kF1P8Lg0jfM63jg3F494dgIjMlp/7aKgjqv09n
 QS9rJo2KzjNnY2FjVjMffYKA1MG1QoHbxC6mDMMC1gck3OCfXuq3YHpL1
 yc86JPka21LED95xfYjCeqQBvNjZR/RyXfqI+er+4ufyrEEn4SRQiKJ+B
 hCNOfWvfQHRYUQoY706LPyN85x3eexomw48uYe/5/mbN1s3ChlE2xiVjt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="307627389"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="307627389"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 13:37:54 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="718660420"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="718660420"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 13:37:53 -0700
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 13:35:27 -0700
Message-Id: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: SPD infoframe updated for
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

Replace internal with discrete on dgfx platforms

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

