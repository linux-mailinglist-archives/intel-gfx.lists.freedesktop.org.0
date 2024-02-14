Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2E98553CB
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 21:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F01910E1A8;
	Wed, 14 Feb 2024 20:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k5WZAq/M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45EA010E1A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 20:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707941754; x=1739477754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SzwCMCsnOL0LnmYu3tld9LFtpYYUvTFLlBdVf3Amunk=;
 b=k5WZAq/MRBu831CKQ5a/WTTZhRWZdjPjjFWBpfeeTyH1oEGGvp7Jv8TG
 BVC315+xGfpqfePX9qAZ1MfQTaJhjIvBPmBKFboJZnImLbuAniue9yhvW
 OK37c86WFroFA5BhWHnv7rgzR1rCaq+GDOhx+waGkqOBiA5ioIeUFtGc8
 IVDoqK7FAxHFS0YQXuf010VbVej1XM5ONjHwxtOaqKGDsuoZ69tFhMdXn
 6K6l5WrOxNqS7NVE4JU9l01SY5Gvpalv6ybrYBwmuQreWw9QKNbLfq+5I
 eUTKy+8cUMfJk6sgAX+qqSAaHuA4+TzOWVoY4T7nrYeFvhuZBi1eSc45P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2154042"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="2154042"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 12:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826369770"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="826369770"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 14 Feb 2024 12:15:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Feb 2024 22:15:51 +0200
Date: Wed, 14 Feb 2024 22:15:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
Message-ID: <Zc0fdzp0R1JIVPFE@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com> <Zb1LKnsADQI_i2a2@intel.com>
 <170696713830.1816.14943301562714458724@gjsousa-mobl2>
 <170794132876.56490.13604292375176413950@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170794132876.56490.13604292375176413950@gjsousa-mobl2>
X-Patchwork-Hint: comment
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

On Wed, Feb 14, 2024 at 05:08:48PM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2024-02-03 10:32:18-03:00)
> >Quoting Ville Syrjälä (2024-02-02 17:06:02-03:00)
> >>On Fri, Feb 02, 2024 at 09:58:37PM +0200, Ville Syrjälä wrote:
> >>> On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
> >>> > Looks like the name and description of intel_cdclk_needs_modeset()
> >>> > became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset for
> >>> > cdclk changes if possible"), when it became possible to update the cdclk
> >>> > without requiring disabling the pipes when only changing the cd2x
> >>> > divider was enough.
> >>> > 
> >>> > Later on we also added the same type of support with squash and crawling
> >>> > with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
> >>> > when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
> >>> > squasher to be reconfigured live") and commit d62686ba3b54
> >>> > ("drm/i915/adl_p: CDCLK crawl support for ADL").
> >>> > 
> >>> > As such, update that function's name and documentation to something more
> >>> > appropriate, since the real checks for requiring modeset are done
> >>> > elsewhere.
> >>> > 
> >>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >>> > ---
> >>> > 
> >>> > One thing worth noting here is that, with this change, we are left with an
> >>> > awkward situation where two function names related to checking changes in cdclk:
> >>> > 
> >>> >   intel_cdclk_params_changed() and intel_cdclk_changed()
> >>> > 
> >>> > ,
> >>> > 
> >>> > and I find it weird that we have intel_cdclk_changed(), which checks for the
> >>> > voltage level as well. Shouldn't the voltage level be a function of cdclk and
> >>> > ddi clock? Why do we need that?
> >>> > 
> >>> >  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++--------
> >>> >  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
> >>> >  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
> >>> >  3 files changed, 11 insertions(+), 12 deletions(-)
> >>> > 
> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> > index 26200ee3e23f..caadd880865f 100644
> >>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> > @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> >>> >  }
> >>> >  
> >>> >  /**
> >>> > - * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
> >>> > - *                             configurations requires a modeset on all pipes
> >>> > + * intel_cdclk_params_changed - Check whether CDCLK parameters changed
> >>> >   * @a: first CDCLK configuration
> >>> >   * @b: second CDCLK configuration
> >>> >   *
> >>> >   * Returns:
> >>> > - * True if changing between the two CDCLK configurations
> >>> > - * requires all pipes to be off, false if not.
> >>> > + * True if parameters changed in a way that requires programming the CDCLK
> >>> > + * and False otherwise.
> >>> >   */
> >>> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> >>> > -                               const struct intel_cdclk_config *b)
> >>> > +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
> >>> > +                                const struct intel_cdclk_config *b)
> >>> 
> >>> The new name isn't very descriptive either.
> >>> 
> >>> Outside the cd2x/crawl/squash cases we stil have to consider
> >>> two cases:
> >>> 1. cdclk frequency/pll changes (voltage level can change or not)
> >>> 2. cdclk frequency/pll doesn't change, but voltage level needs to change
> >>> 
> >>> And that difference is what intel_cdclk_needs_modeset() is trying
> >>> convey. And intel_cdclk_changed() tells us whether anything at all
> >>> is changing.
> >>
> >>intel_cdclk_clock_changed() is perhaps the best name I can
> >>think of, off the top of my head. But I'm notoriously bad at
> >>naming things so take that with a pinch of salt.
> >
> >Sounds better indeed. And I think intel_cdclk_changed() would be more
> >concise, but that one is already taken internally.
> 
> Hm... On second thought, I'm not sure intel_cdclk_clock_changed() would
> be very accurate, at least with the current implementation. We are
> checking not only on the resulting cdclk frequency, but also on
> ref and vco values.

That's all about the clock.

> 
> Although I'm not sure if that could happen in real life, but the current
> implementation gives me the interpretation that, in theory, a change in
> ref or vco could happen even if the cdclk value did not change. Or are
> we safe to say that checking on cdclk should be enough and looking at
> vco and ref is actually redundant?

ref never changes, vco could in theory change such that the
resulting cdclk stays the same, but probably no real world
examples of that.

But I don't see any point in putting those kinds of assumptions
into the code given that it wouldn't provide any actual benefits.

-- 
Ville Syrjälä
Intel
