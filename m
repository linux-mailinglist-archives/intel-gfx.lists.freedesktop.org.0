Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A401EBEFE
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D0086E121;
	Tue,  2 Jun 2020 15:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C296E121
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 15:25:56 +0000 (UTC)
IronPort-SDR: iHr2kBoIBt6vk+U6sWheayI1thopa2SF0eQHUWe5CErBaKN8+/YksL/FU1hFtoJ3EmM04em1JV
 MnNNPuggxJ7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:25:56 -0700
IronPort-SDR: 8G2Kl3wxqUb5fneDULn0yy2Ec9PNwlhKwRY7Yj0XjpyLnhQXYPhEmcmcQh29omLpiG8Q4dVFbU
 D6e9LRPKEsBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,464,1583222400"; d="scan'208";a="293615478"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 02 Jun 2020 08:25:53 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jg8nb-00ARtx-Vf; Tue, 02 Jun 2020 18:25:55 +0300
Date: Tue, 2 Jun 2020 18:25:55 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200602152555.GJ2428291@smile.fi.intel.com>
References: <20200602122130.45630-1-hdegoede@redhat.com>
 <20200602152317.GI2428291@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602152317.GI2428291@smile.fi.intel.com>
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

On Tue, Jun 02, 2020 at 06:23:17PM +0300, Andy Shevchenko wrote:
> On Tue, Jun 02, 2020 at 02:21:30PM +0200, Hans de Goede wrote:

...

> Wouldn't be simple below fix the issue?
> 
> @@ -1171,14 +1171,10 @@ static int byt_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
>  static int byt_gpio_direction_output(struct gpio_chip *chip,
>                                      unsigned int offset, int value)
>  {
> -       int ret = pinctrl_gpio_direction_output(chip->base + offset);
> -
> -       if (ret)
> -               return ret;
> -
> +       /* Set value first to avoid a glitch */
>         byt_gpio_set(chip, offset, value);
>  
> -       return 0;
> +       return pinctrl_gpio_direction_output(chip->base + offset);
>  }
>  
> 
> P.S. It's mangled, sorry.

Cherrytrail does this way, btw, 549e783f6a1.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
