Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2E01C1B27
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 415FF6ECEB;
	Fri,  1 May 2020 17:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 657AF6ECEC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:00 +0000 (UTC)
IronPort-SDR: lQvQB+DEjL6XMSurJTwWHftRvUkfYvJOgrroFiwXWsKNlcfwGXEw+CJoBavDji0FzQrnS998Sq
 HJ8JkYjLTsTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:07:59 -0700
IronPort-SDR: Z+h2Yh4VO7GotATcZ4u41IQtGv4BIf+C2j1GkmuV2soqdOuWlOXnMc1AkSgPcD5lHhC9cJKy0L
 23K+snah4Rcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062104"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:27 -0700
Message-Id: <20200501170748.358135-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/23] x86/gpu: add RKL stolen memory support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RKL re-uses the same stolen memory registers as TGL and ICL.

Bspec: 52055
Bspec: 49589
Bspec: 49636
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 arch/x86/kernel/early-quirks.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 2f9ec14be3b1..a4b5af03dcc1 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -550,6 +550,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_ICL_11_IDS(&gen11_early_ops),
 	INTEL_EHL_IDS(&gen11_early_ops),
 	INTEL_TGL_12_IDS(&gen11_early_ops),
+	INTEL_RKL_IDS(&gen11_early_ops),
 };
 
 struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
