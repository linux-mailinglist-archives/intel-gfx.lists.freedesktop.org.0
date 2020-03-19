Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F20618C13B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 21:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0112A6EA61;
	Thu, 19 Mar 2020 20:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CD06EA61
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 20:22:05 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id 19so4017791ljj.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 13:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cQuYmFPkKQMwauOoROmtRemqEZvC37zqvdYeTmKrxWo=;
 b=La4oF7L4tKbJZx35h4gwSQl3uiZqCRys4v5jSPKL5TrlFuIDdJGVazxT1dEO+0SU2Y
 yBLSko4oineiHxwwssTu/5r4ouSj3uptAWL0nYt7jElHAnjXiTptF+B5bKYIfRTh5yFA
 7aJTLZH8CSvw31HizsDQMPFYKwWg7S3Ff8tFPsscz5rTjt1QUpf36KQOW94ucw/E27KY
 Y6OEedsedn2JedziT9n7Zj9yL7sopEw+jVcDi2rYAzvDbvGargRXyIlhpbvX/kqszCsO
 FC3t58k5slwhZOsvRTA0fD5VzEeUX7Xtd3rlYeQP5hW/ylwymNqWeQMbWlPEc5VrSXbQ
 UIuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cQuYmFPkKQMwauOoROmtRemqEZvC37zqvdYeTmKrxWo=;
 b=U3cGYzcxacXHZyipxtlACNJDGXlHXS5XtrBtmCe+/JyRaqUZaW360XBmsgFJhfHhyO
 qZ4C5Xtuhrls6ZweENu0vSQSQGbwfliuB8TKWxZjlZEx+4n8TDTo6vc2L8V8lkAfp0VO
 Up708AegZv7Op5TBqHUHEP3gPyBZS+boXwZa6a8uy4KIS6UEQg+MS7jou8KiNBHlgwXl
 ebsAkbhpAl26ALpWzpX0wdNMrW4DLlySOuvbdEfxHvU4hH6TPQruCkW/fPqTIJvaDVyi
 cQUS8qt7a9E4LvUfsifY9W6Utmkw3TIooC2mgMTfb8fM2yaCNj8oxrX6aUDHt3C3NMSl
 +0tQ==
X-Gm-Message-State: ANhLgQ0BRomRz17ntKlVlRXVzv/Yw5kUavz/cI9wH/pFUoqh9bJDpUd4
 0TzHiUSXT/QLmsX8lbxbi3mvlN9sis8=
X-Google-Smtp-Source: ADFU+vvp2weI3PxuJKTC0xu2X/CFixuArsbMRjXeswdQbrAQDLm22PnUUwj5yHoKIzRe2ol23Tv8Cg==
X-Received: by 2002:a2e:90da:: with SMTP id o26mr3309235ljg.254.1584649323768; 
 Thu, 19 Mar 2020 13:22:03 -0700 (PDT)
Received: from localhost.localdomain (mobile-access-b0485e-106.dhcp.inet.fi.
 [176.72.94.106])
 by smtp.gmail.com with ESMTPSA id p27sm2414203lfo.63.2020.03.19.13.22.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 13:22:03 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 22:21:48 +0200
Message-Id: <20200319202148.8879-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
References: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
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
