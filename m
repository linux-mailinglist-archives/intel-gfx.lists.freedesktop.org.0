Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391E67184C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 10:57:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A776610E1C7;
	Wed, 18 Jan 2023 09:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B926B10E1C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 09:57:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="352192151"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="352192151"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:57:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="988476479"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="988476479"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:57:26 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 18 Jan 2023 11:57:23 +0200
Resent-Message-ID: <87r0vscgho.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Wed, 18 Jan 2023 01:42:13 +0200 (EET)
Received: from orsmga002.jf.intel.com (orsmga002.jf.intel.com [10.7.209.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 07888580B56
 for <jani.nikula@linux.intel.com>; Tue, 17 Jan 2023 15:39:12 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="659551895"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="659551895"
Received: from fmsmga105.fm.intel.com ([10.1.193.10])
 by orsmga002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17
 Jan 2023 15:39:11 -0800
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=dmitry.baryshkov@linaro.org; spf=None
 smtp.mailfrom=dmitry.baryshkov@linaro.org; spf=None
 smtp.helo=postmaster@mail-ej1-f43.google.com; dkim=pass (signature
 verified) header.i=@linaro.org; dmarc=pass (p=none dis=none) d=linaro.org
IronPort-SDR: 63c7319e_CLHJJ//8KuOZWk0Y1xm3ToK3l/IvrYXfOpQE1cp03VndKfW
 RypvyZgUGUuJW4ZZpByjkryIJlQJ4s0cRTDUsVA==
X-IPAS-Result: =?us-ascii?q?A0E+AgBKMMdjfyvaVdFaHAEBAQEBAQcBARIBAQQEAQGCD?=
 =?us-ascii?q?4FbUoFdLgRQjU2IIZ8+DwEBAQEBAQEBAQgBQgIEAQEDBIR/hRoCHQYGNBMBA?=
 =?us-ascii?q?gECAQEBAQEDAgECAQEBAQEBAwEBAQICAQEBAgEBAgQCAQEBAQIQAQEZCRkHD?=
 =?us-ascii?q?g4FJIVoDYI4KQF1gQgBAQEBAQEBAQEBAQEBAQEBAQEBFgIIBVJ6FhULAQ0BA?=
 =?us-ascii?q?TcBgRQBBQEiARIiglyDIwMBBJ8pgQRCjDEzgQGCCAEBBgQDAgGdP4FeCQkBC?=
 =?us-ascii?q?IEui16ESYEhEIFVRIR9hFmGKppSCoE7fIEnDkx8gWQDCQMHBUlAAwsYDRYyC?=
 =?us-ascii?q?hMtNQYQSiIJGhsHgQkqCR8VAwQEAwIGEwMiAg0oMRQEKRMNJyZpCQIDIgRiA?=
 =?us-ascii?q?wMEKC0JIB8HJiQ8B1YSJQYCDx83BgMJAwIhTnEKJRISBQMLFSpHBAg2BQZSE?=
 =?us-ascii?q?gIIDxIPLEMOQjc0EwZcASkLDhEDUEYZbwSCDAovKJ5LBgFZBDGDI45ug0EIg?=
 =?us-ascii?q?xOLQ6EsNAeDc4FLBgyecRoylnuSLy2RZIU6IKJkhF8CCgcGECOBViOBXE0wg?=
 =?us-ascii?q?ypPAxkPjiAMFohkhQ0BPj80AjkCBwsBAQMJhUaEBASCVQEB?=
IronPort-PHdr: A9a23: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
 2Y/SyEVyiAdWsWL2zlQ2o+B
IronPort-Data: A9a23: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
 aMJqayoja11pYMd0SqtRpKNJCwkgQ==
IronPort-HdrOrdr: A9a23:DMEKiql55MMxszBjA5mLu4GRkmvpDfN3imdD5ihNYBxZY6Wkfq
 GV7ZYmPHDP5Qr5NEtNpTniAtjifZq/z/9ICOAqVN/INjUO3lHGEGgI1+vfKlPbdRHWx6pU36
 1nb69iL8H1BlRg5PyKmDWQIpIp2cCm/cmT9ILj5kYoQAdhS6wI1XYcNi+rVkJ3QQVnCPMCZe
 ehz/sCpDyqXmgSZcihb0N1JtTrlpnOnJLiexIaJxNP0njpsRqYrKf3CBif0zcSOgk/v4sKwC
 zfnxb466mlrtG3oyWssFP73tBMlMHgx9dFGeuFjsR9EESWti+YIJ5gRrGjsVkO0Z2SwWdvjd
 /lrho6M95ogkmhBF2dkF/x3RTp1Rsz5xbZuCClvUc=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="411086284"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="411086284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-ej1-f43.google.com ([209.85.218.43])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2023
 15:39:09 -0800
Received: by mail-ej1-f43.google.com with SMTP id kt14so20345735ejc.3
 for <jani.nikula@linux.intel.com>; Tue, 17 Jan 2023 15:39:09 -0800
 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=h1kXkACM8R36cszqvRy5CkDEhqSp7t9HIi7MD9C+Npw=;
 b=iryuvb7gmgDycDQX6v409tmVwiIgGCvcgdvj0nET05OSYzI9DlFICBXHLwvDlVLDXR
 RKAw61AN2Ke5rEjyAV+yfxDd95OUPx4OdPDFNE/R98E1bi5nHJqeJf4wWMh9N8T94fed
 hizXvM7BdvAumWR9di0HOdb6DwQ2UfmsStkYw2D4FYn/M6OJM2ySvpqZFLgKDxVoOhHe
 S5VV8v9ASvYqAKJ+jFEgv8D9Xp+1wvfJuPINvslDf50SH4IqeNWAdRAxGTZ+QH1CgPiX
 284fzAUdrQPBRZWl73IaIQpsVQ9o3lNGt05glNpPuVyaWlHTyhum5vLMlwVzpEQSbueU
 6ZTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=h1kXkACM8R36cszqvRy5CkDEhqSp7t9HIi7MD9C+Npw=;
 b=aWj0IFXUbIl5E2Phk17DsRzD5IrL8cVLFzgYN8R4p4/c9JJ7Bwoi/jVOey0ELXEVgX
 Pztx5Y0kfjTnlKv4Vwzs1mc+XgrKgfFqZcSKmz4PHzz+PCnxZlYtDB2nnANM8SDVjySt
 Yvz8TBF6MWPrDqPOEzni+zmRVZNhpAaj+ChhH9ATnU5Tw0j/ZAbMofy1Bo1gVaCK6PcX
 JQwoTEx25+F1szbzuoIhH86mmBmZNvcnXNHHnd0YuPdezBHdG3boAAKBmh5GwqZOW5Hy
 NIIYvaLj56ViJ0iS7/kioZnO/C6W5IJwql+AHOg6YFKR2M7WZZkcDJEveKibvQxnRYUI
 3lnw==
X-Gm-Message-State: AFqh2krMAgafDGUpbtTWSXvbn/+bN0Y50gEfnBcWjg8+AhFXNc1EF3pn
 V067Lc9K2v52ytY1koTx5+sukw==
X-Google-Smtp-Source: AMrXdXt0GaUlmQjNowh4pX9I5qWV8MkosQyuQyiTCH3XBm1813HKMsbQ3V1oQB7RzfZF/OkYinm+hQ==
X-Received: by 2002:a17:907:cc8a:b0:7ad:d62d:9d31 with SMTP id
 up10-20020a170907cc8a00b007add62d9d31mr709743ejc.67.1673998747609;
 Tue, 17 Jan 2023 15:39:07 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a085:4d00::8a5]) by smtp.gmail.com with ESMTPSA id
 10-20020a170906210a00b007c0f2d051f4sm13714422ejt.203.2023.01.17.15.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Jan 2023 15:39:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 18 Jan 2023 01:39:05 +0200
Message-Id: <20230117233905.1662645-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/probe_helper: sort out poll_running vs
 poll_enabled
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
Cc: Neil Armstrong <neil.armstrong@linaro.org>, intel-gfx@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, dri-devel@lists.freedesktop.org,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, freedreno@lists.freedesktop.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are two flags attemting to guard connector polling:
poll_enabled and poll_running. While poll_enabled semantics is clearly
defined and fully adhered (mark that drm_kms_helper_poll_init() was
called and not finalized by the _fini() call), the poll_running flag
doesn't have such clearliness.

This flag is used only in drm_helper_probe_single_connector_modes() to
guard calling of drm_kms_helper_poll_enable, it doesn't guard the
drm_kms_helper_poll_fini(), etc. Change it to only be set if the polling
is actually running. Tie HPD enablement to this flag.

This fixes the following warning reported after merging the HPD series:

Hot plug detection already enabled
WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_bridge.c:1257 drm_bridge_hpd_enable+0x94/0x9c [drm]
Modules linked in: videobuf2_memops snd_soc_simple_card snd_soc_simple_card_utils fsl_imx8_ddr_perf videobuf2_common snd_soc_imx_spdif adv7511 etnaviv imx8m_ddrc imx_dcss mc cec nwl_dsi gov
CPU: 2 PID: 9 Comm: kworker/u8:0 Not tainted 6.2.0-rc2-15208-g25b283acd578 #6
Hardware name: NXP i.MX8MQ EVK (DT)
Workqueue: events_unbound deferred_probe_work_func
pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : drm_bridge_hpd_enable+0x94/0x9c [drm]
lr : drm_bridge_hpd_enable+0x94/0x9c [drm]
sp : ffff800009ef3740
x29: ffff800009ef3740 x28: ffff000009331f00 x27: 0000000000001000
x26: 0000000000000020 x25: ffff800001148ed8 x24: ffff00000a8fe000
x23: 00000000fffffffd x22: ffff000005086348 x21: ffff800001133ee0
x20: ffff00000550d800 x19: ffff000005086288 x18: 0000000000000006
x17: 0000000000000000 x16: ffff8000096ef008 x15: 97ffff2891004260
x14: 2a1403e194000000 x13: 97ffff2891004260 x12: 2a1403e194000000
x11: 7100385f29400801 x10: 0000000000000aa0 x9 : ffff800008112744
x8 : ffff000000250b00 x7 : 0000000000000003 x6 : 0000000000000011
x5 : 0000000000000000 x4 : ffff0000bd986a48 x3 : 0000000000000001
x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff000000250000
Call trace:
 drm_bridge_hpd_enable+0x94/0x9c [drm]
 drm_bridge_connector_enable_hpd+0x2c/0x3c [drm_kms_helper]
 drm_kms_helper_poll_enable+0x94/0x10c [drm_kms_helper]
 drm_helper_probe_single_connector_modes+0x1a8/0x510 [drm_kms_helper]
 drm_client_modeset_probe+0x204/0x1190 [drm]
 __drm_fb_helper_initial_config_and_unlock+0x5c/0x4a4 [drm_kms_helper]
 drm_fb_helper_initial_config+0x54/0x6c [drm_kms_helper]
 drm_fbdev_client_hotplug+0xd0/0x140 [drm_kms_helper]
 drm_fbdev_generic_setup+0x90/0x154 [drm_kms_helper]
 dcss_kms_attach+0x1c8/0x254 [imx_dcss]
 dcss_drv_platform_probe+0x90/0xfc [imx_dcss]
 platform_probe+0x70/0xcc
 really_probe+0xc4/0x2e0
 __driver_probe_device+0x80/0xf0
 driver_probe_device+0xe0/0x164
 __device_attach_driver+0xc0/0x13c
 bus_for_each_drv+0x84/0xe0
 __device_attach+0xa4/0x1a0
 device_initial_probe+0x1c/0x30
 bus_probe_device+0xa4/0xb0
 deferred_probe_work_func+0x90/0xd0
 process_one_work+0x200/0x474
 worker_thread+0x74/0x43c
 kthread+0xfc/0x110
 ret_from_fork+0x10/0x20
---[ end trace 0000000000000000 ]---

Reported-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Fixes: c8268795c9a9 ("drm/probe-helper: enable and disable HPD on connectors")
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

Changes since v1:
- Fixed drm_kms_helper_enable_hpd() to call enable_hpd() instead of
  disable_hpd().

---
 drivers/gpu/drm/drm_probe_helper.c | 110 +++++++++++++++++------------
 1 file changed, 63 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index 7973f2589ced..04754bb7b131 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -222,6 +222,45 @@ drm_connector_mode_valid(struct drm_connector *connector,
 	return ret;
 }
 
+static void drm_kms_helper_disable_hpd(struct drm_device *dev)
+{
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+
+	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		const struct drm_connector_helper_funcs *funcs =
+			connector->helper_private;
+
+		if (funcs && funcs->disable_hpd)
+			funcs->disable_hpd(connector);
+	}
+	drm_connector_list_iter_end(&conn_iter);
+}
+
+static bool drm_kms_helper_enable_hpd(struct drm_device *dev)
+{
+	bool poll = false;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+
+	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		const struct drm_connector_helper_funcs *funcs =
+			connector->helper_private;
+
+		if (funcs && funcs->enable_hpd)
+			funcs->enable_hpd(connector);
+
+		if (connector->polled & (DRM_CONNECTOR_POLL_CONNECT |
+					 DRM_CONNECTOR_POLL_DISCONNECT))
+			poll = true;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return poll;
+}
+
 #define DRM_OUTPUT_POLL_PERIOD (10*HZ)
 /**
  * drm_kms_helper_poll_enable - re-enable output polling.
@@ -241,26 +280,14 @@ drm_connector_mode_valid(struct drm_connector *connector,
 void drm_kms_helper_poll_enable(struct drm_device *dev)
 {
 	bool poll = false;
-	struct drm_connector *connector;
-	struct drm_connector_list_iter conn_iter;
 	unsigned long delay = DRM_OUTPUT_POLL_PERIOD;
 
-	if (!dev->mode_config.poll_enabled || !drm_kms_helper_poll)
+	if (!dev->mode_config.poll_enabled ||
+	    !drm_kms_helper_poll ||
+	    dev->mode_config.poll_running)
 		return;
 
-	drm_connector_list_iter_begin(dev, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		const struct drm_connector_helper_funcs *funcs =
-			connector->helper_private;
-
-		if (funcs && funcs->enable_hpd)
-			funcs->enable_hpd(connector);
-
-		if (connector->polled & (DRM_CONNECTOR_POLL_CONNECT |
-					 DRM_CONNECTOR_POLL_DISCONNECT))
-			poll = true;
-	}
-	drm_connector_list_iter_end(&conn_iter);
+	poll = drm_kms_helper_enable_hpd(dev);
 
 	if (dev->mode_config.delayed_event) {
 		/*
@@ -279,6 +306,8 @@ void drm_kms_helper_poll_enable(struct drm_device *dev)
 
 	if (poll)
 		schedule_delayed_work(&dev->mode_config.output_poll_work, delay);
+
+	dev->mode_config.poll_running = true;
 }
 EXPORT_SYMBOL(drm_kms_helper_poll_enable);
 
@@ -567,10 +596,7 @@ int drm_helper_probe_single_connector_modes(struct drm_connector *connector,
 	}
 
 	/* Re-enable polling in case the global poll config changed. */
-	if (drm_kms_helper_poll != dev->mode_config.poll_running)
-		drm_kms_helper_poll_enable(dev);
-
-	dev->mode_config.poll_running = drm_kms_helper_poll;
+	drm_kms_helper_poll_enable(dev);
 
 	if (connector->status == connector_status_disconnected) {
 		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] disconnected\n",
@@ -710,8 +736,12 @@ static void output_poll_execute(struct work_struct *work)
 	changed = dev->mode_config.delayed_event;
 	dev->mode_config.delayed_event = false;
 
-	if (!drm_kms_helper_poll)
+	if (!drm_kms_helper_poll &&
+	    dev->mode_config.poll_running) {
+		drm_kms_helper_disable_hpd(dev);
+		dev->mode_config.poll_running = false;
 		goto out;
+	}
 
 	if (!mutex_trylock(&dev->mode_config.mutex)) {
 		repoll = true;
@@ -808,30 +838,6 @@ bool drm_kms_helper_is_poll_worker(void)
 }
 EXPORT_SYMBOL(drm_kms_helper_is_poll_worker);
 
-static void drm_kms_helper_poll_disable_fini(struct drm_device *dev, bool fini)
-{
-	struct drm_connector *connector;
-	struct drm_connector_list_iter conn_iter;
-
-	if (!dev->mode_config.poll_enabled)
-		return;
-
-	if (fini)
-		dev->mode_config.poll_enabled = false;
-
-	drm_connector_list_iter_begin(dev, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		const struct drm_connector_helper_funcs *funcs =
-			connector->helper_private;
-
-		if (funcs && funcs->disable_hpd)
-			funcs->disable_hpd(connector);
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
-}
-
 /**
  * drm_kms_helper_poll_disable - disable output polling
  * @dev: drm_device
@@ -848,7 +854,12 @@ static void drm_kms_helper_poll_disable_fini(struct drm_device *dev, bool fini)
  */
 void drm_kms_helper_poll_disable(struct drm_device *dev)
 {
-	drm_kms_helper_poll_disable_fini(dev, false);
+	if (dev->mode_config.poll_running)
+		drm_kms_helper_disable_hpd(dev);
+
+	cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
+
+	dev->mode_config.poll_running = false;
 }
 EXPORT_SYMBOL(drm_kms_helper_poll_disable);
 
@@ -886,7 +897,12 @@ EXPORT_SYMBOL(drm_kms_helper_poll_init);
  */
 void drm_kms_helper_poll_fini(struct drm_device *dev)
 {
-	drm_kms_helper_poll_disable_fini(dev, true);
+	if (!dev->mode_config.poll_enabled)
+		return;
+
+	drm_kms_helper_poll_disable(dev);
+
+	dev->mode_config.poll_enabled = false;
 }
 EXPORT_SYMBOL(drm_kms_helper_poll_fini);
 
-- 
2.39.0

