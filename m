Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2E6842D07
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767AE1134BC;
	Tue, 30 Jan 2024 19:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F07E1134E8;
 Tue, 30 Jan 2024 19:38:10 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-2d04fb2f36bso24630691fa.2; 
 Tue, 30 Jan 2024 11:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706643428; x=1707248228; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rv71wG1vxBBHegMPvcinQkXyPZnFxEIY4+DX6mOVEto=;
 b=l3xtYiS99VSYubDwzXKgXqAphQm1qMQ+5EHMWyiaXvsXF5ghzBB5Bk+NBIjgr00i8U
 XpxnHFYnvC4jyQXJOc/Y9t4ddl2vD9x8tQ63stL2NF28fdV9Mi3PCetvZJfb5beOR+6K
 r4cHc3ZfRvfMyPLeEke20S5/J1/+tA5xD6tHiZfjNNJL5Bs9FCvf60Aktp4tw57ncy0c
 j59pEvKIZZVbNaohCcI/NLvqlUj90PwEXpaHtnrPDmbnBFKYKo2O1/tz69ehJQDkwrBt
 0ntmPpTYpQV8c/7pLw7waXuhXe4ceJmqUypVsd+vjfrz3Vko0cZalmW00j41n4Umbum5
 YSrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706643428; x=1707248228;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Rv71wG1vxBBHegMPvcinQkXyPZnFxEIY4+DX6mOVEto=;
 b=fCwxJu33kAhUC+GyTCxNizncjs5dzbDtLOF25NUvq/yonD40AC/ajsfzmH8lFHGNEX
 c4urhfVX2ur7t36FakVCpIzwya7XM9lf/xMLcpgK/DCBe3m3Gx+pd6wKi85w7SLfzJ26
 71S/3lDfOMHAXpPyG/vYq0kfwwVHjOibso7khyTSQWCIJ1wOiprhKkl9BdYsfjxJM5XK
 /hLgpLaCDgsxxFXZuD9StgfkxvPkdixA2jW9c6a9D5pMVbaYBsR4sSnJ5E3k55tS3dyi
 cwMsg6UEI7p2aCvtEkEubSuR23pLPn8D3SuBB8twRyJIQES5qjizJwbr/87cbpHwr0uv
 UClg==
X-Gm-Message-State: AOJu0YyVZZbpgeBU06DKiVVDGy160oJoIr7SJBjXqe8At964qlDMXodf
 +irEVRUhrd4GtclvGd5jjmlEIfa3KMT2wnhDDrmAuBU6P2e0J5a4H+HYGedRj4A=
X-Google-Smtp-Source: AGHT+IHN3EkqafQOQ+p8uxVACfrVQCH4uGqV7MRKE5WGgt+e4zMIRLSgM+aXgotOQIvQTq8fAVG80A==
X-Received: by 2002:ac2:596c:0:b0:510:c7c:5a6a with SMTP id
 h12-20020ac2596c000000b005100c7c5a6amr7611801lfp.61.1706643428379; 
 Tue, 30 Jan 2024 11:37:08 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 w30-20020a05651204de00b00510187749besm1558863lfq.80.2024.01.30.11.37.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 11:37:07 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/display: On Xe2 always enable decompression with
 tile4
Date: Tue, 30 Jan 2024 21:36:52 +0200
Message-Id: <20240130193652.374270-5-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
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
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
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

