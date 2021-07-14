Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163B93C8CE7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 21:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC916E4D2;
	Wed, 14 Jul 2021 19:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EB16E4D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 19:40:36 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id 141so5158025ljj.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 12:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bMEpkDktZ7hoyXFRMGUJBVFQpO3DDTb1mBblxM254NQ=;
 b=lxfYWzBPXY2ZA2JgIR5mH1CfmsYEONVpnQTcrgNcJZl1F3ZmIfaZPgBU6PDrOJlCNx
 hfPjjLH9c1G6mwErZKpbrEOd/tdJ6Lq2KTMe4Wkh9UeGjClMp091XNdjaLoOatJpCgC6
 1clrfBaKuJett9Ya+XuiWazDUnSB64hGX1WIP42larmZvJVfVnKUEQPt2CFS8kfT7XW/
 drYEAYyZbQdH/ZaOXiRaNBaOalVT0+gh6s8GqreEEx7G+zMiiWYMxazJ57RS2KiSfwxC
 D36rl/jj+7CRebioV2NIC0XUJUdaJnnEc6Why6bJ8thAAe5p7QSYxm0eT2W12U9kD4qF
 /+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bMEpkDktZ7hoyXFRMGUJBVFQpO3DDTb1mBblxM254NQ=;
 b=dD1rbeTYsDSHCAIHIZgNXc3j/YbhA3wMMiRlTmHSp7yG4eSnDU22gg2ZPo6j8pqTpy
 N23jb2WeF0/tTor0qjF7zjI6TI1sOye1zNAHvbM59EMQ8AuYrdx5rQP4/CI5Xm58j2Qu
 Iuazk7mf6GPaOLP6yFSob6re+lZUoNI0Da18dyi+cKgvtydL7WYAN0+jwsXVrNEjHNIF
 TZe5HtqANV2Xya29TTLc29aDVtKDjD0PpFV82fLTY+ex2O2vydZDhXZWDjJuzbIHkH25
 PLnDdQzMp9oD7WUWxZL1WWZKs042arr8WAyApxGlVbEkb18JmFoGWiJ4k68QhluwGhNG
 3S1Q==
X-Gm-Message-State: AOAM530qx/wgFoOZ00SHpfZvORSEipU9mydnSOhaGx+7nRwfekHgXXTx
 Pishkcp+2y1XLUxr9ZtBD1UJTknwpJAaevL1
X-Google-Smtp-Source: ABdhPJzUOmXCEnJ1MMTccmJnmQp0gYv7svZuFy576RQHd+/T/iBvRanZvJsaJXmGjyYTNNJusprT9A==
X-Received: by 2002:a2e:81c8:: with SMTP id s8mr10866469ljg.324.1626291635000; 
 Wed, 14 Jul 2021 12:40:35 -0700 (PDT)
Received: from localhost.localdomain (82-203-161-237.bb.dnainternet.fi.
 [82.203.161.237])
 by smtp.gmail.com with ESMTPSA id o22sm233284lfl.6.2021.07.14.12.40.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:40:34 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jul 2021 22:39:34 +0300
Message-Id: <20210714193934.32552-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix wm params for ccs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

skl_compute_wm_params() didn't take into account ccs modifiers
on graphics ver >= 12

v2 (Imre): Don't set rc_surface flag for mc ccs.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0cbb79452fcf..5a63920c3913 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5249,11 +5249,10 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 
 	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
 		      modifier == I915_FORMAT_MOD_Yf_TILED ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+		      is_ccs_modifier(modifier);
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
-	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+	wp->rc_surface = is_ccs_modifier(modifier) &&
+			 modifier != I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
