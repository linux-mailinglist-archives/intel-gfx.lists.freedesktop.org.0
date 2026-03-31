Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H5vM/S0y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:50:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C793691A9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8F810E36F;
	Tue, 31 Mar 2026 11:50:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gpqrvr1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FB110E36F;
 Tue, 31 Mar 2026 11:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957810; x=1806493810;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tYB0K0jzw0eAFAcQ+G+YHfYV6fPFESi3qeVJl9IZXjY=;
 b=Gpqrvr1LOXkz2JseBZrUZ9CkuvENlQzrVhbfZKsTn2WQWfegYKFJq8x0
 h2vsXmIschMiCCMt/Z/Q2Vz51vaLBpvIvU7q2+70gZUhvcHh2TmwTh9kz
 FSAsTAI02SZy8yveuznPpTRrLwTZna5sTesDb/HLJmYRed56Kat4zQP2S
 4wDuV2gX1GBTbILwxOooB+M5iaASfkawtoEUk3t7dcMLo8rZeWGhIRrg1
 LXirsQTHwdDH79MOpb/s+MtBEdLci5f2biqOIT8znQL4WFYxvvO+Tefk9
 65+Z44rPW1rnf5i7bmn8juRMj6j1TmXKGxGUAb6cBIaPh9zOKnGsxaqKH g==;
X-CSE-ConnectionGUID: t4Ck1sGqSx6aqvXSJebJjg==
X-CSE-MsgGUID: RC59EPz0RgW+kMKM6bKL6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75852566"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75852566"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:50:09 -0700
X-CSE-ConnectionGUID: XM23/SeWSCK+gPTr8E6Pgg==
X-CSE-MsgGUID: 0/lyxFw3RU+WJZM6rqLBYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="221481422"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:50:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:50:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:50:08 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7Sk+/7xcPifdxkorD7z8jKWj44unLTM64dTLIeXZd3DVXCyJyrqaJ3n+jKFh09D8lD3N8XYRp/xyiOELUvgWdd2kSDy5u+ARMFFpB+Hm/kWBRow2v+TOSpIqaA/y4ShnXSUTiqqUwgO4tkXg8ZaeTl02OVRXuzw11hQ8tZ4tJ3xCEf/LHxkSq4OFQUtfcyn72xPQtFBtnnEVI7jVWpHe7UjphGFPSrS/HeKmpuHTwgADog3llqlL5BVb9Ngd+88d5kufTuz7C9ROy+uES1XIW41TWYCLIB9Oq97GtmlFqRMQ5sajKlNuOXODuV1eG4hJ9aU0U78RH65Pt/+gDAc7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aF9eKFGxGhVWV+VzchSIlUVuWX6gNrkMlwgOL0ARroY=;
 b=HwCnDmMLZjQtF8CtevolFKCMvhyVH8r4UzY1w5Zmy4mwpogfraoXNDKvsxobMB0j0LiqbUWh8IM22a7X5RtGtRFCACss7JCpKC1UN7mKkQwnKMO/mZewaMrffxfYfhfVKOOt4MBk8/IC+fivg1ldTYOQvwAL0gweVpdTjtXBfIds/5ZWLPVvk6gOY5SYLYIXG//WOd8L+wB+83mWt9BRYJYb7UnQ5Bt8FbY6/LXAre8/qYEICLOv5GywRlHgFcl/+PWe238TtafS/a5TnxHmNS9cS8pZH/ahFtDBC8MbjN9SN6oDwuViSmlGagL1xrAcg1EcMThp6SFp49qfFkBSKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7031.namprd11.prod.outlook.com (2603:10b6:303:22c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 11:49:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:49:59 +0000
Message-ID: <e0426b25-05d7-4427-a640-d3b4f90ae43b@intel.com>
Date: Tue, 31 Mar 2026 17:19:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/19] drm/i915/dp: Add member to intel_dp to store AS SDP
 v2 support
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-13-ankit.k.nautiyal@intel.com>
 <acrBC7i78e_F4hKM@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrBC7i78e_F4hKM@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0197.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7031:EE_
X-MS-Office365-Filtering-Correlation-Id: 615026a3-d51a-4e00-448a-08de8f1ba2b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: aez0hmfcYnIiPjq4CjpDmkthB3g04beXjYtqa/RuZZWZG4oLxsmp3nENydpMf1INn2zvUAA0u6x8xCIAcvNOuCVVgtV6KyY8T026VqkpTEjY6hwlyCLPXt9nipOkQKj5bs1W4y/SU14TqUSXSZ8DgTJw26pGCZ1/1+Q+O4IkuW5H1KXuHK9gg9c1L+TIUij5UV6idb659kluENFFkVZuAzgU4hadBRgInVEGRsK2Q1hiqLdwplD/gZy1oTCpzaqPNTutwYwpS+IgGQ4BOQVCAR+HtjzLFhqCsC2DljLB9Pz31OtkovbmrRvlWONg03pWozhBB47CB0P/DGK74FZqhA+R3gPgxky1wgL3OoI2oqknhkISQpNFguSiZY8XjvHkBGmkSDbl7kruydj1m4Q9vM7WxPAlf/yU9IOabJZvZDY7qBVuHgbsN4OB8q3pDyUhsNYzrXwQvY6EgM1rLUz9e/paSa8ucMH7/FVM7hwsDFetOjxIdhM/euRK9y2jKAl8faKl/IRfn0XwspkcnuLYmsXvAMCO7SRODcl2tUrZ9UuTeFZDZKkQJj/V+LycE4UXsilKDa2UuIjowLxMoprGLM6zGCbRz7HhPqRbvei4onX/AkPY/G05kUczO/tvPKPqDwPCEDx+QBWpAOIF49hcwUgj7HUui0Xu3aVXRKpUzN1TcNtC1EDueQhZCG25WejarXpQ1FujEyyiYSgusBW/1fCJyBor9VN1EvR0PpRKZ1Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2hUdFgya1o2TUVieGVpZ2lOWmdBaU1VRm45elZLbTRnWGUrb1FnbHBNWWp6?=
 =?utf-8?B?QTVhMXQwbWt1V3JMdmhmS1hjWEZJNU9MV3RiV1RVSkNKWFpkY1VTYnlnZzlV?=
 =?utf-8?B?V1lDekVNZCszb1lKTFdXZEp6SG16KzNvQTdnbDVpVExrODlHdDE1M0JMUlds?=
 =?utf-8?B?NDBaNUUyR1dwaTlhMUNHem1HWjcwMThubEoxSXR6dC96OS9HZFl0UGRtUC9W?=
 =?utf-8?B?RFZqZk9CcUVQUnJhSHVxU0UyRHZUOVQrb0kzTXdWWGdkd3Y0eEJvVXNjMkdu?=
 =?utf-8?B?OUJtMWl3ZVpyVm5HUGRCRkdkUTBuSUF0ajA3YmdQMENLZGFTQXhMaVNTTmNL?=
 =?utf-8?B?SW00c3dsT2Q3eHhZZC8xcStZMHUxTGNlcWRrWVpnY0RTUDUwcEVsa21vOTZK?=
 =?utf-8?B?eTdWY21rZE5PMW9pTmpyY0lsTlYzWHljV00vMm0yZzlNK3VyLy9RdUNyM0Mz?=
 =?utf-8?B?cFdLOVJ2VjBTQ3dRaEJibUlJWmYwNmtqRWZCV1VSbk0xclZOT28xU0kxc29Q?=
 =?utf-8?B?VWFtMEJoa3g2SEE5SmJJQm5UM2NEbHlOaFpJZHBzcFltSXJnR3JvMmlBWmtO?=
 =?utf-8?B?VUowRmNZN3FQR2hFaUhjZ3hndWFRQStlSDRGcHh0VnRlR2JHNm9ncGhWRFZR?=
 =?utf-8?B?dEwvcWNTYkdZWngvYkx4MThqSGNjSi95S2pwcDNkYlFCVXNNKzlwejA0UkJj?=
 =?utf-8?B?TjViWnJUZzNidXMxOEQ2L2Vxd0NBNWJkcks5QXVNRHo1WnJOVzBrbUJ6UEZK?=
 =?utf-8?B?MWxSNlhDTGhhVVlyK1dTQ1kyUVJQbGJyZHdsT1VwWVJWQWJLeFlOYkJ4QUlq?=
 =?utf-8?B?RXFCWHk4cEpDSXdRRXl3amlEL01UbXJnZkxielVIcmM2Nko5UmloeTZlWXFo?=
 =?utf-8?B?SGJaLy9rcHEvaXZ3eXdpSDlET3BGa29PWHFqMXpPRG1OVVQ4U1BUMjltV0pS?=
 =?utf-8?B?V2E3Z25CSU5OU1pGSmRab3c4U0NXKzhKeWNITUlJdzZ2Y2xJR3dYUHhYa0lL?=
 =?utf-8?B?a1I3djBVSDZvcWU1cWVtZWxKaFo0VHoxOTdDNUFnbWVoTzVOZ09KSjJsQlZ6?=
 =?utf-8?B?QnUwTVBqM2JpUnRyMkFwVzZwNWVZcnlSNHJuYkFrcGUvanNDL3paNEFvcm16?=
 =?utf-8?B?VnVESkE1aHRtTXhtRFltMnFGd2pxMDhlTlpuakFqbnVWNUM0RWt0UEdqTHhC?=
 =?utf-8?B?b3lNdlgyUzVMVG1zWGRJYytHbDMvMEZlUVZ1R2owTHozbXFzcUllb1gvNGRE?=
 =?utf-8?B?QURhWFRpdnZ3UnpZQmZCSzFvSG9vZWNMOW1TZ2JxOURiQ2d2aXRWblJmd0h1?=
 =?utf-8?B?aTBCYlQzSEptN0NmRGhva2FnUE9wSWNURXRyVUxiK2FaME53clYwd25WM3hv?=
 =?utf-8?B?cmNYTGRQaFNxZlpsQmhLRmZWUmJZMFJRNk5nalJsR1lDb1FyUHp6M3oxNGh0?=
 =?utf-8?B?OUgxSE0xSUxVSXMrWU5ZMnUvOE1CT1ZUUmlkeHFSREZJdXdXemxGekliUGhF?=
 =?utf-8?B?OFd5UE5nenppY3VGNGFrOUE3MTlDSmNkTzFhWU5OWWVadnQzWm9vZWhoNTkw?=
 =?utf-8?B?UkFLaG9jNWxjTThzRU9FNWJCUVNNUVMwWndqbDBlNzRtZGE2dFFoZSs1LzNX?=
 =?utf-8?B?UGprakM2ZUd1cStOQWFlbnk4a2V5QmtTVWx1V0x4TEVDcjkwV1Z4dEkwc1ZW?=
 =?utf-8?B?QVdkL1RKVzlHUjR0N0pWNURRektxSjVYb0l2YzJ3aGdyKzZ2bUt2aStXZ3hM?=
 =?utf-8?B?TS9SNExTdDRVM2tZbWRaUUZpbTRubUROUnNjODQwc0FVK3RySDU1anE1T0Ir?=
 =?utf-8?B?cW95UkxMd29jZUt3SERQbE9MOEt4OExaTnk2QWtxTk9QUTFJaXlCL2h6eEhY?=
 =?utf-8?B?Skp1QjZnUTRhZldvTVJweVVDeFF6NlNKbXp4MTA1dkdtcjFmMWE0RzVmUE5a?=
 =?utf-8?B?VEdyTk5JSEE1UnJvUTdEbWd2UjltbTVkZ3k3N1ljY1NRUzVabmNOYVEwUDhG?=
 =?utf-8?B?N0xVTURxVlVwcUhVRVNybHZ2U0ZLUGNaSnZ5RW1yRjdVQi9HMEN0SjFsYlFn?=
 =?utf-8?B?RU1EZk82RU5tOEdZM05iTUdiMlNtNmc0ZWhlekVVYTZHbVhsVHNIdFlyWmFz?=
 =?utf-8?B?MVFDVWxSSHN4cG00eFFSU1hITkw4LzRCdHBKRklUcFVWdWlYMnFxeEdPYUFO?=
 =?utf-8?B?OXRVVnRnQ0dBZ291Zmx5WW1RRU5semM0SHhjbGJ2aEsycXpxOEZlaUlIZjc1?=
 =?utf-8?B?OElBWTU0bjFPMTRVRnBIeVcvUE1xTTIrdWlFZlFIa0xKSWQ5L3pMQjkwSDlj?=
 =?utf-8?B?T3BKajdTS0hrVFZYM0VITlFOL250RGw0b3RueGVuVlRkeGVJMkM0Y3g2ZDRh?=
 =?utf-8?Q?ZspPQNp42uSOCTTE=3D?=
X-Exchange-RoutingPolicyChecked: WT2h2UmOb1BLJn84qOvu66Uuq25kR70CsA7tI6rREDCHBEPHMKphDJuqRz8/ZJ7iZ+QGXJl8kDSWaxjklOPy/O52JS+XozWzly4JRPfN4L4BNe2CLbYrYWdTImMdho7wawJ8ytr8oQ0aP52SDGauwuQLp9zESDzEwAwCb/tGVmWLT+lMQFF7ClEbt+xWU3ugjqs4FTwrLxw4jerfMZOpSgYvcEK2Nhsqoij9oM0NQiqUwZRX7J3Y9WOoN/8sJyq+ezKyNalWau7PleZEfYb7NmB5QqubnK4tAQkPRImrJd1h9NUNv2Qa6hui0Wrr8Gjh+pzwyBZkRQy36FyAqhbfAg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 615026a3-d51a-4e00-448a-08de8f1ba2b2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:49:59.2722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6kzOBY2ZGCak5iUBP/rq9nzti1nyqYDUFxXUPCLxwiRbLSHDeNny6mUutqoamH0qVD65QQ9x3yBU+tjfKf2oyIX8UsBEbHw/xSgn+faZCug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7031
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
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 42C793691A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/30/2026 11:59 PM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:49AM +0530, Ankit Nautiyal wrote:
>> DP v2.1 SCR advertises support for FAVT payload fields parsing in DPCD
>> 0x2214 Bit 2. This indicates the support for Adaptive-Sync SDP version 2
>> (AS SDP v2), which allows the source to set the version in HB2[4:0] and the
>> payload length in HB3[5:0] of the AS SDP header.
>>
>> DP v2.1 SCR also adds a bit for Async Video Timing during Panel Replay, in
>> Panel Replay Capability DPCD 0x00b1 (Bit 3). When this bit is cleared, the
>> sink supports asynchronous video timing while in a Panel Replay Active
>> state. The spec mandates that such sinks shall support AS SDP v2.
>>
>> Infer AS SDP v2 support from these capabilities and store it in
>> struct intel_dp for use by subsequent feature enablement changes.
>>
>> v2:
>>   - Include parsing ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR bit to
>>     determine AS SDP v2 support. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 37 +++++++++++++++++++
>>   2 files changed, 38 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e2496db1642a..efc609eef4f5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1870,6 +1870,7 @@ struct intel_dp {
>>   	/* connector directly attached - won't be use for modeset in mst world */
>>   	struct intel_connector *attached_connector;
>>   	bool as_sdp_supported;
>> +	bool as_sdp_v2_supported;
>>   
>>   	struct drm_dp_tunnel *tunnel;
>>   	bool tunnel_suspended:1;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f9bfb07f0205..b2007ffe18bc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6301,6 +6301,40 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>>   					       false);
>>   }
>>   
>> +static bool
>> +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
>> +{
>> +	u8 rx_features;
>> +	u8 pr_caps;
>> +
>> +	/*
>> +	 * The DP spec does not explicitly provide the AS SDP v2 capability.
>> +	 * So based on the DP v2.1 SCR, we infer it from the following bits:
>> +	 *
>> +	 * DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED indicates support for
>> +	 * FAVT, which is explicitly defined to use AS SDP v2.
>> +	 *
>> +	 * DP_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR cleared indicates support
>> +	 * for Async Video timing in PR active and the spec mandates that such
>> +	 * sinks shall support AS SDP v2.
>> +	 */
>> +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
>> +				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
>> +				  &rx_features) == 1) {
>> +		if (rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED)
>> +			return true;
>> +	}
>> +
>> +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
>> +				  DP_PANEL_REPLAY_CAP_CAPABILITY,
>> +				  &pr_caps) == 1) {
>> +		if (!(pr_caps & DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))
> That seems to be backwards. If the sink requires AS SDP
> then it will set the bit.


Hmm.. I indeed got it backwards, you are right.

If Async Video timing is supported then re-set the bit. But in that case 
AS SDP is not required.

So reset means AS SDP not required; bit set means it is required.

Thanks, I will correct this in next version.

Regards,

Ankit

>
>> +			return true;
>> +	}
>> +
>> +	return false;
>> +}
>> +
>>   static void
>>   intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>   {
>> @@ -6308,6 +6342,9 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>   
>>   	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
>>   		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
>> +
>> +	intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
>> +					intel_dp_sink_supports_as_sdp_v2(intel_dp);
>>   }
>>   
>>   static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
>> -- 
>> 2.45.2
