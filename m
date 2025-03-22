Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5194FA6CC90
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Mar 2025 22:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B7510E0CC;
	Sat, 22 Mar 2025 21:00:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VV/iIerQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1A410E0AC;
 Sat, 22 Mar 2025 20:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742677198; x=1774213198;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=wg7WT8wHEfM9njVh9Y9G+bmOR61Gi4i1FT7vx64NBnw=;
 b=VV/iIerQnhwF4Hn4SUYGjvCup1JA89kv+y4UThIF0kiX8LkAaj40gdLp
 HA6Eu5Y+W43OV8JZgSUp0NTkDsEl4ncu9DBlDMhAQ/IJw+6s1xNP4Bqjh
 0pgxjKmmYbX+4FWQmLB3Kta2W+/AnGub5KFnB3T+ZNYp7QNjwjnTPQByQ
 9BVleijezN+lYmItj5m8N6dYrBZMi4rCj+0Z6n05tk5gRR8JNxDZGM/IQ
 SMV3dIdmpxuSIVnkdsHe2TScdJzzYXzoOveLujP5vFK91jvjoCpNtNvBc
 2lMxLN5mTf/WLoyF55x5+f5OsPP0OVnWdRvzCLF+W8n/JO7MN0cQHzhAy w==;
X-CSE-ConnectionGUID: QQShNYOJRWKVH8wETvFZOg==
X-CSE-MsgGUID: CerHZ4VjR1SKjfYi0CyKUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11381"; a="43082969"
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="43082969"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2025 13:59:55 -0700
X-CSE-ConnectionGUID: nkitRH0zTFiTb8qJQCshSw==
X-CSE-MsgGUID: EignLhs6R0+6L5RUxVXprw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="124212625"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2025 13:59:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sat, 22 Mar 2025 13:59:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sat, 22 Mar 2025 13:59:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sat, 22 Mar 2025 13:59:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n09oCaXKi6u7w8IGGngK3m1E9SAnuSO0SwH8/BkccP/8xcXwAIr21HsGRzGSxTIfgK0gX6BT0dgAcyC7uiSdE8F3O8t7kGo5RPOnVvqpvzwuZSpZpXs4Au+KcENbXLVTohsclGBITFWthU4xc/lw3UM7cB44nAgwmsnOQZPkDJnJ4gDMmSadSyCSM++paJCIGcjx0mEsuGncr+MhGOsmem6hMNRL/cm+/ELKauYP81C22gZTgSTgAFVUT0xPEDOK41EzlC5O4nrHUzKCrsbhoinzd9ren4Y3I42/DJvO5rmDFCU75P8MeSZ+5kkzq6Gv8suRFnPPmtB1zc5BTn2Weg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3eiFbdORNmDzPLUgxLQJ4NCSL00z/UWTiJfzo5ZC/8=;
 b=Z4kvodEUN1YKsv75OQNNj0YFjI9SoUtQtZGZ1JvykPhDkp+CGSzRTj2hMstxC8gIVUKbA/1l7a+Xx+SWls5yr+K6/OCowyb3pvPeNZQdTavavFlOpAXalGzdoz71qdGtfpl91qpTRXM6h75dketP9FCswyAvE4OyrSYPz5lb7AwTg1m6kP0iqIur+fIKVbzub8QHPsQ0vFqWCc7f6UM7OJ0hrQodisjkANJNwSSXRElcNwJbPmLao29tN9CTPn2Zn9lyRIPEdb24v4jQyE8fGOH6u4P6vHAKgwUchnw6NNzanmpDofwQ3sN/47Oai85G0dm1Ra0+tOY5VB3oHKVETg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.37; Sat, 22 Mar
 2025 20:59:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8534.036; Sat, 22 Mar 2025
 20:59:47 +0000
Date: Sat, 22 Mar 2025 15:59:44 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on drm-tip
Message-ID: <vmwzsrmrfme7liwj7nnyiocaxqgvebyfydyrzf6e2utcv4clfe@u3kxnzgezb4t>
References: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
 <SJ1PR11MB6129AAF87542D06B7A23C0FCB9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e6d65b6-4f9a-4d23-925c-75be7c4bd561@linux.intel.com>
 <SJ1PR11MB61299D9421F7B3DEA6424389B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <7db3b702-51e1-4c0d-8e0a-578239247587@linux.intel.com>
 <SJ1PR11MB6129A28720CF33982397E777B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ec6e3bb6-8093-4082-b09f-26068693b83c@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec6e3bb6-8093-4082-b09f-26068693b83c@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0146.namprd04.prod.outlook.com
 (2603:10b6:303:84::31) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|LV2PR11MB5999:EE_
X-MS-Office365-Filtering-Correlation-Id: ad0d1973-d8fe-49bf-1667-08dd69847aef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?3UNQTtjqgRDvl6KQuKg3t71nX+9eQe8vqH5iZ6+VH2hLVKQkctZgMI4Wey?=
 =?iso-8859-1?Q?yrXFiH4vf0SheYQT2tYlsJiuPDDYDf2Q8XVDrPo4oOu8oHeJEk59e5OZ/Y?=
 =?iso-8859-1?Q?efBdxPBi3MAlJAxTESXWwAPrCJ9wSK0CiSyXs9c0ILhCoYmAS7KSVZJWea?=
 =?iso-8859-1?Q?dAyueR8fKsI/JtfLmX4KO9py8GNdcAlTC4Nzxye7H4g6nBN1evcJZ4IedT?=
 =?iso-8859-1?Q?9sBosCIhJAP1GKgyYDgHQh8ugTm1TkyJaFXbvtGWwEv9ZIR1VCKWcrBoar?=
 =?iso-8859-1?Q?sdOjjOevugBFpU7ZSX4qyq6WKyg8PK1TdHDF55CDA6bUJZDgajsJldtL0T?=
 =?iso-8859-1?Q?zR9BpfiM/7GxS7qAn/Tmvtybvxji+mRvI4vcQWFTY1PPRwzEg1stCqA9f8?=
 =?iso-8859-1?Q?lLZlYtC65dPxq+Hrs0xGDgNnxKV78CaP/fpE3X8arVoHai/sr6yJYF6LnB?=
 =?iso-8859-1?Q?vjixBx2tVqNqLDD+q5/y7GFtIhr3fVX9CaDkDK3VgItxj07neXdzT7vTBx?=
 =?iso-8859-1?Q?KRCTLU82hnZ6cqumlJXWt/Z4re4aqkSNM52/S+AqSRiYCDg5dCLRC2/X1m?=
 =?iso-8859-1?Q?2bMvoHBbQmnEnX0hBVXzNVP19pzc62Mqx56yX9JjUq6ZzrsG0tFfCL9L2L?=
 =?iso-8859-1?Q?MbsF2XTJpLc85nmF/93h+ai65Y/lBgV3hmznoADiS30AGYatDOAfgLnmQ8?=
 =?iso-8859-1?Q?+AZqsjggRzX4g8pPPddVKp5fznbwPXIkwBnVPJbj2ZyR8f9pS+7WaSZ4j0?=
 =?iso-8859-1?Q?R8Aw5pDdRgYgRRklXZnG42Ue98rmV/DybMrjppirvqCrT49W+1e8/tZF2l?=
 =?iso-8859-1?Q?W0EZMecP8WlIO2g/gKyH/tuEdD6ofaAdL70pLOZsUsd6dxCjxGOgubn/Ek?=
 =?iso-8859-1?Q?5TuP6rob//Tc7j2rvg8vFAoG/znr7mglWm/vPOtlXrhA7pnfiWupsZPGuc?=
 =?iso-8859-1?Q?MMNKachDlApqQtL3QeVr0EoMGm0JEE3PMVf/cfrXSYnbpPZQh8/QzLdYrT?=
 =?iso-8859-1?Q?ZZBaDo+3aDpW6pjVfySoUHov2Gkjox0QMOmZGw7cRgpkfF1kufk8fEvmfT?=
 =?iso-8859-1?Q?32PFFddoVyiAKN89Qa1OB0T5rT70zfuYoWhxoWrAsLBcZXbBfWDgSvmlBu?=
 =?iso-8859-1?Q?wc7uqI+UmCgIpmegehrnw6UpO42AVSL0gQX6Ktz+0L7Sbruo4yk7u6UIRH?=
 =?iso-8859-1?Q?/ScTqvmeRhogjdMo4MQYh+jkkqA1C6ew0pi1eWO0VOmcIVrHoGSPGmnl8n?=
 =?iso-8859-1?Q?9L1HnpdLvEO4TaQLXQE2qcEo84zH51jpyJcrXUiSFbrMe5ERtXeLx97p0I?=
 =?iso-8859-1?Q?hZw8fwowMOW7Gk7CMOgi7eoQDICPZy1DEHXMZD9QokEqg8eES01LqVX+8R?=
 =?iso-8859-1?Q?r4g0rqtE0Xb570eSruqui7APMg6HBOkw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?h6QKUcP1DQUXMnnZsliqOx7XxaAB/NL4hdD+Mcanhk3oxaS/5KfTERfg7T?=
 =?iso-8859-1?Q?E4h5lzjxNxG0YcP/MnBydgHTZHQpADVg2+Bvi9tKGgePWHEX+RYcm/9TFx?=
 =?iso-8859-1?Q?tEgzisFoSIty5tR527xAl0n1pUqyUczQOyl+npgDD/sJ96fgwP+Ooql7AI?=
 =?iso-8859-1?Q?HJoCZXu10i+xlJQgUKBHautxDVSB/ExBLMfO7KAtUBFx772WprpA+XN7Rl?=
 =?iso-8859-1?Q?pRDYE79nLooolU3b4C25pkQqv0Up1wU8NXQDHPlLkGx/zPwBPjYosr0cMf?=
 =?iso-8859-1?Q?sVDV5CRmqSmnLzEDkSskSM1Zx8B6V9OxP2P20EhlxP8x5RweTae4IE9j3E?=
 =?iso-8859-1?Q?LFRhwwbNGmOTT1JWxaHyjm0VFFiShsGZwN0SFteIyk/5S0CsN8JQFdZq6R?=
 =?iso-8859-1?Q?bF6b95SMH719iJJ8gndDpFDaIc4sxwMeFQ97hkob8TLPiYl7+IAuHQ1vZN?=
 =?iso-8859-1?Q?pU/Hcm4+ec19kzTL48EBxHld/B8aP0wt6awJ90eNIqGwh8IaMPKmHprDal?=
 =?iso-8859-1?Q?4NCcug/8zDloH29z4u/3f3tN4TbG9S+fSZsDNsv4JX5bhc52vPIpHF9MST?=
 =?iso-8859-1?Q?96nxgNEPPa+c/OnPwkGosvlKjRST71TOsp3P9c7qC6J9qyFLqK4uxVaj28?=
 =?iso-8859-1?Q?+T47UtMyF4y8U5j4tEGBiWXHzoE3DcsF4ohJ3M2SY8jBV/PwBe8zlf5pUL?=
 =?iso-8859-1?Q?+Us9810O1ZCCJD9EU/0kJfBn5APzAXM5/cTbS50QJoXmjAEXKElnO009BX?=
 =?iso-8859-1?Q?TJcPe9gYPEUV9EII1OqzFqY76JGbrVDL3+5+iHuu2HjFUDvtl9VCF0zCoI?=
 =?iso-8859-1?Q?3SBMHwn2p9f167LVGPnIE8QUjnekqVCWYgXz/1fVK9MQWhWzB5YOb/eNi2?=
 =?iso-8859-1?Q?Qo46LijL9PtsmPX59v9Pa//55BRKLi3FTBWZzztM+USk96upspxorROrBe?=
 =?iso-8859-1?Q?WHIBxLhcJkEIFFUXaxVtCOeZY5/UuCzf7y6vYRU3Zr4vHIM2AgVbcBlcld?=
 =?iso-8859-1?Q?/JkbAhrl210y6wSYxDGAPPDccHuv2zwnIcYudR5AbQ6GR7tcK2gaKqeo9p?=
 =?iso-8859-1?Q?CVZ338pBsEMvgdYUAMrNpeEEwnPw25jvvVJ5bHyMJvvQCxnf1jvtg2k6Zl?=
 =?iso-8859-1?Q?foBzwGUaAVavkJo90373xL8USzsrS1NHprbX3CPM25ZMgMccChC6v/jlXI?=
 =?iso-8859-1?Q?8tb7YQ+PZEAG6tOaKM9jeaULUpluI2sdf7vH7Q+fdeZ78yQnA60w0yhiE7?=
 =?iso-8859-1?Q?LuMZjyFSsjN7QwIh94nBpuzotBgo4kS1E6y73K8FM2PPL3GBUGhqVxg1zf?=
 =?iso-8859-1?Q?r2gC+f+0r08fw9MFtIABuEtwDuM2p6qq2dakH1DYGVGtU6MyC0f3mGoAvQ?=
 =?iso-8859-1?Q?h/xTFf4HAXBJFj380xWYO1pPxlhCgEzp1VWujPaQ77loZqdT1hAK0LuQMf?=
 =?iso-8859-1?Q?J1qYhTs9iUV8/rS+pP8QwggQyF42G17+AN268WWvtZBJjVGiRsPWvBSWJs?=
 =?iso-8859-1?Q?zcxS+A7wZe73roLbE3s/k2Ar09xBp7OmPKxwFW8fbIiOyC7JhUj+m2Vyj+?=
 =?iso-8859-1?Q?PhS8dZRDBAL+GxTiK5N/exTO/7zi011iNKsn7NKqS4BGkK9ktI48fWC5EX?=
 =?iso-8859-1?Q?q7zN/h9Lp0qlzbXFvDhLRDohtsM294lMGXPYyX8C2x9wp2d1mAZsqMHw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0d1973-d8fe-49bf-1667-08dd69847aef
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2025 20:59:47.7731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ehlydtHcI6wt8UMpJtSwsFPZRC8WjzgDJwklFQBj0C5O+J+83Oh2lArV/p7qpI9Jz7JMZypSnHwGi25pOeRroPtO5fcBer95cb68VbRlFuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
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

On Mon, Mar 17, 2025 at 12:04:40PM +0800, Baolu Lu wrote:
>On 3/16/25 18:01, Borah, Chaitanya Kumar wrote:
>>
>>>-----Original Message-----
>>>From: Baolu Lu<baolu.lu@linux.intel.com>
>>>Sent: Sunday, March 16, 2025 1:33 PM
>>>To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>>>Cc:intel-gfx@lists.freedesktop.org;intel-xe@lists.freedesktop.org;
>>>iommu@lists.linux.dev; Kurmi, Suresh Kumar
>>><suresh.kumar.kurmi@intel.com>; Saarinen, Jani<jani.saarinen@intel.com>;
>>>De Marchi, Lucas<lucas.demarchi@intel.com>
>>>Subject: Re: Regression on drm-tip
>>>
>>>On 3/16/25 15:27, Borah, Chaitanya Kumar wrote:
>>>>>-----Original Message-----
>>>>>From: Baolu Lu<baolu.lu@linux.intel.com>
>>>>>Sent: Sunday, March 16, 2025 8:04 AM
>>>>>To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>>>>>Cc:intel-gfx@lists.freedesktop.org;intel-xe@lists.freedesktop.org;
>>>>>iommu@lists.linux.dev
>>>>>Subject: Re: Regression on drm-tip
>>>>>
>>>>>On 3/14/25 17:04, Borah, Chaitanya Kumar wrote:
>>>>>>>-----Original Message-----
>>>>>>>From: Baolu Lu<baolu.lu@linux.intel.com>
>>>>>>>Sent: Thursday, March 13, 2025 7:53 PM
>>>>>>>To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>>>>>>>Cc:baolu.lu@linux.intel.com;intel-gfx@lists.freedesktop.org; intel-
>>>>>>>xe@lists.freedesktop.org;iommu@lists.linux.dev
>>>>>>>Subject: Re: Regression on drm-tip
>>>>>>>
>>>>>>>On 2025/3/13 16:51, Borah, Chaitanya Kumar wrote:
>>>>>>>>Hello Lu,
>>>>>>>>
>>>>>>>>Hope you are doing well. I am Chaitanya from the linux graphics
>>>>>>>>team in
>>>>>>>Intel.
>>>>>>>>This mail is regarding a regression we are seeing in our CI
>>>>>>>>runs[1] on drm-tip
>>>>>>>repository.
>>>>>>>>``````````````````````````````````````````````````````````````````
>>>>>>>>`` `` ``````````` <4>[    2.856622] WARNING: possible circular
>>>>>>>>locking dependency detected <4>[    2.856631]
>>>>>>>>6.14.0-rc5-CI_DRM_16217-gc55ef90b69d3+ #1 Tainted: G          I
>>>>>>>><4>[ 2.856642]
>>>>>>>>------------------------------------------------------
>>>>>>>><4>[    2.856650] swapper/0/1 is trying to acquire lock:
>>>>>>>><4>[    2.856657] ffffffff8360ecc8
>>>>>>>>(iommu_probe_device_lock){+.+.}-{3:3}, at:
>>>>>>>>iommu_probe_device+0x1d/0x70 <4>[    2.856679]
>>>>>>>>                      but task is already holding lock:
>>>>>>>><4>[    2.856686] ffff888102ab6fa8
>>>>>>>>(&device->physical_node_lock){+.+.}-{3:3}, at:
>>>>>>>>intel_iommu_init+0xea1/0x1220
>>>>>>>>``````````````````````````````````````````````````````````````````
>>>>>>>>``
>>>>>>>>``
>>>>>>>>```````````
>>>>>>>>Details log can be found in [2].
>>>>>>>>
>>>>>>>>After bisecting the tree, the following patch [3] seems to be the
>>>>>>>>first "bad" commit
>>>>>>>>
>>>>>>>>``````````````````````````````````````````````````````````````````
>>>>>>>>``
>>>>>>>>``
>>>>>>>>```````````````````````````````````
>>>>>>>>commit b150654f74bf0df8e6a7936d5ec51400d9ec06d8
>>>>>>>>Author:LuBaolumailto:baolu.lu@linux.intel.com
>>>>>>>>Date:   Fri Feb 28 18:27:26 2025 +0800
>>>>>>>>
>>>>>>>>        iommu/vt-d: Fix suspicious RCU usage
>>>>>>>>
>>>>>>>>``````````````````````````````````````````````````````````````````
>>>>>>>>``
>>>>>>>>``
>>>>>>>>```````````````````````````````````
>>>>>>>>
>>>>>>>>We also verified that if we revert the patch the issue is not seen.
>>>>>>>>
>>>>>>>>Could you please check why the patch causes this regression and
>>>>>>>>provide a
>>>>>>>fix if necessary?
>>>>>>>
>>>>>>>Can you please take a quick test to check if the following fix works?
>>>>>>>
>>>>>>>diff --git a/drivers/iommu/intel/dmar.c
>>>>>>>b/drivers/iommu/intel/dmar.c index
>>>>>>>e540092d664d..06debeaec643 100644
>>>>>>>--- a/drivers/iommu/intel/dmar.c
>>>>>>>+++ b/drivers/iommu/intel/dmar.c
>>>>>>>@@ -2051,8 +2051,13 @@ int enable_drhd_fault_handling(unsigned int
>>>>>cpu)
>>>>>>>                    if (iommu->irq || iommu->node != cpu_to_node(cpu))
>>>>>>>                            continue;
>>>>>>>
>>>>>>>+               /*
>>>>>>>+                * Call dmar_alloc_hwirq() with dmar_global_lock held,
>>>>>>>+                * could cause possible lock race condition.
>>>>>>>+                */
>>>>>>>+               up_read(&dmar_global_lock);
>>>>>>>                    ret = dmar_set_interrupt(iommu);
>>>>>>>-
>>>>>>>+               down_read(&dmar_global_lock);
>>>>>>>                    if (ret) {
>>>>>>>                            pr_err("DRHD %Lx: failed to enable
>>>>>>>fault, interrupt, ret
>>>>>%d\n",
>>>>>>>                                   (unsigned long
>>>>>>>long)drhd->reg_base_addr, ret);
>>>>>>>
>>>>>>>Thanks,
>>>>>>>baolu
>>>>>>We still see the issue with this change.
>>>>>I am attempting to reproduce this issue with my MTL machine. I pulled
>>>>>the test branch from:
>>>>>
>>>>>https://anongit.freedesktop.org/git/drm-tip.git
>>>>>
>>>>>and built the test kernel image using the configuration file from:
>>>>>
>>>>>https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16217/kconfig.txt
>>>>>
>>>>>But I did not observe the lockdep splat mentioned above after booting.
>>>>>
>>>>>Is there anything I might have missed?
>>>>>
>>>>+Suresh, Jani, Lucas
>>>>
>>>>We are seeing this only the skykale and kabylake on our CI runs.
>>>If so, will below change make any difference?
>>>
>>>diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
>>>index 85aa66ef4d61..ec2f385ae25b 100644
>>>--- a/drivers/iommu/intel/iommu.c
>>>+++ b/drivers/iommu/intel/iommu.c
>>>@@ -3049,6 +3049,7 @@ static int __init
>>>probe_acpi_namespace_devices(void)
>>>                          if (dev->bus != &acpi_bus_type)
>>>                                  continue;
>>>
>>>+                       up_read(&dmar_global_lock);
>>>                          adev = to_acpi_device(dev);
>>>                          mutex_lock(&adev->physical_node_lock);
>>>                          list_for_each_entry(pn, @@ -3058,6 +3059,7 @@ static int __init
>>>probe_acpi_namespace_devices(void)
>>>                                          break;
>>>                          }
>>>                          mutex_unlock(&adev->physical_node_lock);
>>>+                       down_read(&dmar_global_lock);
>>>
>>>                          if (ret)
>>>                                  return ret;
>>>
>>Thank you for the change. This seems to be working. Can we expect a fix patch soon?
>
>Sure. I have posted a fix patch here,
>
>https://lore.kernel.org/linux-iommu/20250317035714.1041549-1-baolu.lu@linux.intel.com/

Thanks. FWIW I added this patch to our test branch in CI and the issue
is indeed not reproducing anymore.

Lucas De Marchi
