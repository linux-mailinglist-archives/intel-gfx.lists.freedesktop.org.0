Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310BA409BF9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 20:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDAF89CDD;
	Mon, 13 Sep 2021 18:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CDF389CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 18:15:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="282755793"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="282755793"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 11:15:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="507495086"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 11:15:03 -0700
Date: Mon, 13 Sep 2021 11:15:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Caz Yokoyama <caz.yokoyama@intel.com>
Message-ID: <20210913181502.GJ3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210913181909.35237-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913181909.35237-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add new PCI id
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

On Mon, Sep 13, 2021 at 11:19:09AM -0700, José Roberto de Souza wrote:
> New DG1 PCI id.
> 
> BSpec: 44463
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  include/drm/i915_pciids.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index cb45af9f2c44f..c00ac54692d70 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -632,7 +632,8 @@
>  	INTEL_VGA_DEVICE(0x4905, info), \
>  	INTEL_VGA_DEVICE(0x4906, info), \
>  	INTEL_VGA_DEVICE(0x4907, info), \
> -	INTEL_VGA_DEVICE(0x4908, info)
> +	INTEL_VGA_DEVICE(0x4908, info), \
> +	INTEL_VGA_DEVICE(0x4909, info)
>  
>  /* ADL-S */
>  #define INTEL_ADLS_IDS(info) \
> -- 
> 2.33.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
