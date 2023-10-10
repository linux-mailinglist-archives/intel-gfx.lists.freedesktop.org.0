Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EA77C039C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D76210E3B6;
	Tue, 10 Oct 2023 18:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CC310E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696963332; x=1728499332;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zMwsy3GNpb3CdewCEpaYhgRHrbctV4r7+29cp3AKJmM=;
 b=QUQ1Oexd+QjVdOmM0IMdUL5JNvUbu9RQVX1e9nuyVoQwbJkpP6Z0AYzR
 kil3M6RR4k65mtV+ri+Muu2OGykkZ6HGvryHUk3WlxJCwCW3vCAiJVOT0
 qx67HccIEbfLHeXeLIW2bN/2h7KDBU7uBf506cbJjabNZ/8JNByoWW/fe
 NI+vRJcZDCFZAywoKzkyZm8ca4MDofGzuq4go1Y/t7UHdhhTdZTFnv2DP
 xwhsw+1d3eZBZINVsBj6SMQxnUhG6C7yrkEd7eyC762/Z2hoqWTRJ2kmX
 wCbT9M2EZMH4deDOje8NmMFOm7230d3QIFfLzhG7+64EWDS8daxeVn4vR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="381735182"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="381735182"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757231302"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="757231302"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 11:42:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 11:42:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 11:42:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 11:42:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 11:42:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISHcr/umk3KkFvWteJsy9aZa7rUyB+KF/OTY+Jl7AclCuEHGxyuXyM8o2ABxpQjuK7OV0ZEEue5Pl5vs7TxS/NcHoHEYc9NDW4fnirN/cLdUHOMoxR3R+8dKku+s7mDMj+may+Srp0P3JSf3zWKFVEbQTDMRQg2WFtNQBosR7NUTlPkcOvX15dvt9zN6tHIyxIBv1sVo2fVU88Qku/RlIAOVFuH1NNYEntAqOr730Uw0rXJDJMvu3M7YCp26DHau0pnvGSbv7LoHwNeNI3N7QBEu+tT8I3zkHePwwriTBWw3l/B+uUC78TSJWUHL2yWoA4FyGEYRkGVQWemq+crdpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=44fcTw1ItsVcP7wfVIFXqB8pduDwV8bD+ps1NO5uxy0=;
 b=Lx7EoUtd3Caz82/JQixHVtFNyXzEvexCHpnmc184XU5cNKSi/VgT1Aa0Ip4530o9HW8PpM8pQIUKPlxZrcIkiwT7sGCv/+Wpi4p2tOZObx9cJ7wrYOh8U2H78w8AM9SasuTnU/Ot4QclU9mGc5fm4Q4LCLYuY2rDrMy06V8cXPSObwieuPebHDDrfhK2PWRDGvXe+/4rRbpslvOXA00/RRVIp0/VFc5TCPoeJvWK7lK2msX2yh7SIm5hFNhVbmKcPkn8jbI6R9yYi/JPzhBfk4yMzePdJY5Dxxq8eaeh1sjKS4SSa+gXQQi3jX+gjjOOLSiMpLQ5asi/Y+Be1eF/IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Tue, 10 Oct
 2023 18:42:08 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 18:42:08 +0000
Message-ID: <e75dceec-9791-4712-9097-15ff2e4d429f@intel.com>
Date: Tue, 10 Oct 2023 11:42:06 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231010143615.2010460-1-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231010143615.2010460-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0349.namprd04.prod.outlook.com
 (2603:10b6:303:8a::24) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB7636:EE_
X-MS-Office365-Filtering-Correlation-Id: 87fe7d97-97ff-4ae4-3f1d-08dbc9c09b60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bPxgPUSqeUSFESdvaafRzwPb6yrhHxAmaAZdpKgEz8QkIFuTJXS3GCzKesDx7KnH+uiW2nPmFiL7rwuizGisyk86XAtqzxWjwWxJ4vYkFkCFtiRcPZNvHt14nXNbQoxBxlP8de0p3lt3FdaPcIf2zA/6Xn6aOuRx2q/ue+grbtDz7IXqPemXt16AE2Im2O4QPWKZbLHC4Ugm5b2ySvw7ie3YZegmPiEUjsK3t8W6kMdlt8+Pf+rrQPJOAwor/gYfLsH8FY3uiWqCqkgeooSteBl59NaFaZELDOKkrmPvoGuHAO/RBTFO+VPTKRnYV9kuLD5GsMBDeQ4rIvhyjArmAGC/jJhzpXknbxWnhRSCU6IusskSgrvXwJcKs3ufpfS/3pZBjV/vlnHUXx8bRunpuo6kn4puVppkYL6T/dfHr0Ll8roh6ZwRzaZp/8XjsTwu4aXBXITyKXp09v7PJLLkFlOelXMl2JQp2Z2gc4Omse2kKSIG+R1WtmBbs3ZfOaNf/w5BytHSDp9tUnUyVwrisO1SMcK/vJZnj+Z3tNGmaN8zZwAQDx9OpjKQqw/VTM19sDJEhhP1PuxhmzMWxNO13CfwMt7Kyp7xQ/lfPjgWS4g9OCJWq6ZV+rB+3k1hM3Un1jnX6iZj9OrAVKWSmnUIeg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(346002)(39860400002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(5660300002)(53546011)(26005)(2616005)(8676002)(107886003)(8936002)(6512007)(2906002)(478600001)(4326008)(6506007)(66946007)(66556008)(66476007)(316002)(41300700001)(6486002)(31696002)(82960400001)(38100700002)(86362001)(36756003)(31686004)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkVEY1o5VmJDMjdzRDJKMVZnRVpUbjYzVmdacS90VGRBU3Ztd0UvUVhiWFZP?=
 =?utf-8?B?TDJGcTVlRnlob2J4ZnZaaEhBNjBCUWFkSkNtMlRzY3lsQ2tZRVpKbk4yTzU3?=
 =?utf-8?B?Y1RHeU5nVnVSdWRLYW1Ea2lieUE3MFRIRFAxa2lWYVMvQ3pjUW5vUE15dHp6?=
 =?utf-8?B?WmRZVmdtNmJPNTdnT0tmL2FPb1VNeXZYKzlGeUN5WC9rV25RYXBrVjBMVTF6?=
 =?utf-8?B?bzJvTDZjbDVFZUtLTkJqWC9xUGpHaEZBOHIvYmU5MnR6VlFpbFkwc2hMWGlr?=
 =?utf-8?B?b29zQmp6NjNlOHhmS1lob0xHc2l2ZGRKUEtIWld2WHhNb2lqVnRyUDByZUNy?=
 =?utf-8?B?VWJEL0dWaUVGK0VtbVZLSXdBQkdZS1QwRkNwdUs3aW5wTG05a1RlbTQ3L1Rl?=
 =?utf-8?B?eUdrZGRLUEJMTmJqaFJUOHRQYWdWbjMvZWtld041Qmd1cUYxSmE4QlR5NGR3?=
 =?utf-8?B?MUR2UXNva0lYVkxpU3djb0VmNGZCQWdrdlZMUVdjVkJNMFMxdDNFRlNzbXBT?=
 =?utf-8?B?cTBQNHZwMkEvL1RkSkZzWnRxYkE5UEpqR2FEY2lqS09UdWVnV0JlTHVjN2cx?=
 =?utf-8?B?Z3AzTFVkVWpvUUM5dm56TnBJYkNHUzh5T1lLV1UvL3UzK3d4aDhNRm1qS3Fp?=
 =?utf-8?B?ZlRUV0RVdEprajhVd3FxSFNNVXdmK1ZvaW9hNjdnS2hjUzNmaWxyT2FFMHNL?=
 =?utf-8?B?YVR0M3JBRWpCWVBsSXcvUlhqampWWlplSDg5UysweWdiNU1xQkpYaVdENjVM?=
 =?utf-8?B?Z2tjSEcyNmptQ3haUkFBSHpBU2N3Lzh5MElrODR0cUYyNm9ZSXZ5VEJ4NTlQ?=
 =?utf-8?B?ZUV3eUtOQ3VhU1VTYnJ4R3doNnk5azdQdUVSY3hQSjZiaVFYa1I2cFVUd3hH?=
 =?utf-8?B?SUU1ZWxXQmdMdUtoU21BZ3J6Y0pUUmxXNTkwSVJtSmpqWDRjUHJmOXYwRHk3?=
 =?utf-8?B?RmdxNk10d252MFU5eEhLenhSZkYwNVRxVjJZeHhmeDB4ZElobHl5WUtKTDNY?=
 =?utf-8?B?eFp0VjJrN0xlQzc1UWRqOGpRU0NlYVNET0hjVjRxRU5KTlN4ckFSY053Q3h0?=
 =?utf-8?B?S01sb0ppUnVpWDArR1pjQ0dQc2REYkpCcjROTFVWWnJXc29QK0xiQmkzNjRM?=
 =?utf-8?B?dmdjanhTZGROZW1SS2hmVFVVdGk4WEpnNFhuNkc5WlJBelRZeklsYlk0Y1kw?=
 =?utf-8?B?ZG50VGkrZ1FhRXEwYi92Rkxrb2tseUVXVFFkdHYxenhOdEh0WHdJVTcxajFF?=
 =?utf-8?B?QlluTVJXNklhMUNCeG1lcTE1NDlQcWVIK1RLNDRiS2NCR3dmaWJaRjJMMWx0?=
 =?utf-8?B?K1M3ZFRPc1pQMUxKQWZ0MzUzY2E2ZHJiUXc5ME15QkYzR0pjN3BTOUgyZGlY?=
 =?utf-8?B?akZRWGZHSGFoZ0RNUVNNbHFNVFhOMWkvSUJEVFJ6dGZuRmtNS1Jvc0NLTEY5?=
 =?utf-8?B?Yk1ScnlvTDBYbHV5L01rVnJCTVd6SHRWQTUwQktHWEdldVMrWTFUYVBnTjlt?=
 =?utf-8?B?TlNQNVZHc3VoN3NPV2dTYzk5REdwNWRCVGx5NGNaQVpxVGhlbHNjQzBIOEgr?=
 =?utf-8?B?d2FKRDBQZy90SkpCT2h3OEZzWnMzWWNQbXh6SnJ2RVBTU2h6MEh0QmhpSm5z?=
 =?utf-8?B?NXdVQzAxWlVJUDJYejVMenBzby95cE9wREw3SGJoUmgzSFJmL3U2Y012b0xp?=
 =?utf-8?B?bG1KRzRLS1AxZ2VFdFRIWWVyT3RRQ2FNY05zZjlrYm5nYXFQNTFzYmkzSWxw?=
 =?utf-8?B?Sk9jUzFxaVNsQmFRME1uclZqYWduS2FTSVNSR3BGWUNqc0NMY0pCQ0VMWlZJ?=
 =?utf-8?B?ZTJWd3V1YzBicmx1Q3gwajhNWjRNNTBXZzRFckpyRUg5NUx0NjYzM2hTS2RS?=
 =?utf-8?B?SXl1dVRaU0FRL2pWNkFVU0w0dGprT1RJeVZ5RkFzYTYwbFRQY1EvM0hsMWJx?=
 =?utf-8?B?RFJuQ2wvdllmNGRwbElrQWZBcEFBc0tBVVl4ZkJXejZIeU5oUUUyVndVQWw5?=
 =?utf-8?B?WGhkMVQ3aXJ5WW1ZUXBPbXc4WjM0NzhRcTF5Q0c4UDh0bmRiOC85ZEpFVVpi?=
 =?utf-8?B?d3dra2hqeXhaVGI2THV3dXJHZVlVR0s3dHBIL0dxMkJWbkJvdWdXZFB5T0Nv?=
 =?utf-8?B?RDlwOE0yUmgyd1NxQjIxenU4bm90WnUvNktUNmErWDMzR2V4ZHJYVFZJaHp0?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87fe7d97-97ff-4ae4-3f1d-08dbc9c09b60
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 18:42:08.2156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FqBrvw3zwZhZ6As+t0xUJHF1DoHkMWlx4O3fr3YTfNMFlywhHC4TbBfZ5KP1EDPDAFs+gyAUaHN9mHN9bDtlL5r9gkvUHmHxummD7wvTtig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7636
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, matthew.d.roper@intel.com, andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 07:36, Jonathan Cavitt wrote:
> FIXME: CAT errors are cropping up on MTL.  This removes them,
> but the real root cause must still be diagnosed.
I think 'hides' would be more accurate than 'removes'. At least until we 
have a better understanding of the issue.

Also, is there any performance penalty with this change? If we are going 
from fully cached to write combined then one assumes that something, 
somewhere is going to notice? Do we have any benchmark results or other 
tests that show an impact?

John.


>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>
> v2: Apply FIXME to shmem_utils as well.
>
>   drivers/gpu/drm/i915/gt/intel_gt.c     | 6 +++++-
>   drivers/gpu/drm/i915/gt/intel_lrc.c    | 5 ++++-
>   drivers/gpu/drm/i915/gt/shmem_utils.c  | 8 +++++++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 5 ++++-
>   4 files changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index ed32bf5b15464..b52c8eb0b033f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1026,8 +1026,12 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>   	/*
>   	 * Wa_22016122933: always return I915_MAP_WC for Media
>   	 * version 13.0 when the object is on the Media GT
> +	 *
> +	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +	 * but the real root cause must still be diagnosed.
>   	 */
> -	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
> +	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt) ||
> +	    IS_METEORLAKE(gt->i915))
>   		return I915_MAP_WC;
>   	if (HAS_LLC(gt->i915) || always_coherent)
>   		return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index eaf66d9031665..8aaa4df84cb3e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1124,8 +1124,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>   		 * Wa_22016122933: For Media version 13.0, all Media GT shared
>   		 * memory needs to be mapped as WC on CPU side and UC (PAT
>   		 * index 2) on GPU side.
> +		 *
> +		 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +		 * but the real root cause must still be diagnosed.
>   		 */
> -		if (intel_gt_needs_wa_22016122933(engine->gt))
> +		if (intel_gt_needs_wa_22016122933(engine->gt) || IS_METEORLAKE(engine->i915))
>   			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index bccc3a1200bc6..a026c216fd286 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -43,7 +43,13 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   		return file;
>   	}
>   
> -	map_type = i915_gem_object_is_lmem(obj) ? I915_MAP_WC : I915_MAP_WB;
> +	/*
> +	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +	 * but the real root cause must still be diagnosed.
> +	 */
> +	map_type = i915_gem_object_is_lmem(obj) ||
> +		   IS_METEORLAKE(to_i915(obj->base.dev)) ?
> +		   I915_MAP_WC : I915_MAP_WB;
>   	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>   	if (IS_ERR(ptr))
>   		return ERR_CAST(ptr);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 27df41c53b890..e3a7d61506188 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -774,8 +774,11 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
>   	 * Wa_22016122933: For Media version 13.0, all Media GT shared
>   	 * memory needs to be mapped as WC on CPU side and UC (PAT
>   	 * index 2) on GPU side.
> +	 *
> +	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +	 * but the real root cause must still be diagnosed.
>   	 */
> -	if (intel_gt_needs_wa_22016122933(gt))
> +	if (intel_gt_needs_wa_22016122933(gt) || IS_METEORLAKE(gt->i915))
>   		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>   
>   	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);

