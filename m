Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28508B29AA1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 09:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EBF10E3D2;
	Mon, 18 Aug 2025 07:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PlfuQO8h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18B610E3D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Aug 2025 07:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755501380; x=1787037380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mU9u164Hay8IO60nwQdxOfa6gouoM5XLXHb8+BXlJmU=;
 b=PlfuQO8hEHrRHD7nmPlHFaF1PdOa5yOPguRC98inwq3k3UhriQ1dUx+5
 PtlJkiuKbz049K6+bydQQtmtNq3ntGQtrPxAMQ1ttZTXGEbN+dLGchq4V
 cTjvj3h8hS1AyvMVFTnF7j23kxP8KMIvq/eK1x1LqxDZcwE3P7K7wB3tE
 N5UdcdoyCr1TxZDuCyxQq12d639TxExi2jLLJ0CnazLmbsvFVB/1XWA3M
 1oFTe6sHVs9KPmCviIELYuTu1yJucdEavtL0Pwf7TbMX3Ntq38mPCP55U
 tOJpdZ+C9bUcz47/0uQZY6wabmzM5onFAw5mb9pnRMxwhJKifeivfg6gK A==;
X-CSE-ConnectionGUID: WaSwoqOUTvuR4jygfWSMVA==
X-CSE-MsgGUID: ZlkPrLVeRqW1wkJh2s5UGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="67984415"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="67984415"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:16:20 -0700
X-CSE-ConnectionGUID: 92orxTYRQ46TuuOpqHfPHw==
X-CSE-MsgGUID: Sh7Jhd2tQn2xWBBBw4BxgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167117256"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:16:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, kernel test robot <lkp@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH] drm/i915/switcheroo: check for NULL before dereferencing
Date: Mon, 18 Aug 2025 10:16:05 +0300
Message-ID: <20250818071605.2541523-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

Both i915_switcheroo_set_state() and i915_switcheroo_can_switch() check
for i915 == NULL. Commit d2e184f8e16a ("drm/i915/switcheroo: pass
display to HAS_DISPLAY()") started dereferencing it before the NULL
check. Fix it.

Fixes: d2e184f8e16a ("drm/i915/switcheroo: pass display to HAS_DISPLAY()")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202508160035.hmzuKiww-lkp@intel.com/
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index 231d27497706..3a95a55b2e87 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -15,7 +15,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 				      enum vga_switcheroo_state state)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
-	struct intel_display *display = i915->display;
+	struct intel_display *display = i915 ? i915->display : NULL;
 	pm_message_t pmm = { .event = PM_EVENT_SUSPEND };
 
 	if (!i915) {
@@ -45,7 +45,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
-	struct intel_display *display = i915->display;
+	struct intel_display *display = i915 ? i915->display : NULL;
 
 	/*
 	 * FIXME: open_count is protected by drm_global_mutex but that would lead to
-- 
2.47.2

