Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XFzWLcv3RGro4AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:19:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CFD6ECB64
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:19:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LZsDic2C;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E760310EEEE;
	Wed,  1 Jul 2026 11:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C020210E0A9;
 Wed,  1 Jul 2026 11:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782904773; x=1814440773;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vEEKLJlOZE7ycVNjS78Qg1dFqDS/f56RKZhlhNIuyNI=;
 b=LZsDic2CN42n+Qgllcg21PKSZGhfDe/Jumtej/00trlDA8cam6FvCfyP
 4hq6gkrREEjesNYGFKpYvVNh3DNGP6K3z7a83TnULr0UMINhWHaAe7N/m
 oLdN9cZvilDMx8BIJEK+KJ2FSU9dfdLx/9mnbWKmYGLkXpF9CldF/q4v+
 3sX/gyPLiwwdQGOy4tWlP1P2d8bikD0qDzULR+ahHmhow/hN+akJnV+vX
 n5242FkDUbgo+ESuOsNSR7uEwHxr5T0AuHzgOCMIdxZswEWie9WeOnekK
 yMNNbJe8tGjTd8PI/+uqAjraOb00PdsBYJ85EoNMSRiFdlaPH+r962ixo A==;
X-CSE-ConnectionGUID: CaE9zj+cSrm06G9aFyCcbA==
X-CSE-MsgGUID: 6kQG+H7QT6qYeZpgaA2AAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="87547641"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="87547641"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:19:32 -0700
X-CSE-ConnectionGUID: p9AUZjeBTH6qkXwNuR8G8w==
X-CSE-MsgGUID: 8K+QDoDJRVi22E9oE9voGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="252667741"
Received: from rvuia-mobl.ger.corp.intel.com (HELO [10.245.244.98])
 ([10.245.244.98])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:19:31 -0700
Message-ID: <334874ba-a0e9-4b6d-b148-e8173786fd9a@linux.intel.com>
Date: Wed, 1 Jul 2026 13:20:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gem: Do not leak siblings[] on proto context
 error
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, Martin Hodo <martin.hodo@intel.com>,
 Faith Ekstrand <faith.ekstrand@collabora.com>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, stable@vger.kernel.org
References: <20260701073030.44850-1-joonas.lahtinen@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20260701073030.44850-1-joonas.lahtinen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,igalia.com:email,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50CFD6ECB64

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

On 7/1/26 09:30, Joonas Lahtinen wrote:
> After a successful BALANCE/PARALLEL_SUBMIT extension on context
> creation, error during processing of next user extension leaks
> the siblings[] array. Fix that.
> 
> Discovered using AI-assisted static analysis confirmed by
> Intel Product Security.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
> Cc: Faith Ekstrand <faith.ekstrand@collabora.com>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.15+
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 22 +++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index aeafe1742d30..87fce2adfeef 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -769,8 +769,8 @@ static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
>  		struct intel_engine_cs *engine;
>  
>  		if (copy_from_user(&ci, &user->engines[n], sizeof(ci))) {
> -			kfree(set.engines);
> -			return -EFAULT;
> +			err = -EFAULT;
> +			goto err;
>  		}
>  
>  		memset(&set.engines[n], 0, sizeof(set.engines[n]));
> @@ -786,8 +786,8 @@ static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
>  			drm_dbg(&i915->drm,
>  				"Invalid engine[%d]: { class:%d, instance:%d }\n",
>  				n, ci.engine_class, ci.engine_instance);
> -			kfree(set.engines);
> -			return -ENOENT;
> +			err = -ENOENT;
> +			goto err;
>  		}
>  
>  		set.engines[n].type = I915_GEM_ENGINE_TYPE_PHYSICAL;
> @@ -800,15 +800,21 @@ static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
>  					   set_proto_ctx_engines_extensions,
>  					   ARRAY_SIZE(set_proto_ctx_engines_extensions),
>  					   &set);
> -	if (err) {
> -		kfree(set.engines);
> -		return err;
> -	}
> +	if (err)
> +		goto err_extensions;
>  
>  	pc->num_user_engines = set.num_engines;
>  	pc->user_engines = set.engines;
>  
>  	return 0;
> +
> +err_extensions:
> +	for (n = 0; n < set.num_engines; n++)
> +		kfree(set.engines[n].siblings);
> +err:
> +	kfree(set.engines);
> +
> +	return err;
>  }
>  
>  static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,

