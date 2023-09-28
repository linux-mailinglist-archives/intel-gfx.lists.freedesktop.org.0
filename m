Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 405077B1628
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 10:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9789A10E5EC;
	Thu, 28 Sep 2023 08:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1768A10E5EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 08:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695890258; x=1727426258;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dl9h3p0Rf+BeAyRPj1EvAHcLKuUHugl1fhl48EdpgDI=;
 b=WRiZLRvuQTOJs54fPpxLg7UbuPr/9Ob8EIBogTW8Wh237n3hxoU2tbE3
 7YndY3SXj+lzDKhhuRIQ+kpof5rXe9jRa8TUJnUGHFaenl69EHXZpcL6/
 Tqxz8Oa0YmLpjlL75wP6X9qfYWE3MxBvMZR2ZwRn4MBggkSMW+ee+ttJa
 IsNQuAJHzKJArV2lu+RoiLGDEgTV1k8YGhLMZ5Ai1Io7m0Zid1hW+OqXz
 5MNQfqDvuTWtkfxJiXNcMaqpEMVF8iY1RXnKOCrdrJFr64utdWMjPbLXu
 2cOSDq6GQogCicC4r3kICDLSy29GNvnKdcSVxtK8mcRvBUfoEKNhULxWa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="367074170"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="367074170"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="996471727"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="996471727"
Received: from vrohpcvpnmu01.ger.corp.intel.com (HELO localhost)
 ([10.252.54.82])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:37:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230927101729.18681-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230927101729.18681-1-vinod.govindapillai@intel.com>
 <20230927101729.18681-3-vinod.govindapillai@intel.com>
Date: Thu, 28 Sep 2023 11:37:34 +0300
Message-ID: <874jjek81d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/xe2lpd: update the dsc feature
 capability
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 27 Sep 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Update the global dsc flag based on the display capabilities
> reported.
>
> Bspec: 71161
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index a6a18eae7ae8..e51506e37384 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1065,6 +1065,13 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>  			display_runtime->has_dsc = 0;
>  	}
>  
> +	if (DISPLAY_VER(i915) >= 20) {
> +		u32 cap = intel_de_read(i915, XE2LPD_DE_CAP);
> +
> +		if (REG_FIELD_GET(XE2LPD_DE_CAP_DSC_MASK, cap) == 1)

Shouldn't the field values be defined too? Why the magic 1?

BR,
Jani.

> +			display_runtime->has_dsc = 0;
> +	}
> +
>  	return;
>  
>  display_fused_off:

-- 
Jani Nikula, Intel
