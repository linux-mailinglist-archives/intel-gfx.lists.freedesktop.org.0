Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 971A31EBEF6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C29C89C93;
	Tue,  2 Jun 2020 15:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6973D89C93
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 15:23:17 +0000 (UTC)
IronPort-SDR: 6Ffmn4cm/Je7PCVbPAhp88stkIsgc7ebT4aTwkYy08h0Bs1Gb88uauQagWCbcVRvLgAZ7Ur+TX
 niWYM+/1Gi6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:23:16 -0700
IronPort-SDR: oDnmhZP3Rwydxr084zg6I/PeVIiIFHszafqGPUVcgvg56cjPXY9cmAuiBa2IgX/ndNEf4KzIl5
 N+8vsILgOc4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,464,1583222400"; d="scan'208";a="268733672"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2020 08:23:14 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jg8l3-00ARss-LB; Tue, 02 Jun 2020 18:23:17 +0300
Date: Tue, 2 Jun 2020 18:23:17 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200602152317.GI2428291@smile.fi.intel.com>
References: <20200602122130.45630-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602122130.45630-1-hdegoede@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 02, 2020 at 02:21:30PM +0200, Hans de Goede wrote:
> The pins on the Bay Trail SoC have separate input-buffer and output-buffer
> enable bits and a read of the level bit of the value register will always
> return the value from the input-buffer.
> 
> The BIOS of a device may configure a pin in output-only mode, only enabling
> the output buffer, and write 1 to the level bit to drive the pin high.
> This 1 written to the level bit will be stored inside the data-latch of the
> output buffer.
> 
> But a subsequent read of the value register will return 0 for the level bit
> because the input-buffer is disabled. This causes a read-modify-write as
> done by byt_gpio_set_direction() to write 0 to the level bit, driving the
> pin low!
> 
> Before this commit byt_gpio_direction_output() relied on
> pinctrl_gpio_direction_output() to set the direction, followed by a call
> to byt_gpio_set() to apply the selected value. This causes the pin to
> go low between the pinctrl_gpio_direction_output() and byt_gpio_set()
> calls.
> 
> Change byt_gpio_direction_output() to directly make the register
> modifications itself instead. Replacing the 2 subsequent writes to the
> value register with a single write.
> 
> Note that the pinctrl code does not keep track internally of the direction,
> so not going through pinctrl_gpio_direction_output() is not an issue.
> 
> This issue was noticed on a Trekstor SurfTab Twin 10.1. When the panel is
> already on at boot (no external monitor connected), then the i915 driver
> does a gpiod_get(..., GPIOD_OUT_HIGH) for the panel-enable GPIO. The
> temporarily going low of that GPIO was causing the panel to reset itself
> after which it would not show an image until it was turned off and back on
> again (until a full modeset was done on it). This commit fixes this.

No Fixes tag?

> Cc: stable@vger.kernel.org
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

...

> +static void byt_gpio_direct_irq_check(struct intel_pinctrl *vg,
> +				      unsigned int offset)
> +{
> +	void __iomem *conf_reg = byt_gpio_reg(vg, offset, BYT_CONF0_REG);
> +
> +	/*
> +	 * Before making any direction modifications, do a check if gpio is set

> +	 * for direct IRQ.  On baytrail, setting GPIO to output does not make

Since we change this, perhaps

'IRQ.  On baytrail' -> 'IRQ. On Baytrail' (one space and capital 'B').

> +	 * sense, so let's at least inform the caller before they shoot
> +	 * themselves in the foot.
> +	 */
> +	if (readl(conf_reg) & BYT_DIRECT_IRQ_EN)
> +		dev_info_once(vg->dev, "Potential Error: Setting GPIO with direct_irq_en to output");
> +}

...

>  static int byt_gpio_direction_output(struct gpio_chip *chip,
>  				     unsigned int offset, int value)
>  {
> -	int ret = pinctrl_gpio_direction_output(chip->base + offset);
> +	struct intel_pinctrl *vg = gpiochip_get_data(chip);
> +	void __iomem *val_reg = byt_gpio_reg(vg, offset, BYT_VAL_REG);
> +	unsigned long flags;
> +	u32 reg;
>  
> -	if (ret)
> -		return ret;
> +	raw_spin_lock_irqsave(&byt_lock, flags);
>  
> -	byt_gpio_set(chip, offset, value);
> +	byt_gpio_direct_irq_check(vg, offset);
>  
> +	reg = readl(val_reg);
> +	reg &= ~BYT_DIR_MASK;
> +	if (value)
> +		reg |= BYT_LEVEL;
> +	else
> +		reg &= ~BYT_LEVEL;
> +
> +	writel(reg, val_reg);
> +
> +	raw_spin_unlock_irqrestore(&byt_lock, flags);
>  	return 0;
>  }

Wouldn't be simple below fix the issue?

@@ -1171,14 +1171,10 @@ static int byt_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
 static int byt_gpio_direction_output(struct gpio_chip *chip,
                                     unsigned int offset, int value)
 {
-       int ret = pinctrl_gpio_direction_output(chip->base + offset);
-
-       if (ret)
-               return ret;
-
+       /* Set value first to avoid a glitch */
        byt_gpio_set(chip, offset, value);
 
-       return 0;
+       return pinctrl_gpio_direction_output(chip->base + offset);
 }
 

P.S. It's mangled, sorry.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
