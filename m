Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D639F95D45E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 19:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D389C10EC95;
	Fri, 23 Aug 2024 17:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="DfCtqtzR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F38E10EC97
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 17:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724434484;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lAye8c/hxPTIJkyOWzzpXt1RWp9dYR/f5SpldqZ0M7Y=;
 b=DfCtqtzRO2+hxlhEPKF+CMQYBEFzfDzMGHu1xu7gqHUfgVPzp/X4moZrcM8KcAMQaWOi8p
 ay7YOEqmxGV9TgrjBXWhiL6XFGlcjW9DmQOA5Y+A6YL9awCKBMdEf+yUpLBt73bDoGI2RO
 KmvbYhsWHzMSO1N0cE32PeeEfJWjhIM=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-680-T6ltUjT8OGGBH0Pb9fKRug-1; Fri, 23 Aug 2024 13:34:42 -0400
X-MC-Unique: T6ltUjT8OGGBH0Pb9fKRug-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a86884df270so193671566b.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 10:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724434481; x=1725039281;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lAye8c/hxPTIJkyOWzzpXt1RWp9dYR/f5SpldqZ0M7Y=;
 b=FCSS6YUgH8RPc9bcPKaVcAEC5Id/GCMAx0OJ3jwNodsul2nampq+x9Q36fEyoJrMyA
 F+F4J0hAe55M44LGpMfVPyicdZrieFxRHT4P79gwdxF8SPaGCImXrWzi58BHzpAhApdh
 06xR30fgrrBcg44QqkdZhv/Qt64z2NZ5v3hgc1AUjUvHz1OG3gPtIbgWbN5q4mcGZpF0
 CoClY8jnWuHiBzWsUwZKU11MrA6CiVLg+UUs5d6w7azA7pU5A8q6JG+CmahMq0LJyrfK
 UgKubIhi5qlkyNd0Z9cQ3MePm9KQvL+6NwKdPOVNSs00qBmKg/E4IuMvhNDTfPkY9E23
 kC+Q==
X-Gm-Message-State: AOJu0YyqEN0lZsIf+X7bNA751hHe6n1cLR0HO7wrkh/ElV5yL7ny/QXY
 4wLZC3mE/iz3TX/7BXLhL3054USaEhiwsf/SR4lGPGgbfV52RosSgI1bRDJxoLCD8tlOAzAv/Q5
 Vvk2J23E/GHAw5QiRKddkv8Kbkgi3KbnnDlJdTxoHrccT7GgYKWKfHeMRjN1GmMidbg==
X-Received: by 2002:a17:907:6d07:b0:a86:7514:e646 with SMTP id
 a640c23a62f3a-a86a54d1473mr220016766b.42.1724434481513; 
 Fri, 23 Aug 2024 10:34:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhVdC/sBgpIb4QXyF7DeK9QFs2pW65OLNMQMpLnl6teatUR7hMdVjiceOHWDOdfggCOHQITQ==
X-Received: by 2002:a17:907:6d07:b0:a86:7514:e646 with SMTP id
 a640c23a62f3a-a86a54d1473mr220015766b.42.1724434481008; 
 Fri, 23 Aug 2024 10:34:41 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a868f2a58ddsm285466866b.80.2024.08.23.10.34.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2024 10:34:40 -0700 (PDT)
Message-ID: <a0ca2cb0-2938-41d7-a290-bb331f2d4c35@redhat.com>
Date: Fri, 23 Aug 2024 19:34:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dsi: Make Lenovo Yoga Tab 3 X90F DMI match less
 strict
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
References: <20240823075055.17198-1-hdegoede@redhat.com>
 <87v7zr3ays.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87v7zr3ays.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

Hi,

On 8/23/24 10:22 AM, Jani Nikula wrote:
> On Fri, 23 Aug 2024, Hans de Goede <hdegoede@redhat.com> wrote:
>> There are 2G and 4G RAM versions of the Lenovo Yoga Tab 3 X90F and it
>> turns out that the 2G version has a DMI product name of
>> "CHERRYVIEW D1 PLATFORM" where as the 4G version has
>> "CHERRYVIEW C0 PLATFORM". The sys-vendor + product-version check are
>> unique enough that the product-name check is not necessary.
>>
>> Drop the product-name check so that the existing DMI match for the 4G
>> RAM version also matches the 2G RAM version.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> I'll take your word for it.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Thank you.

I was going to push this directly to drm-intel-fixes, but reading:

https://drm.pages.freedesktop.org/maintainer-tools/repositories/drm-intel.html#repository-and-branches

It seems that I should push this to drm-intel-next and then cherry-pick
it into drm-intel-fixes ?

Regards,

Hans




> 
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 40b3ffd534d3..6cebcc87ef14 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1874,7 +1874,6 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
>>  		/* Lenovo Yoga Tab 3 Pro YT3-X90F */
>>  		.matches = {
>>  			DMI_MATCH(DMI_SYS_VENDOR, "Intel Corporation"),
>> -			DMI_MATCH(DMI_PRODUCT_NAME, "CHERRYVIEW D1 PLATFORM"),
>>  			DMI_MATCH(DMI_PRODUCT_VERSION, "Blade3-10A-001"),
>>  		},
>>  		.driver_data = (void *)vlv_dsi_lenovo_yoga_tab3_backlight_fixup,
> 

