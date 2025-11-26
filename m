Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ABBC880DE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE6D10E112;
	Wed, 26 Nov 2025 04:29:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbxAZG/B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2634010E112;
 Wed, 26 Nov 2025 04:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764131351; x=1795667351;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GZeM6MnMLaOZ2n//vv72QPstwKBswr7l4SIuu2Nl/8g=;
 b=jbxAZG/Bdpwm4nyJR4LrMeese+6/C0FHOPnbMFO0u4X7hQz3jPl8NRcC
 RtGUgdTDpjd12mQb+pwhb2qohsmr60NFaDUUxCOq0VoLtmp7ff15S4syo
 r0naLwWtAmzkOFXu3I1NnFy0GHV5dw7X2bkZmZ2kThxmwalwZabnyVpKy
 ZR/4S2p1WwXUL+POgS/LMi08aoiJz96rIMb/6uhCDSQ2LQjoCgSZO+TRO
 nXoj4hl3SHJYkhejjBkUMzE9X/mQXo1X7LHWP445x9uI5iNhTc0QHQbiX
 l/bgsrmPwUlYV9BoG1C2Twze2TEpTdzExP5lTID55MFV3+OIbzESBOphc g==;
X-CSE-ConnectionGUID: YyGC6s2ZT0uM3yx4CQpEUg==
X-CSE-MsgGUID: k46H1kLTRF6IsGZLZXQqNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="69782567"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="69782567"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:29:11 -0800
X-CSE-ConnectionGUID: d6n9a/hoRCW27RJ2oFJDpA==
X-CSE-MsgGUID: BOPYaJX8TgyddoyF5fboeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="223803565"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:29:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:29:10 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:29:10 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:29:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FNA1kBjMyMkDm3bt0QQyx3nQoalR1pr6XQjDGAQ3BQfMbOkuAVQfGlhmU5oO4PYWr5Hc6/uvaP0mHBo3STnu2wKfWHO9A23DOYhjmVQL/GSupRdNED82f4JLaX0B9OXnZmBftSxbzmPmVN9jHwQR/D29M9dO2Hbj7DtBUfKDsQ83lLi6BGsOPyQlkIAeJJobQGPyGSDCxyBjUbTZkdif+QsQgkHYWxontbnk3ezDqTVVjs90kunRmg1vYsDl1mvwByka4soIrNaVcTKqG9eSK3eZeWWkwhEQdh8UGf4+hS7tVF6UjJcz6wqCoGV+0pzcNmsB9tki4OhRfBzDn1NvCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F7Y4St6y0xuHTqoEGGLT1XJzCkVtyEJxre8WFl5q35s=;
 b=Qpyn3SGSs8YqtBTfJPagZ09C4LEnVL5XxoA8rlUSrPxlcMPycKEs302LapWOC9QnaMPYlpUUXArndV85czVg7UXzLYTb1bL4LfWzSKvzU/KHAYgziqxrvDN70iqhJLzGOThQN5Nxk5hmREA4SzkIgtA7e0uvVsjtqLRFPbviLqFCGbBlsM9075IUHW5VjVHMhqwVExwdnGKejAAmPLw5cTUvY8vITCe9RY0VSetO4kPZpfhJIsAmtbJIzfHgMX7SSL3YyVz9sVmMkBslpq70LbDUYd9dRNxIIMZRPLlKA6Ilwgc67ZrNOW7csNqegxvifEIbPtI9gvU9Z2B+57t6pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:29:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:29:07 +0000
Message-ID: <49d9e26e-2d78-46dd-879e-915b9e627e2a@intel.com>
Date: Wed, 26 Nov 2025 09:59:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 13/18] drm/i915/display: Wait for VRR PUSH status update
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0236.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5010:EE_
X-MS-Office365-Filtering-Correlation-Id: bdbf08f8-0aee-43eb-6ce1-08de2ca45685
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHVpb1hXdUVtdm1IbEdZTHVkcHFPMExyQ2xWTy9tQjIvR0FtaFRFS2RHc1hv?=
 =?utf-8?B?UXpSSzRkRHFTek02UzYvZDA0OWV2dU84Ny9kcXpCclJmenV6M2lnSEpyZ28y?=
 =?utf-8?B?Nk5hWGVmM3loZWhrdWxtdjMzblV1Q01ZYW5GUURWMWpmMWZQT1VEWG9BMTM0?=
 =?utf-8?B?VG5KWWtzSHZWSmM3aWl3YTVrZUw2dGJibGtMTUplcHZ3bHhZcHBwOTN3Z3h1?=
 =?utf-8?B?a2pBY3lMbmRjOGNrT3JuTVVXZlNDYlhTVElCV09kQWhRK3YrL2tZMjhnMURI?=
 =?utf-8?B?aFZCNHJDekF0S3daVGJVWHlCb0IrYzNzZnNuUmRKRlBCVzBkbEFWUkRPTVJh?=
 =?utf-8?B?OXF6UllQOEU4L0trdU5mU05nZThHUTFjV1RPcVRrOTZPRGZ4UHNZdDNCQ1BY?=
 =?utf-8?B?YXJRLzVLNzl1ZUMxZnB4M3VzS1c4ekZwMXR0aFB3cVRSZ3V2S3Z1aUdXRjh1?=
 =?utf-8?B?NUpsZlV6djhnWlkzcjBpdGhPdzhFaGVMZFE5emczclNYTTlJN1V5aGxId0lk?=
 =?utf-8?B?bmNjSDNUSzJMNjNSSGlrMUplZ0lRNUc2R2lETUxpbUxqWklFWS85bjdTNnov?=
 =?utf-8?B?Y0UxMlE5dkZzOHk1d2l2dDl0RElNNmk3RGZwOXVjYWlJWEc1c2p1eHo4ZmJQ?=
 =?utf-8?B?S09sVWxFL1VTTkxrM1hiODJTV1c2M0YvMC9pVTFtckd2NFVTN095V21GQmpR?=
 =?utf-8?B?SDUxOWVoYjkvVDY4WW1iQkk0cDc5WkpWaDRJUUI2ZnBMMDQrMDRlWnpnMkQ1?=
 =?utf-8?B?MnE0U0pRSlB2SnduanhzQU9CcXBxSmhFa0dhbzdoYWM1bFVqZFlDcWIzZzhS?=
 =?utf-8?B?WTJtV0N2OWowTVJJdkJ6eHpEZEZVUUpsc1E0cnVleSsxQzRiZzVnajlERUpQ?=
 =?utf-8?B?L0pjWlRzOWIxTFJtZ2hUNXVhQWdXcEJFb09wT1kvNUorNVJaVXVzYnlrV004?=
 =?utf-8?B?aDhkb0tLdnp1MmIyMmdieDIwc2hjOUwrb01yNEp1eGNWR2pSWXcxNHF0ZE9Z?=
 =?utf-8?B?WkQvazVyNWIvemZLbmRzVjRHMnY1NFRGSUQycmFYOVR4TkNrQ3ZTTG5UQVJy?=
 =?utf-8?B?QzQzdjBHWERTTEFxbHVqK1BWdWxjWXB1d2MzbFlDQmNKQmszU2Q2QVM3YkV1?=
 =?utf-8?B?QnhrbUNSTS95SmFaYXlrdWZaSWlmcE9iZnJjUU96aUVQTm96cWV1bWFMQU03?=
 =?utf-8?B?cFZKS09Fd05HZHpqbjlEaTRNWldVWWxmbWQ2ckkxN1g3ZXJPUEZXSFVmeUJL?=
 =?utf-8?B?UGZjNDN2TmUrTEFrYzFqVGhSMnNjQWlMT09sKzdzNjhmVkZuK21oKzVoT2hO?=
 =?utf-8?B?bVB1QXhTem9tTEJoeCtTMTV3SzhOVkliTlV6cXpDMFhrVlFiTHNDT0FQakJC?=
 =?utf-8?B?TXhoMEk2dDZ3NzdvWSt1TFEvUmtENThmd1ViTnY5d3Uvc1ozc0I1VVA4clIy?=
 =?utf-8?B?YmhqQ1dtOUYydUNGZXIwczI1MS9CNmlYWHIzYk9QMUE4ZHNxaTR6azVQaU9C?=
 =?utf-8?B?K004QnlHQ1dGbytuU0NQVkxXaTRzY2k3a2FPMDFJNGkzQ2JRazl3NTc3ajJD?=
 =?utf-8?B?b3loWVMxY0hDV0E1OUR6ZWszRm9Kb296bUlRbHhSSXoyRWxzYjRWa0xrd09O?=
 =?utf-8?B?QXRubkc2bHB0dW5LWmovejRTczRGRFQxK1oxUHA3NFh1V2lHMkhGdm81eXpK?=
 =?utf-8?B?UFpNUlJoSkpqMXd4a3hVNXFCUnI3VG0wRUhIYklMdnBPZWRxbGJydWR0UUEz?=
 =?utf-8?B?MW04MURWbWt4bWZUK2Q0cTFqQ0U3WWZ1WFlsbU1uMTVZdjU0L2d0WHdQbzQ1?=
 =?utf-8?B?MmM1VkRPbjUvQUZ6dW5ZMWVROUFncnZWV0JteEZvYmJnWkV5OE8wVmdFTk1s?=
 =?utf-8?B?U3N5L0U0WG5SOGh4UEh2Rlpjc3NmUDlDanB3clFWQzBpNitCUE5NcmFBTHV4?=
 =?utf-8?Q?SF6h83k+NE+aqvBnTwZ9ISUtEGu0KjEC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzYydmlkbG1ldlhKaHpGdzZCL3ZNRU5IWFdsNmU3a1p5aWN1VThGMCt6NEFa?=
 =?utf-8?B?UFk0Y1JnNjY3OUVMdG91MG96d0xDMUl4V0h3RWFUUlRNWHpSbmRpdllEQWJI?=
 =?utf-8?B?a2VjcGR6bWJ5TEJKUUJWZFNNUjd0SUpPWDVtWVA3aDc0N1pTMmU1azRTdHhQ?=
 =?utf-8?B?djZsV2gvN2dqaEJ0TXlHNmVyVURsSTg1M052VVdZY3RLZFBzZmlQamNHZW5I?=
 =?utf-8?B?Z2NobncxSHRpZk1lNmxOY1A1OUJJRW5NQTIrU2JRVmI0NVZ3WHRxZEtoWFRT?=
 =?utf-8?B?NE1WbzhtcldXcHBiMmYwVlFIdlVFcUlpL1BNbEdHRzdtMmh5aTFraUNUbTZ1?=
 =?utf-8?B?V3JsV2FBdjZMdWtZaFJ4RVNLNlVkM2xqWjYzUXFkZzF5Y1QxdjdwNU5ERk93?=
 =?utf-8?B?Wm1hYSt0T25hdUFYYjZYQ0ZGYllpc3BTL0VJd2Fvc1JqTFlNU1k5UHcrU3V0?=
 =?utf-8?B?eTFuaEZzUXFNeXFONkNLR2pSYjVIcnFlN3hEN2h6cjlkUjJONllkcTBRTEZM?=
 =?utf-8?B?N2RQc2cyUG5tdWo5dU9XNEVFdk93RG5vUkNQRVYwTXEyVHZrd3VUQWR4YlR1?=
 =?utf-8?B?VjlYOTlBUUdHK2NHbWpHdHB6bEhES3ZXRjdlNUl4U3BLMFZEZE5YQlRPdjRz?=
 =?utf-8?B?eUtveGxCWjhPd3FrYzlwMUEwdjlHMm4wUHRHNHNmY0NpRmJGTG1WTnFiaWFm?=
 =?utf-8?B?M3dSZ2F1WkF1LzFoTXhHYmdZUXpBQXRZM0RUWWt6eVllZmdrNFF0Y05uMUk1?=
 =?utf-8?B?ZVByaWsvc0MrVzN1Q3dsTk9OMDBHQ2RaZnhwcklIWjUxYlpHaFZUUEw1QWd1?=
 =?utf-8?B?Y1RvblhnVlJITlV6by8ySVgwUisvOHhac3doQmYzRjA0U2swclBqdzQrOU1p?=
 =?utf-8?B?NlpHbVJjRTVwVnJmZncvRGNBeFBwUVRiWDgzYnpzZktXTzNTOFdkY2Y2WWFj?=
 =?utf-8?B?Rno2NHlWZlFJcDFsckRwNW1NOE8zdzVEWGdONVViZzA1YSs1ZStHTkxPaXd4?=
 =?utf-8?B?R0ZCZG9VVnRPVFZidHpJT3Jpdm1XaTRPb2JpWmlxLzlaMTA5TUlSbE9USGc4?=
 =?utf-8?B?YnpqV2RKQUpNenlMWjZ0Q3FjeGM2RllLSmVXSWt6ZW1aWGhwZ1N4TUJGa1Bo?=
 =?utf-8?B?c2R1dG1aSG02bTFNL1hwbUJmNkdZRUtManUrYkR0VjNwU3ZETmNsTDAySzdW?=
 =?utf-8?B?cnJqWFNDdFVxY3N3YzdGalJiYTlPS3pYTDkvTVZRUTVaYzRFMExBbDZNbVZu?=
 =?utf-8?B?WndJaWtsZHlFaXhwaXFPcTd5M003bkJBdzR2TStyYXhkYzhKTzhFaW1DWjVN?=
 =?utf-8?B?N01QaEEzbDhITlhTMmJWYmFTSUNpYzk5dnNwOEpydWI0L3hiZm5UQ282dG0x?=
 =?utf-8?B?TEg5RVZBQ0Q5Z2VoKzVjSm15c1JiZHRJa2s1UGltc09PeWFqWUdZcHdGanN3?=
 =?utf-8?B?MzFFVmIyOEZuTDZIQTlpS0lqeTBJQ2JRNGQwZ21vdDFjVDdSNTY0Zk9VZFJw?=
 =?utf-8?B?aXlISHNjdXJsMDlVWEI5b0hYTzNIc0E5THJuNGhqRG9OR1FkcDhtUU5mTjFJ?=
 =?utf-8?B?R1Zpczg5WS94TVpybTY5eFRHZjhLdERBTXA5QmFLRVc0TGF3bnhSS05jVkVF?=
 =?utf-8?B?SHBmVUpySFVqcHB5WTQxOEY1N3hzemUrRkI2NWMvc3lTZE1xT2lFMDk1R28w?=
 =?utf-8?B?aktzcy9RZ0FmeTVJZmpUUElGR3hyNVkyeGtXb3BwbEdxaUJEOFJ1Q0xJRVdN?=
 =?utf-8?B?TjA1bE5nYzVBL0tUVHdvKzE1Q1dHWWJ3U0ZobkJZUTZ5M1plQTlGVzlrdWtN?=
 =?utf-8?B?ZHJ3ZDVRZFZMRWxrYktVWWszckxpeXdiczBJQUNoYWEyWHFCT0dhbVBCRDk5?=
 =?utf-8?B?NU84bVFvNHAzMkIwamlWdHJDN2lBRTVoUHlZLzU1bi9CeTMvR2lIdUxobDJs?=
 =?utf-8?B?ZnRGM3gvRVRaRlJRbWEzMFRuWUF1V1dUdEgxQjAyK0d0ZTh3bnlFN2ozZEg0?=
 =?utf-8?B?bEpZWHNmcm1KdHhvWDNnRW9xdFhpRHBwM21hajFEek11THNWcHd2QWsxaE0w?=
 =?utf-8?B?dC9UdStiMkFIS0RFQmdkQUVuMElSc1lMbHNxWVNycTZaVU9STUh0VW8zTG83?=
 =?utf-8?B?L2ZQR3Qxdm9hL042VXlKOXZqZEJVVm5KK2V1dW5EQ3JDWnFmV2JvN0R4cmwz?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdbf08f8-0aee-43eb-6ce1-08de2ca45685
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:29:07.4813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mWQKo8SAUPjAPSAu+zRZJz/SU5YnR/OMYlA2+B2ssR6oRidTov+z58O+AA2ThR2s5Or9M2RZUbwAv4wY9p6xEtxXT0GmrEOjJuGH+rQCg2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> After VRR Push is sent, need to wait till flipline decision boundary
> to get Push bit to get cleared.
>
> --v2:
> - Adjust delays to vrr vmin vblank delays. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 30 ++++++++++++++++++++++--
>   1 file changed, 28 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 7634d6a7ccaf..315d0e4ef43d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -160,14 +160,40 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>   	return crtc_state->vrr.vmax;
>   }
>   
> +static int
> +intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> +{
> +	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> +}
> +
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmin_vtotal(crtc_state) - crtc_state->vrr.guardband;
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		return (intel_vrr_dcb_vmin_vblank_start(crtc_state) -
> +			crtc_state->vrr.guardband);

This seems to be wrong.

intel_vrr_dcb_vmin/vmax_vblank_start() is vblank_start. Guardband is 
already subtracted from Vmin/Vmax to get the vblank_start. We do not 
need to subtract guardband again.

Also, lets not change intel_vrr_vmin/vmax_vblank_start(). Use the dcb 
versions in place where dcb is enabled, similar to Patch#12.

I think you need to change intel_vrr_vmin_safe_window_end() so that 
intel_dsb_wait_for_delayed_vblank() uses correct delay when dcb is in 
picture.


Regards,

Ankit


> +	} else {
> +		return intel_vrr_vmin_vtotal(crtc_state) - crtc_state->vrr.guardband;
> +	}
> +}
> +
> +static int
> +intel_vrr_dcb_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
> +{
> +	return (intel_vrr_dcb_vmax_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmax_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		return (intel_vrr_dcb_vmax_vblank_start(crtc_state) -
> +			crtc_state->vrr.guardband);
> +	} else {
> +		return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
> +	}
>   }
>   
>   static bool
