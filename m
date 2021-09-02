Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563A33FF7D0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 01:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2ADA6E82F;
	Thu,  2 Sep 2021 23:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC276E82F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 23:26:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="304840625"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="304840625"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 16:26:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="521436156"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 16:26:13 -0700
Date: Thu, 2 Sep 2021 16:26:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20210902232611.GV461228@mdroper-desk1.amr.corp.intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
 <20210902185635.290538-3-ayaz.siddiqui@intel.com>
 <20210902225944.px4pjdwklqov73rd@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210902225944.px4pjdwklqov73rd@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH V4 2/6] drm/i915/gt: Set CMD_CCTL to UC for
 Gen12 Onward
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

On Thu, Sep 02, 2021 at 03:59:44PM -0700, Lucas De Marchi wrote:
> On Fri, Sep 03, 2021 at 12:26:31AM +0530, Ayaz A Siddiqui wrote:
> > Cache-control registers for Command Stream(CMD_CCTL) are used
> > to set catchability for memory writes and reads outputted by
> > Command Streamers on Gen12 onward platforms.
> > 
> > These registers need to point un-cached(UC) MOCS index.
> > 
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > ---
> > drivers/gpu/drm/i915/gt/intel_workarounds.c | 26 +++++++++++++++++++++
> > drivers/gpu/drm/i915/i915_reg.h             | 17 ++++++++++++++
> > 2 files changed, 43 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 94e1937f8d296..38c66765ff94c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1640,6 +1640,30 @@ void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
> > 				   i915_mmio_reg_offset(RING_NOPID(base)));
> > }
> > 
> > +/*
> > + * engine_fake_wa_init(), a place holder to program the registers
> > + * which are not part of a workaround.
> > + * Adding programming of those register inside workaround will
> > + * allow utilizing wa framework to proper application and verification.
> > + */
> > +static void
> > +engine_fake_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > +{
> > +	u8 mocs;
> > +
> > +	if (GRAPHICS_VER(engine->i915) >= 12) {
> 
> this is including TGL. Shouldn't TGL be the exception here?

Until now we haven't been programming CMD_CCTL, so it's basically been
pointing at entry 0.  On TGL/RKL, undefined entry 0 is treated as UC.
Now that we start setting CMD_CCTL here, it will switch to point at
entry 3, which is explicitly UC, so the behavior shouldn't change, but
the code should be more obvious.

The place where TGL/RKL need an exception is how to setup undefined
table entries (which may be used by userspace; we're not going to point
CMD_CCTL or BLIT_CCTL at any of those now).  In general those undefined
entries should be treated as L3, but for ABI reasons we need to keep
them as UC on TGL/RKL.


Matt

> 
> Lucas De Marchi

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
