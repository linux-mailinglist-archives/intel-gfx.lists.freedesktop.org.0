Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOgeOmgZ5mkprgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:17:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700D742A91D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:17:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE53410E572;
	Mon, 20 Apr 2026 12:17:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nXvGK2wl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3710010E569;
 Mon, 20 Apr 2026 12:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776687461; x=1808223461;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rX+ecYe+3uT+2g6MUzuDXfG0vO84hP1PDr3u+bfLv70=;
 b=nXvGK2wlb4PR0ByUgN348JYKA9VArtDnLT51N2mQ+pSNJZf8JHSp9cgC
 lflKs26RIW2QxVcV7/dvhg/MIjX3Low55ILU46UOij01AVcmgIAD9gPtr
 90mfxgs/7Faz5fNFVFxjqqcKeATTQmK/FLijwYv4XUXAw52Zi8A70ox7V
 r6xkH4fA0dUxvIdvgMwhTFxmDa9pfPraOk5UdxmRS4EOo/nLjkVN1mhxu
 oa/8OOYsfTOoPlQ37CpLOiznuz2/ygx9QbrD6e18Xu3+DhmedcjgFDOA6
 tA9C94kMQiScyh+OBG9gZiklk+hF/zDkEQh62c4GqdBvmndhaUlv5DkPe w==;
X-CSE-ConnectionGUID: P6R5Um3WTkCSA/zaalbiqw==
X-CSE-MsgGUID: zs+LsocMRV67Emc1fTiBMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="65133510"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="65133510"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:17:41 -0700
X-CSE-ConnectionGUID: Y6sWJ8hZRbefmEZ0WzDtlA==
X-CSE-MsgGUID: aClfAjI8RyOVIWYPTyAjnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="254961339"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:17:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:17:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 05:17:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:17:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aL+MLFP44k2gCumn63HwLc6RktFhIz4sxzw+pl0H15plQwb1ISAJvq/0nW7t9g1epeHYsC4lMAo+H1knkefd+nZD75/F3o2Xb4mazhA9EppqJdKI3Lo28JZZGXGI7JvXx8BpJiMJ2ExFOgQTQ/YE49ABluIg8/9Ium8oBzRQGssnqATuw0taa+G11ljFPfbhxxWYp2Wt6YojWE1zkbtwqSvNnRXp/0QXx9FIL59RNy4jdaBu9pUsWskf3f6p6XpTa6Ivdus8x/43IMrjsItWPmQUni1kL9tnHo3mI9JNR2OhgKf3B4w5n40W/pExj0nukmW+wOmzaV8dJ9a8fqZPIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pnZ/NdjZbqOVUn4J/aTo42NfKRdKrmY9DBiuTypHCCk=;
 b=cCP35Xu7nWahG/xWSSOPUs62EWV+wB8ohYcl+6ZqID2m6FpMENrDD1oNr6666i4GpnquFskzWU4ADsmKwPSuqUVo8628kBYJFa4Ds6EmNudHx1SIAMjXydtwyi14J+iK6Js8pTQ0/iJFZ94j/SwXwMUNB8QtgtkYJpMbq7Co5xmC7xZrWNlqzBiwjpLyR3qgTgwYlhQlCDaGXVy4omkb/1MiqtdZtM85sSGSgZdwCDTbQUbyMdmebcTLe1fii0dErr3Xu2DBGHGpElAuIf1doGLEgfH3tdTPEi6FPm7xgwU859IzXTaVlc4f2CcRDW5NOom8EEj3OOv2Wmx0YycpoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.15; Mon, 20 Apr 2026 12:17:36 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 12:17:36 +0000
Message-ID: <aabf6c27-b67a-455e-9be9-f5b3450026b6@intel.com>
Date: Mon, 20 Apr 2026 17:47:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
 trigger enum
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>,
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
 <e33134612d3185542c50bf82063227755355cefb@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <e33134612d3185542c50bf82063227755355cefb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0152.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::22) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB6503:EE_
X-MS-Office365-Filtering-Correlation-Id: 30b441c5-61ea-40e6-36ef-08de9ed6cee3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: m6tgdo3luSQsA4SYsDdsWz/kjS2MaOzx2JOy3tw/fQea5abeQG61tsdmZN5c8s0Zcbs8EfvtYQ1BHB2J87scOuQhXwi2Oxezjy3G7GtVvn3FyqaGhUY0zgarZzgIIgZZIZNHfS1HAyqrCQp/RwDDVbgZi8MgJh9DNyDW27XKzyKS7SGqVjLYYlbWEHBNM/TaeynlfT/eXyWrNf0Xq2FiE9X5sWtLCWD36wbL4/GljmeeEYvdsO8HMvbh6KLcCeKGeOCL9T2cew4GQ0V30AukGrVFVk8b/Zo5zywsuIsbvazffiN4Mvwj4xpowz7Iq7/OV2K146I62FFbEUa3a4dqa0XMkyn85RIT7fmtmzlXMrXT1drhuzbn1gTX5zfgnREGBTrNJdQh7psZEQoJjAo+67C8rE9ih+pJZlMu5USLzE/zkcjxjva4SRvhyvAGvDwxWDQyKn+ZgRg6H3Wwqqrs/em4p24wj4f8ZRbvzsZjUWd+LDRIj0uFh/6t3GSwUUWt0RDUx3NxBFzNbgnp+2ajrO/0mwo3Aq7yOxJ1Bhd4Wx3W183JeBs4DVgDD6u3Ah99Heh/WqAWkqqn8+lU5bEspwCix/kooH542cf4rreb4LB5bolAA7KxLIikZkDu911/M69bxrbB0+/kt+prJzdPzIaFOa8gTrl13GTYOH+590VfLnEaGBZlalHNzdYSpTRoUa5TOSKk+v/UjrPpv07Y+fWnxxCplzhm9MxOdPNSqSg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHNOalFOQnJCeWxOU053TE9tNkd6UGRmVFhaNC9kS29RY0dGV1pFaWNyZ0Zp?=
 =?utf-8?B?OVRNa3V2S29KNmV5SUdITkhXRk1KWlpUMitML0IwNVh3cUNVWnE3K2NidU9G?=
 =?utf-8?B?bng1cXZBVkVqa09kK1FMSTVSa3FvdzRZNkRWZ1NKRk8vMHA5azdWejZjQTN0?=
 =?utf-8?B?bS95SHJUN016dEttemk0SjBkU2MzNHYzR3VTcnRxK2N0MjlERzZGQWMrVDZu?=
 =?utf-8?B?SWZTVTdZeStRTHJGc1BGRU1IZVNRRzZjZ3gwUXgvZEhTT1VYVStjLzlvOGor?=
 =?utf-8?B?UHNQSm0rekJURHUrNldFWU5yM0hTc3c4ZmxKeWRkdXh1d21kTEhiellNcTU5?=
 =?utf-8?B?R2tzK3hGRGtMNUZXSTFZSUsvUGVOUldJb0UxWlYyaElQeVpHd3BPWVdEM2hC?=
 =?utf-8?B?MDd6OXpPTGdrSWM0NFVQalVqVHYvdTdZKy8wNVNWR2JOUi92SDM0bFd4eXNx?=
 =?utf-8?B?alhYblJ2TU5DK0xRTDVDRTRuYVBCdkVtVWJjZjNuSFF2NG1wUnpZNk9GbERx?=
 =?utf-8?B?cUREOVpPMkVxd3ZMbmE5TWdjZUJQaHJaU2lQcjliMFcreGRJUkpWNjU3ZC9l?=
 =?utf-8?B?NVYzVWk4TkJqMnZwdExYRmNGUjhJWEhXQnpEYi92Q1VsV1haa1FIUFZkUTFQ?=
 =?utf-8?B?TXhhVFhvOHB6VmZkaTZWUTZzOHRYV0J5anF3cGk5TmZnRE1Qc3orblJCR0Nl?=
 =?utf-8?B?K3RsUUljY1J5ZHdlZjdFOHRKdmd2QXJvZnljYlRzR0dUYlM3dFpOZHVBUGpy?=
 =?utf-8?B?NjkwMTVLOFB4dmpOYlA4ZmJVa2VmRGFFQ0RDZmFVVXhQeFJJa3V6d3JuVGdw?=
 =?utf-8?B?cmZLNXEvV2hPbkswRkQ2RlMvKzZhWFFINGdLM0xaamlnOXlnTXdka1NEV2tL?=
 =?utf-8?B?R3hlaVo1TmVhbUdOaHdRdngrMUc1ODlMWDNOSnVPWE14TU5CSkNHVEpWV3pj?=
 =?utf-8?B?NTVFU2txV0ZheEREY0UxWGFDMURURnJuM3R3MmtWNGtHYXk3aDlxSXAvWDNx?=
 =?utf-8?B?OHNnWGJGQzA5VDFjWW5oWXBQYlg0L0t3UVdBQTJXSE1TZElyQzhnQTRzN0pn?=
 =?utf-8?B?SjFwQVJXK09PY0M3K2hyQzIyd3plY0pnSk1NVFFkK2JlRmRmTVNVRmZCbG5Y?=
 =?utf-8?B?L3VIaDVwa0t4Rmc1cHovNm0rNElUeEd2ODYvcU9BTXZ3NXFCYkdXcGpkakIz?=
 =?utf-8?B?Q3VnTEpTTWlKSisrUGtQTWFQYVh3M1JZa0paenBmZUR1ZWNyUWxsVkUvNUdD?=
 =?utf-8?B?cnRyS2NxUW1WTFBZb05ob0VRTWh1RDNHY2JYeDQ1Qmx3d2lNL0dUSzJ3R0l4?=
 =?utf-8?B?VUNSMlRTM09DcG4xMWE3SnRsQmRlV1VxQ3BoVStsUVJwU0NrT0QvK2FsY2I5?=
 =?utf-8?B?d1ZGSXF0UzY5YTViRWdyYjhhTGRBTjdic1QrVy95UC9mYld5T25PWDAzSFlL?=
 =?utf-8?B?MzBlZ2FRcVdTamdrUi92RFFpUFBCVWFhVDBUZHNMOEpzY2VTR3lsYnA3Rm50?=
 =?utf-8?B?cTcwOXRMWWk2UHN1UWpyaWtkRjl6ajF1NlcvQUd0QmNqM3I4WFlDSUYyOFZL?=
 =?utf-8?B?aURKQTZuSDdVVG9qbVZIcFo0bEFiZmt4cVI4QWFrb1dlK0NhSDNmUUZzNTFH?=
 =?utf-8?B?My9XWno5bXBIcEZIUS83ZU1xL2lKSytqTTVnazZuYnJwU0NRaVJkSkFIT21l?=
 =?utf-8?B?cjZSczZrcFhvV3puekVlcjhDMFBmN2lQbHhreWJyNHFsWUx3bUFEb2xrRSs4?=
 =?utf-8?B?dEpBNVdtU1orVUdyRXhGMjBBUnNDTWlJNk9rSTI2QmNWSDB3T0hNWnpxc1BJ?=
 =?utf-8?B?K0VnKy9oeDZhNWtYdTVsL09SUVBJUnhTdCtwZ3V3c29CQi9UaDM3bUQrc25w?=
 =?utf-8?B?QXBnTEMrTzNzd0xQS0tCbXJoOThOem93dWNSeGtLVWhES2pnVzRmU1lVWTY2?=
 =?utf-8?B?V2U3VHdGTTIzMVpwWmI5ZSthV0R4SjY1NGtrQ0I0dXRhaFVFSXhaUXFpbkdG?=
 =?utf-8?B?SG95dUJIWjZBWUROb3NDbGRSL0lQaSs5b2hzdDluS25SZDVMYWg5Y2l5bGhi?=
 =?utf-8?B?VTlKbm83aEprRUU5bVl6K2pUYktZU1p1T1V1dUdqL05NSEpVT2NHTXV2Nms0?=
 =?utf-8?B?ZzFHZUNoZ2pFVkJPMFYzOTRNaTFwRnRMbFo4QUJoV2piVno4MGtLVzYvcmRF?=
 =?utf-8?B?N1RrZGEvL3dMdU1KeGJkVUgrOVEwbnpwRkErSnU3dWFHQVBISmF2TWNPVWV1?=
 =?utf-8?B?QXRDei9sOG80R1ExUktWYjNQdGtNa29nV2RHRXJiT3luZFp4bENUMmVydVM0?=
 =?utf-8?B?QUYwbUg1enI1Y2hiakZNMkhtdTErUjZndWxzWnI4SFNZRVp1RmZnYXJDajFn?=
 =?utf-8?Q?Vr2GRmATSLjWaP+bmdMzWrPPrJglYV5EuyTI5GvFPCTnQ?=
X-MS-Exchange-AntiSpam-MessageData-1: kVZrRL7BnU+GMA==
X-Exchange-RoutingPolicyChecked: JM3euhEmKd/SpEK0+Kyd4L409GTlGy7GtaNrDqN7J1OzkXsKy9FIv21uffAI+wNJ5nFbflQ4PBb6yMwiWAoWdQPnZsVIu8J8JBlzHMAHbBlGQ4PNirwFBDmm17Ap4V+HY5DN90bSgkMSBgaT9suun6O2ISqLNiGSRVzxmYQ2k4lsB3F1VOWpBRdM41X1nmaqGdADZwffuVdDLuoss6rAznw6hmtqCgX7zQ6/4w+Rg6xkwfDxNmKYbbQVv/PBWfdTUjrLfl6WM5vlgo3VQB7t14dHnR3Y5SJFW08nzWeqCPVEcMEplmp8glPsfHlDx9WCxPn8FeqTYgIR7kip7dn5fQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b441c5-61ea-40e6-36ef-08de9ed6cee3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 12:17:36.7884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdIaUuN4mS8GmgN0wBOs9GyztnrNfxu1XutJrovo2KESmYY3E0nNhW7GotR65reYjPisBLp6ftUl0PsgbUKKaMMAwLOZ5fyQuQ8FwLvhoEpw74urtEkn+Gq2wn0y/jGJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 700D742A91D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 12:41, Jani Nikula wrote:
> On Thu, 26 Mar 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Fix HAS_DC3CO() based on display version and introduce an enum to
>> track DC3CO enabling triggers.
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_display_device.h   |  2 +-
>>   .../gpu/drm/i915/display/intel_display_power.h    | 15 +++++++++++++++
>>   2 files changed, 16 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 35e06fcf794d..002fe0ce951a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -189,7 +189,7 @@ struct intel_display_platforms {
>>   #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
>>   #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9, 10))
>>   #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
>> -#define HAS_DC3CO(__display)		((__display)->platform.novalake)
>> +#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >= 35)
>>   #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
>>   #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
>>   #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index d616d5d09cbe..3fb45154864e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -131,6 +131,21 @@ struct intel_power_domain_mask {
>>   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>   };
>>   
>> +/*
>> + * DC3CO enabling triggers (bitmask).
>> + * DC3CO may be enabled when at least one of these triggers is active.
>> + * Additional constraints may still apply.
>> + */
>> +enum intel_dc3co_trigger {
>> +	DC3CO_TRIGGER_NONE	     = 0,
>> +	DC3CO_TRIGGER_PSR2	     = BIT(0),
>> +	DC3CO_TRIGGER_LOBF	     = BIT(1),
>> +	DC3CO_TRIGGER_PANEL_REPLAY   = BIT(2),
>> +	DC3CO_TRIGGER_ALL  = DC3CO_TRIGGER_PSR2 |
>> +			     DC3CO_TRIGGER_LOBF |
>> +			     DC3CO_TRIGGER_PANEL_REPLAY,
>> +};
> Enumerations are enumerations and bitmasks are bitmasks, and I don't
> think they should be mixed like this.
>
> Moreover, the enum as a type isn't even used anywhere.
>
> BR,
> Jani.

I will move this definitions to #define and move the definitions to
the correct patch.

>
>
>> +
>>   struct i915_power_domains {
>>   	/*
>>   	 * Power wells needed for initialization at driver init and suspend
