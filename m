Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IF1lDuiQ5mlWyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:47:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C9A433CE5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2685B10EB49;
	Mon, 20 Apr 2026 20:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZkF6jCoo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DD710E18F;
 Mon, 20 Apr 2026 20:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776718050; x=1808254050;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=10NS7fD9VfJLl3D/1Qk0UsFN7Oc3WXIc7Xild9/Lkmw=;
 b=ZkF6jCoo5IP0wnm5U2/eJo/saZMNvklAQ8JywZR1lpOWyN/sMPjr3eDF
 IP02Wm7/ZedytBwvAcjSZJwnieCj8zAGzj7pleb+T/wYiuIJ6Hd2qsKas
 HTIWMCAA5er1N15u03koS1Ex3EhdeOin83vzHn7M1aHSlgLar53oDZsEB
 ZTeGba61ezWAZUyOMVC9JCWNJziHZqGEXcvDUlH1/LpfJQ2A01Z0t1o+b
 t84K3KLcIYMiF7zeeNOHN9pNVBvz2wkPx5+k4+/JLOolXJaHLMRstdcFn
 U19Xb1llCj/is/zssDbfRKhKGnx8FvroFn03NbRs7HyGiLRJfyp+SMZkA w==;
X-CSE-ConnectionGUID: 0roAoTuvQ86UOQUm8cuMRQ==
X-CSE-MsgGUID: vvL8PRBQQB+C06kWaiYa+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="100302149"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="100302149"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:47:30 -0700
X-CSE-ConnectionGUID: yxdxndQJRCCYs6azg1QxdA==
X-CSE-MsgGUID: FXm6Wx6gSLqapkGdZC9DpA==
X-ExtLoop1: 1
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.229])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:47:28 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH] drm/i915: remove unused DPLL_TEST register definitions
Date: Mon, 20 Apr 2026 23:46:47 +0300
Message-ID: <20260420204715.3906215-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 21C9A433CE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove the old DPLL_TEST register definitions from i915_reg.h.

They are no longer used anywhere in the driver.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5d99b99b0c57..68bd0b3a6f83 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -509,18 +509,6 @@
 #define   IVB_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 2)
 #define   IVB_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 3)
 
-#define DPLL_TEST	_MMIO(0x606c)
-#define   DPLLB_TEST_SDVO_DIV_1		(0 << 22)
-#define   DPLLB_TEST_SDVO_DIV_2		(1 << 22)
-#define   DPLLB_TEST_SDVO_DIV_4		(2 << 22)
-#define   DPLLB_TEST_SDVO_DIV_MASK	(3 << 22)
-#define   DPLLB_TEST_N_BYPASS		(1 << 19)
-#define   DPLLB_TEST_M_BYPASS		(1 << 18)
-#define   DPLLB_INPUT_BUFFER_ENABLE	(1 << 16)
-#define   DPLLA_TEST_N_BYPASS		(1 << 3)
-#define   DPLLA_TEST_M_BYPASS		(1 << 2)
-#define   DPLLA_INPUT_BUFFER_ENABLE	(1 << 0)
-
 #define D_STATE		_MMIO(0x6104)
 #define  DSTATE_GFX_RESET_I830			(1 << 6)
 #define  DSTATE_PLL_D3_OFF			(1 << 3)
-- 
2.53.0

