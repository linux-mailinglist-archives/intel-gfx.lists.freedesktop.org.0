Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D015FECCA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 12:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B835910E086;
	Fri, 14 Oct 2022 10:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C17B10E084
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 10:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665744979; x=1697280979;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tW1NT1OF4wGKZYUbcbAWSVi0dXYEZONxsk43DmZbm5Q=;
 b=bOos4X7B76NunKBC5SZuaOzPIzEh21nwlmx7swMdRWyomV9BJqa2/b/U
 Sgvk4RrkFIWGb6hhdJmo6qoQTtPClvcUAPfPOunoMEZCgI4sX1SKIqwpl
 Ncd9EB6z/XXfa4EsYx0uWmzLhsZmTmuR7zae8P1qfXciRe+O5hfE/XDxs
 4mF6LvPnebPIV9h+FCvsPbQYA9th+MHIQ3n2lXX64nwsjX4mJnuvfrwwL
 UrDV6U6jgNRydy5o/t5FjYcfjWHNEKblfRE0f8Ww0NYkICxb1l4RHr82S
 fa5Pbs5ak+X7Iqd3uhpVVFogcHYuMIIWL65Lc2193UZzuzo/EPBSQCQvs Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="305337344"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="305337344"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="732259927"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="732259927"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2022 03:56:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 03:56:18 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 03:56:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 03:56:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 03:56:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=copnJGcx8esBQDvh0s/rvyD+TG4sqiFu1OZe/KpTMKuLkRYCGN+DIZzvCHP/6ZqZZJ13P6dG2BMUK3kHh0LEda4mJ8vzx6i13FYc+XpgEerUVOImm8SBe78SsHEPvaNxtkF6PKRvHF9QbZhEnI4meT1Bo0V8RMomAujm/0pwtIRgsyj2N/4bMcPtZd4H9FJDvfK6m91lI4Jx71aigJ+6Zwv+tWPVhyGo2X0/zumW7SQogOwRu0JrkUU0vL8srnxnzPjoQLfKmsu8qnpmS2ugYPwrx7r7jJLZ2HFxSi5JztcwHTl4llZR3wlV4y1cUJt/sCv1eGCwfo5keetKE7Tcow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rcEMWiAyM3Te59Vw+U+h0B/7y3Ff3DclSgyty4H8sk=;
 b=RkRJg8ZI+CSu0NnfU/fLJLM+3zN2SU+mgXHyJENUf+UHWSX4T3tWhloUQJs/F2JgLnNYiVztgz0wPdiyh7webhhszMQWTDThq9o6dx9QmewX5mSv4NtKi0v0zimd99v5k+q+ILZmkEHxRRR2E8pVYnYGhP9sB4WjctnwGverK+1E16xD/y4Gf3zZaxZ4hC2PThuxCwx5PRZtUAi9TjhRBcoLgeoY5AzSfS02PtFwGnL9siS0fglyC+2BCig+7xLY1E3JUTVC52clgQesx1niAevhkjl7GzvuHkMFemyiWLbszYIfzFS7AYUugjoSTCJDuFCo44yL4ubR0Z92+a3RHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BL1PR11MB5477.namprd11.prod.outlook.com (2603:10b6:208:31f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Fri, 14 Oct
 2022 10:56:15 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f%2]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 10:56:15 +0000
Message-ID: <69247691-dea8-cae7-f73a-73e2159d5866@intel.com>
Date: Fri, 14 Oct 2022 12:56:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
 <fd2b6520-fc22-638f-4e40-415eba3091fc@intel.com>
 <30962664-a23f-f07c-1ffc-c9ff0bc9b0b6@intel.com>
 <a7019d6d-c0b5-aa4e-c821-0d68d7894b4d@intel.com>
 <4cce5338-ade6-0e3d-3c90-3a7bdd30129b@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <4cce5338-ade6-0e3d-3c90-3a7bdd30129b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0559.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:33b::15) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|BL1PR11MB5477:EE_
X-MS-Office365-Filtering-Correlation-Id: 61a7e070-a082-4bce-797d-08daadd2b70c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uc6OngNS14wYBzowVNS1V4PGtck7QyY8lT97PruXb2bL/j0jsjO8BqiVoRtXA2YYZ6MDrJ3Aax0b/19VK13VBA62DXJRaUHXSUQKr4gVXNHqlHYX/W9tRqsz67ezQys0IiJGnZAsTE7nPpi+Q55bcZ8HkBuYwTgpnW8ceNSzV9qCyRRto2IKzNxVBMNX9Y7bt+4RRboSadvzzIbR5WghR3G6WQckjI4xfjMjdTevunorvSZ2PScdeAlKyBCU/5L/ionSgV8ZXHEz+xL2sl33uXmFH4WNFjlKO3wDbgcF91ib4P/ZrJlNNTzm/IbHsvwHYjuLRi2dCQtHXQaMMrhboI0u7xvE6qr6CCk0or3F1pz24jYE17Pnqgiz3AILc91ywXHeFlVfIq9HwgtLAo08MvDj8oC2HvsgwWka1gnaFCe1V0VmYXgXT4kXQcYfVbMWn9HTDw1/ChYhD6VSJia/u08NfyPdB69/Ul1K85C2wSHawPMMCede2BXWHi5/eGGZK7fnRxn87FhrmCZKUzoL7sglwlZsLyt5Z/+hLRiEdvDa+QZYYaG2UT4aN+GqZOL50kTcneRiEwvrIqQFVXiNGqf5e3/xA/hYcXz4pqjUbJyCpNWGuXRrD5fwTbLXCL2aR21+JcwI8aSpbPIOTKOwfg3hUPGPGIrWl5TmTi1TZc1lVqDorDTUFxf8RWFOlcjnfoJ/Yj5N6Fj5ktmv+2LcY3OJl3syXhuZmM4TvztHyeht/vy3/UuWSsFYDpAflfQ/AenudEACprTHEdF0OBzflyLT1Qkjssv4V5ptTvFWx9g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(346002)(136003)(376002)(39860400002)(451199015)(26005)(86362001)(31686004)(41300700001)(31696002)(2616005)(186003)(5660300002)(478600001)(38100700002)(82960400001)(6486002)(6666004)(66556008)(4326008)(8676002)(66476007)(66946007)(6512007)(36756003)(316002)(110136005)(83380400001)(53546011)(8936002)(2906002)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEcrM1hlYklmZHhBeTdOclNtNjZyREptbVh3YzBxTnZ4d3FYV2grZ25sbHVa?=
 =?utf-8?B?cHhuQVNNY3FwZk9GVlFzeW1zeFNZM3dlK1NaZG0zTWVoN0RpMXBaV0p1WW1C?=
 =?utf-8?B?QkRMSnJJZCt1bTNkeFAyS2t5WjF4UTczNUNyUFA4QmpHYmMvMkJJUm4xT0xI?=
 =?utf-8?B?am5hLzJhYW9vZXZCNkZGRFBlSE41MmpUcUtSNHhwUXU0T0ZhTWowdXJ4RS9h?=
 =?utf-8?B?ZGE1R2wwTUF2MktMeUNpakt3cDBkcXM1SzR4L1dLMksvYTZ1WUJUUmQrUmRT?=
 =?utf-8?B?NEVyTjA5R3RvVHRva2hkWlpRUjB4a0swZENvVEZTaU1GM2Q1V0hVekRObXk1?=
 =?utf-8?B?NjAzRUhFakR0Smo4UTRpZ082OHcxSkJwY3ZVbGFjNzZxYzdzUzBGbVB0NDhi?=
 =?utf-8?B?OTlPWTRFVE51NkpoZGphTDNPWWdGVmZxcjRBOGJuRWpBcUJ5bTFmelFSYndF?=
 =?utf-8?B?RXhFWWROTXRpaDJ1cm8rMU9qOW9GZDk4NU83NmdYaHZjNi83VGtRSHZja2hq?=
 =?utf-8?B?NmJPZlRYdUxvd0hURVFvVkVmcHp0eituZ01CQUF2MGNncWhlRzNtcGFPOXRH?=
 =?utf-8?B?VWl6c3pIbVVnYlh6Y00zUjh0dzhkdnU4MzhTV0pIc3dZR2c5Rmk3T0YrZXZK?=
 =?utf-8?B?TG4xOHQ1d2Y1MjdGQ1NlTGp1OXpyVDcxdk1sd0ptUUZDQW0xL2N1eXBXSGZX?=
 =?utf-8?B?UEsyam9kUXIyNklBZ1oweWZQb1BnNmpkNDhrRXRwcXBEZk1jM1FIUEpjcGI5?=
 =?utf-8?B?d2VsS05qcjNIQXlTSnRIY1RKbU84NDhkMkVhWTgzTGgyYWRxZHN2K01mMWpj?=
 =?utf-8?B?N2d5ZnlwbFJ0NkpSQnp6WXRidmQ3R2VRNzJBYW1rdHcrRzlabE92SEUvYmto?=
 =?utf-8?B?Nk9nSXB6NWdjMFpieitpaHJ3MlYrSjlXY0xnSEo4WW82dXlVNDV0RllnYlg3?=
 =?utf-8?B?SU9PRzRvYWhqMlY0bUFaVDEvcjIxNnNUcks0eUFDcURnYUJXekQrL2kwNFdv?=
 =?utf-8?B?MjlNZnh3R0d5L3BQQ1Z3b3UrTmVpZzFMZ1dSV2FXbWF1NzhuWHZ1dmhqVEFv?=
 =?utf-8?B?SngydG9XTDlXbXpRMG9nTEFvdVltcTgxYnhaWjcxWmd6eW5XcjhtK3BMWjli?=
 =?utf-8?B?dTJ0Z1c0YmVMTWRLa1lIMVlhMHNhNEtJN1RpTHVrOEJDTFhOT3lRRzVDc2gy?=
 =?utf-8?B?ZVZzc0JDemhRZENrc3YzMC9uUW93R1NXaGdUT0RqUTA5bERHeWRsYnFVVEZZ?=
 =?utf-8?B?cmRYUW12dnhrR2hFVEZ2WmJHTHp0TFVBbVZaVnVkeXU5SW0ydnRVUWdCY2or?=
 =?utf-8?B?TzRUSDNUMGowVERML3EweGVpTGxVVStXVWg1eTVDOXFGLzRSQ3dkeW1icjNo?=
 =?utf-8?B?Q1FQamtkZlhIaENPbjlxZkh1bW1wTC9odFFWQ2wwQ2ZaWWl1NWQ4QUZsdHRX?=
 =?utf-8?B?NGdRaExSYU9RbGo3UlYyZW4yVFY2MFFVZjJ2V3I3VGlXK2pWQXdvb2IzV2tG?=
 =?utf-8?B?dzRSVEVjdTU5SzlIN2ZkSmE5QUhUVWlqWFdZZStmVS80QkpYeVovUHNBVHhC?=
 =?utf-8?B?TVE4d0pLMjUwWVJJNythbE50UXlBNFdtV2dBYWo3cVNtTFpIV24xb29ieVlT?=
 =?utf-8?B?RkF6MDJDeHlFakV2V1daV3ZhbXd2YXJNZUxiLzA1ZWwrRVNtYUIwNDZuRnhT?=
 =?utf-8?B?Ykg3YzV2VndJNXowSU1EL21yTms2cnZnR24rVE1UVUdkQVlrQnRKdUFtaE1u?=
 =?utf-8?B?MkZhUjRPR1FEWmF0SWFGcGhSTHNsRG9WWGZoK2MwVWw5MUFHNGhMUjFjcjYy?=
 =?utf-8?B?TG44WEZQU3BySlJRQkdFaVZFVXFtc2p4OGFQYmlqZndCaUxUb2tCdnFpdDRU?=
 =?utf-8?B?c2QwV2dMK2RiSkFsMmsvcUJRbFNzMTQxNGhUQnd5NEJjOUVTZENsNGtVS2g4?=
 =?utf-8?B?a3FxN0piaXV2SC9oQ25MWU1yeUJGa3BuSTlER2F1aFN0Nlh1cDFJZ2lUL2lm?=
 =?utf-8?B?WlJQUE5tQ0tkeTk2VC81bEZkTy9JQnBZTGhrY3N0Qm9RWTFmZUFhWk5mcGl4?=
 =?utf-8?B?aUNNNXlRdm1ReTdIYjUvTVdZdFlpMkh5ZGFYNytvME9jMlFtV2NTc2RoLzRo?=
 =?utf-8?Q?csd090s1XWksbQEihrD9Y3YOC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a7e070-a082-4bce-797d-08daadd2b70c
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 10:56:15.5100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IvMe43ckJA0A7m7bRA7wLBypfmMVD0YHhvLfOM8CT077b3m9GmGjt6zNVZ8PqAmX6Q4h2UT0J1oHOF0oxgx5uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null
 pointer exception
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
Cc: andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/14/2022 12:52 PM, Matthew Auld wrote:
> On 14/10/2022 11:38, Das, Nirmoy wrote:
>> Hi Matt,
>>
>> On 10/14/2022 12:13 PM, Matthew Auld wrote:
>>> On 14/10/2022 10:27, Das, Nirmoy wrote:
>>>> Hi Matt
>>>>
>>>> On 10/14/2022 10:39 AM, Matthew Auld wrote:
>>>>> On 13/10/2022 18:56, Jonathan Cavitt wrote:
>>>>>> i915_ttm_to_gem can return a NULL pointer, which is
>>>>>> dereferenced in i915_ttm_access_memory without first
>>>>>> checking if it is NULL.  Inspecting
>>>>>> i915_ttm_io_mem_reserve, it appears the correct
>>>>>> behavior in this case is to return -EINVAL.
>>>>>
>>>>> The GEM object has already been dereferenced before this point, if 
>>>>> you look at the caller (vm_access_ttm). The NULL obj thing is to 
>>>>> identify "ttm ghost objects", and I don't think a normal userpace 
>>>>> object can suddenly become one (access_memory comes from ptrace). 
>>>>> AFAIK ghost objects are just for temporarily hanging on to some 
>>>>> memory/state, while the dma-resv is busy. In the places where ttm 
>>>>> is the one giving us the object, then it might be possible to see 
>>>>> these types of objects, since ttm could in theory pass one in 
>>>>> (like during eviction).
>>>>
>>>>
>>>> Yes, we should not hit this.  Thanks for the nice "ttm ghost 
>>>> objects" reminder :)
>>>>
>>>>
>>>> I think we can still have this check to avoid code analysis tool 
>>>> warnings, what do you think ?
>>>
>>> IMHO I think it just makes it harder to understand the code, since 
>>> conceptually it should be impossible, given how "ghost objects" 
>>> actually work. Adding such a check gives the impression that it is 
>>> somehow now possible to be given one here (like with eviction etc). 
>>> AFAIK just letting it crash is fine, instead of littering the code 
>>> with NULL checks for stuff that is never meant to be NULL and would 
>>> be a driver bug. Also there are a bunch of other places not checking 
>>> that i915_ttm_to_gem() returns NULL, so why just here?
>>
>> This is tricky because some place we might receive NULL and some 
>> other places we might not(from i915_ttm_to_gem). I also don't like 
>> the idea of sprinkling NULL check everywhere.
>>
>> I think the issue is i915_ttm_to_gem  returns NULL for non-i915 BO. 
>> We should move "if (bo->destroy != i915_ttm_bo_destroy)" check to the 
>> respective function where we
>>
>> expect ghost object. That should make the static code analyzer happy 
>> and also makes it very clear which function expect ghost objects.
>
> Yeah, that sounds like a really nice idea to me. amdgpu looks to have 
> something like amdgpu_bo_is_amdgpu_bo() for the spots that might be 
> "ghost objects". Maybe we can add something like 
> i915_ttm_is_ghost_bo() or similar for our needs.


I will prepare patch for that then.


Thanks,

Nirmoy


>
>>
>>
>>> Did the code analysis tool find something? Also why doesn't it 
>>> complain about vm_access_ttm(), which is the one actually calling 
>>> access_memory() and is itself also doing i915_ttm_to_gem() and also 
>>> not checking for NULL?
>>
>>
>> Yes, I think the patch idea came from our static code analyzer 
>> warning but I can't seem to open the URL. I am also not sure why it 
>> doesn't complain for other cases.
>>
>>
>> Thanks,
>>
>> Nirmoy
>>
>>>
>>>>
>>>>
>>>> Thanks,
>>>>
>>>> Nirmoy
>>>>
>>>>>
>>>>>>
>>>>>> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
>>>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>>>> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
>>>>>> CC: Matthew Auld <matthew.auld@intel.com>
>>>>>> CC: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>> CC: Nirmoy Das <nirmoy.das@intel.com>
>>>>>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>>>>>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> index d63f30efd631..b569624f2ed9 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct 
>>>>>> ttm_buffer_object *bo,
>>>>>>                     int len, int write)
>>>>>>   {
>>>>>>       struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>>>>>> -    resource_size_t iomap = obj->mm.region->iomap.base -
>>>>>> -        obj->mm.region->region.start;
>>>>>> +    resource_size_t iomap;
>>>>>>       unsigned long page = offset >> PAGE_SHIFT;
>>>>>>       unsigned long bytes_left = len;
>>>>>>   +    if (!obj)
>>>>>> +        return -EINVAL;
>>>>>> +
>>>>>> +    iomap = obj->mm.region->iomap.base -
>>>>>> +        obj->mm.region->region.start;
>>>>>> +
>>>>>>       /*
>>>>>>        * TODO: For now just let it fail if the resource is 
>>>>>> non-mappable,
>>>>>>        * otherwise we need to perform the memcpy from the gpu 
>>>>>> here, without
