Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B14EB633
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 00:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35F310EEF3;
	Tue, 29 Mar 2022 22:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A754110EEF3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 22:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648594191; x=1680130191;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fBd/d61VQPBhfvCYTDf5rWFsDXu2pu6MbP3NmXrsATw=;
 b=Tv5vwy+Ff16FRwsbvU7pC0zv4dSvudEgMYbW4SAWyPdlZmzs4LgDaFHR
 pfaP2xT24sSzW3WHlBMMguQpS4OUBfDsHwQPF4XOid6/wgaV1BC/4Ul0P
 ZzTz43kEHStkrbt8tsDTF5sA+KPUbhUvV4dUjamPP8t4lc4zj9UvauU/i
 JQYu1QqvP5qTm5k9BzEa7VrGUHSfz9HFhTSPdTcqXi4ZOlzYsVW7f2hrb
 ouMmCaIZG9jQzcg/XjkojKrnReOJrt6fUgIyUqKZsdsre03mkRKa8qXOm
 c+QZ26F3MVL6gnuVC+aZVGveqo6g6d0NItLiwdJnjs/a0db/JXskMzRpu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="258220506"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="258220506"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="585772302"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 29 Mar 2022 15:49:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 15:49:49 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 15:49:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 29 Mar 2022 15:49:48 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 29 Mar 2022 15:49:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cqC0VVc2xbE0g9dKg7aW2qnszt7iaZZ+YhshBL2rtWoK4cpZQqD4OEeMusorxdM1OHVA6aP6yGu/9sgjDfeqAD2TAOQxgayLBQGnmN/lVkWrfoU9FnEuS6l10fGqDu1wV4FQDjnAmrneaHsj351OfNlSfevgsoDTvz3ogjqOFvgLVLMil8/WmIhJWTfnoe41ETbP2sC6KNDMq9NnbQlhh3AMgOH38p4vuOT9XuvQcnCAJOWBg0qb5+lrkVH1QdXcFX0om33oJEtIeLWyCDb7NUH+itPhVHP0mI9ZyQf/UJl4a9dWFZRAvHIeCekk1nEkU/7UiO4ym57tjTM4WpIe0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9csDaPKY3ZpTSfyr7L5nxk1HBQWHsWnTuyjpvVbKxnI=;
 b=f7oz9cwBO9btj3H0M9FCyfq+S9ELbHQk1dbmI/1hmTvywsyesU2p/eWIcLVdoshkwXZI6859PKSitRpEeYpmn2Y+0B7AvV1kqXTGzpvRc66I1q1aESu6SBe9ZSVuqv2UKPRXsD/LcUzxMLx1DnPlioRuZO0vhU0IIE0ZLEohsaJB9t7LdPNQrIPqsoP3mzlymyPzh089qdCtawbIaB31XZPuoMK61jNXavFAe5ADcK5ydLOMQ9mJgz5+4pDyi4mxC6rcSFMmtNyn/Bav4H8e+efOdSzBztQMgkCEvwuwWcxDnIa+QV7n4Q85qOMyn1T+OzmOuuS9XQjDArblG29fVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BY5PR11MB4056.namprd11.prod.outlook.com (2603:10b6:a03:18c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 29 Mar
 2022 22:49:45 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::21e6:3fe8:e859:75b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::21e6:3fe8:e859:75b5%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 22:49:45 +0000
Message-ID: <1c52405c-f75b-4811-36e0-7bf433bb5f3d@intel.com>
Date: Tue, 29 Mar 2022 15:49:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-GB
To: Jordan Justen <jordan.l.justen@intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
References: <20220325002115.103036-1-jordan.l.justen@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220325002115.103036-1-jordan.l.justen@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:303:8f::18) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d7a9101-2064-4ecc-3192-08da11d6693f
X-MS-TrafficTypeDiagnostic: BY5PR11MB4056:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB4056D9B3EAC9BFC344303579BD1E9@BY5PR11MB4056.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zy9TwFA4gw1L1VZJOmGNCF3ZLf0Om1/J2iDnCPkcYeJSqIoxkdXnhBvbh+7L7Ua3I9JsWx7KyOCUzgqRmyfszxElNe57j7t9gfoFQTTxTbFNkwIOAUsZoTrjCHYr9lh0n1uaTKenEn+dt+GZGZxLx0c2fZglLVYPiT5pw+WSizBkfI71JkEpnwy2O3hs3VjjrujAaxx5alhp39rSNarCX18csSy9Fq1LSVJMY7XuEGDISl4cYT3nwrzc9Ps0QoUPHqu52mn1iYaL4vJUGPVlXl9PWJ4giG7zSOikNmVvW7opHTbMDbGxRhIntEyl+qxVu8JVh4xqiVyc7VfsRwLhbFWShqO4QLST9VL/O3LpljkLPTHoQeOVDGyYn6RnsndkbOU4BV5wXJiU8G2+/6867EwSO7GWBkGvCXIBxK9S8WktYdx3PeBptr5/1eYB3btlAdSwBRTvDZcQiq+3RSf56EU7TtF5bespbkBYAn+D7GMRTOnXR8ZbB11L3wc63bBdSAWs8Sc2LKArUJg1NGoU9l1RtYVeDj/Ap4duZu9wj8wb8zHiJ4/f9gD/t2B9KCN9rEPekl84I0X4Efnddk4nauR+OknZq5XKl/7fuHTmFWjm3yb2cXTN6q02ASQUAtHGN96oOxvPWcqYby+ehTT33x/ZbR9UsIGh6qGzWPR2NzM0T83Mu92q62QqRinUmMdbFZn57F25eg77102EZ8wZgqLA9srcQJfibwATi+0RE761y4h0fHZsNiztSOdBR4ej
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(186003)(2616005)(38100700002)(66476007)(82960400001)(5660300002)(8676002)(66556008)(36756003)(2906002)(4326008)(8936002)(31686004)(26005)(110136005)(508600001)(66946007)(54906003)(53546011)(316002)(6666004)(31696002)(86362001)(6512007)(6506007)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0lMNFlEL052bVFHeFlDOGgxQm1EbS9VanloZXU4WENvcXZIenF2VUpTUDNL?=
 =?utf-8?B?Rkd2YW5Tc3RwbzVCWkRHdkNPMGNyZC9PcFlFUnJmT2FIZWxsMWFlOHVtYW92?=
 =?utf-8?B?OUIzd3R0cENWVmlma1lvTFNpY1FYLzI5Z2pRaU5NWm5NaG5qa1RYc0FMOVpZ?=
 =?utf-8?B?enZBSEZEcmltakFlMnYyODlrUWdsRDZrK1gwNWs3QUFGd3BpN2k4RW9OOW8w?=
 =?utf-8?B?Q2hYQTlvS1p1eUhMUnBla20yWFErbUpCWk5EbnNUM29GTDJDUFVLVENPai95?=
 =?utf-8?B?WGNLelFHdHQrWlBVWXV2ckRzdkNkZnlxb0V4dEtOK0IrT25ONnlNR2h5OUt1?=
 =?utf-8?B?ZmVPYzg0eGwzdTdUMjhOWW5XOUdjRkNEWXc0M1BRNlM5TnMrb3oxSE9xaFd2?=
 =?utf-8?B?SUtQdkRWS3o4enN1d2I3UnJtZ3ZMOUFJVWNyZDhOTEc1aGZkeC8vTDZjTWFB?=
 =?utf-8?B?RnZOSUtLbkpTbGF3THMzV0czRlgzckZoNGNJRTA5VVVvTUx5c3d0Z3ZzT3NR?=
 =?utf-8?B?eDBrM2FXbEV3UjFiT3lMUGJaWGo4by8vRFRXRnhVRWtFeFdpeENFcDV2dG96?=
 =?utf-8?B?Z05pZ0Z4emRiRkNGWlN4eHhQdFVYNVhOeTRuMEJTNktTWkF6OHRUaXRnQ0FH?=
 =?utf-8?B?L1dJTXpKRG0rTXVXbGpvL3JqRUpxamRvMHNIaUV6d29tRkRyYlpHR3VTZ0FZ?=
 =?utf-8?B?YllUcVljTlY4aFZBektqNURxOE1rTzJ6ZU9aVTFEdjVVdXJaT3hLZWtnSlEv?=
 =?utf-8?B?ZHVtbHdxbkdpUkRteTFSSEtVS2FqdFZqTHNTVUwzMjZSUVVybjk2eTF4NWhP?=
 =?utf-8?B?MGM0bzd4WENJTy9LTzAwUlZJOHdQTkx2YlhGSDJLSGUwRm1wMVBuNGVhVFRH?=
 =?utf-8?B?eWVDTDRzU3cvdnBMWllHWWdqdFJ3NGRXeFZjdWxuYUZHQjhDWXBGdzc3dEU3?=
 =?utf-8?B?a3kvNWZTOXFUVDRyTGJXV2Vqc2htMHRIeDFoRW4vWGtlRUhqalY3eGZrTllE?=
 =?utf-8?B?ODRxbFBXWlgrL3dSQjh2OEErcGtwelJqRm5aaHFvSlVuY1ptTWZkaUZMdFV4?=
 =?utf-8?B?a1ZQbG5BWjBmY2tQWVk4bzlFL1o3TUwzOE43ekUveEhTUzJoMXA3M0NaMkxK?=
 =?utf-8?B?a21tNmc2VGh4ZzJtZnBTUGEyZTVjTmpwWTg3Vk9ZUEFTblRSZ3NlTmhheEhk?=
 =?utf-8?B?YUpqeWV6ZjJLMDc5TXlzc2o0aTNBU2h4R2V3NHlIYlRjWHlyb3hvemRRTkEv?=
 =?utf-8?B?VDNrTXFWVFhRdGczeldpcStFYXprSkRNUEZRbFByM2ZOb0MvTFlzdWRockN1?=
 =?utf-8?B?QmttTC9ENldXV1VHcU1ZWCtieUlvOEpPdEtZTEo1bFBZMnFtelFOMlEvd2ll?=
 =?utf-8?B?dVZNdmZSNENLdGs0YzJ5K0FGYlNvaUdKT2gwV0dQZkMzUXNBd2w1bFV6Wkg0?=
 =?utf-8?B?UWdPQmgvcEU4WXNBTVk4cE9QRHc5VlpjSUpvZEEwK0YydnYxRy91M0tPSThU?=
 =?utf-8?B?UzlsRUd3b0Y5dGZPdUVoVEs0Z0pLSzdMQWxnN0V1MHB0TmhaZzlJNVFjMW13?=
 =?utf-8?B?N1pBNzgrU2VVdnlIc2NYenFkZ1BQdUp6VFpmbjlQa2NBUTNzSjltTzF2YUpv?=
 =?utf-8?B?cGxGL0VvbTdScUtQWFN4U0VFamppVmtKU3pSK1ZTRnBNU0hITlQrbWlCUEZn?=
 =?utf-8?B?dklHOWRKRmZOakdFUDVUcHY1ZE45R1hMUVdVWHZLVTR5djV5dWlmUUxKeGNL?=
 =?utf-8?B?TGZpRm1pTWtoZ3F2cmQ0emFDK0l4ZnNJYUlDTGp1TTdPYS81bEZiWFdtcjBU?=
 =?utf-8?B?VU9lNTRzQ1pNN2plUm8zQndFMjkyU09PUWZNNTZIK3BmQ2xIS2RvUDdiUW80?=
 =?utf-8?B?QzlpTWttNWQ4dW1WbklZSkxTM1d5MHhCSWRTbEVMZzVxSEhnNitSNG85TmtU?=
 =?utf-8?B?VVd3WFBMSXVrellWcmdJdXoyY01xU2RRb3NYa3IxaHVWWEtWSkxWRWxYMEsz?=
 =?utf-8?B?d2Nqd2w0dE1sQ05FaEJnS2w5b3dWTW9TaVgrSkx1NXVFZW84V2ZPQVl1Y1lq?=
 =?utf-8?B?ZGNtQ0JtMVZSY3JZVGF5cWY1UFE2RUJWVG5rdGFzNGtyNU1pUjRja2xpMVZJ?=
 =?utf-8?B?UEpZL1FxanVXdTdLdU9qUWU5WFY3aVJwbmN5eEFBUjVRcHlaNkNuaW1ZK3Nn?=
 =?utf-8?B?RnpHTWdhRU9wdDV0Tko5VGNrUUpTYWRWaTdqUHFxWHFzQkFNVktMZzlHUWdE?=
 =?utf-8?B?SlpQUVF5QmV2SWhlL1oyVnFhaXl4VEdqcFM3VEpoZGlRenQ4NDhCeERXRCt6?=
 =?utf-8?B?aHVWK0NYV2JwWDdUOUpHcS9ub2xMbW5LcG5meHlEUmUvMUl2MWxTb0luMTZG?=
 =?utf-8?Q?NeVvx9DtRO/PA4fI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d7a9101-2064-4ecc-3192-08da11d6693f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 22:49:45.2767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UfTiNE69OWprO2yZVXFi2kigSw/1qi7/F4gPpB6xHbwqhcVXQTi0mBZRzScJqvNpWAKjN83fu9TGx6GMBu5FOysCNgd6slPI/0bIstv0bDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4056
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwconfig: Add DG2 support
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 3/24/2022 17:21, Jordan Justen wrote:
> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> DG2 support for hwconfig tables varies by both SKU and stepping.
>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Tested-by: Jordan Justen <jordan.l.justen@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> index e0f65bdd1c84..b34833cca44a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> @@ -96,6 +96,8 @@ static bool has_table(struct drm_i915_private *i915)
>   {
>   	if (IS_ALDERLAKE_P(i915))
>   		return true;
> +	if (IS_DG2_G11(i915) || IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A2, STEP_FOREVER))
This should just be 'IS_DG2()'.

John.

> +		return true;
>   
>   	return false;
>   }

