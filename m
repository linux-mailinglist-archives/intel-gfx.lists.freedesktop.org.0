Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C949E37FDC9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 21:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A586E0CA;
	Thu, 13 May 2021 19:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2A26E0CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 19:04:14 +0000 (UTC)
IronPort-SDR: a7JdLYfb7ugLSLt7FAJR4MsjY1PE3S2WNXlAXi67DpuBGZe1AXbyu7G5CBsc4ERPyiqnnnNVLB
 0/lkR76ijXEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="200079162"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="200079162"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:04:12 -0700
IronPort-SDR: 753byhgRfihbEBbuktDaeDyuv5bvrcnpYcZ8i9LDMIlasfqTyUSZAXhXbfCsoGUXXMe8lJi0/H
 tOxSch7Asn4A==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="463405110"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:04:12 -0700
Date: Thu, 13 May 2021 12:12:01 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210513191201.GC23292@labuser-Z97X-UD5H>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-41-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-41-matthew.d.roper@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 40/48] drm/i915/bigjoiner: Avoid
 dsc_compute_config for uncompressed bigjoiner
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

On Fri, May 07, 2021 at 07:28:12PM -0700, Matt Roper wrote:
> From: Animesh Manna <animesh.manna@intel.com>
> 
> For uncompressed big joiner DSC engine will not be used so will avoid
> compute config of DSC.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 92d4c5ab32d7..a1a472ffef6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1371,9 +1371,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	 */
>  	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
>  
> -	/* enable compression if the mode doesn't fit available BW */
> +	/*
> +	 * Pipe joiner needs compression upto display12 due to BW limitation. DG2
> +	 * onwards pipe joiner can be enabled without compression.
> +	 */
>  	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
> -	if (ret || intel_dp->force_dsc_en || pipe_config->bigjoiner) {
> +	if (ret || intel_dp->force_dsc_en || (DISPLAY_VER(i915) < 13 &&
> +					      pipe_config->bigjoiner)) {
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits);
>  		if (ret < 0)
> -- 
> 2.25.4
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
