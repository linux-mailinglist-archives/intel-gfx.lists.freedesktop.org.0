Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BEE5152FE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 19:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248EB10F73C;
	Fri, 29 Apr 2022 17:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C85D10F73B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 17:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651254632; x=1682790632;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jscVSXRQM5wh4z37OQqKlHgHC7kyRHW5alOuIk239eM=;
 b=iqP50OgRiyNfRohxFToanpEQuuUN97/IpVzSoJZvqKIPXozu/MoOAECx
 v50zd/MK1q1PrBmAh9QiKRtQhKnThf3feTORB/Okv6AppBaLLnRaKCYA+
 c56q0KwzDzEWJW//eGvol1PzahH+6HfU2qiAAAr6aGjNcDZ6jKwIZtSSt
 UQvfQPNoLPUCJvJAjfrpk28sCIPW1FXCuKrW9wMQ2enSn6JtAaR4gBJCa
 7fHhYsCEABnniMUWMyPGx45xuFx4RmBnsuYPItX9DslsNUAU5yjJ48OoU
 f3ohyXrgoANJxr3AK97mWn//CICDGIxUABF6H8uITkl+/2laWgkMSFBvs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="254112613"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="254112613"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 10:50:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="685135516"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 10:50:01 -0700
Date: Fri, 29 Apr 2022 20:49:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YmwlRc9zwhqJ9XIF@ideak-desk.fi.intel.com>
References: <20220429142140.2671828-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220429142140.2671828-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move tons of power well
 initializers to rodata
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 29, 2022 at 05:21:40PM +0300, Jani Nikula wrote:
> Using compound literals for initialization can be tricky. Lacking a
> const qualifier, they won't end up in rodata, which is probably not
> expected or intended. Add const to move a whopping 136 initializers to
> rodata.
> 
> Compare:
> 
> $ objdump --syms drivers/gpu/drm/i915/display/intel_display_power_map.o | grep "\.rodata.*__compound_literal"
> $ objdump --syms drivers/gpu/drm/i915/display/intel_display_power_map.o | grep "\.data.*__compound_literal"
> 
> Before and after the change.
> 
> Fixes: c32ffce42aa5 ("drm/i915: Convert the power well descriptor domain mask to an array of domains")
> Fixes: 4a845ff0c0d4 ("drm/i915: Simplify power well definitions by adding power well instances")
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index af6f54a26a35..97b367f39f35 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -21,7 +21,7 @@
>  
>  #define I915_PW_DOMAINS(...) \
>  	(const struct i915_power_domain_list) \
> -		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))
> +		__LIST(__LIST_INLINE_ELEMS(const enum intel_display_power_domain, __VA_ARGS__))
>  
>  #define I915_DECL_PW_DOMAINS(__name, ...) \
>  	static const struct i915_power_domain_list __name = I915_PW_DOMAINS(__VA_ARGS__)
> @@ -32,7 +32,7 @@
>  
>  #define I915_PW_INSTANCES(...) \
>  	(const struct i915_power_well_instance_list) \
> -		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS__))
> +		__LIST(__LIST_INLINE_ELEMS(const struct i915_power_well_instance, __VA_ARGS__))
>  
>  #define I915_PW(_name, _domain_list, ...) \
>  	{ .name = _name, .domain_list = _domain_list, ## __VA_ARGS__ }
> -- 
> 2.30.2
> 
