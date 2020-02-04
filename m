Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4915179E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CDE6EE0B;
	Tue,  4 Feb 2020 09:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389316EE0E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:24 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z7so21896788wrl.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X+ka6J2u2GX7VG7etZF1QPdeRI+etyYaQpZFUPLPQmQ=;
 b=NxQ0bSd0qLztuLehfhhkS/RkuiNlTMrt4uMQqQE7sxm6ClVZUVbwV+NZV0It4ZDDeq
 pZGzjnZyUtQ2c+kmMzMv5s4MHZpTnnT4HTdsgK/TXHF1geBhm/L4Sk8ApP2cGxjhUnMs
 iq0DgWPLn2tr+blSjWP6I+tQcSnAMM19wnkExgXTSRyOyje3LSOZ3S83tt4nMngAH8PR
 2eXuyFL04JR9K3i1LLdIcKxJT9gQ7lIK+wKXivLt1wndCObZpSCGfKfP+yhU8XZavcN/
 hP8+qGRSxqsf7pGdOFXZ5KMGFgXXGtFcxhghMcP180dRCU8g6etoenkkxHZ4F9Xv6RSp
 jTgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X+ka6J2u2GX7VG7etZF1QPdeRI+etyYaQpZFUPLPQmQ=;
 b=BFutW5XD7wZVODcZTwuzCJDlopA2N1QS6VtkkEo8MNMPC5538Xteu4U9OwTcIhriXC
 TyisDNWu0kopBhmCOQQkzKuUencRIGfzohH37O6nEho0187/jlQB5bqtArZzBEYAjIyZ
 GwHZXfCk2Ua69X3fymCQtOLsD9anMhHtBKptRE4rBy8a/WO3XitR3q0IAZxZMvjCBSz0
 kxODIhyryJhyy2LUV7XvNYTuPucXy/Tjqns4hGYR2SORVHhfx9vG38/BDglBp2I0TOvD
 E5jyJ19+rT67pXV+/O/uU8sDbeBCtvjqmUtin+0sVT1o1/oPJPaITLk2u/vlQ8UDHfHD
 cSmg==
X-Gm-Message-State: APjAAAV+Hfar1HiXTZqAL5L+MLa8FilUvE6ghME1fl/W0ZnV2m5J3uM3
 1lkyKW7kYK0mPC++IMkZYL8=
X-Google-Smtp-Source: APXvYqxVMODa3AW0oFCH8GP53pQEPX6vmOeZD6/TlpH+I3B/YSRsT9I9uqqjYITcddmtDyT0V5fk3A==
X-Received: by 2002:a5d:4f89:: with SMTP id d9mr10378427wru.391.1580807962979; 
 Tue, 04 Feb 2020 01:19:22 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:22 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:47 +0300
Message-Id: <20200204091855.24259-5-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/color: conversion to drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initial conversion of the straightforward printk based logging macros to
the struct drm_device based logging macros in
i915/display/intel_color.c.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index b5d9ff56a8eb..8e79638202df 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1191,7 +1191,8 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 
 	/* C8 relies on its palette being stored in the legacy LUT */
 	if (crtc_state->c8_planes) {
-		DRM_DEBUG_KMS("C8 pixelformat requires the legacy LUT\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "C8 pixelformat requires the legacy LUT\n");
 		return -EINVAL;
 	}
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
