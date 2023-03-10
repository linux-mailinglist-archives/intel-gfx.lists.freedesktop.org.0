Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 478FB6B5616
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 00:58:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 215B510E06C;
	Fri, 10 Mar 2023 23:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC1F10E06C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 23:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678492712; x=1710028712;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tEQnz5vAGLK2vYgBJCFIa6EPl4jV9MYQPYxUTtF0oQ0=;
 b=N+NaR4mjRrrKs8vhAW8GHX5YRgHCP5F632yzOxXQfHC0d9GztehVprSo
 VLETgjgMHCyNbYbl2DzdRxtMZrsmD9KTTE37+wERuLFdhm5JFWaTpcfW8
 ikpBNmLXIIl4ebX1Kf9d6hfVwXZlBuppJ6YBjX75IOby8OVHRk/o5BB7A
 x3g2ija3Oi6KjwK3t4dkP/cUhsyVoa7t+0mU05VLStxLtJqDvlARHufS3
 3znT9gLdLRWbWaFdtIwXV9NErNs657Wf+kaodlIvd0kwt//CjEtpATfHG
 c686HjyI+aluCQDEeFMSjR1WkdQoatqtEFEEjUMJrpGHl6JkMR3aJD7C2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="399453125"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="399453125"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 15:58:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="710469144"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="710469144"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 10 Mar 2023 15:58:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 11 Mar 2023 01:58:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Mar 2023 01:58:25 +0200
Message-Id: <20230310235828.17439-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Update vblank timestamping
 stuff on seamless M/N change
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
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

