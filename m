Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC0B7C7499
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 19:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56CA10E583;
	Thu, 12 Oct 2023 17:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1708710E574;
 Thu, 12 Oct 2023 17:22:15 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id
 e9e14a558f8ab-3513c435465so2985785ab.0; 
 Thu, 12 Oct 2023 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697131334; x=1697736134; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3SAgGhvFgEq3ojom6jJPWJ2MyF/faZd9tWGs5HOFcQQ=;
 b=mLc7jJWoHoBHf1eJZK0JV/voXui+ztrSDU36UzjMWJ5Z8TwAsXoDhW3kI81FqY48lg
 ZnqIXwMs/VWlJHmiPUhcYFZs0xAHxzex0ZhTq9LRYqLEwchFg9P/NyKKFbSF2sREz3zc
 8jFxNpkOflEC38kGpUSmk1cT/D3m7+YIhCiEfiUh1T9CJ5uWpRPz6oVw05vM/IzVGqDq
 i5h6yUiA6crCRAliCTpsDmnqKIlnCShyOCFZ0AJ0g+QAk99XBnx7iKaLBim9mBecz+o5
 hy42FT04Wmji/5vzP0Jdy5U1zIshd6OOPJjj7S5Le4qMKWTsE+tinp1fALC26sIuMjAX
 0TBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697131334; x=1697736134;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3SAgGhvFgEq3ojom6jJPWJ2MyF/faZd9tWGs5HOFcQQ=;
 b=luoyGxHhI4wDHyHbGrXR96Sh7EKKCpqb7OJU8Cj9p1rANZYoJE+v+JixUFqZ9yj4qG
 PGTgaWgqobtQdwz31Cdp6xputz0KaWIeZEo6iC4dAdtR2aW0fbsCrj64+CqZ8nNN7Dtw
 pJCmT8lhp2sJ61WfFMQpARH3OXb2BHuAvnN4oQuk3eL66mPrfsFZ2yGDvySdQmq3L5QU
 quqS2AYO59lbvI28LW/z5P9/hxzErzZ4at2t9I/gRdjYCEYEI57NabT8zdWIIMVi2z1I
 MZq236Jt642nUahBh2EQ/yXx17b9cxkt7WSMLUjYv2UvQ+HUhYyH9UbjGTMlx3OHBIWq
 OsCg==
X-Gm-Message-State: AOJu0Yx7kLVZMcSzDifajo+RcFUg9cGaY0Xzk64lNvjsmx7VF1KMI184
 dzphzEtPMD4CmgDAstOz1w8UPvOwDtXNXA==
X-Google-Smtp-Source: AGHT+IFPm6eWNwHlUkCkTorLX2j6xlNTrcGNhrv2lw5AFfWnMiFPK9F+JbAQzRVXyvhlKNHyrGyDRA==
X-Received: by 2002:a05:6e02:20c8:b0:351:35d9:f18f with SMTP id
 8-20020a056e0220c800b0035135d9f18fmr16703410ilq.2.1697131334353; 
 Thu, 12 Oct 2023 10:22:14 -0700 (PDT)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 r25-20020a028819000000b0043cef0711c1sm3992211jai.158.2023.10.12.10.22.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Oct 2023 10:22:13 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, jbaron@akamai.com,
 gregkh@linuxfoundation.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 11:21:36 -0600
Message-ID: <20231012172137.3286566-26-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012172137.3286566-1-jim.cromie@gmail.com>
References: <20231012172137.3286566-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 25/25] drm: restore
 CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
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
Cc: groeck@google.com, linux-doc@vger.kernel.org, jani.nikula@intel.com,
 daniel.vetter@ffwll.ch, yanivt@google.com, Jim Cromie <jim.cromie@gmail.com>,
 seanpaul@chromium.org, bleung@google.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lots of burn-in testing needed before signing, upstreaming.

NOTE: I set default Y to maximize testing by default.
Is there a better way to do this ?

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 3caa020391c7..708f5e8cb205 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -55,8 +55,7 @@ config DRM_DEBUG_MM
 
 config DRM_USE_DYNAMIC_DEBUG
 	bool "use dynamic debug to implement drm.debug"
-	default n
-	depends on BROKEN
+	default y
 	depends on DRM
 	depends on DYNAMIC_DEBUG || DYNAMIC_DEBUG_CORE
 	depends on JUMP_LABEL
-- 
2.41.0

