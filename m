Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3304BC9F18D
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 14:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A911610E7DA;
	Wed,  3 Dec 2025 13:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4E6v2WU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C66410E7BD;
 Wed,  3 Dec 2025 13:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764767758; x=1796303758;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EWb/xwIYvmNmQqlA6xbDZy2F0B2RMmxScPwmaGL96fw=;
 b=d4E6v2WU9X+0AJ24U+FE5y3RPL1aUndi7imNCZuaXzpG6b9x1/b/Mw0Y
 0psNXFFEmxO+q/3nFCjgMbKM0yoc3WWC4Weet7jmVBWNs4PPhD5YMG6O1
 C7QqgS2y+5vFBk9hMUO/GE0XbKghuGG6RSqQ9/oPj7XJQri59RXyG3hOW
 QSdUiRxBV6rkX+/FLTORAsrwgwlpXzfcyGEFLy9lCGmv7ADA1jkzvLJHP
 8guyiSxm9VqrhnWFmw0hIZ/M81wQYipC1KL21II8TvSZ3T3LqL5EosqqE
 SwJfP2IMEh5c/cLQ6olFjkruqzRc7/gblfw2yapwK2PyhyiZcbRIeIog5 Q==;
X-CSE-ConnectionGUID: bD6QgzfqR2i10PtkO4M0ew==
X-CSE-MsgGUID: yaEYr0UKQxCcQz4m0MqeXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="54308001"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="54308001"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:15:53 -0800
X-CSE-ConnectionGUID: ONEoPYr5QbKuK17ZTKK8eg==
X-CSE-MsgGUID: GVJ4flwOSbiHIoPl23sRiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="195086928"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.70])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:15:51 -0800
Date: Wed, 3 Dec 2025 15:15:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Message-ID: <aTA4BTe4I5sA-WSJ@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251201132457.624358-2-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Dec 01, 2025 at 03:24:55PM +0200, Jouni Högander wrote:
> Currently plane id bit is set in crtc_state->async_flip_planes only when
> async flip toggle workaround is needed. We want to utilize
> crtc_state->async_flip_planes further in Selective Fetch calculation.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 7b7619d59251..de0a69c55582 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -603,8 +603,7 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
>  		new_crtc_state->do_async_flip = true;
>  		new_crtc_state->async_flip_planes |= BIT(plane->id);
> -	} else if (plane->need_async_flip_toggle_wa &&
> -		   new_crtc_state->uapi.async_flip) {
> +	} else if (new_crtc_state->uapi.async_flip) {

I'd get rid of the if-else construct here now, and just do something
like:

if (intel_plane_do_async_flip(...))
	new_crtc_state->do_async_flip = true;

if (new_crtc_state->uapi.async_flip) {
	/* ... */
	new_crtc_state->async_flip_planes |= BIT(plane->id);
}

We should probably also move the plane->async_flip check
out from intel_plane_do_async_flip() and just make it a
drm_WARN_ON(..., uapi.async_flip && !plane->async_flip).
But that's probably better left for a separate patch.

>  		/*
>  		 * On platforms with double buffered async flip bit we
>  		 * set the bit already one frame early during the sync
> @@ -612,6 +611,13 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  		 * hardware will therefore be ready to perform a real
>  		 * async flip during the next commit, without having
>  		 * to wait yet another frame for the bit to latch.
> +		 *
> +		 * async_flip_planes bitmask is also used by selective
> +		 * fetch calculation to continue full frame updates as
> +		 * long as there may be pending async flip on any
> +		 * plane which is part of selective
> +		 * update. I.e. old_crtc_state->async_flip_planes &
> +		 * BIT(<plane in su area>->id).
>  		 */
>  		new_crtc_state->async_flip_planes |= BIT(plane->id);
>  	}
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
