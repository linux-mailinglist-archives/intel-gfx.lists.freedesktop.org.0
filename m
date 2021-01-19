Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0131B2FB587
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 12:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659736E1A7;
	Tue, 19 Jan 2021 11:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB176E1A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 11:03:07 +0000 (UTC)
IronPort-SDR: QZTCSK9NvtADeoi+Hd0svIXCpH//IjjhWzv+/gyY1r5rQVyAjSGBfBOCgqTGccUshpGW0vyfvO
 aDwujuyZAj+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="240448390"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="240448390"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 03:03:05 -0800
IronPort-SDR: 5qVHKr2yxKNUQQLILmCQ6ZA8f74GxID0Mh+XUwZOeeLpOvturVAD0NleXJSQ5NsowwyvBbugGv
 Y2+okL7Auo8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="365712547"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 19 Jan 2021 03:03:04 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 19B3A5C20E6; Tue, 19 Jan 2021 13:00:19 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210119094053.6919-5-chris@chris-wilson.co.uk>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <20210119094053.6919-5-chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 13:00:19 +0200
Message-ID: <87im7tgpj0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Mark per-engine-reset as
 supported on gen7
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The benefit of only resetting a single engine is that we leave other
> streams of userspace work intact across a hang; vital for process
> isolation. We had wired up individual engine resets for gen6, but only
> enabled it from gen8; now let's turn it on for the forgotten gen7. gen6
> is still a mystery as how to unravel some global state that appears to
> be reset along with an engine (in particular the ppgtt enabling in
> GFX_MODE).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 39608381b4a4..020b5f561f07 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -455,6 +455,7 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	.has_llc = 1, \
>  	.has_rc6 = 1, \
>  	.has_rc6p = 1, \
> +	.has_reset_engine = true, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
>  	.ppgtt_type = INTEL_PPGTT_ALIASING, \
> @@ -513,6 +514,7 @@ static const struct intel_device_info vlv_info = {
>  	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
>  	.has_runtime_pm = 1,
>  	.has_rc6 = 1,
> +	.has_reset_engine = true,
>  	.has_rps = true,
>  	.display.has_gmch = 1,
>  	.display.has_hotplug = 1,
> @@ -571,8 +573,7 @@ static const struct intel_device_info hsw_gt3_info = {
>  	.dma_mask_size = 39, \
>  	.ppgtt_type = INTEL_PPGTT_FULL, \
>  	.ppgtt_size = 48, \
> -	.has_64bit_reloc = 1, \
> -	.has_reset_engine = 1

Oh we already did on hsw.

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +	.has_64bit_reloc = 1
>  
>  #define BDW_PLATFORM \
>  	GEN8_FEATURES, \
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
