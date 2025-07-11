Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F3BB00F5C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 01:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007DB10E98B;
	Thu, 10 Jul 2025 23:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h0kMGECV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB9C10E98A;
 Thu, 10 Jul 2025 23:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752189106; x=1783725106;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F504/+aTxXHWHSSkRyccM23vxvRRGypULR1T5FetlvA=;
 b=h0kMGECVRtTKt1XSz63M5at+WcgeGMD0ZXMJFFxGp4u/ofrYAQC4wqQR
 /eTRGEOZeAVH4kxr1msI8HZZksU697Vf4y8ICRxKyniMUcG44afGc+RPY
 xFJhW/fctmSce+8fOvHBfuWfvCDa7ZvE8JjYxERjm/ArrRAVN5ab9v777
 AE3SSNVDpFC13n2Esx32IdEO+4NW7tbcokkhX3y+oenn0PiRiXOnBq5+Y
 LVMmH/+G1JTQmC+7xNIQNn2e+eFHdmOqpWx/bcPVa4tLv3wkPexeKchOw
 xYi4e2lOWKw1GD7xlu2pYd6KDgZBquSm78/InD62WekrIl1fijEg7ceDI A==;
X-CSE-ConnectionGUID: kwUTJ/6OQ5iJ0HM+LN3f9A==
X-CSE-MsgGUID: NYTQQNuUR0uzLKcYpahgpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="65833304"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="65833304"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 16:11:46 -0700
X-CSE-ConnectionGUID: b0RVFMw1SDC+lVmN7+pl3w==
X-CSE-MsgGUID: fwYTtDigRGSp5uTV7pCc+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161907903"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 16:11:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Jul 2025 02:11:42 +0300
Date: Fri, 11 Jul 2025 02:11:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Message-ID: <aHBIru0gmRnmgij4@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
 <aG_ffKlueD_8fx2E@intel.com> <aHAeBsRCmkI6QZCv@intel.com>
 <aHAwMfaR97nWqu5T@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aHAwMfaR97nWqu5T@intel.com>
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

On Thu, Jul 10, 2025 at 05:27:13PM -0400, Rodrigo Vivi wrote:
> On Thu, Jul 10, 2025 at 11:09:42PM +0300, Ville Syrj�l� wrote:
> > On Thu, Jul 10, 2025 at 11:42:52AM -0400, Rodrigo Vivi wrote:
> > > On Wed, Jul 09, 2025 at 06:11:17PM +0000, Hogander, Jouni wrote:
> > > > On Wed, 2025-07-09 at 20:03 +0300, Ville Syrj�l� wrote:
> > > > > On Wed, Jul 09, 2025 at 10:57:58AM +0300, Jouni H�gander wrote:
> > > > > > Currently disabling PSR2 via enable_psr module parameter causes
> > > > > > Panel
> > > > > > Replay being disabled as well. This patch changes this by still
> > > > > > allowing
> > > > > > Panel Replay even if PSR2 is disabled.
> > > > > > 
> > > > > > After this patch enable_psr module parameter values are:
> > > > > > 
> > > > > > -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
> > > > > > �0 = PSR1 : no,� PSR2 = no,� Panel Replay : no
> > > > > > �1 = PSR1 : yes, PSR2 = no,� Panel Replay : yes
> > > > > > �2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
> > > > > > �3 = PSR1 : yes, PSR2 = no,� Panel Replay : no
> > > > > > 
> > > > > > I.e. values different than -1 and 0 are handled as bitmasks where
> > > > > > BIT0
> > > > > > disables PSR2 and BIT1 disables Panel Replay.
> > > > > > 
> > > > > > v2:
> > > > > > � - make it more clear that enable_psr is bitmask for disabling
> > > > > > different
> > > > > > ��� PSR modes
> > > > > > 
> > > > > > Signed-off-by: Jouni H�gander <jouni.hogander@intel.com>
> > > > > > ---
> > > > > > �.../drm/i915/display/intel_display_params.c�� |� 6 ++---
> > > > > > �drivers/gpu/drm/i915/display/intel_psr.c����� | 22 ++++++++++++++-
> > > > > > ----
> > > > > > �2 files changed, 19 insertions(+), 9 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > index 75316247ee8a..195af19ece5f 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > @@ -116,9 +116,9 @@ intel_display_param_named_unsafe(enable_fbc,
> > > > > > int, 0400,
> > > > > > �	"(default: -1 (use per-chip default))");
> > > > > > �
> > > > > > �intel_display_param_named_unsafe(enable_psr, int, 0400,
> > > > > > -	"Enable PSR "
> > > > > > -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> > > > > > -	"Default: -1 (use per-chip default)");
> > > > > > +	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0), 2=disable
> > > > > > Panel Replay (BIT1))."
> > > > > > +	"Values different from 0 and -1 are handled as bitmask to
> > > > > > disable different PSR modes."
> > > > > > +	"E.g. value 3 disables both PSR2 and Panel Replay.
> > > > > > Default: -1 (use per-chip default)");
> > > > > 
> > > > > This thing is very unintuitive. Why don't we just get replace it
> > > > > with a new disable_psr modparam that is clearly just a bitmask of
> > > > > what to disable?
> > > > 
> > > > I was thinkinig we should keep it backward compatible. I know this
> > > > parameter is in use.
> > > 
> > > I agree on keeping this backward compatible.
> > 
> > IMO it's an unusable mess so I wouldn't bother trying to preserve it.
> > The only value that seems to make any sense currently is =0. 
> 
> fair enough. what about simply removing all the options entirely?
> enable_psr=0 keeps disabling it, otherwise enabled it. And we reduce
> all the knobs option. Afterall, this should be our end goal anyway.
> 
> > If I
> > need to use any other value I always give up immediately and just
> > hack the code instead.
> 
> Well, the param actually exists for us to request reporters to try
> different config. The devs can always modify the code.
> 
> Question now is, are all these variants useful for collecting debug
> information of some sort?
> 
> If so, as long as it is documented and we can ask different values,
> we should be good.
> 
> > 
> > If we keep calling it 'enable_psr' then it should clearly be a
> > bitmask of things to *enable*, not things to *disable*.
> > 
> > > 
> > > Also our experience with disable_power_well shows that negative
> > > name in the parameter can be much more unintuitive and confusing.
> > 
> > That one is rather different because it doesn't "disable power wells"
> > but rather it "disables power well disabling". But yes, it is a very
> > poor name as well.
> > 
> > Calling it "enable_power_wells" wouldn't really help though.
> > It should perhaps be something more like 'dont_disable_power_wells'
> > or 'keep_power_wells_on'.
> 
> okay, fair enough, disable power well is another level of complication.
> 
> back to disable_psr idea:
> 
> disable_psr=0 == enable PSR? to me this is already uninituitive anyway.
> disable_psr=1 == disable PSR1?
> disable_psr=2 == disable PSR2? and keep only PSR=1?
> 
> I still don't see a clean obvious intuitive way of handling it.
> Perhaps what I had suggested another day:
> 
> PSR1 = BIT0
> PSR2 = BIT1 (PSR2 infers PSR1 enabled)
> PANEL_REPLAY = BIT2 (also infers PSR1(and 2?) enabled)

With a bitmask I don't think inferring anything is helpful.
If the corresponding bit isn't set then don't use that
mode, period.

Another option would to have a separate named parameter
for each mode. Would be easier to understand but dunno
if we really want to add that many modparams just for this.

> (Peraps even bit3 for early transport?)
> 
> This is backwards compatible because
> 
> 0 = disabled,
> 1 = up to psr1,
> 2 = up to psr2, (no panel replay)
> 3 = up to psr2, (same as 2)
> 4 = panel replay on
> ...
> 
> > 
> > -- 
> > Ville Syrj�l�
> > Intel

-- 
Ville Syrj�l�
Intel
