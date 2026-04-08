Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +I89NQR71mk0FwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:57:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 866EA3BE9CA
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C4D10E6A2;
	Wed,  8 Apr 2026 15:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g7ybLS8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1406810E6A2;
 Wed,  8 Apr 2026 15:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775663874; x=1807199874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gdqdop9UQlEmw9Z6MFfrOhinO8hZEzJU+ShGI52kBNY=;
 b=g7ybLS8WzM7yBUrfqZlJLPPC0we2rRF1BmpCrkjan9bTsnASVg2Y+mnm
 ZmnOd4sGMRo0Ilt1X3byrNkwOKI5IETk+YHZCl01rPkh2pBBPc7R34RUN
 EIHrBwo0eytbW89lXCZPfoJfx7j8Mg9d+ge1GrfxKdufeQIC1wEAIYnHQ
 jeclv6AFqUNpqwqvIOsDzI31plM7cC11GQdAvVHtXbUgiLrGLiAT2VenX
 4R/iaeT3le/UJknl3d0/35kBXsQvfQfxx2hkedtdV4F7jjMtD+/HmayNW
 FSwzZrOl+LtzoVjaBjpKgg3WpvVxqEKaxOF4ow+Q0XnFNsdePFenYErbH g==;
X-CSE-ConnectionGUID: nSK+I8O+SMyW+tg2lx1CTQ==
X-CSE-MsgGUID: 4V+JRYO4QLOjK++QUmEWUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76542063"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76542063"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:57:54 -0700
X-CSE-ConnectionGUID: r4vhnYFpQGKzF2WWzrxIdA==
X-CSE-MsgGUID: 2J9oR6gCRLqaW6VwOqNomw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228400660"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 08:57:52 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/joiner: Make joiner "nomodeset" state copy
 independent of pipe order
Date: Wed,  8 Apr 2026 18:57:43 +0300
Message-ID: <20260408155744.13326-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408155744.13326-1-ville.syrjala@linux.intel.com>
References: <20260408155744.13326-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 866EA3BE9CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently the joiner primary->secondary hw state copy still happens from
the main compute_config loop alongside the primary uapi->hw state copy.
The primary uapi->hw state copy must therefore happen first, or else
we'll end up copying stale junk into the secondary.

We have a WARN in intel_atomic_check_joiner() to make sure the CRTCs
will be walked in the correct order. The plan is to reoder the CRTCs,
which would mess up the order, unless we also adjust the iterators
to keep the pipe order. The actual plan is to do both, so technically
we should be able to just remove the WARN and call it a day.

But relying on the iteration order like this is fragile and confusing,
so let's move the "nomodeset" joiner state copy into the later loop
where the "modeset" state copy is also done. The first loop having
completely finished, we are guaranteed to have up to date hw state
on the primary when we do the copy to the secondary.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 58a654ca0d20..674a4ece6d0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5914,17 +5914,6 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 			return -EINVAL;
 		}
 
-		/*
-		 * The state copy logic assumes the primary crtc gets processed
-		 * before the secondary crtc during the main compute_config loop.
-		 * This works because the crtcs are created in pipe order,
-		 * and the hardware requires primary pipe < secondary pipe as well.
-		 * Should that change we need to rethink the logic.
-		 */
-		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
-			    drm_crtc_index(&secondary_crtc->base)))
-			return -EINVAL;
-
 		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Used as secondary for joiner primary [CRTC:%d:%s]\n",
 			    secondary_crtc->base.base.id, secondary_crtc->base.name,
@@ -6302,9 +6291,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_joiner_secondary(new_crtc_state))
-				copy_joiner_crtc_state_nomodeset(state, crtc);
-			else
+			if (!intel_crtc_is_joiner_secondary(new_crtc_state))
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 			continue;
 		}
@@ -6439,8 +6426,11 @@ int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state))
+		if (!intel_crtc_needs_modeset(new_crtc_state)) {
+			if (intel_crtc_is_joiner_secondary(new_crtc_state))
+				copy_joiner_crtc_state_nomodeset(state, crtc);
 			continue;
+		}
 
 		if (intel_crtc_is_joiner_secondary(new_crtc_state)) {
 			drm_WARN_ON(display->drm, new_crtc_state->uapi.enable);
-- 
2.52.0

