Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE664296AA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 20:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A086E91B;
	Mon, 11 Oct 2021 18:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0826E91B;
 Mon, 11 Oct 2021 18:15:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="290430008"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="290430008"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 11:15:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="526093680"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 11:15:41 -0700
Date: Mon, 11 Oct 2021 11:10:56 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Thanneeru Srinivasulu <thanneeru.srinivasulu@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 michal.wajdeczko@intel.com
Message-ID: <20211011181056.GA6310@jons-linux-dev-box>
References: <20211011152106.3424810-1-thanneeru.srinivasulu@intel.com>
 <20211011152106.3424810-2-thanneeru.srinivasulu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011152106.3424810-2-thanneeru.srinivasulu@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/huc: Use i915_probe_error to
 report early CTB failures
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

On Mon, Oct 11, 2021 at 08:51:03PM +0530, Thanneeru Srinivasulu wrote:
> Replace DRM_ERROR with CT_PROBE_ERROR to report early CTB failures.
> 
> Signed-off-by: Thanneeru Srinivasulu <thanneeru.srinivasulu@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 0a3504bc0b61..83764db0fd6d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -191,8 +191,8 @@ static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
>  	err = guc_action_register_ct_buffer(ct_to_guc(ct), type,
>  					    desc_addr, buff_addr, size);
>  	if (unlikely(err))
> -		CT_ERROR(ct, "Failed to register %s buffer (%pe)\n",
> -			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
> +		CT_PROBE_ERROR(ct, "Failed to register %s buffer (%pe)\n",
> +			       guc_ct_buffer_type_to_str(type), ERR_PTR(err));
>  	return err;
>  }
>  
> -- 
> 2.25.1
> 
