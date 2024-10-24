Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D7D9ADF8E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 10:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F262610E8D6;
	Thu, 24 Oct 2024 08:55:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jhcfaJBM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE8910E8E7;
 Thu, 24 Oct 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729760123; x=1761296123;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QjKeJaK/lo6DtfdeBxq/FDdI7K+R2FwyQP9SW1/hbZM=;
 b=jhcfaJBMlgVeD2AdaZDp630wAdDNaWmhUQL08S9VYO3kF4pgq/qiikye
 nbp40LqOV4xi2VWGH6VfJ7dr+GfuG0w8BLFnbKGsGS2FSzKJe2RYkx6L+
 KmsgW8a88VD4JIh8bGWwnZbOJoIja+QBHUlvfjv+QWKYDWkeqHrthrhnQ
 hvhnpVy018N1pkkWna/6ZyODBKQO7ah91uzPFo6Rb8mvYA7JlNDemyet2
 oPars6mf9jhLu/iQ9ZEKdcV5WNE540KAHTbgvgJcf5WLBhrcdlVaNnztr
 kJ0YpQlbnFVOeyRg3Ej4mqixrkyJuyUZIvk5VK1GDaujiKnWHmdwEGZ0z Q==;
X-CSE-ConnectionGUID: HNQx/Y7XR9ywC7l45Zq+KA==
X-CSE-MsgGUID: yMxUwgIVRmakmWDJPPLunw==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29490280"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="29490280"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:55:22 -0700
X-CSE-ConnectionGUID: mcWk82uQSD6+YML/OqxEsA==
X-CSE-MsgGUID: rNm0x2NmRYqzg8TNf5xoOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85310276"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 01:55:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 01:55:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 01:55:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 01:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C9FsEXbwUeM22BmzzL2XVMZIhtkYpTygHsIpmQegIyO5DGad/WATN1oLGrWGy/pQtUpMRiGy60fBjfgI4xnrvav4AwNYQN8xu9gAokTrCOpxBXod/NI/0VIJifvE33IFnTTTG2UbkgMap7Q1qqIZC6I42ZsqqMz3M1OqsWWcraVsX7/3PBj83RXz7rA1YBEAKbl6ldBOI6OMrlFW0Pd/J4O1Gs+UkLhYVXbVJ4fa6CmrXucfUo8ZZhDIR/t4590CqUX3KcwMhNtfVi956yM04C2jXU2KCjN+uX97IdOCir3wC4U8qENtXZibI/oFbRf2CRGkK8IsYX5EktepEkeWrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BoRcmY+BTKJrYfpfiDAXg6IT78SMR1jM6TMUEDSoXUg=;
 b=HuoXocDu8gJ0dpAfF+LAF6DTX8fPk1Q2Xzka6tIzIMsA9HS3rVwd80dovhitMTeSC/shReZbCJ1ks9tjggxTWVduzCtomajuFHNow1ednaFw8+C56uPHG2PTH0GQJ3F3u3C7TXrU+flLY5edKOu7gWisnDRG/MJF9UPlCewUazmOb9oe2KjOp/kYBnyi/TkN5yiDjPlp9R4E8JYbA+TL1xvIaGtLwu7yFQ5XgltnQJcOL/o1SRxsA0Z5Y4l9JtF5Ka3l8cqyzNP7SxQq9f5vlbI020/TBl7o7KBkIDMxni3e0pJvbnDxnXs8dcfmSLC70uHPfilIgc1kJcvokAKxlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.19; Thu, 24 Oct
 2024 08:55:19 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8069.024; Thu, 24 Oct 2024
 08:55:19 +0000
Message-ID: <ea405a0b-bdaa-461f-9db0-30538db8011e@intel.com>
Date: Thu, 24 Oct 2024 14:25:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] drm/i915/xe3: Underrun recovery does not exist
 post Xe2
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-10-clinton.a.taylor@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241023214701.963830-10-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::35) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CO1PR11MB5123:EE_
X-MS-Office365-Filtering-Correlation-Id: 670ad024-01a4-40dc-1cbb-08dcf409961e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NVZaeEprMGJQc3dqeXRoYjJHNXpDY01vNC9xRDBnRHV4WlRmY0g0dnVNRHJZ?=
 =?utf-8?B?ZFQzczNoSVZ2dXVEOHdxRVVjaG02NVl6YUxUekNSRWJVQ1dWM3plQ3VaVnpX?=
 =?utf-8?B?aWZEV2lZYU9FRURqWW5ZSVNNZk94bXR4d3kzUW0zNGcyVkRaU0h2M0JmNTd6?=
 =?utf-8?B?LzVGR3lJUUZGME5qNGRJMmFZYkRlTVdzeTZ1Nm81ZXJudzVHdUFiSDJHTnNj?=
 =?utf-8?B?LzBUOUY2aFh1VUJLNnR4RVNtQTNlY05WeDAyaGVRUlF2STJNdEFQK0F4UnlF?=
 =?utf-8?B?UHBhT0N0WElxMW1pUGZzVXBjVTB0SUdpV0VsMWdTYWh0SERTK2VpNGIyY3lX?=
 =?utf-8?B?WEw2Z0pkV3RaMGlHWXkzZHVDQ3NCTG9hdFg5UzdVeUtNL2dCWnJRMkE4MUpv?=
 =?utf-8?B?T21zRDVVRXByd0RMQ1h6QThPdm11U28venRWL0IrRnRVNUE2V3oxYlhEUExF?=
 =?utf-8?B?VEJ3VkZXUFlvdVdwSmltemFrOGR4VGRPQkluaUdiSnE1NTZmckdOdHRyRWtw?=
 =?utf-8?B?QmdLRzR3eHN4ZFdTbklPc09Nb1BYUDRiVlRvOE9LVWtBQlNOaUFGdHV2OFNy?=
 =?utf-8?B?WWE2ZW1GMk10U1ZlZ01TeUlVU3Y4WHRDblEyQmF4cFJzSWJ5Z1NlSy9vSjZq?=
 =?utf-8?B?bzZiYUpaQTdHZHlQbWNqOUlRYVdVaXVHbWZJMk1aTDQvQ0IzU2JJM2JqRXVV?=
 =?utf-8?B?cEtxWjJjSlV3OUVrSVRTYU4xcmJpdERDR2xHNkRvT2tZQWNMTEZ1RzhVcDJ1?=
 =?utf-8?B?MmdKQ3ZlcEwvSGxXdXYvUHVvem5iR0RMRmZqT1BLMDJHeXdOeU9DRUNkcUE4?=
 =?utf-8?B?bm4ycVBMUUhwY2ZaMGd1dHNWRGJkTEV5cWtWV2tnSjZKbHhKTzBuZytveFRv?=
 =?utf-8?B?UHZxcnd0bSswTlNsbFU3d1ZpWGl4ejV5eGRrREE5UXQ1cC9Rc21oLzc2NmZR?=
 =?utf-8?B?L3lOaVg2QWo1bXlmbkR2UlNKa3JFMmpTVWpUeE4vMEJoUXpzY3JzakVKZzJl?=
 =?utf-8?B?OHU4eFptNUNMVFJzMUFhVm1uK2NLTXRVV3RaOWNIMWpxQzRNRnFqYjFQQ2pv?=
 =?utf-8?B?Z2RUN0s1dlNoMEhsbzQxSmI4eHpOb1RYVVJXVlRiNGJZdXNuZzBEdDFualR3?=
 =?utf-8?B?ZXZ4U1dUN01CZEhvVTBlRzIyT1FOODZSbkdwcENtcnExZlFIaEIxSFk3Q3gr?=
 =?utf-8?B?Y3NxOWZNcFVjc0pNdVFqSTk4MEFBdUZpVXM2Z1loYmpNakJIcjFaeVZ2VWJM?=
 =?utf-8?B?S3RMdnBRbzZ6QzdFN0c5WTBBcGJ4dU8vQXRaUEVDYUFsTEJrc3F6c3poMkhL?=
 =?utf-8?B?a2RSTGdQekQ5a1ZLT3hxS1VwSjBDZGNGMXdVSkcwRU1CSlJJaVBkdnBNeHcz?=
 =?utf-8?B?SUJHMXlRSVhOL295RTd3d1lqSFp6MmtWUVpEaTNwdzNjZXljVEVZMHVDVGd2?=
 =?utf-8?B?UjdIaXFsM0NmMzFKWExSZTlPWFpzYjVvVDFpVVpKQVliRmg2cWh4TzFPR3hx?=
 =?utf-8?B?bFRLU0xWY2FvSzlORlhqT04zakZmNEVSSnV4ZTN0d1FjSWtlSk5jc3k3bmFE?=
 =?utf-8?B?TjZ6U1FsY1RrNGtCMC9FaU1lMFRlL3Zwa2xFMlU3ek1NWVMzdEpzRUpSYVI1?=
 =?utf-8?B?WFI5NStJVkE2TW0xZ0p5aTdEczQ5MUlneVJvbEFUV1orbTNmK1JyUVp0TWlI?=
 =?utf-8?B?YUJ4VGN6WXZLK1ZDYjV2cHdDcElRemlnVllNRzRPOUp6YTI1MUJFa0h4Rnhy?=
 =?utf-8?Q?lahdvlSD7rl6WbXi5ActxSaMtRLK38gUootJVwT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFh4YmFLdU50TU0yb3pmUWRUc1BMTDR6S2hxWHFHYnVFTmVNWk1HcG5WSURP?=
 =?utf-8?B?L1JmT2Erd1FqTUJBQ1NyaGEzb2t5eDJXM0xWb2ZncFcvTy84YlJieUxUZmsr?=
 =?utf-8?B?ZUFHcXJWWmNWL2p6UkhNUTU1bVkrSXNRSUZjeW9kZmNtenY1M29BV2JFT05X?=
 =?utf-8?B?VnUyTnpYZ0JDRXVabVd5Q1M5RmZYSW5Jekk0akJwS25NaC9kRk5XeVJ6dWI5?=
 =?utf-8?B?emxQV1l4b29icHNHUlN1M29uMERNeTF5SXR0OGtodmRvZmVZVzF2RWh0RGg5?=
 =?utf-8?B?UjlETjBhSkNZcmtiWk9CajVBd2FxT0YxNHp6bnlSQ2paRFFITXdDRFNSSkJa?=
 =?utf-8?B?U0czV09TTWg0ejZ0VTdCK0t0K04zYlNWWGRSVUoyNktKSmZHckdQYXlEa2ht?=
 =?utf-8?B?L1d4QXJtMzNIdWdVZ3B4alcxdVF2YW1mUnZHZnIycXByZVJPNUdLR2Y1ZVlw?=
 =?utf-8?B?RUxFNTlyd0hHOG15WkJKV0dwdmdVV1BQSW1IcEFaN3lYbG50cmhObzdRQnBT?=
 =?utf-8?B?SWxvNGw4emg1VmMwQ1c2aVljaWRCdEtUTEpOaXR0cVh0WGdnTnFOMCtadWI3?=
 =?utf-8?B?dnRvOGJzZCtXZ2dYOFNxOEVzb2hZdzBOSVFvaFFFTElsVHJ5b1NrZkNUNHhi?=
 =?utf-8?B?RkRydkZHcmxiMDFNZURKdWpCczkzTG9WeURzY2JtUmgxSEdUa0E3T3pUK3hH?=
 =?utf-8?B?NldDNzZOdTZ2SXpYdzRMQTdtY25JdkUrcjF1aFZCRHRDZXl4R2hRVlI5ckNw?=
 =?utf-8?B?TjBrbUxNSzFLNnlxRC9qZ2psRG1YUFphbmp1ZHRGUHFlTmw2RlJ5T1BKR01D?=
 =?utf-8?B?RTJtYjl2S0kySWQvRVV5b2xtV3ZvT1plK3pVVExiWEJqQlFXTnJSVlhScmxZ?=
 =?utf-8?B?WEU4bUVCOGVnd0NGV01jcDZ0bXVvb1BvUVFvZTJab0UwcTM0Tk11Y0ptZ1Iw?=
 =?utf-8?B?Tyt0VWVPck8xNWptS3dmUEE4dFllVHhhWXhVMWlsa1RhRXFYSUNVQ090UkNr?=
 =?utf-8?B?OWJJVi9kL3NwOHFjQzFBVzFpNTBTSitPZnVLTUl2ZG9MVWQ3UHUyUWNKdHNs?=
 =?utf-8?B?OCtLc1BMSXlqL3FWdUZHeWpwbjRyQXRuVG5ML3J2em9DamJsOGJmU3NmYXVV?=
 =?utf-8?B?cGdKMnlSamhEKzN5bmtYZzVINW1rdDJseTM3bW9oWnU0b29KWWVKVmN1WW1q?=
 =?utf-8?B?em1mdnlTaXYwNHpadWlkcDdEQ3c3Mlp0cDkvZ2l6dFFUdXprMTdraXg0YkF2?=
 =?utf-8?B?R3dreFlhbW83VitFQjhLSGliL0t5SFV3UDFIcHovaTNQUVF4R0piREJ5LzV6?=
 =?utf-8?B?cVM2bGlGTHlyT21iMUQ5bk5KTzNPOUxzaElCbGt2TzJiU1c1UDRLMGlDbDkw?=
 =?utf-8?B?YXgzOXN3emJiSEhPNmpTb1ZIQ3VycUF1bEhrWjkxZGNhZjA3WDE3NXBOY3NM?=
 =?utf-8?B?Y25qTFFtTGhrR1R1S0FLTWVqbmo0Qm9ZSENSRmpSY1djMFZsV2RPc1lMUjBh?=
 =?utf-8?B?VTlwVllVLzRCak0wYnB3YTQwS25BVFd2SGJQSVVKVXU2T1YvMDI2MiticHha?=
 =?utf-8?B?b0dpS0R6bVZQL0wzS2dwa3lhYW92bnpnTDJsN0ppdVlLLzN3UysvMnN1MTV0?=
 =?utf-8?B?R0QxRUovM3F4dGVVVDByNGpmdWtGclVvNHNJbzhGK2krTnI5bzVkYVFNenY2?=
 =?utf-8?B?S00zSG1qcmQ5cDJpTEZ4Q3NrNUZibU5Jd1dkVExoZ0FUQ1h2RjYyTjhiRFRE?=
 =?utf-8?B?YURQdHJjL0NFYzlZUHpCbHpNcDdTS2U2SEhOMGZIZ1dnbXRtQUZoeWJ1QVVL?=
 =?utf-8?B?VXFwSy9rV3NvNHBjNmltK3ZiVE9UMHpOODdPRkhDZ3J6S2RKU3JxaG05YWor?=
 =?utf-8?B?ODJxMExBSDhqNTFrV1puazNCNE5nWDhtNjNaRG05WE52QlNsLzhSdGF0c2Q2?=
 =?utf-8?B?dmlCV0xISDJjTldkZ1JubzE5TlV0NWR2YzZxcERRdjZ2aHZkTENiaGl3SVVz?=
 =?utf-8?B?NXV4Yk5Pa2dHckdUYWFWaFgwSVNjTGtGdi9wZkpESFhZWVRuSm5GOUtMcnY2?=
 =?utf-8?B?UDVMbEQrbUZQbk92Q0VvNEYvamsvMnY3V20xZFpLQ2h4cy9YVGtiNmRHQk90?=
 =?utf-8?B?MHFWaTR4SEY5b0JaRHhJak5NWEg0UFlUbHZmdXViTFlyOFZFV01JZVpYbm1t?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 670ad024-01a4-40dc-1cbb-08dcf409961e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 08:55:19.1204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WS9fd0r1xyvJ8+xfGWdUaEsJBzMpLFntkMA8Sb6GsqkLyfJFi9G/gGqpkspj/N9L0Onec9L1VyNNEvK53hrPa6QCpWccn+XIDy45VfqJ9vY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
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


On 24-10-2024 03:16, Clint Taylor wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>
>  From platforms xe3 Underrun recovery does not exist
>
> v2: improve DISPLAY_VER checking

Lets add a line here to separate commit message from git trailer and bspec.

With that addressed, LGTM

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

> BSpec: 68849
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 01466611eebe..124e094a9999 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -861,7 +861,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
>   	 */
>   	if (IS_DG2(dev_priv))
>   		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
> -	else if (DISPLAY_VER(dev_priv) >= 13)
> +	else if ((DISPLAY_VER(dev_priv) >= 13) && (DISPLAY_VER(dev_priv) < 30))
>   		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
>   
>   	/* Wa_14010547955:dg2 */
