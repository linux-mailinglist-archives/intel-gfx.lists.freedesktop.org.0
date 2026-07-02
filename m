Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lSBfCO+0RmqxbwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:58:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E376FC5BF
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:58:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NYhPQXzf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1407210E1A6;
	Thu,  2 Jul 2026 18:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6BDD10E1A6;
 Thu,  2 Jul 2026 18:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783018730; x=1814554730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jsmLK24JHNdheV0x3lb6EMhlZymqypOboxrSYxqZAj4=;
 b=NYhPQXzfVA50o9DTSSIy6ok7LW76MXORvX4OP0yQ8wHeGwXxz8mCW16M
 uzZOmQZzapEOluSZL5NZq7+/WWmGXRPWoBbKzLQ553KAqHmRUhWghGFsd
 PsDUmq7amIcM/2+rxqcR/yPBBVoA4U65jLIuag21CrFTC/Ipn2NuiWnjV
 TI0QCfSBrilxp9LfBz5LguEr7gq+pwl3Y4vc+K6Mjy9CulDLELzWw8LC8
 GofVUksGb5UAJwO8w+eCazVSMYfO+AZoyV1QxOoZTuicuxZ0L0YQhzqWI
 /l3xorcUe1yk6zHD2WEWCR2YD+LcMcrYgnygUJ5XA/9U4V1BCRZ01hs0N A==;
X-CSE-ConnectionGUID: LJpqvviqSBW5hKRUexGDIA==
X-CSE-MsgGUID: wFBxbT0ASoOhALYzLHzGlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="71300028"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="71300028"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 11:58:50 -0700
X-CSE-ConnectionGUID: r7VKkQ1pSrKj4LmYHqNn5A==
X-CSE-MsgGUID: s/2AExfySl2AEa+Pc/gEbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="251862153"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 11:58:48 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v10 1/8] drm/i915/bios: search for VBT #57 by default
Date: Thu,  2 Jul 2026 20:58:32 +0200
Message-ID: <20260702185839.4042397-2-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 98E376FC5BF

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
index 97cbae2e547e..ece4df4a9d62 100644
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
@@ -2203,6 +2205,21 @@ parse_compression_parameters(struct intel_display *display)
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
@@ -3291,6 +3308,7 @@ void intel_bios_init(struct intel_display *display)
 	parse_general_features(display);
 	parse_general_definitions(display);
 	parse_driver_features(display);
+	parse_vswing_preemph_override(display);
 
 	/* Depends on child device list */
 	parse_compression_parameters(display);
-- 
2.45.2

