Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FBC699B61
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 18:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F2E410E33C;
	Thu, 16 Feb 2023 17:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B2410E33C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 17:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676569069; x=1708105069;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cRUstPzoWopL+BDQ4Q3dqtMrNUcVtDl45igVxwXA4mY=;
 b=ZO9jZWqrIpqUjv/CZkUX7H5bNVcgvTw9Co+7KSUdaVYnMF4wGwWhQUfd
 E45sJeQQDVfpiiTSGZ0iXiy/aBKC+dd+ImZ/CbD5uwHnMsbHY7g9cXS3U
 GhM6AlJ0XPNiaTUp2bRsM6KH1kZqPXJAvC1wmLtM7f0FZK+yfAajG1djK
 ZQeHBPJGTj6kH4Opbw76GzSY97RQmQjRfyAtzmEb0t0+xFkZljcExfMxB
 V1r1D2lDQTiiSmZu6Ew8t2EUPcUYWjOk/JRgU/3A4kv6sGmt8j6UDiBSW
 F9AzYsgHeLoJKHnoirPZEHVEQTPj1Guusp113AVrOwT5lVxb4kLVxElK5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="329504587"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="329504587"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 09:37:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="670199464"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="670199464"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 16 Feb 2023 09:37:48 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 09:37:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 09:37:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 09:37:47 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 09:37:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YUPKLAkWDufkxKUKRHky3rgS50S7afd8EGRK+c4eVK5+CuQtUumn9Inmwl+z2QTNmHhKqJ2jwfYGizgW6+Fm2EpQ+z+d+eGGyJUjC0PpNIslwipANPpsOZPZzDaHCyGSNZqohVXyX2lhpQ+fYu6+NyAByCFO2znqBb7APpFK6QQS2B086Dfci5DxFcDZ0TSYk9+hgXC7axIV6RsU2ySig1OHuGYIQw+ZgLMBiV0AESZF81ompc9Nba9pShhZI97p5KTFue/f9oxBpgscMUZSi/tWZRNJDQ1QE87utdHWfwadRTz1LXhfMHF6Z8WwoWNE0nvrJ7SyqoiGc3v8ktFCZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/P+QN3pfQ/6lWZ7xz7/KZLTepky1R92SRdGwO/PwQ9A=;
 b=KOQ8GnqZPN10F/mWLl93kiFZ18W1LTYXK1VW0fdZH+fRxjHAQx2dmSQ8vaHWpkqYeBB0j1adCKpEJb59CPiItwvxb1XwR5prGyKQYAPZ/Xc7UvTWVkuPyNpLdjGRQUPpZ1YbRojkxAHmd4nDW+gb6iGdvr4kvhcUwJxVkUFo1W7Ta2gNCO9q4LsdIsY3AtDn8Vu/AqXRxoAA9Vcog4IizCQ8HoWIfXFbc2zlURNVeoxOmchgwYSNhEuQZF+JevUryLJzUbSevTRW4OFeQKKxuKbjMeWJwN1zL/6dVGMBqdfHAYF4JBtSjhPAfM2pe9JGofpPxJ01jjEt1JI4Y6CoEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB4979.namprd11.prod.outlook.com (2603:10b6:303:99::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Thu, 16 Feb 2023 17:37:45 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 17:37:45 +0000
Date: Thu, 16 Feb 2023 09:37:42 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+5p5o7uRSQ2Mtm2@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-4-umesh.nerlige.ramappa@intel.com>
 <87zg9emc2s.wl-ashutosh.dixit@intel.com>
 <87y1oymarx.wl-ashutosh.dixit@intel.com>
 <87ttzlmv1i.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87ttzlmv1i.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::6) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB4979:EE_
X-MS-Office365-Filtering-Correlation-Id: 7aa93275-8ca0-47da-3f87-08db1044832d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QuHAJs9kbuaAbqMlhuDSZEvz/upFLd6shAcqUU1bvD744ZN+gd43iM4pET70MKBqrvMS7uaunF7RU2yzYqpBqnPnkIioZbZr+fogrRTsBQg1w0HRzXWu4bDUyF62qYLP8GlPvQd3xsLAYdCTfv3JwyW9JAa0i8Ywb6K5fVOQ/AMckRveNNJUVYyvlyEKKoFqTpBWDTKeBJM5bWt4EVrTwAvsfJ+EVNbqFOOB8jJmkkWo6uHJF8b4R+JJl3cHRoPm0DvmAY7II1lgHg0gpBgpncZa5IFMuUB3j5l/P42ZI808cYeHr6JLO4TiVodzpDqXZ9IiFPR1YzIlr1SS71aTR1te8HYIU+Inf+EKiMckqMIQAP8G/VXV4aqqINSisOIvg5Gr+dAKWjyE+0t73SCs4VSJWO7YsMtpNbJ5+Io3KNdhGPS1aoZZIpqtW89WemTzRoFHsLAEwMOJk4+XLdAjYNIQYJfy12KHS5t+QJJXmASO8Jp45/uEuIZABbGNU9IxuleErh1rUykt7/b0D+6I6IegyhkP94XudeAz2vPXgJJbmC/f1ArimJkUbsmsUzYIy+iKf+GAzreWCtwVx2HD7PGhnfdgr5QqeOJZAsNdQuk4tsgRnIE96YArvxc0UZJbrOw+YASHBfLP2TXNprtJo49mceoCnfEDIiMb01pBLC2AsEa2/QXfdEzfAz7964n3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(136003)(396003)(346002)(39860400002)(451199018)(6486002)(83380400001)(26005)(186003)(6666004)(478600001)(6506007)(86362001)(66476007)(6512007)(4326008)(38100700002)(82960400001)(41300700001)(6862004)(8936002)(316002)(15650500001)(6636002)(66946007)(5660300002)(8676002)(66556008)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2R4L1NSRzJsZ2czc210N2F2LzJFcHRIOEFUQy8wSUFvV2xydUROQ21ObVVl?=
 =?utf-8?B?aThnVHovWVgyZ1VvYVFQend1WXZlQ2QwZTA3ZGJJRllpa3kycUN4dXc1bGwy?=
 =?utf-8?B?cFpaNDNlYi9iU01tTlVEMWY5VU1aSHhNQ3JhcmNpYndYZzhJR296QnZna2Y5?=
 =?utf-8?B?b1p0WFNoOVl5KzRXZkNLZ2FSME1PV1lPZmR1WTZ6Z1VTdVBZd2RhTDJTK1Zy?=
 =?utf-8?B?TjBwUUMzYTNidCt5MVNpUVJ3Njl6Q3RwU3pySjVjYXZRSHkzSjVxaEdWenNp?=
 =?utf-8?B?M1Nwenp4cVYrTlhZeCt3MXNKSUZWaGQxWCtNQklIZXZ5TXFSOE9nZ0Q1NFJy?=
 =?utf-8?B?U2drRGhzVmJXekJxaktkZXB5azlHMWpBazl6cVZmcThPWmtVYmNLUy91aHdD?=
 =?utf-8?B?STc1UjRCM1JQWVdrTHVaVmRsclg5TjYyNlhiYzJxMTJTckRNcUhyS0dvWjlS?=
 =?utf-8?B?WHRQSWdzaGsxSG5KNVNkdUJUMWZoTGE0K0V2NXdLMHpxNEo0S1BSY2ZZMU9j?=
 =?utf-8?B?ajVvcGpzbnRRck5iSGN5VVBnZklIdHJlbjlIRG9mWTNibDJFQlJUaGc2NHNr?=
 =?utf-8?B?bzl5aFNNQUg2S3VUYUIzM25IN0lWRmZHdHo3ckp0M2ZsU0VRWkprMDA2QmM2?=
 =?utf-8?B?QTVEOUZCbGU1VFhucTJsN3piQkczVlBEN29tRlRTVFlsWXlHMjgwRW03dUR0?=
 =?utf-8?B?MHoreW8yN3kyYmorMWRVSFVKQ2tFWlNPVEVaU1BPWGR5YUlPLzZ3dW9aRHk3?=
 =?utf-8?B?WE1JOUgrNGVCWDl3eE1pL28veitGYWU0YnlxSVZEREkrOU1CY0FGb0F5NGtQ?=
 =?utf-8?B?ODVLWGpPbXdWRHZLUjdIazlzWk82cUNvdHNVYnpQMWhEMjlySnF0dVQ5WUZE?=
 =?utf-8?B?Qk5xL0VtdGRMM01ucVM2aG5qNkpoSWJ1OEQzMUtLcURhY1BDZkZobEN1WHd5?=
 =?utf-8?B?bk9sQVFVYWh0OTZwV0RRbU1YMVZaMFVsNkYvSFlDTWVKMm5QS0ZhOHFCN2F4?=
 =?utf-8?B?R3VZNFNMNHpnQXJybUNrQ2orUlFia1hOVVQ0WnZNM01aS1RlTUpQQXN6cDhP?=
 =?utf-8?B?V2tkcC9naWlOTDN3eVJYM0hWS2NlNEx1QjRMSEwwb0xHZksxbDdITndhaFhO?=
 =?utf-8?B?eWNLNHp2b3FCU0ZMcFhFUUxlbHVETzhHaWh5TjNIVjB1NmxxYStCa3J0WFo4?=
 =?utf-8?B?WG5kdXd2NHpzMHZ1NHMzcHl6VGcrSXB5WUtMTVhObERSMjJYL1lONlQ1WDgw?=
 =?utf-8?B?WWR3RFEzMVduVTd1Q3crVkNhQWpOcnd3QVBjREkrY2JraVRDRUk0RXdHSmRv?=
 =?utf-8?B?UXZYRmVkalJKU2V4cGl5UytqVW5HNmJwOHlsUFpnaFdFc1ZZMXY3bDkwQ25E?=
 =?utf-8?B?dEZDUzByUE9jQkd1dWdDcitSaDRJWXJjbWo3SHFKZlVJcEp3YW80M3E0TTBS?=
 =?utf-8?B?RzFsRm91YjZaTDBKSzQxWnkwUzZLR3RUNitwSUpaTlh2WWVKTksxUytOMHNS?=
 =?utf-8?B?cnF4OGYrMlVnOElzTE80MzkxU3cyN0taWlZWWklWWXBwbGVkbmh6dGlzbEla?=
 =?utf-8?B?cFFFb3Q5TzNoUUpscWlRa3cwWlVYbi9FZEk3VFBWUEVhNUI2Y0dRL2ZHcGlI?=
 =?utf-8?B?QjVGN2M1TjBJbHpCTFd3VE5QL1dsT3RtQnhNUWtwV3RCUnlwZkpSMFIwdlVy?=
 =?utf-8?B?ZWJWeXk4OWhoQWpzZXVJSFVZZFlPVGt2bU5UNG92Z2lQZ1NhVGlRZXVYQmNp?=
 =?utf-8?B?UXpXV3ZaeFczNGtOZVNUVUg5K3VBM3d2MGVtRHB2M05DS2R6V3RrZnRpUUNX?=
 =?utf-8?B?OFUyRStwekU0UXlkK2VmSjJ1TjQ1YU4yM3NLZ2hGQ04rNjBtVXl0M2EwaUhw?=
 =?utf-8?B?akxvWFJHNzlaeTZ5Q0tjMzZMQnpxRU15SVdackJEbTNVdDZiK1daR0VrMHcv?=
 =?utf-8?B?eERJTXpaNVVBSE9QeUZ6TE9STG5MOHZwRW9TQmg5Y2laOEx0NTJZN3dibzZL?=
 =?utf-8?B?S3lmbzdTZHg3T3hKUjFuQVRRakp0Z0Z6ZVl5aWZtbGJadGpXU284enZta3Np?=
 =?utf-8?B?ZVVQM290a3pwVnorVWo4SmxOeFJzcjJzZTk3eHM1STlmcHVlbzcxUnpONmpj?=
 =?utf-8?B?cG5YUmdCMUt6c0w2ZkRzTWdLdEE5bGR4eHFVQWZvaXNUUXV0YmRTekNNai9D?=
 =?utf-8?Q?Fo9iCPWJW1HN85stk7qJA30=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa93275-8ca0-47da-3f87-08db1044832d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 17:37:44.8752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VziTscskLsUK5wmkO/wRwhWCKVnhQWKztGecLLjRvLCpISSqeOYjJcJbVK1PE9qJF4IgIJiz3luRLiNXifvsyKdVjeOcBx8oz68KZyKZRxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4979
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/perf: Validate OA sseu config
 outside switch
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 08:31:21AM -0800, Dixit, Ashutosh wrote:
>On Wed, 15 Feb 2023 21:36:50 -0800, Dixit, Ashutosh wrote:
>>
>> On Wed, 15 Feb 2023 21:08:43 -0800, Dixit, Ashutosh wrote:
>> >
>> > On Tue, 14 Feb 2023 16:54:13 -0800, Umesh Nerlige Ramappa wrote:
>> > >
>> > > Validate the OA sseu config after all params are parsed.
>> >
>> > Commit messages for all patches need to answer the "why" or the reason for
>> > the patch. In this case maybe an overkill but probably something like:
>> >
>> > Validate the OA sseu config after all params are parsed since the engine
>> > can be passed in as part of perf properties.
>>
>> Also, if we do this the patch should probably be later in the series after
>> the patch which introduces engine class/instance in the perf properties.
>
>General guidelines for submitting a patch series for review (for the
>future):
>
>1. The commit message should explain "why" or reason for a patch
>2. As far as possible patches should be in a logical order so the series
>   should "tell a story"
>3. The patches should be small (each patch being a single logical change if
>   possible)
>
>So after we've done the hard part of figuring out the code and getting it
>to work, the above guidelines also make the review process easier.

will do and post a new revision.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
