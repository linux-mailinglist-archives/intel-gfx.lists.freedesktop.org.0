Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B09AD8B9934
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 12:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAA410F19C;
	Thu,  2 May 2024 10:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VdKTPNOb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EBD210F19C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 10:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714646632; x=1746182632;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3sZBRIgqoROawobAb6i4/vhs49OYQKgDcjHFlvkOueg=;
 b=VdKTPNOb5nwb/Z/+23yj81h8Vjerkkoie+Jyl9OWspAFnCEkPP5YHT93
 eddpb5KDkqd+yS4J7OxDd9mrnmBeivAgY2Ki+2Xur157d4FCNDU99z8W0
 r5RsPDNONYs/zNdZcbvm1K0//xknfDhLNUbyO9TNUF4+QbkQPoJeo+zs2
 ddEz321hkre5Ux67Cx9I6JzKXQEGILugeYSC9tWsLfnRLOjw7Xqlp43AU
 PDctUL7Qhllfkn8jezDbdSyExBa106N6mYoRl7Tj0TYVFQm5XOdcUSKPb
 VpN4M+KggUZvaRgkESQosa0D+xK6lE1lAVJAuOJZeBZ/yN9wW6C12lp8+ A==;
X-CSE-ConnectionGUID: RIp266asT/e0zjuuRAPv7A==
X-CSE-MsgGUID: w34N1YY4QIeD9YOb1GUVOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="21811527"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="21811527"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 03:43:51 -0700
X-CSE-ConnectionGUID: 5GHbjvfdS1aKfKGpKTSbmQ==
X-CSE-MsgGUID: PGXG0UIRR1aswUwRmq7oZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="58280905"
Received: from unknown (HELO localhost) ([10.245.245.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 03:43:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after connector
 type check
In-Reply-To: <20240430064030.887080-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240430064030.887080-1-suraj.kandpal@intel.com>
 <20240430064030.887080-2-suraj.kandpal@intel.com>
Date: Thu, 02 May 2024 13:43:47 +0300
Message-ID: <871q6kpk7w.fsf@intel.com>
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

On Tue, 30 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Move assignment of aux after connector type check as port may not
> exist if connector is not DPMST.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 92b03073acdd..92be53d7c81f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -687,15 +687,16 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
>  					bool *hdcp2_capable)
>  {
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct drm_dp_aux *aux = &connector->port->aux;
> +	struct drm_dp_aux *aux;
>  	u8 bcaps;
>  	int ret;
>  
>  	*hdcp_capable = false;
>  	*hdcp2_capable = false;
> -	if (!intel_encoder_is_mst(connector->encoder))
> +	if (intel_encoder_is_mst(connector->encoder))

Suspicious.

>  		return -EINVAL;
>  
> +	aux = &connector->port->aux;
>  	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
>  	if (ret)
>  		drm_dbg_kms(&i915->drm,

-- 
Jani Nikula, Intel
