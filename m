Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9oTwJ55AMGrJQQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:12:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2B5689186
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:12:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YLa1NHyD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A162410E5BB;
	Mon, 15 Jun 2026 18:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF25F10E5BB;
 Mon, 15 Jun 2026 18:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781547164; x=1813083164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OozDZrehhkc+9AMqBkyfjOPGigZXZUJXqc8Emz8tULk=;
 b=YLa1NHyD0aFomJ5rU5ANDFKouIgVE48Y88iDfdQ9sUMZ8wYbXth68Bl2
 FnnZ9hnVLWpy07XrtTfLpWsOsw7fTD5VinqIL/d6yLL3kZ3ty6kbZTzF+
 T9L7f4L9pCvjDFtRwtgd7AbE1oOGpVNvDlJenaPWvQyCHdU/sBTYxny9N
 rmejNQ+BtaF8Gh3aupBeF2bu4wWpjgGfYBFM7igo2iELsuyThY7teFizZ
 hfd/u3J4w1WJv4BTV3YkxBXxjJzgHUC6U0IU5n/ETmlbTiB630x3gVdnw
 Yt85mE0EWg3iP0+eVvjJ1O3Gsy8arawiR7wbhBawIzKo3x4iacg6NiPtg A==;
X-CSE-ConnectionGUID: meHce8yoRyamx1iUrASPvQ==
X-CSE-MsgGUID: 7mKIcZ7/SmC4D2GSfsYXoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="104968138"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="104968138"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:12:43 -0700
X-CSE-ConnectionGUID: KCylUwO/QGq+BvXHU46gpg==
X-CSE-MsgGUID: aYegJmYfQQu2pSOcFod9Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="251833776"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP; 15 Jun 2026 11:12:42 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v8 2/7] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Date: Mon, 15 Jun 2026 20:12:02 +0200
Message-ID: <20260615181207.1033389-3-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 2D2B5689186

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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_core.h |  7 +++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0c7385a3bb75a..6c22853b535fc 100644
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
index 3c17cac1eb976..de5e54135ddc0 100644
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

