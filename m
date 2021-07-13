Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC813C76A5
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 20:44:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F00D6E110;
	Tue, 13 Jul 2021 18:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F906E10F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 18:44:33 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id r16so31475908ljk.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 11:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TdZS0Zt48vb/+X11TGSPmBT6LN5n+DfscRVfpFswHWQ=;
 b=A543tPhIehJXMihgTJrCWiuZExKcq6Xt+sABjXgs6eAjLDIJp/pV1mzBlk98f0OJ9/
 yiGhjBkp3lEfFzSSpQUdsD7jHM2danl8JVF3P8pi+QMcM0cyVf1kbzC6eaYPxg8C8jgY
 yKycvOopkTwUayrV0QQsCIfofS6ewG1W2AjHGF40hIWVG/kY6QIv4yYNkvKWzl2sLpmM
 jUs1yTf3dMLY09VelkWxz94gHtKkk6DGN8zfEdiwoXFYd0rzVotpTusJTxlM3UIYYSuQ
 EQsrcmjaTvAeuUmMoniqe0Pm3pb8KIBDjuXs78elxz1xTbLgTD/b41nPQYo8XyZWWjea
 Q9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TdZS0Zt48vb/+X11TGSPmBT6LN5n+DfscRVfpFswHWQ=;
 b=qM8FuyZPQFsLiVblHVXwoU5qV/6diJl6hfNAXys4ebVPDq3yzqtDvnbxpzy2xyAyBa
 qnJc1leB7n/L7pOmLFEuDL7q/dlAwH/k1vq6QC/FQn1Xhxsxk5jPeRrSpwZccipbjGrw
 94XuTuoSRb7WOy2dfB1SGqlCfLVTXVzbFigC4giiI56JgojgmmZP+WTleXarzSzAzGg8
 NJ/gA6RE+R1b2mG+bTHkUp5yP/9j8qmqECYhomG2OH3x3lexeESBE+9rbP+z04UN7HN0
 uNyaFGcn/0iltuRqfFCbeYFyABE4rsFdmh157N234oQWl0jtgAnqqb9zJP7gB25UuBO8
 hrrw==
X-Gm-Message-State: AOAM532LS0beVz+2k/yz6z0xvpeUF/VHVoOE7FYE/w5hmkC36xOF4MX/
 CEZ3UkC8zoFr16YexPvgp0ZpUBFapAzpUcsyy8E=
X-Google-Smtp-Source: ABdhPJx/lMFD8vP4cs/GozNCDlhOwcU9p8wjW7E94I9ZEw+onT460Q12Uj/xacz5LchThdyKc65zLg==
X-Received: by 2002:a2e:98d1:: with SMTP id s17mr5482495ljj.427.1626201871372; 
 Tue, 13 Jul 2021 11:44:31 -0700 (PDT)
Received: from localhost.localdomain (82-203-161-237.bb.dnainternet.fi.
 [82.203.161.237])
 by smtp.gmail.com with ESMTPSA id f25sm1411285lfs.288.2021.07.13.11.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 11:44:31 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 21:44:21 +0300
Message-Id: <20210713184421.9493-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix wm params for ccs
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

skl_compute_plane_wm_params() didn't take into account ccs
modifiers on graphics ver >= 12

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0cbb79452fcf..540a7ecbf004 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5249,11 +5249,9 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 
 	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
 		      modifier == I915_FORMAT_MOD_Yf_TILED ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+		      is_ccs_modifier(modifier);
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
-	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+	wp->rc_surface = is_ccs_modifier(modifier);
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
