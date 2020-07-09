Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CA621A565
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 19:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370D26EACA;
	Thu,  9 Jul 2020 17:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BEFA6EAC8;
 Thu,  9 Jul 2020 17:02:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21768342-1500050 for multiple; Thu, 09 Jul 2020 18:02:59 +0100
MIME-Version: 1.0
In-Reply-To: <20200709154931.23310-1-sudeep.holla@arm.com>
References: <20200709154931.23310-1-sudeep.holla@arm.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Sudeep Holla <sudeep.holla@arm.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Thu, 09 Jul 2020 18:02:55 +0100
Message-ID: <159431417599.22162.9414981047786168785@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix compare functions
 provided for sorting
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
Cc: David Airlie <airlied@linux.ie>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Sudeep Holla (2020-07-09 16:49:31)
> Both cmp_u32 and cmp_u64 are comparing the pointers instead of the value
> at those pointers. This will result in incorrect/unsorted list. Fix it
> by deferencing the pointers before comparison.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> Hi,
> 
> I am not sure if I can put 2 fixes tags, but these are the ones affected.
> 
> Fixes: 4ba74e53ada3 ("drm/i915/selftests: Verify frequency scaling with RPS")
> Fixes: 8757797ff9c9 ("drm/i915/selftests: Repeat the rps clock frequency measurement")

Might as well tag the fixes, just in case anyone wants to use the tests.
 
> I made similar mistake and after I fixed it, just looked if there are any
> similar bugs and found this.
> 
> Regards,
> Sudeep
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 5049c3dd08a6..c91981e75ebf 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -44,9 +44,9 @@ static int cmp_u64(const void *A, const void *B)
>  {
>         const u64 *a = A, *b = B;
>  
> -       if (a < b)
> +       if (*a < *b)
>                 return -1;
> -       else if (a > b)
> +       else if (*a > *b)
>                 return 1;

Oh my golly gosh.

Thanks, thanks and thrice thanks.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

I better double check all my qsort-compare funcs for similar brianfarts.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
