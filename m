Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE620663287
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 22:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3258E10E484;
	Mon,  9 Jan 2023 21:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4AF10E484
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 21:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673298893;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TFZjjWis11GFBdGRfw4ckgxzH8gAgz/JcfmlSBC9SCo=;
 b=RlnsdOaSpWqQOd0+ien1GYMHuWN5sjh76bxM8hAl6KfxtXH1N+pJsSSziehbeOzzT3A7+L
 2McpYTtD8/XefAVegVfzbCgImtXD/SBnRXpQeA51oZx2xiWkdd/Mt9wu2BP7kG4ISq1GGm
 fx2inNhgmslEwjGygj5LVDPLM/JSSV4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-368-XkDCngCjNcmv5BFjYSTw-Q-1; Mon, 09 Jan 2023 16:14:52 -0500
X-MC-Unique: XkDCngCjNcmv5BFjYSTw-Q-1
Received: by mail-ej1-f72.google.com with SMTP id
 jg25-20020a170907971900b007c0e98ad898so6264846ejc.15
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Jan 2023 13:14:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TFZjjWis11GFBdGRfw4ckgxzH8gAgz/JcfmlSBC9SCo=;
 b=QKwH4iGTAt4dcxeUDheOISr8ffPDNlAFIWuOSNhqMN07EqVnjga4pX9JodyKUBsxpy
 NjWASJQ44RjfHVUlB/btH3/mBrYEe2WM5vtbNCzQ5mVL2rOqkAS3O8YDWdw6lPAbm2Wn
 JzDKK9yn/kZazjl6u8i+pr5p89zs7nhq9wqhf00CW2L3QlkutchZD2muz8Oh074yMxyi
 yZZi6ZQhth/S8iE0ZcGZIa5gxa182f48AIsjGJTYNRaxW9Xytlv//2R7d27ZFi3bq1M6
 BoX8wvV9gZRHyyCma6dWyG/lkGpZYm3C+kWrB6AipGNhzOugNSipm2VBTk9IJQzuGdw8
 qOAg==
X-Gm-Message-State: AFqh2kpm0uEBaFmhmbhZ+F6TPvXL1d+x3+ajXo+g8/sumgR8OHU4pxFX
 w/fkfVYZvlQMBntGC2UqafjLLcULchMHi4GzdYTwSTCkv9rXNsr6xjQAG/QVjkcrTY2tAPP7MJV
 jvz5pVbICw/bMhTznbv9WtY36Bct2
X-Received: by 2002:a17:906:37c8:b0:84d:2fce:f325 with SMTP id
 o8-20020a17090637c800b0084d2fcef325mr8187007ejc.49.1673298891233; 
 Mon, 09 Jan 2023 13:14:51 -0800 (PST)
X-Google-Smtp-Source: AMrXdXty9f/SOo1KeDaQ7gnEOkCuJZFKZ116mudq5XcNBYeVBMcWowj083/EOk0IPXOacF+AvlCeVQ==
X-Received: by 2002:a17:906:37c8:b0:84d:2fce:f325 with SMTP id
 o8-20020a17090637c800b0084d2fcef325mr8186987ejc.49.1673298890907; 
 Mon, 09 Jan 2023 13:14:50 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 la16-20020a170907781000b0084d494b24dcsm1519339ejc.161.2023.01.09.13.14.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Jan 2023 13:14:50 -0800 (PST)
Message-ID: <1385de27-1a13-b36f-b255-4e6b016453d7@redhat.com>
Date: Mon, 9 Jan 2023 22:14:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>
References: <20230109205721.60694-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230109205721.60694-1-hdegoede@redhat.com>
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
Cc: linux-acpi@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

p.s.

This fixes a regression in 6.1, adding the regressions list to the Cc.

Once we figure out the best way to fix this (this patch is more of a proposal
how to fix this rather then a definitive fix), we should also backport
the fix to 6.1.y.


On 1/9/23 21:57, Hans de Goede wrote:
> The Dell Latitude E6430 both with and without the optional NVidia dGPU
> has a bug in its ACPI tables which is causing Linux to assign the wrong
> ACPI fwnode / companion to the pci_device for the i915 iGPU.
> 
> Specifically under the PCI root bridge there are these 2 ACPI Device()s :
> 
>  Scope (_SB.PCI0)
>  {
>      Device (GFX0)
>      {
>          Name (_ADR, 0x00020000)  // _ADR: Address
>      }
> 
>      ...
> 
>      Device (VID)
>      {
>          Name (_ADR, 0x00020000)  // _ADR: Address
>          ...
> 
>          Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
>          {
>              VDP8 = Arg0
>              VDP1 (One, VDP8)
>          }
> 
>          Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
>          {
>              ...
>          }
>          ...
>      }
>  }
> 
> The non-functional GFX0 ACPI device is a problem, because this gets
> returned as ACPI companion-device by acpi_find_child_device() for the iGPU.
> 
> This is a long standing problem and the i915 driver does use the ACPI
> companion for some things, but works fine without it.
> 
> However since commit 63f534b8bad9 ("ACPI: PCI: Rework acpi_get_pci_dev()")
> acpi_get_pci_dev() relies on the physical-node pointer in the acpi_device
> and that is set on the wrong acpi_device because of the wrong
> acpi_find_child_device() return. This breaks the ACPI video code, leading
> to non working backlight control in some cases.
> 
> Make find_child_checks() return a higher score for children which have
> pnp-ids set by various scan helpers like acpi_is_video_device(), so
> that it picks the right companion-device.
> 
> An alternative approach would be to directly call acpi_is_video_device()
> from find_child_checks() but that would be somewhat computationally
> expensive given that acpi_find_child_device() iterates over all the
> PCI0 children every time it is called.
> 
> Fixes: 63f534b8bad9 ("ACPI: PCI: Rework acpi_get_pci_dev()")
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/acpi/glue.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/acpi/glue.c b/drivers/acpi/glue.c
> index 204fe94c7e45..2055dfd7678b 100644
> --- a/drivers/acpi/glue.c
> +++ b/drivers/acpi/glue.c
> @@ -75,7 +75,7 @@ static struct acpi_bus_type *acpi_get_bus_type(struct device *dev)
>  }
>  
>  #define FIND_CHILD_MIN_SCORE	1
> -#define FIND_CHILD_MAX_SCORE	2
> +#define FIND_CHILD_MAX_SCORE	3
>  
>  static int match_any(struct acpi_device *adev, void *not_used)
>  {
> @@ -89,15 +89,25 @@ static bool acpi_dev_has_children(struct acpi_device *adev)
>  
>  static int find_child_checks(struct acpi_device *adev, bool check_children)
>  {
> +	int score = FIND_CHILD_MIN_SCORE;
>  	unsigned long long sta;
>  	acpi_status status;
>  
>  	if (check_children && !acpi_dev_has_children(adev))
>  		return -ENODEV;
>  
> +	/*
> +	 * For devices without a _STA method, prefer devices without a _HID
> +	 * (which conflicts with having an _ADR) but which have been matched
> +	 * in some other way, like e.g. by acpi_is_video_device() over devices
> +	 * with no ids at all.
> +	 */
> +	if (!adev->pnp.type.platform_id && adev->pnp.type.hardware_id)
> +		score++;
> +
>  	status = acpi_evaluate_integer(adev->handle, "_STA", NULL, &sta);
>  	if (status == AE_NOT_FOUND)
> -		return FIND_CHILD_MIN_SCORE;
> +		return score;
>  
>  	if (ACPI_FAILURE(status) || !(sta & ACPI_STA_DEVICE_ENABLED))
>  		return -ENODEV;

