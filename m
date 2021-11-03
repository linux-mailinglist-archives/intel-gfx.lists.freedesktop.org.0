Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CC7444234
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 14:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645E96E9BD;
	Wed,  3 Nov 2021 13:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8DD6E10D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 13:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635944953;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iHMsC1oUCRsjBOtz0WOghUbDKMYwj98GGeuEKoCFpno=;
 b=fPsP8DDQy0q+RAOb36usAocXMsytjJ/04QMj8SnnJLZWgIJ9/qRkv7kGkQVrL+MDHd6LGN
 NiEV8jgIlN2FVyJVWx/QviIon5h24BlEJnr7fzTVZc4ig8C47dBoF0XGdsaXAdiE/2tZqb
 laxXMP3bD7bLVMd3BAWPSRDa1hP022Q=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-577-hG8xMivlPXOqBULGtKUOBg-1; Wed, 03 Nov 2021 09:09:10 -0400
X-MC-Unique: hG8xMivlPXOqBULGtKUOBg-1
Received: by mail-wm1-f71.google.com with SMTP id
 k6-20020a7bc306000000b0030d92a6bdc7so1078742wmj.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Nov 2021 06:09:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=iHMsC1oUCRsjBOtz0WOghUbDKMYwj98GGeuEKoCFpno=;
 b=604apeFtB6fkMhL1/c4TcuJUgxURnRSsZF05Z6SAKl2D0kp7h0cWfqMN8Fz7cqHSua
 l1V6BpREuMRYEkG2toCx3HOMa6u6MqfKnhRhxi+nqVdSZlxYXR5omkMM534ofetNiJii
 HuGJ/V/dykFrxJ4/BeUtg+SZtAqob8ot5Mg1FFOvyoAgDx5J6dL15DA26ToLtJ7oZk0V
 AdbcYhZ10ccQOKdxa2ssQLsrmFtxD1XLJaCOo/IlJobDVHqaGKOTA60Xu6oZte1A5EgB
 HqTwu6b5sNdJmufzggE9Wt+6TFN7biRW8FMNznx9hrkQeid57GOVZ5nZ3Ce3H44DbkLk
 Q5jg==
X-Gm-Message-State: AOAM530fxXR+wBkOBgHb/+5VPl+DgJ5oovMwYyE+JrZbFs/0RsTLy9xO
 umXE1ynDa4hVwrtta0tfxO4UOcVLVDNdgUoArGGdOKoRSTLNQ6T43uq9CcK+U8t91Lyw35XNBBM
 /T57z8cbusl3xP83xe6LDCNdPiQKy
X-Received: by 2002:a5d:69ca:: with SMTP id s10mr31884111wrw.312.1635944948944; 
 Wed, 03 Nov 2021 06:09:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHrEigoCAeSjtml4DqbOgRDb3rC6POB4cYQ/OE3/fS74/sMET7hHGSgDw+3c9Pc+WnqHoSzQ==
X-Received: by 2002:a5d:69ca:: with SMTP id s10mr31884038wrw.312.1635944948667; 
 Wed, 03 Nov 2021 06:09:08 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id c11sm2186397wmq.27.2021.11.03.06.09.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Nov 2021 06:09:08 -0700 (PDT)
Message-ID: <33807d3c-9dd1-241a-ad23-0e0d4fba13e1@redhat.com>
Date: Wed, 3 Nov 2021 14:09:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Jani Nikula <jani.nikula@linux.intel.com>, linux-kernel@vger.kernel.org
References: <20211103122809.1040754-1-javierm@redhat.com>
 <20211103122809.1040754-3-javierm@redhat.com> <87tugtbdob.fsf@intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <87tugtbdob.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RESEND PATCH 2/5] drm: Move nomodeset kernel
 parameter handler to the DRM subsystem
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
Cc: linux-fbdev@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, amd-gfx@lists.freedesktop.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Peter Robinson <pbrobinson@gmail.com>, Neal Gompa <ngompa13@gmail.com>,
 Dave Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Ben Skeggs <bskeggs@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Maxime Ripard <mripard@kernel.org>, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, spice-devel@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Jani,

On 11/3/21 13:56, Jani Nikula wrote:

[snip]

>>  
>> +obj-y += drm_nomodeset.o
> 
> This is a subtle functional change. With this, you'll always have
> __setup("nomodeset", text_mode) builtin and the parameter available. And
> using nomodeset will print out the pr_warn() splat from text_mode(). But
> removing nomodeset will have no impact if CONFIG_VGA_CONSOLE=n as that
> leads to vgacon_text_force() always returning false.
>

Yes, that's what I decided at the end to make it unconditional. That
way the same behaviour is preserved (even when only DRM drivers are
using the exported symbol).
 
> To not make functional changes, this should be:
> 
> obj-$(CONFIG_VGA_CONSOLE) += drm_nomodeset.o
>

Right, that should work.

> Now, going with the cleanup in this series, maybe we should make the
> functional change, and break the connection to CONFIG_VGA_CONSOLE
> altogether, also in the header?
> 
> (Maybe we'll also need a proxy drm kconfig option to only have
> drm_modeset.o builtin when CONFIG_DRM != n.)
>

See my other email. I believe the issue is drivers/gpu/drm always
being included even when CONFIG_DRM is not set.

Best regards, -- 
Javier Martinez Canillas
Linux Engineering
Red Hat

