Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JLfKdeY12lNQAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:17:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ED73CA49A
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA0710E7DF;
	Thu,  9 Apr 2026 12:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="vuYHwHir";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010055.outbound.protection.outlook.com [52.101.85.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C7110E197;
 Thu,  9 Apr 2026 12:17:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wJqrDdfnhM8dXWAPLmF5CLooRsoTJ06RwD3zcgS1boZjHZr0wsTeuS83P1wy0m+oNJtvK7IUg3k0dARgcc4dnoqrfjOb3muCDtXd8ZwFK3jX0cN9XznnH3sBjRc9TuPOb7x5RPeakzCcUhkdGsJIUlXkZopQ/M7batNP0NrxE7/xZ1hsZyvVTNT89N0BrzF/QQnEDZFq7Pkq6/HxvlpSM7RGOFw7Y3f9CDdC6zLeMu+huuMlWzH2LA+lB0JTj6RFfkY2QJJajQ/s+o/srI+Ge/CspaAp3BrYNeUr1L6A3/9HQiTdNQvpxV2fqzYISUr039iDIligFqiGUmZg7d38Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bTlOK1ICBEHcX6Aye6xvm2VhEDYPcBgjhnCqXMIhZK4=;
 b=HqHdROqW7JCROyewjIq3uGNV2vLTvXeIKHuEWS/zu2AaDJ+0qN09H4AU6rQpPp/oPmIL/6bd39xsieuKJ0DHjxQL0RjMaYNgB91HLP2HvxctLoXYn7fQSMjrEoHilGO2ZzRelgfnqiq1MAvzVfidcOxBc55SgFsD49VHGWDfwGDb0t2nsvA62qv5AIG0TFoMuJsdch56NOzJc1Ayntr9ODEKNuXQOutFSC625FckyKiFcLuzjNEyg69oWzft8qYcb7xjnaWck0tgtmdvE6DXc7TCywlDn+rOrGO+E9M3xF6HGQYycsMo+9zoWtDnZM0uytQFELDt9J3Ek/wXdZgFLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bTlOK1ICBEHcX6Aye6xvm2VhEDYPcBgjhnCqXMIhZK4=;
 b=vuYHwHirFP+b9Yin/E3ANdjSqjAk71nXsHQ6Jpc+BRJ0A7N5xVenbm9CceKqNZS9WLnv4k3CCSKTEEvVJIW5aV19EveVkAje24dUEPJWxIOAoNdUZ3niDMxa3UH0NfCNZxjws468aUL6cWtJCbTxC4mTKLsYZ2VbKhXCPDx3laM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH0PR12MB5645.namprd12.prod.outlook.com (2603:10b6:510:140::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 9 Apr
 2026 12:17:20 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 12:17:19 +0000
Message-ID: <cc51ea63-19b0-4352-9299-e5ab63f57ce4@amd.com>
Date: Thu, 9 Apr 2026 14:17:07 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/i915/reset: Handle the display vs. GPU reset
 deadlock using a custom dma-fence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
 <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com> <adeLRHQ2omAv93yM@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <adeLRHQ2omAv93yM@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0145.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH0PR12MB5645:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fb9c02f-c3da-42b6-dad1-08de9631f231
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: rQOW16HhSAXf+YvmDuxepGbw74rs3gc99QbcDnOVyvkA7XO9mqAdSU7MXoasjU3sobU8fmXF5o8TmhCibsIaqpoJGP5tRMoANvpa/N8YjVGh7fR2URIOM7qAzmBGmM1KESKG8hYgT0EcKasm7DMqXV8EqRz06y7ieZeOQre93Xk0UpaZGnu3TC3/38PmQeBXOUftSZu9TOgb5Ci8O9G9ZuDGj1MLFED4XSiYJ2JRiKaTdSqSAGkLhZVsh1CCErpjUsMfd6brOO0Lmy9MPG/sxooCFLQnDZedUaj8n92JYewocdrdTS/svlHYASZUpEsrhheIncuxYbAf4qQ3L80A1vzjcFkynBrev5RYHmHHquha4T63Z46tBkHjyk2MxOHC/R/yuG8sHJqHfvPAjcJkT7EWJcM81t1fAneMQGo/DjeW2wEUmCH45uRtaQZJRwEN+CLPWQDa5M77R+Ij2RU7mMtagY6hFsioEX1/PtKv7NbQ6M9G3/k1FiA05gLg8OvzLRMPeg0BOpe4nG6upbD/lCm/4p6+mj6AJTBuctwE6BgsWyvr2vV7b0bERsmJg9BI1c2uoXlodUWTre8r9XkRMxBpIFS+7eHh2EJug+hpZfsc39ACy3r1ghIbARgdAFEuLAe6eFl0oC/X3S8D107Hl+0Tibt22OzoU5Sq+IRvSjAh//DnHc6W0SnhQPEcxRYWvabluRWFSJRgMwqwtSy7u1VLfsRHqH0c8Oj3ZfkrNj8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTlKRXBKY0s3MW40TXpWY0hFL2xoRy9hYW5ibXZzTkFjYWtkK21wT0VjWFBC?=
 =?utf-8?B?TVJOL2poclVYU3FJWVFNb2U3MUg2ZWxYaUw5RFVqSVBrMHkzcU1KcUMrZFVp?=
 =?utf-8?B?VlJXVWZCL3drWXVsdlNPa0Zad28weVVLQ1ZkWkFlSnQxYS9OZFB0WHFNNTZK?=
 =?utf-8?B?emswR0JLejZ4Z2MwMG9WNUd3a253TFhsK2RrcW04WjNodmNqQld2MWJVcEdZ?=
 =?utf-8?B?UHA3QXJzNmdGdm9lci80ak5HeFRFNTZ6cnBFRFllaHR4cXV0azdMRVJmRDdN?=
 =?utf-8?B?STlCbnhWSE1FQklHRkRmMW55Qml3R244YnRTWGxKVFFCMk1JODNZNE1kaEpU?=
 =?utf-8?B?SWU0UVZZWjg0bnU1U1VRbHM5R2VtVU1RcUwxWXVVK1hGQzR1TzJpU1p6cWpr?=
 =?utf-8?B?RkJDMjFnd2VYRlo0VEJXWHVtZnRBQ3RYK28yMGhwTGF0N0NUaUEvVUJXcUow?=
 =?utf-8?B?S0krUldNS2h6Z1NwdWxBOGNnR0tUSHd3RUlXZUJkdDJ1dnc5enF5Qkx1VEVL?=
 =?utf-8?B?SlFxYmttTFlmNGh6SzJmQ2dMaXZFY0xnYTdoNStQSWpTYWxaR1BTWEt3YkpI?=
 =?utf-8?B?cS9jRUxJSzJhS1Rpa3VrWDBKTFFIZ1E4Y3U5YzZnREpCMDEvbEpKM0h1N0I3?=
 =?utf-8?B?WnVDU0dLZEI0VDR0a3JRanFaZGpDYzhLRTRMTzBENVdVSnY4Q2Z2alJwOGlZ?=
 =?utf-8?B?QS90ZkxDZmNKMHNCQlVxVkxGTGd5bVNqYjczWUxaRE8ybjVQM04ydFd4L3Y5?=
 =?utf-8?B?dVFxWVU2OUFyZ2QxUE1GYUF6MmNvZHZkcVlEbU55L2hKakdaWVVZT0pHMm9Y?=
 =?utf-8?B?VzdaQjFlOWZKeGNSckpSVWZJSzlZbVo0UjVvRitPSXhWdUxtN1FYNEpodEhY?=
 =?utf-8?B?Ri9SME00cEdxbThqcXVmZWs0RlFNU2hvclJ4dDFTbkx2MTdScmc3RHFRWlFT?=
 =?utf-8?B?dUQ5N0lja2xtb1BPN1FmblRWVXVHclpvenZEb3luV2ZRTWlrbWIzdGFZMGo2?=
 =?utf-8?B?T3hpTjdUeWV0MWhjaFZ6M1FLVmg0Z3NLdDhDWFNRZjlncHcvSVFUQUFxeGlw?=
 =?utf-8?B?bGU0UEdPVUxhaUd4RHlRQjh1eHFqeXZGd2VLbGY4ZGFNTXc2VUsxYnMrS1Js?=
 =?utf-8?B?M2h0MmJPVHNtQU9tS1k5WUZUL2d5M2Eyc2M4TmR0U0p1RXFIdjdxWmgzb090?=
 =?utf-8?B?Q0hHb1JWY2tOcVdDZnBGbXM0cTY2VW5xSkFodHQ5M1ZURmRFT05uTXl6Ukth?=
 =?utf-8?B?MC9nU29TNERpeGZ6QnpsRlhUT2ZxZWUzaG9relZpSmV4UmdSSkdueEpTaXor?=
 =?utf-8?B?Z3hqL2prTnFLM1Rydmc2M2F4YldJQy9lbDNlZjFuQXc3Y3V2UUtlSS9BdTNz?=
 =?utf-8?B?aktRNDZJUnhvcDhmd2xIKzNWTmEzMWhXRzJVbGV1MlhHK0N1RXVzNWRoMVBX?=
 =?utf-8?B?dlhYR2FpMGFHUVVYMU1mcFhBK1RoWlZPc3N2V09WaEVDY0lsVjRIcThSSThU?=
 =?utf-8?B?bUZjYjAwUm04ZkZpcTFKZlVwdjYxaElNOXc1SVQ0d3BCUDgzSFFzQnpjNERp?=
 =?utf-8?B?dmtQRW5PcjVRMlZ4dXphUGZ6Sk9rVFRxRTJod05RODl6Zndvc3YwU2dnSnlo?=
 =?utf-8?B?bjlVTEYrR2dibEpXbjROZnJiZldOVW9uR0N5eGNPa3ZrcjY2VWh0VCtVMVRo?=
 =?utf-8?B?SGE3MmZzaWdyZ3FxU2I1bzBnZGZMZGRSSE9nemZ5TUlEMjJwZ0R5WGpUL1RF?=
 =?utf-8?B?UlZtbHBJb0x3RnJyNElGOXA3NGFmYmh2dWkvMldnZmgyOTlRd3R6QkU3YjNn?=
 =?utf-8?B?a1lnRUVERWdlblF0OG1TN1F5cnFuWnMzWWh4NWFXNVhDOFE1QUkxNW5wcWdZ?=
 =?utf-8?B?YjkvNmMvdmI1bGVDc242Z2dRdndHMDMrS3hQVUFpU1hmTXZVWU1NdGY4Mk02?=
 =?utf-8?B?YXNTREtLWEpiczVyaVBXTjRmVzNrOTMzNC9Gc0dPWHlGbnlmeUxvT0ZrTTZQ?=
 =?utf-8?B?bTVjZk16T1NMczJ1aGdpTTFMZTFUc0U2eDJUdFQwVjhOc3JFUG9veHVDMHF3?=
 =?utf-8?B?Yk1FYlc2TnAwRlpkZGN1RUFuK3VvbFl0dDRqNFdHRGU4TER5ci9QeXFDWjlr?=
 =?utf-8?B?N1lGMmJMOW1LbXFXOVhqa1ZGM2t5bThFNHBpY0VZb0xaeDA2Z0g4MUF3S2F0?=
 =?utf-8?B?Y1RaWFVBckJEU1dYMUg1WHF2eDhjNEozWS9kbUF5RG5McTlpNTI1RHc2VllN?=
 =?utf-8?B?dVN3Snd3ZG9YWTFKc3o3cTJGdE5mVm5uZXRneDlLbU0zZUpIelBKVDg0b3Ur?=
 =?utf-8?Q?lVrkESvmD1dtjaE3en?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb9c02f-c3da-42b6-dad1-08de9631f231
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 12:17:19.7075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t1Jx2Q1fXOsKLWvjFrXDuhLGrqgBpXiR27ndXldJmwK53NpX7LljhY2kZ1iUy9+c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5645
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:email,amd.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 00ED73CA49A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 13:19, Ville Syrjälä wrote:
> On Thu, Apr 09, 2026 at 12:46:11PM +0200, Christian König wrote:
>> On 4/9/26 01:34, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> The old display vs. GPU reset deadlock is back more or less.
>>> The old (working) solution to the problem was originally
>>> introduced in commit 9db529aac938 ("drm/i915: More surgically
>>> unbreak the modeset vs reset deadlock"), but it got nuked with
>>> commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces
>>> instead of i915_sw_fence").
>>>
>>> Apparently no one looked hard enough to see that things didn't
>>> work quite properly anymore. What is still saving us for the most
>>> part is that we have a timeout on the fence wait
>>> (CONFIG_DRM_I915_FENCE_TIMEOUT, 10 seconds by default). But
>>> people are perhaps trying to get rid of that so we may need
>>> another solution, and 10 seconds is a bit slow.
>>
>> Yeah agree that approach with the timeout is usually a big no no.
>>
>>> Re-solve the problem yet again with a custom dma-fence that gets
>>> signaled just prior to a GPU reset, and have the atomic commit wait
>>> for either that or the real fence using dma_fence_wait_any_timeout().
>>
>> Hui? I don't fully understand what the source of the problem is, but of hand that approach of solving it doesn't sound like a good idea either.
>>
>>> Whichever signals first will let the commit proceed. We create a new
>>> "reset fence" whenever someone needs one, and keep it until the next
>>> GPU reset has completed. After that the next guy will again get a
>>> fresh unsignaled "reset fence".
>>
>> And that sounds even worse. A dma_fence which waits for the next GPU reset without triggering it itself would be an indefinite dma_fence which is not allowed.
> 
> This is a purely internal thing to the i915 display code. This fence
> is never shared with anyone. And we never wait for just this fence,
> the wait always happens alongside a real fence using
> dma_fence_wait_any_timeout().
> 
>>
>> I think something is missing in my picture how that is supposed to work.
> 
> The problem stems from the fact that on old platforms a GPU reset
> also resets the display hardware,

Which is true for at least AMD GPUs and I think pretty much everybody else as well, but that wasn't so much of a problem so far.

> and to do that safely we need:
> 1. shut down display
> 2. perform the GPU reset
> 3. restore the display hardware to its orignal state

Mhm, I've recently talked with Michel about it and we confirmed that this is perfectly possible without issues. Adding Michel as well.

> We just do that with essentially with a normal atomic commit.

I think that is the source of the problem.

I'm not an expert on that topic but amdgpu and tons of other drivers seem to just use drm_atomic_helper_shutdown() for that.

What is i915 doing differently?

> But a 
> previous atomic commit may already be waiting for a fence, which
> won't signal until the GPU reset happens, and the GPU reset is now
> waiting for that previous atomic commit to finish so that it can do
> its own atomic commit. In order to break the deadlock we need to
> abort the fence waits in the atomic commit, and that's what this
> "reset fence" achieves.

As far as I can see that approach looks strongly like a no-go.

You essentially have a lock inversion here and it is documented that it should *never* be resolved by a timeout, the approach you take now is not much better.

Regards,
Christian.

> 
>>
>> Thanks,
>> Christian.
>>
>>>
>>> Cc: Simona Vetter <simona.vetter@ffwll.ch>
>>> Cc: Christian König <christian.koenig@amd.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Jouni Högander <jouni.hogander@intel.com>
>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display.c  | 34 +++++---
>>>  .../gpu/drm/i915/display/intel_display_core.h |  6 ++
>>>  .../drm/i915/display/intel_display_driver.c   |  5 ++
>>>  .../drm/i915/display/intel_display_reset.c    | 77 +++++++++++++++++++
>>>  .../drm/i915/display/intel_display_reset.h    |  4 +
>>>  drivers/gpu/drm/xe/Makefile                   |  1 +
>>>  6 files changed, 117 insertions(+), 10 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 58a654ca0d20..83ccf13c4b16 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -72,6 +72,7 @@
>>>  #include "intel_display_driver.h"
>>>  #include "intel_display_power.h"
>>>  #include "intel_display_regs.h"
>>> +#include "intel_display_reset.h"
>>>  #include "intel_display_rpm.h"
>>>  #include "intel_display_types.h"
>>>  #include "intel_display_utils.h"
>>> @@ -7149,22 +7150,35 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>>>  
>>>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>>>  {
>>> -	struct drm_plane *plane;
>>> +	struct intel_display *display = to_intel_display(intel_state);
>>>  	struct drm_plane_state *new_plane_state;
>>> -	long ret;
>>> +	struct dma_fence *reset_fence;
>>> +	struct drm_plane *plane;
>>>  	int i;
>>>  
>>> +	reset_fence = intel_display_reset_fence_get(display);
>>> +
>>>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>>> -		if (new_plane_state->fence) {
>>> -			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
>>> -						     i915_fence_timeout());
>>> -			if (ret <= 0)
>>> -				break;
>>> +		struct dma_fence *fences[2] = {
>>> +			[0] = new_plane_state->fence,
>>> +			[1] = reset_fence,
>>> +		};
>>> +		long ret;
>>>  
>>> -			dma_fence_put(new_plane_state->fence);
>>> -			new_plane_state->fence = NULL;
>>> -		}
>>> +		if (!new_plane_state->fence)
>>> +			continue;
>>> +
>>> +		ret = dma_fence_wait_any_timeout(fences, reset_fence ? 2 : 1, false,
>>> +						 i915_fence_timeout(), NULL);
>>> +		if (ret <= 0)
>>> +			break;
>>> +
>>> +		dma_fence_put(new_plane_state->fence);
>>> +		new_plane_state->fence = NULL;
>>>  	}
>>> +
>>> +	if (reset_fence)
>>> +		dma_fence_put(reset_fence);
>>>  }
>>>  
>>>  static void intel_atomic_dsb_wait_commit(struct intel_crtc_state *crtc_state)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>> index 9e77003addd0..6687b658c51d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>> @@ -556,6 +556,12 @@ struct intel_display {
>>>  		unsigned long mask;
>>>  	} quirks;
>>>  
>>> +	struct {
>>> +		/* protects reset.fence */
>>> +		struct mutex mutex;
>>> +		struct dma_fence *fence;
>>> +	} reset;
>>> +
>>>  	struct {
>>>  		/* restore state for suspend/resume and display reset */
>>>  		struct drm_atomic_state *modeset_state;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> index 23bfecc983e8..fcd31722c731 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> @@ -34,6 +34,7 @@
>>>  #include "intel_display_driver.h"
>>>  #include "intel_display_irq.h"
>>>  #include "intel_display_power.h"
>>> +#include "intel_display_reset.h"
>>>  #include "intel_display_types.h"
>>>  #include "intel_display_utils.h"
>>>  #include "intel_display_wa.h"
>>> @@ -257,6 +258,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>>>  
>>>  	intel_mode_config_init(display);
>>>  
>>> +	intel_display_reset_fence_init(display);
>>> +
>>>  	ret = intel_cdclk_init(display);
>>>  	if (ret)
>>>  		goto cleanup_wq_unordered;
>>> @@ -584,6 +587,8 @@ void intel_display_driver_remove(struct intel_display *display)
>>>  	if (!HAS_DISPLAY(display))
>>>  		return;
>>>  
>>> +	intel_display_reset_fence_discard(display);
>>> +
>>>  	flush_workqueue(display->wq.flip);
>>>  	flush_workqueue(display->wq.modeset);
>>>  	flush_workqueue(display->wq.cleanup);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
>>> index ca15dc18ef0f..80dd2ea8a0c2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
>>> @@ -3,6 +3,8 @@
>>>   * Copyright © 2023 Intel Corporation
>>>   */
>>>  
>>> +#include <linux/dma-fence.h>
>>> +
>>>  #include <drm/drm_atomic_helper.h>
>>>  #include <drm/drm_print.h>
>>>  
>>> @@ -16,6 +18,72 @@
>>>  #include "intel_hotplug.h"
>>>  #include "intel_pps.h"
>>>  
>>> +static const char *intel_display_reset_fence_get_driver_name(struct dma_fence *fence)
>>> +{
>>> +	return "intel_display";
>>> +}
>>> +
>>> +static const char *intel_display_reset_fence_get_timeline_name(struct dma_fence *fence)
>>> +{
>>> +	return "reset";
>>> +}
>>> +
>>> +static const struct dma_fence_ops intel_display_reset_fence_ops = {
>>> +	.get_driver_name = intel_display_reset_fence_get_driver_name,
>>> +	.get_timeline_name = intel_display_reset_fence_get_timeline_name,
>>> +};
>>> +
>>> +static void intel_display_reset_create(struct intel_display *display)
>>> +{
>>> +	struct dma_fence *fence;
>>> +
>>> +	fence = kzalloc_obj(*fence);
>>> +	if (!fence)
>>> +		return;
>>> +
>>> +	dma_fence_init(fence, &intel_display_reset_fence_ops, NULL, 0, 0);
>>> +
>>> +	display->reset.fence = fence;
>>> +}
>>> +
>>> +struct dma_fence *intel_display_reset_fence_get(struct intel_display *display)
>>> +{
>>> +	struct dma_fence *fence;
>>> +
>>> +	mutex_lock(&display->reset.mutex);
>>> +
>>> +	if (!display->reset.fence)
>>> +		intel_display_reset_create(display);
>>> +
>>> +	fence = display->reset.fence;
>>> +	if (fence)
>>> +		dma_fence_get(fence);
>>> +
>>> +	mutex_unlock(&display->reset.mutex);
>>> +
>>> +	return fence;
>>> +}
>>> +
>>> +void intel_display_reset_fence_discard(struct intel_display *display)
>>> +{
>>> +	struct dma_fence *fence;
>>> +
>>> +	mutex_lock(&display->reset.mutex);
>>> +
>>> +	fence = display->reset.fence;
>>> +	if (fence)
>>> +		dma_fence_put(fence);
>>> +
>>> +	display->reset.fence = NULL;
>>> +
>>> +	mutex_unlock(&display->reset.mutex);
>>> +}
>>> +
>>> +void intel_display_reset_fence_init(struct intel_display *display)
>>> +{
>>> +	mutex_init(&display->reset.mutex);
>>> +}
>>> +
>>>  bool intel_display_reset_supported(struct intel_display *display)
>>>  {
>>>  	return HAS_DISPLAY(display);
>>> @@ -31,8 +99,15 @@ void intel_display_reset_prepare(struct intel_display *display)
>>>  {
>>>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
>>>  	struct drm_atomic_state *state;
>>> +	struct dma_fence *reset_fence;
>>>  	int ret;
>>>  
>>> +	reset_fence = intel_display_reset_fence_get(display);
>>> +	if (reset_fence) {
>>> +		dma_fence_signal(reset_fence);
>>> +		dma_fence_put(reset_fence);
>>> +	}
>>> +
>>>  	/*
>>>  	 * Need mode_config.mutex so that we don't
>>>  	 * trample ongoing ->detect() and whatnot.
>>> @@ -110,6 +185,8 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
>>>  
>>>  	drm_atomic_state_put(state);
>>>  unlock:
>>> +	intel_display_reset_fence_discard(display);
>>> +
>>>  	drm_modeset_drop_locks(ctx);
>>>  	drm_modeset_acquire_fini(ctx);
>>>  	mutex_unlock(&display->drm->mode_config.mutex);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
>>> index a8aa7729d33f..c36a075c6b4d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
>>> @@ -10,6 +10,10 @@
>>>  
>>>  struct intel_display;
>>>  
>>> +struct dma_fence *intel_display_reset_fence_get(struct intel_display *display);
>>> +void intel_display_reset_fence_discard(struct intel_display *display);
>>> +void intel_display_reset_fence_init(struct intel_display *display);
>>> +
>>>  bool intel_display_reset_supported(struct intel_display *display);
>>>  bool intel_display_reset_test(struct intel_display *display);
>>>  void intel_display_reset_prepare(struct intel_display *display);
>>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>>> index 110fef511fe2..1a85dfe457f0 100644
>>> --- a/drivers/gpu/drm/xe/Makefile
>>> +++ b/drivers/gpu/drm/xe/Makefile
>>> @@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>>  	i915-display/intel_display_power.o \
>>>  	i915-display/intel_display_power_map.o \
>>>  	i915-display/intel_display_power_well.o \
>>> +	i915-display/intel_display_reset.o \
>>>  	i915-display/intel_display_rpm.o \
>>>  	i915-display/intel_display_rps.o \
>>>  	i915-display/intel_display_trace.o \
> 

