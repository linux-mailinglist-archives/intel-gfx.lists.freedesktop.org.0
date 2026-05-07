Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFxjGI3r+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:31:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BA14E1F66
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CF510EF35;
	Thu,  7 May 2026 01:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pa+A6WPl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96EA10EF2E;
 Thu,  7 May 2026 01:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117514; x=1809653514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dWBWpeheMzi8qjvJWPwpHC/nWQeYXU3KPA43GRPH/Fo=;
 b=Pa+A6WPlQXuQfkkM3kUGh9VGioyBN9vp1CmlDNOEiu82HsjJVrzZKb/r
 1AT/qj5trNsbO05N2pCrdkju484cwS1aZXb2eXZFIgIaqmLucXEMU+wM8
 MMD4ZYxW3ogZSngHClQIDYM1+Pmv7X3mccr5kOL9l/5eCGp/e2lztAV52
 cXvRyKG7ZxgBbDcUu7V3C/Rhs3xmnHWX211hWDJU8vd2BcZy+5LrgE2pd
 GYMEo249ncRcp60OBswtMBv9pwLmv/PA4upZ/zg3v6AoJ+A/EloCrSsec
 +OmphQVB2wJ6RA/mZea2ma+nXgWHp1ObwNZM8XZLqRiDCguMdRKEf77Q7 A==;
X-CSE-ConnectionGUID: fTOfti0CSb+chY0b72pE4Q==
X-CSE-MsgGUID: z5omnc08SqmRrxfB9OXBvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089019"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089019"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:31:54 -0700
X-CSE-ConnectionGUID: MZ0HeEivTESMlizqwa6iGA==
X-CSE-MsgGUID: U1uJ/he+QQyw3TFqOiA1LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692740"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:31:54 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 04/31] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Date: Thu,  7 May 2026 03:31:10 +0200
Message-ID: <20260507013137.527510-5-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 37BA14E1F66
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Store number of rows and number of tables in intel_vbt_data when search
for the VBT #57 succeeded.

Display version determines number of rows present in each table. pre-MTL
platforms should have 10 rows while MTL+ should have 16 rows.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_core.h | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3f9e4d31c7375..d64668c1022a7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2200,6 +2200,9 @@ parse_vswing_preemph_override(struct intel_display *display)
 		return;
 
 	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
+
+	display->vbt.num_tables = block->num_tables;
+	display->vbt.num_rows = DISPLAY_VER(display) >= 14 ? 16 : 10;
 }
 
 static u8 translate_iboost(struct intel_display *display, u8 val)
@@ -2997,6 +3000,10 @@ init_vbt_defaults(struct intel_display *display)
 							      !HAS_PCH_SPLIT(display));
 	drm_dbg_kms(display->drm, "Set default to SSC at %d kHz\n",
 		    display->vbt.lvds_ssc_freq);
+
+	/* Vswing / Preemphasis Override */
+	display->vbt.num_tables = 0;
+	display->vbt.num_rows = 0;
 }
 
 /* Common defaults which may be overridden by VBT. */
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 76745ce6a716e..36ea4873deeb0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -242,6 +242,9 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
+	int num_tables;
+	int num_rows;
+
 	struct sdvo_device_mapping {
 		u8 initialized;
 		u8 dvo_port;
-- 
2.45.2

