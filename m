Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bUrcD4cOP2obOgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEFB6D08DE
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=b5zWQgyN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7DC10E407;
	Fri, 26 Jun 2026 23:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3F010E407;
 Fri, 26 Jun 2026 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782517380; x=1814053380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I8rs60DsBcR37fJbgHh9PfUQXc3tqhDDIpWzeWAVvYU=;
 b=b5zWQgyNKOs4zJXe02bL+LjWwJ2G5Rpek4P+BURa5lH3G0qctUg1zHqz
 1SlLGnPIBesz6MApNl9LB5KIAnthvhO/aur2GLNZKr7k4W08DrXQ0SzVQ
 p5qnMwvw5SDt6e2tY53M2aWOQBVzhkd2NKjp8CR5AATegzodHeogbVKTO
 Jf8Zi85UAPl0a1IB/J8WEFckGKdfzDv/G3f52bq3HkTPdR6J4P6TVnlF3
 fazojjmzpsrwhths8Yjl2dIGiI1viVjhx30OfZvJhaoTTH9obH5zUObKo
 qZ7Tk0CCb6SEnmyZhmAZATHKiyyZdyODDnMX5LvgrXjHtvR6l7p6t4MUi w==;
X-CSE-ConnectionGUID: +NQBrraGSXOvtx3dc3X0gg==
X-CSE-MsgGUID: tLPdxy8HTby6sQ9K+X6PFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="85861085"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="85861085"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 16:43:00 -0700
X-CSE-ConnectionGUID: 3mamcdI1TuqdY/VNEz5fCw==
X-CSE-MsgGUID: WnVFdC+xRBWDoCP/9MaaDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="248073733"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2026 16:42:58 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v9 2/8] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Date: Sat, 27 Jun 2026 01:42:40 +0200
Message-ID: <20260626234246.2446451-3-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260626234246.2446451-1-michal.grzelak@intel.com>
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: DDEFB6D08DE

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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v7
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_core.h |  7 +++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7728e1ffc9044..31f401bcb82ef 100644
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
index 17f7d3abdb9c5..82754dceb3b84 100644
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

