Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BECBE969CC2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4D810E514;
	Tue,  3 Sep 2024 12:02:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="cS1l4VPF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948CC10E50E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725364952;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q4TsZm+TdnZyPBPt9XEcOmrkl803e/sGwP4m6WhmvEE=;
 b=cS1l4VPF9MLg7WL4DgUseJQe79Nwb21xmf4sK8LHdoGVw2jADWRYR1FZMUmDiMZrY9vhc7
 acgpRK76kTsk/JjP/koabJveyvmxPuxUFYJk8br+li4m0OPR2s3enF5y1iWGXAKzCU6miy
 9tSSpcHCGGZ3nTlhmUGiE4reKfRoLqU=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-vNgbmr4zPoGORo_31HQNeg-1; Tue, 03 Sep 2024 08:02:31 -0400
X-MC-Unique: vNgbmr4zPoGORo_31HQNeg-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-5334344ae21so5453253e87.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725364950; x=1725969750;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=q4TsZm+TdnZyPBPt9XEcOmrkl803e/sGwP4m6WhmvEE=;
 b=eq0vAYRdLkV9UKk4ev6pEoynUt7xIGrok8ggtF/2ZT2oVdvz0Q6RFq3bfBtk+YZGUT
 Oo/htnjwLVQshG9hA2W1PsrfWuX+LA2wcac2pIfqw41P55mDcRq8kfSmcFw/R/Q44+GF
 LzlgG29QVjhIvSgquD0wVslIUf33GlHYiLI8VXcALKXicYwVAxkznDRziQuAonwiHwz0
 JYhpHEHYk6DeaTP5IhQh96K+9x1s3dGRebJpDqU7G+MWBhZijFrhfR5cqvk3OcK0Kgi0
 WNhVGCKXfurDjM8Y0DrOSoQhO57buzmXE1yEm8pluNIm1X1KzmULA8SnnE5qRb/UHcjA
 KerQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdBtQzgHNaXwqUwFGgu9Lel6XHNKimOJ8Kgrkm8y0+UpqF+YXRAHLumOCum+/bmzKUF4kHYXTyWGc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz50hCergbzdTDZDgvV/g3v7QE7bql9NcUTOxBHytPPujdeeZzA
 bpuEWutfJvg/c+aZ/iIyeYo8juMFbh8bsRaZkl5KHPni5eJljBnL5mllOtqnsamkQ6y8Bf5X4W6
 Xc+in+Br7o+Q934LIfLrqpOAFUn05n+LQeHiuT7uJQUUpwExz2fVrlG++Bhi8B+gt2g==
X-Received: by 2002:a05:6512:131d:b0:533:d3e:16f5 with SMTP id
 2adb3069b0e04-53546ba05f2mr9159108e87.38.1725364949854; 
 Tue, 03 Sep 2024 05:02:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/shjDInDkDXnEy4T2771RVaRDvCaaUkAiQqHS5oLr5ZbCmo5yfav5ha5LT86E5fjnj1wp2Q==
X-Received: by 2002:a05:6512:131d:b0:533:d3e:16f5 with SMTP id
 2adb3069b0e04-53546ba05f2mr9159078e87.38.1725364949298; 
 Tue, 03 Sep 2024 05:02:29 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bbe79f545sm136719155e9.2.2024.09.03.05.02.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:02:29 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>, Melissa Wen
 <melissa.srw@gmail.com>, =?utf-8?Q?Ma=C3=ADra?= Canal
 <mairacanal@riseup.net>, Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: Re: [PATCH v3 62/81] drm/vkms: Run DRM default client setup
In-Reply-To: <20240830084456.77630-63-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-63-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:02:28 +0200
Message-ID: <877cbtdjxn.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> Cc: Melissa Wen <melissa.srw@gmail.com>
> Cc: "Ma=C3=ADra Canal" <mairacanal@riseup.net>
> Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/gpu/drm/vkms/vkms_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

