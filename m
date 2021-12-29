Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D6D48173F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Dec 2021 23:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB7389B01;
	Wed, 29 Dec 2021 22:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4385789ACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Dec 2021 22:22:08 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id i22so46847027wrb.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Dec 2021 14:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1Etcfx2vmjUNZXxo6uDLTR9v67H3OM7/KpAb6Ygdbd4=;
 b=xUYc7H5drDU+Q3+VMT+BCXdA4iCgJoUwwqP33aW1l1jFhRYkzmzyA1lj+C/1VFVLeB
 ha956sSINdK2Xb+njByR0fNGtA6M2e3USUV3nbyKRIpd8kqub3La38cHgM3ZIoqP6isv
 lYcMz2y8qjTP9q3nXu7rfchZ3DTaNlW08ilFVgH637avmfYOelc7RO0+sldzYU5k2TEF
 5ifPFQa2Un+Riw5Js9IZDVnJ0YojESbcVZZusLvbBASESMoCsPOp7gNBUxBzG+uwiAy3
 dr/huIS/Dx461epBeXaPQ90mAFHcHiXjNIZ4EwNPpddyv4a8jsEvsQ1cWqwAYFg0oaDQ
 wRCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1Etcfx2vmjUNZXxo6uDLTR9v67H3OM7/KpAb6Ygdbd4=;
 b=vwW9x9n77tHLjnaNZTeosoEf63b0o9QTjuS0+ioYWt18dsbaLORgA+7LVRClt2a4gi
 vi//6+m6VI/98XaJl+T6qVYJoUXrDylwu32V2fRwKf6TPw+mHqMZ8dkBUxtL41L6Waqk
 MjitCAL9bOg9DEjyYl6CJrNBayObQ2AShsEJ/+fNc5GnIW01hgUCzRTGZvPf/tysK5Di
 iH9YEKigRj3fMv+unEcV13TnxEJafRlbNVWwpuil5qU0zilwsXe3a7nXU+Gh8vF3IjJt
 hRXAZYBo6y6dwkAx1vdh7czN0Je4I5Pd/rzbJRVr+ZgXiKArsM/J2+UJFXaI9l7thWkX
 gPBg==
X-Gm-Message-State: AOAM533NFS4xXoHBQBw5Qv2IEvSdYBMiNYGHAnHfFCJ3YAgovHrWaMIT
 m6PCC4G3LUPuA7QZPW00NzqqaFe9GbySRw==
X-Google-Smtp-Source: ABdhPJwQx0dAWhN0s82Rj/V59WvzhWufUdUP3dhUtEpz8weacw59e7fXQtRABTSQi/e7nDHna+ncwA==
X-Received: by 2002:adf:f70f:: with SMTP id r15mr21836192wrp.552.1640816526510; 
 Wed, 29 Dec 2021 14:22:06 -0800 (PST)
Received: from gpdmax.. ([2a01:e0a:28f:75b0:cf6:c90f:f3b1:89c1])
 by smtp.gmail.com with ESMTPSA id m5sm19700686wml.14.2021.12.29.14.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Dec 2021 14:22:05 -0800 (PST)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 29 Dec 2021 23:22:00 +0100
Message-Id: <20211229222200.53128-3-anisse@astier.eu>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211229222200.53128-1-anisse@astier.eu>
References: <20211229222200.53128-1-anisse@astier.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm: Add orientation quirk for GPD Win
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
Cc: Daniel Dadap <ddadap@nvidia.com>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Panel is 800x1280, but mounted on a laptop form factor, sideways.

Signed-off-by: Anisse Astier <anisse@astier.eu>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_panel_orientation_quirks.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel_orientation_quirks.c b/drivers/gpu/drm/drm_panel_orientation_quirks.c
index 042bb80383c9..3dc383b1e2ba 100644
--- a/drivers/gpu/drm/drm_panel_orientation_quirks.c
+++ b/drivers/gpu/drm/drm_panel_orientation_quirks.c
@@ -174,6 +174,12 @@ static const struct dmi_system_id orientation_data[] = {
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
2.33.1

