Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD88540FB5B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 17:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1E86ED8A;
	Fri, 17 Sep 2021 15:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D316ED8A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 15:08:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="286498776"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="286498776"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 08:08:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="554669555"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 08:08:25 -0700
Date: Fri, 17 Sep 2021 18:09:10 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210917150910.GA1224@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514125751.17075-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Apply WaUse32BppForSRWM to
 elk as well as ctg
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

On Fri, May 14, 2021 at 03:57:41PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The w/a database lists this for both ctg and elk. So let's apply it to
> elk as well. And add the w/a name.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8a08a7c0e71f..661bc6fdf38c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1152,17 +1152,13 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
>  	cpp = plane_state->hw.fb->format->cpp[0];
>  
>  	/*
> -	 * Not 100% sure which way ELK should go here as the
> -	 * spec only says CL/CTG should assume 32bpp and BW
> -	 * doesn't need to. But as these things followed the
> -	 * mobile vs. desktop lines on gen3 as well, let's
> -	 * assume ELK doesn't need this.
> +	 * WaUse32BppForSRWM:ctg,elk
>  	 *
> -	 * The spec also fails to list such a restriction for
> -	 * the HPLL watermark, which seems a little strange.
> +	 * The spec fails to list this restriction for the
> +	 * HPLL watermark, which seems a little strange.
>  	 * Let's use 32bpp for the HPLL watermark as well.
>  	 */
> -	if (IS_GM45(dev_priv) && plane->id == PLANE_PRIMARY &&
> +	if (plane->id == PLANE_PRIMARY &&

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  	    level != G4X_WM_LEVEL_NORMAL)
>  		cpp = max(cpp, 4u);
>  
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
