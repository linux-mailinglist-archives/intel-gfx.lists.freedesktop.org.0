Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yd+eBALxTGpvsQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:28:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF4D71B5A2
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:28:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4wOJWFtG;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9153B10EC9F;
	Tue,  7 Jul 2026 12:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012054.outbound.protection.outlook.com [52.101.43.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EAF810EC99;
 Tue,  7 Jul 2026 12:28:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tPBWiDXUfom6/iQk84KvogAnog5BzhoF6mD2ncrgeFpX/KqfGdbfxLBm333ep3D0jbLMRrqiTG9OrCA7bLpg68pNoKgaQfa0IzOe2Ocznk20r+BxhaywvlcTq1bGd2Z+Lb+j3PF0REJywdXywYu5pmX2gJLI2+ECGAlYLN1E/gWkdle9NmbNO+GlNUVzLWJRy4x1HIgysX5gI9pnKTey2ZF/wpf5VpAM1BVRGfLPSqo1XVKAxLgEbTq2CtjIPQNf4GTh5eHQS8kUxLWQbO7PY6o1YCLVJFQiXllsxFSZnyepWU98irzyWSWsqkZ6leEHTUQoZqYqn9hlzLxuMAbjQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WqirLUwLsM4bi+Q7duzW1d5TCTuVmORM2K1RPANHLoE=;
 b=bCRh/WvNp2QvVIpqQOSJJcLNum1EE/vjGQ6MH99R7oBTaLO3vkktDNzaBI9Vgbl15m9jEHHkcLQLDt4NVoeweDzshh3TQIfkbqDTx5XflX6jMcjwgbXvgyEMo+XSUVpvI/Nv/ifMr870EFBGIkwbPCK9LCsCesztx8cAXaPascKzmXurvUdjqhqwLSl6F9woKt4s+b4KAx4f9Ho/ij/0bRK2wVZHM83wl0GJy3bqE28PU2wKVwm8zKFkWV8klcY/IQHCVmKXwTqg+nmLAdYQQJd9KVnQ95vrD/uFs1+IPPoI8gA/SpPl7LBp7yCx8h0XoUOiLdkclqZZzCI7l/CzGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqirLUwLsM4bi+Q7duzW1d5TCTuVmORM2K1RPANHLoE=;
 b=4wOJWFtGiS1PZTr15mmH11rlBNMy8SCGSySWcFZXJuRvYWhp484c6We8qV+5QDMKzJx1PZ7AirKl/WA6WZGE3gLrAnIe081CPmsWeWH3wvGELxAPS16bR0Br2+vfYAGXqjPyavFOsKBzvlyDstpi8UgjRvaLQTBqr2dzn15ZgSA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA5PPFE494AA682.namprd12.prod.outlook.com
 (2603:10b6:80f:fc04::8e7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 12:28:39 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 12:28:39 +0000
Message-ID: <0f85e12e-7d34-40a8-9efc-0d1a00b7c24c@amd.com>
Date: Tue, 7 Jul 2026 14:28:32 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES
 flag
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Natalie Vock <natalie.vock@gmx.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
 <673ae71a1fc4dcce0e6a1655985a141d6f08c06f.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <673ae71a1fc4dcce0e6a1655985a141d6f08c06f.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0330.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA5PPFE494AA682:EE_
X-MS-Office365-Filtering-Correlation-Id: 351187d7-0b46-42df-4093-08dedc2345fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|7416014|921020|22082099003|18002099003|3023799007|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: iBadCvewOoLVCBC0MkZksZfnLCuPBOPTv5zPTUK4Z1/oXDP9w9wVqIqeA4QoHnzueFSIoY55JRIwxKR4jjNDDJK/b1g4YPT14FhLxSEJ1bmknNOkuc+bG9uBPwCB9eZ2Pi+5ETxe8+fKih49wc/M7R1oQXZUISMa1QairlcY5W/8x3B/VfCVggJkfO4bJ76HPA2Q/VMtYEMZ8tqkh/eTw0PWipkF2KEtBla4/y5e6S7R4Ubjcb/2Y3ujXIPBZOclBwdzGVRDQxH+GV8hmt6qxvYTidpqQdlu342A55cumjTYKekTbw5k5AH8NiZKD5c/+H8pmaoQ9AOo0ebHl7f9KrCEgknJj5OVn6SPID7h9g/juSld3BYQJj2mEcezuN0wXmNjdz4F23b82Rm5ju6IitnvC8NYh49zm3aVK9IcXk21ytQX+58yG8hNCX3B8RbxoUSsHMnjWwcA1ZWexTVYB8VwZCJjMCrmd2dBSux3EQg8Nd3fOH4SP+kATzl8ezUksb3TfOiiJdvTg7FpiAikHqJi9r+fueleHrv7dkFgxeIIm7ewChHRtk69O4TIzopOYSH+qRzoC55uvEntoz0w/0/M1sc4lrE2suSocCr3ieiV2J9IF1nPhePtB/4alw0z5HIfHBAG4RcAAN7hfn81+ecxHx+j8pNZTkuwNk2pLgk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(7416014)(921020)(22082099003)(18002099003)(3023799007)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHpqSzJQM0x2MnZUZ1ptY2hMcVJSTmVDNXBoR3czV3BXREltb2pGaEdtd1N0?=
 =?utf-8?B?enhNYnZSdkNJTWdtWFI4cFBmcVNaajZFRVBacDJieE1nTHRvYU5qckc2V04r?=
 =?utf-8?B?NXIxTTV1MVNXZVZiWEpMNjdFRjY2cy93eDc1eW5OZW90bVVrelhnbmNMM1o1?=
 =?utf-8?B?b1NtWXZpc0o2b0Qzd3RtbjZCWWNSUnNLZHdiQXBNcVNid3FoSENYWFc3eWZY?=
 =?utf-8?B?cThlcUw4VExMbXhZNCsvMTJncExudStuVGM4Qm5QOHprOTMvNVJ6WE1vYURK?=
 =?utf-8?B?UjNHTjlQdVIzMzdPekE3SjFVdmgreVNRTmNZNzM4VjJZbnpZT2hRdWMxSW9y?=
 =?utf-8?B?aVU5QUdYNUFoem16MlpMalFrellWNHpiQ1FqWDJFQTZSck5DdEhiakIzNXg0?=
 =?utf-8?B?WWRoTHlQUGtiN1EyVXNtcVAvWHBNMzU5bkNIWXhrQjdzVFZmNjhXZFRtbFM2?=
 =?utf-8?B?WkszcTlOcExrVTlZTXRsYWVhREhWRWZjcjNWZlc1bm5lem9tdWZ3VXVBS08z?=
 =?utf-8?B?MnFtMklzVzlGb0Y3eG5Gd1RvZ251VlZ6Qy9EVkcyc080SHVDMzI0dUhaYkRS?=
 =?utf-8?B?SUN6cWgyNFgrbnR2MkhQdjNNYW1sYWE3SmxNQkdlYVQzcncrZHhXZWVYN2NP?=
 =?utf-8?B?R1N6Ri9kczdqMXpBUlNZWXdVZXdnU2lEdGVJN0NOV2wvOHJmblNCYVVKZENN?=
 =?utf-8?B?TnFTbUg5MkRCOTM3M2pWVG5RVUpCeklJZk42c3ZsN0dtQStGcFJ4eUFoaDQr?=
 =?utf-8?B?bm43QWUySitUQjZkMFdMSEFZRHo5WWZhVGEvRG5ITmZDalhIdEhFaUkxYjF2?=
 =?utf-8?B?dksvU0pSYldteWVPcmE4OVR5cUZoSytMQk5qNVVPV3RTZVU2NE5LaFlObGhP?=
 =?utf-8?B?RjY4VTJFekdsMUZyNEpGWElteTVsNUtZbmd0dDJsYkxvUXZNdTJjbzcxSG90?=
 =?utf-8?B?MDdHMEJoTkVPNXFDNkdDK0RORXlDUEdlaU15QmY2VjQrN1hvRkw2RVhWNEY0?=
 =?utf-8?B?Z3hPdFhLYTdIamdwNW1mS0hlbTd6UXlOWm1PZjhaMWpQR3NISW91R1d3Y0ps?=
 =?utf-8?B?dEpDTjJRUmdDSnZiVXFFTElqYXMyZjMwRkt5WmRTekhPR0tHejI2NE5YZ1Yx?=
 =?utf-8?B?YmJSUHcwbkh3WGIvbXkycmFNZTJxNmpkb25sanhobzBWbXhERE5YT1lKQXli?=
 =?utf-8?B?VG1BRk95VzZlYWFvdGMzUkh4UlZKYzhEY2R3eTdTWUw3THArMTc5aGFLMDFY?=
 =?utf-8?B?cTFlWHorUThrb1k3SFpKK2x6TE4rK2MySm9waFE0cmE5TWdZWjh0Z3Q1UGFw?=
 =?utf-8?B?dFhwaVhyR0ZYazk2Tko0R09zdE5Ydm9vcDZjM1djZjR5YUcyK21qdVJ4bWx6?=
 =?utf-8?B?SFhBMkNqKzZpR1JXWDk2dFB3T2JIQ2ZGckZJWTdna09jdVMxMWVuSFRLM1N5?=
 =?utf-8?B?RUhtWUpTQzMwbG5RWEI4VW4zZnBrdytmWS9VU3RCZm43L1JNVkkwU2MrRVVP?=
 =?utf-8?B?bVJvNFp6bjRIVllIeG05Ukh0OVZtR1cvNFJtR2tPdWlPcSt6MHFsNk1NdUYy?=
 =?utf-8?B?MFAzZXMwT0xOMVd0ajdhQjBKYzkxUXg0TnFGaUNCaVRJRVpwTWV3ODFxbVFh?=
 =?utf-8?B?UURLcGRwTzNlT1FsdnUvY01QZjRLN1VYZXlTdU8zdVJxYlI4ZkxuZ29hZ3dY?=
 =?utf-8?B?eDlSdDA5Ti95VWFIeFMrY3FBenZTNWw4L3dSRk96OS9MR24xbXZ0Y1JJMWZE?=
 =?utf-8?B?SnRMZmowbS9BS2VQeTZ3c2NXSUdna3AxMmU4MnZBQTJtTWFpcGZwUERZL1g0?=
 =?utf-8?B?cFJwTzhxd2hnQmxLQ1FLYnJHL2oydklLYnFPZDNMZ1lSLzRGNkR3NVI4QzE3?=
 =?utf-8?B?emhUR3lXd2M4blA2MVcxdVFkblJ1UW1iTW5MdE1CZFJFeVNXczd3dEpYdXlt?=
 =?utf-8?B?MkszR1NFbGZYdGJOeGpndlRKdkFSN1NaWUsrT0JFM1pOM0NEb3lnZG11cFp1?=
 =?utf-8?B?YUdTSjFIeWs0b1BtMVlmQXAxcEthZ2RoODRmcTFabWRYTnVzWEV0VVhPc2d3?=
 =?utf-8?B?ekI3dVpNSFJBTW16S3ZoSFVMUDZ3eERMbS9ZVHNCTkJ0R3BGdUJoTG9pUmhp?=
 =?utf-8?B?b2EwS1dNVXRrbzBIMlBIbFkvdzRHcHByRGV1dUc3Q2xnVWJOS1AxL0FQdzF6?=
 =?utf-8?B?MW5aUTR2ZWtsa2JXVzdKTGREMGxTRWl6dlBLUFBGVEl4SW1GcDROUVBJaWFm?=
 =?utf-8?B?Tyt4dHlZREp5QXBhN0dQSDFnWVJEZVFmWUZKVlFSQ1RKUmFtSXBGckdtSXJs?=
 =?utf-8?Q?is1MKGxZBCy4WwvSay?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 351187d7-0b46-42df-4093-08dedc2345fb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:28:39.2061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WG973tuV+e8v2q8ogQVVo4eEahKkDmEmtlQ+NFZF4ET6DRNNvDf00GsgjS9juaC9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPFE494AA682
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,gmx.de,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AF4D71B5A2

On 7/7/26 14:09, Thomas Hellström wrote:
> On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
>> TTM is about to switch to drm_exec for locking objects
>> in the LRU list. When we're done processing the object, we want to
>> unlock it only if the caller doesn't already hold that lock. If
>> DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which callers
>> may
>> require for unrelated reasons), we have no way of knowing whether the
>> lock is already held.
>>
>> To remedy this, add a separate helper that forcefully bypasses the
>> IGNORE_DUPLICATES flag for only a single locking operation.
>>
>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> 
> The first, more complete attempt to try to tackle the exhaustive
> eviction introduced a drm_exec snapshot ability instead.
> 
> https://lists.freedesktop.org/archives/intel-xe/2024-May/035820.html
> 
> The idea was that one would want to incrementally lock more buffer
> objects until the validation succeeded, rather than dropping each
> single lock after processing the eviction. That's actually what
> guarantees forward progress. Restoring the snapshot unlocked all locks
> that we grabbed in the process, and would work also for single locks.

That's actually not what this patch here tries to solve.

The problem is rather since we don't remove the BOs from the LRU list that we try to evict some which are actually part of our working set.

So when we lock for eviction we can't ignore duplicates no matter what the global flag says.

Regards,
Christian.

> 
> Thanks,
> Thomas
> 
> 
>> ---
>>  drivers/gpu/drm/drm_exec.c | 52 ++++++++++++++++++++++++++++++++++--
>> ----------
>>  include/drm/drm_exec.h     |  2 ++
>>  2 files changed, 41 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
>> index 7988f5e7d56a3..91de6b4d29df8 100644
>> --- a/drivers/gpu/drm/drm_exec.c
>> +++ b/drivers/gpu/drm/drm_exec.c
>> @@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct
>> drm_exec *exec)
>>  	return ret;
>>  }
>>  
>> -/**
>> - * drm_exec_lock_obj - lock a GEM object for use
>> - * @exec: the drm_exec object with the state
>> - * @obj: the GEM object to lock
>> - *
>> - * Lock a GEM object for use and grab a reference to it.
>> - *
>> - * Returns: -EDEADLK if a contention is detected, -EALREADY when
>> object is
>> - * already locked (can be suppressed by setting the
>> DRM_EXEC_IGNORE_DUPLICATES
>> - * flag), -ENOMEM when memory allocation failed and zero for
>> success.
>> - */
>> -int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
>> *obj)
>> +static int __drm_exec_lock_obj(struct drm_exec *exec,
>> +			       struct drm_gem_object *obj,
>> +			       bool always_report_duplicates)
>>  {
>>  	int ret;
>>  
>> @@ -226,7 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>> struct drm_gem_object *obj)
>>  		return -EDEADLK;
>>  	}
>>  
>> -	if (unlikely(ret == -EALREADY) &&
>> +	if (unlikely(ret == -EALREADY) && !always_report_duplicates
>> &&
>>  	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
>>  		return 0;
>>  
>> @@ -243,8 +234,43 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>> struct drm_gem_object *obj)
>>  	dma_resv_unlock(obj->resv);
>>  	return ret;
>>  }
>> +
>> +/**
>> + * drm_exec_lock_obj - lock a GEM object for use
>> + * @exec: the drm_exec object with the state
>> + * @obj: the GEM object to lock
>> + *
>> + * Lock a GEM object for use and grab a reference to it.
>> + *
>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>> object is
>> + * already locked (can be suppressed by setting the
>> DRM_EXEC_IGNORE_DUPLICATES
>> + * flag), -ENOMEM when memory allocation failed and zero for
>> success.
>> + */
>> +int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
>> *obj)
>> +{
>> +	return __drm_exec_lock_obj(exec, obj, false);
>> +}
>>  EXPORT_SYMBOL(drm_exec_lock_obj);
>>  
>> +/**
>> + * drm_exec_lock_obj_report_dup - lock a GEM object for use, but
>> always report duplicates
>> + * @exec: the drm_exec object with the state
>> + * @obj: the GEM object to lock
>> + *
>> + * Like drm_exec_lock_obj, lock a GEM object for use and grab a
>> reference to it.
>> + * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is ignored
>> and duplicates are
>> + * always reported.
>> + *
>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>> object is
>> + * already locked, -ENOMEM when memory allocation failed and zero
>> for success.
>> + */
>> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
>> +				 struct drm_gem_object *obj)
>> +{
>> +	return __drm_exec_lock_obj(exec, obj, false);
>> +}
>> +EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
>> +
>>  /**
>>   * drm_exec_unlock_obj - unlock a GEM object in this exec context
>>   * @exec: the drm_exec object with the state
>> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
>> index 8725ba92ff916..ff80dd2b72240 100644
>> --- a/include/drm/drm_exec.h
>> +++ b/include/drm/drm_exec.h
>> @@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32
>> flags, unsigned nr);
>>  void drm_exec_fini(struct drm_exec *exec);
>>  bool drm_exec_cleanup(struct drm_exec *exec);
>>  int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
>> *obj);
>> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
>> +				 struct drm_gem_object *obj);
>>  void drm_exec_unlock_obj(struct drm_exec *exec, struct
>> drm_gem_object *obj);
>>  int drm_exec_prepare_obj(struct drm_exec *exec, struct
>> drm_gem_object *obj,
>>  			 unsigned int num_fences);

