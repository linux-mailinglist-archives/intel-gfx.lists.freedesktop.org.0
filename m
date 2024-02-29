Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F3486C99D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 14:01:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93FA10E079;
	Thu, 29 Feb 2024 13:01:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="vu932de4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2073.outbound.protection.outlook.com [40.107.96.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A6D10E108
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 13:01:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dmD3IqIt9HYNk01mPzzy9/ORjQp1hhlWBg40E/EMvkeLUVvUC+QXaDxTqA2UpL5AmwwZ0hri30rMGKbjPNia1MmE/yiTABy+HmGQPiFa1HYu2rp6FJQ4e9cFYEyTxsisMzhklgwyZskWztusgjxRRtgHfa1ugtABYCQtkRGOhd6/DUdnuJXg7npP0Dq7+5kaK715J8lvpNHK6FUwYtMDbuBQ+C8fRLYzeZNVh67NTGIRmhKT2Quhfr6aoF8TfXbJW/kp7nxMZg6JMImosOmjfAf7aSVl01ku6GLqcP+2Jl8aVAGgTJBSIk/L4xxBCxAJrGPgqyIBwaffN/CKPWAtJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3JCdg7jPz/EVCjoru+l9ny4EQB64uwpLKUonWtCP0gI=;
 b=KAB2PTUj7Z+UbtphWVtaUoJjzftB7U1qiYfWGYVz4tJJkkyQzqr6rK7dz58FHOZ1u3RJ6j8CylOUm336vs15i2cstns1ih4L5UsmLy5i66u5u5cAIejRes/0VF6a9/f0JrlB3VCL/O6DoRZzM+DdYR+IbTiWpyNoG1fK+cT1gkdy3dPiFUEF4RIFBjom2NsYC7q7kyI8AhDoncDAZj6Ls2ndqhySedY02KSoepDhpgWile/mTSEZzSdBtfClMoxe0KH3vSANm14ThDIxaK4EnqIK2nNB6bhQy7yORvhLWEMAAg3PyKEx0DTQfqDIGhaVqmhp2mt3TKs70i0fVz9llw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3JCdg7jPz/EVCjoru+l9ny4EQB64uwpLKUonWtCP0gI=;
 b=vu932de4mrM23WtF53HIUs3eDbK2SARPMiWuQN0GUmXoftHtF/yreysrNREYyi10GOFJIVXZyzPhMuaz6Z1VnEMxxD5iqSoSn685MupQojKeWWPKeI5pwxArBca8waSYLp3uopV//JVbQN4hKKx2ZNU4+GWLPauY84q+7FvWuYE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6561.namprd12.prod.outlook.com (2603:10b6:510:213::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Thu, 29 Feb
 2024 13:01:10 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7316.031; Thu, 29 Feb 2024
 13:01:10 +0000
Message-ID: <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
Date: Thu, 29 Feb 2024 14:01:05 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: fix applying placement flag
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: sfr@canb.auug.org.au, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240226142759.93130-1-christian.koenig@amd.com>
In-Reply-To: <20240226142759.93130-1-christian.koenig@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0295.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e7::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6561:EE_
X-MS-Office365-Filtering-Correlation-Id: 96e233bf-24cc-4874-dc45-08dc39268007
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IY8fHtH+RNQ1AZWLboTb7fcwjDexIwzNbCEGhCobOQgnlBlm1UEUyZI70zDh1092ihd1uK/LrJ7w2fia2KeRzhOMXWvHO2eoyvWk/IpgUPlHTCculm/hr82ldloF1ocZWFxNe+qPsBNU9YMztDNA0115LtS4wH90JkqxL53AflciZZMkDQyBVJG6dIKHu71IFxdA3Hqa2Q0JhkqJhZcx75FApT8bPO0ab8zrjwwyNyCarAZoUnPp5UEXZZwtP9aLHJkCOigrYfN+fieD6O1sHuJrdetYuXHcV/eUXQj9Wzw8njl8/P0FTSckrZ0wwqRyFyLdQknzYhlTiWn2h87XJ7XGdUuhZ53xNCSRJzVgv4K0tC3ALObyyY6/Cs5PjzybawNNZfoxdFThdl5WI1wNMENSeysLNHrKylEUMifbERVIH6vmMc9Jw8wMiny2gFouJRI+rVSZ9LW6PgyG6H6Qx0R3BuA4ZRH5DYH8KwNbWzPRnxew+uRTjQl2THx9KxxZ3kx4D1hAeqimbENDm8TAKd83HwSSfxLggXWUIBfDmR2qcetalLFJQqitkk+Pd1bUCvwFekCURb6MvIQuZG9KECkICT+sCTWlE5TGiKPODPG0788VhaxRHINpt5wPIc5AU82bjr/T2i+WWK+P7mv9bw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1lOTlgrcTFjL1VFQ0lnZ2VUV3VWVXEwR3B0eWt2c2xJRjRwYW5Bd09YdDRv?=
 =?utf-8?B?em94S1pma0VBOVpqelAwb3FEMTFINU8rR1VyTEE5bHFBeU5Hbmh5cnRoNThu?=
 =?utf-8?B?MlNiVE5HTTFPd2l5WklhcEVqL2w0RXJ2WUxqWnhZbHh5bmtWT2pIYmViZjlU?=
 =?utf-8?B?R2V5NG9vQzVjSVlSVUp3cGJXU2wxOXFadkg2TFFLVXBlK1RlbW1STHZXZjRz?=
 =?utf-8?B?UFl4UDRqb3hBUzNJSFNGa1Nwcjk2OW0vZXJNZEFHWkxFZlU0TFl0MVM2d2Np?=
 =?utf-8?B?MU0rMFdlQUhPT2xnVm02L0Z6SEFrbWlSbjBxa1U0YitNMjRIYkl3TnNKL0pB?=
 =?utf-8?B?a0lnVHgrQ0hjU05nMi83Z1JQM0hwOExiQWRSK3NVZks5WkRLemFWYlI0ai9l?=
 =?utf-8?B?UkpoYjhXaVVvdEpnY2dHL3IwRVZGNTJPTFlOdlhlRGllaSt2M3BCQVJKSWRz?=
 =?utf-8?B?bGNKQ1ZEN3JTcllRQW4yRWQvUGJaK3NZSzkyWEx0ZjFtQU9HdlpKOHZVTzlD?=
 =?utf-8?B?VVRYVWVYdXRqVFVJM3M5R3QvT252Zk1tVE0zTDZlVXEySlZId0l0NWtjSG9h?=
 =?utf-8?B?WHREdzhOR2hjSWVNU1grVmllVFRxTG83dm5pS2dtem1qZjBYdktQTk95Rktt?=
 =?utf-8?B?ZHMxWGUxTjBYTWNPTkZyenMzdjBoRlBYMEkyTFUydkx1MHRqMDM5WDZSajdE?=
 =?utf-8?B?aFQvTWZqT0txRmN0TFhaYlBiOWltTWZoS2tnMGdyanlENWRIbEhOMzRITS9h?=
 =?utf-8?B?Z0FCcGpYQ0xNN2pZWEJiN2hpRllnTUlkazZrOFV5WUUwUEtKTkZRamZvTkpI?=
 =?utf-8?B?dmVnQkN6NTdPM1cwWmh6TXVNV2E0cU52QWU1cWZIV094TlM5ZW1aazRjVkhE?=
 =?utf-8?B?Ym9qRnlEbGtDWlIzS2J3M0QrRkNCMFZrZ1Jla1pYdTFDd2xsMkpRclFJeHFT?=
 =?utf-8?B?U1grd3dhcDdZeFRmQ29TaGh4TlNHRXhrdkE2NlhJWXVwQ3QrWTlCWXZOUzEy?=
 =?utf-8?B?Um5RR29NeXZEeG42cVBuNFpEZ1VyK1hCRXlXUFdsVUdmM0xmRUVLM0tkdlJC?=
 =?utf-8?B?NjU2VDhLZjl6WnBSYXloTnAzOE54d2MyMGJwZllVRG1vVitaVmFXOWtVUmpt?=
 =?utf-8?B?bXVPL2lheWFnSXFrT2dtUjJVZkVXNzZLUTJyejdJUjZIWFZQVm9kU2hWSnNZ?=
 =?utf-8?B?aU9iWVkyMzJkN2dUU2F3NkNHWWhXNCtaQVpOUENlMlRYZDh3TlRJYVpqdldU?=
 =?utf-8?B?a2FwemtaQVdZVnZKZ0ZJVjcrT3pqMGVxMk4xTmo0dGxWcG5vdXdCcG1RQ1FP?=
 =?utf-8?B?Uzh3SlFvWW4vcGd5dEEzb2I5VTBLMzVBWEo5dkdLV3JnUDZzUW54bmlVdG5S?=
 =?utf-8?B?TG1qYlB5dks5NjhKN2s4RVdMajFWb1FnVHR3NWlZQVc1MVJQZ3FJbFlYTUVY?=
 =?utf-8?B?N0NNYnFweUM4VG1SUmg0SUNPU01ZZVpOcVpFbnY3YmFXclQxK2xzL3lJSHJ2?=
 =?utf-8?B?UnhIRm5zUmllZndpcGFneE1vRUFHY0RwVFlYR0dZai9zT09zY2ZyZUV6YjJB?=
 =?utf-8?B?TzNBUFZsMzdEZk5JM1B2YzhXRGJvOHlmaW5oT2ViVkFrK1ZVaWI5YW55UFE2?=
 =?utf-8?B?cnFqTVpSQ21xcVFNMnVOZzVWZjJQNzVuemJ1dXd0MVU0UnBiTDIzQk8yT25l?=
 =?utf-8?B?b1Urc1Myck9wQlp1ak15VWJBaWF3ajVjVWhUVENnOE55bzRzc25mS2hWSCs1?=
 =?utf-8?B?MjNUVXQvcTlsQ3JmeW4vd0pGL1NkTHArSFY2UmZRTzI2UkVVeVFJT0wxYmx6?=
 =?utf-8?B?YndWT1Jqb1pLc01XLzMrc2VGeHQwWENBL2pUS3hGUC9Zb3hSVFhtNktlL0Jr?=
 =?utf-8?B?RitPczFHR0ovUXFJd0Y1dzZWYUtXWlE4YVkxYUFJVjEvNlhUSUNaVmo5ai9z?=
 =?utf-8?B?UVB3NmhSUDdaWWRYSDdTV2t6cWRHek9UTnpWUitOS3M4THJxVFJiTVVaeFdv?=
 =?utf-8?B?cVF1M05FT05PY1RxcllydXo5WFYrZVNDbU5EY0tnMjh3eGhNRGlXUFZkc1lN?=
 =?utf-8?B?bDNUYjFyL3YyWDBQbEpuVitaYWpSbkkxNmtna0hVY2ppMk5VYk13OU1XVGh5?=
 =?utf-8?Q?1JPlkaCt/WGsLfopUkqDs9M9V?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96e233bf-24cc-4874-dc45-08dc39268007
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 13:01:10.2150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yb6DfwcyGpTW12OMZXZNZx9lBSS7AOVfR4OU+Q6SunpVnTXhnVFmYyoFbYhKO9Ak
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6561
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

Gentle ping. Can I get an rb for that?

Thanks,
Christian.

Am 26.02.24 um 15:27 schrieb Christian König:
> Switching from a separate list to flags introduced a bug here.
>
> We were accidentially ORing the flag before initailizing the placement
> and not after. So this code didn't do nothing except producing a
> warning.
>
> Signed-off-by: Christian König <christian.koenig@amd.com>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: a78a8da51b36 ("drm/ttm: replace busy placement with flags v6")
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index a6b0aaf30cbe..7264fb08eee8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -162,10 +162,10 @@ i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
>   	unsigned int flags = obj->flags;
>   	unsigned int i;
>   
> -	places[0].flags |= TTM_PL_FLAG_DESIRED;
>   	i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
>   				   obj->mm.region, &places[0], obj->bo_offset,
>   				   obj->base.size, flags);
> +	places[0].flags |= TTM_PL_FLAG_DESIRED;
>   
>   	/* Cache this on object? */
>   	for (i = 0; i < num_allowed; ++i) {

