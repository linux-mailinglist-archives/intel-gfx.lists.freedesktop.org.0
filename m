Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76980990A71
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 19:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B275B10E137;
	Fri,  4 Oct 2024 17:54:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZhlT7q2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E06E10E137
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 17:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728064458; x=1759600458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JeamPjsxJS6QQZYzM8XYfV3E5ZCb9ckD0w8dlU1dqso=;
 b=ZhlT7q2wRgxbhFnmQHkeDPvRGHOAo241OugDiaeDspeTZqY3sGyAskLk
 nBA0Pbme6XXZz6bMcNUuAS26LfkCw5qvCLvRc0vd4xYiPZ6ALYmzjBGhe
 03TpfwcfZJwjtGxdr1wzhu603+brZlgxxeds3L8NwyQxQ0TNZuWJS44xM
 vWLBp/Y9rSR14206w3E+7ymiqidF5VmBiKs5cZB2CYRnFFtai8yaw3aDK
 tZ0i32AsL6/RrXuKa9OLPk0UfouEr5oxXcHh/MRnFph/Xr107v/ZACLAq
 p7zPLFvqSna1g2Zwu2YO754SstwgKlC06wAY7DHb60dik7fCSncYh/FMY A==;
X-CSE-ConnectionGUID: kMIVcdRLTsOi526TMqsTNQ==
X-CSE-MsgGUID: fpL59LX9RrilmrHJni2l4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="14918891"
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="14918891"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 10:54:18 -0700
X-CSE-ConnectionGUID: RFiSMNb8Q8iQ6G8DfxAUtA==
X-CSE-MsgGUID: daXkWkU4TkSZYHAwHMnTfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="74894210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Oct 2024 10:54:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2024 20:54:15 +0300
Date: Fri, 4 Oct 2024 20:54:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Disable compression tricks on JSL
Message-ID: <ZwArxzGoeeOXy4JO@intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-3-ville.syrjala@linux.intel.com>
 <da0ae2cf-85a6-4ada-b9a6-088cecc78148@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <da0ae2cf-85a6-4ada-b9a6-088cecc78148@gmail.com>
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

On Fri, Oct 04, 2024 at 04:22:42PM +0300, Juha-Pekka Heikkila wrote:
> On 18.9.2024 17.44, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Bspec asks us to disable some compression trick on JSL. While the
> > bspec description is pretty vague it looks like this is some extra
> > trick for 10bpc+ CCS which presumably the ICL derived display engine
> > doesn't support.
> > 
> > Note that we aren't currently exposing 10bpc CCS scanout support,
> > but once that gets added this presumably becomes an issue.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
> >   2 files changed, 10 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 57a3c83d3655..67c47c8b75fb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -432,6 +432,7 @@
> >   #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
> >   
> >   #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
> > +#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */
> >   #define   RC_OP_FLUSH_ENABLE			(1 << 0)
> >   #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
> >   #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index e539a656cfc3..6972525fe6be 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2299,6 +2299,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
> >   	}
> >   
> > +	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
> > +		/*
> > +		 * "Disable Repacking for Compression (masked R/W access)
> > +		 *  before rendering compressed surfaces for display."
> > +		 */
> 
> I think here would be needed the wa number mentioned since it's on all 
> the other cases.

There isn't one.

> 
> > +		wa_masked_en(wal, CACHE_MODE_0_GEN7,
> > +			     DISABLE_REPACKING_FOR_COMPRESSION);
> > +	}
> > +
> >   	if (GRAPHICS_VER(i915) == 11) {
> >   		/* This is not an Wa. Enable for better image quality */
> >   		wa_masked_en(wal,

-- 
Ville Syrjälä
Intel
