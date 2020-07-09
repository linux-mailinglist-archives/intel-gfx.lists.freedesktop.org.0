Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2429A21A278
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A776E8E8;
	Thu,  9 Jul 2020 14:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC996E8E8;
 Thu,  9 Jul 2020 14:50:16 +0000 (UTC)
IronPort-SDR: k3lQLpFhIIusNct/Tv50e6z8rntkwGwYvuocRIfQcVp7JOcg2oxx5xv/s4TvXvdADlV31U+4h0
 2O9fTa3ZJRKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232881522"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232881522"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:50:16 -0700
IronPort-SDR: D/XUYMSp7pV3RqXOFUNrDLm8myVFN+vUXCjDbk4u4enIZwh5VeaP3rkTuAjMvg45USqZ04zgtD
 IrKqRKUSO7lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="389163251"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2020 07:50:13 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jtXsL-000sMF-Dd; Thu, 09 Jul 2020 17:50:13 +0300
Date: Thu, 9 Jul 2020 17:50:13 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200709145013.GA3703480@smile.fi.intel.com>
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <20200708211432.28612-7-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708211432.28612-7-hdegoede@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v4 06/16] pwm: lpss: Correct get_state
 result for base_unit == 0
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

On Wed, Jul 08, 2020 at 11:14:22PM +0200, Hans de Goede wrote:
> The datasheet specifies that programming the base_unit part of the
> ctrl register to 0 results in a contineous low signal.
> 
> Adjust the get_state method to reflect this by setting pwm_state.period
> to 1 and duty_cycle to 0.

...

> +	if (freq == 0) {
> +		/* In this case the PWM outputs a continous low signal */

> +		state->period = 1;

I guess this should be something like half of the range (so base unit calc
will give 128). Because with period = 1 (too small) it will give too small
base unit (if apply) and as a result we get high frequency pulses.

> +		state->duty_cycle = 0;
> +	} else {
>  		state->period = NSEC_PER_SEC / (unsigned long)freq;
> +		on_time_div *= state->period;
> +		do_div(on_time_div, 255);
> +		state->duty_cycle = on_time_div;
> +	}

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
