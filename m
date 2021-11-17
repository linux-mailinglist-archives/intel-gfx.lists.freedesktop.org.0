Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B2F454D34
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 19:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24846E0B6;
	Wed, 17 Nov 2021 18:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1E76E0B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 18:28:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="257797664"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="257797664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 10:28:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="507040915"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 17 Nov 2021 10:27:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Nov 2021 20:27:56 +0200
Date: Wed, 17 Nov 2021 20:27:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YZVJrEn5k03eQXUg@intel.com>
References: <20211116231209.28621-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211116231209.28621-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/: Extend VRR platform support to
 Gen 11
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

On Tue, Nov 16, 2021 at 03:12:09PM -0800, Manasi Navare wrote:
> VRR is supported on Gen 11 HW , hence extend the support
> in the driver to enable this for Gen 11.

Yeah, based on my testing icl works as well (or as poorly)
as tgl.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 94840af45750..3b00a8edbb1d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1741,7 +1741,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask != 0)
>  
> -#define HAS_VRR(i915)	(GRAPHICS_VER(i915) >= 12)
> +#define HAS_VRR(i915)	(GRAPHICS_VER(i915) >= 11)
>  
>  #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>  
> -- 
> 2.19.1

-- 
Ville Syrjälä
Intel
