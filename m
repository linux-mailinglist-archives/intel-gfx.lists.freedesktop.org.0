Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99D6099FD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 07:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7458710E253;
	Mon, 24 Oct 2022 05:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF68310E253
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 05:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666590429; x=1698126429;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cklcq8j/hOihm2Lp/PK0M3UHUWEvAA0ckSdR0dlnHAU=;
 b=NXn3WGiy4Ppv+Fs5OwHq5OtCFiASWP2Oz01to7DRb+RBt2w3lQR1xV/8
 4KfJgK1Q1nsDlln65MMpwDADKM7MUFcIZ7GvyIopknG7w1mWquQnzhPtX
 0QA8hEVx3d9xPmFkLpoCeke8a5dirypgR0ulYWCEaZolAoFoevf7Ki7Ez
 /D3ahgL3d/NrffzoogD0WHqp6wLC6s6NKrsfJMG62d1TcD/6hMAsbx5va
 NBKcznWd+8YqHrHtBNEMtKn6ZI9eeiXFWtTsQJiNWn0KfELvWL8KmEoip
 O4dE6AeQ61Sqi1eKMjrYVJe2kTPAjleRSEAgQcTiqqOf+3tE6VLG4hQiv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="287061387"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="287061387"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2022 22:47:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="662325683"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="662325683"
Received: from valeriya-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.52.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2022 22:47:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 08:46:49 +0300
Message-Id: <20221024054649.31299-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Send update also on invalidate
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
Cc: "Brian J . Tarricone" <brian@tarricone.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we are observing mouse cursor stuttering when using
xrandr --scaling=1.2x1.2. X scaling/transformation seems to be
doing fronbuffer rendering. When moving mouse cursor X seems to
perform several invalidates and only one DirtyFB. I.e. it seems
to be assuming updates are sent to panel while drawing is done.

Earlier we were disabling PSR in frontbuffer invalidate call back
(when drawing in X started). PSR was re-enabled in frontbuffer
flush callback (dirtyfb ioctl). This was working fine with X
scaling/transformation. Now we are just enabling continuous full
frame (cff) in PSR invalidate callback. Enabling cff doesn't
trigger any updates. It just configures PSR to send full frame
when updates are sent. I.e. there are no updates on screen before
PSR flush callback is made. X seems to be doing several updates
in frontbuffer before doing dirtyfb ioctl.

Fix this by sending single update on every invalidate callback.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Fixes: 805f04d42a6b ("drm/i915/display/psr: Use continuos full frame to handle frontbuffer invalidations")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6679
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reported-by: Brian J. Tarricone <brian@tarricone.org>
Tested-by: Brian J. Tarricone <brian@tarricone.org>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 904a1049eff3..564d4fd94048 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2209,8 +2209,11 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 val;
 
-		if (intel_dp->psr.psr2_sel_fetch_cff_enabled)
+		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
+			/* Send one update otherwise lag is observed in screen */
+			intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 			return;
+		}
 
 		val = man_trk_ctl_enable_bit_get(dev_priv) |
 		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
-- 
2.34.1

