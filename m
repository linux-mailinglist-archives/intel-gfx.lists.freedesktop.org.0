Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A046875800
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 21:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAB510E4F7;
	Thu,  7 Mar 2024 20:14:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EzEHvR+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7948E10E4F7;
 Thu,  7 Mar 2024 20:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709842436; x=1741378436;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Me+2cUABqkmJjm+ZelE/vRdSwiXm8ntEwh24V58sBqE=;
 b=EzEHvR+7x8TRGYpYJo8lY1pqkQ4HZIB7IUGTgvrWBwth6n7YAocgsE41
 xvVOiLfhVP6MmYa6Dys5I0n52MlplT9zL+LG5zWoStpl5ORoQefKTxyBF
 3LXB+LUdIulpsL/aGS9Oq3VoGiLD2ANmg6KodJ1h+1t+HtG0sEuyiJmRd
 DrRzQAEnp2W5W8qQ4DnnodtjNbNtlRHr15jUCW+tVN2/j9PcuUKAmkKyV
 aDrhSFM5AiI6ChZtdkMKA6dVdb2FbkyqixORnOr6tAVPihVi9nJgbUrbY
 47DedI6qZpxmcAIjhR/GLElxQGwfmWNmYCxJ3eRc43XQC3IzLVOHyMMtJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4383858"
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; 
   d="scan'208";a="4383858"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 12:13:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; d="scan'208";a="47705565"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 12:13:47 -0800
Date: Thu, 7 Mar 2024 22:14:12 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <ZeogFEKNw4QYTG1J@ideak-desk.fi.intel.com>
References: <20240307001554.162153-1-rodrigo.vivi@intel.com>
 <ZekKtpIobqZzyvDR@intel.com> <ZenTPngZUhMx5V4z@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZenTPngZUhMx5V4z@intel.com>
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

The difference between a wakeref (aka wakelock) and a raw-wakeref is
that the former is required for accessing the HW, which is asserted when
reading/writing a register. A raw-wakeref is not enough for this and is
only taken to prevent runtime suspending, for instance held after
dropping a display power reference, until the power well is actually
disabled in a delayed manner. During this time any register access is
considered invalid.

Both wakerefs and raw-wakerefs are tracked.

> One thing that crossed my mind many times already is to simply entirely
> remove the runtime_pm from display and do like other drivers simply
> checking for crtc connection at runtime_idle.
> 
> But then there are places where current display code uses the rpm
> in use to take different code paths, and also all the possible impact
> with the dc states transitions and other cases that I always gave up
> on the thought very quickly.
> 
> But you are right, we will have to comeback and clean things up
> one way or another.
> 
> But I wish we can have at least this small change in first so I don't
> get blocked by xe's lockdep annotation and I also don't have to
> workaround the annotation itself.
> 
> > 
> > >  
> > >  	for_each_power_domain(domain, mask) {
> > >  		/* Clear before put, so put's sanity check is happy. */
> > > -- 
> > > 2.43.2
> > 
> > -- 
> > Ville Syrjälä
> > Intel
