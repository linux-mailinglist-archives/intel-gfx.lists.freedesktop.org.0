Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5043573D5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 20:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06546E0D8;
	Wed,  7 Apr 2021 18:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00ADC6E0D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 18:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617818564;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M7ehjgK6RINiK/yl9HBkU3LoriM4xfDLflETYOr86Gw=;
 b=K046+q6oBwTm1nUiXiL6SQUph5vie21mOhxc0np+3EGpl6qzbx8/A2MYC7Tl9OvVRS69rn
 MysKvH0ULkOiLbgVFZx7dbhuk+wqfu42AAhxjz6gqY5b8OAdazEsEKv7jKuSkYE1nMJqco
 +E3AXyNc0b5eJQTYap8Z3IvyuERnmU4=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-3HSn7hqbPze-leW_71SzJw-1; Wed, 07 Apr 2021 14:02:39 -0400
X-MC-Unique: 3HSn7hqbPze-leW_71SzJw-1
Received: by mail-ed1-f72.google.com with SMTP id w25so1507441eds.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Apr 2021 11:02:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M7ehjgK6RINiK/yl9HBkU3LoriM4xfDLflETYOr86Gw=;
 b=NVz2JA5P8uP5MguTjdSSkpqc6Z0IXC/rhZqkUbNQ8WuUkXe9hDd/eMUHkOZKoISRW4
 OzbQi0sHcWASUcb60jh+TTU8QZEHoh/p8///SJvoEVonKDJtBvxATv2XPFAByQ1KWEnE
 +9cQDy1AsNZQOB1siGbixZQ5J2Q3AeD9A6zhD1vF5WjUTVu+4kBVHXEp/a88qOGivaMJ
 7iYU0vDdoT9bk2K8zkwzAIYWJVoknoHA2TYIh5xPHbq5TRdmRfnNtkrDKiVW3jFVsrTS
 p/pGFHtUVap7CWSuEY0z6u4lu/VZ/AvdQ38LvlmMOj8tfZ9K1jfthkpa6WCs1VYz6k3f
 dvWg==
X-Gm-Message-State: AOAM531ogSxJi5SLCHy2bROzNSmaIMCes7kk5govtHTfDJyLqv8voxxT
 ZXVWgTH55K58XbHj9nNdhN2gPgTW3vHBc8hQzq4dicyZNT7DraMS7M07JHHFEi5gvS5kGTdkeJA
 8CIIAKIKmZYfnbH/rcttkb1IZ2lNf
X-Received: by 2002:a17:906:f9c2:: with SMTP id
 lj2mr5071020ejb.195.1617818558655; 
 Wed, 07 Apr 2021 11:02:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzK725+ILnRkQ4vSs3I2qAt0qEtqKhNqM91f7PqiD8a6kwG8A8HSEm6GE7+u+tEw45FVG0T4g==
X-Received: by 2002:a17:906:f9c2:: with SMTP id
 lj2mr5071006ejb.195.1617818558501; 
 Wed, 07 Apr 2021 11:02:38 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id u13sm7669561ejr.100.2021.04.07.11.02.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Apr 2021 11:02:38 -0700 (PDT)
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20210406211653.182338-1-hdegoede@redhat.com>
 <CAJZ5v0h6=_U+_=G8YL5rA701pTLGfyg4PmBudc3tFRKG=Wxh4A@mail.gmail.com>
 <4e796690-0a45-77e9-6b5d-61b3efa4b301@redhat.com>
 <CAJZ5v0jYUA8GHqYvnkp=Q0fzMKcsXtuZ-RcSS3jc_exKjtsewA@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f24d4fef-3d20-8627-272c-36f4f5a5c493@redhat.com>
Date: Wed, 7 Apr 2021 20:02:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0jYUA8GHqYvnkp=Q0fzMKcsXtuZ-RcSS3jc_exKjtsewA@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] ACPI: utils: Add
 acpi_reduced_hardware() helper
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/7/21 7:50 PM, Rafael J. Wysocki wrote:
> On Wed, Apr 7, 2021 at 7:43 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi,
>>
>> On 4/7/21 7:13 PM, Rafael J. Wysocki wrote:
>>> On Tue, Apr 6, 2021 at 11:17 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>>>
>>>> Add a getter for the acpi_gbl_reduced_hardware variable so that modules
>>>> can check if they are running on an ACPI reduced-hw platform or not.
>>>>
>>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>>>> ---
>>>>  drivers/acpi/utils.c    | 11 +++++++++++
>>>>  include/acpi/acpi_bus.h |  1 +
>>>>  include/linux/acpi.h    |  5 +++++
>>>>  3 files changed, 17 insertions(+)
>>>>
>>>> diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
>>>> index 682edd913b3b..4cb061d3169a 100644
>>>> --- a/drivers/acpi/utils.c
>>>> +++ b/drivers/acpi/utils.c
>>>> @@ -872,6 +872,17 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
>>>>  }
>>>>  EXPORT_SYMBOL(acpi_dev_get_first_match_dev);
>>>>
>>>> +/**
>>>> + * acpi_reduced_hardware - Return if this is an ACPI-reduced-hw machine
>>>> + *
>>>> + * Return true when running on an ACPI-reduced-hw machine, false otherwise.
>>>> + */
>>>> +bool acpi_reduced_hardware(void)
>>>> +{
>>>> +       return acpi_gbl_reduced_hardware;
>>>> +}
>>>> +EXPORT_SYMBOL(acpi_reduced_hardware);
>>>
>>> EXPORT_SYMBOL_GPL()?
>>
>> Yes, that was my intention, no idea what happened here.

I just prepped and send out v2 and I think I know what happened, all
the other functions in drivers/acpi/utils.c are EXPORT_SYMBOL, so I probably
just copy-and-pasted this without too much thinking.

It might be worthwhile to see if we should also mark some other functions
as EXPORT_SYMBOL_GPL() here.

>> Before I send a v2, do you have any remarks on patch 2/2 (which is actually
>> the more interesting patch) ?
> 
> I thought that basing that check on the ACPICA's global variable may
> be too coarse grained for some cases, but then I've decided to do it
> as is now and we'll see.

Yes, the whole code for selecting which backlight driver to use is mostly
heuristics, so "we'll see" indeed . With that said I'm pretty confident
that this change should not cause problems. Platforms which actually
set acpi_gbl_reduced_hardware=true seem to be quite rare. I'm actually
only aware of Bay Trail-T based devices doing this.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
