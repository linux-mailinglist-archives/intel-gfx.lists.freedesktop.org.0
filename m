Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3654B633C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 07:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5560B10E1E2;
	Tue, 15 Feb 2022 06:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6672610E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 06:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644905007; x=1676441007;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RCFZjQhICxrzl2ZzeyC9bbTe3WYc6UUeuXcM2ayj/KA=;
 b=Me57RYpO6oF9XUwV86BRyhEE3RfhkXBIDUZPD6jDTO3pJ6Y15PBf6i64
 SLpnvFWYuyU29tJsrcoW9OfGDJsn1WPCfCQ9kHdBgNR3KitXBPBiBPuIU
 hu57jBQJFeqQT/hFa1ORFeCCJFrVY8WuXA2G29ayvEnZnDJDjqgv23umr
 wadfHSjuSm9beEQhTrR8JcK6Ex93i0NiytOY+L+2TiYjwKcbrs1o/59ng
 YYQ30urDYWp7LdYlzFcyv4LqR6dmHkvgYQv1yF9vt+RBRggKS3O6eSHTY
 PnCZpU/HQVO1FRv6s3dgfqIIxt6BpbDWj/EeG1BjeW+TVgPMqCBNufbgt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="250203582"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="250203582"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:03:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="570649651"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:03:26 -0800
Date: Mon, 14 Feb 2022 22:03:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YgtCLYafpS11I8HM@mdroper-desk1.amr.corp.intel.com>
References: <20220210231217.1706063-1-matthew.d.roper@intel.com>
 <YgYhUeBZ7gbLmqUp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YgYhUeBZ7gbLmqUp@intel.com>
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

On Fri, Feb 11, 2022 at 10:41:53AM +0200, Ville Syrjälä wrote:
> On Thu, Feb 10, 2022 at 03:12:17PM -0800, Matt Roper wrote:
> > Registers that exist within the MCH BAR and are mirrored into the GPU's
> > MMIO space are a good candidate to separate out into their own header.
> > 
> > For reference, the mirror of the MCH BAR lives at the following
> > locations in the graphics MMIO space:
> > 
> >  * Pre-gen6:           0x10000 -  0x13000
> 
> Should go up to 0x14000 according to some docs I have.

I think I was looking at a gm45 PRM for this.  Given the spotty
documentation on the older platforms and the number of different end
points there seem to be, maybe it's a better idea to just give the
starting offset in the commit message and say that the upper bound
varies.

> 
> >  * Gen6-Gen11 + RKL:  0x140000 - 0x14FFFF
> 
> Some docs say this goes up to 0x180000, other docs have different
> numbers. I suppose it doesn't matter all that much really. And
> BXT+ clearly can't go past 0x160000 since IIRC that's where some
> of the PHY/PLL stuff lives.
> 
> >  * TGL, ADL:          0x140000 - 0x15FFFF
> > 
> > Bspec: 134, 51771
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> <snip>
> > -#define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> > -#define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
> > -#define GEN6_RP_STATE_LIMITS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
> > -#define GEN6_RP_STATE_CAP	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
> > -#define   RP0_CAP_MASK		REG_GENMASK(7, 0)
> > -#define   RP1_CAP_MASK		REG_GENMASK(15, 8)
> > -#define   RPN_CAP_MASK		REG_GENMASK(23, 16)
> >  #define BXT_RP_STATE_CAP        _MMIO(0x138170)
> >  #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
> >  #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
> 
> :( This is a bit unfortunate. I wonder if we should make an exception
> for these and keep them all together somewhere?

I don't really see a problem with having them in separate headers.  We
have other stuff like ILK_GDSR / GEN6_GDRST that also used to be in the
MCHBAR and then moved to the GT proper.  I believe the MCHBAR mirror is
going away completely a platform or two down the road and all the
important registers are migrating to non-MCHBAR offsets, so if we try to
keep them all together, that defeats most of the purpose of having a
separate MCHBAR header?

> 
> <snip>
> > -/* Memory latency timer register */
> > -#define MLTR_ILK		_MMIO(0x11222)
> > +#define MLTR_ILK				_MMIO(MCHBAR_MIRROR_BASE + 0x1222)
> 
> I'd prefer to see a separate patch for the s/number/MCHBAR_MIRROR_BASE/ 
> stuff. Very hard to review those in this form.

Good point; I'll fix that.


Matt

> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
