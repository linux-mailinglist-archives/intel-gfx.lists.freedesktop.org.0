Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E518550AE9
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jun 2022 15:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60CE910E704;
	Sun, 19 Jun 2022 13:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C711810E6FD
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Jun 2022 13:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655645892; x=1687181892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FqQD8V1tZDNnF7Zs/RsGtMzs5YtWuA1/y2GnU/ZA+R8=;
 b=IvOXO3ARQTLygdlgSYu9VlwIOEkt8HR3fZ/lJgOjmoX/cV0FKBSGIRls
 YjN0nJ0rMdUc7oqumVh9COIJ1vJeM9A4SW1vJpq0Ek1gDD5VCPuRPtnUM
 l4XapCbMkJMHxJep+Mc3XOglpHNCg5r8fG9D0y4AXLeqoGlIKLleBMDvF
 uPNlTRIln7TjjHWaTGFcN+YxIr3BJWlMJFbupvAx+/wykRTJ2sniDNnrR
 Tbi4PVPZeOU7Q4T7NZbGy87wsAN6tOISj6qQMPVS/b614xbSd5iiZlP6C
 9M/0i4DbjG2nLrNA0n+cReLhUdIfeeve8xXiecxzKq6CHBp35VLQSoqJW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259552695"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259552695"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 06:38:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676158564"
Received: from sannilnx.jer.intel.com ([10.12.26.157])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 06:38:05 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Sun, 19 Jun 2022 16:37:17 +0300
Message-Id: <20220619133721.523546-11-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220619133721.523546-1-alexander.usyskin@intel.com>
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/14] mei: mkhi: add memory ready command
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
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Add GSC memory ready command.
The command indicates to the firmware that
extend operation memory was setup and
the firmware may enter PXP mode.

CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/mkhi.h | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/misc/mei/mkhi.h b/drivers/misc/mei/mkhi.h
index 27a9b476904e..ea9fe487cb0f 100644
--- a/drivers/misc/mei/mkhi.h
+++ b/drivers/misc/mei/mkhi.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2003-2021, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -18,6 +18,13 @@
 
 #define MCHI_GROUP_ID  0xA
 
+#define MKHI_GROUP_ID_GFX              0x30
+#define MKHI_GFX_RESET_WARN_CMD_REQ    0x0
+#define MKHI_GFX_MEMORY_READY_CMD_REQ  0x1
+
+/* Allow transition to PXP mode without approval */
+#define MKHI_GFX_MEM_READY_PXP_ALLOWED  0x1
+
 struct mkhi_rule_id {
 	__le16 rule_type;
 	u8 feature_id;
@@ -42,4 +49,9 @@ struct mkhi_msg {
 	u8 data[];
 } __packed;
 
+struct mkhi_gfx_mem_ready {
+	struct mkhi_msg_hdr hdr;
+	uint32_t flags;
+} __packed;
+
 #endif /* _MEI_MKHI_H_ */
-- 
2.32.0

