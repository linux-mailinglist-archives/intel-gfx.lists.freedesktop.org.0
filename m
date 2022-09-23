Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFFD5E751A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 09:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E98B10E4B6;
	Fri, 23 Sep 2022 07:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2534510E49C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 07:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663919181; x=1695455181;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VNPvLltRHNQcWBDcjjXtLEhZ8iJuBCAbtZMeTD3dZAk=;
 b=BBg3K5M6hAL1AC1JdoutnEwuSMH/yApAeWOoVusqd1gSlABDeti6Fhyc
 /e3EYr/2Vm2CrQQDiE/eD9Z79UsGFyNDe5TMuvWwiM4OwdMpSm5weh55N
 9IH8xu5UhAiJHO+NOBg2cWkwbYXOW2UHBz+1W0QtyRjQykBrAXRLw4y00
 hmIh8dh48SFYiGgS90X2h4kaIuGkU5JLblUrQsya5py+YWbpQYDd4TvcJ
 cfActP4Vr99Eklw93bz7pOJOZbg5TV9ot6Xw2Fei2CP9184ujOXedMzgY
 kwouU9chAAkj2Ry9i1Y601K9gksEmAKaAYRyvNILGoo9N7E8qHlKqMcCy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="364552266"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="364552266"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 00:46:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="597782809"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Sep 2022 00:46:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Sep 2022 10:46:17 +0300
Date: Fri, 23 Sep 2022 10:46:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <Yy1kSZCykGOQS7or@intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-3-ville.syrjala@linux.intel.com>
 <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
 <YywdAq6eYfTEppUC@intel.com> <87leqb7px7.fsf@intel.com>
 <Yywsrhy2MJKRI76v@intel.com>
 <c03ce859eb948c65123933d6c89db2c8297afba1.camel@coelho.fi>
 <YyxNx+p2k3RscYBX@intel.com>
 <0408c640dfbc4bdea5cfab16bbe0347299cda57d.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0408c640dfbc4bdea5cfab16bbe0347299cda57d.camel@coelho.fi>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Mark FBC B gone if pipe B is
 gone
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

On Fri, Sep 23, 2022 at 09:24:28AM +0300, Luca Coelho wrote:
> On Thu, 2022-09-22 at 14:57 +0300, Ville Syrjälä wrote:
> > On Thu, Sep 22, 2022 at 02:37:35PM +0300, Luca Coelho wrote:
> > > On Thu, 2022-09-22 at 12:36 +0300, Ville Syrjälä wrote:
> > > > On Thu, Sep 22, 2022 at 11:51:16AM +0300, Jani Nikula wrote:
> > > > > On Thu, 22 Sep 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > > > > > On Thu, Sep 22, 2022 at 11:18:55AM +0300, Luca Coelho wrote:
> > > > > > > On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
> > > > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > > 
> > > > > > > > If pipe B is fused off we also shouldn't have FBC B.
> > > > > > > > 
> > > > > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/intel_device_info.c | 1 +
> > > > > > > >  1 file changed, 1 insertion(+)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > > > > > > > index 1434dc33cf49..fbefebc023f1 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > > > > > > @@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> > > > > > > >  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> > > > > > > >  			runtime->pipe_mask &= ~BIT(PIPE_B);
> > > > > > > >  			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> > > > > > > > +			runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
> > > > > > > >  		}
> > > > > > > >  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> > > > > > > >  			runtime->pipe_mask &= ~BIT(PIPE_C);
> > > > > > > 
> > > > > > > I don't know (yet) what exactly this does, but it makes sense if you
> > > > > > > think of consistency: we already do that for PIPE_A.
> > > > > > 
> > > > > > It's basically saying the entire pipe is fused off, so anything
> > > > > > living inside that pipe should also be fused off.
> > > > > > 
> > > > > > > 
> > > > > > > But what about PIPE_C and PIPE_D? Wouldn't it make sense to do the same
> > > > > > > thing for them as well?
> > > > > > 
> > > > > > There is no FBC engine on those pipes (we don't even have
> > > > > > the INTEL_FBC_C+ enum values defined), at least for now.
> > > > > 
> > > > > A future proof way would be to add
> > > > > 
> > > > > 	runtime->fbc_mask &= runtime->pipe_mask;
> > > > 
> > > > Dunno if I entirely like the extra assumption that the enums match.
> > > > Also would need to make sure we don't accidentally screw up any
> > > > old platforms where FBC is not tied to a specific pipe, but I
> > > > guess we should never have pipe A fused off on those w/o
> > > > the entire display engine fused off as well.
> > > 
> > > I must say I don't like the idea of making these assumptions across
> > > different masks either.
> > > 
> > > I think that, since you are reading the DFSM register at runtime to
> > > check whether those pipes are fused off, you should go all the way and
> > > disable everything, including in the fbc_mask for all pipes.  Then you
> > > don't need to make any assumptions about whether a pipe has FBC or not.
> > > 
> > > In short, I think you could add those INTEL_FBC_C+ definitions and
> > > force-unset them here too...
> > 
> > Hmm. I don't see any real problem with adding the FBC C+D
> > enum values even if not used by any platform currently.
> > Do you want to write that patch?
> 
> Sure, I can do it.  I guess it should be done _after_ your patch? Or
> should I just add those definitions and you'll rebase your patch? And
> there's a third option: I can add the definitions and replace your
> patch with one that does this for all PIPEs at once...
> 
> Which one do you prefer?

I'm fine with just dropping my patch and you taking over the
the wholew thing. Less stuff for me to do ;)

-- 
Ville Syrjälä
Intel
