Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B252138F1C0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 18:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BC96E8D5;
	Mon, 24 May 2021 16:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8E26E8D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 16:47:53 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 u5-20020a7bc0450000b02901480e40338bso264487wmc.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 09:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q5LsshN/w/EqtVlYdH8CJ7303gxJoUC0MUKp67S3Rw4=;
 b=iFGf6zvLx7Wm86r70xf7tvo4wfqJ81GcbHImsEfOKd8ThuKUtFK2MuK+MKcdyoZYLB
 8yzeZeFYoOVEFt7hDVcaY0QwHVuP8mvtFBs+8l4ICs7lOwhipIjmA3EYhafZyaTjnitV
 57ikrIAFvICuaRPDzGKiS+RTyg0nCeN0dROIdbK65cdvD95pvKYVEIhaiQZ8A3fdkFiJ
 7D/l0yhGreo45tDS+S21pFOcOv7c3WYObDWSuiAq69NJex7HPsjwsgoeHWjzu3bisqPC
 cFcsaFQg62i+eIP5W1XHecorBxua8dO0gPtlTkZmr6lPU8GJrzuu0de5o+X9vRFwgujs
 3VGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q5LsshN/w/EqtVlYdH8CJ7303gxJoUC0MUKp67S3Rw4=;
 b=Edf/qbdr+c6qcIvlHmYqv0owh6Gm7SSbXn9odg7soVqfyJdl0GFsItiBKCDbWbLDR0
 1JDvgMyhkA8uOZyQQTUwCENnfjuTnndhsfjxDmEtprVIzZsDjVi+1KKWilPxxGjWjar9
 qTENRTl5KP3EwDSkJX7bsfohtQLISUQ86e/b5O2w+At3vXYzjWESXi+hs4fyFDI9WExX
 o7CufqVjWZbNzR9zgk2Q3MnuvVHrG7ng65lQVKtFMUZVTrc6q/ZIp7dTz4hb7bW3Skv1
 NKt5bEfIsHd0/tm3a4U4u1oxzSV9M1xC9hARy3h0R8Q8cUZGgiNhlkPtU+UWB2WUJdZ3
 r8hA==
X-Gm-Message-State: AOAM530/asmDYhFS09Q7n+99gZ3gTsv9sDSeyP6/XOxJKtbquermilCh
 kJXbrJOEjYmwsbwFPaBle0HgYRxMAfY8AA==
X-Google-Smtp-Source: ABdhPJxjdBMeRIGOWaA7Niea7ZuRC1ReYE+sftPeyd7t8T1co+5i5R/r8hHOJuSKccpoIXTfWXx4gw==
X-Received: by 2002:a7b:c0da:: with SMTP id s26mr20971wmh.83.1621874871648;
 Mon, 24 May 2021 09:47:51 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id
 b10sm15226358wrr.27.2021.05.24.09.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 09:47:51 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 24 May 2021 18:47:19 +0200
Message-Id: <20210524164719.6588-4-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524164719.6588-1-anisse@astier.eu>
References: <20210524164719.6588-1-anisse@astier.eu>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm: Add orientation quirk for GPD Win Max
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
