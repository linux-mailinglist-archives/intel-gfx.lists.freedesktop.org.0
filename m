Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2200B5F3A00
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 01:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921DA10E097;
	Mon,  3 Oct 2022 23:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CED10E097
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 23:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664840654; x=1696376654;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bzxcGuUyYzzIHK0qfRCjwYvo4RhVRR+xpI2Qa4LVQ3Q=;
 b=G5EzVW6/PR8f2xTP9mwIvvKf99AY6UAXEVT+pBxCKyh4rEZeALzMxn1R
 WV33wNCU/XSBqJeVEIBTgKtdUMW3K/TWS48eg47rM3YOX8zlEggoztP6l
 xGmXhhGmMd63Ux5jHuptQ/knSsGeLnBwdh+jWgS97Di8mD0Acf6CYt1Hi
 v5xHtGjzvWpzcPpe5em0ewi7KRxv/oK5DxrHnxLPN0VKH/ATMUXZdC/T4
 Itt5i41f8ffHWy11PVDL4WAPcej+FGIpD6tRAv++JqHkLPQ+BaNwk8xSS
 qlqLG611OHkdeiFwgGF6hsz2SVkHvf+LJal0krARTwI1YVT5DHm/DQhWM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366886040"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="366886040"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:44:13 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="798927259"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="798927259"
Received: from kbalinsk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.7.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:44:11 -0700
Date: Tue, 4 Oct 2022 01:44:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YztzyOJh6Bsu3CX2@ashyti-mobl2.lan>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-5-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003223258.2650934-5-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: use proper helper for
 register updates
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

[...]

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2595ec5aeb77f6..c07c97f4036abd 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -885,38 +885,28 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  		wm = intel_calculate_wm(pixel_rate, &pnv_display_wm,
>  					pnv_display_wm.fifo_size,
>  					cpp, latency->display_sr);
> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
> -		reg &= ~DSPFW_SR_MASK;
> -		reg |= FW_WM(wm, SR);
> -		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW1, DSPFW_SR_MASK, FW_WM(wm, SR));

any chance to break these lines in 80 characters? (valid for the
rest of the lines)

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
