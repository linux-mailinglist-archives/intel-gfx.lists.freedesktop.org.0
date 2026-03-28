Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE/2Frfmx2kYegUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA6E34EB21
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CFA10E123;
	Sat, 28 Mar 2026 14:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Urz1uLyh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA16110E122
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2026 14:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774708399; x=1806244399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L/CLbrzVxmnS42BL4fOgxP9kfRJOv+3O/tuBs6Oh+0g=;
 b=Urz1uLyhyDDLajgk+QqsRVF7jmOq9VyxP7NgkDY76X5KW3rnEh6lOZ0G
 UHa9lCciR47uayTG/FqBYr61mwYT0yQrqH3XXJP9PwB2TGEniWaVQqfEb
 qmZSqIUtsNFQafFIGrn1nPrPZPUGfpd3F/LXhPdZYg50abE2bheYcKjHc
 vOEknKbpZb5Z48UORuVWsruaDWYgWQbSbUrDQgfGsjviZ4tknQr9o9igD
 V1FY1qWmruktjmhjFMS5G6pK9QGeYiV7XOh5T1+xMkiMUc3VxvitEJYgm
 oJZkBavqJ0hU8mOgc9hRiXrfbt9JuVURnTZg8ETOLnT1UbKMf844YRzGT Q==;
X-CSE-ConnectionGUID: YnmigEQyQ6W07kSXmvXkew==
X-CSE-MsgGUID: 5mZRMtG3QHK0i9lE6+AnYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="86839492"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="86839492"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 07:33:19 -0700
X-CSE-ConnectionGUID: UuUb3WW3QACJb1qhjNTYYQ==
X-CSE-MsgGUID: qxBYQU13T4mmlEU3qRFz7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="224621087"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 28 Mar 2026 07:33:18 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 06/10] drm/i915/casf: remove id in favor of scaler_id
Date: Sat, 28 Mar 2026 15:32:08 +0100
Message-ID: <20260328143212.601656-7-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260328143212.601656-1-michal.grzelak@intel.com>
References: <20260328143212.601656-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2DA6E34EB21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

id is not really used anywhere in skl_scaler_get_config(). Replace it
with scaler_id.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 729ef51beeb4..5954f5beb19c 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -969,7 +969,6 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
-	int id = -1;
 	int scaler_id;
 
 	/* find scaler attached to this pipe */
@@ -980,10 +979,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
 			continue;
 
-		id = scaler_id;
-
 		/* Read CASF regs for second scaler */
-		if (HAS_CASF(display) && id == 1)
+		if (HAS_CASF(display) && scaler_id == 1)
 			intel_casf_sharpness_get_config(crtc_state);
 
 		if (!crtc_state->hw.casf_params.casf_enable)
@@ -1003,8 +1000,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	scaler_state->scaler_id = id;
-	if (id >= 0)
+	scaler_state->scaler_id = scaler_id;
+	if (scaler_id >= 0)
 		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
 	else
 		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
-- 
2.45.2

