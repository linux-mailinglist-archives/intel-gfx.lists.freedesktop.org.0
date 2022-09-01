Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C91F5A9673
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 14:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A66910E5A6;
	Thu,  1 Sep 2022 12:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F2110E5A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 12:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662034457; x=1693570457;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=l+C1pGC8J6szTqTsQsbqhEjp8/SQ+2+BpYKgA6JXbto=;
 b=geHfbW7IlrIvXgAtXXpPtlaKz+DKDI1idmWKCfprOYAzzuMEmFaUBi34
 jXl0nx3s86BHkCG/gBRezwh59u3d0kL8sBwTFUVGuCwP6U0W/UUuDD1Mw
 UBC1ZlRe8ozrXXQrZxhfodqjuwGd0FkjCOKKOVrdtGR1UaaN6v0XO/Sg4
 N9K4kMW5YD+4x3jEwctUALRuJEeBcovRRZm9EBs34gtY+t9YgHp5H4Rcu
 kYJwe61Zc0DV1QO6r1gf7A4TtayU7u1yj3PFwTPSSRVpnC9o7Y1J1I+jL
 TXkGUVK9HXNQPnro/j/nX9cIsJ/TwsHcce5tRj7sv/U6UrMQt2HsRgQPm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="296980307"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="296980307"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:14:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="642306766"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:14:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220901113011.12080-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220901113011.12080-1-stanislav.lisovskiy@intel.com>
Date: Thu, 01 Sep 2022 15:14:04 +0300
Message-ID: <87wnanb8c3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 01 Sep 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Lets start to use REG_BIT* macros, instead of (x << 0) like expressions.

Please be more specific in the commit subject, it's not like we haven't
started using REG_BIT in general, ever since we introduced it! ;) So
refer to CDCLK_CTL.

Please just update the subject while pushing, no need to resend for
that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


PS. Could I also persuade you to split out some of the cdclk register
macros to a new display/intel_cdclk_regs.h header? E.g. CDCLK_CTL is
only used in intel_cdclk.c (and gvt).

>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5e6239864c35..d82f14979fdf 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7077,16 +7077,16 @@ enum skl_power_gate {
>  
>  /* CDCLK_CTL */
>  #define CDCLK_CTL			_MMIO(0x46000)
> -#define  CDCLK_FREQ_SEL_MASK		(3 << 26)
> -#define  CDCLK_FREQ_450_432		(0 << 26)
> -#define  CDCLK_FREQ_540			(1 << 26)
> -#define  CDCLK_FREQ_337_308		(2 << 26)
> -#define  CDCLK_FREQ_675_617		(3 << 26)
> -#define  BXT_CDCLK_CD2X_DIV_SEL_MASK	(3 << 22)
> -#define  BXT_CDCLK_CD2X_DIV_SEL_1	(0 << 22)
> -#define  BXT_CDCLK_CD2X_DIV_SEL_1_5	(1 << 22)
> -#define  BXT_CDCLK_CD2X_DIV_SEL_2	(2 << 22)
> -#define  BXT_CDCLK_CD2X_DIV_SEL_4	(3 << 22)
> +#define  CDCLK_FREQ_SEL_MASK		REG_GENMASK(27, 26)
> +#define  CDCLK_FREQ_450_432		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 0)
> +#define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
> +#define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
> +#define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
> +#define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
> +#define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
> +#define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
> +#define  BXT_CDCLK_CD2X_DIV_SEL_2	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 2)
> +#define  BXT_CDCLK_CD2X_DIV_SEL_4	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 3)
>  #define  BXT_CDCLK_CD2X_PIPE(pipe)	((pipe) << 20)
>  #define  CDCLK_DIVMUX_CD_OVERRIDE	(1 << 19)
>  #define  BXT_CDCLK_CD2X_PIPE_NONE	BXT_CDCLK_CD2X_PIPE(3)

-- 
Jani Nikula, Intel Open Source Graphics Center
