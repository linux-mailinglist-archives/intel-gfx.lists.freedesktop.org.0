Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68785831C84
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 16:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0A310E85F;
	Thu, 18 Jan 2024 15:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB66210E853;
 Thu, 18 Jan 2024 15:29:05 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2ccae380df2so137759401fa.1; 
 Thu, 18 Jan 2024 07:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705591683; x=1706196483; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JrIOWj9YUHiF/hHk2O6R049ivCvXwljvABP5Y8cSNW8=;
 b=jK9bjHyuFt9shZd0mhCGWg+7dXqmB7XPLQ2r5Y2uQsPB8TpepBuVcWpS5tRTQCoDkp
 oODoOWF6kmEbaqfN+Hyex0HONlwiRMSMGz35ceOgi5uIQshriLIm9thRVEFFZgTl+EEr
 jpREowyp8dWTrFPZJ5o9TRsdvtzAF4mZykA3cXs/szuA+0Idq71WgkLiUhyuR5ETMZJe
 xI49YyHvKLdiLFWAcKZs5ijFHINpu4iRc2rB69RJ6Ty4bF0wjn4aOHN0QKUef4Ot5BsR
 CgsOMUgFDdl3imDL5jqrqiQKxFh1fin1LK39SboCSE13TQDZzrSS8b27ZcihabDyMyRs
 5J0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705591683; x=1706196483;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JrIOWj9YUHiF/hHk2O6R049ivCvXwljvABP5Y8cSNW8=;
 b=qT7f4XK/gymttRTXTfNlyL66r/WB+d6nFTBU0Mgs9k+mn8xGzEXsrMJT7deL7h2qGQ
 X9WCQ533TujbhBLew6ZoWDEwkSkrrmsXCRA48N6ldTfym7hXw9Wo7UoPBTtsdmh5eXFo
 g7TIr4o5M+jOS1Pj38srBFrcdbaakLZaYwtuxf/sEzb52vD5ICAT3LpcO1xOIIygfAWV
 WndhqwBMrq9EkpLzm2nInH5mlW1tj3mh0g0cB+i0cKj1SKd74SSG57UwW/diz3z6xQZp
 Mo818qLQtxPN8v/XtjVNncB17XVVC9Sily19dgceZor7uBk1dZT9Azc3Y0Kvqw70t0cy
 zm5Q==
X-Gm-Message-State: AOJu0Yxq2KFtRkhTWwRmBM3OM5WYnUZoXWbxZidb8M2yu/d8y/zyXEL0
 Ew9Y7LjOVIKZ3mpiHtCIy6PAFvJtuWR8/FBmsguVMKq2URn6e5SW5dVtIAKhJobt4g==
X-Google-Smtp-Source: AGHT+IEek35PMEAMry/UOT3qQL6u1dlcl2KMtiOYMh+9Xy0gbX4MGitxrY6M6dtE1yNWxwwnRdpvBQ==
X-Received: by 2002:a05:6512:3b92:b0:50e:7bf2:69 with SMTP id
 g18-20020a0565123b9200b0050e7bf20069mr718958lfv.94.1705591683515; 
 Thu, 18 Jan 2024 07:28:03 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:96ab:4869:ae6:2c8a])
 by smtp.gmail.com with ESMTPSA id
 z1-20020ac25de1000000b0050eea9541casm672737lfq.44.2024.01.18.07.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jan 2024 07:28:03 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/display: On Xe2 always enable decompression with
 tile4
Date: Thu, 18 Jan 2024 17:27:45 +0200
Message-Id: <20240118152745.162960-5-juhapekka.heikkila@gmail.com>
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

With Xe2 always treat tile4 as if it was using flat ccs.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 511dc1544854..43209909593f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -948,6 +948,11 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	if (DISPLAY_VER(dev_priv) == 13)
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
+	if (GRAPHICS_VER(dev_priv) >= 20 &&
+	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
+		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+	}
+
 	return plane_ctl;
 }
 
-- 
2.25.1

