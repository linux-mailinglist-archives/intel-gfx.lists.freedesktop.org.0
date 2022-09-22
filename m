Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 207B65E5EB3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 11:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F8810EA8B;
	Thu, 22 Sep 2022 09:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA33C10EA8F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 09:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663839410; x=1695375410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wk21ZvOrKA3e5pHFDkDtS8dZJ4jcQ/AAoEeAKlt6KJ8=;
 b=RwFn8YhMTnBWAptW4NQRdWAuvjbyJdQgkMLmM1yTHhevx9tKDZ5vTPDb
 MFr0O9nVtzj1czEsiaYt8AS46fC5MJREg1l/f1W5quqV9CdT4yNnDGSjm
 4qh6QIo30fLx9NbX104durXrCuaZvWUOCrnjie3tGTmmNKEqSxDMTnU+a
 vCPtFyXSCcYUQq3bbvxEJto6G3XIZREs5u0UYnHYXFWDucE6qkVm/if8F
 7C+fUZ4taiXYT6piMYydu1xNsy/8Q94APMowl8GSS1Jbi4CwcjVw3MP0X
 +CJn+5beuXS6MGPo1HJxo1V5xAqCqrBCBFbozj4AYcZFVM3Gr8w4mvakr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="386539615"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="386539615"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:36:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="650451759"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 22 Sep 2022 02:36:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 12:36:46 +0300
Date: Thu, 22 Sep 2022 12:36:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yywsrhy2MJKRI76v@intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-3-ville.syrjala@linux.intel.com>
 <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
 <YywdAq6eYfTEppUC@intel.com> <87leqb7px7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87leqb7px7.fsf@intel.com>
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

On Thu, Sep 22, 2022 at 11:51:16AM +0300, Jani Nikula wrote:
> On Thu, 22 Sep 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Sep 22, 2022 at 11:18:55AM +0300, Luca Coelho wrote:
> >> On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > 
> >> > If pipe B is fused off we also shouldn't have FBC B.
> >> > 
> >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/intel_device_info.c | 1 +
> >> >  1 file changed, 1 insertion(+)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> >> > index 1434dc33cf49..fbefebc023f1 100644
> >> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> >> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> >> > @@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >> >  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> >> >  			runtime->pipe_mask &= ~BIT(PIPE_B);
> >> >  			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> >> > +			runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
> >> >  		}
> >> >  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> >> >  			runtime->pipe_mask &= ~BIT(PIPE_C);
> >> 
> >> I don't know (yet) what exactly this does, but it makes sense if you
> >> think of consistency: we already do that for PIPE_A.
> >
> > It's basically saying the entire pipe is fused off, so anything
> > living inside that pipe should also be fused off.
> >
> >> 
> >> But what about PIPE_C and PIPE_D? Wouldn't it make sense to do the same
> >> thing for them as well?
> >
> > There is no FBC engine on those pipes (we don't even have
> > the INTEL_FBC_C+ enum values defined), at least for now.
> 
> A future proof way would be to add
> 
> 	runtime->fbc_mask &= runtime->pipe_mask;

Dunno if I entirely like the extra assumption that the enums match.
Also would need to make sure we don't accidentally screw up any
old platforms where FBC is not tied to a specific pipe, but I
guess we should never have pipe A fused off on those w/o
the entire display engine fused off as well.

> 
> after all the fuse handling. Would also fix any misconfiguration in
> i915_pci.c.
> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
