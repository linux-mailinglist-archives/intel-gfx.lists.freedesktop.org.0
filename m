Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88913969CEE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7738C10E532;
	Tue,  3 Sep 2024 12:07:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="BiVwh+Sc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3F010E530
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zx4hxQtRMdOzrygXNdwQEDskzaynxlUA2aQcUcONdUA=;
 b=BiVwh+ScsdhggeB/RdB3+G3JoPbn3JtVOTgU+nmq/WEHINBE+GGl0LbltdHKarKNLICNKX
 l5rqu8MEwqmQeMzi+OlN6gtKcq71DSZtDzPI6LiaXMIzNBVJZCmUA26Vc1+IMA1/ljyqPg
 9YDudoBlp4DvU+EE97WP9mgydREFqg0=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-623-aWrsnfuHOyC-eH3TyumsPg-1; Tue, 03 Sep 2024 08:07:02 -0400
X-MC-Unique: aWrsnfuHOyC-eH3TyumsPg-1
Received: by mail-lj1-f200.google.com with SMTP id
 38308e7fff4ca-2f4062343deso50567161fa.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:07:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365221; x=1725970021;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zx4hxQtRMdOzrygXNdwQEDskzaynxlUA2aQcUcONdUA=;
 b=aAVqclLTJFLRWEvUs4wZx2WvuzzHKoSvzpB1P6zjDRaXgKuVHtRa54k/XpYwkmStZg
 +7BfDvtdrrWEjUFbHrOxMLAhCS3L2LT20lXhWl9/NDLfH11Pp1/5CkbPw4npLKaRn/gH
 Qjq9uDOHTzWrw0c7OU4w9sU74ERF2vC363TDGRPkfBHX3CfgRz94/E1hF3EYTSgfhrV9
 NbCUHHgg7s7nYuMT5PryKwG/gAd8FzKiKaGCg0IvyMeDHgEP2gzsT3TPuJTTcMzN/OlD
 3cmPQlgxWIZHDiYzO/JDQV564LHmkJExKJOmew9xo7AbGuaiiF8DRcv7vRGEdMq/gXKv
 3hqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWp+sFFaclEsRL5ClEYSecnxD5zvtggsF6CY79F7Tm7xLpeJmsdvf8CYHzOJykf9n3CI0qAaqSYLW8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxKxFbr5NvhdXW0o16U+ZseJ3McUyLNZAKFJoPoIuJys3qh4FTL
 TEsQOr3cVAHhRFPzk3CSdgs/ytTxji1ng+/EqEvHkDMq0IpYn6z+Cmd/kukgDf9X6kfBeiADlD7
 gk7ZrLlEH0PvJ/mR9cTG5ycnM5s38kfSywbiLcQwERa3sN6g9nFXvESvgTCJn7fPw3g==
X-Received: by 2002:a2e:be07:0:b0:2ef:2b53:c77e with SMTP id
 38308e7fff4ca-2f62655044fmr76802031fa.7.1725365221301; 
 Tue, 03 Sep 2024 05:07:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhYL7VU+pPWXFbZvZO3luoy/PZCZxgIoqNkVLPQzNR06jKjtB+IuiohUKE273yPfAVbpvuDQ==
X-Received: by 2002:a2e:be07:0:b0:2ef:2b53:c77e with SMTP id
 38308e7fff4ca-2f62655044fmr76801781fa.7.1725365220740; 
 Tue, 03 Sep 2024 05:07:00 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6e273e3sm168566335e9.30.2024.09.03.05.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:07:00 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: [PATCH v3 70/81] drm/qxl: Run DRM default client setup
In-Reply-To: <20240830084456.77630-71-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-71-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:06:59 +0200
Message-ID: <87seuhc55o.fsf@minerva.mail-host-address-is-not-set>
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
> The qxl driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> ---
>  drivers/gpu/drm/qxl/qxl_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

