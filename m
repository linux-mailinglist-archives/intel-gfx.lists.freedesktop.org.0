Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E6AE02FE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 12:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C580F10E032;
	Thu, 19 Jun 2025 10:59:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRGnQVHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226E110E032;
 Thu, 19 Jun 2025 10:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750330746; x=1781866746;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6OaW5dojka7UG299ryRyuYJCj5KVLFv2wR20wz61rpU=;
 b=XRGnQVHzIfgCGxBVv9fVc+UMOo7xGG6P3V44SlY3r2IzpyD97UNkvC40
 WCcxHcukFQkwM0SOFGoO6lrB8FIzILglyzVDDZdHECTiXNks0isQsT1kO
 o57i9ReR7vpD0dMLT0pL8wBUpoYsP7qsXSKT5zvdkl62ig9ES3RZ41ud+
 6NsW2huy3xaIwwU7M0tM4fVvgBzJEBi54WQSwZF02yCqJfTPYAacJaHva
 ZG6IKXcB8V3fvAmZSUihNHqnopbzf4NifUYHI4C29CyzwDOEOZdisIFnX
 7Gm6qpal9u7e2ODQ4Ej9iMzh4Z4MJ20qTTPqyoVzQ6QZNoV7WVdf/98Ft Q==;
X-CSE-ConnectionGUID: dyy7ysKNTrqU2rZmXgltLg==
X-CSE-MsgGUID: wFdfxbHnThKsXndiNRLoqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63263008"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="63263008"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:59:06 -0700
X-CSE-ConnectionGUID: AHe3kfPoQzausD+tlVw2Xw==
X-CSE-MsgGUID: P0gkzw7PTmSQMAl/SZwdng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="156102949"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:59:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hdcp: Do not use inline intel_de_read
In-Reply-To: <20250619102804.3377807-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250619102804.3377807-1-suraj.kandpal@intel.com>
 <20250619102804.3377807-2-suraj.kandpal@intel.com>
Date: Thu, 19 Jun 2025 13:59:01 +0300
Message-ID: <c8af491ced7eba64ffcd7ad84d260948f3fd0f01@intel.com>
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
> Do not use intel_de_read() inline in the WARN_ON functions.
> While we are at it make the comparision for stream_type u8 to u8.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 7bd775fb65a0..3620f7853c8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -805,10 +805,13 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  	enum pipe pipe = (enum pipe)cpu_transcoder;
>  	enum port port = dig_port->base.port;
>  	int ret;
> +	u32 val;
> +	u8 stream_type;
>  
> +	val = intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port));
> +	stream_type = REG_FIELD_GET8(AUTH_STREAM_TYPE, val);

The size in GET8 is not really about the size of the field, it's about
the size of the register/value, and how the field is defined.

It should be REG_FIELD_GET() for 32-bit registers.

But then should AUTH_STREAM_TYPE be defined via REG_GENMASK()?

#define   AUTH_STREAM_TYPE_MASK		REG_GENMASK(31, 31)

Would be more consistent:

	stream_type = REG_FIELD_GET(AUTH_STREAM_TYPE_MASK, val);

>  	drm_WARN_ON(display->drm, enable &&
> -		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
> -		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
> +		    stream_type == data->streams[0].stream_type);

Comparing it like this certainly makes much more sense, but shouldn't it
remain != instead of ==?

BR,
Jani.

>  
>  	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
>  	if (ret)

-- 
Jani Nikula, Intel
