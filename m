Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E1B1803EC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF826E351;
	Tue, 10 Mar 2020 16:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF556E351
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:49:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 09:49:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="235994005"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with SMTP; 10 Mar 2020 09:49:30 -0700
Date: Tue, 10 Mar 2020 09:49:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200310164930.GQ1061838@mdroper-desk1.amr.corp.intel.com>
References: <20200310004911.1723239-1-matthew.d.roper@intel.com>
 <20200310004911.1723239-4-matthew.d.roper@intel.com>
 <158385827294.28297.8711716968055646564@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158385827294.28297.8711716968055646564@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Add Wa_1604278689:icl,ehl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 04:37:52PM +0000, Chris Wilson wrote:
> Quoting Matt Roper (2020-03-10 00:49:07)
> > The bspec description for this workaround tells us to program
> > 0xFFFF_FFFF into both FBC_RT_BASE_ADDR_REGISTER_* registers, but we've
> > previously found that this leads to failures in CI.  Our suspicion is
> > that the failures are caused by this valid turning on the "address valid
> > bit" even though we're intentionally supplying an invalid address.
> > Experimentation has shown that setting all bits _except_ for the
> > RT_VALID bit seems to avoid these failures.
> > 
> > v2:
> >  - Mask off the RT_VALID bit.  Experimentation with CI trybot indicates
> >    that this is necessary to avoid reset failures on BCS.
> 
> What reset failures?

It was back in August, so I think the logs have expired from CI now:

https://patchwork.freedesktop.org/series/65276/#rev1


Matt

>  
> > Bspec: 11388
> > Bspec: 33451
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
> >  drivers/gpu/drm/i915/i915_reg.h             | 1 +
> >  2 files changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 3e352e2a5b79..1cf931dde0ca 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -575,6 +575,12 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
> >         /* allow headerless messages for preemptible GPGPU context */
> >         WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE,
> >                           GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
> > +
> > +       /* Wa_1604278689:icl,ehl */
> > +       wa_write_masked_or(wal, IVB_FBC_RT_BASE_UPPER,
> > +                          0, /* write-only register; skip validation */
> > +                          0xFFFFFFFF);
> > +       wa_write(wal, IVB_FBC_RT_BASE, 0xFFFFFFFF & ~ILK_FBC_RT_VALID);
> 
> Disable first.
> -Chris

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
