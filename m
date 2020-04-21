Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBA91B21A7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2DC6E8E6;
	Tue, 21 Apr 2020 08:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C795B6E8E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 08:30:37 +0000 (UTC)
IronPort-SDR: X1WvdSFcOB2ZR23tqhuGkOz4GOwFTf7WHJBEZe4iQHv3Gmcpf2CH+O1INR/z5d4B4fPuw/NGyM
 nopDYbDbkAxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:30:37 -0700
IronPort-SDR: ApGhxHbCZcQyyJ3kn2p/aw5VuU746zJA49wOVKPk/b7JWf03px3Anmgqsw3ynHwzZlzIZdNqQE
 2zgE6vcj4CSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="365280509"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 21 Apr 2020 01:30:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7E2015C1DA7; Tue, 21 Apr 2020 11:28:41 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200420203040.8984-1-chris@chris-wilson.co.uk>
References: <20200420203040.8984-1-chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 11:28:41 +0300
Message-ID: <87imhtmedi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Show the pstate limits
 on any failure to reset min
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

> We want to see the pstate limits whenever we fail to set the minimum
> frequency as that may help for debugging.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index d7cd673550ef..e0a791eac752 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -238,6 +238,7 @@ int live_rps_control(void *arg)
>  			pr_err("%s: could not set minimum frequency [%x], only %x!\n",
>  			       engine->name, rps->min_freq, read_cagf(rps));
>  			igt_spinner_end(&spin);
> +			show_pstate_limits(rps);
>  			err = -EINVAL;
>  			break;
>  		}
> @@ -278,6 +279,7 @@ int live_rps_control(void *arg)
>  		if (limit == rps->min_freq) {
>  			pr_err("%s: GPU throttled to minimum!\n",
>  			       engine->name);
> +			show_pstate_limits(rps);
>  			err = -ENODEV;
>  			break;
>  		}
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
