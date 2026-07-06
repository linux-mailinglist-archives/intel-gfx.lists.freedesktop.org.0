Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s1weJZfyS2ojdgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 20:23:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5B271474B
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 20:23:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ZspkRuHr;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B49E10EA4E;
	Mon,  6 Jul 2026 18:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010022.outbound.protection.outlook.com
 [40.93.198.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A6FB10EA4D;
 Mon,  6 Jul 2026 18:23:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BvJ994JjrmpZqDZZu2zD1Zr0jwKrS/zcRnwyobfyQVVSaRK7QVDg5jmQl74rOmyhR1QMQey4dKxxjN8UQ9R5s4mHT0Z/aMujRdLP6AmDMwpdh1U0kw4sfKsBqX2vUBE3BM43wrAbEq6i5a5rFi2CQyqLZ/87wkwoljY7MAlrlaHsMPZFqhrjUDfe+PWDlbsZM8Xi1Li0W5qq4vqootwejUUvv6TqCWHg0pmKYMjmNsj7tFNP1PGR2QRrZwcKyC3wSIUa0ht7vxbenCSozpqSFg4BUyS1oCBNJtj2Hn2DYiC8wrqrE9yVdvGwOkn8jeIvQ+qA3tZNTcJqCVcc0j0Vbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=whEYxVF5aY0Kvc6LOEF/84rQS70L1EcFIRccv37nRpk=;
 b=gOI1bvQh9P921cmDhgLaIslbOrgyCs3EVprp4NbsdlmuMFNtqIiWsgBpoiANVx6p6qHb/oaJywOz/6pdMRUdWwDUNPP9oXU2tnWuAkdxD11frtjzC4IRXpZ1foCLbHXPvZyK3zqz436w5hLig+GPEVYN2rJ0jZSCzbmRxXw9ZKqFEEphVaXuZIhtTWXZiS42iSPzpMuyV4xnAIf56RN+nOktOlPKSqIZadAcjclCpS71lwml7BTB03A2wQkqx8ImBCSN7WlE1ZL9iTPDJVeFOrWFKxEdF5Chdb4DvyA5STfNueqs8hmCIg4xS3gyligOyJlZSw8gNll0DEIp42CDdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whEYxVF5aY0Kvc6LOEF/84rQS70L1EcFIRccv37nRpk=;
 b=ZspkRuHrscD8EKyYtAdriy6GARiv40XK+g6d8kjgVjhhhHgTDr+C8rolIUN1bSHLR1ULxmW70x4YMpObVEAVYCqjosQA6xOGDVn6VhzlQfUr3pFdpfvoWTgWWwQZOkEVwAdy8TFMKdXWW0Fa3uCDhARa4mfQjsrDparmBzRr9t4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5887.namprd12.prod.outlook.com (2603:10b6:8:7a::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.8; Mon, 6 Jul 2026 18:23:11 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 18:23:11 +0000
Message-ID: <5d56ec48-b0f0-4f03-8ec2-f8cc34cb3186@amd.com>
Date: Mon, 6 Jul 2026 20:23:04 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
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
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0021.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5887:EE_
X-MS-Office365-Filtering-Correlation-Id: c3e96a4d-f9d5-4cba-ac9c-08dedb8ba2c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|23010399003|11063799006|4143699003|3023799007|6133799003|56012099006|921020|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: VyKp8NxFXY6Keilc3p5/9fZR6eVZvBQfI0jRX0Yn7s8F76Jz3PEidl7cVtn7D/kxo52wDPTadax0FiJ+SMP/rjnYHmfiAM94MsuESeDn+2cbEVB7fRxAk7pvwRaaXPP+1Dy909tnJv8/IM7DgkCxXnlbDIzP2/DMIQGsCDT1hp7uUIFzZsIHgY4yq2sp3tSnUMqwOxQy/55LfTZ6dq/SMtgnipEgf6lfNTdKspeoPfjSLplPjHA5Og25bS1QwhboHJ1gSy+D+gX/FNGoD4/96zAN3MIfh6fFF4RbkeMUbLps8E/zsgbL4zDxPhIE3z9i3EUfPkLtUEkHcWFj29O231Pt+x/PBlK/MaiLJeodCXNRJ0BHGynpfgTW7dhE0ImUFdpeYpSTt9htQIFHMdKvhm1uDmbL1qoWM5iseDGH282t5A+O/v9X6dD/znJqD282M76+11mTA3zVVWZgLq6rlxeg2JvAkcVJrJ0pDMxh//fMUgfHKmS7OpPv453xKflciwHSAob/VMd7Bj4xQ6CxdGYhM4avqxxMACJhNihbk7zkdnS7VnZ1gbjb2pk5alPFf8AEmyAAnt76CdoriYrGWcru0wSas2jUHy9wcv9Bpxn0ieUbxQMp9dGtErFxExFLXeXSEI7bgbeuqBEtQv4n4GHerpJcnRKi/pZTA0+wRJinAU4tdMV91jWdqW+VPbgXw+GwfaLIR8ATNZKBCDz3PA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(11063799006)(4143699003)(3023799007)(6133799003)(56012099006)(921020)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enZCOUs3VEtVYy9sSDl5aDQyRG9KWXdUVk5aZWI1djhhc0lDd1hQcm4vU002?=
 =?utf-8?B?ZTdhV2lad01ZQUFOY2NWYlJSVmJ4VjhhMEZPL3F1RmkxMTB3a0RNN2VQZ1Jk?=
 =?utf-8?B?VFg0THFNYk93ZkRMT3NkdG5uTmc0ZXB1bFVOTkxaUGhVSzNwc0JpbW0yZVFK?=
 =?utf-8?B?ajFPTjJ0eVExbTBsQnVOVXpGVHZBeExsYlFxL2I2cFJsaXVnOHdvdXNDeDlJ?=
 =?utf-8?B?RUdPUURvMEE3YkJxMmVKWmFqMUxjSWQ4cWEyVTRickE2WDZ2ZEQxSGNHRXRv?=
 =?utf-8?B?dkVYVlFRUG9jbmFSQ1FZK0pJbTc1dHozUzJvenpYQlhoQy95bVdnaE9FcDJa?=
 =?utf-8?B?NFpKWXFLRjBlY2NLaWhOS09CcE80SDhtbHNYaUtDWTk1blZrSFpYdzZpUkJj?=
 =?utf-8?B?cnJ6RXJIY2RKRUFSMmNRRmQwUnhGeE0yR0lvVjg4SkFyNE9yZ1VhenpyNFVP?=
 =?utf-8?B?SjV3dVVVa01CVnZQYmNhUmUrZ3YxbGhlejRRQWZhVlVINXNicUtWcG9ZUVQr?=
 =?utf-8?B?UmNyRVE4Vk16eXBkcU1nUlJzVm1xWTI3WFNUVWIrUUNQQWVhNFFDWUs3eEdl?=
 =?utf-8?B?MW94ZURTTG5BRS84UXlUQUIrdHNsZkIvb09Ed1E4Nm5MakVSVjBCZEw5Z0RI?=
 =?utf-8?B?NFZCL3hQbkZ2RjJhN1cwaXR0S3g4WHdqTElSdnBJNlhlZDFJU1RtLzJOV3FE?=
 =?utf-8?B?L3RFcjBHdnhtRDdYaTYvNUNqQmdhZFpuUmtMZWFLZmo5Q1ppanZIMVphV291?=
 =?utf-8?B?RkFJSE1DN0F2OVBqcHVGZ2NrVUMxNXROcTZ1Y3lCdVFvTXpxZzFUSzNxWnlk?=
 =?utf-8?B?VmZ1dmpuS1N3SXVKMTlMS3Myek9WOE9wdkU2eU93U1BpMFlUR0svRVVya1R0?=
 =?utf-8?B?cFJXRzJ3VTlFY3hxYnB0YmFOKzNZTUh0MWJBWXpoYU9qbEhTdyt2U292bWhI?=
 =?utf-8?B?V1dQT25HUlVSQXVUbVE5dUJ1enJaU0VXQXJuQVpTZzRIU3lqWENJK2kzdlFz?=
 =?utf-8?B?SDNEWW5XeFFaNVZhcDFKVTkrQWlZUGR4NzEwR01LT2EvS0FCUjJOQkw1cktE?=
 =?utf-8?B?ek1TaTFtRG5VYi9WdDlvV1F0WUJlWElpUVRabGV4d2VkL3RMRjFlVjQ4eGhv?=
 =?utf-8?B?SkNHbzlQVGNFeTNtSEhXV3J4QkkzdXdzMkVoODg1dk5kd3hkeUl1cXNteFVs?=
 =?utf-8?B?THQ3cERZSFR6Q25JWlJJTzEydmMwWWlMc25sZ3BNbWNMeVBQNkZrZ3hacS9Q?=
 =?utf-8?B?RDM0M0QrajVYbDRHRHZ4OTZnWHB0Y0J3a2ZqSmZhN0ZoVk10VjhGd1JtZ0RZ?=
 =?utf-8?B?bkoxTmNraGdoUUkyOXlPeG1iQ2s4d1pqTU1LcmxtckZQcEt0SmFoN0lyNGZq?=
 =?utf-8?B?K3Nsc25JT2VKa1ZTSllNNm0yMERrYzBXOEhUOUgwV3JQT1F5MjRLd1cvclNL?=
 =?utf-8?B?M3ZxYkJVMENlclJiMnEzK1h4aURqWDVhVGZMM3hjZDBrWWFHQWppZGJIb2JK?=
 =?utf-8?B?bnRQdHRtYm8rQTV4bmhiQ2hheWQxTENPbmVBR0dzV3k3QnBHZENwY1I3TTNB?=
 =?utf-8?B?WFdjdGJTNWxVbVFiTGdrNGM0TTByV3lkalM4R2hqVlBHVEdTY2xTOHU1UmpN?=
 =?utf-8?B?dUVYeXdJNzhSS2tlVjRBUDY1MCtMUjUyOVhSL1lpdWt0Vlg3dndhNk1ob0Na?=
 =?utf-8?B?Q1pVblVyRDZuYWxLUXNDNzBMUnZxcnJBR1Y4WmNIN0lIc05IdEFqYjc1S3Rm?=
 =?utf-8?B?bzdUUDBSVU9VYTh4Z29VaVNtdjE5bDdkSzhVVUxydG5ZYlJua2J0VU5YUEZP?=
 =?utf-8?B?dU5PMmdhakptS2U0U3lKUHEzUGdxY3NDWVRiL245dCs0aE5KUlhjWERKOGo4?=
 =?utf-8?B?TCtzSTI1ZFdUKzZLSGMzZEJqTitwTyt0WkY3Zmpkai9ZME9hdmRFckY5bTlB?=
 =?utf-8?B?MzBWeEFtd2tKSktUQ2RqclNsT3B2RGYxRVNDMERPSjVQakhJZk0xdFhmRWtZ?=
 =?utf-8?B?UkxFbU0wWjN5VFFHWU96T1BZVjF0eUwzWlc0clNzVytzVGxBNHltTGw2Vi92?=
 =?utf-8?B?bjRzS1JLM1lDSXR4UWh1dlVqbmI2OUg2amQ5YW11YUVJdlYxeWZ3YkhpM2pV?=
 =?utf-8?B?RnRKdm1pZ052L1BzRFduSzlJSTJTTGVsZnIxSmVMK2E2dERuZmRpR1ZsT3Nx?=
 =?utf-8?B?d3lKQU1xS1VkWlZhQkFqZnFoeWVETWpWZ0dRVERNRkxFM0p4UWdZTXFIOFh0?=
 =?utf-8?B?NVNXNTd2VGw3ellvVFhOclk0M1YzM3ZLWEQxZmM2UWVZYktqbXZxcUdNa2VV?=
 =?utf-8?Q?DLkboGUDvFBZH2CXdg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e96a4d-f9d5-4cba-ac9c-08dedb8ba2c0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 18:23:11.3466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jq/nCr0zxfv4JYgUzlDKTiElOoTt/JffqRFxcrXa+TQ8iOZYXv8ShL5+eTw71VVu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5887
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:email,amd.com:from_mime,amd.com:email,amd.com:mid,amd.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E5B271474B

On 7/6/26 19:01, Thomas Hellström wrote:
> On Mon, 2026-07-06 at 16:49 +0200, Christian König wrote:
>> On 7/6/26 15:14, Thomas Hellström wrote:
>>> On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
>>>> From: Christian König <christian.koenig@amd.com>
>>>>
>>>> Instead of keeping a separate reference count for the TTM object
>>>> also
>>>> use
>>>> the reference count for DRM GEM objects inside TTM.
>>>>
>>>> Apart from avoiding two reference counts for one object this
>>>> approach
>>>> has
>>>> the clear advantage of being able to use drm_exec inside TTM.
>>>>
>>>> v2: adjust XE assert as well and re-enable disabled test
>>>> v3: handle another case in i915
>>>> v4: set GEM driver funcs of transfer BOs to point to the TTM free
>>>> callback (Natalie)
>>>
>>> I think the main review issue from the last time this was on the
>>> table
>>> was that we shouldn't resurrect the gem refcount. Apart from the
>>> risc
>>> of getting barriers wrong, both xe and IIRC i915 partly rely on the
>>> gem
>>> refcount never being resurrected and that callbacks for bos with
>>> zero
>>> gem refcount means that the gem part of the object is unusable.
>>
>> I've spend quite some time thinking about that and came to the
>> conclusion that this is actually harmless.
>>
>> The drivers shouldn't be able to see the resurected BO, except if
>> they go over the LRU list manually (which they shouldn't).
> 
> The shrinker uses the TTM helpers for this. Basically the check needs
> to be ported to use the zombie interface but the present change also
> widens the window where we can't evict / shrink at all due to zero
> refcounts.
> 
> While it might be made harmless, resurrecting a refcount like this is
> IMO not something that should leak into the gem refcount. Nobody else
> does this in the kernel tree. The bo in reality becomes a zombie once
> the gem refcount reaches zero.

I don't really like the solution either, but I don't see much other option.

>>> For example xe_bo.c:
>>>
>>> 	if (!xe_bo_is_xe_bo(bo) || !xe_bo_get_unless_zero(xe_bo))
>>> 		return xe_bo_shrink_purge(ctx, bo, scanned);
>>>
>>> So IIRC the conclusion was when removing the ttm refcount we
>>> shouldn't
>>> attempt to resurrect the gem one. If the get_unless_zero() fails
>>> during
>>> evict walk, we simply find something to wait for. See previous
>>> discussion there.
>>
>> Yeah, I considered that as well but the problem is we often doesn't
>> have anything to wait on.
> 
> That's not the conclusion of the previous discussion?
> 
> https://lore.kernel.org/dri-devel/20250716160555.20217-2-christian.koenig@amd.com/#r

Well, I clearly rejected the idea to wait for the delayed delete worker because that can cause deadlocks no matter how we do it.

The only possibility I see is to grab a reference on the next busy fence and wait for that to signal.

But that approach still leaves a window open where the cleanup worker has not yet cleaned up the resource before we try to allocate a new one.

The only two possibilities I see to close that window are:
1. Resurrect the GEM object.
2. Keep a reference to the GEM object while it is on the LRU.

I would really like to do #2 instead, but that requires that we distinct between GEM object referenze and backing store reference.

The GEM object does have some kind of backing store reference with the handle_count field, but that unfortunately doesn't have the right semantic (e.g. only goes from 0->1 when you actually create a handle etc..).

>>> I fully support removing the ttm refcount, but not if it means
>>> resurrecting the gem refcount.
>>>
>>> If we want to sidestep that problem, in favour of getting the
>>> proposed
>>> locking functionality in and future proof it, I suggest using
>>>
>>> https://lore.kernel.org/all/20260605112700.181040-1-thomas.hellstrom@linux.intel.com/
>>>
>>> And rebase this series on that. This means we can use the ttm
>>> refcount
>>> for the transaction refcounting, and also that if we add a dma-buf
>>> map
>>> interface with a dma_resv_txn_obj, we could use that to also have
>>> exhaustive eviction that originates from a dma_buf map.
>>
>> I don't think that this is a good idea. It just adds another layer of
>> abstraction and doesn't solve the problem in any way possible.
> 
> This comment confuses me. Exactly what problem isn't solved by this,
> and which of the stated benefits/use-cases in the cover-letter do you
> think aren't worthwhile?

Of course could the drm_exec object work with different reference counters, but as far as I can see that just complicates the situation and again creates a TTM specific solutions which I clearly want to avoid.

I would rather go with the resurrection approach instead, that has less potential for problem I think.

Alaternatively we could re-work the whole GEM refcount/GEM handle count/TTM refcount mess, but that has even more potential to break.

Regards,
Christian.


> 
> Also for reference: (Section at the end and follow-up messages)
> https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600f.camel@linux.intel.com/
> 
> Thanks,
> Thomas
> 
> 
>> Regards,
>> Christian.
>>
>>>
>>> /Thomas
>>>
>>>>
>>>> Signed-off-by: tChristian König <christian.koenig@amd.com>
>>>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
>>>> ---
>>>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 +++---
>>>>  drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
>>>>  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
>>>>  drivers/gpu/drm/ttm/ttm_bo.c                     | 135
>>>> +++++++++++--
>>>> ----------
>>>>  drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 ++-
>>>>  drivers/gpu/drm/ttm/ttm_bo_util.c                |  15 ++-
>>>>  drivers/gpu/drm/xe/xe_bo.c                       |   2 +-
>>>>  include/drm/ttm/ttm_bo.h                         |   9 --
>>>>  8 files changed, 111 insertions(+), 112 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> index df3fcc2b1248e..642296602de69 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
>>>> drm_i915_gem_object *obj)
>>>>  	 * Don't manipulate the TTM LRUs while in TTM bo
>>>> destruction.
>>>>  	 * We're called through i915_ttm_delete_mem_notify().
>>>>  	 */
>>>> -	if (!kref_read(&bo->kref))
>>>> +	if (!kref_read(&bo->base.refcount))
>>>>  		return;
>>>>  
>>>>  	/*
>>>> @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
>>>> drm_i915_gem_object *obj)
>>>>  	 *
>>>>  	 * TODO: consider maybe also bumping the shrinker list
>>>> here
>>>> when we have
>>>>  	 * already unpinned it, which should give us something
>>>> more
>>>> like an LRU.
>>>> -	 *
>>>> -	 * TODO: There is a small window of opportunity for this
>>>> function to
>>>> -	 * get called from eviction after we've dropped the last
>>>> GEM
>>>> refcount,
>>>> -	 * but before the TTM deleted flag is set on the object.
>>>> Avoid
>>>> -	 * adjusting the shrinker list in such cases, since the
>>>> object is
>>>> -	 * not available to the shrinker anyway due to its zero
>>>> refcount.
>>>> -	 * To fix this properly we should move to a TTM shrinker
>>>> LRU
>>>> list for
>>>> -	 * these objects.
>>>>  	 */
>>>> -	if (kref_get_unless_zero(&obj->base.refcount)) {
>>>> -		if (shrinkable != obj->mm.ttm_shrinkable) {
>>>> -			if (shrinkable) {
>>>> -				if (obj->mm.madv ==
>>>> I915_MADV_WILLNEED)
>>>> -
>>>> 					__i915_gem_object_make_s
>>>> hrinkable(obj);
>>>> -				else
>>>> -
>>>> 					__i915_gem_object_make_p
>>>> urgeable(obj);
>>>> -			} else {
>>>> -
>>>> 				i915_gem_object_make_unshrinkabl
>>>> e(obj);
>>>> -			}
>>>> -
>>>> -			obj->mm.ttm_shrinkable = shrinkable;
>>>> +	i915_gem_object_get(obj);
>>>> +	if (shrinkable != obj->mm.ttm_shrinkable) {
>>>> +		if (shrinkable) {
>>>> +			if (obj->mm.madv == I915_MADV_WILLNEED)
>>>> +				__i915_gem_object_make_shrinkabl
>>>> e(ob
>>>> j);
>>>> +			else
>>>> +				__i915_gem_object_make_purgeable
>>>> (obj
>>>> );
>>>> +		} else {
>>>> +			i915_gem_object_make_unshrinkable(obj);
>>>>  		}
>>>> -		i915_gem_object_put(obj);
>>>> +
>>>> +		obj->mm.ttm_shrinkable = shrinkable;
>>>>  	}
>>>> +	i915_gem_object_put(obj);
>>>>  
>>>>  	/*
>>>>  	 * Put on the correct LRU list depending on the MADV
>>>> status
>>>> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>> b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>> index 56ad8ef325840..904cb4da6c9b3 100644
>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>> @@ -127,7 +127,7 @@ static void
>>>> ttm_bo_init_reserved_sys_man(struct
>>>> kunit *test)
>>>>  	dma_resv_unlock(bo->base.resv);
>>>>  
>>>>  	KUNIT_EXPECT_EQ(test, err, 0);
>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount), 1);
>>>>  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
>>>>  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>  	KUNIT_EXPECT_EQ(test, bo->page_alignment, PAGE_SIZE);
>>>> @@ -176,7 +176,7 @@ static void
>>>> ttm_bo_init_reserved_mock_man(struct
>>>> kunit *test)
>>>>  	dma_resv_unlock(bo->base.resv);
>>>>  
>>>>  	KUNIT_EXPECT_EQ(test, err, 0);
>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount), 1);
>>>>  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
>>>>  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>  	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
>>>> @@ -969,6 +969,8 @@ static void
>>>> ttm_bo_validate_allowed_only_evict(struct kunit *test)
>>>>  	ttm_mock_manager_fini(priv->ttm_dev, mem_multihop);
>>>>  }
>>>>  
>>>> +extern const struct drm_gem_object_funcs
>>>> ttm_deleted_object_funcs;
>>>> +
>>>>  static void ttm_bo_validate_deleted_evict(struct kunit *test)
>>>>  {
>>>>  	struct ttm_operation_ctx ctx_init = { }, ctx_val  = { };
>>>> @@ -999,7 +1001,7 @@ static void
>>>> ttm_bo_validate_deleted_evict(struct
>>>> kunit *test)
>>>>  	KUNIT_EXPECT_EQ(test, ttm_resource_manager_usage(man),
>>>> big);
>>>>  
>>>>  	dma_resv_unlock(bo_big->base.resv);
>>>> -	bo_big->deleted = true;
>>>> +	bo_big->base.funcs = &ttm_deleted_object_funcs;
>>>>  
>>>>  	bo_small = ttm_bo_kunit_init(test, test->priv, small,
>>>> NULL);
>>>>  	bo_small->type = bo_type;
>>>> diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>> b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>> index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>> @@ -189,8 +189,6 @@ struct ttm_buffer_object
>>>> *ttm_bo_kunit_init(struct kunit *test,
>>>>  	bo->bdev = devs->ttm_dev;
>>>>  	bo->destroy = dummy_ttm_bo_destroy;
>>>>  
>>>> -	kref_init(&bo->kref);
>>>> -
>>>>  	return bo;
>>>>  }
>>>>  EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
>>>> b/drivers/gpu/drm/ttm/ttm_bo.c
>>>> index 3980f376e3ba4..2b470c1746f60 100644
>>>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>>>> @@ -246,88 +246,84 @@ static void ttm_bo_delayed_delete(struct
>>>> work_struct *work)
>>>>  	ttm_bo_put(bo);
>>>>  }
>>>>  
>>>> -static void ttm_bo_release(struct kref *kref)
>>>> +/*
>>>> + * All other callbacks should never ever be called on a deleted
>>>> TTM
>>>> object.
>>>> + */
>>>> +const struct drm_gem_object_funcs ttm_deleted_object_funcs = {
>>>> +	.free = ttm_bo_free
>>>> +};
>>>> +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
>>>> +
>>>> +/* Returns true if the BO is about to get deleted */
>>>> +static bool ttm_bo_is_zombie(struct ttm_buffer_object *bo)
>>>> +{
>>>> +	return bo->base.funcs == &ttm_deleted_object_funcs;
>>>> +}
>>>> +
>>>> +void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>  {
>>>> -	struct ttm_buffer_object *bo =
>>>> -	    container_of(kref, struct ttm_buffer_object, kref);
>>>>  	struct ttm_device *bdev = bo->bdev;
>>>>  	int ret;
>>>>  
>>>>  	WARN_ON_ONCE(bo->pin_count);
>>>>  	WARN_ON_ONCE(bo->bulk_move);
>>>>  
>>>> -	if (!bo->deleted) {
>>>> -		ret = ttm_bo_individualize_resv(bo);
>>>> -		if (ret) {
>>>> -			/* Last resort, if we fail to allocate
>>>> memory for the
>>>> -			 * fences block for the BO to become
>>>> idle
>>>> -			 */
>>>> -			dma_resv_wait_timeout(bo->base.resv,
>>>> -					     
>>>> DMA_RESV_USAGE_BOOKKEEP, false,
>>>> -					      30 * HZ);
>>>> -		}
>>>> +	ret = ttm_bo_individualize_resv(bo);
>>>> +	if (ret) {
>>>> +		/* Last resort, if we fail to allocate memory
>>>> for
>>>> the
>>>> +		 * fences block for the BO to become idle
>>>> +		 */
>>>> +		dma_resv_wait_timeout(bo->base.resv,
>>>> DMA_RESV_USAGE_BOOKKEEP,
>>>> +				      false, 30 * HZ);
>>>> +	}
>>>>  
>>>> -		if (bdev->funcs->release_notify)
>>>> -			bdev->funcs->release_notify(bo);
>>>> +	if (bo->bdev->funcs->release_notify)
>>>> +		bo->bdev->funcs->release_notify(bo);
>>>>  
>>>> -		drm_vma_offset_remove(bdev->vma_manager, &bo-
>>>>> base.vma_node);
>>>> -		ttm_mem_io_free(bdev, bo->resource);
>>>> +	drm_vma_offset_remove(bdev->vma_manager, &bo-
>>>>> base.vma_node);
>>>> +	ttm_mem_io_free(bdev, bo->resource);
>>>>  
>>>> -		if (!dma_resv_test_signaled(&bo->base._resv,
>>>> -					   
>>>> DMA_RESV_USAGE_BOOKKEEP)
>>>>>>
>>>> -		    (want_init_on_free() && (bo->ttm != NULL))
>>>> ||
>>>> -		    bo->type == ttm_bo_type_sg ||
>>>> -		    !dma_resv_trylock(bo->base.resv)) {
>>>> -			/* The BO is not idle, resurrect it for
>>>> delayed destroy */
>>>> -			ttm_bo_flush_all_fences(bo);
>>>> -			bo->deleted = true;
>>>> +	if (!dma_resv_test_signaled(&bo->base._resv,
>>>> DMA_RESV_USAGE_BOOKKEEP) ||
>>>> +	    (want_init_on_free() && (bo->ttm != NULL)) ||
>>>> +	    bo->type == ttm_bo_type_sg ||
>>>> +	    !dma_resv_trylock(bo->base.resv)) {
>>>> +		/* The BO is not idle, resurrect it for delayed
>>>> destroy */
>>>> +		ttm_bo_flush_all_fences(bo);
>>>>  
>>>> -			spin_lock(&bdev->lru_lock);
>>>> -
>>>> -			/*
>>>> -			 * Make pinned bos immediately available
>>>> to
>>>> -			 * shrinkers, now that they are queued
>>>> for
>>>> -			 * destruction.
>>>> -			 *
>>>> -			 * FIXME: QXL is triggering this. Can be
>>>> removed when the
>>>> -			 * driver is fixed.
>>>> -			 */
>>>> -			if (bo->pin_count) {
>>>> -				bo->pin_count = 0;
>>>> -
>>>> 				ttm_resource_move_to_lru_tail(bo-
>>>>> resource);
>>>> -			}
>>>> +		spin_lock(&bo->bdev->lru_lock);
>>>>  
>>>> -			kref_init(&bo->kref);
>>>> -			spin_unlock(&bdev->lru_lock);
>>>> +		/*
>>>> +		 * Make pinned bos immediately available to
>>>> +		 * shrinkers, now that they are queued for
>>>> +		 * destruction.
>>>> +		 *
>>>> +		 * FIXME: QXL is triggering this. Can be removed
>>>> when the
>>>> +		 * driver is fixed.
>>>> +		 */
>>>> +		if (bo->pin_count) {
>>>> +			bo->pin_count = 0;
>>>> +			ttm_resource_move_to_lru_tail(bo-
>>>>> resource);
>>>> +		}
>>>>  
>>>> -			INIT_WORK(&bo->delayed_delete,
>>>> ttm_bo_delayed_delete);
>>>> +		kref_init(&bo->base.refcount);
>>>> +		bo->base.funcs = &ttm_deleted_object_funcs;
>>>> +		spin_unlock(&bo->bdev->lru_lock);
>>>>  
>>>> -			/* Schedule the worker on the closest
>>>> NUMA
>>>> node. This
>>>> -			 * improves performance since system
>>>> memory
>>>> might be
>>>> -			 * cleared on free and that is best done
>>>> on
>>>> a CPU core
>>>> -			 * close to it.
>>>> -			 */
>>>> -			queue_work_node(bdev->pool.nid, bdev-
>>>>> wq,
>>>> &bo->delayed_delete);
>>>> -			return;
>>>> -		}
>>>> +		INIT_WORK(&bo->delayed_delete,
>>>> ttm_bo_delayed_delete);
>>>>  
>>>> +		/* Schedule the worker on the closest NUMA node.
>>>> This
>>>> +		 * improves performance since system memory
>>>> might be
>>>> +		 * cleared on free and that is best done on a
>>>> CPU
>>>> core
>>>> +		 * close to it.
>>>> +		 */
>>>> +		queue_work_node(bdev->pool.nid, bdev->wq, &bo-
>>>>> delayed_delete);
>>>> +	} else {
>>>>  		ttm_bo_cleanup_memtype_use(bo);
>>>>  		dma_resv_unlock(bo->base.resv);
>>>> -	}
>>>>  
>>>> -	atomic_dec(&ttm_glob.bo_count);
>>>> -	bo->destroy(bo);
>>>> -}
>>>> -
>>>> -/* TODO: remove! */
>>>> -void ttm_bo_put(struct ttm_buffer_object *bo)
>>>> -{
>>>> -	kref_put(&bo->kref, ttm_bo_release);
>>>> -}
>>>> -
>>>> -void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>> -{
>>>> -	ttm_bo_put(bo);
>>>> +		atomic_dec(&ttm_glob.bo_count);
>>>> +		bo->destroy(bo);
>>>> +	}
>>>>  }
>>>>  EXPORT_SYMBOL(ttm_bo_fini);
>>>>  
>>>> @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct ttm_device
>>>> *bdev,
>>>> struct ttm_resource_manager *man
>>>>  	if (!bo->resource || bo->resource->mem_type != mem_type)
>>>>  		goto out_bo_moved;
>>>>  
>>>> -	if (bo->deleted) {
>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>  		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>  		if (!ret)
>>>>  			ttm_bo_cleanup_memtype_use(bo);
>>>> @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
>>>> ttm_lru_walk
>>>> *walk, struct ttm_buffer_object *
>>>>  	if (bo->pin_count || !bo->bdev->funcs-
>>>>> eviction_valuable(bo,
>>>> evict_walk->place))
>>>>  		return 0;
>>>>  
>>>> -	if (bo->deleted) {
>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>  		lret = ttm_bo_wait_ctx(bo, walk->arg.ctx);
>>>>  		if (!lret)
>>>>  			ttm_bo_cleanup_memtype_use(bo);
>>>> @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
>>>> ttm_device
>>>> *bdev,
>>>>  void ttm_bo_pin(struct ttm_buffer_object *bo)
>>>>  {
>>>>  	dma_resv_assert_held(bo->base.resv);
>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>  	spin_lock(&bo->bdev->lru_lock);
>>>>  	if (bo->resource)
>>>>  		ttm_resource_del_bulk_move(bo->resource, bo);
>>>> @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
>>>>  void ttm_bo_unpin(struct ttm_buffer_object *bo)
>>>>  {
>>>>  	dma_resv_assert_held(bo->base.resv);
>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>  	if (WARN_ON_ONCE(!bo->pin_count))
>>>>  		return;
>>>>  
>>>> @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct ttm_device
>>>> *bdev,
>>>> struct ttm_buffer_object *bo,
>>>>  {
>>>>  	int ret;
>>>>  
>>>> -	kref_init(&bo->kref);
>>>>  	bo->bdev = bdev;
>>>>  	bo->type = type;
>>>>  	bo->page_alignment = alignment;
>>>> @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct ttm_lru_walk
>>>> *walk,
>>>> struct ttm_buffer_object *bo)
>>>>  		goto out;
>>>>  	}
>>>>  
>>>> -	if (bo->deleted) {
>>>> -		pgoff_t num_pages = tt->num_pages;
>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>> +		pgoff_t num_pages = bo->ttm->num_pages;
>>>>  
>>>>  		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>  		if (ret)
>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>> b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>> index e0d48eac74b03..ded2a47be0bcb 100644
>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>> @@ -27,6 +27,14 @@
>>>>  
>>>>  #include <drm/ttm/ttm_bo.h>
>>>>  
>>>> +static inline void ttm_bo_free(struct drm_gem_object *gobj)
>>>> +{
>>>> +	struct ttm_buffer_object *bo = container_of(gobj,
>>>> typeof(*bo), base);
>>>> +
>>>> +	atomic_dec(&ttm_glob.bo_count);
>>>> +	bo->destroy(bo);
>>>> +}
>>>> +
>>>>  /**
>>>>   * ttm_bo_get - reference a struct ttm_buffer_object
>>>>   *
>>>> @@ -34,7 +42,7 @@
>>>>   */
>>>>  static inline void ttm_bo_get(struct ttm_buffer_object *bo)
>>>>  {
>>>> -	kref_get(&bo->kref);
>>>> +	drm_gem_object_get(&bo->base);
>>>>  }
>>>>  
>>>>  /**
>>>> @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
>>>> ttm_buffer_object *bo)
>>>>  static inline __must_check struct ttm_buffer_object *
>>>>  ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
>>>>  {
>>>> -	if (!kref_get_unless_zero(&bo->kref))
>>>> +	if (!kref_get_unless_zero(&bo->base.refcount))
>>>>  		return NULL;
>>>>  	return bo;
>>>>  }
>>>>  
>>>> -void ttm_bo_put(struct ttm_buffer_object *bo);
>>>> +static inline void ttm_bo_put(struct ttm_buffer_object *bo)
>>>> +{
>>>> +	drm_gem_object_put(&bo->base);
>>>> +}
>>>>  
>>>>  #endif
>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>> b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>> index 3e3c201a02226..7ed085adf1c9b 100644
>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>> @@ -41,6 +41,18 @@
>>>>  
>>>>  #include "ttm_bo_internal.h"
>>>>  
>>>> +static void ttm_transfer_object_free(struct drm_gem_object *obj)
>>>> +{
>>>> +	struct ttm_buffer_object *bo =
>>>> +		container_of(obj, struct ttm_buffer_object,
>>>> base);
>>>> +
>>>> +	ttm_bo_fini(bo);
>>>> +}
>>>> +
>>>> +const struct drm_gem_object_funcs ttm_transfer_object_funcs = {
>>>> +	.free = ttm_transfer_object_free,
>>>> +};
>>>> +
>>>>  struct ttm_transfer_obj {
>>>>  	struct ttm_buffer_object base;
>>>>  	struct ttm_buffer_object *bo;
>>>> @@ -247,7 +259,8 @@ static int ttm_buffer_object_transfer(struct
>>>> ttm_buffer_object *bo,
>>>>  	atomic_inc(&ttm_glob.bo_count);
>>>>  	drm_vma_node_reset(&fbo->base.base.vma_node);
>>>>  
>>>> -	kref_init(&fbo->base.kref);
>>>> +	kref_init(&fbo->base.base.refcount);
>>>> +	fbo->base.base.funcs = &ttm_transfer_object_funcs;
>>>>  	fbo->base.destroy = &ttm_transfered_destroy;
>>>>  	fbo->base.pin_count = 0;
>>>>  	if (bo->type != ttm_bo_type_sg)
>>>> diff --git a/drivers/gpu/drm/xe/xe_bo.c
>>>> b/drivers/gpu/drm/xe/xe_bo.c
>>>> index 85e6d9a0f575b..5843f850339c7 100644
>>>> --- a/drivers/gpu/drm/xe/xe_bo.c
>>>> +++ b/drivers/gpu/drm/xe/xe_bo.c
>>>> @@ -1651,7 +1651,7 @@ static bool
>>>> xe_ttm_bo_lock_in_destructor(struct
>>>> ttm_buffer_object *ttm_bo)
>>>>  	struct xe_device *xe = ttm_to_xe_device(ttm_bo->bdev);
>>>>  	bool locked;
>>>>  
>>>> -	xe_assert(xe, !kref_read(&ttm_bo->kref));
>>>> +	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
>>>>  
>>>>  	/*
>>>>  	 * We can typically only race with TTM trylocking under
>>>> the
>>>> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
>>>> index 8310bc3d55f90..1eae9eea5ff32 100644
>>>> --- a/include/drm/ttm/ttm_bo.h
>>>> +++ b/include/drm/ttm/ttm_bo.h
>>>> @@ -78,11 +78,8 @@ enum ttm_bo_type {
>>>>   * @type: The bo type.
>>>>   * @page_alignment: Page alignment.
>>>>   * @destroy: Destruction function. If NULL, kfree is used.
>>>> - * @kref: Reference count of this buffer object. When this
>>>> refcount
>>>> reaches
>>>> - * zero, the object is destroyed or put on the delayed delete
>>>> list.
>>>>   * @resource: structure describing current placement.
>>>>   * @ttm: TTM structure holding system pages.
>>>> - * @deleted: True if the object is only a zombie and already
>>>> deleted.
>>>>   * @bulk_move: The bulk move object.
>>>>   * @priority: Priority for LRU, BOs with lower priority are
>>>> evicted
>>>> first.
>>>>   * @pin_count: Pin count.
>>>> @@ -109,17 +106,11 @@ struct ttm_buffer_object {
>>>>  	uint32_t page_alignment;
>>>>  	void (*destroy) (struct ttm_buffer_object *);
>>>>  
>>>> -	/*
>>>> -	* Members not needing protection.
>>>> -	*/
>>>> -	struct kref kref;
>>>> -
>>>>  	/*
>>>>  	 * Members protected by the bo::resv::reserved lock.
>>>>  	 */
>>>>  	struct ttm_resource *resource;
>>>>  	struct ttm_tt *ttm;
>>>> -	bool deleted;
>>>>  	struct ttm_lru_bulk_move *bulk_move;
>>>>  	unsigned priority;
>>>>  	unsigned pin_count;

