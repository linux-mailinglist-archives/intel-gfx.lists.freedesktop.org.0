Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9DRTKd8XJ2okrgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528FD65A0D1
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MYgccoCu;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A313110F911;
	Mon,  8 Jun 2026 19:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D5B10F90E;
 Mon,  8 Jun 2026 19:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780946908; x=1812482908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U/YqavTWD8iBR5ZssVefdf+7yYpCpMtpBZaSb0mNVj8=;
 b=MYgccoCuMKu3WpqKAqXnvCLZRq0at6t6y9em2GHqfqVT3q1RN5hSvUb0
 fQe9W6cdmzbF1tZ55YWFmtXevN2MaNKvhM8+SpbVZWxrRYGgXwBwlpCO5
 AXOxFewqHLrda3B5PpO3MVUwLNHV2iswI+Md1MgUt2em2/HjmEbSg9UH5
 9eyvz7r7XZ/24Nj6eOYFjFCHVdu7ygTjb4Oo/57B87e2H18jJk1Qvj1bu
 BGuxFpC0h5GO2eH6iwSmkjPP38a15ynLHt0XNH9fS9b2neKOv890gdGMY
 60hg7Ow0xPli5n11xvJ8Ffe8lPQ5u2YqekEX9QgrCOrxJGMuYSytWTxHC g==;
X-CSE-ConnectionGUID: Be1Ekji4QAWp2H2TzuM/uQ==
X-CSE-MsgGUID: dSBNKAO1SQ2/7xpybJsnUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85324014"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85324014"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 12:28:28 -0700
X-CSE-ConnectionGUID: EavEmVLrQCKsSe/uc1Gnig==
X-CSE-MsgGUID: TTWA3gRmT0yA1uz+ceQYqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244513575"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 08 Jun 2026 12:28:26 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 2/8] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Date: Mon,  8 Jun 2026 21:28:15 +0200
Message-ID: <20260608192821.3414590-3-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260608192821.3414590-1-michal.grzelak@intel.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 528FD65A0D1

Store tables, number of tables, number of rows and number of columns in
intel_vbt_data when search for the VBT #57 has succeeded. Structurize
all VS/PE-O relevant metadata inside anonymous struct named as vspeo.

Presence of C20 or newer PHY causes each table to contain 16 rows. Each
table contains 10 rows in case C20 PHY is absent. Use display version to
determine number of rows since there is no helper in intel_bios.c to
check presence of any C20+ PHY. pre-MTL platforms should have 10 rows
while MTL+ should have 16 rows.

v5->v6
- add Bspec (Suraj)

v3->v4
- remove unnecessary init of VS/PE-O metadata (Suraj)
- add helper for computing number of rows (Suraj)
- fix num_rows's type (Jani, Suraj)
- declare num_rows (Suraj)

Bspec: 68963
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_core.h |  7 +++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0c7385a3bb75..6c22853b535f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2185,6 +2185,11 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static int vswing_preemph_num_rows(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 14 ? 16 : 10;
+}
+
 static void
 parse_vswing_preemph_override(struct intel_display *display)
 {
@@ -2198,6 +2203,11 @@ parse_vswing_preemph_override(struct intel_display *display)
 	/* pre-ICL GOPs don't have VBT #57 */
 	if (!block)
 		return;
+
+	display->vbt.vspeo.tables = block->tables;
+	display->vbt.vspeo.num_tables = block->num_tables;
+	display->vbt.vspeo.num_columns = block->num_columns;
+	display->vbt.vspeo.num_rows = vswing_preemph_num_rows(display);
 }
 
 static u8 translate_iboost(struct intel_display *display, u8 val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 09ce25a6d4b1..061bf479458f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -242,6 +242,13 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
+	struct {
+		const u32 *tables;
+		int num_tables;
+		int num_columns;
+		int num_rows;
+	} vspeo;
+
 	struct sdvo_device_mapping {
 		u8 initialized;
 		u8 dvo_port;
-- 
2.45.2

