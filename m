Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C18850131F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF4210FF62;
	Thu, 14 Apr 2022 15:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA0810FF62
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 15:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649949163; x=1681485163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kVLoT34F7LJ9jIipvq1e/LbUzePP3joEJIwKuhC/0zk=;
 b=HbrCegDpLr1ks+lbFOix902mP5cOz7YudKpM9RxB1zhUaOAgoqy2EdTq
 PUS6t+qGJMdavIXTbLesxH0HucB4f9CnwEy+Ah2pthslev+lQkkVcy9yG
 GANrIXOMAGHrZMEV5XgmRrZQzkPtrkmf689Z9HX4no0U1CXMrGCr75iPD
 RBCCVaAgvHCy51zu5rfNM7+mbmYu3OnWrtfOQ2uB+5RaIudzWMz+5XblO
 oT+Nxjw5M1tAIoG5m2SCE0TV8UlGvYIW45YMAg0NmpmcIigcYCwq3J8QN
 wGA+oTMo3cHdF4VPOOokq7nFt/0MFtq36hgIJSWALCAX552PkLVOOpZlv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="260547263"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="260547263"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:12:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527429075"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:12:43 -0700
Date: Thu, 14 Apr 2022 08:12:48 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220414151248.GB204099@mdnavare-mobl1.jf.intel.com>
References: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/fbc: Consult hw.crtc instead
 of uapi.crtc
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 06:28:51PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> plane_state->uapi.crtc is not what we want to be looking at.
> If bigjoiner is used hw.crtc is what tells us what crtc the plane
> is supposedly using.
> 
> Not an actual problem on current hardware as the only FBC capable
> pipe (A) can't be a bigjoiner slave and thus uapi.crtc==hw.crtc
> always here. But when we get more FBC instances this will become
> actually important.
> 
> Fixes: 2e6c99f88679 ("drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 670835318a1f..ff303c7d3a57 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1045,7 +1045,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	struct intel_plane_state *plane_state =
>  		intel_atomic_get_new_plane_state(state, plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> -	struct intel_crtc *crtc = to_intel_crtc(plane_state->uapi.crtc);
> +	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
>  	const struct intel_crtc_state *crtc_state;
>  	struct intel_fbc *fbc = plane->fbc;
>  
> -- 
> 2.35.1
> 
