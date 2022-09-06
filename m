Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9795AED63
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 16:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AAD10E6AA;
	Tue,  6 Sep 2022 14:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C26DC10E6AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662474787; x=1694010787;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DXOH53tabPxJz7nIUXEJgA1gOrveMyaGPHKSBwS7xds=;
 b=QFcuHSIoM4IhhxPHj/O7YEOA8p1SO7JjRY3svwUO2PLvhWJyThSUtZpd
 DzuA0QMRBcwlq2+NUddEBBqgOe226cpxRsbwz/JzVv9XQMSeI+eo6+jRT
 eUF8NGEd+tBT7DKZEtmuTcfIe/WjO/k9f1h6ZZ67uY6wmuEO5CxGNjwoW
 OEKzNqs3mU/QN8VjGsOb8b0rGX6YrfBVwklgYDEFdhCjXT7uNs+qe2Dy0
 C3huCjDu9lVVPEGRZJC6jhrUIKxmHZSljYSurUQX8UHg8Md74Am9HDcfI
 jgr5BqUVrZ8KZuwuFltwm7KNrWNOStS2SgHUDGYYALVzmQwFsQeIxmIXl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276346559"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="276346559"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 07:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="675713946"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2022 07:33:07 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 07:33:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 07:33:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 07:33:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OJQd6QYQfBCHKGZoZeIgBFemxgWnUIX1G4LqlfRiQzmg/tLMLJmR9PO9LkbwDf0QqLd3rZAbBjU5zez6IjsQBX7hc/uQ1I3rTP9KQXtQHjyxkJLriMdM+0Z9pmR1WnnT9GGCa+jtEAG7C6DMP5/r9qjj0plLPNxbKwHqe8FQYOOCyvJr+v2aUe5mUJ1buHZbd+VX4wlte2UxwMXfTfYh0twLnJAPtraFkyUAEPxWV0NDbL9ATDP6K842LgxbR5QiXOJlW+kIH5S/nVLV39SCgpcZWrMe64dFBmGAMz7EyAs+ClNQU0AbSryWf2AgMzhdPNZ/qsXfdSlXHdbc/npP5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KiGRqBqDvyPSlKlVp0tSfQ8NeB4qOeN8aRl5167Usuc=;
 b=bShi1o/MZnqjqfbzMEf5i8CQ3ZXJhFK4RSNPfFgxXQMRBFPSQoi1WyEOaiHI/n/WyWCcet02D+i1kZ6TrVGntv3BPiMcvvJkoLZzw9nXjeFaEGn8TheXuhi3SJyrmB/AUOVfMFQW6VCADMKe4uA8iBONbH8vrr5FRNZ9yCRQiewq/Z+iiGKaGam4glxsRjfUXpbLDABqgHHXfw9jxgBv/xAb4HvyuJMei+puly/tCmGL2QSYHC3X3U9iWqialCuByQ9ELGtMvTPEH1A8ftG29yh1ULX2ZKITEsXQwXIUYnE4fANPW7Vu4T7hb0TXpeJFkaQUGwL7pcAZZnHLflpgxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Tue, 6 Sep 2022 14:33:05 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 14:33:05 +0000
Message-ID: <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
Date: Tue, 6 Sep 2022 17:33:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0112.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::11) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f0fd6ee-c5ab-4989-6bcd-08da9014b59d
X-MS-TrafficTypeDiagnostic: MW3PR11MB4554:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +f0XjpJTwSVOCOJaEKi6fXFYPFjo89QRmgyFjIDx1ttzyXFrvsMX6+8zAuXwVC8r6vFpmuXDoR1IFM4iraTmRoD4Nb039bSs/ZM8x70eeP6KJeWC4BtVhaYCzBNr79IZG8hcPXSbalOX+YDHJI9uWscCMXLXQHL8Fn4vF3Yz7+QakybDJpk0oHKMcPR3TJGYnapeLxBiIGLVdfoAbwSpwU2ZggIjE1iseXoSZWoAtP1DjDZbatdh9zT9RzP9+rbPIdpcGRFKyMQxUDs7JDc1gjmpAvbvFyHLnH/3+eZlYedIbvl9SklsYFZzawIFnP1INQtQfotW3qEz27h0GNYz+PoWZNPRplTtB/cew+oaflvdnTnHFC61oqT+MsFNBLxVBN8DW7K+pv8jXOyXtAj9QNMy8LJqpenE7i4A+lVnwSEZivQGut9G8jgUq2kMxPzDbUv068tdZaOKdxrXP6k5x9uhMBqpVYdEMRikBwq2OqK+eYq4HEbEf3fCUCuLsOd8eI+HnYufSE632fayy0P4lP/55M3F3RsLJuOMx3DPDQxEToPiTviTuzJ5W8N+ARxc2XZUDQ8iH+mM0snoMK0umW3Fy7pYI5oGmb7D++loBJ29g2e2kZg+wLNBK7/G8UfaaueH6UDZDFMIhus1J8hCMUg1Luc/Rtplf/KumKYHSuE6PPA7ygeAboZKNuis8RB41uAmBjqoG6EDMvuOxl3y9ktxKqluc1pXNkUgnynZtWLK1RMW65z+7vFAqNQxJTeImpQhj/c96oAadCV40rlXnq2fxRKrrEImwpfpH2/WWQjA/yUWxELgS6krmlWVn5pq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(376002)(346002)(396003)(39860400002)(8936002)(478600001)(6666004)(107886003)(83380400001)(41300700001)(6506007)(6512007)(6486002)(53546011)(26005)(2906002)(2616005)(5660300002)(186003)(316002)(66946007)(66556008)(4326008)(66476007)(36756003)(86362001)(8676002)(31696002)(82960400001)(31686004)(38100700002)(21314003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0RDWDEvUCt2MHB6TGNBbml6MlZVTHJSQ0EvZFBMc0x4TGRuY0wxa1NMK3Ja?=
 =?utf-8?B?dUE1REwveDFuTHlRWUVoa2tnalAwMlRYcjdHbWpPSUhOSUJwZ2tBVE1HNEFV?=
 =?utf-8?B?cWVLaG9MQ2RNeTJ5azBKQVNJUC84QWNkVmZpTzU1S3hXcnpxd2IxaXptNmVa?=
 =?utf-8?B?V1AwbFhVRVRwVEc0bXJHdWFWNkR3VkhaTEFGVHNGOHcxQTlkdWFQSkV6RUdJ?=
 =?utf-8?B?Q1YwY2hUYVNoQzJuR2x0cmJ0eWJuRDFoYTcyeDhEbVhaNUhKWnY1VUEvbVRD?=
 =?utf-8?B?RWozSCtzRkoxZ0dndjQ1NXpZUGdTL1BGV3Q3R0R6VXZ5ZXd1b2xuSXZYYWNX?=
 =?utf-8?B?VUNyNHovb1lIM1Nuc1d1S3JrTXBjK0VKcm5tRVBBQ2R1VkdHRTRtNFBiNDZK?=
 =?utf-8?B?VnplcEYxSDVzd3dnek4wUXhLZXpQamxpRkt3VDlRbzNNajN4bHZldU1ZZ2JE?=
 =?utf-8?B?eGpZRndpNk1uN1BpMDgvQi9MbjNSMVpWYVdGeUEybENydnJUMW45eHdDRTJy?=
 =?utf-8?B?OFF4ajNBdUplbzlmTEFCcER3Y2g5NkRwSkxKSGZyQWxmbEdERnlFMy9jWkRU?=
 =?utf-8?B?VkpXblEzSHJtUU5Ic2UvNG53Z3U3YUxoY3pyTmVhZ3ZvcGNScjVUMHcyRXRM?=
 =?utf-8?B?NUkrbnMwVGlabWx0c1ppY3pLbmRLYmFzMndRUkI1cDhpeFhaUU1YSTR1UFZv?=
 =?utf-8?B?R0JkMkFleEkvWDEvQ1RsZEdRcVJNa2gwb1JQUEdEZFJjcVlITFgwVWkwdnNS?=
 =?utf-8?B?TU11b3FZOTNvT0IyVDRhMVFEdDA4QlZkY09KcDEzU1Z6Y3FVRU1xZnlpdnVr?=
 =?utf-8?B?QVM5c0xXVkV5S3BiZzJhTTd2ZDFPbmRUV0k3S0ptaGFoTU9xSDM5b3RLdlZn?=
 =?utf-8?B?SG1xUGhpY0s3WlJ0b09GU1dkWFNjWkNGckZCQVU1MjFDaHd0R29YRjg4K2Nz?=
 =?utf-8?B?bk9tV2Z5TVdtMkltdFFCNTNYa1dRY2tZaURLRjZ4eVAvNXdnS1I4b2R2L2ts?=
 =?utf-8?B?RWJoRUJiRmJJU2QxczRyVG1ETTNoU25WMEF4SFpCK1BMMnZISEJJaFRETlQw?=
 =?utf-8?B?WXcvM0kzRmY5cTlMMzRJSzY5VWwvYTltYVJTVUE2UWhkejkzdWFNQVRzVFln?=
 =?utf-8?B?UEg3d2RMQjdzTTk0aGhCWkxWUit1Y2I3S0lLaUxldzQ2dnZFTjlkZnJlMktm?=
 =?utf-8?B?d1V2S3dTZmhLODZkOCtqNXVycmgzOU1MQzAyZERkNzhZQXdETmpmYzY3UlJD?=
 =?utf-8?B?TkpHUHY0OEhGcnpKRWgyRkxXS1Nlb0lMbGcrWDBKSWp2KytDaS9UQ0JCRnMx?=
 =?utf-8?B?WWhkTzdUWmJUS3d5OGlEcmYrU28zMXVLbHQxRUtyZFRTYlRsYXQ4c0IvdU13?=
 =?utf-8?B?UkNUeWt3d0hiVGluWDV0R1RyYnNOR2lqZi92YldxOFBWdHZxZllmVWFhTHI2?=
 =?utf-8?B?eEtHbVJrQlU2MS84UDgzTGlRQXhVaTEvOXo1aUx6NGJldXYybmlyWXJlak4z?=
 =?utf-8?B?aTFueS9uY2YrSzFWemZxR3VhaS81UHRlemk1ZGJEa0lVNXp5MjBOem5Sc2Ey?=
 =?utf-8?B?ancxTDRZQ0JpRi9WdERCbFh6VUVMOWdwTjBWSTI2NE5ocmJ1aVkwZGs4NHpL?=
 =?utf-8?B?Njd5dU1ZaTU1aXM4Z0VMRjE0N2NtSWdGRFJ6UVFpd1pLSFRLRlpwT2NyamNq?=
 =?utf-8?B?a1B2a2pEM3FRejk2WnF2c0UxNm5HL00rd200WTNncTlIZ1ArWUgrbzZTUDY3?=
 =?utf-8?B?MkNrRWdUSW9MaDVoUzRlVUg0UVZjYUZqVkpUeGVGemY5bGRUcm5jQVJ3cFVQ?=
 =?utf-8?B?WWRHUnV6NFJOaHoxMFhWYnR2TTdmOUxLNmZyaGdyai9GUUJFdE1Xai9YVDF2?=
 =?utf-8?B?WHYvalgzREhiZWlJL29iQWd3cFNVajVnaWRFaDNleThhNjM4NU5qSTlPdWVH?=
 =?utf-8?B?UW1uaE5id0lKTG9LSWZxTklYTitwNHlEa2dBaWh1SFMwdFgzRTRFSDdKMllt?=
 =?utf-8?B?bGJkWHRiZnR2UWVoVEQ5eDdvZWtESTRPS0NSSjVhL0hNMWpwaXhiTCtmMmtD?=
 =?utf-8?B?allON3FoTEhUbGdOaTQzVnl6cjNFbmJjV3g3U2VRaktSeXBaK0pRQVRvQVkz?=
 =?utf-8?B?R2pBUkxtNXdRWGt4UHdpV00rNjFwa2haZWxwdmF0RXdlemFUUVBBdWx3NURw?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0fd6ee-c5ab-4989-6bcd-08da9014b59d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 14:33:04.9584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1S5DoZgmFv/Q4H1l2ZBwhjKOm08dwcLSlEx8Zzbze9v5HlKSCuiXubvN7+IUWAb03rJXEktXc79ZS3xEd2Y0rE7ahZClfi4UG+OzYDM1Ps0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4554
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/perf: Fix OA filtering logic
 for GuC mode
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> With GuC mode of submission, GuC is in control of defining the context id field
> that is part of the OA reports. To filter reports, UMD and KMD must know what sw
> context id was chosen by GuC. There is not interface between KMD and GuC to
> determine this, so read the upper-dword of EXECLIST_STATUS to filter/squash OA
> reports for the specific context.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>


I assume you checked with GuC that this doesn't change as the context is 
running?

With i915/execlist submission mode, we had to ask i915 to pin the 
sw_id/ctx_id.


If that's not the case then filtering is broken.


-Lionel


> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>   drivers/gpu/drm/i915/i915_perf.c    | 141 ++++++++++++++++++++++++----
>   2 files changed, 124 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
> index a390f0813c8b..7111bae759f3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
> @@ -110,6 +110,8 @@ enum {
>   #define XEHP_SW_CTX_ID_WIDTH			16
>   #define XEHP_SW_COUNTER_SHIFT			58
>   #define XEHP_SW_COUNTER_WIDTH			6
> +#define GEN12_GUC_SW_CTX_ID_SHIFT		39
> +#define GEN12_GUC_SW_CTX_ID_WIDTH		16
>   
>   static inline void lrc_runtime_start(struct intel_context *ce)
>   {
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index f3c23fe9ad9c..735244a3aedd 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1233,6 +1233,125 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
>   	return stream->pinned_ctx;
>   }
>   
> +static int
> +__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 ggtt_offset)
> +{
> +	u32 *cs, cmd;
> +
> +	cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
> +	if (GRAPHICS_VER(rq->engine->i915) >= 8)
> +		cmd++;
> +
> +	cs = intel_ring_begin(rq, 4);
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +
> +	*cs++ = cmd;
> +	*cs++ = i915_mmio_reg_offset(reg);
> +	*cs++ = ggtt_offset;
> +	*cs++ = 0;
> +
> +	intel_ring_advance(rq, cs);
> +
> +	return 0;
> +}
> +
> +static int
> +__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
> +{
> +	struct i915_request *rq;
> +	int err;
> +
> +	rq = i915_request_create(ce);
> +	if (IS_ERR(rq))
> +		return PTR_ERR(rq);
> +
> +	i915_request_get(rq);
> +
> +	err = __store_reg_to_mem(rq, reg, ggtt_offset);
> +
> +	i915_request_add(rq);
> +	if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
> +		err = -ETIME;
> +
> +	i915_request_put(rq);
> +
> +	return err;
> +}
> +
> +static int
> +gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
> +{
> +	struct i915_vma *scratch;
> +	u32 *val;
> +	int err;
> +
> +	scratch = __vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 4);
> +	if (IS_ERR(scratch))
> +		return PTR_ERR(scratch);
> +
> +	err = i915_vma_sync(scratch);
> +	if (err)
> +		goto err_scratch;
> +
> +	err = __read_reg(ce, RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
> +			 i915_ggtt_offset(scratch));
> +	if (err)
> +		goto err_scratch;
> +
> +	val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
> +	if (IS_ERR(val)) {
> +		err = PTR_ERR(val);
> +		goto err_scratch;
> +	}
> +
> +	*ctx_id = *val;
> +	i915_gem_object_unpin_map(scratch->obj);
> +
> +err_scratch:
> +	i915_vma_unpin_and_release(&scratch, 0);
> +	return err;
> +}
> +
> +/*
> + * For execlist mode of submission, pick an unused context id
> + * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
> + * XXX_MAX_CONTEXT_HW_ID is used by idle context
> + *
> + * For GuC mode of submission read context id from the upper dword of the
> + * EXECLIST_STATUS register.
> + */
> +static int gen12_get_render_context_id(struct i915_perf_stream *stream)
> +{
> +	u32 ctx_id, mask;
> +	int ret;
> +
> +	if (intel_engine_uses_guc(stream->engine)) {
> +		ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
> +		if (ret)
> +			return ret;
> +
> +		mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
> +			(GEN12_GUC_SW_CTX_ID_SHIFT - 32);
> +	} else if (GRAPHICS_VER_FULL(stream->engine->i915) >= IP_VER(12, 50)) {
> +		ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
> +			(XEHP_SW_CTX_ID_SHIFT - 32);
> +
> +		mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
> +			(XEHP_SW_CTX_ID_SHIFT - 32);
> +	} else {
> +		ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
> +			 (GEN11_SW_CTX_ID_SHIFT - 32);
> +
> +		mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
> +			(GEN11_SW_CTX_ID_SHIFT - 32);
> +	}
> +	stream->specific_ctx_id = ctx_id & mask;
> +	stream->specific_ctx_id_mask = mask;
> +
> +	return 0;
> +}
> +
>   /**
>    * oa_get_render_ctx_id - determine and hold ctx hw id
>    * @stream: An i915-perf stream opened for OA metrics
> @@ -1246,6 +1365,7 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
>   static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   {
>   	struct intel_context *ce;
> +	int ret = 0;
>   
>   	ce = oa_pin_context(stream);
>   	if (IS_ERR(ce))
> @@ -1292,24 +1412,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   
>   	case 11:
>   	case 12:
> -		if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 50)) {
> -			stream->specific_ctx_id_mask =
> -				((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
> -				(XEHP_SW_CTX_ID_SHIFT - 32);
> -			stream->specific_ctx_id =
> -				(XEHP_MAX_CONTEXT_HW_ID - 1) <<
> -				(XEHP_SW_CTX_ID_SHIFT - 32);
> -		} else {
> -			stream->specific_ctx_id_mask =
> -				((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
> -			/*
> -			 * Pick an unused context id
> -			 * 0 - BITS_PER_LONG are used by other contexts
> -			 * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
> -			 */
> -			stream->specific_ctx_id =
> -				(GEN12_MAX_CONTEXT_HW_ID - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
> -		}
> +		ret = gen12_get_render_context_id(stream);
>   		break;
>   
>   	default:
> @@ -1323,7 +1426,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   		stream->specific_ctx_id,
>   		stream->specific_ctx_id_mask);
>   
> -	return 0;
> +	return ret;
>   }
>   
>   /**


