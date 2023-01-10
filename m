Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6D76644D3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 16:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76CD210E5DC;
	Tue, 10 Jan 2023 15:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47AA910E5DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 15:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673364641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/yxSKjjiV63qZ4xo0c25jroyEZ10sbvlzXlHQFiTEoU=;
 b=EPWncY/OD/AYEYx9wWBbXtq+4HQr3824BdfmYIakSoz8mwtKnfxkEhJajNWMxXBxQM6RxA
 zVPjOo1b1l5xBf7s5EpCgyVQrsHZOgwwIi483JVor5ZRU81xhfSBsaLfuO5kSyihzRuF5F
 rhTyPIZU04X9jGwuLqo02vfjzpxl8i8=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-638-TKP4jnMgPk-20l4WkNn6og-1; Tue, 10 Jan 2023 10:30:30 -0500
X-MC-Unique: TKP4jnMgPk-20l4WkNn6og-1
Received: by mail-ej1-f70.google.com with SMTP id
 hr34-20020a1709073fa200b0083a60c1d7abso8096024ejc.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 07:30:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/yxSKjjiV63qZ4xo0c25jroyEZ10sbvlzXlHQFiTEoU=;
 b=dPNV40kKAJk4Z1nFHQiMLlmXwfLCHeJ0gVtpcbJnzCijlhVIAmdPzDs/XH8Oyxbtec
 0DdBZQp7kWuyxOntJPlW4nwY6JWC3gJ1Dv6YMxauHtei1uvxR2KZWPjoL/OLvfdMWdMP
 tCH2W/48y6hlH2mab9RZSNABDLooVpQ+e69oLPXdInDJffGzNDLUeTNilK0iLpppKwMR
 Z8j4yNd1B5xe+NgpS8mnnJXZuy+Apw3HaJgltyA2VKc4i35n573XtgQM0IZ0fveq5MIo
 vPi+ZOQVaLPEqaICVm7pDet3v/HqISslKxc1Cvi1Dneshdf6QnLKOnTzxscETxIHZfT3
 DGJg==
X-Gm-Message-State: AFqh2ko6zLuQIPW5g9f4o7WkLKmsSe5Z3QXLoAo8BNI44cOPnQE0boZu
 KOzdTBYPJwKyjfYQUFyLqSFSat3C+XONtTFkygS8OJu46O0NFgEkG74ZgBaOykJHNbz4Xj5YGqA
 DiKf5iXixpvJRqkRv542XIAf1eB4p
X-Received: by 2002:a17:906:3f86:b0:7c1:765:9cfc with SMTP id
 b6-20020a1709063f8600b007c107659cfcmr61565020ejj.34.1673364591119; 
 Tue, 10 Jan 2023 07:29:51 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtEVA4ofr4j4JqGHp8OVl9qfYtoQ2s2XMhN02AeJYgDHGzZq8VIunQmZQ7bGyIOZRDWxX5rXw==
X-Received: by 2002:a17:906:3f86:b0:7c1:765:9cfc with SMTP id
 b6-20020a1709063f8600b007c107659cfcmr61564998ejj.34.1673364590818; 
 Tue, 10 Jan 2023 07:29:50 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 ex18-20020a170907955200b0081586470b7csm5106892ejc.173.2023.01.10.07.29.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Jan 2023 07:29:50 -0800 (PST)
Message-ID: <f8d36fc8-6969-4e2c-6b64-7a13e15c970c@redhat.com>
Date: Tue, 10 Jan 2023 16:29:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <20230109205721.60694-1-hdegoede@redhat.com>
 <5655985.DvuYhMxLoT@kreacher>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <5655985.DvuYhMxLoT@kreacher>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] ACPI: Fix selecting the wrong ACPI fwnode
 for the iGPU on some Dell laptops
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
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org,
 linux-acpi@vger.kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rafael,

On 1/10/23 14:33, Rafael J. Wysocki wrote:
> On Monday, January 9, 2023 9:57:21 PM CET Hans de Goede wrote:
>> The Dell Latitude E6430 both with and without the optional NVidia dGPU
>> has a bug in its ACPI tables which is causing Linux to assign the wrong
>> ACPI fwnode / companion to the pci_device for the i915 iGPU.
>>
>> Specifically under the PCI root bridge there are these 2 ACPI Device()s :
>>
>>  Scope (_SB.PCI0)
>>  {
>>      Device (GFX0)
>>      {
>>          Name (_ADR, 0x00020000)  // _ADR: Address
>>      }
>>
>>      ...
>>
>>      Device (VID)
>>      {
>>          Name (_ADR, 0x00020000)  // _ADR: Address
>>          ...
>>
>>          Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
>>          {
>>              VDP8 = Arg0
>>              VDP1 (One, VDP8)
>>          }
>>
>>          Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
>>          {
>>              ...
>>          }
>>          ...
>>      }
>>  }
>>
>> The non-functional GFX0 ACPI device is a problem, because this gets
>> returned as ACPI companion-device by acpi_find_child_device() for the iGPU.
>>
>> This is a long standing problem and the i915 driver does use the ACPI
>> companion for some things, but works fine without it.
>>
>> However since commit 63f534b8bad9 ("ACPI: PCI: Rework acpi_get_pci_dev()")
>> acpi_get_pci_dev() relies on the physical-node pointer in the acpi_device
>> and that is set on the wrong acpi_device because of the wrong
>> acpi_find_child_device() return. This breaks the ACPI video code, leading
>> to non working backlight control in some cases.
> 
> Interesting.  Sorry for the trouble.

No problem, as mentioned this is actually a long standing issue / bug
in the ACPI tables, it just never surfaced before.

>> Make find_child_checks() return a higher score for children which have
>> pnp-ids set by various scan helpers like acpi_is_video_device(), so
>> that it picks the right companion-device.
> 
> This has a potential of changing the behavior in some cases that are not
> relevant here which is generally risky.
> 
>> An alternative approach would be to directly call acpi_is_video_device()
>> from find_child_checks() but that would be somewhat computationally
>> expensive given that acpi_find_child_device() iterates over all the
>> PCI0 children every time it is called.
> 
> I agree with the above, but my fix would be something like the patch below (not
> really tested, but it builds).

Thanks, I have just given this a spin on my E6430 and I can confirm
it still fixes things.

I'll send out this version (re-using most of the v1 commitmsg) as a v2
right away.

Regards,

Hans





> 
> ---
>  drivers/acpi/glue.c     |   14 ++++++++++++--
>  drivers/acpi/scan.c     |    7 +++++--
>  include/acpi/acpi_bus.h |    3 ++-
>  3 files changed, 19 insertions(+), 5 deletions(-)
> 
> Index: linux-pm/include/acpi/acpi_bus.h
> ===================================================================
> --- linux-pm.orig/include/acpi/acpi_bus.h
> +++ linux-pm/include/acpi/acpi_bus.h
> @@ -230,7 +230,8 @@ struct acpi_pnp_type {
>  	u32 hardware_id:1;
>  	u32 bus_address:1;
>  	u32 platform_id:1;
> -	u32 reserved:29;
> +	u32 backlight:1;
> +	u32 reserved:28;
>  };
>  
>  struct acpi_device_pnp {
> Index: linux-pm/drivers/acpi/scan.c
> ===================================================================
> --- linux-pm.orig/drivers/acpi/scan.c
> +++ linux-pm/drivers/acpi/scan.c
> @@ -1370,9 +1370,12 @@ static void acpi_set_pnp_ids(acpi_handle
>  		 * Some devices don't reliably have _HIDs & _CIDs, so add
>  		 * synthetic HIDs to make sure drivers can find them.
>  		 */
> -		if (acpi_is_video_device(handle))
> +		if (acpi_is_video_device(handle)) {
>  			acpi_add_id(pnp, ACPI_VIDEO_HID);
> -		else if (acpi_bay_match(handle))
> +			pnp->type.backlight = 1;
> +			break;
> +		}
> +		if (acpi_bay_match(handle))
>  			acpi_add_id(pnp, ACPI_BAY_HID);
>  		else if (acpi_dock_match(handle))
>  			acpi_add_id(pnp, ACPI_DOCK_HID);
> Index: linux-pm/drivers/acpi/glue.c
> ===================================================================
> --- linux-pm.orig/drivers/acpi/glue.c
> +++ linux-pm/drivers/acpi/glue.c
> @@ -75,7 +75,8 @@ static struct acpi_bus_type *acpi_get_bu
>  }
>  
>  #define FIND_CHILD_MIN_SCORE	1
> -#define FIND_CHILD_MAX_SCORE	2
> +#define FIND_CHILD_MID_SCORE	2
> +#define FIND_CHILD_MAX_SCORE	3
>  
>  static int match_any(struct acpi_device *adev, void *not_used)
>  {
> @@ -96,8 +97,17 @@ static int find_child_checks(struct acpi
>  		return -ENODEV;
>  
>  	status = acpi_evaluate_integer(adev->handle, "_STA", NULL, &sta);
> -	if (status == AE_NOT_FOUND)
> +	if (status == AE_NOT_FOUND) {
> +		/*
> +		 * Special case: backlight device objects without _STA are
> +		 * preferred to other objects with the same _ADR value, because
> +		 * it is more likely that they are actually useful.
> +		 */
> +		if (adev->pnp.type.backlight)
> +			return FIND_CHILD_MID_SCORE;
> +
>  		return FIND_CHILD_MIN_SCORE;
> +	}
>  
>  	if (ACPI_FAILURE(status) || !(sta & ACPI_STA_DEVICE_ENABLED))
>  		return -ENODEV;
> 
> 
> 

