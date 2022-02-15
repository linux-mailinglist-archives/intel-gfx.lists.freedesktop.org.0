Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0BD4B643C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 08:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478A410E38A;
	Tue, 15 Feb 2022 07:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521B610E38A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 07:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644909845; x=1676445845;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wrK7kPZSv9GV6tuRFwFjOqmpuTuVckzhriwvHNh/Nkw=;
 b=MaPcQFtOeE1DGkgDxjeTY8fAfhQ44ja2ZQHCcOcR5+xP3jUtGDEPiBR7
 YcuWBWZiGxRNK109sm9KN+gvVlvmCBNVSjQB9J06pCSTDmpPpam40E79w
 KeCxvsM30OloQQKN/hFXC9grDOrlifrCFd+1Nx2FBxagmsWar5MIqFwBd
 orVIpYWxDf8Qb6VtBVkoV6mWXV5Zw29jUaknWD0yJTzue3uv8GvX9eQJE
 OLlO6+Kdgd5kpg6i9DfcxounfSSXslZVxvi7KIx8bVTvJuGLrjqvl1z+d
 S8D/52g0Ps4K1Sdf+6DLcYfBEPa4Od1xGbagmyXl6Avq7r9AL/ll2ozKo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="274844425"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="274844425"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 23:24:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="680880668"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 14 Feb 2022 23:24:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 09:24:01 +0200
Date: Tue, 15 Feb 2022 09:24:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YgtVEc7pw5TqzEdi@intel.com>
References: <20220210231217.1706063-1-matthew.d.roper@intel.com>
 <YgYhUeBZ7gbLmqUp@intel.com>
 <YgtCLYafpS11I8HM@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YgtCLYafpS11I8HM@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move MCHBAR registers to their
 own header
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

On Mon, Feb 14, 2022 at 10:03:25PM -0800, Matt Roper wrote:
> On Fri, Feb 11, 2022 at 10:41:53AM +0200, Ville Syrjälä wrote:
> > On Thu, Feb 10, 2022 at 03:12:17PM -0800, Matt Roper wrote:
> > > Registers that exist within the MCH BAR and are mirrored into the GPU's
> > > MMIO space are a good candidate to separate out into their own header.
> > > 
> > > For reference, the mirror of the MCH BAR lives at the following
> > > locations in the graphics MMIO space:
> > > 
> > >  * Pre-gen6:           0x10000 -  0x13000
> > 
> > Should go up to 0x14000 according to some docs I have.
> 
> I think I was looking at a gm45 PRM for this.  Given the spotty
> documentation on the older platforms and the number of different end
> points there seem to be, maybe it's a better idea to just give the
> starting offset in the commit message and say that the upper bound
> varies.

Sounds good.

> 
> > 
> > >  * Gen6-Gen11 + RKL:  0x140000 - 0x14FFFF
> > 
> > Some docs say this goes up to 0x180000, other docs have different
> > numbers. I suppose it doesn't matter all that much really. And
> > BXT+ clearly can't go past 0x160000 since IIRC that's where some
> > of the PHY/PLL stuff lives.
> > 
> > >  * TGL, ADL:          0x140000 - 0x15FFFF
> > > 
> > > Bspec: 134, 51771
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > <snip>
> > > -#define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> > > -#define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
> > > -#define GEN6_RP_STATE_LIMITS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
> > > -#define GEN6_RP_STATE_CAP	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
> > > -#define   RP0_CAP_MASK		REG_GENMASK(7, 0)
> > > -#define   RP1_CAP_MASK		REG_GENMASK(15, 8)
> > > -#define   RPN_CAP_MASK		REG_GENMASK(23, 16)
> > >  #define BXT_RP_STATE_CAP        _MMIO(0x138170)
> > >  #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
> > >  #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
> > 
> > :( This is a bit unfortunate. I wonder if we should make an exception
> > for these and keep them all together somewhere?
> 
> I don't really see a problem with having them in separate headers.  We
> have other stuff like ILK_GDSR / GEN6_GDRST that also used to be in the
> MCHBAR and then moved to the GT proper.

ILK_GDSR is not just about the GT but it can reset the 
display engine too. IIRC GEN6_GDRST can't do that.

> I believe the MCHBAR mirror is
> going away completely a platform or two down the road and all the
> important registers are migrating to non-MCHBAR offsets, so if we try to
> keep them all together, that defeats most of the purpose of having a
> separate MCHBAR header?

Not sure. Sadly there is no clear theme to some of the
MCHBAR registers so I'm not sure where else we'd place them
(assuming the plan is basically to hollow out i915_regs.h).

I guess we could start with what you have here and if it turns
out annoying we can always come up with something different later.

-- 
Ville Syrjälä
Intel
