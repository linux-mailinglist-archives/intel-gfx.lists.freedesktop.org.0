Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6E682EEEC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEA010E555;
	Tue, 16 Jan 2024 12:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CC810E4C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 18:11:23 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-40d6b4e2945so38967225e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 10:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704823882; x=1705428682; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j5TmlSqr2R0DSFOwP1jgxjjJC7p4LGOYCLeSujiTr2s=;
 b=NKCsu7OQaYqUVnTtK0YHAPYDu4Zx1rUDr03LvnGrqVfiWy0XI0IXRt3ilgiesLbrqs
 atlDRzuImJT0yj/l6kTfscl/DavmYRudG3qBy9aQoCGvuEzFPnSiC1JWuLXr6DB0LD1s
 t9DQEoYbTVA5tOGG2SO/8TP0uvL346AI9h2y0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704823882; x=1705428682;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=j5TmlSqr2R0DSFOwP1jgxjjJC7p4LGOYCLeSujiTr2s=;
 b=Sz8LSV1STR92cV55/SWpqv+nDFZdJGRIkHOhKAywNrGHZdw7OhpeUrjU3hgcxBmUvB
 PioyiofmjMzR49B9icfLA73WuHEvoZcxt+5HKuHprbeGFqUczlKjQ8ooq1RfWoeHst9U
 kOBEgTPGa/YffHvsLxv1+nMAhpTl8CvTEBQrOtPwaeG5YDtW6lghfecBwBm0ZUh2yHdJ
 E2RjgwKHBQPr+RYBo5+WfsYx3HtVMdvzQiMksYkyIb1daXs8FHsNi1SNZnRvvUfD6ePe
 fMA+nJ+Vaa38B19L4EK86x5IBkl+2eZiO+DCneepTI80ITQvGn2XWBi8MbFj4FFEYHf0
 39PQ==
X-Gm-Message-State: AOJu0YypdV4RKrqqlb9rO6Y3HxgLY/5uupm3MRF5DD8AYs8po7IVB2NB
 3UeHHOP1Mayvdp1ceNA6N4/lhbeWqNa2TQ==
X-Google-Smtp-Source: AGHT+IE8mUwmBNyBZAX/TyOCIvUTmkvOp0uvsitYL/5KGkF2V5MZ5MAl58F6Q1VC6O24Tg7pMyScTA==
X-Received: by 2002:a05:600c:468b:b0:40d:8909:b3a3 with SMTP id
 p11-20020a05600c468b00b0040d8909b3a3mr2205592wmo.20.1704823881662; 
 Tue, 09 Jan 2024 10:11:21 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 n25-20020a05600c3b9900b0040e527602c8sm2104579wms.9.2024.01.09.10.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jan 2024 10:11:21 -0800 (PST)
From: Andri Yngvason <andri@yngvason.is>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 1/7] drm/amd/display: Remove unnecessary
 SIGNAL_TYPE_HDMI_TYPE_A check
Date: Tue,  9 Jan 2024 18:10:58 +0000
Message-ID: <20240109181104.1670304-2-andri@yngvason.is>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109181104.1670304-1-andri@yngvason.is>
References: <20240109181104.1670304-1-andri@yngvason.is>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Jan 2024 12:28:11 +0000
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
Cc: amd-gfx@lists.freedesktop.org, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andri Yngvason <andri@yngvason.is>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Werner Sembach <wse@tuxedocomputers.com>

Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check that was performed in the
drm_mode_is_420_only() case, but not in the drm_mode_is_420_also() &&
force_yuv420_output case.

Without further knowledge if YCbCr 4:2:0 is supported outside of HDMI,
there is no reason to use RGB when the display
reports drm_mode_is_420_only() even on a non HDMI connection.

This patch also moves both checks in the same if-case. This  eliminates an
extra else-if-case.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Tested-by: Andri Yngvason <andri@yngvason.is>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index c8c00c2a5224a..10e041a3b2545 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -5524,10 +5524,7 @@ static void fill_stream_properties_from_drm_display_mode(
 	timing_out->v_border_bottom = 0;
 	/* TODO: un-hardcode */
 	if (drm_mode_is_420_only(info, mode_in)
-			&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)
-		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
-	else if (drm_mode_is_420_also(info, mode_in)
-			&& aconnector->force_yuv420_output)
+			|| (drm_mode_is_420_also(info, mode_in) && aconnector->force_yuv420_output))
 		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
 	else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR444)
 			&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)
-- 
2.43.0

