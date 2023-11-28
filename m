Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E9C7FBA29
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DAF10E4FB;
	Tue, 28 Nov 2023 12:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F4810E4FB;
 Tue, 28 Nov 2023 12:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701174672; x=1732710672;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6CIxXw+TBKO5N7bYTOjAkWPVTtUEkCrK3bawC7K+ryM=;
 b=QfnQc/9at/iEA9H9gaPxwQdQIYJUWeaa8aYmq0GxMsLMxY+TQibfzhyf
 OIXbKOCpmpeZA2KrzE/KH20pa445SZCjUddpkxkfDl8SH/WODSsbeP5Xo
 ZYCq1aDPw06GCzgBRCxIA3Zl6S/cYT376JSkyqsMWEDQiwRtfcVplp2jb
 3N1sYXHUYXoiIY9MqqmC7yHfJHsGdon+pTQ+068gP1Yxr0uzubMSlT+un
 dPieRX+z9XglNMncfEcVZf3EdzFOc0IkEsFYnmfk6Yh543ckK90PXBaDG
 8b3rHfE+z+ONXmh7tvrdPnh20jJ+PPyJKL1A4jjtg4o46LpGGhz6uz4H4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="11611175"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="11611175"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:31:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="859413396"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="859413396"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:31:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231126214142.102106-1-sergeantsagara@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231126214142.102106-1-sergeantsagara@protonmail.com>
Date: Tue, 28 Nov 2023 14:31:07 +0200
Message-ID: <87plzu6ovo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/irq: Improve error logging for
 unexpected DE Misc interrupts
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
Cc: dri-devel@lists.freedesktop.org,
 Rahul Rameshbabu <sergeantsagara@protonmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 26 Nov 2023, Rahul Rameshbabu <sergeantsagara@protonmail.com> wrote:
> Dump the iir value in hex when the interrupt is unexpected.
>
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9652#note_2178501
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Pushed to drm-intel-next. Thanks for the patch and review.

BR,
Jani.


> ---
>
> Notes:
>     Changes:
>     
>       v1->v2:
>         - Change format specifier to pad minimum width
>         - https://lore.kernel.org/intel-gfx/20231123175638.27650-1-sergeantsagara@protonmail.com/
>
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index bff4a76310c0..7c6f20cd951e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -896,7 +896,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  	}
>  
>  	if (!found)
> -		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
> +		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt: 0x%08x\n", iir);
>  }
>  
>  static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,

-- 
Jani Nikula, Intel
