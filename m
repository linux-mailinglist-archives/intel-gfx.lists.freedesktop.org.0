Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87881969BB1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04C410E4C0;
	Tue,  3 Sep 2024 11:27:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="MHBtMwG5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F5E10E4BD
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0YkFi1fyEEJj9fRFEj28CQ1Rb7oXd2qBLLQ3U3hDrnU=;
 b=MHBtMwG5PDUXBnhiUBQPltc06R98wPtmyR+1JvheoN05s8ZcQxUuuou/7hlQ8roedIQ2br
 IPn72oOQWVn+SOStP/ANHIoZ4q9Lj7nZhCV7FpaWODa2MlbQ3wyfgfrAScI2SxfUzw4+I3
 vuIJppDatYuI12sajd8t73O+FDoHoPk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-381-NibBk1HrOXu6sQqHhCC-xw-1; Tue, 03 Sep 2024 07:27:19 -0400
X-MC-Unique: NibBk1HrOXu6sQqHhCC-xw-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42bbadffbbdso41383265e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:27:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362838; x=1725967638;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0YkFi1fyEEJj9fRFEj28CQ1Rb7oXd2qBLLQ3U3hDrnU=;
 b=d8Mr6SLnZY8ljRg1u16Dt2yRsw3Ri/hxiOVNHdNnDo29VDqMRc3BC6ToExL3cW9i1V
 dRdm3OHmTWcJwA3gGzDqqfcsr9Ydx58F/NE3HCQ5cGj98p3JS9BAmX296x7kHSUyzVmN
 YUUvHzXmVTM4IS12Fb9XAReXphOLzMF+perWDFNfTStzio3G8dBgPdJClSabMmU8ziqF
 MCcspRYQxvbyeTaWyZFPYxuqSzPobpKxG75PRyYT1s5oWAfnbRPpTTP2yiKeeNW8dAle
 DiwErkVCJNpAF/Paoh598yntuCG5tdkASGUIYfzqysGpaP6sVSf1f6qJqAb0pUHhlx3G
 LmFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6aU3nUaO959cZ4d8bgnyBT5V2z5EZW8OJ4FUrjfwluydPLEReow5wWs1eDTZe7aTScJ9ffF/wGiY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxeAYsywZ7xZstbkhUW4xSDuAZNpyc0Y9yG6tpQlXG4dHPRaRhI
 IgujKe2pG9v1HwEMkBpei8z9ZGjs1Cs9ONvINHafzXIJDpsqmUJMpd5/P3nFRxAZAVHBfOOvi1E
 HjV7bXstz4yQu8JqRAasAFK8HEhW9tS0/wNg1+hO99I4T6psvaj53cmaZH/WCcJuocw==
X-Received: by 2002:a05:600c:34d4:b0:426:6388:d59f with SMTP id
 5b1f17b1804b1-42c8de5f5acmr3366755e9.1.1725362837726; 
 Tue, 03 Sep 2024 04:27:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEw8DiOnCu7RE+sIqOn4hIKBEfR8ZpeC8W2x9A+tmFPou1BHLNhfPrR0uHNJ780jkjZzKr9YQ==
X-Received: by 2002:a05:600c:34d4:b0:426:6388:d59f with SMTP id
 5b1f17b1804b1-42c8de5f5acmr3366515e9.1.1725362837007; 
 Tue, 03 Sep 2024 04:27:17 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb72fcca2sm94059455e9.1.2024.09.03.04.27.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:27:16 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 24/81] drm/logicvc: Run DRM default client setup
In-Reply-To: <20240830084456.77630-25-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-25-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:27:15 +0200
Message-ID: <87frqhf04s.fsf@minerva.mail-host-address-is-not-set>
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
> The logicvc driver specifies a preferred color mode from the value
> in struct drm_mode_config.preferred_depth. The fbdev client also
> looks at this value for the default pixel format. Thus remove the
> format selection from logicvc.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/gpu/drm/logicvc/logicvc_drm.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

