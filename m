Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B531F55AD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 15:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CD06E144;
	Wed, 10 Jun 2020 13:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CA316E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 13:23:49 +0000 (UTC)
IronPort-SDR: rNXv9WqB53SHFdrbyBzTj9HaXiur4A4GRZ5MdN59ucNpTGZaewDpgrFNGQABn0TeZ1SSTjX1gt
 hghDXkqln2zQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 06:23:48 -0700
IronPort-SDR: k4Zu3lwiG/OojFeRgx3Lc8EdtQxt0/dlTadY5MFtD++Fv6xDC88Pe3MrsDY2ZpS22u8P34ztPy
 8f8VA05V5guA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="418743885"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 10 Jun 2020 06:23:47 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8EAAC5C2C9E; Wed, 10 Jun 2020 16:21:12 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200607222108.14401-3-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <20200607222108.14401-3-chris@chris-wilson.co.uk>
Date: Wed, 10 Jun 2020 16:21:12 +0300
Message-ID: <877dwf9hvb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/28] drm/i915/selftests: Teach hang-self
 to target only itself
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

> We have a test case to exercise resetting an engine while the other
> engines are busy, all the TEST_SELF adds on top is that the target
> engine also has background activity. In this case it is useful to first
> test resetting the engine while there is background activity, as a
> separate flag from exercising all others.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>


Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 035f363fb0f8..2af66f8ffbd2 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -805,10 +805,10 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  			threads[tmp].resets =
>  				i915_reset_engine_count(global, other);
>  
> -			if (!(flags & TEST_OTHERS))
> +			if (other == engine && !(flags & TEST_SELF))
>  				continue;
>  
> -			if (other == engine && !(flags & TEST_SELF))
> +			if (other != engine && !(flags & TEST_OTHERS))
>  				continue;
>  
>  			threads[tmp].engine = other;
> @@ -999,7 +999,7 @@ static int igt_reset_engines(void *arg)
>  		},
>  		{
>  			"self-priority",
> -			TEST_OTHERS | TEST_ACTIVE | TEST_PRIORITY | TEST_SELF,
> +			TEST_ACTIVE | TEST_PRIORITY | TEST_SELF,
>  		},
>  		{ }
>  	};
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
