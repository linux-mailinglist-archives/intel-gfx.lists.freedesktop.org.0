Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278F21F39B8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 13:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C37E6E284;
	Tue,  9 Jun 2020 11:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08506E284;
 Tue,  9 Jun 2020 11:31:13 +0000 (UTC)
IronPort-SDR: swEgF1BDSFJ5EgZpXJBUzIE2Nsb8akUPhzG63GoP9RoMVvkg5q7E9pqIW28nALcdSK/6430zWY
 9r6csZlGD4YQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 04:31:13 -0700
IronPort-SDR: 90xVIqVw9Ze5b+8NRYAm/VSIQ0a/8K2zE0O5f31SzMgtC4sgrbDd6iluxqxcZDBhA8G3UNcQ+A
 QZyvC+8wwuuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,491,1583222400"; d="scan'208";a="274573641"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 09 Jun 2020 04:31:10 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jicTI-00Bt5p-Mk; Tue, 09 Jun 2020 14:31:12 +0300
Date: Tue, 9 Jun 2020 14:31:12 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200609113112.GL2428291@smile.fi.intel.com>
References: <20200607181840.13536-1-hdegoede@redhat.com>
 <20200607181840.13536-10-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607181840.13536-10-hdegoede@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v2 09/15] pwm: crc: Enable/disable PWM
 output on enable/disable
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
Cc: linux-pwm@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jun 07, 2020 at 08:18:34PM +0200, Hans de Goede wrote:
> The pwm-crc code is using 2 different enable bits:
> 1. bit 7 of the PWM0_CLK_DIV (PWM_OUTPUT_ENABLE)
> 2. bit 0 of the BACKLIGHT_EN register
> 
> So far we've kept the PWM_OUTPUT_ENABLE bit set when disabling the PWM,
> this commit makes crc_pwm_disable() clear it on disable and makes
> crc_pwm_enable() set it again on re-enable.
> 
> This should disable the internal (divided) PWM clock and tri-state the
> PWM output pin when disabled, saving some power.

...

> +static int crc_pwm_calc_clk_div(int period_ns)
> +{
> +	int clk_div;
> +
> +	clk_div = PWM_BASE_CLK_MHZ * period_ns / (256 * NSEC_PER_MHZ);
> +	/* clk_div 1 - 128, maps to register values 0-127 */
> +	if (clk_div > 0)
> +		clk_div--;
> +
> +	return clk_div;
> +}

You can reduce ping-pong format of the series if you introduced this helper in
the patch that adds -1 to clock divisor.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
