Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79A32B2A89
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A655A6E8A4;
	Sat, 14 Nov 2020 01:45:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB8E6E8AC
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
IronPort-SDR: iUJtbHWywaZgcF9l3MI9clU7LX+LjuSBlklDmW+L40ffhMUfOxYeEbT2jXNLmPuMR5JSzJALBp
 6mP2B6w6WlGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="149824102"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="149824102"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:40 -0800
IronPort-SDR: TIZIVtjSgsJ8UBklEiX9OuzqTlznWJ7iT9xMilLoTHsMXI6E1SQu/vAwy8AwTBegEmqj2+GNXw
 5Wb6SyoRqdaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524821"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:38 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:33 -0800
Message-Id: <20201114014537.25495-23-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114014537.25495-1-sean.z.huang@intel.com>
References: <20201114014537.25495-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 23/27] mei: bus: enable pavp device.
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
Cc: Tomas Winkler <tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Enable protected audio video path client on mei client
bus.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/bus-fixup.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 4e30fa98fe7d..042399b397c9 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -33,6 +33,9 @@ static const uuid_le mei_nfc_info_guid = MEI_UUID_NFC_INFO;
 #define MEI_UUID_HDCP UUID_LE(0xB638AB7E, 0x94E2, 0x4EA2, \
 			      0xA5, 0x52, 0xD1, 0xC5, 0x4B, 0x62, 0x7F, 0x04)
 
+#define MEI_UUID_PAVP UUID_LE(0xfbf6fcf1, 0x96cf, 0x4e2e, 0xA6, \
+			      0xa6, 0x1b, 0xab, 0x8c, 0xbe, 0x36, 0xb1)
+
 #define MEI_UUID_ANY NULL_UUID_LE
 
 /**
@@ -488,6 +491,7 @@ static struct mei_fixup {
 	MEI_FIXUP(MEI_UUID_MKHIF_FIX, mei_mkhi_fix),
 	MEI_FIXUP(MEI_UUID_HDCP, whitelist),
 	MEI_FIXUP(MEI_UUID_ANY, vt_support),
+	MEI_FIXUP(MEI_UUID_PAVP, whitelist),
 };
 
 /**
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
