Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 178E7847A3D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 21:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B293910E1DF;
	Fri,  2 Feb 2024 20:06:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8i88Cqa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D89E10E2D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 20:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706904367; x=1738440367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xS1UgOZkYwD5aX0BY1k6KxN0ZOGGuHcarq28LrK8yXI=;
 b=k8i88Cqa5VMicrS9GkbA5Lwp+zANShYVCKq7avGO3x0SeolAnOX7UQey
 EzdT0HAKtYaFJPuHItU8myuvZVqxsqYgcaKngwafaRnDy5Zv1jjqOqaVR
 NGkz/+hvELrBiJKvkqfNSK60eTzq0DZocky0r7ogy/rKRDc/L1oj55qEr
 iTe+h98eeWo1t2avTe816nbDXjL43U1FfGWc0kt1mwsiNs9E134uPrYoE
 is49sxUUkYxQdVO9yy3CbBf4rGR2lECWkWzVC8vT75i4l1N63fKUmQ/fz
 6yh9ialslwItRvQx5M1jLttOb+7bQgo1SYPpuEqMQRa+FKp76urTS3jKS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="11598760"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="11598760"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 12:06:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823296366"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823296366"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 12:06:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Feb 2024 22:06:02 +0200
Date: Fri, 2 Feb 2024 22:06:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
Message-ID: <Zb1LKnsADQI_i2a2@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zb1JbZlhjxXQKhTq@intel.com>
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

On Fri, Feb 02, 2024 at 09:58:37PM +0200, Ville Syrjälä wrote:
> On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
> > Looks like the name and description of intel_cdclk_needs_modeset()
> > became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset for
> > cdclk changes if possible"), when it became possible to update the cdclk
> > without requiring disabling the pipes when only changing the cd2x
> > divider was enough.
> > 
> > Later on we also added the same type of support with squash and crawling
> > with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
> > when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
> > squasher to be reconfigured live") and commit d62686ba3b54
> > ("drm/i915/adl_p: CDCLK crawl support for ADL").
> > 
> > As such, update that function's name and documentation to something more
> > appropriate, since the real checks for requiring modeset are done
> > elsewhere.
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> > 
> > One thing worth noting here is that, with this change, we are left with an
> > awkward situation where two function names related to checking changes in cdclk:
> > 
> >   intel_cdclk_params_changed() and intel_cdclk_changed()
> > 
> > ,
> > 
> > and I find it weird that we have intel_cdclk_changed(), which checks for the
> > voltage level as well. Shouldn't the voltage level be a function of cdclk and
> > ddi clock? Why do we need that?
> > 
> >  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++--------
> >  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
> >  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
> >  3 files changed, 11 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 26200ee3e23f..caadd880865f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> >  }
> >  
> >  /**
> > - * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
> > - *                             configurations requires a modeset on all pipes
> > + * intel_cdclk_params_changed - Check whether CDCLK parameters changed
> >   * @a: first CDCLK configuration
> >   * @b: second CDCLK configuration
> >   *
> >   * Returns:
> > - * True if changing between the two CDCLK configurations
> > - * requires all pipes to be off, false if not.
> > + * True if parameters changed in a way that requires programming the CDCLK
> > + * and False otherwise.
> >   */
> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > -			       const struct intel_cdclk_config *b)
> > +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
> > +				const struct intel_cdclk_config *b)
> 
> The new name isn't very descriptive either.
> 
> Outside the cd2x/crawl/squash cases we stil have to consider
> two cases:
> 1. cdclk frequency/pll changes (voltage level can change or not)
> 2. cdclk frequency/pll doesn't change, but voltage level needs to change
> 
> And that difference is what intel_cdclk_needs_modeset() is trying
> convey. And intel_cdclk_changed() tells us whether anything at all
> is changing.

intel_cdclk_clock_changed() is perhaps the best name I can
think of, off the top of my head. But I'm notoriously bad at
naming things so take that with a pinch of salt.

-- 
Ville Syrjälä
Intel
