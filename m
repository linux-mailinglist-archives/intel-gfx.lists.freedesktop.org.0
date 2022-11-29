Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F4F63C975
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 21:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1144C10E100;
	Tue, 29 Nov 2022 20:38:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04DE110E100
 for <Intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 20:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669754276; x=1701290276;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2DEsDUq/6dzRjX2/jqgnXsRrEtNPK3AvNMe4HsL/2XE=;
 b=SLSKkKBxI6GlbUoIFPlAdfI9zdotr6aCEI25T2/8yDKAlB0g21fp8tm0
 HJIsYo6BMTes+EJC2nFsRCDIPSeLuiy5V+WgBHro7Gai11soH0zv56Wxn
 k4qdv8dyNchYqfqLjrt7JlAihkkLtdzDdqwdRSU7hOqFfVebh7lY8k2at
 kudSK3+1E+8qPlyFaSh7YEW5aHHQ1WBxyyZwJ+P3r779OK7g7vLJGHw1V
 hiD7GByAG9KX2F9OdAyJsJ0rFY3Dn0ucfJSuIAo+TQHX+Ldz1QxgWh2bj
 k52SKOaZJxypRVzu3fZPtxL/lZW+bwPc1MJYcxPmKIy4fhC90r9t3moK/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="316377406"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="316377406"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 12:37:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="707374034"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="707374034"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 12:37:54 -0800
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 29 Nov 2022 12:33:43 -0800
Message-Id: <20221129203343.720860-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/hdmi: SPD infoframe update for
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

Replace integrated with discrete for dgfx platforms.

v2: commit title reword (Jani)
v3: use variable name i915 (Jani)
v4: commit message reword (MattR)
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index bac85d88054f..e82f8a07e2b0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -767,6 +767,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
 	int ret;
 
@@ -776,7 +777,11 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 	crtc_state->infoframes.enable |=
 		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);
 
-	ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
+	if (IS_DGFX(i915))
+		ret = hdmi_spd_infoframe_init(frame, "Intel", "Discrete gfx");
+	else
+		ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
+
 	if (drm_WARN_ON(encoder->base.dev, ret))
 		return false;
 
-- 
2.25.1

