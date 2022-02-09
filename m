Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDC74AF002
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 12:35:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A00810E6FD;
	Wed,  9 Feb 2022 11:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D3710E6FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 11:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644406542; x=1675942542;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rWiMjP8l9WycIP92pDkxOMw/FMBf/vRwrCUJ5m0V/io=;
 b=ZhbOeUfgu9C6Vp6xmL7awzPm1tKRfjeTQxUs/VdI+fXyNQ7yA4kf6SAF
 GG92+Qw2tX0RowzHq4n7gIB2a+mdXzqiXExm0iUiiqLoeJOErfE8qtsMU
 jlkmwLzH6EEw2Klbi/+0JJAcsMlvyejuCpU9435N3vtNxJOX/SxYq+G8A
 zZ2xs7hiiEFygBsIE9eAScP8ktjakbw0x1Md2cx6kRx25D8fJ/EKGNxkw
 69hL28mCaRGpBeRUCbAnxGhduiFh3ieu+2sx1tVjY3mm2pd3E0Kav6KLm
 TDxexl/o56Ap87LdUAHEQVnzYw+LVBN8maozx9shct99f8s/Y5i2I1pO0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249391373"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="249391373"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:35:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="622247826"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 09 Feb 2022 03:35:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 13:35:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 13:35:24 +0200
Message-Id: <20220209113526.7595-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Extract hsw_ips_get_config()
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

Pull the IPS state readout into hsw_ips.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c       | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/hsw_ips.h       |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 14 +-------------
 3 files changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index fb34ef615025..38014e0cc9ad 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -249,3 +249,23 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 
 	return 0;
 }
+
+void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (!hsw_crtc_supports_ips(crtc))
+		return;
+
+	if (IS_HASWELL(i915)) {
+		crtc_state->ips_enabled = intel_de_read(i915, IPS_CTL) & IPS_ENABLE;
+	} else {
+		/*
+		 * We cannot readout IPS state on broadwell, set to
+		 * true so we can set it to a defined state on first
+		 * commit.
+		 */
+		crtc_state->ips_enabled = true;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i915/display/hsw_ips.h
index d63bdef5100a..4564dee497d7 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.h
+++ b/drivers/gpu/drm/i915/display/hsw_ips.h
@@ -21,5 +21,6 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc);
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 int hsw_ips_compute_config(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
+void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
 
 #endif /* __HSW_IPS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 134527981e2b..cdfee4ba1166 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4191,19 +4191,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			ilk_get_pfit_config(pipe_config);
 	}
 
-	if (hsw_crtc_supports_ips(crtc)) {
-		if (IS_HASWELL(dev_priv))
-			pipe_config->ips_enabled = intel_de_read(dev_priv,
-								 IPS_CTL) & IPS_ENABLE;
-		else {
-			/*
-			 * We cannot readout IPS state on broadwell, set to
-			 * true so we can set it to a defined state on first
-			 * commit.
-			 */
-			pipe_config->ips_enabled = true;
-		}
-	}
+	hsw_ips_get_config(pipe_config);
 
 	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
-- 
2.34.1

