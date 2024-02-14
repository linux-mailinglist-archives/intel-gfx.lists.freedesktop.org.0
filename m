Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EC38553AE
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 21:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9851D10E2C3;
	Wed, 14 Feb 2024 20:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EidDewXU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6340D10E2C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 20:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707941327; x=1739477327;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5FE2GTTei1H0SxWf1z8b/m5c400X0vM88TONiB4BPRY=;
 b=EidDewXU0/p9lwknNZANfhnzstQV99dlYbZSFfrsSKPBADd2SkoXca5J
 c6dR7mNjhEdWQCzVPbUy50j8Lq7SgV/67KvxuJ6JBBe7zrhLtTGb3BEux
 VpmHakeEofct4mct9DzeirauUsKpaIBz/ZzS/BLm6Yd1A/4T5yMBAwvCg
 FxczoZZitg3QzUiySrNEEzfhPRwax7P7cwwbUD+RSjqPTS3dI0FZcoojx
 DDxAl5Vd5yQENUss85BwOlXpCAQGXmN33vEj4en5oxtV/dfy737Wbzl62
 yj61dQVBZG4mjqGFWlKEgLcDRklxNRdr3s4PXI4REsgzey+5CaMh5/N90 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2153194"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="2153194"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 12:08:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826369763"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="826369763"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 14 Feb 2024 12:08:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Feb 2024 22:08:42 +0200
Date: Wed, 14 Feb 2024 22:08:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
Message-ID: <Zc0dygncPPX_pqIi@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com>
 <170696671884.1816.11371833747153807417@gjsousa-mobl2>
 <ZcEAIfeJyyztDa2-@intel.com>
 <170794061034.56490.5633508531160366518@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170794061034.56490.5633508531160366518@gjsousa-mobl2>
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

On Wed, Feb 14, 2024 at 04:56:50PM -0300, Gustavo Sousa wrote:
> Hi, Ville.
> 
> Sorry for taking long to get back to this.
> 
> Quoting Ville Syrjälä (2024-02-05 12:34:57-03:00)
> >On Sat, Feb 03, 2024 at 10:25:18AM -0300, Gustavo Sousa wrote:
> >> Quoting Ville Syrjälä (2024-02-02 16:58:37-03:00)
> >> >On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
> >> >> Looks like the name and description of intel_cdclk_needs_modeset()
> >> >> became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset for
> >> >> cdclk changes if possible"), when it became possible to update the cdclk
> >> >> without requiring disabling the pipes when only changing the cd2x
> >> >> divider was enough.
> >> >> 
> >> >> Later on we also added the same type of support with squash and crawling
> >> >> with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
> >> >> when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
> >> >> squasher to be reconfigured live") and commit d62686ba3b54
> >> >> ("drm/i915/adl_p: CDCLK crawl support for ADL").
> >> >> 
> >> >> As such, update that function's name and documentation to something more
> >> >> appropriate, since the real checks for requiring modeset are done
> >> >> elsewhere.
> >> >> 
> >> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> >> ---
> >> >> 
> >> >> One thing worth noting here is that, with this change, we are left with an
> >> >> awkward situation where two function names related to checking changes in cdclk:
> >> >> 
> >> >>   intel_cdclk_params_changed() and intel_cdclk_changed()
> >> >> 
> >> >> ,
> >> >> 
> >> >> and I find it weird that we have intel_cdclk_changed(), which checks for the
> >> >> voltage level as well. Shouldn't the voltage level be a function of cdclk and
> >> >> ddi clock? Why do we need that?
> >> >> 
> >> >>  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++--------
> >> >>  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
> >> >>  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
> >> >>  3 files changed, 11 insertions(+), 12 deletions(-)
> >> >> 
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> index 26200ee3e23f..caadd880865f 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> >> >>  }
> >> >>  
> >> >>  /**
> >> >> - * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
> >> >> - *                             configurations requires a modeset on all pipes
> >> >> + * intel_cdclk_params_changed - Check whether CDCLK parameters changed
> >> >>   * @a: first CDCLK configuration
> >> >>   * @b: second CDCLK configuration
> >> >>   *
> >> >>   * Returns:
> >> >> - * True if changing between the two CDCLK configurations
> >> >> - * requires all pipes to be off, false if not.
> >> >> + * True if parameters changed in a way that requires programming the CDCLK
> >> >> + * and False otherwise.
> >> >>   */
> >> >> -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> >> >> -                               const struct intel_cdclk_config *b)
> >> >> +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
> >> >> +                                const struct intel_cdclk_config *b)
> >> >
> >> >The new name isn't very descriptive either.
> >> 
> >> Yeah... I would much rather use intel_cdclk_changed(), but that one is
> >> already taken.
> >> 
> >> >
> >> >Outside the cd2x/crawl/squash cases we stil have to consider
> >> >two cases:
> >> >1. cdclk frequency/pll changes (voltage level can change or not)
> >> >2. cdclk frequency/pll doesn't change, but voltage level needs to change
> >> >
> >> >And that difference is what intel_cdclk_needs_modeset() is trying
> >> >convey. And intel_cdclk_changed() tells us whether anything at all
> >> >is changing.
> >> 
> >> I might be missing something, but, by going through the specs, it looked
> >> to me that voltage level was dependent on cdclk (as well as on ddi
> >> clock) and not the other way around. That's why I find it odd that we
> >> need an intel_cdclk_changed() that, besides looking for changes in
> >> cdclk, also checks for the voltage level.
> >> 
> >> In intel_set_cdclk(), we check intel_cdclk_changed() before continuing.
> >> If, for example, there is a change in ddi clock that requires a change
> >> in voltage level but no changes in cdclk, intel_cdclk_changed() would
> >> return true, right? Wouldn't that make us unnecessarily go through
> >> intel_set_cdclk()?
> >
> >intel_set_cdclk() is the thing that does the voltage change.
> 
> Yep and perhaps I provided an incomplete response above. Sorry.
> 
> I was wondering if handling voltage level should really be
> intel_set_cdclk()'s responsibility.
> 
> I might be missing the big picture here, but, at least for the recent
> platforms, I get the understanding that voltage level handling should be
> a separate step in the hardware commit process.
> 
> Would it be possible to have a commit containing (i) update(s) to ddi
> clk and (ii) no update to cdclk such that (i) require an update to
> voltage level, right?

That is possible yes. But I don't think there's much
point in complicating things by splitting the voltage
level stuff into a completely separate thing.

What I think we could do is split .set_cdclk() into more
fine grained steps so that:
- it's easier to reuse individual pieces across platforms without
  ugly if ladders
- perhaps make it a bit easier to skip unnecessary steps
  although the actual cdclk progrmaming in the nop case really
  just ends up being a CDLCK_CTL/etc. register write
  so not a big deal in practice.

-- 
Ville Syrjälä
Intel
