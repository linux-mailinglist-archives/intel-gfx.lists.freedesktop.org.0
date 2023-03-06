Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CCB6AC4F4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 16:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D7310E17D;
	Mon,  6 Mar 2023 15:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221BA10E17D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 15:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678116525; x=1709652525;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fhwFf5rGxPIfhoiYCY/LZzhoNpUPhI9A5lhZk7li73E=;
 b=nKnf/N0imcCmE/0GGnGoXO111VDxjj7XJBPqZzx7CGqmhA3D2yNR2sQu
 3VRRRGaP70ySDXFdlGVo5dS2APVTF9G78/1/M8BnUlMx9s5ZPXyvhazg2
 haKnizivkGFh4+i+aHP/a5/sbc8cbyqQQRtHQkkKA8rQlRj1VKDEXznkB
 STZCTTbKdDf1yxgG/G0Y3q7IZ0xR+4PJjZNvBzYlekf2j2YCtFic1P9pW
 AXQ4VQ51JDFZiRAofkuRHpCMRV1ndj0KugseT0RSBCSSS6z0dhSjRODus
 MnQ0wJVEolnfgnk4Xm7eKteGg1aSlAZQ/hbUBk59W33kI6Y0xJ4C01Z8L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="363201192"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="363201192"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 07:28:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="669476712"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="669476712"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 06 Mar 2023 07:28:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 17:28:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Mar 2023 17:28:38 +0200
Message-Id: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Update vblank timestamping stuff
 on seamless M/N change
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

When we change the M/N values seamlessly during a fastset we should
also update the vblank timestamping stuff to make sure the vblank
timestamp corrections/guesstimations come out exact.

Note that only crtc_clock and framedur_ns can actually end up
changing here during fastsets. Everything else we touch can
only change during full modesets.

Technically we should try to do this exactly at the start of
vblank, but that would require some kind of double buffering
scheme. Let's skip that for now and just update things right
after the commit has been submitted to the hardware. This
means the information will be properly up to date when the
vblank irq handler goes to work. Only if someone ends up
querying some vblanky stuff in between the commit and start
of vblank may we see a slight discrepancy.

Also this same problem really exists for the DRRS downclocking
stuff. But as that is supposed to be more or less transparent
to the user, and it only drops to low gear after a long delay
(1 sec currently) we probably don't have to worry about it.
Any time something is actively submitting updates DRRS will
remain in high gear and so the timestamping constants will
match the hardware state.

Fixes: e6f29923c048 ("drm/i915: Allow M/N change during fastset on bdw+")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index b79a8834559f..41d381bbb57a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -686,6 +686,14 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	 */
 	intel_vrr_send_push(new_crtc_state);
 
+	/*
+	 * Seamless M/N update may need to update frame timings.
+	 *
+	 * FIXME Should be synchronized with the start of vblank somehow...
+	 */
+	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
+		intel_crtc_update_active_timings(new_crtc_state);
+
 	local_irq_enable();
 
 	if (intel_vgpu_active(dev_priv))
-- 
2.39.2

