Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCF083E3AD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 22:09:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09B510FEB3;
	Fri, 26 Jan 2024 21:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CED10FEAB;
 Fri, 26 Jan 2024 21:09:31 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id
 2adb3069b0e04-5101cd91017so749653e87.2; 
 Fri, 26 Jan 2024 13:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706303309; x=1706908109; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=997N/5pYMdYJaH4SQ9jdWihdLblZTE/8nf4wQWZMfAY=;
 b=asCypLEWZ1jsUoqfP8aT+L1dgcsKRn7LNcKmaQy0jIxME0i8cUwth2THI46wp7ut2C
 85QzzymTgDpnkAnaMgT/u4m0p/qqYtXD7LW/Ee/ytll7EMqYiPmpz2d7MlBruC3imohl
 SHQKNkLzv5WQMJP3pZOtIFnrb4wWkcCQa7pJivx0Em131ocRT3JLgawaf5ksX8YQB6ZN
 QmlmieIs6/Zi3r/n7j11W8O2jDkTcirbnI2hBaQw5E5k1XoywXrLEfzJpYLXIIqu2Lnr
 t8w2E7Jj6tPdRulHcHk0ieM2ms/e8RVXt1CiI9ZwwbBL0otpKkRfzjg3nGWcj1R28UJw
 4now==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706303309; x=1706908109;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=997N/5pYMdYJaH4SQ9jdWihdLblZTE/8nf4wQWZMfAY=;
 b=Hs6/v5XmxLNDqy74Q7FSf9EFCSxhlICLvIZjtBbcN49e/m9StG2N+8GRET4hIWTxKH
 QM4T5VL8Ofwe0+Vbwg05iOrdncCp7Act/QBgNwr/n+Jc/2UEkVA3yu6wdNpgWYCn5Elq
 3ufxM54fmp4FYCDkZX+XxbNlur76VUryOxvhnGa4XE+/gOzd6kBCcVsnL8yvHuckxRHc
 PeFI8jOaG2c/2yE/zNDJimWow7vojZZc76bsNgN+zAdQleFoiAk2Z43QkLjzEN+7k/Aj
 LQs2ytLkrmUNzfNbN6dpyNySIumBXDX4MyQDDXla0lD4V9wInxXmYFrfFW/DQGppvSKu
 V5gQ==
X-Gm-Message-State: AOJu0Yzn7rL1lu5HIcA91xCvAipD4ZXb2fUwGljJVag3S/kXW1PKeUI0
 0G+ucbUjYUxjCRHiBlXot1AWavkWMB7lFUiE7Jv1CGny7RQhP2mmdmFwmSS5I/4=
X-Google-Smtp-Source: AGHT+IGbm3RWdfGsCm9OMJ8/K+Nlgo7c0NiQYlKiJ9ODaA8hrpvA1pbDdj//NTsItCkO3XCrV0Yq0w==
X-Received: by 2002:a05:6512:3ca1:b0:50e:609c:ab90 with SMTP id
 h33-20020a0565123ca100b0050e609cab90mr185399lfv.32.1706303309363; 
 Fri, 26 Jan 2024 13:08:29 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 t3-20020a192d43000000b00510218debaasm290479lft.35.2024.01.26.13.08.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 13:08:28 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/5] drm/xe: add bind time pat index to xe_bo structure
Date: Fri, 26 Jan 2024 23:08:04 +0200
Message-Id: <20240126210807.320671-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add BO bind time pat index member and framebuffer pin time pat index 
to xe_bo structure.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_bo_types.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
index 14ef13b7b421..ccf63058be66 100644
--- a/drivers/gpu/drm/xe/xe_bo_types.h
+++ b/drivers/gpu/drm/xe/xe_bo_types.h
@@ -91,6 +91,17 @@ struct xe_bo {
 
 	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
 		struct list_head vram_userfault_link;
+
+	/**
+	 * @pat_index: The pat index requested when bind this BO
+	 */
+	u16 pat_index;
+
+	/**
+	 * @pat_index_scanout: The pat index in use when pinning this BO
+	 * as framebuffer.
+	 */
+	u16 pat_index_scanout;
 };
 
 #define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
-- 
2.25.1

