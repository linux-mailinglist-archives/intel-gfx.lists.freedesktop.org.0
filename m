Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EDE396920
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 22:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 287556E50E;
	Mon, 31 May 2021 20:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0916E1B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 20:47:17 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id g17so11969426wrs.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 13:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ptDSkNNvQjDdl3nFcdxuQjfCtEwzKbJ3OmaY2YN6oTo=;
 b=GPEy78kYnOdp5iqNGzgboB4zuArq3mG/XopxoWGoph9sZ2KW0WK4a0XgwDsKQrgDYR
 t+3NEdmPRJI3aiY1F7LAfJtemZb1Yp75wG/ISmUhND4Ics0dIB6HWAQ1H+6eHS/OLusy
 hDm9vFoh/yUdn1mEwcz/uIFCkzuf1AxiJl/KS092uMxELde9ZMHkq0y+qp9TJi7qWFGQ
 Em/FuDN5S5bbhPToaDEhEBegHerkAZgoMiyzyQpngzsU1a31H/ntcMfjMF4Ijk4qhFKj
 FHYgtq23w1EcbLi7THcDxn5paqKJj4uzjs/InUV1+1pvGOV0JiXz2ToxNmjJf9kirHfr
 Zd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ptDSkNNvQjDdl3nFcdxuQjfCtEwzKbJ3OmaY2YN6oTo=;
 b=RL3YOQp8IU69+rCOa7RFi3T9EB/TOabiEYtobjc3Qz/dStY8FwewYIMGVbrwg94v1m
 ie+TighINN8BApANkX6X6HbQkNxt8+H5XpFcJdyEXLJpL/1qwt8Fv0aBQ0jyAWYWTXVA
 yxXEkk2bfg4jhjuY+S3pH76iDoW9S0n7zEzZ4pUaWW2/jkbUXxAvwbQYHpP5NFJ1dsg4
 hs5N8atS6ATYzjwVfIJut0oGBbUMO8Zjek/QoI8amM8E/1LSd4gKZMVU/48Sd4rjpPqc
 7Twk4Bm950qU6ynYA9ELIps2qpYvR32fllPWRMPhgdUAA38z/Nty43Rqzu19PITIB3ZG
 MaOg==
X-Gm-Message-State: AOAM531Zr0d1XecrqhWoMTlp2Inzv/vktdzJEKlJIg4MQSm/1+ei/dVU
 RkWjsFtHn/d7t4VTxxIVegEyHJWQ8b2qsA==
X-Google-Smtp-Source: ABdhPJzEEjwSnjavmItqbdm3ZQTHxJD05Lb6HkmnzryKVoP126i6sT749RLkW1kRLwvHQ6dduC4GNg==
X-Received: by 2002:adf:e109:: with SMTP id t9mr24030864wrz.372.1622494035593; 
 Mon, 31 May 2021 13:47:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id
 m7sm874240wrv.35.2021.05.31.13.47.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 13:47:15 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 31 May 2021 22:46:42 +0200
Message-Id: <20210531204642.4907-3-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210531204642.4907-1-anisse@astier.eu>
References: <20210531204642.4907-1-anisse@astier.eu>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm: Add orientation quirk for GPD Win
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Panel is 800x1280, but mounted on a laptop form factor, sideways.

Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Anisse Astier <anisse@astier.eu>
---
 drivers/gpu/drm/drm_panel_orientation_quirks.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel_orientation_quirks.c b/drivers/gpu/drm/drm_panel_orientation_quirks.c
index f6bdec7fa925..3c3f4ed89173 100644
--- a/drivers/gpu/drm/drm_panel_orientation_quirks.c
+++ b/drivers/gpu/drm/drm_panel_orientation_quirks.c
@@ -148,6 +148,12 @@ static const struct dmi_system_id orientation_data[] = {
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
