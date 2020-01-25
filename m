Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C411492C1
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 02:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2306E520;
	Sat, 25 Jan 2020 01:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20466E520
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 01:37:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 17:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="222772491"
Received: from nkosecih-mobl.ger.corp.intel.com (HELO [10.252.36.144])
 ([10.252.36.144])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2020 17:37:39 -0800
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0f632875-e78a-22f1-2259-d65fa5e74ef5@intel.com>
Date: Sat, 25 Jan 2020 03:37:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Fix OA context id overlap
 with idle context id
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

On 24/01/2020 03:37, Umesh Nerlige Ramappa wrote:
> Engine context pinned in perf OA was set to same context id as
> the idle context. Set the context id to an unused value.
>
> Clear the sw context id field in lrc descriptor before ORing with
> ce->tag (Chris)
>
> Fixes: https://gitlab.freedesktop.org/drm/intel/issues/756
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>   drivers/gpu/drm/i915/i915_perf.c    | 9 +++++++--
>   2 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a13a8c4b65ab..cf6c43bd540a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1211,12 +1211,12 @@ __execlists_schedule_in(struct i915_request *rq)
>   	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>   		execlists_check_context(ce, engine);
>   
> +	ce->lrc_desc &= ~GENMASK_ULL(47, 37);
>   	if (ce->tag) {
>   		/* Use a fixed tag for OA and friends */
>   		ce->lrc_desc |= (u64)ce->tag << 32;
>   	} else {
>   		/* We don't need a strict matching tag, just different values */
> -		ce->lrc_desc &= ~GENMASK_ULL(47, 37);
I guess you can remove the line just above.
>   		ce->lrc_desc |=
>   			(u64)(++engine->context_tag % NUM_CONTEXT_TAG) <<
>   			GEN11_SW_CTX_ID_SHIFT;
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 3c4647054557..5bd878c64504 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1323,7 +1323,12 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   	case 12: {
>   		stream->specific_ctx_id_mask =
>   			((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
> -		stream->specific_ctx_id = stream->specific_ctx_id_mask;
> +		/* Pick an unused context id
> +		 * 0 - (NUM_CONTEXT_TAG - 1) are used by other contexts
> +		 * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
> +		 */
> +		stream->specific_ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
> +		BUILD_BUG_ON((GEN12_MAX_CONTEXT_HW_ID - 1) < NUM_CONTEXT_TAG);


Arg yeah, we can't use an id that has all bits to 1 because that matches 
the idle value in the OA reports :/

This also affects gen8-10 cases (afaik).


Thanks for spotting this!


-Lionel


>   		break;
>   	}
>   
> @@ -1331,7 +1336,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   		MISSING_CASE(INTEL_GEN(ce->engine->i915));
>   	}
>   
> -	ce->tag = stream->specific_ctx_id_mask;
> +	ce->tag = stream->specific_ctx_id;
>   
>   	DRM_DEBUG_DRIVER("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
>   			 stream->specific_ctx_id,


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
