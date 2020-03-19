Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2528918BF0C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 19:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2116EA52;
	Thu, 19 Mar 2020 18:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6771D6EA52
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 18:07:06 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id s13so3599007ljm.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 11:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cQuYmFPkKQMwauOoROmtRemqEZvC37zqvdYeTmKrxWo=;
 b=M1pgbLmRit2BEUc3vW/iJHJ1eYIwxYH41eU+wMLN5xtxlY6KQ/VG/s14pnO80bhqzb
 Z/9zHZ2eGH6OKwBgvoNUWAJ7w9YXLrcPXQ8ccr2fNqKuJHjZ4aDBhHuSDbcPzSrSnqtm
 KsnSxSBy+bgzyWU+EENJdngVKODACOHraV4iwGdTN5ufRk6QqnjSldepcgsIr7FbSMmC
 bLXF5BVT8UgB1LpvGQkSAyfQqXfXzuDQtMrzkBXu8drN+RVJoyqxSz14+wNcSnimdMwb
 IimIjvbkg4Sf/LPidlknZundlQp90YYio9jJCMp1wUClGuwcAtARDxi7aMAH+AZqKk1v
 TrCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cQuYmFPkKQMwauOoROmtRemqEZvC37zqvdYeTmKrxWo=;
 b=GTIjkm5ZFM6iMhu/ueBv+6vLJql1WBeQMx3lhxmzDtNzcLJ+cqZ5//FDZ5z9VXFp0b
 KIjX8klr8ue9S5dIYQYyxtLzxKIUX9fth27kdHZfX9EX26Iw1YhBL6feY1waL9CCCL2C
 dhLKB/MVgcSBItICQt+YGIcOFGiZpXnSxs6kvkn8gUdp5AeGyLjQ9C+ijRp2EF1VdQHj
 m5JG2lu2rlp7wZgy46W1ekxNdBdmTq0Tx046eAUO/ApQ3+5/wENa54/kLKAC4CxfOO1g
 rLsHx95C3EnMZ1kJZWruPXsxPCRiGmwcVNg/8ukyuovREPPZJ8XaXpFavtp/m00bSZGA
 cV6w==
X-Gm-Message-State: ANhLgQ1ZZ3y7dAkU09dEqrq6OHkJQJ0J4LAoE95JKVs/DksoN3wppkgX
 OnOV9wpN2DpRPSaRYcbWse9EiibNI/k=
X-Google-Smtp-Source: ADFU+vvRiuWSGLoPbBUsiwQ1SEaSiRBqEGkcqUtj7QtZWrs0VFfVShRX+yQjNP4TMuBfqu8b5cFfVg==
X-Received: by 2002:a2e:95da:: with SMTP id y26mr2913023ljh.101.1584641224356; 
 Thu, 19 Mar 2020 11:07:04 -0700 (PDT)
Received: from localhost.localdomain (mobile-access-b0485e-106.dhcp.inet.fi.
 [176.72.94.106])
 by smtp.gmail.com with ESMTPSA id y8sm1902066lfg.65.2020.03.19.11.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 11:07:03 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 20:06:58 +0200
Message-Id: <20200319180658.5667-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319180658.5667-1-juhapekka.heikkila@gmail.com>
References: <20200319180658.5667-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Allow gen11 to use over 32k long
 strides
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The stride in bytes must not exceed the size of 8K pixels.
Linear 64 bpp pixel format maximum stride in tiles is 1024
which would mean gen11 support 64k long stride.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 30 ++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index db80367c0dbc..d829c0be923e 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -383,16 +383,34 @@ skl_plane_max_stride(struct intel_plane *plane,
 		     unsigned int rotation)
 {
 	const struct drm_format_info *info = drm_format_info(pixel_format);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	int cpp = info->cpp[0];
+	int max_stride_bytes;
+
+	if (INTEL_GEN(dev_priv) >= 11) {
+		/*
+		 * The stride in bytes must not exceed the
+		 * size of 8K pixels. Linear 64 bpp pixel format
+		 * Maximum Stride in tiles = 1024
+		 * which would mean ICL support 64k long stride.
+		 * Linear modifier seems to not work with maximum length.
+		 */
+		if (modifier == DRM_FORMAT_MOD_LINEAR)
+			max_stride_bytes = 65536-64;
+		else
+			max_stride_bytes = 65536;
+	} else {
+		/*
+		 * "The stride in bytes must not exceed the
+		 * of the size of 8K pixels and 32K bytes."
+		 */
+		max_stride_bytes = 32768;
+	}
 
-	/*
-	 * "The stride in bytes must not exceed the
-	 * of the size of 8K pixels and 32K bytes."
-	 */
 	if (drm_rotation_90_or_270(rotation))
-		return min(8192, 32768 / cpp);
+		return min(8192, max_stride_bytes / cpp);
 	else
-		return min(8192 * cpp, 32768);
+		return min(8192 * cpp, max_stride_bytes);
 }
 
 static void
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
