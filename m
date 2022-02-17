Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE1E4B9D2D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 11:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B190F10EB8F;
	Thu, 17 Feb 2022 10:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17ED10EAD4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645093952; x=1676629952;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jVl/trUeYWQrx5Ld7Wcvif8QHQDgkJKPMnaXSq8WnLA=;
 b=eTcdE4xjuDq+/ILNE8Glu4/n0d92luW8FdXVgZPTdizKVuNRDoPJXT70
 6P7Hx6hByDS6GxbTHF4qxzzlD2j5MOr8V9ii0yloitND/CeendW/2gsb2
 UIQS7gdxoZp1ogpOCwKbwLToBlExiUg8kKzAa2eLGBXDj0ROJYPfX3T/d
 rWOsGEcc+IYeBJtPa7to8/DzEdiMHWlUKUKCNz89GIwfECY//3ORtbeN2
 769ozlpFOctITOVlJafjJUgU99dfkVQIxad9dMt/iRbVcpdgQ0ClR0fOV
 +DnjOYkS0sblS+trYX8guPWXMHTCljdU0sihHC7qxlvemJQ+6uJT3RzAd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="251043542"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="251043542"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 02:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="634539812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 17 Feb 2022 02:32:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 12:32:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 12:32:20 +0200
Message-Id: <20220217103221.10405-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Remove odd any_ms=true assignment
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

For some reason we're flagging that we need to run through the
full modeset calculations (any_ms==true -> do cdclk/etc. checks)
if any crtc got initially flagged for a modeset and is not
enabled via the uapi. No idea why this is here since later on
(after all fastset handling) we do full run through the crtcs
and flag any_ms if anything still needs a full modeset. So let's
just throw out this early weirdo.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59961621fe4a..61adfcd7cf63 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7628,10 +7628,8 @@ static int intel_atomic_check(struct drm_device *dev,
 		}
 
 		if (!new_crtc_state->uapi.enable) {
-			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state))
 				intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
-				any_ms = true;
-			}
 			continue;
 		}
 
-- 
2.34.1

