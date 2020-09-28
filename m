Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2855D27AF2A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 15:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5A389F69;
	Mon, 28 Sep 2020 13:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EEF89F63;
 Mon, 28 Sep 2020 13:37:10 +0000 (UTC)
IronPort-SDR: YKKgUUT6tZ74kTMTnVt7JJMQDfzd+bnh8qSouH+2NwRwfl9GjDuhUMrqV0RuxuKyUsn29lVKpB
 Z+fHdnjD7TFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="246734983"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="246734983"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 06:37:09 -0700
IronPort-SDR: OLZxjiXOr/5BwX+rto37oFgNE72aMNGYJ36SUAoCZkhSx1kOjtJj8TFkIo+0B3LbPO0Nq4gqs0
 +v9YXBpu9bNg==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="307338790"
Received: from lizwalsh-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.86.12])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 06:37:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, james.ausmus@intel.com,
 matthew.d.roper@intel.com, jose.souza@intel.com, ville.syrjala@linux.intel.com,
 lucas.demarchi@intel.com, hariom.pandey@intel.com
In-Reply-To: <20200928080931.246347-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20200928080931.246347-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 28 Sep 2020 16:37:21 +0300
Message-ID: <87d026owdq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/jsl: Split EHL/JSL platform
 info and PCI ids
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

On Mon, 28 Sep 2020, Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> Split the basic platform definition, macros, and PCI IDs to
> differentiate between EHL and JSL platforms.
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>  drivers/gpu/drm/i915/i915_pci.c          | 9 +++++++++
>  drivers/gpu/drm/i915/intel_device_info.c | 1 +
>  drivers/gpu/drm/i915/intel_device_info.h | 1 +
>  include/drm/i915_pciids.h                | 9 ++++++---
>  5 files changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 72a9449b674e..4f20acebb038 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1417,7 +1417,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_COMETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COMETLAKE)
>  #define IS_CANNONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CANNONLAKE)
>  #define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
> -#define IS_ELKHARTLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE)
> +#define IS_ELKHARTLAKE(dev_priv) (IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE) || \
> +				IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))
> +#define IS_JASPERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_JASPERLAKE)

I think we've learned from history that we want the platform checks to
be independent. I.e. if you need to split ELK and JSP, you need to make
IS_ELKHARTLAKE() match *only* ELK, and you need to replace every current
IS_ELKHARTLAKE() check with IS_ELKHARTLAKE() || IS_JASPERLAKE().

We've been here before, and we've thought before that we can get by with
the minimal change. It's just postponing the inevitable and generates
confusion.

BR,
Jani.


>  #define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_TIGERLAKE)
>  #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
>  #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 366ddfc8df6b..8690b69fcf33 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -846,6 +846,14 @@ static const struct intel_device_info ehl_info = {
>  	.ppgtt_size = 36,
>  };
>  
> +static const struct intel_device_info jsl_info = {
> +	GEN11_FEATURES,
> +	PLATFORM(INTEL_JASPERLAKE),
> +	.require_force_probe = 1,
> +	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
> +	.ppgtt_size = 36,
> +};
> +
>  #define GEN12_FEATURES \
>  	GEN11_FEATURES, \
>  	GEN(12), \
> @@ -985,6 +993,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_CNL_IDS(&cnl_info),
>  	INTEL_ICL_11_IDS(&icl_info),
>  	INTEL_EHL_IDS(&ehl_info),
> +	INTEL_JSL_IDS(&jsl_info),
>  	INTEL_TGL_12_IDS(&tgl_info),
>  	INTEL_RKL_IDS(&rkl_info),
>  	{0, 0, 0}
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index adc836f15fde..e67cec8fa2aa 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -62,6 +62,7 @@ static const char * const platform_names[] = {
>  	PLATFORM_NAME(CANNONLAKE),
>  	PLATFORM_NAME(ICELAKE),
>  	PLATFORM_NAME(ELKHARTLAKE),
> +	PLATFORM_NAME(JASPERLAKE),
>  	PLATFORM_NAME(TIGERLAKE),
>  	PLATFORM_NAME(ROCKETLAKE),
>  	PLATFORM_NAME(DG1),
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 6a3d607218aa..d92fa041c700 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -79,6 +79,7 @@ enum intel_platform {
>  	/* gen11 */
>  	INTEL_ICELAKE,
>  	INTEL_ELKHARTLAKE,
> +	INTEL_JASPERLAKE,
>  	/* gen12 */
>  	INTEL_TIGERLAKE,
>  	INTEL_ROCKETLAKE,
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 7eeecb07c9a1..1b5e09cfa11e 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -579,15 +579,18 @@
>  	INTEL_VGA_DEVICE(0x8A51, info), \
>  	INTEL_VGA_DEVICE(0x8A5D, info)
>  
> -/* EHL/JSL */
> +/* EHL */
>  #define INTEL_EHL_IDS(info) \
>  	INTEL_VGA_DEVICE(0x4500, info),	\
>  	INTEL_VGA_DEVICE(0x4571, info), \
>  	INTEL_VGA_DEVICE(0x4551, info), \
>  	INTEL_VGA_DEVICE(0x4541, info), \
> -	INTEL_VGA_DEVICE(0x4E71, info), \
>  	INTEL_VGA_DEVICE(0x4557, info), \
> -	INTEL_VGA_DEVICE(0x4555, info), \
> +	INTEL_VGA_DEVICE(0x4555, info)
> +
> +/* JSL */
> +#define INTEL_JSL_IDS(info) \
> +	INTEL_VGA_DEVICE(0x4E71, info), \
>  	INTEL_VGA_DEVICE(0x4E61, info), \
>  	INTEL_VGA_DEVICE(0x4E57, info), \
>  	INTEL_VGA_DEVICE(0x4E55, info), \

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
