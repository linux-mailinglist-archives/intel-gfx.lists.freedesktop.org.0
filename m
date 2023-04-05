Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 222FF6D8952
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 23:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1B610E261;
	Wed,  5 Apr 2023 21:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA5510E1E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 21:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680728972;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YO532sOCk7QS+kqonSqdJ1x9wG4RVcYNXha8nJHWDR0=;
 b=hrEomwbGqsJRG4FMkzRgbsRerQI2Om1xXHA2b6Inzm+/GKcG2vKM2bTI985Yd1fXI33Nq5
 tjObLiSf9fLviUsvEVyE5ulSyAb2zJF/elpY/GCXCJ85WAAwAtW9FuDyAiWYULb3/dALr/
 p53h2WEtdCgxPwKh51h+u/IuAcMkT24=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-633-B4IgDNohPcK_xvVKtZQO2A-1; Wed, 05 Apr 2023 17:09:31 -0400
X-MC-Unique: B4IgDNohPcK_xvVKtZQO2A-1
Received: by mail-wm1-f69.google.com with SMTP id
 bi7-20020a05600c3d8700b003edecc610abso19567947wmb.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 14:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680728970;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YO532sOCk7QS+kqonSqdJ1x9wG4RVcYNXha8nJHWDR0=;
 b=1RslckhvJjrB9WbXyu8TKF7hEJSTa/QXJNvOaPzuBGo2gZvgtMq6Icx9gItuNktKPV
 0amcYrylyQrfNaz6dJJqd9c5smGVdadJ97cW+OrZZf13eRmGHLw8ywcK0vCOcs04Mzi/
 GUEr7tEcPm1Ahy67ElPqp46GELdcIK1nAoU5o3EVBc179MmHGbVKVfKbIZmVoTGC7qWo
 ap+xLJyWklaIiXEQQxP9AAN0vfz+y9JxbyP3zWkhllLh0I1rS4csRSlfTmWQsa6eyxQl
 7rjhYubTbbIXpqupb2adfwWAq2ZE58PNF+kwsjZgJepH/zJkKin5DAnxXv36C1E2Y5WU
 xq1w==
X-Gm-Message-State: AAQBX9cEdodTQ+LFYDyxp+UdSOrZKf1naIDJt1cif3LdAj8oDI/NGDUY
 yCqZFnsHOQVZM+Ed4RLmo0riX9efcxFtvXHtdE7j+dK2VgIIdCekDFdp6TwAO4m5FlAQQcxnE2g
 NVNB0h0tV+Ut+TngJrrQAOQ+7GBzk
X-Received: by 2002:a7b:c8d5:0:b0:3f0:44d1:3ba5 with SMTP id
 f21-20020a7bc8d5000000b003f044d13ba5mr5535392wml.5.1680728970540; 
 Wed, 05 Apr 2023 14:09:30 -0700 (PDT)
X-Google-Smtp-Source: AKy350aEIsNom9z1ywcolJeDI9TUI2ZeJw5josPfQIhaJ7dqu7ULsSfpcvFxESpz0kfizB4+3GqbKQ==
X-Received: by 2002:a7b:c8d5:0:b0:3f0:44d1:3ba5 with SMTP id
 f21-20020a7bc8d5000000b003f044d13ba5mr5535382wml.5.1680728970219; 
 Wed, 05 Apr 2023 14:09:30 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 jb10-20020a05600c54ea00b003ede2c4701dsm3264701wmb.14.2023.04.05.14.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 14:09:29 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <ZC3dtDP+m4c5jgNZ@phenom.ffwll.local>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
 <20230404194038.472803-3-daniel.vetter@ffwll.ch>
 <87a5zmd2jn.fsf@minerva.mail-host-address-is-not-set>
 <ZC12aR9ddp3j/3dL@phenom.ffwll.local>
 <87ilea9twa.fsf@minerva.mail-host-address-is-not-set>
 <ZC2t1I1SQrQh/fy1@phenom.ffwll.local>
 <878rf69qfj.fsf@minerva.mail-host-address-is-not-set>
 <ZC3dtDP+m4c5jgNZ@phenom.ffwll.local>
Date: Wed, 05 Apr 2023 23:09:27 +0200
Message-ID: <87355e9gu0.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/fb-helper: fix input validation
 gaps in check_var
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel@ffwll.ch> writes:

> On Wed, Apr 05, 2023 at 07:42:08PM +0200, Javier Martinez Canillas wrote:

[...]

>> >> Ah, your patch adds it after that indeed. Please ignore my comment then.
>> >
>> > So rb: you?
>> >
>> 
>> Yes, I already provided it in my previous email and has been picked by
>> patchwork. I could do again but probably will confuse dim when applying.
>
> Yeah just wanted to confirm I cleared up all your questions. Merged the
> entire series to drm-misc-next, thanks for the review.
>

You are welcome.

>> The only patch from your series that is missing an {r,a}b is #1 right now:
>> 
>> https://patchwork.kernel.org/project/dri-devel/list/?series=736966&archived=both
>
> That's a different one :-)
>

Oh, sorry about that. Somehow I switched threads in my head in the middle
of the response.

> I'll respin with your comments and then let you&Thomas duke it out about
> patch 1.
> -Daniel
>

Perfect, thanks! It would be good to finally have that issue fixed.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

