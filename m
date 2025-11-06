Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54212C3A578
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D735210E88F;
	Thu,  6 Nov 2025 10:47:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UOl7VliK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EB210E88F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 10:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426059; x=1793962059;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5mFqXsIwR0WcxMpNwyrDqinnKo48ONcrvX7U1h0pF14=;
 b=UOl7VliKZcPQbgr6Y7bztxI+wDOo1xK/xjKumMLZe54L7714xBih1/Vj
 hqS0kBzjTZRenQgH5ljPM+5aDxcgjWK8LLi21ZmCtDo+rln3lRZMbt9Gu
 LCgUo1k9ekYV6f05XStIwQJDP7LVAqESv69vrBBMrGv4jsw0GTmxfTJ6Q
 +koVs42ClIdmryAXJM9QsO5bu9WxTYs62KOAsQw8NU80ULVISIPNSV6lL
 pbKgHFzvd/yAfA9y3u4CkepzaTtPGc6N3SJg0yIjQFct8EFyzghrd0N0F
 f1/UBcvv/3aQlid12Q1a132DmLGQNNoIJvrVp76c306m0HTUaThE9Wexd w==;
X-CSE-ConnectionGUID: +q7VuG4TSoqAuKl7EPWL1Q==
X-CSE-MsgGUID: 7DB6ACdGRHKPw5gzZVSCUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64473687"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64473687"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:47:38 -0800
X-CSE-ConnectionGUID: Nw0PqP9aRZ+2s1l+pcZPeg==
X-CSE-MsgGUID: VvJTMfzXSay86RfEewNM/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192005258"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:47:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Initialize the ret variable for
 default case
In-Reply-To: <20251106085354.1237867-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106085354.1237867-1-animesh.manna@intel.com>
Date: Thu, 06 Nov 2025 12:47:34 +0200
Message-ID: <993d3120688c81dfb80a2e4e42504b01f81d1791@intel.com>
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

On Thu, 06 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> To make the coverity tool happy initialize the variable.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

See https://lore.kernel.org/r/20251104164150.16795-2-jonathan.cavitt@intel.com

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 31edf57a296f..fb9689acf814 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -171,6 +171,9 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>  	case MIPI_DSI_DCS_LONG_WRITE:
>  		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
>  		break;
> +	default:
> +		ret = 0;
> +		break;
>  	}
>  
>  	if (ret < 0)

-- 
Jani Nikula, Intel
