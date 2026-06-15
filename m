Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rIskCp9AMGrKQQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:12:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EC568918B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:12:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GWJPZci6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83A310E5BC;
	Mon, 15 Jun 2026 18:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC3110E5AD;
 Mon, 15 Jun 2026 18:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781547162; x=1813083162;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3gWu2vDsQ1naJIKWR1uyALRmMQNIADWvFoP9ZODmf5w=;
 b=GWJPZci6wBBopQC9O8QX7QBym1lfF44m8GImkwOApHgfizU1PzHFrGNI
 Sw4ZavcdT63jcYlOyd3apB6esDaVQFkr+y7KFFDHBDlhTf2dANN8olYNm
 LigCSNKx15J20zLFHHTXqy/ud7lY383uThdcn8dpm6tQi/TCB+V3LrnmI
 qecp+pZ/Ht/3iEQZnuT2KYmFA1/6dESfLVSd4xhSBjh+jnGgv92jhJJ+y
 UfamQLll4vPjLWjFf3TIhGXKu+9EGA8zf1Yq+mpJyGJ/GY5VVa5TjjOOD
 jlqor8eTls6lk3ThkuXVBZg/aOnM50jd3FC6Quk+nY5yxoTa9QfvzUPWR g==;
X-CSE-ConnectionGUID: k7x8TBA0RMqy+OOAf/GYQw==
X-CSE-MsgGUID: iymZZqeFQFCjLSxQC6qUnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="104968130"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="104968130"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:12:42 -0700
X-CSE-ConnectionGUID: QDeGNBFXSPyqHr8Qt4xlDA==
X-CSE-MsgGUID: YPL4u3L2T4+7/u90BKRVXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="251833770"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP; 15 Jun 2026 11:12:40 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v8 1/7] drm/i915/bios: search for VBT #57 by default
Date: Mon, 15 Jun 2026 20:12:01 +0200
Message-ID: <20260615181207.1033389-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260615181207.1033389-1-michal.grzelak@intel.com>
References: <20260615181207.1033389-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9EC568918B

Start searching for Vswing / Preemphasis Override Block during VBT
parsing at init_bdb_blocks().

Check for failure since pre-ICL GOPs do not contain the block. Check
also if VBT version is appropriately up-to-date.

v6->v7
- parse VBT#57 before blocks dependent on child device list (Jani)
- remove debug message (Suraj)

v3->v4
- add Bspec (Suraj)

Bspec: 32063
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b6fe87c29aa7c..0c7385a3bb75a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -200,6 +200,8 @@ static const struct {
 	  .min_size = sizeof(struct bdb_mipi_sequence) },
 	{ .section_id = BDB_COMPRESSION_PARAMETERS,
 	  .min_size = sizeof(struct bdb_compression_parameters), },
+	{ .section_id = BDB_VSWING_PREEMPH,
+	  .min_size = sizeof(struct bdb_vswing_preemph), },
 	{ .section_id = BDB_GENERIC_DTD,
 	  .min_size = sizeof(struct bdb_generic_dtd), },
 };
@@ -2183,6 +2185,21 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_override(struct intel_display *display)
+{
+	const struct bdb_vswing_preemph *block;
+
+	if (display->vbt.version < 218)
+		return;
+
+	block = bdb_find_section(display, BDB_VSWING_PREEMPH);
+
+	/* pre-ICL GOPs don't have VBT #57 */
+	if (!block)
+		return;
+}
+
 static u8 translate_iboost(struct intel_display *display, u8 val)
 {
 	static const u8 mapping[] = { 1, 3, 7 }; /* See VBT spec */
@@ -3271,6 +3288,7 @@ void intel_bios_init(struct intel_display *display)
 	parse_general_features(display);
 	parse_general_definitions(display);
 	parse_driver_features(display);
+	parse_vswing_preemph_override(display);
 
 	/* Depends on child device list */
 	parse_compression_parameters(display);
-- 
2.45.2

