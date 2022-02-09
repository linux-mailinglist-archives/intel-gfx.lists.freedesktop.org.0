Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FC04AF005
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 12:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E703610E709;
	Wed,  9 Feb 2022 11:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5C710E709
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 11:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644406544; x=1675942544;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LJ8x5y9gd/DqSHXztcZRanuq8kbltS785eCu/xLEyDs=;
 b=HDpSUaWcn5lxbCN5Sqxpuu71QEno3tUw6Vo/udj0zYQfdlfOKNSlOC2L
 cne+6awRCiQVyvyVJrLfLaBccDetOGCEIz/0Ms60lzvmmTgOG/tX/R4nx
 wu4cmvxQs5pAExVbh4WNfIGoNM7MhubFU514B57SOx1dPbDBzYRWZK+s9
 /BlBQoWB9sADJfuxG6gheoo13Yb0sE6flcDfJbn7e0AZ9G/dYFdIsOOV1
 qzKUC8eOku8Kh/nIrDEHJKSAsY0SbuQ34OikZDhsHvUybFTjmE3c8mZVU
 btfNz5DOt0mD8PIT+Sq69Py9h7bedpXJGu/wE6T6Ax/lzyqwNzl9GfG99 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="335586463"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="335586463"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:35:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="585536206"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 09 Feb 2022 03:35:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 13:35:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 13:35:25 +0200
Message-Id: <20220209113526.7595-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Fix IPS disable in
 intel_plane_disable_noatomic()
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

IPS must be disabled prior to disabling the last plane (excluding
the cursor). Make the code do that instead of assuming the primary
plane would be the last one. This is probably 100% theoretical
as the BIOS should never light up the other planes anyway. But
no harm in making the code totally consistent.

Also let's update the ips_enabled flag in the crtc state afterwards
so that the first atomic commit has accurate information about
the state of IPS.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cdfee4ba1166..401a339973bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -753,9 +753,11 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
-	if (plane->id == PLANE_PRIMARY &&
-	    hsw_ips_disable(crtc_state))
+	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
+	    hsw_ips_disable(crtc_state)) {
+		crtc_state->ips_enabled = false;
 		intel_crtc_wait_for_next_vblank(crtc);
+	}
 
 	/*
 	 * Vblank time updates from the shadow to live plane control register
-- 
2.34.1

