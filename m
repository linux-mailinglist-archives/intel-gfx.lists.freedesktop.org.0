Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28846969B7F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC68910E49D;
	Tue,  3 Sep 2024 11:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="N580eZHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4AF10E496
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362481;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IQTpGzPFQqB5gAShloE0zxFF7qqYRFvzMaH5N3OQkCs=;
 b=N580eZHX7+V9wwmeoteP7JpBPwenEhozKl/A5n52btf++A4b/wCJLSr7Dg3CLVHz9ceEcL
 GV0lxGqEH9YWQwpFXd/hC42YBFjAN3gb+/LqzZi8Ts0qn8LTB43Mywih2X9Ga+hWcCiv18
 ByKpZl35PjXWe/HMUSWAGZpUHQOYg90=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-184-eeyMbsCcMy6eaa1SXmkvXw-1; Tue, 03 Sep 2024 07:21:19 -0400
X-MC-Unique: eeyMbsCcMy6eaa1SXmkvXw-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-374b69e65e8so2534459f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362478; x=1725967278;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IQTpGzPFQqB5gAShloE0zxFF7qqYRFvzMaH5N3OQkCs=;
 b=Kac9UkC1In88oxb/YUwhvF47nmwJp4+uid49OF8NTKO7FZnOR75Yn1QyAJ5fnqhba0
 QiObPisxtkmUeByNpOvn0zivKaNm0HQbiUMl+H12yYAiov3Gmxqv4uwZk+sSy12xG+Qw
 Cmwl46YDWD1lR94YpvvvTMARhRqOixoVIH50xpf8B6tsuqk/ZUu0yrNtDT8m+Bz9S9Aq
 CZ9Rhs+hMvDKMeCn1Sf0OgRVaxbixnGJuHJuSVQD/GU2Oiz54BsDPLA36S+EeRsRA+sm
 dmWHENfoVZBrpq5C8ewMZ1Di2El/6VIOsbXb5MQqpV6i+9a8HoZIdMa2taeYoeX5ESe9
 Qh+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnZHgFs6LFWHxU7V+KVSSD3TcjSW4f9GuFBDWUj+KbrESJp3fsoPsLlCfkdYpcR0srmDGDgfUxZPA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyjt47QX5DR7tx8UeErAb7Rxy08WYYt8iunsSxGo8k5Il4E0BIj
 l0a5UncObK9aRgLdEvR7z/nPLa6ss9d7nJUAk2Csu6ZC7qcHIkI1r1hBjIQgqVBaDr1eExwxJSi
 bARSl9I10bta+U579ga1ncHM0wqUC2MxQLBrZCOQSxcMdR1eyfUVBRCknEeo2JSfJWA==
X-Received: by 2002:adf:a30c:0:b0:374:baf1:41cb with SMTP id
 ffacd0b85a97d-374ecc67bacmr2268358f8f.4.1725362478470; 
 Tue, 03 Sep 2024 04:21:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbXnmNinNKcxIoQZ/xbsrsLu5CSXkPJ8NSjds5BWMTJG6QY5z6avZlP02srMBnOR8Wv7uPgg==
X-Received: by 2002:adf:a30c:0:b0:374:baf1:41cb with SMTP id
 ffacd0b85a97d-374ecc67bacmr2268340f8f.4.1725362478084; 
 Tue, 03 Sep 2024 04:21:18 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374be2edf08sm9391463f8f.6.2024.09.03.04.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:21:17 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 15/81] drm/ili9163: Run DRM default client setup
In-Reply-To: <20240830084456.77630-16-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-16-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:21:17 +0200
Message-ID: <87zfopf0eq.fsf@minerva.mail-host-address-is-not-set>
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
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/tiny/ili9163.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

