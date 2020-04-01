Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8519AD80
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 16:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5326E0A8;
	Wed,  1 Apr 2020 14:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C426E0A8;
 Wed,  1 Apr 2020 14:13:03 +0000 (UTC)
IronPort-SDR: Uo95q7j2EtqOPYdqGrlAJS5oRvnre3AOA94a8qZcPqqi2MhHjEs4+D4AcQ8SuLVh4LQP0R7id7
 wuj2M9GfXApA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 07:13:02 -0700
IronPort-SDR: jqpDw5EbCTg/8Xf2vdR7w3AklWMLZXZ9Se6Qbzcimzk3+O9wurhlQz/lC7DBkduYZG2Fvnxzi5
 y12Anr698nsA==
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="450570548"
Received: from yzucker-mobl1.ger.corp.intel.com (HELO [10.251.184.138])
 ([10.251.184.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 07:13:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200331103623.859601-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6575932f-0ca5-f620-fbb1-c0c61ba471a7@linux.intel.com>
Date: Wed, 1 Apr 2020 15:12:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200331103623.859601-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Check for
 bonding support before exercising
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/03/2020 11:36, Chris Wilson wrote:
> Don't bother trying and failing to test bonding if the kernel doesn't
> even support it.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 34 +++++++++++++++++++++++++++-------
>   1 file changed, 27 insertions(+), 7 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index da8aff6de..9930e394d 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -1936,6 +1936,22 @@ static bool has_load_balancer(int i915)
>   	return err == 0;
>   }
>   
> +static bool has_bonding(int i915)
> +{
> +	I915_DEFINE_CONTEXT_ENGINES_BOND(bonds, 0) = {
> +		.base.name = I915_CONTEXT_ENGINES_EXT_BOND,
> +	};

Doh why do we allow zero bonds.. to make for an easier probe of course! :))

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> +	struct i915_engine_class_instance ci = {};
> +	uint32_t ctx;
> +	int err;
> +
> +	ctx = gem_context_create(i915);
> +	err = __set_load_balancer(i915, ctx, &ci, 1, &bonds);
> +	gem_context_destroy(i915, ctx);
> +
> +	return err == 0;
> +}
> +
>   igt_main
>   {
>   	int i915 = -1;
> @@ -1992,11 +2008,18 @@ igt_main
>   	igt_subtest("smoke")
>   		smoketest(i915, 20);
>   
> -	igt_subtest("bonded-imm")
> -		bonded(i915, 0);
> +	igt_subtest_group {
> +		igt_fixture igt_require(has_bonding(i915));
> +
> +		igt_subtest("bonded-imm")
> +			bonded(i915, 0);
> +
> +		igt_subtest("bonded-cork")
> +			bonded(i915, CORK);
>   
> -	igt_subtest("bonded-cork")
> -		bonded(i915, CORK);
> +		igt_subtest("bonded-early")
> +			bonded_early(i915);
> +	}
>   
>   	igt_subtest("bonded-slice")
>   		bonded_slice(i915);
> @@ -2007,9 +2030,6 @@ igt_main
>   	igt_subtest("bonded-semaphore")
>   		bonded_semaphore(i915);
>   
> -	igt_subtest("bonded-early")
> -		bonded_early(i915);
> -
>   	igt_fixture {
>   		igt_stop_hang_detector();
>   	}
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
