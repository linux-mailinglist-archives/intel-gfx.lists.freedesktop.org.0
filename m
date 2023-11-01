Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA877DE0A0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 13:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD1E10E6CC;
	Wed,  1 Nov 2023 12:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AFA10E6CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698840084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HFG3zX5V5RjxlXQbZojzLeljMHWLMjLWQqVlWICX4sc=;
 b=fQhz6hIZLcOdD/WVQzS4gQN8pwLzNX6Vj2D3zQ+JMzAurmStBH15t0llKXsds9vC6WXjvX
 JifQvbBD+QiesinXZqSwuB1Z9qiIr1kYgBCmHc+yPH76n3naN4xx00fM5Xty9tkYmcwtMM
 EOFRhwGdtEOy6v7Bjdk8eqsefYaCZYU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-529-AmecQCT0PuaGjnIEmLG1Ww-1; Wed, 01 Nov 2023 08:01:19 -0400
X-MC-Unique: AmecQCT0PuaGjnIEmLG1Ww-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-4084e4ce543so49920215e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Nov 2023 05:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698840074; x=1699444874;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HFG3zX5V5RjxlXQbZojzLeljMHWLMjLWQqVlWICX4sc=;
 b=BlQcaX5N6dc+XnBFGT9ps/CHSVSL/sybRfVlOzCw08lTP3nH1WlgiSIsCrGIKQfvLF
 ms8yi3h4Drom3kAPgyIl1g7JtoKNkzugAUdE8BAxzccLukgtSc2jFII5uh/A1qsnS4aH
 j9P+QhTrLHz3LeXGzJ2DAiHnSUDeI8IWrpxFcg8YQ10i1jZ3mvOg85/84UUa6ACNrMmj
 bmngHU9dDTNbD6xtjZFpjLRnMaQaHAoohSkQJN3vV4x3x0Qxype0Lu9JYEucJ8DQrzIE
 jRcGU8QH5llGqNfta2Xw0SBpezwaDsOvUPxmhstl4TGWCK0RKBtk1WqXOZuJwZsvxfJ0
 9FOQ==
X-Gm-Message-State: AOJu0YzoIi15Dpq9da9rpRTbA6EZKprL4WlIH5f8IwS3Xq7os5JmJ2Tv
 BOMhSAIuX0yGQ3ym6bW5h8ig3PGPregdsjCdfWEmqXnHJiRnZOQHW6zn4LzRvlnl32Tzrca/yYq
 +v9toIs8grNcoFZfyTXffJXVhnJw6
X-Received: by 2002:a05:600c:450a:b0:407:8e85:89ad with SMTP id
 t10-20020a05600c450a00b004078e8589admr12771499wmo.14.1698840074101; 
 Wed, 01 Nov 2023 05:01:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEK2+PSw1U5BBXhsW0tWh67cjNOABSJ94OWquafP+g6y35Pq9Tj4Yt5CkZXCcdATZodCqe6dQ==
X-Received: by 2002:a05:600c:450a:b0:407:8e85:89ad with SMTP id
 t10-20020a05600c450a00b004078e8589admr12771467wmo.14.1698840073635; 
 Wed, 01 Nov 2023 05:01:13 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 g8-20020a056000118800b0032db8cccd3asm3987701wrx.114.2023.11.01.05.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Nov 2023 05:01:13 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, ville.syrjala@linux.intel.com,
 imre.deak@intel.com, tejas.upadhyay@intel.com, airlied@gmail.com,
 daniel@ffwll.ch
In-Reply-To: <20230927102808.18650-3-tzimmermann@suse.de>
References: <20230927102808.18650-1-tzimmermann@suse.de>
 <20230927102808.18650-3-tzimmermann@suse.de>
Date: Wed, 01 Nov 2023 13:01:12 +0100
Message-ID: <87bkcdhed3.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 2/7] drm/client: Do not acquire module
 reference
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Do not acquire a reference on the module that provides a client's
> callback functions in drm_client_init(). The additional reference
> prevents the user from unloading the callback functions' module and
> thus creating dangling pointers.
>
> This is only necessary if there is no direct dependency between the
> caller of drm_client_init() and the provider of the callbacks in
> struct drm_client_funcs. If this case ever existed, it has been
> removed from the DRM code. Callers of drm_client_init() also provide
> the callback implementation. The lifetime of the clients is tied to
> the dependency chain's outer-most module, which is the hardware's
> DRM driver. Before client helpers could be unloaded, the driver module
> would have to be unloaded, which also unregisters all clients.
>
> Driver modules that set up DRM clients can now be unloaded.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

The change makes sense to me.

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

