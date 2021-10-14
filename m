Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA3A42CFD0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 03:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7016EC12;
	Thu, 14 Oct 2021 01:07:20 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7006EC12;
 Thu, 14 Oct 2021 01:07:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="225025028"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="225025028"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 18:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="524856233"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 13 Oct 2021 18:07:13 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 18:07:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 13 Oct 2021 18:07:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 13 Oct 2021 18:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAW9A9LRrFuE8sgaKXYblob0ngVm4t2T26mfv7tF3UFrErGis/7qwbJ87KaT7G52w51SH2q09ZiC5JMs17WtIhhuyPtpS1UsQJIkDky7wNxo9Yyyr8OxcsxPClhJD/QzKkklX5WLKpQiCiRZDYcaKBg33N/vCIPf7qHvdbPc//MKWNop7KzP+p/iWpSawoXVOzTqm/1rEkzgnoUtWx3Llusdi4nTDFNsrUpJ0FFjxBhpxQ+AyemeJlNBBEoHSvHeb6y3Mj6Ma2EsUWEFkr9JtvRnTypqjddcut1u9SYomLpKeBaHAwRtHdADA23dHNxfj5eXqlFAv+8YjS3CptHr0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxUWeASSBp7xpxsKmhLGWA/57kOsBKHZv38p6WpecXg=;
 b=dLjBmae/88tFdGzKIz67LKhiYWTf2/n78xGGH/Elb4S2y87uXTpDZkL9F/b5DDDki3KIMOLy94/NVSd2ZNPOUae0YJlj4+F7N8dfUPLYgvhvJ1lC5fIi0fDbuF1FGpQ06n5tFrCv3iPvGWiRoHe1N3RkSDHNJSA7klsl2+Gg5fWVUywap9t0/1X3QZVG01GY16CdPKJwtplDmL/2Uy8FdDJaT8aRdp1t3rg5uKH+pIcpNLcdFgKndVtB8JvB3fvX9yWsmHh1DqUp0J8P/zL64kyHZjiL1Im6eg17hl2QmdRFjpaFMpXlHx/YnYzUv7y2BKTqRY/Bcz4ooulB0FKezg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SxUWeASSBp7xpxsKmhLGWA/57kOsBKHZv38p6WpecXg=;
 b=W5+Ox+5C6VkkPFrFzXKJ/2C5utgIER8kZBqqW6Xc8csD5i20HoRmvaK0PpDZg5BCqYiqNavFQ+zNAJtduW+mJ5qttc7P6A2VFIuIAKA7VDLLZ5ud7Nm69a6wmp83W21ze/8m/eAQqR+g13zNlBOFQzsB3umAKkwKTH7hYvleeJI=
Authentication-Results: Lists.FreeDesktop.Org; dkim=none (message not signed)
 header.d=none; Lists.FreeDesktop.Org;
 dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5610.namprd11.prod.outlook.com (2603:10b6:510:e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.14; Thu, 14 Oct
 2021 01:07:08 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%8]) with mapi id 15.20.4587.026; Thu, 14 Oct 2021
 01:07:08 +0000
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: <IGT-Dev@Lists.FreeDesktop.Org>, <Intel-GFX@Lists.FreeDesktop.Org>
References: <20211013224317.943625-1-John.C.Harrison@Intel.com>
 <87ily0ilkd.wl-ashutosh.dixit@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <2981474c-7bbc-c76f-6035-f8643f2be547@intel.com>
Date: Wed, 13 Oct 2021 18:07:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <87ily0ilkd.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: CO1PR15CA0067.namprd15.prod.outlook.com
 (2603:10b6:101:20::11) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO1PR15CA0067.namprd15.prod.outlook.com (2603:10b6:101:20::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15 via Frontend Transport; Thu, 14 Oct 2021 01:07:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0a85579f-b39b-46d2-6e82-08d98eaef1ce
X-MS-TrafficTypeDiagnostic: PH0PR11MB5610:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB5610A14CEF51CEBDD435D788BDB89@PH0PR11MB5610.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xOlMZQsevruzEpTzevrIf+8kZr/nGXrCsXwf83Ae7SZYnD0BTTdXz7FPSoofZSyvfw1FJOKNgZr3V6XpMe2yvnnaTwnMkmHbUAQpsKhfPU6RN0WMUzlqgwW3tv3g1zZXnvPUcG9Xbu+HLQYpqonQK3Mh8zny6i5OQjatG7Ia5Jk1cMoHgA+Ek4g1Wm9EAACA/phdTmumsz5zHASQpzC6RBybHu+EI6cCbMqsG3GzTHl7Le3WRKTkyZLP2UGGPyMYghge5IxeA2mYgKXNrLvgCmNJWVwz3bAWgDM4UMXcOvrM6MQOp/utIpBx6k3RPUEttpZtvSqwAY3biWlNe1BUwGCyo4Ww/QMYVTZIvgooGzEPAFmgTmpc3W7iXg6fwhoC8P+XiRvP3Xai0nxFD+bfRD6NyonI/CnZLvYad+f0/n1LC+/zY8wUt5I7h6s31YTbq1XfIhJVUEk1cx7wGa4nctp1QbeNVrv+6G+uBka2VzFIphLSbHCqaIR7v0Gr5UpchZzAZMhdiH0OkUeB4JdWblBN6PrdsObu/vTwTZ81qilpCOCQ68pcwnBbmUdbfVMGuEr/pX6cW2bG83siYLAzUSzeHWmm2K0KJna8KDF2n8Otv04sEfIRu1I+tW5IlDgjvJuxnJt8UCUCz/aiQV/523F6CbNonJVY7J7F+4s4XCV1225CDqqwYhai3rBSYT4rgRWy6Vdz/qGTkIurARmkC3EF5tsLlZQcXLrZMvqbzd/PDmNTJ3Shn+pc44uLxlKa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8676002)(6636002)(31696002)(26005)(2906002)(36756003)(37006003)(38100700002)(8936002)(53546011)(6486002)(186003)(16576012)(66476007)(6862004)(66946007)(66556008)(31686004)(316002)(5660300002)(4326008)(450100002)(86362001)(82960400001)(2616005)(956004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1YzUXdNNklzSVkwUnRiVk40NVpzdGI3dnZOMWNPd1VZcTIzK3lMamJUdHR6?=
 =?utf-8?B?dFpOaVgxeWJLQ09nTnFYSldtRSsyNFNFT1hpcWpJUVRtQzFZOWI3MWlEWGxU?=
 =?utf-8?B?dkpGWmU0czU5Z21rdDNGZGxKNmtheDg3RjFtTnlLdFRHbStuUUExa3VWeXY1?=
 =?utf-8?B?SWRJY2tkMGhFUjVSUjIrUkRVL2VTajNhR05SUHhqbldLSUYycnhWKytZMmVN?=
 =?utf-8?B?QzRYQ3dDckF1VUFRSFdsb2dDM2o1K1RjeHU4Nk4zRUlRb2lVOEt5L1FXSXp2?=
 =?utf-8?B?aXNtTWJnUjAwVnp6TFBzanZUNG1kZlBiS2o1TmFmVTgxUnlwcXRleWZNNEc2?=
 =?utf-8?B?c1lBbzlaTG9yRzg1YU45SkJ1dERsNXVrNFRURnc4N01WTDBFMGN4YzMrVm1E?=
 =?utf-8?B?TSt4OVZaYkV1NDFmQUpna0k3OHR1NkZNOWs2Q1pGeVNPbyszdzYyemhiVXNX?=
 =?utf-8?B?Um9UeDVuaWErOHZVZmZ2djF6LzkrWERXbFRFdWhSV1YrYm1kUy9YQ2h1bW1Q?=
 =?utf-8?B?VDMyWmo3S0JBSnhJb0JDN2tOUmVNL2ZEc0R5cndtTWttZEIwR1NYS0ZBaXJi?=
 =?utf-8?B?YmZndWtDM0RGUWV1MThSWEQ4T2ZlbjRLTVdqYnBaeldVclRFZlIzT0dodW92?=
 =?utf-8?B?bmk5M3FKcnFYQisxZkpqOHBJdk5mdUczK3V3T1lMWlVTQlBiNUZ1bTdvalc4?=
 =?utf-8?B?S2NvdTVDbXV3bXlFU1B0d0wxR0RMMGgrUmNUb0JPa3FnU2ZZS05UdFpkK1Jt?=
 =?utf-8?B?a0VWNTZzc1NzUk5lMUVEd2pwQUVpV3YxYytZR1hTOXc4c1FLVWRldS9ESUpu?=
 =?utf-8?B?Z1hBQXhPY2F0UllYOUJqS1NRUmJlam03OHk4bDF0ZXc2bFR1NWtjSE5SS0kw?=
 =?utf-8?B?bHlyNnVSVHQ0cWx4Vlg0ZEEvOTYrdFJhZ0pET2RITGxpQWlwVGpzdWxacTdy?=
 =?utf-8?B?VXBtSzZ1dXloOXFEVFVTbTIzRWphT0N5WjBEVmZvdEpKNkNBN0YrbVJpS3BI?=
 =?utf-8?B?d1JKWkZqZlpFSHdzRksyV2w3TERqWW9XNjJjSFJiZ0h2S1dDTkRYaEpaQWxj?=
 =?utf-8?B?V1BRbU54aHZ4M1lWUVF2Z1FsdmZxYzhsOEVzOTNKeVZkWmhNWkFIS2I3VHRY?=
 =?utf-8?B?ejNXc0NOZWN0ejk3d2FoMEFmd24yS0luZy9xZUtNR05WcDJTU1N2eW56YkVw?=
 =?utf-8?B?NWtrNWNqdC9kTWxibzRZekk4MFByR092UGFBMmZWQ2F5WTFRaUl2T0wrM3Bx?=
 =?utf-8?B?Qm94VE02VWQwQ2NtV083eHVOMjZ3dEdjemwyS2FGd0FqQVN1VXMzaWJkdURo?=
 =?utf-8?B?STFtT2F6NUJWOFkvQ2krTTcxVS9TU3JGRUZ4cFYwWnZEaTZCYlVYSW9KazNw?=
 =?utf-8?B?NjlaWmNRekZDREIxQmNQMFVvbTFmRnExZU1SeHVMSzI5aDlFSmZFZmQxUEV1?=
 =?utf-8?B?MDB3elovUzFpb3c4VkQrb2ZyVFFETERJb1lpYWxsYWN6cVVqTktOMjIxT282?=
 =?utf-8?B?dHlFRG5BV2h3U2VQMWE1WUlqMDdVV29iVmJPVHFyU0daaVJIbTkrMVZWNmZs?=
 =?utf-8?B?eG9BYXVxdEFJWk9LUlB5ZG1yTjNPbHJSMGdvTlFwS1p4Z0hFVXJXL21QdWNZ?=
 =?utf-8?B?a3VnSHdKSDN0WHZuc0xDd0traXBYUXRKQ01EM2FRZ1Zza0dIZGN2N2dVeUdp?=
 =?utf-8?B?aitKTjh0VUVpZFVKQno4NWVSRmpIWEgrTjVYVWNoTzMzbTN1eUpPSEVhOG8x?=
 =?utf-8?Q?lxtMGvRblFnLHYyqWvAm/9/PiFRUZHUzDAhzmYD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a85579f-b39b-46d2-6e82-08d98eaef1ce
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 01:07:08.4048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d6L+tDjoJAUxCJBrxp16Pnd2siS0aQVKs5J79zVEFDP6Xr35+n29r1DUbAJJXzer5OjuUH9kXK9uIuOPA8o2EmgJHLJr3aOQpLo/xB00gzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915: Skip gem_exec_fair on GuC
 based platforms
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

On 10/13/2021 15:53, Dixit, Ashutosh wrote:
> On Wed, 13 Oct 2021 15:43:17 -0700, <John.C.Harrison@Intel.com> wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> The gem_exec_fair test is specifically testing scheduler algorithm
>> performance. However, GuC does not implement the same algorithm as
>> execlist mode and this test is not applicable. So, until sw arch
>> approves a new algorithm and it is implemented in GuC, stop running
>> the test.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/gem_exec_fair.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/tests/i915/gem_exec_fair.c b/tests/i915/gem_exec_fair.c
>> index ef5a450f6..ca9c73c6e 100644
>> --- a/tests/i915/gem_exec_fair.c
>> +++ b/tests/i915/gem_exec_fair.c
>> @@ -1314,6 +1314,12 @@ igt_main
>> 		igt_require(gem_scheduler_enabled(i915));
>> 		igt_require(gem_scheduler_has_ctx_priority(i915));
>>
>> +		/*
>> +		 * These tests are for a specific scheduling model which is
>> +		 * not currently implemented by GuC. So skip on GuC platforms.
>> +		 */
>> +		igt_require(intel_gen(intel_get_drm_devid(i915)) < 12);
> Probably a feature check rather than a version check is better? Can we use
> say gem_has_guc_submission() instead?
>
> Though appears gem_has_guc_submission() only checks if guc submission is
> available, not if it is actually in use (unless guc will used when
> available automatically)? Is it possible to add the check if guc submission
> is actually in use? Or a check for guc scheduler?
I believe this has come up a few times before. My understanding is that 
no, there is no current official/safe way for userland to check if GuC 
submission is enabled (you can read some of the debugfs files and make 
an educated guess but that isn't exactly an official interface). And the 
answer was that it isn't worth adding a UAPI specifically for it. Not 
least because it would be a UAPI solely for use by IGT which is not allowed.

John.


>
>> +
>> 		cfg = intel_ctx_cfg_all_physical(i915);
>>
>> 		igt_info("CS timestamp frequency: %d\n",
>> --
>> 2.25.1
>>

