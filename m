Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C7WK4cj4GmtcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 880BA4090EE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA9210E7D6;
	Wed, 15 Apr 2026 23:47:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HzvjfsQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A90F10E7D2;
 Wed, 15 Apr 2026 23:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296833; x=1807832833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e1OxcaYwAfhH7WcBjBShe8LsGMMgvBvsijpWLzBQj1E=;
 b=HzvjfsQQIwqbtQFbKnGKhUDDmHypDkDF3BQ1VW1kJS7SZEd1y1d20k9D
 JvuU9kNhBuOyX5Fi4IlHNQdyx6X9pHCQh7uggsWzGGkBakCYmQ7etui5y
 49MRLOwNjCnzBe7/GPV8Yosd4qWXUwTvxgvSuH3c/o+XVr32dxpb1z+K3
 7ftAkA3EtYepz9frXW1w/JzRBq4Nrv0S9dPlRphZ6wq6YWZJ3E1r3Jm5p
 ZWVmr2DRB3NqzPfGyYIs9iP/9dKFe2abeNCJ4z1FxqKoaSfMiDF2Ds+SF
 5O9hOXW06HNKsWmTxx4GDn3hmQIwnC2YUgzr6pYL8BmMQ0bO9Id2kv+dB Q==;
X-CSE-ConnectionGUID: xTGr8p5LR0qHPdeNY1wtDg==
X-CSE-MsgGUID: aVfSMJR2RfukSlW54Vfp5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403502"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403502"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:13 -0700
X-CSE-ConnectionGUID: 5jnDAbNzTNOVB7M5RjW2Uw==
X-CSE-MsgGUID: 0P9nYxbNSaCR0ZyTI1gOpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511191"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:12 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 15/32] drm/i915/buf_trans: abstract VS/PE-O index
 computation
Date: Thu, 16 Apr 2026 01:46:22 +0200
Message-ID: <20260415234639.3577774-16-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260415234639.3577774-1-michal.grzelak@intel.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 880BA4090EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move index computation for most appropriate VS/PE-O table into separate
function.

Unlike VS/PE-O tables' parsing, index computation cannot happen during
DDI ports parsing. It is because computation depends on link's port
clock, which can change with every modeset. Thus index computation must
be deferred to occur during override_buf_trans(), after tables' parsing
has completed.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index e83093b683ddc..955d64b2e9b67 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,14 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+vspeo_compute_index(struct intel_encoder *encoder)
+{
+	drm_dbg_kms(to_intel_display(encoder)->drm, "VS/PE-O unsupported, using default VS/PE tables");
+
+	return -1;
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1859,8 +1867,10 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
-	if (encoder->vspeo)
-		drm_dbg_kms(to_intel_display(encoder)->drm, "VS/PE-O unsupported, using default VS/PE tables");
+	if (!encoder->vspeo)
+		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+
+	vspeo_compute_index(encoder);
 
 	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 }
-- 
2.45.2

