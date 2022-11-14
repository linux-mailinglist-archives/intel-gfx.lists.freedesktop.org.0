Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95960627BC2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 12:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6115310E041;
	Mon, 14 Nov 2022 11:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA0710E041
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 11:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668424290; x=1699960290;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6ClYWSm9ZD4LjjTlpLC3e9YqPTUNcKbBPcEuUU9f6SE=;
 b=RyO2hEPcgGp9f6aqBLzp4RlFaofOuNd5k+TkDF9MGbjXkTuhhec3lWKR
 4zJNVZJYWAz2QFm/uwws8OwVMwcA+frh7lw/Ts4+VK1o3hUtEJRIP6URi
 GKSn0xwyr1O0BlqqrbcdjTLpGKtnFougxg6y80DDwts6nehz8xP9lNVXf
 2Ri15P0gxuSOUFP9GA0MnCHqql2c6ORvP3vOBPp0b5UDxat9KextfopiW
 pKYIYsidsBOICQSKCVBzAV4C5D40VqXDmq9ze5kRL4REKlPSOXn39MegK
 6OqBJHnx3GAaXl6Cl8e+VSy3XWR+jGzFSZRdcabDvsYLPcd1ss2D7Tkd7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="313746428"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="313746428"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 03:11:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="707273858"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="707273858"
Received: from dsmahang-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.240])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 03:11:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Steven 'Steve' Kendall <skend@chromium.org>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221111224930.3961511-1-skend@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221111224930.3961511-1-skend@google.com>
Date: Mon, 14 Nov 2022 13:11:23 +0200
Message-ID: <875yfh4wpw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable DMC idle states for Intel
 UHD Graphics 620
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
Cc: daniel@ffwll.ch, rodrigo.vivi@intel.com,
 Steven 'Steve' Kendall <skend@google.com>, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 11 Nov 2022, "Steven 'Steve' Kendall" <skend@chromium.org> wrote:
> Some machines with Intel UHD Graphics 620 (8086:5917) such as Dell
> Latitude 7490 are unable to wake from sleep. Disable DMC for
> Intel UHD Graphics 620.

Cc: some more folks

The patch at hand seems like too heavy a hammer. But this needs
attention.

BR,
Jani.



>
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7339
> Signed-off-by: Steven 'Steve' Kendall <skend@google.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 14 ++++++++++++++
>  include/drm/i915_pciids.h       |  6 +++++-
>  2 files changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index cd4487a1d3be..ea148be46b14 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -697,6 +697,10 @@ static const struct intel_device_info skl_gt4_info = {
>  	.gt = 4,
>  };
>  
> +#define GEN9_DMCLESS_FEATURES \
> +	GEN9_FEATURES, \
> +	.__runtime.has_dmc = 0
> +
>  #define GEN9_LP_FEATURES \
>  	GEN(9), \
>  	.is_lp = 1, \
> @@ -753,6 +757,10 @@ static const struct intel_device_info glk_info = {
>  	GEN9_FEATURES, \
>  	PLATFORM(INTEL_KABYLAKE)
>  
> +#define KBL_DMCLESS_PLATFORM \
> +	GEN9_DMCLESS_FEATURES, \
> +	PLATFORM(INTEL_KABYLAKE)
> +
>  static const struct intel_device_info kbl_gt1_info = {
>  	KBL_PLATFORM,
>  	.gt = 1,
> @@ -763,6 +771,11 @@ static const struct intel_device_info kbl_gt2_info = {
>  	.gt = 2,
>  };
>  
> +static const struct intel_device_info dmcless_kbl_gt2_info = {
> +	KBL_DMCLESS_PLATFORM,
> +	.gt = 2,
> +};
> +
>  static const struct intel_device_info kbl_gt3_info = {
>  	KBL_PLATFORM,
>  	.gt = 3,
> @@ -1202,6 +1215,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_GLK_IDS(&glk_info),
>  	INTEL_KBL_GT1_IDS(&kbl_gt1_info),
>  	INTEL_KBL_GT2_IDS(&kbl_gt2_info),
> +	DMCLESS_INTEL_KBL_GT2_IDS(&dmcless_kbl_gt2_info),
>  	INTEL_KBL_GT3_IDS(&kbl_gt3_info),
>  	INTEL_KBL_GT4_IDS(&kbl_gt3_info),
>  	INTEL_AML_KBL_GT2_IDS(&kbl_gt2_info),
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 4a4c190f7698..93bea60772ff 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -420,11 +420,15 @@
>  	INTEL_KBL_ULT_GT2_IDS(info), \
>  	INTEL_KBL_ULX_GT2_IDS(info), \
>  	INTEL_VGA_DEVICE(0x5912, info), /* DT  GT2 */ \
> -	INTEL_VGA_DEVICE(0x5917, info), /* Mobile GT2 */ \
>  	INTEL_VGA_DEVICE(0x591A, info), /* SRV GT2 */ \
>  	INTEL_VGA_DEVICE(0x591B, info), /* Halo GT2 */ \
>  	INTEL_VGA_DEVICE(0x591D, info) /* WKS GT2 */
>  
> +#define DMCLESS_INTEL_KBL_GT2_IDS(info) \
> +	INTEL_KBL_ULT_GT2_IDS(info), \
> +	INTEL_KBL_ULX_GT2_IDS(info), \
> +	INTEL_VGA_DEVICE(0x5917, info) /* Mobile GT2 */
> +
>  #define INTEL_KBL_ULT_GT3_IDS(info) \
>  	INTEL_VGA_DEVICE(0x5926, info) /* ULT GT3 */

-- 
Jani Nikula, Intel Open Source Graphics Center
