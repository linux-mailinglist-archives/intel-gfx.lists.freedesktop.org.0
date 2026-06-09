Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8SrCLfWdKGpvGwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88799664BF0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Ntmp1/7K";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B6310E683;
	Tue,  9 Jun 2026 23:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5884C10E683;
 Tue,  9 Jun 2026 23:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781046770; x=1812582770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zazuMbNF8ARsUIfoV0FNnll96KsINTMimz7HrhJmkaI=;
 b=Ntmp1/7Kn8ueDratcrNXHkz2Gi901O49IF5QTcjx5irI7v9BFJXQhDdH
 vgVPrZE+rUzWLdUiBg8Nj5ISDG/h3AJh+zrxImDzAk8tmXEsiKyB3oQAD
 6hztTVkaO68CKgHwF17uaV0cz/JfZDEKOigdJeGIbnxEY/oqyb19dha8R
 +ok5nGU3Kz0hnfenQ4ta8bBs+lA59vysEQm7G5qc6Ew78u1GCwQTWpsce
 O8Of5+c6P9B2svkIvIRnH+u0jOOud/Yze8tfcTyvdAHCmEu/m2DUXD8/k
 rQNmxq274CR0CnCR9lngeHU/dPuFIIC1N9LdIwJAWrEnlm3U8krB6Pij3 A==;
X-CSE-ConnectionGUID: H2p6/E8NSeWpPGbYVHeetg==
X-CSE-MsgGUID: yfiMvN1qRdKISOs1NTVbGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104492306"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="104492306"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 16:12:50 -0700
X-CSE-ConnectionGUID: 9s0xOSFSRByk2FsN3UIfNw==
X-CSE-MsgGUID: v6P+3QNWT76/b8Rn2kpR9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="276187982"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 09 Jun 2026 16:12:49 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v1 5/9] drm/i915/scaler: check CASF before allocation's loop
Date: Wed, 10 Jun 2026 01:12:13 +0200
Message-ID: <20260609231217.208357-6-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 88799664BF0

intel_allocate_scaler() checks if casf_scaler is true and either
allocates second scaler or fails if it was already allocated. Mimic this
outside of the loop. Also fail the allocation if number of scalers is
less than 2.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 59a5a3cd3e6a..29e4047c3f99 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -339,16 +339,24 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
 	struct intel_display *display = to_intel_display(crtc);
 	int scaler_id;
 
-	if (casf_scaler && !HAS_CASF(display))
-		return -1;
+	if (casf_scaler) {
+		if (!HAS_CASF(display))
+			return -1;
+
+		if (crtc->num_scalers < 2)
+			return -1;
+
+		if (scaler_state->scalers[1].in_use)
+			return -1;
+
+		scaler_state->scalers[1].in_use = true;
+		return 1;
+	}
 
 	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
 		if (scaler_state->scalers[scaler_id].in_use)
 			continue;
 
-		if (casf_scaler && scaler_id != 1)
-			continue;
-
 		scaler_state->scalers[scaler_id].in_use = true;
 
 		return scaler_id;
-- 
2.45.2

