Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CF55755F6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 21:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A0310E69F;
	Thu, 14 Jul 2022 19:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783CE10E69F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 19:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657827801;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dg9+JDWes1KzSSyj81sTXIcE5x2fJUI/Oun+MFc1PXQ=;
 b=gK0pY+AQvhOsOJA5iZa2qn29+H7d04FgaFQRWVKUeRS3q6xf0QT2EEm7Q0D4dDrWdjVVAe
 VSPTTIWg7u3yzftXBKE/HlW3Gg3i6t9V7JyB7giE3BlQJI6zsVGU9eNei78cPU6GIEbw1B
 a+WlL9Tn+9RxSdKYAp9+3ZhRi+QQlSA=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-2WrrTl8AM2WeL-vaQ6ItOg-1; Thu, 14 Jul 2022 15:43:18 -0400
X-MC-Unique: 2WrrTl8AM2WeL-vaQ6ItOg-1
Received: by mail-ed1-f72.google.com with SMTP id
 y21-20020a056402359500b0043adf65d1a0so2074419edc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 12:43:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=dg9+JDWes1KzSSyj81sTXIcE5x2fJUI/Oun+MFc1PXQ=;
 b=bN9yNIGKCW60rAcBkR6ZYd+VS5WEyBg44JGFiezY5TY3bDoCYMW2RAowNxQsk5u+xc
 EaoeksdpV3PumaW1NOvVY3nNqsyrr7tOs+wboYDyhVoyomeO8KYG7H8fJ0YHtI+1HQe3
 EqMVDnDy0Ne2kNG4JYWaXiDBCU2N7aj78plu+e3YiUoho1PEBxKBSb4XNDJ/rwNpZEcg
 +RPl+cvq0SG6kDykn1Baz4ZrMTPgvdg/KtKPczfZX9rtaQpfWMEdeB12Zn3DjXIYFzuM
 SMos6ObcqoMDv7ol1gWWnsELDhKfm+qAslsL0hLDqEKJbUTSYvdB1+b6TcbnpuF1G3P3
 RmeQ==
X-Gm-Message-State: AJIora/wLx9JHlS523HsGTU2O4ddNg3TweN6VIuVeEW2PQwdaq7hO34r
 2XS/X3izVdaXJSUCYDISUHqbPiPnVU0kiq6UobzyP0m1o/BdDztksTZRQbD2lyrVmnCNBE+Ngbb
 T7cKRggxE/ZWlQ3Gi+WuIo89Jp42B
X-Received: by 2002:aa7:cd0a:0:b0:43a:8ffd:d8de with SMTP id
 b10-20020aa7cd0a000000b0043a8ffdd8demr14293298edw.5.1657827797360; 
 Thu, 14 Jul 2022 12:43:17 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sjzFwGcCzuqBNOwrF/HzJhG/eH+kbiODMOpHqQTx4Vp9DVXAhl6LxC4caqJ/zuahqUSYSUfQ==
X-Received: by 2002:aa7:cd0a:0:b0:43a:8ffd:d8de with SMTP id
 b10-20020aa7cd0a000000b0043a8ffdd8demr14293272edw.5.1657827797138; 
 Thu, 14 Jul 2022 12:43:17 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 a9-20020a05640213c900b0043b0951f7b1sm1609186edx.41.2022.07.14.12.43.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Jul 2022 12:43:16 -0700 (PDT)
Message-ID: <286b0209-ea8d-b3f0-9759-e3a4a86c34cb@redhat.com>
Date: Thu, 14 Jul 2022 21:43:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: "Limonciello, Mario" <Mario.Limonciello@amd.com>,
 Werner Sembach <wse@tuxedocomputers.com>, Ben Skeggs <bskeggs@redhat.com>,
 Karol Herbst <kherbst@redhat.com>, Lyude <lyude@redhat.com>,
 Daniel Dadap <ddadap@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Deucher, Alexander" <Alexander.Deucher@amd.com>,
 "Koenig, Christian" <Christian.Koenig@amd.com>,
 "Pan@vger.kernel.org" <Pan@vger.kernel.org>, "Pan, Xinhui"
 <Xinhui.Pan@amd.com>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Lukas Wunner <lukas@wunner.de>, Mark Gross <markgross@kernel.org>,
 Andy Shevchenko <andy@kernel.org>
References: <20220712193910.439171-1-hdegoede@redhat.com>
 <20220712193910.439171-28-hdegoede@redhat.com>
 <82521ebc-3f14-8d3b-5601-6b4a36ef19af@tuxedocomputers.com>
 <MN0PR12MB6101A54D0F72B0501BE818DBE2899@MN0PR12MB6101.namprd12.prod.outlook.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <MN0PR12MB6101A54D0F72B0501BE818DBE2899@MN0PR12MB6101.namprd12.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 27/29] ACPI: video: Drop Clevo/TUXEDO
 NL5xRU and NL5xNU acpi_backlight=native quirks
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
Cc: David Airlie <airlied@linux.ie>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/13/22 19:21, Limonciello, Mario wrote:
> [Public]
> 
> 
> 
>> -----Original Message-----
>> From: Werner Sembach <wse@tuxedocomputers.com>
>> Sent: Wednesday, July 13, 2022 12:08
>> To: Hans de Goede <hdegoede@redhat.com>; Ben Skeggs
>> <bskeggs@redhat.com>; Karol Herbst <kherbst@redhat.com>; Lyude
>> <lyude@redhat.com>; Daniel Dadap <ddadap@nvidia.com>; Maarten
>> Lankhorst <maarten.lankhorst@linux.intel.com>; Maxime Ripard
>> <mripard@kernel.org>; Thomas Zimmermann <tzimmermann@suse.de>;
>> Jani Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
>> <joonas.lahtinen@linux.intel.com>; Rodrigo Vivi <rodrigo.vivi@intel.com>;
>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>; Deucher, Alexander
>> <Alexander.Deucher@amd.com>; Koenig, Christian
>> <Christian.Koenig@amd.com>; Pan@vger.kernel.org; Pan, Xinhui
>> <Xinhui.Pan@amd.com>; Rafael J . Wysocki <rafael@kernel.org>; Mika
>> Westerberg <mika.westerberg@linux.intel.com>; Lukas Wunner
>> <lukas@wunner.de>; Mark Gross <markgross@kernel.org>; Andy
>> Shevchenko <andy@kernel.org>
>> Cc: nouveau@lists.freedesktop.org; Daniel Vetter <daniel@ffwll.ch>; David
>> Airlie <airlied@linux.ie>; intel-gfx <intel-gfx@lists.freedesktop.org>; dri-
>> devel@lists.freedesktop.org; amd-gfx@lists.freedesktop.org; Len Brown
>> <lenb@kernel.org>; linux-acpi@vger.kernel.org; platform-driver-
>> x86@vger.kernel.org
>> Subject: Re: [PATCH v2 27/29] ACPI: video: Drop Clevo/TUXEDO NL5xRU and
>> NL5xNU acpi_backlight=native quirks
>>
>> Hi,
>>
>> On 7/12/22 21:39, Hans de Goede wrote:
>>> acpi_backlight=native is the default for these, but as the comment
>>> explains the quirk was still necessary because even briefly registering
>>> the acpi_video0 backlight; and then unregistering it once the native
>>> driver showed up, was leading to issues.
>>>
>>> After the "ACPI: video: Make backlight class device registration
>>> a separate step" patch from earlier in this patch-series, we no
>>> longer briefly register the acpi_video0 backlight on systems where
>>> the native driver should be used.
>>>
>>> So this is no longer an issue an the quirks are no longer needed.
>>>
>>> Cc: Werner Sembach <wse@tuxedocomputers.com>
>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>>
>> Tested and can confirm: The quirks are no longer needed with this Patchset.
>>
>> Tested-by: Werner Sembach <wse@tuxedocomputers.com>
> 
> Probably should include this link tag in this commit too then as it fixes
> the Tong Fang systems too.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=215683

Good point, I've added this to the version in my personal tree.

Regards,

Hans




> 
>>
>> Kind Regards,
>>
>> Werner Sembach
>>
>>> ---
>>>   drivers/acpi/video_detect.c | 75 -------------------------------------
>>>   1 file changed, 75 deletions(-)
>>>
>>> diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
>>> index 2a4d376a703e..4b9395d1bda7 100644
>>> --- a/drivers/acpi/video_detect.c
>>> +++ b/drivers/acpi/video_detect.c
>>> @@ -599,81 +599,6 @@ static const struct dmi_system_id
>> video_detect_dmi_table[] = {
>>>   		DMI_MATCH(DMI_BOARD_NAME, "N250P"),
>>>   		},
>>>   	},
>>> -	/*
>>> -	 * Clevo NL5xRU and NL5xNU/TUXEDO Aura 15 Gen1 and Gen2 have
>> both a
>>> -	 * working native and video interface. However the default detection
>>> -	 * mechanism first registers the video interface before unregistering
>>> -	 * it again and switching to the native interface during boot. This
>>> -	 * results in a dangling SBIOS request for backlight change for some
>>> -	 * reason, causing the backlight to switch to ~2% once per boot on
>> the
>>> -	 * first power cord connect or disconnect event. Setting the native
>>> -	 * interface explicitly circumvents this buggy behaviour, by avoiding
>>> -	 * the unregistering process.
>>> -	 */
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xRU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR, "TUXEDO"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "NL5xRU"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xRU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR,
>> "SchenkerTechnologiesGmbH"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "NL5xRU"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xRU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR, "Notebook"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "NL5xRU"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xRU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR, "TUXEDO"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "AURA1501"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xRU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR, "TUXEDO"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "EDUBOOK1502"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xNU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR, "TUXEDO"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "NL5xNU"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xNU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR,
>> "SchenkerTechnologiesGmbH"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "NL5xNU"),
>>> -		},
>>> -	},
>>> -	{
>>> -	.callback = video_detect_force_native,
>>> -	.ident = "Clevo NL5xNU",
>>> -	.matches = {
>>> -		DMI_MATCH(DMI_SYS_VENDOR, "Notebook"),
>>> -		DMI_MATCH(DMI_BOARD_NAME, "NL5xNU"),
>>> -		},
>>> -	},
>>>
>>>   	/*
>>>   	 * Desktops which falsely report a backlight and which our heuristics

