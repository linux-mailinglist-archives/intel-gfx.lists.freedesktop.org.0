Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393517C8D77
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 21:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B09410E4F9;
	Fri, 13 Oct 2023 19:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D2010E4F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 19:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697223951; x=1728759951;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vMuuLF7uF27nEHMHDG98wloYPCRykzX/shgN32pzN/c=;
 b=Vlo/N3VzQBiBy5+2zLhBUH8g7hWze2pip9vd4+sslqIJC0M7xmn6l7Ww
 XWOuhb72QpYws4i88dRYwq+MYEYqMAjpx0l+74RvfdaPJoXt0jMIVw2bt
 35Ao+CYhyLPZLusRgxAJgiO5V0NPNuXXUK6JQO68i2PtzRwsnJXt/jTxj
 NKY2vKII0oiWjGTotKes7Tq6FofYqN3zsi0yLXExzsFAdcRe43rXPqx5r
 95YD0dBIT0ejYQPgNZlrB4JVGz/7j30KXTYtC0bYdfQEqR9Q4roc9KRPB
 YE16UIx1wNpXS7KK/LijVSTmOwIQO4ySV19nxTU9hr+c3eA+dftVpu62U A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="370310622"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="370310622"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 12:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="1002058498"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="1002058498"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 12:05:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 12:05:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 12:05:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 12:05:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 12:05:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FI4jQE33v907pLY7Pn6SyvrKoLVJ5qdup3DZiQ/0iWtbEhUkWqEOBxgbdNQIGKj55dXdDXaP8qKs4RQChRboLECjwyFAFP7arSsOLoiuIkTl4gc5at12moPSF3lXVcMZ83nNNbCL9uKEFs6Efj3BlahcB5N7A86IhQFxtA6b3vJiR0Y1tB1KNz9B8ADB6/TNBIrasUexu3QHBgn4HfOzdLNECT+0ad7z7ELi5wqopMyFFaEZGd809jdNuakyG+VQBqExsK/PQW8sAV8yjZSkFat2+KsiXQ0BmvrBNBy3fEQP6P5RUek0Ma98b1XROYcav84/oT0K5mBhbkmw3rgOow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lGHIclex+5sJikZiAExKrw1MR4DR0BpTfA+4Ce7oUds=;
 b=hVatuiL1bbDL1d5aJHcfprFFizUqE7meSeK6m0TDB5U23KzToHNW+DCC061tkokkollDCNwpFnUljIueng0lPrY/i6BGiVR4MAOFcgQ3xw+98ONEU/2xCfz2C8g5XEIZGdnCO8+TFcb0r0RE2lOUrpSyVlDoqlo7UvOqTXjEx7vNG4ScbclYjVVrGFL5jtdsY3nLZc3zAxQ8X0CSGPMkOpD8k04AvYgsUtTsZJ2dLseJgfzo4WJ6cmo2yiUUc4k5zaQg+kEekHGyFYL4n0tdBWWSfWDEuznoLMRCrBD+XMZHzqEGqqqtmkGi1Flg5Zy4nhipEoS/ayrJGdnBq73Mvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ2PR11MB7519.namprd11.prod.outlook.com (2603:10b6:a03:4c0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Fri, 13 Oct
 2023 19:05:15 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 19:05:15 +0000
Message-ID: <6bafdad6-749e-42c0-8fd4-911c8e726485@intel.com>
Date: Fri, 13 Oct 2023 12:05:12 -0700
User-Agent: Mozilla Thunderbird
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-4-jonathan.cavitt@intel.com>
 <b40599f6-1808-44e0-88c0-0b7ff30ed74d@intel.com>
 <CH0PR11MB544433991CA741F597CCCA26E5D2A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <CH0PR11MB544433991CA741F597CCCA26E5D2A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0031.namprd03.prod.outlook.com
 (2603:10b6:303:8e::6) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SJ2PR11MB7519:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f142ee7-2ca3-4894-6e91-08dbcc1f5558
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OHxD7ewcYTtpXuXIhVaDtkGvyx/mj2fPRNvRDmJgkf0wi44mcpVFx4IWIqFtjZGL07vibvO/1edAO6z40DN1GdhPU5VEPOzQbjDH0N3sf7If4VyZDPC34C48teEN0rIhK2J3tmGycgjnOiT0xl8VOMTvIW+x+L6d6sszO3tKBZiwyic9eXUrV4sml7xh7qCGV2cUZfHUMyg/ePU9elWJ+c+xTYCkEdTo3adBTTfT+JmCY4RMmBHN61axUJ1bHc7lwRFGyY1aNn89amqfo7SoMXnARZuzaEXBwGq5KVmHijEHBVifgxysaMRLkc8TZb2p57fvWj0M8X3nnBqVOtnyG+WZtXUcWwFIttARv2+gTpnZRyP7hmy2/LqlEn16dTW6WM2/x3byHa5mjIaaw9p1prbL9fpoZ/1VZM9tFk+O3+x9611sEZwA8a1JnuUsrWoCyzgClDNdZraX7CmRtjGxTnZIzOB/ydQs03VzKhhzmk3PYIA48c9qjEfWmVEGOIDwMTo2UrwRp8nzY/QSPHRgcpTMc8NTv6rtDxrQDqaBOLQ+bJQ7sv42bERodprZS1RQAII7NEL6h2xZ366Vqw2m+169/POSy7XV0948Jish8iHYRmZmRmj7hm3Mak7DfTGTLfbv954vM6IxZJdJD+3k/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(39860400002)(396003)(376002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(83380400001)(31686004)(26005)(53546011)(5660300002)(31696002)(86362001)(82960400001)(38100700002)(36756003)(4326008)(2616005)(6512007)(478600001)(2906002)(8936002)(6666004)(54906003)(8676002)(316002)(41300700001)(110136005)(66556008)(66476007)(6506007)(66946007)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zk9jUndDaDd0d0dwUEdGMU1MVDMzRlhFS0JTbzZMSTBRSUpWWEJlQmNSYVhJ?=
 =?utf-8?B?b3V6Q1MrRUtSWmRubzN3N2x3dE1pTGc0VFhLbVptV0RaRXJKN3hENXczbjdu?=
 =?utf-8?B?RXJHRDlxUGJBOHhMNmFDaGFMM3JPSVRmMFBSZk9aeW00KytOUDRCQW1QSTN5?=
 =?utf-8?B?NStSZUZPUmhFMGdNUFBvWXNHTjVoUE5mTjFoMXhuUU5HSHRVVUtHVmo2eStW?=
 =?utf-8?B?NFlhbjFnbmNxc1U1N3A3Q0UxRlI4OUlCV2F6MXl2ZWdFZGxwQWJzbGxuTkhN?=
 =?utf-8?B?NG9hRjR1a29pWGxaV2E2UWxnTmQ2QlBoN0xjdE5qbVZJZGpqeitlWWNaNlcr?=
 =?utf-8?B?eXJrY0NraU5LNFpOazF3ZHBrSkVqeEowaGlZUHZSemkxdUloSGFaaGhyUkR2?=
 =?utf-8?B?bUlRM2ZNcVY3SDBySUJZd2xwUFpKaDRlWjhlVzBKYnJoRnBMUmUvZzczTlVq?=
 =?utf-8?B?MnVZMStmVExLSmV1VGVDdDkwaThud2Y1MXJxeUVoMmIyY2tVQlI0dC9GcWVZ?=
 =?utf-8?B?aUgrWnRhTytOb09neG1NcFN4Nkc4Rlh2ZEpVc2thR1k0YWtsRzRYWkhMSzhK?=
 =?utf-8?B?NlI1NXI1aXp3M0kwdzRNR3FIZ2p5Wi9kTDNWYnU0RzdrZFdSdFc0d1RnRUJK?=
 =?utf-8?B?eldIU3JjQUZLZDU5dFBodzJEUU1aeW9GTGlIQkdKZlBGdlBxa2xBNzRYSm9t?=
 =?utf-8?B?MnBzOGR4Vk95Y2ZuOVFid3Bxbm80bEtBN2RXVTJSQzNPSUwzTktjb05scEts?=
 =?utf-8?B?SnRHWml0MkJqNUhJT2VkWk1JLytNbHZRUGwwOUJtMVNIc3pwTE5NM3ZsOW5w?=
 =?utf-8?B?d29LaDEza3hkY1BwejVHc0ljRGNWeE8rZktkYVFYYTZnUWMxY08rck5WelNT?=
 =?utf-8?B?QVNBeUhBaW55clpxTnp3SXdZNEFYU2JuTkZvakI5amZPdm8xRytSem5qbWNQ?=
 =?utf-8?B?bFFrcDlLN2l4MGVINWZtWC9vOVpNaUpyN1ZvWlNKMUR4SW9xSWdnNGhiN0Ev?=
 =?utf-8?B?dnAvZjRSTzAySU5id0R3OHBjbmpDZkpDR3JOb3V0NlVXQzNWeXlXc1JTN1p0?=
 =?utf-8?B?UGtyNzc1YjV5T1hjcW13YS9TOG1oeGJJM2w0ZlRRZFJsa25OZ05wN2RXSmE3?=
 =?utf-8?B?dnY4R1ZqbmtqZ0hlKzl1UENmeDBTZXM3Wm5ndHVoOFhlbE41QW5FZmNnSUJ6?=
 =?utf-8?B?dEJJWlJ3R3o0aHpTTmUxeG9qanNZV3AyY3ZOT0xudW5NVjhoTmwxS0M5MW9k?=
 =?utf-8?B?VFU0cE5WbzQrZlpJNnZVdnkxcjdPdlF4OFZobExvVlJ6TmJGZllmZEV2QTFq?=
 =?utf-8?B?UDVjd1ZiaC8yV3dvaFZlUWg1RFNHWjlZeTRwQXhDQ0pneEd1M2hnTnZsN0Qw?=
 =?utf-8?B?VzNYYkJGbTFSaGd6WStRbDg2K29WdGg4NmpjMmt0bkE5RmZmNjJuQzJJY0hR?=
 =?utf-8?B?R29aSTcvMmNqSDFOUkxmNHF0dVdzYlB2NDBMYmJwNVpwQ3hkL3YvSkNPMU13?=
 =?utf-8?B?bUpZcm04MHVMUkIwV3o2Q0R1ZkhaL0VBRm5teWxSaGFVVk1aUzRudjYxRGJv?=
 =?utf-8?B?cmlSNndYR2dOQWN4RDhBbW02YnV5cjdjQjZSWFlZK1dQZmJRK0k0Qi9ER0Fm?=
 =?utf-8?B?akNjVmJXZmtZY2w3QVZabmt5RWltNVNzVzRUYkRXMS9VQnB2YU44cUVQU21u?=
 =?utf-8?B?V1F0cWlRaXJTT1gxVE51N2lLdTdub2xVWklsWjhhNGpoRW42RFpGV2xLaFdI?=
 =?utf-8?B?eEVoS2RDZjdyTHVxcFBtQXBxaGZiZ0M0TGlIcnJZZ01nQ1cyaXpuM2lzZ2JP?=
 =?utf-8?B?bUovOGhDMEM2NTdQQzJMRW9IczBlYWFLQnk0L0hlLzE0Mm5vT1NrQnhmZUph?=
 =?utf-8?B?d01iUC94N29aYlM3d2hBTCtRcVFFeXFVTVdFU2drb29iZllTU2VCVTBIME1L?=
 =?utf-8?B?N0tlcGlhZ25wcmJES1RxR1FOSlhxeDJQcmNaek1ZN3hFTXBwT0pGVzM4UVhj?=
 =?utf-8?B?WWpyaEh5d01hQW1WR3hIOU9PNzNQYmo1RTcyb3VrRjZiZmR3dkphNGZkVWNj?=
 =?utf-8?B?RXBHdk82b21nYWEzMDJub2xjMjg0VVhKV3VhTU9jRWgxZUlOTkVNclFXNVpO?=
 =?utf-8?B?aGpGVERZME9hRmhMTDd6eWhNcFZ1QnA3enpaR0lXTkxyb1BScEhxZkt3S05Y?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f142ee7-2ca3-4894-6e91-08dbcc1f5558
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 19:05:15.3293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +LiWG+OOcAxmdNb8MHMyvNCNT81JzZuZKTsR9zzdK/UAhekEf8ZfBnVkESxmi27LbeeRWAwDqQCX/nJrEbBx97FUQlyOFfAxptd8fYWi4JM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7519
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/13/2023 07:52, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Harrison, John C <john.c.harrison@intel.com>
> Sent: Thursday, October 12, 2023 6:11 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <aravind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>; Krzysztofik, Janusz <janusz.krzysztofik@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.intel.com; jani.nikula@linux.intel.com
> Subject: Re: [PATCH v13 3/7] drm/i915: Define and use GuC and CTB TLB invalidation routines
>> On 10/12/2023 15:38, Jonathan Cavitt wrote:
>>> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>>
>>> The GuC firmware had defined the interface for Translation Look-Aside
>>> Buffer (TLB) invalidation.  We should use this interface when
>>> invalidating the engine and GuC TLBs.
>>> Add additional functionality to intel_gt_invalidate_tlb, invalidating
>>> the GuC TLBs and falling back to GT invalidation when the GuC is
>>> disabled.
>>> The invalidation is done by sending a request directly to the GuC
>>> tlb_lookup that invalidates the table.  The invalidation is submitted as
>>> a wait request and is performed in the CT event handler.  This means we
>>> cannot perform this TLB invalidation path if the CT is not enabled.
>>> If the request isn't fulfilled in two seconds, this would constitute
>>> an error in the invalidation as that would constitute either a lost
>>> request or a severe GuC overload.
>>>
>>> With this new invalidation routine, we can perform GuC-based GGTT
>>> invalidations.  GuC-based GGTT invalidation is incompatible with
>>> MMIO invalidation so we should not perform MMIO invalidation when
>>> GuC-based GGTT invalidation is expected.
>>>
>>> The additional complexity incurred in this patch will be necessary for
>>> range-based tlb invalidations, which will be platformed in the future.
>>>
>>> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
>>> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>>> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_ggtt.c          |  33 ++-
>>>    drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>>>    .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  11 +
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 195 +++++++++++++++++-
>>>    7 files changed, 299 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> index 4d7d88b92632b..7d145b2d3cb17 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> @@ -206,22 +206,37 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>>>    	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>>>    }
>>>    
>>> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
>>> +{
>>> +	struct intel_uncore *uncore = gt->uncore;
>>> +	intel_wakeref_t wakeref;
>>> +
>>> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
>>> +		struct intel_guc *guc = &gt->uc.guc;
>>> +
>>> +		intel_guc_invalidate_tlb_guc(guc);
>>> +	}
>>> +}
>>> +
>>>    static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>>    {
>>>    	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +	struct intel_gt *gt;
>>>    
>>> -	gen8_ggtt_invalidate(ggtt);
>>> -
>>> -	if (GRAPHICS_VER(i915) >= 12) {
>>> -		struct intel_gt *gt;
>>> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
>>> +		gen8_ggtt_invalidate(ggtt);
>> This has not changed? As per comments from Matthew Roper and Nirmoy Das,
>> there needs to be a fixup patch first to stop gen8_ggtt_invalidate()
>> from being called on invalid platforms.
>
> Given the sounds of things, it seems like this change here is irrelevant to this patch series, as the reason we're
> guarding against gen8_ggtt_invalidate isn't related to GuC-based TLB invalidations at all.  Ergo, it would actually
> make more sense for me to not skip it here and leave the respective guard change to a different patch series.
> -Jonathan Cavitt
The point was that if this code needs to change then that patch needs to 
happen first. Otherwise there would be merge conflicts when pushing that 
patch to the stable trees.

However, it looks like the change is all happening inside the gen8_ 
function and the intention is to keep calling it even on Gen12+ 
platforms that don't need it. Seems odd but people appear to be happy 
with it. And therefore no conflicts should happen with this patch no 
matter what order they land in.

John.

