Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C905362841B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B729B10E06B;
	Mon, 14 Nov 2022 15:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC8D10E2EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440299; x=1699976299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pp9eZH1C0Th4wAFH0fBgUT0UCwAJXjZE3yZ/0RnY6Z0=;
 b=oGtcZvEJ29vWqeNRPrNEzZqoxf6cJVoephC//LdN/hFgGFVXZBPMxFsb
 iG+JgnsWe/QBDWEqWZGoZ8ohFfL6XKMWNO8XxcRlzSKiOsDJZDxUQaEf2
 TY+O9SgIfNECyjMuJ0BNXoW6MOpAGF7IGfHV3u6ctSCoDOZfJP4Bkui8G
 w7i2QG29Qz47ObY5rLvlKf9dWu85fRpGzl7b4h004GttmjLxe+tIk5emu
 pp2Vh/BlHqjYf5LAkEC9Ba8UhmDfpVfJ1PXbgvTqwVwLBqMjJrNwZj7u7
 stnbT6JdRsHeQIAde81pV8OAeaGHrlQvWHXUphD9ghIOgtOyxnjA5gH5M g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290850"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290850"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968666"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968666"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:24 +0200
Message-Id: <20221114153732.11773-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/20] drm/i915: Make ilk_read_luts() capable
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
v3: use ilk_has_post_csc_lut() helper

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 583a93351c97..ef171837ef45 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2176,19 +2176,19 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_property_blob **blob =
+		ilk_has_post_csc_lut(crtc_state) ?
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

