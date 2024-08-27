Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A2A97A1D7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 14:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D322910E04E;
	Mon, 16 Sep 2024 12:10:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=derek.foreman@collabora.com header.b="BnGj81Zd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D5910E04E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 12:10:52 +0000 (UTC)
X-CSE-ConnectionGUID: hUgbVYj2R7quTYHaKOkHtw==
X-CSE-MsgGUID: o+vsiZMVQPu1ZmbVm+Htcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="36444176"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="36444176"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 05:10:52 -0700
X-CSE-ConnectionGUID: YWRLg2pEQACOJmG+C7VMmw==
X-CSE-MsgGUID: p/BOupLhRsq5ocYhlrZUDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69162066"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 05:10:51 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 16 Sep 2024 15:10:48 +0300
Resent-Message-ID: <87ttefdcjb.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa005.fm.intel.com (fmviesa005.fm.intel.com
 [10.60.135.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id B147B20CFED7
 for <jani.nikula@linux.intel.com>; Tue, 27 Aug 2024 09:39:40 -0700 (PDT)
X-CSE-ConnectionGUID: ZKm4yFtnRbKxIh0Y/fi1dQ==
X-CSE-MsgGUID: 8kdOJRnoT5mbau32SeO/4g==
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="67269590"
Received: from orvoesa105.jf.intel.com ([10.18.183.145])
 by fmviesa005-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 09:39:41 -0700
X-CSE-ConnectionGUID: Ar/Zv1rHRSClQAYDqxpZHw==
X-CSE-MsgGUID: UNhp0ESeSN+O7L1VSrmPhg==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=derek.foreman@collabora.com; spf=Pass
 smtp.mailfrom=derek.foreman@collabora.com; spf=None
 smtp.helo=postmaster@sender4-pp-f112.zoho.com; dkim=pass (signature
 verified) header.i=derek.foreman@collabora.com; dmarc=pass (p=none
 dis=none) d=collabora.com
IronPort-SDR: 66ce014b_0Rs4I5T7TRXjSp/82Enu70k8BVamI+bBKVBnPt9xFDfzv6S
 vo2oozAyb9gRQIgT0LaKR12LLRRfkHJHanbrO5A==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0FdAQBtAM5mh3C8j4hagliCRIFWNAQLSLRagX4PAQEBA?=
 =?us-ascii?q?QEBAQEBCUQEAQEDBIUAiWsCHgcBBDAJDgECAQIBAQEBAQMCAQIBAQEBAQEBA?=
 =?us-ascii?q?QYBAQECAgEBAQIBAQIEAwEBAQECEAEBAQE5Bw47hXUNgmMBgSKBJgEBAQEBA?=
 =?us-ascii?q?QEBAQEBAR0CCGMBISsLAQ0BATcBgU+DAIJlAwWxcTOBAYIMAQEGBAMCAdwTg?=
 =?us-ascii?q?WMJgUiNQXCDe4EhD4FVRIQOb4sHgzKQdYlfJYEiiEKLe0iBIQNZIRMBVRMNC?=
 =?us-ascii?q?gsJBYk9gykpgWuEGIUogWcJYYhSgQgtgRGBHzuCAYE5S4VdRT+CWWxOOQINA?=
 =?us-ascii?q?jeCM4EcgWhAAwsYDUgRLDUUGwY+bgeofYJTgQ4BgyWkaaBFNAeEF4FdBgyfS?=
 =?us-ascii?q?02qQ5hwpDOEZoFnOoFcMxojgzdPAxkPjioQCYNYymooMjsCBwsBAQMJi2qBS?=
 =?us-ascii?q?wEB?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23:1pEJGahTKhR+qnoN0DKyD4YRX1610RQKZh0ujC45NGQN5FlHY01je
 htvXD2PaPqLZ2TyLthyaImxpk9V757QmN9nG1Q9/C4xEyMW8JqUDtmwEBzMMnLJJKUvbq7GA
 +byyDXkBJlsFhcwcz/0auCJQV9Ui/7QHtIQL8adY3kuGmeIcA941FQ73bd/2tUw6TSAK1nlk
 cvopMHCM0OS1TdxM2YFg4qOsxoHUM7a4Vv0hXRgI6kT1LPivyNNVs5HdfvudyKQrrR8R4ZWe
 c6SlNlVwUuEp3/BOvv9+p7nf0sDRKLlPATmohK6jID52nCuDgRrukoKHKJ0hXV/0l1lrPgoo
 Dl5jqFcfC9yVkH6sL9ED0QHSXEW0Zpuo9crKVDn2SCaItavn3HEm52CB2lvVWEUF30e7cijO
 pX0JRhUBi1vid5az5qSUK5emJ05DPPQF4cmk0BM1CHBP9Y5FMWrr6Xivbe03R8ri8ZCEOyCI
 tIBLDQ2NU6GcRpPPREcD5dWcOWA3yKhNWQE8xTM9fpxujGJpOBy+OCF3N79dtGQSMYTkEGCq
 2fP+UzyBRUePdaY0zPD+XWp7gPKtXinBNhPTuzhnhJsqGC1xnRLJSYbbn34hqad03CFQddnK
 0NBr0LCqoBopR3wFICtN/Gim1aGtxgdHdxREPA+4SmJy6zJ80CYAHQJSnhKb9lOiSMtbScn0
 FOEhY+sHSQqvuTMEzSP8beT6zi1PED5MFPuewctV0w3/YD5gLsIpRb2Z+dPCb6tvP3qTGSYL
 y+xkAAygLAajMgu3qq9/Ezajz/EmnQvZlBrjukwdjz6hj6VdLKYi5qUBU83BMuswa6CQ1+Ns
 WJY3tCGqe5XVMvLhiuNR6MGG7TBCxe53N/03g4H83oJrWzFF5ufkWZ4vWwWyKBBb5tsRNMRS
 BWP0T69HbcKVJdQUYd5YpiqF+MhxrX6GNLuW5j8N4UUPsYgK1bbo3o+PiZ8OlwBdmBzy8nT3
 r/ELK6R4YoyUvgPIMeeG7hGj+dDKt4WmTyLHPgXMChLIZLENS/OE+5VWLd/RvI+7KTsnekm2
 4k3Cid+8D0GCLeWSnCPr+Y7dAlWRVBlXsqeg5IMKYa+zv9OQzxJ5wn5mu96JOSIXs19yo/1w
 51KchYGmQal2S2ZcVnih7IKQOqHYKuTZEkTZEQEMVuy1ntlb4G14aIWcbM8er0j/eZk1/cyR
 P4AE/hsyNwWItge02VMNcvOv8Z5eQ61hAmDGSOgbXJtN9RjXgHFsJusNAfm6CBEXGL9uNocs
 o+Q8FrRYaMCYAB+U+fQSvaklG2qsVYnxeldYkrvI/toQnvKzrREESLKo8ESH9AtMjTGnzuT6
 BaXC0wXpM7LuI4Ez+PKjqGl8aavNe90G3BeFGvi8b2WHDXo/Eez5I4dDuzSfS75UUXq8p6Df
 sRQ9en3a9ccrWZJsq19Mrdl9r0/7N3RvI1nzhxoMXHITlazAJZyCyOi8egWkYZSn5l1lweSc
 WCeyOlwYLmmFpvsLw8MGVADcO+G68AxphDTyvYEeGPB+y59+eu8Y3V4ZhWjpnRUE+poDdkD3
 +wkhc8x7j6/gDoMNvKtrHhd10aIH0w6f5QXjLMoK661tVNz0XBHW4LWNQHu6pLWa9lsDFgjE
 gXJuIX83YZj1mjwWFttM0PS3Nhtp4UE4zFL614gG26nuPT4gt0P4RkA1ghvEyp0yE1c3vNRK
 1pbERR/BZ+z8gdCgOlBWGGRGD99OiCJx3yp9Xw3kDz2ckr5cE3MM2w3BsiV9m877W93X2ZW7
 ZOY+knfQBfoe8DAhHopU2FLqva4b9xV8yvckvuGBOWAJYExOhD+s5+tZE0JihrpOtwwj0v5v
 ttX/P58RKn4FCwIqYg5NtWq7qsRQxW6O2Bye/Ft06cXF2X6ejvp+zyxB22uW8FKfdrmzFSZD
 pFwG8dxSBiO7iaCgTQFD6oqIbUvvvoI5sIHS4z7N1w9rLqTgTp4gq3+rhGkqjcQfOxvtsIhJ
 qf6VTGISDWQjEQJvV79lpBPP27gbOQUYAH54vuOz9wIMJA+q8BpT1A51+qlnneSMTY/xSmug
 iH4W/b0wdBhmKNWpKm9NoVYBg6xF8H/a/TQziC3rOZ1TI3uNeXgilorj2fJbiVsE5kfYdBVr
 Yi2kcXW2RrFtYkmUmqClJimEbJI1PqIX+FWE5zWKV9ElwSSWP7psgoywD26I8YRkfd2xMqud
 y2nYuSeKP8XXNZ8wiVOSi58ShwyNYX+Xp3Clwic8cueK0E6/1TcDdWF8XTJUzlqRhUQMcejN
 j6u6uec2N9Iia9tWjkGPqhCKL1lKgbBXaAGSYXAhQOABDP1vmLY66rQrjt+2zTlEXLeLd3b5
 6jCTR3AdBifnqHE4dVako5qtC0sE3dPrrgsT30Z5uJJpWi2PEweIcQZFKc2OJVevyjx9ZP/P
 RXmTm8pDwfjVjVlLzT4xvneXTmkO+9fAeehewQV/H6VZRnvVcnESPFk+zx76nh7Rir7wav1Y
 ZsC83n3JV6qzosvWe8X4eehjPx6wu/BgEgF4l35j9e4FiN27W/mD5C9NFElue37/8DxeIHjP
 mUzSW1eHASjUQv/SJ86PWxSGBZftzTqp9ntgeFj3/6H07h3DsUZoBE8Bw03+rYEaMADLrkUT
 DX8QG7lD6W+xCkIoaVw0z42qfYcNB9Id/RW6IfoQgkWlqu38G1hNMQH9cbKoAfO5yYHe27ge
 vKQD7TSyahLxI29GFFb9OnRx69Mbw==
IronPort-HdrOrdr: A9a23:df5+nq9orNuYlGcTW51uk+D3I+orL9Y04lQ7vn2ZFiY4TiXIra
 2TdaogvyMcRgxhO03I/urwQZVoJEmyyXcb2/h1AV7JZmLbUQeTTb2KjrGSpQEIeReOktK1vJ
 0IG8ZD4bbLfDpHZKjBgDVQa+xQp+WvweSag+bZ639sSCtua61m8m5Ce36mLnE=
X-Talos-CUID: 9a23:AO/WSm3bXcIkWUowqKeRv7xfM9piQGOE1lfqGGS8ME9YZKSFUW2w5/Yx
X-Talos-MUID: =?us-ascii?q?9a23=3Asrvk4w+tpLqx0XlQWhjgWP6Qf/pO47z2JXsAqrN?=
 =?us-ascii?q?FnJagbBJLITKljDviFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="34425291"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="34425291"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Aug 2024
 09:39:40 -0700
ARC-Seal: i=1; a=rsa-sha256; t=1724776770; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=ms4VjhhhQLSp/cOdSmmB9m0GI2z2Mf38RQZ+jjR9wIVM11hoXjGCbE8su/J7DWcoH+Wu1Ed1HCpTOotLfbNXoQBnC+LWcFDht9il6kVk6WP19yysS5iQaIxdIKWSbjaYmBV1IVTJPN7w/AaAJJELwJ3m3iKkk8PSVEG4eZwrgpo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1724776770;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=PysjLYYTobfjpCkNvp5rpF4+UHOJO/yIh0Yk4ecR/F0=; 
 b=dsJGXNF7ZW4tI6Vu3PJCNWihoVvhK9Jqjn5CNYb+HwWOQbMkuufc7RULJ9U9vFfS4dOh5TOsrFe5XzXggvrHRrQ4MUTpaXXRzcPNWAx0B29PJPFCPM/ey0Xf4a+ola3G7bka0s+bTe4Tr4uzQGguYGqyLvbk6vs6JOQtsdSI18c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=derek.foreman@collabora.com;
 dmarc=pass header.from=<derek.foreman@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724776770; 
 s=zohomail; d=collabora.com; i=derek.foreman@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=PysjLYYTobfjpCkNvp5rpF4+UHOJO/yIh0Yk4ecR/F0=;
 b=BnGj81Zd1mDeGLMYPor5iRYrWmA50jHjHGhNHtswin7e6FAgFPA/ODbaT2Lqw+Ew
 BKDMC7fnqNF8CQYhPC1Ef2ql6NGFpAJ7jh4+Sms2xrZwx/ibU+mGfpCfXeV5BHJ4zwZ
 hhKsLZOny9xwac0oFrfLuWMs3vFjVfRMOvTuJ5Ms=
Received: by mx.zohomail.com with SMTPS id 1724776769491557.6911820771234;
 Tue, 27 Aug 2024 09:39:29 -0700 (PDT)
From: Derek Foreman <derek.foreman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
 Jani Nikula <jani.nikula@linux.intel.com>, Helge Deller <deller@gmx.de>,
 linux-fbdev@vger.kernel.org, Derek Foreman <derek.foreman@collabora.com>
Subject: [PATCH v4] drm/connector: hdmi: Fix writing Dynamic Range Mastering
 infoframes
Date: Tue, 27 Aug 2024 11:39:04 -0500
Message-ID: <20240827163918.48160-1-derek.foreman@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-TUID: 8g93+8P1YxaP
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

The largest infoframe we create is the DRM (Dynamic Range Mastering)
infoframe which is 26 bytes + a 4 byte header, for a total of 30
bytes.

With HDMI_MAX_INFOFRAME_SIZE set to 29 bytes, as it is now, we
allocate too little space to pack a DRM infoframe in
write_device_infoframe(), leading to an ENOSPC return from
hdmi_infoframe_pack(), and never calling the connector's
write_infoframe() vfunc.

Instead of having HDMI_MAX_INFOFRAME_SIZE defined in two places,
replace HDMI_MAX_INFOFRAME_SIZE with HDMI_INFOFRAME_SIZE(MAX) and make
MAX 27 bytes - which is defined by the HDMI specification to be the
largest infoframe payload.

Fixes: f378b77227bc ("drm/connector: hdmi: Add Infoframes generation")
Fixes: c602e4959a0c ("drm/connector: hdmi: Create Infoframe DebugFS entries")

Signed-off-by: Derek Foreman <derek.foreman@collabora.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 4 +---
 drivers/gpu/drm/drm_debugfs.c                   | 4 +---
 include/linux/hdmi.h                            | 9 +++++++++
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index 7854820089ec..feb7a3a75981 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -521,8 +521,6 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
 
-#define HDMI_MAX_INFOFRAME_SIZE		29
-
 static int clear_device_infoframe(struct drm_connector *connector,
 				  enum hdmi_infoframe_type type)
 {
@@ -563,7 +561,7 @@ static int write_device_infoframe(struct drm_connector *connector,
 {
 	const struct drm_connector_hdmi_funcs *funcs = connector->hdmi.funcs;
 	struct drm_device *dev = connector->dev;
-	u8 buffer[HDMI_MAX_INFOFRAME_SIZE];
+	u8 buffer[HDMI_INFOFRAME_SIZE(MAX)];
 	int ret;
 	int len;
 
diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 6b239a24f1df..9d3e6dd68810 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -520,8 +520,6 @@ static const struct file_operations drm_connector_fops = {
 	.write = connector_write
 };
 
-#define HDMI_MAX_INFOFRAME_SIZE		29
-
 static ssize_t
 audio_infoframe_read(struct file *filp, char __user *ubuf, size_t count, loff_t *ppos)
 {
@@ -579,7 +577,7 @@ static ssize_t _f##_read_infoframe(struct file *filp, \
 	struct drm_connector *connector; \
 	union hdmi_infoframe *frame; \
 	struct drm_device *dev; \
-	u8 buf[HDMI_MAX_INFOFRAME_SIZE]; \
+	u8 buf[HDMI_INFOFRAME_SIZE(MAX)]; \
 	ssize_t len = 0; \
 	\
 	connector = filp->private_data; \
diff --git a/include/linux/hdmi.h b/include/linux/hdmi.h
index 3bb87bf6bc65..455f855bc084 100644
--- a/include/linux/hdmi.h
+++ b/include/linux/hdmi.h
@@ -59,6 +59,15 @@ enum hdmi_infoframe_type {
 #define HDMI_DRM_INFOFRAME_SIZE    26
 #define HDMI_VENDOR_INFOFRAME_SIZE  4
 
+/*
+ * HDMI 1.3a table 5-14 states that the largest InfoFrame_length is 27,
+ * not including the packet header or checksum byte. We include the
+ * checksum byte in HDMI_INFOFRAME_HEADER_SIZE, so this should allow
+ * HDMI_INFOFRAME_SIZE(MAX) to be the largest buffer we could ever need
+ * for any HDMI infoframe.
+ */
+#define HDMI_MAX_INFOFRAME_SIZE    27
+
 #define HDMI_INFOFRAME_SIZE(type)	\
 	(HDMI_INFOFRAME_HEADER_SIZE + HDMI_ ## type ## _INFOFRAME_SIZE)
 
-- 
2.45.2

