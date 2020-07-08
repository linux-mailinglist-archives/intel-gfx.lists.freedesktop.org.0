Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E57218133
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 09:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BF989C48;
	Wed,  8 Jul 2020 07:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB7589C48
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 07:28:13 +0000 (UTC)
IronPort-SDR: S06bud2O82WNBPS6Yhk4QSxDzq/51tNeBbE0qUjYKhPjSS5RAfLEMfVbvW5Yyh2lLtr2beFizR
 OJGwIhpYwTXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="232614289"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="232614289"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 00:28:12 -0700
IronPort-SDR: bI1FUck6obBXwq5BdeyiMfnJIijzOOFouacLap3HXdqGFoxAKOHgxPaSmsLN+5+kzVE36v1wdH
 nOL0tYF/mHbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="267051832"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jul 2020 00:28:12 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 00:28:11 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.92]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.77]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 00:28:11 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 06/28] drm/i915/dg1: Add fake PCH
Thread-Index: AQHWUAMRkIAQUAtAyEmwdvS5KOyqWaj9UojQ
Date: Wed, 8 Jul 2020 07:28:11 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734C6C2F6A@ORSMSX107.amr.corp.intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
 <20200701235339.32608-7-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-7-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 06/28] drm/i915/dg1: Add fake PCH
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Lucas De Marchi
> Sent: Thursday, July 2, 2020 5:23 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 06/28] drm/i915/dg1: Add fake PCH
> 
> DG1 has the south engine display on the same PCI device. Ideally we could
> use HAS_PCH_SPLIT(), but that macro is misused all across the code base to
> rather signify a range of gens. So add a fake one for DG1 to be used where
> needed.
> 
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pch.c | 6 ++++++
> drivers/gpu/drm/i915/intel_pch.h | 4 ++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pch.c
> b/drivers/gpu/drm/i915/intel_pch.c
> index c668e99eb2e4..6c97192e9ca8 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -188,6 +188,12 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)  {
>  	struct pci_dev *pch = NULL;
> 
> +	/* DG1 has south engine display on the same PCI device */
> +	if (IS_DG1(dev_priv)) {
> +		dev_priv->pch_type = PCH_DG1;
> +		return;
> +	}
> +
>  	/*
>  	 * The reason to probe ISA bridge instead of Dev31:Fun0 is to
>  	 * make graphics device passthrough work easy for VMM, that only
> diff --git a/drivers/gpu/drm/i915/intel_pch.h
> b/drivers/gpu/drm/i915/intel_pch.h
> index 3053d1ce398b..06d2cd50af0b 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -26,6 +26,9 @@ enum intel_pch {
>  	PCH_JSP,	/* Jasper Lake PCH */
>  	PCH_MCC,        /* Mule Creek Canyon PCH */
>  	PCH_TGP,	/* Tiger Lake PCH */
> +
> +	/* Fake PCHs, functionality handled on the same PCI dev */
> +	PCH_DG1 = 1024,
>  };
> 
>  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
> @@ -56,6 +59,7 @@ enum intel_pch {
> 
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> +#define HAS_PCH_DG1(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
>  #define HAS_PCH_JSP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) == PCH_JSP)
>  #define HAS_PCH_MCC(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) == PCH_MCC)
>  #define HAS_PCH_TGP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
> --
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
