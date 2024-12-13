Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB39E9F134F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 18:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5597310F0A9;
	Fri, 13 Dec 2024 17:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXl0d3st";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957E610F0A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734109855; x=1765645855;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=xS+/3ufje2t354L+bLHnniZmDzRYBVZqeqOtZDA1b0U=;
 b=aXl0d3stAdWQbU9xOGCf9ouzHrSdxhzGtwTc8NpeGsyGleQCWf1wQZa7
 O9xWVcVhknmgeB8UlO2uaiSXdMQE2GouOd0rUFBC/zi1RIBCakyxqCvIA
 L5/ICW1oCDUy5V4mzEIwVQQBXkk6iCktcclLaASvzh7R5GjBqO6YWHORm
 2wpf0RpLTwrmqp1eoAeXLqYILKuxVOMEVd+ZoarKUFiLWSbIOfXJGnrA4
 9MT/j6Oa2PhsTc4nqmw3MBtcLo2r8qKE8WTdv6HTQI22Zf/ikiKLlutah
 cPF+evL+e3Jm83fVLsw+ZL57B+hjfbmLmTLOiaoA2qTWsYa42zy0z+QxO Q==;
X-CSE-ConnectionGUID: uy/cKc+ISe+JtjR8gteVSQ==
X-CSE-MsgGUID: bpeAR1NvSV2LQCuPVNsgWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34470782"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34470782"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 09:10:54 -0800
X-CSE-ConnectionGUID: AdH19z3NSg6Y0Ruu/bF3XQ==
X-CSE-MsgGUID: OUEINtdiQsivfCzoEPJ76g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="127390813"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 09:10:52 -0800
Date: Fri, 13 Dec 2024 19:11:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>, Maarten@intel.com,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, stable@vger.kernel.org
Subject: Re: [PATCH v3] drm/display: use ERR_PTR on DP tunnel manager
 creation fail
Message-ID: <Z1xqxVZ6pZOFkCA2@ideak-desk.fi.intel.com>
References: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
 <Z1xg6hOJJiBWixC6@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1xg6hOJJiBWixC6@ashyti-mobl2.lan>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2024 at 05:29:30PM +0100, Andi Shyti wrote:
> Hi,
> 
> who is going to take this patch? Can I merge it in
> drm-intel-next?

It has only DRM changes and is a fix for stable, so should be
drm-misc-fixes. I merged it now there, thanks for the patch and the
review.

> Thanks,
> Andi
> 
> On Thu, Dec 12, 2024 at 11:00:41AM +0000, Krzysztof Karas wrote:
> > Instead of returning a generic NULL on error from
> > drm_dp_tunnel_mgr_create(), use error pointers with informative codes
> > to align the function with stub that is executed when
> > CONFIG_DRM_DISPLAY_DP_TUNNEL is unset. This will also trigger IS_ERR()
> > in current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it
> > via NULL pointer.
> > 
> > v2: use error codes inside drm_dp_tunnel_mgr_create() instead of handling
> >  on caller's side (Michal, Imre)
> > 
> > v3: fixup commit message and add "CC"/"Fixes" lines (Andi),
> >  mention aligning function code with stub
> >     
> > Fixes: 91888b5b1ad2 ("drm/i915/dp: Add support for DP tunnel BW allocation")
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: <stable@vger.kernel.org> # v6.9+
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > ---
> >  drivers/gpu/drm/display/drm_dp_tunnel.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
> > index 48b2df120086..90fe07a89260 100644
> > --- a/drivers/gpu/drm/display/drm_dp_tunnel.c
> > +++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
> > @@ -1896,8 +1896,8 @@ static void destroy_mgr(struct drm_dp_tunnel_mgr *mgr)
> >   *
> >   * Creates a DP tunnel manager for @dev.
> >   *
> > - * Returns a pointer to the tunnel manager if created successfully or NULL in
> > - * case of an error.
> > + * Returns a pointer to the tunnel manager if created successfully or error
> > + * pointer in case of failure.
> >   */
> >  struct drm_dp_tunnel_mgr *
> >  drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
> > @@ -1907,7 +1907,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
> >  
> >  	mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
> >  	if (!mgr)
> > -		return NULL;
> > +		return ERR_PTR(-ENOMEM);
> >  
> >  	mgr->dev = dev;
> >  	init_waitqueue_head(&mgr->bw_req_queue);
> > @@ -1916,7 +1916,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
> >  	if (!mgr->groups) {
> >  		kfree(mgr);
> >  
> > -		return NULL;
> > +		return ERR_PTR(-ENOMEM);
> >  	}
> >  
> >  #ifdef CONFIG_DRM_DISPLAY_DP_TUNNEL_STATE_DEBUG
> > @@ -1927,7 +1927,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
> >  		if (!init_group(mgr, &mgr->groups[i])) {
> >  			destroy_mgr(mgr);
> >  
> > -			return NULL;
> > +			return ERR_PTR(-ENOMEM);
> >  		}
> >  
> >  		mgr->group_count++;
> > -- 
> > 2.34.1
