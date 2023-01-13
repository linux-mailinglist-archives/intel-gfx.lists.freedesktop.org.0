Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2EA669AA9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 15:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F5F10EA12;
	Fri, 13 Jan 2023 14:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3A810EA17
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 14:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673620683; x=1705156683;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/SYEAk0wSDrhOBXjBUTh+ine4gwPNeorZq76BQoeIaY=;
 b=QMnxQIibtYOdiWprGr2wY15tCMZRDoljfIM83iC+SZA17D8hOE84lcEx
 XTBPsjHkT0W7A0pKC+otkNS+kFZWXhGkaCCnm2H7/oQYhN9h2DaC50hP2
 MIiJV1OiE7YMtfKTKG8iK9qv1v0J80g5TeFfApqkemuWpF4qZgFAzVH/1
 /lj07BsdAYaGzSaHmQCshAnvwTb3H2S6eHVrBSzyib7XO12dFFQh3JFIo
 q546+aUO06bmvZnefVik7w3Z/nTd3iQiNzSIP6aywhA+df2HL81owuty6
 G800TR8ii+bvz5YQJziy5mY1qpb+pLziYVzTQ8/q0dNh9NIy9UdcMxxyF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="326059513"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="326059513"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 06:38:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="746953654"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="746953654"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Jan 2023 06:37:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Jan 2023 16:37:59 +0200
Date: Fri, 13 Jan 2023 16:37:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <Y8FsxxcUzbzP+oYQ@intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-13-ville.syrjala@linux.intel.com>
 <PH7PR11MB598138788677D56556772AFFF9FC9@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB598138788677D56556772AFFF9FC9@PH7PR11MB5981.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/dsb: Define more DSB
 registers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 11, 2023 at 03:59:14PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Friday, December 16, 2022 6:08 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 12/13] drm/i915/dsb: Define more DSB registers
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add definitions for more DSB registers. Less annoying spec trawling when
> > working on the DSB code.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 50 +++++++++++++++++++++++++++++++-
> > -
> >  1 file changed, 48 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index ed989e749635..3b0d07880c30
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8103,8 +8103,54 @@ enum skl_power_gate {
> >  #define DSB_HEAD(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x0)
> >  #define DSB_TAIL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x4)
> >  #define DSB_CTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x8)
> > -#define   DSB_ENABLE			(1 << 31)
> > -#define   DSB_STATUS_BUSY		(1 << 0)
> > +#define   DSB_ENABLE			REG_BIT(31)
> > +#define   DSB_BUF_REITERATE		REG_BIT(29)
> > +#define   DSB_WAIT_FOR_VBLANK		REG_BIT(28)
> > +#define   DSB_WAIT_FOR_LINE_IN		REG_BIT(27)
> > +#define   DSB_HALT			REG_BIT(16)
> > +#define   DSB_NON_POSTED		REG_BIT(8)
> > +#define   DSB_STATUS_BUSY		REG_BIT(0)
> > +#define DSB_MMIOCTRL(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0xc)
> > +#define   DSB_MMIO_DEAD_CLOCKS_ENABLE	REG_BIT(31)
> 
> As per bpsec the programming of the above bit may not be needed for latest platforms as it is taken care in h/w. Do we have any plan to use it for older platform. 
> 
> > +#define   DSB_MMIO_DEAD_CLOCKS_COUNT_MASK	REG_GENMASK(15, 8)
> > +#define   DSB_MMIO_DEAD_CLOCKS_COUNT(x)
> > 	REG_FIELD_PREP(DSB_MMIO_DEAD_CLOCK_COUNT_MASK, (x))
> > +#define   DSB_MMIO_CYCLES_MASK		REG_GENMASK(7, 0)
> > +#define   DSB_MMIO_CYCLES(x)
> > 	REG_FIELD_PREP(DSB_MMIO_CYCLES_MASK, (x))
> > +#define DSB_POLLFUNC(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x10)> +#define   DSB_POLL_ENABLE		REG_BIT(31)
> > +#define   DSB_POLL_WAIT_MASK		REG_GENMASK(30, 23)
> > +#define   DSB_POLL_WAIT(x)
> > 	REG_FIELD_PREP(DSB_POLL_WAIT_MASK, (x)) /* usec */
> > +#define   DSB_POLL_COUNT_MASK		REG_GENMASK(22, 15)
> > +#define   DSB_POLL_COUNT(x)
> > 	REG_FIELD_PREP(DSB_POLL_COUNT_MASK, (x))
> > +#define DSB_DEBUG(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x14)
> 
> I can not see any usage of this register. All bits are mentioned spare in bpsec.
> 
> > +#define DSB_POLLMASK(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x1c)
> > +#define DSB_STATUS(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x24)
> 
> Do we have any plan to check the dsb engine internal details in kernel? Not sure if DSB_STATUS will be needed any time until there is a need to debug the h/w if it is malfunctioning. 
> 
> > +#define DSB_INTERRUPT(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
> > +#define   DSB_ATS_FAULT_INT_EN		REG_BIT(20)
> > +#define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
> > +#define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
> > +#define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
> > +#define   DSB_PROG_INT_EN		REG_BIT(16)
> > +#define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4)
> > +#define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
> > +#define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
> > +#define   DSB_POLL_ERR_INT_STATUS	REG_BIT(1)
> > +#define   DSB_PROG_INT_STATUS		REG_BIT(0)
> > +#define DSB_CURRENT_HEAD(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x2c)
> > +#define DSB_RM_TIMEOUT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x30)
> > +#define   DSB_RM_CLAIM_TIMEOUT		REG_BIT(31)
> > +#define   DSB_RM_READY_TIMEOUT		REG_BIT(30)
> > +#define   DSB_RM_CLAIM_TIMEOUT_COUNT_MASK	REG_GENMASK(23,
> > 16)
> > +#define   DSB_RM_CLAIM_TIMEOUT_COUNT(x)
> > 	REG_FIELD_PREP(DSB_RM_CLAIM_TIMEOUT_COUNT_MASK, (x)) /*
> > clocks */
> > +#define   DSB_RM_READY_TIMEOUT_VALUE_MASK	REG_GENMASK(15, 0)
> > +#define   DSB_RM_READY_TIMEOUT_VALUE(x)
> > 	REG_FIELD_PREP(DSB_RM_READY_TIMEOUT_VALUE, (x)) /* usec */
> > +#define DSB_RMTIMEOUTREG_CAPTURE(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x34)
> > +#define DSB_PMCTRL(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x38)
> > +#define DSB_PMCTRL_2(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x3c)
> > +#define DSB_PF_LN_LOWER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x40)
> > +#define DSB_PF_LN_UPPER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x44)
> > +#define DSB_BUFRPT_CNT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) +
> > 0x48)
> > +#define DSB_CHICKEN(pipe, id)
> > 	_MMIO(DSBSL_INSTANCE(pipe, id) + 0xf0)
> 
> I can understand instead of referring bspec all the above DSB registers are added without its usage and future patch will use it.
> Can we add a FIXME tag to remove unwanted DSB register definition once we achieve our target.

We're not going to remove them. I'm not going to be wasting my
time trawling bspec every time I need to poke at some DSB register.

-- 
Ville Syrjälä
Intel
