Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UticGd0DKWqFOwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 08:27:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC656663F1
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 08:27:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Icfk38zv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D9810E745;
	Wed, 10 Jun 2026 06:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010066.outbound.protection.outlook.com [52.101.46.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AC210E732;
 Wed, 10 Jun 2026 06:27:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wgx+ycXuFAZaJmoat+huW+W+0g3mir2EvOLn5ibhWL0DixCDIY7cmDaLOi9TNE7pi0qiMIfaH+g0JOdAfkmbickVp64wlRzNn8DerIIGq0k3uVrW7o2qbeMLOQYEzm0BRwBxXdfJpnN5Opui83/m1j0628wFYjE0OmmYR/pOvLiqrlrCLGOH+NzVjHQn/BWOlc4C69ronpa2q/dXT9hYJNK0AB/ipXc0lmCFhsjlSBENkwfoJ9OmS7AY1yc9vd+lzcJKKaYFjvVRMyT/vERqpVeay9mlwgYhGHRShwkKVm86OlEee7ve0mD8N7U8uXbqYoKy2WyCgRa2Vl+9TS6avQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8PHOIBbmkYFAYFQerNpGTlsUnYq5TNF7lUBQtioc5I=;
 b=yPd7lLYeimo+44xrd8M4mz/dGLfeQ2jq7kQCJ80n2DbdGiByEZXW5oQ/nQCbnYUcF13/9DE9Xv6WxCDZneEXCFFh+HwFydpUaDnKs+h3Xjl50ZY9cDuB0SECnLxEs/LqomfJTPMaZ1WL8NiJ5RuV9f07P1qljikLea9k4FweoyijYXhnS4fezGNIPIWi9KAe13x33Fl1CrbD4s51zSsqmpIxBdTMSiFmOB/DfllkrpbtwckMcyiEXXFEmzgbPX5kyah+MBFxG+dkI+p1y5E5edlCYriKsI9DmvF46qZoRf9x6Fg/nd8PEJ8EyzKIOzFhXwOPi8Sschq8jWyAIGK8pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A8PHOIBbmkYFAYFQerNpGTlsUnYq5TNF7lUBQtioc5I=;
 b=Icfk38zvvE4sJQHamqFFV9MqAx7WOZLQ0elPz3mGPbubLky0IbqwzwMa8XNha1PiaoIjQZSjpA2ZhJjrdz234BBsarRWCtSRXVJQEc+JgtYfHkKFxNr3JXSgQZ7Nuq+u0nBm3snbbQB41v5L+nYAhiFyCWtopVZ92zh0QAxt/W8=
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11) by CH3PR12MB9393.namprd12.prod.outlook.com
 (2603:10b6:610:1c5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Wed, 10 Jun
 2026 06:27:33 +0000
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8]) by EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8%4]) with mapi id 15.21.0071.011; Wed, 10 Jun 2026
 06:27:30 +0000
Message-ID: <4d5ae693-a9a5-4ed3-a881-ffef92145193@amd.com>
Date: Wed, 10 Jun 2026 11:57:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
To: Matthew Auld <matthew.auld@intel.com>, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
 <c9cdcf8a-d531-4e79-a238-97fd39b8c108@intel.com>
 <9b0add60-9bca-44dc-a95d-be289ea2d3c1@amd.com>
Content-Language: en-US
In-Reply-To: <9b0add60-9bca-44dc-a95d-be289ea2d3c1@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::10) To EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: EAYPR12MB999132:EE_|CH3PR12MB9393:EE_
X-MS-Office365-Filtering-Correlation-Id: 348b2744-b953-483c-d5ae-08dec6b958b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|4143699003|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: cYkaLbj+t29LDyGptgijeASHBMOZXM9054CH/y52cbaD3G/RB/z/AhXo9y7xh7vT7uCW3gI+jrIpbIEKO26+Ml7Fy/z82kjppCiY9ITNhKYIA3KMlWIk4eRYnXaUh/9ykax7gpvhOds+M+KqJXNWIY4eCsxdfWSc1K8+RHl4rvj3by7lCDMemN0EJfelvl3RJ7GjPVhO8mjFn9yOKSPQguG3COQ1Ml5RK4cd4HsFTUZKa+ght95awXtCHxzkCI2B3uY1N5K5OlHbDzxJquC8K4vrMnmmXlrPDoLD05sm4SbsQPHlCSuV/A0a2gB7myfo+Td1V/ZHAcZT0SufCfQriekfvQzTSC7tWajvFLW/TPckUUPm9p37TECdRamS26lQdoS9m0xlv1vsKwxl56QekHFBtu3AxI3GnQhsXFt3hXe4VTsdjbrUjR6kLZv+lWSUVkPiBTr+rH6MPwU7t0hd5nsDcIZ7oQE6TnUZt8dr6BumL38qCSPwlpA0/Y5cd1uSkRfD4OZmpj06xTY2/v01sDO+4csv4KcXzenHs6QoC77d8204tanJjhfovtmukACdRd0eteJJlGApKnSRpj/Opx8uSW2Ylk6KHLKxlW6dmS4avuWi+V7UJyhwc+LuOEu+TgyvI2IeTXuPDcBYvtpYTGH3EJd4wmYzMVOfh6FCxutBYJ6dGKFdX4oqCc+HRAX5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:EAYPR12MB999132.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDI0R2FrRll5dU1VOEdGakZPYUk5UWJJVTF4amZpcFZqd3hoQXB1VVU5bjZi?=
 =?utf-8?B?SGptK2NiNFJLbWJ4WXhaQ0hneXRFUThtOUJjdlJuZnhNM1l5RnY4UkRaTEtU?=
 =?utf-8?B?WklRekNhZklxR1JEcTU5bzBFUWlFSU5rNmhBVXJtU09GQmM2c0JVT1FNNjhO?=
 =?utf-8?B?YkR2NDRRQ0J2M1dNZ2FiaE1vNDllaVdpVE9lRGJWQm90UjltQi8yQXI2VUZa?=
 =?utf-8?B?Q1NsaWJPYm0wakpOOWhmWFJlMm14MmI2ZnVoeWxrQjRtZy9LTi9YYnpxM3Ni?=
 =?utf-8?B?cDVyNkRRMU1Ga2VUV0hsQUpJeThjUWowcWs5aW1Eenp3SVc5WHQvaVVzVUFD?=
 =?utf-8?B?MEFJL2F2ZEp5ZTlBYU9WTy9RUWlyY2w1bGdMYkpiOEdvYTlxUjFBN1NGd3VP?=
 =?utf-8?B?b3pPcURlQUtNVzVUYXZ3TWhkTTFyTHJaU1FiNW96NzE1NGN1RDFHZ3pOSml3?=
 =?utf-8?B?K0h0S0lCUWwybDEycXJ3VTlFaUVFOTRvdVdyZ2VkUWVaemNxMWNSaWJUWUZl?=
 =?utf-8?B?aS9vVTd0elVkOXA2R2xwM1lsSEx1STJEWTRvM3NOUWtaWlFGa1VZL0RYVXNN?=
 =?utf-8?B?emZGNm5IMVMvU2wyWDRyMEt2Mm5JTUZuNEFDUmlzSE1tTklNdmFrVm1GTWVC?=
 =?utf-8?B?U0R1QjJBVVBySHhxN2xjczQ2OWthMUxjUkF6NWJKQVR0Y05wd0J2Q0VJSmtK?=
 =?utf-8?B?Nit0QmdBOWJSb2lIRVFYYzFzQ0F6SThBaVpObUR4Rk1WMk9kYXFqUkJENWc3?=
 =?utf-8?B?cjU0ZDlTaXp5MUNpaEJ2cDJ3WUVOQUVIWFBXaDh2VWhOY3dmdHFCWkx1ekhO?=
 =?utf-8?B?ZEFGOTB0bjVNemplcTZjM1pmZ2ZaY3crRG5ad003SXh6dnNGQWVxbXlsd2Nv?=
 =?utf-8?B?ZFdDT2pzd2JhS0VRMmFhL0R4V216Z0RTYlFDNFliOWIyNHFKcGZyTDNvU3BU?=
 =?utf-8?B?eDZ3NGUwSkQyWko5Q1pqdWJ6RXU1NG16THZYT1NJYnlmQXNuNGplTTgzYko3?=
 =?utf-8?B?MVhUQlhGVjlVYXdTZDZSYXJpN2wwTThVL3ZrWGtIKzlzVU5LYUlNNHZaYm9V?=
 =?utf-8?B?MllmaUZNVzI0T25mT09aR1hJeDIxK0tNbUdyMjVmTVM5OG5OWTVnRkErQVM2?=
 =?utf-8?B?cGRWcmZEUWdPOFVNRkNsdWJ5ZGZ0NTQ1eE1pMzNuenI3WENWeEc3a0gxVGhk?=
 =?utf-8?B?bmJ3cjZQR1FScjFFcTR1bVdXUCtYRloySUlVZXoxQ0ZjeUVPVmJrS2hzVk80?=
 =?utf-8?B?N1ZCWGVFYkM2b2ZldnlFSmVteS9TZnF6dnhlMFBTbUNCS25EelRFM1R3VmtZ?=
 =?utf-8?B?YnZUanNlSkEybDBUUkdtL1htUkNueENPeUhXcVFVV29yZmtaYnhBWVdtWXBV?=
 =?utf-8?B?aytncEFNUG0xV0VtM2tlWXVmNEI2UEUwZzREZ3hielBoM3hlVHkyYXZHSS8v?=
 =?utf-8?B?Z1B0cGdWa3hnQ0pPTjUzU29IL2ZoeUpEd0ZERENhSGUydUo0VFBXTjZTM2RH?=
 =?utf-8?B?Z08xWlFSRFJCRW9qTGptRENOWExqKytQNnRrT0dHSDNKSXcrVWlmeXpvc2Y5?=
 =?utf-8?B?TG5NM2ZiRkZFQXl1OERIT2lGUG5HNytLTHhSdmI1blhYaEQwaHhIUHFQREd6?=
 =?utf-8?B?dldHZ3V5SHNKWVFtVGg0U2hNaVdnK09WaThwUlVZVlhuQlEza2xKNEdGN2Ex?=
 =?utf-8?B?OC8xV2toVWNvV3dGRTJmZndXLzdRUzBpT3pEc2NSTnlLOE9BQ2l6SWQzT0Nm?=
 =?utf-8?B?NUN3WFZkNHZlb09QcitVU281RG9EaTJ5aHRpWGFRRzNYZzRmLzlqTnIzekE1?=
 =?utf-8?B?UFhKeTdGZVFDL0lZcHFIaGdVQlprYlhheDNMK1VGZzUyTTVILzFic242bEZk?=
 =?utf-8?B?a3dIM0U2YVZqMG41Q0JEb3FPNHhObjI1TVlYdm5FMUZ1Y0RzK1h5VHdpdndk?=
 =?utf-8?B?aWQ3U2ZueksrTmR3Wk1KdDNSNWJRaXNLaWhKaEluQkhMeFNDemg3aWtmUGtM?=
 =?utf-8?B?QVlPVkR1cWhNM1ljb3lqc3BBNnp6VXhvOWFhZUN4ellENkNKY0R0NG1MMjYz?=
 =?utf-8?B?TTJRcWRRbkhrVWpqNzNMYnJmdkR6b2cwMEc4OFQ3ekJhaEcxKys0OXNDd3lj?=
 =?utf-8?B?d05XZzEzU0FnUkNPQjNhaEdhNG9sOVZkTXNMRnhYMVplNHdnL09mQXQrTmc3?=
 =?utf-8?B?Ulhqc2tXUjJXRHB0OHNUSVQ3MmhmT2NCNFZDbnNEZ1JhdlRwYXRhZEJKT09W?=
 =?utf-8?B?Uk5wdnZvSmdnZEZmZVU3SnJpNmIxckU5dFZNMDJ0NjFGajIyRXBmZ3hVNDF3?=
 =?utf-8?B?UkNJMnIyU2hZSWg3L1B3TzdQeDh1M0ZkUlYyc2FMc1o5dnAyMlZadz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 348b2744-b953-483c-d5ae-08dec6b958b0
X-MS-Exchange-CrossTenant-AuthSource: EAYPR12MB999132.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 06:27:29.8806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kCpcTTmjVqFt5D5OSto+yis4YhTePyPXePq//9UNrzdjTEK0J+zYlN4sx5tXExgHR5CgOB5DE/9G979350Cfxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9393
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:dkim,amd.com:mid,amd.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DC656663F1

Hi Matthew,

Ping ?

Regards,
Arun.

On 6/1/2026 4:21 PM, Arunpravin Paneer Selvam wrote:
>
>
> On 5/29/2026 11:11 PM, Matthew Auld wrote:
>> Hi,
>>
>> On 27/05/2026 12:29, Arunpravin Paneer Selvam wrote:
>>> The current buddy allocator maintains separate clear_tree[] and
>>> dirty_tree[] rbtrees per order, preventing coalescing between cleared
>>> and dirty buddies. Under mixed workloads, this creates a merge barrier:
>>> adjacent buddies frequently end up split across trees, forcing reliance
>>> on __force_merge() during allocation.
>>>
>>> __force_merge() performs an O(N x max_order) scan under the VRAM 
>>> manager
>>> lock, leading to allocation stalls and failures for large contiguous
>>> requests even when sufficient total free memory is available.
>>
>> So is this contig with non power-of-two sizes?
> Both power-of-two and non-power-of-two contiguous requests are 
> affected - in either case, the required higher-order block can't form 
> when its lower-order buddies are separated by clear/dirty state across 
> the dual trees. But the core issue we are seeing is VRAM fragmentation 
> caused by massive small allocations (e.g., thousands of 4 KiB–8 KiB 
> buffers) that end up split across clear and dirty trees, preventing 
> buddy coalescing. This leads to allocation failures and OOM in later 
> workloads even when sufficient total free VRAM is available.
>>
>> Do we know if we could force_merge everything in one go or somehow be 
>> more aggressive and do more than needed now, at the first sign of 
>> contention here, instead of doing it piecemeal? Downside would be 
>> losing more of the clear tracking, when this happens, but more 
>> re-merging.
>>
>> Could we have another per-order list, of all blocks that we failed to 
>> merge, when we did the free step? When doing the force merge step, we 
>> maybe don't need to search blindly and can focus instead on the stuff 
>> tracked in those lists? Maybe it doesn't need to be a list, but could 
>> be another rb-tree?
>>
>> We know the size of the total allocation, if we trigger force_merge, 
>> could we try to merge enough in one go for the entire allocation, 
>> instead of restarting the entire thing on the next iteration? Would 
>> that help at all?
>>
>> But I guess these are more for the stalling side, and won't help much 
>> with the contig angle?
> The memory is highly fragmented into mostly 4 KiB chunks and small 
> scattered blocks across the dual trees, so although total free memory 
> exists, it is split into low-order fragments. The workload then 
> requests very large contiguous allocations (tens of GBs, e.g., ~64 
> GiB), which fail with OOM because the allocator cannot form 
> sufficiently large high-order blocks from the fragmented space. We 
> could go with more aggressive merging or merge-in-one-go approaches, 
> but this might waste more cleared memory. I think fundamentally the 
> buddy allocator should be allowed to merge unconditionally - the 
> single-tree approach with unconditional coalescing would improve the 
> fragmentation and benefit contiguous allocations along with addressing 
> the stalling and latency issues.
>>
>> For the extent idea, is there any merit in maybe doing this for all 
>> contig blobs, and not just cleared stuff? Or is the workload you are 
>> seeing only benefit users that want cleared stuff? Wondering if this 
>> would benefit all users that want contig? Like if we hypothetically 
>> kept clear and dirty separate, like we do now, but with an improved 
>> force_merge, and then have extent tracking for all contig blobs and 
>> replace the try_harder stuff? When you do a contig alloc, the 
>> individual clear/dirty is still all there within the range, so you 
>> can skip re-clearing in some cases. I guess downside is overall more 
>> fuzzy contig + clear/free path, but I guess you would never get 
>> allocation failures, when there is sufficient contig space?
> Yes, extending extent tracking to all contig allocations has merit, 
> but the core problem remains - with the dual-tree design, we still 
> need force_merge to undo the clear/dirty split before those extents 
> can form. In cases like heavy small-allocation workloads (thousands of 
> 4 KiB buffers) running first, the memory ends up massively fragmented 
> across both trees. When a very large contiguous allocation (e.g., ~64 
> GiB) comes in later, the allocator fails with OOM even though 
> sufficient total free memory exists, because the extent tracker can't 
> find a contiguous range that was never allowed to merge in the first 
> place. I think the dirty/clear split is fundamentally the problem - 
> allowing the buddy allocator to merge unconditionally removes this 
> barrier, and the clear tracker can then be layered on top as an 
> optimization without blocking coalescing.
>>
>>>
>>> Solution
>>>
>>> Replace the dual-tree design with:
>>> - A single free_tree[order] rbtree for dirty and mixed free blocks
>>>    (fully cleared free blocks float outside this tree)
>>> - A lightweight out-of-band clear tracker (gpu_clear_tracker)
>>>
>>> Fully cleared free blocks are tracked outside the buddy trees using an
>>> augmented interval rbtree, enabling O(log E) lookup of the largest
>>> cleared extents.
>>>
>>> Buddy coalescing is now unconditional in __gpu_buddy_free(), regardless
>>> of clear/dirty state. This removes the merge barrier and eliminates the
>>> need for __force_merge().
>>>
>>> Benefits
>>>
>>> - Correct high-order allocations after mixed clear/dirty workloads
>>> - Elimination of O(N x max_order) merge cost from the allocation path
>>> - O(log E) cleared-extent lookup replacing O(N) scans
>>> - Predictable allocation latency under fragmentation
>>> - Reduced complexity with a single tree per order
>>
>> Since there is no separate tracking for dirty stuff, is the 
>> non-cleared alloc path a bit more "fuzzy" now, with it potentially 
>> stealing cleared memory, or is it the same behaviour still?
> Right, on v4, the dirty and mixed (partially cleared) blocks are 
> allocated for the non-cleared alloc path, which can end up stealing 
> cleared memory. On v5, I plan to address this with a three-tier dirty 
> allocation fallback: dirty → mixed → clear, driven by rbtree augment 
> bits (subtree_has_dirty, subtree_has_mixed), each pass O(log N). The 
> split-descent also applies the same preference at every level when 
> carving a higher-order block, so cleared memory is preserved as much 
> as possible and only used as a last resort.
> Thoughts ?
>>
>> For drivers that don't use free tracking, is there some benefit? Are 
>> there any downsides there? I assume that clear tracker is always empty.
> Correct, for drivers that don't clear memory, the clear tracker is 
> always empty and they simply allocate from the free_tree[]. Benefits:
>
> Single tree per order instead of dual trees (fewer rbtree operations)
> No force_merge path at all (unconditional coalescing at free time)
> Simpler code path overall
>
> No real downsides - the clear tracker adds zero overhead when empty, 
> and the augment bits would simply show all blocks as dirty, so the 
> walk degenerates to a normal rbtree lookup with no extra cost.
>
> Regards,
> Arun.
>
>

