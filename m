Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A95518C3E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3832C10E854;
	Tue,  3 May 2022 18:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8AC10E854
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602226; x=1683138226;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xPU5/7FgpIQegjOrjODk4T2N6YDt1EKFhEfvjuDLnTk=;
 b=AKCkN+bn1+5IGoAniA3SwGQ4CsOgSfXlY9bHF1nv1yMRczWNYvADNoaX
 GKZbV7nRTg2vBDlpImcKmj62DD2hK20HMGnHLHofFmLGNoXS6bw2HC0hF
 Y30sS9+nwMmCAb3L8eNoNkgcmKNABwpn2bPpSyT5xGZ0XzcYJ6sE6blMT
 0IHOe/Zne3CsjSzoFRrkGSYNqeyY633AbbkHV3tVnNJWSNJMXbAU2oZD7
 v1rOybiYIiPIZSuQx+V0QN/gr+Ejn5f6hFOlDFQROUB1dPjINmuiSHUIG
 h6gGNyeE6McHaI2yEtM7cIU6K55H+71DEPQTACq+TXoedXGmfR34dSW32 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="265143386"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="265143386"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="536449222"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 03 May 2022 11:23:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:36 +0300
Message-Id: <20220503182242.18797-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/26] drm/i915: Check hw.enable and hw.active
 in intel_pipe_config_compare()
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

Don't see a real reson not to check hw.active and hw.enable in
intel_pipe_config_compare(). We do have some checks for them
at a higher level, but I think better check them also in
intel_pipe_config_compare() in case something else doesn't
do a thorough enough job.

Also shuffle the mst_master_transcoder check next to the
cpu_transcoder check for a bit of consistency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a81d866bdb19..2acc5f3a2c0e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6160,7 +6160,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config->quirks | pipe_config->quirks) & (quirk))
 
+	PIPE_CONF_CHECK_I(hw.enable);
+	PIPE_CONF_CHECK_I(hw.active);
+
 	PIPE_CONF_CHECK_I(cpu_transcoder);
+	PIPE_CONF_CHECK_I(mst_master_transcoder);
 
 	PIPE_CONF_CHECK_BOOL(has_pch_encoder);
 	PIPE_CONF_CHECK_I(fdi_lanes);
@@ -6333,8 +6337,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(splitter.link_count);
 	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
 
-	PIPE_CONF_CHECK_I(mst_master_transcoder);
-
 	PIPE_CONF_CHECK_BOOL(vrr.enable);
 	PIPE_CONF_CHECK_I(vrr.vmin);
 	PIPE_CONF_CHECK_I(vrr.vmax);
-- 
2.35.1

