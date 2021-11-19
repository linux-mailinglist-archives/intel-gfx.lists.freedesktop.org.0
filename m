Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B013457156
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7EE16EC4C;
	Fri, 19 Nov 2021 15:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7B46EC50
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 15:03:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="297842049"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="297842049"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:03:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="495899554"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 19 Nov 2021 07:03:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 07:03:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 07:03:30 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.012;
 Fri, 19 Nov 2021 07:03:30 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.14 on
 ADL-P
Thread-Index: AQHX3Q+e1UsOfNSJb029gxuFm/8IN6wK8urw
Date: Fri, 19 Nov 2021 15:03:30 +0000
Message-ID: <8e7abc9889624784a8864e4063fb433b@intel.com>
References: <20211119063128.67366-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211119063128.67366-2-madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <20211119063128.67366-2-madhumitha.tolakanahalli.pradeep@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.14 on
 ADL-P
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Madhumitha Tolakanahalli Pradeep
> Sent: Thursday, November 18, 2021 10:31 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.14 on ADL=
-
> P
>=20
> The release notes mention that DMC v2.14 provides -  1. Fix for Flip queu=
e
> roll over cases with DC6v  2. Enhancement for residency  3. Workaround fo=
r
> 3Dlut restore issue
>=20
> Signed-off-by: Madhumitha Tolakanahalli Pradeep
> <madhumitha.tolakanahalli.pradeep@intel.com>

Thanks for the patch.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 2dc9d632969d..8617cd1ec9b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -45,8 +45,8 @@
>=20
>  #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>=20
> -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
> -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
> +#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
> +#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>=20
>  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> --
> 2.33.1

