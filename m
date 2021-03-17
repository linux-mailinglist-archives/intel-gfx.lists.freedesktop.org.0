Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0891133F662
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 18:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E1256E13A;
	Wed, 17 Mar 2021 17:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752806E13A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 17:15:15 +0000 (UTC)
IronPort-SDR: AkRh3SgbKsE/IflPrWsPUDy9pFXkzwpe1Qzi3gRGvrBEYjjigbZZ2x8IDmuxz3KXgMr0FCt7w0
 z1sAJ5pr8LUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="186150202"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="186150202"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:15:14 -0700
IronPort-SDR: 8B+ZV5v9yBjAPqy7nXS7ReISYzjVADj8cWPgZ7aAPBE3b8EpLCLJf4xnr866ivCHW5++SyoxO/
 PVp2KOSnEXnQ==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="406009787"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:15:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210311153415.3024607-8-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
 <20210311153415.3024607-8-matthew.d.roper@intel.com>
Date: Wed, 17 Mar 2021 19:15:09 +0200
Message-ID: <87k0q5og6a.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 07/23] drm/i915/xelpd: add XE_LPD display
 characteristics
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

On Thu, 11 Mar 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> Let's start preparing for upcoming platforms that will use an XE_LPD
> design.
>
> v2:
>  - Use the now-preferred "XE_LPD" term to refer to this design
>  - Utilize DISPLAY_VER() rather than a feature flag
>  - Drop unused mbus_size field (Lucas)
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 5bfd94e2cc6f..3f06502e1d85 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -936,6 +936,16 @@ static const struct intel_device_info adl_s_info = {
>  	.dma_mask_size = 46,
>  };
>  
> +#define XE_LPD_FEATURES \
> +	.display_ver = 13,						\

I guess this begs the question why .display_ver and not
.display.version, if we want to keep the display substruct.

Side note, a lot of the stuff below should be moved under display too,
but that's for another series.

BR,
Jani.

> +	.display.has_psr_hw_tracking = 0,				\
> +	.abox_mask = GENMASK(1, 0),					\
> +	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
> +	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |	\
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
> +	.ddb_size = 4096,						\
> +	.num_supported_dbuf_slices = 4
> +
>  #undef GEN
>  #undef PLATFORM

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
