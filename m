Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D085337FDBF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 21:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384206E057;
	Thu, 13 May 2021 19:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3A76E057
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 19:01:43 +0000 (UTC)
IronPort-SDR: JslR1OKD6Qzvcd41O2pM7/WKxQ1ctOTmKRF3sdiRBuxt3/va6wdCGP2WQjqqsQaNyg7FmC2Wfy
 MVXbNzTG0xBw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="263949633"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="263949633"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:01:12 -0700
IronPort-SDR: A0ojRLEahRjkp8CFjIEvCkk4yLndnY9358TiHo2uyPqhCxt+bWw4fJ+el381/oJVs1qEQQbz4U
 gWDECk94RwNQ==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="470140676"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:01:11 -0700
Date: Thu, 13 May 2021 12:09:00 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210513190900.GB23292@labuser-Z97X-UD5H>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-40-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-40-matthew.d.roper@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 39/48] drm/i915/bigjoiner: Mode
 validation with uncompressed pipe joiner
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 07:28:11PM -0700, Matt Roper wrote:
> From: Animesh Manna <animesh.manna@intel.com>
> 
> No need for checking dsc flag for uncompressed pipe joiner mode
> validation.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b9b8a0b9889a..92d4c5ab32d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -819,8 +819,11 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  		dsc = dsc_max_output_bpp && dsc_slice_count;
>  	}
>  
> -	/* big joiner configuration needs DSC */
> -	if (bigjoiner && !dsc)
> +	/*
> +	 * Big joiner configuration needs DSC for TGL which is not true for
> +	 * XE_LPD where uncompressed joiner is supported.
> +	 */
> +	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc)
>  		return MODE_CLOCK_HIGH;
>  
>  	if (mode_rate > max_rate && !dsc)
> -- 
> 2.25.4
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
