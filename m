Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LjNiLrvyTGrLsQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:36:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654E571B69B
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:36:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=v7dQn6Zn;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D601610ECAB;
	Tue,  7 Jul 2026 12:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013052.outbound.protection.outlook.com
 [40.93.196.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463EB10ECA5;
 Tue,  7 Jul 2026 12:36:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nk7PSHI1OQOCbi5J7j2XBXFWao+dTEJv3V0Nk9/GGk53RjH2SVSXLtg6Llt7uLxFIfF4sBQ/W+NP7yFjVSrdoLLiMXLzUZeNl22CFzlOp6j7gGQvPziCcqX6W1/NGCenF76MTEJ0YKo5p5T8MdXfYLqEjOHZilExol8+dS8LgR0Z99TNRnmffugOO0sZgQpIqRAhliKa8U8lPhDIuHxYMMp0KxiwlJY+/rm4JQ+k0S1M1YsImkwJVZ2rjnXlz8isRjqqQC56ehmdNGD3ilQDAxAzV2g/5Usva51R735spgRmSb1qhWGsKaGR3wNFLtxP5JAS70mBHUJ0pbphTwRyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8hPeiitVDWNZ8gjHhVVVTRCJuAEAyVpoZMK4dEQO0ws=;
 b=gQw1Big3Y4H9uOUc7YGj/tnx+gwg3xkcymhw97JZ15VYRB+CxBkEuw6TBgNNAzQ3sUwnihflrZ5TKrP2Yu+pH4QEcIa0rpp4QhNACZFYxUop9cmQNQaaFLwmiSBgv1LZO36HgZjN5MtH1DiHlBPIS20uQMxeM1gU74hR0MpnseAKFeq536A0JY/3PVzzGDnzxnUkcpSr2OCrThcUYub/Qb3WViAWYJBAMpjBTQmvEicEy9ErsL5PPC8o4LyP6lQlVaa1p1hNlNlMpeqhSdZ0ddn18aRr6SHnTO3SeKTZZq+gGGkeNGh5sbPtFEIQ+bS47kLpmXQg7b/SuYCw/jO6Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8hPeiitVDWNZ8gjHhVVVTRCJuAEAyVpoZMK4dEQO0ws=;
 b=v7dQn6Zn1HV7C7ZLoHM7bHE3RRxaN3jjpZM2w9m09e6oFfBfz6cDeFXSx2bqKrBlo8ZKfXoiSv5+Efej06Mnzb1qmXhnZVCHtEOjjfIBKnJGw3bhZj3UaBNma/h31y54YjsKlwOjJWXMaZgTuOSTW7qfScVY4JFUpf3xBBCl0uE=
Received: from DM4PR12MB5039.namprd12.prod.outlook.com (2603:10b6:5:38a::18)
 by CH1PPF4C9628624.namprd12.prod.outlook.com (2603:10b6:61f:fc00::60d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Tue, 7 Jul
 2026 12:36:02 +0000
Received: from DM4PR12MB5039.namprd12.prod.outlook.com
 ([fe80::762:6408:ca99:701d]) by DM4PR12MB5039.namprd12.prod.outlook.com
 ([fe80::762:6408:ca99:701d%3]) with mapi id 15.21.0159.015; Tue, 7 Jul 2026
 12:36:02 +0000
Message-ID: <74ef08f8-c466-4f54-bb4d-2ec918c00feb@amd.com>
Date: Tue, 7 Jul 2026 18:05:56 +0530
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
 <3ba98ec2-ea1f-4074-b1cc-456fca283ef8@intel.com>
 <6ab93f55-0643-4518-9aaa-b12d55f8ccb4@amd.com>
Content-Language: en-US
In-Reply-To: <6ab93f55-0643-4518-9aaa-b12d55f8ccb4@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0077.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::14) To DM4PR12MB5039.namprd12.prod.outlook.com
 (2603:10b6:5:38a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR12MB5039:EE_|CH1PPF4C9628624:EE_
X-MS-Office365-Filtering-Correlation-Id: 87c680aa-6ae5-4dfe-ba48-08dedc244e08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|56012099006|6133799003|18002099003|22082099003|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: a4znZQjzyVZ+RgvDZcpH/qDhB/dQhUCwOyrjIdPmfTFTiJndCs/2Xrac/R00DqCqxIBbCypxKEBBlcUZc0ZXpC+huAJZGya1VZ+TG69QXh6hMoxtB6vF9IAgUWuJfyUL1HlXMSldlsMq7KO+pSoWBlEqsx8SjaugUu3hyLmzgf2rHHvLk/ISNUyTo/dO3oTF3qVKxGzZ3Q0wDmPWO2QR9uYWG/N0IjY0HKMrbXnG57vyryIZIgjfIZC7AwBKJxm4ZxGopXW8UAkb12ktu2Wej7u55mDJQZT4A2WVoSq0RgnUinNvxAJdvxXAKvaKr6AKjHBIhIwPytlU3B2nsfPOdLrb7K9h8Io0fgcUikch+3HGTYEu2nqt8ptQLWDqsdQFZY9KVP8mB5bU4Z70x795L5+ZAPrP+ezr31L//DEDZAjh3jqYmdskNGiJRpgesSNA80+jwRzZc9toXJiwuywaBPH56dLECbK/woPtY+QpYoLLG63je8Ncpgf5aeAZtk2hx4Sf8I0ruUtUdlAi4ITa/8/4UvXen+jZr9kb10DqvzvxoNSfMlknO8l9oMOMgVmCLVN5eUHroyQgRJmbrsOgKxk/RwOhO4NQWHgd/l7vHSePp36s97DzfdWM969xVUcs1aKIoVivyagBwX06qXkhr5hVrg4vhdBPMwKRVSzCVAg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5039.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(56012099006)(6133799003)(18002099003)(22082099003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEUxSGZlTzJtYUpmbXpYM0ZyY0M0RFc2NHVnaHMzYWpTNmpJTTBDRzh3L2c2?=
 =?utf-8?B?cTlNbkdrMDlNSjNDUFNrajMvNmxYYkxjWmdzZ3l1cU9YVHBob2xqWmRJdStW?=
 =?utf-8?B?SktSUFRhNUhDTmh2cnB1VHg2QkxaYWw2UjM3K3hZc3dWRXlISXVzSGNPNjUw?=
 =?utf-8?B?VHA0QkZoQ3k0VmcxakxkMEVDVGVvcmsxU2NiUW92SjZkZEJnalpIYWl1RGJm?=
 =?utf-8?B?cTFMWTR6endIeERCUjdSajBKc0w2aExoQ0REZnN3YmloVnIzRDFRdlpJNVAz?=
 =?utf-8?B?am1JakdsRUlwYUVLNGtZL2pZK09IRllLSUNWYXJxWlNNbS9aSVRNRkZqNHE0?=
 =?utf-8?B?R1o1U1NOSzNNb3pBaDBKTWxIZEh5S0V0UTFXeVlNa2pUY0dwc1NIeHNPK2tM?=
 =?utf-8?B?ZG9VRk04K0oyOGVPOE05R3ZiWlF3MFprYjMwYnFEQ2N6bzNLUnBlVzlJN3Ja?=
 =?utf-8?B?c0R6OFNwQXRiWXVmeFNHT2VVNXRGdnY4eFlQbVdFQ2I5UG5ZL01Wd1JaWGpZ?=
 =?utf-8?B?VEhDemhoYS9YZkQyQkZ0Y0NrNEFmZ2kwczM4bE9HWEdnM21QanRJeDRJckxJ?=
 =?utf-8?B?ODdKR21IZ1JGak91OVJ6QnlYaHZoVkJDVzdUZlNkaWlXMURDekY3MUxVc0pa?=
 =?utf-8?B?YnVDM3JRbnpyT2xOY1M0M1dwMTdMdzU4T1NMbUNhNXBQbVFpellsMnYvZWtG?=
 =?utf-8?B?Vy93TzVUT0FudWdMNjZvVnJqaWRRUXN0Ty90N0RvMS9wREFqcnYxZU90Wlhy?=
 =?utf-8?B?bzJwYTNQZDdNMGIzbHdiRitUYzIzRlBRVE5JK2hJNGpQbndMNVFJWXViVzJh?=
 =?utf-8?B?YzNabVNXazZKZklIdm1yNTZ0UVdCeHBmSWh4aDBZWjU1ZmVRQVpqMkRNNG5J?=
 =?utf-8?B?WXBpUUMzdDc2ZXBaWHdYWHBkRzdWcHV0SC9lZElGWGpYSjdrZEJqbEgxOWlZ?=
 =?utf-8?B?Smd5cjEzS013VUhkbGMveHJFMkFSeDRTNVplWVVmRlRuaEVZaTVwYkpLQXR1?=
 =?utf-8?B?eXo2bkhDMTNValJIendySXFqRlVZOEpOelVZd0tOU0dJaFYrTnJVcXZaWk50?=
 =?utf-8?B?cTREbnloU0VSSXZ3UXY1bUpNcURqb0NsUmZwOEFnSDVHWm5FVWZjRlY3V3ZK?=
 =?utf-8?B?M2M0REpBOEpQeFYva1pKVWx0T2c5OVBsaEhOMUxVZHdBSWJ2dHl0QmFxYlhT?=
 =?utf-8?B?bTlKRlFOKzAwM3pNN0NkWmsrdWRUM0Z0UWttTk1KdStnTldnWTdwZ3RDUWFt?=
 =?utf-8?B?TlVXemJYeHZlNXR3M0dPeTB1cFlRaHFNbEtoUGJsRzFMcjFDRlBXYVFId3lw?=
 =?utf-8?B?Zm13VHNSZ3VLbjZvUTdjcHp3c0piQi9jS3pVUk42UCs5dXRnOXQwcnl4L1Fi?=
 =?utf-8?B?UEY5MklSZitqUm1oUGVvQTRzL1d2dUNXT3lBbm1aV3k1N3hkdUJPTFpBVklY?=
 =?utf-8?B?UEhRbzFiUGExblNpaUV0Ti9NNG1OcTJUaldDbnYyYmd0a1FkV3VEdndsU1Fr?=
 =?utf-8?B?R3NkVmNhN1JvVGdseHYvRitteUZ5YjVQRTFkMVc1T0FHZUh2RUsrNEtaNEdC?=
 =?utf-8?B?dG1sNVBhcnZmb1BTeW9ZelNnT0hSaDVoYkc2SVhJbVRNM1ZwUWl4SWNjdmE1?=
 =?utf-8?B?RFdwSFBGMExmbG1tSDg5S3BnRmI4bXBEMm43Z3VwWVA3Q21IYVFteWtBVTBC?=
 =?utf-8?B?ejdlTlBYSVJwTi9RQUFnSmhNZ0VVa1ZSWjRnRDAvRGJCdUdtM0NVN2tSZ2dB?=
 =?utf-8?B?Um91c3BJMXFBdis4eWZvWEdSQnI4ZiswSjJHWnpud3pzcDg0a2x3OWNZRDFa?=
 =?utf-8?B?d0VqVlZrSGMyRTlIYklXbVE2Wk1aY041YW15SnR4TExGV1ZJY21CRTdVZGxK?=
 =?utf-8?B?SDhUanBDNXY4MFBjTE85WGVxR0ttMVZiK3dzLyt6OUgyZUt0NzFReWlSZVhL?=
 =?utf-8?B?dTdFaWxMSi9RUDA3YUJVeUVwcy90MkdiTVQ4bmFqM3U3eEpnYUN5THFUZ21J?=
 =?utf-8?B?RkRWSkpVR3JmNnFMRFlQMGJ3aEo2ZmdRbzMrNUdvVEZ4Z0FqSUhaK0FwN0xI?=
 =?utf-8?B?Ung1bjhaQjJIZEFiZVh4OFlPNWNlWkVmdlRyRWJiVXdyTkRiRkd1elI0YllK?=
 =?utf-8?B?VG5xZ21LQ2Q0UnhPQWVTUmQvQjgyTlptckRKOEIrQmc4d3dCNk81QkNHYVJ4?=
 =?utf-8?B?a2RuSnV0TGZ5NWZUSS9VV01iRk1VQUdpZ0FJbFRUcExxbVVpdVlxcWkvZ3Jv?=
 =?utf-8?B?U2kzSHNteDdaQ3p6anBDZnAwMVZDQ3NKV0g2d0ExS2xRVzVtR1VSd1A2Nitk?=
 =?utf-8?B?Zk85bmViaDRGUmF5TDUzNCtDUlp2OUdLZWhzdzRjbkxjYWlGU3JDQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c680aa-6ae5-4dfe-ba48-08dedc244e08
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5039.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:36:02.3640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGabTML5n6wSaOEEr4PZMlwXvGkB8wdf0S4IiF2Z+i759UedZg7RiHx46AWqGxil5n/uqOtS5KP9wiEZf7EXeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPF4C9628624
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,amd.com:from_mime,amd.com:dkim,amd.com:mid];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 654E571B69B

Hi Matthew,

On 6/10/2026 6:36 PM, Arunpravin Paneer Selvam wrote:
>
>
> On 6/10/2026 2:49 PM, Matthew Auld wrote:
>> On 01/06/2026 11:51, Arunpravin Paneer Selvam wrote:
>>>
>>>
>>> On 5/29/2026 11:11 PM, Matthew Auld wrote:
>>>> Hi,
>>>>
>>>> On 27/05/2026 12:29, Arunpravin Paneer Selvam wrote:
>>>>> The current buddy allocator maintains separate clear_tree[] and
>>>>> dirty_tree[] rbtrees per order, preventing coalescing between cleared
>>>>> and dirty buddies. Under mixed workloads, this creates a merge 
>>>>> barrier:
>>>>> adjacent buddies frequently end up split across trees, forcing 
>>>>> reliance
>>>>> on __force_merge() during allocation.
>>>>>
>>>>> __force_merge() performs an O(N x max_order) scan under the VRAM 
>>>>> manager
>>>>> lock, leading to allocation stalls and failures for large contiguous
>>>>> requests even when sufficient total free memory is available.
>>>>
>>>> So is this contig with non power-of-two sizes?
>>> Both power-of-two and non-power-of-two contiguous requests are 
>>> affected - in either case, the required higher-order block can't 
>>> form when its lower-order buddies are separated by clear/dirty state 
>>> across the dual trees. But the core issue we are seeing is VRAM 
>>> fragmentation caused by massive small allocations (e.g., thousands 
>>> of 4 KiB–8 KiB buffers) that end up split across clear and dirty 
>>> trees, preventing buddy coalescing. This leads to allocation 
>>> failures and OOM in later workloads even when sufficient total free 
>>> VRAM is available.
>>>>
>>>> Do we know if we could force_merge everything in one go or somehow 
>>>> be more aggressive and do more than needed now, at the first sign 
>>>> of contention here, instead of doing it piecemeal? Downside would 
>>>> be losing more of the clear tracking, when this happens, but more 
>>>> re- merging.
>>>>
>>>> Could we have another per-order list, of all blocks that we failed 
>>>> to merge, when we did the free step? When doing the force merge 
>>>> step, we maybe don't need to search blindly and can focus instead 
>>>> on the stuff tracked in those lists? Maybe it doesn't need to be a 
>>>> list, but could be another rb-tree?
>>>>
>>>> We know the size of the total allocation, if we trigger 
>>>> force_merge, could we try to merge enough in one go for the entire 
>>>> allocation, instead of restarting the entire thing on the next 
>>>> iteration? Would that help at all?
>>>>
>>>> But I guess these are more for the stalling side, and won't help 
>>>> much with the contig angle?
>>> The memory is highly fragmented into mostly 4 KiB chunks and small 
>>> scattered blocks across the dual trees, so although total free 
>>> memory exists, it is split into low-order fragments. The workload 
>>> then requests very large contiguous allocations (tens of GBs, e.g., 
>>> ~64 GiB), which fail with OOM because the allocator cannot form 
>>> sufficiently large high- order blocks from the fragmented space. We 
>>> could go with more aggressive merging or merge-in-one-go approaches, 
>>> but this might waste more cleared memory. I think fundamentally the 
>>> buddy allocator should be allowed to merge unconditionally - the 
>>> single-tree approach with unconditional coalescing would improve the 
>>> fragmentation and benefit contiguous allocations along with 
>>> addressing the stalling and latency issues.
>>>>
>>>> For the extent idea, is there any merit in maybe doing this for all 
>>>> contig blobs, and not just cleared stuff? Or is the workload you 
>>>> are seeing only benefit users that want cleared stuff? Wondering if 
>>>> this would benefit all users that want contig? Like if we 
>>>> hypothetically kept clear and dirty separate, like we do now, but 
>>>> with an improved force_merge, and then have extent tracking for all 
>>>> contig blobs and replace the try_harder stuff? When you do a contig 
>>>> alloc, the individual clear/dirty is still all there within the 
>>>> range, so you can skip re-clearing in some cases. I guess downside 
>>>> is overall more fuzzy contig + clear/free path, but I guess you 
>>>> would never get allocation failures, when there is sufficient 
>>>> contig space?
>>> Yes, extending extent tracking to all contig allocations has merit, 
>>> but the core problem remains - with the dual-tree design, we still 
>>> need force_merge to undo the clear/dirty split before those extents 
>>> can form. In cases like heavy small-allocation workloads (thousands 
>>> of 4 KiB buffers) running first, the memory ends up massively 
>>> fragmented across both trees. When a very large contiguous 
>>> allocation (e.g., ~64 GiB) comes in later, the allocator fails with 
>>> OOM even though sufficient total free memory exists, because the 
>>> extent tracker can't find a contiguous range that was never allowed 
>>> to merge in the first place. I think the dirty/clear split is 
>>> fundamentally the problem - allowing the buddy allocator to merge 
>>> unconditionally removes this barrier, and the clear tracker can then 
>>> be layered on top as an optimization without blocking coalescing.
>>>>
>>>>>
>>>>> Solution
>>>>>
>>>>> Replace the dual-tree design with:
>>>>> - A single free_tree[order] rbtree for dirty and mixed free blocks
>>>>>    (fully cleared free blocks float outside this tree)
>>>>> - A lightweight out-of-band clear tracker (gpu_clear_tracker)
>>>>>
>>>>> Fully cleared free blocks are tracked outside the buddy trees 
>>>>> using an
>>>>> augmented interval rbtree, enabling O(log E) lookup of the largest
>>>>> cleared extents.
>>>>>
>>>>> Buddy coalescing is now unconditional in __gpu_buddy_free(), 
>>>>> regardless
>>>>> of clear/dirty state. This removes the merge barrier and 
>>>>> eliminates the
>>>>> need for __force_merge().
>>>>>
>>>>> Benefits
>>>>>
>>>>> - Correct high-order allocations after mixed clear/dirty workloads
>>>>> - Elimination of O(N x max_order) merge cost from the allocation path
>>>>> - O(log E) cleared-extent lookup replacing O(N) scans
>>>>> - Predictable allocation latency under fragmentation
>>>>> - Reduced complexity with a single tree per order
>>>>
>>>> Since there is no separate tracking for dirty stuff, is the non- 
>>>> cleared alloc path a bit more "fuzzy" now, with it potentially 
>>>> stealing cleared memory, or is it the same behaviour still?
>>> Right, on v4, the dirty and mixed (partially cleared) blocks are 
>>> allocated for the non-cleared alloc path, which can end up stealing 
>>> cleared memory. On v5, I plan to address this with a three-tier 
>>> dirty allocation fallback: dirty → mixed → clear, driven by rbtree 
>>> augment bits (subtree_has_dirty, subtree_has_mixed), each pass O(log 
>>> N). The split-descent also applies the same preference at every 
>>> level when carving a higher-order block, so cleared memory is 
>>> preserved as much as possible and only used as a last resort.
>>> Thoughts ?
>>
>> No objections from me. Do you want me to still look at v4 in depth, 
>> or wait for v5? I only really looked at this from high level.
> I will send the v5. Please review the next version.
After evaluating a few alternatives, I moved from a clear tracker to a 
dirty tracker. The two-bit dirty + mixed tracking scheme preserves 
cleared memory correctly, but selecting blocks based on state rather 
than address order causes dirty allocations to spread into the middle of 
the pool and increase fragmentation over time. With the dirty tracker, 
dirty allocations are satisfied from tracked dirty extents first and 
otherwise fall back to the highest-address free block. Cleared 
allocations naturally consume the highest-address cleared blocks from 
the free tree, creating a natural boundary between dirty and cleared 
regions, while mixed blocks can be split so each allocation type 
consumes the appropriate portion. The v5 series will follow the 
dirty-tracker design. Please let me know if you see any issues with this 
approach.

Regards,
Arun.
>
> Thanks,
> Arun.
>>
>>>>
>>>> For drivers that don't use free tracking, is there some benefit? 
>>>> Are there any downsides there? I assume that clear tracker is 
>>>> always empty.
>>> Correct, for drivers that don't clear memory, the clear tracker is 
>>> always empty and they simply allocate from the free_tree[]. Benefits:
>>>
>>> Single tree per order instead of dual trees (fewer rbtree operations)
>>> No force_merge path at all (unconditional coalescing at free time)
>>> Simpler code path overall
>>>
>>> No real downsides - the clear tracker adds zero overhead when empty, 
>>> and the augment bits would simply show all blocks as dirty, so the 
>>> walk degenerates to a normal rbtree lookup with no extra cost.
>>>
>>> Regards,
>>> Arun.
>>>
>>>
>>
>

