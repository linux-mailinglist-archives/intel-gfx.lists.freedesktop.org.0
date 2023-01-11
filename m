Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C80B665D19
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 14:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF83410E06A;
	Wed, 11 Jan 2023 13:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5622B10E06A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 13:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673445268; x=1704981268;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=HHAVehnLuWa6ydxMQHWjV4KkHwUvRiHdwht22uBU7iU=;
 b=jAXQ+zHLh4ZMnL1EDj/1AvDNrWbqOQ17G1IM0JJ6DOkCKnIdmIQCyuA1
 5I658/THuilqCOnva3rBYHzVFsrkN6v6c24sbitNn8kFH6/Nsf8QMnfAv
 321cBj3iPKOy6RkHgJNKOv5fndWFFZBYBd7T4ado/aYZBjh+LIQns3Awk
 CBWkZwB0+jc4y37R4jesl1X8SPEYNm/v2s40mM90UU8zja797KUC76/hU
 zw+mjr/drDTvwxO7GggKGezPIKy+5pERcy/jFjuj1esNGfo1R59L8be+k
 6aMmFSWQ6Wxr+37NZ5hkaV98ErDe9yTRwNIRQpAEzAVK4Q/micSUp6q/9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="387879799"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="387879799"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 05:54:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831364631"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="831364631"
Received: from mmgriffi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.11.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 05:54:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230111053837.1608588-9-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-9-suraj.kandpal@intel.com>
Date: Wed, 11 Jan 2023 15:54:24 +0200
Message-ID: <87zgapgorz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v6 8/9] drm/i915/dsc: Allow DSC only with
 YCbCr420 format when forced from debugfs
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

On Wed, 11 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> From: Swati Sharma <swati2.sharma@intel.com>
>
> If force_dsc_ycbcr420_en is set through debugfs allow DSC iff
> output_format is INTEL_OUTPUT_FORMAT_YCBCR420.

Squash this with the previous patch.

>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2adac42e585d..666ee85dd23a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1528,6 +1528,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
>  		return -EINVAL;
>  
> +	if (intel_dp->force_dsc_ycbcr420_en &&
> +	    pipe_config->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> +		return -EINVAL;

It would be more generally useful, and perhaps even cleaner to
implement, to force the output format, as in *any* output format,
instead of having a specific force_dsc_ycbcr420_en.

BR,
Jani.


> +
>  	if (compute_pipe_bpp)
>  		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
>  	else

-- 
Jani Nikula, Intel Open Source Graphics Center
