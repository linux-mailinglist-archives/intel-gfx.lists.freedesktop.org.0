Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A901F4448A1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031BB7A286;
	Wed,  3 Nov 2021 18:50:16 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCB17A285;
 Wed,  3 Nov 2021 18:50:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="230290339"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="230290339"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:49:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="449922640"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2021 11:49:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 11:49:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 11:49:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 11:49:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 11:49:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZfD/bS+uSH6RNr+hcf52rzHF/z7i+GfEJhA3FeE1UdwJ/HUrL4v0moC99u4FzNAU1L0XyICKS/c11RbU6xk8O5fw4SYyfAKaoTk1RLh834tydi9gXjakfnV9iYN+yeAghYVUHnvi+XewKxj1LaeqPvLkYl0vyvq/VUxPqPswuxQBl4eIU1t9ze6ym3Ke+P2Z0fbxYWrx9cnB1+WWHTP5NCSf08aVVHHcTJnufWHmE+M+WOt49IQ0Pce5T2obF7+XE2vkhRaxyO7AVkozKdPZnT3Ymoh7uTurdtK9i7e8WPmNL/Sf33ofzQN0BOnQWqUOXhqKHoiV+jlmkFd2DdFsfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tb+9z2P5gFzjyd9ISmBT3VnrSt5wnX30OZZTypJSbhc=;
 b=cz67zq61GCE2JFNeRs+hwfowsUGlSssND0fCzeiA5i4CpVRCSIR6J4UZlt2yyob/MoaHcHejjqeL296StUwQFZGu9IYWKGMFJMm2ClJstYPUb7KtMyA9vVniW5W91QUvEiAXLUw1oirOkjSQ6OT+ZCt5/2RPuaFZ15STwCUeh234XS68vGaVo0FbPGmo0zOC5+xYarR4TyIec3nlE3W12H4aZhbxiT6yUfeS71jlP6q7wxtigN1mc1J7Q5OFNK1tlqBa5NypDKfV+wMECJRnfLBJGNrgWl4L8EDqI8jpq7xr4N892pxtZpUts/0MDIB22DeIAMu9vyvmSjELLvz1sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tb+9z2P5gFzjyd9ISmBT3VnrSt5wnX30OZZTypJSbhc=;
 b=fFALYiGB88UDL5C1sMIWn2mJjtETcqC/R+9UpsyN/AzpXMOOHc6XN5nUbAgoW1JV6t/sDgxIRx/5zWBdsrqhsdXU+OIkG8w+li1oTgFlh24aurGB923BTqYTFYhj1is+qFB+PNc1UhsCGCa3NT2wBXNlVm35RQuZ2nMud25FRkQ=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5676.namprd11.prod.outlook.com (2603:10b6:510:ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 18:49:51 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81%3]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 18:49:51 +0000
Message-ID: <f859ebab-8b3a-ef1e-3387-33808282e420@intel.com>
Date: Wed, 3 Nov 2021 11:49:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-GB
To: Petri Latvala <petri.latvala@intel.com>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-5-John.C.Harrison@Intel.com>
 <20211102233442.GA16356@jons-linux-dev-box>
 <4adc8d9a-8393-2774-2c67-a93083240795@intel.com>
 <YYJYHYT1YrwVikLo@platvala-desk.ger.corp.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <YYJYHYT1YrwVikLo@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0011.namprd16.prod.outlook.com (2603:10b6:907::24)
 To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MW2PR16CA0011.namprd16.prod.outlook.com (2603:10b6:907::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.11 via Frontend Transport; Wed, 3 Nov 2021 18:49:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ad45c00-de5d-47b6-6ade-08d99efab790
X-MS-TrafficTypeDiagnostic: PH0PR11MB5676:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <PH0PR11MB5676B1D0F51A5F1901DD2CC1BD8C9@PH0PR11MB5676.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9lnG/D818xSb7xpTzAhnp884Rz0eRN1XTRC9bLe51KL91fHuePfYwXfwc3xqC8KMDYMNIXUKSzjQBizQdqveZZPrtb6CrByzdE28qUZx8wsBe7Dm8hFUHke4sqwSUQiw/zPAYVGPRJmZoFA8PCMR2r4js1kSLCjoaOTLaFLkqWyy++GjmCCj1COVZNBTjg/AeUwQzXUHxOouHxinnr/ZP4ygwXEyzhKe10PjL/RJvFbugRUhnRXFnrEVoHthYyMHJlYwGSvBv1d5++g+sA8YUPc1nPsxqaHJyszWTeuikfMv/L3T1jTwoUT36ARzR4U0LehvqM9nSBfj/CyN3uMCBY5dL0iyZCnsImCH/y+4eW2He11Bzchzu86c1pbgvlqE41s27YSXsQfXP+QNbmZmBq72PPbbkBzgkV0J8KE1N7JPEaL/Tcxgy1h+69mRuRYwuapXztDdMxacCdvQtg8oNEzoG9S1yrIdQbQHVh8KzjtLUOfYmkCR5+dbqOpveDSKldAs3e6U5NSZRQEsVKwrY2BjF9wtyl5v3vCN60U6lwHfalq6c6GfNOST+PQIxpepDBPb2FaoTHOQeOh4N6qyG259JRT6za/mlxlT0tzEvx/BOi9cggMFF9fM5PjtKFlkGEvcYDznH7UsPErAc6kN+I7uA5GhemmLvAI7S/E1kSBh1yUnLtYmcyQuT6jqRWCUHrbi4+jkJmbDMOgynSeKMwRaIFOG0iYuuRc3hIu9oOYlS/0vgBcy8KeqBOEmLAV0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(6666004)(66476007)(36756003)(38100700002)(508600001)(6862004)(53546011)(82960400001)(66946007)(8676002)(31686004)(186003)(37006003)(26005)(2616005)(956004)(5660300002)(8936002)(31696002)(450100002)(6486002)(316002)(4326008)(83380400001)(86362001)(2906002)(16576012)(6636002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGE3YnlwSHloSjJhT2Q2enV4dEhoLzVYNDZDRkNDWWJvZFUzd1IzMWJXQ2lM?=
 =?utf-8?B?b0ZlRFF3NjM4YkhyVGlXdWpNZEdxYk40cEZLTjNoaXZFWG04YVloY0NveDI3?=
 =?utf-8?B?UEtMV3NMYmsyNzE5dEtyV2ZKYmozdUJhN2RxVlE1ZmtRam5hMGYvY1Z3SWZF?=
 =?utf-8?B?Uk0wVTh3a3lYRXAvbXZIek9mTk81VFh3WkEwcGZEci80UVRzZDhNaDZUZi9O?=
 =?utf-8?B?amdZL3NDMHV2VGJwbTM2SE9qYzJzQVo1Sk04cGxJZ2FGSlFSWDBsbU42NmxE?=
 =?utf-8?B?d0pkb0pMZUNvd28vb0NjOTJYR0tFUHdHNTRjTHJkdld6cEpRL2Uwc1lDbXI0?=
 =?utf-8?B?VTN4SVY4SnEzWW8zbXl4VWVFMS9RTSttQ0dJM0Zrd3RETmRsT1BiTGhDZmdh?=
 =?utf-8?B?VlNDdVBZWTFKSklXN1hndWEyQ1BrSEVpWGMvTGNrdnJkNUxWWFlmTFQyYm4w?=
 =?utf-8?B?cmpHcCtoMHVvYkxDUjNjcGpjSFowRHNUcGRXcE5uYktLSHBKUnBZNzdlT3p4?=
 =?utf-8?B?Q0hPbjBWbklEMjkxa0pHZ2JCZ2J1NGdlVCtIMjV2Ulk0WDUzUld6SUplajNJ?=
 =?utf-8?B?VkI1amRseTZQNEN0OTE3UEZNekR0MlVDNlUwWStsVEVDY2dxTGVrOW1aMXln?=
 =?utf-8?B?SjVpdmFXMDVONlRsNUxCMnpEckFRVDVqdlA5MmRqdE9rMmtKZ3B0QWNJNFlq?=
 =?utf-8?B?Mm9DbHRuV056R1paTVNlM2hYQ3MzWEM3aEE0K0JaRXhjL2ViUVFWdnZkSE9L?=
 =?utf-8?B?c0tXR0FUQjVLVXcwMElIS0syODBWWmRNN1JMSXRRZjJXSzFpclBROTBpcURN?=
 =?utf-8?B?VjFoNHZzNDZsQjYvTzBwWS9lNmRQWlAyYk9JWnV4b01UaG1CQ3lNWFAvRFIx?=
 =?utf-8?B?MTFhb0xCY1ZONVZIVEtwY0ZoUmpoT2dPSk5zaGJxMmRmUWlxbVprMTE0YWlw?=
 =?utf-8?B?UFJIWklWS3p0bVJxMWdOUFFtbTM2OXlHaXJFOGMrOXFIOEY3NXh6cGRIZVZP?=
 =?utf-8?B?UFRNT0k1SW0xYmJDWGFxWUNZRFpTSmNrdHg2UlhPME9nTzBGNFVaQTRJcU9F?=
 =?utf-8?B?ZnZzbzg5RmE5MHRhaVJPci9BeW83K0pLUHhDUXRCYU1XaHNmRndoS2k4Q2dG?=
 =?utf-8?B?VjhjRFRDYnNTdVhlWkFCN1RDZjBWYkdDcm9hRmtUUkJGeVc0YkdydURjWEQ0?=
 =?utf-8?B?WElsODhvQWtJYVZmdVhZdVVXRThBSFEvOXpOYlI0aHU5Y2ZmbXNpMUcyVjU5?=
 =?utf-8?B?azNmYVBnbHRIdkVYbENvR0dHNmMxSnp6a0pZUkR2VEwrN1Y0K292M004VjVG?=
 =?utf-8?B?VFdQL3FLc2x5VVFwVk9QM2ZWaDNlUVVKRTBDWDlKcFBYUkZpUWU1eXlDVXR3?=
 =?utf-8?B?ODkwNE9sUk9VaU81VTJncWNJYXprNmdHSnJLNDVkc3pYZU8yNEFZZ2FSYWRh?=
 =?utf-8?B?aUpGQTN2UW1SQUdMMldhbi9kWitXYXV3d2g0cEdwS0tKclpzS3I2VzJVOGs0?=
 =?utf-8?B?dHExYjVSMlVnc0pOUGJzdnJoMjBMNkZFVUgveWgvOEhsM1dZMStDeG1kWWhu?=
 =?utf-8?B?YlpDNU5iODdsZVRQaTliUkJvM1Bic3VZUUdxczMraGU2cG5TL0ZNYlB3R0N3?=
 =?utf-8?B?aVFXZFdxM2htWHJSODhwL1dTSDB4VVUrOG1aWXAwNHpwUlJ3ZWlJTUlZZC9p?=
 =?utf-8?B?ZGFSMExwLzA3VnhXS3hBclRIQlpDcXkrOVlBNTYrTVNlbDIra2tybkJpKy91?=
 =?utf-8?B?R0dZcUdVeEE4K2V3SlBCS2p5RzBFeUJjakpTUFpNaWR3NUFFWlFCdnNPN2Zj?=
 =?utf-8?B?dVI5MVRPWEJnVGNENVNmTURSd0hCSGFPWW1KTXNMa0RIQWtxaUVjUjlpeGMz?=
 =?utf-8?B?OTJ6aEI4Zzl6THRFUHFMRjhQZXRNaUFIVGIwWXd6blZQUCtHWGZzb1UxWGM1?=
 =?utf-8?B?djlvcTE3MjlwYStlVHhuRUJwNlpKQUw4Mi9FdWxaRERJRDN5ZWwvVSt3NTgy?=
 =?utf-8?B?aU1QaHpuS2NQeUpXZGNaZW00c095Y2ErYjExbzg4ZlFPMW8zRXdjZWdvQXF6?=
 =?utf-8?B?ZmR6ZEtzODN2L3hicmpzKzcwUXlkelRZczhqQzVwd2JHMXhobVV2R2JCM0RX?=
 =?utf-8?B?WjAxbXNKTmlJanVDSGNGMEorUklPTG9lSHlOYk1KUmZFRlhhb0VPVVk0a3I1?=
 =?utf-8?B?aE43a3hzRGFkT3htQVJxdmdYKzhpWThSQzluUnY2MVNxNGpUUllPSDhua2Js?=
 =?utf-8?Q?v2frJugYkP69Sdo/qOnp3UvGEvUEBhsllM5ZHZwxAo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad45c00-de5d-47b6-6ade-08d99efab790
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 18:49:51.1609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JxxB+NUNQOVKrm8221KsX1hlQC4vlgi61xTBy8s7teSYVEWKDhuEOveMsMLtWv6KLfpq0afe6B3X/Ol09ZgPc6a1dFDiRHhv5eaF6vEbqEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/8] tests/i915/gem_exec_capture: Use
 contexts and engines properly
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/3/2021 02:36, Petri Latvala wrote:
> On Tue, Nov 02, 2021 at 06:45:38PM -0700, John Harrison wrote:
>> On 11/2/2021 16:34, Matthew Brost wrote:
>>> On Thu, Oct 21, 2021 at 04:40:40PM -0700, John.C.Harrison@Intel.com wrote:
>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>
>>>> Some of the capture tests were using explicit contexts, some not. Some
>>>> were poking the per engine pre-emption timeout, some not. This would
>>>> lead to sporadic failures due to random timeouts, contexts being
>>>> banned depending upon how many subtests were run and/or how many
>>>> engines a given platform has, and other such failures.
>>>>
>>>> So, update all tests to be conistent.
>>>>
>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>> ---
>>>>    tests/i915/gem_exec_capture.c | 80 +++++++++++++++++++++++++----------
>>>>    1 file changed, 58 insertions(+), 22 deletions(-)
>>>>
>>>> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
>>>> index c85c198f7..e373d24ed 100644
>>>> --- a/tests/i915/gem_exec_capture.c
>>>> +++ b/tests/i915/gem_exec_capture.c
>>>> @@ -204,8 +204,19 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
>>>>    	return blobs;
>>>>    }
>>>> +static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
>>>> +{
>>>> +	/* Ensure fast hang detection */
>>>> +	gem_engine_property_printf(fd, e->name, "preempt_timeout_ms", "%d", 250);
>>>> +	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);
>>> #define for 250, 500?
>> Is there any point? There is no special reason for the values other than
>> small enough to be fast and long enough to not be too small to be usable. So
>> there isn't really any particular name to give them beyond
>> 'SHORT_PREEMPT_TIMEOUT' or some such. And the whole point of the helper
>> function is that the values are programmed in one place only and not used
>> anywhere else. So there is no worry about repetition of magic numbers.
> In about one year everyone has forgotten this explanation and will
> wonder if it's related to some in-kernel behaviour or if there's some
> other reason these values have been chosen.
>
> So at least a comment why the values are these, please.
There is a comment already. Not sure what more can be added that is 
meaningful other than changing it to "Ensure fast hang detection by 
picking some random numbers out of the air that seem to be vaguely 
plausible".

John.

>
>

