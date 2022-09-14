Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3A65B90EC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 01:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9BC10E0FA;
	Wed, 14 Sep 2022 23:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20EC10E0FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 23:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663197235; x=1694733235;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u1OrWc+V05oOB+/9aKCDftIz0OyeGnZ5IhcXBrjMlQ4=;
 b=GiAUuZSGuxLteLFYwwahfMCqmo5qDF/CmsjcFJYvdFzoiXCBuIPv40rm
 ccEaRWUKV/q+Tb3PJXA81NGGiyX5qjrqabN9dPjXYLXCQIo13MHLbVdME
 BIuAeEBmBTBbayWImDKcKYYthv46Fxl9RKiNq9j54Ll2ZOoJb4VlUiF5o
 uzh7WdZ3bvAmH0biMZvVvK5nXpED9SWSp7iVxJ9Ka2/Wm+rWpTKC+w0yX
 phOnkSbqOdrHs9K2QMErwrZMaoJjXDvfbkoZYyQnzpdMS2F4bqeZzkBD9
 0FmFPlMtnQVDmbaeaWzIqFY9H+2dUcMkMH/pZhRIpDjymZtAIRSrQQVRH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="360301872"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="360301872"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 16:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="720757657"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2022 16:13:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:13:54 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:13:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 16:13:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 16:13:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgO8fX5Sm7+XX1uA3wwEtWw82B82GjQ9uYJgxyd0PKBG0pnQUx1D1VbMdQzIq/Ajjc63tZHesu6eblWbkj4JS6CvSAoscPeFys+0Kicbf0YzkWQwDFgSf6krlKLe7VE8PEJR5vXKGfFt9aPon/+/vru7o47l+hXRI1Qg/aoDmWbgyTgi8g/Huua2kzAIBp2/fQwAcJ24uUrgM3yV3eNV5HPdNtiXOoyOog9jU3xlJs91p7R3HnWxzDIna5dppWZYnZKm6vfBk2NGI8YKhQ/qJAnqQIkH13kE1mvE+V6VCB2U5q8NuPU25i2zbHqE3SBoQmE9RIrkj5mW7+/nQxAZlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+w1mZVwtJlWd8Yy8053V/d7lSX1+eW9Y/7X/nJiK2+M=;
 b=ibf0tWJ/zT65pDHjZxSXrPmc+dP6elS/xrm1kmhQw5uA4GrreojAHPDqWw7eTXTOPLO+VUyjvwT51NKL/CelPcBhl7Z2UESy0c9DjJSpGCpzbOMqFIxJm/m1EYwb6wnY9OsFSQwD1F2UsaPtg2VpsM3FGg7NIWvfIQq15BPL5HZO5TiU3SEfUBVKk9SHWf2+5PxP3ykjsoj1y0nxo3FP6UO7EA2ifmGiBUrrUJ5jVDvaLK67xhFbgA345p2REYXJH1nBQMi2muqUPKO/SX3CDluhCt0H4d+fernwgJd4SbYWVz8yOg1cdULmCPqGkHpAEzBJbvdcQHavsrASPbNogg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM8PR11MB5670.namprd11.prod.outlook.com (2603:10b6:8:37::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.23; Wed, 14 Sep 2022 23:13:52 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 23:13:52 +0000
Date: Wed, 14 Sep 2022 16:13:41 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YyJgJT6ByYZToC2h@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
 <YxeF0b6ohtFcDXf6@unerlige-ril>
 <f1e9e230-2626-0f6c-02a7-e063122b759b@intel.com>
 <YyJVB9DpKwhqqCHR@unerlige-ril>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YyJVB9DpKwhqqCHR@unerlige-ril>
X-ClientProxiedBy: SJ0P220CA0025.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::16) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM8PR11MB5670:EE_
X-MS-Office365-Filtering-Correlation-Id: ba73fe7d-dc62-4034-4fa0-08da96a6c9b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jSxLNKKJyknkUnh19CeGBgIyIqN6K+26ljgozH+azMXTnPFxuqfXV8HaXDzySJKJ66Dl0pgtputkHbdTTn3kPNOVQ5Ks4nCQGUsnt5Sskk3o/k5NzHNBwVXL+BrHdwXhyme3NCJmGEvDEGbPmyLSAeODcDLXU08nNgZ4lizyKaf+fLfSWKQo+d9o2sC9Ii0VNcpM5pd70E2H5iLj8RrsdHVkaxIPs9gN6h1KPCr/DAVTnOF8IWEAM3mHeyRbaeSCUnhOvv1CMAhN7Y8g/ILcGfQllAkf1KC7tKZu81kaJqpwI8Ht8ug0neePZCdpZxwAakreubmm2wWmND5Z8/ZNzZ0SJriPKZ3VUmHFOIUjGkZ7iKf/xAueYAkRoxP5ok+vFqk+X30h/cCypGrp9GmyxvS+9ocvNpvqAySeQs8pbEcx3dtyD3Ld3saDXeGx2sP3WbrELjRlNKSzUoriiyUGyb+h6Ie0GMT6eha4DEf4/bSF/8SrMpSESrkAfbTd1rakqWC/4M5yAfsFBI7V0advmrjuwPfk1aRv91EyuB08t3gyfCuJgOa5saArK9FbxgRcssISsyOWBPXqMIgRtvEIpJaMdgiszBejFBNfyOr8eeLl/7FBibdUnUSXbacr/X3Oc/X2R+7q2yKUu7XKNu8mPpXeAJNIuiDqchQKsI25w2Y6K740GOCk44pCfSuawNoIukGCZzLg22U8RSSt9ttAYh3P0tZB6Qin5TwpDc2PLpKR5FhB1APeM459y1ppZfwLTzh6qnT6EH3AohUnbre93g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(396003)(39860400002)(136003)(366004)(451199015)(33716001)(38100700002)(316002)(6636002)(478600001)(8936002)(8676002)(4326008)(83380400001)(186003)(66946007)(6506007)(5660300002)(41300700001)(66556008)(6666004)(86362001)(82960400001)(6862004)(66476007)(6486002)(6512007)(2906002)(26005)(9686003)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ulo5bzNMTkMweWRybEdocWdUeFdMM1draFVCRW55RGlDNUU0ZnVVVjFsWVZa?=
 =?utf-8?B?Y2IyN01zeTFhazlmOGV2RzlYc3E0NGVhblVpRUpwUUgycTNHYkdVMm1KMWFK?=
 =?utf-8?B?Q3IwNWNMMmdoeTdzTnYzZVZQcDRteXJPMWxxUDk4ZmlrZUUwR3FHTWs2Qkwr?=
 =?utf-8?B?NWxlbksrcHdSRVp6aWhXQUNXT0F2ZEZyODA4K3p4OTUxWVRKWlRQd2FKMDg2?=
 =?utf-8?B?bnhIY0lvcUdhdU95UEhYSi9Lb25jMjRHUnlndnIvemxsVm42cVN2VFhZVld6?=
 =?utf-8?B?ejBMalJ1cmhQNGNvYzU2RytTVFB2UDV5S2plZjNwV2RzQVcwTU5FNzBFL1ln?=
 =?utf-8?B?YTlNNFBZZklFdEVoZUgzaFUwaXZBVHpIaVpjekE1Z3RJNmluMmxkWkVkTWEx?=
 =?utf-8?B?WTVwaU4rTGU4anhDc0NabS9DdldlN1FMcTRXZGxYd2RGeXhsbnNLWGZHYldn?=
 =?utf-8?B?bkxBQS9ScXlHeUwwMVR6a0xWMGYvZXZJZ2d1L2ZMWUVVTDFsSjhPUU95SVFO?=
 =?utf-8?B?WnkxTm9sQ3p1NTVEaU5CN214OXpoM2VCdWM1ZnN5a0ZLYzJjUmlyYm8xOCtD?=
 =?utf-8?B?N2pNZ3g4Syt0d0FrbFVkZ3d2am1tWFVSU21JdSttbDBmNEJqR0wvWGxCalZu?=
 =?utf-8?B?M2VyZ2tmQnFzWG0zZ3RCK25pZ0p6ZnlCcUNzbk5YSVZlZ2w1SEpWVFlMa3Z2?=
 =?utf-8?B?Ui96NDY2K2dqQU5xa3dKY0RBaEdLNE56VjkvNDVoZTB6c1ROMVVhT29sNkJw?=
 =?utf-8?B?Q0p5bFpVT0JReFZrK2wxWlREWkdCQ3hYdUVSZ3UyZjFPR0duckFNVWpaVzRO?=
 =?utf-8?B?RklGY3oyOUR6RFoxc1o0K2Qva25HOG16UnVGNXlVdGxyalc5MWtLdmNaVFRM?=
 =?utf-8?B?QjRreGVwN2NqSmdpNThITjNQMjgxemRoNHRrSjV4RnM3RkZ0dHpoS0k4dlBo?=
 =?utf-8?B?cFdGWHBHS3VhU3NqeXNpemVFd09yK1JTaDMrZWJaUlppSFMrNkYxTURtNTRa?=
 =?utf-8?B?aGFxeUtFWk1iZDluMVZBY3dnQWRldG4vWnorWUxNK0FiMXNlek00NkxmTnJz?=
 =?utf-8?B?L2JLNEdRMzJUTHNPSUpuRnZ5eDRNOTJWd1NqamVDQmVrYWFsZFgyWGVaYWNK?=
 =?utf-8?B?ak9CSDF2VjBJMTJoM0g5dG8yUU5TTkUrRmhHZGhsQ3pFWkF6M1k1QXBKUlFE?=
 =?utf-8?B?bjNwUXhXdjFnY2s5N1ZET1k3VVc4bDRyUk1pZ3NpdEp2Uk9qWnpxUDVENU5w?=
 =?utf-8?B?TnMwR09ET3RlVDAyMTJMU3RmNUplM3AxUzJYS2hSTDRySHA3T1QyMmJrV1F4?=
 =?utf-8?B?NlVwbWVsUXBlN2hEK1NrblVuSGEvRGJYck9nTk5ROEFYc081bXAwd2V6Nm55?=
 =?utf-8?B?WFdvUUt0bXk3azdOblJjeEozVDZUdW1qQUlnV0Y3Rk1hbnQ4MkNjemhUdmZB?=
 =?utf-8?B?STJBekM5bzdsU3Z0RDFlOWJSLzRENDdkelVUVTJoeE10dDJHV2RSdEw4OG9y?=
 =?utf-8?B?Yy9hNEtJY2E4MllpMHA4Y1hUbkNzWTN2R3RrenBDMmkzbkxwTVUwQ1QvTmZ3?=
 =?utf-8?B?VmxwZ0FvRVpNdWg1NGJWbmVNV2NxNm1CQzhUaVAzNzY0Um5JUlpJdTFRdkZB?=
 =?utf-8?B?NVI4SE52MnFxM2U2di9BbzJLNW5CeHBPU1czTzdra0JXMkJJTzZxd2hxTWE3?=
 =?utf-8?B?OVJkcU5GTDVEVngvbWxVbGJJZGVPbGtHMlpvYi96QjhJUjNNNll0czRqTEhX?=
 =?utf-8?B?Qy9VUkFmVzg4QW12T2ZLUTI5SkIrYkZQazQzQ2FRNVlRL3RwTE16Lzlvbjlj?=
 =?utf-8?B?a051b1NOZk9naGNzSkZxV2lFSFBobnZUcFA2cU90SEF2R0pDT29VNkNHNzZt?=
 =?utf-8?B?OEdmbGpFM3VmTGY2UWoxSytUYnpJMklJRnlNSnF4K1lxbGNkeGhvMWhSdmpM?=
 =?utf-8?B?WlJYOXVCTnRURDVpcWd0VSs3Q1cxdFM4MG1xaUdXL01LRmRkRk9ncllWNUpP?=
 =?utf-8?B?K3p0VmlVdU9iY2s2MEsrdldPcWk3VDR4UTU1RnBwMHJFbXdocEwreVk3Sk93?=
 =?utf-8?B?US85WUpOTnNKenhGeTA5UVFyRXZXWVdBWDJMcllJWFdoMkxON3ZmeFFiaURJ?=
 =?utf-8?B?dlhzZ2x1elliL0hrMXE5S3NEUlBRTlRwbC8rU0YzVkU0Nk1iNVJ5eEhhMmU4?=
 =?utf-8?Q?PgODrUx9VuJB2dw7tUeIe0k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba73fe7d-dc62-4034-4fa0-08da96a6c9b6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 23:13:52.0658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6IEpklIA++Xe5ETKQ3SJeGbE6IY6e5k7KyO0k7x/4Z8CYSGJtIkJTStjVIgB/4yLtaxJUlwBnLxb3pTxihE5d5Mgr5iLnWBqTpM+fKrRhh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5670
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

On Wed, Sep 14, 2022 at 03:26:15PM -0700, Umesh Nerlige Ramappa wrote:
>On Tue, Sep 06, 2022 at 09:39:33PM +0300, Lionel Landwerlin wrote:
>>On 06/09/2022 20:39, Umesh Nerlige Ramappa wrote:
>>>On Tue, Sep 06, 2022 at 05:33:00PM +0300, Lionel Landwerlin wrote:
>>>>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>>>>With GuC mode of submission, GuC is in control of defining the 
>>>>>context id field
>>>>>that is part of the OA reports. To filter reports, UMD and KMD 
>>>>>must know what sw
>>>>>context id was chosen by GuC. There is not interface between 
>>>>>KMD and GuC to
>>>>>determine this, so read the upper-dword of EXECLIST_STATUS to 
>>>>>filter/squash OA
>>>>>reports for the specific context.
>>>>>
>>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>
>>>>
>>>>I assume you checked with GuC that this doesn't change as the 
>>>>context is running?
>>>
>>>Correct.
>>>
>>>>
>>>>With i915/execlist submission mode, we had to ask i915 to pin 
>>>>the sw_id/ctx_id.
>>>>
>>>
>>>From GuC perspective, the context id can change once KMD 
>>>de-registers the context and that will not happen while the 
>>>context is in use.
>>>
>>>Thanks,
>>>Umesh
>>
>>
>>Thanks Umesh,
>>
>>
>>Maybe I should have been more precise in my question :
>>
>>
>>Can the ID change while the i915-perf stream is opened?
>>
>>Because the ID not changing while the context is running makes sense.
>>
>>But since the number of available IDs is limited to 2k or something 
>>on Gfx12, it's possible the GuC has to reuse IDs if too many apps 
>>want to run during the period of time while i915-perf is active and 
>>filtering.
>>
>
>available guc ids are 64k with 4k reserved for multi-lrc, so GuC may 
>have to reuse ids once 60k ids are used up.

Spoke to the GuC team again and if there are a lot of contexts (> 60K) 
running, there is a possibility of the context id being recycled. In 
that case, the capture would be broken. I would track this as a separate 
JIRA and follow up on a solution.

 From OA use case perspective, are we interested in monitoring just one 
hardware context? If we make sure this context is not stolen, are we 
good? 

Thanks,
Umesh

>
>Thanks,
>Umesh
>
>>
>>-Lionel
>>
>>
>>>
>>>>
>>>>If that's not the case then filtering is broken.
>>>>
>>>>
>>>>-Lionel
>>>>
>>>>
>>>>>---
>>>>> drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>>>>> drivers/gpu/drm/i915/i915_perf.c    | 141 ++++++++++++++++++++++++----
>>>>> 2 files changed, 124 insertions(+), 19 deletions(-)
>>>>>
>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h 
>>>>>b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>>index a390f0813c8b..7111bae759f3 100644
>>>>>--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>>@@ -110,6 +110,8 @@ enum {
>>>>> #define XEHP_SW_CTX_ID_WIDTH            16
>>>>> #define XEHP_SW_COUNTER_SHIFT            58
>>>>> #define XEHP_SW_COUNTER_WIDTH            6
>>>>>+#define GEN12_GUC_SW_CTX_ID_SHIFT        39
>>>>>+#define GEN12_GUC_SW_CTX_ID_WIDTH        16
>>>>> static inline void lrc_runtime_start(struct intel_context *ce)
>>>>> {
>>>>>diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>>>>b/drivers/gpu/drm/i915/i915_perf.c
>>>>>index f3c23fe9ad9c..735244a3aedd 100644
>>>>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>>>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>>>>@@ -1233,6 +1233,125 @@ static struct intel_context 
>>>>>*oa_pin_context(struct i915_perf_stream *stream)
>>>>>     return stream->pinned_ctx;
>>>>> }
>>>>>+static int
>>>>>+__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, 
>>>>>u32 ggtt_offset)
>>>>>+{
>>>>>+    u32 *cs, cmd;
>>>>>+
>>>>>+    cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
>>>>>+    if (GRAPHICS_VER(rq->engine->i915) >= 8)
>>>>>+        cmd++;
>>>>>+
>>>>>+    cs = intel_ring_begin(rq, 4);
>>>>>+    if (IS_ERR(cs))
>>>>>+        return PTR_ERR(cs);
>>>>>+
>>>>>+    *cs++ = cmd;
>>>>>+    *cs++ = i915_mmio_reg_offset(reg);
>>>>>+    *cs++ = ggtt_offset;
>>>>>+    *cs++ = 0;
>>>>>+
>>>>>+    intel_ring_advance(rq, cs);
>>>>>+
>>>>>+    return 0;
>>>>>+}
>>>>>+
>>>>>+static int
>>>>>+__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
>>>>>+{
>>>>>+    struct i915_request *rq;
>>>>>+    int err;
>>>>>+
>>>>>+    rq = i915_request_create(ce);
>>>>>+    if (IS_ERR(rq))
>>>>>+        return PTR_ERR(rq);
>>>>>+
>>>>>+    i915_request_get(rq);
>>>>>+
>>>>>+    err = __store_reg_to_mem(rq, reg, ggtt_offset);
>>>>>+
>>>>>+    i915_request_add(rq);
>>>>>+    if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
>>>>>+        err = -ETIME;
>>>>>+
>>>>>+    i915_request_put(rq);
>>>>>+
>>>>>+    return err;
>>>>>+}
>>>>>+
>>>>>+static int
>>>>>+gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
>>>>>+{
>>>>>+    struct i915_vma *scratch;
>>>>>+    u32 *val;
>>>>>+    int err;
>>>>>+
>>>>>+    scratch = 
>>>>>__vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 
>>>>>4);
>>>>>+    if (IS_ERR(scratch))
>>>>>+        return PTR_ERR(scratch);
>>>>>+
>>>>>+    err = i915_vma_sync(scratch);
>>>>>+    if (err)
>>>>>+        goto err_scratch;
>>>>>+
>>>>>+    err = __read_reg(ce, 
>>>>>RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
>>>>>+             i915_ggtt_offset(scratch));
>>>>>+    if (err)
>>>>>+        goto err_scratch;
>>>>>+
>>>>>+    val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
>>>>>+    if (IS_ERR(val)) {
>>>>>+        err = PTR_ERR(val);
>>>>>+        goto err_scratch;
>>>>>+    }
>>>>>+
>>>>>+    *ctx_id = *val;
>>>>>+    i915_gem_object_unpin_map(scratch->obj);
>>>>>+
>>>>>+err_scratch:
>>>>>+    i915_vma_unpin_and_release(&scratch, 0);
>>>>>+    return err;
>>>>>+}
>>>>>+
>>>>>+/*
>>>>>+ * For execlist mode of submission, pick an unused context id
>>>>>+ * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
>>>>>+ * XXX_MAX_CONTEXT_HW_ID is used by idle context
>>>>>+ *
>>>>>+ * For GuC mode of submission read context id from the upper 
>>>>>dword of the
>>>>>+ * EXECLIST_STATUS register.
>>>>>+ */
>>>>>+static int gen12_get_render_context_id(struct 
>>>>>i915_perf_stream *stream)
>>>>>+{
>>>>>+    u32 ctx_id, mask;
>>>>>+    int ret;
>>>>>+
>>>>>+    if (intel_engine_uses_guc(stream->engine)) {
>>>>>+        ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
>>>>>+        if (ret)
>>>>>+            return ret;
>>>>>+
>>>>>+        mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
>>>>>+            (GEN12_GUC_SW_CTX_ID_SHIFT - 32);
>>>>>+    } else if (GRAPHICS_VER_FULL(stream->engine->i915) >= 
>>>>>IP_VER(12, 50)) {
>>>>>+        ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>>>>+            (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>+
>>>>>+        mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>>>>+            (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>+    } else {
>>>>>+        ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
>>>>>+             (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>+
>>>>>+        mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
>>>>>+            (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>+    }
>>>>>+    stream->specific_ctx_id = ctx_id & mask;
>>>>>+    stream->specific_ctx_id_mask = mask;
>>>>>+
>>>>>+    return 0;
>>>>>+}
>>>>>+
>>>>> /**
>>>>>  * oa_get_render_ctx_id - determine and hold ctx hw id
>>>>>  * @stream: An i915-perf stream opened for OA metrics
>>>>>@@ -1246,6 +1365,7 @@ static struct intel_context 
>>>>>*oa_pin_context(struct i915_perf_stream *stream)
>>>>> static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>>>> {
>>>>>     struct intel_context *ce;
>>>>>+    int ret = 0;
>>>>>     ce = oa_pin_context(stream);
>>>>>     if (IS_ERR(ce))
>>>>>@@ -1292,24 +1412,7 @@ static int oa_get_render_ctx_id(struct 
>>>>>i915_perf_stream *stream)
>>>>>     case 11:
>>>>>     case 12:
>>>>>-        if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 50)) {
>>>>>-            stream->specific_ctx_id_mask =
>>>>>-                ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>>>>-                (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>-            stream->specific_ctx_id =
>>>>>-                (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>>>>-                (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>-        } else {
>>>>>-            stream->specific_ctx_id_mask =
>>>>>-                ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << 
>>>>>(GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>-            /*
>>>>>-             * Pick an unused context id
>>>>>-             * 0 - BITS_PER_LONG are used by other contexts
>>>>>-             * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
>>>>>-             */
>>>>>-            stream->specific_ctx_id =
>>>>>-                (GEN12_MAX_CONTEXT_HW_ID - 1) << 
>>>>>(GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>-        }
>>>>>+        ret = gen12_get_render_context_id(stream);
>>>>>         break;
>>>>>     default:
>>>>>@@ -1323,7 +1426,7 @@ static int oa_get_render_ctx_id(struct 
>>>>>i915_perf_stream *stream)
>>>>>         stream->specific_ctx_id,
>>>>>         stream->specific_ctx_id_mask);
>>>>>-    return 0;
>>>>>+    return ret;
>>>>> }
>>>>> /**
>>>>
>>>>
>>
