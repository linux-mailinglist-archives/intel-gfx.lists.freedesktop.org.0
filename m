Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F38535F289
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0926E491;
	Wed, 14 Apr 2021 11:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6C96E491
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:38:48 +0000 (UTC)
IronPort-SDR: puI2fjyKvnURnPvKFbfzCrJsNkqspXvQgqQQQtSslPBZnjFHLjqkZT26WjbJNFLkTfC+3aRndL
 Et76EdfozEBw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174117900"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174117900"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:38:47 -0700
IronPort-SDR: KyJxR79mSXkzf1qkYaM+w8zBSdLe+kfEc0SWyqhMaDXFiph5STobohzWFps/VY+V6Htqq+wS7w
 irxQRcMYyYLg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="418289866"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO [10.213.205.119])
 ([10.213.205.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:38:46 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-9-lucas.demarchi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2216c8a6-003d-5240-d983-8c162872fd66@linux.intel.com>
Date: Wed, 14 Apr 2021 12:38:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210413051002.92589-9-lucas.demarchi@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/04/2021 06:09, Lucas De Marchi wrote:
> Now that it's not used anywhere, remove it from struct
> intel_device_info. To allow a period in which code will be converted to
> the new macro, keep IS_GEN_RANGE() around, just redefining it to use
> the new fields. The size advantage from IS_GEN_RANGE() using a mask is
> not that big as it has pretty limited use througout the driver:
> 
>     text    data     bss     dec     hex filename
> 2758497   95965    6496 2860958  2ba79e drivers/gpu/drm/i915/i915.ko.old
> 2758586   95953    6496 2861035  2ba7eb drivers/gpu/drm/i915/i915.ko.new

This delta refers to this patch - I mean this point in the series? 
Asking because it may not be 100% representative since some of the 
previous patches have already removed some gen mask usages.

While I am here, I am a bit fond of the mask approach and wonder if 
using it for all (gt/media/whatelse) new fields would still make sense.

Presence of the range check helpers suggests that it might, but I 
haven't looked at how prevalent their usage ends up after the series is 
done. So just in principle, I don't see why not still go with masks 
since that guarantees elegant check at each range check site. It would 
be all hidden in the macro implementation so easy.

Also for historical reference, another reason why I went for masks 
everywhere approach is that at some point we had a feature request to 
allow compiling out platforms/gens. I *think* that was much easier to do 
with masking and in experiments back then I was able for instance to 
build just for Gen9+ and drop like 30% of the binary size.

Oh I found the branch now.. The reason for IS_GEN(p, v) was also in that 
series. I don't know if I ever RFC-ed or trybotted it.. google suggests 
no and I neither can find it in my mailboxes. I could send out the old 
patches for reference? But to be honest I have no idea if this feature 
request (targeted driver builds) will ever resurface..

Regards,

Tvrtko

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.c          |  2 --
>   drivers/gpu/drm/i915/i915_drv.h          | 13 ++++---------
>   drivers/gpu/drm/i915/i915_pci.c          |  1 -
>   drivers/gpu/drm/i915/intel_device_info.h |  2 --
>   4 files changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 305557e1942a..825b45cb3543 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -768,8 +768,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	memcpy(device_info, match_info, sizeof(*device_info));
>   	RUNTIME_INFO(i915)->device_id = pdev->device;
>   
> -	BUG_ON(device_info->gen > BITS_PER_TYPE(device_info->gen_mask));
> -
>   	return i915;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cb59eb0f6c5b..b984a340b21f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1241,6 +1241,10 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>    * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
>    */
>   #define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
> +/*
> + * Deprecated: use IS_GRAPHICS_VER()
> + */
> +#define IS_GEN_RANGE(dev_priv, s, e)	IS_GRAPHICS_VER(dev_priv, (s), (e))
>   
>   #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
>   #define IS_GRAPHICS_VER(i915, from, until) \
> @@ -1257,15 +1261,6 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>   #define REVID_FOREVER		0xff
>   #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
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
>   #define IS_GEN(dev_priv, n) \
>   	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(n)) + \
>   	 INTEL_INFO(dev_priv)->gen == (n))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 97ab73276334..3b9cd1af0f28 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -37,7 +37,6 @@
>   
>   #define PLATFORM(x) .platform = (x)
>   #define GEN(x) \
> -	.gen_mask = BIT((x) - 1), \
>   	.gen = (x), \
>   	.graphics_ver = (x), \
>   	.media_ver = (x), \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 405883a8cc84..b8f7b996f140 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -160,8 +160,6 @@ enum intel_ppgtt_type {
>   	func(supports_tv);
>   
>   struct intel_device_info {
> -	u16 gen_mask;
> -
>   	u8 graphics_ver;
>   	u8 media_ver;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
