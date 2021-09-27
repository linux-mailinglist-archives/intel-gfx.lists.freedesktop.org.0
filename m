Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB744192EC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 13:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2AB889C96;
	Mon, 27 Sep 2021 11:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE6D89C96
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 11:15:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="224106334"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="224106334"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 04:15:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="437670812"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 04:15:36 -0700
Date: Mon, 27 Sep 2021 04:27:24 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210927112724.GB28287@labuser-Z97X-UD5H>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913144440.23008-13-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 12/16] drm/i915: Simplify
 intel_crtc_copy_uapi_to_hw_state_nomodeset()
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

On Mon, Sep 13, 2021 at 05:44:36PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Rewrite intel_crtc_copy_uapi_to_hw_state_nomodeset() in a
> slightly more straightforward manner.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a5450ac9e2d0..5716085e15f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7347,18 +7347,15 @@ static void
>  intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
>  					   struct intel_crtc_state *crtc_state)
>  {
> -	const struct intel_crtc_state *from_crtc_state = crtc_state;
> +	const struct intel_crtc_state *master_crtc_state;

Are we changing the naming convention to primary/secondary crtc? In that case should we name this as primary_crtc_state ?

If thats oing to be handled in a separate series, this logic looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> +	struct intel_crtc *master_crtc;
>  
> -	if (crtc_state->bigjoiner_slave) {
> -		from_crtc_state = intel_atomic_get_new_crtc_state(state,
> -								  crtc_state->bigjoiner_linked_crtc);
> +	master_crtc = intel_master_crtc(crtc_state);
> +	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
>  
> -		/* No need to copy state if the master state is unchanged */
> -		if (!from_crtc_state)
> -			return;
> -	}
> -
> -	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
> +	/* No need to copy state if the master state is unchanged */
> +	if (master_crtc_state)
> +		intel_crtc_copy_color_blobs(crtc_state, master_crtc_state);
>  }
>  
>  static void
> -- 
> 2.32.0
> 
