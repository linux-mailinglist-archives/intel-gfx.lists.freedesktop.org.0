Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B9A266980
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 22:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3F46E0AC;
	Fri, 11 Sep 2020 20:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FCB56E0AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 20:24:59 +0000 (UTC)
IronPort-SDR: XzYw8rq6NwoTg0Z/tIvlbnClwGCFmo4ueT/uIDrl4I8D1VN2DAuYSTQblWEmtCK82qljAwhTl9
 30EThKcCefFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146538944"
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; d="scan'208";a="146538944"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 13:24:57 -0700
IronPort-SDR: +HMCy2sAvfztfJg1vLvrurYstG7qobocWJpLi3zYfYDmVZk/gUCXsWGnbl6d/oiyjqVRJvncT2
 nXZl/WRcFhoA==
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; d="scan'208";a="506392547"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 13:24:57 -0700
Date: Fri, 11 Sep 2020 16:27:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200911202720.GA2235@intel.com>
References: <20200723153805.8076-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723153805.8076-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [CI] drm/i915/selftests: Downgrade severity of
 CS/SRM frequency scaling tests
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 23, 2020 at 04:38:05PM +0100, Chris Wilson wrote:
> Gracefully skip over the failures in the frequency scaling for the
> moment, the results are under review.

We need to clock gate media sampler to be able to scale the
frequency without getting throttled.

Reference: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/6684

> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1754
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
> Cc: "Ewins, Jon" <jon.ewins@intel.com>
> Reviewed-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 8624f5d2a1f3..34b403d47840 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -700,7 +700,7 @@ int live_rps_frequency_cs(void *arg)
>  				f = act; /* may skip ahead [pcu granularity] */
>  			}
>  
> -			err = -EINVAL;
> +			err = -EINTR; /* ignore error, continue on with test */
>  		}
>  
>  err_vma:
> @@ -841,7 +841,7 @@ int live_rps_frequency_srm(void *arg)
>  				f = act; /* may skip ahead [pcu granularity] */
>  			}
>  
> -			err = -EINVAL;
> +			err = -EINTR; /* ignore error, continue on with test */
>  		}
>  
>  err_vma:
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
