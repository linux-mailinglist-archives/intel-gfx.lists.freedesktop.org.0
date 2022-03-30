Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 814BB4ECE4F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 22:59:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A430910E98C;
	Wed, 30 Mar 2022 20:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0896F10E95F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 20:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648673927; x=1680209927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HE0SBSqPp8RU4jtIUbXuUmIJ6dbe7BZyYEKb1gaada4=;
 b=DNW2W4BBhDOy9CT/x4r5Pn7V4mZcagxJ2de14c1TFsbVL5kfMkBK7cBp
 axJ3gMj+qhHxw8nwb2ZqHoTp+jlg25GX/8Xu7QairpjoX0X2gNLsC6eSz
 +MzQ2HHs1pTOIKkhh9BQgmgqTnI81B04dTAB7kcVpYh5WkR6Cyv2ewEi7
 jWA06NLXCUYxMaiHBiiaiXsVXR5WbdNcw3P0tILiPGYJfSB3tJ/DEzx0a
 R4DFHA3m7igwSYbqzURYXk9ucGdRpzKGKbIsA/IsSZ6EcfCfut6Ay5wBs
 ksAzbi5CKyQOPFc9tfe9T5X6SSs53kOKTe80PMwoSs8kq5y/JrBOL+WS0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259829077"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259829077"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 13:58:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="565814564"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 13:58:45 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 13:53:31 -0700
Message-Id: <20220330205334.3016587-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220330205334.3016587-1-daniele.ceraolospurio@intel.com>
References: <20220330205334.3016587-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/6] mei: gsc: setup char driver alive in spite of
 firmware handshake failure
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

Setup char device in spite of firmware handshake failure.
In order to provide host access to the firmware status registers and other
information required for the manufacturing process.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/misc/mei/gsc-me.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 64b02adf3149d..58e39c00f1501 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -79,11 +79,12 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 	pm_runtime_set_active(device);
 	pm_runtime_enable(device);
 
-	if (mei_start(dev)) {
-		dev_err(device, "init hw failure.\n");
-		ret = -ENODEV;
-		goto irq_err;
-	}
+	/* Continue to char device setup in spite of firmware handshake failure.
+	 * In order to provide access to the firmware status registers to the user
+	 * space via sysfs.
+	 */
+	if (mei_start(dev))
+		dev_warn(device, "init hw failure.\n");
 
 	pm_runtime_set_autosuspend_delay(device, MEI_GSC_RPM_TIMEOUT);
 	pm_runtime_use_autosuspend(device);
@@ -97,7 +98,6 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 
 register_err:
 	mei_stop(dev);
-irq_err:
 	devm_free_irq(device, hw->irq, dev);
 
 err:
-- 
2.25.1

