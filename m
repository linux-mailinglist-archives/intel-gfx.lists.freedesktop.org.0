Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4728311BA7F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 18:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0441C6EB9E;
	Wed, 11 Dec 2019 17:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BEDC6EB9D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 17:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576085929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y12wlbSvkuEx6hrDq4ife4K7ITZLnh8SGNBP1jLgnxg=;
 b=SjS0b9/Mf8Rf78nuz3uj9ZrjqVj6/90UXiOKyLg/s3PDbebTWBYfDOb8/vXLAstDEtO5tl
 0oZGLC/Kgcj6fV8bvYQlig+UKo8iHOoZxTRqRXxyA6yQ2dAcQ7EKr/4kP+PhylUvI51m/B
 kZWp3zCb/p0RjZDtiMNGHldIY2T1lWk=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-VIfHh3DqPXapJVEZ4XFw7A-1; Wed, 11 Dec 2019 12:32:39 -0500
Received: by mail-wr1-f69.google.com with SMTP id f15so10785977wrr.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 09:32:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y12wlbSvkuEx6hrDq4ife4K7ITZLnh8SGNBP1jLgnxg=;
 b=sTkPOOKxNLZJs7xd3QK0AelgUOZiSUEEoPBRCyPwmQh5eTM+GpWtoiZkEKJw+D4vsS
 onRXv6O34c3kgSmMmP6qOkZ9UX64HOLXF8MzKck8r7kDpa1lCjGGB8W5aRwtOTSBbjRe
 LFB+EVR9WPyCPonWi9f4z8skBmbsTscPvwAA7TtuzgjnKRqsrZ/V9S13y5ZlRdfgz9cy
 4dyozvePJBCAdHHp7PmUlh1VWg8UNJMYZMShlTEaYE2VLcmrjNNKe3unCC//cVW/IGVu
 aIuXvf4+1TmEVDedSRnV+bXM2JmLcn5h9qK6gpsFfsHfmycoDTctNHtcbVEwIMS6ukSH
 v78g==
X-Gm-Message-State: APjAAAWuEHKGgaRNI7aPsNTFn5SM0S1FMWSS/6O9WbKhOh1E/9zyZp9T
 Ji/L5/98bmHFEPsVAAAz0dAK1pPj+BOF6raffhpOjT5rUgzX9T7LGcJiAMFKYIk+BM7OPlqbO4b
 WfF3XVcOn+Ux+UXWNVu20G/ACBI+l
X-Received: by 2002:adf:df90:: with SMTP id z16mr1036611wrl.273.1576085558006; 
 Wed, 11 Dec 2019 09:32:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyJNDISSzLaekbps4PPe/Y5SFMhSF7OjIT8TamyAaUOOzgveUOLSuGFFwaNrhfYHhJrY6DB/A==
X-Received: by 2002:adf:df90:: with SMTP id z16mr1036575wrl.273.1576085557720; 
 Wed, 11 Dec 2019 09:32:37 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id o185sm2736280wmb.40.2019.12.11.09.32.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 09:32:37 -0800 (PST)
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191129185836.2789-1-hdegoede@redhat.com>
 <20191129185836.2789-3-hdegoede@redhat.com>
 <CACRpkdbRb-LF2tNN-ueo=tKuJc+u4B7Y20+BCyqnN7wYbm8y7Q@mail.gmail.com>
 <87wobfj65b.fsf@intel.com> <47c36b75-bc30-502b-7f8d-035cf2348fc4@redhat.com>
 <CACRpkdaJGZsJpYu3cgQCeWuJD1y9CQyzuk_VYfGfAT8WC=_1VA@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <4bc1d1ac-b3c7-4ea5-9150-bc1b9cffb963@redhat.com>
Date: Wed, 11 Dec 2019 18:32:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdaJGZsJpYu3cgQCeWuJD1y9CQyzuk_VYfGfAT8WC=_1VA@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: VIfHh3DqPXapJVEZ4XFw7A-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/vlv_dsi: Control panel and
 backlight enable GPIOs on BYT
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 11-12-2019 01:24, Linus Walleij wrote:
> On Mon, Dec 2, 2019 at 4:49 PM Hans de Goede <hdegoede@redhat.com> wrote:
> 
>> There is only one problem, currently is is not possible to
>> unregister a mapping added with pinctrl_register_mappings
>> and the i915 driver is typically a module which can be unloaded
>> and I believe actually is unloaded as part of the i915 CI.
>>
>> pinctrl_register_mappings copies the passed in mapping, but
>> it is a shallow copy, so it contains pointers to the modules
>> const segment and we do not want to re-add another copy of
>> the mapping when the module loads a second time.
>>
>> Fixing this is easy though, there already is a pinctrl_unregister_map()
>> function, we just need to export it so that the i915 driver can
>> remove the mapping when it is unbound.
>>
>> Linus would exporting this function be ok with you?
> 
> Yep!
> 
>> Linus, question what is the purpose of the "dupping" / shallow
>> copying of the argument passed to pinctrl_register_map ?
> 
> The initial commit contained this comment later removed:
> 
> +       /*
> +        * Make a copy of the map array - string pointers will end up in the
> +        * kernel const section anyway so these do not need to be deep copied.
> +        */
> 
> The use was to free up memory for platforms using boardfiles
> with a gazillion variants and huge pin control tables, so these
> could be marked  __initdata and discarded after boot.
> As the strings would anyway stay around we didn't need to
> deep copy.
> 
> See for example in arch/arm/mach-u300/core.c
> static struct pinctrl_map __initdata u300_pinmux_map[]
> 
>> Since
>> it is shallow the mem for any pointers contained within there need
>> to be kept around by the caller, so why not let the caller keep
>> the pinctrl_map struct itself around too?
> 
> So the strings will be kept around because the kernel can't get
> rid of strings. (Yeah it is silly, should haven been fixed ages
> ago, but not by me, haha :)
> 
>> If we are going to export pinctrl_unregister_map() we need to make it
>> do the right thing for dupped maps too, we can just store the dup flag
>> in struct pinctrl_maps. So this is easy, but I wonder if we cannot
>> get rid of the dupping all together ?
> 
> Maybe ... I don't know. What do you think? I suppose you could
> make u300 crash if you do that.

I've prepared a patch which makes pinctrl_register_mappings remember
if the mapping is dupped or not (store the dup value in struct pinctrl_maps);
and which modifies pinctrl_unregister_map() to do the right thing
depending on the stored dup value.

I still need to test the new series and then I will post it.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
