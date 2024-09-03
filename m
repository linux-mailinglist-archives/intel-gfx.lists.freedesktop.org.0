Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5E5969CA9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABC410E502;
	Tue,  3 Sep 2024 12:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ivxQwaAI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5582110E516
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725364830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Wqkxl9KwjevEu+t1uza2Tm1mz4C/9rJUsakscGOOK3I=;
 b=ivxQwaAIEPL9uLoxxL+sNKQ3MiEDiM4d9D6q0L3XSXmmRKCiQvG2mHZKuLS6cKZt472pBM
 Wq+yvY+FoBM4rAA5wrZAkqdnjDhxojP2drEtzrgipMclRG+npiSBXho5oziPfO8uEIiIpR
 RH+ECSrqdkuFl46g3Jx4gjzzl5UohJI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-21-_qlQy0MaMl-Q0UT6-yDhNQ-1; Tue, 03 Sep 2024 08:00:28 -0400
X-MC-Unique: _qlQy0MaMl-Q0UT6-yDhNQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-374c4c48c87so1523192f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:00:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725364827; x=1725969627;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Wqkxl9KwjevEu+t1uza2Tm1mz4C/9rJUsakscGOOK3I=;
 b=H7pEc7tfhFKy4lXWZNks5ZQmR2I48FRuiB3rc3fIjzK77G8061k5eZd0vd90YJoQ0H
 8EFhZmZb8gKusFDCNECFEFrQIDQz21tTBxtLu807AjBebAe53Hh0pHMEGzz62V5d4lEn
 va1ZAsK2HqirydC1s8zZvnyoywuTN49V9wPv9j3uAtiZr+R2hTOyoRBQwmbaGztVHOud
 9cQPB5kQmOWiMEtMxr+IzGq2/u/N7QgkcenRJiHxxr80J9DL3FDeO/+/8PFywZpzxxw9
 E5DB/TEgyZ7XrRMkSZbgXUtbeEu8/ivB43Od8kwn34J6UfQhlyhkJuXq/crNoFstR1k5
 +aIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgiRF6UwTv6arIT11ZRvY+0407bxZd1q5VNYo2hNld+tjz+aaEDwTEUWCKQDb/VcfOwUkl5DOZ2Os=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwxcIrOOttbHI1pSlOS311+BOkxVxob+yMhVKVDrwkWYNQ9nFUu
 ajVQjwNlyLPKdIcZaLCGgkQgDqDuui/qNFXjt+sjJ5X0pNeNCMdFAbmDMSRBEaBY50UU0DWGhot
 HVhKF0M0RCeQdx4Vp/XRWWntc//CxzKPymuEzv3rBha8bG9aK02HC21yGogpk+rz/k8d4inXVdw
 ==
X-Received: by 2002:adf:e005:0:b0:367:9088:fecd with SMTP id
 ffacd0b85a97d-3749b52e4b2mr11567920f8f.7.1725364827052; 
 Tue, 03 Sep 2024 05:00:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKbVj02CwoguAfZhg3DQHVPX/ENKLjb8+BLnTX8X8+/N0+IHzNka7Y5ll+wgLPRMt/UdLgcA==
X-Received: by 2002:adf:e005:0:b0:367:9088:fecd with SMTP id
 ffacd0b85a97d-3749b52e4b2mr11567893f8f.7.1725364826511; 
 Tue, 03 Sep 2024 05:00:26 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ba639643esm208275255e9.1.2024.09.03.05.00.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:00:26 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: [PATCH v3 52/81] drm/cirrus: Run DRM default client setup
In-Reply-To: <20240830084456.77630-53-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-53-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:00:25 +0200
Message-ID: <87ikvddk12.fsf@minerva.mail-host-address-is-not-set>
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
> The cirrus driver requests the same client pixel format as the value
> stored in struct drm_mode_config.preferred_depth. The fbdev client
> also looks at this value for the default pixel format. Thus remove
> the format selection from cirrus.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> ---
>  drivers/gpu/drm/tiny/cirrus.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

