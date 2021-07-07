Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD35E3BF1D2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 00:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEEB6E1E8;
	Wed,  7 Jul 2021 22:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E3C6E1E8
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 22:02:33 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id d12so4189970wre.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Jul 2021 15:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ptDSkNNvQjDdl3nFcdxuQjfCtEwzKbJ3OmaY2YN6oTo=;
 b=CVt74IOKlyHF+rvkcThRHSvB0vN+SjJIwV23WXqVlgnjXuWLqb3ljW7ottIQdhIJNc
 EpGpF3UySusOvz18WaoSqL/vJJZRp0yMdLTzXP6bGn6FZOvgYCIik0aQQ9YmVjKWGJ9V
 Tlp2EKGL1aIRwPM4WmHyafYdko3Ll6tTfW8UdfAoWDflfC7lXTUAEYsq1Zczbkp2DyhS
 +ecJrP0JOWxiYx8feGFvX3XkfquiueBfO2TlmMzMz4tIVsR25HrnuZKfuyYi57etyyWb
 Of+yhC9fEhY4p+9H4aiRhAWOW/Vx29rZjzKemg/ltElYN+fgDjBLy8pz+VhWyW1CvhOH
 MkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ptDSkNNvQjDdl3nFcdxuQjfCtEwzKbJ3OmaY2YN6oTo=;
 b=MTf+2ylSIAI17ehzX1cmX+IU/BVxh2uMgbmFsDQtWU1SgfCsq419isoaIaCICLSxsv
 Yp8ouBwAw+WlCSns2KkuphrsrVT7r2jNxPxxJqGEBIr+m47VfSZeIixniEvRNLkpOS78
 TqHpvtFYZivdG9sQV6wPsBSAJ5ZGzebjokarbjIEiBIARBRBqI+IUtAyzpdhFo40yw8X
 hooJg50x7xsZG6Cg0slqdD8JVxy8J+3Hy8jjOkRtMuhwLYL/qVsqBLaDZDSZRnncNpae
 mDtn4XAU9GzwsrVDVvGdVqw/UMeuNMOdfCRCvvFiq80NtQqeidgP9HfTjko2aLmlvodA
 YssA==
X-Gm-Message-State: AOAM531dmnDZIePIMgmqIlzMpPPHo+QhzDBYuAxUo9BMlRLBtigDfJFf
 3g6Pk3hC4iTwq4Y+vnEnr9nCv65CnFJWXnph
X-Google-Smtp-Source: ABdhPJyj33zoYkSzcvzwT1pigmbVKPWXEH5A+xEDkKci/N66XnaVwpUcYVFP9zYCE/XgvzGKSH8UKw==
X-Received: by 2002:adf:decf:: with SMTP id i15mr28054162wrn.197.1625695351904; 
 Wed, 07 Jul 2021 15:02:31 -0700 (PDT)
Received: from gpdmax.. ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id t6sm178370wru.75.2021.07.07.15.02.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Jul 2021 15:02:31 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 00:02:12 +0200
Message-Id: <20210707220212.4808-3-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210707220212.4808-1-anisse@astier.eu>
References: <20210707220212.4808-1-anisse@astier.eu>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH RESEND 2/2] drm: Add orientation quirk for GPD
 Win Max
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
