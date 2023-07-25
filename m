Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF73A76104A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 12:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C709210E08A;
	Tue, 25 Jul 2023 10:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 672D110E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 10:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690279823; x=1721815823;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ApCnmfZ6o0psZDvalor2nlVIg/ySotsBHWz7X/p/XJE=;
 b=KWpw6+5B9NT1YKKKNhZRYRb6ItGGkIjUU+Lumuvm4ZUqVuOBUQWi0lYH
 dbn79cy/kStUccpKeYXKP1JuJH7I7xJnpWi+K+tIFHX/kc4wazBY8OgMy
 ae15A3gIzngEEt7tvhRW2qT8HutttiWH+o7Tj8uwjoor7VADw1Jr8vKYC
 GgWAeo+uxOW0GKwEmVy7/Y5AwRwv5c3fjwPFX6AGpGiSZvY+L0XxEmaKj
 OfPpuHJvGM6BW0PyVwVFVvLSE4cVRGT1m0tWlcv7vpCVxmVveOHQ4zx/X
 Zv7a4QG5XSj8QFIWwIRxI5lYTP7gTbSh/yp3AqBV0hiL+dgVoibSE8MIP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="454059292"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="454059292"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 03:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="719996685"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="719996685"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 03:10:21 -0700
Date: Tue, 25 Jul 2023 12:10:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZL+fim4rTH2zo+1u@ashyti-mobl2.lan>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-20-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725001312.1907319-20-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915: Replace several
 IS_METEORLAKE with proper IP version checks
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -470,9 +470,13 @@ enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>  					  bool always_coherent)
>  {
>  	/*
> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> +	 * Wa_22016122933: always return I915_MAP_WC for Xe_LPM+
> +	 *
> +	 * FIXME: The scope of this workaround is too wide right now and
> +	 * is applying to objects used solely on the primary GT.  We need to
> +	 * take into account which GT will be operating on the shared object.
>  	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> +	if (i915_gem_object_is_lmem(obj) || MEDIA_VER_FULL(i915) == IP_VER(13, 0))
>  		return I915_MAP_WC;
>  	if (HAS_LLC(i915) || always_coherent)
>  		return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index 21af0ec52223..24060278e7a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
>  {
>  	struct drm_i915_private *i915 = engine->i915;
>  
> -	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
> +	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {

this is a bit in countertrend... why isn't this

	MEDIA_VER_FULL(engine->i915) == IP_VER(13, 0)

Like all others?

Andi
