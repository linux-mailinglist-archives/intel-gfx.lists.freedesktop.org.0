Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E51848BD4ED
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0781F112333;
	Mon,  6 May 2024 18:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cS2NcB31";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BD011232D;
 Mon,  6 May 2024 18:52:54 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2e1fa2ff499so37491531fa.0; 
 Mon, 06 May 2024 11:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715021572; x=1715626372; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fRXEcplgXHgSpH5z+bBD/blQQXeujxGo3RqCtUdelJk=;
 b=cS2NcB31btTX91XhfrbSY3bAjWbipSbVhlSDz0FiIUVWBRM33QFq67tcfPZwt1IVLx
 +6tzF69SIjYW8t2uxF8CPUbF6HdLgUZv6G9T9MO2tcvAP3OZTJAf8ruVYmT035bQTnDW
 o8Gd/0FyAiKnkXx2Km/2YOJuCBnvPk6XegInIVx03MieTlnYQOkEClSWf6vwJMEEU95v
 8wqNv9OGGEoqVyCBRdRFcAGw0n+gDFD0WIeOPn2af53QIvm5ECeWfY0/TGoe7DbnE0K6
 K4XMc733efjyMtHbM8kVSe7qIl7KZmtfepRrafQueO+/Af/ACMRkpC2vnaAYYjJZTZhr
 F01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715021572; x=1715626372;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fRXEcplgXHgSpH5z+bBD/blQQXeujxGo3RqCtUdelJk=;
 b=iuVrC2SUtulHlPdSW8o0tHo+yA5QxxgUWNoqXfvkl2NhW05xQdtBGTjfJSHQMq1EC8
 +in43l8EnJsKwOfh6JIo9X8AMmf77gl+dfoEajQRew5c9qJSDmZfpkma5TWsniRAmMua
 1sY+HPQLGD43ngu07K/pMpxeg9tICSwhC92THiZA1pjsPBaQwxCRzo4bgXQc7eVJcKm0
 t+iMLmy7kvfe/XQ5KR+lzqfGlvKSuaiVNHOtiq6cSHA9gVf4k2o7NdfMPkbRxbX5jcR+
 BheMjSLJHbajIirCrtxWZNKMstwMJBWv7wfopYtVZdca1l4FGOL72wMUV/zztYqd659x
 51YQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeBFvgJkzIl3vV3S4JGjx0v/2FAj3UCxlX0KZd8IgZFIYrbeqKeZSl22b+cYjkTLXCQboXa/+ngIvH9XT45k/2SDE5MyIZ9fyOzNqi/D61
X-Gm-Message-State: AOJu0YzKT+J5yhTVzc/p8Fu/zc1tdxrGPhWBBoAzimAzJ1gG2+Eki43l
 IFKEpcKNletCdI1Q0VXSqtCxc+NBA6KqujQ1cmUUX6/+qiyRa1ZzYjDmE4mXodYj+w==
X-Google-Smtp-Source: AGHT+IG+eLoQxjHL5rqIdZuTdCIdf1XrSpVk82iWIL+Ty5Lpt7up5uh8Xqv+qJ14yz5nP9zkyWUKaQ==
X-Received: by 2002:a2e:908d:0:b0:2dd:6235:a5ec with SMTP id
 l13-20020a2e908d000000b002dd6235a5ecmr156594ljg.17.1715021571787; 
 Mon, 06 May 2024 11:52:51 -0700 (PDT)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 c11-20020a05651c014b00b002dcdeb98653sm1673945ljd.8.2024.05.06.11.52.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 May 2024 11:52:50 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: [RFC PATCH 2/3] drm/xe/display: allow creation of case
 I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
Date: Mon,  6 May 2024 21:52:37 +0300
Message-Id: <20240506185238.364539-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
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

Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer
on Xe driver.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 9693c56d386b..59adcd15eb31 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -145,6 +145,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	case I915_FORMAT_MOD_X_TILED:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_4_TILED:
+	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
 		break;
 	default:
 		drm_dbg(&dev_priv->drm,
-- 
2.43.2

