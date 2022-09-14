Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9495B9028
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 23:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3449689BAE;
	Wed, 14 Sep 2022 21:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4D389BAE
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 21:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663191781; x=1694727781;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Aats6U9DZ+Y3QtmKAiu9lKn8bGzMdho7n5ZHr18p2vQ=;
 b=kOP2CD2KQ1th9gLQomB1xesp8z8tVQnfAD1fiwY1axloCBSDa6jLXxIm
 U0n3NaCht6l9La/cIrKUnbkp2DYxHf2dkVnnM30Bl7/mzfphHYQ6ivV40
 Q9fdTSOgWyj9U1RcYc7Vmv3eVrlkAjK32mpCGh6gTy4+H6DEx3OB4k6u2
 XpRXlKHzytIzHuQ8gIcs0vjHLERJFtYJeZWN7QXkaHQY4AmR0JOJnzG9R
 t7FIkoEtOAALb6AVs5rA1S/6VKwDNbpflVUYQ465kEeNZ4SGf0MYmX+J4
 jf7nKmTHRlUkxNMMRxZf0aLbOE2qs4zQBIb2eY2Lxs8bRIGRAJb0trIT/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299908408"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299908408"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 14:43:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="619456023"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 14 Sep 2022 14:42:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Sep 2022 00:42:57 +0300
Date: Thu, 15 Sep 2022 00:42:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YyJK4ctJ4Eum4Jbs@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
 <20220820005822.102716-2-anusha.srivatsa@intel.com>
 <YyJGLUva3ZOLUBui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YyJGLUva3ZOLUBui@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
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

On Thu, Sep 15, 2022 at 12:22:53AM +0300, Ville Syrjälä wrote:
> On Fri, Aug 19, 2022 at 05:58:19PM -0700, Anusha Srivatsa wrote:
> > This is a prep patch for what the rest of the series does.
> > 
> > Add existing actions that change cdclk - squash, crawl, modeset to
> > intel_cdclk_state so we have access to the cdclk values
> > that are in transition.
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index b535cf6a7d9e..43835688ee02 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -15,6 +15,14 @@ struct drm_i915_private;
> >  struct intel_atomic_state;
> >  struct intel_crtc_state;
> >  
> > +enum cdclk_actions {
> > +	INTEL_CDCLK_MODESET = 0,
> > +	INTEL_CDCLK_SQUASH,
> > +	INTEL_CDCLK_CRAWL,
> > +	INTEL_CDCLK_NOOP,
> > +	MAX_CDCLK_ACTIONS
> > +};
> 
> This whole actions thing feels overly complicated to me.
> I think we should only need something like this:
> 
> if (new.squash > old.squash) {
> 	mid.vco = old.vco;
> 	mid.squash = new.squash;
> } else {
> 	mid.vco = new.vco;
> 	mid.squash = old.squash;
> }
> /*
>  * bunch of asserts here to make sure
>  * the mid state looks sane.
>  */
> set_cdclk(mid);
> set_cdclk(new);
> 
> And perhaps the current set_cdclk needs to get chunked up
> into smaller pieces so we don't do all the pre/post stuff
> more than once needlessly.

One idea might be to pass just a pair of flags to set_cdclk()
whether to skip the pre/post steps.

-- 
Ville Syrjälä
Intel
