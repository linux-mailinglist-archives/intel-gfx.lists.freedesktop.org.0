Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93B235F9CC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15CD26E4D7;
	Wed, 14 Apr 2021 17:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF7676E4D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 17:29:40 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id u7so8712505plr.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 10:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=70dSAhdvNf9rW7naVyB8FacZo/tKpmgYTIzZpzN71Cs=;
 b=LsiMLszNVSqTMFSOmT7Vt7BL2HWjYpQnn9/Ah8Ahmt14VXi38iwnxuRRnAMd7nV+F4
 L8OiYKIW4vYpw8N0fUeTwgUCiDMq5+HbPF+3sOym2H36ZFwtvq4PnCKSeplaTzdczwh+
 M1/M+ijlrnFtXNjeEsgG7aN63y8Ce7LLt8uSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=70dSAhdvNf9rW7naVyB8FacZo/tKpmgYTIzZpzN71Cs=;
 b=WqVW0kDmqpMoCAh3dQKDpftYLAHYDxdjjGCymmqXyjVXFmuQUR+054FyEoTq8JaFV9
 AkENutW9cEPkrECt9kWMqkoUDSbhCoQkMTJ461cs6HTPGkqWzmxNAJe6JHmLabaAjg/k
 H7ojEO+xZfb5qakAoefJ1zJI7/D1+l+OKBh/djYzL1+qduVnILIk6o+uhXP+HiCX/ocj
 RrWTQbj+7ZCnuuHngquFXDr2tEGfxF/M3tISm1GUX3q+798zO2WRx1nfquUDflXXHMgN
 9WkzsKtpyvpxADNf3MS4WuNpKL/dfNHwd8PE3TrVamD9RdHMiYZzRxidAjeQ5bJrkVtI
 fJLw==
X-Gm-Message-State: AOAM532all/nQwqsyOxmR6xw6TEsIyXnNsAzg/2W4l+zGKRpuhfPrQus
 Mtu31F2zGk5/1zwbNO/tpZnzKg==
X-Google-Smtp-Source: ABdhPJwqy6xfsxSkXZwh4yhPlR+yx5Kxrr/lleQqawAAaqaYA9AZc2k7rgE80MSaJDQAOD1ejSDS8w==
X-Received: by 2002:a17:90a:ca83:: with SMTP id
 y3mr4896192pjt.191.1618421380273; 
 Wed, 14 Apr 2021 10:29:40 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:bae3:4af0:9792:1539])
 by smtp.gmail.com with ESMTPSA id e31sm63460pjk.4.2021.04.14.10.29.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 10:29:39 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Wolfram Sang <wsa@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 15 Apr 2021 01:29:16 +0800
Message-Id: <20210414172916.2689361-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210414172916.2689361-1-hsinyi@chromium.org>
References: <20210414172916.2689361-1-hsinyi@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 6/6] drm/i915/selftests: Rename functions
 names
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
Cc: devicetree@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pm_resume and pm_suspend might be conflict with the ones defined in
include/linux/suspend.h. Rename pm_resume{suspend} to
i915_pm_resume{suspend} since they are only used here.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index dc394fb7ccfa..525afda9d31f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -94,7 +94,7 @@ static int pm_prepare(struct drm_i915_private *i915)
 	return 0;
 }
 
-static void pm_suspend(struct drm_i915_private *i915)
+static void i915_pm_suspend(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
@@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
 	}
 }
 
-static void pm_resume(struct drm_i915_private *i915)
+static void i915_pm_resume(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
@@ -152,12 +152,12 @@ static int igt_gem_suspend(void *arg)
 	if (err)
 		goto out;
 
-	pm_suspend(i915);
+	i915_pm_suspend(i915);
 
 	/* Here be dragons! Note that with S3RST any S3 may become S4! */
 	simulate_hibernate(i915);
 
-	pm_resume(i915);
+	i915_pm_resume(i915);
 
 	err = switch_to_context(ctx);
 out:
@@ -192,7 +192,7 @@ static int igt_gem_hibernate(void *arg)
 	/* Here be dragons! */
 	simulate_hibernate(i915);
 
-	pm_resume(i915);
+	i915_pm_resume(i915);
 
 	err = switch_to_context(ctx);
 out:
-- 
2.31.1.295.g9ea45b61b8-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
