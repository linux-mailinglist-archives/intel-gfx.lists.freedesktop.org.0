Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0FF1D7554
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4E489C93;
	Mon, 18 May 2020 10:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0090F89C93
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:38:15 +0000 (UTC)
IronPort-SDR: s2mzWydrkOr0MDXUdKFJxMwnVxcThnqT/TXUS0FRq/HHiahQiFwyykIBPOB4qS8gZTTRkRIt59
 MVMA+hHVheqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:38:15 -0700
IronPort-SDR: PwslWymKNqiO8QpzxyOS9w002s5XPPU6WFbrLJyfahz3LYl//B5evXdiT0n/IEN5VgXYLcZ2cI
 kZr1F6ZGqLMQ==
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="439167921"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:38:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518102911.3463-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c82c986c-6de6-b229-0ac6-8b2135894e52@linux.intel.com>
Date: Mon, 18 May 2020 11:38:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518102911.3463-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Refactor sibling
 selection
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/05/2020 11:29, Chris Wilson wrote:
> Tvrtko spotted that some selftests were using 'break' not 'continue',
> which will fail for discontiguous engine layouts such as on Icelake
> (which may have vcs0 and vcs2).
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 68 ++++++++++----------------
>   1 file changed, 27 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 824f99c4cc7c..94854a467e66 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -3600,13 +3600,30 @@ static int nop_virtual_engine(struct intel_gt *gt,
>   	return err;
>   }
>   
> +static unsigned int select_siblings(struct intel_gt *gt,
> +				    unsigned int class,
> +				    struct intel_engine_cs **siblings)
> +{
> +	unsigned int n = 0;
> +	unsigned int inst;
> +
> +	for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> +		if (!gt->engine_class[class][inst])
> +			continue;
> +
> +		siblings[n++] = gt->engine_class[class][inst];
> +	}
> +
> +	return n;
> +}
> +
>   static int live_virtual_engine(void *arg)
>   {
>   	struct intel_gt *gt = arg;
>   	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
> -	unsigned int class, inst;
> +	unsigned int class;
>   	int err;
>   
>   	if (intel_uc_uses_guc_submission(&gt->uc))
> @@ -3624,13 +3641,7 @@ static int live_virtual_engine(void *arg)
>   	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
>   		int nsibling, n;
>   
> -		nsibling = 0;
> -		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> -			if (!gt->engine_class[class][inst])
> -				continue;
> -
> -			siblings[nsibling++] = gt->engine_class[class][inst];
> -		}
> +		nsibling = select_siblings(gt, class, siblings);
>   		if (nsibling < 2)
>   			continue;
>   
> @@ -3739,7 +3750,7 @@ static int live_virtual_mask(void *arg)
>   {
>   	struct intel_gt *gt = arg;
>   	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
> -	unsigned int class, inst;
> +	unsigned int class;
>   	int err;
>   
>   	if (intel_uc_uses_guc_submission(&gt->uc))
> @@ -3748,13 +3759,7 @@ static int live_virtual_mask(void *arg)
>   	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
>   		unsigned int nsibling;
>   
> -		nsibling = 0;
> -		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> -			if (!gt->engine_class[class][inst])
> -				break;
> -
> -			siblings[nsibling++] = gt->engine_class[class][inst];
> -		}
> +		nsibling = select_siblings(gt, class, siblings);
>   		if (nsibling < 2)
>   			continue;
>   
> @@ -3876,7 +3881,7 @@ static int live_virtual_preserved(void *arg)
>   {
>   	struct intel_gt *gt = arg;
>   	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
> -	unsigned int class, inst;
> +	unsigned int class;
>   
>   	/*
>   	 * Check that the context image retains non-privileged (user) registers
> @@ -3894,13 +3899,7 @@ static int live_virtual_preserved(void *arg)
>   	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
>   		int nsibling, err;
>   
> -		nsibling = 0;
> -		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> -			if (!gt->engine_class[class][inst])
> -				continue;
> -
> -			siblings[nsibling++] = gt->engine_class[class][inst];
> -		}
> +		nsibling = select_siblings(gt, class, siblings);
>   		if (nsibling < 2)
>   			continue;
>   
> @@ -4111,7 +4110,7 @@ static int live_virtual_bond(void *arg)
>   	};
>   	struct intel_gt *gt = arg;
>   	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
> -	unsigned int class, inst;
> +	unsigned int class;
>   	int err;
>   
>   	if (intel_uc_uses_guc_submission(&gt->uc))
> @@ -4121,14 +4120,7 @@ static int live_virtual_bond(void *arg)
>   		const struct phase *p;
>   		int nsibling;
>   
> -		nsibling = 0;
> -		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> -			if (!gt->engine_class[class][inst])
> -				break;
> -
> -			GEM_BUG_ON(nsibling == ARRAY_SIZE(siblings));
> -			siblings[nsibling++] = gt->engine_class[class][inst];
> -		}
> +		nsibling = select_siblings(gt, class, siblings);
>   		if (nsibling < 2)
>   			continue;
>   
> @@ -4266,7 +4258,7 @@ static int live_virtual_reset(void *arg)
>   {
>   	struct intel_gt *gt = arg;
>   	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
> -	unsigned int class, inst;
> +	unsigned int class;
>   
>   	/*
>   	 * Check that we handle a reset event within a virtual engine.
> @@ -4284,13 +4276,7 @@ static int live_virtual_reset(void *arg)
>   	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
>   		int nsibling, err;
>   
> -		nsibling = 0;
> -		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> -			if (!gt->engine_class[class][inst])
> -				continue;
> -
> -			siblings[nsibling++] = gt->engine_class[class][inst];
> -		}
> +		nsibling = select_siblings(gt, class, siblings);
>   		if (nsibling < 2)
>   			continue;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
