Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F148D5AA9A2
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 10:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37EDE10E79D;
	Fri,  2 Sep 2022 08:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A63110E79D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 08:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662106367; x=1693642367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DIxD3BktQ7pJsO8QhmxWN3Yth0khTS+KJ0ONk64B+i8=;
 b=RGfeUQk7uh5/ZQ7/p56S4AQRLK1HWYbcMZmdTQKt/YKj9M1A0cx+zWG3
 dDRoWQzRqoP5sA+Gg0+m9s2GzEt9ZMYdnDTFtJPiGdREoBl0OtBOdM2cq
 r/mhlrYA9foBj7/wxxy6qZxlI+YnHny/LKfUgtN4RfQcNWFoobMeKjRNT
 hcgZhbyaQpo6+h7105pXKxEKSBds4WFiThnNQ6n7YG5DuJ6kbzOUy5aKh
 AJrlXi5vMalDKjRj90YlnrVK6OOUqSJePJOeWoGj3UxgUtojq7xVUFWIM
 T6XN4h+Qg+/7eEGelWwVDBuQZlDHS2BisWyWeh7fZisFuwyGp6/kFVX6j g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="275675124"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="275675124"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 01:12:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674259100"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 01:12:38 -0700
Date: Fri, 2 Sep 2022 11:13:19 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YxG7HwaE0zSjzDk/@intel.com>
References: <20220901113011.12080-1-stanislav.lisovskiy@intel.com>
 <87wnanb8c3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wnanb8c3.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Start using REG_BIT* macros
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

On Thu, Sep 01, 2022 at 03:14:04PM +0300, Jani Nikula wrote:
> On Thu, 01 Sep 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > Lets start to use REG_BIT* macros, instead of (x << 0) like expressions.
> 
> Please be more specific in the commit subject, it's not like we haven't
> started using REG_BIT in general, ever since we introduced it! ;) So
> refer to CDCLK_CTL.

Yeah, agree looks too generic, it was previsouly part of the series, 
so got edited "a bit" :)

> 
> Please just update the subject while pushing, no need to resend for
> that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> PS. Could I also persuade you to split out some of the cdclk register
> macros to a new display/intel_cdclk_regs.h header? E.g. CDCLK_CTL is
> only used in intel_cdclk.c (and gvt).

Well need to take a look.. Shouldn't be very complex, I hope.

Stan

> 
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 5e6239864c35..d82f14979fdf 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7077,16 +7077,16 @@ enum skl_power_gate {
> >  
> >  /* CDCLK_CTL */
> >  #define CDCLK_CTL			_MMIO(0x46000)
> > -#define  CDCLK_FREQ_SEL_MASK		(3 << 26)
> > -#define  CDCLK_FREQ_450_432		(0 << 26)
> > -#define  CDCLK_FREQ_540			(1 << 26)
> > -#define  CDCLK_FREQ_337_308		(2 << 26)
> > -#define  CDCLK_FREQ_675_617		(3 << 26)
> > -#define  BXT_CDCLK_CD2X_DIV_SEL_MASK	(3 << 22)
> > -#define  BXT_CDCLK_CD2X_DIV_SEL_1	(0 << 22)
> > -#define  BXT_CDCLK_CD2X_DIV_SEL_1_5	(1 << 22)
> > -#define  BXT_CDCLK_CD2X_DIV_SEL_2	(2 << 22)
> > -#define  BXT_CDCLK_CD2X_DIV_SEL_4	(3 << 22)
> > +#define  CDCLK_FREQ_SEL_MASK		REG_GENMASK(27, 26)
> > +#define  CDCLK_FREQ_450_432		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 0)
> > +#define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
> > +#define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
> > +#define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
> > +#define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
> > +#define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
> > +#define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
> > +#define  BXT_CDCLK_CD2X_DIV_SEL_2	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 2)
> > +#define  BXT_CDCLK_CD2X_DIV_SEL_4	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 3)
> >  #define  BXT_CDCLK_CD2X_PIPE(pipe)	((pipe) << 20)
> >  #define  CDCLK_DIVMUX_CD_OVERRIDE	(1 << 19)
> >  #define  BXT_CDCLK_CD2X_PIPE_NONE	BXT_CDCLK_CD2X_PIPE(3)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
