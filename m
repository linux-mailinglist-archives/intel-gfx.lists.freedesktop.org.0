Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 015BB431AAF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 15:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A93B6E0B6;
	Mon, 18 Oct 2021 13:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACD16E0B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 13:23:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="215174885"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="215174885"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 06:23:31 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="661374069"
Received: from mhe-mobl1.amr.corp.intel.com (HELO intel.com) ([10.212.124.254])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 06:23:29 -0700
Date: Mon, 18 Oct 2021 09:23:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Matthew Brost <matthew.brost@intel.com>
Message-ID: <YW11TguAGzkl+IHM@intel.com>
References: <20211015091129.83226-1-rodrigo.vivi@intel.com>
 <87pms2u4ei.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pms2u4ei.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clean-up bonding debug message.
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

On Mon, Oct 18, 2021 at 11:24:21AM +0300, Jani Nikula wrote:
> On Fri, 15 Oct 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > We should stop using the gen name and the "+" to reference
> > the newer platforms.
> > And on this case specifically we can simplify the debug
> > message even further.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

thanks, pushed

> 
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Matthew Brost <matthew.brost@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index d225d3dd0b40..30759b651180 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -479,7 +479,7 @@ set_proto_ctx_engines_bond(struct i915_user_extension __user *base, void *data)
> >  	if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915) &&
> >  	    !IS_ROCKETLAKE(i915) && !IS_ALDERLAKE_S(i915)) {
> >  		drm_dbg(&i915->drm,
> > -			"Bonding on gen12+ aside from TGL, RKL, and ADL_S not supported\n");
> > +			"Bonding not supported on this platform\n");
> >  		return -ENODEV;
> >  	}
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
