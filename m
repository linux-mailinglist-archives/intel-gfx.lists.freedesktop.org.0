Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDBE86E4FA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 17:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A22010E406;
	Fri,  1 Mar 2024 16:06:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="gzpyuM5h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2066.outbound.protection.outlook.com [40.107.244.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2089210E406
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 16:06:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lOWuwY9um3BwgYK78U1KyYAkoocWmbv4x8T5as1jZSqLZdXxJ0+jH/hO1Nd5CsrCEEa0BcGNXayrVUYbMeo7J6C7kgdptXlvqOZS4oookAWwHE6SlrgNKkGSsMJgyBfGC4sx9vwTsq4anbe24LGLl3ON16Flj1yrA/bZ5zAadk0r5/cfHEECpXCapENEF/EOrAdGEQyvO8o2VXvBskolhr6nE9/nujtwDBC34wxy3slD9k+GJq81QEiZzC8L/r83QPYFT2eSyXAvBu3CIk984ccU9++VU/4gEWwWwt6KCYASxLYEHADkaumGAIl6oEsxyJyp+I5dlrP8ouIwsGkU2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xu4l8XnadyAJMG5sP5GF7BKxLsLIctfxbK20TI+H55g=;
 b=jtdyBYVRcxt1WTNP7o3U20H0PStcJGhd+PPDvoDtn++jYRGowOSmlR7gt5a/ITruBtILXLCdOu3b3Gb+BxHm6TEStAQHLr6RlLLREAY6XTn+mCN0Tttw7XyXn7RmxfphR+uHlhLplxrlRAosoDSFW46SvXf+WkIYIWJ/uYdpySzRziwiAovcpx4PVTyok9fnTJBsfC2fY1d3XU9qXF/eJ8G33jclYR4t7TgfgmPFUrRavpsk5OvGzIU6VqoFG1DygknW/1IRWqX/FjwxGO66a59ogLaijdybrCvxVQC240uw7aXG8BAndWBJR2frpiGQIKTF/h1mb/lkuVElqnwIBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xu4l8XnadyAJMG5sP5GF7BKxLsLIctfxbK20TI+H55g=;
 b=gzpyuM5he+p5u5BMeBzo5buZXbQEcoeeBH01L7kTa1XKikNx6iWDEyGOLbAosjlDqrAXZj5En5wmpKOr8dirslBc0NfapldAqLL7luS+pxiT3dizuSVMmmvfsMw2G85tYLWCRUbbsT96BCEtpcW6lPxYPvNvlJOVOAscbkDVom4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7587.namprd12.prod.outlook.com (2603:10b6:930:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Fri, 1 Mar
 2024 16:06:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7339.031; Fri, 1 Mar 2024
 16:06:23 +0000
Message-ID: <c25fc2ec-bb97-4e16-8258-dc1ddb7122b8@amd.com>
Date: Fri, 1 Mar 2024 17:06:16 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: fix applying placement flag
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: sfr@canb.auug.org.au, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240226142759.93130-1-christian.koenig@amd.com>
 <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
 <zuimrdjaghf7mqykkkmvw7uejsblvi4ryvtch23miqmdq6plyi@u5dwnsxipydf>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <zuimrdjaghf7mqykkkmvw7uejsblvi4ryvtch23miqmdq6plyi@u5dwnsxipydf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7587:EE_
X-MS-Office365-Filtering-Correlation-Id: 84f3a3cf-d455-4bcb-5834-08dc3a098a39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xEpzxZ6bNnIjOZ+/K2RCOQHc3OSl0HMxEhjuMH0f7Lt6XLe8qbwMpogQv/s0fKBDXMRV8lYy2zYwBKRqUFv2f29VxBOYy+wZk71tsxfLM+xrwPfjw+jy0GpGnBlrNe6MUGe44R9KBQjS9Tq+uN2kfgvuPzk9A5uIf1YqReOh09TLEV2H4oul465eSFlMUi+qHiftOkCqW6UKANJQBQqEhwdcw4JomfAyZlSwP1WhzTrFtu6qxbrmwDyB5MEMql/wJ4ZyI1mnP5l3gGhItbLE0km4Z6xK025uoUslhg3J9pD0LKvAFDhYf6M3KdoNR+XyWosPpEaQmO5YJ3cO9Vaxu9HfEsnr3k/0E4NS3QWf7sJ2Y8sW76LKPaEtIRa0JBZUk9L3UEAiPn2v7iaDE54mEhsYYAzDHuvZMyi2pOAJrvyvsA/ZDBWALAhfvZH0fkFs3aYTo3BJDhRK4zq1k1lLjlXFS81sq1/521pkAPiNgby9P9+1pCwyGy7kgenWysrM2vcfwOyuoKJuEup/y6X22uTKoRNbRoBTJF40FJkGH+Ff0TEMTe3QRgSSbXvaGRivX/c513uv+Xk2x5qRwC6zF8KWurh81Pozf5oxWbrhkIHXuYzlTt8gq7Tjr4ndcZmOzlRcYvou+xTABJlnNR9dCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU93V0gySHhmSm1SOXJzNForbVIvT1JxM09BR0RUYVNtT3ZaMEtrZ3FlaWp4?=
 =?utf-8?B?cURoenlZR2FHbnJiNTM2Zysyai83NjhQUFN2bk5wYXhrL291dnJHRXplL3Fp?=
 =?utf-8?B?WGlOL1FHbUhmMVByV0V2ZHBmMzRwRkZWcExacFpQOExkYUlEVFRQRUdLZ1ow?=
 =?utf-8?B?WjI0ZUpIVTBYUExZNm1KUzEybXJXdmpVTDNlRmJ2TWJhVXpKSjZvM0xqUFBK?=
 =?utf-8?B?Y0xYWWZPSGNYaDFOT1BYL3creGM1am1uMkgxYWNNaUdkMEIrT0gzb2EvZCty?=
 =?utf-8?B?WGt6cStRSE5ZaWhROHFiczhidkQ3c0czZW14TElzZGd5QkI1c1dONFRLdTMy?=
 =?utf-8?B?NXJtZElsVXZhVjlIRFVOVkRhWkVPYTN0ZWQxeUhoRDEyMzk3MWNVVnRCM29J?=
 =?utf-8?B?QmloM21jcTJjaUhRM0pFRlcxK21TRjBWS2pQMm5haS9DekMwZ2M0S1c0cTRl?=
 =?utf-8?B?Qy9rOWo3Vjc5VlZkT3p6RUJtd2FvTHQ4WUQrRnRrOVJMbDZUWk9abjI4NGha?=
 =?utf-8?B?MUd2ZUUrNnR3UjlrMnhsL0I3TjFYYWZZM2JRREFXbllpblZzQitEb2dObnVv?=
 =?utf-8?B?R2VhVTVyQWwyOEhHSHRNeFQ3b3lYV0FoMkRDWHAyelh4eFVDTjRCZ2JhbGlD?=
 =?utf-8?B?emY5S2txMGEwVCt0RmI2RzZ6WnN5eWU0SG9YMnQvSmVPY0xYeWFWRjRFSlcv?=
 =?utf-8?B?WFhaZnpKQWJXVS91eElSQ2JhSUNTMG93My9NMFBsdmlYWmZYVTBZR2tYdUxW?=
 =?utf-8?B?L2wrbTBuSTJFSHVmRDN5QWt4cnRlajBldWNDSzQ0SVNwcGd2UDdDeFZQYjRX?=
 =?utf-8?B?S3ZRUHhMd1pweXk0SlM3SDNJTHhxdkhPUjdxOUxhN1cwUjF5OG9RcEt4YUdr?=
 =?utf-8?B?bDVOODlFSS94eTZ2SjFEc01MSWNRYm9raU4xR0s0VUYweEIveDcycVJURnJJ?=
 =?utf-8?B?cXMxYVVONTRmOHBORWwzOTBzMDF3Y09EM091OVVCdVp5R3I4emY0VlNMbWhV?=
 =?utf-8?B?NVJoNzJBdDkyd3o2Uk9xUHhzYk5EajBuMWk3c1VVTXJoTFNhdmFmWis4R2RH?=
 =?utf-8?B?bGNaQVVwdDY3dktDNWZJeS8vaVl5bGFDVFB2djBlMkYyZ1FTM0ZDNUxMWUM0?=
 =?utf-8?B?b0I4S3FzTW1kamY3ZVFmWDlacldPTHhpTVNsQ2xpeFdvOEMrdjJGZGYrVkJQ?=
 =?utf-8?B?UDlrV1lNa0NMelFGSk9OWFBLSUhuM0JHb3ptTUZpU2doZi9lTXQ1NmhQOVc4?=
 =?utf-8?B?SnBUUVZqc2k1QStFWGc5dWVTcnZ4ZkhSYnZRaDh1Rm0yU20xcUtlTmRqUitY?=
 =?utf-8?B?a2llVCszL1MyL085bjRaN0RMVGxLQ2kvMHJheEZwNVpQK1JNbkxaNkt3ekt2?=
 =?utf-8?B?aXE2NDdXei8xVmw1VGRkcVVJU09jQ0diOUs2QkFMaGpmeWkrREc0V1MyMXV4?=
 =?utf-8?B?Q1p2TEUwZnJ6YnZxZ01kdk9WZzg0T0R1QUQzc00xRFZZS01PUVJkaGx4Z0Nk?=
 =?utf-8?B?M1J6NkJFV241MTYxdS9uYTFiNkROSmhXZFNLZDd0TTJNRjBiTzY1Q1g2Y1dD?=
 =?utf-8?B?cGdUa3Y3TWthNjY0NVg5d3A0NDhFclNUeUthYzVKUmRuRG9oUENPMHJPbE8z?=
 =?utf-8?B?eEQ0WEZFNHgxbksra0ZzUjM4MXdkTHdwSzdiZ3FqOXBWdHhHMTcvVXlMT3Z0?=
 =?utf-8?B?M3JnREhISkVJNGc4NEU4andJMkZVYUQzNTA4SlozWEJwREhuUTZINFFiQXZJ?=
 =?utf-8?B?bGFUZTRHTnIxTEZkZmZBUWZ0NVV3MWtpUVY1OXlIc0VPTVdBcTlFbXRsTUpC?=
 =?utf-8?B?b1AzRURDc3NxZDFBL0txOCtyRWJCbm13ZzZuN1JnMFhLNGlXQy9jK0tZMWw5?=
 =?utf-8?B?Vmp1czFrNHFlYWRLQllmTzUrdm9URFkyV1N3bmhkQ2lXbUNob3RXZ1VVUkc4?=
 =?utf-8?B?QVNnVmhWWmxzS3JaNktnQk1hWHBhcnJ0ZFFZZXpkZk1icnd6cjdlUGRIZ1Uy?=
 =?utf-8?B?a2cyT2hCejA4WE53UkZ1WUlZb0FIYm5Qb2JmeUdwNG5UNVpaZi8rc2xWZVJQ?=
 =?utf-8?B?bUtzZGREKzVoRWQybUJOaUtBQXpQK3BxSm5UNVNwTHBnQy9vcG5jWFQ5OUI5?=
 =?utf-8?Q?gMOSQ4IL4CaoX0zRbwK4SgKS5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84f3a3cf-d455-4bcb-5834-08dc3a098a39
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2024 16:06:23.0799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8MAuvy6wiCx5lRa50vKoEGCDz/EJ4GMBxBElp09QGJLGQyjrKGh+vddBBZpeQ8SB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7587
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

Am 01.03.24 um 17:04 schrieb Lucas De Marchi:
> On Thu, Feb 29, 2024 at 02:01:05PM +0100, Christian König wrote:
>> Gentle ping. Can I get an rb for that?
>>
>> Thanks,
>> Christian.
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks!

>
> For some reason CI failed, but can't be related with this change.
> I re-triggered it to see if we can get a green run before merging.

Do you want to pick it into a i915 branch or should I push it to 
drm-misc-next(-fixes) then?

Christian.

>
> thanks
> Lucas De Marchi
>
>>
>> Am 26.02.24 um 15:27 schrieb Christian König:
>>> Switching from a separate list to flags introduced a bug here.
>>>
>>> We were accidentially ORing the flag before initailizing the placement
>>> and not after. So this code didn't do nothing except producing a
>>> warning.
>>>
>>> Signed-off-by: Christian König <christian.koenig@amd.com>
>>> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
>>> Fixes: a78a8da51b36 ("drm/ttm: replace busy placement with flags v6")
>>> ---
>>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> index a6b0aaf30cbe..7264fb08eee8 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> @@ -162,10 +162,10 @@ i915_ttm_placement_from_obj(const struct 
>>> drm_i915_gem_object *obj,
>>>      unsigned int flags = obj->flags;
>>>      unsigned int i;
>>> -    places[0].flags |= TTM_PL_FLAG_DESIRED;
>>>      i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
>>>                     obj->mm.region, &places[0], obj->bo_offset,
>>>                     obj->base.size, flags);
>>> +    places[0].flags |= TTM_PL_FLAG_DESIRED;
>>>      /* Cache this on object? */
>>>      for (i = 0; i < num_allowed; ++i) {
>>

