Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B17CB2DDC5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 15:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375D210E736;
	Wed, 20 Aug 2025 13:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nN8M/ZQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45DA10E73A;
 Wed, 20 Aug 2025 13:29:40 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id
 d2e1a72fcca58-76e2e89e89fso8327101b3a.1; 
 Wed, 20 Aug 2025 06:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755696580; x=1756301380; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=nJ1bmQPG66SQmnl4zbZunJAER0fGsvMaMpIoT7dNYHw=;
 b=nN8M/ZQQ3cFqTGtezq6Z2cslhP3UwDKpzsYbTRv8DnzyYB0ylkjejuYpULEsiq9Gt3
 G1L6fyNQozss+mTgtfDR8OzTyGWMn912OofaxfVxPOzfAq9bfHmG0nFx12q61QeRyGeB
 f/9Oi5Th7poR0JRuI2I+LveAarZlDzvCsPPodnbQXJOXXd6owMr2GLLdV8rLLiBoZatN
 UfFyxlFIiKDHMUNYseejsbPaAKqs/y8nrgr2Tzg03uhPpQVKdS3hBXOtwb/DMUeS50aH
 K5dpirlEx/mqNoDDJw0aN6cmI/ydWT9wJQLomYTp6Ldpv3+45UCtRhaK05PwRoQoYDtb
 CU9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755696580; x=1756301380;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nJ1bmQPG66SQmnl4zbZunJAER0fGsvMaMpIoT7dNYHw=;
 b=HVkzLmSOTiQ0OUsH+1WOLGwCVaAU/IHG0Pibe+IanhNvRh8F0fBTK5MR8wFyS/Lco/
 WPvJtuCaWDoCOJ7SxH0b+5yH0lz9FKkRhCEOm8C913d7vTmIcjKllvgXSQtrAFEQc904
 n0hK7y4hDTZfUGOnpgvL/88oo6pVd/8fVO0HQL0I9TS/C5Rqq/zsIHbJL2ctt1HI6s7P
 Ltiydw4JyJlr5NaoZvCSFXObCt9Q5X65FQBGoqGddmxowWgIlYbg5/tLokMThSCAiWC+
 ad01HnTq0IESHvK2tIYY22m67yf9oACBLqFVEPcazsZ+tK087DjIfSQk7B2ZhMjff7Jq
 uCEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLMdk8ehpLA0oYLYBDkG8fNUD1UgjSIR7O67M1qyahCO3rjxrZ1whWBIG2p9xHvNOYrGMzf9A2Yg==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyIjhGfQx7jyL21L/8BVWygD6y12eZq5AlTpBMHymPL0x19LAAL
 e87iNBx2c85NJW5YLnPFjdqL2fsUZPu3f9oeWbenFTk0azaFd2NztKBJ/nIPtR0x
X-Gm-Gg: ASbGncvG750Q9TVMGGngiH1/cuthBUGaTOey5AzG7DO4WyZ7ZLu8sqS+jtbV+l/1UT+
 /88DG11A+QdKoOzK4jTKqrzXZWYEOU43ABwIBHoE2bo+bUEQTEzwNSMVJ3e3JdtXI0qW3uhsdK6
 vsovwWlywv1q4MPcOlNNHDiISnljUBCvYY7c5pO9gjTIkFt6HWV4bN5JOVyY5jBmt0R0vU7zplo
 m/aWjoCxMcGxJO4dhW3HgEWuQIqm/j0Vw/pZtYuv3Wlm4y2XWhYZftIcZOL00MvoIAfOQMRTx5j
 GfClvmvGRAI6Fjn7Y8KFModAW7TuWBB+snBN0ueP5NUTZs/rdlDtDC1tdEz+Oc4T5U6ssQ4MyIO
 k0/au76uZhm0IIQNniugdaJl0ToVvlA==
X-Google-Smtp-Source: AGHT+IHZEwtsCKMSWVVVka2GZcyItp6uxl7iUIC18s8c6J9C1V8SLM+KydfsXzTnV7QIqSPNVyHiXg==
X-Received: by 2002:a05:6a21:3391:b0:232:fcfc:7209 with SMTP id
 adf61e73a8af0-2431b90665cmr4053265637.35.1755696579759; 
 Wed, 20 Aug 2025 06:29:39 -0700 (PDT)
Received: from localhost ([134.134.137.78]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b47640d509bsm2380312a12.55.2025.08.20.06.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 06:29:39 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: Avoid divide by zero
Date: Wed, 20 Aug 2025 16:29:13 +0300
Message-ID: <20250820132913.496505-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
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
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index def5150231a4..403783504ab3 100644
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

