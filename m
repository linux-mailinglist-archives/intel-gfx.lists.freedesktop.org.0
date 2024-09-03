Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E88F969BBE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF96B10E4C9;
	Tue,  3 Sep 2024 11:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="fFU7tAGQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A8C10E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SOwnsv9Ex7Dst0oT+vzWucUQJDjqV43haxzxxhRT6eM=;
 b=fFU7tAGQoaguZItrMpZTa+Xgr0T+fVI6s8JpYj4KWeg4Zj1rFoXcZ8U2eHI5BDZ4eTicW1
 fL2wqBD5RLElJwc67g7KSggQfPj/z3WAkrSeIkzZWcnuTw3ouYSgYxo4GjtWkxLjqG79zx
 IANHJsqR5J8o+9a9Xgtk8kbqNF7HrJA=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-333-gOLAO37uNJCsjGJeShzCoQ-1; Tue, 03 Sep 2024 07:29:08 -0400
X-MC-Unique: gOLAO37uNJCsjGJeShzCoQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-374c294d841so2331024f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362947; x=1725967747;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SOwnsv9Ex7Dst0oT+vzWucUQJDjqV43haxzxxhRT6eM=;
 b=IPCcsdIALvBtIFfm5hN/jIsbNHMT/vFVtgQNIpcmiif7ym5EQnRQNBO8ytMF6hmK1G
 NgqortphibNfnURmOtSp5NAFkX7u/CC4vJpzFUgFlstrbAvt802OeylWl3oqeLuVUk1G
 QI5oDO39sjuRXIW/anSgJIVFTtUegBWuDsZhAkBKATxMEiBMYu0qMVnY9YgjVMsh4OVa
 8zXiabrAkpiQXfg8ImGCbmNfUZZCrnDmUWkmqKG9vMCRnH3jPsOPf060AFBrFm2vgHma
 ih4xVDemDfHNRJ0xd2hauUH+5m3Gk5BUjruYE1D85RfCOp5IDTfXLIed7JYAjohXL4zj
 6doQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7pgFUsGxi1aYtCACn9dOBDIe8Yv8UcH7w3KP0qYfYl7j3aYFyrPTk4zWsWsTt5eLk/vpz0Lya2UY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwlpZkAiMom8GeDPESzOC7vNPzanr3+qlXewEWn6IaF09o1k6Ti
 Ydz4KkNPVkEr5QjWEMIttam/3LBYAnRH5d1nGtiYiyAggtt6cS1jl0wjsoWfYgPfoa/MEw5gm48
 3aJ3FTu0YfnGHehj/qabiLAZ1fS0OQ+Az1janPzcZziccD7lCwxEmL+5+6APb8DJ2xQ==
X-Received: by 2002:a5d:5309:0:b0:374:bf85:7d74 with SMTP id
 ffacd0b85a97d-374bf857f23mr7600175f8f.61.1725362947576; 
 Tue, 03 Sep 2024 04:29:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFplzXWPnS8z1FVY1e2/1mWosdqwoo68I7PXq6d9DOV9oX5IACg3DEStSkSK8s6tqHoRzr8g==
X-Received: by 2002:a5d:5309:0:b0:374:bf85:7d74 with SMTP id
 ffacd0b85a97d-374bf857f23mr7600141f8f.61.1725362947101; 
 Tue, 03 Sep 2024 04:29:07 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374c9487bebsm6146536f8f.94.2024.09.03.04.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:29:06 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 30/81] drm/mxsfb: Run DRM default client setup
In-Reply-To: <20240830084456.77630-31-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-31-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:29:06 +0200
Message-ID: <875xrdf01p.fsf@minerva.mail-host-address-is-not-set>
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
> The mxsfb driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> v3:
> - fix driver name "msxfb" to "mxsfb"
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> ---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

