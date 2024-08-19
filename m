Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309A3957091
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 18:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B04610E204;
	Mon, 19 Aug 2024 16:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ZOeDxYeG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD2010E206
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 16:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724085636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6aiAlEMlkVSgDq4kg8Uhoyt8PHhKwhvjGwHD+aR8CT0=;
 b=ZOeDxYeG6gr8BfdrJbbwyomlt/qTDDfqljxql+zF7fAwPe2x6qVTLDGCCfKG843dU61l1a
 g+mM1qCnqpWFWpTIj1m2KEtkAANLGJeArqI8SzkHyiO55jFu9lhDkAsQmnKLkeQPqg9W0f
 JG3x9Nsr+n6JZh1YVDNjQA8C2lY2Ii4=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-235-lHFiFJgUNUO1qcdGfPTD3g-1; Mon, 19 Aug 2024 12:40:34 -0400
X-MC-Unique: lHFiFJgUNUO1qcdGfPTD3g-1
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-2d404e24c18so2518029a91.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 09:40:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724085634; x=1724690434;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6aiAlEMlkVSgDq4kg8Uhoyt8PHhKwhvjGwHD+aR8CT0=;
 b=gbi/TuPCGTg1yGlnubDG0AZo0vn14OGFf1oke746GCNUcVEyvlHUUTVjooDXkBZl0Z
 ZUn3l29cZW0g5hxqhg7ZSU+UaS6DnxF4ut4wkVU9DE8+t4265KdLayefhaJDqCGqjhZm
 aS//wcrOmE8LnpO0/X0h5Y5JoetwPc9WiV8E0gf/CkSGX4WnTAQWFJZZA1nl62ekuOAA
 HSC/4vBhtcV5+cwWjnQ+95djbfn6gF1d/TlexHOvUWyekPGbnayUAVsqJEWW072pQaBb
 tEviAeCbT1sVtPzoVEWaSNwOzW98ySrSQ99ybw2oMOEEEIWLvQR+p0LWVFZErKfOycIP
 BbkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXvQel91ml81LdzjzlBdDC5cq9H6pMfps0j8T71U0tfBvzyLmkOOncs4dWccP9zgAbNBzX6JbQM2ynJMn6dOTyU5QZH7vm93C48RgisReGk
X-Gm-Message-State: AOJu0Yx/+EDJh9v+kx6DvIz2JzIs+X4tkXi0DVKZeH+e7trIzUPyw9jn
 ZnVS8lEyqynp3s81ugL5qs7oVFyoMv29BPP9zqB3ln2r0mzPvgCB733dbu+ZBCpViCoTdgyTxqe
 nqaq+KNfbZbg3ttPHvfHTTJzeegMgArjWTN7BiOB0H4ADs1ASnk7n4FwuPJeoHs1pNQ==
X-Received: by 2002:a17:90a:bb86:b0:2ca:8a93:a40b with SMTP id
 98e67ed59e1d1-2d4063e87e6mr8810664a91.31.1724085633792; 
 Mon, 19 Aug 2024 09:40:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGr6UwLRtlBXjaOWivmxZxfUPO4m8tw0lWZ8JSfXwSkB6KBvIXRvb1qTy/OQw15401HlQn4nw==
X-Received: by 2002:a17:90a:bb86:b0:2ca:8a93:a40b with SMTP id
 98e67ed59e1d1-2d4063e87e6mr8810646a91.31.1724085633478; 
 Mon, 19 Aug 2024 09:40:33 -0700 (PDT)
Received: from localhost ([2803:2a00:8:776f:3d96:6be:69c7:46c2])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2d427efec73sm3604053a91.48.2024.08.19.09.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2024 09:40:33 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 57/86] drm/ofdrm: Use DRM default client setup
In-Reply-To: <20240816125408.310253-58-tzimmermann@suse.de>
References: <20240816125408.310253-1-tzimmermann@suse.de>
 <20240816125408.310253-58-tzimmermann@suse.de>
Date: Mon, 19 Aug 2024 18:40:27 +0200
Message-ID: <87o75oa2kk.fsf@minerva.mail-host-address-is-not-set>
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

Hello Thomas,

> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> ---
>  drivers/gpu/drm/tiny/ofdrm.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

