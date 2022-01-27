Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D946D49E0A9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0916910EF86;
	Thu, 27 Jan 2022 11:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF6C10EF86
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643282512; x=1674818512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kZ/6QRCbXKz2uPbny7BLUdY7VrneEb9rP+jgHoalIWo=;
 b=kLAKXbKNQ6Xdgg/Shy/3sDM6gEznKtFKDevagMKmkBsXFatQbikfYkZ9
 wGXYyObqsg4J/EPfoWkgsbhRpOcgBqadhkOvX8U3W2cJ0SEGOhDoTWf8p
 sU49PPVgyWAOUXcs2VoQvbAU/Cl68OA+HcDltP9nxj0vmuSRhTBaWOwqT
 WVebmIyrDqPBJ12L6i3mnTeeP0kRmZ8K6CFgIdT3RavlgrUyBFaygvHNy
 rwYaG6yTe9vX4iX1E8OO3y66znSvuWuglxrMlB+h1HbATSqh1kpUvI6nh
 I6VqEMfCriPdhcBT/RdCteKyTzJsEF/boyRo6KCLMre/2Ap1J2no0eTA2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="271277597"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="271277597"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:21:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="480253281"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:21:49 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 27 Jan 2022 13:21:03 +0200
Message-Id: <20220127112103.2336871-6-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220127112103.2336871-1-alexander.usyskin@intel.com>
References: <20220127112103.2336871-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/5] mei: gsc: retrieve the firmware version
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
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
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

