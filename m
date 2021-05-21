Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B65838CB6F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 18:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DE36F5B2;
	Fri, 21 May 2021 16:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958A96F89A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 16:58:35 +0000 (UTC)
IronPort-SDR: 1KDP0ra2a5QG0l6LjHbIGh85dWmy5jBAVLD0ZS97uWnnzdqs5t/rvSttU2qU0XHO+B2TFEOrj2
 qqaAuPIwkTIA==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="262743826"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="262743826"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 09:58:34 -0700
IronPort-SDR: i1nxztp7pSAs9R8452vbPNQ7KBtdHCM5uncV2kIW0l6xwGpxjhLo+4YxIhlkASolB0sjHI6MCc
 zdcS+GD2LwFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="396166148"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 21 May 2021 09:58:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 09:58:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 09:58:33 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2242.008;
 Fri, 21 May 2021 09:58:32 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: fix typo when returning table
Thread-Index: AQHXTduOHLBIhq9DekuoXSeibOTY6KruKTJA
Date: Fri, 21 May 2021 16:58:32 +0000
Message-ID: <2e77cacafd544e2a9553cb30e4dcddaa@intel.com>
References: <20210521005209.4058702-1-lucas.demarchi@intel.com>
In-Reply-To: <20210521005209.4058702-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: fix typo when returning
 table
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

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Thursday, May 20, 2021 5:52 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Subject: [PATCH] drm/i915/display: fix typo when returning table
> 
> Fix table returned when port_clock > 270000:
> 
> 	drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:752:47: error:
> variable 'adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3' is not needed and will not
> be emitted [-Werror,-Wunneeded-internal-declaration]
> 	static const struct tgl_dkl_phy_ddi_buf_trans
> adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3[] = {
> 
> Initial version of the patch had it in a single table, but on second version the
> table got split, but we continued to reference just one of them.
> 
> Fixes: ca962882268a ("drm/i915/adl_p: Define and use ADL-P specific DP
> translation tables")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index ce5d5d13b7c1..8bfd00f49f2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1383,7 +1383,7 @@ adlp_get_dkl_buf_trans_dp(struct intel_encoder
> *encoder,  {
>  	if (crtc_state->port_clock > 270000) {
>  		*n_entries =
> ARRAY_SIZE(adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3);
> -		return adlp_dkl_phy_dp_ddi_trans_hbr;
> +		return adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3;
>  	}
> 
>  	*n_entries = ARRAY_SIZE(adlp_dkl_phy_dp_ddi_trans_hbr);
> --
> 2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
