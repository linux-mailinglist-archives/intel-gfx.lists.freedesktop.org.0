Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB61554560
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 12:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62FE10E6EE;
	Wed, 22 Jun 2022 10:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE9110E37B;
 Wed, 22 Jun 2022 10:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655895010; x=1687431010;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+q3LyYRSG8Prlp1Z2KGKSmSZST1o9tVZI3vEN0EE3rk=;
 b=OmcosJ/iJ3IYZX0zR1S4qQcF8lpzV2/BIoZw6wfUFnZ75db1L/hMfEZw
 71VOPs/omocqfNl4srBjwmFyJRBoq0UA+kcANJggRr1jZFENbW+OI+nZ2
 b08DZAALHfQbbfE13TN0qIjfqgcqVm+gchd5rn886RAE0KgZ7K66fZM4Y
 O/sLIkZP2RDhnJSK2hYdRROWSWvKhBUjzLgXdGePtLHHjZOtQzpLhgWQW
 OWQOw40z7hO6r81W5MjATgjxhZFV1+gkIgh+EU3QFjWALc74A9UoEH6cl
 LBPv/PVE4zJadB9YkVZxUICG1s0XlrW3QjwXdsjVNbCgajapRnFvsyuqH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="269103712"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="269103712"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:50:09 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="690440303"
Received: from wterliko-mobl.ger.corp.intel.com (HELO [10.249.254.201])
 ([10.249.254.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:50:06 -0700
Message-ID: <453f12ce-e982-0d53-37e4-7e72f1538838@linux.intel.com>
Date: Wed, 22 Jun 2022 12:50:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
References: <20220621200058.3536182-1-bob.beckett@collabora.com>
 <20220621200058.3536182-4-bob.beckett@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220621200058.3536182-4-bob.beckett@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v8 03/10] drm/i915/ttm: only trust snooping
 for dgfx when deciding default cache_level
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
Cc: kernel@collabora.com, Matthew Auld <matthew.auld@intel.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/21/22 22:00, Robert Beckett wrote:
> By default i915_ttm_cache_level() decides I915_CACHE_LLC if HAS_SNOOP.
> This is divergent from existing backends code which only considers
> HAS_LLC.
> Testing shows that trusting snooping on gen5- is unreliable and bsw via
> ggtt mappings, so limit DGFX for now and maintain previous behaviour.
Yeah, IIRC Matthew mentioned that HAS_SNOOP() can be overridden in 
various ways, but not on DGFX, (at least not for DG1). So this looks 
correct to me.
>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 4c1de0b4a10f..40249fa28a7a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -46,7 +46,9 @@ static enum i915_cache_level
>   i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
>   		     struct ttm_tt *ttm)
>   {
> -	return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
> +	bool can_snoop = HAS_SNOOP(i915) && IS_DGFX(i915);
> +
> +	return ((HAS_LLC(i915) || can_snoop) &&
>   		!i915_ttm_gtt_binds_lmem(res) &&
>   		ttm->caching == ttm_cached) ? I915_CACHE_LLC :
>   		I915_CACHE_NONE;
