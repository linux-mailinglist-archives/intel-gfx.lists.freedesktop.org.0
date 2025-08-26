Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF576B35F36
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 14:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE7910E648;
	Tue, 26 Aug 2025 12:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z79U+nxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284F910E63E;
 Tue, 26 Aug 2025 12:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756211778; x=1787747778;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T9576yh5vyCuTtrQoN7RHXiGbUttEqrEGe5Jn8jdLpE=;
 b=Z79U+nxM7sJjMZothSDrLSvfjkloh8k9k/BqpeBauzUseRJlUcizOeam
 77D6fiYdaOksvOfujWCUq2pjogiyihglfRUi3Cj6ds4h8FErqXJjcxPcn
 hhLjSbOJxrYycztHfNkoeh4o70JPOPrV9yP6zT8xLbBh3mHAEZus816yl
 99vCDObjn9c9xQa7dGV1eYCy8DgUQgFGXjW9HhoQZgApjbTFbWXq5ORGQ
 GpUJo9BJktWHqoCYVwMiQCHuNP+M2ZzhEr8tvZrd1S4C9ovv1FBm72tRA
 CSS5rfsZ2x+bLGkFIvwU/nI9JWM6rcjZtTwvnq9kf9muXczgdj1orEuHr Q==;
X-CSE-ConnectionGUID: A3dbbcnyRUWwCIHjvWtGeg==
X-CSE-MsgGUID: lkiy9smBRPWcz0gCrpWIqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="61079728"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="61079728"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 05:36:17 -0700
X-CSE-ConnectionGUID: eiHuYnh7TYmNhBDMlULyXQ==
X-CSE-MsgGUID: pVZD4u9bQsy2vlgnzlvgHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="174869678"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 26 Aug 2025 05:36:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Aug 2025 15:36:14 +0300
Date: Tue, 26 Aug 2025 15:36:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Message-ID: <aK2qPstrBZZCtmfa@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250806052213.1800559-5-jouni.hogander@intel.com>
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

On Wed, Aug 06, 2025 at 08:22:13AM +0300, Jouni Högander wrote:
> We are currently observing crc failures after we started using dsb for PSR
> updates as well. This seems to happen because PSR HW is still sending
> couple of updates using old framebuffers on wake-up.
> 
> Fix this by adding poll ensuring PSR is idle before starting update.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c1a3a95c65f0..411c74c73eae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7271,6 +7271,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
>  						     state, crtc);
>  
> +		intel_psr_wait_for_idle_dsb(new_crtc_state);
> +
>  		if (new_crtc_state->use_dsb)
>  			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);

How come the 'evade scanline 0 + normal evasion' in intel_dsb_vblank_evade()
is not enough here?

-- 
Ville Syrjälä
Intel
