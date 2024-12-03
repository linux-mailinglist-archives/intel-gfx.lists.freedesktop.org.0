Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 744D99E1C1E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 13:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E820010E1A8;
	Tue,  3 Dec 2024 12:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iYzVjMYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB31510E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 12:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733228859; x=1764764859;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uAjRJM4nz92VKmLOl+ZqfrpnLzY3fkTQZuMUaQrYgVE=;
 b=iYzVjMYwjhVi3+InNBk2Mdt5wd+JrN1PblK5JmKH2czVJJW2CcVfof5d
 4YhVwqiWiCLP71WNdTuuKJid6+iRd8k2YllGZukfIVtmQgOL4W64uweIQ
 eHoJQs+5bvy7rmhgNmBTVKKAb+/0tB1lngxxuP14RdH0QSO3lLzTmP6tO
 aPEQpumSrwRp8RF3gIuG166ejTRMPKNYsu2fUuboeobdD/xEvoKe0fhM0
 UECa0fD6PY1+paM+2QnrNjG34qSIVp9MMoeBXE9y21Q0HZI/aIhhJlJCv
 QsqNF7DI4Dsi1VwIX1Qk5Rvbj3EUAzIKjnKy58UETm5TgqFyyUwQfWWwO Q==;
X-CSE-ConnectionGUID: GFcu5zDZSbikrdK2Omc8gw==
X-CSE-MsgGUID: ntomsMiHSxiIgxiFdB7I5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33316958"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33316958"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 04:27:39 -0800
X-CSE-ConnectionGUID: 3MNul1yiT9qBTKdi7qmdxg==
X-CSE-MsgGUID: oiXpDAjXQyCY583hjoRrxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93822220"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 04:27:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: John.C.Harrison@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH v5] drm/i915: Fix NULL pointer dereference in
 capture_engine
In-Reply-To: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
Date: Tue, 03 Dec 2024 14:27:34 +0200
Message-ID: <87mshd3qa1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 03 Dec 2024, Eugene Kobyak <eugene.kobyak@intel.com> wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().

Blank line here between commit message body and trailers.

> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: <stable@vger.kernel.org> # v6.3+
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
> v2:
>   - return drm_info to separate condition
> v3:
>   - create separate condition which generate string if intel_context exist
> v4:
>   - rollback and add check intel_context in log condition
> v5:
>   - create separate string with guc_id if intel_context exist
>  drivers/gpu/drm/i915/i915_gpu_error.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..4ca6b9872a48 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,9 +1643,12 @@ capture_engine(struct intel_engine_cs *engine,
>  		return NULL;
>  
>  	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> -		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> +	if (rq && !i915_request_started(rq)) {
> +	        char guc_id[11];
> +		ce ? snprintf(guc_id, sizeof(guc_id), " [0x%04x] ", ce->guc_id.id) : snprintf(guc_id, sizeof(guc_id), " ");

I don't know if there's a separate coding style entry saying you
shouldn't use a ternary operator like that, but you shouldn't use a
ternary operator like that.

BR,
Jani.

> +	        drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%snot yet started\n",
> +	                 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
> +	}
>  
>  	if (rq) {
>  		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);

-- 
Jani Nikula, Intel
