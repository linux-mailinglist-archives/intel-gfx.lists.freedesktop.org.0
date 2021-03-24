Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB7B3482DF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 21:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268C66EA5C;
	Wed, 24 Mar 2021 20:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE6C6EA5C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 20:27:28 +0000 (UTC)
IronPort-SDR: HKQp7EXYrCJbnu1SDPGLdoLOrXAHulQzhnfQhzhNfL8bk7x5RSbiiXIhZMYwIGEmvH5rp49XhC
 MRukvWGPOF8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="190207545"
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="190207545"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 13:27:28 -0700
IronPort-SDR: ay3rJ4iDr//ihtKpy8Pxtj8ijcIwEFUnCEvdYfsQbstAT1NVOHMXCm3Tuw7/6JfPWY9AgScB5n
 avGRgd8Vx6fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="443107277"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Mar 2021 13:27:28 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Mar 2021 13:27:27 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 01:57:25 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Thu, 25 Mar 2021 01:57:25 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/audio: set HDA link parameters in driver
Thread-Index: AQHXIKsE0H15zK2oLkqufzbYUSPVOKqThihA
Date: Wed, 24 Mar 2021 20:27:25 +0000
Message-ID: <bdb9e37cf05d401d80a86e4d397649f5@intel.com>
References: <20210324123725.4170214-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20210324123725.4170214-1-kai.vehmanen@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/audio: set HDA link parameters
 in driver
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



> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: Wednesday, March 24, 2021 6:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v2] drm/i915/audio: set HDA link parameters in driver
> 
> Update logic to program AUD_FREQ_CNTRL register based on new guidance.
> Earlier this register was configured by BIOS and driver discovered the value at init.
> This is no longer recommended and instead driver should set the values based on the
> hardware revision.
> 
> Add the recommended values for all supported hardware. This change applies for all
> GEN12+ hardware. For TGL, some special case handling is needed to not break
> existing systems.
> 
> Extend the debug print to also include values of the register as written by BIOS. This
> can help debug rare cases where BIOS has configured the link settings to incorrect
> values.

Pushed to drm-intel-next. Thanks for the patch.

Regards,
Uma Shankar

> Bspec: 49279
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 30 ++++++++++++++++++----
>  1 file changed, 25 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 3ea20c857440..9671c8f6e892 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1266,6 +1266,15 @@ static const struct component_ops
> i915_audio_component_bind_ops = {
>  	.unbind	= i915_audio_component_unbind,
>  };
> 
> +#define AUD_FREQ_TMODE_SHIFT	14
> +#define AUD_FREQ_4T		0
> +#define AUD_FREQ_8T		(2 << AUD_FREQ_TMODE_SHIFT)
> +#define AUD_FREQ_PULLCLKS(x)	(((x) & 0x3) << 11)
> +#define AUD_FREQ_BCLK_96M	BIT(4)
> +
> +#define AUD_FREQ_GEN12          (AUD_FREQ_8T | AUD_FREQ_PULLCLKS(0) |
> AUD_FREQ_BCLK_96M)
> +#define AUD_FREQ_TGL_BROKEN     (AUD_FREQ_8T | AUD_FREQ_PULLCLKS(2) |
> AUD_FREQ_BCLK_96M)
> +
>  /**
>   * i915_audio_component_init - initialize and register the audio component
>   * @dev_priv: i915 device instance
> @@ -1284,6 +1293,7 @@ static const struct component_ops
> i915_audio_component_bind_ops = {
>   */
>  static void i915_audio_component_init(struct drm_i915_private *dev_priv)  {
> +	u32 aud_freq, aud_freq_init;
>  	int ret;
> 
>  	ret = component_add_typed(dev_priv->drm.dev,
> @@ -1297,11 +1307,21 @@ static void i915_audio_component_init(struct
> drm_i915_private *dev_priv)
>  	}
> 
>  	if (DISPLAY_VER(dev_priv) >= 9) {
> -		dev_priv->audio_freq_cntrl = intel_de_read(dev_priv,
> -							   AUD_FREQ_CNTRL);
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "init value of AUD_FREQ_CNTRL of 0x%x\n",
> -			    dev_priv->audio_freq_cntrl);
> +		aud_freq_init = intel_de_read(dev_priv, AUD_FREQ_CNTRL);
> +
> +		if (INTEL_GEN(dev_priv) >= 12)
> +			aud_freq = AUD_FREQ_GEN12;
> +		else
> +			aud_freq = aud_freq_init;
> +
> +		/* use BIOS provided value for TGL unless it is a known bad value */
> +		if (IS_TIGERLAKE(dev_priv) && aud_freq_init !=
> AUD_FREQ_TGL_BROKEN)
> +			aud_freq = aud_freq_init;
> +
> +		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x
> (init value 0x%x)\n",
> +			    aud_freq, aud_freq_init);
> +
> +		dev_priv->audio_freq_cntrl = aud_freq;
>  	}
> 
>  	dev_priv->audio_component_registered = true;
> 
> base-commit: 9d58aa46291d4d696bb1eac3436d3118f7bf2573
> --
> 2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
