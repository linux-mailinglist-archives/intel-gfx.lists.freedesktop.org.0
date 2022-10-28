Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C136F610A27
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 08:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C233C10E760;
	Fri, 28 Oct 2022 06:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FD410E760
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 06:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666937820; x=1698473820;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7w8YHgNUjnVy9LppNUtqtMWXsRBcj9dANVZQxpr+XZg=;
 b=kwkR8x914Tyz72PsXH2L2UNXiq3kKzitsemklGqXtBLrua2M9skf+YG9
 SQMcNQp93UGg5qYpiM2+rQ9t+EJvHvqWvzxVUCXMFlMJ+ZEFJchXTnWFs
 +oIJwX6S6CCUlAGRELUUDqJsoGYT5mQRuEWcSwjp2uA3bZfq4gAzkLsAn
 5EpSGe//ZcVUGAjjEKEK33o8GCW2t29u8ecyJ+ysAldUwldOtF4XzUqNO
 XszNDKKI+2EdmM0hF4KRZJkyfvYKT4SkG9n6ruUUWEb5VYO6ciP2umvE6
 mNIO6s4hQl6AYS4p1voQKVDmD6CfzBTrZtZEuo5HsODDE3i81X2A+bB1s w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="394733058"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="394733058"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 23:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="665959790"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="665959790"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 27 Oct 2022 23:16:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 23:16:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 23:16:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 23:16:58 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 23:16:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fU0o0ENSvDMQJidwDIQUWxw9L62I4MGgJ3rGHCOFQ0h5PLdq2jOUZIb+lvDnvfSqDM4L/w+AdlXBgJYFwC0Xse7AOprmPSsNassH7Ju8ultbnEEYFCvH/Cii78be9xFEzRr6wLNPbau77F5U3zWIrmK9VcteVkf2BCkq5ABI9lTvf59A6RqgXDNMtR5cP3fSeCX5AdFY6YeDPa7DZFa5xXPXdUDiTt/UFYwG63I1Wm0c4RQKlXuSTlWmwrAARZtG23BMnCz5x4U+XtL3V3eR4gvVI/Xad5GYhiqK1kpo0Rt+fODVMj75Chbbr4BTmglDC/K2hXHe3hATlx6NsCde5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y5rMnAkkNBqgaY6PYikxhc9NC/OA6dMggo1y8e/6TaA=;
 b=V0K/mwtE00cbhj3y92vqBf4dvjUYGd9TJWrYS8rITUufuiRJ7QSfkEBpI1fzME+ujHcVnMwHZC9NBktO1b17rmFHXNB1lqXqWOscFZvH3fwG0JH20YCNC4BiE9OttAZi4axmLUlRg4id/0zajE6ihLKrIdGzLlm7wZi/SMLntmU5uhoZlbGV9mb5f6Tl4X2H9jLIaCCJNvXpwaaLiDFxQpcrDYa4wdeyXj4xzgnMbptEsuls8v9WSkTGjhhXbbIRN6dOLTAURiK+ycNGck7lvQ1R3VebmDH1FzCLMJGOc+0xB1B6STbbcbnHv4urxPPOeRiozMaakiUfRStyAZhIKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4925.namprd11.prod.outlook.com (2603:10b6:a03:2df::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 28 Oct
 2022 06:16:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 06:16:55 +0000
Message-ID: <cec4a8b5-6634-fe3a-c36c-ca38cd9f51cb@intel.com>
Date: Fri, 28 Oct 2022 11:46:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
 <20221011063447.904649-4-ankit.k.nautiyal@intel.com>
 <Y1F8nGEjNroIzL4E@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y1F8nGEjNroIzL4E@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0207.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4925:EE_
X-MS-Office365-Filtering-Correlation-Id: 0021f2ee-f63d-4710-678c-08dab8ac02db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gDksco1rL4pXFajsIKxBXqYGzGjIlH0xgNalsBra9Mhy/Ls76cm/XAq0vPEgvjt1M2/93fWeLI+JImQrc/BuLo0SYj1pD/Xr2wIxc1YY2zgbmt4AgyIcFqyRNGSrnGYFJ8S0rOoE5VrjkIfUPngHyF/Rvtk3mqOQHJvmKCx+ysctwJfthZRTzwRIeR5tfGje3hhAh6fQsds3k4hr/UwCuG9t8KXyRRxsnPx/UGiwbbVwFoUbuGs48gLqRjly62HrkI9LEc9tuJshRzGhPyPNDijSjaLAXZdYKIwffVMMPRgwGKyxEfNoHVmmki93n/3Yukb8QUSIh9P6aSESXY6ej05xTPozSmKeuGTjMncl0sWYlxLz2f+FfRvs+wwMzIOjV27GJ19z4RSNJbFFde3e4zEdh8J7HV3n2BawUXfVU/ucHOmZDzxzXoS+7kd08ensPFTasdZ9GFGY5DsyzDC9ec69PILOxDwXL4hbEybuMjfFsKLz7JraGEBmIROiIJ19BVPIQehN3RDGV4Y4O6XCP2f7ZxVL0F9FscrF9K3cl4TUIsfCi1eJYGqyaOrbWW4QY9K1GFi7RAsS2KJ182vk7ErdSeuT7Po6khM/FHFn6LmyV5GqlcvqduMwjPsqRnDy4bxCVSAINMzD8mRbZ4bVrlBMX0pMD1l6Aupb1wKe7MyLg3+kbn6K7X/Y/2zjQXm4LkcIaymzQ4N8rKnFniekZeQmn8Kh2nfkQ2Fo2eq4WIwuwpi3zaLtWcxoqPtsA4v8bRIv7It0EVWCPRwqRbk0c3PsBr8vxcCJYCzltYJXuEw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199015)(2906002)(8936002)(31686004)(41300700001)(8676002)(66946007)(66476007)(66556008)(4326008)(6916009)(316002)(82960400001)(38100700002)(6506007)(6666004)(6486002)(55236004)(36756003)(53546011)(478600001)(86362001)(5660300002)(2616005)(26005)(6512007)(186003)(83380400001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3VFaUlXd2t3N2F4U1kzZWtqbUhUcVRJeTVEYmExeUh5M2U0eUtVOXJOK0ov?=
 =?utf-8?B?SHpFUi85RWdHLzZHbk10WkZMcDcwUjZYNzlzOVkvTGdnem1TajVzdkcxV1ln?=
 =?utf-8?B?d2xyVDJoWkwzaDBKRTlRbVpuemNSZ0hEaTFUTzNjNkVPc3RmdlNuVWxWR2ZL?=
 =?utf-8?B?eDVqU0xIVE1LSS90aW4wTEN1alJwNnJxWGFlZG5WTGlWbnJMOURNRytIbElB?=
 =?utf-8?B?WW8vNGRZN096RnE1YXZmM0VLVW9lUnplaTJZNnVGYUlSdkdBYTdVOERBZzA3?=
 =?utf-8?B?em9KYnU3bCswQjhyNmhkellvcTZUSXVZcnUwNE1XME5xNnVDdiszNXNadzdj?=
 =?utf-8?B?K3E3WTMzSnRQVEgzSExyK3c3SEhoNDVGSDQ3WXhjdVc2ME04b1JaWFhEMnh4?=
 =?utf-8?B?QyszVlU4d041VXZhYmJnRWFRdDZrNDNlM0VMQjRxbEJJaEFsTW0rSkYzT29K?=
 =?utf-8?B?Z3YwWkhjK1NiR3BzVHh6azZSRmZXMFJTSm9RaVQ3V0Q5YWlaVWRVWE9SdTFR?=
 =?utf-8?B?K2tOQzBaT3FUQ0JIOExIQWl3WE55WlloVmpYUUpzSUJJRDM4eFRnRHdzU0M5?=
 =?utf-8?B?dFlkTkU4YXV6VVRyY0M0RVZ4SHFyL0ovdXdVTlhrckJtdW9kQXhpSXI3UkJq?=
 =?utf-8?B?SUh4RjZlYUdFd0w3OWFiKzZMY01WSytycms1cFRacHZ2UklreWpEdDZiWDY3?=
 =?utf-8?B?TG96aWZWZlZyRy9La0JVYlpZQXRYTnIrSTJndlZiZ0tnOG50dE5ZYjJrbFRM?=
 =?utf-8?B?RkRnc2phbm1TNlFKeHVwd3BZOGdiMXp0S3NKYWgxMzIvRDNjYUduWWxkemlV?=
 =?utf-8?B?K0NjT3RIRjd6M2lxcS8zL2dZdjZzRGZvRlVRdXJwbENsV3RKelpuZjNsdTMv?=
 =?utf-8?B?VTlqMGg5L0pBRG5HSzhiR04zOHZyaGFtU3E3OXowNWpyS3puMDBhbzIzNG1C?=
 =?utf-8?B?cHBPVjV2K1o5d0IyU0RSWFhBR2F5ZEsvVWdQUkFwVncvY2ZIand3ZWNtakxw?=
 =?utf-8?B?c1ROT0ErRzl3MU5XMnlkZWpCR1lYUFNreFZqd2ZZKzVHMDExczNDR09UTmZK?=
 =?utf-8?B?R1VEYjJ0amVVS3FpVU9hdS82Ym04cDBuVndtWXhPUEpHbVVwc3ZQZ29vWkI5?=
 =?utf-8?B?a3NRNlFEcHlrVTJmRGRBdkdQdXV4cTBrZmd2RFh1eTlKemxTZXJpSEgwODVj?=
 =?utf-8?B?bldyc0V3OTRMNkRadXloNWFFWEMzdzcvQVJOZFIxUUhDMHkxUFMwdk9KM2RU?=
 =?utf-8?B?dkRHa1lCMGU1ZEU4dVJMTjlsTWo1UzdvUUcraVRRL2p4dnhDNnByZFlRMXVZ?=
 =?utf-8?B?bFFEWUYrcWxGZk1tckVib2RqdktpNUVRNDJhdER6VlR6UXFFQU1PSzRhOStD?=
 =?utf-8?B?SEpQelNvSnVCTkdGM0NOZ2tUL1U5M2J3YTBTdWFuZmtaTjRlZm50eWtaTUlj?=
 =?utf-8?B?aXFSK1ZGWnVxTUdZeVRLanJRdGdQblR2azZYTDZpbkxmeklMVWFoU3dqRUJk?=
 =?utf-8?B?cFVDcDgyamJxZ1RWOEZnUG1jRzhtSnh1T3pTV08xYWRhN1gwcEU1UVhNcldF?=
 =?utf-8?B?elZrQlR0ZDM1SmI5a2NyV1BKeXZWTW1BUEZIM0RLR0tWR0tOY2JxVXJ4eHcv?=
 =?utf-8?B?YWNUc09pREhmNkFydWFqRWRlY0tjYlc3V3o5UGVsRS91MDFmK1owdmg1M1k5?=
 =?utf-8?B?Q0lyQWZ4Q2drVmdwMFY3M1BZQTgxNFF2ay8zN25Cck9heE95RjU3cmhTdnZR?=
 =?utf-8?B?NmlXY2NvM05VdmxJTVF5U2luNDl3Z1lRUW1qL0N4T3M1cmE5bUFMR3V3NThF?=
 =?utf-8?B?UGxjcWIwZ0FWeXFra2VjZ0NKVFF3UnY3NXRCcE0xK1hYbExrM1hPUG9nRTNu?=
 =?utf-8?B?a0tuTzJNUTBzd1ZrbDd4K0haL29EenJGbFphOCs1QmQxcktDM2xtVUVqRHpP?=
 =?utf-8?B?YjdnSnBoSTZMcWMrdFhKZ1hVelpyaktpVmV5a01IbzJabjlsVG9tZGVlbnJL?=
 =?utf-8?B?anRFMG1mZHc1bmp6ekhBQ0F2VUNybCsvYkZEVHNkaEp2OFVmQjJSS2VnT1NB?=
 =?utf-8?B?QnBqUEYzSFRYeVBJWlFXSTFNV0IwVjFQeVFJNmFCU1RFMzRRRnpDOFZ2WmRl?=
 =?utf-8?B?ZEsyUDdpN2YzYmY1L3NUNkl0ck5DdDhaMWJvSUxrKzByQmZUY0VSTU9ZN0Zk?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0021f2ee-f63d-4710-678c-08dab8ac02db
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2022 06:16:54.9102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LakCRppPvZSV4UcfK2xv6AqdEb9T0CwzHJ66ND35xfrMKoRDBFp91L+UDqOrE4zgCyvw6AaC6a8RofNic5XOY+WHCUoJy7nqk+pVP/gt+8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/8] drm/i915/display: Add new member to
 configure PCON color conversion
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

Hi Ville,

Thanks for the reviews and suggestions.

I agree with the suggested changes and will be incorporating them in the 
next version of the series.

I have prepared the changes (without the suggested readout part though) 
still need to test on a panel with ycbcr420.

Please find my responses inline:

On 10/20/2022 10:21 PM, Ville Syrjälä wrote:
> On Tue, Oct 11, 2022 at 12:04:42PM +0530, Ankit Nautiyal wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch adds new member to crtc_state to represent the final
>> output_format to the sink. In case of a DFP this can be different than
>> the output_format, as per the format conversion done via the PCON.
>>
>> This will help to store only the format conversion capabilities of the
>> DP device in intel_dp->dfp, and use crtc_state to compute and store the
>> configuration for color/format conversion for a given mode.
>>
>> v2: modified the new member to crtc_state to represent the final
>> output_format that eaches the sink, after possible conversion by
>> PCON kind of devices. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c               | 1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c             | 1 +
>>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 5 +++--
>>   drivers/gpu/drm/i915/display/intel_display_types.h   | 3 +++
>>   drivers/gpu/drm/i915/display/intel_dp.c              | 7 +++++++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c          | 1 +
>>   drivers/gpu/drm/i915/display/intel_dvo.c             | 1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c            | 3 +++
>>   drivers/gpu/drm/i915/display/intel_lvds.c            | 1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c              | 1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 +
>>   11 files changed, 23 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 47f13750f6fa..5defafb6b9df 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1667,6 +1667,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>   	int ret;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>>   	if (ret)
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> index 94d0a5e1dd03..a6e7cf21e6e9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -392,6 +392,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>>   		return -EINVAL;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
>>   
>>   	return 0;
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index e9212f69c360..ed427b9cbf09 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -163,10 +163,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>>   
>>   	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
>>   	drm_dbg_kms(&i915->drm,
>> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
>> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
>>   		    str_yes_no(pipe_config->hw.active),
>>   		    buf, pipe_config->output_types,
>> -		    output_formats(pipe_config->output_format));
>> +		    output_formats(pipe_config->output_format),
>> +		    output_formats(pipe_config->sink_format));
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e2b853e9e51d..69a68a70ac00 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1312,6 +1312,9 @@ struct intel_crtc_state {
>>   
>>   	/* for loading single buffered registers during vblank */
>>   	struct drm_vblank_work vblank_work;
>> +
>> +	/* Sink output format */
>> +	enum intel_output_format sink_format;
> Please put this next to the output_format. Probably should try to
> clarify the comments for each to indicate output_format is what's
> coming out the end of the pipe, and sink_format what's going into
> the sink.

Makes sense. Will do as suggested.


>>   };
>>   
>>   enum intel_pipe_crc_source {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 359884617fdc..99d72b345907 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1990,8 +1990,14 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>>   		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +		crtc_state->sink_format = crtc_state->output_format;
>>   	}
>>   
>> +	else if (ycbcr_420_only)
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	else
>> +		crtc_state->sink_format = crtc_state->output_format;
> Hmm. This feels a bit backwards. I think it would make more sense to
> start with the sink format and then compute the output_format based
> on that. Could add intel_dp_sink_format() helper, and then pass the
> result from that into intel_dp_output_format().

Hmm.. well it does seem backwards.

We do want to set the sink format as YCBCR420/RGB first, and then set 
output_format.

Will do compute sink_format first based on the constraints and then use 
it to compute output_format.


>
>> +
>>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   					   respect_downstream_limits);
>>   	if (ret) {
>> @@ -2001,6 +2007,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   			return ret;
>>   
>>   		crtc_state->output_format = intel_dp_output_format(connector, true);
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>>   		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   						   respect_downstream_limits);
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index cd4e61026d98..cd625c7b8693 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -148,6 +148,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>>   		return -EINVAL;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
> If we compute sink_format first for DP, I'd do the same for all these
> other cases too. I think just setting both to RGB explicity would be
> fine.

Agreed.


>
> We seem to missing the readout part entirely. While we can't hook it
> into the state checker (due to reliance on the protocol connverters)
> it would at least give us slightly more accurate state dump for the
> initial state readout in case the GOP has chosen to use native
> YCbCr 4:2:0 output (not sure it ever does that though).

Hmm so do we need to have new callbacks for read out in dig_port like 
read_sink_format(encoder, crtc_state)

So for intel_dp with branch device we read from PCON color conversion 
DPCDs. For others we just return crtc_state->output_format?

Or we just during readout we set sink_format as output_format for all 
encoders,

but for dp we call a function to check what is programmed in PCON color 
conversion DPCDs?

Thanks & Regards,

Ankit


