Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGxpF4OapWnxEgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:11:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990E11DA6F4
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9782E10E500;
	Mon,  2 Mar 2026 14:11:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="nhasrcny";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010030.outbound.protection.outlook.com
 [40.93.198.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E2F10E4FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2026 14:11:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bwfy6b7H+dWm3ROzMlyJ2ZJTUIgSj4Ial49TcFXIkxwcrk6rPQmlbvxgQpCQVEDMmrxhouLOtsUFUiKgcF3gl6Mk9DirOqoAh0bfdm+EfBASgsCChbpAeaNRA+nS/tOAj3VpPh7gRCLPx9EJdZ/sXbbgdV/YseYXLpraVNtqeTQjevMC3KzI8NXvxViVSpbrKTDvLGRABk5oRrk56/ZjiiVTUjgeGRmIWbTqB+H0+0MdNYZ1EMQ7l3Cn10XUQyrTvVngCkRvk27JT99TiwmkFvYPxHZHQQ1s3CMbvk1BIV+vbguEQDieYfMPYninmVlIcVH9pPQUQwhOyqVONETc6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WPyMW9RK6d24eUGSLIy/JYEbdC81Pcm/a7C2piFMn6E=;
 b=zUf+b5Ivu5PsmfCRJ8AA4y/T255iDpwCjIZkm2Jm388SRchR43JswlK841mSw3BBEeDHdxroiHKUVWDmTxEC6O1FVowZgr7Kx+LFaW6mfGsquDihhCGQAgGJ7tw182A6WJxVGa2oqA3ycADzHuTNZul4Gm91Dp4ZKFJBDlC2dA21lEq/4tKWtU29zjMp+10DMDF4mCIUEvP0dC9SXVTR53/P4vAh0g5P7MpYLUj1LnVPfvF69yfZCKChLZd4fcWJI0yxfKEv5CkTLwrOK2sMSUu/IaIHg5Yhh2/VPoSUnkSmqp9t+i1xt+n6wfDKKtiTAIh5eWWE3hkYVSvSokA0Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WPyMW9RK6d24eUGSLIy/JYEbdC81Pcm/a7C2piFMn6E=;
 b=nhasrcnyCtp5VswlrfccMHxqAhGJKhhmbAU/co9eOntiDINCvXkQUudH8u63+tgHqNbpzt/37pCpEXigge5IcazyEMVLJTKyCjvlkZE0/Aze2XEsjFNeb5jKFRhxKMdZj1vogK+4duHW+XYBErbq+GLvrTkzv3Fp+b+6esZOjLY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4376.namprd12.prod.outlook.com (2603:10b6:208:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 14:11:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9654.014; Mon, 2 Mar 2026
 14:11:08 +0000
Message-ID: <e7c3387a-8fd6-4762-9152-b0583fe06436@amd.com>
Date: Mon, 2 Mar 2026 15:11:03 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com
References: <76cc7180a08f0b61b85669cf2e5074efc0558478.1772460288.git.sebastian.brzezinka@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <76cc7180a08f0b61b85669cf2e5074efc0558478.1772460288.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0130.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4376:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a39d30f-10fd-45a7-d85e-08de78658c95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: zW4SEALLDe7tRkDJQZbrHYvAYreXvIGaNwXJaTkbi8JWoToAiIS/k0p4FOPWUpMvN1DRkaayM53tDJw5O7QgI+mqrMhfGYsxksT53biQF0r2qh1fVKMHyHv1s8z6UtjRFPiCrJQD/QoMR9dRbPb8fwl83DEeQt9mHOdYr4I+OM6eIOcbbY+LlkbQuQ02Pfps7iFukU8xgGXDpO03N24q79rru3FACJevNOsbUOnI4+sxLCbx810OH14PLZhZiAV5rOGbYxnMrUVUBtEmd+SuCeg34vT0qsWof4xBtpYKEs69+B/DvcTgQ8vvH2V3lzPU85BxfOi4m2dr61dm5f9VADfP4Ve527jusfH03OCHlWo+Ftuv2Gi59/Gidlrb3I1Bk2pl6zqnQptm0PmdIVrFR4qAfVkzVCMyHjPAVsr9ofLnNk21eE5xxQFjgB++M0OEVtx9PK4iT2G2COFeO7w4glJ3Qwtzes5fmJyEzuKDm45iQhzY/whSpi5Vl78D47L71Bqnm6QM1binJJ6FVQ5O74iYygDBbUTQqfMnVXvPmvX+1ggC+FoRwIDdAj+bzEUs94pQf8CBYLRJ29ruOpUC+SfkK3Xo534JZPNCS1LqMb3tFHcaa7btbQs3hX6cp0b2OiEeW2zkgF32CJrYLjvKYrHdCpVC0NapAHQjBUYOfSVV+vgfsbdJz8CVOg8GrjfD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDREdVROcHNNc2FWcmRwdzlZaE8wLzVhR1JDa0xRb0tKeEFYcVd3cE5LWWUw?=
 =?utf-8?B?TjhzOWhYTVZ6S1pMK3g1ZVVjUER3Zmk3VEFHT0Zjcjc1ekVlcWhqUW4rT3N0?=
 =?utf-8?B?TWpYNGszeGV3T3NFcFVuRXczdVEvYisrNXFPQ3JGdUhHcjF1Tk43N1R4Mjha?=
 =?utf-8?B?VnZKQ0h1N2lLOEZVMUhwbHhVZHhBQU1oNVp0UmsxKzlJQ1U1aVRnUEJCT3Uy?=
 =?utf-8?B?WnR0RHZoMWw0R0N4OS94WURnN2pQL09NUTNEVjl4R0xzc1c4NzgxbURRSitm?=
 =?utf-8?B?Ty9nR1pUenNVSmNuMk1XMFUyb3ZnMGlXYXJFQXJ5WEFzekpnQnNoMGgwUU82?=
 =?utf-8?B?eEFMcG9MZzM1cjNDdjJMd3A0QWVOdy9RL2ZtV0FOMnhBc0Rmc0JNTnBlNTFV?=
 =?utf-8?B?V0V5aXd0K2FTaGhDQmRPMGhoN0tjbnE1V0p2eklpZWd3RUVBQk1idi8vbGo1?=
 =?utf-8?B?UDgvNC9oZS9XYlhjMDZMUGhFQVNLdXROcW9obXcyWGh5MnduQWJ0TUN2Mlov?=
 =?utf-8?B?Z2VqWGZBR1dIcW9YVFZ1THcxZlQrOUlsdmQ1TnkxeVAwMG9HNCtOZzl1R2pG?=
 =?utf-8?B?eVpsRE5OeFAyNTM1SjFOQkZydTE4ZjFtU2JTUnlScFpoNVIxSmJaTjNOWkJp?=
 =?utf-8?B?SDkvVndEb1pTVkwzOTZaNnVNMkNrME1JMDBmMCtxVkMzL1FsSmVUSjNOelB3?=
 =?utf-8?B?R21vNXNvT0FOdFJDamFhbnJZYVM3b0JpRzZqcWVPaVdEWmkwWVNHbXVnUjBF?=
 =?utf-8?B?TVgzRGg0LzU5bnZLMUZiSHB4em5QVDE1aUFBQ2MxR2FqN2lZbC9uTVpuTUtq?=
 =?utf-8?B?TmdMd3hDVHZHQnhXTjdNaU5qeUtzNjYyUVVhOXYwSlFpWURuSWxmWUxWckZE?=
 =?utf-8?B?OHcvYytjbmx0aVRmOElyT0xvc0dyUStsaGM4YkpJaTdOeklqeURLcVdYV2JF?=
 =?utf-8?B?VUtrdzNSd1hHb0ZVNkFyWmg3aHJaeGU5czVwZVM1bHd1R3dVRE9mZ1dXTDhE?=
 =?utf-8?B?anFPdEd6YWcxb1I2V1NQaTBrNndPV2VwRTgxOUFIOVlsN1RsK0NLa1Zkb2VT?=
 =?utf-8?B?T01WSjc0bnRseGtzRnZQTnNLckRqL0xlbi9tV0pNR2d1MEFlY216VE1ZVlpI?=
 =?utf-8?B?S2pWS2N5bktYWWhLUzQ0MVllaDI2YzNuU2w2UXBhV1g5MloxN3Zpa3lxa0JP?=
 =?utf-8?B?U3crak91MFFHZ0UrK0VaWGY3ZFRFVFBmWU5QRFRHMFJ6Q2RueEY5MG1oTWdB?=
 =?utf-8?B?dFU3bHN6ZkRLYmNZZUlPbmpTUDBERFhwZEFJcWVwTll0SmFuSFBTY0pBVmFR?=
 =?utf-8?B?NTEyTVRjRWZ3QWxYZEczWVp5eWtJYkVHNXRXeHREeTJxRFJVYmtScm5YaHZM?=
 =?utf-8?B?OU44elZGOC9kMnVvQmtSL1pqby9JSER2REFzTDZEWHE1Y1B1ZlZ3NWFMNHh6?=
 =?utf-8?B?emhkeGl1UGlHZmFnR1g2NTlKb0NCM1pLVEpoYTNrdWpIRHJBQ0dTSzMvSTlp?=
 =?utf-8?B?aU1INVFKYUNOcTEvU1pra08wcFBtWUwzQXBEVnZSMW5nUGl6M3JmdWhHQllt?=
 =?utf-8?B?dU0wSkJVdEpVb3ZOcUN6WEprcXI3SjZpOHA1ZEw4ZTRwbERTUEJmNzBjOEdt?=
 =?utf-8?B?SURGam9NMmZRckIzdlVadjAzYks2Uk5FbS9rNFBlV3paTlV5ejZHVmZoVVRi?=
 =?utf-8?B?Nm1tRTh2bHJiL011dWMrcDVVQmlIVnh5Z29oQjY3WlFoZnhNNGp6c0x4TTFU?=
 =?utf-8?B?cGVqa1ZweWZ0d1R4ME0yM0J5Y1EzRmd6M2F3SjJFNjNUU2crdnRDZEJIcVFj?=
 =?utf-8?B?QXZseFpnRmRleDRlRDBKaUZxLytLV0drTDVqcnJrbmhKc3FnNmw4UDVGV0Nv?=
 =?utf-8?B?M1NxQ3lJWFRZMkpNTkgwM1pJQXZnNEx1SnVLWk83bHgrRUNuaTY0NU5VeWlZ?=
 =?utf-8?B?QXkzT2d2MmFYMTdnbnRiVldWd1g2LzRSZEgyeEJaRVlqTmdLekNDSDlIbUlp?=
 =?utf-8?B?TkhFY21mSUdETldGaHhlVUFKSkFtVE9jVVh4ZjNvY0pMamE2NEUweEI3bEIx?=
 =?utf-8?B?THU0emJ0anZKM3FteFZOZGtZOXordHVDZVQ5Y1hlYzFLWWVPZCtqOVhZb3Q3?=
 =?utf-8?B?dlFzc0NPa0pKQW1sZlJ6cFJIQmFzNVUxcStrZlJGbDJtNFpVcWlzVmNKT2dO?=
 =?utf-8?B?VTV5dGxqSEJqeTBUSDE2N0NEVXhSREJmUDg1dXhBRU9xVVN0YzhEZDVsNk9V?=
 =?utf-8?B?cVlHYWJxYjczL1pmb2dYT0dxRU91RjFmZ3pVbTlmaFJubVVZZEllQTNXU2M5?=
 =?utf-8?Q?DwfFHkb2MiCjJKvgl3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a39d30f-10fd-45a7-d85e-08de78658c95
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 14:11:08.0375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIN5j1/5CXXkN0uIjBFQBsMmeGEhml0Lu2FAYKGgfazqyOhUk3ZLjEw+kLX/k1c1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4376
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gitlab.freedesktop.org:url,aka.ms:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 990E11DA6F4
X-Rspamd-Action: no action

On 3/2/26 15:07, Sebastian Brzezinka wrote:
> [Sie erhalten nicht häufig E-Mails von sebastian.brzezinka@intel.com. Weitere Informationen, warum dies wichtig ist, finden Sie unter https://aka.ms/LearnAboutSenderIdentification ]
> 
> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
> fence->ops may be set to NULL via RCU when a fence signals and has no
> release/wait ops.  ttm_bo_flush_all_fences() was not updated to handle
> this and directly dereferences fence->ops->signaled, leading to a NULL
> pointer dereference crash:
> 
> ```
> <7> [290.719359] i915 0000:4d:00.0: [drm:i915_gem_open [i915]]
> <1> [291.602076] BUG: kernel NULL pointer dereference, address: 0000000000000018
> ...
> <4> [291.602244] RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
> ...
> <4> [291.602494] Call Trace:
> <4> [291.602504]  <TASK>
> <4> [291.602521]  ttm_bo_put+0x3c/0x70 [ttm]
> <4> [291.602558]  ttm_bo_move_accel_cleanup+0xf6/0x3a0 [ttm]
> <4> [291.602602]  i915_ttm_move+0x361/0x480 [i915]
> <4> [291.603405]  ttm_bo_handle_move_mem+0xe8/0x1e0 [ttm]
> <4> [291.603447]  ttm_bo_validate+0xcf/0x1c0 [ttm]
> <4> [291.603485]  __i915_ttm_get_pages+0x73/0x290 [i915]
> <4> [291.604208]  i915_ttm_get_pages+0x106/0x160 [i915]
> <4> [291.604915]  ? lock_acquire+0xc4/0x2f0
> <4> [291.604940]  ? eb_validate_vmas+0x6b/0xd30 [i915]
> <4> [291.605633]  ____i915_gem_object_get_pages+0x3f/0x120 [i915]
> <4> [291.606335]  __i915_gem_object_get_pages+0xa5/0x110 [i915]
> <4> [291.607021]  i915_vma_get_pages+0xf9/0x300 [i915]
> <4> [291.607774]  i915_vma_pin_ww+0xf5/0x1390 [i915]
> <4> [291.608532]  eb_validate_vmas+0x209/0xd30 [i915]
> <4> [291.609215]  ? eb_pin_engine+0x2f0/0x3b0 [i915]
> <4> [291.609887]  i915_gem_do_execbuffer+0xda3/0x36e0 [i915]
> <4> [291.610442]  ? lock_release+0xd0/0x2b0
> <4> [291.610463]  ? kernel_text_address+0x139/0x150
> <4> [291.610496]  ? __lock_acquire+0x43e/0x2790
> <4> [291.610512]  ? find_held_lock+0x31/0x90
> <4> [291.610527]  ? __create_object+0x68/0xc0
> <4> [291.610551]  ? find_held_lock+0x31/0x90
> <4> [291.610564]  ? __might_fault+0x53/0xb0
> <4> [291.610589]  i915_gem_execbuffer2_ioctl+0x169/0x320 [i915]
> <4> [291.611127]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
> <4> [291.611664]  drm_ioctl_kernel+0xb3/0x120
> <4> [291.611686]  drm_ioctl+0x2d4/0x5a0
> <4> [291.611699]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
> ...
> ```
> 
> Fix this by reading fence->ops under an RCU read, and skipping
> dma_fence_enable_sw_signaling() when ops is NULL. A NULL ops pointer
> means the fence is already signaled, so no software signaling is needed.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
> Cc: Christian König <christian.koenig@amd.com>
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index acb9197db879..293f3d423655 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -223,7 +223,13 @@ static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
> 
>         dma_resv_iter_begin(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP);
>         dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -               if (!fence->ops->signaled)
> +               const struct dma_fence_ops *ops;
> +
> +               rcu_read_lock();
> +               ops = rcu_dereference(fence->ops);
> +               rcu_read_unlock();
> +
> +               if (ops && !ops->signaled)
>                         dma_fence_enable_sw_signaling(fence);

Thanks, I've completely missed that.

Taking a look at the history that check actually seems to be superfluous now.

So I suggest to just completely remove the fence->ops->signaled here.

Thanks,
Christian.


>         }
>         dma_resv_iter_end(&cursor);
> --
> 2.52.0
> 

