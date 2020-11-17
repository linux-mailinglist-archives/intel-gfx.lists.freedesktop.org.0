Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DA22B5B59
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 09:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61A66E15E;
	Tue, 17 Nov 2020 08:53:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF3C6E15E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 08:53:15 +0000 (UTC)
IronPort-SDR: j0OpFgDyAau5+EErF7nLZpJDAV7HCN1xbpofdBRy8F1PZ2xufu3fA8qZqRx4czUe001izpLzfI
 kBRLqcCsre3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="235037024"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="235037024"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 00:53:14 -0800
IronPort-SDR: s2Wd7JMhbrXXNH7j+ecwM11GIhlnoCSTiqtDYgyE3zA0ASPESdpGt+AkeUKamvSs8ga0HywlaS
 EPdR2A9AvuxA==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="358815623"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 00:53:11 -0800
Date: Tue, 17 Nov 2020 14:09:15 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Message-ID: <20201117083915.GC13853@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-22-sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201115210815.5272-22-sean.z.huang@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state
 for display protection flip
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
Cc: krishnaiah.bommu@intel.com,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-11-16 at 02:38:10 +0530, Huang, Sean Z wrote:
> Implement the intel_pxp_gem_object_status() to allow ring0 i915
> display querying the current PXP session state. In the design,
> ring0 display should not perform protection flip on the protected
> buffers if there is no PXP session alive.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h | 2 ++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 44d17ae27b94..05fe143675b1 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -334,3 +334,11 @@ void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
>  end:
>  	return;
>  }
> +
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 gem_object_metadata)
Currently this api used by Patch 27 of this series, uses gem object user flag (obj->user_flags) to
pass as gem_object_metadata but it is unused ? why do  we need this gem_object_metadata ?

Thanks,
Anshuman Gupta.
> +{
> +	if (i915->pxp.r0ctx && i915->pxp.r0ctx->flag_display_hm_surface_keys)
> +		return true;
> +	else
> +		return false;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index c0119ccdab08..eb0e548ce434 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -111,4 +111,6 @@ int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
>  int intel_pxp_init(struct drm_i915_private *i915);
>  void intel_pxp_uninit(struct drm_i915_private *i915);
>  
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 gem_object_metadata);
> +
>  #endif
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
