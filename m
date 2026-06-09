Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cIUiKfqdKGpyGwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DDF664BFD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BuRN4Awa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF5E10E69E;
	Tue,  9 Jun 2026 23:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C767210E687;
 Tue,  9 Jun 2026 23:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781046774; x=1812582774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sx7AwDHH3YLK1oLmS58VYiymnhy3qb5R4p/YlZFcwnE=;
 b=BuRN4AwaTxzeGU8oE5ofCzXbpoovkiUdcdm6aq/dF7yyUT1NEOA09o4W
 InMNI44281hy5smN/BppMly/lInJ6ZZBJNihJdkoloszoMb+ge2pDkTYe
 Gi3DVG3KiQYioxxpsuiH/W6OApL6OLaLEC3kBWh93aI5woy845QcVoyJY
 BTwkJq85SDOrG+NXWjRO0yB1Qqx8xPJb1xUMs7Tjz6TI1gDGOdJWdcjho
 OX/hGNe0b83G4clLI0Z012KMdTJSp78uB4+2LJm5cNUNdTD/sIj5XOugI
 wr9N50jN/3R0uQ5VKZy/CvMC/6bimwR3yuIXT6TtwuYRmpYLIhzYeuvB4 w==;
X-CSE-ConnectionGUID: /BDUCj2zRByyN6IgpKsNNA==
X-CSE-MsgGUID: vBPsMpB0RIy5GeSPn7GcBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104492313"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="104492313"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 16:12:54 -0700
X-CSE-ConnectionGUID: UwHlx0ZjSN6C1EymU573GQ==
X-CSE-MsgGUID: N5jodoDGRvqwEYvZ/p7W7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="276187992"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 09 Jun 2026 16:12:54 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v1 8/9] drm/i915/scaler: move CASF alloc check into
 intel_atomic_setup_scaler()
Date: Wed, 10 Jun 2026 01:12:16 +0200
Message-ID: <20260609231217.208357-9-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35DDF664BFD

Move CASF allocation check into only caller of intel_allocate_scaler().
Allocate scaler as usual if CASF was not requested. Remove casf_scaler
from intel_allocate_scaler()'s argument list. Also remove intel_display
as both are no longer used.

Benefits of doing so are not clearly visible as it is a mid-step for
moving the check to the caller again.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 27 ++++++++++-------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index b3c6376c8603..b40c9e500bbc 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -333,22 +333,10 @@ static bool scaler_has_casf(struct intel_display *display, int scaler_id)
 }
 
 static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
-				 struct intel_crtc *crtc,
-				 bool casf_scaler)
+				 struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(crtc);
 	int scaler_id;
 
-	if (casf_scaler) {
-		if (HAS_CASF(display) && crtc->num_scalers >= 2 &&
-		    !scaler_state->scalers[1].in_use) {
-			scaler_state->scalers[1].in_use = true;
-			return 1;
-		}
-
-		return -1;
-	}
-
 	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
 		if (!scaler_state->scalers[scaler_id].in_use) {
 			scaler_state->scalers[scaler_id].in_use = true;
@@ -409,8 +397,17 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 	int hscale = 0;
 	int vscale = 0;
 
-	if (*scaler_id < 0)
-		*scaler_id = intel_allocate_scaler(scaler_state, crtc, casf_scaler);
+	if (*scaler_id < 0) {
+		if (casf_scaler) {
+			if (HAS_CASF(display) && crtc->num_scalers >= 2 &&
+			    !scaler_state->scalers[1].in_use) {
+				scaler_state->scalers[1].in_use = true;
+				*scaler_id = 1;
+			}
+		} else {
+			*scaler_id = intel_allocate_scaler(scaler_state, crtc);
+		}
+	}
 
 	if (drm_WARN(display->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
-- 
2.45.2

