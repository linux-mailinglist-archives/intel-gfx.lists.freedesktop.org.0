Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F04351EFB7B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F2B6E912;
	Fri,  5 Jun 2020 14:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF2A6E913
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591367632;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UnXpqpJmhsoGN5vwHlR9MCzTruzIUpnFGVXn1tVsFuM=;
 b=Mxnr9w42gdtZZTOYLApVKTrKQb2nOmPpSPYPD0KDhV+7WqLnghdoRHpgvMlloEj8GnRNqj
 yVS1JlGtZ/enEJsMmgLRMS20JLqOFO1FwS4CDHDZ3OOmjJPMgwY7TAHkdNGkEs+eOS6aTN
 KRB9572/hD9ZhikSVB4Nr6Og+u2lHdw=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-aLIShmlNML-GXJF4Eb-MLg-1; Fri, 05 Jun 2020 10:33:50 -0400
X-MC-Unique: aLIShmlNML-GXJF4Eb-MLg-1
Received: by mail-ej1-f72.google.com with SMTP id m19so3665611ejd.21
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jun 2020 07:33:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UnXpqpJmhsoGN5vwHlR9MCzTruzIUpnFGVXn1tVsFuM=;
 b=UrgHerzvv3yXoVSFeoHiDnswl0rNL/I7H/0y/J3341vwZ07uOYyrPS2JwDGSfKDhTR
 S6pyX/++z5T2G7O41C63inpQELltyps1cgbWEVMeDA0ubRuZ3bC5Zr37YwWbcZf/LtJV
 6w8fRCoU6L1CZKSYnqc+AemssWkR1qyUey4ngzARd+ky3tWVoVKJDLmvwqspYDTMFqux
 3dv7ZX7QXMnBJusIPu/sGVvXYl4HQnVU7GluYeS+DctzwS+O2mi2uq6yoUI2fiJ61oIM
 KsvxogWSndhRC73e4dlPp2BnuBM7LjnzTNfE9iGIaYfp2qMW8pM57uzOO/i+VpuF6SsJ
 CdkA==
X-Gm-Message-State: AOAM532Um5Uoc3m3f1JZcoMfAq36uVuHihjmGUaDnnknl1nYGZ6qkLRo
 4zlV5sOyQ+Vhql6bPgJPQ+RrtmRDO7+H3mgDk7L9iItuRtuImXTrXq3XylM5oG84Ue8YfmVoUlO
 t8B9n2mAXdQP9A8dS3kyrmh0QoiGL
X-Received: by 2002:a17:906:4554:: with SMTP id
 s20mr8783719ejq.241.1591367629244; 
 Fri, 05 Jun 2020 07:33:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPmTQAV1XuXHtuL/qMSpWO2BScpZajU1f7rMoqZ9XHo3qWMvt1jv1U5k9HlA8ZVtwsZNScZA==
X-Received: by 2002:a17:906:4554:: with SMTP id
 s20mr8783698ejq.241.1591367628950; 
 Fri, 05 Jun 2020 07:33:48 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id o7sm230792edj.52.2020.06.05.07.33.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 07:33:48 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200602122130.45630-1-hdegoede@redhat.com>
 <20200602152317.GI2428291@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ba931618-9259-aca0-142c-c1dfb67e737e@redhat.com>
Date: Fri, 5 Jun 2020 16:33:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200602152317.GI2428291@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] pinctrl: baytrail: Fix pin being driven low
 for a while on gpiod_get(..., GPIOD_OUT_HIGH)
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 6/2/20 5:23 PM, Andy Shevchenko wrote:
> On Tue, Jun 02, 2020 at 02:21:30PM +0200, Hans de Goede wrote:
>> The pins on the Bay Trail SoC have separate input-buffer and output-buffer
>> enable bits and a read of the level bit of the value register will always
>> return the value from the input-buffer.
>>
>> The BIOS of a device may configure a pin in output-only mode, only enabling
>> the output buffer, and write 1 to the level bit to drive the pin high.
>> This 1 written to the level bit will be stored inside the data-latch of the
>> output buffer.
>>
>> But a subsequent read of the value register will return 0 for the level bit
>> because the input-buffer is disabled. This causes a read-modify-write as
>> done by byt_gpio_set_direction() to write 0 to the level bit, driving the
>> pin low!
>>
>> Before this commit byt_gpio_direction_output() relied on
>> pinctrl_gpio_direction_output() to set the direction, followed by a call
>> to byt_gpio_set() to apply the selected value. This causes the pin to
>> go low between the pinctrl_gpio_direction_output() and byt_gpio_set()
>> calls.
>>
>> Change byt_gpio_direction_output() to directly make the register
>> modifications itself instead. Replacing the 2 subsequent writes to the
>> value register with a single write.
>>
>> Note that the pinctrl code does not keep track internally of the direction,
>> so not going through pinctrl_gpio_direction_output() is not an issue.
>>
>> This issue was noticed on a Trekstor SurfTab Twin 10.1. When the panel is
>> already on at boot (no external monitor connected), then the i915 driver
>> does a gpiod_get(..., GPIOD_OUT_HIGH) for the panel-enable GPIO. The
>> temporarily going low of that GPIO was causing the panel to reset itself
>> after which it would not show an image until it was turned off and back on
>> again (until a full modeset was done on it). This commit fixes this.
> 
> No Fixes tag?

It is sort of hard to pin the introduction of this down to a single
commit. If I were to guess, I guess the commit introducing the driver?

>> Cc: stable@vger.kernel.org
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> ...
> 
>> +static void byt_gpio_direct_irq_check(struct intel_pinctrl *vg,
>> +				      unsigned int offset)
>> +{
>> +	void __iomem *conf_reg = byt_gpio_reg(vg, offset, BYT_CONF0_REG);
>> +
>> +	/*
>> +	 * Before making any direction modifications, do a check if gpio is set
> 
>> +	 * for direct IRQ.  On baytrail, setting GPIO to output does not make
> 
> Since we change this, perhaps
> 
> 'IRQ.  On baytrail' -> 'IRQ. On Baytrail' (one space and capital 'B').

Sure, not sure if that is worth respinning the patch for though,
either way let me know.

>> +	 * sense, so let's at least inform the caller before they shoot
>> +	 * themselves in the foot.
>> +	 */
>> +	if (readl(conf_reg) & BYT_DIRECT_IRQ_EN)
>> +		dev_info_once(vg->dev, "Potential Error: Setting GPIO with direct_irq_en to output");
>> +}
> 
> ...
> 
>>   static int byt_gpio_direction_output(struct gpio_chip *chip,
>>   				     unsigned int offset, int value)
>>   {
>> -	int ret = pinctrl_gpio_direction_output(chip->base + offset);
>> +	struct intel_pinctrl *vg = gpiochip_get_data(chip);
>> +	void __iomem *val_reg = byt_gpio_reg(vg, offset, BYT_VAL_REG);
>> +	unsigned long flags;
>> +	u32 reg;
>>   
>> -	if (ret)
>> -		return ret;
>> +	raw_spin_lock_irqsave(&byt_lock, flags);
>>   
>> -	byt_gpio_set(chip, offset, value);
>> +	byt_gpio_direct_irq_check(vg, offset);
>>   
>> +	reg = readl(val_reg);
>> +	reg &= ~BYT_DIR_MASK;
>> +	if (value)
>> +		reg |= BYT_LEVEL;
>> +	else
>> +		reg &= ~BYT_LEVEL;
>> +
>> +	writel(reg, val_reg);
>> +
>> +	raw_spin_unlock_irqrestore(&byt_lock, flags);
>>   	return 0;
>>   }
> 
> Wouldn't be simple below fix the issue?
> 
> @@ -1171,14 +1171,10 @@ static int byt_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
>   static int byt_gpio_direction_output(struct gpio_chip *chip,
>                                       unsigned int offset, int value)
>   {
> -       int ret = pinctrl_gpio_direction_output(chip->base + offset);
> -
> -       if (ret)
> -               return ret;
> -
> +       /* Set value first to avoid a glitch */
>          byt_gpio_set(chip, offset, value);
>   
> -       return 0;
> +       return pinctrl_gpio_direction_output(chip->base + offset);
>   }

No that will not help the pin is already high, but any reads
of the register will return the BYT_LEVEL bit as being low, so
the read-write-modify done when setting the direction reads BYT_LEVEL
as 0 and writes it back as such.

So your proposal would actually make the problem much worse (and more
obvious) if we do the byt_gpio_set() first then for pins which have
there input-buffer initially disabled, the value passed to
byt_gpio_direction_output will be completely ignored and they will
always end up as being driven low.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
