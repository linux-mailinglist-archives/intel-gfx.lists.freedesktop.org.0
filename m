Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756E3A7A15D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 12:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E438E10E99F;
	Thu,  3 Apr 2025 10:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XJ7SN5OR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C92710E99B;
 Thu,  3 Apr 2025 10:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743677449; x=1775213449;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=x87+yJsDrHPYhu3gPH+f1v813oNP+Pq9UkssIznDg50=;
 b=XJ7SN5ORmngdaUpWNX8+0d8Lmhm2UtrUMUwhqusFbHAHkk4nXCyUnZ+r
 Pqm1Ih9cj1S/15D4D2G1AJT3Kt9lrCO9QL01av2tRNm1r4VZGwRiw4lP9
 H6xY1x6yqIG76gr74tSj5XpoHyuzLUpvtu04NdnC/jspEXQIiBp9Xx4jH
 myQAz6ZZEiuSfNKZ3XiHrTEBBRqD2ngDNiApP6LaWR/+EbKP3tCaz6XJO
 ebz18tRfOx3Y8AJGj/lFi0isdnPr7LYrh5kiQ7I0lxx4E7fKCBnvk3rKU
 yhC7vnHoQeg3Svc2wZJokbia4MX99BDWxakPlM4pxGuIl56TFHa4hd4Wp w==;
X-CSE-ConnectionGUID: WlVErWw6RGGIQbwFJaTNbA==
X-CSE-MsgGUID: cqD+tzhdQdKjy1fEcZcQbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45090056"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45090056"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 03:50:49 -0700
X-CSE-ConnectionGUID: u56keUXaR0CCc9MHBTNdNw==
X-CSE-MsgGUID: 9cKdNz0UTXGiLdf0Mof5WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="132099856"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 03:50:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 3 Apr 2025 03:50:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 3 Apr 2025 03:50:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 03:50:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fgpcel5nMrjnzwgCfEHCmdUhjo07dYB/uUVSyERAroawVHvgB39zZnRi+CBdOYFMURsDQuvZZbGsEHRpHXtBFbaAWpn8c/dDPTJAbcVV36EiJCiXfcQR/+APZE5SM+aT1tFuDUpbjN3hQulynnaLTk+1f/XIAVRXS3OAXffvdkdCSVFOQqFF8vVjIHgB1YT66UrB6hu8/bUr1wqK9sMSXs4uv0jLD1nSBP0AdvhbB9mGYZEig5bmDsAAo2HdHHD9KHuI15uOd5/xGLXoZH01JTdotGSI2kVprgLOGZ63M4xMjIQPylxCfq0O+/5BLpa6kBUCZ0EXiPfXPtWNML95EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJy8VlvYScn67llhjP9d/zu+FSi6+YfNRHVNlUh38Co=;
 b=FM576wzE5tB4EdmE706kjBQAqbEavgGuqz7kpf6pKXPUQtKKSD3dM5zypzr+0A2JiWkES6fEvdtiiYsMnemOm3ylnP0r6RRBr3IVLec3haflZYfsyDDRTRWZa1waVJTy9bVU01bsCtU+DJsyE/K+tmWonH5AR+RSRjgDeUc8ue9/PjW07Zs42LG/EzyTpmX6ljtxszfaYkSR82mV4sXvElxNqCIsoNXulYG9zLvg4Gafk0/h9Jap/NYVrw2Ai1Q+dUEdbcxswMPGkRqOLovUMUlePPfre1BcvGQxQYxeP2mdteEfu0bCW5CK486AG9OJOtsY86uL2WIf4qUYHSZFyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SA1PR11MB5827.namprd11.prod.outlook.com (2603:10b6:806:236::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 3 Apr
 2025 10:50:31 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%6]) with mapi id 15.20.8583.041; Thu, 3 Apr 2025
 10:50:31 +0000
Message-ID: <17f7ca8a-f02a-42a3-8a1a-a053de5f0827@intel.com>
Date: Thu, 3 Apr 2025 16:20:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 1/2] lib/xe_gt: Move get/set GT freq utils to lib
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20250402013912.2981094-1-vinay.belgaumkar@intel.com>
 <20250402013912.2981094-2-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250402013912.2981094-2-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::20) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SA1PR11MB5827:EE_
X-MS-Office365-Filtering-Correlation-Id: 3143cdc6-f28a-4f73-945e-08dd729d5a5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RXAyNzE5ajFGYi9NRmFqSjdldDY0SXEyb2R4YXk1VkdwbU5MeGlEdm5BZ1ZF?=
 =?utf-8?B?L3NOUmRlWFpnbVA3S1VTT1k1dzRHV1dlSFhudjBibjl1MFJXQmxHSWNCc3dF?=
 =?utf-8?B?RmVYZEVwYkI0bTlBdEJtMnYzVEcrQzFPUjR4TSs1MFNuZTJYUGlvS2dDeENt?=
 =?utf-8?B?MUxJSzlTeUZhTmtoeVhoT1JoQzk1NDFaTkRBbHRBYXIrejNhT1U5aWJxS09N?=
 =?utf-8?B?UStmNmpPZnFRaEdScXU1SDNrci9QUytFL2JUU3lHYWFHUzd5eDZEczJOSmRQ?=
 =?utf-8?B?WFU0RlhiQlNmTGYzeVNrZmUrcFcrSDJUbCt2SWxXaXZGWTRMbmJkNEhnMDIx?=
 =?utf-8?B?Ri9NMUtoZm9DNmF0Z0FEcnphU1JmRGlEUGFOb2dnQlY3OEkweVlyMVkrRWto?=
 =?utf-8?B?bGczTzVqKzlHSU5DbGRwUnBKSWxTWmsyRnIzWGhRMnhkeVJHNll6Y3hHZm1x?=
 =?utf-8?B?aGx6MzRtT2t1dys5dlVZL3VLZks3aEwyRFJnWDExbkw4OS9lemdOYkhlV3RP?=
 =?utf-8?B?SlZVQUY1S0ltUEhMTTcrdVR1VHFPZDNETUMrclRQNGYrWmRjQ2VCWnp1cWtJ?=
 =?utf-8?B?NSt2R0ZzY2ljaUFsSHRJNmZDTUw3a2QrUEZkNS9FWThhZFczU1RVZ1hGc3FW?=
 =?utf-8?B?OUxTbDJJbWVsWmF3eGI1K1VSQ05PM1NXb05sZmN3LzVYbFQ1L0l5QUk5cEVt?=
 =?utf-8?B?NUpOSkc3TXVUNkczUkJIRmtrKytTQ3cxYUg1Ukg0a0dKRlJwRXY1ZTVLeHlq?=
 =?utf-8?B?SUxrb1dTaWg3ODQzVTdTakRrMVJxQ3FLWDJFQXN6Zmd0dTVvOVUweWcvd1hD?=
 =?utf-8?B?OEl3SlBCa21vbjExVmlCZ2lFRHVOTm9ZdlN4MGxUeUNKdzBSaG9vSWhVUWQ3?=
 =?utf-8?B?alhpaHA5Z3lxcmN1eXFPRzVWN1dreHNPVFk4c1h3M1JTWkcxSTJzWkpaanFD?=
 =?utf-8?B?eGhGVTFWWXo0bVlOeGtySzZlb3h3TTlSOU11OWRkQ1dSeW1TOEtyMHlyUmEr?=
 =?utf-8?B?V1VONERtL1R1QjF4QjgvdElnRjRvTVVTZ0gzVVRGYjYydk14L2VaYVRZNUl5?=
 =?utf-8?B?RGdhY3E1U21CUjZBakw4Umk3VGxTcmtFaXNwdERwZTIrekp3UDZzOHBRTldv?=
 =?utf-8?B?ZGE3K1BuNzBqSk9HVHBYbGVsNnZYK0RZbVhGVzJ4bU41ZkFzM3VydklseG9i?=
 =?utf-8?B?NTBvZDZhWWFnbnU1SE8rZzhkUm90c0pSRmlnS2I1bkNvbktHam5YTzUwcmd2?=
 =?utf-8?B?OHhnUEVKclp2SlFrWVpaMDdBZDdrQUtWQTlpU1RINEovT1FPUlRWZ1ZVYmpk?=
 =?utf-8?B?czhQdC83TkpSYlNIY0F3TW8vUFBXbWxpUjRxY3BFYVMzeitiRjlDd21NM3Zh?=
 =?utf-8?B?YnJMc1YwQXZUMm5VdXlXdEJpR1ovemU0WHdUdzJWVjFsbkt5anhuRURCTTM2?=
 =?utf-8?B?Rm5mQndRQThnaVJHeHJlSXNlenRET1V6L0FPQVp6SHVHQUVpRzNMcnh6RUdD?=
 =?utf-8?B?MzNWTFpiVXJtMGpQejREbzFQM3VMb1V1d0xYRVdHWlFERUdqQXdDaDRMTUhT?=
 =?utf-8?B?YjB4MEQ0MDNOalBHNkNTTnd6RE5FMys0a1FGUjZlUjFUUUJLbEkyNEFBaWNR?=
 =?utf-8?B?WngzT0VHN1pOcUk4TGR5akw2UnJqZ08zdG82UHJPQk5nYW12a3JyRWpUMldj?=
 =?utf-8?B?OWxaR0xRZWR4OTkyRFlSL2hreUVlR25qNThRdk9BR1Q0NlJzdTVXVXBWVE1w?=
 =?utf-8?B?QkVGNzA1TDlyZVVvYWpKMHB2aFhLMHN2ZVUrSHp5R2daQnM0VndpNTNId1V2?=
 =?utf-8?B?YmZjNXlMU2FTUWt0STBieHdMallnOWdwWVBNRGtxUDZQVTZhRlM0V0xOVGRX?=
 =?utf-8?Q?yNgO8r6Zae+Y+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3RndWRoSnlrSlZVcUJNZ3NCUXBhRDB5YWJYT09NNkIxT25scWVkeXR2Mmk4?=
 =?utf-8?B?bVJUNFVraFIvWG4waDRJNzRWQWdZZEhqbDJzdUM1a2NNSGRyWTkyRlY2TlZk?=
 =?utf-8?B?NjFCeXRxVzBibkVROHVJTXZ6NXEwLzBXd3paQjgyUnk1dXltK0RWckUwZ2Vk?=
 =?utf-8?B?SzNpZ1BwcDk5VE5lT20rdTF4NlYveENYcjR0YUtVY1hSV29IelRuRkw3N0sr?=
 =?utf-8?B?dWpMTjhNOUtsNUpRN3hpVCtGMkpXZW5MRThmMzBwUTEydlJwR0FhUmw4L21q?=
 =?utf-8?B?RG1YTWFnZW5rS3JQcmNQdURkbThoc3ZtWG1zSEEzUzMyZkllZzlpeE12Qnl2?=
 =?utf-8?B?VHVZaDNoaVZ4dFhhVm1idU5GK3JxNGRZaGNHK3NpRHh5WjBJTHN5bGUwZzYv?=
 =?utf-8?B?S1hIWCtSQnlUVWJ6YWlVSVRWaFlLSitHSmNqQjZCckU2eVM1Q0U2L09uYVZI?=
 =?utf-8?B?S3UzQXJseU5pelU2S1lqK2Q2WEhTZEhjYVVQRkxVZ0dlS2VZWVh3RW1YUGw4?=
 =?utf-8?B?elJjbWttS0JGM3pTZkcrMnlweEp6NFF1K1ZTWlZMZm9tMStPNkpMbUdRMWRt?=
 =?utf-8?B?YzdMRHpocVdMZmVFV2NrQ1lYZUhtNUxVTjJWSi9xVzd4TFFFbzFyenJoY3ln?=
 =?utf-8?B?YldITG5HeFdEdTlJdmx0NXJhcm9na29hZFZVUGYvZWovT3h5Y0s1dHAwWENj?=
 =?utf-8?B?S1lmQjNCcEtIUUVYKzIrdnNJZjkzQnFZeGtpT3NTT1RIckJjL09BeUVrVnpw?=
 =?utf-8?B?bEJ6cm4rdlZzZmlxbENoTFk3R3gvWVZSRk9XNWZZL3NjQjNsT0lKVGFCKzBu?=
 =?utf-8?B?elBQL3pvNWFPbEd6c1RZbFdORjhCLzI3b3YzS0xDenMxaUdLRDkzQ0pYRVFT?=
 =?utf-8?B?Z0c2enBCdm9hVkFvZnNlaEc3SVp0T3pDaXp5a1Uxd3dXQUcrbHh1eGs1S1Rh?=
 =?utf-8?B?d1VST0xqZGN1cnMzZGtaSzhVNXd0OUdUbS9vZGVJYlQvMW9RTjNLWW4rZWZI?=
 =?utf-8?B?U0FTcjBOZUdJSll3bEZTSktGazQ5M2wzeGo0U2hLMWdIMVNkMkR1SXF1NFdT?=
 =?utf-8?B?M2JWZHZDa2t3QmRFaFZzeTIweSsyeUJtVG5pYzJ5WHZZYXlqc2R1OEkvNis2?=
 =?utf-8?B?aFVoWXRFaFhNc1hjS0FzUTBKMHgybERORW8yVG5RSDlkRkJTcDBaZ3NVTG1Y?=
 =?utf-8?B?aEFKOWtxd3pmYUZGT2dKMkFLK2dNWVRYejcxYWxrQXU4MFYveG9aU09XMXkv?=
 =?utf-8?B?V0l4RUhYZXRoN010MjVzVGREWE9Yb2hKNjN6M25LaWR4OFhIOGhlS2FnZXV2?=
 =?utf-8?B?ekxSRkZxcDY5aVhnM2JJYzBRUHpaeDRLK2JUWndLTTFnWFlvT3dKdXdNakxC?=
 =?utf-8?B?U3AzTmRYWXhDd01NdllITStJVjBBWHRwZENMNGE2U2RrenJFdlAyVUdWcTJx?=
 =?utf-8?B?dGdzT0d0emxSNU5ZSXdKenJaZDJmRkpWNEt2eDZFVllpOG4wSUp0YWxXWGQ1?=
 =?utf-8?B?dmdweUtVU3NjaDhxUjRJTitheWVLb3A5VUE3L0RxNzFKOVdwaEg5bmFnRkVo?=
 =?utf-8?B?RmJvK2h6Q2tpUEk2WmZ0NnBid1paR0kzVndjSjEzSGo3WVlkMy80VFoyRDNq?=
 =?utf-8?B?bW14WUV5b1FPOE40cVo5MWR6RE5URFgvUFBVYkdZQk0vY2dxdHhvYlUxeWNH?=
 =?utf-8?B?K1oxeExici9RQWxzK1BleG5oaHNWaUF4bVp2c0VwRzZNb2s4L0kyd3ROY080?=
 =?utf-8?B?STJGQjdmc0RZWmx0bU1KT05CUjFseTN1Y2N6YlN0MUpOeCtEM09VQ255dk51?=
 =?utf-8?B?cFZ1MTNlUExia3FuNmRSVkRPbHVmVDFib1FTbzFXazI5d1FaZ0pkZ1ZKZUZK?=
 =?utf-8?B?SVZ1RnowcEpJTlBkdzZRaU9wKy94VGVoalF3a3QyaWxqU0FuYWsvNnhCRzdU?=
 =?utf-8?B?aEc5MHI2N3puRkdXWnN1ck1lb0hWNWJ0aS9OUVh1bm1tSTRwVTFhWWEydDB5?=
 =?utf-8?B?OFcvUVhzaWs0RUNzZHRPa3N5MTJZNDFOcTRaaHBKd3I4WURMakxVQURwYXdo?=
 =?utf-8?B?c2hsTy80dDZERjB4cU4xZzNUcDNyWitjREVCR0Q3dFdlYXphaUFFN1BTVUR6?=
 =?utf-8?Q?5iFzEbo177KI2J9xlRyd0U4dX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3143cdc6-f28a-4f73-945e-08dd729d5a5c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 10:50:31.1169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QLbRPkIaIGtouJT3iOZapf/WtgcCsTmJMCX2WJukeKvJg7I8+0zqfSC2DQWXEojxz0bbtsE1FSUiMiAzn3D5nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5827
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

Hi Vinay

On 4/2/2025 7:09 AM, Vinay Belgaumkar wrote:
> These can be used from other tests as well.
Could you add more description to the commit message>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   lib/xe/xe_gt.c           |  59 ++++++++++++++
>   lib/xe/xe_gt.h           |   2 +
>   tests/intel/xe_gt_freq.c | 164 +++++++++++++++------------------------
>   3 files changed, 125 insertions(+), 100 deletions(-)
> 
> diff --git a/lib/xe/xe_gt.c b/lib/xe/xe_gt.c
> index 6f1475be0..2fafd6ffd 100644
> --- a/lib/xe/xe_gt.c
> +++ b/lib/xe/xe_gt.c
> @@ -4,6 +4,7 @@
>    */
>   
>   #include <fcntl.h>
> +#include <limits.h>
>   #include <sys/stat.h>
>   
>   #include "igt_core.h"
> @@ -241,3 +242,61 @@ int xe_gt_count_engines_by_class(int fd, int gt, int class)
>   
>   	return n;
>   }
> +
> +/**
> + * xe_gt_set_freq:
> + * @fd: pointer to xe drm fd
> + * @gt_id: GT id
> + * @freq_name: which GT freq(min, max) to change
> + * @freq: value of freq to set
> + *
> + * Set GT min/max frequency
> + *
> + * Return: success or failure
> + */
> +int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
> +{
> +	int ret = -EAGAIN;
> +	char freq_attr[NAME_MAX];
> +	int gt_fd;
> +
> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> +	igt_assert_lte(0, gt_fd);
> +
> +	while (ret == -EAGAIN)
> +		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
> +
> +	close(gt_fd);
> +	return ret;
> +}
> +
> +/**
> + * xe_gt_get_freq:
> + * @fd: pointer to xe drm fd
> + * @gt_id: GT id
> + * @freq_name: which GT freq(min, max, act, cur) to read
> + *
> + * Read the min/max/act/cur GT frequency
rp0/rpn/rpe

enum that matches the string would be better in case
some other test sends a wrong name, but upto you

With addition of the missing names and descriptive commit message
Reviewed-by: Riana Tauro <riana.tauro@intel.com>> + *
> + * Return: GT frequency value
> + */
> +uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name)
> +{
> +	uint32_t freq;
> +	int err = -EAGAIN;
> +	char freq_attr[NAME_MAX];
> +	int gt_fd;
> +
> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> +	igt_assert_lte(0, gt_fd);
> +
> +	while (err == -EAGAIN)
> +		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
> +
> +	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
> +
> +	close(gt_fd);
> +	return freq;
> +}
> diff --git a/lib/xe/xe_gt.h b/lib/xe/xe_gt.h
> index 511b31149..06a59281c 100644
> --- a/lib/xe/xe_gt.h
> +++ b/lib/xe/xe_gt.h
> @@ -23,4 +23,6 @@ int xe_gt_fill_engines_by_class(int fd, int gt, int class,
>   				struct drm_xe_engine_class_instance eci[static XE_MAX_ENGINE_INSTANCE]);
>   int xe_gt_count_engines_by_class(int fd, int gt, int class);
>   
> +int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq);
> +uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name);
>   #endif
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 843144ad2..4adb205c9 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -14,6 +14,7 @@
>   
>   #include "igt.h"
>   #include "lib/igt_syncobj.h"
> +#include "lib/xe/xe_gt.h"
>   #include "igt_sysfs.h"
>   
>   #include "xe_drm.h"
> @@ -36,43 +37,6 @@
>    */
>   #define SLPC_FREQ_LATENCY_US 100000
>   
> -static int set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
> -{
> -	int ret = -EAGAIN;
> -	char freq_attr[22];
> -	int gt_fd;
> -
> -	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> -	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> -	igt_assert_lte(0, gt_fd);
> -
> -	while (ret == -EAGAIN)
> -		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
> -
> -	close(gt_fd);
> -	return ret;
> -}
> -
> -static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
> -{
> -	uint32_t freq;
> -	int err = -EAGAIN;
> -	char freq_attr[22];
> -	int gt_fd;
> -
> -	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> -	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> -	igt_assert_lte(0, gt_fd);
> -
> -	while (err == -EAGAIN)
> -		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
> -
> -	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
> -
> -	close(gt_fd);
> -	return freq;
> -}
> -
>   static bool within_expected_range(uint32_t freq, uint32_t val)
>   {
>   	/*
> @@ -134,8 +98,8 @@ static void test_throttle_basic_api(int fd, int gt_id)
>   
>   static void test_freq_basic_api(int fd, int gt_id)
>   {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>   	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t min_freq, max_freq;
>   
> @@ -144,29 +108,29 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	 * RPn is the floor
>   	 * RP0 is the ceiling
>   	 */
> -	igt_assert_lt(set_freq(fd, gt_id, "min", rpn - 1), 0);
> -	igt_assert_lt(set_freq(fd, gt_id, "min", rp0 + 1), 0);
> -	igt_assert_lt(set_freq(fd, gt_id, "max", rpn - 1), 0);
> -	igt_assert_lt(set_freq(fd, gt_id, "max", rp0 + 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rpn - 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rp0 + 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rpn - 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rp0 + 1), 0);
>   
>   	/* Assert min requests are respected from rp0 to rpn */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rp0);
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
> -	min_freq = get_freq(fd, gt_id, "min");
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rp0);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
> +	min_freq = xe_gt_get_freq(fd, gt_id, "min");
>   	/* SLPC can set min higher than rpmid - as it follows RPe */
>   	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), min_freq);
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
> -	max_freq = get_freq(fd, gt_id, "max");
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
> +	max_freq = xe_gt_get_freq(fd, gt_id, "max");
>   	igt_assert(within_expected_range(max_freq, rpmid));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rp0);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rp0);
>   }
>   
>   /**
> @@ -179,8 +143,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>   
>   static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>   	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t cur_freq, act_freq;
>   
> @@ -192,50 +156,50 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   	 * And let's do this for all the 2 known Render Performance (RP) values
>   	 * RP0 and RPn and something in between.
>   	 */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>   	usleep(SLPC_FREQ_LATENCY_US);
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
>   
>   	if (gt_idle) {
> -		/* Wait for GT to go in C6 as previous get_freq wakes up GT*/
> +		/* Wait for GT to go in C6 as previous xe_gt_get_freq wakes up GT*/
>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert_eq_u32(get_freq(fd, gt_id, "act"), rpn);
> +		igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "act"), rpn);
>   	}
>   
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>   	usleep(SLPC_FREQ_LATENCY_US);
> -	cur_freq = get_freq(fd, gt_id, "cur");
> +	cur_freq = xe_gt_get_freq(fd, gt_id, "cur");
>   	/* If rpmid is around RPe, we could see SLPC follow it */
>   	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), cur_freq);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		act_freq = get_freq(fd, gt_id, "act");
> +		act_freq = xe_gt_get_freq(fd, gt_id, "act");
>   		igt_assert_lte_u32(act_freq, cur_freq + FREQ_UNIT_MHZ);
>   	}
>   
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
>   	usleep(SLPC_FREQ_LATENCY_US);
>   	/*
>   	 * It is unlikely that PCODE will *always* respect any request above RPe
>   	 * So for this level let's only check if GuC PC is doing its job
>   	 * and respecting our request, by propagating it to the hardware.
>   	 */
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rp0);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rp0);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>   	}
>   
>   	igt_debug("Finished testing fixed request\n");
> @@ -250,25 +214,25 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>    */
>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>   	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t cur, act;
>   
>   	igt_debug("Starting testing range request\n");
>   
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>   	usleep(SLPC_FREQ_LATENCY_US);
> -	cur = get_freq(fd, gt_id, "cur");
> +	cur = xe_gt_get_freq(fd, gt_id, "cur");
>   	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		act = get_freq(fd, gt_id, "act");
> +		act = xe_gt_get_freq(fd, gt_id, "act");
>   		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>   	}
>   
> @@ -282,21 +246,21 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   
>   static void test_freq_low_max(int fd, int gt_id)
>   {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>   	uint32_t rpmid = (rp0 + rpn) / 2;
>   
>   	/*
>   	 *  When max request < min request, max is ignored and min works like
>   	 * a fixed one. Let's assert this assumption
>   	 */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>   	usleep(SLPC_FREQ_LATENCY_US);
>   
>   	/* Cur freq will follow RPe, which could be higher than min freq */
>   	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ),
> -			   get_freq(fd, gt_id, "cur"));
> +			   xe_gt_get_freq(fd, gt_id, "cur"));
>   }
>   
>   /**
> @@ -306,18 +270,18 @@ static void test_freq_low_max(int fd, int gt_id)
>   
>   static void test_suspend(int fd, int gt_id)
>   {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>   
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>   	usleep(SLPC_FREQ_LATENCY_US);
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
>   
>   	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>   				      SUSPEND_TEST_NONE);
>   
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
>   }
>   
>   /**
> @@ -330,24 +294,24 @@ static void test_suspend(int fd, int gt_id)
>   
>   static void test_reset(int fd, int gt_id, int cycles)
>   {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>   
>   	for (int i = 0; i < cycles; i++) {
> -		igt_assert_f(set_freq(fd, gt_id, "min", rpn) > 0,
> +		igt_assert_f(xe_gt_set_freq(fd, gt_id, "min", rpn) > 0,
>   			     "Failed after %d good cycles\n", i);
> -		igt_assert_f(set_freq(fd, gt_id, "max", rpn) > 0,
> +		igt_assert_f(xe_gt_set_freq(fd, gt_id, "max", rpn) > 0,
>   			     "Failed after %d good cycles\n", i);
>   		usleep(SLPC_FREQ_LATENCY_US);
> -		igt_assert_f(get_freq(fd, gt_id, "cur") == rpn,
> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "cur") == rpn,
>   			     "Failed after %d good cycles\n", i);
>   
>   		xe_force_gt_reset_sync(fd, gt_id);
>   
>   		usleep(SLPC_FREQ_LATENCY_US);
>   
> -		igt_assert_f(get_freq(fd, gt_id, "min") == rpn,
> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "min") == rpn,
>   			     "Failed after %d good cycles\n", i);
> -		igt_assert_f(get_freq(fd, gt_id, "max") == rpn,
> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "max") == rpn,
>   			     "Failed after %d good cycles\n", i);
>   	}
>   }
> @@ -448,8 +412,8 @@ igt_main
>   		stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>   
>   		xe_for_each_gt(fd, gt) {
> -			stash_min[gt] = get_freq(fd, gt, "min");
> -			stash_max[gt] = get_freq(fd, gt, "max");
> +			stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
> +			stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
>   		}
>   	}
>   
> @@ -525,8 +489,8 @@ igt_main
>   
>   	igt_fixture {
>   		xe_for_each_gt(fd, gt) {
> -			set_freq(fd, gt, "max", stash_max[gt]);
> -			set_freq(fd, gt, "min", stash_min[gt]);
> +			xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
> +			xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
>   		}
>   		free(stash_min);
>   		free(stash_max);

