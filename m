Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF3C8690D0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E545B10E6EA;
	Tue, 27 Feb 2024 12:43:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKKYh0B4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBBB10E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037831; x=1740573831;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=emzjvYVXMXMkNaLc/oqisJ6ZJWv3xDEBFRGMh/+IMo0=;
 b=IKKYh0B4ulciDLYzr6Wgx1BZeJuuN/AZr3wfmiAiDCY7p11udcbtIZsy
 XfpCynMCfncIltI3AI81bQbBq5CMo/vPoAY93L8jQ8w9b7VYemAlY3ZOA
 I0qFw1QJAf6jBOBATmkBUflqn5725DEH0oeEJy35WGI3yTqCxgIWxdTmy
 ROWMKywXdwjBVOmdfop5To94JFvu6nfbebFVRPsXTAaBTEgyfozhmnoVt
 SAAdMy0a89++DrMe7JMPCNgrtU61jm0U9bPcCgeaZ/e63v8unbbfAXpup
 zC7E1ljppE2I74WhnmdHdITt3pfNeizMR1kyc/FPf0snUxl4E1RM1QqtM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3247316"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3247316"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:43:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7242281"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:43:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 4/4] drm/i915: Show bios vbt when read from
 firmware/spi/oprom
In-Reply-To: <20240220223129.3822480-5-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
 <20240220223129.3822480-5-radhakrishna.sripada@intel.com>
Date: Tue, 27 Feb 2024 14:43:34 +0200
Message-ID: <87wmqqhybt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 20 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> Make debugfs vbt only shows valid vbt when read from ACPI opregion.
> Make it work when read from firmware/spi/pci oprom cases.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 30 +++++++++++++++++------
>  1 file changed, 23 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 4cd338ed362d..b9b4ebc0ecd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3723,14 +3723,30 @@ static int intel_bios_vbt_show(struct seq_file *m, void *unused)
>  	struct drm_i915_private *i915 = m->private;
>  	const void *vbt;
>  	size_t vbt_size;
> +	bool need_cleanup = false;
>  
> -	/*
> -	 * FIXME: VBT might originate from other places than opregion, and then
> -	 * this would be incorrect.
> -	 */
> -	vbt = intel_opregion_get_vbt(i915, &vbt_size);
> -	if (vbt)
> -		seq_write(m, vbt, vbt_size);
> +	vbt = firmware_get_vbt(i915, &vbt_size);
> +
> +	if (!vbt)
> +		vbt = intel_opregion_get_vbt(i915, &vbt_size);
> +
> +	if (!vbt && IS_DGFX(i915)) {
> +		vbt = spi_oprom_get_vbt(i915, &vbt_size);
> +		need_cleanup = true;
> +	}
> +
> +	if (!vbt) {
> +		vbt = oprom_get_vbt(i915, &vbt_size);
> +		need_cleanup = true;
> +	}

We can't duplicate all of that, needs to be a single function that gets
used in both intel_bios_init() and here.

BR,
Jani.

> +
> +	if (!vbt)
> +		return 0;
> +
> +	seq_write(m, vbt, vbt_size);
> +
> +	if (need_cleanup)
> +		kfree(vbt);
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel
