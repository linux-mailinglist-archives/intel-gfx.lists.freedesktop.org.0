Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC9D5F0D0B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 16:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F5510ED12;
	Fri, 30 Sep 2022 14:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A44110ED12
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664546810; x=1696082810;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3f7754JgN4WAls3TnpQ/mikPWznI8BgkKgoDNaG9iBM=;
 b=b+SYC6Gii5vdd16QOofuOwr+HMxve9fRk4wygv3lXS1Gyr1ss5Dvxnum
 prDLpPRU2sPFTiNlfWmaxNTSpBDAxnjC7gDoe5HYBTx1sAjY/nxNC0NfY
 HnD0JVcIBgiOXqHvgF9I1Fh2BWdwDWYVozA3Wms+SSQwdKOcuNJRcTx1d
 PgF2OutdbqspVMOoKPcXtKvUoa2IFbOfiuwBHUovTU84yvmoY7F6kVyj2
 1kSkZ+xFpxivkVisfoulM4jI7AT9/Weee0KBVBbLZPG99jUyZ230d6rVs
 ga9zUrxuEQHbQGQNktB4qCbXn1D4Z4uKICIEStwjgQT3cU0RTsuCwe8vs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="282561067"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="282561067"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:06:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="691259379"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="691259379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 30 Sep 2022 07:06:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 17:06:46 +0300
Date: Fri, 30 Sep 2022 17:06:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yzb39heBapDs6XzA@intel.com>
References: <20220930134731.389416-1-matthew.auld@intel.com>
 <Yzb2iHBSFpr6i8B2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yzb2iHBSFpr6i8B2@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 30, 2022 at 05:00:40PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 30, 2022 at 02:47:30PM +0100, Matthew Auld wrote:
> > For these types of display buffers, we need to able to CPU access some
> > part of the backing memory in prepare_plane_clear_colors(). As a result
> > we need to ensure we always place in the mappable part of lmem, which
> > becomes necessary on small-bar systems.
> > 
> > Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> > Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 11 ++++--
> >  drivers/gpu/drm/i915/gem/i915_gem_object.c    | 37 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
> >  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  5 ++-
> >  5 files changed, 53 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > index c86e5d4ee016..f83cf41ddd63 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > @@ -139,9 +139,14 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> >  	ret = i915_gem_object_lock(obj, &ww);
> >  	if (!ret && phys_cursor)
> >  		ret = i915_gem_object_attach_phys(obj, alignment);
> > -	else if (!ret && HAS_LMEM(dev_priv))
> > -		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> > -	/* TODO: Do we need to sync when migration becomes async? */
> 
> Why is the TODO being removed?
> 
> > +	else if (!ret && HAS_LMEM(dev_priv)) {
> > +		unsigned int flags = obj->flags;
> > +
> 
> It might not be super obvious what is going on here, so maybe add
> a comment stating the CPU needs to read the clear color from the bo?
> 
> > +		if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> > +			flags &= ~I915_BO_ALLOC_GPU_ONLY;
> 
> Hmm. Do we require the clear color plane to be in the same bo as the
> rest of the planes? I know we require the main and aux to be in the
> same bo, but dunno why we would require that also of the clear color
> plane (apart from being lazy perhaps).

I guess we must since we call this only once for the whole fb.

-- 
Ville Syrjälä
Intel
