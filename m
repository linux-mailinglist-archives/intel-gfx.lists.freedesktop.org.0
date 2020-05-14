Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9E61D3E11
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 21:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F546EBA1;
	Thu, 14 May 2020 19:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF746EBA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 19:56:34 +0000 (UTC)
IronPort-SDR: VqoJveI9I5U7eLXUP66aLu68LqbkBwl4WFn/GMuJsFiOdxq0UB74QH1NCjcCei5+ENTFZOA4a2
 zZkr+9mjlDlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 12:56:33 -0700
IronPort-SDR: mx6SibZd030g44taGYs6MG1fHLUxGMpJpNQKJBHfrX8+AoZ9Mhb9IPA8fgcb940LHMPEmgrlso
 itXVx06rBPng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="266358889"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga006.jf.intel.com with ESMTP; 14 May 2020 12:56:33 -0700
Date: Thu, 14 May 2020 12:57:39 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200514195739.GD15561@intel.com>
References: <20200514152145.2449-1-stanislav.lisovskiy@intel.com>
 <20200514152145.2449-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514152145.2449-6-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v8 5/7] drm/i915: Introduce
 for_each_dbuf_slice_in_mask macro
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 06:21:43PM +0300, Stanislav Lisovskiy wrote:
> We quite often need now to iterate only particular dbuf slices
> in mask, whether they are active or related to particular crtc.
> 
> v2: - Minor code refactoring
> v3: - Use enum for max slices instead of macro
> 
> Let's make our life a bit easier and use a macro for that.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.h       | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index efb4da205ea2..b7a6d56bac5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -187,6 +187,13 @@ enum plane_id {
>  	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
>  		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
>  
> +#define for_each_dbuf_slice_in_mask(__slice, __mask) \
> +	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
> +		for_each_if((BIT(__slice)) & (__mask))
> +
> +#define for_each_dbuf_slice(__slice) \
> +	for_each_dbuf_slice_in_mask(__slice, BIT(I915_MAX_DBUF_SLICES) - 1)
> +
>  enum port {
>  	PORT_NONE = -1,
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 6c917699293b..4d0d6f9dad26 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -314,6 +314,7 @@ intel_display_power_put_async(struct drm_i915_private *i915,
>  enum dbuf_slice {
>  	DBUF_S1,
>  	DBUF_S2,
> +	I915_MAX_DBUF_SLICES
>  };
>  
>  #define with_intel_display_power(i915, domain, wf) \
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
