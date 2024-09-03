Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F61969BCD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC7D10E4D7;
	Tue,  3 Sep 2024 11:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="hnF4ZDnj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78D810E4D8
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725363046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+7KjPkZaY6LPM2R/IvEHcw05+p3Okl3omvvBGG6T0MA=;
 b=hnF4ZDnjPcutJotP1Zq6FwuJ6ZGMEShxyTBIdfM+ymxv3r19c6u5QG3S49dcOYtAdnlV9U
 lt401NppS6pZTRiu/iM+d36E93Ga42Tt9XpWp4qiEWhKq2H2OPI8CIhyFOjh4en6U1ZZ5U
 jiOaPWjlTtwawVdFJicAAtqYIH+kcuk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-246-i_WblLGTPGCkZTTASnzvvg-1; Tue, 03 Sep 2024 07:30:43 -0400
X-MC-Unique: i_WblLGTPGCkZTTASnzvvg-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-374c960ee7aso1699238f8f.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:30:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725363042; x=1725967842;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+7KjPkZaY6LPM2R/IvEHcw05+p3Okl3omvvBGG6T0MA=;
 b=raior6uO/0b6SM2bsu8+CMmArbl4ZXKYuyW4uGq91Df3LYc6n8ml/+Caxq2zMZbKEx
 1CLcI/KF7iVWGoCaSqJqruz0Xe+2MN2RLyHYJ+eG6wSbh4oSpLjqLtGrzaIXMQE/J2cN
 Y9J66mlC1YXT/fV0NGEESepPFUrYGGzOAotvddrO2JQE5q2sI9pHfCQrzD7wIqdLwqh+
 EaEbZrI6emm5wQh17qv5HVyFf61sLVzhLDlR2wwFac2KUSD4K9tuUvuR+xM6mPuXP5DJ
 ogqu9mBiUs+u/8R4U+6pFa4R45tBna81ljQZZ4MKk2GX+WT0r8+ECzilg45pVk80up95
 E7UQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAatXze0zP2spqfVFo2MUmzoMXeSdf4uebIDYX6EqJ9HA56b4Mokkl9NOv1ICBNT+SC5ZMihAzkHg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwWa0ZWIW06h1IkEEIxjNvPvwig1y9IxfqYVnSMrvvC7Cy8yS8B
 zNHNq+a4eloCyk+qUv1G30p36fqpCAQGKXOlsuq0HulFaAjssTg1YYGCKXoCy+ZKsSDX4Yx4D3f
 EKtbKiqJLSPz1RVvaSvkLor9KnGO1BorZXyi6Op2WtzGFhU6h+oa7QYnu7/FTSVP8Gw==
X-Received: by 2002:a5d:4fc4:0:b0:374:cafe:c55f with SMTP id
 ffacd0b85a97d-374cafec737mr4142328f8f.20.1725363041818; 
 Tue, 03 Sep 2024 04:30:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaxU5bJuIzUDf8RSjazoPcbW/KJpDG6+5g7d7j21W0xhBI7SOXf/r+/zCa6XdnhnO6fGnIQQ==
X-Received: by 2002:a5d:4fc4:0:b0:374:cafe:c55f with SMTP id
 ffacd0b85a97d-374cafec737mr4142303f8f.20.1725363041396; 
 Tue, 03 Sep 2024 04:30:41 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749ee4d391sm14089852f8f.3.2024.09.03.04.30.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:30:41 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alain Volmat <alain.volmat@foss.st.com>
Subject: Re: [PATCH v3 39/81] drm/sti: Run DRM default client setup
In-Reply-To: <20240830084456.77630-40-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-40-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:30:40 +0200
Message-ID: <87zfopdlen.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> The sti driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Alain Volmat <alain.volmat@foss.st.com>
> ---
>  drivers/gpu/drm/sti/sti_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

