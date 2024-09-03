Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F6969CFD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF6010E539;
	Tue,  3 Sep 2024 12:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="eqktn143";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2712410E53F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365312;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+2kjQIs9q8n/JYo2kgRLarbQBGYwxsIauUZqYrHGHRk=;
 b=eqktn1432kAlQmyCr6GPDx31nlUZChePT1BjltR/v6SKjgLc9p5KKYnSCztR5AWUI4TLCP
 35sRvnTpCyBuo65I/wsbu91MK0jqLRBn20tpJwvU+Fr0AQIFl9bMcMd2c8VWW1xlLvypQh
 YzsgSsiw/5hUXU+XID35zo84sA71Qmc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-oHA--Z5hMtuuM3rhDRKWYA-1; Tue, 03 Sep 2024 08:08:31 -0400
X-MC-Unique: oHA--Z5hMtuuM3rhDRKWYA-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42bbe9083d1so35868295e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:08:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365310; x=1725970110;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+2kjQIs9q8n/JYo2kgRLarbQBGYwxsIauUZqYrHGHRk=;
 b=lItXGdc2Witt6+dDI06NwuMN0mManu090VoxUwx/s65g4GZ82gcKlpX4pea2OQXhD4
 2WFVc7wrk18cucubo9Z2EmvYwgRat19vjp2CqRnW9RuogykAWjlznVUCbR14W8Gqxbfe
 aGsNv8BAvGXeOY3dQCU8LfJ1gzjEHyCLPhKLjABq6PbX/mfEePJzST6HMUDheRvbngFe
 fHfzDc+X9+/AuIF1Fi3yMi8S6mdrTHHkHonUqEcZEP8E53KMsSWE838rpdTtIUv/uhsL
 KZhbnCIj4Rz3IHhiUHyYKoyb5tXVH6bPqBo1l8Pkh0URO2UDMViKIWkwUlosWgK2nu8R
 BhrQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHCNxRmclWljCPT2IV5kVUVN1FlmVuYpwNXeuCY5WTJAzD6eLxXfFGtCwwtpB1Aza4nKjQqhvStik=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YymiNKDjNucixjujOpLZFuHqaoY0k3eH56LPrEmFeLzLln2JPr1
 bILRL57yZfxT5KsiJoSLuJKO5ZvSBUJ4HQMq5pY6YsromF9YLb32Lp7o2ruk9cpXtVqW2rsN8As
 PeK/F8ymMW22DYBJj47WbDcMr3pZRPRkIo6+omiHpoZP5NJbmHD6UGdZoYxsUacZ+KA==
X-Received: by 2002:a05:6000:1201:b0:374:b399:ad6e with SMTP id
 ffacd0b85a97d-374bf17d7eemr6675593f8f.35.1725365310214; 
 Tue, 03 Sep 2024 05:08:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHACC0i5llQBZQ7GHMHlMA55f2d++yOjIWrXMsMueQKdfzTBOjaiAt72tflYDm2X5ITcqKKvw==
X-Received: by 2002:a05:6000:1201:b0:374:b399:ad6e with SMTP id
 ffacd0b85a97d-374bf17d7eemr6675573f8f.35.1725365309653; 
 Tue, 03 Sep 2024 05:08:29 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374b9859486sm10862586f8f.111.2024.09.03.05.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:08:29 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 73/81] drm/fbdev-ttm: Remove obsolete setup function
In-Reply-To: <20240830084456.77630-74-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-74-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:08:28 +0200
Message-ID: <87jzftc537.fsf@minerva.mail-host-address-is-not-set>
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

> The old setup function drm_fbdev_ttm_setup() is unused. Remove it and
> its internal callbacks. New drivers should call drm_client_setup()
> instead.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_fbdev_ttm.c | 119 --------------------------------
>  include/drm/drm_fbdev_ttm.h     |   6 --
>  2 files changed, 125 deletions(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

