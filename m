Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084203EF398
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 22:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F20206E247;
	Tue, 17 Aug 2021 20:43:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF6976E249
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 20:43:40 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 c129-20020a1c35870000b02902e6b6135279so350345wma.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 13:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qkmIGWStsmGwX59IYJq69k4MQQvvnZaBHUVStjccRIg=;
 b=zruDqWaleaTIcNcI8RfwQBJ4phf50405hx5OYGUC+2ADyiJA5LMo6lpUfJV6SwJEGB
 2xNV+t69eOOtw0KzUc1ZpfHKtVv8DOZBKwEJzA/PcGY5CgnV/K8Ex70xhN6StEtJYOio
 toclwNRTCoRfWVqoBTRQOyYmRQ4xT7JFM8iVhuouHXSOLPIO/u6QH5dw4b4+99vGMkMx
 7e7cg7Xqq0EmFrzSQTafdSV2KtOYF9sGbPB54dDa6ZqizSXYIowiOPAWlDIV5L3QifxJ
 +DwKbQdhfMYrjBzp25spYffer7prBJa56fdqRUkN1knSXfoRHEE+VBmdZvM2PpuZ18D/
 xc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qkmIGWStsmGwX59IYJq69k4MQQvvnZaBHUVStjccRIg=;
 b=Uv3EzVCC1w54cU/MGG8q3Q9libc8Ix/w/NzRAosFHAGJC5bezLKqLIvP5ZpWGd4ZrR
 hoL3lr3GbX+JMfasUW0blX1qF7un2AIdFv4CaSF5lHTwBaAkOUmqP0ggpotGE21C3TGE
 TEl3UwGb3eOosURAdM/rPddu5jHZXK9Kboz9OIPy7Qrn9iaFjT6ZIy55HL8J/7PWsU5O
 UNRHEXLVWkYTVDhiDxG8MVxIfPMnTJbTp3FFKXhZuoS2q6AIYUxA2tfkIZBcMBcF0S7y
 gktZLpVf6mFdTZtgHZ9dUp613fpmZ4+W8ALtgIIHjJxCnDijh704bDarE8benK8fM09O
 33tA==
X-Gm-Message-State: AOAM531mMmEquV79Deg6f9qkcm7HV+hnYtGsV+xSdP/CSb3FOF8WVkx0
 qd5UXcTefNIWDaVZCBeg6+3e4lTheHeGyg==
X-Google-Smtp-Source: ABdhPJwpVDe3ZeJNBVxh6qeSyGZgVTaF1ZlUUzxwqfNMz8sEqyoUOT0KCvhTRjge3V+N4Kjg5mUsug==
X-Received: by 2002:a05:600c:3591:: with SMTP id
 p17mr5239032wmq.134.1629233018998; 
 Tue, 17 Aug 2021 13:43:38 -0700 (PDT)
Received: from gpdmax.. ([2a0d:e487:15f:f479:6202:d4f7:9ddb:b07c])
 by smtp.gmail.com with ESMTPSA id e10sm3540332wrt.82.2021.08.17.13.43.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 13:43:38 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Uma Shankar <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Dadap <ddadap@nvidia.com>,
 Anisse Astier <anisse@astier.eu>
Date: Tue, 17 Aug 2021 22:43:29 +0200
Message-Id: <20210817204329.5457-3-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210817204329.5457-1-anisse@astier.eu>
References: <20210817204329.5457-1-anisse@astier.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm: Add orientation quirk for GPD Win
 Max
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

Panel is 800x1280, but mounted on a laptop form factor, sideways.

Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Anisse Astier <anisse@astier.eu>
---
 drivers/gpu/drm/drm_panel_orientation_quirks.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel_orientation_quirks.c b/drivers/gpu/drm/drm_panel_orientation_quirks.c
index 4e965b0f5502..643b55f9a9d1 100644
--- a/drivers/gpu/drm/drm_panel_orientation_quirks.c
+++ b/drivers/gpu/drm/drm_panel_orientation_quirks.c
@@ -160,6 +160,12 @@ static const struct dmi_system_id orientation_data[] = {
 		  DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "MicroPC"),
 		},
 		.driver_data = (void *)&lcd720x1280_rightside_up,
+	}, {	/* GPD Win Max */
+		.matches = {
+		  DMI_EXACT_MATCH(DMI_SYS_VENDOR, "GPD"),
+		  DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "G1619-01"),
+		},
+		.driver_data = (void *)&lcd800x1280_rightside_up,
 	}, {	/*
 		 * GPD Pocket, note that the the DMI data is less generic then
 		 * it seems, devices with a board-vendor of "AMI Corporation"
-- 
2.31.1

