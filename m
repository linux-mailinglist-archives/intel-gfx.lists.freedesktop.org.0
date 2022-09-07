Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C52C5B0967
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 17:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8605910E7C5;
	Wed,  7 Sep 2022 15:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D36210E7BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 15:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662566372; x=1694102372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2LoTcrDdIIjhQQzEoUzp6PWW1yQHSMcHmGudjZ75118=;
 b=IqjNFZ99dP951dGUlXNqlNVYKjNFbie9MnwyvLFnuUz8XiBW8S83RkJ4
 vg5f7ZuA2OIqOnUsK/MlBHaR0MsURh3rbCAGhGuyhaDLLx0jD+9bR0i4F
 FPNUPfm+t6+gy/fZfH9MH9crUQ7LoJqSl4l7Mb2vy6fjRM+1M+UVApull
 G1NuChHMNDxtLXD8oTedVn58vejoGonDRwGA6p7mL6K2Al4Lp9CoVQusQ
 2m/KKCaoQLS0E4ThPFqFCJH5uqvU4+6Fiic391D2h5Wszd3+7jXf7+6w8
 vv+Zy4pK9Nj9elfOWbgRsU39H86f9u8XXqabpfBaKPwGD+VBPIKY89Ouy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297701323"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="297701323"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="676247865"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:07 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Wed,  7 Sep 2022 18:58:04 +0300
Message-Id: <20220907155813.1427526-8-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 07/16] mei: gsc: wait for reset thread on stop
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

Wait for reset work to complete before initiating
stop reset flow sequence.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/init.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
index eb052005ca86..bc054baf496c 100644
--- a/drivers/misc/mei/init.c
+++ b/drivers/misc/mei/init.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2012-2019, Intel Corporation. All rights reserved.
+ * Copyright (c) 2012-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -320,6 +320,8 @@ void mei_stop(struct mei_device *dev)
 
 	mei_clear_interrupts(dev);
 	mei_synchronize_irq(dev);
+	/* to catch HW-initiated reset */
+	mei_cancel_work(dev);
 
 	mutex_lock(&dev->device_lock);
 
-- 
2.37.2

