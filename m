Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF089B1D175
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 06:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257E410E03D;
	Thu,  7 Aug 2025 04:26:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUpn/7Cb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A278710E03D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 04:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754540817; x=1786076817;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3tzif2rL/1TXjNbdb3/N1Jo4CjkB8i0xJcuzZrv+Dj4=;
 b=UUpn/7Cb8b3cPKpaPbtwR9qtqZ1HUw9b15e4HlySr1k7OMxkOCLglqfU
 vHqGSsmZqJzgxXV85CnTRndwx7zCCYnnMlOzOdzvAdSev12Fzz2ejCbpQ
 TgB2fzjEs6hpaZa7swrzjgln+9pIuKxCc/WKq0HBW1EFIBBrxHH7YVT3B
 kXwrE08/2fLYkcHBLNEwdWrnVQ9nNqCAxiWZ7aQkia9jwkSh+WpYBk5sc
 FaPFUYvePU6Rg1CzPvXoc4+nYjQRpzSRV0EDn2IpPB2VAKDwcUCAcEvr2
 jk8cqFe4A198CsmXd8xPQt0g57kYfhTSQzuOK2sz4Y88DzNJo6O7MvEyc Q==;
X-CSE-ConnectionGUID: X/kKFs4GQCq7eLH/FOVDDA==
X-CSE-MsgGUID: Wndr6Mj0QOS5Bmm0ldqAew==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74448993"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="74448993"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 21:26:56 -0700
X-CSE-ConnectionGUID: uJsmJR9HT/6ks+PamqBf5A==
X-CSE-MsgGUID: KbFt4vGRSGWxR8N0pFAFfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="170330309"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.244])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 21:26:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/dsi: Fix overflow issue in pclk parsing
Date: Thu,  7 Aug 2025 07:26:35 +0300
Message-ID: <20250807042635.2491537-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Parsed divider p will overflow and is considered being valid in case
pll_ctl == 0.

Fix this by checking divider p before decreasing it. Also small improvement
is made by using fls() instead of custom loop.

v2: use fls() and check parsed divider

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index b52463fdec47..83afe1315e96 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -142,11 +142,9 @@ static int vlv_dsi_pclk(struct intel_encoder *encoder,
 	pll_div &= DSI_PLL_M1_DIV_MASK;
 	pll_div = pll_div >> DSI_PLL_M1_DIV_SHIFT;
 
-	while (pll_ctl) {
-		pll_ctl = pll_ctl >> 1;
-		p++;
-	}
-	p--;
+	p = fls(pll_ctl);
+	if (p)
+		p--;
 
 	if (!p) {
 		drm_err(display->drm, "wrong P1 divisor\n");
-- 
2.43.0

