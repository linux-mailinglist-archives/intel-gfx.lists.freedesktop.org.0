Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7C135DB70
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B5C6E14F;
	Tue, 13 Apr 2021 09:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25F86E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:40:24 +0000 (UTC)
IronPort-SDR: NbDtl4mff1qvCIZZ79i3JPzoyIlKj08Mo18SniCcUzL6KWMPx1lkQyIDMdXHE7RgUdW1k+y/v/
 Ce8fJ7bgHMyA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="279682372"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="279682372"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:40:24 -0700
IronPort-SDR: T1vvn5BlLW6x83F8HNewnsyluhhcZzFNZOFeyYHr/cJ8V/0T+J494ndUMAgxXNR8jw+f0JjOsK
 +MXRZcr7BT0g==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="460521895"
Received: from alinapar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.36.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:40:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210413051002.92589-9-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-9-lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 12:40:15 +0300
Message-ID: <87o8eih69s.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915: finish removal of
 gen_mask
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

On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Now that it's not used anywhere, remove it from struct
> intel_device_info. To allow a period in which code will be converted to
> the new macro, keep IS_GEN_RANGE() around, just redefining it to use
> the new fields. The size advantage from IS_GEN_RANGE() using a mask is
> not that big as it has pretty limited use througout the driver:
>
>    text    data     bss     dec     hex filename
> 2758497   95965    6496 2860958  2ba79e drivers/gpu/drm/i915/i915.ko.old
> 2758586   95953    6496 2861035  2ba7eb drivers/gpu/drm/i915/i915.ko.new
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c          |  2 --
>  drivers/gpu/drm/i915/i915_drv.h          | 13 ++++---------
>  drivers/gpu/drm/i915/i915_pci.c          |  1 -
>  drivers/gpu/drm/i915/intel_device_info.h |  2 --
>  4 files changed, 4 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 305557e1942a..825b45cb3543 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -768,8 +768,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	memcpy(device_info, match_info, sizeof(*device_info));
>  	RUNTIME_INFO(i915)->device_id = pdev->device;
>  
> -	BUG_ON(device_info->gen > BITS_PER_TYPE(device_info->gen_mask));
> -
>  	return i915;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cb59eb0f6c5b..b984a340b21f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1241,6 +1241,10 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>   * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
>   */
>  #define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
> +/*
> + * Deprecated: use IS_GRAPHICS_VER()
> + */

Nitpick, I think this should also mention IS_MEDIA_VER() and
DISPLAY_VER() to not have people blindly use IS_GRAPHICS_VER().

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +#define IS_GEN_RANGE(dev_priv, s, e)	IS_GRAPHICS_VER(dev_priv, (s), (e))
>  
>  #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
>  #define IS_GRAPHICS_VER(i915, from, until) \
> @@ -1257,15 +1261,6 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  #define REVID_FOREVER		0xff
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
>  
> -#define INTEL_GEN_MASK(s, e) ( \
> -	BUILD_BUG_ON_ZERO(!__builtin_constant_p(s)) + \
> -	BUILD_BUG_ON_ZERO(!__builtin_constant_p(e)) + \
> -	GENMASK((e) - 1, (s) - 1))
> -
> -/* Returns true if Gen is in inclusive range [Start, End] */
> -#define IS_GEN_RANGE(dev_priv, s, e) \
> -	(!!(INTEL_INFO(dev_priv)->gen_mask & INTEL_GEN_MASK((s), (e))))
> -
>  #define IS_GEN(dev_priv, n) \
>  	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(n)) + \
>  	 INTEL_INFO(dev_priv)->gen == (n))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 97ab73276334..3b9cd1af0f28 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -37,7 +37,6 @@
>  
>  #define PLATFORM(x) .platform = (x)
>  #define GEN(x) \
> -	.gen_mask = BIT((x) - 1), \
>  	.gen = (x), \
>  	.graphics_ver = (x), \
>  	.media_ver = (x), \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 405883a8cc84..b8f7b996f140 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -160,8 +160,6 @@ enum intel_ppgtt_type {
>  	func(supports_tv);
>  
>  struct intel_device_info {
> -	u16 gen_mask;
> -
>  	u8 graphics_ver;
>  	u8 media_ver;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
