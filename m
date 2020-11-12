Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566372B0EE9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23896E423;
	Thu, 12 Nov 2020 20:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A6B46E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:16:18 +0000 (UTC)
IronPort-SDR: MdjySEqMUbY2JaWM6S5zzXCyuGCprHwpds5yZ48t5GoBtjTB9KMBkJKruB3sPNz7lYQvdYqt7m
 ET/f1dl0FJKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="157393167"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="157393167"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:16:17 -0800
IronPort-SDR: piIE2Lcrs9hSQG5rc7x1+CZtM+w+1Lb38ZFvjl+Z2rtEQD/dRhcsJORu7I3CNNrjoAMWADzjoF
 gg+jeqgKg3Uw==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="309346095"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:16:17 -0800
Date: Thu, 12 Nov 2020 15:17:31 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201112201731.GB1198919@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <3148dbcb1b690dcf57b1cd2071b6a26d5c30eccf.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3148dbcb1b690dcf57b1cd2071b6a26d5c30eccf.1605181350.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: remove last users of
 I915_READ_FW()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 12, 2020 at 01:44:34PM +0200, Jani Nikula wrote:
> Use the preferred intel_uncore_read_fw() instead.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 77e76b665098..7cbca268cb61 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1238,10 +1238,10 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
>  		u32 rpdown, rpdownei;
>  
>  		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
> -		rpup = I915_READ_FW(GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
> -		rpupei = I915_READ_FW(GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
> -		rpdown = I915_READ_FW(GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
> -		rpdownei = I915_READ_FW(GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
> +		rpup = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
> +		rpupei = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
> +		rpdown = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
> +		rpdownei = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
>  		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
>  
>  		seq_printf(m, "\nRPS Autotuning (current \"%s\" window):\n",
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
