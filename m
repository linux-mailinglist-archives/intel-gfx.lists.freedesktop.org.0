Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A294719741
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 11:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B7810E1AF;
	Thu,  1 Jun 2023 09:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283EA10E1AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 09:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685612517; x=1717148517;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ByrLGAVs4a8HrhpdDh0avsDze7bVQpCLP2jjeYDLJDc=;
 b=cYrH5XEZp0J/YHGvVnui9GLAQiXO9aMYPrU3X9IJWQ27DQl9lBdQN5pR
 6DLc4wbxfNRvJ8FLDBkfq6GYulud9ipHYaQqkCX0ReKElrdoivQzGSDs9
 vRN9Xp025CJyysFXADNjQ/k+8LuJ0WPy406an6udgeOVf/L52ew99sRoq
 Ktj0mceFt9H6LW4pbwZU3fRYoW+8XWVlRCzvU/S35rZOUyysst5rTuy6u
 eZA2TtkRt5xa0BET4UPLQz6S+ns/ZvWqGn4KxDR7FRVXcM3K2S/84D8Su
 qv/BPEVVbMJxYVUHNXsIqjN0+8OqECGjA5+cgvkOKlieAobRvx1EnvICl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="335129025"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="335129025"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 02:41:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="797077156"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="797077156"
Received: from rbals-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.178])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 02:41:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230601051503.175869-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230601051503.175869-1-arun.r.murthy@intel.com>
Date: Thu, 01 Jun 2023 12:41:53 +0300
Message-ID: <87leh3frj2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Print usefull information
 on error
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
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f51a55f4e9d0..0877f1e251a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6012,8 +6012,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  			 */
>  			if (DISPLAY_VER(i915) < 12) {
>  				drm_dbg_kms(&i915->drm,
> -					    "[PLANE:%d:%s] Modifier does not support async flips\n",
> -					    plane->base.base.id, plane->base.name);
> +					    "[PLANE:%d:%s] Asyn flip on modifier 0x%llx not supported on Display Ver %d\n",

How about:

"Modifier 0x%llx does not support async flips on display ver %d\n"

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
> +				    "[PLANE:%d:%s] Unknown modifier 0x%llx ! async flip not supported\n",

It's not unknown, it just doesn't support async flips? Why the
exclamation mark?

How about:

"Modifier 0x%llx does not support async flips\n"

> +				    plane->base.base.id, plane->base.name,
> +				    new_plane_state->hw.fb->modifier);
>  			return -EINVAL;
>  		}

-- 
Jani Nikula, Intel Open Source Graphics Center
