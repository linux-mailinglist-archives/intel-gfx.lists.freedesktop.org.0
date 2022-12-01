Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEB663E845
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 04:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8802010E532;
	Thu,  1 Dec 2022 03:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62DDA10E532
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 03:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669864663; x=1701400663;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=6/Px9s8Jh/G5EV1X5ZHXI8feqFOSB6R6CvuIg0ymw6s=;
 b=SOIvLE6dKtWDnJ7WMsvSXjIQOS+p8Z4Ovh1kZqXdLs81B/3E1zBTQp/b
 wp8qDOHlp4pDDQaE/E2JboSLDVBr1k4SJf4x4w+K2Gq+Lb6vLRAENsU3j
 J1CEujux3DIUc4cUdMlqnBlBzBTWZnFKDCWbcmXqNFrsJcOZRzxbWDn8C
 8ELy8Gu4N5rP0/+5jUMIHX4Wus8hcvMmHV3qrJaH4H3oDlIHM0utXx1cz
 zV58Desjsi7h6Ma3BMoMPjJFbYh9m/1T/gLa40opgwexdeDGK+44IuHhc
 DArr6PbEdAIuroWHzFj0nz08tB13IkiC0nJNKO7rrPVO9H2DLRjwdVecs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="316727229"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="316727229"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 19:17:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="707900291"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="707900291"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.147.254])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 19:17:29 -0800
Date: Wed, 30 Nov 2022 19:17:22 -0800
Message-ID: <87sfhz3j99.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221201010535.1097741-4-umesh.nerlige.ramappa@intel.com>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>	<20221201010535.1097741-4-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Update OA mux
 whitelist for MTL
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

On Wed, 30 Nov 2022 17:05:34 -0800, Umesh Nerlige Ramappa wrote:
>
> 0x20cc (WAIT_FOR_RC6_EXIT on other platforms) is repurposed on MTL. Use
> a separate mux table to verify oa configs passed by user.

> I looked for WAIT_FOR_RC6_EXIT in the bspec and did not find it defined for
> MTL, so it's dropped completely. If you could confirm, that would be great.

Yup looks like it.

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>


> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 8ed9af571de9..8369ae4b850d 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4318,6 +4318,17 @@ static const struct i915_range gen12_oa_mux_regs[] = {
>	{}
>  };
>
> +/*
> + * Ref: 14010536224:
> + * 0x20cc is repurposed on MTL, so use a separate array for MTL.
> + */
> +static const struct i915_range mtl_oa_mux_regs[] = {
> +	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
> +	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
> +	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
> +	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
> +};
> +
>  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>  {
>	return reg_in_range_table(addr, gen7_oa_b_counters);
> @@ -4361,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>
>  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen12_oa_mux_regs);
> +	if (IS_METEORLAKE(perf->i915))
> +		return reg_in_range_table(addr, mtl_oa_mux_regs);
> +	else
> +		return reg_in_range_table(addr, gen12_oa_mux_regs);
>  }
>
>  static u32 mask_reg_value(u32 reg, u32 val)
> --
> 2.36.1
>
