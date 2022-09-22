Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A25E65E6073
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 13:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC3C10EAB7;
	Thu, 22 Sep 2022 11:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A33910EAB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 11:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663844749; x=1695380749;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zlahopHvSldRja3YdMUDwE0ApuftpM+wm2ZnXUnphYQ=;
 b=EAC16Ve1EaTi9vdeXmntzpHqiY8aVhOlIcTogwH6TsaBa601a74Srbvh
 vTw2+6SK6vKkK8La9X2oUp95U3MJ3fTjS3Er3Hx+Uu6r6zl8t5j0uBuNh
 SgeDIi+Vq3r9ksPG6wD9qDIvB6qMfd05ncvZWgI4RU8zurinQ/vCC6vGa
 c8Yfyxjuo8/rzYE0A5FKv4WVIZ03sUPK8LphsYAQoiRKW9fMlHVtXw3ss
 vDu+Mj9rNNUXkahWYQ/sMfDPnMcmy3S+jja/ICE6a7mbIXcPHDl7fYSc4
 3JLWr1iqlBkh1gCYCokA/S0kvy4xf6JjrD4JDBOA3JM2xAQxhnYl11TS6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="301113656"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="301113656"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="745340789"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 22 Sep 2022 04:05:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 04:05:48 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 04:05:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 04:05:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 04:05:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vo42G2XCNaaDyTkWFwMyuI8mGGJHeuWj9aLx12Ry1gbhF8Nt56QQb22QPGeJyv11+wclzkReuqqQOej5+tXom7sA1SNju2yjWTxV0VYfpqyEaDH20/l99Zb8GP4bWt40T7smFJdgqQoKfU86aWYW2YPRKJeatxtgQuF+ASX6ukOpQTJzaNNK4wkb+dsYeap/G+rL9j30gq06PJ4n+jIDANeYilIL4OhU11oJFfdMBqK1fTWA/w8ijY7fACCfZKBvDYfrUB7ePv1Q8hKCTSm6QkUi7bZCGBGE+GRoKL0KcS8rMceGM2YhOSShuDqzVSVOw7sbGremHkHXm/C5Jjz4kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWrvm4XwXkvRLqYM5m2D7AW+aQ3XQ3mNbkrdGdAsR4Q=;
 b=dDjAXaKBy6ypXgIovimcTSDVzIzJRLJOzkbt0PVy8787dMEbub3dxmpQd6H8naHNhT2iptqDfnNhjOwYeptRyJ0QTUXWh8xvyA8Ta27u+kFNt6P5s4F0szifaAGBZLZoj/he+5IR0Ip1aKY7PwcpMbKYLbVjHegXV5fIKAzwX17EmHFf9DloBzByydNa5EipoEywSA9kUIWApZd+5aLrQOkOcMU9/ItCIvqSKEFOqp13alz5Zmbig51v73HrkJmkJqv+rRIH+eVrTahMEjjp8jsl4u4/NRJbVJJdD0J7OjHE1R965d3yRS6aHNUUyr47hYh5RFMZjJJTDwuM2qWxow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BL3PR11MB6315.namprd11.prod.outlook.com (2603:10b6:208:3b2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.17; Thu, 22 Sep
 2022 11:05:46 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::5577:4b2b:4347:1174]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::5577:4b2b:4347:1174%5]) with mapi id 15.20.5654.017; Thu, 22 Sep 2022
 11:05:45 +0000
Message-ID: <f71ad704-3032-c2e5-e71a-ee6306bac564@intel.com>
Date: Thu, 22 Sep 2022 14:05:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
 <YxeF0b6ohtFcDXf6@unerlige-ril>
 <f1e9e230-2626-0f6c-02a7-e063122b759b@intel.com>
 <YyJVB9DpKwhqqCHR@unerlige-ril> <YyJgJT6ByYZToC2h@unerlige-ril>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <YyJgJT6ByYZToC2h@unerlige-ril>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS9PR04CA0093.eurprd04.prod.outlook.com
 (2603:10a6:20b:50e::21) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1562:EE_|BL3PR11MB6315:EE_
X-MS-Office365-Filtering-Correlation-Id: 607e9062-fe5c-4c2b-b6ef-08da9c8a65b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fGdJfzPQpdjrVr0m0152dChZHH133qf5niTIfnMvxD1zdfmNgqw/y+3C6sCFlkwaPJvAMKDBbKBfscBlBSeIbxTlup3y9LyfaGeaL8bO0WBy2aLyttFSBu/wF47RrCOvSDd4MJOgkRGeU8e0Ct2TeVnpfuEcMfOKfnh1eX3nUoHVgOLlRzkt37cN0V3dwK4LNAt3BIKBOid9mrdrBg7JljSpFkP7/9VxE0HuVss2bpnQsyg9JrA4O/Umbk+lMfPfVbuuCyvh0OHplrFxuKPjVdZ1WcuZZ9S2QN5iGVXRQIlCLPCB64aCk9nYAeQTAsFcvtT93wqfKL4P8CxzHY5569XqBMPpfobBfxhfqoc4U4ExWhD8oQEetbbtYfrzCMJe1d5zbVfWMfigtb1lpSSL9ik3YDiKYBJFLsdA3U+dLYyQiI6aD/ZY6Yq2QlnTulgqR0Ai1ecuTo0hvnAdWZVbX2ZJDsZWBSjNBnzveraPjsCqq0wb8uxEAbxFQJXKjGvCBxIAWDHuDSLNAZF4e1eu7FttsM74UnrJ1pmVt9jThqPUG41SP4UYZeRag6zC+RlBZICPhEnMSFYcLS9wmcbwjO1pvxRrqjcT02mPpb5n9HXJw+SOykeS2Vis4YpMxVLAxBUZdViJE+JpuTQ9VchGeGM/8gci6u0zOKpOc/GLjtRMgCyJUvVQtroY8wJiLOF7yYXg6K5TqFjXZTQIivE0PwLRLbkd4HEVRuRtSF6EG2i9l46mlXXtgGxruSjyD8pLyinaOfZW3tP6K9jtiUrpqVj1QRMTzLB5efAxETL1yqRbgXI/xkV08PDITsQnP/DTFK/eSUUJGWL7tY8hw6qkow==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(396003)(136003)(376002)(451199015)(6512007)(31686004)(2616005)(53546011)(26005)(6506007)(6486002)(82960400001)(5660300002)(2906002)(478600001)(66556008)(66476007)(36756003)(86362001)(31696002)(83380400001)(41300700001)(6666004)(186003)(6862004)(316002)(8936002)(66946007)(6636002)(8676002)(4326008)(37006003)(38100700002)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGd4Wm5lejljTmdVWFhTRHpDY3Y5emVSL0s3TDluQ1JiK2drdVZ6NEdYSFBq?=
 =?utf-8?B?OHJkb09PUUlXNENGQ3RGUDRvMzFGbE83VzZKM0wvaVdzTzdNMFpzcWJJWGFT?=
 =?utf-8?B?VU9oWVJWNU9SV0FFdEtvZUhZenJMaHVpVHFkZ3pnakV5QkhBbnZybTZZTTlH?=
 =?utf-8?B?MmxKRENoRGlqSWhhd2hZTXRCd2FOaHJKVGpGM1M3OGR5QkVmdno0V1pham5y?=
 =?utf-8?B?VlE2UnczUThTZisvaXRoc1VMSlRDZTJNZU4vN1FLdFdCS3IwdVlpYzhOdWdF?=
 =?utf-8?B?ZndIckYzM1FQb1o4Um04b0hSS2xzK0d4a2VpRWR5SjlFejdNdlRxVm12V3U4?=
 =?utf-8?B?M3RwN2xvMUluV1JnekhCS1R0SGxiQjRDejJHWXYyczV2Wm15Q0lCK0ptZ29N?=
 =?utf-8?B?eGNHOGFaQVNKN0YyZ2JiVmhsa2t1UitNRDVoZjZLaW9aTmdCdzFHVnR1dHNT?=
 =?utf-8?B?OTVvNW1ycWhPMVhBNGVFMXI1MEZmTWRPUEV0MUtCNkd6bzd5VWJiN3VmcDIx?=
 =?utf-8?B?bUFzOVBVcjhESjgrWnFBOFJFTGN0MVFvQkVmL2h3ZkpXSEpUTWJrZzhkbHdU?=
 =?utf-8?B?Q0laNTB6bXdwVDIvWmw1dWFFN2ZmUW82Y0FTZzhXT0FjWVhOQksrRDhBbUUx?=
 =?utf-8?B?TXEzMXB2bFBXWGdYcFhNdnYvRWZ1VVVMZlhTaGlyL09ZdGV1ajY0YTU0YnM0?=
 =?utf-8?B?OE1YZnQ4aW1IWmhTZ0MvY2lmL09sdWg0aGhwT2txMFRnYnd2Zy81UytacU5m?=
 =?utf-8?B?ZjM5aWhuVHlqeG9Rc2gwY3B1UUhwbnZGWmtyQ0o4cUJzT0oxbmp6bkNTaGh3?=
 =?utf-8?B?bXl4dm8yZE0zRGQwTVRaODVlY3pjQVNLcmNXNThxWDViN0xNdUVvWWx0Ymsr?=
 =?utf-8?B?bzBPZWhIVzRQUG13bGVjK1dPbE0xRk1VMlg1YnZJS0N4ZUl2akY0Y2dJTmx1?=
 =?utf-8?B?REtHUXVSam45YWN2aWVoOU05WHRWK1l3SWFRMS9TUDNtSkRpWVRqOEJDTEx5?=
 =?utf-8?B?NE44bnlFU3RpRE5OV05LcHRkZ3ZoRkFaSUtnMjNueE1icVlyd3NBb3U5SFdO?=
 =?utf-8?B?b3BTLzUwV2Z5R0ZGbEZZSGltYkY3cWg0Y1QrQnZ5bXZ2c3VKN3RaRlZLL05q?=
 =?utf-8?B?T0dOOUpWaDRMYUlQTGFlN3YzdG1JaXRjTE8yUVZldHJtTTN5VE1EU1d2NVdM?=
 =?utf-8?B?SjYxV2NFTEVtT3F0dnJ5eHV3SjdUOVRwdE1Id1dIUWxaWEtDckhkZWRrbXJ1?=
 =?utf-8?B?YWFSVmhmbi9uVGdoSjdjYzBQbXVRMDNSSzRNYjZtR3ZlVCs1bzcwekdzWEg3?=
 =?utf-8?B?TVlnVjNYUVY1TVllbXA2eVBRTnJ0bThyMFlRQnVQNXc1b2J1a0thS1ZKTTEy?=
 =?utf-8?B?RjV0d0N2MkFDME1Ld2dNNTM0c1lGVDUreFdXVTBzUmtzaEgreG1DV1p1UTNo?=
 =?utf-8?B?VjdwK1NCRFJnOFhyREZBRG1JVHgvU3k0ZGU5b3FSY2NOd1lyUnZMd1hDRDg3?=
 =?utf-8?B?dVppMSs5VVVpZFJGd2VmUk5ES29YakVOSjlEbllSWHE5dUFNdU5EZlU3bkVk?=
 =?utf-8?B?ejVRMmRhcFEyc2d2UjdHbTdoaUNsTVFNK2N0T2ZCZTdBNUVva2JzbTl3NFdX?=
 =?utf-8?B?c2g5VDRzTkJkaS9BNTduK2d0R0RHeXppb3k2ZEcyeSs5S2M5dTcxQS9Gc0RM?=
 =?utf-8?B?SXpxUHRYOWsydHh1dTkrd015TUlCZ3U5ek5HUCtldE5PcmhUK01FTWlIbDNM?=
 =?utf-8?B?U3BtQXhrYUlqcDVBcGs3ZWpWSGFFSVp1YVVHR1lZNVRwbHplTEJmejdVM0c1?=
 =?utf-8?B?VmRhR0EyQU53NWhlRWtiMjJFbnQ4WXMzUkhCYy9xRWx1R2k4RHBOd2JNYzJL?=
 =?utf-8?B?WjJaWmo4bHZadlZRdThBWUM3ZHhHVWwrTFhpTWxid29VR2c2ZytqeUJ0Q0VG?=
 =?utf-8?B?cFRsSmh5em9CazB5MWxGQ2wvcWdYWktobVVydG8vL3pVMnhuNmQwcGpva016?=
 =?utf-8?B?N2p0TS81cG1McCtHbHVQWXltVTNCclZ2R0pBblNBTkU1VGlvWW5tMmo0NnU2?=
 =?utf-8?B?eWZzVmNSN2U0YlNSUUhzb3pRaHF2S2J0OFcwQ2k4eitna1ZkRUxTSm9ZUHBG?=
 =?utf-8?B?SkVFblJWdzgzMUlPQmNPMGtRRHFEVTloRGdxeS9PNklLRFB0THV2bVJsR0xO?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 607e9062-fe5c-4c2b-b6ef-08da9c8a65b0
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 11:05:45.3721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: amHgQw05qBqPIuJAIXG0Gv51vT45Jdvmv3h82kh7THzHm/olUw8Rf+3cv+fVORzWIH3MqVz3IlXRC4Cd2hAQKd4PmnPR0dmdRcBVfLFJrIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6315
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

On 15/09/2022 02:13, Umesh Nerlige Ramappa wrote:
> On Wed, Sep 14, 2022 at 03:26:15PM -0700, Umesh Nerlige Ramappa wrote:
>> On Tue, Sep 06, 2022 at 09:39:33PM +0300, Lionel Landwerlin wrote:
>>> On 06/09/2022 20:39, Umesh Nerlige Ramappa wrote:
>>>> On Tue, Sep 06, 2022 at 05:33:00PM +0300, Lionel Landwerlin wrote:
>>>>> On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>>>>> With GuC mode of submission, GuC is in control of defining the 
>>>>>> context id field
>>>>>> that is part of the OA reports. To filter reports, UMD and KMD 
>>>>>> must know what sw
>>>>>> context id was chosen by GuC. There is not interface between KMD 
>>>>>> and GuC to
>>>>>> determine this, so read the upper-dword of EXECLIST_STATUS to 
>>>>>> filter/squash OA
>>>>>> reports for the specific context.
>>>>>>
>>>>>> Signed-off-by: Umesh Nerlige Ramappa 
>>>>>> <umesh.nerlige.ramappa@intel.com>
>>>>>
>>>>>
>>>>> I assume you checked with GuC that this doesn't change as the 
>>>>> context is running?
>>>>
>>>> Correct.
>>>>
>>>>>
>>>>> With i915/execlist submission mode, we had to ask i915 to pin the 
>>>>> sw_id/ctx_id.
>>>>>
>>>>
>>>> From GuC perspective, the context id can change once KMD 
>>>> de-registers the context and that will not happen while the context 
>>>> is in use.
>>>>
>>>> Thanks,
>>>> Umesh
>>>
>>>
>>> Thanks Umesh,
>>>
>>>
>>> Maybe I should have been more precise in my question :
>>>
>>>
>>> Can the ID change while the i915-perf stream is opened?
>>>
>>> Because the ID not changing while the context is running makes sense.
>>>
>>> But since the number of available IDs is limited to 2k or something 
>>> on Gfx12, it's possible the GuC has to reuse IDs if too many apps 
>>> want to run during the period of time while i915-perf is active and 
>>> filtering.
>>>
>>
>> available guc ids are 64k with 4k reserved for multi-lrc, so GuC may 
>> have to reuse ids once 60k ids are used up.
>
> Spoke to the GuC team again and if there are a lot of contexts (> 60K) 
> running, there is a possibility of the context id being recycled. In 
> that case, the capture would be broken. I would track this as a 
> separate JIRA and follow up on a solution.
>
> From OA use case perspective, are we interested in monitoring just one 
> hardware context? If we make sure this context is not stolen, are we 
> good?
> Thanks,
> Umesh


Yep, we only care about that one ID not changing.


Thanks,

-Lionel


>
>>
>> Thanks,
>> Umesh
>>
>>>
>>> -Lionel
>>>
>>>
>>>>
>>>>>
>>>>> If that's not the case then filtering is broken.
>>>>>
>>>>>
>>>>> -Lionel
>>>>>
>>>>>
>>>>>> ---
>>>>>>  drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>>>>>>  drivers/gpu/drm/i915/i915_perf.c    | 141 
>>>>>> ++++++++++++++++++++++++----
>>>>>>  2 files changed, 124 insertions(+), 19 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h 
>>>>>> b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>>> index a390f0813c8b..7111bae759f3 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>>> @@ -110,6 +110,8 @@ enum {
>>>>>>  #define XEHP_SW_CTX_ID_WIDTH            16
>>>>>>  #define XEHP_SW_COUNTER_SHIFT            58
>>>>>>  #define XEHP_SW_COUNTER_WIDTH            6
>>>>>> +#define GEN12_GUC_SW_CTX_ID_SHIFT        39
>>>>>> +#define GEN12_GUC_SW_CTX_ID_WIDTH        16
>>>>>>  static inline void lrc_runtime_start(struct intel_context *ce)
>>>>>>  {
>>>>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>>>>> b/drivers/gpu/drm/i915/i915_perf.c
>>>>>> index f3c23fe9ad9c..735244a3aedd 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>>>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>>>>> @@ -1233,6 +1233,125 @@ static struct intel_context 
>>>>>> *oa_pin_context(struct i915_perf_stream *stream)
>>>>>>      return stream->pinned_ctx;
>>>>>>  }
>>>>>> +static int
>>>>>> +__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 
>>>>>> ggtt_offset)
>>>>>> +{
>>>>>> +    u32 *cs, cmd;
>>>>>> +
>>>>>> +    cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
>>>>>> +    if (GRAPHICS_VER(rq->engine->i915) >= 8)
>>>>>> +        cmd++;
>>>>>> +
>>>>>> +    cs = intel_ring_begin(rq, 4);
>>>>>> +    if (IS_ERR(cs))
>>>>>> +        return PTR_ERR(cs);
>>>>>> +
>>>>>> +    *cs++ = cmd;
>>>>>> +    *cs++ = i915_mmio_reg_offset(reg);
>>>>>> +    *cs++ = ggtt_offset;
>>>>>> +    *cs++ = 0;
>>>>>> +
>>>>>> +    intel_ring_advance(rq, cs);
>>>>>> +
>>>>>> +    return 0;
>>>>>> +}
>>>>>> +
>>>>>> +static int
>>>>>> +__read_reg(struct intel_context *ce, i915_reg_t reg, u32 
>>>>>> ggtt_offset)
>>>>>> +{
>>>>>> +    struct i915_request *rq;
>>>>>> +    int err;
>>>>>> +
>>>>>> +    rq = i915_request_create(ce);
>>>>>> +    if (IS_ERR(rq))
>>>>>> +        return PTR_ERR(rq);
>>>>>> +
>>>>>> +    i915_request_get(rq);
>>>>>> +
>>>>>> +    err = __store_reg_to_mem(rq, reg, ggtt_offset);
>>>>>> +
>>>>>> +    i915_request_add(rq);
>>>>>> +    if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
>>>>>> +        err = -ETIME;
>>>>>> +
>>>>>> +    i915_request_put(rq);
>>>>>> +
>>>>>> +    return err;
>>>>>> +}
>>>>>> +
>>>>>> +static int
>>>>>> +gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
>>>>>> +{
>>>>>> +    struct i915_vma *scratch;
>>>>>> +    u32 *val;
>>>>>> +    int err;
>>>>>> +
>>>>>> +    scratch = 
>>>>>> __vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 4);
>>>>>> +    if (IS_ERR(scratch))
>>>>>> +        return PTR_ERR(scratch);
>>>>>> +
>>>>>> +    err = i915_vma_sync(scratch);
>>>>>> +    if (err)
>>>>>> +        goto err_scratch;
>>>>>> +
>>>>>> +    err = __read_reg(ce, 
>>>>>> RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
>>>>>> +             i915_ggtt_offset(scratch));
>>>>>> +    if (err)
>>>>>> +        goto err_scratch;
>>>>>> +
>>>>>> +    val = i915_gem_object_pin_map_unlocked(scratch->obj, 
>>>>>> I915_MAP_WB);
>>>>>> +    if (IS_ERR(val)) {
>>>>>> +        err = PTR_ERR(val);
>>>>>> +        goto err_scratch;
>>>>>> +    }
>>>>>> +
>>>>>> +    *ctx_id = *val;
>>>>>> +    i915_gem_object_unpin_map(scratch->obj);
>>>>>> +
>>>>>> +err_scratch:
>>>>>> +    i915_vma_unpin_and_release(&scratch, 0);
>>>>>> +    return err;
>>>>>> +}
>>>>>> +
>>>>>> +/*
>>>>>> + * For execlist mode of submission, pick an unused context id
>>>>>> + * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
>>>>>> + * XXX_MAX_CONTEXT_HW_ID is used by idle context
>>>>>> + *
>>>>>> + * For GuC mode of submission read context id from the upper 
>>>>>> dword of the
>>>>>> + * EXECLIST_STATUS register.
>>>>>> + */
>>>>>> +static int gen12_get_render_context_id(struct i915_perf_stream 
>>>>>> *stream)
>>>>>> +{
>>>>>> +    u32 ctx_id, mask;
>>>>>> +    int ret;
>>>>>> +
>>>>>> +    if (intel_engine_uses_guc(stream->engine)) {
>>>>>> +        ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
>>>>>> +        if (ret)
>>>>>> +            return ret;
>>>>>> +
>>>>>> +        mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
>>>>>> +            (GEN12_GUC_SW_CTX_ID_SHIFT - 32);
>>>>>> +    } else if (GRAPHICS_VER_FULL(stream->engine->i915) >= 
>>>>>> IP_VER(12, 50)) {
>>>>>> +        ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>>>>> +            (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>> +
>>>>>> +        mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>>>>> +            (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>> +    } else {
>>>>>> +        ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
>>>>>> +             (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>> +
>>>>>> +        mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
>>>>>> +            (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>> +    }
>>>>>> +    stream->specific_ctx_id = ctx_id & mask;
>>>>>> +    stream->specific_ctx_id_mask = mask;
>>>>>> +
>>>>>> +    return 0;
>>>>>> +}
>>>>>> +
>>>>>>  /**
>>>>>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>>>>>   * @stream: An i915-perf stream opened for OA metrics
>>>>>> @@ -1246,6 +1365,7 @@ static struct intel_context 
>>>>>> *oa_pin_context(struct i915_perf_stream *stream)
>>>>>>  static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>>>>>  {
>>>>>>      struct intel_context *ce;
>>>>>> +    int ret = 0;
>>>>>>      ce = oa_pin_context(stream);
>>>>>>      if (IS_ERR(ce))
>>>>>> @@ -1292,24 +1412,7 @@ static int oa_get_render_ctx_id(struct 
>>>>>> i915_perf_stream *stream)
>>>>>>      case 11:
>>>>>>      case 12:
>>>>>> -        if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 
>>>>>> 50)) {
>>>>>> -            stream->specific_ctx_id_mask =
>>>>>> -                ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>>>>> -                (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>> -            stream->specific_ctx_id =
>>>>>> -                (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>>>>> -                (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>>> -        } else {
>>>>>> -            stream->specific_ctx_id_mask =
>>>>>> -                ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << 
>>>>>> (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>> -            /*
>>>>>> -             * Pick an unused context id
>>>>>> -             * 0 - BITS_PER_LONG are used by other contexts
>>>>>> -             * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle 
>>>>>> context
>>>>>> -             */
>>>>>> -            stream->specific_ctx_id =
>>>>>> -                (GEN12_MAX_CONTEXT_HW_ID - 1) << 
>>>>>> (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>>> -        }
>>>>>> +        ret = gen12_get_render_context_id(stream);
>>>>>>          break;
>>>>>>      default:
>>>>>> @@ -1323,7 +1426,7 @@ static int oa_get_render_ctx_id(struct 
>>>>>> i915_perf_stream *stream)
>>>>>>          stream->specific_ctx_id,
>>>>>>          stream->specific_ctx_id_mask);
>>>>>> -    return 0;
>>>>>> +    return ret;
>>>>>>  }
>>>>>>  /**
>>>>>
>>>>>
>>>

