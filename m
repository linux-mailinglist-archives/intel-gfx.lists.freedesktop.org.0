Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3351E7BBD21
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 18:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945FF10E53D;
	Fri,  6 Oct 2023 16:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C054510E542
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 16:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696610695; x=1728146695;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=UZCgV0Ew9G6QmPpQNa3MyL/UoKI5qzF1ru+F96PzfYI=;
 b=Hp2+4wJ9hp41TbA7RiiD3oYxd8uSU+LtDdb3xnN60wQ2Gk67O8fjnnNJ
 1gyP7JPPyAQzS0e4PlnZRfnj3w1eoQQVt4P29msuGzsxyVB6ZbN8YV0pR
 j5L7opB8YN/g00ay21T3cidcHvfB4g1RMy0TxHVXlVUasqnKiAKI5Ma/e
 oJb5KXl3NGiEh3oRWqF09z6KM/uE4Be4sPTORGrLlsCTE0Cf4/XqjWp4f
 0fmhEWPKsXMibDwkkx/XarpLQ7TntbjozlodOb3ni912xH7tcGN24FCXF
 1RAMPXrBSUswlJZ38A2AVAoBB21coZG+XLNMa6ULIZcuY82B4Uj1qk5M/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="2387402"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208,217";a="2387402"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 09:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728889579"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
 d="scan'208,217";a="728889579"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 09:44:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 09:44:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 09:44:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 09:44:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 09:44:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T1qbK8EnIZ2QHhROpF8efAhMaaUPOclbBkNshmmEl2WyYXXN0RBdrPF70SScqonU4uH2ddOXTl2NqlSSdIKVHPII3/NkNIqHoJ7QocMigaQvur4jN/oQhw1d331cR1LKNXcru5JU/vP1/N/RqG9fFc+u84DHAFqLL1GIeCBQFZVIPzEyruYrw9fNFq74MJXikLZLvFIvB+frUvEK6cS37NuRoOnyasgth8CuA2/FgtpgyLBOgIm8fc17yOnyGUCcVkSh3pTlvxAQWv0AHfhKMurSY9tlwfmwYexqMtwMGXxTa3VspkcGUxnlMgemfbmsY2PbmsQ9G+e0LiMxTwqKgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBLvcT1gZY7B+qJuKUG9nmTXd3inWYH2/0oMUTGdqfk=;
 b=nwP18v5MyA+fagA/o671bskZHECeaJgSHDh3dxeCNONcGLnmiKDxBQd4Bc1iRP33jJ8369iu1x/hAG7lulZlTGDerVZqjit3d81sGjjeEGEKqS5RH876Cb5WR2b/JwOnzQOTqh/v4BBdn3rHCypPR67xOj+3gEVuryme0lU6ycmuPv4eRBxo+pZle1z095YKYOXCi4Jx8qjAPl0qHnH0f5+nbmU29ffTZl0fmhaNNnFuvgimJ4nxZJ+DImRDVAlSRUSgPPamDXX7Eg03G3Ov3mv4wnKSCES0HTQOMdwcVEWdljMjycyG9NbWp4HhSBMToGgayV9gNVuOGT4u9QvIPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CYXPR11MB8756.namprd11.prod.outlook.com (2603:10b6:930:d6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Fri, 6 Oct
 2023 16:44:50 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 16:44:50 +0000
Content-Type: multipart/alternative;
 boundary="------------2YKYUOulITHfXDeSZdNw2Yji"
Message-ID: <1324a273-8301-ba80-e437-1d1f7803820e@intel.com>
Date: Fri, 6 Oct 2023 09:44:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-4-jonathan.cavitt@intel.com>
 <4f9ddf13-d779-e2ff-2baa-73d5d35c5009@linux.intel.com>
 <b95d8be7-c546-1b1c-3975-a4ef6257a28d@intel.com>
 <cae4f144-2e88-9c3c-985b-849e7f5ff123@intel.com>
In-Reply-To: <cae4f144-2e88-9c3c-985b-849e7f5ff123@intel.com>
X-ClientProxiedBy: MW4P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::6) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CYXPR11MB8756:EE_
X-MS-Office365-Filtering-Correlation-Id: c0c316f2-4839-4420-1d41-08dbc68b8f17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LHTvaS0JRbvzXlQTKwKidy3HjF4tsY17CuA9lxvn34bVNgcaB26ahJ4rL1fjxRcIC0o8BxYjooudEgCSjv2Bo1+VvTIfyst7Vxw2FigP8dk1mpOETT6lOvVLCJ4bkPr7l2vAzzNfMBGUj0uXUTPfSmQvmeMTYAI/Tm1XYJhCn/S35+6gT2AdlFdUjeAofUnK5RlS8fq3NkyAE8ZOzVTx5y6tYC2SUbzGisM7k5SFbHHJQWnWoUM+tMeEQK1J7Shauf1IPi1xs3WRnpuiPk4P/tYkRMHv9N+GlJ8IMXC8CYJTjGhlejGRrGVx2rLjsPcKOkC2or6j8spHPfwQOJq3ycY6lLPIrCuLnHs30dduVL0VIUFEYrgA93D47HFAae5KILxabobRyyuXOh4uTqTGpJmBqYm7/kWuP9fi1bmerGDEaZ7W0S9GeS9+aTIg3kntjq6K883yMP/SamwtLdOlwjY9hALTqv8FPv3EO+36KWbZdcNtJJzUHkDDpzVaZY0NEEBhEVR1yu8yifHnhH2VSiGyMljpLzd4IfEHiG6ydvmyvq6jKQ3gouX1P6N/wxJO+DRL4EbvXqFfF8w1EBejPkXSMHyu9kzIRwCG8/QQRMMm6yfBeuc9TnoQeYzf+rCjDKE0K8P8BUlsC+YHkC/Bzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(136003)(376002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(2906002)(8676002)(8936002)(4326008)(5660300002)(66476007)(66946007)(83380400001)(66556008)(41300700001)(316002)(110136005)(478600001)(31686004)(6512007)(33964004)(53546011)(6666004)(2616005)(36756003)(6486002)(26005)(6506007)(82960400001)(31696002)(38100700002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU1GaWh1amJmQnlDOVZ0ZjJSd2l1RTZVUEd1TTRuaEJRQjlsZ21lVnczeXlh?=
 =?utf-8?B?MDI5L0w4dVlLN3Z5a0dXNTkvR2JUdU9KR3A0OSttS1VNbDJwczlSVmtwVWsz?=
 =?utf-8?B?Q0hieVEycGZibXRoZVV1K2RwV1hSb29KdVI0ZzMyMHgrVHlzcG1URTY4dmdx?=
 =?utf-8?B?QzRRWU11ZG1sbGx5Z0RKMWp0U29KSzUxK3Z1NXNMMmtDWDFnZlljbm1TRlFC?=
 =?utf-8?B?R0RpUGViWDd6R2RldEhoaFpXbXZQeXptY1VwV2dTL1RtbSt6THdORU5hNXQ4?=
 =?utf-8?B?U1o4K21oSHZKWE94cld4WkJQMEcvSWhWOUNyV05IYlJYOWVRWXBWeHZxa2Zy?=
 =?utf-8?B?SWY2UzhCSHlPWUZRTWtJQWZST1h2am1BQzRFTFIxNC9EN01ZMng1cWlPMUsr?=
 =?utf-8?B?dytFbW9OelZMZG9LcElvQzlFSTNtVVpIQ0YwWU90YnV1dnhxOFFGSFM0UEF0?=
 =?utf-8?B?TmdZb0xZZkN4cDNzamdRd0pCQ1NiZEJTM2pJdDBnTnlua2hZODRoTFZmc1E4?=
 =?utf-8?B?TGthVlVieGZkTkVQSDBnTXI5S0FLNnJuQXVGTHkzbTA0L3ZucGZxV3BMZTAx?=
 =?utf-8?B?YytMNk5XTDB2Wlg2MG1vbUdoV3A3amFzV1ZRQzNLWWVtdlVRenhmVW9DcG83?=
 =?utf-8?B?N1JWbis3cjJBb1VoS0VHQlhoaWJIWElIU0NSQkdjMTg5b1hEWmY2WXQxSzJ5?=
 =?utf-8?B?S1BlZlVzT1gwWWV2QTR1cmNuK1RZMWpLdURrTXE4bzhuMDdtZXlCZmVyR0Vm?=
 =?utf-8?B?N096Rjh1SXBlZ3VXVytlUlRNR3lHSXZISFR6NXA2RlJwSktBdU5EVUlUSzUx?=
 =?utf-8?B?STlRYjQxQVNTMFVxQkxDVVFHOEROczkrQ3BjYTVwNmpDaUNZelBIN3ZKR2RE?=
 =?utf-8?B?SlRPVlNoREVmcFQ2UlpLa2M0eUJEaXZWaWtCUHp5N20yWm9wOU95UmNSSitR?=
 =?utf-8?B?MVpWRVdZWk1KSzZrcDBWSHUzbVFJTmFaNmk3cjlHTjJDTy9Bd1lOdDZnNTJH?=
 =?utf-8?B?Wmt0OHJWUzlCaDlYQkNLdVdCTkIwL2Q1Rk81QldOWng2cGoxcU9rR2dROUJZ?=
 =?utf-8?B?L1hydndZNTBYVVdXMitsc0c3VGNyby8yR1oySWxNRmh4VjQxeHhKQkxKT2dT?=
 =?utf-8?B?VGJLekFzZ2ZrbGZFSkFSYmxtWHJUVzFEUXFWNkR6V0NsNnFFdlZCZm1hak80?=
 =?utf-8?B?dmVJeHZkVEtQSUtia2xKcGpSVFRWRitxMWtJazFob1Nuam0wSjZDdDYvVXJz?=
 =?utf-8?B?R1pqQS9QenkvRW81b3g4QlRTdEdlYmUzTTlPUUkybTQvWUVrTUJ5cFgrV2FJ?=
 =?utf-8?B?RVR3UGVJRXZIODR0c002b2J4YVZ2cTlOdXBtMEtUVzZDakhtU0xOWElwL2Fm?=
 =?utf-8?B?N1Y5Q09IN0d6ZkVRT1JiT2d5TnNTc1BVdTNhVEgrQ1cwdE85dDdJS3oya0g5?=
 =?utf-8?B?Y1ZPUjZkbk95LzhGSHJ3UjFMdWY4NGFpbEo5WjFXS0VmTnVKTWw4ZEtZRlQv?=
 =?utf-8?B?d3Z6WURyeW4wL0EyWU12MHQxRHU4SzhzZ3NNMU53M2pXVTYyZ0IvVHVVbzdS?=
 =?utf-8?B?WlhwdzY3SEhRb3NPM3NIdDRFTU9JV0lyWG9RdGc0U3VnUW4rVytPNHZLSVB4?=
 =?utf-8?B?bGhZTjdOYnE3YldDdWlxYzFLSTcyeDkyZVpVWVVZT00yeVRDMUl1UlI1Mi9Z?=
 =?utf-8?B?WE95RCtCVHdLZlFaZlhnZkxyd2M2aTFlL1N2QzUzancvbmNabFlNNnZwY0VH?=
 =?utf-8?B?bXpJcGVhbSsyR05PN1Z0ck5mZkx0VXdCV0JzMWY2bXdnSjk3c3FzZnUwVEgr?=
 =?utf-8?B?RGhhejhVNUZGVFBUVm1sbmxXSEpoclVhNzlxaHVLeG1PdHd4ek5EcVNlK1hl?=
 =?utf-8?B?ZGNxeEVYT3BjSzNXQ2xmdEhSeldrTHJWOXlWNGxkWUpBMUtja2FLY2d6ZFFG?=
 =?utf-8?B?alYrQzd0YkFEYXUzU0FGb1NEU1lxOGU2NUF0dHIxRHloSVBvd3VQVDhxT09F?=
 =?utf-8?B?MEFKRm01SlRlU0ROeSsyd2dqRnZLQnNGR1pxa2ErY0Zkbk42YmVLMDZ6Wmt0?=
 =?utf-8?B?NEVVNVg1QXBSNkhMOHF0OVJoYzhlUlZoczVlMWhOZ09jMnFEZE5idEZydHVh?=
 =?utf-8?B?RkxVeDlHQjYvWGxXZkVSS2xHTUNjMllULzNqb0FiZmp1d3ZvNmVnRUVYc1c5?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0c316f2-4839-4420-1d41-08dbc68b8f17
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 16:44:50.7778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Kzr+4FEepY+VKe0oBbvh9DKvTHmGlZK2UtXWQAcdWdKjd+gT8Qd0YmbVuXIEXpzM9ir75hiTPO2ZVxZfJ8e5q8EAiDTh9WykRP0drE7A3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8756
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: matthew.d.roper@intel.com, janusz.krzysztofik@intel.com,
 andi.shyti@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------2YKYUOulITHfXDeSZdNw2Yji
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 10/6/2023 09:18, John Harrison wrote:
> On 10/6/2023 03:20, Nirmoy Das wrote:
>>
>> On 10/6/2023 12:11 PM, Tvrtko Ursulin wrote:
>>>
>>> Hi,
>>>
>>>
>>> Andi asked me to summarize what I think is unaddressed review 
>>> feedback so far in order to consolidate and enable hopefully things 
>>> to move forward. So I will try to re-iterate the comments and 
>>> questions below.
>>>
>>> But also note that there is a bunch of new valid comments from John 
>>> against v7 which I will not repeat.
>>>
>>> On 05/10/2023 20:35, Jonathan Cavitt wrote:
>>>> ...
>>>> +enum intel_guc_tlb_invalidation_type {
>>>> +    INTEL_GUC_TLB_INVAL_FULL = 0x0,
>>>> +    INTEL_GUC_TLB_INVAL_GUC = 0x3,
>>>
>>> New question - are these names coming from the GuC iface? I find it 
>>> confusing that full does not include GuC but maybe it is just me. So 
>>> maybe full should be called GT or something? Although then again it 
>>> wouldn't be clear GT does not include the GuC..  bummer. GPU? Dunno. 
>>> Minor confusion I guess so can keep as is.
>>
>> I agree this is bit confusing name. We are using 
>> INTEL_GUC_TLB_INVAL_GUC to invalidate ggtt, how about 
>> INTEL_GUC_TLB_INVAL_GGTT ?
>>
> The GuC interface spec says:
>
>     GUC_TLB_INV_TYPE_TLB_INV_FULL_INTRA_VF = 0x00
>     Full TLB invalidation within a VF. Invalidates VF’s TLBs only if
>     that VF is active, will invalidate across all engines.
>
>     GUC_TLB_INV_TYPE_TLB_INV_GUC = 0x03
>     Guc TLB Invalidation.
>
>
> So the 'GUC' type is not GGTT, it is the TLBs internal to GuC itself 
> is how I would read the above. Whereas 'FULL' is everything that is 
> per-VF, aka everything in the GT that is beyond the GuC level - i.e. 
> the engines, EUs and everything from there on.
>
> So I think the INVAL_GUC name is correct. But maybe INVAL_FULL should 
> be called INVAL_VF? Or INVAL_ENGINES if you don't like using the VF 
> term in a non-SRIOV capable driver?
>
> John.
>

PS: The function names should also match the type name.

Currently the functions are:
     int intel_guc_invalidate_tlb_full(struct intel_guc *guc);
     int intel_guc_invalidate_tlb(struct intel_guc *guc);

The second should have a suffix to say what is being invalidated - e.g. 
intel_guc_invalidate_tlb_guc(). The 'guc' in the prefix is just 
describing the mechanism not the target. So I would read the above as 
'full' being a subset of 'blank'.

John.

--------------2YKYUOulITHfXDeSZdNw2Yji
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/6/2023 09:18, John Harrison wrote:<br>
    <blockquote type="cite" cite="mid:cae4f144-2e88-9c3c-985b-849e7f5ff123@intel.com">
      
      On 10/6/2023 03:20, Nirmoy Das wrote:<br>
      <blockquote type="cite" cite="mid:b95d8be7-c546-1b1c-3975-a4ef6257a28d@intel.com"> <br>
        On 10/6/2023 12:11 PM, Tvrtko Ursulin wrote: <br>
        <blockquote type="cite"> <br>
          Hi, <br>
          <br>
          <br>
          Andi asked me to summarize what I think is unaddressed review
          feedback so far in order to consolidate and enable hopefully
          things to move forward. So I will try to re-iterate the
          comments and questions below. <br>
          <br>
          But also note that there is a bunch of new valid comments from
          John against v7 which I will not repeat. <br>
          <br>
          On 05/10/2023 20:35, Jonathan Cavitt wrote: <br>
          <blockquote type="cite">... <br>
            +enum intel_guc_tlb_invalidation_type { <br>
            +&nbsp;&nbsp;&nbsp; INTEL_GUC_TLB_INVAL_FULL = 0x0, <br>
            +&nbsp;&nbsp;&nbsp; INTEL_GUC_TLB_INVAL_GUC = 0x3, <br>
          </blockquote>
          <br>
          New question - are these names coming from the GuC iface? I
          find it confusing that full does not include GuC but maybe it
          is just me. So maybe full should be called GT or something?
          Although then again it wouldn't be clear GT does not include
          the GuC..&nbsp; bummer. GPU? Dunno. Minor confusion I guess so can
          keep as is. <br>
        </blockquote>
        <br>
        I agree this is bit confusing name. We are using
        INTEL_GUC_TLB_INVAL_GUC to invalidate ggtt, how about
        INTEL_GUC_TLB_INVAL_GGTT ? <br>
        <br>
      </blockquote>
      The GuC interface spec says:<br>
      <blockquote>GUC_TLB_INV_TYPE_TLB_INV_FULL_INTRA_VF = 0x00<br>
        Full TLB invalidation within a VF. Invalidates VF’s TLBs only if
        that VF is active, will invalidate across all engines.<br>
        <br>
        GUC_TLB_INV_TYPE_TLB_INV_GUC = 0x03<br>
        Guc TLB Invalidation.<br>
      </blockquote>
      <br>
      So the 'GUC' type is not GGTT, it is the TLBs internal to GuC
      itself is how I would read the above. Whereas 'FULL' is everything
      that is per-VF, aka everything in the GT that is beyond the GuC
      level - i.e. the engines, EUs and everything from there on.<br>
      <br>
      So I think the INVAL_GUC name is correct. But maybe INVAL_FULL
      should be called INVAL_VF? Or INVAL_ENGINES if you don't like
      using the VF term in a non-SRIOV capable driver?<br>
      <br>
      John.<br>
      <br>
    </blockquote>
    <br>
    PS: The function names should also match the type name.<br>
    <br>
    Currently the functions are:<br>
    &nbsp;&nbsp;&nbsp; int intel_guc_invalidate_tlb_full(struct intel_guc *guc);<br>
    &nbsp;&nbsp;&nbsp; int intel_guc_invalidate_tlb(struct intel_guc *guc);<br>
    <br>
    The second should have a suffix to say what is being invalidated -
    e.g. intel_guc_invalidate_tlb_guc(). The 'guc' in the prefix is just
    describing the mechanism not the target. So I would read the above
    as 'full' being a subset of 'blank'.<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------2YKYUOulITHfXDeSZdNw2Yji--
