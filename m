Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3255329F3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 14:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60ECA10E65D;
	Tue, 24 May 2022 12:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961B310E89C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 12:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653394201; x=1684930201;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+TjqPDCRNYZrNu44HNqzvuC5XUSAPtN0BIaFbUjE1dA=;
 b=b2+YeqrUNGk+wQaue/cy4aKCpBqK3H0ec0dcEn1Puao3OOJBMpscwKMA
 DVvVJkhU2xUgPMMvsOMQrY7T+xhLgoTrmr8Qx+cOAgh8U6EGwkHeDM7gJ
 vWwis+MC2Dt44MC4RSijFubbpSWnnOC7TV2FX9DFGfrRP0oJrgTSKB5el
 TsoNl13I7H6RV4/urEgXiVzHb/GHzzQN77zJk+oxZUmIp9+JViRqVvM3a
 2bRQYEBa1q1SF93uy58QI0mXblUrriURro+2BBiQDO8HpjflnoGI2Hx6g
 Fs9AGeTXTDlKtN14eyihqL8F+sqq6vkzbpuu0PQqVSR7O2yNzxwDTs6aV A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="255575530"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="255575530"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 05:10:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="577861960"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 24 May 2022 05:10:00 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 05:10:00 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 05:09:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 24 May 2022 05:09:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 24 May 2022 05:09:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFQHwXrD6KAepKn5H6JSbRe0HXLDtmBAHsX4oI8mMFhD3tRQqaTEsgMEn5j5hEKSUhTccjTpzuk9l6/qmdL5gwHQ4cEjZ4/8gW2kiZ/2N98NORhAOAnz6ZqhKCAU89Aziyuh4AV4n8kGJ919dz0HcQJbro7U42arRAvSNSqwnmlIgIKoiaBPuXAsUpB34gIN8uA7hCI21uShpCqPF0RjMlGNqADBDLg44B3LRzjl3rA7JOrjy1bArnwD5fkD+yjQ7fcPhD+ZNjYIueo18XdEAjvlTYTXeZ+8+KZ+tYaaSZkvCHmKrwM7//HArWMA/wmGqIs/ydn5NEiQPCKzS929DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v1+aLEsaCP3b3AKEBEvgHvXw6yVMyg2IUsZkQNHatL8=;
 b=gdmZ8QcANHI0K1krv4G3K8ac1p4kRmqDOSQDk/F5ZMJxYf2uVZXg+A227rtvECHLpBSJ/SMSWewcTvNOdGj4JjNc46sqb3s+fst0BA2EoOpwIzFoQ5FEapriRcf7owS+DSvW4zHQ/vtKduTjEJQrRDGTJ7ufMcHHQr6HqJv0uUCDe+yiE3U/V6W+LcRvxLv13A37R1SI3DvhSMqHkZ735ASQ/fKhdUG8I4VxEkAwWx5ytKiVisXfdFTEGu7ZPZs1fS+/7236faPMvtbw6+u1N9G0UFZXC1vY+ne4szH+SKZkIL3OrPg60ASqR1sOhm1bhvzHCbzCSNfzRNpMqIYrkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by DM6PR11MB4009.namprd11.prod.outlook.com (2603:10b6:5:193::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Tue, 24 May
 2022 12:09:56 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 12:09:56 +0000
Message-ID: <9fdd54d5-bff0-cda2-c712-ab03dac8927e@intel.com>
Date: Tue, 24 May 2022 14:09:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220516082015.32020-1-nirmoy.das@intel.com>
 <8203d7e7-daf4-f603-8630-a16953e6c916@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <8203d7e7-daf4-f603-8630-a16953e6c916@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS9PR06CA0772.eurprd06.prod.outlook.com
 (2603:10a6:20b:484::27) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 60cccac3-bf71-46be-f3fa-08da3d7e510d
X-MS-TrafficTypeDiagnostic: DM6PR11MB4009:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB400925DB8331CF8B41692AC499D79@DM6PR11MB4009.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xO3t9jKBop2mBvouvWE41qeEbZYUyOqPtVHybGm5Dm1lRtS6YKzpUJmdvZrUZoMDXsp2JhA+8zY3uTrwF86YDf8cNLgvOEr5ahufA3tDeaEZtxTnhcd5g3Nbe9mOQhczQgnCsKb46XPPoqcPMujc2Ci8MHk/rnvZ3Ip+ahfpI00nrahKFiJsC/PiaasZUd0bEyWdOyqM8rTUEcl/aNs8CTxvSUteTltjWgl8carU4Z0+5tvmSXlysUh5PHkZbnMs1alsJWoGmzapwzE8PQimzAuwt92vZkoxqCloRRnquoWSJGPeM43auicqZwxic+dddEXkTar+Chp1JZucqwZCZWbK+xHBT+SyoFKRz7NnGigYgtmVaxm2MLQLcEyDITMaWNusSuq+L/oLQ+rUoEWLPd467B+m9CBiqukekv+X+UWYFngqDsuNW4cNGZq443yguTPBjVc7HxaLFSXUIapGybpbPRMxtBtXIbOL7gFitBfntREPqaIC2jUptmFhj+K4p33oPxdmdIsJIfxdm1MxqLqXEuPUw9l08p1WH2MU3SyxkzQedxyfabiLA8a2anU9+CcoMrfX1CBcq03ShrhQWe0qMB5Y2bZ+Vws9m7sLlpVSySz4iouUmOKDAdE0krMdoNYNKVqJflRJzqHoaMViytmodBS26WfZo36+1IeHnmymMaF2rU44S5JXKVzXw3ee47Q0AnREzZbCGF8vMhwRDV8rJ56T1k1meVC0WjxEQ2c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(6666004)(4326008)(2906002)(66556008)(316002)(6512007)(86362001)(66476007)(66946007)(8936002)(186003)(31686004)(6486002)(83380400001)(8676002)(82960400001)(15650500001)(38100700002)(36756003)(966005)(31696002)(2616005)(508600001)(107886003)(30864003)(53546011)(26005)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFdoM3ZuY0NEMVliRlBqTllzN05GaGtiYmV6djZCVkhKTnY5QksrSEZRby9B?=
 =?utf-8?B?NkFoaUZYZ1BEVEE3cm4vMEt3V3pMWEFiOGJieUE5all3S1lpYitrS1Y0Q1Ix?=
 =?utf-8?B?dTF6QVBxUGVIbjRFLy85bGswS3hUY2NBYUtlK0pSckpmaWtYS2pCYmNsdTk2?=
 =?utf-8?B?bGE1VjhnTFR5bjJDZmdqSWhSNHZRSFZIbGYyMlZZSS9lWmRCWWV4dEsvcDJh?=
 =?utf-8?B?WWlNc0N5d2xFRVRDcklQZGlMZHM4NFc5TkQ3M1R1c3pEV2daOHVSYWpPQnB0?=
 =?utf-8?B?NlZib2IzWkx3RVR3a3ZsdU40WGxTQWUzYjdnOVJibThOcTl6bDQxQVVuWEda?=
 =?utf-8?B?RzB4S3JGWngxZExXU3ZZNmRyMWE0UmF1NVI1STNmNFNDR3lkTzRPQ1FwRTRK?=
 =?utf-8?B?YnUxZVVvYXlsMitrRXdsMGl1ZXdLbnJUZGNKdW53dmJPNzdnREJKVkRUOUlQ?=
 =?utf-8?B?eVQxbWF4dm0wVVFpQzJSbjRjK3loKzl2UWZSSk5zTHFLRUNiY2l6ZW12M1Nj?=
 =?utf-8?B?K0wySHFJZC9BWVhMVzc5d29oNFU4aFpuYmdFSnBxUFM3Y0FabzlXbGRGakFI?=
 =?utf-8?B?dTdFR2xVQm5sRkNNYnhBZVltRUd4WUg5N1NHMHY0S0xKdzRpdHdwUTB6TzVz?=
 =?utf-8?B?KzJqemkyUFdRakhrTkY5NWlFT0I0RUJLaTBzYVFPK2VHdEFoTHo4WkNsK0pZ?=
 =?utf-8?B?cWp0N2lzWTFtS1F1UkhGaTl0U1hPQzgwNkExY2FKY0xPb3Uwbm5mWGJHWU8v?=
 =?utf-8?B?dHV6T2tCay9iaEt2Q00rdjZjaTVDeUdoTUJScnJCdnNTd3VvNEhIL2hOSVNC?=
 =?utf-8?B?bXR1ZGxSV1hsemdrbk5keS9SYjFUQmxnYjVzY1BLdGRGZi9KSjgxSlAzM08z?=
 =?utf-8?B?MFRLSXMrRGM5ZVF5amhDRU9janhkNHk3OWQ2RFVkVXdTdTYxWEJoRW1PbWtV?=
 =?utf-8?B?MTAwcDI4UHpqbTF3Zk5oZWpvMUxhcU5lSERsQWFXMGs3disrVWJuUlFEUnEv?=
 =?utf-8?B?czlMU0tYUjFycHZBQjVabVBBelBCTnNDeEtld0tGUHFJYy9SeVJtTFpmYTVm?=
 =?utf-8?B?UVdkdmlpOCtEcU13N0NPSHJCMndDVDF0ZXoyOENzc3M5NjdncEFuc2JkQmt6?=
 =?utf-8?B?bzE2UjBQbCtHNUFEMzVrVm02aE84YkhmdElyTG9YcjlKRjVNVStSQlV2RjBw?=
 =?utf-8?B?UUJja1JBNHhvUE1kOVFWaDk0RVVKdHVPVjFINXZOMVBRZFZNVlBMeFNUUGFt?=
 =?utf-8?B?UFlkOHUvVFc3VU1WMzByN0RlY1VxdERWOWFxNEYrQ0VRcUh5U1JVaU5qajhh?=
 =?utf-8?B?NDVJdGVoWXljZkVOOEs0c0Y5WWZ6VmJGWWI3NlpXbHhuN0hLM215eGZaaHVQ?=
 =?utf-8?B?bnU2MFRuK0ZQanZuZzZvTitjcHFqdDFTaVAvM0hLY0ZhaFp5K3dQb1dOKytu?=
 =?utf-8?B?ai9UUGwyckZUK0FjQWpLSFYyY0ZQdDd3eUdoLzhOaER5THFkbXQyWGNDa05r?=
 =?utf-8?B?VFNEYjluZEZDcFdDcW5lUVNFYWZsdGxVUktkbTR2WDh5QnJBeHFjVFlHOHc1?=
 =?utf-8?B?R1BqSTJpUmJHbVMrYm5XcEJ0dGFLV2cwQkxYS3FOeWRMVHp5OGNnMnlobzV6?=
 =?utf-8?B?UzB2TGloVGl5bHBZcUJnaUQ4d2RTeEdGVE01NTR4Y2JqSXFMYWY1ME9iamF6?=
 =?utf-8?B?SUtnNytSWjVZTHJtUGRUNUlxUXd1U1F4eFFETElNUnNHc2hGWG5LY1hPS2FB?=
 =?utf-8?B?WnBPSERaYWNmMlVjaEpBYTc4bVcxZXhkY1p1RHdCZEd5cUdqY1REeCtPcTU2?=
 =?utf-8?B?S3YrZmtiKzJ1OW1heTllRm5ETHUvUTdoVGRJUWUxN3c0b0dpV0pWdWdOTnJU?=
 =?utf-8?B?UXVDTnVYY1I4WDVhcDNSSWlGc2kzM01hRkhJbUtxQUxDNGoxcXk0N0RSQ2NS?=
 =?utf-8?B?KzVubDZrbTlhbmhwQ1dEbW5hTEdCZ3RuVHdGOXJrMmVxUTdRWkhIaEdDcHR3?=
 =?utf-8?B?dG1SL0NUM0ViYXZ1ZE01NkRHcXVsdnNtUDNWazg4M05Vcnhaa3VPNlJxWmtN?=
 =?utf-8?B?QUJQUkdtUHA2TmMxaVFKZVlkbVhqb3E2aURYTFk3TTZzL2hIek10ZUZZOGxl?=
 =?utf-8?B?ODNJcStMZG5mSGhOdVNwSnc3bkdDdzFvWTh1S2FtOFd1Z1pXM2g2YTA0cC9v?=
 =?utf-8?B?dFNqSmVqNm15NVVjVDRLZUFLVm1zWnZtZkUrelRCbkZQTjlNMGFVS3hHcHFT?=
 =?utf-8?B?ekZEZU82cjVGamNJaUJ3ZTJNYWdEdjE0WWJ0cWlMZXZKMHRtV25WR2Q0d005?=
 =?utf-8?B?ZXNaRTBQeVN4V3JvVDB6NitrMjRDSTBoZTdTK29vUWw2b09ST2Nidz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60cccac3-bf71-46be-f3fa-08da3d7e510d
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2022 12:09:56.3107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1UpKWTSUufBVUekrWukrR/RXfs7zHzFiGp1a8iyAaMeMB87DvYQOZ6Go3ViOIXKfahHVwhIsAMUQGRA/kHGAAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update tiled blits selftest
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
Cc: krishnaiah.bommu@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On 5/24/2022 1:56 PM, Andrzej Hajda wrote:
> On 16.05.2022 10:20, Nirmoy Das wrote:
>> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>>
>> Update the selftest to include Tile 4 mode and switch to Tile 4 on
>> platforms that supports Tile 4 but no Tile Y and vice versa.
>> Also switch to XY_FAST_COPY_BLT on platforms that supports it.
>>
>> v4: update commit message to reflect the code changes properly.
>> v3: add a function to find X-tile availability for a platform.
>> v2: disable Tile X for iGPU in fastblit and
>>      fix checkpath --strict warnings.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5879
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   .../i915/gem/selftests/i915_gem_client_blt.c  | 250 ++++++++++++++----
>>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 ++
>>   2 files changed, 227 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c 
>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> index ddd0772fd828..3cfc621ef363 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> @@ -6,6 +6,7 @@
>>   #include "i915_selftest.h"
>>     #include "gt/intel_context.h"
>> +#include "gt/intel_engine_regs.h"
>>   #include "gt/intel_engine_user.h"
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_gt.h"
>> @@ -18,10 +19,71 @@
>>   #include "huge_gem_object.h"
>>   #include "mock_context.h"
>>   +#define OW_SIZE 16                      /* in bytes */
>> +#define F_SUBTILE_SIZE 64               /* in bytes */
>> +#define F_TILE_WIDTH 128                /* in bytes */
>> +#define F_TILE_HEIGHT 32                /* in pixels */
>> +#define F_SUBTILE_WIDTH  OW_SIZE        /* in bytes */
>> +#define F_SUBTILE_HEIGHT 4              /* in pixels */
>> +
>> +static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
>> +{
>> +    int tile_base;
>> +    int tile_x, tile_y;
>> +    int swizzle, subtile;
>> +    int pixel_size = bpp / 8;
>> +    int pos;
>> +
>> +    /*
>> +     * Subtile remapping for F tile. Note that map[a]==b implies 
>> map[b]==a
>> +     * so we can use the same table to tile and until.
>> +     */
>> +    static const u8 f_subtile_map[] = {
>> +         0,  1,  2,  3,  8,  9, 10, 11,
>> +         4,  5,  6,  7, 12, 13, 14, 15,
>> +        16, 17, 18, 19, 24, 25, 26, 27,
>> +        20, 21, 22, 23, 28, 29, 30, 31,
>> +        32, 33, 34, 35, 40, 41, 42, 43,
>> +        36, 37, 38, 39, 44, 45, 46, 47,
>> +        48, 49, 50, 51, 56, 57, 58, 59,
>> +        52, 53, 54, 55, 60, 61, 62, 63
>> +    };
>
> f_subtile_map[i] == (i with swapped bits 2,3)

This is looks neat but can't think of any nice C expression either.


>
> but I do not know if there is nice C expression/core function to use 
> here,
> (i & ^12u) | (( i & 4) << 1) | ((i & 8) >> 1)
> does not looks nice.
>
>
>> +
>> +    x *= pixel_size;
>> +    /*
>> +     * Where does the 4k tile start (in bytes)?  This is the same 
>> for Y and
>> +     * F so we can use the Y-tile algorithm to get to that point.
>> +     */
>> +    tile_base =
>> +        y / F_TILE_HEIGHT * stride * F_TILE_HEIGHT +
>> +        x / F_TILE_WIDTH * 4096;
>> +
>> +    /* Find pixel within tile */
>> +    tile_x = x % F_TILE_WIDTH;
>> +    tile_y = y % F_TILE_HEIGHT;
>> +
>> +    /* And figure out the subtile within the 4k tile */
>> +    subtile = tile_y / F_SUBTILE_HEIGHT * 8 + tile_x / F_SUBTILE_WIDTH;
>> +
>> +    /* Swizzle the subtile number according to the bspec diagram */
>> +    swizzle = f_subtile_map[subtile];
>> +
>> +    /* Calculate new position */
>> +    pos = tile_base +
>> +        swizzle * F_SUBTILE_SIZE +
>> +        tile_y % F_SUBTILE_HEIGHT * OW_SIZE +
>> +        tile_x % F_SUBTILE_WIDTH;
>> +
>> +    GEM_BUG_ON(!IS_ALIGNED(pos, pixel_size));
>> +
>> +    return pos / pixel_size * 4;
>> +}
>> +
>>   enum client_tiling {
>>       CLIENT_TILING_LINEAR,
>>       CLIENT_TILING_X,
>>       CLIENT_TILING_Y,
>> +    CLIENT_TILING_4,
>>       CLIENT_NUM_TILING_TYPES
>>   };
>>   @@ -45,6 +107,36 @@ struct tiled_blits {
>>       u32 height;
>>   };
>>   +static bool supports_x_tiling(const struct drm_i915_private *i915)
>> +{
>> +    int gen = GRAPHICS_VER(i915);
>> +
>> +    if (gen < 12)
>> +        return true;
>
> Why gen variable? you can use expression directly.


Oversight from my side :/ Matt merged this an hour ago. I can

post a small patch to fix that up.


>
> Anyway:
>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>


Thanks,

Nirmoy

>
> Regards
> Andrzej
>
>
>
>> +
>> +    if (!HAS_LMEM(i915) || IS_DG1(i915))
>> +        return false;
>> +
>> +    return true;
>> +}
>> +
>> +static bool fast_blit_ok(const struct blit_buffer *buf)
>> +{
>> +    int gen = GRAPHICS_VER(buf->vma->vm->i915);
>> +
>> +    if (gen < 9)
>> +        return false;
>> +
>> +    if (gen < 12)
>> +        return true;
>> +
>> +    /* filter out platforms with unsupported X-tile support in 
>> fastblit */
>> +    if (buf->tiling == CLIENT_TILING_X && 
>> !supports_x_tiling(buf->vma->vm->i915))
>> +        return false;
>> +
>> +    return true;
>> +}
>> +
>>   static int prepare_blit(const struct tiled_blits *t,
>>               struct blit_buffer *dst,
>>               struct blit_buffer *src,
>> @@ -59,51 +151,103 @@ static int prepare_blit(const struct 
>> tiled_blits *t,
>>       if (IS_ERR(cs))
>>           return PTR_ERR(cs);
>>   -    *cs++ = MI_LOAD_REGISTER_IMM(1);
>> -    *cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
>> -    cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
>> -    if (src->tiling == CLIENT_TILING_Y)
>> -        cmd |= BCS_SRC_Y;
>> -    if (dst->tiling == CLIENT_TILING_Y)
>> -        cmd |= BCS_DST_Y;
>> -    *cs++ = cmd;
>> -
>> -    cmd = MI_FLUSH_DW;
>> -    if (ver >= 8)
>> -        cmd++;
>> -    *cs++ = cmd;
>> -    *cs++ = 0;
>> -    *cs++ = 0;
>> -    *cs++ = 0;
>> -
>> -    cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
>> -    if (ver >= 8)
>> -        cmd += 2;
>> -
>> -    src_pitch = t->width * 4;
>> -    if (src->tiling) {
>> -        cmd |= XY_SRC_COPY_BLT_SRC_TILED;
>> -        src_pitch /= 4;
>> -    }
>> +    if (fast_blit_ok(dst) && fast_blit_ok(src)) {
>> +        struct intel_gt *gt = t->ce->engine->gt;
>> +        u32 src_tiles = 0, dst_tiles = 0;
>> +        u32 src_4t = 0, dst_4t = 0;
>> +
>> +        /* Need to program BLIT_CCTL if it is not done previously
>> +         * before using XY_FAST_COPY_BLT
>> +         */
>> +        *cs++ = MI_LOAD_REGISTER_IMM(1);
>> +        *cs++ = 
>> i915_mmio_reg_offset(BLIT_CCTL(t->ce->engine->mmio_base));
>> +        *cs++ = (BLIT_CCTL_SRC_MOCS(gt->mocs.uc_index) |
>> +             BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
>> +
>> +        src_pitch = t->width; /* in dwords */
>> +        if (src->tiling == CLIENT_TILING_4) {
>> +            src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
>> +            src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
>> +        } else if (src->tiling == CLIENT_TILING_Y) {
>> +            src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
>> +        } else if (src->tiling == CLIENT_TILING_X) {
>> +            src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
>> +        } else {
>> +            src_pitch *= 4; /* in bytes */
>> +        }
>>   -    dst_pitch = t->width * 4;
>> -    if (dst->tiling) {
>> -        cmd |= XY_SRC_COPY_BLT_DST_TILED;
>> -        dst_pitch /= 4;
>> -    }
>> +        dst_pitch = t->width; /* in dwords */
>> +        if (dst->tiling == CLIENT_TILING_4) {
>> +            dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
>> +            dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
>> +        } else if (dst->tiling == CLIENT_TILING_Y) {
>> +            dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
>> +        } else if (dst->tiling == CLIENT_TILING_X) {
>> +            dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
>> +        } else {
>> +            dst_pitch *= 4; /* in bytes */
>> +        }
>>   -    *cs++ = cmd;
>> -    *cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
>> -    *cs++ = 0;
>> -    *cs++ = t->height << 16 | t->width;
>> -    *cs++ = lower_32_bits(dst->vma->node.start);
>> -    if (use_64b_reloc)
>> +        *cs++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2) |
>> +            src_tiles | dst_tiles;
>> +        *cs++ = src_4t | dst_4t | BLT_DEPTH_32 | dst_pitch;
>> +        *cs++ = 0;
>> +        *cs++ = t->height << 16 | t->width;
>> +        *cs++ = lower_32_bits(dst->vma->node.start);
>>           *cs++ = upper_32_bits(dst->vma->node.start);
>> -    *cs++ = 0;
>> -    *cs++ = src_pitch;
>> -    *cs++ = lower_32_bits(src->vma->node.start);
>> -    if (use_64b_reloc)
>> +        *cs++ = 0;
>> +        *cs++ = src_pitch;
>> +        *cs++ = lower_32_bits(src->vma->node.start);
>>           *cs++ = upper_32_bits(src->vma->node.start);
>> +    } else {
>> +        if (ver >= 6) {
>> +            *cs++ = MI_LOAD_REGISTER_IMM(1);
>> +            *cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
>> +            cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
>> +            if (src->tiling == CLIENT_TILING_Y)
>> +                cmd |= BCS_SRC_Y;
>> +            if (dst->tiling == CLIENT_TILING_Y)
>> +                cmd |= BCS_DST_Y;
>> +            *cs++ = cmd;
>> +
>> +            cmd = MI_FLUSH_DW;
>> +            if (ver >= 8)
>> +                cmd++;
>> +            *cs++ = cmd;
>> +            *cs++ = 0;
>> +            *cs++ = 0;
>> +            *cs++ = 0;
>> +        }
>> +
>> +        cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
>> +        if (ver >= 8)
>> +            cmd += 2;
>> +
>> +        src_pitch = t->width * 4;
>> +        if (src->tiling) {
>> +            cmd |= XY_SRC_COPY_BLT_SRC_TILED;
>> +            src_pitch /= 4;
>> +        }
>> +
>> +        dst_pitch = t->width * 4;
>> +        if (dst->tiling) {
>> +            cmd |= XY_SRC_COPY_BLT_DST_TILED;
>> +            dst_pitch /= 4;
>> +        }
>> +
>> +        *cs++ = cmd;
>> +        *cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
>> +        *cs++ = 0;
>> +        *cs++ = t->height << 16 | t->width;
>> +        *cs++ = lower_32_bits(dst->vma->node.start);
>> +        if (use_64b_reloc)
>> +            *cs++ = upper_32_bits(dst->vma->node.start);
>> +        *cs++ = 0;
>> +        *cs++ = src_pitch;
>> +        *cs++ = lower_32_bits(src->vma->node.start);
>> +        if (use_64b_reloc)
>> +            *cs++ = upper_32_bits(src->vma->node.start);
>> +    }
>>         *cs++ = MI_BATCH_BUFFER_END;
>>   @@ -181,7 +325,13 @@ static int tiled_blits_create_buffers(struct 
>> tiled_blits *t,
>>             t->buffers[i].vma = vma;
>>           t->buffers[i].tiling =
>> -            i915_prandom_u32_max_state(CLIENT_TILING_Y + 1, prng);
>> +            i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
>> +
>> +        /* Platforms support either TileY or Tile4, not both */
>> +        if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
>> +            t->buffers[i].tiling = CLIENT_TILING_4;
>> +        else if (!HAS_4TILE(i915) && t->buffers[i].tiling == 
>> CLIENT_TILING_4)
>> +            t->buffers[i].tiling = CLIENT_TILING_Y;
>>       }
>>         return 0;
>> @@ -206,7 +356,8 @@ static u64 swizzle_bit(unsigned int bit, u64 offset)
>>   static u64 tiled_offset(const struct intel_gt *gt,
>>               u64 v,
>>               unsigned int stride,
>> -            enum client_tiling tiling)
>> +            enum client_tiling tiling,
>> +            int x_pos, int y_pos)
>>   {
>>       unsigned int swizzle;
>>       u64 x, y;
>> @@ -216,7 +367,12 @@ static u64 tiled_offset(const struct intel_gt *gt,
>>         y = div64_u64_rem(v, stride, &x);
>>   -    if (tiling == CLIENT_TILING_X) {
>> +    if (tiling == CLIENT_TILING_4) {
>> +        v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
>> +
>> +        /* no swizzling for f-tiling */
>> +        swizzle = I915_BIT_6_SWIZZLE_NONE;
>> +    } else if (tiling == CLIENT_TILING_X) {
>>           v = div64_u64_rem(y, 8, &y) * stride * 8;
>>           v += y * 512;
>>           v += div64_u64_rem(x, 512, &x) << 12;
>> @@ -259,6 +415,7 @@ static const char *repr_tiling(enum client_tiling 
>> tiling)
>>       case CLIENT_TILING_LINEAR: return "linear";
>>       case CLIENT_TILING_X: return "X";
>>       case CLIENT_TILING_Y: return "Y";
>> +    case CLIENT_TILING_4: return "F";
>>       default: return "unknown";
>>       }
>>   }
>> @@ -284,7 +441,7 @@ static int verify_buffer(const struct tiled_blits 
>> *t,
>>       } else {
>>           u64 v = tiled_offset(buf->vma->vm->gt,
>>                        p * 4, t->width * 4,
>> -                     buf->tiling);
>> +                     buf->tiling, x, y);
>>             if (vaddr[v / sizeof(*vaddr)] != buf->start_val + p)
>>               ret = -EINVAL;
>> @@ -504,6 +661,9 @@ static int tiled_blits_bounce(struct tiled_blits 
>> *t, struct rnd_state *prng)
>>       if (err)
>>           return err;
>>   +    /* Simulating GTT eviction of the same buffer / layout */
>> +    t->buffers[2].tiling = t->buffers[0].tiling;
>> +
>>       /* Reposition so that we overlap the old addresses, and 
>> slightly off */
>>       err = tiled_blit(t,
>>                &t->buffers[2], t->hole + t->align,
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h 
>> b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> index 556bca3be804..246ab8f7bf57 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> @@ -236,6 +236,28 @@
>>   #define   XY_FAST_COLOR_BLT_DW        16
>>   #define   XY_FAST_COLOR_BLT_MOCS_MASK    GENMASK(27, 21)
>>   #define   XY_FAST_COLOR_BLT_MEM_TYPE_SHIFT 31
>> +
>> +#define   XY_FAST_COPY_BLT_D0_SRC_TILING_MASK REG_GENMASK(21, 20)
>> +#define   XY_FAST_COPY_BLT_D0_DST_TILING_MASK REG_GENMASK(14, 13)
>> +#define   XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(mode)  \
>> +    REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_SRC_TILING_MASK, mode)
>> +#define   XY_FAST_COPY_BLT_D0_DST_TILE_MODE(mode)  \
>> +    REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_DST_TILING_MASK, mode)
>> +#define     LINEAR                0
>> +#define     TILE_X                0x1
>> +#define     XMAJOR                0x1
>> +#define     YMAJOR                0x2
>> +#define     TILE_64            0x3
>> +#define   XY_FAST_COPY_BLT_D1_SRC_TILE4    REG_BIT(31)
>> +#define   XY_FAST_COPY_BLT_D1_DST_TILE4    REG_BIT(30)
>> +#define BLIT_CCTL_SRC_MOCS_MASK  REG_GENMASK(6, 0)
>> +#define BLIT_CCTL_DST_MOCS_MASK  REG_GENMASK(14, 8)
>> +/* Note:  MOCS value = (index << 1) */
>> +#define BLIT_CCTL_SRC_MOCS(idx) \
>> +    REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (idx) << 1)
>> +#define BLIT_CCTL_DST_MOCS(idx) \
>> +    REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (idx) << 1)
>> +
>>   #define SRC_COPY_BLT_CMD        (2 << 29 | 0x43 << 22)
>>   #define GEN9_XY_FAST_COPY_BLT_CMD    (2 << 29 | 0x42 << 22)
>>   #define XY_SRC_COPY_BLT_CMD        (2 << 29 | 0x53 << 22)
>
