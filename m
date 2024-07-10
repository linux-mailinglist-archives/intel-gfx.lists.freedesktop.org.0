Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7E892D2D8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 15:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE2010E002;
	Wed, 10 Jul 2024 13:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=toblux-com.20230601.gappssmtp.com header.i=@toblux-com.20230601.gappssmtp.com header.b="ofri7lUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83CF10E6A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 07:48:56 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-52e976208f8so6603088e87.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 00:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toblux-com.20230601.gappssmtp.com; s=20230601; t=1720597735; x=1721202535;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=GNsDfIDnf4EzGjKDdcme11QFsKS3nMXn+3RFV1TKwBQ=;
 b=ofri7lUb/qIiVgnFnRxitDCn4mkG7ceRAVdwEPP6om/RistzwHEXRyJp2xM85ZHa6K
 aoS2jPHfBPRS2aAjklmTmClrOkQZuU6OhDZSQmlxBwUOvYuCs2rDkX7QWSPGruo1HJDB
 SqcNLQebU/y/qi54T+nCy02hNSdS8EAuIdF9Y0a4qzmf8l2eBTbAmTm5Ktwb692oMb85
 +6obYfbG1WRQDav2jorrLHzK8aN2o+XFiSR8P7SId+yo07JJZdOCp18lrfP7wFZQRgBB
 kKrRZC/0IxR2dzrOOFdSLDColgRd42qJiYJdk8UePnT8TYAA392MGk2u9z1zJhq6Y+Ri
 WjtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720597735; x=1721202535;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GNsDfIDnf4EzGjKDdcme11QFsKS3nMXn+3RFV1TKwBQ=;
 b=cYV6vMTHKr+1B4SUDje0dBJeTEG1WdHwLjwU4w7uPEgX1/9R3ROQ6F/Z/RfEyzp8nl
 OoeK20t98hsZnI1bCEra9uoBaA/zl+A4mqJiEChNLXHz+LRAeVXRlSI17JbmRk6WSY9H
 wdLbHERXMXkCCLRA//MjGoLsLVQPA/iYuEeNptE8fUuH3DO4Y0Dy6HLGsjlezj1nRaO+
 g+42unvrl1l9oQZUYsJXo8A9P8Y4A2hJmaRWrikNsbiahCb4SIhWjXjCwaUtmStjJuWQ
 CZ3W2ZaUMeOZvdHTVtmxEQUTz5xPO4i3h91BrMNffiCHsBwiJY+8wEfnI4+cG8lQTyLt
 b1tQ==
X-Gm-Message-State: AOJu0Yw7EvQxvfu0rnLsWgma7cXbwOdqffbHQ4ABiJLf1LLCK5tPJfZ3
 36BbPsSB/CSFAhmeWZFpff5TAq6Zbs9U3scwKlOsF+uab7CT3OGYy8wkfDMpizg=
X-Google-Smtp-Source: AGHT+IG80H6A817GZXvHI9egaLq2gNkzKl5Ws5DDQve3aWxctuque2YrycdsMJ8ERJDon1+bu1hJ2w==
X-Received: by 2002:ac2:5544:0:b0:52c:db0a:a550 with SMTP id
 2adb3069b0e04-52eb99d2025mr2795508e87.42.1720597734730; 
 Wed, 10 Jul 2024 00:48:54 -0700 (PDT)
Received: from fedora.fritz.box (aftr-82-135-80-26.dynamic.mnet-online.de.
 [82.135.80.26]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-367cdfa06absm4537414f8f.80.2024.07.10.00.48.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jul 2024 00:48:54 -0700 (PDT)
From: Thorsten Blum <thorsten.blum@toblux.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thorsten Blum <thorsten.blum@toblux.com>
Subject: [PATCH] drm/i915: Explicitly cast divisor to fix Coccinelle warning
Date: Wed, 10 Jul 2024 09:46:51 +0200
Message-ID: <20240710074650.419902-2-thorsten.blum@toblux.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 10 Jul 2024 13:32:05 +0000
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

As the comment explains, the if check ensures that the divisor oa_period
is a u32. Explicitly cast oa_period to u32 to remove the following
Coccinelle/coccicheck warning reported by do_div.cocci:

  WARNING: do_div() does a 64-by-32 division, please consider using div64_u64 instead

Signed-off-by: Thorsten Blum <thorsten.blum@toblux.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0b1cd4c7a525..24722e758aaf 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4103,7 +4103,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			 */
 			if (oa_period <= NSEC_PER_SEC) {
 				u64 tmp = NSEC_PER_SEC;
-				do_div(tmp, oa_period);
+				do_div(tmp, (u32)oa_period);
 				oa_freq_hz = tmp;
 			} else
 				oa_freq_hz = 0;
-- 
2.45.2

