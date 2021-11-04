Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4985744576B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CAF7331B;
	Thu,  4 Nov 2021 16:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16E773305
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636044255;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GBeSNSo+VR936LBuXFto2HVzfx/uW1FgtYIk1y3q3ig=;
 b=fSmYHXiadhCFG0YNBjbumna8ZreiK53W3wGBSb5nNfp8P+17EyJESYUbld7ekE1CSxFf08
 k0GM2XuPUG1+8H2+miKilLBLsmoTo6x4jFBXEQd3isnA/arE9lklge1/s+jnLOL86EK4Ro
 a//X0amiYl2beHRDUEUZG3Q+woPNaaY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-yPQbLmDuN5WetdH1YyL-2Q-1; Thu, 04 Nov 2021 12:44:11 -0400
X-MC-Unique: yPQbLmDuN5WetdH1YyL-2Q-1
Received: by mail-wm1-f71.google.com with SMTP id
 j25-20020a05600c1c1900b00332372c252dso2787602wms.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 09:44:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GBeSNSo+VR936LBuXFto2HVzfx/uW1FgtYIk1y3q3ig=;
 b=RC2o1TQZtGeudEJcxvpYAh3ztazWlZVZ3R8cxOHY5zh1qdAal2REDMzH3SONhMs4AR
 xVlmxfazCfQkUD6wesUh1zTnqujZy+CmGImeq1wS8r74kRCZ0cLof5Mw1LYXCFG39dAR
 FMzLOzXC7wceod4Z3YqY8hIOW65uX+QItCNhVW98oBpf/Qh4Tv8Hb/UjkSlHKOa+RIXm
 gM62RW+TSiz/xBokoOzbAc/GbXjnU9zlIq777R7JJQjO0H4iA/tFFlwTUHhNzPc1TizJ
 dM/351PhqW7AiNzPhbe0cgzSWRehBAGwyvLWdsCZakFEt86RlDVZyyrBVBoAhjI795dI
 FFZw==
X-Gm-Message-State: AOAM530KWISGBAwHZGKB/9bkhd3ph1WTo5aeiw4tTcGRvhK37WDURQNI
 nEyAGfAH/01A5Zz+f/OlnVC7B9Kw+U10aeaO7UaVJvh5aYT1sJQm58OKJrCuEHPriIGA+eLFdle
 /prE8v9daTt4V9m30qVFlxW91hEMY
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr39525106wrt.224.1636044250772; 
 Thu, 04 Nov 2021 09:44:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnATpWRYfiqKo492+/czqTIzFCv7HIX437cz1EV9eI7R7UChO4l+utit2RLduHTmaqMKEFNQ==
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr39525075wrt.224.1636044250590; 
 Thu, 04 Nov 2021 09:44:10 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id o4sm6636216wry.80.2021.11.04.09.44.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Nov 2021 09:44:10 -0700 (PDT)
Message-ID: <3ff9fe95-9bc7-a043-78c6-d52d0ff02e23@redhat.com>
Date: Thu, 4 Nov 2021 17:44:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Jani Nikula <jani.nikula@linux.intel.com>, linux-kernel@vger.kernel.org
References: <20211104160707.1407052-1-javierm@redhat.com>
 <20211104160707.1407052-2-javierm@redhat.com> <87zgqjanz2.fsf@intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <87zgqjanz2.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm: Add a drm_drv_enabled() to
 check if drivers should be enabled
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, amd-gfx@lists.freedesktop.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Peter Robinson <pbrobinson@gmail.com>, nouveau@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Ben Skeggs <bskeggs@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Maxime Ripard <mripard@kernel.org>, virtualization@lists.linux-foundation.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, spice-devel@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/4/21 17:24, Jani Nikula wrote:

[snip]

>> index ab2295dd4500..45cb3e540eff 100644
>> --- a/drivers/gpu/drm/i915/i915_module.c
>> +++ b/drivers/gpu/drm/i915/i915_module.c
>> @@ -18,9 +18,12 @@
>>  #include "i915_selftest.h"
>>  #include "i915_vma.h"
>>  
>> +static const struct drm_driver driver;
>> +
> 
> No, this makes absolutely no sense, and will also oops on nomodeset.
>

Ups, sorry about that. For some reason I thought that it was defined in
the same compilation unit, but I noticed now that it is in i915_drv.c.
 
> BR,
> Jani.
> 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

