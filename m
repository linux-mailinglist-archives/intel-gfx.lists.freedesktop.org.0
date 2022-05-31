Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7FE539424
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 17:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F7710EE21;
	Tue, 31 May 2022 15:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CADA10F1E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 15:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654011604; x=1685547604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XDCRwQz9f4joE1OPnBc5jKFGBDhQZuh0IiUXv0zNbiA=;
 b=nXQA02JLmWa1EaUMufQkzgZpJxLlLcAqtMpOCBJM7FxPAtFyj34q3K91
 RnaFlQRuQIHuSFF6V9XEBrK3XzBPTc82bO3QpmPV0yzdHe3TDXM7jwdtH
 hlj3zZWJvv6V/RQfobwX2kjdlskYvGiX41viM6T/f1QOV+x+ppruu94Pf
 o9mFxlvs5jXWzIyP2sgNsooxT6iKtX2oIZomTEi8LmgrNKgWvC6sJOWSy
 NeiX6vnAfgoa5glXH8OHUmFCifiinvh+K0yczYHyvyFa/TlCZVykKufDQ
 ebcv2wBoDvm/ZCD3jx7NdttU7KrPqq3dLLw2yxgV5OGiN8MVV+fWijDLF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="272863571"
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="272863571"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 08:39:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="611885135"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 08:39:53 -0700
Date: Tue, 31 May 2022 08:39:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YpY2xylbCpH/6KBB@mdroper-desk1.amr.corp.intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
 <20220518130716.10936-4-anshuman.gupta@intel.com>
 <87h75ldg9t.fsf@intel.com>
 <4299ea60a4c74ea0806d78b09de0b6c6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4299ea60a4c74ea0806d78b09de0b6c6@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/dg2: DG2 MBD config
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, May 29, 2022 at 09:44:38PM -0700, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Thursday, May 19, 2022 2:57 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Nilawar, Badal <badal.nilawar@intel.com>; Ewins, Jon
> > <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Deak, Imre
> > <imre.deak@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>
> > Subject: Re: [PATCH 3/7] drm/i915/dg2: DG2 MBD config
> > 
> > On Wed, 18 May 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > > Add DG2 Motherboard Down Config check support.
> > >
> > > BSpec: 44477
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
> > >  drivers/gpu/drm/i915/i915_drv.h               | 9 +++++++++
> > >  2 files changed, 11 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c
> > > b/drivers/gpu/drm/i915/display/intel_opregion.c
> > > index 3dcd54517b89..dec7628522c5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> > > @@ -1271,6 +1271,8 @@ intel_opregion_vram_sr_required(struct
> > > drm_i915_private *i915)
> > >
> > >  	if (IS_DG1(i915))
> > >  		return intel_opregion_dg1_mbd_config(i915);
> > > +	else if (IS_DG2_MBD(i915))
> > > +		return true;
> > >
> > >  	return false;
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index 10f273800645..c5ecc490dced
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1071,6 +1071,15 @@ IS_SUBPLATFORM(const struct drm_i915_private
> > *i915,
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> > #define
> > > IS_DG2_G12(dev_priv) \
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
> > > +/*
> > > + * FIXME: Need to define a new SUBPLATFORM
> > INTEL_SUBPLATFORM_DG2_MBD
> > > + * for PCI id range 5690..5695, but G10, G11 SUBPLATFROM conflicts
> > > + * with those pci id range.
> > > + */
> > > +#define DG2_MBD_CONFIG_MASK	GENMASK(7, 4)
> > > +#define DG2_MBD_CONFIG_VAL
> > 	FIELD_PREP(DG2_MBD_CONFIG_MASK, 9)
> > > +#define IS_DG2_MBD(dev_priv) (IS_DG2(dev_priv) && \
> > > +			      (INTEL_DEVID(dev_priv) &
> > DG2_MBD_CONFIG_MASK) ==
> > > +DG2_MBD_CONFIG_VAL)
> > 
> > No. Please don't do *any* magic masking or comparison of PCI ID bits or
> > bitfields.
> Hi Matt,
> We need to distinguish between DG2 NB MBD and rest such that i915 can
> figure out opregion vram_sr is requires for the DG2 platform.  Could
> you please suggestion on that.

If you truly need to distinguish a specific sub-type of DG2, then
creating a proper subplatform (with its own list of PCI IDs, matched in
intel_device_info_subplatform_init() is the way to go.  As far as I
recall, it should be okay to have multiple subplatform bits set for a
platform, so for example you can have both the G11 and a MBD subplatform
bits set on a device and they can each be tested independently without
interfering with each other.

I'm not too familiar with the feature you're working on here.  Is there
a way we can detect whether it's supported by querying the pcode?  Or
what happens if you send your pcode request on a platform that doesn't
support it?  Do you just get a regular error back so that the driver
would know to give up and move on, or would it actually cause some kind
of behavioral problem?


Matt

> Thanks,
> Anshuman Gupta.
> > 
> > BR,
> > Jani.
> > 
> > >  #define IS_ADLS_RPLS(dev_priv) \
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> > INTEL_SUBPLATFORM_RPL)
> > > #define IS_ADLP_N(dev_priv) \
> > 
> > --
> > Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
