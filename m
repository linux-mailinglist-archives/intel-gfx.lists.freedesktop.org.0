Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7452BA32EFD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116A010E96B;
	Wed, 12 Feb 2025 18:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QMahRw1Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3FE10E969;
 Wed, 12 Feb 2025 18:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739386563; x=1770922563;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vknaCoep7T6+mEhvWubw+8FPzvR8awuQhGl2sT/uU4E=;
 b=QMahRw1Yn2zq/yuSLwBCPKeFkmiLUE+Y0jliGWtq+Z2J3DjKd98eAmAk
 PEp9v6MPnrBp0gajURDRnfeN0F8iIzkUHwzRrEQDRL9tFiiIORSzfbDGu
 fSPuRzE7WT/1uKzo5KatWFv3Ycl4Cdfn6qOiEXOg+uICrHZjYSy83+lLG
 oFdwEdC5iOcqNz+eX3Lmrqk2A79lV9eB/ITjp9Vxc11VUjxTfOZyVCtBb
 mUedIyUare7FN3oOdXDzRdjJWxqiLn3Y+rgxk5ssFlEL88VDF4iHQCqlk
 qebVB8eMTdchqiKeDUI98g5GaTYFqMV8jWaMRVe2yLPQmIMtaABZgQKz8 Q==;
X-CSE-ConnectionGUID: TmjeetqBS5qw3+1g8NtIag==
X-CSE-MsgGUID: W1PYHVE1QGOSkRM9GufOBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40326005"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="40326005"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:56:03 -0800
X-CSE-ConnectionGUID: xIlq6qsnTPKlfuF6VpAKWg==
X-CSE-MsgGUID: SKo60N3TRVu9gPhOzzziUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113106510"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 10:56:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 20:55:59 +0200
Date: Wed, 12 Feb 2025 20:55:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Use explicit cast in
 POWER_DOMAIN_*() macros
Message-ID: <Z6zuv5ZIQrut0Uf5@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
 <20250212174333.371681-2-gustavo.sousa@intel.com>
 <Z6zf00kDlmteGiIq@intel.com>
 <173938316839.145254.11637419535806568600@intel.com>
 <173938586622.145254.18264992862975057866@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173938586622.145254.18264992862975057866@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Feb 12, 2025 at 03:44:26PM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2025-02-12 14:59:28-03:00)
> >Quoting Ville Syrjälä (2025-02-12 14:52:19-03:00)
> >>On Wed, Feb 12, 2025 at 02:43:16PM -0300, Gustavo Sousa wrote:
> >>> Let the compiler know that we are intetionally using a different enum
> >>> type to perform arithmetic with enum intel_display_power_domain in the
> >>> POWER_DOMAIN_*(). Do that by explicitly casting the macro argument to
> >>> int.
> >>> 
> >>> Reported-by: kernel test robot <lkp@intel.com>
> >>> Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
> >>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >>> ---
> >>>  drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
> >>>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>> 
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> >>> index a3a5c1be8bab..3caa3f517a32 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> >>> @@ -117,12 +117,12 @@ enum intel_display_power_domain {
> >>>          POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
> >>>  };
> >>>  
> >>> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
> >>> +#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
> >>>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
> >>> -                ((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
> >>> +                ((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
> >>>  #define POWER_DOMAIN_TRANSCODER(tran) \
> >>>          ((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
> >>> -         (tran) + POWER_DOMAIN_TRANSCODER_A)
> >>> +         (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
> >>
> >>I've generally gone for the 
> >>POWER_DOMAIN_TRANSCODER_A + (tran) - TRANSCODER_A
> >>form for such things, to also make sure it works
> >>even if TRANSCODER_A isn't 0 anymore.
> >>Does that avoid the warning as well?
> >
> >Hm... That's a good idea; and I think it might avoid the warning indeed
> >(maybe we would need parentheses around (tran) - TRANSCODER_A).
> 
> I did a quick test and this also took care of removing the clang warning
> in my environment:
> 
>   diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>   index e354051e8982..d46b35dbe018 100644
>   --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>   +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>   @@ -123,7 +123,7 @@ enum intel_display_power_domain {
>           ((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
>    #define POWER_DOMAIN_TRANSCODER(tran) \
>           ((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
>   -        (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRANSCODER_A))
>   +        (enum intel_display_power_domain)(POWER_DOMAIN_TRANSCODER_A + ((tran) - TRANSCODER_A)))
>    
>    struct intel_power_domain_mask {
>           DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> 
> The parentheses around (tran) - TRANSCODER_A were indeed necessary,
> probably for the compiler to see that as an int expression.
> 
> We can get rid of the parentheses if we do (tran) - TRANSCODER_A before
> adding POWER_DOMAIN_TRANSCODER_A:
> 
>   diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>   index e354051e8982..b15eb4fd5062 100644
>   --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>   +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>   @@ -123,7 +123,7 @@ enum intel_display_power_domain {
>    	((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
>    #define POWER_DOMAIN_TRANSCODER(tran) \
>    	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
>   -	 (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRANSCODER_A))
>   +	 (enum intel_display_power_domain)((tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A))

Looks reasoanble enough to me. Do we still need the final cast?

>    
>    struct intel_power_domain_mask {
>    	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> 
> I'm tending more toward the second alternative.
> 
> --
> Gustavo Sousa
> 
> >
> >>
> >>Maybe these should even be functions rather than macros?
> >
> >Yeah. I actually considered this possibility, but went with the macros
> >to keep the change simple.
> >
> >If that's welcome, I could go ahead with turning those macros into
> >static inline functions.
> >
> >--
> >Gustavo Sousa
> >
> >>
> >>>  
> >>>  struct intel_power_domain_mask {
> >>>          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> >>> -- 
> >>> 2.48.1
> >>
> >>-- 
> >>Ville Syrjälä
> >>Intel

-- 
Ville Syrjälä
Intel
