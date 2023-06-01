Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B238C719F46
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 16:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1941210E142;
	Thu,  1 Jun 2023 14:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A4910E142
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685628685; x=1717164685;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Pd9iOYd+n422V2MPI4xRW/GrkcP5PvB+PdgokdgTGfo=;
 b=gRxSl8BtRE0//OKS5WBDZGjWXE7/vjuGjlTyp7EDwfAkpfdtX7xPx+QC
 rcnf+s3GnZQhCmlwKkFe1BsEDblJ3VKeNIQvkpDV9RhEEvJfT1fQSjrTH
 cXrsBwT1Tjx3zRkrpPOW6tiMzBgXkco00IlxQC3rFDvaSoC97aP7mqwKa
 xuDdwbvYKU9FU1R1NEIKroZZyTpkUX7G9MOhRKN/UOrVJsITtMOV5ts1x
 XTKIqhO7PFPuAIcB01k4cwGlPrk7XXiKOAPlSvY3s8wzOOcfClnFLwpRr
 jVC+52Ne8VeSF4KHWyDhv3VApmEEmgFGWLeoQXewtxQ277BJy/9lFvW0i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358857876"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="358857876"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:00:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="772433182"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="772433182"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:00:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230601102757.187114-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230601051503.175869-1-arun.r.murthy@intel.com>
 <20230601102757.187114-1-arun.r.murthy@intel.com>
Date: Thu, 01 Jun 2023 17:00:49 +0300
Message-ID: <87ilc7ffji.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display: Print useful
 information on error
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

On Thu, 01 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> For modifier not supporting async flip, print the modifier and display
> version. Helps in reading the error message.
>
> v2: Reframe the error message (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f51a55f4e9d0..adaba43bde2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6012,8 +6012,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  			 */
>  			if (DISPLAY_VER(i915) < 12) {
>  				drm_dbg_kms(&i915->drm,
> -					    "[PLANE:%d:%s] Modifier does not support async flips\n",
> -					    plane->base.base.id, plane->base.name);
> +					    "[PLANE:%d:%s] Modifier 0x%llx does not support asyn flip on display ver %d\n",

*async

> +					    plane->base.base.id, plane->base.name,
> +					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
>  				return -EINVAL;
>  			}
>  			break;
> @@ -6025,8 +6026,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  			break;
>  		default:
>  			drm_dbg_kms(&i915->drm,
> -				    "[PLANE:%d:%s] Modifier does not support async flips\n",
> -				    plane->base.base.id, plane->base.name);
> +				    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip\n",
> +				    plane->base.base.id, plane->base.name,
> +				    new_plane_state->hw.fb->modifier);
>  			return -EINVAL;
>  		}

-- 
Jani Nikula, Intel Open Source Graphics Center
