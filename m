Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ikS5HfudKGpzGwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0504F664C00
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YcwlBj01;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7354E10E6A3;
	Tue,  9 Jun 2026 23:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A2C10E69C;
 Tue,  9 Jun 2026 23:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781046776; x=1812582776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pgtoLndhBKnk+T2/djfY8WbJi7B7KhzeMyJJFKieWbc=;
 b=YcwlBj01JfqXNlLDbdI4Ic/2n5WIJFZso1jz7+17vFid+axKqF15CcFo
 j4uWjX28J+2vUr3WI774BNQMUYyeexAzMRAmIY9PjDWXvfwWBjoq9pbyW
 HdDW7ozpL+KhtT99e6Y2OZ+V1eSxQ5DoisX0SQc7QwnJrGWbswZwJ4V80
 tRhpoduhRiPeSQKw8fLw+zN7aeWwrjMKubqWFF/CxFgZopudLnISr7X4a
 /EIEfU182JsYerdauonR8if/Qa/FMvarqlj3Q01NSqvRsDsu4CIRhUK+/
 liAp3G1KgQf2hNTtCu60yjUScZXt0HkrYr2/hIqsWjMVwXXp8Sxn/+FHS g==;
X-CSE-ConnectionGUID: +Qhg7aqxQCmC4iaLKKS08g==
X-CSE-MsgGUID: 8f9WRy+KRHGHdB4NtzHfLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104492314"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="104492314"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 16:12:56 -0700
X-CSE-ConnectionGUID: Rn3qq5swQ2SEzjHhMoP6PQ==
X-CSE-MsgGUID: 2bZQLAVKTXi+/PMAXmQg5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="276187995"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 09 Jun 2026 16:12:55 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v1 9/9] drm/i915/scaler: move CASF alloc check into
 setup_crtc_scaler()
Date: Wed, 10 Jun 2026 01:12:17 +0200
Message-ID: <20260609231217.208357-10-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260609231217.208357-1-michal.grzelak@intel.com>
References: <20260609231217.208357-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0504F664C00

Move CASF allocation check to the caller of intel_atomic_setup_scaler().
Add intel_display to make the check work. Remove casf_scaler from
intel_atomic_setup_scaler()'s argument list since it is no longer used.

Do not add the check into setup_plane_scaler() as it calls
intel_atomic_setup_scaler() with casf_scaler set to false.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index b40c9e500bbc..da9c7ef8610d 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -389,7 +389,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
 				     struct intel_plane_state *plane_state,
-				     int *scaler_id, bool casf_scaler)
+				     int *scaler_id)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
@@ -397,17 +397,8 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 	int hscale = 0;
 	int vscale = 0;
 
-	if (*scaler_id < 0) {
-		if (casf_scaler) {
-			if (HAS_CASF(display) && crtc->num_scalers >= 2 &&
-			    !scaler_state->scalers[1].in_use) {
-				scaler_state->scalers[1].in_use = true;
-				*scaler_id = 1;
-			}
-		} else {
-			*scaler_id = intel_allocate_scaler(scaler_state, crtc);
-		}
-	}
+	if (*scaler_id < 0)
+		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
 
 	if (drm_WARN(display->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
@@ -534,16 +525,26 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 static int setup_crtc_scaler(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
+	if (scaler_state->scaler_id < 0) {
+		if (crtc_state->pch_pfit.casf.enable) {
+			if (HAS_CASF(display) && crtc->num_scalers >= 2 &&
+			    !scaler_state->scalers[1].in_use) {
+				scaler_state->scalers[1].in_use = true;
+				scaler_state->scaler_id = 1;
+			}
+		}
+	}
+
 	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
-					 NULL, &scaler_state->scaler_id,
-					 crtc_state->pch_pfit.casf.enable);
+					 NULL, &scaler_state->scaler_id);
 }
 
 static int setup_plane_scaler(struct intel_atomic_state *state,
@@ -578,8 +579,7 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
 	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "PLANE", plane->base.base.id,
-					 plane_state, &plane_state->scaler_id,
-					 false);
+					 plane_state, &plane_state->scaler_id);
 }
 
 /**
-- 
2.45.2

