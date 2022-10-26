Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB0760DFC9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C1D910E4C4;
	Wed, 26 Oct 2022 11:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF5510E4C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784373; x=1698320373;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e8Vlwo7NHNnjOHydK2K50dtLacU71XyKq/tpgPV0VyQ=;
 b=GuhC8FRvUswsaXWHpm92Pe/qx5zIj7diHg3kIRR8bK7g/JmdqPTc4dMM
 bUkwETG+JVV2SsOQRAZT/HobNNEJKdIr3bDQ8uMddsjvLSSh+feQCj5H8
 RL4bVyRYHxQ5NbwY1hNDtdS2mZgqj0RQxhVm+gQM/ybdg8xGnBnvlJWUn
 rL+r9n8ifKAyiJLXSV8IaLR+UTwmdVJ0+xDAYWbaLpUmKCtSU+Plcl94z
 +T9qw8IrUKkE8dc09+LqD2WqVWAbKIeR+OFI5MpPsvHZXZ6bfleFt1bk0
 xkQDE2YkCMSvQupKo3fSxUFhRHc6jzsDVofEw5swZNW3qoaK7kk7ihLuU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614275"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164572"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164572"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:03 +0300
Message-Id: <20221026113906.10551-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Reuse ilk_gamma_mode() on ivb+
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

Apart from the split gamma mode ivb+ LUTs work just like ilk+ LUTs.
So let's handle the special case, and then just fall back to
ilk_gamma_mode() to avoid having to duplicate the same logic.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 946fb767f3e0..435394cad359 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1521,14 +1521,10 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 
 static u32 ivb_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable ||
-	    crtc_state_is_legacy_gamma(crtc_state))
-		return GAMMA_MODE_MODE_8BIT;
-	else if (crtc_state->hw.gamma_lut &&
-		 crtc_state->hw.degamma_lut)
+	if (crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut)
 		return GAMMA_MODE_MODE_SPLIT;
-	else
-		return GAMMA_MODE_MODE_10BIT;
+
+	return ilk_gamma_mode(crtc_state);
 }
 
 static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
-- 
2.37.4

