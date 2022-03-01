Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF764C937F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 19:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D12CB10E6E3;
	Tue,  1 Mar 2022 18:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC3510E6E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 18:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646160458; x=1677696458;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jyi5ZyCxlBKEMWOCUSY5gA6crc7K9Ltxg7B7CiueJZg=;
 b=Jn1Iftj6oTDtBxzFcveoSPlA3vSn7m4PDVN2wU3wj0ZewLgJn2v4MJkG
 ZVLC6rvKObR6gCLDVL+hX4xmTLEPscfaKRnJbGYN/OzsrlPT07abuC/gu
 VKL6igj46nRIdWpL0X0Ym8Pvprox+Py8r65Uzbvylt91Ayo4ZU4BuaWgs
 YMF1TNv2NYwOvcS1E0haxzHDdrWb6KcRniqAABuTYZnjbOFaq8nysQfmn
 ezNaUXqVg9CunAEcXUwhWcZfF8WCioBERbC02GuJR29yB8IHqXCPYHklx
 Iuhzys9b0wu3C9zeutpj+zVM4+v45GMc5OzCyS57vCrLPTCKbrC0YJpmr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="233829206"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233829206"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 10:47:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="685827069"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2022 10:47:37 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 10:47:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 10:47:37 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.021;
 Tue, 1 Mar 2022 10:47:37 -0800
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.16 on
 ADL-P
Thread-Index: AQHYKQTF0rJkWyYEd0SLxUFsJ6oUk6yq51ug
Date: Tue, 1 Mar 2022 18:47:36 +0000
Message-ID: <e58c604e384a4bc89e9e0e4a1e3186f9@intel.com>
References: <20220223222801.397632-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20220223222801.397632-2-madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <20220223222801.397632-2-madhumitha.tolakanahalli.pradeep@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.16 on
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
> Sent: Wednesday, February 23, 2022 2:28 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.16 on ADL=
-P
>=20
> Changes since v2.14:
> 	- Release Notes for v2.15
> 	    Fix for corruption issue when DC States are enabled.
> 	- Release Notes for v2.16
> 	    Fix for cases with flip queue and DC6v are enabled.
>=20
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Madhumitha Tolakanahalli Pradeep
> <madhumitha.tolakanahalli.pradeep@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 7616a3906b9e..f2ac3bb1c6be 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -47,8 +47,8 @@
>=20
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>=20
> -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
> -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
> +#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> +#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>=20
>  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> --
> 2.35.1

