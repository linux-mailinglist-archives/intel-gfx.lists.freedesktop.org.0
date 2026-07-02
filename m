Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FBtzDbgCRmpRHwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:18:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0596F3BE8
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:18:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RaaCib6g;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B76B10E450;
	Thu,  2 Jul 2026 06:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C84C10E44E;
 Thu,  2 Jul 2026 06:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782973106; x=1814509106;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=j5LSIFwdwYnMB8V403/+xjTyI7Y1cJHsM7msaW1IMks=;
 b=RaaCib6gnFBx+bsdN7bi6QvawbDhwbAMDevT8dAhOyqtUSbvij0PeF4E
 p+FF0MS8JJtd7Vxxpl/smWK7xR27amkaItfgSdu5YbL7Dbw05HHGwsIKN
 miMm1QfvkHuywr4R7ajvgImvKUWDy6QWl1UqLwvSsaiE+7/GKnoA5VNJR
 fARP2rATnlKDYp2vA/mIg7Ld6tFnNSZZLv5DAX5dvKOhGLMEXU5gxBdTQ
 agPopGeBivRi32HvlgVgQvOFm0cK25bBV+yHBpplACDhG+p7fbOhZjHOL
 v3K3s8iWzzxibKR0omKTuBabn1qSzhUHG1Ru62UvoPje0oTRtNI7eDBc1 g==;
X-CSE-ConnectionGUID: QkrccRynSMe3RIwEwurARA==
X-CSE-MsgGUID: X1PEa7glQI6fGVHLjcPHpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87629021"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87629021"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:18:26 -0700
X-CSE-ConnectionGUID: lb5C4i0eRseT0MJHoxDLoQ==
X-CSE-MsgGUID: NjPDKobGS2y2F/oZooN78g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="246417512"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:18:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:18:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 23:18:25 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:18:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sBvML4lEQT/wZNpc4zpI3DYx77ADmK2QxDsNxExv48ppTUjkJTfrT83whOdN4s/ojzOKxVM4FQTim4KV9cthUiTzCJUNQojOAHT9R3FK3KQCRD3EwdiktNkbPjslz1bB8zVYypJbP2QXk6r66T8RQo183t6Itov0Tol9V78eFsvNY4sYBHfuJyUFD4oqmZ/0/eWUWgkLpb3ypm/EXUY1k5ApqXteRwxmcwi5jOT5gV6OfbTLmatuEu2Thk5wMIvk3dvvP9lBShxHBjq/qw56jSLYzWzXqyebMGOQhp6t3BbAeGvsAqZbheY8xyECGoq9SZWiu9P4mmbCxojawi+T3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TvWhUKqvLYP6A05L7pbCKEruR5hTH971qhPR2upRgQk=;
 b=F0I68Bx/YrB5oBq7NMvkL7sKOePeFnEJYePrp9u+JF5oiaqxnn/OFwK0ht/OpNNv2XiJ3ek4vivn+IkYrwI79oAbwrgSvnXtghWPMWpOPUY3WigOV0oU+PmPxK7PsnukcEpN0BIaHgR6QQBqzUT8Qe1cKw2AILZAQ4Zq2c5PRwDn2jFSmmB0hK/VGB056YWFmAg2Ky4hvQ57klPEZFcknUbffYvMsfoItd7B3M5gnfGsK0/nZDqw5mYDarxF7mBjnuh14vqqZUUCz1rE/xcciU38qCxxxigXQnwaLfLp8VrCIHQ/jFzT+3wLiIz8/vrxLVEbXFIShJdnWKG9vfST8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by LV8PR11MB8535.namprd11.prod.outlook.com (2603:10b6:408:1ed::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 06:18:22 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 06:18:22 +0000
Date: Thu, 2 Jul 2026 06:18:12 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>, Andi Shyti <andi.shyti@linux.intel.com>, "Robin
 Murphy" <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915/gem: split shared memory allocation
 table logic
Message-ID: <5yosfyp4yuvix56sc7uzsbelndiph2ibzzg747lyrklqjy4bxr@mbbbcvl2cczk>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-2-krzysztof.karas@intel.com>
 <akUibf3NyThHnXco@zenone.zhora.eu>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <akUibf3NyThHnXco@zenone.zhora.eu>
X-ClientProxiedBy: DUZPR01CA0329.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::28) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|LV8PR11MB8535:EE_
X-MS-Office365-Filtering-Correlation-Id: bb3c58e7-434c-49f4-11f1-08ded801b7a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|4143699003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: TXH1QHtjpjylduA7DO/tssn/N3F/fkHYNOb5fdAdVtTPNcMLeJbGv1do7l6YT6Wg90jmTeoiEqG6hCdAFQZItfMGZT9MLPRH0ZdqLFXK+JPTvVWKvSxG7/oz1VnCGQK/s8dNQYK/UN5qPa2KLjr1zGnaqonsguAObFOjH6ICYvTIImUvKb9AzZeG+MLk09HnKTv79Ys4GG3YR6GyM3+w58WTSgIs03+zxkbVFquYrxbR4SKVrT26XSVJr/IW668jRL52JGhQ3P80M7eMDlyqB9yvYphiF/ceLPLotDzy2Ya5nkAbOz0MTw9h+Kb1M2+fkSrugvRzRXDZMvYHH5RD8xwiCzI6VUlaUYCZcwAHajVA8UWHYWtU5jVYLCc825PH2ePRYEaRDO89RnTF5J90m5BRmEwk2PP08U8RvnlKTavs7c9NhRD7dx4mw3/uhk3r+PlwA7yBuLyC/iHhep5fIoWjIWkCuaRIXkqmf6sPi8mohFW6So9bFFbdLcBmJ4bEiIF2EuEFTdCypcTDUcDmDd4teOonAOjQSOaGYJBrBJKPU+L/MD89zbB0tL8qCsAI6+4fWb5u7+Nn+AS9AdAV4ajDlBtpRuSFeyoXJZLFZU96HQvTDRhtLAqa0NJREXlO7pDXFg2+tgLDX6K4kRAqR0Gf+DHYe9VOioskOps38SE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(4143699003)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlI5UWRSeCtvY05MaUEyN284akcrN0NmL0NtWHZUbEVJVVE4UlorbHIrTmtF?=
 =?utf-8?B?d0tvN2tKOEJxZmlKa05nRG5vR2t3N3QvbzFhVTVkMlFUSytSNHNMMFdqVzEy?=
 =?utf-8?B?RjZXM0JISmg5VXh1TGs2TXBjOXZvWU9XTTBZbUpTQ2drRkxNdUFtNWd6Tjh4?=
 =?utf-8?B?OFZyNmk3SG5NQS9GMS8zUzVnMU1RYnJoekZLeHVhMklNNXIzUWpSbmFOZlZR?=
 =?utf-8?B?RmdLZ3Y1TGJ1dkVqbUQzWnQ4dnlvNWNvM2NzaGF4WmZoS2hGZkxISHZBV1Zz?=
 =?utf-8?B?SUYyNFBmVDRrM0lYanBhaWpTMUNlN2lzMm9wSml6TGIrOE1JUWdwZ01qZTcy?=
 =?utf-8?B?WXVBcWJYSFZJeUZtWXhUQ3dEUDJTYjZWblU1QmNPbnM1OFVTa0pvalQwZXRC?=
 =?utf-8?B?T3NTMXExeTRCNkI2d0Nlcld2enRENzdncDAxSC8zTzZPUVBQd044dGsrWUVU?=
 =?utf-8?B?QW9VdzRrY0tCL3hHblY5SFhtVzQ4OTdwSG1qSmphWk5iakttQkI2RXlqcUVo?=
 =?utf-8?B?TlpIWGdHdEpZM2JkRDJEWUVYR0hleXovZHh3NTBPQVVKdVRueTVBV3doMGc1?=
 =?utf-8?B?UWFjZDJqWmJxdlBpWVVMWGxMWHJ0enFYL0ZKVzBvTHNuelE0SFRQcDRyQ2tK?=
 =?utf-8?B?b3k2SCtaK1NvNlI0ajJPTmsxczJTRzU2bUUrU1FZdU9HL0d3V3NKYitTakty?=
 =?utf-8?B?bFdjU1g2YUtkdW1UeWVaZ200OWtkazVQK1VMb051eTVOVnQ5ai9jcUVqRVEz?=
 =?utf-8?B?K21JR2tWcUowOTcxWmdWWG9kS2dRRTBZaURHajJUZWUzTzEzYWlkUFZzRWZa?=
 =?utf-8?B?Q1E5M08rci9LYzJnS2NSWEVkb2FrOVJ6aDBpRG5VZzBRMEhuMW9IUlVFVmVZ?=
 =?utf-8?B?SThRN2toZ2NwVzhXazlRMnFaQ3hNYk1sT2JLMkVZZlZ2dW1jOTVpRGVPR3lW?=
 =?utf-8?B?Wmd0a3RXMHdLTy9Xcm1sS0Q0TU1IcFo3bE0vZ3NuK0xxckVZcThxTUIrZjI0?=
 =?utf-8?B?cXFJbHVCRHRpRUVQa0FMY1htT0pKanBiK0hCYmVsR1Z1a3M2MTBkTW9WK3pq?=
 =?utf-8?B?bTdDYWpyRmpOQWJ5MTZDbEtVbVd6VmI3VGZPYlR6OE1ZM296aXZUc3BXRE8v?=
 =?utf-8?B?bnZFdXk1SVlKZEt1L2Q5b3haTXc5K2RXa1ordDNOVFMvUCtBei9qcVdmSW9X?=
 =?utf-8?B?a3FyYVUveHY2RU1LaTMrUDQ5L2tVTlprMXhvWVNjTzg5d09LdEZrSjFWTzZz?=
 =?utf-8?B?RWZSNGZHZ0hlNldZZTlrcXBxUXJ2a1dYMmdiNVdDWUt0R3J4dUpnMTBGeVZa?=
 =?utf-8?B?ZXhac0g1SlVwTlZ5NU9odnBtWVcwREswd3p2cGJYUEpQejhyVm5Dd3pnb29O?=
 =?utf-8?B?RStvVzZ1TXltanRraGVhNjhFZ0Y0UXdhd29wRHQ1Yy9peHhOVk9jczUrVnVv?=
 =?utf-8?B?K2s4a2lpTExpWENwK1MzWlJmYjRYK1lZWnJyUXR0dm1jcVphTjg1UWtsQkgr?=
 =?utf-8?B?eHhhalZTc25KeHJFWHVWWWpzc1lpb3NzaWd4Y3ZNVStwR1BGWXZINit4QjdZ?=
 =?utf-8?B?Q2VLa2hPRW92QWdHWjV4VWEyMEwvRVc0TlRBdE92ZkIwTDRabjYvcTc3NjlP?=
 =?utf-8?B?cXpVUTRLcW5LRTBuNUtnN1NIVmdUOEc4UGRIV1liNzQxejQvazZnNHE4aVlo?=
 =?utf-8?B?TkgvSnZ5Yk9wc0RjYUxxelpwOUhQc25hNnk3OFBzL1NUYUhDRk5ub0Q3bG9x?=
 =?utf-8?B?Q0JiQ1BxVEcxTm5XY2cxSXgyNlhzVFJDc2twTURFWkJVOTFXbCtuZDEvZk9H?=
 =?utf-8?B?R1N2MmR5YVVQQTVQbzVNOHUwNkhWWDJ6UjhQdm1IT0JLVnVhaFZoNFIrdWYw?=
 =?utf-8?B?U1JuMmQ3ZGlVR3AwbGxsOEgvVWIwMWdCN0hoTER6MUE3OXpoaE9SZWNWcVlE?=
 =?utf-8?B?QmxrNGpyN3FWQmswYzBYSzlvQnJEKzdyb2pQYXpVODlGN21TbkR1SkNqNUc0?=
 =?utf-8?B?RzBvaDRad0hRZkRZdVI3WGNWdHphKzFxdWxVOFUyQnFuUTNVK0Fnd0Y3ZFlX?=
 =?utf-8?B?bUduMDBLazNGalVVcDNWUlA4Vk9TMmVhN1B5SjZPZWZtSDVGZ2k2VmUrc0sy?=
 =?utf-8?B?U2g1MjVqQzdhS1lVOVd6UzhUZzNuT2x0WUsyeXhmWHlwenNUNko3bHQxZjFx?=
 =?utf-8?B?NjhqQ01YS0sxQjdpbWg5TC9TbVM1aTd0bm9PWlVWM0pRVEFLMGczZzBtV2tY?=
 =?utf-8?B?c2tlMHIwbi8zY084eXBjZk9WcDNiOWxtT05IclcwSW9tVlRCd2JuV2tCekhI?=
 =?utf-8?B?cWFXSHAzVTA1U3pucVh1cjlQS0JVVklmSnpYaklQdXFyNi9LdzQ0aTRORGly?=
 =?utf-8?Q?fgRUk7X1eBezTZiE=3D?=
X-Exchange-RoutingPolicyChecked: DxiCNG2c15drEOs9jqjNx3i0nZYxUWKY4k1vDuMhCYeqnP9DefznotMpTrJnOQW5CMNbOYtbLv2yStmvbfOb5QG/tPeYZ1EZ/ylEr1Z6pwiClaFsEy9/tK/W/Jo7axMFcSd67YpTmVUnHSNOXSXlG3sUXVOHcAp+DgAfYpWFVYYekpdf2I/R/dAZ5d9xWO+FGRT7Ykw8HGP7Y3HAhcOdCaKQ9SXO7n9zfm/ymlMhzyLqOTBIb4OTuiPPibBsFbL3GgexDadvnXXIYPZ7sIHOI06EXaHm3kG+Cc2IReuepB9/39g9bCswzvT2kL6dNXbOqbCORfGsMmjJcTSmToI2AQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3c58e7-434c-49f4-11f1-08ded801b7a3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 06:18:22.1936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /BHTd8d9CCdZU2yRkSd9FmsPHypnS52OC75LDSLNyX7Yza3azW7A87bpbGA7kMH9RGSvv63iegySi5k2ALR4kRQ7BJCO3Iim4v6sybgLYTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8535
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,mbbbcvl2cczk:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE0596F3BE8

Hi Andi,

thanks for reviewing!

On 2026-07-01 at 16:38:11 +0200, Andi Shyti wrote:
> Hi Krzysztof,
> 
> On Wed, Jul 01, 2026 at 10:44:35AM +0000, Krzysztof Karas wrote:
> > shmem_sg_alloc_table is a complex and hard to read function.
> > Split its logic into smaller pieces to improve readability and
> > reduce indentation. Change the main "for" loop into "while" to
> > get rid of obscure iterator "i" and be more explicit in
> > traversing scatterlist.
> 
> any chance we can split this cleanup into smaller pieces?
Yeah, I'll work something out.

> 
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> 
> ...
> 
> > +static struct folio *shmem_shrink_get_folio(struct address_space *mapping,
> > +					    unsigned long folio_index,
> > +					    gfp_t gfp, unsigned int pages_left,
> > +					    struct drm_i915_private *i915)
> > +{
> > +#define MAX_READS 2
> 
> This MAX_READS here is very ugly! Just use 2 and explain it in a
> comment. In the 'if' below you can check out of "if (... || i)"
> and still explain it in a comment.
If we are on the topic of personal preferences, I'd prefer
moving this to a variable instead of leaving a magic number
buried in the code. The comment is unnecessary if you figure out
what this loop does and in the end "2" is just a number somebody
picked way back.

> 
> > +	struct folio *folio;
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < MAX_READS; i++) {
> > +		cond_resched();
> > +		folio = shmem_read_folio_gfp(mapping, folio_index, gfp);
> > +		if (!IS_ERR(folio) || i == MAX_READS - 1)
> > +			return folio;
> > +
> > +		i915_gem_shrink(NULL, i915, 2 * pages_left, NULL,
> 
> /pages_left/page_count/
I mean, sure, but is there a reason for using "count" instead of
"left"?

> 
> > +				I915_SHRINK_BOUND | I915_SHRINK_UNBOUND);
> > +
> 
> ...
> 
> > +	}
> > +
> > +	/* Should never happen */
> > +	WARN_ON_ONCE(1);
> 
> no need.
Okay, I'll remove it.

> 
> Thanks,
> Andi
> 
> > +	return ERR_PTR(-EINVAL);
> > +}

-- 
Best Regards,
Krzysztof
