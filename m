Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C97E3399F9
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 00:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FECA6E06E;
	Fri, 12 Mar 2021 23:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DEE6E06E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 23:20:40 +0000 (UTC)
IronPort-SDR: nLT1I1LjOu0jb7f70eNX2JvvlgjXNLYmH7HfKXFW0GCLgERQZ/yETE3YNrqUkeh7HnJriA+O9q
 d85n/ECc2B8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="188944771"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="188944771"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 15:20:38 -0800
IronPort-SDR: YEUUvfu9J/LpeQhizD44wVs4jAbbDRL6T7+hDu46yxAbRsoeSNiLQGrT1eK42IHLXI3afqrn1e
 3rUhBiL61DVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="411169647"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2021 15:20:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:20:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:20:37 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 15:20:37 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 24/56] drm/i915/adl_p: Add PCI Devices IDs
Thread-Index: AQHXFscrf4D94g9p0UyIbP1ylTiDq6qA/vVA
Date: Fri, 12 Mar 2021 23:20:37 +0000
Message-ID: <01c49e7e92e349b4ab6b15d53eec5df4@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-25-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-25-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 24/56] drm/i915/adl_p: Add PCI Devices IDs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Thursday, March 11, 2021 2:36 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 24/56] drm/i915/adl_p: Add PCI Devices IDs
> 
> From: Clinton Taylor <Clinton.A.Taylor@intel.com>
> 
> Add 12 known PCI device IDs
> 
> Bspec: 55376
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  include/drm/i915_pciids.h | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> ebd0dd1c35b3..6607b65e7ae2 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -645,4 +645,24 @@
>  	INTEL_VGA_DEVICE(0x4692, info), \
>  	INTEL_VGA_DEVICE(0x4693, info)
> 
> +/* ADL-P */
> +#define INTEL_ADLP_IDS(info) \
> +	INTEL_VGA_DEVICE(0x46A0, info), \
> +	INTEL_VGA_DEVICE(0x46A1, info), \
> +	INTEL_VGA_DEVICE(0x46A2, info), \
> +	INTEL_VGA_DEVICE(0x46A3, info), \
> +	INTEL_VGA_DEVICE(0x46A6, info), \
> +	INTEL_VGA_DEVICE(0x46A8, info), \
> +	INTEL_VGA_DEVICE(0x46AA, info), \
> +	INTEL_VGA_DEVICE(0x462A, info), \
> +	INTEL_VGA_DEVICE(0x4626, info), \
> +	INTEL_VGA_DEVICE(0x4628, info), \
> +	INTEL_VGA_DEVICE(0x46B0, info), \
> +	INTEL_VGA_DEVICE(0x46B1, info), \
> +	INTEL_VGA_DEVICE(0x46B2, info), \
> +	INTEL_VGA_DEVICE(0x46B3, info), \
> +	INTEL_VGA_DEVICE(0x46C0, info), \
> +	INTEL_VGA_DEVICE(0x46C1, info), \
> +	INTEL_VGA_DEVICE(0x46C2, info), \
> +	INTEL_VGA_DEVICE(0x46C3, info)
>  #endif /* _I915_PCIIDS_H */
> --
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
