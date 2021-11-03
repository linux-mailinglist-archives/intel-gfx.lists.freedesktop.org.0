Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD07444187
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 13:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737FF892E4;
	Wed,  3 Nov 2021 12:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5C489292
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635942511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EOigLsb/AiPO+lh5JvcCRxDIH+IjKx25qTIzyzSOo+o=;
 b=DN/0UcBtp0IzqwLeHwzUBoAgdizRcIQyRxEVXGR1l8rWh7BDsyWQUFophdyY456hMT6jGO
 RAST6IDRP0aWVFqCjWlkCSBqHzv636rTXZ6+FFG1NpzKM7TXkgH6/KduBuf9+LbkWFA5uf
 Qm/oa/luxoIlByXX7pKWorqReHb2ZOM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-Mp-3eOJdNSq_jbU0yVHfyQ-1; Wed, 03 Nov 2021 08:28:30 -0400
X-MC-Unique: Mp-3eOJdNSq_jbU0yVHfyQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 k25-20020a05600c1c9900b00332f798ba1dso2679444wms.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Nov 2021 05:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EOigLsb/AiPO+lh5JvcCRxDIH+IjKx25qTIzyzSOo+o=;
 b=RpihI7gCC7uKZZWHxmJIdXAytGinnyGwbeGG2Z60t8rr28DsfVomBFjTCMnDECevfm
 InCKW/dbokX3TY9cDF2Nu4AxgnXUjqSo3zn1wLkTwdFKqJ4N3GJRxRQ2eshz3FbvXdv3
 gmWw6VTBll7LbKUsAHM1J5ShLI3b3m8hMgd9SkfNXslNys2qbnOaqjv6PwFfrmyHV/h+
 EYJwkrWY8UDnoYCWk7yz6dKAtCw+7gKS6xFT6x5aD49txOy+GaCFJPd8PwWoeIHAhiBj
 /nLb3nK5MfftJ+FaKqCuxvUkuzWIr/pHtkQhTEyNLJ1dsrfBRwU8yjBpJY92+b/Fe50U
 oPgQ==
X-Gm-Message-State: AOAM533YVSyrIf1yB2JCjht5PeIQRuL5pLwRKwP8vUw4XYJwZiXH6Yvk
 azvg8YtajiODse7ClJINvcFe9weCu+wRjHV0mJv0kM/iEXbGdX9u5amApEnkZlQRLif2nlMLKbN
 V6Aas14inyRXNfO2xDdND7cGuewQm
X-Received: by 2002:a5d:6085:: with SMTP id w5mr47839166wrt.122.1635942509088; 
 Wed, 03 Nov 2021 05:28:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvNRpXmZFEKhQpN3/OMoF+06zLZZouJw2euobrr6tiItTsNV1bIfdLVAHT+sRPk71He+cN7g==
X-Received: by 2002:a5d:6085:: with SMTP id w5mr47839129wrt.122.1635942508901; 
 Wed, 03 Nov 2021 05:28:28 -0700 (PDT)
Received: from minerva.home ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id w7sm1868400wru.51.2021.11.03.05.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Nov 2021 05:28:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Wed,  3 Nov 2021 13:28:05 +0100
Message-Id: <20211103122809.1040754-2-javierm@redhat.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211103122809.1040754-1-javierm@redhat.com>
References: <20211103122809.1040754-1-javierm@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [RESEND PATCH 1/5] drm/i915: Fix comment about modeset
 parameters
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
Cc: dri-devel@lists.freedesktop.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Peter Robinson <pbrobinson@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Neal Gompa <ngompa13@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The comment mentions that the KMS is enabled by default unless either the
i915.modeset module parameter or vga_text_mode_force boot option are used.

But the latter does not exist and instead the nomodeset option was meant.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 drivers/gpu/drm/i915/i915_module.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index ab2295dd4500..c7507266aa83 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -24,8 +24,8 @@ static int i915_check_nomodeset(void)
 
 	/*
 	 * Enable KMS by default, unless explicitly overriden by
-	 * either the i915.modeset prarameter or by the
-	 * vga_text_mode_force boot option.
+	 * either the i915.modeset parameter or by the
+	 * nomodeset boot option.
 	 */
 
 	if (i915_modparams.modeset == 0)
-- 
2.33.1

