Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T+BmIyP3TGrNsgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:54:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7B871B917
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:54:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=am9tzlAi;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68BEC898C4;
	Tue,  7 Jul 2026 12:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011014.outbound.protection.outlook.com [52.101.57.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9EA898C4;
 Tue,  7 Jul 2026 12:54:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dzx4MWivBNA4I8fV1RvMTnoKsMBhkIqthtvIKvOYXTcZLaO+kQhwThlSuA38WS8qAXMzANKBdXi5EgTofCFukjRdwAjnUVmmVpTbVWqZaS4aoXTc3/c66U9h3KChaeZw/rPeAIJbm7i4moYaY311zYVqi1O17SUuxH2gGf9b4Z+bOHMhbqXGiqYDtqJ1Rqq5hwNOt3tc37tOxl/ZTGlxRNN5CX+gb7IVzzrdhvw6EfNLH9amWGFvtTMeZhpfGjj3AR9AWxJ00jNl4XbZ9Sc36YZ2WdPZFFaHAlvkO51mE3ZcCP/qNG+OtujOSh7ic7p4S9YE7+nloSZ2DZbiH2TKjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W3k+oPFpaANgqaxtO9NbnYD/de9Z2dB3sKXG17trVas=;
 b=GW91rtHGop9sDkL0/+Z4dq1uF0qTByGQ2wq0AjJD0AvbQDVgXDmGIuUe8U8QmBLw3M1c82iPnZDB6KGp8g/YPrHNbsomEM6y6GPd+o/Tkzzxon8Oif+PikDH9efs+1l9ziQWCEAx3w4rBj+oSKiOl4a6Pm1qZbr+M1sqDOC8KM7B5aZEe9uA4QRx/UU0zuBY8aX7MU3/ICZrCe9sQg7DP4L4+cz2zMgPy5vIar5knaP5RmP23hs1WrMquZb74hzqbqXyzyKKtKYxIAMpCkrE/9yHDkekciueERKOtcSNAT3bGo7i5aFbYnDIMEJ9ApGwrkposotRru0aq48qwDl9iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W3k+oPFpaANgqaxtO9NbnYD/de9Z2dB3sKXG17trVas=;
 b=am9tzlAiK5htWNKyrJOepLrLHzAiqSfWxjBoGnPsTmsz1JZCidHTJuB9jND8JewzgkjNlErjujf6oZVfy4/t1wMJ5CTG1cioZWFAdzie1M6ZfefO0Vj2r1+cqCipYODF6/HRb+J48ni4OmLWqWaK+WJWtATHQF57Z4U1aADO4FA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6443.namprd12.prod.outlook.com (2603:10b6:510:1f9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 12:54:44 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 12:54:43 +0000
Message-ID: <9a55ba77-6920-427d-9325-ca0e3b8ee94a@amd.com>
Date: Tue, 7 Jul 2026 14:54:35 +0200
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
 <0f85e12e-7d34-40a8-9efc-0d1a00b7c24c@amd.com>
 <6fac8343dc71b1dbf17e77390cc878cfaeb6d650.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <6fac8343dc71b1dbf17e77390cc878cfaeb6d650.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0195.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6443:EE_
X-MS-Office365-Filtering-Correlation-Id: cec12f47-c02e-4d05-a6d0-08dedc26ea56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|7416014|22082099003|18002099003|11063799006|56012099006|4143699003|921020|3023799007;
X-Microsoft-Antispam-Message-Info: L/SKcrsVU+LUxJOpUqLaxRtJvJ1frTuRJEuxN9uyrb0e4jlfRKYNdrlr6M1xN2qVlZ1irhDNMxfyByZwy6TkDNR51j1kjoSby0JtWz4NAtCSWfQt26l7re/l05DuyEwc7WvxvcIz9nNDvzZVXxxuPEpnHxaskBWCACxdP6uI6eRI/Mi+Ook9HnBLjVLWOyCMNo+PemvlOi0Ol+HZXLqLPC9gyI8o1SjNwleoNEWKN1XuE+sQFjOfY90nNwQYlkELv8kivYkXBpfLgVX6nt0HUKXWSRwXgTCPYUW0/PNRJIa5OJLtQV4UtATKOTWwRATI/U6qGNtLKisxUTSrO9Z/gcqD4pz1xWsCkbtSQg8t2vbYxNZjHMgNN5fZsR4DL91xAP8Cg37Q4JrdUdXdrMF5/4DbsPMw01RNAcKSkNmedLkrA3IPZGs57n2IfCQWYUBazR8Yvz73k3lB3hAvaaSVCMytNGxNBSzxKSyUaVSEKWr3JtXNmzRn6hxFAqXxYArLqSrGLMR6FP8/+AioGDeHYlwo1oYM5Wt8oqG4TrbbfAaltOEl8mVSQCCqO/xGGlCY6v0nBInmfsu72L8+qcl31DsQcuqkkRG2+kdWDHqRKRVIbml2HpiiHjU5rTUqKtm1vx6Lko2ruH2pKG50WhZpHrCJVgtQKjJUnp+4+fco9lg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(7416014)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003)(921020)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NENPWDN2MTNGN1NsWHFrNE5IZUFDeExGdnJQaWx6cW5hZlYyOTJNUUwyd0lU?=
 =?utf-8?B?T2dwU1hEL0o0RjN3Z2NEcVNXY0o1MFI3bEtDWXFWcUZhY25nNlgrdmE2YVJj?=
 =?utf-8?B?TjhrV0xrbGxrRkl0RmhOTzNYMXFqeHpNNUN1dG1XaERqV1FLK3pqUDJYbXhP?=
 =?utf-8?B?blVXcXlqTTJnT2pFeXNXcW51WXZmaGZjcGFCSFlMTG9rajQ4NkoxQk92VTV4?=
 =?utf-8?B?QTEreHYrczZkQW96eklLNk1saXBnTzZQSTk0aDJiNUlEU1V4NzBWZWduaVN3?=
 =?utf-8?B?OS9TYUwxUTZ0NThDWHNTVFY2K2d0NkdQbjB3dUFibUswWm5peEZXZUF6K2s3?=
 =?utf-8?B?K3o1anZQTDhraUdpS0xqSmhHT0NtZEJrMUdNcHlycVlNMEZUcE9ya3RMZmV6?=
 =?utf-8?B?VHZVTmlHaC8wajluSlM4WitwTXRuN1dOeGQzNUY2eGxoaEJ4RmZmdHVPR0Fw?=
 =?utf-8?B?V2NXcHZPUXBJcmg0NEZKMUgwRjZyTXlCUUkrcENVaDgyUlNMSURmb2UwZi82?=
 =?utf-8?B?VnNKSGRISUJTdTZOK0p6cUpPZWlKSGdBaHdLcWJwVS90aGtwN1VxU3l3Tlo1?=
 =?utf-8?B?NDVhZmFZTWR5eUNkRnJpSE5uUDFLVG1TMlpmaUlCQTR5OGMxb0VFT3c1U25m?=
 =?utf-8?B?aTY2UGFOckcyZ1IxWm9uWXhNU2kzVmxUcEFReXUrQVFCbnFxMlcwcyt2U1U4?=
 =?utf-8?B?bWNIaE1jRjhrVVVqbWcyUmVxdVc3b3NLWStJVURweWlyN1pLQlZWcjR2MEpN?=
 =?utf-8?B?WkJKWlZ4QTcvNFJJZ0EvY1lsSXA3dGVkdDRIN21MM0h1enBzOU5BNzNyUmxI?=
 =?utf-8?B?MUVGMG5RWENLdUNFRlJLZi8yV0wrTzJHdTRHZlBjMGFjVmNEYjdPaUwwamRi?=
 =?utf-8?B?VUR2cllCdEU5a2VjNkhaL0RWdGxZVTNLenVkL1hCQkVVZlc0ZWdlWTl2eVl2?=
 =?utf-8?B?Z2Z0VUoxMm1jZmJhWmRXU3hXNVBNckdZN3lUbUhjRlV4ZzlJTGp3a1pQcmdr?=
 =?utf-8?B?UThHWGpSN0lwMGMwakZTamE4dDVnQmhFQ2tCeGhlTVhxL1ZLM3ZUd2UzcVdM?=
 =?utf-8?B?aWxrTjVaeFBLcHl6T3U4bGNUdjkzdUJadEhwdm1DWm9Ud1NxbnpTQklwbEFl?=
 =?utf-8?B?aUM0dTdaNURrcVUwb0thUDRnWklCVXRURENGbmkxdFVHRlkrR2txVW5UdGdT?=
 =?utf-8?B?WG9VYXlDZHY1S0NGYW5SVUZmRXBUR2c1cXdpNmkxdzhmWWgyR0IvSXEwOWV6?=
 =?utf-8?B?akd3c1VLbWYxTDRXR1NiWTFGeXZhQXZsZDc2cklGVWZ5bk1xOUdIR0VLUGpM?=
 =?utf-8?B?Q0ZBaitHNmpOSnBhZWZYL3NvZVhRc0hlVjJ6dkdyUHFsKy9ycXVaamc5aEZ5?=
 =?utf-8?B?NkV0Rnd5M2Q4MklyYkJDazYvS24zaytWbERTUHBFRnMyMFloZUlWV2JyQndR?=
 =?utf-8?B?aG5INmZ4SldBY1B0czBwZ3NIbHp0RzN4TENpaTBOQjFPYUtualQvNWpsZmR5?=
 =?utf-8?B?M0NwK01LQit6dUdNZHY2K0pqUVJmTnhhSGhNNk1LYWw3aVNCR1dCQlJRUHY5?=
 =?utf-8?B?eWFxNnFNd3k0SlJHeEE0SjV0Vm5Pb2lxNjJvZVRHbGt0MDNZLytsTWR4SURO?=
 =?utf-8?B?S1FtUnN5M0VoejluUk5kM09halI4azVOdGxEREJwNVljcFg2bFBMYVY4dDJG?=
 =?utf-8?B?eXIza2hxVjkyOGVHRTJSQXNkc3BCNkRqZUQzSjYzNFBuMDhGQW9yY1JRSEdI?=
 =?utf-8?B?NTJ3cmFOTUtENlltbi9Fd0RTeUNQRzZnT2h5WVdPdXBNYS9ZUnNVYkp0Skhy?=
 =?utf-8?B?QkNVaFJuY2lidmZ3K1h6aEdzajlsR0ZKWHBoRDRzTWZNSHlPUWZlbStMbDc5?=
 =?utf-8?B?K2wrSTh5RTVCZ29JdDhDWkthWHNMaytPaytVbTQ1emZWb1BSRHFKRGEwd3Ri?=
 =?utf-8?B?NXRVdVdHT0pLSHNOakd2WUhSa2lZNjJkNTlZa3hEa29pazl4VEJTY3VSQzJD?=
 =?utf-8?B?U29CZStQRlZsS3ZDc3k0NjNHRlNMS2cwVFhWKysrZEczeTd2RCtiTDUrSWN3?=
 =?utf-8?B?dnNZZW1FQzM2QUQ1L1R3K2ZGVjVia1V3b0NmM2s3SjJaYnh3bUlWRFBZYVpH?=
 =?utf-8?B?d01KN0dEZGF1RnFuaHFjWk9ERFVaRUhqbUZ5ZHZJVGdIVmM3ODEwUERUbDBz?=
 =?utf-8?B?STJjZHhVUkhjanRJaG1aT1M0S2wyUEFzRzk0bzNGMCtyeTd3YW83Vk1wT3RB?=
 =?utf-8?B?R0w0NGZ1cmlGWkVSOGdBTEZVR3dYbFNxRW9DVU5hTUxFbjRtczdzcXN2SFIv?=
 =?utf-8?Q?SL3MnYsZrQBJF54bvy?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cec12f47-c02e-4d05-a6d0-08dedc26ea56
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:54:43.6082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jyvjU/OL0u5GiuFfsiT2V1wYA4ym/n4J4+gEWGSXRu3FMZu56oMiki1ooXROg7nT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6443
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:from_mime,amd.com:dkim,amd.com:mid,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA7B871B917

On 7/7/26 14:41, Thomas Hellström wrote:
> On Tue, 2026-07-07 at 14:28 +0200, Christian König wrote:
>> On 7/7/26 14:09, Thomas Hellström wrote:
>>> On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
>>>> TTM is about to switch to drm_exec for locking objects
>>>> in the LRU list. When we're done processing the object, we want
>>>> to
>>>> unlock it only if the caller doesn't already hold that lock. If
>>>> DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which
>>>> callers
>>>> may
>>>> require for unrelated reasons), we have no way of knowing whether
>>>> the
>>>> lock is already held.
>>>>
>>>> To remedy this, add a separate helper that forcefully bypasses
>>>> the
>>>> IGNORE_DUPLICATES flag for only a single locking operation.
>>>>
>>>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
>>>
>>> The first, more complete attempt to try to tackle the exhaustive
>>> eviction introduced a drm_exec snapshot ability instead.
>>>
>>> https://lists.freedesktop.org/archives/intel-xe/2024-May/035820.html
>>>
>>> The idea was that one would want to incrementally lock more buffer
>>> objects until the validation succeeded, rather than dropping each
>>> single lock after processing the eviction. That's actually what
>>> guarantees forward progress. Restoring the snapshot unlocked all
>>> locks
>>> that we grabbed in the process, and would work also for single
>>> locks.
>>
>> That's actually not what this patch here tries to solve.
>>
>> The problem is rather since we don't remove the BOs from the LRU list
>> that we try to evict some which are actually part of our working set.
>>
>> So when we lock for eviction we can't ignore duplicates no matter
>> what the global flag says.
> 
> Ah yes, I see that now when I've gotten to patch 9. But then I think
> the commit message is a bit misleading. It talks about unlocking an
> already processed object?

Oh, good point! Yeah the problem isn't the unlocking but that we evict an object from the working set.

The commit message clearly needs to be fixed.

Christian.

> 
> Thanks,
> Thomas
> 
> 
>>
>> Regards,
>> Christian.
>>
>>>
>>> Thanks,
>>> Thomas
>>>
>>>
>>>> ---
>>>>  drivers/gpu/drm/drm_exec.c | 52
>>>> ++++++++++++++++++++++++++++++++++--
>>>> ----------
>>>>  include/drm/drm_exec.h     |  2 ++
>>>>  2 files changed, 41 insertions(+), 13 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_exec.c
>>>> b/drivers/gpu/drm/drm_exec.c
>>>> index 7988f5e7d56a3..91de6b4d29df8 100644
>>>> --- a/drivers/gpu/drm/drm_exec.c
>>>> +++ b/drivers/gpu/drm/drm_exec.c
>>>> @@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct
>>>> drm_exec *exec)
>>>>  	return ret;
>>>>  }
>>>>  
>>>> -/**
>>>> - * drm_exec_lock_obj - lock a GEM object for use
>>>> - * @exec: the drm_exec object with the state
>>>> - * @obj: the GEM object to lock
>>>> - *
>>>> - * Lock a GEM object for use and grab a reference to it.
>>>> - *
>>>> - * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>> object is
>>>> - * already locked (can be suppressed by setting the
>>>> DRM_EXEC_IGNORE_DUPLICATES
>>>> - * flag), -ENOMEM when memory allocation failed and zero for
>>>> success.
>>>> - */
>>>> -int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object
>>>> *obj)
>>>> +static int __drm_exec_lock_obj(struct drm_exec *exec,
>>>> +			       struct drm_gem_object *obj,
>>>> +			       bool always_report_duplicates)
>>>>  {
>>>>  	int ret;
>>>>  
>>>> @@ -226,7 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>>>> struct drm_gem_object *obj)
>>>>  		return -EDEADLK;
>>>>  	}
>>>>  
>>>> -	if (unlikely(ret == -EALREADY) &&
>>>> +	if (unlikely(ret == -EALREADY) &&
>>>> !always_report_duplicates
>>>> &&
>>>>  	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
>>>>  		return 0;
>>>>  
>>>> @@ -243,8 +234,43 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>>>> struct drm_gem_object *obj)
>>>>  	dma_resv_unlock(obj->resv);
>>>>  	return ret;
>>>>  }
>>>> +
>>>> +/**
>>>> + * drm_exec_lock_obj - lock a GEM object for use
>>>> + * @exec: the drm_exec object with the state
>>>> + * @obj: the GEM object to lock
>>>> + *
>>>> + * Lock a GEM object for use and grab a reference to it.
>>>> + *
>>>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>> object is
>>>> + * already locked (can be suppressed by setting the
>>>> DRM_EXEC_IGNORE_DUPLICATES
>>>> + * flag), -ENOMEM when memory allocation failed and zero for
>>>> success.
>>>> + */
>>>> +int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object
>>>> *obj)
>>>> +{
>>>> +	return __drm_exec_lock_obj(exec, obj, false);
>>>> +}
>>>>  EXPORT_SYMBOL(drm_exec_lock_obj);
>>>>  
>>>> +/**
>>>> + * drm_exec_lock_obj_report_dup - lock a GEM object for use, but
>>>> always report duplicates
>>>> + * @exec: the drm_exec object with the state
>>>> + * @obj: the GEM object to lock
>>>> + *
>>>> + * Like drm_exec_lock_obj, lock a GEM object for use and grab a
>>>> reference to it.
>>>> + * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is
>>>> ignored
>>>> and duplicates are
>>>> + * always reported.
>>>> + *
>>>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>> object is
>>>> + * already locked, -ENOMEM when memory allocation failed and
>>>> zero
>>>> for success.
>>>> + */
>>>> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
>>>> +				 struct drm_gem_object *obj)
>>>> +{
>>>> +	return __drm_exec_lock_obj(exec, obj, false);
>>>> +}
>>>> +EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
>>>> +
>>>>  /**
>>>>   * drm_exec_unlock_obj - unlock a GEM object in this exec
>>>> context
>>>>   * @exec: the drm_exec object with the state
>>>> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
>>>> index 8725ba92ff916..ff80dd2b72240 100644
>>>> --- a/include/drm/drm_exec.h
>>>> +++ b/include/drm/drm_exec.h
>>>> @@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32
>>>> flags, unsigned nr);
>>>>  void drm_exec_fini(struct drm_exec *exec);
>>>>  bool drm_exec_cleanup(struct drm_exec *exec);
>>>>  int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object
>>>> *obj);
>>>> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
>>>> +				 struct drm_gem_object *obj);
>>>>  void drm_exec_unlock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object *obj);
>>>>  int drm_exec_prepare_obj(struct drm_exec *exec, struct
>>>> drm_gem_object *obj,
>>>>  			 unsigned int num_fences);

