Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D5B40E590
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 19:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5298A6EE43;
	Thu, 16 Sep 2021 17:27:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F676EE49;
 Thu, 16 Sep 2021 17:27:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202777839"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="202777839"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 10:27:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="698947476"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 16 Sep 2021 10:27:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 10:27:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 10:27:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 16 Sep 2021 10:27:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 16 Sep 2021 10:27:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q07ne5dyngSzSN/1NBtr2GDG8B7PWR/+3tY1GLSm5az4wdwhvGkOmsL9JZljeYBgKGl+9vwWauSbi88k2v7Nqa4uoRnKAirWUpe04AySoTzsCXvjrIJDbImu18BaYNORlQGKoRdjv4LSRSH8hPBqUJu0jt9CJkNSd5nsGwqyQmpBnlBWolybcjri2ItfopkBCG/7bfz3aGkVrhtFgFfZccNWYAeM6o70kSeeE174jWfKZdSX0FLWHidlugA75E8A37mshpnQrl7gEhGunmFOYNl0butpncvBAKqg31Y0lBqenR+ql3zbgvVkIDhvA984KIemdiuXB+1+oGULSO9jMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=bPIQIIygoM3VAmtzJM2E4o0js/t1TfNEOxND32blhhY=;
 b=Ebnx495WcJL38j94Iu0TBSm0tODG8fQ2Vey/I6+/OPBR8io+UBvYTtB3PMzcKcoEVoHFOBfJRpyTaIWwi9d47oW1Cna7+1wooCZBfRMPNH/Tn03iOKtFbHDR+pUFOZ+73FprUvMOme0r/g2aGT9jLM2zsKv9388oPxW87TJqODv3wIM7N3eVmtKSUlcdnAhOT88AjE7uf29ph3MbHMf1pu3z9wsCDsJUicZAKpQpN0guz8qy9D9y4wGjmIc8QZWpwyX0dpzyV+tkrGywibErpgobIpaeeauwC/JGYJX+qLCEZAktsjskc+MbC/8Yg/sxiNpkhUWH50uDHQOjVm/FkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bPIQIIygoM3VAmtzJM2E4o0js/t1TfNEOxND32blhhY=;
 b=tWxgbjGRb2o9xby+o5J0/bcazXXX8AqIqyOfYZ/1m+XtWnxYzccF2+5yZOQVLOUlnsTJkelv2wUJw3Fh9vufvpXSABWFmahK2itzVWgv+XPDsyejjEKG2Qicn3zW4zlktF0J6Ttmq5iX1po6ZDl/a0imTF3PUte02DZwWSQ6T+4=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5596.namprd11.prod.outlook.com (2603:10b6:510:eb::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 17:27:45 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%7]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 17:27:44 +0000
To: Petri Latvala <petri.latvala@intel.com>
CC: <IGT-Dev@lists.freedesktop.org>, <Intel-GFX@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Slawomir Milczarek
 <slawomir.milczarek@intel.com>, Matthew Brost <matthew.brost@intel.com>
References: <20210915215558.2473428-1-John.C.Harrison@Intel.com>
 <20210915215558.2473428-2-John.C.Harrison@Intel.com>
 <YUMHcIsB1+9UmWKV@platvala-desk.ger.corp.intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <e4f66112-8628-0870-81a3-622838cdd86a@intel.com>
Date: Thu, 16 Sep 2021 10:27:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <YUMHcIsB1+9UmWKV@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: MW4PR04CA0098.namprd04.prod.outlook.com
 (2603:10b6:303:83::13) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.221] (73.157.192.58) by
 MW4PR04CA0098.namprd04.prod.outlook.com (2603:10b6:303:83::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Thu, 16 Sep 2021 17:27:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8093043e-cdef-4a3f-22ec-08d979374b83
X-MS-TrafficTypeDiagnostic: PH0PR11MB5596:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB5596ED176355FE6644477EBFBDDC9@PH0PR11MB5596.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HEqQ08wHr/+WK8cuzHqanB5OV2jD0D/m9zg0N6Lvs5fP2hlEbAPU3rtRsQnndZDO8uNalnvTmd1e/TZEFQTrfg1z/BvTZfAe5DqXBhxgGscjECvRQ0jOZE9V1QEdsRRezRzPq/OM/KBtxP1Mnyu5SfsqZ1Noo29nhQyLHiO/xGmuMHRtNaBXvdjGYJk3kTn9zGS7cP5LtfSMYp/c/Ec8TvVtnB/BCbA15g72+vBD3LOHwWXEdw9N+96I+r1z1zy70zF3F4VJAZziQuKEW7kQt3MnuCmsCfeVW45/TtPlvoJHsPUbECCRRlBIKqdNd0XDR+VSB5FeztJNxUm4mttaZKAwJrFU9hVHxaHWt8pbphDJG8bT2P78fudUMDf+aEI75XMzFy0BklQOAUJb9J5zWY7DOQzrl0CCrwjRuo/LeZHyiZR5+qih3H3pieAG5WrkuMdqMgrdCb13tiAwSbRVkFcyoQcTK2Vyrp0AlkRcSX0Eyux0lDVGkjKdKrxlT+rSgNZNEQD3OTF8JaWlEvil3bRCQ1XF4JqcK4+3Esf9b5jxd+AB6RJVr5dIfvO+lBxVOuCwREgh2Me2ZqudNW5upKBD478IIlMrHjq7M2eJyRmHhTmPwyIXpP0iyzci6xqBoX5UdvLnZn14je0sY3pK93aA4b2XAsvjOmONL+jBxFZEPuPV/MiBdC70IXwulhJwnYDzAutKW5aXwuCL1x4KmMv/KGvZg9w7q/SpKGFjk70=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(15650500001)(450100002)(186003)(107886003)(16576012)(54906003)(83380400001)(316002)(37006003)(66946007)(66476007)(66556008)(4326008)(6666004)(8936002)(31696002)(6486002)(6636002)(5660300002)(26005)(53546011)(31686004)(956004)(508600001)(38100700002)(2616005)(36756003)(86362001)(6862004)(8676002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djNEUGpFT0lBdGNZcE5kSTNVOS9KZWZlRnpEeDZHamg2enVBYXZQb0czMU5X?=
 =?utf-8?B?VXdKRVF6dkdsVlJHUklhR1Y4bTdhUWZUMHZJRDkzbUlXNUo4NUl6NEdlWFRK?=
 =?utf-8?B?d1NoeGliaUxFK0JUaXlRUE42OEF1NXBaMDJwTEhnYVhpYkYxa2FYbDhnNURT?=
 =?utf-8?B?dWlaWVY4WGFjanpvUHZuM0tLYXp0UXJpUFhJNi9BNXl0QkM4Q1dCck4yMm10?=
 =?utf-8?B?QmYrdFFsbThxdSthd0diczBsVThYT0tMYUtqcnhvNzhvcmtVUkVlaFdabEhv?=
 =?utf-8?B?aExBNGdlZ09OWmdnYUNkTWR2U0dxL3hrZTlPWm9BM01hMnM5cEJhOSt6YUdI?=
 =?utf-8?B?aE10MWk0Znlrb1RtbXhtOGovVCtVUGM0WWQvcERNZ0lIc2lnazhObjFTRE1U?=
 =?utf-8?B?dkdkVExUUXVqU2pkc1VBYVp4M2F4eWx3RkJwdnhNWkl3cTlDbVQrYmhtRGpy?=
 =?utf-8?B?TEFYTFQrQ2ZPeU9EdHJvcUxtNnRjSnYvMWg2bksvRFYzcnlRdzQ2ejJPT00x?=
 =?utf-8?B?NTEyVHc5anJBWTFtWkdWRmZNcm0yQ2hSak1jUjFOT3dieGFCZy9lVnZab0Vy?=
 =?utf-8?B?QTF5d0ZmTjBPRW44U2hIUllGT2o4Rm9IWVhuUmI3clBnTWN6eDF4c3ZKZEh3?=
 =?utf-8?B?dEFsMzdkV2NSY3lmNmVPZnNMM29RekFNNWFDeXpxM1ZKeDRIRnJEaU4xRGdo?=
 =?utf-8?B?K2orZEduaHo5d3NCMUgvU3hnaU43QS80NHRrZElYc0UrNnIxR0dhZUJkWFNV?=
 =?utf-8?B?QlFMeTNzRlB5Q2w2QjRBU1p6Z3ArTkpCZ0d4TWdiMHlpaStmbUtINitKc1ps?=
 =?utf-8?B?VFVxNVEza1hEaytFTEFrYTh2UDhta2NXaE1IMHNMb2ZrZzd1eUM4NWJPZ3pR?=
 =?utf-8?B?bDdOMEluQm1YTHRpR0pQWThwL2RldzhkRmtZKzZvb1FRTG81VFhhQW9pOGk2?=
 =?utf-8?B?cXBJeXplZUtXSUduR1RsR2hLT1l6N3pib3dLV3FZMUUyaW9oeTZHL2ZCUnZ5?=
 =?utf-8?B?d0YrazZDeEp4RXZadjRyc1k4ZUM3Y05FcHh1dzNWTXljOXRLZkZCQk9GVmlP?=
 =?utf-8?B?QkwyNzZuRU91WGd6UmNpL2pWdUdaY3I1bjk0bmZTdmNIZlJ5bTd6a0sveWxp?=
 =?utf-8?B?dlRJek9QN24ydDZpTWROaGltSE9pTHBMUW4wVVBQT3lYK2ovb2k3aExjbjdV?=
 =?utf-8?B?cXExaTJrWDRCWHZnamxPT1lIeEwzSklpMm5kbjR0UjVHMDAyQ0xnNzA0VDhJ?=
 =?utf-8?B?RllSYVVBWTNBVmNqUTVsb25za2VaZkQwRUpmQ3hIRlUwRFhHNjJhNGtqbnVV?=
 =?utf-8?B?SUMzNmJ6VXhwdHJqM2VYSXpJRkgwQW1ERE1HcWdQU1NEZU5hdytTRGliTVI0?=
 =?utf-8?B?Mis2UWxjam0rUW9ySllZTVJET0pMQU9aWUZwSTFaK0RSMkpsT2VhcFREMVFL?=
 =?utf-8?B?VXVWV2R1c24xeGlFQWhZdUw5Z0s2K2F5ZWFUbjNnd2Q1K3hIUnk1ZnIwZ1R2?=
 =?utf-8?B?d3VLUmorV3NBTU1Ud1daaHo5RVdtQlFWVmM2MUR1L2k0QWNrWTlPeXVxblNq?=
 =?utf-8?B?clhMZU1yaENzRHNmRGwzT1BhQWlvam9icjJ4T05ma3pMNFVYK0NuVklRdkRm?=
 =?utf-8?B?c2tkNEhPRTBSUHlmc2pIaUZPVFM4WDBLMFZaSnFnSmpBdm43bEZqTnoxQWhr?=
 =?utf-8?B?OVN6dHE4Z3E2bWUyTzV3cUt2QWdsNmJvRWJrQ1RCbmUrb3llWXRETVplSm91?=
 =?utf-8?Q?hL3Tpzsm+UKZwquJJEOwQP4E9XzBG4eG1neJbFI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8093043e-cdef-4a3f-22ec-08d979374b83
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 17:27:44.7982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GI9YguALmc7ZezfGPADVPXUOCt0XW9KM/xieLu+uo3rzqHg83Dm68ooSbiTO6mqbxAoqGOqMvLkLDqIe1fdsUSVjk2iLuuv6/vBNwnIyyB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/1] tests/i915/query: Query,
 parse and validate the hwconfig table
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

On 9/16/2021 01:59, Petri Latvala wrote:
> On Wed, Sep 15, 2021 at 02:55:58PM -0700, John.C.Harrison@Intel.com wrote:
>> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>
>> Newer platforms have an embedded table giving details about that
>> platform's hardware configuration. This table can be retrieved from
>> the KMD via the existing query API. So add a test for it as both an
>> example of how to fetch the table and to validate the contents as much
>> as is possible.
>>
>> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
>> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>> ---
>>   include/drm-uapi/i915_drm.h |   1 +
>>   lib/intel_hwconfig_types.h  | 106 +++++++++++++++++++++++
>>   tests/i915/i915_query.c     | 168 ++++++++++++++++++++++++++++++++++++
>>   3 files changed, 275 insertions(+)
>>   create mode 100644 lib/intel_hwconfig_types.h
>>
>> diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
>> index b9632bb2c..ae0c8dfad 100644
>> --- a/include/drm-uapi/i915_drm.h
>> +++ b/include/drm-uapi/i915_drm.h
>> @@ -2451,6 +2451,7 @@ struct drm_i915_query_item {
>>   #define DRM_I915_QUERY_ENGINE_INFO	2
>>   #define DRM_I915_QUERY_PERF_CONFIG      3
>>   #define DRM_I915_QUERY_MEMORY_REGIONS   4
>> +#define DRM_I915_QUERY_HWCONFIG_TABLE   5
>>   /* Must be kept compact -- no holes and well documented */
> Please update i915_drm.h with a copy from the kernel and state in the
> commit message which kernel commit sha it's from. If this change is
> not in the kernel yet, add this token to lib/i915/i915_drm_local.h
> instead.
>
>
Neither side is merged yet. My understanding is that all sides need to 
be posted in parallel for CI to work. Once green and reviewed, the 
kernel side gets merged first. Then the IGT/UMD patches get updated with 
the official kernel headers, reposted and then merged.

John.

