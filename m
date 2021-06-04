Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2C539B50D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 10:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19446F41A;
	Fri,  4 Jun 2021 08:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627B16F41A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 08:42:41 +0000 (UTC)
IronPort-SDR: qrCvWC8I5KAtSwrT3kGjQm146QlYMTDmMW2kczOUShnhjaJz03QjgtF3oIwNSIfCCevV7ED+vv
 0nHHYwkoG5Dg==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="202393823"
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="202393823"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 01:42:40 -0700
IronPort-SDR: 2PGsXI2TE/mvbBqqRv3Myfs/CornRGFJneZ3QAIkv0dWusNE+OaYQQneK52po37J5E0pnYUAdh
 reHfsC2ioo4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="448185711"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jun 2021 01:42:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 01:42:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 01:42:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 01:42:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 01:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTwFBJbf3OnxAoAWTzRTHcpPhfnOGXtI/viqxTku3wlRqkTXCWnt9Nqi13LY117sWzDhvTU0XGuLl0JbKudOPthsCHn5nRPeHL0hFjOCyBwZFmxWx/Xoy2Z+XfKPFCyMg/VQdyArO/VjIu4q/2lMXTBuUjDFTyWuTCBwMuUbbmG8koJaucX+GPxx4AWFM7m4Y2w7Y/8pp8D7FLsDZ7zYmM8c+CUh7QU+5K5lxJc2/r+V7P31CXVG4EsKJAtjm1q24PHoLR1CGXXfFPG4CnTbEjWS+6OKw119QK83LSnbhpn0fMTh+IAlgtcqYrdRIzH3UN53ZBG8tKxIoi5+zA3cgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZsg9KKiLruTAcUU5obvbQc2Eh0sHGji72IX9g9BgW8=;
 b=BMBbizWYQTOW8X2PnyyCwKpaNDOJFv4cifZMhIvHidxERHdZdSeQPUZ0uFfNGTCSuDu2KlITvqftBaX0ZYaK1VsRPStnJXvHFkkSmooHs03hLET33Ju4uiaeHHOORL8ClFmnDZqa5EKesu8ozarUj0f5C1ckkXEQf/m/q1nDspttaI1PAPRlxHeLir2jl0lcShJBvhntA9PWOAxY9E161dvedYReARaEuoH+g4ydJG2HyvvD6o0I00FPiLnRKhBs6CoLhfF2BuvKgiJ1d/htVuuT1srHAPPyBfLNGam0irrbf5U576XKxJ/xaPeqQavgYesj1oTQB6duK6KqXiJEWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZsg9KKiLruTAcUU5obvbQc2Eh0sHGji72IX9g9BgW8=;
 b=YwbMulF3Deiux+d8dIfu7fyaNLA7LNRNkA7FPv8AU/6ZlOPDhK8HESO5jj6c+53U1OCuc2wucQvxmVCtEksik1HkmEDvAv5WMC/gVz7tu08IJF2p+wLGfUSvnLev3dvBcmdDNRH0dmsi3BtjKSG1eYCIlFKyNK3G/U3rRIc6Z9k=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3199.namprd11.prod.outlook.com (2603:10b6:805:be::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22; Fri, 4 Jun
 2021 08:42:35 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4195.024; Fri, 4 Jun 2021
 08:42:35 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] x86/gpu: add JSL stolen memory support
Thread-Index: AQHW7XzKUM1jCZWExUCrnFfJUr+h4KsEX+dA
Date: Fri, 4 Jun 2021 08:42:35 +0000
Message-ID: <SN6PR11MB342195D0F82AD7B5DB57747CDF3B9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210118093429.27699-1-william.tseng@intel.com>
In-Reply-To: <20210118093429.27699-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.170.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 336020ab-1fcc-4fa4-2c8a-08d92734b3db
x-ms-traffictypediagnostic: SN6PR11MB3199:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB31998A1CF10269AB491E7792DF3B9@SN6PR11MB3199.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:339;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5GI1y3KR1F8pCNyi0GjUtWaF7e2Nr7hJord3epX50SzDSFEGteiFRHi/kAgNqjtvUytUwk24nW0TZ0YInS44hfLDIpjgED5XzM5MOavQqHF/KJgyuACiEXewnkeipZGa3Js583TIA9+C5jln45mJIzE8YxTGLREFAqGTJz7bCpiA8v5FsYB0hCy8tiELrCSgRDJ1n1jJB7rIdr1IyeyoSTKDBCYjuEdEFzCTS1V0rc/MR5Nn844pji13dc2INOBQ79ws1qDFlYCOsPC7Z1PETmqspc9jHF5pKokRWdhP7vlS+T6qGFI/J45yd2UN1tsp9jcNt3Lwa3s7CVqJQpfQ6wQ1w1tUS51a8pe4+H2e35F0NizvpiypUHTQN1su/f9hXKjV1C+jNrN3keYaMvpHu57uChDALepxe1RK2S1Ldw0PWB/AKJvcP5K8j/H1inF7bo4dqdaVRMCyM6lOU89QKoDf3KtI8Fm8wdrKDYF2iQ+PdQ8uN4mGpY+vMxRtTkt9QVmdSM8jQQnqXfnsAmJjQZa8klkka6pH4/hzH1I6DdPcoJr3kB7ShYo30K7t94u6zwktoItKVXsvU/MSJ96YQ+JYAR0cV2aO2XKCwh+wftoocxcaptoYjcRRD1zpxw9lTCemCxWMRT7ynlYFtr8qjVtgu0FoMMXXIdAQjJ3s0XyGST43TuM0hwuMUgDBhNHZbmeX561MWIdJ2h8iiMn5bA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(39860400002)(376002)(366004)(346002)(52536014)(966005)(9686003)(55016002)(8936002)(8676002)(478600001)(110136005)(83380400001)(76116006)(66946007)(2906002)(66476007)(64756008)(122000001)(38100700002)(5660300002)(71200400001)(66556008)(66446008)(53546011)(6506007)(86362001)(186003)(7696005)(4326008)(33656002)(316002)(107886003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?o/HObNq0jMAoA0O/O89TTSOI4qIRH00muCkJq5XiHIda5d2PlD96qQcKP2Tu?=
 =?us-ascii?Q?ZW1Jh5cQe7b+ljpcF5DXYDqN1QzkKK3I3+/Hba+dxPXg3QEgT/Dcvb/u6xEM?=
 =?us-ascii?Q?N3Yngv58pwcg5rj/Ua0CY4kxSE66YmmNaRJVvXB+RN+D+rAcc79y+b4pAw0T?=
 =?us-ascii?Q?ixeTiZedxVAjBHlmzq8ggUonBXtsvhcgHMc77pUz5GNT+STE1eWb4l/h8XfO?=
 =?us-ascii?Q?a9BEctFvk28TPm97wLUetlNofHBnqzmUjOac0iMhm9zr7sb4pSx5Nwb52m49?=
 =?us-ascii?Q?Eaj2Bs56MXKQjoHxo5QU8ouqegZkQPKrdoyZOsnaGJOJ122BZOo5Gu6f0iLW?=
 =?us-ascii?Q?j2hUr078As8TaUPxnXWLm+XbnIGGEbQV0kBXOlP7+E+hOMcKFQEoliYD64pK?=
 =?us-ascii?Q?nHQlzE3VBbQaYFIssHC25HhQz34ePwAx1crK44vpgyTiKm+PVTGhcdD7xQed?=
 =?us-ascii?Q?MmqTAXfxnM3m9Qv29ZLhFucNcx0hR0szmUvLlfYYbr2DBGgOCX8j0rVubpNm?=
 =?us-ascii?Q?fFyAWCh+gFrWEqO2kUJQeV3vOXPlu/qB8EcxvYkXg3Tf3cLw1MXOORyGBMmM?=
 =?us-ascii?Q?k/ebeQN85gzZ9DEpV7SOljJ79tBYilz9Fpni4vzx34yLaT6SaHXI78CJeXuP?=
 =?us-ascii?Q?77OOkIgfKlC81LNimx4x8LdvY9nGKqstHVxZ8CCA5jiq2Txv0Zl4OK5xSnNv?=
 =?us-ascii?Q?UGTny1gOAzbGAlzcm3SwWAjTex0iDDTxmp9t5QXHBmTjpEc4dvgZHybtK4pb?=
 =?us-ascii?Q?fQxB2bK0H5Wc6CYa5VY720YJj9DwkCjlb3kjbBv4pRCjShXObAcZHrZiRJPo?=
 =?us-ascii?Q?GdvB1pTZ841TPCWXCC9Bvr/wt53XmOfiRzoRf2cXp2mh5XqDPscCF2OROdky?=
 =?us-ascii?Q?d0N3KVMyXNdQp34AYLApWvhX+7En0p5fJF8ZyHF/385Fom8TfbL9S+FzKtwH?=
 =?us-ascii?Q?wVBhILiOV+sI/Ym7DP2IcFMT96xEHnJwEyV1zGNoWzkoqe+LJVDYRlHIt4kS?=
 =?us-ascii?Q?Op1Hs4DtkWsh1/x91FEOTZwV07pdBqpUAS6l3BCKFnmSPx7JUvkMifeaBu8a?=
 =?us-ascii?Q?LJKYhaQZ7UAz086nht77zI1Kx1AsgSqWmbLiJwKh4Ospy6UknMkVpDmRKBiJ?=
 =?us-ascii?Q?GVq73BkOtM3haTXa4373r/lNxoFkRai12NQW/Y/v94JxqKnSbSlk1MjkMjad?=
 =?us-ascii?Q?UROSoyCbcCYms+nWBHYToOKay3A6Jn+22TMDeEH1tHkUwkQ01SmuX90Y+WBd?=
 =?us-ascii?Q?qjG/j6GxZwqXs73RtXUeYnui0RV1GomykPnQok5VKHZsZ4MqWwwDFLjB5vdp?=
 =?us-ascii?Q?Lm0SSuqq++4CVBxE+ttq57nz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336020ab-1fcc-4fa4-2c8a-08d92734b3db
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2021 08:42:35.7384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wL8SWOD4WQ6sBWgJVa1+M0451julh3cZEn0alhhmq3mGn4l5rSVp6l8NO9NQFMhdTa71y3o+vIdiBAzMzkdCyGSDnexOpghRPXz65aXthVaKi1xyjApE2Bs2NhV7w9dQY/WRTey6XXMWVgxN3PrQSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3199
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] x86/gpu: add JSL stolen memory support
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
Cc: "Tseng, William" <william.tseng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

https://patchwork.kernel.org/project/linux-pci/patch/20201104120506.172447-1-tejaskumarx.surendrakumar.upadhyay@intel.com/ this was addressed way back but stuck up in discussions.

Thanks,
Tejas

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> William Tseng
> Sent: 18 January 2021 15:04
> To: intel-gfx@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>
> Subject: [Intel-gfx] [PATCH] x86/gpu: add JSL stolen memory support
> 
> This patch has a dependency on:
> "drm/i915/jsl: Split EHL/JSL platform info and PCI ids"
> 
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  arch/x86/kernel/early-quirks.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index a4b5af03dcc1..534cc3f78c6b 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -549,6 +549,7 @@ static const struct pci_device_id intel_early_ids[]
> __initconst = {
>  	INTEL_CNL_IDS(&gen9_early_ops),
>  	INTEL_ICL_11_IDS(&gen11_early_ops),
>  	INTEL_EHL_IDS(&gen11_early_ops),
> +	INTEL_JSL_IDS(&gen11_early_ops),
>  	INTEL_TGL_12_IDS(&gen11_early_ops),
>  	INTEL_RKL_IDS(&gen11_early_ops),
>  };
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
