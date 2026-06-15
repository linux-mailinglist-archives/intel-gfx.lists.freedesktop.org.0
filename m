Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tw2+IOtNMGqERAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 21:09:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CDC689608
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 21:09:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TOC8Uwf5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC71110E5EC;
	Mon, 15 Jun 2026 19:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AAB10E5EB;
 Mon, 15 Jun 2026 19:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781550566; x=1813086566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0tUcCxLnybYNi/tEBkeqKUmlYMDSo7eII6yzjRCG7oI=;
 b=TOC8Uwf5wjiOhYUhaN/9qD+p7qGrvxnrB7m59MrnNeulM+yVFqqrDgIC
 seKZ89ucS3qoKMu1d9BylKxmnV64wcdUzGhNnfgVuHlElyp+jHwPVa1xH
 oKQPyexasOoey2LuuwXv9Plaj6n65pvTzBf8Vc/qqfRkoX3e5OO05Hc6E
 vjOZComc9NEQ7M80Z59z9Qd0NEmofMgXTFzxav09XHTClDE47pBBHdINU
 C50bWgIZ2N8yob8ril4rbXLmxbx5hzwePR6VqNuyyn9ffSuCk2qz3KqiJ
 bWEu25ZoxRCMj3/GWZ+ISkiyMBMqN2GM/D50hjjSBDUZCJCq+TUGgHqos A==;
X-CSE-ConnectionGUID: Dl2bYKTJTMeVbQE2sc04Jg==
X-CSE-MsgGUID: Wf9FCgs1TiCI8r6tLGYYOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82314204"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82314204"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 12:09:26 -0700
X-CSE-ConnectionGUID: MUabDq68RFi9gE4pBWVYNQ==
X-CSE-MsgGUID: UfDD3KSpSmqalgEvpIvWAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271265081"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP; 15 Jun 2026 12:09:24 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 2/3] drm/i915/scaler: s/i/scaler_id/ again
Date: Mon, 15 Jun 2026 21:08:38 +0200
Message-ID: <20260615190839.1219417-3-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260615190839.1219417-1-michal.grzelak@intel.com>
References: <20260615190839.1219417-1-michal.grzelak@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50CDC689608

Rename generic iterator into more descriptive one.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4b456924fdef3..0cfa5b7564ba8 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -337,18 +337,18 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
 				 bool casf_scaler)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	int i;
+	int scaler_id;
 
-	for (i = 0; i < crtc->num_scalers; i++) {
-		if (scaler_state->scalers[i].in_use)
+	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
+		if (scaler_state->scalers[scaler_id].in_use)
 			continue;
 
-		if (casf_scaler && !scaler_has_casf(display, i))
+		if (casf_scaler && !scaler_has_casf(display, scaler_id))
 			continue;
 
-		scaler_state->scalers[i].in_use = true;
+		scaler_state->scalers[scaler_id].in_use = true;
 
-		return i;
+		return scaler_id;
 	}
 
 	return -1;
-- 
2.45.2

