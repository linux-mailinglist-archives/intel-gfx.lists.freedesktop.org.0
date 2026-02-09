Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wH2HNY6diWlU/wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 09:40:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBD10D11A
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 09:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA05610E33E;
	Mon,  9 Feb 2026 08:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SKhUUTf2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB0010E33D;
 Mon,  9 Feb 2026 08:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770626444; x=1802162444;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=x6YfnZxsuyxTda/zhe9ofGK3UuBinmrkRM4hPkFGLrY=;
 b=SKhUUTf2/Ujd40PPXIF0vzi8r4SQmbw86mwXLi2ZNb6RfHWDceL15exd
 mDL2sRR+jJMQUF7LQoc9dmNPHKquSqN5IKvZsQH3Ln9ayK/YtKTgNfQDh
 uh2QBw1AWOrgay+3Wdq0Lb2zXaFYi6XiFUgELWsO5JtBHtQfofetpY1Br
 CcyXVBK7wFl2l/pBPa8m0jX2ghoA7SWy97x/uzcujedT1wqjD+lHV5wPh
 PYzoRyD5o/IX2Ek4IYtDJXgKZJfQIvp4KeoxHL9uMlZcITwHIvam2Y2PY
 dccyg9HqjGvU3Injiqm7thw3GS+HTdZVcX6/jFeDwJ7XvuN2DjbnNFF65 w==;
X-CSE-ConnectionGUID: YjMoMPc7TveB5j6GPafj+Q==
X-CSE-MsgGUID: g2rV5F73TECSiGpwP7BY9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="75580893"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208,223";a="75580893"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 00:40:43 -0800
X-CSE-ConnectionGUID: SU/d/qi0QKKcF3QBLOXCIw==
X-CSE-MsgGUID: G9Z/8uWeTv+dVmladQQmmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; 
 d="scan'208,223";a="216024673"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 00:40:43 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 00:40:42 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 00:40:42 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 00:40:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D6pnhwS3qf+fktVNec0DQUX8B7kh1OnNAe8G0wcz3knl2M70VwOBt692DHNqhAd0xLElg3vGyW23kGz4QuvNzx3NT0OEDBeaCP/tBnWCcqXaeBp19og1zlIcZQhMwxsqUqri3C0/1GzlCXCkxg5HhbT+oEXwjOEL0MuJS7eUURi8YLWJBoSTqpFe1WjdDAmh5aCGzCQMvWjJAu1LPNLjbYVKu54KlQRpr0VU/c5PsDZAIgIADT8I7O3bQhG8ewvQ+srKZb1Q/XEcuu+5UPdkABIfEkiU8+i/tsKxSh9T3TDTfTzF40/xvoui9LbRZ6BpjwI2sFi9kmNAUOd4B9XUuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YfVxRbOVzt5Y8o0KvW43DcjRQakc4+U04tXueeGIpXY=;
 b=BAJ+Xokpo10MrXm3uRX5wip1acq8l8Qm1qYeuWwq/dLa7gmybo/zhIvfYEt2QHK4f3GcJpGTy8jPoftkQq3OKDHwLiJB1TmNHvntXN62zbtrHqciCIpv2XpKh48tel8oUM7yXv/tdcCk0CNRijdcbDL72h1asX8XuuvaLrqfHJSXVCnPAFs0/wWP+eMjO2SCs94dMS/Q7bvunC1yPj6Siper01TD5lDVduHQgctFIkr4COOatmcAJkWmE2z5kE+b79USWrCSn4IUcUMF4RSwzXAT3wHRea7DNOnv63Drdvo8qV5h9Cbqd1Y/yLRpeLbBp4XPTrZG5qBYLD3j2NR4hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB8203.namprd11.prod.outlook.com (2603:10b6:8:187::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 08:40:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 08:40:35 +0000
Date: Mon, 9 Feb 2026 10:40:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Message-ID: <aYmdYjjRljq0dVSL@ideak-desk.lan>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
Content-Type: multipart/mixed; boundary="T9JaGIDB2HevN1K6"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF00002BA4.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:6:0:1b) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB8203:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cd1ffbc-0d9d-428d-3c95-08de67b6e4b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|6049299003|4013099003|4053099003; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?KpB89nQCCJaXCm6EvEd/eGG7Ot188y1AfhndLwDjpOmq/8FU/9bbeH6ccd?=
 =?iso-8859-1?Q?yFxFwpTangWfBO/AD1mXmlSqQs8GkutQUYQ55NTzOweM/mSXfNM4rLPS+q?=
 =?iso-8859-1?Q?XnR09AWxIIvVnNmf5UNx6YjbZnfV9h6bL+Vc1pWK+aZxEiAz5WqXinCcoz?=
 =?iso-8859-1?Q?JeA28pkwTpra9+dq7hPQ+Hf+7rYb7x3tjpz7Q4J4QG3lp5O+8HId46Mt6C?=
 =?iso-8859-1?Q?zsMcyPuW0djCDjQduVpdX0EqhH8iiN95TbDEYQTbxxJxtoZNuA3lhkJSAj?=
 =?iso-8859-1?Q?tDTn1YbneZDb1A0I4Jv8AU0g0jctEKMlphJtNKUEAtNhqNyftm8gzqgllU?=
 =?iso-8859-1?Q?sO5B6e25NdEv966o5yOe/HhQNMIxr3zXcrXs4entcm4dTnj23vwK8KaUgO?=
 =?iso-8859-1?Q?iRy0RBBKSNCICB+sTKWOoPQkKlKpAOFz2TsVi1c4yE9DulKLCfrjki5Y/3?=
 =?iso-8859-1?Q?y0AkwzxlohVEXniDXrd3BwWy99GF/M7S7ybq15U48UH8nJ4990/Gypr6DM?=
 =?iso-8859-1?Q?Dk7VibaLyZ7P8fIbDnODXc32M5p2kWhaiwGaKmJvEHruSCA/59Tb9JT/sO?=
 =?iso-8859-1?Q?eJGoT1iygkLmnS/YOmDt56DHAPWQ91F+GzJuNfS6Iuc2ov8gpuBja7PBe3?=
 =?iso-8859-1?Q?XwEqkWhJLgipg3g4rhbN02jFSiqs8Rqb+oA3l72VlXaiHubZ5lI5rgOh+L?=
 =?iso-8859-1?Q?585LTx85HIDjaKKD6oowlU+6zEpmyq7SkuXkEqjKChFlyapgERNRU84P+6?=
 =?iso-8859-1?Q?2HZnv2jA65iteZnDhtsweVCLzD5cgjOFf0Uvk2c/gIW+VkN1Ijg55ul+f9?=
 =?iso-8859-1?Q?aHWC3SFmqGSgoA1aNFX5uGRGu/GXeprsF4/SCKU1nNW9+viQJXq9qEvYJp?=
 =?iso-8859-1?Q?sR+4aDaQ2emfLSxbfwBIR/O1nW7Oi/ClfmTr1s2lkvDwBXyj6+dpa5v70U?=
 =?iso-8859-1?Q?Yd59d19ktlhOcjT0v+Ze/sagQLMZTifw0P9M7nCidP/1iYYB8Ta2/8iogr?=
 =?iso-8859-1?Q?TZCMcONPXR3+nWHPuFjoivZkSwpZuX8NGCk0jVxREi/FjXH9sfIjcRE6w/?=
 =?iso-8859-1?Q?hdsvsb+AltpBbqeS+sYUkBXbCLrkMWWIH6YqW5iG9mxZkFK5OGx1OMpRaR?=
 =?iso-8859-1?Q?KoDZhR39tAc+xggrTCUeRU5mPGmAtDgZDHU88/lEDfG4kQ/0NvTLAMumTs?=
 =?iso-8859-1?Q?epRDg1cCrYnFp9jCh988YqazZZXvKhD68pOwUf+odCOGXUw5LKgNLtuFBg?=
 =?iso-8859-1?Q?Cl9cU/il4TAohVNdwxRCtTLlLXChu4AwctVL9Ol1m9Wdjk0hf9t0TCdSpd?=
 =?iso-8859-1?Q?UHp+wfBlQTHDcn6bIerraixSFV9ktcbka0VIDNsWtyiXCfGj6Kjj3xr2h6?=
 =?iso-8859-1?Q?Yzhznokew2nTg1BAv2x3NcL2Nj3kgn6JNXpLPnQVDka5V29CxguQkaMhou?=
 =?iso-8859-1?Q?UJ6S+Ssw005dyn5MFwodzm9ef+MpHpOrsTTMSQSAT9HhyFwGGLLWg6rj3C?=
 =?iso-8859-1?Q?myucx166o2p2z/x5fbnM5Bhre4P8yrEpSMsIuy4qtZbfW0gkV2qULxsIEA?=
 =?iso-8859-1?Q?NtTJIlrk/zlO+Cdy5FCncT7eFO/7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(6049299003)(4013099003)(4053099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?RtHDGFJSME9eeS64gmQ3yd9lmI6zIq+KaIEGhOIvF93NqEpZRUr58MxagG?=
 =?iso-8859-1?Q?tAUHcEELSfRUGp3YMPUDKwzlhPhNqnE94GUtR4DJnQrFl6pykyxQviM4af?=
 =?iso-8859-1?Q?JuqTxmcCWCs59DFLJ4IBn+SlazbGaE4NgBBP6iypX3l8xzpJf7erP8/F95?=
 =?iso-8859-1?Q?DxXlMQhHrRmKj98wgsFQezXAnqDDiiKQj+RnoTNzl6fBCcPIhZEzBKQDw0?=
 =?iso-8859-1?Q?xyjwu6Ru+o289Hz6Ei58THAQveq2zqJ9Fp1kyD3o147jnWPqfdam8Jpuhy?=
 =?iso-8859-1?Q?acUD72yffuURy3jdX1S9xolWAWtKdsFJtp5q+w9cyPUtJcgHUIe6nZFl1g?=
 =?iso-8859-1?Q?Iq2Nhb00aA5RiAC5jPWdxN14bvOErTcv+1yXK3un7a09Y9clEWI8qAm4k7?=
 =?iso-8859-1?Q?3qnxYUyURuxPU96oozFFROarviYXlnDjVndRYd/Zsed6xPpdnRibdvSGKs?=
 =?iso-8859-1?Q?6rC2tdqzUGDwZWBzNgyeOAKjplW9BU+gDBqP2+rHYMy4p4mc+fALcd0SwF?=
 =?iso-8859-1?Q?Vep0OC1ZjHW/ua/sf02uRqjslsH19fVVWWnjdEeNMZKjE7d2dN+BiEIadJ?=
 =?iso-8859-1?Q?X/n8Z9t3N9J8/ZIgUZnJ2GOK98EjcjEchw821ZcgEFebpyOTJJKEX3ECzl?=
 =?iso-8859-1?Q?ZLTivkucjUfv2S3THeOXtZtZoP7tULsMN54DZwflb3uF9cTbl5lPnQEsFk?=
 =?iso-8859-1?Q?UNNkQjH0syaNOh7PKcddZwUGtRjYBGI4l8fmyMkU/yTm6hJohzaMnay4L9?=
 =?iso-8859-1?Q?efFlPbyn6BByZlYxD3McM0VyKGkO+GcRBs/y6joFTFe7+fkDErZYEJs89v?=
 =?iso-8859-1?Q?DJ23xDUpW1ZWQR5wa2zXOwGq3zMZ6u59ediOLc7Tvo7IZghFNeFdkYW/tn?=
 =?iso-8859-1?Q?xK77bJeUwHr9h7akmK6zrUS2tomcGJD27DnEUIWTufBWOvkbc8+iq1/oZb?=
 =?iso-8859-1?Q?biLjxPeDVUhiCVz8Bdd2FGUykHCHyJ3yz3wipQ7NHy0alktzKNbsgolfQ6?=
 =?iso-8859-1?Q?j+COzF6DQoPC3cwiaRQwAamOW3iWEyCwUh6xxP9pmqr/Dt0C2OsyJAblUy?=
 =?iso-8859-1?Q?YSK3k0vlFIVje8GN1EQfiDCm+uDozeF1NOzcUCb83GSHhwqiguDuUH35lp?=
 =?iso-8859-1?Q?MmWEf2LcExM1jK8ycGD7S17PKAjtON31ts5lBkRzmEZWj8pk6kOF/1D3qf?=
 =?iso-8859-1?Q?5Dzn6YnXffKkIbwEFwTOqPdvDYQPfQRxNqZ0qxhctQBZQRexq/MtU+r3pX?=
 =?iso-8859-1?Q?wfr6vEDImU6EsoOTJIR8i/9N9Qvf5A90E8t1BfE+Jb76zeMFAM6R4I9P0D?=
 =?iso-8859-1?Q?FHKhaX3r6RGh7PZqJgzothdzUtb9bk31YMipxz1W1KruXREGUgobZDtRwQ?=
 =?iso-8859-1?Q?c/daFx/V9yE5V0irchNzvcrpPcySBZeIgc/bIBXO3yTmN5W2mPsBKEiZrP?=
 =?iso-8859-1?Q?dV1/rNiKaIF6dNjd29ZYkckXwpSieLbD+0BY5GzDZz29nP/FiYy8OkunfU?=
 =?iso-8859-1?Q?U5RunUUQqlrfjrzVSKk4/DLHo9Grb1l+1Hl4l1TNDLstDfjx2dQqQKWbcs?=
 =?iso-8859-1?Q?EeOx44Gmmvzuo6p6tBOnQrrprDzKG6une+tu2ZcJvHFpS+FZGHJANEMCNN?=
 =?iso-8859-1?Q?DWSWpUOKowA6qtre3/rdXUJo1zh8/QfJ9cp4mPPnei9YRL8+5xTkkztIPF?=
 =?iso-8859-1?Q?feTGpbcbumavPqd0lYs+hdx8o7CJgw6Pt+QMrsmbcp9Ml+urxbP7L4t5EU?=
 =?iso-8859-1?Q?RzCxIcQxEWEJdGZBK1ogQA6RVI29/HeYVcIcn7+hjCBOsqDnCbizaAaF1J?=
 =?iso-8859-1?Q?xlU+av+V4g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd1ffbc-0d9d-428d-3c95-08de67b6e4b8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 08:40:35.5359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +njexfZJ2EeqF0RTMz/1bsK6+T+ZTlQ/JJ34wJDc1BaeVRKTofnSsHIcs9bNZFY+YPz8aW8bUM3Y/vZRt9hNNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8203
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-diff];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3DDBD10D11A
X-Rspamd-Action: no action

--T9JaGIDB2HevN1K6
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
> 
> 
> On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
> > 
> > On 2/6/2026 4:12 PM, Imre Deak wrote:
> > > The pipe BPP value shouldn't be set outside of the source's / sink's
> > > valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> > > value to 30 due to HDR.
> > > 
> > > Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> > > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > Cc: <stable@vger.kernel.org> # v6.18+
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
> > >   1 file changed, 12 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
> > > drm/i915/display/intel_dp.c
> > > index 2b8f43e211741..4d8f480cf803f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > *intel_dp,
> > >                      bool dsc,
> > >                      struct link_config_limits *limits)
> > >   {
> > > +    struct intel_display *display = to_intel_display(intel_dp);
> > >       bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > >       struct intel_connector *connector =
> > >           to_intel_connector(conn_state->connector);
> > > @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > *intel_dp,
> > >       limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> > >       limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> > > -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> > > -                intel_dp_min_bpp(crtc_state->output_format);
> > > +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > >       if (is_mst) {
> > >           /*
> > >            * FIXME: If all the streams can't fit into the link with their
> > > @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
> > > intel_dp *intel_dp,
> > >                               respect_downstream_limits);
> > >       }
> > > +    if (intel_dp_in_hdr_mode(conn_state)) {
> > > +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
> > > +            limits->pipe.min_bpp = 30;
> > > +        else
> > > +            drm_dbg_kms(display->drm,
> > > +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
> > > valid pipe bpp range (%d-%d)\n",
> > > +                    connector->base.base.id, connector->base.name,
> > > +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
> > 
> > 
> > pipe.max_bpp < 30 will be either due to the max_bpc property set to less
> > than 10, or perhaps when the panel itself does not support 10 bpc
> > (limited by EDID or VBT).
> > With these constraints doesn't make sense to enable HDR and send HDR
> > metadata.
> > However, as we see in some reported issues [1] [2], in practice some
> > compositor seems to enable HDR by default and with the hard limit set,
> > they report blankout.
> > So it does make sense to raise the min bpp limit only if its inside the
> > supported range.
> > 
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > 
> > 
> > [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> > [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
> > issues/5969#note_3248404
> > 
> 
> I am not sure if this patch would help with the above gitlabs. For example
> in case of #7052 pipe max bpp is 30 and the commit still fails.

It does fix though reported cases where the sink does not support 10 BPC
at all. Yes the monitor in #7052 is still a problem, since it supports
10 BPC only with lower resolution, where the link BW would allow this
and he monitor doesn't have DSC either.

> However, I need to look deeper.
> 
> I am thinking of relaxing this restriction all together because the earlier
> assumption that a panel advertising HDR will support atleast 10bpc in all
> it's mode turns out to be false.
> 
> Currently, I am inclined on the following policy.
> 
> - If DSC is not available, fall back to normal bandwidth calculations and
> select the highest bpp the link can support. (Also preferred by Kwin)
> 
> - If DSC is available, prefer falling back to DSC and attempt the highest
> bpp allowed by bandwidth constraints.

The patch does the above, except for not handling the case where the
monitor doesn't support DSC. The attach patch handles that too and so
fixes #7052 as well, are you ok with it?

> I am working on a patch for this and should be able to float something soon.
> Imre, if you agree with this policy, would you please wait for the patch.
> That should make it easier to send out fix for stable kernels.
> 
> ==
> Chaitanya
> 
> > > +    }
> > > +
> > >       if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
> > > limits))
> > >           return false;
> 

--T9JaGIDB2HevN1K6
Content-Type: text/x-diff; charset="us-ascii"
Content-Disposition: attachment;
	filename="0001-drm-i915-dp-Fix-pipe-BPP-clamping-due-to-HDR.patch"

From 550f8de76d0b5a497d36a24dee6988d07a634588 Mon Sep 17 00:00:00 2001
From: Imre Deak <imre.deak@intel.com>
Date: Thu, 5 Feb 2026 16:49:03 +0200
Subject: [PATCH] drm/i915/dp: Fix pipe BPP clamping due to HDR

The pipe BPP value shouldn't be set outside of the source's / sink's
valid pipe BPP range, ensure this when increasing the minimum pipe BPP
value to 30 due to HDR.

Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: <stable@vger.kernel.org> # v6.18+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4b786706ea2d..ad167393282d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2703,6 +2703,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       bool dsc,
 			       struct link_config_limits *limits)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2715,8 +2716,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
-	limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
-				intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	if (is_mst) {
 		/*
 		 * FIXME: If all the streams can't fit into the link with their
@@ -2732,6 +2732,17 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
+	if (intel_dp_in_hdr_mode(conn_state) &&
+	    intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
+		if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
+			limits->pipe.min_bpp = 30;
+		else
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of valid pipe bpp range (%d-%d)\n",
+				    connector->base.base.id, connector->base.name,
+				    limits->pipe.min_bpp, limits->pipe.max_bpp);
+	}
+
 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
 		return false;
 
-- 
2.49.1


--T9JaGIDB2HevN1K6--
