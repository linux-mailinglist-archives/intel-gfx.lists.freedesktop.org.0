Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8687B7B4CB8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:41:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87A810E227;
	Mon,  2 Oct 2023 07:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E9210E223;
 Mon,  2 Oct 2023 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696232485; x=1727768485;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1qUwGk01htOg6hilSZjSFVpakohj7jFoYXU7zfjfW7I=;
 b=nGcrTIFh+zlSfoHjpfATSUZon8W9kiLBDQ7QfrWN2NXX17t9vXK1uvJB
 ggPQQDKJ8fgvOnMFuEDCTV2Iev0cemSWppLj21+NFcpz/pS6PMo9XBpUf
 NGKTDljG+MQMCb9AftDJwG5/ocKm7AGi09ECoppor/qG4x8lAcC9m/TcC
 3LMgLjSls63nR6d4+gUgMk/Q/ndaHMLAPZVVfD837bd5A979+g4Z0IhPF
 zA0hQkaUWILSVO75rk1j8XbcjKWmVxy4niXMvgSGr7AeX5wS1I2qfx0fg
 f9I1XpFOZXTFN9Veyhz7ZL3z8uVg8x+4Y3J9c293PcTskAhtnzWZOYXTL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="449086558"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="449086558"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; 
   d="scan'208";a="1443811"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:40:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
In-Reply-To: <20230929205023.1202735-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230929205023.1202735-1-rodrigo.vivi@intel.com>
Date: Mon, 02 Oct 2023 10:41:14 +0300
Message-ID: <871qedii91.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Abstract display info away during
 probe
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> The goal is to have this function ready for Xe to use
> directly. So, let's use the available macro.

Seesm wrong to use DISPLAY_INFO() as an lvalue, and I'm not sure why
this wouldn't work as-is.

But *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

for merging to i915. (xe should come as a backport with cherry-pick -x.)

BR,
Jani


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index a6a18eae7ae8..ce55b968e658 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -926,7 +926,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	else
>  		info = probe_display(i915);
>  
> -	i915->display.info.__device_info = info;
> +	DISPLAY_INFO(i915) = info;
>  
>  	memcpy(DISPLAY_RUNTIME_INFO(i915),
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,

-- 
Jani Nikula, Intel
