Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9995B9416
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 08:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26F5710EA7E;
	Thu, 15 Sep 2022 06:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA3410EA7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 06:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663221917; x=1694757917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=76XerPgzFju8TpXFNX4tHCdkRju6MEItKW+tNmGOkMI=;
 b=DTw4c9Rv8mP8JZQ4XAfuqOlqs+4jtMWnykLkDKXBj51ZGYF/72Pk9J8O
 6kgOzg1ZdF1MregQc+Zkd7pT0bVRbkuG5iK0zDjEEzkrMqg0UKjUiX1XV
 7E8abK93yWTLwvAmPBFCBCTpiXb49GOU93Mib8GwVnQPO/RDIFtWF+r3Y
 JGmvLgJOEd4Q3BTqYkzwMdtFIpvhZJgbHagnrMQzuzfVxaIN7M6FpXQPr
 rr4ATti9Fqbv1RgH2JmKz5CFAa3nM2wIzRXUfF1tLdudcbrFoKe0IO1qa
 21MSwlaDC0DWBU0zP3WFVoKNRV18w1ajkTuhwkLIYXAbFhawH/I2BBr39 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298618256"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="298618256"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 23:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="720857940"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 14 Sep 2022 23:05:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Sep 2022 09:05:12 +0300
Date: Thu, 15 Sep 2022 09:05:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <YyLAmHoFlc9VyAke@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
 <20220820005822.102716-2-anusha.srivatsa@intel.com>
 <YyJGLUva3ZOLUBui@intel.com> <YyJK4ctJ4Eum4Jbs@intel.com>
 <CY4PR1101MB2166F067A6116F1E69F25EAFF8469@CY4PR1101MB2166.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY4PR1101MB2166F067A6116F1E69F25EAFF8469@CY4PR1101MB2166.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 14, 2022 at 09:58:59PM +0000, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, September 14, 2022 2:43 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
> > intel_cdclk_state
> > 
> > On Thu, Sep 15, 2022 at 12:22:53AM +0300, Ville Syrjälä wrote:
> > > On Fri, Aug 19, 2022 at 05:58:19PM -0700, Anusha Srivatsa wrote:
> > > > This is a prep patch for what the rest of the series does.
> > > >
> > > > Add existing actions that change cdclk - squash, crawl, modeset to
> > > > intel_cdclk_state so we have access to the cdclk values that are in
> > > > transition.
> > > >
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
> > > >  1 file changed, 13 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > index b535cf6a7d9e..43835688ee02 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > @@ -15,6 +15,14 @@ struct drm_i915_private;  struct
> > > > intel_atomic_state;  struct intel_crtc_state;
> > > >
> > > > +enum cdclk_actions {
> > > > +	INTEL_CDCLK_MODESET = 0,
> > > > +	INTEL_CDCLK_SQUASH,
> > > > +	INTEL_CDCLK_CRAWL,
> > > > +	INTEL_CDCLK_NOOP,
> > > > +	MAX_CDCLK_ACTIONS
> > > > +};
> > >
> > > This whole actions thing feels overly complicated to me.
> > > I think we should only need something like this:
> > >
> > > if (new.squash > old.squash) {
> > > 	mid.vco = old.vco;
> > > 	mid.squash = new.squash;
> > > } else {
> > > 	mid.vco = new.vco;
> > > 	mid.squash = old.squash;
> > > }
> > > /*
> > >  * bunch of asserts here to make sure
> > >  * the mid state looks sane.
> > >  */
> > > set_cdclk(mid);
> > > set_cdclk(new);
> > >
> > > And perhaps the current set_cdclk needs to get chunked up into smaller
> > > pieces so we don't do all the pre/post stuff more than once
> > > needlessly.
> > 
> > One idea might be to pass just a pair of flags to set_cdclk() whether to skip
> > the pre/post steps.
> 
> This is all considering that the new struct cdclk_step is embedded in cdclk_config and not cdclk_state. I am not understanding why cdclk-state is not accessible from bxt_set_cdclk.

.set_cdclk() is lower level than that. It must be able to operate outside
atomic commits (eg. during display core init/uninit), and thus must be
able to do its work purely based on the passed in cdclk_config (which is
the lower level state structure, a pair of which are embedded inside the
atomic intel_cdclk_state).

> What if I add cdclk_state to the dev_priv? bxt_set_cdclk() anyway has dev_priv. 

We definitely don't want to hack around the core ideas
of how the atomic machinery works. That way leads
madness because no one will be able to understand how
anything works.

-- 
Ville Syrjälä
Intel
