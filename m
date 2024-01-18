Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F956831C81
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 16:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C101210E86F;
	Thu, 18 Jan 2024 15:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA17E10E0A8;
 Thu, 18 Jan 2024 15:29:03 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-50ed808db11so10214295e87.2; 
 Thu, 18 Jan 2024 07:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705591682; x=1706196482; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kbg/2s6dARrDFqeQP36XPl3vbixhpkjdsLGIY3RBk+E=;
 b=R7d2puDYn+hNaVLdPaghE73E598zi/0cCPD4NoLC9qaj9ZPp1fedCX+q7gouhypiFr
 W73TReElmwIOdoeDXFfaWWq20kx1JWro8VGvQ0KzMeq0YTEJQPqJs9DmpmVRRI3f3HDs
 5thejNwIhBN5XPevcsLYpR+fXs2rMwZ0tmjqwjGN9v5PRzmbJnfUG9+vKSc21GYXVJD1
 zMBoB1KCUa+jP3Tpsgl0ViVuYIeppuCzxBiyP+Ka+ZZ9efCP/kv7bEgb9TYqyEuciBfQ
 sUSv59MVb+HVpCUwhHzONfbOwfLaKmjCXDiavh6g55dnRrgRNdRe1pbghlrFw58syzyS
 zBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705591682; x=1706196482;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kbg/2s6dARrDFqeQP36XPl3vbixhpkjdsLGIY3RBk+E=;
 b=nks8q5Cn4LLrLdWmHR26Cm2o1bg2NvSDvr8wriF/q+ujK+SUptHpSoS1mhUj6QBViP
 Mn3MFI9l+vvjA7RQ+1UW4Q4yzU2FAo029pLSnMnSx8PoAhTv9DDwicRyG33khd3qBvy+
 4HRVQPtI6wJlPHAwjEJqsUjzjOhtz5ohXlE+nYbXxaHy+7iCpsAdd8UtW1WcryNS6CI8
 QK98tvKRTHdsWU3onX4F78tUiIQQ92K+AgZ7FOfL07c1xXP0G/WwbrScNq2A72EUKQ2l
 pawBnyF+cIvTUDomHtEXHkV5VCnSRfRBBSrOdU/91VaHuTdwUkAldZH2PKS0wKWKGisA
 C2XQ==
X-Gm-Message-State: AOJu0YxcbL6A2990L+Di8k2RdeUge+wlxYPZqiZ0Nva7FtQ19rTr14Iq
 /rh8ARof8/nqnCUasxoMTxO0+xDIQ4tjAkwfvHZf9uX+t/N5m3ipU9I4zKh0uuIVow==
X-Google-Smtp-Source: AGHT+IHXqVmztgiK36b18k/0MwemHZyc1nWb5V6xAfovJkgXYeAjZsJ3tnHa7Vi0cGeH+XwL+O42og==
X-Received: by 2002:a19:5f45:0:b0:50e:b1b1:430c with SMTP id
 a5-20020a195f45000000b0050eb1b1430cmr614436lfj.116.1705591681419; 
 Thu, 18 Jan 2024 07:28:01 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:96ab:4869:ae6:2c8a])
 by smtp.gmail.com with ESMTPSA id
 z1-20020ac25de1000000b0050eea9541casm672737lfq.44.2024.01.18.07.28.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jan 2024 07:28:01 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/xe: add bind time pat index to xe_bo structure
Date: Thu, 18 Jan 2024 17:27:42 +0200
Message-Id: <20240118152745.162960-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
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

Add BO bind time pat index member to xe_bo structure

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_bo_types.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
index 14ef13b7b421..1825bf013dd0 100644
--- a/drivers/gpu/drm/xe/xe_bo_types.h
+++ b/drivers/gpu/drm/xe/xe_bo_types.h
@@ -91,6 +91,12 @@ struct xe_bo {
 
 	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
 		struct list_head vram_userfault_link;
+
+	/**
+	 * @pat_index: The pat index requested when bind this BO
+	 */
+	u16 pat_index;
+
 };
 
 #define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
-- 
2.25.1

