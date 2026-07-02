Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V7BII/a0Rmq3bwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:59:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1D26FC5D0
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:59:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jZsx5p6b;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009AE10F597;
	Thu,  2 Jul 2026 18:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9357F10F597;
 Thu,  2 Jul 2026 18:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783018737; x=1814554737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qAuMFXX0yvWL32IHtxCqb8WmHFKzhusjciNQIwG71sA=;
 b=jZsx5p6bQpfnocbCPFhg7S9YwNEyAGIgm7w0FZqbo0+fvEFt9Z11j7Ky
 g8LoKtzjJvUtI1vT1tdR4u3SXbf//T8/wlwakcfPymyD0L5FVGwLo/ANP
 Lr5UOJ8zI5I/sfArvn0k4jXVo7CmuYSjSmdbD5Fy/spkPkbXMAMXU3pkI
 zStiwjaHujWm2dPfI8rGrSFYu1fRM8fQP7Ggkk5XXSQrdFXg26vMEglJ4
 0rOA4NfiBdbak5Kca/2QlcO0hyDKno6lyz1kyFfktdhAphA7QFVGCPt0a
 WFTbpFru26gPmqJRdnL23jG6MhoBz+Wq/s+iV017IJrGh6EFBLugXjejE w==;
X-CSE-ConnectionGUID: egz4+lMMS3mRrz9eGVYcTg==
X-CSE-MsgGUID: /wqPYiPORp+lwu53VRHsCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="71300038"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="71300038"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 11:58:57 -0700
X-CSE-ConnectionGUID: 3IXFT0j1Re+SnikM3dkcLw==
X-CSE-MsgGUID: Gfbk9YOsRS2sozhdK9w3MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="251862167"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 11:58:55 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v10 5/8] drm/i915/buf_trans: add vfunc for VS/PE-O
Date: Thu,  2 Jul 2026 20:58:36 +0200
Message-ID: <20260702185839.4042397-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260702185839.4042397-1-michal.grzelak@intel.com>
References: <20260702185839.4042397-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D1D26FC5D0

Choosing correct table for Vswing / Pre-emphasis Override is platform
specific. It also requires different checks that are already used for
choosing predefined tables.

Add new get_buf_trans_override() vfunc into intel_encoder returning
deparsed table from VBT#57. In next patches, set it inside already
present if-ladder from intel_ddi_buf_trans_init() instead of duplicating
it.

Note that get_buf_trans() cannot be overwritten since there are cases
when we need to rollback although VS/PE-O was requested, eg. DP is not
connected or feature is not yet implemented for the platform. Assume
that vfunc returns NULL on rollback and return predefined tables.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 4cd1e4d76c7a..f31283a0331b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1857,5 +1857,13 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
+	if (encoder->get_buf_trans_override) {
+		const struct intel_ddi_buf_trans *override;
+
+		override = encoder->get_buf_trans_override(encoder, crtc_state, n_entries);
+		if (override)
+			return intel_get_buf_trans(override, n_entries);
+	}
+
 	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c048da7d6fea..881226a1eda3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -289,6 +289,9 @@ struct intel_encoder {
 	 */
 	enum icl_port_dpll_id (*port_pll_type)(struct intel_encoder *encoder,
 					       const struct intel_crtc_state *crtc_state);
+	const struct intel_ddi_buf_trans *(*get_buf_trans_override)(struct intel_encoder *encoder,
+								    const struct intel_crtc_state *crtc_state,
+								    int *n_entries);
 	const struct intel_ddi_buf_trans *(*get_buf_trans)(struct intel_encoder *encoder,
 							   const struct intel_crtc_state *crtc_state,
 							   int *n_entries);
-- 
2.45.2

