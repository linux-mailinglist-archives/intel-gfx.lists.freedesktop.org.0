Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F52B09AE5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 07:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7780310E335;
	Fri, 18 Jul 2025 05:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCfpDpHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E925710E073;
 Fri, 18 Jul 2025 05:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752816128; x=1784352128;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=M9IGHkdj0mKDzZylU1hwnFfQn3xLEJsEZuUsrBb8oDA=;
 b=YCfpDpHXY/C89fqhoT42ps0uCmLUz1PBOdjsiETsL3oMt2g2UkHMdTYx
 zrisuwUlMWPl47IspQpXZFce2zOJEdjBMepmdcTD6/mqdQ8amysjPf+sf
 bjtk6uGQlnn0IOZU3dk2H8HksPSIrN8J3moB/DrS6l3fmR40WAoDFH5+F
 jlefniW1RpCtJyQMipfixfIdUvQ/MyF8AXN+OmW9AI4sCHYdXXNdudf26
 u6hykn8MwH8NCBTtEzI40mXZyk6x44cYEyGIys296GmfAS4Njpc6uUnN/
 jK05AK3CWcgf7h9Tj9JpvMGeqYIYwE7YLIAb5CrKjHwEmO/rxnA+nUbhO Q==;
X-CSE-ConnectionGUID: d5EXlhriRLauN6AISES1/g==
X-CSE-MsgGUID: gXm6D3WsSFWwC8a0dUIsAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55258848"
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208,217";a="55258848"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 22:22:07 -0700
X-CSE-ConnectionGUID: 78Fn6/PGQvWf06mbP/TbGQ==
X-CSE-MsgGUID: 7Im7u9hKQ6KsV2pzfdWKog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; 
 d="scan'208,217";a="162494558"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 22:22:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 22:22:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 22:22:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 22:22:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sB/g62ZUodRo7jXI/OtLw9pMZS5oTLQoNuAN0reTgKz3whPI9s7ZYwPUQmwlkxAWAVJy13cseTatlrTM6oeOJSYzD5ERra1m2DoI0PA+OyhhZjXEn8S56P3HHZss9mxGZCtcCUpT4XoEcrhYkBQ1kJ7k8cU/9Ymc+ZlOUVozhn3n9NX5jc5aXHJXMXjzK5TPZxwFQ+IGLrLXz5LESOEPLFUZsCbTO3G16lWJlfjjDuUNtQd5KJZVKl+OOaFCEaib+l/KMuWcgazbj3hJKj753EG0s4yzDLB3JB+Tjl52Gz1iJbvFzUalf547X2SC2pJ94BmvOyhm1Sj4rwJMppXfxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGamfrGjU/MUslmBdKG8tOHoZAXC3LlhCAVQRBzC/A0=;
 b=vfJCqFi1/kqC9WSC3vmNvNb1jFhcUPxG24awZJN/LvcHa96rBdJTtZWFZwvFTeeh3px1Wr7pTAiy0hkEz6WqYLXbv/rJs0oVlx38jdwGyTs5gio/uxGGZClntZYRZRaWhgwjFlXxrBE8ksAxFfizh1EkWL/VZolwH01x2w8M6aHcau3/6a8tkMbBgFlr9PwBNNYV0+2fdEwoUk3UAngnHF1ZynF+AFhj7fkiiCc7Kb/Gc0fWCfZWjaYWtG8ZFg2gc2x/6jcbaIGfjYFnwHgBgEwqM93CWUphny3E6A2B84Hb9Jpzctt7dpggyFAuov1LI4HWMR+nhuP5cWSdgztrVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.24; Fri, 18 Jul
 2025 05:21:45 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%4]) with mapi id 15.20.8901.036; Fri, 18 Jul 2025
 05:21:44 +0000
Content-Type: multipart/alternative;
 boundary="------------RTQu0d90vjASUGnBoOfd0S2f"
Message-ID: <07704628-3fcd-41c1-8318-ac9ead866d7d@intel.com>
Date: Fri, 18 Jul 2025 10:51:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Block hpd during suspend
To: Maarten Lankhorst <maarten@lankhorst.se>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <imre.deak@intel.com>
References: <20250717085425.1347043-1-dibin.moolakadan.subrahmanian@intel.com>
 <47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se>
X-ClientProxiedBy: MA0PR01CA0041.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::15) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW4PR11MB6618:EE_
X-MS-Office365-Filtering-Correlation-Id: 766afe98-f2ad-460c-9c38-08ddc5bafc4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|8096899003; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1J5RFk0d2FZK1BOVlRHb1BMSmdVd3QyQmVMeXMvWmtkbDAxVHR4bmJnYVFY?=
 =?utf-8?B?NVpRNlRXbzJyQ1p0R3plcDlmNkEvSjQ0MDBmYXlDMzduSVc4VE04L0hyLzVP?=
 =?utf-8?B?QkF5T3VlNlk4U0JIbDBMOFpSbWxkZ3RwS3ZnajVUMUMybUlESUZZWWZ2azBr?=
 =?utf-8?B?RlRLb3hHUVVkcDJZQ1lmV1pWYzQvbDZzR3VSL1ZsYjAyUVdpYlpvK3VzZWhk?=
 =?utf-8?B?UDBub0ZiaWxHMTl0amQ1Z0JpMGFtSlo2Y3FDNWo4Ky8yVkJYb3hZMjlNWWFC?=
 =?utf-8?B?RDNMRmIxVGFQeEJ6d0JUVWp0TFhRZ04zbmVjSHZYMXNTS3VrendRWVE2ai93?=
 =?utf-8?B?VUFQUG9sa2g4cDIyMWFwSGhxNmZxdjZpaHNlZEwvR1FYQWFOSkpONWsvSUJ6?=
 =?utf-8?B?L2V0MEc4N29DVVl1Z0k5dUFaR09XTWpYN0FsOG02QUM3TTE2YzlmQmlYMkgy?=
 =?utf-8?B?RlRFN3ZMaE5FeXVETkZ2RUxuSTNGNHZzQ1lrVG1pWWZ3N3pnbFE1Zm5zL21D?=
 =?utf-8?B?VDRHOEpEYXQweDdLZjd0SFNRQ1d3ODkreFQ4SFJ6ckNHcXFJUUJmaElIckNq?=
 =?utf-8?B?azFTWFVoQUFaSVJpaFlvU2h0ZXN0T1E1MThkNDJGclFmMGVQMXZUWk5pUXRG?=
 =?utf-8?B?VDJhdjhPWkNxVjNJbU51WU51ZzU3UENvR0ExclE3aVpGZXZpNVFDZEpmSWZK?=
 =?utf-8?B?TGIrMWo2Y2F4bFBnUkxKd3EyaHppTEREZ3dUZXBVRyt3VVJXNjVXQlhXY2J5?=
 =?utf-8?B?Y3ppNTFMU3daYW9pc0ZuY0Z4WXdYcm5qckJyZGdad0NCQ250c243U0lzd3Ry?=
 =?utf-8?B?MElQL3RuVTNwaG5pdHBFaWNJcmdFUXVndHdLeGdCd3NyK2hpTm1xR3BrREpZ?=
 =?utf-8?B?Q2tNTzBreUxSS3lsNms0OFREeGk5N1IvWVRKVzkweTU5UmN1c210U21SNGcy?=
 =?utf-8?B?Rm83TVhkOTR4RWpzdjg1SFA1dUNNWFpNTGVmSktCQk5xa1ZSMjluZVpaSTgv?=
 =?utf-8?B?cG4zY2hmanplZUp3WURyZlJGT0E4NEp2VDlJODY2dnJrWHN3L2U2ZGZicnRS?=
 =?utf-8?B?TzRnL0RPM3dIS3hOK2swUkluNmsyU2R4KzgrTlRPeGhtYk9kMSs5UTN1Nktl?=
 =?utf-8?B?RG5McWhsc3BERzdvUGdBd2RCVzdZeFpqQXkwd3pQSk13NjR3UjRjZjZ6bWgz?=
 =?utf-8?B?RHY1TnZRNXZXemYwa2NrN2tqeUtJU2hUWWdRZldWT1g3MWZ0TmxhVUxaZEVq?=
 =?utf-8?B?SFgxRGhNZEtmQm0vM0dGU0RLbi9kMndxNkN6TENQdlF4Q3k5UUZGaCs4dVhT?=
 =?utf-8?B?NXFuMVZaQUEyMGx6NEtsRG92Mm9WUG1mUmxMbGRxa2x5TzNoWjEyOEY4T1gw?=
 =?utf-8?B?NHlYK25NdEoyK3FPWlhMZ0F5YmQ1Qlk2SE0rZ1hRWnpaUUxoSEJmUkIxNHNm?=
 =?utf-8?B?eitLTFlBN2owK1BIVTlJaE5ydlRibFBJMGJOMGtUSG16Zmk3RFRDc1ZSMHNM?=
 =?utf-8?B?YnhkOHBHWm9WQmJjeHllUVFoSDhZcVYydFBoSHIxWTVNbDJMZVY2QSsxeXVu?=
 =?utf-8?B?Sm54L243dG9hcVRDRGNMbmFyVVlxeDdmS1EyNURHWmMxYXJVMytTWi9RWkxi?=
 =?utf-8?B?N05Kd055eU9MZkJuYUVYSlc1U1lpdHZKYnVuZUlNcS9CaFJ0NUV4YldhM1dm?=
 =?utf-8?B?YUpUU2xyS0dTU3hRUStUUVdjRTBpa0J1SE5LQ1BpTDY4T1A3SlBzcmt0WEhF?=
 =?utf-8?B?dVlVd3VXeTBTb3lLL09aazV1RFdwUnpsS3p6dGdPMzNXSjNzZ2NZMVZGUDJ1?=
 =?utf-8?Q?QT3chIs0LRJ/BbRAVDJ3+fAOMu14cxxt0hoXM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(8096899003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnRxNC9ONnArbmVmWGdiZXAwMjc0bWV4VnE3bUZ3RTljWkE0cG1vR0hUM2VY?=
 =?utf-8?B?MU9oUzN0U0VlWFdlMWwwRmxuK1lHZ25BV3JPYzV2ckU3Tit3NkFhZU9URkFW?=
 =?utf-8?B?WDhDMU0vamtBMDFWS2dVbWdEZ0FXMlVTMjJpU2lyOUpsOFVkem53c1BoaHVx?=
 =?utf-8?B?VFg0ekRQdDNNclg5M3NjTHpLWm1FQkhjWThjUGtiRi9DK2E2RHlXTnRYOXYr?=
 =?utf-8?B?cnorLzBPOGNyQzBoSytGT2l4L3JSY2R1bG1iNzhTTE1vbWZlc09TOWM3dmZJ?=
 =?utf-8?B?N3JpK0ovS2ozV3U5ai9MUE9NSTZxWm56NUFOcjNJZWlEVEd1bG1WTnJhS0NW?=
 =?utf-8?B?ZUdZTVhQanJmZkRsZjJJdDZGbGQ0L1hNeHNqMzI3QUl1c0lPV2Zrek5tVlhk?=
 =?utf-8?B?TldKK2ppWm9XNExNZFFJdExTdnQ5eVNLWTNzeDR3V3RxSTUrbnRuSVFQdHZL?=
 =?utf-8?B?OENPT2lXdVdocW1QRmVoNll4TE9YUXIwcDdGcDFUbGw4NlMwL3dRUC9IcVNs?=
 =?utf-8?B?QWY0THY4MHVicUFRcEpDTjJHM2dTcGZUVTBlR2tNOUVjZXY4SGNRM042R2FT?=
 =?utf-8?B?QnQzcG4rUXk1RzhtUU5oQndPR1g5R3REWFpybjYyNmJlbU1QTCtxUVdRSFNW?=
 =?utf-8?B?WGhVSTFqcmxXOWRoRTBLL1lKRWRIQm1iVjZSNTBUUTFvTkdTUVJNSllRTFlJ?=
 =?utf-8?B?Y3NSVGw4SmM3bmN5Z1BidjhyUmFHdG4xV1F3UGw2bUM0OThPaWs3Z1lkRmEz?=
 =?utf-8?B?TXRBbjV2VHpGc3ZNd1ZwTHFoemV6Z1UyanhwNUh3N3NOWld3VWpEdWtsU1A2?=
 =?utf-8?B?N3FySkNxaVI3Y2xTWmYrcHVubkh0bGFFUmtTb2xRWG5jalUvSC9LS0RyeDR5?=
 =?utf-8?B?STZ3T21BVmVWVkNuVVNYbFIxeWgzbGVLcGFjcFhJTHhtWUcwTkxMQ2MrQ2hQ?=
 =?utf-8?B?ZEY0cWhXS1V2a200b2NvZjZKSHp6QTJvTkp1TmtJdkFKRjc1WU1mUlZ0L2k5?=
 =?utf-8?B?NlJhVmpZN2JHY3R3UHY3dXF2WTRYdVh4UHRSZ24xdk95OSsyMFhUMDZzYTVF?=
 =?utf-8?B?WUtzZ2xmMStyMW1JZHJxSlloY1VOQ1NzSkdEZ1Y1WEZ6cERZSllzUkJiNVpV?=
 =?utf-8?B?VXdFYU9DRzRlK0U0OFBVSzVEeERQaXY0bHdSaTZ3dlp1NGNjOU9yN2h5eGJy?=
 =?utf-8?B?T3JJMi96NVI0OFJTZzRCbEVhaFhsb01zeVlNK0ViZDViQ05Zb1ZheUtIRHYv?=
 =?utf-8?B?V05GTFBDcG9VK21Vbzd1SThkVktSWklCbUZld1lTU040V3FFU1dyb2tCelRX?=
 =?utf-8?B?YldyS0pHRWl5T0hJdXNPbWxtdVk1QTA1SHFkdFhLVndManJEc2hDeEhEbW9Z?=
 =?utf-8?B?M1p2SXpLSGJ4Q25kL25Ma29DSEhJV3ordmtzUUNjbEUyT1FrYVNXRE1SNlpP?=
 =?utf-8?B?OXZnTVlpa3lRMmo5UlI0SkdvQW12NERvTVdmbjFQVE9BWG13K1hZaUY3dnhn?=
 =?utf-8?B?cXpmbTA2UjFEZDdFeElQS1AyendTcnJhWTdqci9UT2ZFYTh0QWNBTnlRdjdC?=
 =?utf-8?B?bGNuRi90KzhHa0tDRVk4TUFHczE0eWFMdkE4UzNZS05NUDN6VzRxZ0tSTGhX?=
 =?utf-8?B?dUFrKzlDNmdqVmpxSytvd25mazg3Rlk3UURIMmpDMWNXUW1jTnFBY0lrVFhM?=
 =?utf-8?B?MjkybWdTMTdpSExpZTVZQXNtM2ZtV0ZZRVFxeHNIMWdFajNlby9jZnRHbGFH?=
 =?utf-8?B?N1NpTnpDdTNISGxOemV5WWpqK1RWeTJpZFF1ZGVoMlp2SEJhUkRKd1F2ZThk?=
 =?utf-8?B?WGxGaXFIaWt3T1UzOGZFSlZGcTVFdzlOL0FCc082dkl4K0NNVzRGeUh3RjI4?=
 =?utf-8?B?ZGpDdzhhWWRLdm94RFNSUUJVY1A4aEdDNGJia2lwQWtTSjBQNDFmdzNrYndG?=
 =?utf-8?B?cGhER2ZDc2RnaVFiWGFpNmJHU3JONngxMHNtbGtJS0dMZGNscStHRngzUTVu?=
 =?utf-8?B?a3JvQmgzck9nUVRsNi9zODhhWGVBbmNZQ1B3WWxSb0dTZE9zNDNBZUNWSDhv?=
 =?utf-8?B?amRkWFpvNVdvVXExRWJvbWhyMzRzemN6TnVDUUc1UU9VOW1DaUM3ZXlRU2da?=
 =?utf-8?B?Uy9LeWpjV1pzbmE3MEtzMTAzcUVHcXVGb2dGZ3ErYnk4dy8vTmZ0Mjk1alFa?=
 =?utf-8?Q?vVa0f349GENR9YQBT1NIyF4u8uGNXTBNRYU3SotD4rry?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 766afe98-f2ad-460c-9c38-08ddc5bafc4f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 05:21:44.8282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pHORQurv7+TfVtgZ7Rgxds9A7MPzpjHzG68fDqA4aCHJR8suGKfII4jGH04K6UJ7lPpLHhjWyW0EDFscmz8il0WdQF7jDI4iLenUMdq1RxuPEPFrPm3neWPDQlVYUsnz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
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

--------------RTQu0d90vjASUGnBoOfd0S2f
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 17-07-2025 17:24, Maarten Lankhorst wrote:
> Hey,
>
> When I looked at enabling -RT for Xe yesterday, I noticed this trace.
>
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488
>
> I independently discovered the bug as a result, and sent this patch to actually disable the irqs.
>
> https://patchwork.freedesktop.org/series/151728/
>
> If you have a reproducer, can  you confirm this fixes it?

I was not able to reproduce this issue , but I did change to trigger hpd in suspend path
to test my changes.

>
> Kind regards,
> ~Maarten
>
> Den 2025-07-17 kl. 10:54, skrev Dibin Moolakadan Subrahmanian:
>> It has been observed that during `xe_display_pm_suspend()` execution,
>> an HPD interrupt can still be triggered, resulting in `dig_port_work`
>> being scheduled. The issue arises when this work executes after
>> `xe_display_pm_suspend_late()`, by which time the display is fully
>> suspended.
>>
>> This can lead to errors such as "DC state mismatch", as the dig_port
>> work accesses display resources that are no longer available or
>> powered.
>>
>> To address this, introduce  'intel_hpd_block_all_encoders()' and
>> 'intel_hpd_unblock_all_encoders()' functions, which iterate over all
>> encoders and block/unblock HPD respectively.
>>
>> These are used to:
>> - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
>> - Unblock HPD IRQs after 'intel_hpd_init' in resume
>>
>> This will prevent 'dig_port_work' being scheduled during display
>> suspend.
>>
>> Continuation of previous patch discussion:
>> https://patchwork.freedesktop.org/patch/663964/
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
>>   drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
>>   drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
>>   3 files changed, 28 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> index 265aa97fcc75..7ffd8ded1c26 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> @@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
>>   	return queue_work(display->wq.unordered, work);
>>   }
>>   
>> +void intel_hpd_unblock_all_encoders(struct intel_display *display)
>> +{
>> +	struct intel_encoder *encoder;
>> +
>> +	if (!HAS_DISPLAY(display))
>> +		return;
>> +
>> +	for_each_intel_encoder(display->drm, encoder)
>> +		intel_hpd_unblock(encoder);
>> +}
>> +
>> +void intel_hpd_block_all_encoders(struct intel_display *display)
>> +{
>> +	struct intel_encoder *encoder;
>> +
>> +	if (!HAS_DISPLAY(display))
>> +		return;
>> +
>> +	for_each_intel_encoder(display->drm, encoder)
>> +		intel_hpd_block(encoder);
>> +}
>> +
>>   static void
>>   intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>>   {
>> @@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
>>   
>>   	spin_lock_irq(&display->irq.lock);
>>   
>> -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
>> -
>>   	display->hotplug.long_hpd_pin_mask = 0;
>>   	display->hotplug.short_hpd_pin_mask = 0;
>>   	display->hotplug.event_bits = 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
>> index edc41c9d3d65..3938c93d2385 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
>> @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
>>   void intel_hpd_enable_detection_work(struct intel_display *display);
>>   void intel_hpd_disable_detection_work(struct intel_display *display);
>>   bool intel_hpd_schedule_detection(struct intel_display *display);
>> +void intel_hpd_block_all_encoders(struct intel_display *display);
>> +void intel_hpd_unblock_all_encoders(struct intel_display *display);
>>   
>>   #endif /* __INTEL_HOTPLUG_H__ */
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> index e2e0771cf274..51584ea3ed09 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>   
>>   	xe_display_flush_cleanup_work(xe);
>>   
>> +	intel_hpd_block_all_encoders(display);
>> +
>>   	intel_hpd_cancel_work(display);
>>   
>>   	if (has_display(xe)) {
>> @@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>>   
>>   	intel_hpd_init(display);
>>   
>> +	intel_hpd_unblock_all_encoders(display);
>> +
>>   	if (has_display(xe)) {
>>   		intel_display_driver_resume(display);
>>   		drm_kms_helper_poll_enable(&xe->drm);
--------------RTQu0d90vjASUGnBoOfd0S2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <pre>
</pre>
    <div class="moz-cite-prefix">On 17-07-2025 17:24, Maarten Lankhorst
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se">
      <pre wrap="" class="moz-quote-pre">Hey,

When I looked at enabling -RT for Xe yesterday, I noticed this trace.

<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488">https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488</a>

I independently discovered the bug as a result, and sent this patch to actually disable the irqs.

<a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/series/151728/">https://patchwork.freedesktop.org/series/151728/</a>

If you have a reproducer, can&nbsp; you confirm this fixes it?</pre>
    </blockquote>
    <pre>I was not able to reproduce this issue ,&nbsp;but I did change to trigger hpd in suspend path
to test my changes.

</pre>
    <blockquote type="cite" cite="mid:47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se">
      <pre wrap="" class="moz-quote-pre">

Kind regards,
~Maarten

Den 2025-07-17 kl. 10:54, skrev Dibin Moolakadan Subrahmanian:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">It has been observed that during `xe_display_pm_suspend()` execution,
an HPD interrupt can still be triggered, resulting in `dig_port_work`
being scheduled. The issue arises when this work executes after
`xe_display_pm_suspend_late()`, by which time the display is fully
suspended.

This can lead to errors such as &quot;DC state mismatch&quot;, as the dig_port
work accesses display resources that are no longer available or
powered.

To address this, introduce  'intel_hpd_block_all_encoders()' and
'intel_hpd_unblock_all_encoders()' functions, which iterate over all
encoders and block/unblock HPD respectively.

These are used to:
- Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
- Unblock HPD IRQs after 'intel_hpd_init' in resume

This will prevent 'dig_port_work' being scheduled during display
suspend.

Continuation of previous patch discussion:
<a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/patch/663964/">https://patchwork.freedesktop.org/patch/663964/</a>

Signed-off-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
 drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 265aa97fcc75..7ffd8ded1c26 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
 	return queue_work(display-&gt;wq.unordered, work);
 }
 
+void intel_hpd_unblock_all_encoders(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	for_each_intel_encoder(display-&gt;drm, encoder)
+		intel_hpd_unblock(encoder);
+}
+
+void intel_hpd_block_all_encoders(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	for_each_intel_encoder(display-&gt;drm, encoder)
+		intel_hpd_block(encoder);
+}
+
 static void
 intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
 {
@@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
 
 	spin_lock_irq(&amp;display-&gt;irq.lock);
 
-	drm_WARN_ON(display-&gt;drm, get_blocked_hpd_pin_mask(display));
-
 	display-&gt;hotplug.long_hpd_pin_mask = 0;
 	display-&gt;hotplug.short_hpd_pin_mask = 0;
 	display-&gt;hotplug.event_bits = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index edc41c9d3d65..3938c93d2385 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
 void intel_hpd_enable_detection_work(struct intel_display *display);
 void intel_hpd_disable_detection_work(struct intel_display *display);
 bool intel_hpd_schedule_detection(struct intel_display *display);
+void intel_hpd_block_all_encoders(struct intel_display *display);
+void intel_hpd_unblock_all_encoders(struct intel_display *display);
 
 #endif /* __INTEL_HOTPLUG_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e2e0771cf274..51584ea3ed09 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 
+	intel_hpd_block_all_encoders(display);
+
 	intel_hpd_cancel_work(display);
 
 	if (has_display(xe)) {
@@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_hpd_init(display);
 
+	intel_hpd_unblock_all_encoders(display);
+
 	if (has_display(xe)) {
 		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&amp;xe-&gt;drm);
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------RTQu0d90vjASUGnBoOfd0S2f--
