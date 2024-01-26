Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1037183E3AE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 22:10:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A842C10FEB2;
	Fri, 26 Jan 2024 21:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B737E10FEB0;
 Fri, 26 Jan 2024 21:09:33 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-5100fd7f71dso1856249e87.1; 
 Fri, 26 Jan 2024 13:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706303312; x=1706908112; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rv71wG1vxBBHegMPvcinQkXyPZnFxEIY4+DX6mOVEto=;
 b=XS1oyS/TyuKXa5a9YfxRLmXMuaoNdp8NlMayGJI8gYsnrZCr6UpGsVFOw8trw741Fr
 IlKjObaYQ0ZrzNCJIl7/zpHvPTdwkUaGO4tEsd/DBmlWX8aI0I0BPA8GLUnb0TqVNn0b
 DNpG1vtG6u1GR8fhtPv84tVTHd5TSHQD+VDfWqIJ5YHaRWEJzi1o/Ie3tmkshBlHgV6x
 Q2cexVD+LYwdMFHK5QO+HFZ0HissMX+UxDhOr9rDTQFa4+R6zoJ4HseenVwdVvgMNBhG
 sqSFm2CnECxz4opJa8H5IpIuHGjPBVgNfflm+XxGwcEGCTz1S1Qv+qOJYbLjRy4Zo8BI
 LOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706303312; x=1706908112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Rv71wG1vxBBHegMPvcinQkXyPZnFxEIY4+DX6mOVEto=;
 b=bvi2O/Zp5v5ZwtP7CRwkTLcwAt/BH49Y6mqiXp2ik0bgQU9v0ND/Mzzrqh2/koXhjX
 35ixJyKInq4+fLzmgUmxUQjEyLfbEc0uooV9zxku04r7qRoqCO82FRmM6BIGbIx3b2Ku
 Rl40NqoWGJI64rGH7peWEiB2uRv1qJvsLOeMUsDXskrscKHPP631HO8CXtXycHTQr+uD
 1p2MvykSGb4VLdyUGbWDOiiyCj4F1k6VUfhzkJKzuw8TCPHnft2oHZSNphJDkNmSDUe5
 zQ+DfReEbY7trqUq056TMVb7tf2qdcuKquy96zGrkJ3U+Xp72BNwudMbieRXO3JjkVoi
 ns6Q==
X-Gm-Message-State: AOJu0YxpbDq5eKmmCvzCvuhwhfW+Y9ar2w7GidwVkJXvpca1jRvPgub9
 Yvjj3WDFFZFSNVCg2pYMx8zGYMFVjiHFwtzNENyyOUyEGtiVR+DW4e7i94iBX/Q=
X-Google-Smtp-Source: AGHT+IFVSgm+9SBXaqKuSkez28bVk2gY1wmI1oxXWA1lWUlp0Rv56UGLikbodukmSFcyJMGfKKIMWQ==
X-Received: by 2002:ac2:554a:0:b0:510:1840:336c with SMTP id
 l10-20020ac2554a000000b005101840336cmr196188lfk.52.1706303311664; 
 Fri, 26 Jan 2024 13:08:31 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 t3-20020a192d43000000b00510218debaasm290479lft.35.2024.01.26.13.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 13:08:31 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/display: On Xe2 always enable decompression with
 tile4
Date: Fri, 26 Jan 2024 23:08:07 +0200
Message-Id: <20240126210807.320671-6-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
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

