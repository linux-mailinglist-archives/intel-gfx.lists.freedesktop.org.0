Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5100E6D7B6A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208FF10E8F0;
	Wed,  5 Apr 2023 11:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEEBA10E8EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680694444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Tk18jdSB5PL8M24Q9AEmOWNrBMpUmu7JVWWnzwGtR04=;
 b=cojBmMloHioOlExpRZ0pZ0OKNDP7IJBzTWpUiWuJsyn9TfTq1VC0aQz0hj1qBg54TXOi2m
 Ue4X+IIhy7lDkqW/zNhk/1vP92vdMLHjD5Ahauh4ZEPgghGLUsagFEyYIGLPwM9XlbK1nP
 a0exPMcuhss4ebhUhf/QqD5kNd4gXcY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-640-JL1Z-s1YN1u2upnI_3vAZg-1; Wed, 05 Apr 2023 07:34:03 -0400
X-MC-Unique: JL1Z-s1YN1u2upnI_3vAZg-1
Received: by mail-wm1-f70.google.com with SMTP id
 o7-20020a05600c4fc700b003edf85f6bb1so19024803wmq.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 04:34:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680694442;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Tk18jdSB5PL8M24Q9AEmOWNrBMpUmu7JVWWnzwGtR04=;
 b=vaz4sB+3jLg16P/sw/ewawwHQaPReJm10enNEVFMsQzMgCMYUkAy6yjIeC8maVyw12
 /Kl/ZuW1B2WcO9fV2WiY1OmAO189GLqrAViYDZLT6oOXelOA0I0FKfu9JhUgoXi8x2hj
 YW9RWozF5+wuzUYDb/BbXSSREu1iRMZyDoDZ/GL7/mJy7JxQAeiA3t/8jJYKWtTl40BS
 uvQ605zwZ6joIYSXLwSB7ArH3WmRt3+uanEiP2k0p840G/eZCL9X17dFqqmp6uTJl25h
 8WLjteAG3jZOe7xAfSsicoGVJaScGuIn10FtK3hQEbUd+Qjl+/V3w/ovGzJqNUplNVxx
 aXow==
X-Gm-Message-State: AAQBX9dcU8IkNPdgzio0SztXcXR7Pkaj/aUxZU93wVUqTrEk1CuhGuqA
 rYear7PEPvakYyCSK6aDd6lF6YG2buPBt7oxH9DtVzO3Zu2keuxy8frY7/B2loRDzfMqwfWxN6W
 WeenplniwfvJ/5bzt8NefZKKwFwm5
X-Received: by 2002:adf:f2d1:0:b0:2cf:f0c3:79ba with SMTP id
 d17-20020adff2d1000000b002cff0c379bamr3508286wrp.67.1680694442710; 
 Wed, 05 Apr 2023 04:34:02 -0700 (PDT)
X-Google-Smtp-Source: AKy350YUjKA961Ix1B03KyblFGKgk9FaYELj3MXThs4Hw8qWQfuaORfFYONMGsntnJe5AvWYZuwF8A==
X-Received: by 2002:adf:f2d1:0:b0:2cf:f0c3:79ba with SMTP id
 d17-20020adff2d1000000b002cff0c379bamr3508272wrp.67.1680694442440; 
 Wed, 05 Apr 2023 04:34:02 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 u17-20020adfed51000000b002c6e8af1037sm14710349wro.104.2023.04.05.04.34.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 04:34:02 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404201842.567344-5-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <20230404201842.567344-5-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 13:34:01 +0200
Message-ID: <87v8iabm1i.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/8] video/aperture: Move vga handling to
 pci function
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> A few reasons for this:
>
> - It's really the only one where this matters. I tried looking around,
>   and I didn't find any non-pci vga-compatible controllers for x86
>   (since that's the only platform where we had this until a few
>   patches ago), where a driver participating in the aperture claim
>   dance would interfere.
>
> - I also don't expect that any future bus anytime soon will
>   not just look like pci towards the OS, that's been the case for like
>   25+ years by now for practically everything (even non non-x86).
>
> - Also it's a bit funny if we have one part of the vga removal in the
>   pci function, and the other in the generic one.
>
> v2: Rebase.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Helge Deller <deller@gmx.de>
> Cc: linux-fbdev@vger.kernel.org
> ---
>  drivers/video/aperture.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

