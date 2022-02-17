Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E464B9D2E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 11:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9881E10EAF4;
	Thu, 17 Feb 2022 10:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADEF10EAF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645093955; x=1676629955;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hJavH/JqHWMub6Y46/LFCUwm3c7/clN1/PGbEr8Iq1A=;
 b=dYEOotjc3mtVAkXC3QSUBCvfJUMSQ6CDSpyPLDgO6SQP/zChBtz5V/cT
 KycvUnj962EHfXxbTdBuLdNsjZXUPJ5wN8Vmi9AL6ae+IiobWwh+NQbW8
 pVniJViC2rK1N3eF9niQrg3TMuj4JHuJIf9fjFHyqSkfEsAckoaGGzamh
 42Sjg5cSJyoqAVRk2E+fCXS1mqJmg/UYVKmmnpYpHzHPDtnsCtU1Vlf4w
 R+MYSheG+AgkpncfAIewQ8aG22bQkkMjblVQEkmnfb61R2+nMGJzSQfEM
 HCeqLgPJA4HlZIVH7gG72nTezLZ68fkzUeqiF6ppW02KEzot3hhKuIpD3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275433524"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="275433524"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 02:32:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="540930648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 17 Feb 2022 02:32:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 12:32:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 12:32:21 +0200
Message-Id: <20220217103221.10405-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Properly clear crtc state when
 disabling it fully, again
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

Currently we just leave the old gunk lying around in the crtc
state when userspace asks us to fully disable the crtc. That
doesn't match what the state would be had we never even enabled
the crtc in the first place. So let's make this consistent and
call intel_crtc_prepare_cleared_state() for disabled crtcs as well
(excluding bigjoiner slaves of course which have had their state
copied from the master).

I actually already did this once in commit fff13e63a141 ("drm/i915:
Clear most of crtc state when disabling the crtc") but then
commit 19f65a3dbf75 ("drm/i915: Try to make bigjoiner work in atomic
check") undid it all :(

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 61adfcd7cf63..e160cee3240d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7627,9 +7627,8 @@ static int intel_atomic_check(struct drm_device *dev,
 			continue;
 		}
 
-		if (!new_crtc_state->uapi.enable) {
-			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state))
-				intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
 			continue;
 		}
 
@@ -7637,6 +7636,9 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (ret)
 			goto fail;
 
+		if (!new_crtc_state->hw.enable)
+			continue;
+
 		ret = intel_modeset_pipe_config(state, new_crtc_state);
 		if (ret)
 			goto fail;
-- 
2.34.1

