Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0356F969B4E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9464D10E3B8;
	Tue,  3 Sep 2024 11:14:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="B1EDQC0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C42B10E47E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362051;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pdYvLK+Rh99QxPTllaFff6lfcZBjKvVWEKqFob5Jn+U=;
 b=B1EDQC0yJi5xomRd1hBOeYp+4zSTT8FLmS8WZ/wgVkwKJrDUmuIm6Y/LmCUKwNISHkyqhj
 JhL50WKEhjufSOpjkeDs1xtr/NwGHbuoPABdskbuipk2V0yn96nyzfccOKv4TDw0SWIiNw
 nTXec6gVVu+p+5MNCdEq9rmPM22ICzg=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-50-pGQum7ULObK2gGQt1XeSog-1; Tue, 03 Sep 2024 07:14:08 -0400
X-MC-Unique: pGQum7ULObK2gGQt1XeSog-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-374c4c48c87so1497318f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:14:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362047; x=1725966847;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pdYvLK+Rh99QxPTllaFff6lfcZBjKvVWEKqFob5Jn+U=;
 b=emIvRKAwpjdwjvhdeQ0YM9Px6Ph2j3OLKwobd26TcbmQFfJBF+o3cniLI5NXFfvrD7
 CaJ+BzgBNquUnUc9N4XBoamE5DBqeMuXKmadPehrLZ8MXIgvL1g2l8Cx0j2TC9q58CAA
 YxjcgY1VmY3feAhP5zFcqZqlgixgXeUZ+pvmcHvqlzSKfBhmYb1Zpsdf1D3eDbINXc89
 JRzfhwQTuztINfYOnl9h304ixq2aLudMFzj3jZWA8XEC7n3XyJvHYz4JymYnUQFQ+Eo0
 JuySQYUwU4S7RhwGn6Tf264YxwlKOxs8WUIsHIR/nGzKVRscCkZsW5q3JRdYQeSyne+P
 UABg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVYvUJEMNFA6hvF1peKyAgCKd9gCxGOSZfFLsxGmfbj9NcUO+VNHxku70BiTpY3wHh8fdrb8eTrFsA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxRcnl5cmH7l0du1HVZDkomHu1ZVAlxboYcxwr9o2LsDkJggtBg
 613a20RisDn0wVwLTX71oNDNh3K+6HcznSrNbeqcOjhshIRB+SG3ud/vOn2b0uGdp1Qvn1kjEwA
 9ehO0hk8ax7vmL80Bnsp4uLzGBoaJaLMe0YME0IiDQ83nW7rk9ngHwV4sxADHXRlwpg==
X-Received: by 2002:adf:9bde:0:b0:374:bd05:a074 with SMTP id
 ffacd0b85a97d-374bd05a0cemr5699409f8f.12.1725362046745; 
 Tue, 03 Sep 2024 04:14:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH58B10Y+zMIj05Ntjvj4TsORZDmCGRgoqT96GpUgWHC5vVRBWe2bAZAxHLAeIC6rm49Wp7yQ==
X-Received: by 2002:adf:9bde:0:b0:374:bd05:a074 with SMTP id
 ffacd0b85a97d-374bd05a0cemr5699378f8f.12.1725362046152; 
 Tue, 03 Sep 2024 04:14:06 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374c90c6c06sm6188692f8f.84.2024.09.03.04.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:14:05 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>
Subject: Re: [PATCH v3 10/81] drm/aspeed: Run DRM default client setup
In-Reply-To: <20240830084456.77630-11-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-11-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:14:04 +0200
Message-ID: <87bk15gfb7.fsf@minerva.mail-host-address-is-not-set>
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
> The aspeed driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> v3:
> - add DRM_FBDEV_DMA_DRIVER_OPS macro
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: Andrew Jeffery <andrew@codeconstruct.com.au>
> ---
>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

