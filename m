Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F625B14DDF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 14:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2D610E61D;
	Tue, 29 Jul 2025 12:47:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFT3vED+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E785710E1F8;
 Tue, 29 Jul 2025 12:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753793223; x=1785329223;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pzNCH1Yl4NAExjgQ0foyd4YYqh6G0veMwrSfSVL8x68=;
 b=VFT3vED+RETE2IRBM8NnU3dyhfx1qTjiv0ITgA2PyQb0jrln1OlN98UE
 jeJW3AjDNEevThvkvLP+IXFU5oK46nW/MDBVr9/YNkvrmzqjsG3Ihq0Jc
 MGzWJIiJ6wvtAScp1h5ARHSOpzwgwc68zCguBPtXgRXB0zxsugygurO6H
 8/caosYqrOOgpTBS5APDqIINAEhEYWf3ZqbR0rPdlstI6/nG9ReqtiGYA
 hq7b+JdqIctkn21zU15Jm3p8CY5BtelnH2mlOwVzZWkvuzbhdiCvg2vmI
 NY7X+YKz/9QPYHAfg8we26iY4YXKNjIJTyKsyIO3FojJvt7nqHoumqlic g==;
X-CSE-ConnectionGUID: Zcy37zV9RWqT2vnEJlR84Q==
X-CSE-MsgGUID: 3Bn3lfdxSN67yh0r1yfyGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="55998671"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="55998671"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:47:03 -0700
X-CSE-ConnectionGUID: AD7Ef82GQYuMSA3Heg2cng==
X-CSE-MsgGUID: sP8e0FOBR0a6IMi5VdzCOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="186348396"
Received: from johunt-mobl9.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.245.244.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:47:01 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hoganger@intel.com,
 jani.saarinen@intel.com, kunal1.joshi@intel.com
Subject: [PATCH] drm/i915/fbc: fix the implementation of wa_18038517565
Date: Tue, 29 Jul 2025 15:46:48 +0300
Message-ID: <20250729124648.288497-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

As per the wa_18038517565, we need to disable FBC compressor
clock gating before enabling FBC and enable after disabling
FBC. Placing the enabling of clock gating in the fbc deactivate
function can make the above wa logic go wrong in case of
frontbuffer rendering FBC mechanism. FBC deactivate can get
called during fb invalidate and then the corresponding FBC
activate can get called without properly disabling the clock
gating and can result in compression stalled. So move the
enable clock gating at the end of one FBC session after FBC
is completely disabled for a pipe.

Bspec: 74212, 72197, 69741, 65555
Fixes: 010363c46189 ("drm/i915/display: implement wa_18038517565")
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e2e03af520b2..f82d392f1e22 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -552,10 +552,6 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
 		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
-
-		/* wa_18038517565 Enable DPFC clock gating after FBC disable */
-		if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
-			fbc_compressor_clkgate_disable_wa(fbc, false);
 	}
 }
 
@@ -1710,6 +1706,10 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 	__intel_fbc_cleanup_cfb(fbc);
 
+	/* wa_18038517565 Enable DPFC clock gating after FBC disable */
+	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
+		fbc_compressor_clkgate_disable_wa(fbc, false);
+
 	fbc->state.plane = NULL;
 	fbc->flip_pending = false;
 	fbc->busy_bits = 0;
-- 
2.43.0

