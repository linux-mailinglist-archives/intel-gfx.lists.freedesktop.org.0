Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9414B3AD4
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Feb 2022 11:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B92810F20C;
	Sun, 13 Feb 2022 10:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5529B10F20C
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Feb 2022 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644748373; x=1676284373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dWtFQyJtLhloaNLECP6ny+40Hn5wg+HkV2E42wNJyQY=;
 b=dmbsco6YobOzzgsPcPPovrNuMTWNCoa4zg/ohv/ENAWNsHTGD/uHhwK4
 2PM7xZA8TdRpmXBhJ6+Xs1J9uQVmICukxKZTod0MmLt9g8vAoLzYwzxuY
 hiVmLQoB734iQoLJL8MuXrYOhv/AK47YbOl4VgA6ndrK5SG514VZRsOpR
 1ZFH2skENwSMNlkvg1FgD2ckcbEl4I8WIjqJ7HeEpGhK+jDBr/Nm/5pAe
 Os+OtKjYSVxfZlsIDBpSpcxbTrKGDiu7BvZJ+o5aQN8++aNLr2icaytDx
 26SW98GdRYx7IZ0mfnBCbCVBSfm3GXXRjhYfmU3PvUr6+LdEUgkmxugkV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10256"; a="336363651"
X-IronPort-AV: E=Sophos;i="5.88,365,1635231600"; d="scan'208";a="336363651"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2022 02:32:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,365,1635231600"; d="scan'208";a="527474404"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2022 02:32:50 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Sun, 13 Feb 2022 12:32:15 +0200
Message-Id: <20220213103215.2440248-6-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220213103215.2440248-1-alexander.usyskin@intel.com>
References: <20220213103215.2440248-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 5/5] mei: gsc: retrieve the firmware version
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

Add a hook to retrieve the firmware version of the
GSC devices to bus-fixup.
GSC has a different MKHI clients GUIDs but the same message structure
to retrieve the firmware version as MEI so mei_fwver() can be reused.

CC: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V5: Rebase
V6: Rebase
V7: add Greg KH Reviewed-by
---
 drivers/misc/mei/bus-fixup.c | 25 +++++++++++++++++++++++++
 drivers/misc/mei/hw-me.c     |  2 ++
 2 files changed, 27 insertions(+)

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 67844089db21..59506ba6fc48 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -30,6 +30,12 @@ static const uuid_le mei_nfc_info_guid = MEI_UUID_NFC_INFO;
 #define MEI_UUID_MKHIF_FIX UUID_LE(0x55213584, 0x9a29, 0x4916, \
 			0xba, 0xdf, 0xf, 0xb7, 0xed, 0x68, 0x2a, 0xeb)
 
+#define MEI_UUID_IGSC_MKHI UUID_LE(0xE2C2AFA2, 0x3817, 0x4D19, \
+			0x9D, 0x95, 0x06, 0xB1, 0x6B, 0x58, 0x8A, 0x5D)
+
+#define MEI_UUID_IGSC_MKHI_FIX UUID_LE(0x46E0C1FB, 0xA546, 0x414F, \
+			0x91, 0x70, 0xB7, 0xF4, 0x6D, 0x57, 0xB4, 0xAD)
+
 #define MEI_UUID_HDCP UUID_LE(0xB638AB7E, 0x94E2, 0x4EA2, \
 			      0xA5, 0x52, 0xD1, 0xC5, 0x4B, 0x62, 0x7F, 0x04)
 
@@ -241,6 +247,23 @@ static void mei_mkhi_fix(struct mei_cl_device *cldev)
 	mei_cldev_disable(cldev);
 }
 
+static void mei_gsc_mkhi_ver(struct mei_cl_device *cldev)
+{
+	int ret;
+
+	/* No need to enable the client if nothing is needed from it */
+	if (!cldev->bus->fw_f_fw_ver_supported)
+		return;
+
+	ret = mei_cldev_enable(cldev);
+	if (ret)
+		return;
+
+	ret = mei_fwver(cldev);
+	if (ret < 0)
+		dev_err(&cldev->dev, "FW version command failed %d\n", ret);
+	mei_cldev_disable(cldev);
+}
 /**
  * mei_wd - wd client on the bus, change protocol version
  *   as the API has changed.
@@ -492,6 +515,8 @@ static struct mei_fixup {
 	MEI_FIXUP(MEI_UUID_NFC_HCI, mei_nfc),
 	MEI_FIXUP(MEI_UUID_WD, mei_wd),
 	MEI_FIXUP(MEI_UUID_MKHIF_FIX, mei_mkhi_fix),
+	MEI_FIXUP(MEI_UUID_IGSC_MKHI, mei_gsc_mkhi_ver),
+	MEI_FIXUP(MEI_UUID_IGSC_MKHI_FIX, mei_gsc_mkhi_ver),
 	MEI_FIXUP(MEI_UUID_HDCP, whitelist),
 	MEI_FIXUP(MEI_UUID_ANY, vt_support),
 	MEI_FIXUP(MEI_UUID_PAVP, whitelist),
diff --git a/drivers/misc/mei/hw-me.c b/drivers/misc/mei/hw-me.c
index 9748d14849a1..7e77328142ff 100644
--- a/drivers/misc/mei/hw-me.c
+++ b/drivers/misc/mei/hw-me.c
@@ -1577,12 +1577,14 @@ static const struct mei_cfg mei_me_pch15_sps_cfg = {
 static const struct mei_cfg mei_me_gsc_cfg = {
 	MEI_CFG_TYPE_GSC,
 	MEI_CFG_PCH8_HFS,
+	MEI_CFG_FW_VER_SUPP,
 };
 
 /* Graphics System Controller Firmware Interface */
 static const struct mei_cfg mei_me_gscfi_cfg = {
 	MEI_CFG_TYPE_GSCFI,
 	MEI_CFG_PCH8_HFS,
+	MEI_CFG_FW_VER_SUPP,
 };
 
 /*
-- 
2.32.0

