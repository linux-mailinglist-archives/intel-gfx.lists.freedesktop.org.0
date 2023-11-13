Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6AE7EA4DA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 21:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF0F810E030;
	Mon, 13 Nov 2023 20:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 006B210E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 20:32:47 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-50797cf5b69so6649229e87.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 12:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699907565; x=1700512365; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MutsuCpenuicFq06ak/8gtO1clwyHI2FRXtRDHY5f/I=;
 b=VjeoldS4v++tBrES0XhiS/n70yZjMz3kh8+76mahQZtkotkck8pOvBLdQ6uvE9PGmY
 AMp8x/aU3oOyVY88wnRzZUlYBcszBcplspWVDqfSNGFHqy+BwmejfRLrWU08JyhRagnL
 FFu5D5MD8ZvmAK/T3uFEQNowBY1WLhnfvWx7Yq5xjGRvBecuELS9n6/+FlJSytqwINzg
 oAAMgtTVD0dHWmCO3oqfcu3oGECDgSp+4Bfrg7MGQ228Eo+i7GhP5MjQ9OKojkMI8jDw
 MJpPX/F1I7+qJ9ruZeOo9pz0h+jzXs8fmGWIxUtKKfwnl8jAhfpVPQosFwKxuHWyN6MC
 wnjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699907565; x=1700512365;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MutsuCpenuicFq06ak/8gtO1clwyHI2FRXtRDHY5f/I=;
 b=nIsP6XJUOrUKsIuiLh0RirO30t7pcZiyWECeCUT7odg6a3nUkuj5vh/tXVM+hVkWX1
 ZPxsi37n5vaCDITeI1YnK3Dt9IhvYDBYNfQwDt+yMMgyl/3J5oiX+M0Hl0JgcL9COmlC
 Fx4Wb90Yl/1pDjWr+FHLklpXXqe923wqr4sT/DnkrR1Zzf/wA6BEi3bZCflbUVws2LXq
 BTWJ4GPFRNPOiQmJV5Jcd0Qq4iy0WD/8QeJz/as+g2s/s6NRx6fv414y5RkhX3xkzr30
 MU7gjDdcuED8HQsJgRBpbOPHsq7m2f3qjLQPVRPz1VfbRRMpLY3mJxdFQMS7KWLTEozW
 0uMg==
X-Gm-Message-State: AOJu0YzkRxjy/k3Jgrpe0h4jcgKKydYSAP87e2KKYiv9FXD39d7L8kfF
 G5t6sb9zHJRcldZ/qO37q8Dihrc/VGGdDQ==
X-Google-Smtp-Source: AGHT+IGoGO/zPYx2/0RzatqUOy69Rpn+BBVi8El1hQ0+Jrno0sSGnEgzTpJI302COuXkTeJNJqPvLA==
X-Received: by 2002:a05:6512:3885:b0:503:7dd:7ebd with SMTP id
 n5-20020a056512388500b0050307dd7ebdmr4870504lft.24.1699907565505; 
 Mon, 13 Nov 2023 12:32:45 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 c26-20020a19761a000000b0050422588213sm1082521lff.209.2023.11.13.12.32.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Nov 2023 12:32:45 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 22:32:38 +0200
Message-Id: <20231113203239.128207-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231113203239.128207-1-juhapekka.heikkila@gmail.com>
References: <20231113203239.128207-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: in skl_surf_address check
 for dpt-vma
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

touch dpt_vma->node only if dpt-vma is not NULL

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 39499a0ec6c0..f5c77a018e10 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1006,7 +1006,8 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 		 * The DPT object contains only one vma, so the VMA's offset
 		 * within the DPT is always 0.
 		 */
-		drm_WARN_ON(&i915->drm, plane_state->dpt_vma->node.start);
+		drm_WARN_ON(&i915->drm, plane_state->dpt_vma &&
+			    plane_state->dpt_vma->node.start);
 		drm_WARN_ON(&i915->drm, offset & 0x1fffff);
 		return offset >> 9;
 	} else {
-- 
2.25.1

