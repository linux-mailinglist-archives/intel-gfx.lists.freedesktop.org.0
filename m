Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0AC313050
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 12:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17516E88D;
	Mon,  8 Feb 2021 11:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CA56E88D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 11:13:20 +0000 (UTC)
IronPort-SDR: sa1UPszNGWU9qUcvJrXaVzExOIBG4/BEkLps92ngfK2dUcgZDt2q5XApsE0P+kq/k+Rp8BLT2E
 wsmO0wXyugWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="245765486"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="245765486"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:13:18 -0800
IronPort-SDR: IiDEYzXiyLyYvQ/itHavJjQECOJgq4iFBKBcqjYe4Sr9qbuemHTGxZDLhJvifuXl92s99vFNRu
 A7a7NFKitbNQ==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="395346488"
Received: from abodrova-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.34.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:13:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210208105602.25151-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210208104338.25023-1-ankit.k.nautiyal@intel.com>
 <20210208105602.25151-1-ankit.k.nautiyal@intel.com>
Date: Mon, 08 Feb 2021 13:13:13 +0200
Message-ID: <87eehqersm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix HAS_LSPCON macro for
 platforms between GEN9 and GEN10
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 08 Feb 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Legacy LSPCON chip from MCA and Parade is only used for platforms
> between GEN9 and GEN10. Fixing the HAS_LSPCON macro to reflect the same.
>
> v2: Added the missing 'drm/' to subject (Jani N).
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Never mind, I pushed the earlier patch and fixed the prefix while
applying.

In general, there's no need to resend for tiny edits in commit log that
can be done while applying.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 4fc9a8691873..fd04fc434ca6 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1763,7 +1763,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
>  
>  #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>  
> -#define HAS_LSPCON(dev_priv) (INTEL_GEN(dev_priv) >= 9)
> +#define HAS_LSPCON(dev_priv) (IS_GEN_RANGE(dev_priv, 9, 10))
>  
>  /* DPF == dynamic parity feature */
>  #define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
