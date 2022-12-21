Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E4C653905
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 23:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C76C110E135;
	Wed, 21 Dec 2022 22:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B8C510E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 22:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671663109; x=1703199109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rCTr22nuyWJndMmdoi54IWZm2UT7pyV0gYhgvO1306M=;
 b=kEtYao6FNwuCKoWWqpUjuShEQwSBWekrxGihmkSNGygRXmeaT0cFgVDp
 K771YL+RaNtMjrwEH/o+p8VEyee8tKn9SIXTP8kuEduwRCrcq/t9/+vBU
 n2rAOQtn64X3DiXoxDOcibagJFXKOQ0eZmtzPlEOwX0zkjMFYRWrStk2a
 Hpjib/vzFAOE4QJZtEQ+jRa/LSBTwrUuYeBXPhHvHTOzrgYvcjf66WMEC
 jDhzsRn8ik9+EpiQ1VpPCPS5R9vpIkqLJNqG9QaXafD6j3EJWWICLtKBj
 dS/r8aePpxboczUNR7DgNyit+V2j2fZlM+x+seEgQU4w7dO0bW81WSZ2J Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="300328209"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="300328209"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 14:51:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="682183969"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="682183969"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2022 14:51:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 14:54:33 -0800
Message-Id: <20221221225439.2714575-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/7] mei: mei-me: resume device in prepare
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

From: Alexander Usyskin <alexander.usyskin@intel.com>

Async runtime resume is not possible while system is suspending.
The power management subsystem resumes device only in the
suspend phase, not in the prepare phase.
Force resume device in prepare to allow drivers on mei bus
to communicate in prepare callbacks.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/pci-me.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index 704cd0caa172..713c1acb931f 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -340,6 +340,12 @@ static void mei_me_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
+static int mei_me_pci_prepare(struct device *device)
+{
+	pm_runtime_resume(device);
+	return 0;
+}
+
 static int mei_me_pci_suspend(struct device *device)
 {
 	struct pci_dev *pdev = to_pci_dev(device);
@@ -396,6 +402,11 @@ static int mei_me_pci_resume(struct device *device)
 
 	return 0;
 }
+
+static void mei_me_pci_complete(struct device *device)
+{
+	pm_runtime_suspend(device);
+}
 #endif /* CONFIG_PM_SLEEP */
 
 #ifdef CONFIG_PM
@@ -499,6 +510,8 @@ static inline void mei_me_unset_pm_domain(struct mei_device *dev)
 }
 
 static const struct dev_pm_ops mei_me_pm_ops = {
+	.prepare = mei_me_pci_prepare,
+	.complete = mei_me_pci_complete,
 	SET_SYSTEM_SLEEP_PM_OPS(mei_me_pci_suspend,
 				mei_me_pci_resume)
 	SET_RUNTIME_PM_OPS(
-- 
2.34.1

