Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C3E300F0A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 22:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6EA189F08;
	Fri, 22 Jan 2021 21:41:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043CD89F08
 for <Intel-GFX@lists.freedesktop.org>; Fri, 22 Jan 2021 21:41:25 +0000 (UTC)
IronPort-SDR: zP1RK8PLIu7eczdhX6HFrPOVRQNDsjfLIYKfICMBu1yg0Cxr5DSKHn1J1Z3nbyO74QGbWnT/1J
 DFkr82yfaBYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="243587704"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="243587704"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 13:41:21 -0800
IronPort-SDR: QoQsMMWk5d5GdnA+rukyFut5VDONbCSuos2HfdBrzynBoGyFasvtdY5cpu+Je1v68KKgmEE5pk
 gDScYdHpgOKg==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="428221765"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.154.53])
 ([10.212.154.53])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 13:41:21 -0800
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20210120203132.1558785-1-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <03cbe633-42ac-6c90-faaa-80f38742b0bf@intel.com>
Date: Fri, 22 Jan 2021 13:41:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210120203132.1558785-1-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Use platform specific defaults
 for GuC/HuC enabling
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/20/2021 12:31 PM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> The meaning of 'default' for the enable_guc module parameter has been
> updated to accurately reflect what is supported on current platforms.
> So start using the defaults instead of forcing everything off.

Worth noting that everything will still be off as that's the default for 
all platforms that are out of force_probe, but this way we're more 
flexible for what comes next.

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_params.c | 2 +-
>   drivers/gpu/drm/i915/i915_params.h | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 6939634e56ed..ec1561f5b051 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -160,7 +160,7 @@ i915_param_named_unsafe(edp_vswing, int, 0400,
>   i915_param_named_unsafe(enable_guc, int, 0400,
>   	"Enable GuC load for GuC submission and/or HuC load. "
>   	"Required functionality can be selected using bitmask values. "
> -	"(-1=auto, 0=disable [default], 1=GuC submission, 2=HuC load)");
> +	"(-1=auto [default], 0=disable, 1=GuC submission, 2=HuC load)");
>   
>   i915_param_named(guc_log_level, int, 0400,
>   	"GuC firmware logging level. Requires GuC to be loaded. "
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index f031966af5b7..3f1b4ad6abdf 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -59,7 +59,7 @@ struct drm_printer;
>   	param(int, disable_power_well, -1, 0400) \
>   	param(int, enable_ips, 1, 0600) \
>   	param(int, invert_brightness, 0, 0600) \
> -	param(int, enable_guc, 0, 0400) \
> +	param(int, enable_guc, -1, 0400) \
>   	param(int, guc_log_level, -1, 0400) \
>   	param(char *, guc_firmware_path, NULL, 0400) \
>   	param(char *, huc_firmware_path, NULL, 0400) \

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
