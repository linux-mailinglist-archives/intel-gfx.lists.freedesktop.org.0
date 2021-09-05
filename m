Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 493C34011B7
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Sep 2021 23:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D8689A4F;
	Sun,  5 Sep 2021 21:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E633589A20
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Sep 2021 21:12:32 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 j17-20020a05600c1c1100b002e754875260so3388712wms.4
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Sep 2021 14:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=64P8l4D8JVcb0X7RF3QaJiLXSiKPZYr5VYc8RwoThO8=;
 b=hDz8tHiY8d1awojbwadl4NadQlZP0zF62WGKypOzL6snTAQ9xas8empDQh8FZxQADe
 90mq4JelRkX5mF5XfaAxiIAO3kH4ur2EySzKBQsKTcFo2L14ikRm1SoM+coC3KVE08xc
 CvhMzlTWKxfGKiZWFjWNBo7QnvTsyCCfwe9aIG2vL/pvM5QUGEbwTlvnfZz0tkh8hEbz
 wsD9Rtz0/MYFPAPoNvUOYb+1HuapX76iapKxnp/oKwWfjoTsrhEoKu884q+iutnFrHpw
 C/YOESaUxPoC4o2rhsqRIfF7tnfZVpsX9ybpr7L7WJa5Sa5689iVWNOkRVbRUoqCd+14
 i9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=64P8l4D8JVcb0X7RF3QaJiLXSiKPZYr5VYc8RwoThO8=;
 b=j+mIXZaj+Txz66ct4Y8+r0EkYOzZz8C2PVsS/MMUQc9FWlV0gWOp7hG7oK6At8ssQM
 RtyPIxr5eaFVV+b4ple6J6KY9qakfQ+2fTJwBfAU8zoDXndVQ+pUCYGglr/zSHDkXH/l
 vUbhKnX/1nba6q5/OMX3VAFIi7wg45N2dYKIS2DvPND6XQ37LtUhtUYpC//Vpmmn+38q
 3LwajH9y9hAL9KBOQeqH6JadcXO72NGqVVqClx8eb99V7dHaka80DD2eroo7eKZO6kvK
 7jyEu17dgdskL21eGzVrt53rKJXqibrPBwYxf0thy2o72x5Ds4GHaVbfK2Ou/+FULEQh
 6s8g==
X-Gm-Message-State: AOAM532JqVWDiPIsWAWop0KPtEfvlrCNfiNkeS3kp0TiUQ/bX+W+E3SK
 2y5uHY8voBznLQ/p83nz7bB0Um1/aUMtAQ==
X-Google-Smtp-Source: ABdhPJzalZJf/iXql8LUBPS5QY+5RXgUietPpt0wJxlur9ypXP6YPGwVC6sLXBXdkwOfRSfcVSPQxg==
X-Received: by 2002:a1c:2547:: with SMTP id l68mr8223101wml.23.1630876351289; 
 Sun, 05 Sep 2021 14:12:31 -0700 (PDT)
Received: from gpdmax.. ([2a01:e0a:28f:75b0:2488:d453:b017:99a])
 by smtp.gmail.com with ESMTPSA id m3sm7210512wrg.45.2021.09.05.14.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Sep 2021 14:12:30 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Uma Shankar <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Dadap <ddadap@nvidia.com>,
 Anisse Astier <anisse@astier.eu>
Date: Sun,  5 Sep 2021 23:12:26 +0200
Message-Id: <20210905211226.3525-3-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210905211226.3525-1-anisse@astier.eu>
References: <20210905211226.3525-1-anisse@astier.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm: Add orientation quirk for GPD Win
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

Signed-off-by: Anisse Astier <anisse@astier.eu>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
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

