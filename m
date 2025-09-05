Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E9BB45533
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 12:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1BF10EB84;
	Fri,  5 Sep 2025 10:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WzKqV0Jq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E795710EB82;
 Fri,  5 Sep 2025 10:46:56 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id
 98e67ed59e1d1-3277c603b83so1166385a91.2; 
 Fri, 05 Sep 2025 03:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757069216; x=1757674016; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lpYBYwwf4WiDVnIM4eFDNfB9tKknbKKQ64f7LwP8SP4=;
 b=WzKqV0JqepxxN4vx6SitNxrEJVaMtj+uV+uR+UcaFv4/IWDst7qvI0SunFLhwbuE7k
 kuRVvfGrFhqmDxpmKee761dSz6E+tz1mmhmpl/OP2K/+oEzOMXaWNysQPZ8aAQU3bEPs
 hrB1+w9+f5ZlI61U/ZKDd4VlEtw6/XUTp0AHbosW/ikkaUROWm3AaFV/A8Jil7rsifa4
 CJHe5/8I4yvz9sOqA1PwW5sWPPIQlreoEfNihy03xLzcronzjuIBofcYHUHmVSbZypjJ
 BC206YAPQPC+XbzbU8viGMMzFFIwO2jA0jSD/YaAjzcnX7wzg2BZz9ZO0y4AX3C8jh+Q
 17Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757069216; x=1757674016;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lpYBYwwf4WiDVnIM4eFDNfB9tKknbKKQ64f7LwP8SP4=;
 b=Nj4Kc1O54/Fzq2W6ijE4uN8WWPqkHzSoxCH2p0BBaMyrH4kik6nv6nHuMG2jgyv274
 jaHTsRN+wnARb8uhob0T6Vuh7Bc9xF1Rw2mO25962rZApScTD1NuZ6MXyUCI5ykW5Xnz
 qYzMPbcZ/Xdgz+O1G6DgDOnJDkdQHpBH5/esJz9M2k1uYMmOUZGb6up9ssCXf2xIx8gN
 YJaYIQrHRrRAf/EDGkqyVJT8V2YZvGwf7AUI00s5obw2DSP1zmyW2Z47t89ouru5GHdT
 wtTL92/Qs2gYM8PcHeHyUmgOFuC0u4yZKlkHhgtzpfgPVoolbZKtEo7w7YE/wxtHXrXq
 i6qg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV51hO0RQmgfDDQRrswIsCYywJnqGrPjefOXoqVu1kV6NcCWofym3epI0kbnljFK0vMXDpgF4OcLQ==@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzp/XPdCbvfbm38LZSmCMw9qJGRDj0B8DdZ9UkTD63qQ+rImBhd
 hY02b8C+47Gtb6E1zS/FpwVwPKwphaoEVkM4EdsPYX8xAHYlGOc9P5s6rmHp1/6j
X-Gm-Gg: ASbGncswcT8Dm7TL/r158sbW7FX7LBrVwiM29vi1ZiXKsrKOZvA4d7z1m0puZvwq0g1
 9QAjv3AMJbokbBDlQwj2MhAw6oOGqc+XNdEj9KF1+ZhME/axqmXhbAQJBmINzAJVQAjkJWGMQNA
 ThKOaTTGMYE0qqozweVwqlLw+V+0nTxoCT8T9IBfFngrRt9+NtbIUlNBH7Lbr627EPoTh+/6cUP
 r2BKUBPOyx+g6qLejNsbpGUncVk128amfJ+3zPECR2/W1nINcamOS1Vm67ALlWGqPmJAqImdrqm
 eqOF1iNUvIcARbdZrgaVA0Nl4xq5f8X48FVYJJxm3cUF2X1S54rZm0dhtoQUPFR1GLZCaH/xbt/
 brMyfXZOzKQPFLzmJ0bjJHXSjee3YQ1BITLBbcDGJ
X-Google-Smtp-Source: AGHT+IEydLBbQAXIjOok4NfIoly4pA3uJpu8op1cV/y2J6JLWErBaMLWdZnpAp9FT/+zBX7hXz04dQ==
X-Received: by 2002:a17:90b:39c4:b0:32c:923d:b832 with SMTP id
 98e67ed59e1d1-32c923db9bamr118932a91.23.1757069216102; 
 Fri, 05 Sep 2025 03:46:56 -0700 (PDT)
Received: from localhost ([134.134.137.72]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-329e1c8e07bsm10596405a91.4.2025.09.05.03.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Sep 2025 03:46:55 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Avoid divide by zero
Date: Fri,  5 Sep 2025 13:46:26 +0300
Message-ID: <20250905104626.1274147-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905104626.1274147-1-juhapekka.heikkila@gmail.com>
References: <20250905104626.1274147-1-juhapekka.heikkila@gmail.com>
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

skl_crtc_allocate_plane_ddb allow iter.data_rate to be zero
which could cause divide by zero in skl_allocate_plane_ddb,
check against that.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 33885d619a97..bfcd700b95e4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1388,7 +1388,7 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
 {
 	u16 size, extra = 0;
 
-	if (data_rate) {
+	if (data_rate && iter->data_rate) {
 		extra = min_t(u16, iter->size,
 			      DIV64_U64_ROUND_UP(iter->size * data_rate,
 						 iter->data_rate));
-- 
2.43.0

