Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3701E80C3B3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 09:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C468D10E36A;
	Mon, 11 Dec 2023 08:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49CE10E36A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 08:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702284856; x=1733820856;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=+EFY08HCBNIuvlXVlzXN//yZGf+FO1KMtg0dTM2eRCQ=;
 b=bhw/h1SHpVzXAv4igZHIy1opIziXTDZqgBe/HnKylkBWfZ8J4UV/2jr2
 OAWPP7oVTfWXOyEouMfIH4b9dy7jUn782lr75xHUhhuXXIKBShzHI87eu
 vIgrWjSqPIrZGMVjJuEPsZnQROZSeRG6rPXGD1Tu1Szy0AteRgzClIRxH
 EnE+4QRs+H3w7nA3Ic463X69zrkk65DbvZjkDsyRAql0v86irDnYAEMcQ
 P8YSZfdbBr2OkK8klwHS1XRLqklVd2RR25OVDXB0zfuAPaocX1NQMDMwH
 9qjvPlVj6UWtDbB47YBEUEkrbZQ/ByNRpUL/uS/BsGLkRCBf9GANbTXlQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="461091816"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="461091816"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 00:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="14338601"
Received: from kbalak2x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.68])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 00:54:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Update dfp caps only if its a branch device
In-Reply-To: <20231211051127.2774407-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231211051127.2774407-1-ankit.k.nautiyal@intel.com>
Date: Mon, 11 Dec 2023 10:54:11 +0200
Message-ID: <87zfyhxgp8.fsf@intel.com>
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

On Mon, 11 Dec 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Avoid checking for Downstream Facing Port capabilities,
> if its not a DP branch device.

Why?

The commit message *always* needs to answer the question why. This
commit message describes what the patch does in English.


BR,
Jani.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3b2482bf683f..bef797b63000 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5502,6 +5502,9 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  
> +	if (!drm_dp_is_branch(intel_dp->dpcd))
> +		return;
> +
>  	intel_dp->dfp.max_bpc =
>  		drm_dp_downstream_max_bpc(intel_dp->dpcd,
>  					  intel_dp->downstream_ports, drm_edid);

-- 
Jani Nikula, Intel
