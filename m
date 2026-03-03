Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE1ENqvmpmnjZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 14:48:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225951F0AD1
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 14:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D50110E80F;
	Tue,  3 Mar 2026 13:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="czzON6EM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012069.outbound.protection.outlook.com [52.101.48.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA0610E80F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2026 13:48:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u6LgQkABH/wZFEXR+HWv3xyaduFfCw17ad2mTaJo9Y7w4O/ooFMdnj2mPCcmTfFCR8pxYYwOFx4444z4aDu3dnaYzwb3N9x7UDpmxLm/LA92ZSZb/aupibY/WAkxvUrncFgPxLxoPTMat1wWU/T9+Km0JCbOFvvviEVOy9x7y/X4Dbrc20UhBV5i/RzewRa4j8Fwm5gFRjMA9BM8JcYflzdJeLrfY5gnTF1UomIVtvAFaOnine+1WTpzjNJoAN281aKPy4smBIsLxu4RK9hMSaB59Z5o+NgMpXC4XxbCX0x0OWc5/fsg2ypDxBmafWZz2xCWzb4PU1H+zWnOOH2z4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KLtIrKEELNA2E/+VXdoPe7tn4CA3NXxSmmk3qgEb/hA=;
 b=CbeouNAevAHXEiaYzrj5asDjiOSqOwZiIsGAJDzhU09elZAH3bB0bn+aOyH3NTthaPHEW4r1nQwThDfYNPwOV8B8pV4cQcijKl0ctkJakT8P1/9DRNCD3G2b+WOf9vfD0wda6zNBPMapRxGTGFG5pSh0QCd1EjW6MfYmNmoYz9HYSYc1DZcI+ip9/1293qbWo0S43S9weHyPitTn6FqVWmDQ1Oirp8/Fup3elU7ry5IGfyQ0Hn0rb0hUbXKjUYCLqfoLDPazvWEhSoQM7Izr+uwL3L22wlswVurEMCWNmhjz505gUFBr8X4uj0TqHuvCCqd7/QOFTz9OyzKTNbpLSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KLtIrKEELNA2E/+VXdoPe7tn4CA3NXxSmmk3qgEb/hA=;
 b=czzON6EMekJ47mCJ7pgXnZdXa3HvPlMxDevjVG/Tts3OD6+OvMepgYL82p2SDmfqfAMOywe4fEnbzFBJuxvNeP/HZr1HmYQpxsDzbIYAyY8K4N+Vvg468lPrGqTJyfVch0AwSmuCeh+rUnRJbNN6XHKEzEw4ll4V6y/MpA5dIOs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BN7PPF521FFE181.namprd12.prod.outlook.com
 (2603:10b6:40f:fc02::6d0) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 13:48:21 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 13:48:21 +0000
Message-ID: <cda3a318-fed1-4779-9c83-b0d8a5178775@amd.com>
Date: Tue, 3 Mar 2026 14:48:18 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com
References: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9P221CA0027.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:408:10a::21) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BN7PPF521FFE181:EE_
X-MS-Office365-Filtering-Correlation-Id: bfcb7cf3-8676-4f08-fdb4-08de792b8878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: DGMlrZQwggHqdvda0EggJle1842ci3nZg/5T67AAtK4YPT/OPSELFng7eCKQ5edAgodt9UQVPEGrKnNVJBujaFN7zYIsxUEXjsePO4arFOag+xpy6+rbA8vFVu1AYkRq9j6cXKySE6a6MuypJUihtZTTCggm7bJut/ByyN83i3OSXSlRnfEX5Vem03u/y1Sdr1pqzScFCHccCbf7zemW0tQTHLd0eDDStlW2JFG1h5Jpd6s2BLSfqW5lawd4HdirK0tIsHXcATds8pfSPog8qJR80hWT2cU7h1MfkOpP3sEv6k3w2Li2m79fL2QoxmeeQqB1NW+jdAcy60IoPMyVdi8EGl9VQb+Xtf9/6bCY5Es3ElcZayRGXdi1QONaDQ87n1PulV9zl0H++ixS1z+tSxNXMK4q/RAEqY1PNxZQIBXdd3WmuLUvcnYbvGEnC+oAFmZ/l9UOUt6Nszc8FhfVNCasHCjWGaHTG4eBfXgdX7JYwzYn8JBYsN4uokpwegmc8012xZp+sCCzH9SnSExBElB3Hk7n8Ywe8VmKrwNSa7gTpwRM2VlCuviiI1VCj2IX9vr3ULFyPhz2JRwosetQ0PjgF1V5/NGJzPXpGky1PDY8M2U/VC++10hNn9JhixVifoZeGG4Z+5DVQDyg08DblysuFBZzdP7Wuw0GSl1/Vkkn7qTkGW9l47ox4rzFtY7D
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHNWWWtpblc4Z2R5b2E3NVlDUzUySURTUzJqZ3FOSW5FOWpIa0txY1IxbVMy?=
 =?utf-8?B?WEZUV3RhYkJtMHBicEtya2hvZkVzQXhWTmxtdjk1enM1V09nYnd1TDJFUkFp?=
 =?utf-8?B?Qm9jeEFiY2UzMkw2MnZTdEZ0UUFTdUt2a0JTQ255VDZ0NUUwakNrZThDdHNO?=
 =?utf-8?B?bkp0NVVpRW9Oam5qYXdPRmZJSHN6K3Z1bjVUTzM1UTFEL0xvSlErRCs0TFFp?=
 =?utf-8?B?WGYwUnZtaXVCUEErQzEvYmcrbFRZV3dHK1ZSSmN5RGk5SzRzUEgzTmh1eTJj?=
 =?utf-8?B?MW9xM2c3c0lLejN5VFBzc0R6ZUhEdTlxUm9zZEpUZ1JFMnEwdWYxbmFSdDZ4?=
 =?utf-8?B?dnBSME5udmtpcmtkU3V2Tm9KSTF1UHdrMVNSUGRZK0JPNkozY21DazEvNmYv?=
 =?utf-8?B?aGgrcjVVS0tqZTVxaHVJVzZncENYVEkxVkVZTk1GZXUzY1BBZWZSSUIwSksr?=
 =?utf-8?B?T1VFTVVhTVc5K0F2Nlh2bG13N0orai90Y2Zzc0Q4VFFZZ0FqQlE4Rk9aSGlO?=
 =?utf-8?B?SUFmT0diS1pabDFaYnpjdWRNSGp6RGJMeGR1Wm8zOVQzM21xemR5dFFHaTFx?=
 =?utf-8?B?UVUyeHpsWXZxMHRKWEptK2VLMDZkbHNNUnV1TFd4RTBSQkdvbnkweVdBMGpY?=
 =?utf-8?B?ZG5qS0JDSVlnbXdrbmdPSFBwWjU3QzhuVnIrWTNDN1FIUmx5R1NvQXY5VlJR?=
 =?utf-8?B?TVliSEJqZ0tLWG9WWU5uRFo4RlZTdEVFRnlVSFZzTHVhSFdoUHN4M3hFL0hY?=
 =?utf-8?B?cWN2blJBRG11RGFLZTl5blBUUDVRWXlpYTU3MXgySWJadi9iMUswN3VSckg0?=
 =?utf-8?B?bnhuMkJNSllRUUxEeXI2d2orRk0zS24rYjNza2pkWStvWlQvUFBqMm90eTd6?=
 =?utf-8?B?NVZ3NHlJS01yendOZnNmb0h4Q0FsUFE3OHJYRU4vTVd2dXBzckFBc0JnMW1Y?=
 =?utf-8?B?L1UrZEFqdHJqeUxISjc3aE5ISXBnU2o3Q1c1Q1Q2R0pLR3lJRTZLWnFMVWRl?=
 =?utf-8?B?VlRmdWp3aUZCS1ZmbWtHU0NVdTJMWWQyMXBjdUpycGhpSFgrSEo5RHhiZEVz?=
 =?utf-8?B?U0FqZ2Z1S0MvZ0VWdWtuUkxDTk1uTUpIWjNIRys4T2ZnL0Y5S3FSbVY1MVJD?=
 =?utf-8?B?Z0EyYk5TYkQ5em5QOHBEYS91ckN5QW1hMjRDS1V3cmVyMWpzMGcxTjY3SUpx?=
 =?utf-8?B?MEVxT3BjbmdrKzRNS2p6dTh1OVc3OVU1U3BPNHVJZHR6bEJMMG9sUHBBb2ZE?=
 =?utf-8?B?Y09SSDRubDYrbVlWWXhvN1N6NWxEd090UENCaHUzS2Z4NE5rWDJxMHJtMkd6?=
 =?utf-8?B?NWp0ZTFlNFlpeDRqSjBTWUZEVHB1REloQVNQc3N2Yyt6eFk1cDh2L2NQcml3?=
 =?utf-8?B?RlVhY1ZZbGMwSzBFY3BwVFNMaUlxanRDTmdpbFAyZ1k1aCtCNDU5Q0ZZM0s2?=
 =?utf-8?B?WTRwODI4anZ5dFp6bGxwczZzL1UxZ0FmRGZKamVVY1JZbkFua3RudXk2eUJH?=
 =?utf-8?B?WUgxWmdYMU4zbUoyVktENUwzc1NPVmthZnA2aUxuVEFIT0NBeEZqdGR4Zkow?=
 =?utf-8?B?dlg3Z0E2MVpPb3BzNStVRTVLenNlK29zdUJkQllDdEoyWEhXWHpyTEsvcFhu?=
 =?utf-8?B?bDYyU3QwVzRmVGFSb3VUUFF0Q2xNWmQvT281dUM1S2d1QlR3SXNNOXZzT0p6?=
 =?utf-8?B?NVVHYldpMTRiZytLQkJEKzlqQlhsOGxoTXJqTjZkTWkxTnhSV2E0SjRNVnlF?=
 =?utf-8?B?MU9pNGdyZTkzcFBJUHVFYVNBSUZmTllFWTRoUGwyOEVWQ2FOT2lNay9UYVBL?=
 =?utf-8?B?a3M1RG53alJ1ODZmR3BnQ2hhN3dORTgzbkJFeENlanZCZVdlRlZmWTVkOFlX?=
 =?utf-8?B?TmhqczJhTXVEL3grMkYyQVp6TTRzbm1pMFRCd0tGS1p3RlBwczNUeVNsdllV?=
 =?utf-8?B?ZHpWc0RpRHpMczB6Zi9hTnBnTVBtaGo1aEN3RC9ickNtd0tCYzEyT2NCL2p0?=
 =?utf-8?B?eCtQS29pVHBaYURhOUZrYy84a1JEaVEzOXVsNU52dDlFQngyLzBicHVHNHFB?=
 =?utf-8?B?ajlNNVozcEJCSVN1Um5wL2x4TThzUVBKcVBkVkNiRWM5b1BTUHAvSGpxTDBB?=
 =?utf-8?B?Z2xLazRJRG5ZbVRVQi9hVXJ6RlIzSU9aNVZveFdGUXk5bWVycjU2YjBEZDZl?=
 =?utf-8?B?SHJSVjlOTUtaL2tBTFRIUyt0cTJSazBRdndWeTd2ZHc1Z3ViRENYemJaakpB?=
 =?utf-8?B?VTNWUEZtelV2ajhlajhSYUJlMUpCbVAzNTdMR2JPS0xYWWJjRG1WWk1WNmJz?=
 =?utf-8?Q?1otSIR3NFv9wYqYPVJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfcb7cf3-8676-4f08-fdb4-08de792b8878
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 13:48:21.5188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wz2c+f7T0hzooiJezpJByYN6WvMudR9aMJZDGMVr2GB/I1DttaBVLB9ug61i5gnq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPF521FFE181
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
X-Rspamd-Queue-Id: 225951F0AD1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:email,amd.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On 3/3/26 13:26, Sebastian Brzezinka wrote:
> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
> fence->ops may be set to NULL via RCU when a fence signals and has no
> release/wait ops. ttm_bo_flush_all_fences() was not updated to handle
> this and directly dereferences fence->ops->signaled, leading to a NULL
> pointer dereference crash:
> 
> ```
> BUG: kernel NULL pointer dereference, address: 0000000000000018
> RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
> ```
> 
> Since dma_fence_enable_sw_signaling() already handles the signaled case
> internally (it checks DMA_FENCE_FLAG_SIGNALED_BIT before doing anything),
> the ops->signaled pre-check is redundant. Simply remove it and call
> dma_fence_enable_sw_signaling() unconditionally for each fence.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
> Cc: Christian König <christian.koenig@amd.com>
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Christian König <christian.koenig@amd.com>

Going to push that to drm-misc-next now.

Thanks,
Christian.

> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index acb9197db879..0485ad00a3df 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -222,10 +222,8 @@ static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
>         struct dma_fence *fence;
> 
>         dma_resv_iter_begin(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP);
> -       dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -               if (!fence->ops->signaled)
> -                       dma_fence_enable_sw_signaling(fence);
> -       }
> +       dma_resv_for_each_fence_unlocked(&cursor, fence)
> +               dma_fence_enable_sw_signaling(fence);
>         dma_resv_iter_end(&cursor);
>  }
> 
> --
> 2.52.0
> 

