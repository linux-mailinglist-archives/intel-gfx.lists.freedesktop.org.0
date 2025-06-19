Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90729AE0023
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 10:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DC410E9D6;
	Thu, 19 Jun 2025 08:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KytUPvVZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D1110E0D9;
 Thu, 19 Jun 2025 08:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750322634; x=1781858634;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=02Tbzp/VDrgoyN5KFZamHbYJXZ0wGxJlMTiksz14ABQ=;
 b=KytUPvVZAJgfOTWSqi970OiduG0pBU0wJwFZVHgPsZSV7wPe8I8O8vLl
 TnJxgGFcs/Ss/OA7tpgcB5M99IzOQhsyWtmIky9Z3fR3kxW3JI2cidZlr
 PCCFynXpm4r59Q4qCPEdhKK4rcT7525oOO0Qpl7RW5CZ6OEkWAfPcJlex
 LyMCaq8NqwWj6oaUqFMDdmKVMzfJ1EHt3qnQW67+0cJjzGN08mHh9txYW
 kpa+kehmWd/56I95W4q+C4nO6KSuo9TyvXk6FA9zi84SqeBtvJ7AtA8vG
 PESWzyN25ZVcx4KraY2a5zGKK42OhA4dQPORh+AcdOsnkWXcq4AKFxwDg w==;
X-CSE-ConnectionGUID: w1D4rNW1QJWSeT2GGV8WXw==
X-CSE-MsgGUID: 8MdosJGeQiGZ8c9tvhg6qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56389983"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="56389983"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:43:38 -0700
X-CSE-ConnectionGUID: 0yqZLaQbQ1KKl6XNvamw2w==
X-CSE-MsgGUID: r1BurEXPRwSpJymVE0Jj2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="155145414"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:43:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify
 content type status
In-Reply-To: <20250619040519.3375518-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250619040519.3375518-1-suraj.kandpal@intel.com>
Date: Thu, 19 Jun 2025 11:43:33 +0300
Message-ID: <9447239ea5d3bd0e42383868c3da0e5dcda0412a@intel.com>
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

On Thu, 19 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> From PTL we need to move to using HDCP2_STREAM_STATUS to check if
> the written content type info is the same as we expect since
> HDCP2_AUTH_STREAM is inaccessible to us now.

The commit message talks about "verify" and "check", but in reality it's
just a warning and move on.

When can this happen?

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 7bd775fb65a0..131fc0cae13b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -806,9 +806,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  	enum port port = dig_port->base.port;
>  	int ret;
>  
> -	drm_WARN_ON(display->drm, enable &&
> -		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
> -		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
> +	if (DISPLAY_VER(display) < 30)
> +		drm_WARN_ON(display->drm, enable &&
> +			    !!(intel_de_read(display,
> +			    HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
> +			    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);

As a side note, can we please stop shoving complex intel_de_reads()
inside a WARN_ON()? Separate the read and conditions for the warn.

Moreover, stream_type is u8, and it's compared some boolean logic.

>  
>  	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
>  	if (ret)
> @@ -824,6 +826,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  		return -ETIMEDOUT;
>  	}
>  
> +	if (DISPLAY_VER(display) >= 30)
> +		drm_WARN_ON(display->drm, enable &&
> +			    !!(intel_de_read(display,
> +			    HDCP2_STREAM_STATUS(display, cpu_transcoder, port))
> +			    & STREAM_TYPE_STATUS) != data->streams[0].stream_type);

And this is now duplicated in two places.

Please deduplicate and simplify.

BR,
Jani.

>  	return 0;
>  }

-- 
Jani Nikula, Intel
