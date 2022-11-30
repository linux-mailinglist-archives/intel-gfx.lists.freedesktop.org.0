Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D69B63E116
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 21:01:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9534310E4D5;
	Wed, 30 Nov 2022 20:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BA610E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 20:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669838465; x=1701374465;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RBmgxyZb05vuBZ1o5/aNVtwuY2QQB/OSLxHeP2N0aTg=;
 b=XYd0zshdxq3AKc3Sf7D2P0CPctlBIZ9edZFg2+4W3/7j3wrv/RDVwdQ0
 jMrKJ/tlmqHrvKQkQqqyzNTcs0imVdbDM1QneY/XcxjiOmkXxKJgCb3d/
 1xhLzp74PCE3ELPp1WygbKU6Y3stam9aNe/xKBbLM2KtDvHVuwlqac18a
 Mc3bBh1AbPMdIfe6htt0DZpxOQXcqgK7ie4C30tPcWsGxWfsPnfVZ3mUo
 n1SV6KCB8oQeu5o1OUqd2y9+yqXO9UmRHahkjfyqXCWdkR9ouHE3B0nMA
 iOScLhcvuw4KISOuZA8ITCQr7ysRVXh9uEMTZHg2DhRXucJbce/UB8yum w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="316650982"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="316650982"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 12:01:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="889426715"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="889426715"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 30 Nov 2022 12:01:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 12:01:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 12:01:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 12:01:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A8ONSZ3Oec0aYEm12V90vq+8ldhRUZ9QeHe3i1LFM+D27Z/a6FIIJsrxtk9WK0UrAH8KvdofRvJjSAMkQIBhkI/+lYYKufSDID6AhBfULY9Rq5aM0EfHF1GG9bypfkHmanSxgADiUK2tx4gqeeWG+G//Vzukg8dOAvAQHoB6Zc+Mw9jQXnF8NJTA5NTRHvHHKpQDToke2psrTDaLZrRrIC9juzm7TmQ3bmJYu2bIRVZFcZRL/MYTqysO67ccCdFA1jMTsZq/JefOUOvSLjrL67xfaeakkXxmY9RTorzKDKjPx6ICWJQud8+vXltVPAYrTEIzdI/LJZ+CBWDA8l3Vaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xpxlr9t07OxD91Idvlc53m6NBwHLpjPq3AycbMgQDCk=;
 b=mVBE9qFmpLjXoETqZYTzzi5w9r011YqZJZXa91Ty6cD1LshO13mu+2m9dLW7tuespXTJqgyALFd+PjsMyCO/rg0qdsvfnyWo68GoZ4MBD07ruibsapskhvB5TE2+7rrF0fVPQt9sgqmroGBclwYWOjpxYv6BYmN0z351Ls/AtUHtfSDrdzudEuDXG34abwOGlmc7u+SnezcIf4fZG7WmjseGHSxh1ciK0magh4WGWc+UH999kFsibe1JiK8etr/VqHUHHDM4/YL+uytuJHtq80WWQQ70fRVZ7Oj84zMOlzAVlCnCG4yaBo2qT1sWaoFQqyAXHb883Aoe5vcl9kmdzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5270.namprd11.prod.outlook.com (2603:10b6:208:313::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Wed, 30 Nov 2022 20:01:00 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 20:01:00 +0000
Date: Wed, 30 Nov 2022 12:00:57 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y4e2eRI3Ds3sLyDg@unerlige-ril>
References: <20221129012146.995006-1-umesh.nerlige.ramappa@intel.com>
 <874juh43ce.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <874juh43ce.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::42) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5270:EE_
X-MS-Office365-Filtering-Correlation-Id: a07b9c73-aaa4-480e-de9b-08dad30d99f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0uMXKMNa6LDeIWMIRMCMRGDz4WkxcDMRI/IEhPncaehj6J58e4T4chRWo1ggrGo0Qo5TbYW1pchgrmBqpYIgCRPE+Ve7Eqx8ImzymoAT7YWZTPgiSAJ/7gBfOJo9KEk+XmomYQ/FUnNz7DtIOHNgb8TKONTO5uth8cOtN6GWMo2v1wlLPCPahn5IpEW1RFTaaLEaWzeSuP3YVXOtrf7ANjr4xFgiWuYBLnuoVTeeuVaNf7Io6ekJaFNKFfeIbj0T6kyFbM1OsBVkPRPKI9sViqmUwJc9yjpay8rYhSdbgin8nzWzET168zAci4HnuO6N1mbV9kWtkTMzrqjjq1KXoT2r/kOPeMhAjc3GHMo/GkZc9JJzhTnIFgCLgfo8iUoSamm7pOjdJBCCED07LqkWWqj1yRdy+cwdMqEP4uty/1FOG3TcYrnjiDFR354Ad6SC+dkpKv8AI/35EE4BbLaqpnR1NlhksLkWf+TrsN4yJR423kBpPVV3Yo6JYx1g5II3cCamKJdptQomY+TgajjlNtQlsnY3ZZcQccddobkPUbpL4oQ8Ch6/pDRcY7VnSpt4MuFNN90CZz2sD9LsmZSMKq2Uk48vggB0pbBy6h5T7Kx8zKf4+fn+baiWvH9xzpiceOhLTHkrfR0rQAOGQfLQLA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199015)(6506007)(107886003)(6862004)(33716001)(6636002)(316002)(6486002)(5660300002)(478600001)(8936002)(6666004)(2906002)(38100700002)(82960400001)(26005)(6512007)(9686003)(86362001)(186003)(66556008)(8676002)(66946007)(66476007)(4326008)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tzk2ZTdreVQ0d3lvMU9MelZaSUMvS3l0bmE2OHQxQWljdjJ1ckdqSHVGOEEw?=
 =?utf-8?B?VStFY21Nc0JnUklHelVzaE1PY3VLSlluYk1Jb2R0Z2I5NytFbVV2YXRaei85?=
 =?utf-8?B?cUh0OGJjZUhrTEJnMHc4cWg1UVNrdG1FZ1dicU03ZW1yUExDKy84SllYUHVJ?=
 =?utf-8?B?bThQdEMyWFBVc1BIS2ZGVVR3VXFwc2pFVTdqZmpJMHJHenVocDdiS2lndWlD?=
 =?utf-8?B?YjlLbkVIYlVUL2Q4dmJabEluaGpPMEN1T29xdlhpdXczbEZkK05xckFHd214?=
 =?utf-8?B?aEl1L2I3OVJsZmhxZ2p2cFRSYjBNV3N2NW5kR3hEOHdyQXY4UTk3K3J4OHQ5?=
 =?utf-8?B?eTdYWmszNXBqVDdTR0s1L3N0TEdCRklySW5aR2pCTTkwL2tRbGFqRGJoSVhu?=
 =?utf-8?B?NExlR25Gck5mNjRtR1NIV3lTQjZWalFPUE5WRm10VW5STFpQOWQzdU4wR1VZ?=
 =?utf-8?B?SXBKeEFmQ3Z2SnlJSkhNZ0wwN2lJRmkyMTFpWnhsd0ZDWnNua3RlT3BGRW0v?=
 =?utf-8?B?T09BNm55WFF3YWRkN0hITllWd1B0bGluRGdkZGo2TUkyTHBoUk9BWGg5QjZa?=
 =?utf-8?B?L3hlQTl3TStEVTJibSt1aDlmM1VrVGVPSHJTQlFzdUJVNE5KMkNyNzd3VGJN?=
 =?utf-8?B?cGNqMElYU2JRUU1EUXdnRjZRanloc3FMTGg5aGxBUmlRWjQ3V00rM3B5S1lP?=
 =?utf-8?B?bWZ1WG1kakpUMkU2TG5SbnlWVUNBYVZjMXJvcVFuS2lFZFg3OGhEL0V5UU5G?=
 =?utf-8?B?UXNKcGtOcTg3ZE1nRmxWRzJGWmtFQUNSSTY3ekZmcC9LM3IybEgxdlB3bnZk?=
 =?utf-8?B?NGJ6ZEd1SUpaUWFtVXJuOHhyK2RiYjJXdlhzdTV1K2ZyVnl6Y3pISXlPS0Fq?=
 =?utf-8?B?ZGNnbVhCWlNFeVJZSWZDTjArSHFvWk14U0RrL056ZlZaanhoSHlnQ0VEd3or?=
 =?utf-8?B?WjhQeFg0VlR2eWV1Sld2SkJ3R0UwT09GZm1rek13bXJwMEpKUUFnZ0ZVRDN4?=
 =?utf-8?B?dTMxSE1DV3MrTkl0cUFtekdIdWptdTkyUDJBdzlsYUdRbFRqbnQ2TnlERHgz?=
 =?utf-8?B?YkF3Y3l4b2pRdWJzR3RKODA2WFJHQnVpb0hwWFNPUEYrSEI4b05idUM0UXBV?=
 =?utf-8?B?NVp6ZEtUSG9mYUtFU29pbC9pNFpxdlRNUjBXakExMk0vSDArNUFxY0RBVFVv?=
 =?utf-8?B?b0lJSW0rYjE3d3hFNnZUbFd0QkZIUGVGU2ZzRVRLNmIwaGZ4eXYvdTVzSktm?=
 =?utf-8?B?QmVORGk5QXk3UVFSdmVqTmtPZ0pva09xYUl2U1lzd2Nsd09yRVc1aGpZdzZu?=
 =?utf-8?B?QVJBYk5aNC9WaWkvd1BqZlU1ay9kdFVkbUkzNFljUHNQdTdTMTl6TVJOQnVm?=
 =?utf-8?B?MVNrM1d2aXc5SGExTnlIdTNzeDdGTEVEN1NhVUs2WDA2Qy9ULzM2Tkh4YzJD?=
 =?utf-8?B?UFFaelAwSWNDS2Y5YWtwTmhSK0ozbmpKd1R3MXVPcVI2Z2RPSFFmT3hRZDMv?=
 =?utf-8?B?c1ArVTZuOVV0YktyN0lPLzd1bGpXNzlkSmtrNVBMdzg3T2ZUb2tkTEVKMjkz?=
 =?utf-8?B?UklkWXJpVDNEbXNnTUUvUjQ3TDF6T2NGVkkwTnJGc0IvRGl0cWgxL0pwY28x?=
 =?utf-8?B?YUprOXVQV3ZxWVEzYTRFMVRaZ0w3bDBjOFhrbVk2aW9TNWp5d08vamJCQnFj?=
 =?utf-8?B?Zkc0dzNCdVk4N3h6N0JDNzRlb2hjcHJ2V0NvNC9Xc1JTMmRRWEpESlBtdFA2?=
 =?utf-8?B?NG9XUS9USGF5MGJ5T1BVeTVoNzNyOU9LcXJKMENKb1AzdFdkREZiaVpVTGc4?=
 =?utf-8?B?ZGgzRE84QkUyK2VmWWxkaUdQZWxObGc2elpsSmxBMnYrRHZmSUlBU2R2QUc2?=
 =?utf-8?B?NWlLZ1ZLL3QzY1MvNVlmWWplM3lGQ0I2eEkveWhBcVJpODlpMHZDOHhTNlFk?=
 =?utf-8?B?ZEhnSXpiK3lkTk5Bbnk3aUFvaGs4OTkwMWhOVTBZNjhXM0ozTUtEQk4rdW9W?=
 =?utf-8?B?TjlybWxXSkJ6cU9DdEJCMklBTzI2a05ZS0ozNkRxNzExZmZ4OUt2WnFKeEdw?=
 =?utf-8?B?Ylp2ekJzZUlLQ0RxWWJ1UkRKaDdlT3NyeUVpODRSSU5RSnFlRHZSeWJvUWw4?=
 =?utf-8?B?dW5DYUFNTithSVpvdzFsTmFDQUsyUmpzQzMwaGdkalM1QkNPb1psMWxmNW96?=
 =?utf-8?Q?1OKNgumk1a33cVuhhwTp8FQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a07b9c73-aaa4-480e-de9b-08dad30d99f8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 20:00:59.9637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CZ5XauPIAddcQMu3ZUMbW4/NpJK8yCFyFCltjdafEju82e43R50dGJGxkiB+CmZ5CtgU8HVItJmzSSPuFNIB2LA8Pf4XEWtrcaV5cCkAxNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5270
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for 32 bit OAG
 formats in MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 29, 2022 at 05:51:13PM -0800, Dixit, Ashutosh wrote:
>On Mon, 28 Nov 2022 17:21:46 -0800, Umesh Nerlige Ramappa wrote:
>>
>> +/*
>> + * Ref: 14010536224:
>> + * 0x20cc is repurposed on MTL, so use a separate array for MTL.
>
>Wondering if it was WAIT_FOR_RC6_EXIT (seen in gen12_oa_mux_regs) which
>moved elsewhere and if that needs to be added to the array below too?

WAIT_FOR_RC6_EXIT (0x20cc) moved elsewhere so it should be "removed" 
from mtl oa mux array.

>
>> + */
>> +static const struct i915_range mtl_oa_mux_regs[] = {
>> +	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
>> +	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
>> +	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
>> +	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>> +};
>> +
>>  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>  {
>>	return reg_in_range_table(addr, gen7_oa_b_counters);
>> @@ -4349,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>
>>  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>>  {
>> -	return reg_in_range_table(addr, gen12_oa_mux_regs);
>> +	if (IS_METEORLAKE(perf->i915))
>> +		return reg_in_range_table(addr, mtl_oa_mux_regs);
>> +	else
>> +		return reg_in_range_table(addr, gen12_oa_mux_regs);
>
>But otherwise this is:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

I will break them into separate patches though. If the diff is 
identical, I will carry over your R-b on the split patches. Please let 
me know if that's a concern.

Thanks,
Umesh
>
>If you decide to split the patches, please add my R-b on all the split patches.
