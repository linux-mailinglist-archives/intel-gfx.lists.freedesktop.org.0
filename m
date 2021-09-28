Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDA241B6B1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 20:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457856E0EB;
	Tue, 28 Sep 2021 18:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4DF76E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 18:51:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="310329297"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="310329297"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 11:51:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="554229668"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 28 Sep 2021 11:51:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Sep 2021 21:51:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Sep 2021 21:51:05 +0300
Message-Id: <20210928185105.3030-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Stop force enabling pipe bottom color
 gammma/csc
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

While sanitizing the hardware state we're currently forcing
the pipe bottom color legacy csc/gamma bits on. That is not a
good idea as BIOSen are likely to leave gabage in the LUTs and
so doing this causes ugly visual glitches if and when the
planes covering the background get disabled. This was exactly
the case on this Dell Precision 5560 tgl laptop.

On icl+ we don't normally even use these legacy bits
anymore and instead use their GAMMA_MODE counterparts.
On earlier platforms the bits are used, but we still
shouldn't force them on without knowing what's in the LUT.

So two options, get rid of the whole thing, or do what
intel_color_commit() does to make sure the bottom color state
matches whatever out hardware readout produced. I chose the
latter since it'll match what happens on older platforms when
the primary plane gets turned off. In fact let's just call
intel_color_commit(). It'll also do some CSC programming but
since we don't have readout for that it'll actually just set
to all zeros. So in the unlikely case of CSC actually being
enabld by the BIOS we'll end up with all black until the first
atomic commit happens.

Still not totally sure what we should do about color management
features here in general. Probably the safest  thing would be to
force everything off exactly at the same time when we disable
the primary plane as there is no guarantees that whatever the
LUTs/CSCs contain make any sense whatsoever without the
specific pixel data in the BIOS fb. And if we preserve the
primary plane then we should disable the color management
features exactly when the primary plane fb contents first
changes since the new content assumes more or less no
transformations. But of course synchronizing front buffer
rendering with anything else is a bit hard...

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3534
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f27c294beb92..17ce51576ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11991,13 +11991,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 				intel_plane_disable_noatomic(crtc, plane);
 		}
 
-		/*
-		 * Disable any background color set by the BIOS, but enable the
-		 * gamma and CSC to match how we program our planes.
-		 */
-		if (DISPLAY_VER(dev_priv) >= 9)
-			intel_de_write(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe),
-				       SKL_BOTTOM_COLOR_GAMMA_ENABLE | SKL_BOTTOM_COLOR_CSC_ENABLE);
+		/* Disable any background color/etc. set by the BIOS */
+		intel_color_commit(crtc_state);
 	}
 
 	/* Adjust the state of the output pipe according to whether we
-- 
2.32.0

