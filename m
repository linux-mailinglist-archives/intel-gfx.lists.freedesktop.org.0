Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB05B3F41F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 07:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B7C10E59F;
	Tue,  2 Sep 2025 05:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TzbfVuPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A86F10E59F;
 Tue,  2 Sep 2025 05:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756789386; x=1788325386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S/aeC8fUJ+fNY5g2IVzJScSmjFI88eV/uMg474+kqp8=;
 b=TzbfVuPxuriD9e+jdmRkMkdWpHNpsU7uCbkNE8TB5DViAD5sSGE91z7W
 FYcPCj9GvhGDzfURFOkPAhWHELg7DwulJWesC9Vo3BclyNfhyj0JNUyUh
 ZQW0LF7+Lfza7Iad2mkiQtOmty+NruCayypvxB9903nEwQ4OK34nIdcT/
 dvnzlR+BCscfj8EUQEAHTAh95n9Dobvu97rjxKUSzAYKeEAWGONO4o5Pg
 L5Wujw315a2NCWqHCUlF+kgO6Wd2vyeEjqQwd65J1ntwPlcG6G0NzjNY+
 dCqH120lV/Im9emxeF22/M2G4GdjfbgHWouPTSqgklN6FspcV+QlIYDa4 A==;
X-CSE-ConnectionGUID: FNQLliefT0ypdu4UhVhOMQ==
X-CSE-MsgGUID: jiiopOnHSDioycBp8c7Qaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70151991"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70151991"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:03:06 -0700
X-CSE-ConnectionGUID: xQweaWWCQ/mNuI1NCc5KCw==
X-CSE-MsgGUID: VeggzwEvRO6qQWc3/u3eZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175537326"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:03:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/13] drm/i915/display: Wait for delayed vblank for fixed rr
Date: Tue,  2 Sep 2025 10:19:02 +0530
Message-ID: <20250902044905.3446011-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
References: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

For variable refresh rate case, we wait for send push event and so the
flipdone via dsb interrupt and vblank are aligned.
Currently the guardband is same as vblank length and undelayed vblank
and the vblank and the flipdone with dsb interrupt are already aligned
for the fixed refresh rate case.

As we move towards a shorter optimized guardband for fixed refresh rate
we need to wait for the delayed vblank before the DSB interrupt to align
the flipdone event with the delayed vblank.

Add a helper to make sure we wait for the delayed vblank for fixed
refresh rate case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c     | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h     |  3 +++
 3 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 787bb6ebdc75..0b5793e3b0ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7449,6 +7449,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
+		intel_dsb_wait_for_guardband(state, new_crtc_state->dsb_commit);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 53d8ae3a70e9..eb74ba302cbb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -1020,3 +1020,20 @@ void intel_dsb_irq_handler(struct intel_display *display,
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d GOSUB programming error\n",
 			crtc->base.base.id, crtc->base.name, dsb_id);
 }
+
+void intel_dsb_wait_for_guardband(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
+	int start, end;
+
+	if (crtc_state->vrr.enable)
+		return;
+
+	start = crtc_state->vrr.flipline - crtc_state->vrr.guardband;
+	end = crtc_state->vrr.flipline;
+
+	intel_dsb_wait_scanline_in(state, dsb, start, end);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index c8f4499916eb..35ba83b84df1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -74,4 +74,7 @@ void intel_dsb_wait(struct intel_dsb *dsb);
 void intel_dsb_irq_handler(struct intel_display *display,
 			   enum pipe pipe, enum intel_dsb_id dsb_id);
 
+void intel_dsb_wait_for_guardband(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb);
+
 #endif
-- 
2.45.2

