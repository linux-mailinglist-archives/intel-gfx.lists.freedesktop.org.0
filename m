Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C40444618C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 10:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03E76E063;
	Fri,  5 Nov 2021 09:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 647E76E0C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 09:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636105722;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TDCxTaiuFN2oEnFyA/uNKzyzy5BqHnuVtliUgcTwAYg=;
 b=T7O5sQH3+lcP0n8QwppCkQoqrE1NK7zwo4GOr2GIK1iDVOx+KlLnN2GiUYCIvztSJ0Mwyd
 7SchRVBXjz/CqekeNuz2bBocsgNTX+eg9K0cfjw6CK8bxsy445X0Uh29I4MUoFhhviGOgo
 luNn41RjpOJM/P2XkNFUHLgdi3oHrC4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590--mGsNGQ8OF67lWRzXBLQGQ-1; Fri, 05 Nov 2021 05:48:41 -0400
X-MC-Unique: -mGsNGQ8OF67lWRzXBLQGQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 k25-20020a05600c1c9900b00332f798ba1dso5466331wms.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Nov 2021 02:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=TDCxTaiuFN2oEnFyA/uNKzyzy5BqHnuVtliUgcTwAYg=;
 b=yHb2rQFDl9ObUoI7pMsZSsG7CHHkT8WUiImfA/dM/aTjnqZ99sPUXQpk0FWXc57Xxr
 Midrsf28W1heCuS0QK1cwt0jQEGJCZvfB7ic4RTs3Wsehdo0fc1vCyJgkfGhYqeRXmYg
 WlQxLGb4+qkVp5ZafDU24zB+vlARR9jf9eiLNwJLZfD05Mjf6AR7EeBBXIyHA+vMLZFR
 CIiZZ1T+dsGVVt/grp9E9K/JPUtB8gRbO/Aixl4Qv+ks4cl3YRvGTtgpovcwVQjDD7Xu
 BenQE4InwPblrXqQS9okowfOnjGiyzK+tYqTLXCYL7Hcw9Q0Asc8jJiy8usGe1M/gr72
 tc0Q==
X-Gm-Message-State: AOAM5310sU9rmHiniO2O39gDoCN6RqDtj2t2deAPUt/JRlON8lcvrhE1
 I/Y+SiO+tAFR0urcK4AH+MIcVyTkO0vwvYZu/7a4ZUjPP7YedZtHNAY5ZBrZ3ON3K5+4auGlrLe
 Y/XSi1UvmOPRj1IPF06mNzzPYdPSb
X-Received: by 2002:a05:6000:1043:: with SMTP id
 c3mr47457559wrx.64.1636105720565; 
 Fri, 05 Nov 2021 02:48:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAy5NPgcgZDunmEq87tVcIv6+r2xtRAUkaFqPrEIO+dNAeu5S620buzaYA0spdyOnq5mk7Jw==
X-Received: by 2002:a05:6000:1043:: with SMTP id
 c3mr47457520wrx.64.1636105720304; 
 Fri, 05 Nov 2021 02:48:40 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id u20sm6503643wmq.6.2021.11.05.02.48.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Nov 2021 02:48:39 -0700 (PDT)
Message-ID: <38dbcc8f-2f95-6846-537f-9b85468bfa87@redhat.com>
Date: Fri, 5 Nov 2021 10:48:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-kernel@vger.kernel.org
References: <20211104160707.1407052-1-javierm@redhat.com>
 <20211104160707.1407052-2-javierm@redhat.com> <87ilx7ae3v.fsf@intel.com>
 <0c07f121-42d3-9f37-1e14-842fb685b501@redhat.com>
 <d4a64906-69e5-3250-2362-79f2afac0a23@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <d4a64906-69e5-3250-2362-79f2afac0a23@suse.de>
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
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>,
 Ben Skeggs <bskeggs@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, spice-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 virtualization@lists.linux-foundation.org, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Peter Robinson <pbrobinson@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Thomas,

On 11/5/21 09:43, Thomas Zimmermann wrote:
> Hi
> 
> Am 04.11.21 um 21:09 schrieb Javier Martinez Canillas:
>> Hello Jani,
>>
>> On 11/4/21 20:57, Jani Nikula wrote:
>>> On Thu, 04 Nov 2021, Javier Martinez Canillas <javierm@redhat.com> wrote:
>>>> +/**
>>>> + * drm_drv_enabled - Checks if a DRM driver can be enabled
>>>> + * @driver: DRM driver to check
>>>> + *
>>>> + * Checks whether a DRM driver can be enabled or not. This may be the case
>>>> + * if the "nomodeset" kernel command line parameter is used.
>>>> + *
>>>> + * Return: 0 on success or a negative error code on failure.
>>>> + */
>>>> +int drm_drv_enabled(const struct drm_driver *driver)
> 
> Jani mentioned that i915 absolutely wants this to run from the 
> module_init function. Best is to drop the parameter.
>

Ok. I now wonder though how much value would add this function since
it will just be a wrapper around the nomodeset check.

We talked about adding a new DRIVER_GENERIC feature flag and check for
this, but as danvet mentioned that is not really needed. We just need
to avoid testing for nomodeset in the simpledrm driver.

Do you envision other condition that could be added later to disable a
DRM driver ? Or do you think that just from a code readability point of
view makes worth it ?

>>>> +{
>>>> +	if (vgacon_text_force()) {
>>>> +		DRM_INFO("%s driver is disabled\n", driver->name);
>>>> +		return -ENODEV;
>>>> +	}
> 
> If we run this from within a module_init function, we'd get plenty of 
> these warnings if drivers are compiled into the kernel. Maybe simply 
> remove the message. There's already a warning printed by the nomodeset 
> handler.
>

Indeed. I'll just drop it.

>>>> +
>>>> +	return 0;
>>>> +}
>>>> +EXPORT_SYMBOL(drm_drv_enabled);
>>>
>>> The name implies a bool return, but it's not.
>>>
>>> 	if (drm_drv_enabled(...)) {
>>> 		/* surprise, it's disabled! */
>>> 	}
>>>
>>
>> It used to return a bool in v2 but Thomas suggested an int instead to
>> have consistency on the errno code that was returned by the callers.
>>
>> I should probably name that function differently to avoid confusion.
> 
> Yes, please.
>

drm_driver_check() maybe ?
 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

