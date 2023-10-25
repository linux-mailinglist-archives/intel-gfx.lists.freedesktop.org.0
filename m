Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C887D7041
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 17:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D0A10E68F;
	Wed, 25 Oct 2023 15:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605B110E692
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698246070; x=1729782070;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xPotPrHdmHTxPpDx0BE+QW15/Uc9uZitlMB1atgbl6g=;
 b=eoHcTub4RAemD7GQEWYH7BotUMiBx3GCyosvFVgc8fe2nuoEkENSPxtv
 K+5h3Krqhn/YAtHVGnJ5ta35oG49zU+5UT3l7IBpkYcfrMdghUzC4jGT0
 FgyIu67dJKA/1qELq+rqs1Bnt+c3SE637yWE4+m5fsvLS5tjkBb+j+o5W
 3cugW8e69uVQ1ZpyLw/qBYNkhpC9D2grP2qkwtsrPnVPA9zsWiRKD0kMB
 PnWNGZ415GqhgREscJFBDC3siAkgwfCTCNqA2IjVVT8LnEsXTKKYJiFUi
 XUsb7lCVPjg2ajhOG4gkgFnNJJB3IJ2JcAOw+jcseUpwMYne8pDQFjUqM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="418443937"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418443937"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="849558659"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="849558659"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 25 Oct 2023 08:00:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Oct 2023 18:00:53 +0300
Date: Wed, 25 Oct 2023 18:00:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZTktpQ0OjgbcpdVA@intel.com>
References: <20231020094103.1605942-1-jouni.hogander@intel.com>
 <ZTkjmKO8BBdkk25d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTkjmKO8BBdkk25d@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Use dma_fence
 interfaces instead of i915_sw_fence
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

On Wed, Oct 25, 2023 at 05:18:00PM +0300, Ville Syrjälä wrote:
> On Fri, Oct 20, 2023 at 12:41:03PM +0300, Jouni Högander wrote:
> > We are preparing for Xe driver. Xe driver doesn't have i915_sw_fence
> > implementation. Lets drop i915_sw_fence usage from display code and
> > use dma_fence interfaces directly.
> > 
> > For this purpose stack dma fences from related objects into new plane
> > state. Drm_gem_plane_helper_prepare_fb can be used for fences in new
> > fb. Separate local implementation is used for Stacking fences from old fb
> > into new plane state. Then wait for these stacked fences during atomic
> > commit. There is no be need for separate GPU reset handling in
> > intel_atomic_commit_fence_wait as the fences are signaled when GPU hang is
> > detected and GPU is being reset.
> > 
> > v2:
> >   - Add fences from old fb into new_plane_state->uapi.fence rather than
> >     into old_plane_state->uapi.fence
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > 
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c   |  3 -
> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 89 +++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++----------
> >  .../drm/i915/display/intel_display_types.h    |  2 -
> >  4 files changed, 77 insertions(+), 95 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 5d18145da279..ec0d5168b503 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -331,9 +331,6 @@ void intel_atomic_state_free(struct drm_atomic_state *_state)
> >  
> >  	drm_atomic_state_default_release(&state->base);
> >  	kfree(state->global_objs);
> > -
> > -	i915_sw_fence_fini(&state->commit_ready);
> > -
> >  	kfree(state);
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index b1074350616c..20fd12df6850 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -31,7 +31,10 @@
> >   * prepare/check/commit/cleanup steps.
> >   */
> >  
> > +#include <linux/dma-fence-chain.h>
> > +
> >  #include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_gem_atomic_helper.h>
> >  #include <drm/drm_blend.h>
> >  #include <drm/drm_fourcc.h>
> >  
> > @@ -1012,6 +1015,44 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
> >  	return 0;
> >  }
> >  
> > +static int add_fences(struct dma_resv *obj,
> > +		      struct drm_plane_state *dst)
> 
> I would name things differently:
> s/obj/resv/
> s/dst/plane_state/

Probably should be "new_plane_state" to make it clear what
must be passed in.

-- 
Ville Syrjälä
Intel
