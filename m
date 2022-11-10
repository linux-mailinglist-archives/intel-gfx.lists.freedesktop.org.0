Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9798F623D62
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D169310E681;
	Thu, 10 Nov 2022 08:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30B710E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068541; x=1699604541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SqLYazkMBeAt7V0MHMTzj5HPg1JGkqVOejg6oNPmfIg=;
 b=gSiIl3wRaQ5flMw0ogXKMBQeSAvgQOgeP5EBuNdmV1uEHbriezDDY7MW
 NUaKWMSEV2aVB1jz0UrzrIHpZte/XknP1+cPKLbHlOvMY4TR7XAXDPbJW
 GM0mDvAvXnKHbKsFH3zLds7nEwFpPrQUDL0hk36KNRvaUrFLFkaq/9BW7
 wPVYKs2pn+6t6uSbGCkJxfP2/+gL0Cg7Xf0zo4NGpPYkNJoI2eW9SwOur
 atdfgKuTU648qltQaZI/Nif4+SYDbWkq5EJOD63gO76kv2+phYioEa5xp
 WRTkIwwelF4DE67+XaciSH6NSSt808R+pY19CQuy1v5GmJZb+SMyvH2yK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309965425"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309965425"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="639531058"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="639531058"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 10 Nov 2022 00:22:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:37 +0200
Message-Id: <20221110082144.19666-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/18] drm/i915: Make ilk_read_luts() capable
 of degamma readout
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

Just like ivb+, ilk/snb can select whether the hw lut acts as
gamma or degamma. Make the readout cognizant of that fact.

v2: deal with pre_csc_lut

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 371ffc2bb371..8bcde3acb9ff 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2162,19 +2162,19 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_property_blob **blob =
+		crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA ?
+		&crtc_state->post_csc_lut : &crtc_state->pre_csc_lut;
 
 	if (!crtc_state->gamma_enable)
 		return;
 
-	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
-		return;
-
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		crtc_state->post_csc_lut = ilk_read_lut_8(crtc);
+		*blob = ilk_read_lut_8(crtc);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		crtc_state->post_csc_lut = ilk_read_lut_10(crtc);
+		*blob = ilk_read_lut_10(crtc);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
-- 
2.37.4

