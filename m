Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA88343CE72
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 18:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767A489DAB;
	Wed, 27 Oct 2021 16:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E73106E5A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 16:13:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="230147218"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="230147218"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 09:13:26 -0700
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="597415097"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 09:13:25 -0700
Date: Wed, 27 Oct 2021 19:12:52 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Karthik B S <karthik.b.s@intel.com>
Message-ID: <20211027161252.GA5980@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018115030.3547-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Reject planar formats when
 doing async flips
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

On Mon, Oct 18, 2021 at 02:50:22PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Async flips are only capable of changing PLANE_SURF, hence we
> they can't easily be used with planar formats.
> 
> Older platforms could require updating AUX_DIST as well, which
> is not possible. We'd have to make sure AUX_DIST doesn't change
> before allowing the async flip through. If we could get async
> flips with CCS then that might be interesting, but since the hw
> doesn't allow async flips with CCS I don't see much point in
> allowing this for planar formats either. No one renders their
> game content in YUV anyway.
> 
> icl+ could in theory do this I suppose since each color plane
> has its own PLANE_SURF register, but I don't know if there is
> some magic to guarantee that both the Y and UV plane would
> async flip synchronously if you will. Ie. beyond just a clean
> tear we'd potentially get some kind of weird tear with some
> random mix of luma and chroma from the old and new frames.
> 
> So let's just say no to async flips when scanning out planar
> formats.
> 
> Cc: Karthik B S <karthik.b.s@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ce5d6633029a..8bb87e839f4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8884,6 +8884,12 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
>  			return -EINVAL;
>  		}
>  
> +		if (new_plane_state->hw.fb->format->num_planes > 1) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Planar formats not supported with async flips\n");
> +			return -EINVAL;
> +		}
> +
>  		if (old_plane_state->view.color_plane[0].stride !=
>  		    new_plane_state->view.color_plane[0].stride) {
>  			drm_dbg_kms(&i915->drm, "Stride cannot be changed in async flip\n");
> -- 
> 2.32.0
> 
