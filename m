Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C836C971B2B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609E010E57F;
	Mon,  9 Sep 2024 13:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="btCCtjwH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB5910E57F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 13:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725888919; x=1757424919;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MfauW/4yLyB82EaQWI0t2OazNc+KAOG+cPrW4KW9Wk0=;
 b=btCCtjwHr6GNhpPxd5HK9yD52nnxU67EL37g34Gab2xJi/YQXzpLNDEU
 2tdO3rClBRrMMoM98qzsipPZ58c0gJwq8HLNGIhgXXvMF//UdeBFgRA1G
 xcL20vS5+Q9u+igUFhECOr3Y489ISFneY2dv6nciVJYoRgiSi9CMLxAWz
 LkoTAxivI1Mevp6czjHW7/ApgWzrC3rVzyq2l9x4NhDObFiUJN3X0rWMW
 eS//BYXYdwFkLlWbv9w4GbbSfdWrIyskAS7ukofgqfp9hV2WlDGR6oC6r
 dHi8Vu7G7jiw5T+SpIeH+FocrYy9bWvUtnUKMrfNS161v4pNBxbelGKop Q==;
X-CSE-ConnectionGUID: q9QS30cgTfaH7i3bxVODag==
X-CSE-MsgGUID: vBfdHM8CRnCnLBkcqO4Pyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35160478"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="35160478"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:35:19 -0700
X-CSE-ConnectionGUID: BXvbnZK3SFm1c1CJObVaGA==
X-CSE-MsgGUID: SAqPRQbATg+Ghbg01WZhYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="71260959"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:35:16 -0700
Date: Mon, 9 Sep 2024 16:35:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [CI] drm/i915/dp: Dump the LTTPR PHY descriptors
Message-ID: <Zt75q7lBsAWNjZYz@ideak-desk.fi.intel.com>
References: <20240909121613.2915283-1-imre.deak@intel.com>
 <87r09tklps.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r09tklps.fsf@intel.com>
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

On Mon, Sep 09, 2024 at 04:20:15PM +0300, Jani Nikula wrote:
> On Mon, 09 Sep 2024, Imre Deak <imre.deak@intel.com> wrote:
> > Dump the descriptor of the detected LTTPRs in non-transparent mode to
> > help the debugging related to LTTPRs easier.
> >
> > v2: Use drm_dp_dump_lttpr_desc() instead of the driver specific
> >     equivalent.
> > v3: Add empty line between license and header section. (Ankit)
> >
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >
> > Resending [1] now, after the corresponding DRM core helper is merged to
> > drm-intel-next.
> >
> > [1] https://lore.kernel.org/all/20240708190029.271247-7-imre.deak@intel.com
> >
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index f45797c1a2051..b7bd8135c1138 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -21,6 +21,8 @@
> >   * IN THE SOFTWARE.
> >   */
> >  
> > +#include <drm/display/drm_dp_helper.h>
> > +
> >  #include <linux/debugfs.h>
> >  
> >  #include <drm/display/drm_dp_helper.h>
> 
> It's already here now.

Yep, thanks for spotting it.

> BR,
> Jani.
> 
> > @@ -210,8 +212,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
> >  
> >  	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
> >  
> > -	for (i = 0; i < lttpr_count; i++)
> > +	for (i = 0; i < lttpr_count; i++) {
> >  		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
> > +		drm_dp_dump_lttpr_desc(&intel_dp->aux, DP_PHY_LTTPR(i));
> > +	}
> >  
> >  	return lttpr_count;
> >  }
> 
> -- 
> Jani Nikula, Intel
