Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BECE2148EBE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 20:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2922472B8F;
	Fri, 24 Jan 2020 19:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911F672B8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 19:36:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 11:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="428384996"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2020 11:36:20 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.185]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.190]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 11:36:19 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
Thread-Index: AQHV0X8Kdmx+4wAPw06sV3+nh3eT6Kf5Dj0AgAEo/JA=
Date: Fri, 24 Jan 2020 19:36:19 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482230AE@ORSMSX108.amr.corp.intel.com>
References: <20200122234027.9373-1-anusha.srivatsa@intel.com>
 <20200123175012.GI2244136@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200123175012.GI2244136@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, January 23, 2020 9:50 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
> 
> On Wed, Jan 22, 2020 at 03:40:27PM -0800, Anusha Srivatsa wrote:
> > Disable Early Read and Src Swap by setting the bit 14 and 15 in the
> > chicken register.
> >
> > BSpec: 46045,52890
> > HSDES: 1606931601
> 
> Hmm.  The bspec WA description (which is very poorly written) only
> mentions setting bit 14, but comments in the HSD indicate that both 14 and
> 15 should be set.  Do we have offline confirmation/clarification about which
> we should trust?
> 
> If we do need to program both bits, it might still be a good idea to use two
> separate #define's for those rather than a single bitmask to make it more
> clear what we're doing and also to give us the option of just setting one or
> the other in case that winds up being necessary as a workaround for a
> different platform or future stepping.
> 
Going ahead with what the BSpec expects us to do - setting just bit 14. Sending v2 version shortly.

Anusha  

> Matt
> 
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
> >  drivers/gpu/drm/i915/i915_reg.h             | 1 +
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 5a7db279f702..53b448b61a5f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -593,6 +593,11 @@ static void tgl_ctx_workarounds_init(struct
> intel_engine_cs *engine,
> >  	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
> >  	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
> >  			    FF_MODE2_TDS_TIMER_MASK);
> > +
> > +	/* Wa_1606931601:tgl */
> > +	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
> > +			  GEN11_EARLY_READ_SRC0_DISABLE_MASK);
> > +
> >  }
> >
> >  static void
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index b93c4c18f05c..69a1c2227b91
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -9146,6 +9146,7 @@ enum {
> >  #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
> >  #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
> >  #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
> > +#define   GEN11_EARLY_READ_SRC0_DISABLE_MASK
> 	REG_GENMASK(15, 14)
> >
> >  #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
> >  #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
> > --
> > 2.23.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
