Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BBDA7A078
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E065E10E98E;
	Thu,  3 Apr 2025 09:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lCi3rMMK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E8C10E9B3;
 Thu,  3 Apr 2025 09:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673883; x=1775209883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xbanp7oMXnre4OdAp5KUphQZ9VmfsbkjyvzmvY8k0dA=;
 b=lCi3rMMKVxn0bYk7tm66s20dZKkfqfPpUimY/agqlWuxChM1QrlcBQnU
 iERq8erSqSWCVxPFIyFB89tUCCK3IpBW8WG2/YCq5WiqgKa1XXYXqwTpB
 omBmjRCqLcAqeJvTH6JuG/xobEwBsSUJlcnRCc1pKO9lfxOvaTDVQkDbG
 CtMusdrtnXzV74gpRs+2rXy39/Zg0Dz6QRYfwa0o3EMTN4AkZ+RIXo2yf
 Vd/JzcNQAoZ7Dit9SrTfl97dMD2/bmO8RD+XjLegHixtwhs21tRJH6ssb
 g5hf9bF5a7BcRCZtcq+dQgFacRAzpMFLdgS6CqV7w3ZKfCwvDG05Vth3j w==;
X-CSE-ConnectionGUID: lkNN7KWESXe1V0TZgXFVhQ==
X-CSE-MsgGUID: 3eMJnMUlTAKRovZG//2Y6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196648"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196648"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:22 -0700
X-CSE-ConnectionGUID: ESRbm7CcQYS6w8bHimT55w==
X-CSE-MsgGUID: 0Nqonb79RBqm/kxQRSzWpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463757"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:21 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 5/8] drm/i915/lobf: Update lobf if any change in dependent
 parameters
Date: Thu,  3 Apr 2025 14:58:22 +0530
Message-Id: <20250403092825.484347-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
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

For every commit the dependent condition for LOBF is checked
and accordingly update has_lobf flag which will be used
to update the ALPM_CTL register during commit.

v1: Initial version.
v2: Avoid reading h/w register without has_lobf check. [Jani]
v3: Update LOBF in post plane update instead of separate function. [Jouni]
v4:
- Add lobf disable print. [Jouni]
- Simplify condition check for enabling/disabling lobf. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index aae2c322baa7..7ab29c5fef38 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -360,6 +360,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	if (crtc_state->has_lobf) {
 		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
 		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
+	} else {
+		drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
 	}
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
@@ -380,9 +382,12 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_lobf && !crtc_state->has_psr)
+	if (!(crtc_state->has_lobf != old_crtc_state->has_lobf) &&
+	    !crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
-- 
2.29.0

