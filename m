Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cJ0BG0AMH2queQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 19:00:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B03D0630731
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 19:00:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WnnHFJYu;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442C410F258;
	Tue,  2 Jun 2026 17:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793B610E309;
 Tue,  2 Jun 2026 17:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780419644; x=1811955644;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h/QUOIOAolo/OLGR+ywMrT2nOPCdar9t8G4NxN4kTVA=;
 b=WnnHFJYug3NbTkVvbY1/DPqXfv0njMf/gfusMMmRDDtzD7UhEWb3BjSS
 KW7tuBaeIPHnNVPACGyYVxnOvNS17/Qv9Wj+o+PWe7Kg9mIFeNI5dZVpt
 EJzws8YRx2sJR/hK8DBobo0ISzXKrNpBnp0aVytec99sT1CQRtf1/TMc/
 nKQksv3tT9wGx8exzgsho/emAl0aGiH+ttIdaieAo9TgnKe1+JzPb9eOT
 bMxXGwRPHJfJG6eEgZlgY2X5EcoXaHaH+G0pgEz6fOf3nxrO4i/vZABkW
 srLFSMwsc/4apqgZaJuwKA9MYVEhFWZaWxMxNK7+zlg6eBNNBta4W5+oV Q==;
X-CSE-ConnectionGUID: 4NWIKvqiSTSQyUw4qbriEg==
X-CSE-MsgGUID: UMgz0xgmQEWSadIGsApuWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="68755464"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="68755464"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:00:44 -0700
X-CSE-ConnectionGUID: royxsB81TO6oypllMfq6VA==
X-CSE-MsgGUID: n6PGXBXoTjK7WHFX+dE64Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="239795596"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 02 Jun 2026 10:00:42 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v5 1/8] drm/i915/bios: search for VBT #57 by default
Date: Tue,  2 Jun 2026 19:00:24 +0200
Message-ID: <20260602170031.1163205-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260602170031.1163205-1-michal.grzelak@intel.com>
References: <20260602170031.1163205-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B03D0630731

Start searching for Vswing / Preemphasis Override Block during VBT
parsing at init_bdb_blocks().

Check for failure since pre-ICL GOPs do not contain the block. Check
also if VBT version is appropriately up-to-date.

Issue a debug message when port requests to override VS/PE and parsing
VBT #57 for the platform has not yet been implemented.

v3->v4
- add Bspec (Suraj)

Bspec: 32063
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b6fe87c29aa7c..420b09b4d01ef 100644
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
@@ -2183,6 +2185,23 @@ parse_compression_parameters(struct intel_display *display)
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
+
+	drm_dbg_kms(display->drm, "valid VS/PE-O request but not yet supported\n");
+}
+
 static u8 translate_iboost(struct intel_display *display, u8 val)
 {
 	static const u8 mapping[] = { 1, 3, 7 }; /* See VBT spec */
@@ -3274,6 +3293,7 @@ void intel_bios_init(struct intel_display *display)
 
 	/* Depends on child device list */
 	parse_compression_parameters(display);
+	parse_vswing_preemph_override(display);
 
 out:
 	if (!vbt) {
-- 
2.45.2

