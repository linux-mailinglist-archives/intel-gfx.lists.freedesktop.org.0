Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHnlGMsm4mkY2QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 14:25:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B541B325
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 14:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2B410E2A9;
	Fri, 17 Apr 2026 12:25:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fmiKcbUN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEAE10E2A9;
 Fri, 17 Apr 2026 12:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776428740; x=1807964740;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kbHTkYoKArlqE/2u5Is0Nfk2zK9OxgIiUR57aTdl6YQ=;
 b=fmiKcbUNd/giWqPnUJRL1NyjLe7GgAlw0UPViBlNtmzOcGn7o2EZ4NPH
 pqb1XDj2urcTzoF5sgHmvgOehDZz4dBMoIPzMlINl2AaCw3Lp1hWHrbkk
 RocHxP7W3g1/9JEcvBG9Dqz/mA1MWmP1xU1IqCjfDVn6DgKIEsUtxhGsf
 xyf1DWBOg4gX/5zVBqv8uZHXji241SmG7MRciiCujqKI6t3bIysBMIR1U
 hsv9HBk5XHB3PWJeQ40DtTnyKYQVdjXkZUTwGJplBhm3QnKRg7R9iIAAg
 8Ab/Xd1GRix0LMvdW81/7PaoXTI49KAxciTbypmvuYfwloKOXS439aBi3 Q==;
X-CSE-ConnectionGUID: lt9dShSIQzyM8ZoqUlW+tw==
X-CSE-MsgGUID: HMFh0Mg2SZiunU6RWAiWug==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="81321614"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="81321614"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 05:25:40 -0700
X-CSE-ConnectionGUID: 61QJsspeTp6bONMEOBcGPg==
X-CSE-MsgGUID: fXu2mbaKTcObII0aWUtubQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="227892689"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.245.176])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 05:25:38 -0700
Date: Fri, 17 Apr 2026 15:25:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/11] drm/i915: Introduce pin_params.needs_fence
Message-ID: <aeImv3P19vdMrqZm@intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-10-ville.syrjala@linux.intel.com>
 <47a9626a4dcf354d2c30b1236b19b03126d57ec2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <47a9626a4dcf354d2c30b1236b19b03126d57ec2@intel.com>
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
X-Spamd-Result: default: False [-0.40 / 15.00];
	R_MIXED_CHARSET(0.91)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: E15B541B325
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 12:58:26PM +0300, Jani Nikula wrote:
> On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Add a new flag pin_params.needs_fencel to inform the pinning
> 
> *needs_fence
> 
> > code that the display needs a fence for tiled scanout.
> >
> > The goal is to eliminate all display specific stuff from
> > the low level pinning code.
> 
> Again, I find it just a little magical that .needs_fence is only
> initialized in certain code paths, with the implementation detail
> knowledge where the member is used.

I think in the end we could more or less set all the pin_params
members identically in all the codepaths. Though in the end we
should only have three codepaths (plane ggtt pin, plane dpt pin,
fbdev ggtt pin), so the xe vs. i915 differences here will just
go away with that.

> E.g. in this case out_fence_id !=
> NULL.

I suppose for that particular thing I could also add a
.uses_fence and just always require the &fence_id to be
passed in. Although I guess then I'd need to add the
fence_id tracking to to the fbdev path as well.

Hmm, I think fences might disappear on runtime suspend
so it might not really work to have a fence being tracked
for the fbdev perma-pin and expect it to survive runtime
suspend. So it may be that we never want to request a fence
in the fbdev codepath. But if the fence disappears then how
would a tiled fbdev framebuffer even work? I need to check
this...

And for the DPT path we probably shouldn't set any fence flags
(nor even have the *out_fence_id) since fence+DPT is just
nonsense.

> 
> Regardless,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
> >  drivers/gpu/drm/i915/i915_fb_pin.c          | 4 ++--
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > index 3e37e9874f50..95f83bf7411f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > @@ -22,6 +22,7 @@ struct intel_fb_pin_params {
> >  	bool needs_cpu_lmem_access;
> >  	bool needs_low_address;
> >  	bool needs_physical;
> > +	bool needs_fence;
> >  };
> >  
> >  struct i915_vma *
> > diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
> > index a8ed888183cb..5060ec8c76ca 100644
> > --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> > @@ -112,7 +112,6 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> >  		     const struct intel_fb_pin_params *pin_params,
> >  		     int *out_fence_id)
> >  {
> > -	struct intel_display *display = to_intel_display(fb->dev);
> >  	struct drm_i915_private *i915 = to_i915(fb->dev);
> >  	struct drm_gem_object *_obj = intel_fb_bo(fb);
> >  	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> > @@ -188,7 +187,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> >  		 * mode that matches the user configuration.
> >  		 */
> >  		ret = i915_vma_pin_fence(vma);
> > -		if (ret != 0 && intel_plane_needs_fence(display)) {
> > +		if (ret != 0 && pin_params->needs_fence) {
> >  			i915_vma_unpin(vma);
> >  			goto err_unpin;
> >  		}
> > @@ -272,6 +271,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
> >  			.needs_low_address = intel_plane_needs_low_address(display),
> >  			.needs_physical = intel_plane_needs_physical(plane),
> > +			.needs_fence = intel_plane_needs_fence(display),
> >  		};
> >  		int fence_id = -1;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
