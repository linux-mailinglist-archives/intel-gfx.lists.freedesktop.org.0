Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CF711BA69
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 18:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C15C6EB52;
	Wed, 11 Dec 2019 17:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 383 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 17:36:03 UTC
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3586EB97
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 17:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576085762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vI8I5D2EV8LAbTP9+6YHyR2VwUD8YON5WoS15ZKn6BU=;
 b=A0tt0DWx4u0Rl1jhLkr5HTGtLAEdYtG+qKbx1z5OccUfFkBYHwC3wuYcpko9BqH7J24IQF
 g4y9jdH3u901Y4K5QRQ7um6jKAWgtbgKRo3Uitqk0oZZL9GHUDq202NL63xQOubtsAUsSW
 Ekqq0Y4d933VTfLunMT1RH9oDcQkK54=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-2uC791cJOuuJkjwc3tMzJA-1; Wed, 11 Dec 2019 12:29:36 -0500
Received: by mail-wm1-f69.google.com with SMTP id b131so2615312wmd.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 09:29:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vI8I5D2EV8LAbTP9+6YHyR2VwUD8YON5WoS15ZKn6BU=;
 b=Pk1t7AIwfVwGD4s14fZvMQgmtig1QjhN7PPYfwtjBMrSVYgAlCR5MA62srr9Y/Kdpk
 l75m3oVVVOxNL8q3qW94vH0mNskN1XHwiT2tMMMTctA/HUw/w9GTn19EcLkBmoEoKTEW
 zaRB7NlxpmMRVdLPjpcy4e2JLaeR0N5cDhcbnmzhfBY18f2V8opR1CW3REK4s4CcBsWj
 QgySKsLSW4VlG5XulXMnk660mHCKI06ELc+4rYdMfFTo4/LPMjsXZ0Hd4/riO9JeuSfR
 kgMr9ezEQ9AjeFa3HFgj9S6IEAETiQHbZ2Lzy3z/pM7ZBUMCKPdUaWsUbT/iFcCvv3DW
 sTAA==
X-Gm-Message-State: APjAAAXDgsphoWlvHQO/QqEOqD3g8Lp7IprrHRUuoj46tr3bv5D5LO4W
 uI7RfM7HsOG+lcaUMd8eCQ0Yq39MzyetNiNLNHjoFLY5zkxUi44JJtQgADE8JVNikNpIwVmRttw
 4GedEURKFUjSdD4xVfDDmxtddn5OG
X-Received: by 2002:a05:600c:1009:: with SMTP id
 c9mr1085117wmc.162.1576085374777; 
 Wed, 11 Dec 2019 09:29:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqwFyxoSJsKNCNIv6f3WTGZdy9wp3MAZBIA3/ejS8RZrpH+PBacqBplsEXpPCpmEEkcb9GT0/Q==
X-Received: by 2002:a05:600c:1009:: with SMTP id
 c9mr1085091wmc.162.1576085374559; 
 Wed, 11 Dec 2019 09:29:34 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id p5sm2875224wrt.79.2019.12.11.09.29.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 09:29:33 -0800 (PST)
To: Lee Jones <lee.jones@linaro.org>
References: <20191119151818.67531-1-hdegoede@redhat.com>
 <20191119151818.67531-3-hdegoede@redhat.com> <20191210085111.GQ3468@dell>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a05e5a2b-568e-2b0d-0293-aa937c590a74@redhat.com>
Date: Wed, 11 Dec 2019 18:29:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191210085111.GQ3468@dell>
Content-Language: en-US
X-MC-Unique: 2uC791cJOuuJkjwc3tMzJA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 2/3] mfd: intel_soc_pmic: Rename
 pwm_backlight pwm-lookup to pwm_pmic_backlight
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lee,

On 10-12-2019 09:51, Lee Jones wrote:
> On Tue, 19 Nov 2019, Hans de Goede wrote:
> 
>> At least Bay Trail (BYT) and Cherry Trail (CHT) devices can use 1 of 2
>> different PWM controllers for controlling the LCD's backlight brightness.
>>
>> Either the one integrated into the PMIC or the one integrated into the
>> SoC (the 1st LPSS PWM controller).
>>
>> So far in the LPSS code on BYT we have skipped registering the LPSS PWM
>> controller "pwm_backlight" lookup entry when a Crystal Cove PMIC is
>> present, assuming that in this case the PMIC PWM controller will be used.
>>
>> On CHT we have been relying on only 1 of the 2 PWM controllers being
>> enabled in the DSDT at the same time; and always registered the lookup.
>>
>> So far this has been working, but the correct way to determine which PWM
>> controller needs to be used is by checking a bit in the VBT table and
>> recently I've learned about 2 different BYT devices:
>> Point of View MOBII TAB-P800W
>> Acer Switch 10 SW5-012
>>
>> Which use a Crystal Cove PMIC, yet the LCD is connected to the SoC/LPSS
>> PWM controller (and the VBT correctly indicates this), so here our old
>> heuristics fail.
>>
>> Since only the i915 driver has access to the VBT, this commit renames
>> the "pwm_backlight" lookup entries for the Crystal Cove PMIC's PWM
>> controller to "pwm_pmic_backlight" so that the i915 driver can do a
>> pwm_get() for the right controller depending on the VBT bit, instead of
>> the i915 driver relying on a "pwm_backlight" lookup getting registered
>> which magically points to the right controller.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/mfd/intel_soc_pmic_core.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> For my own reference:
>    Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

As mentioned in the cover-letter, to avoid breaking bi-sectability
as well as to avoid breaking the intel-gfx CI we need to merge this series
in one go through one tree. Specifically through the drm-intel tree.
Is that ok with you ?

If this is ok with you, then you do not have to do anything, I will just push
the entire series to drm-intel. drivers/mfd/intel_soc_pmic_core.c
does not see much changes so I do not expect this to lead to any conflicts.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
