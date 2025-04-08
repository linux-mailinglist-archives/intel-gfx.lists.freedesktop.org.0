Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E55CA817C3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2EC910E770;
	Tue,  8 Apr 2025 21:44:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XR2WdJPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1594B10E76F;
 Tue,  8 Apr 2025 21:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148658; x=1775684658;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=BDl9p7KHp4pIvi8iAyu/6zPoM4meydAh5bKRzmXElFs=;
 b=XR2WdJPR4ZSBOoqgULwXqJiZabxSo22icRYU1/YP6zK4pQNfiuQKj7du
 iqKw5m4W+DWl23E21IY5CFWkaVM30yKjF/kNXHkN8PdPgsbqxlBwjmKID
 af9SVrmat71VlAxr5A0FVH8kIxZRK5BgOgy+t5RFl8RDedy2e2v/EAXZR
 hvajQJKHvl16QK0cvSNDyR9W4pQpY31HIKble146EC1xpgeElwoNszWZY
 uWzTPFd/zeAK7fX95Pu/IekAVDC6VdGXcI5o6l23UlVp808sVKlbozGJ6
 gr7kxi6WNPZmzWxc7LwR5KaCWY+aOS3zdwf+NZ3xECSFsGx4mU573AFTb g==;
X-CSE-ConnectionGUID: zkzAPRPfRp6k8Avx2K0fxQ==
X-CSE-MsgGUID: 5ZAOjxZATZyFf0BYX4N/3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44746768"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="44746768"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:18 -0700
X-CSE-ConnectionGUID: +HH9OTcAQ/qlmnifggM4kg==
X-CSE-MsgGUID: CO24pHdjROOcH1Wig9wZew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128381241"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MNIdzJcpfHtaOvLPYIT5kLGx2wgWrY7+tP/IRG0CYJX8SYEAG+tp1vx/KWuAf0C2aXQuL81yzFZaf2Oo3DwF/lKvTQvmRZyFS5ADaTxEUkvKUsoPo3FOW/pXDJ4c5DuZj4jTR+uxO4jR865JWLJ6knni9lW5xAJ3ux36TlaKSTwPvRCBe4mkEX6XWughAhnUdZZh395+/daau0IseavezTGO8FS2LXBLWn7pAYLFexf3NZfjbHwbbccgjPz4NMgHR/yk7/0JyMnO1Lsoj2U10CCfQ/RQX+j0AR+gITqFJCGc9gKd+00tdDjyKdcP0ZjkrF8g8t+TF6YDm4RpXVSeaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RMY6D4xCdkT4NiqrrHr5/MIg7rNBLh9TPohueQ40+RA=;
 b=kOfu6MrV1YHoiq9iF8YYeXGf0qq4WPdaMTR9w0Du4tliOkUWdrz9zvTs6X/J+bSyL9Julcj3/Quw6joz54G3WDeETnqAeDwj+hLPuduWnZIIVhHrRs9sSUsf6t6XQNxzm1n/zV/vSeFBxZksLhKPhPH6zstrBJv0bycHVJdIn9BJyzf229+xh9OxuRhMhPaQ6aFLtZT0zDm6DboZBzXMl2ds+7zIKUnA2yn9mdHM2B2GxoQDXnzPadZvDmMCFXHvAt0HqV6k38+1seVTp9U3+FyZGLDcLjMhKLsZmfW09G0y12yqMilMvnVeJDZPmlSm9DiaNZ56VeyZiFKh38AFGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Tue, 8 Apr
 2025 21:44:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:44:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 09/10] drm/i915: Add support for forcing the link bpp on a
 connector
Date: Wed, 9 Apr 2025 00:43:39 +0300
Message-ID: <20250408214342.1953197-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: e8a072e1-c637-435e-7f02-08dd76e678c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnR4Y1AyUHJQU3pObVp0bWZId1Z0LzhJYUY2dTgzVDIxUEFHWHRweUtmMTl5?=
 =?utf-8?B?c1FNRUhXNHd6MkpQZjBIdnowMndxV3M0U1hNK084YzFkMUdhZGpSL0MyT3V4?=
 =?utf-8?B?R3g4QWdCSm9ZU0hYWlJ2WWRpK3pkYkJHdVBxaGlQQkhSMVAreWl2YUlzdW9u?=
 =?utf-8?B?YmZoaEl6Uk5QcUc0ZGRramJQaFAwTUVQYlp6bG8rMW1IT3lGZzJnTGJ4Q1J6?=
 =?utf-8?B?YUhJcFc3M2R4WlU0RXRzUGw4eldYZ3puQ2p3Wlc0Y01rOEQrazgrNW5KODNG?=
 =?utf-8?B?dXJ3aHRZK3pLaSt3UkVMTGtQcUxtT3EwU2dma240MWNGc2hrb2JaVVUvRGFy?=
 =?utf-8?B?ZG56Ujc0eWtSelIrRVRYMWttdjZ3T0thOUxhbGpQZXRKcmc3c1dabkJCNzZs?=
 =?utf-8?B?TzhMcDJzbzUvWkYrcU93OWpBRHp1YWZuc2srRXhGcFlRV3ByZjNlOWQxUVVR?=
 =?utf-8?B?VVYyVzRxQ3ZCcERmeEtkUEs4RmhTRGl4WTJIZlEwRHFCdk02SVJVeVgzZnRT?=
 =?utf-8?B?S2RXSStjbXFOVnY5N1c2djE4UEVDYTdkNmpNaEhiNWxPU0tqYzAwVjl5STBQ?=
 =?utf-8?B?bDk5Tll3a282cS9CZTgrYjZsZDJSMm9ZOHJsMGlEcVNlRHJTOHBBV1I2L3B0?=
 =?utf-8?B?dnRucmRpNEt2T1NQOGlWVEJmMEZsc0RUVHBvRjRCL3lXRFZna045b0ZzTDFw?=
 =?utf-8?B?WDB2SzhEeFdpL3RDTFc1MldFdVo2ZUxaY1VNZDBmL3ZMYTZ5S2lmbUlrWlVv?=
 =?utf-8?B?OTJldXpxY005VHZtWFBOVmx5OHdWTkQ2VmxSWDgwNEFmQU45ZXFhN3hlTzhG?=
 =?utf-8?B?ZGxJYVBkVERIbW91a1hPcDI4bFlFR3RQdXEyQkNMUlBzcnRyOFh6NnErVVhF?=
 =?utf-8?B?ZVdWU25LSkpiNmI2UnBkS0dSVHRvZFgwNVNDT2VDb1BzZnpDai9PU2VSM0xZ?=
 =?utf-8?B?NzhuS0txekJYTExGUVl0dmc0UmczdmpoUnp6SzBuWVBJb2RjZ3d3Q3NOdkpm?=
 =?utf-8?B?bDJRSU4rMnVoS3IzcUgrUHVQWlp0UUVVRnFsL2lKTEFobHl2Z0x0amtCaWRN?=
 =?utf-8?B?VFlFdE41UldHS3gwazNFejVsVm10Ukp5NEpVVStXTW9aMTZRYStIVllPck1j?=
 =?utf-8?B?cVVWcGNYWVVtazJya29jUlJQdkRRMnZKU1RtL0wwTFJza1R2RHN0TFY1a2l2?=
 =?utf-8?B?bmwxbnlwZVc2RzJhZVl5TDhIbW94NkRPc0RaS0RBNHRkeGhSM09memdmTkhw?=
 =?utf-8?B?SWJDNmlrWSthR0tPbDEvODV5OGswTW9KV1d2bkJwdlFhT1NIRHZGQnlnbEs3?=
 =?utf-8?B?N2YyY1c0c3ZrTmVTL2o1TjBwWG5XS2ZVNDJsQ09kSlBJV2hsSlRXc3R1bjJE?=
 =?utf-8?B?WUczVnNWSnlWVlJ6TnZQbUFCOE1hdFcyZ2RoSlhxWUN6VHF2cnEwVDVBVmRj?=
 =?utf-8?B?REplcXZ2bmhXQmN4by9YVXo3RWprNXBRTTl0L1dUMVgxTHpodXJpbk1QVHhn?=
 =?utf-8?B?SC9SVnhKekdVQS9jdkdCSzlxUjl4V3dtSTVEQWNOL1o4Q3ZzTUZkQlpsem55?=
 =?utf-8?B?aHdPQzNtWHo3aTkyNzRzZGloK1hQc2NIczlGN3pQVURIY2VvblE1ZHJvaDBV?=
 =?utf-8?B?OW54T3Nqc24xMm53RW45TnFyWXNtNTd2czFnWWxqSGVRRlh5WjBtdmphdTZz?=
 =?utf-8?B?YmdIS1prcVlLQnAyMlRhc0dCdDFnVTdDT1pCQVZXd2xzQVlvMkRQVEpYTVYz?=
 =?utf-8?B?RTdOZ2E0ejk4S0FZc2xwaWt6dVRSNjAzSlU3cFdLaUdMSWgvSzloajFCUzBS?=
 =?utf-8?B?bWt0TjRhbkRqZ2hod2U4UUk1ZDA5MXQwaS9sUkNmbTdodEQrbkdYUklhRVRY?=
 =?utf-8?Q?aEOmtGW2pr5AD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkhxU2JpcWpCRXE1VHVpTXFJbnJmRTNOVFFBYWhIYmxLNzA5enBkcUVBTlpV?=
 =?utf-8?B?TXpKVXZ4SzE2RU5meVNJOXN6SG5ITFRpWGRsL1pyMHZ3T0lVN2JFZTFKU3dj?=
 =?utf-8?B?Mmx1ZVMzSlFwVk1rMlBrbHVVQUw3bnI4cExWK0dFQmltWEJkMTg1UlBJZ3pO?=
 =?utf-8?B?UDdNN25nQUpBVUdxcnZxYWQ5WCtiN2VkTmw5Vnl0MnppL3JJbVhCVGRSUCtr?=
 =?utf-8?B?QkZLQVRwUy9hUFBOcHJlUXZQQnRHNDJMWXR0WFRVRXQ0VDh3enVMQUl5MTVx?=
 =?utf-8?B?cldxQkw1d1kvL0RzQzkzZnYveGlzM3JUQU82cmpmZVc3MmlPaFB4dWZ0b2Z5?=
 =?utf-8?B?bm9rR2FCVmRxSmdSa0RPM25tbnlSRGFPL1hzZEl2ZHZzeTlQLzkxbllaZXpF?=
 =?utf-8?B?b292dTZvRko4QXVWYXBuT3FRLzRiTHR0TzNWYTduMUpKa1gwSkxpL0pzT2d5?=
 =?utf-8?B?eWJSSzVKWEF4aTEzR3hKdkRPanhZR1JQeVBqQkNkaVhvRGgxV3IyUTVXR2hU?=
 =?utf-8?B?MWFQRHBHTGJjYXNzSXZrS1JZeEYySUh6RGlKcmQxVktOYXo5cVpZOGxVdHcy?=
 =?utf-8?B?MzJqZUovaTh2L3luZkttWGlzcG04MDJhcWVhQUg2a2lrOGNOSzIwMTVzUTFB?=
 =?utf-8?B?MUJ2anFCbGtoRDFLY09YZmxMNThHNGFnUDBRNFZWeTdSakJmd0lsdkpVTGhP?=
 =?utf-8?B?bjJpRGdpdHlCdm85N2ZjclQ4eDRYNlRRSjJZcHRic1Y2WWk4alpJdFRnTWNP?=
 =?utf-8?B?TlBWNkhyTGhncW1BblowUTg1M08xWGNxMFl1TmdNazRrT0hIQ1d3N1hrenhV?=
 =?utf-8?B?WVlSUTZsbHNGNGpFcjNPM1piWTI2RXkxa1o5RFdBTkh3MGtLVTlzaUdVL2Zh?=
 =?utf-8?B?anF6Y0RETEg2QW9OcXdQS2Zoemx5WTZMdjUraFhTTVVvaHlrYlhUZDNhdnQ2?=
 =?utf-8?B?UXB3THUvV1RGMzBWaGNFZ2JNZlZUT1NxVGZmQlZJMDlkWWJ1RGh1Y0ZxQ09C?=
 =?utf-8?B?SVBGRTdjdjFPajRwVXA0RC9KQnloYWl3eVkvODdlVHN2WDI5RWQxb2g2VmNZ?=
 =?utf-8?B?azVDSVB1TUUzM2QyVTFYaldRWFJpTGZQZW9NQ1ZON2hWc3ZzaDIvM2dscHhm?=
 =?utf-8?B?ODBURVJFZWhid09xZWI1VjVqWEVhR2tTRm1hL1Q3TmppZFhkaXNLSmlaR3Z4?=
 =?utf-8?B?QVkwK0wyTkZzWXYwcjV4Y3JjdHF1eS84TjdVeERKR2xFUitoeWRaUWdNOWQ5?=
 =?utf-8?B?aTVER21RWDQ0YWswdk84Y3IxblVVdzVJdm5kNmhiU0UyOHNxUnhoYitGRS9w?=
 =?utf-8?B?NFpzc1cyMFpYbFBSQnYvSnNFSkozREZjVW01ZDJtelNRb09LK2htZEZhemNs?=
 =?utf-8?B?WkYrbkJLcFUxaVBndnZMUW02eTB1cktEU1lwcnJ2Z0t5SUZsVDZqc2tvakdD?=
 =?utf-8?B?eU8xcExBV0UvekZaNXBXdFRhU0phdFlsRVBjK1hNL2hpNHhSc0k0clRtL2lM?=
 =?utf-8?B?YkVpTmpIdnlDL2hNTzNleGdkaFlHdFN1R2ExU1dRZWg0Y2JITG1JTWFJTEZJ?=
 =?utf-8?B?akxQSStjdXExVVAwMDM0TjcvKzcrc3hieGtjaldjVGVFNlNwYTAyWlBORXJF?=
 =?utf-8?B?WkpXeElEUmtHdGN5U2Y3bGtXT1BRTkpUbmltVXFyWnVUVXhrRmtyVHREL082?=
 =?utf-8?B?SE5VODdsc0xVSTlmRzE0VmQrR2NuamFwT3ZwRXFaMW1seTN0OWQzb3NNYnNC?=
 =?utf-8?B?bnk3TGw5MmZGSTJJbnJHQ0pUYWhVOFB4VENSbTFhZG9HS3FwcGlYTjFRYktt?=
 =?utf-8?B?UG12WklYdTZJRFlkRHJWR1dENTVadmN4Wnh2Q1pkSXVTN2lTM0M1NnI3Rk9K?=
 =?utf-8?B?MVZ2Tmw5VUtGRkdWVWhFRENtWUhaTlBZVWZiTC9hTmFJM29Yc2FSajNCOWNj?=
 =?utf-8?B?VnBhSTBEKzZtV1cwb1Y4ZHhQOWxRQkcwQ2dmL3NvTC9EODM2N2ZXaDY3cGhE?=
 =?utf-8?B?Mk52dkhycEFCUlVPVE5TZDBpVFJOVVY2bWtxeldHSFAyQUFVN21PS2dGY3pp?=
 =?utf-8?B?czhvR1VJZWlndUtMUnJualBVaXZnS2dyWXVxbVVUNEFDVjAvTXRQL3plNmtk?=
 =?utf-8?Q?f6rqv12XYSowD9N4Sxn7M+ByC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a072e1-c637-435e-7f02-08dd76e678c7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:59.9731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zNq36mi3Yd1/lq6rUKEq1E1Yseh0kUyuxjBT1ojquCFHBaD9J0nGmkDNI6kYaHD4DQmx0+LDz3FEWeM8c0fXWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
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

Add support for forcing the link bpp on a connector via a connector
debugfs entry. During reducing link bpps due to a link BW limit, keep
bpps close to their forced value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 204 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
 3 files changed, 203 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 94468a9d2e0d3..6862cb4885b18 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -550,6 +550,10 @@ struct intel_connector {
 		struct intel_dp *dp;
 	} mst;
 
+	struct {
+		int force_bpp_x16;
+	} link;
+
 	/* Work struct to schedule a uevent on link train failure */
 	struct work_struct modeset_retry_work;
 
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index a10cd39926075..2a05fac53aa78 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -3,6 +3,9 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+#include <linux/math.h>
+
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
@@ -10,11 +13,35 @@
 #include "intel_crtc.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
 #include "intel_fdi.h"
 #include "intel_link_bw.h"
 
+static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
+				   const struct intel_crtc *crtc)
+{
+	struct drm_connector_state *conn_state;
+	struct drm_connector *_connector;
+	int force_bpp_x16 = INT_MAX;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, _connector, conn_state, i) {
+		struct intel_connector *connector = to_intel_connector(_connector);
+
+		if (conn_state->crtc != &crtc->base)
+			continue;
+
+		if (!connector->link.force_bpp_x16)
+			continue;
+
+		force_bpp_x16 = min(force_bpp_x16, connector->link.force_bpp_x16);
+	}
+
+	return force_bpp_x16 < INT_MAX ? force_bpp_x16 : 0;
+}
+
 /**
  * intel_link_bw_init_limits - initialize BW limits
  * @state: Atomic state
@@ -31,9 +58,10 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 	limits->force_fec_pipes = 0;
 	limits->bpp_limit_reached_pipes = 0;
 	for_each_pipe(display, pipe) {
+		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 		const struct intel_crtc_state *crtc_state =
-			intel_atomic_get_new_crtc_state(state,
-							intel_crtc_for_pipe(display, pipe));
+			intel_atomic_get_new_crtc_state(state, crtc);
+		int forced_bpp_x16 = get_forced_link_bpp_x16(state, crtc);
 
 		if (state->base.duplicated && crtc_state) {
 			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
@@ -42,15 +70,19 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 		} else {
 			limits->max_bpp_x16[pipe] = INT_MAX;
 		}
+
+		if (forced_bpp_x16)
+			limits->max_bpp_x16[pipe] = min(limits->max_bpp_x16[pipe], forced_bpp_x16);
 	}
 }
 
 /**
- * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
+ * __intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
  * @state: atomic state
  * @limits: link BW limits
  * @pipe_mask: mask of pipes to select from
  * @reason: explanation of why bpp reduction is needed
+ * @reduce_forced_bpp: allow reducing bpps below their forced link bpp
  *
  * Select the pipe from @pipe_mask with the biggest link bpp value and set the
  * maximum of link bpp in @limits below this value. Modeset the selected pipe,
@@ -64,10 +96,11 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
  *   - %-ENOSPC if no pipe can further reduce its link bpp
  *   - Other negative error, if modesetting the selected pipe failed
  */
-int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
-			     struct intel_link_bw_limits *limits,
-			     u8 pipe_mask,
-			     const char *reason)
+static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+				      struct intel_link_bw_limits *limits,
+				      u8 pipe_mask,
+				      const char *reason,
+				      bool reduce_forced_bpp)
 {
 	struct intel_display *display = to_intel_display(state);
 	enum pipe max_bpp_pipe = INVALID_PIPE;
@@ -97,6 +130,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			 */
 			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
 
+		if (!reduce_forced_bpp &&
+		    link_bpp_x16 <= get_forced_link_bpp_x16(state, crtc))
+			continue;
+
 		if (link_bpp_x16 > max_bpp_x16) {
 			max_bpp_x16 = link_bpp_x16;
 			max_bpp_pipe = crtc->pipe;
@@ -112,6 +149,21 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 						 BIT(max_bpp_pipe));
 }
 
+int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+			     struct intel_link_bw_limits *limits,
+			     u8 pipe_mask,
+			     const char *reason)
+{
+	int ret;
+
+	/* Try to keep any forced link BPP. */
+	ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, false);
+	if (ret == -ENOSPC)
+		ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, true);
+
+	return ret;
+}
+
 /**
  * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
  * @state: atomic state
@@ -245,3 +297,141 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 
 	return -EAGAIN;
 }
+
+static int force_link_bpp_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+
+	seq_printf(m, FXP_Q4_FMT "\n", FXP_Q4_ARGS(connector->link.force_bpp_x16));
+
+	return 0;
+}
+
+static int str_to_fxp_q4_uint(const char *str, int *val_x16)
+{
+	unsigned int val;
+	int err;
+
+	err = kstrtouint(str, 10, &val);
+	if (err)
+		return err;
+
+	if (val > INT_MAX >> 4)
+		return -ERANGE;
+
+	*val_x16 = fxp_q4_from_int(val);
+
+	return 0;
+}
+
+/* modifies str */
+static int str_to_fxp_q4(char *str, int *val_x16)
+{
+	const char *int_str;
+	char *frac_str;
+	int frac_val;
+	int err;
+
+	int_str = strim(str);
+	frac_str = strchr(int_str, '.');
+
+	if (frac_str)
+		*frac_str++ = '\0';
+
+	err = str_to_fxp_q4_uint(int_str, val_x16);
+	if (err)
+		return err;
+
+	if (!frac_str)
+		return 0;
+
+	if (*frac_str == '+')   /* otherwise valid in front of an unsigned integer */
+		return -EINVAL;
+
+	err = str_to_fxp_q4_uint(frac_str, &frac_val);
+	if (err)
+		return err;
+
+	*val_x16 += DIV_ROUND_CLOSEST(frac_val, int_pow(10, strlen(frac_str)));
+
+	return 0;
+}
+
+static int user_str_to_fxp_q4(const char __user *ubuf, size_t len, int *val_x16)
+{
+	char *kbuf;
+	int err;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	err = str_to_fxp_q4(kbuf, val_x16);
+
+	kfree(kbuf);
+
+	return err;
+}
+
+static bool connector_supports_dsc(struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_eDP:
+		return intel_dp_has_dsc(connector);
+	case DRM_MODE_CONNECTOR_DisplayPort:
+		if (connector->mst.dp)
+			return HAS_DSC_MST(display);
+
+		return HAS_DSC(display);
+	default:
+		return false;
+	}
+}
+
+static ssize_t
+force_link_bpp_write(struct file *file, const char __user *ubuf, size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	int min_bpp;
+	int bpp_x16;
+	int err;
+
+	err = user_str_to_fxp_q4(ubuf, len, &bpp_x16);
+	if (err)
+		return err;
+
+	if (connector_supports_dsc(connector))
+		min_bpp = intel_dp_dsc_min_src_compressed_bpp();
+	else
+		min_bpp = intel_display_min_pipe_bpp();
+
+	if (bpp_x16 &&
+	    (bpp_x16 < fxp_q4_from_int(min_bpp) ||
+	     bpp_x16 > fxp_q4_from_int(intel_display_max_pipe_bpp(display))))
+		return -EINVAL;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	connector->link.force_bpp_x16 = bpp_x16;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(force_link_bpp);
+
+void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+
+	debugfs_create_file("i915_force_link_bpp", 0644, root,
+			    connector, &force_link_bpp_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
index e69049cf178f6..b499042e62b13 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc_state;
 
 struct intel_link_bw_limits {
@@ -32,5 +33,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 					  enum pipe pipe);
 int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *new_limits);
+void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
 
 #endif
-- 
2.44.2

