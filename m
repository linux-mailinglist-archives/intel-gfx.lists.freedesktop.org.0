Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6E74DE9B2
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 18:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F7510E27D;
	Sat, 19 Mar 2022 17:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B507310E27D
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Mar 2022 17:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647711448; x=1679247448;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KxVHTK0RGjtkSMZPQBHpJzFZkQdxiAlKYBdPNtCxBHo=;
 b=dzO/FTg+KZSvXTJxNrBGvyNzxEm227wF5q/ar/JYZlZ7Q/Q4IDOitQSe
 St5XSooFgEFU6o+sgkhPP9ZoYKvAdD7M8rDLJWNjFA6nBj7k35+noIRUa
 XkKX9tLXnQSRk9erwPtVSe/tGSWK6zR9+aZI7eHFJ6ybdjID2nTIs3jt3
 I1mlIjJxzzzNcCThjqg0EqqQJJ4fm4wGem3Zmz3S6bmvHXWB67B+xxAaH
 ppIRxqVzMEQEPRl52o8EhhBLl20GBldOcyygUK3htqkydW9Y63JzylQ8a
 YVt+u9kqzc9CDazmwxQEd8usquD8ymTt+cMrpll/bqSDAsMSf6cUsjkP0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10291"; a="256137617"
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="256137617"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2022 10:37:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="691720804"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 19 Mar 2022 10:37:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sat, 19 Mar 2022 10:37:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sat, 19 Mar 2022 10:37:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sat, 19 Mar 2022 10:37:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S6t1D/c8ksDQIlPFWknxi/Z8Dm4wau3f56skHa7qksd6pIe1qJxB13t+ZQk4vI3562D1SEAo5qzFwBD4Uuqp7EUkirPcSD9G5rKkXDPByJWYk3EsGiMb2QRNaqvozljeJndpNtS0FjfMIDxp8keNkkv2GLv33jpA0YkFuLLsPB60YyxJCCrAVL6JBqVoUa/ZV6QGD6vyw0YQ+MJWa8BHkbgATHakR+F8XbHbruGvqUtt8DwcZLs1x7SU4sr/b+KMHMVwb9/jDXyDqydFC8a9o1PzgDD6NYSK41jD3TN8DKPHVeDusNgUBEf4CuqifpN6h/e6KeNYlbS9P/dnoYLkFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pciMCPEgOB9xvmFE8yg8S5pvRvNTaeurcBDWX9jaalM=;
 b=GedbGxAfsXwH8X0qV93ZjWdt8Z3YbT8NRUxF8tnoVcB4LLN3hnIuSTBEww+HI7TEinzSnq/T23l/6snGupRQKT6D8JvLDYxqOJVeHWjB4WaAJoa3ZyEQBOuCr4G/H206WbnlbDILlKFKSUlfdjn8xIPC7oXiizJvscoeJZHbwnQhMtktYSl5tF5+ygVF0lLq7EV2fMSc484NmY0B0Se8zn8fvRVpo8MLrWfyFVbKXUzZnRXH62UPlVRsaSRsfcPV353WPvt/rx5p92Z6vOSUaZZbvYRsgCs091hCbg5RTtl2WNInzl+xlnfrOQ1yO+Asj5OkHlX9t4LBspRH/eSbxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MWHPR11MB1598.namprd11.prod.outlook.com (2603:10b6:301:c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Sat, 19 Mar
 2022 17:37:22 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::ce:25a6:4ecf:adc3]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::ce:25a6:4ecf:adc3%5]) with mapi id 15.20.5081.017; Sat, 19 Mar 2022
 17:37:22 +0000
Message-ID: <cb45e65d-9fe3-0691-7a45-5d2fdcf4d354@intel.com>
Date: Sat, 19 Mar 2022 10:37:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220319020042.306649-1-casey.g.bowman@intel.com>
 <20220319020042.306649-2-casey.g.bowman@intel.com>
 <20220319034045.ki34nyoejk5hdg7z@ldmartin-desk2>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <20220319034045.ki34nyoejk5hdg7z@ldmartin-desk2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:300:117::12) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c20161c1-c191-4d13-5ce5-08da09cf1fb7
X-MS-TrafficTypeDiagnostic: MWHPR11MB1598:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR11MB15988A8BE8A496753FD0BBE7DD149@MWHPR11MB1598.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xV8a4UXgP/MX9YRQWqMBiAHDNn53v3YIIg2GWA+TLvBhg+IppEVzhrfho6x2NvGtdgPrpVTiJT4hWghGb9m9RKJPqQbmtKHKEcVU/4o2SMNY1Afc+CWSePiONs3BQP7j7gnK1QMGldc8k9J/1C4A6/PZaZvVq2SXjy/dz7pYsGxXnxwCFcVD7kPGbg4+8NZjLFOyxLKKhEDJVQKUZ3r4d0NnDTrH7XrEfxUx+6AtSvDklWEbuuUtNcipbN2LOWGTLMf7zCmMD1CzNHBwgnXYTeEb18dYOJj3COgnron3fdcFNm1vU+7oaf4Ebzc8/jLmn4Yp6MLKl9v7PxiRZY0lByyLP5m3mkifH1FV3lAqQ5v6c9/BeVIQ2OMOULQgKId7YVdXyGElO1feKQgLHcg2TsGXcEf6mzIVRJJD3mh96+yN/493qevD0XLuS7y3fPxGnh5K3xZGrROTkA2QMpk3BrelZU5mFX5OBlNHfRSPGU8q4T0rW/Wg+YqyqSJ8/iyfyc2oN4IY7g7/kOEcw2ijH8ckB5QtpSbPP0/PknGeTQ/zp3TfjaNCL8FpAF4F3rvzSDxXyUA6hVwDPWn8yu0hFH6jd58+3cgYREscxdSsiotUeIefQsx0O2N7bmrVnV8XUqW5lohVbgVHfd3Jmodm/HIZmlGrXjPOWzFzgtMdb0k5ROzw42efL4XQKci6j68f+WDA1k7/Y2J3zuZrpN9rN2xJpIwf+sc7a5DdtzAPstCXRQyiHKvR82t5QoAOTmB3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(86362001)(26005)(186003)(2616005)(31696002)(38100700002)(5660300002)(6506007)(82960400001)(8936002)(4326008)(6862004)(31686004)(8676002)(36756003)(66476007)(2906002)(66556008)(6666004)(508600001)(6512007)(53546011)(66946007)(316002)(6486002)(37006003)(6636002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVhQdVZNbDFwYnVlVUVZem5kWDhHVGl0WDBBV2dRakN3T1pkQ0dQV2oxVmhB?=
 =?utf-8?B?Rm45THFnMTRWTTBIdjgzYWkvOXVVLy9GSEtKaHZsVGJVK3FlSExVRmc1K0Q3?=
 =?utf-8?B?dnNUTElGTVl5cGZ2ckF5aTg2UitJNUpIb1A3MjVsd3k5TkxoMHJiUXRzZnVj?=
 =?utf-8?B?NHNCZkJvcGppaUhhajlrSGw1RVN3Q3MxcWVRcUQ4eU1JaGw2Z2NlMjZRY1hY?=
 =?utf-8?B?VlZLRFRmZUdRMzJQWnpFOXo2b09UVFVHMytZZjhjL2Rqc1U2cjFKSDByckp5?=
 =?utf-8?B?WVVrV1ZScTI0YTk0SW0zRWZRWEJFdTJxQXNnK00vOU42R3hOQVU3M21EbzIr?=
 =?utf-8?B?MzBGVWpUY2xUV2RTazhnZ3A3QU9IU1RPRE1tSWFsVko3dm9jTVhMTHBaRWlU?=
 =?utf-8?B?RkRMS2RJdkJqMUIwd1QvWWNnRkg4M2RtMEpqU0dCenN6a3RtbGx2eVBuNW8z?=
 =?utf-8?B?T3l2OFQ3akxic1ZuZTE4bm82WGNxb2ZhVjEwS3hYdTRZRWVxcEtlc05kcS9i?=
 =?utf-8?B?a25RV1dBbW9yaHI1QkNyckxISzU2S3Voa1N3VUNBMVp3eWhaV05jd0puWnhI?=
 =?utf-8?B?YnpzdXNadkw5Y0JrWVFwSjJxWFlOWVM3ZzFDUk9xbm5ENTd1WHVDcFZrR2Nz?=
 =?utf-8?B?dEorZjFHN3VaNGhNbDlsNlQ3LzR6YWNsa3ZxM3hpaXlCQ3hCNENnL1hxWkcv?=
 =?utf-8?B?Rk8wVzBWZmM4WTI3SFdJbDBKNkdlMWcwVWxyN0ZEK3pPS0RDa3pzQ1VFVzJo?=
 =?utf-8?B?OTRNMU5TYWFJOE9nSjM2NHo2OWZSSlVBdnU3LzNZSXdrM3pUTHlIeWJnNGg4?=
 =?utf-8?B?Y1ZMQ3VycWhMNzhWVHlKdENTdG5VQTU0YWZORHFNUmhkWGU3a2g1K0wyWjhr?=
 =?utf-8?B?d2NLdWc4TFpQKytBblZ5aXlzMWpjTDdBVFFrV001OW1IUHVxT3lJZHRiOEpF?=
 =?utf-8?B?MzRHRlkvWW02UWhia2ZmQXhLNDIwWGtvN2llN3pSVVYrY0FFaUNUbGhVQUVP?=
 =?utf-8?B?dTNJZ1NKaGRxYlREYjVYTS9Rb3pHZFh2YlpzQUdwL2k4ZzMxRlhHeDRveWFZ?=
 =?utf-8?B?TjJyeWFVODhpamwrVlJNZ1krZ09LT0R0cmF4SEdTdDRqdkc0RW5XajhBTEJS?=
 =?utf-8?B?M3hmWUpFSnNEb3k1NG85Z0cvcWtmTHgrYklPUngxZFRXN2tPM2t2V29FZnRL?=
 =?utf-8?B?WUorTlRiT243K3laSExFc1Irc2l1NE5iVVFKbkVOVkh4L1JBRHlCTjVsTEVO?=
 =?utf-8?B?a2FoK1A0RTRjZjFlU3ZCSTZDNzJRY2hhTU51c2VneWZxQzRuU1VYaGFMa2Q0?=
 =?utf-8?B?MXMwaFl3T2U5TkRscE1xYzVvUEdyVEFxaWVvNnhlRG1yMENIekgwd1E2aXhu?=
 =?utf-8?B?TUJrNEF1SEF4UmdYaDBhWDMyYUZGeTNFSE95LzhoWGNsUzBaL3BGOHIrZlp6?=
 =?utf-8?B?RHUwa0FwOE5veEY1bStaNHhuc2lZKzdlelpPZjVEaUV4aVp2WEtTa3o4SWNR?=
 =?utf-8?B?NTRHL2h2aGlEdjk4Yjc4WnRIdDJXUVBxNzhONlY0NHk5TWFZdVU2MXJMZWw2?=
 =?utf-8?B?U1dGOU5CeitsZ0hxVFBXcC82L3BYOEwvbGIzYzFLcm1zbVFLNFYzTURUcHUr?=
 =?utf-8?B?TVloUllERTBscythTUNXZ2h6WVE3cXJ0b1JBZEcwRW5ZMGxCR0x5a1IvSldU?=
 =?utf-8?B?eTRyQnB1L0cwNjJmSXJ3eitJelJLdEo4RXJZU0dSY3FhL2p5UUxkZ09uZ0Qy?=
 =?utf-8?B?Z1greTg5ZkZhRDkyMVVwQTZIUmRFSGE3b0E1eDFpUFpZQTZ6NDdSUWU2Ykdx?=
 =?utf-8?B?cWl5NCtTcjFwMEY4OUhlNkV5UVU0dkJJRnJjSW9aUmFTQllaenVNOGxwTENt?=
 =?utf-8?B?ZjRiKzlnUkZIY2ZjcTYvQWh1V0lMYXk3TE1qa1FYTWtFVkE0TWFtR3JQckdy?=
 =?utf-8?B?YnJlM3VQdnMrZG96OXZJQm9rc0M5WG1XTzFCbDdVdHRGUURHaCsxYTZKNmJq?=
 =?utf-8?B?UDhiTHZOMStnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c20161c1-c191-4d13-5ce5-08da09cf1fb7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2022 17:37:22.4462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z5l6xPz0fp9NBDc06ZUk2L4NX7l8nZnGLIuiRhe2iOk5lw1V9+liKUhFbimiXc2NHBk1SCd6p2d0t5buUZMUlFvzhipvfUsQ3hXQCXlIbqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Require INTEL_GTT to depend
 on X86
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/18/22 20:40, Lucas De Marchi wrote:
> On Fri, Mar 18, 2022 at 07:00:41PM -0700, Casey Bowman wrote:
>> The intel-gtt module is not used on other, non-x86 platforms, so we
>> will restrict it to x86 platforms only.
>>
>> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>
> this should probably be the second patch, not the first.

Good point, will rearrange in v2

Regards,
Casey

>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>
> Lucas De Marchi
>
>
>> ---
>> drivers/gpu/drm/i915/Kconfig | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>> index 63db8bcf03bf..b381e14863a6 100644
>> --- a/drivers/gpu/drm/i915/Kconfig
>> +++ b/drivers/gpu/drm/i915/Kconfig
>> @@ -4,7 +4,7 @@ config DRM_I915
>>     depends on DRM
>>     depends on X86 && PCI
>>     depends on !PREEMPT_RT
>> -    select INTEL_GTT
>> +    select INTEL_GTT if X86
>>     select INTERVAL_TREE
>>     # we need shmfs for the swappable backing store, and in particular
>>     # the shmem_readpage() which depends upon tmpfs
>> -- 
>> 2.25.1
>>

