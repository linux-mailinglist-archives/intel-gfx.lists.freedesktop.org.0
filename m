Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842A54AEF77
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 11:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F5F10E2C9;
	Wed,  9 Feb 2022 10:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB50410E1CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 10:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644403354; x=1675939354;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=U9o1IMRVOckE2cvZD7eQyPLthlxXZQcDHeMkniqI2xc=;
 b=WWF8q13WqErf2m5aQhfmwAhys3M4T6iNdmTOo5gvg1i0QgRMZ1lq9pay
 BxDuhnoDMYW1fNbvLQNiJ1WQMwm2iGzRils+Q8KyS1mIIqmrGRyh14ra+
 pqzsjC0qqqRfOwxGXMnXIlmV03GvuqT5LtqgefFDWVbrqPlmyGbj/faIB
 +p5VxJeMuYyWkRp0L3OqABrQB94zdTgiDfge3w9NHHQzU2rXmzfQff67R
 WHy/I1p0ZaRdLrWCXmyqp5WQYi9hkBrpIm9uM6yrebDmTKNZjToOvItC1
 enkR8VEE1oZoshgNy7y6DbTqICpopZtB1QVimFRJVfz3xhrm9AaRgZody Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="335579184"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="335579184"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 02:42:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="541040274"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 09 Feb 2022 02:42:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 12:42:31 +0200
Date: Wed, 9 Feb 2022 12:42:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YgOal+jpfkeBIAFc@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
 <67f2ed8a9166daa891aa6d89f93eb629145d1c15.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67f2ed8a9166daa891aa6d89f93eb629145d1c15.1643896905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: group i915_drv.h forward
 declarations together
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

On Thu, Feb 03, 2022 at 04:02:27PM +0200, Jani Nikula wrote:
> Group the forward declarations in i915_drv.h together near the top, like
> in other header files, and sort.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 44 ++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8c1706fd81f9..5a1615c02971 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -106,6 +106,25 @@
>  #include "gt/intel_timeline.h"
>  #include "i915_vma.h"
>  
> +struct dpll;
> +struct drm_i915_gem_object;
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_audio_funcs;
> +struct intel_cdclk_config;
> +struct intel_cdclk_funcs;
> +struct intel_cdclk_state;
> +struct intel_cdclk_vals;

We're already including intel_cdclk.h so these shouldn't
even be needed.

Apart from that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
