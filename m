Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA1F1D9378
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 11:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9137789F33;
	Tue, 19 May 2020 09:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72FDD89F33
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 09:39:50 +0000 (UTC)
IronPort-SDR: rR12f2smlaPi4f13wKVcHCzfflCV1c3DScVw1Q3piTbYCwryZanIVombfV+wYpRiEBiU8eXiSm
 sjNnrdAXtLaw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 02:39:49 -0700
IronPort-SDR: iRnDycTrW6gM8sr6SxO1yMgKE2y4wuzO+36K3xYldJwwEBoJOYo6Jm7wXIPpyB/dOYmWKtnXS8
 gaGJscgCCbVw==
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; d="scan'208";a="411577756"
Received: from mcohen-mobl.ger.corp.intel.com (HELO [10.249.86.147])
 ([10.249.86.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 02:39:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
 <20200519063123.20673-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5be274c0-1936-66c5-2d5b-edb8a59b8d0f@linux.intel.com>
Date: Tue, 19 May 2020 10:39:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519063123.20673-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915/selftests: Add tests for
 timeslicing virtual engines
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


On 19/05/2020 07:31, Chris Wilson wrote:
> Make sure that we can execute a virtual request on an already busy
> engine, and conversely that we can execute a normal request if the
> engines are already fully occupied by virtual requests.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 200 ++++++++++++++++++++++++-
>   1 file changed, 197 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index f6949cd55e92..ef38dd52945c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -3591,9 +3591,11 @@ static int nop_virtual_engine(struct intel_gt *gt,
>   	return err;
>   }
>   
> -static unsigned int select_siblings(struct intel_gt *gt,
> -				    unsigned int class,
> -				    struct intel_engine_cs **siblings)
> +static unsigned int
> +__select_siblings(struct intel_gt *gt,
> +		  unsigned int class,
> +		  struct intel_engine_cs **siblings,
> +		  bool (*filter)(const struct intel_engine_cs *))
>   {
>   	unsigned int n = 0;
>   	unsigned int inst;
> @@ -3602,12 +3604,23 @@ static unsigned int select_siblings(struct intel_gt *gt,
>   		if (!gt->engine_class[class][inst])
>   			continue;
>   
> +		if (filter && !filter(gt->engine_class[class][inst]))
> +			continue;
> +
>   		siblings[n++] = gt->engine_class[class][inst];
>   	}
>   
>   	return n;
>   }
>   
> +static unsigned int
> +select_siblings(struct intel_gt *gt,
> +		unsigned int class,
> +		struct intel_engine_cs **siblings)
> +{
> +	return __select_siblings(gt, class, siblings, NULL);
> +}
> +
>   static int live_virtual_engine(void *arg)
>   {
>   	struct intel_gt *gt = arg;
> @@ -3762,6 +3775,186 @@ static int live_virtual_mask(void *arg)
>   	return 0;
>   }
>   
> +static long slice_timeout(struct intel_engine_cs *engine)
> +{
> +	long timeout;
> +
> +	/* Enough time for a timeslice to kick in, and kick out */
> +	timeout = 2 * msecs_to_jiffies_timeout(timeslice(engine));
> +
> +	/* Enough time for the nop request to complete */
> +	timeout += HZ / 5;
> +
> +	return timeout;
> +}
> +
> +static int slicein_virtual_engine(struct intel_gt *gt,
> +				  struct intel_engine_cs **siblings,
> +				  unsigned int nsibling)
> +{
> +	const long timeout = slice_timeout(siblings[0]);
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	struct igt_spinner spin;
> +	unsigned int n;
> +	int err = 0;
> +
> +	/*
> +	 * Virtual requests must take part in timeslicing on the target engines.
> +	 */
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	for (n = 0; n < nsibling; n++) {
> +		ce = intel_context_create(siblings[n]);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			goto out;
> +		}
> +
> +		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto out;
> +		}
> +
> +		i915_request_add(rq);
> +	}
> +
> +	ce = intel_execlists_create_virtual(siblings, nsibling);
> +	if (IS_ERR(ce)) {
> +		err = PTR_ERR(ce);
> +		goto out;
> +	}
> +
> +	rq = intel_context_create_request(ce);
> +	intel_context_put(ce);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto out;
> +	}
> +
> +	i915_request_get(rq);
> +	i915_request_add(rq);
> +	if (i915_request_wait(rq, 0, timeout) < 0) {
> +		GEM_TRACE_ERR("%s(%s) failed to slice in virtual request\n",
> +			      __func__, rq->engine->name);
> +		GEM_TRACE_DUMP();
> +		intel_gt_set_wedged(gt);
> +		err = -EIO;
> +	}
> +	i915_request_put(rq);
> +
> +out:
> +	igt_spinner_end(&spin);
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +	igt_spinner_fini(&spin);
> +	return err;
> +}
> +
> +static int sliceout_virtual_engine(struct intel_gt *gt,
> +				   struct intel_engine_cs **siblings,
> +				   unsigned int nsibling)
> +{
> +	const long timeout = slice_timeout(siblings[0]);
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	struct igt_spinner spin;
> +	unsigned int n;
> +	int err = 0;
> +
> +	/*
> +	 * Virtual requests must allow others a fair timeslice.
> +	 */
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	/* XXX We do not handle oversubscription and fairness with normal rq */
> +	for (n = 0; n < nsibling; n++) {
> +		ce = intel_execlists_create_virtual(siblings, nsibling);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			goto out;
> +		}
> +
> +		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto out;
> +		}
> +
> +		i915_request_add(rq);
> +	}
> +
> +	for (n = 0; !err && n < nsibling; n++) {
> +		ce = intel_context_create(siblings[n]);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			goto out;
> +		}
> +
> +		rq = intel_context_create_request(ce);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto out;
> +		}
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +		if (i915_request_wait(rq, 0, timeout) < 0) {
> +			GEM_TRACE_ERR("%s(%s) failed to slice out virtual request\n",
> +				      __func__, siblings[n]->name);
> +			GEM_TRACE_DUMP();
> +			intel_gt_set_wedged(gt);
> +			err = -EIO;
> +		}
> +		i915_request_put(rq);
> +	}
> +
> +out:
> +	igt_spinner_end(&spin);
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +	igt_spinner_fini(&spin);
> +	return err;
> +}
> +
> +static int live_virtual_slice(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
> +	unsigned int class;
> +	int err;
> +
> +	if (intel_uc_uses_guc_submission(&gt->uc))
> +		return 0;
> +
> +	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
> +		unsigned int nsibling;
> +
> +		nsibling = __select_siblings(gt, class, siblings,
> +					     intel_engine_has_timeslices);
> +		if (nsibling < 2)
> +			continue;
> +
> +		err = slicein_virtual_engine(gt, siblings, nsibling);
> +		if (err)
> +			return err;
> +
> +		err = sliceout_virtual_engine(gt, siblings, nsibling);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>   static int preserved_virtual_engine(struct intel_gt *gt,
>   				    struct intel_engine_cs **siblings,
>   				    unsigned int nsibling)
> @@ -4297,6 +4490,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_virtual_engine),
>   		SUBTEST(live_virtual_mask),
>   		SUBTEST(live_virtual_preserved),
> +		SUBTEST(live_virtual_slice),
>   		SUBTEST(live_virtual_bond),
>   		SUBTEST(live_virtual_reset),
>   	};
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
