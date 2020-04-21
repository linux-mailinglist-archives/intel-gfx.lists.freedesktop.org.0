Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5251F1B28E7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20276E0CC;
	Tue, 21 Apr 2020 14:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB566E0CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:02:03 +0000 (UTC)
IronPort-SDR: SYJliMlMwImTeziFMVwTlaFanQto8x7o426CkEy1iZU1BwXmZZOjd9Sfha69VOhovXlrq9pLKH
 NUJS6iGD6i3A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 07:02:03 -0700
IronPort-SDR: ZsNJLiPgB+9oaCjql1LkWczI4FdmDLoekVecv1GNbgNvOs2ycHjBTS8wQn0XOig2o8m1j0h1BN
 DwrQWL8JNCLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="300617830"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Apr 2020 07:02:02 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 140245C1DA7; Tue, 21 Apr 2020 17:00:08 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200421123733.12786-1-chris@chris-wilson.co.uk>
References: <20200421123733.12786-1-chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 17:00:08 +0300
Message-ID: <874ktdlz13.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Show the full scaling
 curve on failure
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If we detect that the RPS end points do not scale perfectly, take the
> time to measure all the in between values as well. We are aborting the
> test, so we might as well spend the available time gathering critical
> debug information instead.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 36 ++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index e0a791eac752..f8c416ab8539 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -484,11 +484,29 @@ int live_rps_frequency_cs(void *arg)
>  		if (!scaled_within(max.freq * min.count,
>  				   min.freq * max.count,
>  				   2, 3)) {
> +			int f;
> +
>  			pr_err("%s: CS did not scale with frequency! scaled min:%llu, max:%llu\n",
>  			       engine->name,
>  			       max.freq * min.count,
>  			       min.freq * max.count);
>  			show_pcu_config(rps);
> +
> +			for (f = min.freq + 1; f <= rps->max_freq; f++) {
> +				int act = f;
> +				u64 count;
> +
> +				count = measure_cs_frequency_at(rps, engine, &act);
> +				if (act < f)
> +					break;
> +

No gripes but in here I ponder would you like to break after the info.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +				pr_info("%s: %x:%uMHz: %lluKHz [%d%%]\n",
> +					engine->name,
> +					act, intel_gpu_freq(rps, act), count,
> +					(int)DIV64_U64_ROUND_CLOSEST(100 * min.freq * count,
> +								     act * min.count));
> +			}
> +
>  			err = -EINVAL;
>  		}
>  
> @@ -593,11 +611,29 @@ int live_rps_frequency_srm(void *arg)
>  		if (!scaled_within(max.freq * min.count,
>  				   min.freq * max.count,
>  				   1, 2)) {
> +			int f;
> +
>  			pr_err("%s: CS did not scale with frequency! scaled min:%llu, max:%llu\n",
>  			       engine->name,
>  			       max.freq * min.count,
>  			       min.freq * max.count);
>  			show_pcu_config(rps);
> +
> +			for (f = min.freq + 1; f <= rps->max_freq; f++) {
> +				int act = f;
> +				u64 count;
> +
> +				count = measure_frequency_at(rps, cntr, &act);
> +				if (act < f)
> +					break;
> +
> +				pr_info("%s: %x:%uMHz: %lluKHz [%d%%]\n",
> +					engine->name,
> +					act, intel_gpu_freq(rps, act), count,
> +					(int)DIV64_U64_ROUND_CLOSEST(100 * min.freq * count,
> +								     act * min.count));
> +			}
> +
>  			err = -EINVAL;
>  		}
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
