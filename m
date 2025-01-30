Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAB6A23065
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB89710E99C;
	Thu, 30 Jan 2025 14:34:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFJPyf4W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2A710E99E;
 Thu, 30 Jan 2025 14:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738247651; x=1769783651;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=e9SKsmNf3xYp2lFfzCH7Gy8DsB7503K6mvUCBmuwlYs=;
 b=fFJPyf4WURapBffw+ejniFzHobdQu9/WpPGKDSlVnqQzwuczBEglI9AM
 GmA3c2+JStPHEq0G+/PyOUS45N9C4UGHt9HXIvTfGC1FZfT9e2XEEd7rJ
 nGb4GrbtnmucgznMemBTW7jpqVd79TyufjI5Tn4XBZ/N2mhvisRzg1eJ0
 hdVNKT81laqLjL/h+Gi8KwVfBmJi/iHFQ71EsRdkwbKM/cE0CoKMEpIrx
 7+0WWt4dptORadUHAXrHqFrXy9thpjubc7prSmZswextkolECSkgTboIb
 3H5gjeJsjb5HK+/Cj7wf5bYONHjJYrcuL4tu47nYbqRkovegteyozsPyW A==;
X-CSE-ConnectionGUID: iMzjWhYLQDqxlHA7qNeEhQ==
X-CSE-MsgGUID: 4q6W0Du0TQyaiXzXiyOS2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38034487"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38034487"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:34:10 -0800
X-CSE-ConnectionGUID: tY20Lc18ScK47PJ/KKyO5A==
X-CSE-MsgGUID: R5TTkxfBTs2ffUB78bzI+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="114367000"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:34:09 -0800
Date: Thu, 30 Jan 2025 16:35:06 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/mst: use min_array() and max_array()
 instead of hand-rolling
Message-ID: <Z5uOGpuKew_qiWJU@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <62a104535c01c667a99ec209c3218a13355568cf.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62a104535c01c667a99ec209c3218a13355568cf.1738161945.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2025 at 04:46:38PM +0200, Jani Nikula wrote:
> Improve code clarity by using existing min_array() and max_array()
> helpers to find the lowest and highest values in an array.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a4ed4f379d1e..60b003bcd1ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -391,7 +391,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> -	int i, num_bpc;
> +	int num_bpc;
>  	u8 dsc_bpc[3] = {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>  	int min_compressed_bpp, max_compressed_bpp;
> @@ -405,15 +405,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
>  		    min_bpp, max_bpp);
>  
> -	sink_max_bpp = dsc_bpc[0] * 3;
> -	sink_min_bpp = sink_max_bpp;
> -
> -	for (i = 1; i < num_bpc; i++) {
> -		if (sink_min_bpp > dsc_bpc[i] * 3)
> -			sink_min_bpp = dsc_bpc[i] * 3;
> -		if (sink_max_bpp < dsc_bpc[i] * 3)
> -			sink_max_bpp = dsc_bpc[i] * 3;
> -	}
> +	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
> +	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;
>  
>  	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
>  		    sink_min_bpp, sink_max_bpp);
> -- 
> 2.39.5
> 
