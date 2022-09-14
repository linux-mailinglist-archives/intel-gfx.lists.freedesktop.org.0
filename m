Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032455B9100
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 01:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D797310E132;
	Wed, 14 Sep 2022 23:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8270710E133
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 23:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663198675; x=1694734675;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QNpeBTzg/vA7VSYtQrSb0YSaoOoicy0VbsRRbeqh9zg=;
 b=GYrhl39kGoJu9ZinOFdThXYPL5UgXG8etsgYNjs1N7Xt9//WVoGtiN5P
 /kK8K6rrI5D9jeTyWoLFbe8YtmXkNO+YnzIkzHTRbXpxKcJgAvHOE8H4a
 hJqez4m3o/nCYKAFGuHX31Ik65rghHFe73l3yvmeC3jN44kNZNswxpEqn
 e1sM7ah87B10+gzt9AVhllXCMABCXNWgigRjd4PV+ghbcQEM+XnlPCWiW
 GtLdQr/pjqTuM5/+haoHTgYH111HhHXLtKU2yh7OWUe7XMinZWh+GtUyp
 7GpT8f52tslVnLH8tf1sATxmhhAVH0Der1WTJ5yVpZvP2D/3By8RihySG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324824226"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="324824226"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 16:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="568201043"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2022 16:37:47 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:37:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:37:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 16:37:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 16:37:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FGsW5VufUyfatwhVWL/h46QGejkBBXgpQv52QK51nJiTpc830AutcV0OWlgCAhPQJ7RzWpxty2mRd847HoHdKMCXjeJw9MWiSOVbbzeuB9KiuI5QklGjJ7kRuMT1P2oAKGZJ9fdAl4WUQ0Yp6letFhEk2WVrFVtNkd40la5dDns/4y0N5HD/TR5TKe4bJsvPHiFK11UEmxexPvx550GkjA3oyTZhMwoV3ZZ7CsVVAXy03xPKuh+smcxm+jE2wTKNGSPqZEFss15x3hP/QgjgGouuQ8hKGgSV7VBkNWg1afGkEX6FJ/fSyMi7nc0JQvrY+QQVYFeQ/fjQ1jQFmiv8Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNpeBTzg/vA7VSYtQrSb0YSaoOoicy0VbsRRbeqh9zg=;
 b=XyQExf1D+aXAvGn+aOmyBQTacakDZ9Hr/hnIg0TjzPZsFfI9Mx9JMLip1awyt1kBq9pyCfBaHyMQgbnpqjEwe63MTVpEQQ7jycqEG9OeE5mivj3X0ftRN99dlsf/+6eeetC6gFhwoVSEEgBxTmRoJtuDoDGXAPesE+2UG3GBs4dg1ex4j6+nUHsnCd0JCS9DOeFnht39M3BKhOM6ZqLJrGIy7hW6k7a6PewDhGbF2nYCoHal/NNx2eVRokRijh0RzIMmVDGPUgVSqBXHBWkT8GULUgFqP10wVdC2n+m65MOPYoLQo7KPGEAYmrUzeoN03VpiW/74sdD7x0bGWK1b+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Wed, 14 Sep 2022 23:37:44 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 23:37:44 +0000
Date: Wed, 14 Sep 2022 16:37:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyJlxlqHxrcvQXCz@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <87mtb85cvb.wl-ashutosh.dixit@intel.com>
 <87bkrk55u6.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87bkrk55u6.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0265.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::30) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM4PR11MB5971:EE_
X-MS-Office365-Filtering-Correlation-Id: e521a728-ddf1-4276-0f78-08da96aa1f55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 93r2VAIWpAZH5Q8KsRW8exECapqD7L6u8pn9FL0c+8ucFaEDS7BGeJjxwiiBVQjNG0F6oo1O0HpebAj28S9T9Tjfc2x1ZrHNmRBuOjGS8IFAXow4qcCAEqS6ftxT7X3kQc8jaP9L71RB+3yM44tle7cGr/LTxbowXEkPe8MT64/4iEXK/cMhiduGN0JoUMpzX3mrKiP1g3MMekoyGuowqXMmAlGj6me6Ps8O7mC7megDcvb2QwTA5f//uudWWHVlA8XWmatPvmCv0XAFw1HtBZKmyRIB82fNdK1cy7HR7M6BZChczC4eNqPUWKKthXV93RuGcCVz+5gHYTyyueTkaM+3S6WCLdyTJOxUJZd9Eu33LlTVlgqr1Bb7WMbdmLymqb5kM4lDd4mHwYW2afy4fXWRqE7FGDw/Ht0RL1JppCASKXiAdMnTu+sJ7nusxeNJlXxItCPoYgZJO8BvAmDzDcjm5i+YvpJIZMZWu2N5rsrh6j1JgbEmbrqFGPPjl+dPLTEBJ10vpfATIqjWTjkO3mLBGhUmMsGwbBhh/Y9Lr47bJsYHncWlEZoa/wnfphp29KwNEwct5oP0pKtFbGXFLaqK5AtEk0fvMMXEvOMaXL/OaixOSBJyQVNXK8zaXoSwAppcPW0Y4hwwysr5QMyi893IrTiUGw0vO4ehkkhnQxeR1K8aapXmBTOjhdb7OLFDI0uKECjtlKhdZGkNaywfyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(346002)(396003)(136003)(376002)(366004)(451199015)(33716001)(66946007)(186003)(8676002)(66476007)(5660300002)(478600001)(66556008)(82960400001)(6862004)(38100700002)(8936002)(86362001)(6512007)(41300700001)(107886003)(6486002)(2906002)(6506007)(4326008)(26005)(316002)(6636002)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnZlNGdDZ1d0YUdRU1pBVmE4ZDVacVNJYlZFOUpHcTZXQU9CK0JGSXNzK01L?=
 =?utf-8?B?WEFrbVVaNzE4OGNvVzVVTnZ4VHpXZXB2UVFGOUxUT01iSlBKOWJHeW10aTNF?=
 =?utf-8?B?YTBOZFVWWVAvWlV4aEF2U3MyZ2dvL2NNOWdyT0h1NDc2dWE2U3BFcit4WGlw?=
 =?utf-8?B?MTYvYzduSGZpeVBWZnFjWXFhektBcDlNbzVuRWtNMHQ3WXpzdm1udGk4emlL?=
 =?utf-8?B?UE5GSFU2MGFDWndjb0NtRTRjanZlU0VrNWRtMDEvbjVLOGJOMW1kQWZ5WHk5?=
 =?utf-8?B?K1dVU2ZPNUxIUmFkK3Z6STRSOEVYY2JhMWpCeUU2azFhV3IyMkxtWHdhd1dW?=
 =?utf-8?B?S1BDT0RQUWdYSFFUY3RwVEs2S1J2ZVVON1U0M29BWk1yWXo1TS9qb3pCcnBX?=
 =?utf-8?B?L3VsVUJuK0JSbHdCakNadWZ5N2JoU0Q2TDBHTzNJUkc2UjBJelVkMW5oSzlk?=
 =?utf-8?B?RldYMnFHQTlUTllMZnRVSS9FWlBURzBtV2VkWmt3R05RUEE1MFZRaVdWenc0?=
 =?utf-8?B?T1dDUWNRN0Vxc3MxdDhoRURmM2ZZYnp3cStGUWt0OUxsVWZ6dXl0QytQajV6?=
 =?utf-8?B?UFpxQzNnYkVTc3F0M3lvVmNaWjlDOWdRbTJqQlB6OUFxdjNrSEh1WHdSSS9v?=
 =?utf-8?B?SVBsaUEyRTd1V3E3djVPNHhrUmkyZGk1eUQxMXJ5STJXV2tCRkdESWJIOVVM?=
 =?utf-8?B?UlRvUC9JU21RTXVyQmc0cjM3T28zMUd2Q0srVFJlS0RaNW81dy9oM3FGUlZX?=
 =?utf-8?B?Szg1RU00MUZlYzRubjZaMys5dlArZDQ2eTNvcTRiNGZjZmNsVjBzVjRONHpH?=
 =?utf-8?B?eExwRWROS2NOa0NNeGRRMHVxS0NFN3dKL1VEVms0RjA2eENxQVFKRlJNRGNL?=
 =?utf-8?B?K3hLaXFiWXFIVHNJc2hzNmJ5TFMwUmNXM01BUVptK3hSNEtFalpPekc4WDF3?=
 =?utf-8?B?RWhZYUhyZ2swYkRmOGovNHlDVVI5Y01OU2NZU0RheW9rS1ZyTGNDbFE3TW9p?=
 =?utf-8?B?NHV0SldIby8vK0lKdWxPM2haeUdpL1RUdmhxS3JDY0RpeVdFeTBhYXV4Vi9w?=
 =?utf-8?B?MHp6bGlSRm9yY0JHTU5uWSs3QnJBd25CQ3N5YUl1bEJ5LzUzbnpHckFPYWJa?=
 =?utf-8?B?L0NGN3NPQlBWRms5SktKVHh6NjhIMUowUE8zN3VEamxWeGhSNTg1Vkp1Wmox?=
 =?utf-8?B?ME8wR3BxU0g5ODV1VFM1TC85L0JLSTJKOXA1WlIzNmdRTzdVQWZ6eXIzZ0JS?=
 =?utf-8?B?Y1BXcWdGbFJ5YmdLT0QycTlYUFdGNDNrRTVKNFJlVTMwUkV0b0MvNWRDY2Ja?=
 =?utf-8?B?bUs0SlBCY2h1RlFGaVk1ZlN6bWl0RnFlWVBKOGk4dmRhcklBNmR5SGxzZkZH?=
 =?utf-8?B?Q08xYXFEakJMOWJTd25lbVJhNlJWcW80azVPTU0xOUJ2TDB0MXhpZmx4Y1Z6?=
 =?utf-8?B?cXJjdE9XM0ZqeStrcHZZaDB4aCt1SzEreGI2M1hzSEtvRFpxR1RSNzNtb24r?=
 =?utf-8?B?L3J0NC9BeTZTejdwVE5jbDRXSGJFMjY0VFBxRW5ab3hNMDZSejRXNkhOdkla?=
 =?utf-8?B?ZURDVmxRRmxyQmlDcXpRZW12K3BRQXJmMWZDTWxJRUdVRTJCTkh0dTFGZHYr?=
 =?utf-8?B?QUozWjZiRUptUXpzMEpteStFTnh1V3RXV1lqVFIvTTdYM2lKMGZHalVGTHFq?=
 =?utf-8?B?V2VzL2d5UDRkREtoMGtwK1pvK3Q5QjRpcVpsL3piZjdocFdHdXN6Q0lQc3Ex?=
 =?utf-8?B?N3ZFK2FVSnNPTWtaWm1uSnRDTGx3bHlnSFRXdmV5czZnQmVDOGtHazI4anQx?=
 =?utf-8?B?eWpzMkFWVEcwTHZXNy9MUDdvdXF3bkt0VjM2RGV4ZDRVcnN2dXFiVW9Hc0ZX?=
 =?utf-8?B?bUVqd2Y1M01lS0lDOHRTL2Q5MmcxVEFlOFBZZ1czY3VrRC80Y0Y3dUkrVEor?=
 =?utf-8?B?eGlMdCtydUlwVXk1NXBpMUxIOThVd00yK21XdTVNd2xwWkREQUZaeXZCNlEy?=
 =?utf-8?B?cEtiQU5CVXB2emtmN1NsbnZJNGNqK1ZBd3kxVjFrSTdnYkJaMjhrb0hYZzlp?=
 =?utf-8?B?WHI5Q1AxY21rbVVtdzhIZzZYcUxteWt0aUMyUnFUT01mM0FHTnJRbkNjeTRD?=
 =?utf-8?B?b2d4OTNhVnVJb05RZ2xRdVNsNEJqcVRTZm5md1lYN3dGUmxjWi90T3pFempB?=
 =?utf-8?Q?Q0cvAcO6OfKXyWwMlUEFbPo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e521a728-ddf1-4276-0f78-08da96aa1f55
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 23:37:44.1402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiQoAxSJOmEdcTffR1PDMImyH+cE+1SRoGUemMCusPiCUZaDWjoLp1jxxmUf8N1Q+UvsQkJNSIj586PlJTnb6Fd0NZMsVsSmZaY2wJQG7Gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5971
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 12, 2022 at 08:08:33PM -0700, Dixit, Ashutosh wrote:
>On Fri, 09 Sep 2022 16:47:36 -0700, Dixit, Ashutosh wrote:
>>
>> On Tue, 23 Aug 2022 13:41:37 -0700, Umesh Nerlige Ramappa wrote:
>> >
>>
>> Hi Umesh,
>>
>> > With GuC mode of submission, GuC is in control of defining the context id field
>> > that is part of the OA reports. To filter reports, UMD and KMD must know what sw
>> > context id was chosen by GuC. There is not interface between KMD and GuC to
>> > determine this, so read the upper-dword of EXECLIST_STATUS to filter/squash OA
>> > reports for the specific context.
>>
>> Do you think it is worth defining an interface for GuC to return the sw
>> ctx_id it will be using for a ctx, say at ctx registration time?
>
>Umesh, I came across these in GuC documentation:
>
>guc_pcv1_context_parameters_set_h2g_data_t::context_id
>guc_pcv2_context_parameters_set_h2g_data_t::context_id
>
>Also in the code we have in prepare_context_registration_info_v70 'ctx_id =
>ce->guc_id.id' which seems to be assigned in new_guc_id. So wondering if
>this is what we need and we already have it?

this id is different from what GuC programs into the lrca.

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
