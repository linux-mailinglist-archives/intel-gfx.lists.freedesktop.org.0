Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EB7A713A3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 10:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FE710E689;
	Wed, 26 Mar 2025 09:25:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlDFoDKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE32710E689;
 Wed, 26 Mar 2025 09:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742981126; x=1774517126;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PERycDo1pKKYJJ2sdgfJllLOZkjLq+EXYkqzOSOLqx8=;
 b=mlDFoDKLMyhpm8WuqaoHlM6B0qebea9WlU3PpDRTVwbQ33NQ0/DhFWxe
 eGKWCzSwmYn0JRvOlQetyKjJ7dDTDPVjwdtYkl4Hg2O5ReMmc4dUvGhFV
 de0lEDUP4jctl5DvDvS6Dcxbr/09WprxrBimXc1agYmYtuZUhnZJzFfmd
 tlSM9YfIS3QKi1gCMhC/QtkWrF7zVsua5gQOxwELGZOLTzihxbLvrPfJj
 V5qBYs8zSI1XgicyLmFSG9CZE2WJJ12iEQflJxqGrFEgvyW0dwFD210Hc
 zfa9anDtYL59NVbPUlCTZVJmAQyiXitb2muEI2g/VyKGSafk8Rb7NozLh g==;
X-CSE-ConnectionGUID: Mdpqo0luSVi827FnKr7fdw==
X-CSE-MsgGUID: C421YJuRQg+RpO43Xttl9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="48134660"
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="48134660"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 02:25:24 -0700
X-CSE-ConnectionGUID: tkMjV/WYQwWXpeJXkxOs1w==
X-CSE-MsgGUID: gtcNFZQ0Qrm2U+7hrSitAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="161904670"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 02:25:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Mar 2025 02:25:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Mar 2025 02:25:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 02:25:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4uyCi1AzYtqxCZLokmDSfeORD65LlAu17LexLAIWjAXAqc4e7iF6MVYR0oovTkQJlf0Nsgt8nIEqekQGAHgCL1nrEuhBgMN5Bkrs7Clt19aL7sUV+mcag6r+NNhVAbii3lM2ZIYAJ2oWO/+/3sUbTAnVyVCPs761dTkyMqsHm8MFp/yJ0rqDhtQGUr9KqXeRQ97dtb1RNxo0P+DWJbsDS0E/GGXyV3Lgu766VKtBshkosPcACaITAHfMCF8B/HPK/j0A1REWiNWzp0bt+LzzkjgUrhLxycVKr83Qvzy9KPoSGnAN501HPkSQPQ0b4/x8/UjspuxlyMSirG8QY/YCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EuMTeTrn06LT+5wvUipncWuV+X28mg6Yz1bamyqIZXg=;
 b=J17r8DXczJCegdXyaz5Wv9ZGs54HAN2ABfWtE7XfGpYBO2Qgd3L1wRotRDWGsY0FT2TRZbeObGEeEbp81IS699WxBzYV6Bvss2zCCGkO81rh324zduT6f3RO7X1itpb1Dx/B+k5gIyhCQM1B6sPhYlbrbdD5H1hmVmGOpOO1EViIoz9iCrgPRM7V0reIWMJZ4eK02zJ2PQi2C4kvW3gcBpWpZPGf3EmVjCyHSEKGAlEK5S7aKD84fP3fYcjORQrZsWhhVobcFJ8F1VuM/GvAuvJ4EHF1NKEvOAxmSg81ORazXlJCh4O0YlfnVzWdpXCmSHLs3JwhFMHase5LtycLfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6948.namprd11.prod.outlook.com (2603:10b6:806:2ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 09:25:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8534.043; Wed, 26 Mar 2025
 09:25:02 +0000
Message-ID: <cd797929-c638-4a3c-9214-87e7b9ecc9a0@intel.com>
Date: Wed, 26 Mar 2025 14:54:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <uma.shankar@intel.com>
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
 <20250321112650.3594298-2-ankit.k.nautiyal@intel.com>
 <Z92werPIFgvyjcr_@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z92werPIFgvyjcr_@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6948:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e285ba6-8807-46c3-41a9-08dd6c4815c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0ZmVlVJanRSMXQweTZmOXREY2F2Q3dwbkxueHZCWG9qcERNSU84U0cvblBs?=
 =?utf-8?B?Szg3VGhxbHBjRzlJVFhPKy8xSnYwRW9VVFFJWVQxUVZKTGJIQ1NkcGJDcnk4?=
 =?utf-8?B?cDlxenRIZnZ0WmZWMTlRZ09XRkt0UkhYTjB1NUZtYzd2c2oveTlXMDhvK1kr?=
 =?utf-8?B?Qy8yMnVsQXI5cFJVV1dZbDl1L0tBWkxBZ0pIdHd2Y0lSMzRtblYzeWZoSHVk?=
 =?utf-8?B?d2RFZFlmbFhyQVZYMHYvbXBkQWFhS0NuVCtnQ2FGeE93Q21NQWdkZXV3eldm?=
 =?utf-8?B?WWJEczVwdGZucVpCVXZXQ0RmeGxGeHZJUlZHWkl2TUozYURUUGNvZWRpaWJt?=
 =?utf-8?B?c0s4cFo3WnRaMkc2OTI1c3hoNGlUSGFOcnBCZDNIVkFUcmJqSThscHZ2b1Rx?=
 =?utf-8?B?Z1Fvb1ZkSStkdG01YmRLS25Ua05PSXBRNVdnNU1WbnNFaXF6MkNZa0VvYmZ2?=
 =?utf-8?B?Z3JjSXV6N3FXdmQwVTFmdFBCSUVxaFJtKzUyT0c2OTRBb21xTEJEd2JmbkJm?=
 =?utf-8?B?N1o1NGJhL0ZGK0hwbEt1aDlhMTRvM2YwdTlSdVFNTmVnc1ljdVE3b2VKQzcz?=
 =?utf-8?B?dGtzZTJvNlgwck5NTU9qWUZrYnNGYWFMMjVDa0daeVF1NWhLYnp2YjFUbHZY?=
 =?utf-8?B?UThBb3dGSmpUb2tjYm12M1RiNGRRK0kyN0d3dXZZRXQ0cC8zM1FVcGxCb3cw?=
 =?utf-8?B?d3M4MkZES2ZqelczUTNrTENNVi9iK05yZWhVL0I2NVM0OUNVWTJmQVFHU0tC?=
 =?utf-8?B?dE5IaXNFcVVBOUt5TU1XZnViSjJHenhpaElCL0hFZTc4OUZOdEdxU2ZPeHVs?=
 =?utf-8?B?emYwT1dEVTFzN2xoMkM1TTZSNnVXd1FVVlQzdmJUTlZoMHNtaXdVWmZJemFH?=
 =?utf-8?B?b2JkdlMxazd6TUlRMDJ5UFU1RGtWS3h6TERwd3FFK1RNbXZEdU1tRUthNG5x?=
 =?utf-8?B?NzJmbjN5d2NBS0xEb3djYTdFZC9RODNQLzlmSnNYWHR6ckRLbjRlVkxTYWUv?=
 =?utf-8?B?YTdnSVMrT2ZRM0JWdjlVeHdxR3F1MWxBd0lVS1pYbEpWUldWa3VWeGVMa3Fk?=
 =?utf-8?B?NktmN3RMVXlqY1h1TmZiUldQY1RvTlU1YVFvWDcxUzd1YjI4Rld6MzZDaFNp?=
 =?utf-8?B?Y2lMU1pBa2JyTllVOVNXMTJ1RnhvNUI0ejl6cVdJczhLMmVrdkdXVDFwVmtI?=
 =?utf-8?B?QUxzeDVlZk9xeG1tTXJ4LzhsNE1WK2hoczBoMDZIRzcvMjJ1TjdEcTRBOXps?=
 =?utf-8?B?Y3ZEd3ZUeVA1Y1p3eEpZS0crNlVpQmRYZkhEZ0NxUXRLcFJ0c1BaS2FxaCtO?=
 =?utf-8?B?TXNXV2ljemRJNTVZWDJPR3FHVThMcWExUzBxNEx2RTUzcG9idUlBWGdCSW5X?=
 =?utf-8?B?bDU2eE5wcGNmRG5yY0djS0xqWWgrbFNBeVd0cUpPY0l6Ump3dmJZQ2MwY3RK?=
 =?utf-8?B?YWtITVY0Smx0Tm1ZODlWK1UrdEk1OUJpRGcxcFNGZ1ZjNFc3MzluMklDMmc3?=
 =?utf-8?B?bkR1NHZhcWR5QnplcktSREtXNDJYRzl1VG5QdTEyRHBUbGMzZVNKRWxjVUYx?=
 =?utf-8?B?ZU1zeE5LN1ExVWg3T3lUSE1CMVVBMHlyaGNMZTl3ZEx0MXc5Z1Bkc0xUTkhN?=
 =?utf-8?B?dUFRWU1PNGFuY0RwS2pxTkdQVE9wR0tyRkQyQ0lSMlE3Vlk1dytEZEM1cVI0?=
 =?utf-8?B?T1Z2cDNLd1YwQUhpblplZUJYNFd3ZWplQVJTRXl4aVo3ZkFGN1NSVmc4ZmRD?=
 =?utf-8?B?emtDMUlUMnRZb2F2OEFjaDBLaEV1dmJwT3hxNFhIOVg2WkVwWlFQVzlCQjE4?=
 =?utf-8?B?aGs0UzJ5c3dWY28xVmM2UldTYmdRSERxMTBOSWNpSlEzTjdIUmhUdkhyNWZx?=
 =?utf-8?B?cG5lYmVmZ2dBaURhakd5VG9LT2RtbkdnVnJCQkdYQmZxSnRtWmpVaENHUmNQ?=
 =?utf-8?Q?bnWz0AyB+4c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1YvTXdwV1duNm5mRTdTckkvRnhqbTB0TkhwaXRuSVBLY09QSDNaYU95UDhG?=
 =?utf-8?B?TmNzVTUyakNjMHIrL1JFT012eHlESDkwUmowcHpvUis3YWpqd29rczhjT0Fi?=
 =?utf-8?B?b0tCQ2dsVHIvOU9iMnV3VkpPL2huZlNORm1lREhQN0tsdHpHdGw1NWY3a1Fo?=
 =?utf-8?B?TEFCZWZTUDAvUVFJcExFRWRvYjJpYUdkWDE4Y3lkY2dzSmt2UmRncXhsZEhq?=
 =?utf-8?B?SVhsQm45blhScVpWK040Rlo5Q28xK0hkWitZczM2UHVDd0szNXVFUzFnenRa?=
 =?utf-8?B?L0N6TGpWVFkzVXBBdktWay9UMUlveHdTWG5OeFIvSWErWU92Wkd2bWJhSjZr?=
 =?utf-8?B?c21Ic2pncTA4WXlpQ2xBNnJtOE4rejVXSkNOMXRtQ0pEVU5NNlA1bi83NnJq?=
 =?utf-8?B?cUtPZjVtcHdJSUg1QmtYbXhxV1E0Nzl4aENLREhld0ZJdnlYQmVpekV0TkpS?=
 =?utf-8?B?R2ZOZng0ejVSRHNCVjZyY2NpWDlPTjNNSFI2b2VzYWF6VzFxSVVjcjVZT1Na?=
 =?utf-8?B?aW5GK3k1MGNTVkN2dkRJSmVQby82NHJtUWVqN2h2WEZqSEhsa05nYit4Tzh2?=
 =?utf-8?B?eXU5ZERSSERUOUExcmRGTG5hdWZ6dXlQV010Q25qc3lJT3d5d3VXRVRkSTRX?=
 =?utf-8?B?ZkdtN2NHNHkxWnR6OVRRMmFqRWxKdmZHU2VMNGZIamo0TzdtYStOMXdsaEZm?=
 =?utf-8?B?Z1ZxS1UxbEtydnA5a1U0R2VqRUM1ZVRrTEprekRsb1Q3OEFNY2YvSm16eGFy?=
 =?utf-8?B?QzJDZFMrS0tjdytTRjRqa0RuUGJvcTVqcGR2ZVUxQ011Unl3WmVDOCs5dy9q?=
 =?utf-8?B?eE5wMXpFNldZek1ZbkwxSjl1UTBRcGk4Vit0RGxvRGpiVlhQb0l0S1Z3RzdC?=
 =?utf-8?B?empEVDAxeXN3VUFzYjFlbnMvdWhrTG43VmsxMHZXNFVGQXdXbnFFQU5yM3JL?=
 =?utf-8?B?RWxSNHI0d0hjSTkxTTZ1bXBTTjBDdC9XQmhPR0dienhsOURRa0p0MWRPR29M?=
 =?utf-8?B?bGhrTENleXovcnkxTGVFZFZDaXRMODgwaDFmZWpCcnhUOEcvbjZCZzU1ZTFi?=
 =?utf-8?B?eVpPNG56MVp6RUZlUk14aCtXOHJzdFNzWFJWOFllcDJMZnVOYjVRVTM5WW1B?=
 =?utf-8?B?MWNmN1BUQ3U4b2ZxaFJOYnhWVm1KRXVrMnpMY2oxbVlNc1RNUFZLU1VEdkxs?=
 =?utf-8?B?NkF2ZTRkT2pQcXAwSWRjcFRSQldQUVBMQlJXclZ6S20zS3hKUS83ZGU2dVU2?=
 =?utf-8?B?NGNWYVp1M240bTJzbkFCT0l5WHNoSS9FNHZJZklhS3NyQnphNkR1ZUdmb1Jo?=
 =?utf-8?B?dUxUU2orbXRiZlEwTkx0MVpHTVJIUnhvb2Z3cnJmNC9aNVdpcXk5MHFPcXBa?=
 =?utf-8?B?NnkwYzk3bDhtTnRFT1lld2o2d2hobTFla0IwaFVKQ3NpR2F3ZERJOHRveDRu?=
 =?utf-8?B?UGM2eWFQZG53bDdCY1laSlpDL0FsWU0zWWNOb3A4SUJkZnpENWM1YTZrL0xY?=
 =?utf-8?B?OW5nbUc4MjZiK0JOYWRxUzdid1YybHA5Rm1OeEF5dHNkZ0FJbExkTlFpczZI?=
 =?utf-8?B?akFUSVgySXp1cmw5VS9KbnF0WVFUdDdUejRTSUdKRUhyOXE4eGhMRUw5K0lh?=
 =?utf-8?B?RmdkMnZhZXpaaFFWOW9GVHZxZTY3VSs0Uk51UWpvaDRxQXlmK2tvdUZsYmtn?=
 =?utf-8?B?THZrcGIybE44TmtROVNONHlrUms1d0FXUmV6QlI5cmxiRGU2R01MTHVmNzV4?=
 =?utf-8?B?dHI3NGxOcFNZeHZxaFJXVjhwczZpT0gyeHpidXNGMGQ4TC9veWVMRnV2UE1k?=
 =?utf-8?B?VzRjY3gvVG9EanVvUFV3Vy9wLzRkWjZuL0h1R2NGS2dFL0JHOE1ZVWhTd041?=
 =?utf-8?B?V1FlVmpacmxtVnkrazZBWWRDRVhGcGdYa0duSUo1YTBOc0pQTHNyUm9mbFl6?=
 =?utf-8?B?VVVkK0IzVnJLN0NCRDJ5Q05ueHVEcVYzNmlLRnhvbmZCYTFaK3BKb2h2Rkxz?=
 =?utf-8?B?eTVzWlN4b2F4M0NIK0htTVYxSmszT3NFK3BVUm5lVEpTYm5CMmpwNm9BR2ps?=
 =?utf-8?B?RGpROGtxZnRNaFNnMmF6UVR4K2RnaWlrVTlhT1FqTUltL1dQY1JLMFp5c0ht?=
 =?utf-8?B?TnJ5a1BPY0pEMFpGMlNHWTNHS3pTRU5FWXJCbVE1ZGtwWlJZbkFDNHZVTWxV?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e285ba6-8807-46c3-41a9-08dd6c4815c5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 09:25:01.8807 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dkhFOf88aXFoSYmIJETWkqMPTAPl7iWDVAOGcEEMAoHiskHzUPB1UIp/UmLZtQylvhxgKU00MmEEFj6WOyjKdSoF7wJITHbRpyWSY/2fIAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6948
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


On 3/22/2025 12:01 AM, Ville Syrjälä wrote:
> On Fri, Mar 21, 2025 at 04:56:47PM +0530, Ankit Nautiyal wrote:
>> LINK_N register has bits 31:24 for extended link N value used for
>> HDMI2.1 and for an alternate mode of operation of DP TG DDA
>> (Bspec:50488).
>>
>> Add support for these extra bits.
>>
>> For displays with version 14 or higher, the `PIPE_LINK_N1_EXTENDED_MASK`
>> (bits 31:24) is used to handle the extended link N bits.
>> For older platforms, the `DATA_LINK_M_N_MASK` (bits 23:0) is used to
>> handle the standard link N bits. This distinction ensures clarity and
>> maintains the semantics for platforms that support the extended bits.
>> In subsequent changes the logic is updated to conditionally apply the
>> extended link N bits.
>>
>> v2: Drop extra link_n_ext member. (Jani)
>> v3: Avoid link_n_ext in set_m_n helper. (Jani)
>> v4: Rebase, and update commit message.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++--
>>   drivers/gpu/drm/i915/i915_reg.h              |  2 ++
>>   2 files changed, 18 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 3afb85fe8536..8fb0df388571 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2583,14 +2583,22 @@ void intel_set_m_n(struct intel_display *display,
>>   		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>>   {
>> +	u32 link_n = m_n->link_n;
>> +
>>   	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
>>   	intel_de_write(display, data_n_reg, m_n->data_n);
>>   	intel_de_write(display, link_m_reg, m_n->link_m);
>> +
>> +	if (DISPLAY_VER(display) >= 14)
>> +		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
>> +	else
>> +		link_n &= DATA_LINK_M_N_MASK;
> There should never be anything in those bits or we've screwed up
> somewhere.
>
> The actual w/a for the M/N > 10.0 looks like a pile of annoying
> hacks in the hardware. I wonder if we could just live without it
> to avoid complicating the code?

Hi Ville,

Apologies for replying late on this.

Yes for general case we should not need it, but for very high refresh modes.

For BMG since we can support higher resolution with ultrajoiner, this WA 
seems to be required for such cases to support till M/N ratio 15.

I am yet to come across such HW though.

>
> As for the 10.0 limit, I suspect there's nothing platform specific
> about it and it's always been there.

Yes that's right, but for newer platforms this seems to be getting changed.


> It's just not possible to hit
> it with 8b/10b encoding. The correct place to handle this would seem
> to be the link rate calculation, ie. just bump up the link rate until
> the limit is no longer an issue (or error out if we can't increase the
> link rate sufficiently).

Alright, will try this out.

Do you see a need to check the M/N ratio in modevalid to prune the modes 
for which, even with highest rate, the ratio is more than the limit?

Currently I have not added this change.


Regards,

Ankit

>
>> +
>>   	/*
>>   	 * On BDW+ writing LINK_N arms the double buffered update
>>   	 * of all the M/N registers, so it must be written last.
>>   	 */
>> -	intel_de_write(display, link_n_reg, m_n->link_n);
>> +	intel_de_write(display, link_n_reg, link_n);
>>   }
>>   
>>   bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
>> @@ -3279,7 +3287,13 @@ void intel_get_m_n(struct intel_display *display,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>>   {
>>   	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
>> -	m_n->link_n = intel_de_read(display, link_n_reg) & DATA_LINK_M_N_MASK;
>> +	m_n->link_n = intel_de_read(display, link_n_reg);
>> +
>> +	if (DISPLAY_VER(display) >= 14)
>> +		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
>> +	else
>> +		m_n->link_n &= DATA_LINK_M_N_MASK;
>> +
>>   	m_n->data_m = intel_de_read(display, data_m_reg) & DATA_LINK_M_N_MASK;
>>   	m_n->data_n = intel_de_read(display, data_n_reg) & DATA_LINK_M_N_MASK;
>>   	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(display, data_m_reg)) + 1;
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index c5064eebe063..a2054aced4f8 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1869,6 +1869,8 @@
>>   
>>   #define _PIPEA_LINK_N1		0x60044
>>   #define _PIPEB_LINK_N1		0x61044
>> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
>> +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
>>   #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>>   
>>   #define _PIPEA_LINK_M2		0x60048
>> -- 
>> 2.45.2
