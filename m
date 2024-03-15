Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA99887CC19
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 12:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64068112188;
	Fri, 15 Mar 2024 11:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQeH91DM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21870112188;
 Fri, 15 Mar 2024 11:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710501381; x=1742037381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wzaesvn1tmpgAo7amjoyAkZRMYQD1WOIF4CH5GI/yns=;
 b=IQeH91DMPgUVPdidBj4v/AzU0+RcMcvcWr+ryOGOEVvI/pmUAMf7YHcs
 Tb1uxa4ldIM28uJn7UDvfCpFWYMgqs0wcJZFrUj72LIQsTMRgA6ELM1VB
 p44wfg6pX2LaTGV7zfFBLDqrnL/6XHBJThwTdHsj9fWpXQRPZri0m4l/H
 xqpUTPtr1C/ovepxrOtdxG7Kr3D4WLsJrNa+F4CTHjLiPJhqhlp9Y5blb
 CWEW7ZQv9MN810Pvd7ArebgkmcC1FWLpS+5pMIJKxkDfJdKLMb4YBYVKe
 KS3+W2yz/BmycCyDdQ2KFJfBNpwBRW4tvlc+6EnnkXSNtbdxbmzm7n3+A Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5230217"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; 
   d="scan'208";a="5230217"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 04:16:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="827780570"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="827780570"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2024 04:16:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Mar 2024 13:16:17 +0200
Date: Fri, 15 Mar 2024 13:16:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <ZfQuAeoegWF2qIYp@intel.com>
References: <20240307001554.162153-1-rodrigo.vivi@intel.com>
 <ZekKtpIobqZzyvDR@intel.com> <ZenTPngZUhMx5V4z@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZenTPngZUhMx5V4z@intel.com>
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

On Thu, Mar 07, 2024 at 09:46:22AM -0500, Rodrigo Vivi wrote:
> On Thu, Mar 07, 2024 at 02:30:46AM +0200, Ville Syrjälä wrote:
> > On Wed, Mar 06, 2024 at 07:15:45PM -0500, Rodrigo Vivi wrote:
> > > This patch brings no functional change. Since at this point of
> > > the code we are already asserting a wakeref was held, it means
> > > that we are with runtime_pm 'in_use' and in practical terms we
> > > are only bumping the pm_runtime usage counter and moving on.
> > > 
> > > However, xe driver has a lockdep annotation that warned us that
> > > if a sync resume was actually called at this point, we could have
> > > a deadlock because we are inside the power_domains->lock locked
> > > area and the resume would call the irq_reset, which would also
> > > try to get the power_domains->lock.
> > > 
> > > For this reason, let's convert this call to a safer option and
> > > calm lockdep on.
> > > 
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 6fd4fa52253a..4c5168a5bbf4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
> > >  	 * power well disabling.
> > >  	 */
> > >  	assert_rpm_raw_wakeref_held(rpm);
> > > -	wakeref = intel_runtime_pm_get(rpm);
> > > +	wakeref = intel_runtime_pm_get_if_in_use(rpm);
> > 
> > On first glance that sequence looks like complete nonsense, and
> > thus likely to be cleaned up by someone later.
> 
> indeed. as many other things around i915's rpm infra.
> 
> > 
> > To me _noresume() would seem like the more sensible thing to use
> > here.
> 
> well, same effect actually. we would use the _noresume if we
> put it without checking if the usage counter was bumped.
> However, since our put takes the 'wakeref' into consideration
> anyway, let's use this one that is more straight forward for
> our current code.
> 
> > And even that might still warrant a comment to explain
> > why that one is used specifically.
> 
> In general we grab this inner references when we want to ensure
> that we have full control of the situation, i.e. ensuring that the
> other reference which we are relying are not dropped while we still
> have some operation to do. It is safe to have and cheap, so that's okay.
> 
> > 
> > I'm also confused by the wakeref vs. wakelock stuff in the runtime pm
> > code. Is that there just because not all places track the wakerefs?
> > Do we still have those left?
> 
> yeap, those are very nasty and not documented. But looking a bit of
> the history and the documentation about our get vs get_raw, it looks
> like wakelock only exists so gem/gt side could ensure that gem/gt
> side itself is holding the reference, and not relying on some reference
> that was actually taken by display.
> 
> One thing that crossed my mind many times already is to simply entirely
> remove the runtime_pm from display and do like other drivers simply
> checking for crtc connection at runtime_idle.
> 
> But then there are places where current display code uses the rpm
> in use to take different code paths, and also all the possible impact
> with the dc states transitions and other cases that I always gave up
> on the thought very quickly.

Yeah. IMO that weird "are we there yet?" approach to runtime pm
can only really work for trivial devices (eg. maybe input devices).
For any device with any kind of real complexity you have a lot of
entrypoints where you need to access the hardware and thus need to
make sure it's awake. There's no way to the idle callback can
check all of it without making a huge mess of everything.

-- 
Ville Syrjälä
Intel
