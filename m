Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A1C4FFA28
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 17:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0784510E393;
	Wed, 13 Apr 2022 15:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DAC10E393
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649863736; x=1681399736;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fFZHTv3OkbldM8dLshXs0WGokx1qScobRzrlFkjn/2U=;
 b=BCrH2VimsuzNJ6xeSMOd5AryIpLj0BAJTd8eo6BbOD7f5ktPQPCruQkH
 hXG1qLZjN7WJP4SBibQYBMu0Yk8quUcGm35qs8szXy9TCDVdNGCfjycsp
 vGaFqf45U2/YEdn26Re5ei3NfseO9K7iw3AAeYecdnJC0JV5GwdoVUsgR
 djh5F61sOr9PUcExbmVsdQuNhfydPRt7H3V/ezK05JUocjFJRRajGiUrL
 wyzlkE+iBrT2NMYbyCcCiNRmlq6rHsFwvYGofndWA6A7bYOzdEjPfYMfb
 KeOSBqxsd0iyT+dW2U31lPlvzqVxuLifDT5oTyH9fNJ1MuZMQ+25uejqD w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323140418"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323140418"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 08:28:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="559787551"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 13 Apr 2022 08:28:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Apr 2022 18:28:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 18:28:51 +0300
Message-Id: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/fbc: Consult hw.crtc instead of
 uapi.crtc
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

plane_state->uapi.crtc is not what we want to be looking at.
If bigjoiner is used hw.crtc is what tells us what crtc the plane
is supposedly using.

Not an actual problem on current hardware as the only FBC capable
pipe (A) can't be a bigjoiner slave and thus uapi.crtc==hw.crtc
always here. But when we get more FBC instances this will become
actually important.

Fixes: 2e6c99f88679 ("drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 670835318a1f..ff303c7d3a57 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1045,7 +1045,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct intel_crtc *crtc = to_intel_crtc(plane_state->uapi.crtc);
+	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
 	const struct intel_crtc_state *crtc_state;
 	struct intel_fbc *fbc = plane->fbc;
 
-- 
2.35.1

