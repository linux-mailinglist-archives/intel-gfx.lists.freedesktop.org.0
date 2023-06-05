Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C45722AD9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 17:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0C410E2DB;
	Mon,  5 Jun 2023 15:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A23510E2DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 15:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685978526; x=1717514526;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=d1S1SqKuNqBuXNJL3RvjikLzNs95Z5wOiF1MNf9PsbI=;
 b=axYT5qM3+ZNIuVbaSfpatsWQGV+eKoSDoEFuBaoX7kv6GGNrl0mvvWjI
 XBDJv/EE84UIpoVR+3MuaJK3HKoyTmFjOytMVLdM5/OhFi0QV46Nj+fcD
 3BdALoAKLH8W8r99zB+WWh8eFSLw0dHR6aFrc6z4zJMSe3YLE+U+G4W/I
 aHbT8RCQMm0Vb/T8OR0qyb7TYZMhnO8EeGDdh4wA59qKSQ/kCNKkd5AMn
 R1Vv0r8POdUIfrYyx6tgYGw6Nz42j1j7Jdk84MbBGf58xPIgThoRx0nkF
 XTKIPNwLfg5+kIuTmjTzWWGtwbY9b4hHKT3WalIHOYYEGwOJp3w+CtHgC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336015726"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="336015726"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="741758579"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741758579"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.122])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:22:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230602022157.221225-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230601051503.175869-1-arun.r.murthy@intel.com>
 <20230602022157.221225-1-arun.r.murthy@intel.com>
Date: Mon, 05 Jun 2023 18:22:01 +0300
Message-ID: <87fs76aq92.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display: Print useful
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

On Fri, 02 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> For modifier not supporting async flip, print the modifier and display
> version. Helps in reading the error message.
>
> v2: Reframe the error message (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks for the patch, pushed to din.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f51a55f4e9d0..f23dd937c27c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6012,8 +6012,9 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  			 */
>  			if (DISPLAY_VER(i915) < 12) {
>  				drm_dbg_kms(&i915->drm,
> -					    "[PLANE:%d:%s] Modifier does not support async flips\n",
> -					    plane->base.base.id, plane->base.name);
> +					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
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
