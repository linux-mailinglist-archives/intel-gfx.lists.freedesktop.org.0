Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB418A3B4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 21:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 519836E95A;
	Wed, 18 Mar 2020 20:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8AC6E95A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 20:23:15 +0000 (UTC)
IronPort-SDR: QjnfUsxw/gQz1VsiaEMKu6mtGWpcV8C/mMCubrqRRvUk3znn1C8YJKqH4Mn1ms0cTyINzrTI76
 qkHsDydRmt3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 13:23:14 -0700
IronPort-SDR: QtWkazslEOfiFoFJRImlFO5dH+SdR7LCCS8qq6udhFmMqNOVI1ShM1I6TSUNGA1tmvGuG10GaX
 mwTw7kZILFVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="324293522"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with SMTP; 18 Mar 2020 13:23:14 -0700
Date: Wed, 18 Mar 2020 13:23:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <20200318202314.GL2286538@mdroper-desk1.amr.corp.intel.com>
References: <20200317201204.5937-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317201204.5937-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add new PCI IDs to TGL
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

On Tue, Mar 17, 2020 at 01:12:04PM -0700, Swathi Dhanavanthri wrote:
> Adding 4 new PCI IDs to TGL
> Bspec: 44455
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  include/drm/i915_pciids.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1d2c12219f44..c299e26c99c5 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -599,6 +599,10 @@
>  	INTEL_VGA_DEVICE(0x9A60, info), \
>  	INTEL_VGA_DEVICE(0x9A68, info), \
>  	INTEL_VGA_DEVICE(0x9A70, info), \
> -	INTEL_VGA_DEVICE(0x9A78, info)
> +	INTEL_VGA_DEVICE(0x9A78, info), \
> +	INTEL_VGA_DEVICE(0x9AC9, info), \
> +	INTEL_VGA_DEVICE(0x9AF8, info), \
> +	INTEL_VGA_DEVICE(0x9AC0, info), \
> +	INTEL_VGA_DEVICE(0x9AD9, info)

I'd reorder these new ID's to keep the overall list sorted by ID, but
aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.20.1
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
