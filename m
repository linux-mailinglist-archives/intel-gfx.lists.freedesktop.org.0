Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMWjE7TJnmm0XQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 11:06:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E301957D9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 11:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950AF10E073;
	Wed, 25 Feb 2026 10:06:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dhLGVU6t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B37710E073;
 Wed, 25 Feb 2026 10:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772014001; x=1803550001;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hjXO7DYk1cVpSLwusVH3Hz4yrjTrDjgQYb6QSago3wM=;
 b=dhLGVU6tNUoaFxwCPhxaNMgHwHjuS7R5VSpFI38qrMJAmt5j1c+frj8l
 URyaYvNVVApNeolUSgxDG04HVh+hqS3rjoPvenW0gIOz+AaeXPHVZ+z62
 ewWpaQGfVFlfchvR2wqEt6XenVv65Zr1x49BwRj36G2yzDvThLiiIEhda
 LLWhAMZlxDvorCWY6+cbhv/nUOZKNPaTQQgTN7BTLRvW+l2Gsunsl7RzJ
 NNDx6X1t7wGgaJIkJ1mjLd7s+13zUbmC7rylDkCahIRSd2HUhT9pDz3kj
 MK9n1jraEkAS0H1aBjoIawlE3rk+Vmj8NHuczTK+3YYpOErNM6sWYWQLf w==;
X-CSE-ConnectionGUID: 0AfeaGphTl+DotQDTNWYKw==
X-CSE-MsgGUID: kJjpGOdCRaO4bQUSvBjaEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72951228"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72951228"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 02:06:40 -0800
X-CSE-ConnectionGUID: 3tVQzFu3RQyH6wNYR3MxSQ==
X-CSE-MsgGUID: Ln3AvvZjRtaPiRxUdghqxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214324090"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.16])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 02:06:38 -0800
Date: Wed, 25 Feb 2026 12:06:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/19] drm/i915/overlay: Introduce
 i915_overlay_obj_lookup()
Message-ID: <aZ7JrI9xfyuthfM3@intel.com>
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
 <20260218152806.18885-7-ville.syrjala@linux.intel.com>
 <5a09243cf3043f86f063b685dcf677dec681cffe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5a09243cf3043f86f063b685dcf677dec681cffe@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.48 / 15.00];
	R_MIXED_CHARSET(0.83)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B3E301957D9
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:40:54AM +0200, Jani Nikula wrote:
> On Wed, 18 Feb 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Extract the BO lookup and tiling check into a new
> > helper called i915_overlay_obj_lookup(). This will have to
> > move to the i915 side of the parent vs. display driver split.
> >
> > There is a slight change here in that we now do the tiling
> > check before taking the modeset locks, but those locks don't
> > protect the BO tiling stuff in any way, so nothing is really
> > different here.
> >
> > Note that the hardware should support X-tiled scanout also
> > for the overlay, but I guess no one ever bothered to hook
> > it up and test it. So the check should stay at least for now.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_overlay.c | 31 ++++++++++++++------
> >  1 file changed, 22 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> > index e1707a678acb..5c4f8bf8ac44 100644
> > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > @@ -1125,6 +1125,26 @@ static int check_overlay_src(struct intel_display *display,
> >  	return 0;
> >  }
> >  
> > +static struct drm_i915_gem_object *
> > +i915_overlay_obj_lookup(struct drm_device *drm,
> > +			struct drm_file *file_priv,
> > +			u32 handle)
> > +{
> > +	struct drm_i915_gem_object *bo;
> > +
> > +	bo = i915_gem_object_lookup(file_priv, handle);
> > +	if (!bo)
> > +		return ERR_PTR(-ENOENT);
> > +
> > +	if (i915_gem_object_is_tiled(bo)) {
> > +		drm_dbg(drm, "buffer used for overlay image can not be tiled\n");
> > +		i915_gem_object_put(bo);
> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	return bo;
> > +}
> > +
> >  int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
> >  				  struct drm_file *file_priv)
> >  {
> > @@ -1155,19 +1175,12 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
> >  		return -ENOENT;
> >  	crtc = to_intel_crtc(drmmode_crtc);
> >  
> > -	new_bo = i915_gem_object_lookup(file_priv, params->bo_handle);
> > +	new_bo = i915_overlay_obj_lookup(dev, file_priv, params->bo_handle);
> >  	if (!new_bo)
> 
> i915_overlay_obj_lookup() returns error pointers.

Ack. Good catch.

> 
> > -		return -ENOENT;
> > +		return PTR_ERR(new_bo);
> >  
> >  	drm_modeset_lock_all(dev);
> >  
> > -	if (i915_gem_object_is_tiled(new_bo)) {
> > -		drm_dbg_kms(display->drm,
> > -			    "buffer used for overlay image can not be tiled\n");
> > -		ret = -EINVAL;
> > -		goto out_unlock;
> > -	}
> > -
> >  	ret = intel_overlay_recover_from_interrupt(overlay);
> >  	if (ret != 0)
> >  		goto out_unlock;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
