Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BA82F9BE8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 10:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1853D6E192;
	Mon, 18 Jan 2021 09:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A016B6E192
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 09:31:44 +0000 (UTC)
IronPort-SDR: y45BxxKC9Qbcgoq55IwIuZbIkUMAhrj6krA+U7bh5v00+o+5M3Q2i2CSfRc3szDAnN5ICSm/5S
 fxiGDujdst8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="165870100"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="165870100"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 01:31:41 -0800
IronPort-SDR: vyXlUQBHhvXLYifssQvlFW1KwLkbU7X/ISK7KUgvyQqRznMvo6MapR2PWVjr1zou1nxBmyc+2r
 bhFUq9fElWmw==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="569136614"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.224.21])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 01:31:40 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 17:34:29 +0800
Message-Id: <20210118093429.27699-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] x86/gpu: add JSL stolen memory support
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
Cc: William Tseng <william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch has a dependency on:
"drm/i915/jsl: Split EHL/JSL platform info and PCI ids"

Signed-off-by: William Tseng <william.tseng@intel.com>
---
 arch/x86/kernel/early-quirks.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index a4b5af03dcc1..534cc3f78c6b 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -549,6 +549,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_CNL_IDS(&gen9_early_ops),
 	INTEL_ICL_11_IDS(&gen11_early_ops),
 	INTEL_EHL_IDS(&gen11_early_ops),
+	INTEL_JSL_IDS(&gen11_early_ops),
 	INTEL_TGL_12_IDS(&gen11_early_ops),
 	INTEL_RKL_IDS(&gen11_early_ops),
 };
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
