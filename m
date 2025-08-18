Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1381B29BD3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 10:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7067B10E405;
	Mon, 18 Aug 2025 08:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kHmStQB8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE56010E41A;
 Mon, 18 Aug 2025 08:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755504975; x=1787040975;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WKCPDXCho5aflXkFBASrM5EyCDKRoITqzqB3yk5WvU8=;
 b=kHmStQB8ucEffUsqyT7Y8Wku2vcs+BeWpIzLkapAx+YP0XRyF1h+wF/3
 cxmOeM7/uX0oRoNCUXLfxrKDaN3yIxkvkC40Q9i328Hh0lj6ht2olIWZn
 1LKrPVMWFJyk1JTybk/etSCCOo0GD6atBW5PRVbFtYkuRo/wDv8zi9GXc
 99fbTA72H26tslwmAXsJCwAzuy9yb+eKoZcTWAEEFXkMbZh0WHgLgJJF+
 BXJeATwz7agQ49Ytxh6XYYlxFnrAhovjY9PMd5jTYOI0dLtpbXzu5o6d8
 fPId5ZkmoUf0jX+ZB3eWCHBgBHydYEtkm2wCiuZDK/WxodDsIn/1wCQTI A==;
X-CSE-ConnectionGUID: INn4atGYSxaCbCULLV7ZNw==
X-CSE-MsgGUID: fdkGuY8LS2yxkN7WyII4Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="68434705"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68434705"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 01:16:14 -0700
X-CSE-ConnectionGUID: YEsdwrHeStKQNrfSHUH0Ww==
X-CSE-MsgGUID: fVFI4v+GTgCLWLhJAlWHJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167434161"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 18 Aug 2025 01:16:13 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [core-for-CI] Revert "block: restore default wbt enablement"
Date: Mon, 18 Aug 2025 13:28:38 +0530
Message-Id: <20250818075838.444487-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

This reverts commit 8f5845e0743bf3512b71b3cb8afe06c192d6acc4.

This commit seems to cause regression in CI [1]. Revert it.

[1] https://intel-gfx-ci.01.org/tree/intel-xe/index.html?

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 block/blk-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index 4a7f1a349998..c5cf79a20842 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -902,9 +902,9 @@ int blk_register_queue(struct gendisk *disk)
 
 	if (queue_is_mq(q))
 		elevator_set_default(q);
+	wbt_enable_default(disk);
 
 	blk_queue_flag_set(QUEUE_FLAG_REGISTERED, q);
-	wbt_enable_default(disk);
 
 	/* Now everything is ready and send out KOBJ_ADD uevent */
 	kobject_uevent(&disk->queue_kobj, KOBJ_ADD);
-- 
2.25.1

