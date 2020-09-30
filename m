Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B73E27EA7F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 16:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D09489DBD;
	Wed, 30 Sep 2020 14:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA54899F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 14:00:10 +0000 (UTC)
IronPort-SDR: abolWj6QCzIgd6OhOWMy7CZhHPP/V3ij1Li4kKqqkMoXBJTmw6Grc+B4m68IuJohzLzN5U3cBV
 4WQ+XOBFka1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="163310979"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="163310979"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 07:00:06 -0700
IronPort-SDR: DTiX11QxQ2QDnB7kir0O4qCZapBjWI9QTDEXrMBjA5Q2gR873ByjYGpackVjlGCstTaolZiDW5
 jVl0NWlHckHg==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="457665226"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 07:00:06 -0700
Date: Wed, 30 Sep 2020 07:00:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200930140003.GA2244993@mdroper-desk1.amr.corp.intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930064234.85769-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 01/24] drm/i915/dg1: add more PCI ids
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

On Tue, Sep 29, 2020 at 11:42:11PM -0700, Lucas De Marchi wrote:
> Synchronize with the current list of DG1 PCI IDs.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  include/drm/i915_pciids.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 7eeecb07c9a1..095463ff7cb9 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -624,6 +624,9 @@
>  
>  /* DG1 */
>  #define INTEL_DG1_IDS(info) \
> -	INTEL_VGA_DEVICE(0x4905, info)
> +	INTEL_VGA_DEVICE(0x4905, info), \
> +	INTEL_VGA_DEVICE(0x4906, info), \
> +	INTEL_VGA_DEVICE(0x4907, info), \
> +	INTEL_VGA_DEVICE(0x4908, info)
>  
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
