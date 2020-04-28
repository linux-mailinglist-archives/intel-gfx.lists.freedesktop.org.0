Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC261BBF33
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 15:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2EC6E409;
	Tue, 28 Apr 2020 13:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDAFB6E409
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 13:23:36 +0000 (UTC)
IronPort-SDR: Iol6QqmwgvrAIiGlBCSvToQVO5p5cKWs2WWtsh2nYSHSSN4kOw0T0nTxD7CuGAf/VBA8BhQhgH
 yvb53FxLfWhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 06:23:36 -0700
IronPort-SDR: TQSKbvc2Rd9GNpO6N1RoAiwo8Vfe6iUI+Sm0AyeS4oyRmRHlRdSTQgY64VJh4qsfhFn32UxBz0
 Dz2AlMW+F/sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="458789908"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 28 Apr 2020 06:23:35 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 899D65C1F98; Tue, 28 Apr 2020 16:21:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200428114307.5153-1-chris@chris-wilson.co.uk>
References: <20200428114307.5153-1-chris@chris-wilson.co.uk>
Date: Tue, 28 Apr 2020 16:21:35 +0300
Message-ID: <87v9ljkaow.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Tweak the tolerance for
 clock ticks to 12.5%
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

> Give a small bump for our tolerance on comparing the expected vs
> measured clock ticks/time from 10% to 12.5% to accommodate a bad result
> on Sandybridge that was off by 10.3%. Hopefully, that is the worst we
> will see.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1802
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

12.5% of something is much better than 100% of nothing

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 181b29fa5b58..48f954ac4f2c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -312,15 +312,15 @@ int live_rps_clock_interval(void *arg)
>  				engine->name, cycles, time, ktime_to_ns(dt), expected,
>  				gt->clock_frequency / 1000);
>  
> -			if (10 * time < 9 * ktime_to_ns(dt) ||
> -			    10 * time > 11 * ktime_to_ns(dt)) {
> +			if (10 * time < 8 * ktime_to_ns(dt) ||
> +			    8 * time > 10 * ktime_to_ns(dt)) {
>  				pr_err("%s: rps clock time does not match walltime!\n",
>  				       engine->name);
>  				err = -EINVAL;
>  			}
>  
> -			if (10 * expected < 9 * cycles ||
> -			    10 * expected > 11 * cycles) {
> +			if (10 * expected < 8 * cycles ||
> +			    8 * expected > 10 * cycles) {
>  				pr_err("%s: walltime does not match rps clock ticks!\n",
>  				       engine->name);
>  				err = -EINVAL;
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
