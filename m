Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5618545349C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 15:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8406EA6F;
	Tue, 16 Nov 2021 14:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C6C6E093;
 Tue, 16 Nov 2021 14:49:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="297127067"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="297127067"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 06:49:43 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="604326864"
Received: from jprocter-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.135])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 06:49:42 -0800
Date: Tue, 16 Nov 2021 09:49:40 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YZPFBD5d7jSQLgRP@intel.com>
References: <20211115102610.3141720-1-tilak.tangudu@intel.com>
 <20211115102610.3141720-2-tilak.tangudu@intel.com>
 <871r3h3ao6.fsf@intel.com> <YZJ1sPvyQc/erb0+@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YZJ1sPvyQc/erb0+@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/rpm: Enable runtime pm
 autosuspend by default
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 15, 2021 at 09:58:56AM -0500, Rodrigo Vivi wrote:
> On Mon, Nov 15, 2021 at 01:44:57PM +0200, Jani Nikula wrote:
> > On Mon, 15 Nov 2021, Tilak Tangudu <tilak.tangudu@intel.com> wrote:
> > 
> > The actual commit message with explanations why it will work now and
> > didn't work before go here.
> 
> The truth is that:
> 
> 1. We don't have a good track of *all* the issues with the past attempts.
> 2. But apparently in every attempt we hit some other bug, like the latest
>    one with GuC PM...
> 3. All the attempts we also tried to do multiple changes at the same time,
>    including reducing the autosuspend delay.
> 
> > Just the changelog will not be enough.
> 
> But yes, you are absolutely right here. changelogs are not enough and
> we need some explanation in the commit itself.
> 
> I'd suggest something like:
> 
> """
> Let's enable runtime pm autosuspend by default everywhere. So we can
> allow D3hot and bigger power savings on idle scenarios.
> 
> But at this time let's not touch the autosuspend_delay time,
> what caused some regression on our previous attempt.
> 
> Also, the latest identified issue on GuC PM has been fixed by
> 1a52faed3131 ("drm/i915/guc: Take GT PM ref when deregistering context")
> 
> """
> 
> While writing that I remembered that we cannot do this just yet.
> We need to do a further work and block the d3cold on discrete.
> D3cold is not ready yet and enabling this autosuspend by default
> will blow up some discrete experimental usages of upstream i915
> out there. Let's protect that first.

we now have the d3cold in place. Please proceed with the spin on the
patch with the commit message improvement.

Thanks,
Rodrigo.

> 
> Thanks,
> Rodrigo.
> 
> > 
> > BR,
> > Jani.
> > 
> > 
> > > v1: Enable runtime pm autosuspend by default for Gen12
> > > and later versions.
> > >
> > > v2: Enable runtime pm autosuspend by default for all
> > > platforms(Syrjala Ville)
> > >
> > > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_runtime_pm.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > index eaf7688f517d..f26ed1427fdc 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > @@ -600,6 +600,9 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> > >  		pm_runtime_use_autosuspend(kdev);
> > >  	}
> > >  
> > > +	/* Enable by default */
> > > +	pm_runtime_allow(kdev);
> > > +
> > >  	/*
> > >  	 * The core calls the driver load handler with an RPM reference held.
> > >  	 * We drop that here and will reacquire it during unloading in
> > 
> > -- 
> > Jani Nikula, Intel Open Source Graphics Center
