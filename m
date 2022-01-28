Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E357B4A0339
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 22:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B4A10E131;
	Fri, 28 Jan 2022 21:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352BD10E131
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 21:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643406845; x=1674942845;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RJpCtTlGC19Hzfh/+9ofTDQXRCQ6AAOPF7e6mEPuw2A=;
 b=gq4m87ntTjfLdeucNvhi0e/+f+KYk1n6pa5RDNzpR3eixX/qZCA9bvMc
 nuDAUI2EeUkT26kRHIUHKYUqzOKl6hGUbr3SrRKOke4trb8sApT9n84uc
 08DX83J0L8nVgEenkdBGPVnE5k+IjwZz7J8mwQk29ZIPezqfQIbyjNwxw
 yS70LsMWlOzdz35QNWB5MQ/IWSVNE1D25YMimcdJNXiJ1C18y+DtMSC7U
 WqQVIShdDgELrSm4Dtrc65QhBbkQDU2tHzwVro5Kdqh+yihj76Bo/IYuH
 ipJXK0+PcFjzDL/R/5hLmRzuxETLPoXpM20km92sXKe/DtBAC4Fszd3Vs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="310515945"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="310515945"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 13:54:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="521865040"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 28 Jan 2022 13:54:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 13:54:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 13:54:04 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 13:54:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4/r+zRmgzS/wGoV9XI3/rBhZJRNqeW3OqZJ2ft92vrjKAar/HdsZm7BhNJok3d6S1n7+uWEvi6HQ3jrF+NRicpkzWGR6iB4Z7H7m21BbABFWaOXYE6EGH69m+TVATJtL0ZOWTV0cNrS4ohHh0ELNuXKJI7P27F9wGMB2Kcoz/g94qkFfigs7/Pet+RciUt4LtEublHbO7fD06n+9kxfPRjHvBEpIP+3w3TVcq40B60JTqXmPzDo45/k55YBMyV2Sv0WQCb51AffsL9C+wwECS5QBT6Tnly2B13oOPBi4FGFD7NYvOW6RbCPazGDMTvfNESA2aqywSVYvfbjQzUYMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A4/uFcnaAKPkP7pe5GATxnRWirwFFLnKkjgL9Qvb2A0=;
 b=PYHa4jMK3oEc2vhPeeJLT+IJXfLLecvwjB4s+sbDXrc54T2nkol7/F3ZYe7d6Kyxgix8u65yS3KAEPuh13fvvSXqcO1FN/STHGTFniyjo1qt+GniUJkCRqjImzE6wgzdk25tbPQQ6ZnYrzyk1l90TQnA+zAC/BXVbSjSvwRVvh3jxlsqJYr1dhxSw7v54hD2K578j/ZqyqaQcF2cr56yc+nPkRVB93AVz3id+w7C1sWquSRapG2xw0/kUDVAagvSCKj2xD2yUPZH4hExw/UhWXHT4yi1AVaHZzJL0nUUIY2u/N2VpC9keJSiiT6t7iHEDVMnnMLukp7d3r71bnynQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY4PR11MB1702.namprd11.prod.outlook.com (2603:10b6:903:2e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.12; Fri, 28 Jan
 2022 21:54:01 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4930.019; Fri, 28 Jan 2022
 21:54:01 +0000
Message-ID: <09f257dc-1aba-71d6-5fa3-7e7bfb130eac@intel.com>
Date: Fri, 28 Jan 2022 13:53:58 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220127020035.985786-1-umesh.nerlige.ramappa@intel.com>
 <7452de10-b474-1796-967a-219f594a89c5@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <7452de10-b474-1796-967a-219f594a89c5@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR10CA0023.namprd10.prod.outlook.com (2603:10b6:301::33)
 To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 755f5c05-cea6-4b5e-a11c-08d9e2a8b1d5
X-MS-TrafficTypeDiagnostic: CY4PR11MB1702:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR11MB1702FBB69AAD81630E6FC964BD229@CY4PR11MB1702.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6mrN97c3sqwbyEPST6bBY5NIZnVS+sE5wYVrxrXQyLg7u5aHywqxkg3fuIaQYj/TLVTb97eY3aWngBAY1BynqA8JN/PqaSAgbDMQdwCorxbEdo/A03RBVw5qP3OwVAJrxMnuu/nRJb1e74nIfe0woWADs3oVPaKhtxctMtZpwOgOq126qH/MqlUvMpRD65drY9bcwXlybAzsSgnwXrzL7QY3HAL4X+ATCiCQvD6muQZS3FyShv/xFHftimDWpzKpHAc00IJW06vWEL+aCnJXHgOWDceCYmATosWnJ2ryZCQEhYp7rFZ1vj25ZdS+MpgiQBQqGQm1NxtJ3lm7GtIXQuKMaftUehrRqfh5sfNhDqxZfkKdtGPAESovgmoMJu9dvim8o0G8CxZZL6S7rm/+UcmO6t8ubY46FehgyH93R8fw7xPcmRGgKMsCHO389dEhG4IqRHne3A18TwU3p66O6Is9sDPqXuv7RvE58wfXPZtu5A76+W3de1bzcC7WIxyYYfDeCxLGRe0saRZZnrCfhvOJA8TpZSf2rJHwPqTJ7XlO6BgFy9E3bKNrSoTMxzklCER6+QUh+H1G/NRY/tj+P3Eq2srSVQHQA51bolmHfEEMudGfNNreWwyg2k/isglB9jDVCac7EaahHPnEKfs+sf2u/JLJPH94F7OPAmNzsbiDABGtFpc85E1eO4opvdzjuihBtbh/B36POOIskr1jD/JCZuqmG6OOv8QWh84geAE49ppNHuExVlUXod2f0u60
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(6512007)(36756003)(66946007)(66556008)(508600001)(26005)(2906002)(8936002)(82960400001)(186003)(86362001)(6506007)(83380400001)(31696002)(6666004)(66476007)(31686004)(316002)(8676002)(4326008)(38100700002)(53546011)(2616005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXMzTkZWZmtVdmJhTDdlcjQ2RUpOU2gyc3JIalV1VWlxVmFXUmhsVlJHZWc4?=
 =?utf-8?B?Vzcwc1pJRFNsQjBhOFFRRGtuZEUwb1AvTVhsRDhoUGJZQlNRcUNrZGZIOUZk?=
 =?utf-8?B?Q0tQZisreVQ1Q3VxMWRDSk8veVBlVGFLbmxLWlFpUzd2VDJvNGhWeEg5YUVr?=
 =?utf-8?B?MS94RUtwS0txc2s4QW9kRXh1YU1nZnA1Z3FseHhKcXlPS3Vaem9xdHZlcHJE?=
 =?utf-8?B?ZjMva29BaDNaZXdMUU5kMGlmQTZSWHdmdnlJV2lLbFVzQ05nbGJ0QkpFK1hr?=
 =?utf-8?B?YjhpRlZDMlpwRTE0TkIveW1FKzJoS0svdlJwWHlDR2F3ZXZrb29XWHRPRmpO?=
 =?utf-8?B?ZnpZSDI1ZGxuYjkrcG8wVzkzVGlSZnhtRmJSQTNwZjVlR0hpQlFzVzRIRWpI?=
 =?utf-8?B?dlJRckM4K1hYcHpnVVI1TDZOeC9EQkJ6bG1HV2Jxb2pXTUUwU0ZnOTR4Z3NS?=
 =?utf-8?B?ajlPdjUzckd5LzI0SjdYUlBTdDRZVE5LZlV6MnBjdHNRaHBGcEhkeVE1dmhT?=
 =?utf-8?B?UXFHOFNTUktxR3Y5VDNzRmFPMHJ2U0tTc1EwVmJJemc3bVArbjYvZEgzbTdJ?=
 =?utf-8?B?UDBTR05uSXMrT3dleDNxNXdtUmEvWEFzeCtMT2JZUjZ4OVI1Y3dweWxGU0pz?=
 =?utf-8?B?M2ZocGVRamdjNVZQVWFScWNxcTE2WS90S1pTckZxa0w4K3J0RnFUR0JMTnc0?=
 =?utf-8?B?S0NwV0Q2Z1NVdGZDYXU3MUxEVjZENmhLczhQZHZpY1NLcGZZWC9TTHNLRU9m?=
 =?utf-8?B?L01DN2htR0U0MG1zSnhMS0w5ZDFZd0xYY00yZHo4ZHgvS3JuV3dFVzd5Sk1P?=
 =?utf-8?B?U1ZRNG1oNkhxSlNBU3JaY2RFejJVcDZ1dkFrK3hzQk5QbGxoKzc5SmRQVTRX?=
 =?utf-8?B?bFNEVjFlcm93bVhRRko4NHNMVysxckY2TVZyR2xySmhFZGgzZFR3SCtZakp1?=
 =?utf-8?B?ckZaRWFiODluN1VuMFI4L210RnRDVjZQMVBoWEVneDFNeFF3dzl3dHhmNTZm?=
 =?utf-8?B?WERsNldkQnA2V1IyRTZkb2JnSjdiMkxETUt2WEFOSmNyOE0vLzczVnU3YjZV?=
 =?utf-8?B?MHJUMkkrWS9RR0dpNU1FU0NpNWFvZUY5VlFNVHhhM3MwVFhJVmZFRWRhZ3Zs?=
 =?utf-8?B?dys1SFMyMWk5MmhFOE9DU1RFdFZ5ejdqdWhtQWZaMCs3ck9Wdm1OY0N1Uzho?=
 =?utf-8?B?bzBFRHNUMmhyTzdmaU42QVN6OXdyaDhsTlJDdUxadTFKNU5ucnljaTZGUEZt?=
 =?utf-8?B?NDJDVk5nVUhtdUI5SFRBMk1DRU5tSXBvOHVZOHRwOTY2SVZBcGhRUlAxTExI?=
 =?utf-8?B?TlNQLzVVNTBvcUZiMWF2TGh3cDlSazlraTRZU2RHUTAyMTZVRkFJcnhEaENh?=
 =?utf-8?B?NjlsZitTSCtBbkdzZmlkM3lEL29UZWtYSHRCT1p0R3BGQ2RRMjB1SkVNdGlV?=
 =?utf-8?B?RHFlM0JtaUpnbkxhemxtMzJQa0QrOU5yQVlwWnV3RCtGRXJzMk45bjRkWmdj?=
 =?utf-8?B?Q1JZbWU1REtocVpFRGZkc2N4QjN0U3pIcEdkL2lnd3A4SFhwTXFBOG1uS2ti?=
 =?utf-8?B?OXFHUndGbmJMamg2WlJUSnpJMTRCMVdLSDQrdUo4dVRVU1d2cmNlWVdoTFBW?=
 =?utf-8?B?NlhXaEcvbEJ3bUt2bVI3aHhjMExNTmdmNGNSNVJGSlh5TmNDYS9yS0lOZzNR?=
 =?utf-8?B?N0xuQUhERXZmSU1VMUNUU2I1UTkvKzFraGNNMU9TVlVDOU56NDQvUXoxKzQz?=
 =?utf-8?B?ZEFqWHE3VnNQTEw3WmpHTHgwOXVoQ1ZsTjBtR3lwVWNLVEN2RkUvRGhRLzJv?=
 =?utf-8?B?TVNtRm82R3A2a0hBV1ZCZnFyRlJiSWNyUGsvQS9UNDZEcWZJejZUYURMMElr?=
 =?utf-8?B?NHRQTTl1RmE3cTB5eGVNeG4waXNDUzQ1ZFl3T0tBMXhHT091N0tRQWRjdVlR?=
 =?utf-8?B?Q1d0QnJrbnZ1RnVDd0dGZFFham5jREpka0w0a3FjQUtQVU5wdXNzUGgwSU9k?=
 =?utf-8?B?OUFiT0JFQ0xCVVhXVXQ4eWhXODNzKzYzckJwVXVKSzVVL29nRDM0dkRVUE9n?=
 =?utf-8?B?aGlRT0JYem9JK0hmdlYrOUFSM1NGSWRoWjljZWpUa3VwbmI1ZzJHTkhNbVIr?=
 =?utf-8?B?bEozdE43dFVzY0NJbmlRemdkenUxdEhQaENZM25yWWNFM2FTd3RhVDhibEZ1?=
 =?utf-8?B?L1gxazlSL3lGcWhsVWliMGZaTDdGUHA1eEpFM3N1QitVSHVxb2JvSjJsNHVi?=
 =?utf-8?Q?WXGVgRKPJH2hwgdWi9Dlj++TEncY1pu5+nxIuScHdg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 755f5c05-cea6-4b5e-a11c-08d9e2a8b1d5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2022 21:54:01.7148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZDdO/QWQ38NTgkppFwAkXZ79DAovdXhTwmFwl7B+wDQlGcFyIYgd4kX0354TXPDeav8hTmhRHKa/v90L1b3KhfjytsU9LmKpC+ErxSrub6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Fix KMD and GuC race on
 accessing busyness
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/28/2022 01:34, Tvrtko Ursulin wrote:
>
> John,
>
> What CI results were used to merge this particular single patch? 
> Unless I am not seeing it, it was always set in pair with something else.
>
> First with "drm/i915/pmu: Use PM timestamp instead of RING TIMESTAMP 
> for reference", which was merged earlier in the week and it had a 
> standalone CI results so that is fine.

It seemed plausible to say that it had a green CI run when included with 
a dependent patch given that the dependent patch has already been merged.

We don't normally require a brand new CI run any time the tree has moved 
on since the previous CI was run. You would never get anything merged if 
that was necessary!

So to me this just counts as pushing a tested patch set to a slightly 
newer tree where the rebase happened to mean one patch vanished (because 
exactly the same patch was already merged).

John.


>
> Other postings I can see it was in tandem with "drm/i915/pmu: Use 
> existing uncore helper to read gpm_timestamp", which wasn't reviewed 
> or merged.
>
> So it looks to me, again unless I am not seeing anything, that it got 
> merged without ever having a standalone CI results. This is therefore 
> a reminder that BKM should be to always have CI results for the exact 
> series/patch being merged.
>
> If there is a situation where a subset of a series is conceptually 
> ready before the rest, in the past what we used to do is send the 
> reviewed portion as "--subject-prefix=CI" and then "--suppress-cc=all" 
> and then merge when CI gives all green.
>
> Regards,
>
> Tvrtko
>
> On 27/01/2022 02:00, Umesh Nerlige Ramappa wrote:
>> GuC updates shared memory and KMD reads it. Since this is not
>> synchronized, we run into a race where the value read is inconsistent.
>> Sometimes the inconsistency is in reading the upper MSB bytes of the
>> last_switch_in value. 2 types of cases are seen - upper 8 bits are zero
>> and upper 24 bits are zero. Since these are non-zero values, it is
>> not trivial to determine validity of these values. Instead we read the
>> values multiple times until they are consistent. In test runs, 3
>> attempts results in consistent values. The upper bound is set to 6
>> attempts and may need to be tuned as per any new occurences.
>>
>> Since the duration that gt is parked can vary, the patch also updates
>> the gt timestamp on unpark before starting the worker.
>>
>> v2:
>> - Initialize i
>> - Use READ_ONCE to access engine record
>>
>> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats 
>> from GuC to pmu")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 58 +++++++++++++++++--
>>   1 file changed, 54 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index db9615dcb0ec..4e9154cacc58 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1114,6 +1114,19 @@ __extend_last_switch(struct intel_guc *guc, 
>> u64 *prev_start, u32 new_start)
>>       if (new_start == lower_32_bits(*prev_start))
>>           return;
>>   +    /*
>> +     * When gt is unparked, we update the gt timestamp and start the 
>> ping
>> +     * worker that updates the gt_stamp every POLL_TIME_CLKS. As 
>> long as gt
>> +     * is unparked, all switched in contexts will have a start time 
>> that is
>> +     * within +/- POLL_TIME_CLKS of the most recent gt_stamp.
>> +     *
>> +     * If neither gt_stamp nor new_start has rolled over, then the
>> +     * gt_stamp_hi does not need to be adjusted, however if one of 
>> them has
>> +     * rolled over, we need to adjust gt_stamp_hi accordingly.
>> +     *
>> +     * The below conditions address the cases of new_start rollover and
>> +     * gt_stamp_last rollover respectively.
>> +     */
>>       if (new_start < gt_stamp_last &&
>>           (new_start - gt_stamp_last) <= POLL_TIME_CLKS)
>>           gt_stamp_hi++;
>> @@ -1125,17 +1138,45 @@ __extend_last_switch(struct intel_guc *guc, 
>> u64 *prev_start, u32 new_start)
>>       *prev_start = ((u64)gt_stamp_hi << 32) | new_start;
>>   }
>>   -static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
>> +/*
>> + * GuC updates shared memory and KMD reads it. Since this is not 
>> synchronized,
>> + * we run into a race where the value read is inconsistent. 
>> Sometimes the
>> + * inconsistency is in reading the upper MSB bytes of the last_in 
>> value when
>> + * this race occurs. 2 types of cases are seen - upper 8 bits are 
>> zero and upper
>> + * 24 bits are zero. Since these are non-zero values, it is 
>> non-trivial to
>> + * determine validity of these values. Instead we read the values 
>> multiple times
>> + * until they are consistent. In test runs, 3 attempts results in 
>> consistent
>> + * values. The upper bound is set to 6 attempts and may need to be 
>> tuned as per
>> + * any new occurences.
>> + */
>> +static void __get_engine_usage_record(struct intel_engine_cs *engine,
>> +                      u32 *last_in, u32 *id, u32 *total)
>>   {
>>       struct guc_engine_usage_record *rec = 
>> intel_guc_engine_usage(engine);
>> +    int i = 0;
>> +
>> +    do {
>> +        *last_in = READ_ONCE(rec->last_switch_in_stamp);
>> +        *id = READ_ONCE(rec->current_context_index);
>> +        *total = READ_ONCE(rec->total_runtime);
>> +
>> +        if (READ_ONCE(rec->last_switch_in_stamp) == *last_in &&
>> +            READ_ONCE(rec->current_context_index) == *id &&
>> +            READ_ONCE(rec->total_runtime) == *total)
>> +            break;
>> +    } while (++i < 6);
>> +}
>> +
>> +static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
>> +{
>>       struct intel_engine_guc_stats *stats = &engine->stats.guc;
>>       struct intel_guc *guc = &engine->gt->uc.guc;
>> -    u32 last_switch = rec->last_switch_in_stamp;
>> -    u32 ctx_id = rec->current_context_index;
>> -    u32 total = rec->total_runtime;
>> +    u32 last_switch, ctx_id, total;
>>         lockdep_assert_held(&guc->timestamp.lock);
>>   +    __get_engine_usage_record(engine, &last_switch, &ctx_id, &total);
>> +
>>       stats->running = ctx_id != ~0U && last_switch;
>>       if (stats->running)
>>           __extend_last_switch(guc, &stats->start_gt_clk, last_switch);
>> @@ -1237,6 +1278,10 @@ static ktime_t guc_engine_busyness(struct 
>> intel_engine_cs *engine, ktime_t *now)
>>       if (!in_reset && intel_gt_pm_get_if_awake(gt)) {
>>           stats_saved = *stats;
>>           gt_stamp_saved = guc->timestamp.gt_stamp;
>> +        /*
>> +         * Update gt_clks, then gt timestamp to simplify the 
>> 'gt_stamp -
>> +         * start_gt_clk' calculation below for active engines.
>> +         */
>>           guc_update_engine_gt_clks(engine);
>>           guc_update_pm_timestamp(guc, now);
>>           intel_gt_pm_put_async(gt);
>> @@ -1365,10 +1410,15 @@ void intel_guc_busyness_park(struct intel_gt 
>> *gt)
>>   void intel_guc_busyness_unpark(struct intel_gt *gt)
>>   {
>>       struct intel_guc *guc = &gt->uc.guc;
>> +    unsigned long flags;
>> +    ktime_t unused;
>>         if (!guc_submission_initialized(guc))
>>           return;
>>   +    spin_lock_irqsave(&guc->timestamp.lock, flags);
>> +    guc_update_pm_timestamp(guc, &unused);
>> +    spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>       mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>                guc->timestamp.ping_delay);
>>   }
>>

