Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81073B2C43E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C91E10E5E5;
	Tue, 19 Aug 2025 12:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGqLcCwk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882F310E5E9;
 Tue, 19 Aug 2025 12:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608064; x=1787144064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eskNbHaG0sactspeT5uEfYEGLX9vR5qChRb+tp4787I=;
 b=JGqLcCwkn2ojMDRJkg360WTwv7FK+A+TObn3BuZHQHxYs7XUmJdVdDJp
 cF7CwDEf/2fQgp0skkYLZ6qGHImiQhUIcZx+hZRRe2wcPgCwlZ6ebVchQ
 9GKB8m7azyNLWwRf+bXt2XC2Q/vKjcI4fiaafCRzwwEXSAeb9500mtNZw
 Q88yPHSgOV+wLnfOb6CPTPJFZn3F5as07HNK2vope2Fhd28l+p9Y3ebgW
 1ZjXNuSz2wfDYyYa4vUAOuJdZetZqtWWHcDMV/+wP40fyQCXIQdnsqF0k
 BKiCvcvtxDt011h+m14TNiKgIQqRcAsV4inb2fETaLHdzheuDgbhYlCK/ w==;
X-CSE-ConnectionGUID: KCpgBzKkSrWzHM7vKIxbUw==
X-CSE-MsgGUID: At9zsoujSBOdANOhWPxCqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69222158"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69222158"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:23 -0700
X-CSE-ConnectionGUID: WAd6r7VXTb+tcN5GFOtmwg==
X-CSE-MsgGUID: fB57yfHlThWbGF9ZYfJ2Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168089267"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 07/12] drm/i915: rename vlv_get_hpll_vco() to
 vlv_clock_get_hpll_vco()
Date: Tue, 19 Aug 2025 15:53:37 +0300
Message-ID: <a97b029a4ef9cfff084b37796864f2f7cd70d493.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Follow the new vlv_clock_*() naming pattern for all the related VLV
clock functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e898c0541168..2b3f8b95caca 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -609,7 +609,7 @@ static void vlv_get_cdclk(struct intel_display *display,
 
 	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
-	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
+	cdclk_config->vco = vlv_clock_get_hpll_vco(display->drm);
 	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
 
 	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 98fdaa159a4a..ba1c13d2011d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -142,7 +142,7 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
-int vlv_get_hpll_vco(struct drm_device *drm)
+int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
@@ -178,7 +178,7 @@ static int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	vlv_cck_get(drm);
 
 	if (dev_priv->hpll_freq == 0)
-		dev_priv->hpll_freq = vlv_get_hpll_vco(drm);
+		dev_priv->hpll_freq = vlv_clock_get_hpll_vco(drm);
 
 	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
 
@@ -207,7 +207,7 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 int vlv_clock_get_cdclk(struct drm_device *drm)
 {
 	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
-				 vlv_get_hpll_vco(drm));
+				 vlv_clock_get_hpll_vco(drm));
 }
 
 int vlv_clock_get_gpll(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 57b06cad314b..5c406b276a76 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -435,7 +435,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
-int vlv_get_hpll_vco(struct drm_device *drm);
+int vlv_clock_get_hpll_vco(struct drm_device *drm);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_cdclk(struct drm_device *drm);
-- 
2.47.2

