Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEF673DEFB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C231310E04B;
	Mon, 26 Jun 2023 12:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1721410E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687782231; x=1719318231;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=tGtYRN4b7lRlvDvmKI5Q+CEJjEbPv46LrjEnab2n0CU=;
 b=j/0Jw9R2vBmk1JcxeCdDN2WPb/ji5IJ5MCLvmhAQBG3ZIp/PXRxjsoto
 vjNZ08klZtBG3AS6XQRMXZNern8QWJRJ44BU/ydEes5UuhmUors1PLzsr
 mZWarm9GNLml8hpMH0MWsiacikvyk3lbJyNhTa1T4hfsVfLU88+eCg/jL
 yGhV+iKtP4KWqWi8NXOjsm/a1XxxJwPrk/3jP4dSRJ8gYlRf8lLMHmPTe
 QyA6+sicsLpdEZ4yWJsXSnpClyyZ0h82McZRyBQwgcMFQso/XkmgWe5DQ
 9L0HKrUYofnfvbfLPxX1cN3AFj/YbfO+33GQiGHNz4VDTXQYKkPxqsfI1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="360116358"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="360116358"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:23:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="693457589"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="693457589"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:23:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626055444.1113796-3-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
 <20230626055444.1113796-3-chaitanya.kumar.borah@intel.com>
Date: Mon, 26 Jun 2023 15:23:26 +0300
Message-ID: <87jzvqv2dd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/color: For MTL convert 24 bit
 lut values to 16 bit
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

On Mon, 26 Jun 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> For MTL and beyond, convert back the 24 bit lut values
> read from HW to 16 bit values to maintain parity with
> userspace values. This way we avoid pipe config mismatch
> for pre-csc lut values.
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 25c73e2e6fa3..856191640e71 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3477,6 +3477,14 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
>  	for (i = 0; i < lut_size; i++) {
>  		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
>  
> +		/*
> +		 * For MTL and beyond, convert back the 24 bit lut values
> +		 * read from HW to 16 bit values to maintain parity with
> +		 * userspace values
> +		 */
> +		if (DISPLAY_VER(dev_priv) >= 14)
> +			val = mul_u32_u32(val, (1 << 16)) / (1 << 24);
> +

Here too please add a small helper for the conversion.

BR,
Jani.

>  		lut[i].red = val;
>  		lut[i].green = val;
>  		lut[i].blue = val;

-- 
Jani Nikula, Intel Open Source Graphics Center
