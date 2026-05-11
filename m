Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBgAEYvLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0017750DC27
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8344F10E732;
	Mon, 11 May 2026 12:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OsGIUPUL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C3210E739;
 Mon, 11 May 2026 12:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502536; x=1810038536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZZZcZxrOB0V0LatZO3KfAJhOTjGbfoiJ/fyYXdHiPFc=;
 b=OsGIUPULLBNik2GENmioYe6s8S9TlfDd0pICXZ7mNBdb0d8M3ZLhBZfr
 IVwBRUqDcAyY2lqyXxOYTQN4KsChM7x7LLedw3cnVkM8opU9kLcHm/rUC
 +km2AvJorkocMsephHETjBLdI6VzPtBigf4zXmPR//o7VaCncpsS0pR1y
 TT5ABgT/kkqF609VaPsHfywvyWQibNxNMoGjI/g/S8M1w1nNVzQmTGjY1
 U45RMRhq3TypuEDiL42pGitJUl8ZLlRy+VagvZLIazklWC+/by8IRcSD4
 E6EIEGXWhHGuHU+X3pbKh1ojeMTfs4VIItCsAoOS2yys1vuTlrDH5O2+q Q==;
X-CSE-ConnectionGUID: DikSxeoYQQmS22/IDLEcrQ==
X-CSE-MsgGUID: fAyQD8MTRVedWp+hABOs2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762802"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762802"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:55 -0700
X-CSE-ConnectionGUID: 7ATI+pFdREyGI5rpLkG83w==
X-CSE-MsgGUID: pnwNZjXhRG2M/XwXMUypdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801452"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:54 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 08/11] drm/i915/bw: update the tile-y dependency based on
 the display version
Date: Mon, 11 May 2026 15:28:13 +0300
Message-ID: <20260511122816.1235478-9-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: 0017750DC27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Consolidate the tile-y dependency into a separate function and
use it to determine whether tile-y need to take into account for
the bw calculations. Especially for post MTL cases, as per the
bspec, no need to take the tile_y into account for the
de interleave values.

Bspec: 64631, 68859
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 177c3fd8f74a..858da1710a61 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -483,12 +483,21 @@ static const struct intel_sa_info xe3lpd_3002_sa_info = {
 	.derating = 10,
 };
 
+static bool is_tile_y_factored(struct intel_display *display)
+{
+	/* TGL supports Y-tile for LPDDR4/5, but not for DDR4 */
+	if (DISPLAY_VER(display) >= 14)
+		return false;
+
+	return true;
+}
+
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
-	bool is_y_tile = true; /* assume y tile may be used */
+	bool is_y_tile = is_tile_y_factored(display);
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
@@ -559,7 +568,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 			   const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
-	bool is_y_tile = true; /* assume y tile may be used */
+	bool is_y_tile = is_tile_y_factored(display);
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
-- 
2.43.0

