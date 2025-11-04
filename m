Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65BC3221B
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482D010E292;
	Tue,  4 Nov 2025 16:49:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DF88MqV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CAA10E292
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 16:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762274966; x=1793810966;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qHDR8o7nlB/uibJQS17JQyFwSlhZjbpk7FncwOfeyTw=;
 b=DF88MqV4QkURDCLl+v1cEox+8vXDX4FzxmIYpmmvH8yLFUMj6sqWPfhV
 U5nOsvATktPO2R5oQ/otegMXfEEGjbZ6xeLaiRM9sM0MYqUhPwIjLEXpM
 w9t8UApP5KCYcYMBp7ne5rCJWhsE0ZNK3ez4mwWW+2Fps7eJrshuReNIR
 5RtbVnnjChk8KId5x8De4uQdOSsBMMJ1vjLfxnbs0ZIO5OAHMwmNLkTOZ
 fzpGQsGnglcWVwYV+pTA3l/e6ealWmnsnEArZZXeG5wqOZhrlrV1ano81
 XNWx1WKL9RDQ6jSqAMpSKd/uQhDj/ETskLgj+YGp0vksJJAmfWpY0EUAr w==;
X-CSE-ConnectionGUID: i6UmYua6QzatBTLiqEqw0A==
X-CSE-MsgGUID: Bv+u34dPTkmrg6BXlPEODA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64525182"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="64525182"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:49:26 -0800
X-CSE-ConnectionGUID: 9iic8SV+QlOxcHGEYy2gKA==
X-CSE-MsgGUID: kfqDLox4RnOj9BqzW/m6TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="191299006"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:49:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH] drm/i915/display: Add default case to
 mipi_exec_send_packet
In-Reply-To: <20251104164150.16795-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251104164150.16795-2-jonathan.cavitt@intel.com>
Date: Tue, 04 Nov 2025 18:49:20 +0200
Message-ID: <51c99a4aa0dac4b06746cc61f9518678db3d7674@intel.com>
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

On Tue, 04 Nov 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Add a default case to the switch case statement in mipi_exec_send_packet
> to prevent attempts to read an uninitialized ret value.  It's unlikely
> the default case will ever occur during regular exeuction, but if more
> MIPI DSI Processor-to-Peripheral transaction types are ever added, then
> having this in place will be a useful safety guard.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Fixes: 23db1577ce2d ("drm/i915/dsi: log send packet sequence errors")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 31edf57a296f..4b815ce6b1fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -171,6 +171,9 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>  	case MIPI_DSI_DCS_LONG_WRITE:
>  		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
>  		break;
> +	default:
> +		ret = -EINVAL;
> +		break;
>  	}
>  
>  	if (ret < 0)

-- 
Jani Nikula, Intel
