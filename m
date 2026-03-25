Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPVhASjqw2lvugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:59:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C2532642A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:59:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D252910E566;
	Wed, 25 Mar 2026 13:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpYPVYGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0008B10E22A;
 Wed, 25 Mar 2026 13:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774447140; x=1805983140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Bs3HTNovwBrxNg0Idc4gwX/7gpAmETVXtpcJvZYEkg=;
 b=ZpYPVYGDPp7ftDsnSIdFkJSqZXgy5azpDGti5W59LHREP5mzpL/GtVLs
 zJEcwNZ/sscSjLBVmoNQgdFiCgXsWl6bG9SLvRy7+4/9YX9L4rIQE4rU+
 slkO4Gkj3yOLU0HlQYWyqpu2+7zYwcTQLwu7Z2s/i2az4J36ct+kt0fmr
 CJ6Uq290bPlCvxrib9a9HUHs01ABw9JpRd8O04QiH+yyEZqTN3lt0FTzD
 oaNelCOoX7LGQ9P4aUNkQNcph7RqspkelVzz46LGGNQGs/v7/cZ5HaZCf
 c2lypheDTN+7erpBLBHImmk9o562DB4tFRwrqQ55WpH+qpU5sQ+hBmz96 g==;
X-CSE-ConnectionGUID: tjGAfcaOQGGig/SwMw6R/g==
X-CSE-MsgGUID: AYx5uAvdRNS4w7a1kIXI8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75365768"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75365768"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:58:58 -0700
X-CSE-ConnectionGUID: yflzpG0ERJmbhqLQNkf7mA==
X-CSE-MsgGUID: ihxccJVjQp2CMjzXpJQA1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="248197423"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:58:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, stable@vger.kernel.org,
 Mikhail Rudenko <mike.rudenko@gmail.com>
Subject: [PATCH 1/6] drm/i915/cdclk: Do the full CDCLK dance for
 min_voltage_level changes
Date: Wed, 25 Mar 2026 15:58:44 +0200
Message-ID: <20260325135849.12603-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
References: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 64C2532642A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently I forgot about the pipe min_voltage_level when I
decoupled the CDCLK calculations from modesets. Even if the
CDCLK frequency doesn't need changing we may still need to
bump the voltage level to accommodate an increase in the
port clock frequency.

Currently, even if there is a full modeset, we won't notice the
need to go through the full CDCLK calculations/programming,
unless the set of enabled/active pipes changes, or the
pipe/dbuf min CDCLK changes.

Duplicate the same logic we use the pipe's min CDCLK frequency
to also deal with its min voltage level.

Note that the 'allow_voltage_level_decrease' stuff isn't
really useful here since the min voltage level can only
change during a full modeset. But I think sticking to the
same approach in the three similar parts (pipe min cdclk,
pipe min voltage level, dbuf min cdclk) is a good idea.

Cc: stable@vger.kernel.org
Tested-by: Mikhail Rudenko <mike.rudenko@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15826
Fixes: ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from state->modeset")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 54 ++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 121a12c5b8ac..a47736613f6e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2972,6 +2972,53 @@ static int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int intel_cdclk_update_crtc_min_voltage_level(struct intel_atomic_state *state,
+						     struct intel_crtc *crtc,
+						     u8 old_min_voltage_level,
+						     u8 new_min_voltage_level,
+						     bool *need_cdclk_calc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_cdclk_state *cdclk_state;
+	bool allow_voltage_level_decrease = intel_any_crtc_needs_modeset(state);
+	int ret;
+
+	if (new_min_voltage_level == old_min_voltage_level)
+		return 0;
+
+	if (!allow_voltage_level_decrease &&
+	    new_min_voltage_level < old_min_voltage_level)
+		return 0;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	old_min_voltage_level = cdclk_state->min_voltage_level[crtc->pipe];
+
+	if (new_min_voltage_level == old_min_voltage_level)
+		return 0;
+
+	if (!allow_voltage_level_decrease &&
+	    new_min_voltage_level < old_min_voltage_level)
+		return 0;
+
+	cdclk_state->min_voltage_level[crtc->pipe] = new_min_voltage_level;
+
+	ret = intel_atomic_lock_global_state(&cdclk_state->base);
+	if (ret)
+		return ret;
+
+	*need_cdclk_calc = true;
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] min voltage level: %d -> %d\n",
+		    crtc->base.base.id, crtc->base.name,
+		    old_min_voltage_level, new_min_voltage_level);
+
+	return 0;
+}
+
 int intel_cdclk_update_dbuf_bw_min_cdclk(struct intel_atomic_state *state,
 					 int old_min_cdclk, int new_min_cdclk,
 					 bool *need_cdclk_calc)
@@ -3387,6 +3434,13 @@ static int intel_crtcs_calc_min_cdclk(struct intel_atomic_state *state,
 							need_cdclk_calc);
 		if (ret)
 			return ret;
+
+		ret = intel_cdclk_update_crtc_min_voltage_level(state, crtc,
+								old_crtc_state->min_voltage_level,
+								new_crtc_state->min_voltage_level,
+								need_cdclk_calc);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
-- 
2.52.0

