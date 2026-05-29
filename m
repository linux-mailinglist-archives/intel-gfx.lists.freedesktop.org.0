Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AQ+FRHpGWpazwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F9E607DA3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0E6112463;
	Fri, 29 May 2026 19:29:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNsJckPj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B22112462;
 Fri, 29 May 2026 19:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082957; x=1811618957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2XjeJpCdxmcyCDpQrGeL7iEhepmXiWE7qe9PB6V7umo=;
 b=cNsJckPjphSe4Vk9sgsgOtpypqnFLcNqCclLSLAZZ7SsDwyuaB/iB3ht
 goZSlVlNsrGLxWRlt8rxpO1+HQCPCS+fRxDMjVH2lENw806ovRsrDbuBg
 lHNYsaMdyldrgSkm2VJdQM8g3B3Aw7wWBe5X9HmpUypfuhABV7UHzTN/e
 gGRb/Jkn1odrW9X7dIKJ61gVm+MqU9P+vcd47nBfdBEwmZiPzt0LtI0dL
 6hXWh3WQKsGHXWIjpwZuGJhDCbx+FN+GR+SdtCZjV0aO45gdi7YkzvOyo
 twth4DOqXnsW8PuK7J9tsTqSSHJFa4h+kg7EcO/XR0idpQV2TxOz3ZoQY g==;
X-CSE-ConnectionGUID: uN17pK4qTpCyH2sEkxXGgg==
X-CSE-MsgGUID: UVycl59IQjW0vokYCMfFzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="103611793"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="103611793"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:29:17 -0700
X-CSE-ConnectionGUID: uwfPLNIURWGyZ9Q/b5bmWA==
X-CSE-MsgGUID: jFEExAIgQKy94gT7ax4RXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240393477"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 29 May 2026 12:29:16 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 02/10] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Date: Fri, 29 May 2026 21:28:51 +0200
Message-ID: <20260529192859.4172376-3-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260529192859.4172376-1-michal.grzelak@intel.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 06F9E607DA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Store tables, number of tables, number of rows and number of columns in
intel_vbt_data when search for the VBT #57 has succeeded.

Display version determines number of rows present in each table. pre-MTL
platforms should have 10 rows while MTL+ should have 16 rows.

v3->v4
- remove unnecessary init of VS/PE-O metadata (Suraj)
- add helper for computing number of rows (Suraj)
- fix num_rows's type (Jani, Suraj)
- declare num_rows (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 10 +++++++++-
 drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 420b09b4d01e..12275738299f 100644
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
@@ -2199,7 +2204,10 @@ parse_vswing_preemph_override(struct intel_display *display)
 	if (!block)
 		return;
 
-	drm_dbg_kms(display->drm, "valid VS/PE-O request but not yet supported\n");
+	display->vbt.tables = block->tables;
+	display->vbt.num_tables = block->num_tables;
+	display->vbt.num_columns = block->num_columns;
+	display->vbt.num_rows = vswing_preemph_num_rows(display);
 }
 
 static u8 translate_iboost(struct intel_display *display, u8 val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 09ce25a6d4b1..c0530a54abb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -242,6 +242,11 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
+	const u32 *tables;
+	int num_tables;
+	int num_columns;
+	int num_rows;
+
 	struct sdvo_device_mapping {
 		u8 initialized;
 		u8 dvo_port;
-- 
2.45.2

