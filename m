Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 674C86C9F89
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 11:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5052410E344;
	Mon, 27 Mar 2023 09:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1992F10E344
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 09:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679909564; x=1711445564;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2HY4hwPNnwQB+WFLQEhREx/AKavay4/Y9xYLgN7NsCI=;
 b=IQt7+jjbqNbgzA7OxCyug1Pq2ItSfOtzDsHFGeLFIdnnjACfre3xNN6j
 9l5t85sLiArFPepJF4rZZVOzDIb1amyyfwWczwXtniq6Bi1qnFDCYGWR2
 aJROUI2cbpYU5ttbWWZZQrvRfy6sCjGA2E/6yrwMLGH7mouN8WMsRf4un
 82FGDgKJtkaokjag56QvL2p/lVlEKMwJQ0BAJ9fooIi92Vak4zdjh096n
 UxQns3DJafkET1JWC6kj6miHL8OlGuFHxzOm3MVSco4VG7CTaT/I3bcgv
 lhO5ssg0sWXxiGSRoiRKyM9rss0zwHxuIADjCoL1ab2mPpKcWjGv111Qw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="319878979"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="319878979"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 02:32:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="633554035"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="633554035"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 27 Mar 2023 02:32:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 02:32:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 02:32:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 02:32:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 02:32:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=THdEzkauZq3wbRmXUWKHgYm/LpDnckJLB0E4aKTaNd1pWiClGO1cMuQaK4w3yyvvFvze6kc7A6heqxhsKMFQ2o6IOjuuN8O3/fjAO0lK1D3ImoZ86rrG6LkToD7EWtK7tdO4wSpV9WhPaSa2l5KQ/PnSiq7clBJSTZux7Bc19hFv7irgXRI61FT4xDu8qnehzZYM6zSDPs+TGxkBzBlKZPNRj3xDk5YAfEKqwSm1vqzdpVymXNbi0W5jqtNm2fvrzBNSLlzuLsatYFkfzla5dquvbyaX7/p+0Nz56138NKFosW6Ea7FPWophQFCipmwJZ2tXcTXIcBA/5DFIBf7HYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mdv3kwc2/cpicvfzuXMkXvY6zU04CsUFJ6MSk6Dd5tI=;
 b=VpuibAYaseBmwX1IpFV0uJa+BFhWtYCgfn6YfE4qfaY7PRmqoLzbVyo04AJtZFvK4Y+Is8AV5jL5Kwa/Z88lWDWvBa9SO3+Qm4COjtnZ8ArudA1QOalp7B/T05eXoBeEqvHKGddnBsqoV4vAzECA85bjbhL81YOH5IfXG9qu/4brzdhhTdtevj+8cgxPwBjmU8r7fgKVfjS7Pr1TfbItnTM0gkugU/oQ0/0na32rJehrD8EhF1vRucd1V31lRWclILk+8ZMFr+QR+TikckEO/OVxZ8Ch/H2DY0u7YhYFhm4tyUzSH/BD+Jo9dGPefSobh+3VLsvEXYDDaLUSF59v/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 09:32:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2%3]) with mapi id 15.20.6222.030; Mon, 27 Mar 2023
 09:32:40 +0000
Message-ID: <17a8aceb-bc16-1993-519a-6e48e37790a3@intel.com>
Date: Mon, 27 Mar 2023 15:02:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230327064217.24033-1-stanislav.lisovskiy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230327064217.24033-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0158.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6391:EE_
X-MS-Office365-Filtering-Correlation-Id: 8968f704-8fef-44a8-7691-08db2ea6353e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bC0ZhHCWbAhF9MMkKy0JPN2bVC3JYLXgN+/JuAaFssU+rvYaafCgkVNUZOjrvZL+Z7RbdBepjhxWA8xFR4k2E52Q6vNWhPvM6Nvf8eWAVOUUQW5GKYSb3aWncW953CcTylWzjcUN4vnueKnndrHQkK4SzEmHEbQLsySbmU9xjAcH6ueBS1OEsmjesgJnvGXc2SntR07T97YRImX+gNo87MoR9KH/0R5N4ql1uIJeJjImULEgu96Nc62+xW9U+2zAWaW4dfe8KplxcKJdXWuwA7KLWimxFapKMofJj47WDCtpwFw9BgC7/Ybss30B+gMZjzk4tU2dQWP/iWX23+xb582SkUVfYsOu3VaP0cKfsiu2drQ4W9saOVCRPWrMM3tUnWW/QRloAmCSku7p0XYIGtxcHKgipW5Tu4geruoMX74eaw5HcCKzy6O0jGIaiLESmjAS1O1e7vWOwBNpGkMRHthJaUciiKko+GM2OOXh0tLCNAk5dnrJnsBLd3hHj33xFNR1AVKK23eZGewX5aTNH7kjrBDEor3ynScquQOBSd0uiGMNXeDvPFeN1mqqrae/0N0Wfi38z7prJ/xWWLDZ2F5haPf2JH6251WQOr3NL9xYQ/bVJQKE6HTaMmkI7VWLAp2E3bAj+S4cxAcUsb045Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199021)(31696002)(86362001)(36756003)(2906002)(31686004)(26005)(6486002)(6666004)(107886003)(83380400001)(2616005)(478600001)(4326008)(316002)(82960400001)(66556008)(66476007)(8676002)(66946007)(6512007)(186003)(55236004)(6506007)(53546011)(8936002)(5660300002)(41300700001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ai9odGxFQytDTWVkbnJ2aE11ekwxaE41TUhTWHVYeTJZcENkSm5jbWlzV1VK?=
 =?utf-8?B?Zi9tQmdla2FFMHJlcmg5WFo0d2VNbEo0TXRsN0pYL0xIYzhpWXhDM0k0VlZl?=
 =?utf-8?B?WS83enBRZGwzRWJWK3U4blVZSVYrM1lDTDl4MldHSFg4RVVHRy9RcW4zTjIw?=
 =?utf-8?B?d013N0tHY2ZNck56N0U0bzF4TWlIOWRHZFp6M29QVGI1cGptU290b0dVN0Z6?=
 =?utf-8?B?aG5hcGxVcHZJY3Q4NUVyOCtBc1dWeWJJUTJReGw2Y1g3bTlaTTl2TmtxWUVo?=
 =?utf-8?B?R0V5cENHbDhqYnRlSy9DeGQvdjFYc2JBUkV4OFlMRkVoc0tRaGJ5UnpEUE4y?=
 =?utf-8?B?SXdzaE9WN0wvM1Q2N2ZaY2h3TzJhRWJnNW9XcC80STE5M2RMQVgvdytmT2px?=
 =?utf-8?B?L0hJTzRwVEpqRlN3QWdzMFlpeHY5VzhPQitiZEczZXZpcjc1K0VWS2FLUFJI?=
 =?utf-8?B?RG5qVjAzWmVHMUxjaFB2YUM4R1J2YVltdHNtQzRxUkFXdDYwaVdPUENiNlpI?=
 =?utf-8?B?ZnF5ZmNIN3BmU0plaHUyS1hMQUp5NnBIQ1pzd3VhaE8xUDh6RE5icW9VMFFa?=
 =?utf-8?B?K0tKb3pyS3JGYytka25YanY5K3FyUjFpcHNMbjlUMmRhM3FwdUlrcWtnVXZW?=
 =?utf-8?B?UUZlQVJqS3B3V1ZwNVZjbVNCY0pna2ZTR2R1cit6bmllQktMTmtvYS9jS3Uw?=
 =?utf-8?B?VUh3QzQ4Ty8wU2tKcjduSUVrdUlwa01nem1qWTRROG9MeFF6TDA2bVBFNGNq?=
 =?utf-8?B?STdkL1lRdlhMMjFIZDR1ejJBV3ZQU0JTVTFLTGxkMEp4OVhEcVZOemNQRy90?=
 =?utf-8?B?MGNsRzJDSWJxckNjVkxWK1NzRm5tQUxmSDMvVUUzVUNKN29iT05aN3RvOG9w?=
 =?utf-8?B?a2J4UDc4WkJOSXdrZllwUU84Q0thUXIvWVo3a2w2cS9JUit4WlRrY3J1ZFJu?=
 =?utf-8?B?b2ZVZTZIdFhBWW5HMW5vYzJEblU0aWFia1FiTmhpNFU2cmwzMEFiamgvTGJL?=
 =?utf-8?B?OXlYVE9kZDMrYWlLMVhpcktDTGZZdUwwNGZha3pRYm1xdDg4TDFQZkNCamQ4?=
 =?utf-8?B?bUJFYUI3bjBsYS80NnUzdjhLSXJ6RjNwVVZkMWdPVGpBWlY2cUkyVnVtMkYv?=
 =?utf-8?B?R3oxQitWa0VOVTdoNXlkcmxqWnVUK2VrN2RlK1VldUx6SGlnOTgvbXgyYXRU?=
 =?utf-8?B?c3JhNkhuS3pVZlMrbjNCT2Z2cnVMVXpyWG9UbkNVd2U4cmFERElHMjduc1lx?=
 =?utf-8?B?STUvUkl0VmtqQTQ3NXlMTlgxQk0yeFVsYno5d3dMV1IycHJyQVFKb1RhNHhU?=
 =?utf-8?B?dEppSFhBb2xWVnliZ1RNaWxmTU0xVXBqQ2Fhb1IvLzhScUpZeWRoWTF6bU5r?=
 =?utf-8?B?bDlEWk8wMzBrVkdJZmtHK3hselIzdm5acjAvWFJSTk9XV1NtSm5GWjVvZ2cx?=
 =?utf-8?B?SEt5NkRLZm1aQ2pSSzQwYzJ1NDJ2S0tOTFM4WmY0WFlXQm9kQ01MUVpiOTRH?=
 =?utf-8?B?cGEyQ29OSm1wTnd0dkZxK2pCaDN5RzQxM2o0ZXBYd3R0Q1NNQUN5cytNVVZm?=
 =?utf-8?B?TkNvNUJWcHhBenpvRmtyblZYcCtQbGJ4SjgvMFI0a2J3WmUwbEhRY09KSDNo?=
 =?utf-8?B?RjVpRFliOFdjTGhYLzJpTVRqTVJBamJoT2dYcHNmQWZJQkJVN1BHeDJWZ3h5?=
 =?utf-8?B?VHRScVM4WHdzdHZaNWNwMGZoL1pqKzBlTjNVTGs4NDVFVEZqWUNkdXBBYzdi?=
 =?utf-8?B?SHBhb2VmTWQ2SXVCUEE5REZZWDdCMmEwVkhTck8vc2VBalhWNEY1aWVnS3dY?=
 =?utf-8?B?WWE1WUFjd0d6MTkwbTdHT1B4TXNYYUhNZ0VFNllNVXdhZ3dOak04UC9qMkVh?=
 =?utf-8?B?bVVVaHVQMW4yMUQ3OW1PYVlEWERpOUxlNUxQVlZjcEhCRXJtb21VSTFOSzl0?=
 =?utf-8?B?eUtVUytnUTBIN0xFMXBUYlY0R3hDWHBlai9jQjUwSmxJZVkvc05ra280WXhO?=
 =?utf-8?B?YjBZWFAwV2VOekJ5L1BTZHREOW55Wm5ldjdGdkhIUUZCeVpGais5Vy9LMlQ3?=
 =?utf-8?B?RFlhSVdpNWRXVmtCRUtRQWlBNzF6YkEzK1Y4OFM4bWZHRmx2OTdhNkd6c0VL?=
 =?utf-8?B?OTFmRmowNUFRcS9WU2VkUkxRcXBpbFd4RnFtSUlkWjBDb0psRUlLemRyQXNt?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8968f704-8fef-44a8-7691-08db2ea6353e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 09:32:39.9436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ha+A/fV73JM4/oeg58YiO+XX+XuYfqI6ag6gAVmWPoHZUqlJ/7Hz4NRSQVHf5qsWYAkqWF4G5ZQ+gJli6hEJc7IskLPX9TZj/m8vGWTTuG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6391
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use compressed bpp when
 calculating m/n value for DP MST DSC
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change looks good to me. I think it will be good to add Fixes tag.

Regards,

Ankit

On 3/27/2023 12:12 PM, Stanislav Lisovskiy wrote:
> For obvious reasons, we use compressed bpp instead of pipe bpp for
> DSC DP SST case. Lets be consistent and use compressed bpp instead of
> pipe bpp, also in DP MST DSC case.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a860cbc5dbea..c3e8db943e9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -232,7 +232,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>   			return slots;
>   	}
>   
> -	intel_link_compute_m_n(crtc_state->pipe_bpp,
> +	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
>   			       crtc_state->lane_count,
>   			       adjusted_mode->crtc_clock,
>   			       crtc_state->port_clock,
