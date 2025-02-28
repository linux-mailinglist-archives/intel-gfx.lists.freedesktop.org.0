Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08FAA49ED6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 17:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D8810ECFB;
	Fri, 28 Feb 2025 16:31:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gdssbpEr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7862E10ECFA;
 Fri, 28 Feb 2025 16:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740760305; x=1772296305;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SrK8yszg66G0FtneM9GeVCctJG/KVhAo5Fjg+haiRPo=;
 b=gdssbpErxPZf2Yrr5i3+yXc4XjBHZSmgVvurJfiyyWtZ3Z3EhKjQrqz3
 hK9//X6qo48cyWi+WKkL6gJjm4pqt4VUcClQ1RWNeaWtSRNi0jURUqocz
 eaxIA/Xr4UaFFrwjYiUI0B7TVhsaTcOz6gBnuexIcCbBogPmye22mnxSq
 stqUovIlKb8wd/QISYOCdaOaX7uCGTS7kA/xQRl6Z2t7BR50kwgGATuSp
 DJPYlhGANERHauFwQ1al08j4TQ0dL6NncUutMGKCYo7pvjFZhUDACehP2
 bzq1O0djsdyn1DsSEdWTpFxq2hvk1796998ImapkPq11AaMiAOLFhQzd/ w==;
X-CSE-ConnectionGUID: OLPfkzuIRrKZkb31FBOhXw==
X-CSE-MsgGUID: eqlk1EtrSHKDPH5g9IHK8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41611378"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41611378"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 08:31:45 -0800
X-CSE-ConnectionGUID: NGz3k5kCTu+ORCrbTvr7oA==
X-CSE-MsgGUID: Bj3F5ifdR42FU+ORyxFKiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122613184"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 28 Feb 2025 08:31:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2025 18:31:42 +0200
Date: Fri, 28 Feb 2025 18:31:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Message-ID: <Z8Hk7sSnEyyj1Rtf@intel.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
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

On Tue, Feb 25, 2025 at 11:39:05PM +0530, Chaitanya Kumar Borah wrote:
> >From PTL, LUT registers are made double buffered. With this change,
> we don't need to wait for vblank to program them. Start DSB1 for
> programming them without waiting for vblank.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 919e236a9650..9c3fdfcd6759 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7352,6 +7352,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_display *display = to_intel_display(state);
>  
>  	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
>  		return;
> @@ -7408,7 +7409,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  
>  	if (new_crtc_state->dsb_color_vblank)
>  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> -				new_crtc_state->dsb_color_vblank, true);
> +				new_crtc_state->dsb_color_vblank,
> +				HAS_DOUBLE_BUFFERED_LUT(display) ? false : true);

Using chaining for this is a bit ugly. GOSUB would seem more
appropriate. Here's a quick 1h effort to implement the basics
for that (completely untested):
https://github.com/vsyrjala/linux.git dsb_gosub

>  
>  	intel_dsb_finish(new_crtc_state->dsb_commit);
>  }
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
