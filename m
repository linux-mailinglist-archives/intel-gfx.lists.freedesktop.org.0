Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 331B77DDA0E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 01:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F6710E642;
	Wed,  1 Nov 2023 00:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808FB10E5FD;
 Wed,  1 Nov 2023 00:26:50 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id
 e9e14a558f8ab-35742cbb670so22934805ab.2; 
 Tue, 31 Oct 2023 17:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698798410; x=1699403210; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3SAgGhvFgEq3ojom6jJPWJ2MyF/faZd9tWGs5HOFcQQ=;
 b=bI9zprPMgTz0BmAlRl9apGEqlHSvSHxepom9h0H12cRylus6cbWQc/TSvOyhDD9bfA
 EUIAx8ifPfox0JcVlRKJ4DCz58epHdtxY4mFF6nOy6GciyZ/d/RWzxtcDrnhWHwgA1r8
 rOBgLLzjtN2k19HD2oiCk1H6rVr+syC/KHNAR279/V7dX0ChVh1dK9jlaVlnm3SSO2op
 Ob1tDC3ib2GUDPiUgDzbuZVeh5FYXhuSzarI6vXAWK5TkV3A8eU5jTZ9kjLGJoS7SDHD
 n6zpSI0aEXXIYEFKr2Aqn3bZEknk3Z48TsTYwd0vMag39OWDq1hoohhGNZUrx/kNkalU
 vdQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698798410; x=1699403210;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3SAgGhvFgEq3ojom6jJPWJ2MyF/faZd9tWGs5HOFcQQ=;
 b=m6xIRvF7/dmlgmKGetJLyP/Yj/auBPXxC+AHnQXuSf9T7PtzkBLQF/RMOVV4otmFyp
 tLmnt9iB3TYCGk9FYuQOkaIdKCZpCfqnpo/lE0VvAurgkdsKx/eezYyDUwI9/nxLi4qp
 G9bwbjw/v/9uF81nVqve9/0g90Pqb/lUmBXtW1Uu9+gYygnC0DSxi5MLtlnoeTZUik6O
 oLDR607o/5CfHYwUYivUfiPKf4oGJX0LftX1gqq8mdkywF7IRzhzS4ZFGGmmnKX23fRC
 heFuucklbCC0ht/hW1X0d9NF6IW1/XWDExnivyFWKg7QES3KZ0zOQduYeORUdtsZ0YkF
 XwWw==
X-Gm-Message-State: AOJu0Yyr+ja2MGRglU6743FyQKFI2eYtgO5strsTe0QDb5V+jHUGOEEF
 t6mjdG4v/rnFkQszP7Su4Dg=
X-Google-Smtp-Source: AGHT+IFaLMPhKAQDiXwdcpHNHlQB0x4IFVrH9A1QbFz7CNOFwFce//LXq9uQbZHYcyJx7HoGA67UZQ==
X-Received: by 2002:a05:6e02:1522:b0:357:a180:6b74 with SMTP id
 i2-20020a056e02152200b00357a1806b74mr19332114ilu.27.1698798409806; 
 Tue, 31 Oct 2023 17:26:49 -0700 (PDT)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 t1-20020a92c901000000b00357cc8df1d5sm141701ilp.68.2023.10.31.17.26.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Oct 2023 17:26:49 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, jbaron@akamai.com,
 gregkh@linuxfoundation.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 31 Oct 2023 18:26:09 -0600
Message-ID: <20231101002609.3533731-24-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101002609.3533731-1-jim.cromie@gmail.com>
References: <20231101002609.3533731-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7d 23/23] drm: restore
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
Cc: quic_saipraka@quicinc.com, linux-doc@vger.kernel.org,
 daniel.vetter@ffwll.ch, linux@rasmusvillemoes.dk, will@kernel.org,
 groeck@google.com, maz@kernel.org, mcgrof@kernel.org, mingo@redhat.com,
 catalin.marinas@arm.com, arnd@arndb.de, jani.nikula@intel.com,
 linux-arm-msm@vger.kernel.org, seanpaul@chromium.org,
 linux-arm-kernel@lists.infradead.org, lb@semihalf.com, jim.cromie@gmail.com,
 yanivt@google.com, quic_psodagud@quicinc.com, joe@perches.com,
 bleung@google.com
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

