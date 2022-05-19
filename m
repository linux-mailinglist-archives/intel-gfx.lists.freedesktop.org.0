Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB4F52CF56
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 11:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08EAF11B20A;
	Thu, 19 May 2022 09:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86C611B20A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 09:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652952420; x=1684488420;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uE30OZup+TIp3aPqfIBHAVLTzIBkA2YjYeN3kzwz7rU=;
 b=CZpPzEb5p/xF58EI1o/RksmK/CsDbGsxlzqaJdctrxMVR/o1ofVVNjD/
 fBR27GD036NdjpdVvY8i1wpxzCN7thwwWGg7l4xMt/rbholG/Fv58dhLZ
 R+NVQP/GltltIDW9OzpcKY9LuM7KoKxC/a21HqzghVkjtAx9rKQHF8xcu
 vv9++i6Shzqs8nx/yTb446gRbmWPy6Zd3tPJgSu0+bQrM2kpdzUenCIOD
 S2IZ394WzmXjHaStB6CVml79CfUPc2osPoM7A+d+Q4bYUzq0Vu8NLGeI1
 rmK2uYJyTsO55gZ4/YOju7TVkp4Ge4MA1JPPDyt1anaWI6xhUs2afbv9J w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="272073307"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="272073307"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 02:27:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="570111390"
Received: from tszulist-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.146.157])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 02:26:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220518130716.10936-4-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
 <20220518130716.10936-4-anshuman.gupta@intel.com>
Date: Thu, 19 May 2022 12:26:54 +0300
Message-ID: <87h75ldg9t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/dg2: DG2 MBD config
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 May 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> Add DG2 Motherboard Down Config check support.
>
> BSpec: 44477
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
>  drivers/gpu/drm/i915/i915_drv.h               | 9 +++++++++
>  2 files changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 3dcd54517b89..dec7628522c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1271,6 +1271,8 @@ intel_opregion_vram_sr_required(struct drm_i915_private *i915)
>  
>  	if (IS_DG1(i915))
>  		return intel_opregion_dg1_mbd_config(i915);
> +	else if (IS_DG2_MBD(i915))
> +		return true;
>  
>  	return false;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 10f273800645..c5ecc490dced 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1071,6 +1071,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
>  #define IS_DG2_G12(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
> +/*
> + * FIXME: Need to define a new SUBPLATFORM INTEL_SUBPLATFORM_DG2_MBD
> + * for PCI id range 5690..5695, but G10, G11 SUBPLATFROM conflicts
> + * with those pci id range.
> + */
> +#define DG2_MBD_CONFIG_MASK	GENMASK(7, 4)
> +#define DG2_MBD_CONFIG_VAL	FIELD_PREP(DG2_MBD_CONFIG_MASK, 9)
> +#define IS_DG2_MBD(dev_priv) (IS_DG2(dev_priv) && \
> +			      (INTEL_DEVID(dev_priv) & DG2_MBD_CONFIG_MASK) == DG2_MBD_CONFIG_VAL)

No. Please don't do *any* magic masking or comparison of PCI ID bits or
bitfields.

BR,
Jani.

>  #define IS_ADLS_RPLS(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
>  #define IS_ADLP_N(dev_priv) \

-- 
Jani Nikula, Intel Open Source Graphics Center
