Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BB693ABF0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 06:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B9A10E05E;
	Wed, 24 Jul 2024 04:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cz/P/2OG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECFF10E05E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 04:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721795377; x=1753331377;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BfDlbMIH0rVMQr9ryei34791batA3CVa91lxgXEqnVE=;
 b=cz/P/2OGJ/QdDI9In9Rtpb5IQUAsveYKCNfh/toM2M5rmoHAh3JmGSjP
 7LG+1y6jZk3WHvXwKXkygkwdfJwuDCK3OzulHXSpcfhybmQJFT+Paj1lg
 7P0VErHCziw1olyFdHvm+zNBkNjiWUSvuZwnRRhgFnbJLi7lW5z+sWL3V
 fjiO8nAYPXCWkgZvAgdOgwOuCgD8nfkjHFjDIUaMcIqzbfD0zhe6GaZ/Z
 SS0bxLdgZzK4f1TIobelRXMrhjAzagu+yAGlK0fM3GnGfj4ao9aH1gI0K
 BIuGsrYuKW/oPdp/tbQZyTraXt7uOXeXWCDomPGMBqwUAMxmz3L2yiihF g==;
X-CSE-ConnectionGUID: EDXafULLSjazwlkg895KIw==
X-CSE-MsgGUID: pMKldsQ+RDquug0Ch40hnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="23315317"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="23315317"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 21:29:37 -0700
X-CSE-ConnectionGUID: XN1ycJ+6RNSR9QhkRMQ2ag==
X-CSE-MsgGUID: kHvMOnIjR1KwtWLj5tlXEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="52477082"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 21:29:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 21:29:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 21:29:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 21:29:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K0VH1QFKolg+GuOszKwMwNC4GTde2Oo8sXriJ63OfZ+b77iOL4id5QFm5Bi65uddV+TukdqoPZwP1PK+LnopZ3WEQQoTXucag0Qlwkv+B9We41adm7SaXFdkxTZP/oQsLoaCwntN4EG4+RP7zyYYUyOUYtFkG+aHWeHolIcTkLlrOPkyLmBWDmeu7DEt2j8PMI9aYas+GoSYhDYXyLQ58h2ijgdTEO68CmQRCJQG43AxDye+HFg+sT1I68oeS68N7qLlPJeJtzx6Y0iYQh430PT/O2s8coAVcGOOZKNswhR933GjGwZs+9XPzdJNqRa7XfKTF8L9i2gjMEQeeQEReg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0yK2Z3TdpGIidfvzXqcmTeLt7E/4aiX3RCOwTN6lzVQ=;
 b=ZVbnPSU1JM6L30AgQJYJ9hgtTS92CeabMI7aFmf2KtyESkoYcqXwggdfgXz/sNuRzrGOzLC7bGPKghXcAn2WcgOzy3ifduWitqglFy3jWMCyIgbkG/LF/3XOSW9u4S+ukPbvKHM4VV74M5rWVoQEuNRAwO5rap/PO21niYUPg3GZgy5M0Rnfcw6ByUNJchXULwQ107RDfH94GIqrwRris3S+gis7DDy3laR1enFasyNT6rJnwawfyCQM5b8rp4os4HHaMEQxOKMwtVGagS0IlL+OsJmPq9b/NsGrMDSIUu9RwtwhphUZisvX7eA3tT3Cwe/5l9dry/Gy3oSD2lwWwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA0PR11MB4686.namprd11.prod.outlook.com (2603:10b6:806:97::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 04:29:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7762.027; Wed, 24 Jul 2024
 04:29:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Thread-Topic: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Thread-Index: AQHa3FlogQWC07hUKEeqHaByc3HtLbIFSNeg
Date: Wed, 24 Jul 2024 04:29:33 +0000
Message-ID: <IA0PR11MB730719E68DD305BF254B5F2DBAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-7-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA0PR11MB4686:EE_
x-ms-office365-filtering-correlation-id: 0297f5d3-4c74-4c8e-651f-08dcab9937e6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7Fru55WbMKdI81qIJtKmJdFlk7o/Ae9Ok2h5b8XOQ2lTLP+5TvPUItPaXVY3?=
 =?us-ascii?Q?XmaocRybluxJPgvi816VhUSXgDR5VjpXcHj9LL1ZZ9lU4MjO/MRhU2SMj5Xa?=
 =?us-ascii?Q?oEdpVZW3qEh3xhhSpiuGg43AOIfMo7RHowHNfAJ4pIEwiQMdKjGFF4pr2swM?=
 =?us-ascii?Q?bc1zYq22rbag5Tep9eohXb9tLUZzd1LVmJMbzyoAjwSxBNbo/uOQFJkku3Ro?=
 =?us-ascii?Q?n2hCeflWa4ITlfcRX4UkwWW1Ejh/iy50icXWb+FT6gD//OGdhL1iQcxWrhPb?=
 =?us-ascii?Q?Ie85+4LjZNl7zgktKxkwqWWk2EdikHxu6Z868w3kZRYVwFAidEe0MNFSvSOm?=
 =?us-ascii?Q?yJgfsrYS47LhJNZYX/pggH8h9RWtaLzW3a3FP+ROVbfExFFz/4DnFfxpN+JU?=
 =?us-ascii?Q?4MLp8PC5VI5t6Fjf22V3Aumvw80bO2EeB5gmhZ6IFxLAWncpO/BIXk0tK6vq?=
 =?us-ascii?Q?eK7KBGn2uEKrLP3kqq0esr10Z+EMhRFrXYWz2ZfJY4jhdo0TeI0YSMYBVbdw?=
 =?us-ascii?Q?Hone/Ynx8yKY5oFDL5Clr3RoEotGzVI+7haS5rMSXI96rG93vheyqHybJeE5?=
 =?us-ascii?Q?298vrLFwMn09TWvgHxkw0iGXSWB/NrrKISvc/NPLlR7c+zi8JEo0gtCs/mec?=
 =?us-ascii?Q?yx4qsAUoqdzkEFk0LFkw/zMSjC1YJ14YYvKZeoisDdoT8BJW3NMkfb4D5jlq?=
 =?us-ascii?Q?r+fcNMCs4EXfG7/i3FSA2azXbBR0soAKZqYCRTksuILhGRuyj9jsMLPiF9fS?=
 =?us-ascii?Q?DRksB7YOm8D2xsTQ5KlqePOEKu8H5SOzEdT84dB8G+4z7gHr+9MVgcGeTsXT?=
 =?us-ascii?Q?iKdXFRgxsQA86QSTSHSAnmwIH6nfwwXGEfxJmcBDCvT6ycxgfkqGH+gdj3Le?=
 =?us-ascii?Q?TLAhe0WCKMxty5PcSejWFCTG1E/yvwpWkw76wvXF+3PICsj2BuAf7JNtnzdr?=
 =?us-ascii?Q?RUkWcfAGqJ0QsjmgXysddpd8fx3UZY8W19nLMABPPOr3ta6K+50pvEGQJZrX?=
 =?us-ascii?Q?zAt4XXWbfCrBl2fpLQAEUfWmtNrwNbCq4SUbTPnHzPTT/XIl/Z4r9UN2B3/c?=
 =?us-ascii?Q?QAzTc9qW/bih8fBPSkuGPb46LuECsA/k7NvirHt9mafUonrreBJi1WZwUSPm?=
 =?us-ascii?Q?MhAECc1+8jZdwV9qXjbj+fcfPdDU/vHU0JZ8Ld62nZi5V9WqyBldAj09jXc9?=
 =?us-ascii?Q?52cFy2CXLlQFUcA4XUGAoTmaWE9mUwH8Rz4lb5l5cDusaQY3FTa2NjluuEvu?=
 =?us-ascii?Q?dcYh6DFD/FxDnbmhM54IGowQin8LACLA5QGFxNpo2Ymk4TgcuMxQvvCc/Hk8?=
 =?us-ascii?Q?zeekbHXCbH67vVvZyRRJMbDGvR+/1vzgEdmoDDQhVxg5lx+b0vd2Z3BKe19W?=
 =?us-ascii?Q?GFvAfWT7wECuTKvhbNOFYIcwxQ9M5ubTA7WqWG/3bSvUUiaGIw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EmQkDSe9hgBHG/B0cQ27QlEFk/xXIROQQIraxKLSauKj+LNB/HdaBq6li+O0?=
 =?us-ascii?Q?HknabU4Eu0xYtiQFH5aHHT7XlgyXD0W1d0yRgG9A45jyZboznjePVhVKgz6E?=
 =?us-ascii?Q?+XerlaV8B7wCDfBsGXGDH2wnSjHcJ1U0ifTHtMnZ5lRYKvoGui+WRMrJd7Uz?=
 =?us-ascii?Q?nPvpg9MkcYkaaCeaTgyqVds9PyPrEWU+1zqKe5OVHCYnsgXR4aK87Ike5TGi?=
 =?us-ascii?Q?hOgQc/KieHrVoZW+0BlokJ3HMpFHuySDSamoDNfpEPyYjpfedcNdide9ATaN?=
 =?us-ascii?Q?T+J4HhJklRQgrWjAxWUsyNRRhOXdi2A4C06kMPwzFYack2cZNwXCjs4hnMhW?=
 =?us-ascii?Q?fbuvpZp+6lpn0ZfhEQVGj5k5hE4PXLeD/DIZwRGmJ7gwXN8PIjxeM+h81FMz?=
 =?us-ascii?Q?voLgyRC5TNJMGMkRVbCexgEUVwewZj0GxrRUx9rBbeQ/b+30YJ844bzwE4h7?=
 =?us-ascii?Q?90kp71WiBMlHv781bVqEEuydZZUGpeGGzS4bz4aueuNolnjxBoe8aXZKTgbW?=
 =?us-ascii?Q?ndR/BfkUZ0RJW2Kh5oVQKoX0FUfKmCNkfwa42A1B2+7RcHtkF/GiQNPhjwMk?=
 =?us-ascii?Q?tjEZKa343qktZdRXnjwXAIcr/1Aga7FcsGv2j2VSgwXWnVGw4B3LlvScgHrt?=
 =?us-ascii?Q?JkRqh8YmurXmPgHVyJf51g03J8I5NB5CqzS1hMmk2ut0eGtKuKTw4QSCAEwk?=
 =?us-ascii?Q?FvQy512ALek7ewxvqu3LLouJ/2wuQfqy8OPTZQQN5YKE2FSbr6RL5MN0XlHx?=
 =?us-ascii?Q?mlBJCKA4509ZGE/+iYavqwHt9FvGTcHj0rX8VS6fqvmqnOeiZ+kBPwUtxF9o?=
 =?us-ascii?Q?d1IFP4/+0OG2ruZxWjjA4/VQ0l90rVxeREC3iWFviJ8JtwqYSjxRyJ7QAEdJ?=
 =?us-ascii?Q?0MbPeeQ+I5ojgAjtA19Jq56xrXprHhF/XBeenz1x7IsxSpebjEXMTINpWLMK?=
 =?us-ascii?Q?7vmeUrjNPil83vU7VY4emvgczitHGOJOEAub6sstGCzuGXg0DMhsWV+1OyAL?=
 =?us-ascii?Q?TMor8VyJNJuqCqiLZI23QtgxryLM5QggvOfwhCQrwXKx8rXzTvjJFLhEdny/?=
 =?us-ascii?Q?HjC/1jAoaDly8YXMZuZDp5BaTVSRYi84uF7p7WITSXhujhZENaccwqO+5RVd?=
 =?us-ascii?Q?pX01kuYEZI/QtsLKlBxBt1Qn7wLWhJ6I7GQCIiVZXS+MZNrbKJVQdo1Mxnvb?=
 =?us-ascii?Q?MOQoDJlZ/1eEI/WC0761MeOXuKsu7riIJ/rvWH0wx/Wr4BQCFXLX2RvF18U/?=
 =?us-ascii?Q?lWGng2HuBRVz8AbbF03rtbcMc00YaIB/qn60Tx69OWXoNfiune1W5UIAG5HI?=
 =?us-ascii?Q?9k48p74AIDdg8G/qrOYsdPUCQFWbY6FwpJznDLYNQ3WOht5PJeS/qRmlDfds?=
 =?us-ascii?Q?MdTcGFzgbZSNZGN318nkZzn341Evq5Hc8uLvLY1HmNSlYD/dQLqQKMzquPZI?=
 =?us-ascii?Q?EWz6VQvnLTszaWy1nmRNSkY8Sn0WYTR202bRqNNkXIkOM3ghvwCqgzkVMrIm?=
 =?us-ascii?Q?ETHlkP7sgiJRnPprd47xQ7uxfIwtpPvbdjbsaWtMoFMsiS3NI5HWtvWyaxi0?=
 =?us-ascii?Q?wcp6jvY9m3KmYbpuARNhHz9f9QJJ4v1xUt2gTbQ0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0297f5d3-4c74-4c8e-651f-08dcab9937e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 04:29:33.5740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xL1dwy5+CRwWfYUVP1CE4nVm+EgabhmasvJ53IQyqY89q4xZ3OXGmWIYrlZKTlc1FDTE2lMDvaUWLV3ZSB3KDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4686
X-OriginatorOrg: intel.com
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry ueve=
nt
> for a commit
>=20
> There are multiple failure cases a modeset-retry uevent can be sent for a=
 link
> (TBT tunnel BW allocation failure, unrecoverable link training failure), =
a follow-
> up patch adding the handling for a new case where the DP MST payload
> allocation fails. The uevent is the same in all cases, sent to all the co=
nnectors on
> the link, so in case of multiple failures there is no point in sending a =
separate
> uevent for each failure; prevent this, sending only a single modeset-retr=
y
> uevent for a commit.
>=20
Is an exit condition required with some 'x' retry so that this retry doesn'=
t end up in an infinite loop.
For link training failure the link rate/lane count is reduced and when it r=
eaches the least can exit, but for BW allocation failures/payload failure t=
his may not be the case.

Thanks and Regards,
Arun R Murthy
--------------------
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 6 ++++++
>  2 files changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a9d2acdc51a4a..3501125c55158 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1754,6 +1754,7 @@ struct intel_dp {
>  	u8 lane_count;
>  	u8 sink_count;
>  	bool link_trained;
> +	bool needs_modeset_retry;
>  	bool use_max_params;
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 421e970b3c180..0882dddd97206 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2876,6 +2876,11 @@ intel_dp_queue_modeset_retry_for_link(struct
> intel_atomic_state *state,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	int i;
>=20
> +	if (intel_dp->needs_modeset_retry)
> +		return;
> +
> +	intel_dp->needs_modeset_retry =3D true;
> +
>  	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
>  		intel_dp_queue_modeset_retry_work(intel_dp-
> >attached_connector);
>=20
> @@ -3009,6 +3014,7 @@ void intel_dp_set_link_params(struct intel_dp
> *intel_dp,  {
>  	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
>  	intel_dp->link_trained =3D false;
> +	intel_dp->needs_modeset_retry =3D false;
>  	intel_dp->link_rate =3D link_rate;
>  	intel_dp->lane_count =3D lane_count;
>  }
> --
> 2.44.2

