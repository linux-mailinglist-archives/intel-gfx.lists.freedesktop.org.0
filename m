Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14255650AF4
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 12:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F9710E0C7;
	Mon, 19 Dec 2022 11:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F30510E05F
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 11:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671450782; x=1702986782;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6u+OsM5KfJyinEiKbEpauFlT8aF2+JNYe6UvKDfmnQU=;
 b=aFQwSzjeuM1zqeTYALGbBD9bnj7Afooi4V/SC/qLJdjeLlgF+F+DXBPy
 l0GiRM49G201YTaXVa0uC8URfeMtmtznuN8qKc8LQcFWGGLleBBI+qoEl
 rv0HrhUFcWW5BBSHMtnIXQqxpWAPRO/C5CAlRWZgDEOWydkUWuWxdeCz9
 Fx/pOEeTjYGVpzmCrOJ6M8bH3MYJc6nznGwPvHbT6c+g7rfnOjozwIhzI
 IZUnt1YhIG3plKrHDRWyMruIByPvz3lJPJEwUrMjCrvMk6O1BKbhD0hcN
 iG0E8fV5yDNpg3I+Xi6QDv4Vw8CUaOl/bdyd89o4D+AqvTEaQ6aDvTgVS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="307007713"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="307007713"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 03:53:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="824826732"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="824826732"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 19 Dec 2022 03:53:01 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 03:53:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 03:53:01 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 03:53:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ukd5/AZB3q7iDAJz8nmvyC8zt6twdgdpOmilZAxwPRsEr4M78RjtlcavCI+YPNMv92OLQGsIBWjgK2hyCRTNLT60xLo3F5ov2g0aLytuEiZ8IbZ5ljxuJu//CxaOVWv/lBduwhiC0/BI4hL1H0GZb2+tO0/jvslZWhGM6tvUv8NUCeinBf/9oma3kBQlH9wE9hG+LD7UVERJnYseUsO+Hfw4ZmsIFUmDHniBH0TIS82s4oEluSuhgQQeSKuoZIRYCyvjfnj2t/vZ9q7Ow+Rmo1kxuZ4+qhhtv+o3hGrKYi2UuaGMLAgEtT3hKFKFB/icPHwqFokR+xAqUaUVi1yToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z7GKZTIhC+85BVWJAjrWpvXKrnKWOxPcdbxx/p4MUgY=;
 b=DhZpfF3HSYg2DiKu8YEtZJCzTqlvJBGR0boYFORnmxRIlVPiY7hsDZQpYpbFSA30Xe+TOhi6NpL8C8bKPQF+gzNhtqHBJk1HCSvATPrdNLn1mPUAAx5UrrbFtxmnJ9MnmdLA+Dp6lJ4sptjQT9NYNdRQmX4sjh1VecLcfJgreym8EKqQ4trFy/n6n6oKMBhH7TQu+4IYEnB45SnXAs414cqJryproou05l0cwKwRCo6YwA+nYkIc/TcrTyECwx/gLxTzy/hzjZZQFwfh90xblCp1By4wKTeLIQM5bJHSf/weIHnrIxkOOwPaKdKCTOP/8qU227IQZZ0FZ4Rw0m5ASA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by DS0PR11MB7441.namprd11.prod.outlook.com (2603:10b6:8:141::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 11:52:58 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f%6]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 11:52:58 +0000
Message-ID: <3dfbc5b9-39d2-3c7b-cfb3-9d86645e9e31@intel.com>
Date: Mon, 19 Dec 2022 13:52:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20221219113649.21926-1-nirmoy.das@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <20221219113649.21926-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0067.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::14) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|DS0PR11MB7441:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c5d8eea-b14c-42f3-8da0-08dae1b792c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GLDeCgVWDnI33H7jwY+zo6ywXsBn8QdN8lM8qkDdI/7pglroyq0UUoOMD/9QBivPqRUqpq+pDLJWAAUNW82r91XjB4FmXqxhdjo7MmjiTa1pQzuEGzuzrzk3/vlij6vWKrOqoldhEFwPMms5yZ5xVhsEqTvgEqFU76xsN7E0p7lHggeE0NjGKa34KLiQgMcgkeJd2ToCaeEfInxxPguM1Bm0WWSozJleY1exHiSCnsOZ7QvQiZcDC1IwzxTJrcwP90UOBveXA9eJEayz07t8RJ5ed+aWY9fhLd49QvYsttudLDB2udNY4nHG+05XZNgdM/iqYna8/2SoQTMH+636cDQ3E3Q6moM2gnvfPIsYWy9xJ/qGfSdUWS5m22cSVgQxpSWbwDn3xsnYsoqovFCoi5p/E55j18YXqfwdm44pscbDkw/h+PeCAJ244L7E7XtMh3x5csHywyUiRcZqxIh51X1nEbr9FmuVw55X68uxb4uAfJHbquuCt9Pca4uuAz74vLxkdEGKe2gFRYwKIoCSE4ypx+NEE+G0G54SJg861HF8Z6K/SnoJJ+xAFvYc5oIW/64x/kXewWP5mhzsURZGrADCh3fY6ND5cIjQDirMO3CmwGlH1n2gnD6HElPegmGFqznxBj/NSdXa2r75PPamLjOnkjTa0HWY2od6QgOJtY2hQseFwWIeytYIiV4T+RqYvZ7Fn3JIU4no8ODqUzqqwlkhAk2sB8Z62qwfXDnnwM0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199015)(36756003)(6486002)(316002)(53546011)(6916009)(66476007)(31696002)(6506007)(8676002)(4326008)(38100700002)(2616005)(86362001)(66946007)(66556008)(478600001)(82960400001)(5660300002)(31686004)(83380400001)(8936002)(6666004)(66574015)(2906002)(6512007)(26005)(186003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzlEVEEycDlkRUVDQ1ZZNVpweU55ZXltREJZT011WmJma0ZVbGtxRkYzSGxV?=
 =?utf-8?B?d05GZE5RRU5tYlhVd1liY1FVSExzU1AyQWEvMUVkYU1LZWhsUFh2aGRjYndC?=
 =?utf-8?B?aG95SFVNdmZ0MlVuUy9TV0pkQmZXakNwcWJ3NDBEbDc2K3VVeVNlT3EvN2Vk?=
 =?utf-8?B?VVJ1UjNhVHRKMFEveEZoS2hmNFMwQnhpRGh2R2ZUMDltU0w2U2EvOHQvUHBY?=
 =?utf-8?B?a3VOcm0wTlRxTmlHYkRBL3lpU2pCaGlYZXdIdE1VWXVtSXkyc0pIY1ZjWS92?=
 =?utf-8?B?Wkx4RHBEUDIvOG5KRmhtS3pPaGVTWDJwclAya1hadFZyVFY5UGMvbldKUGVF?=
 =?utf-8?B?VllKT0xrazRCQ2xDMzJGQmpBc0dURmRhcCs2UzJkZjlUTE10N1Q3TTM2cjZH?=
 =?utf-8?B?Uzc1eENJZC9vRUNuWXpVTXdJMDFPZGZFQ2RPbC9xbE0wZzJNR3lxbTBnQzUv?=
 =?utf-8?B?VU1tSnEya3ljaE1FOXQ3aUkxNEY4L1ZtTnliVkw3UlNZK0hWUlBseFRxek9W?=
 =?utf-8?B?TUpDMWM0WGxEZHhVbnZYM3J3ckk3M1c1Zm0zVUlLc0RlU3VJNVpjMUFkaW1q?=
 =?utf-8?B?NXRjeHpRMnNaTWNUU2RsZVMzNGs4Wm8wSUJxYUc3RE9QT2RHb0NmOC9MUmlt?=
 =?utf-8?B?UnVDL1JINDBaRlpKYVl0SS9mWWllY0RSUEh4VE9EaVlGUk55VnpVT0lqREph?=
 =?utf-8?B?cW9qSmpvbk9jVEZhckdXUVpaRG5yNnBEK3Z3U005OHVtaVRBeEprcW9jQXJm?=
 =?utf-8?B?elphb1VyYmNRbHZWVmhIZ0Q0YTRiUForYTJpdERJWW1Rd2lNZlQvdVU4UTdn?=
 =?utf-8?B?K1dBaTRDWmhIRkxtVmJmQXVUMG5BMkxad0NhZkYwUWY2U3l6dHlpTU55KzhJ?=
 =?utf-8?B?bnFoNTFKVUk0NStQVldaVnhwa1dwQ3JlNGw5UC80MVJBc2lJci93THlmOFFX?=
 =?utf-8?B?YzNGUjBCVEd5Z1ZnSzUyUWs4WUZ0cGZOaThod0dhRm5HZVhvSW5aYWpZakk4?=
 =?utf-8?B?K2N1MW03QXo5dWM3aWZkcjZTcjdPTTJ1NFVyazFRcWdnUGJVRXJmR2pyZ2dQ?=
 =?utf-8?B?RFV0TDQ0NFh0WC94cjFNWWh6RnAySlBJeUsraTFGbWZOTjFjKzh2L3dSTHo0?=
 =?utf-8?B?M3IzM2VYT25tVHV4R2lKaUtzY3NYUzdydVpZcEduQTlEK1dCQThRejgrSkgw?=
 =?utf-8?B?c1AyeXhDYXZNZEFyclRpZ0dLY3ZXREVjMXpmU3E0aEtTemRoRERXdktnSFRm?=
 =?utf-8?B?TXVQS3RoS1BSbTNPcUxINFNtRXNSYkNOUGRCei9QakJnL0tTdzQ5VE9FMWJz?=
 =?utf-8?B?OTNUWC9Ra2NSQVZNdENNcE1BK3ZKbXVoZDZsU2pyQXZWYjJOa2pIOWlsOGJ0?=
 =?utf-8?B?U29DK3RoTFJpcytROVExYisyZS9XcXlidG1PVTFncmMwMVJ3SXdydUhCdE15?=
 =?utf-8?B?M0tGYXp1MVlSRitLNEdqZkVWQS9WUVFqaUZlTzB3aHJPa2pjam50TWJRMks4?=
 =?utf-8?B?QytTZ3crY25aR0J1eTE5d3pNdXRVWkpyZUVWOWxqZHZtM2sweWE1OUs0TkM1?=
 =?utf-8?B?RDV5TmN6M1dlNFJDM3doeGFzaWg3THdEYjdabTNJc1BCN2UrTy84QTMwK0k4?=
 =?utf-8?B?dDNIT2J1QTZqUitzODdTZjZHQjZUZjU3M2oxeXppeEdoaVh3UUwrbFA1ejNr?=
 =?utf-8?B?cTFFYjdleGVac0JlbU5kT2lybDFUTTJkUVpOWDI3QXFQcmtQb3J1OFFWTEda?=
 =?utf-8?B?cnA0bklrUXVCczZ4WGxFb2IybVNqRTk1Z0p3bVpUNFdROExlaEZxUG9hQnpT?=
 =?utf-8?B?aExvRFpxK2tIWDJUMTBlVDI1ZnNFQ0YyWWFuZThrYnljaVlDYjBYL00xbGxS?=
 =?utf-8?B?dmR1T3pCbkhTMGpRclc2YzFMbkdpRkVuNWkyc3FSMWhlVVRoRHg2bWZmZC9h?=
 =?utf-8?B?eW9ldHdtNzlkZVpja3ovS2FjeE5iREUyN2h0dUdxRGNZMkpvOW5RQjNUWEs0?=
 =?utf-8?B?bVVCNTFFSWdsVXZobHpUTFhBME04Wk1FeE9sQTl5aEtGWjFBRGpub2JYUnU1?=
 =?utf-8?B?OWhvY25UMmhDVXI5Q1Q0YjRnUEVMZlVxb0JSb0Z3TmRpNlV5eG0xdFg2K0xQ?=
 =?utf-8?Q?t4sOOMvSrk+1suljgPwkBnaPd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c5d8eea-b14c-42f3-8da0-08dae1b792c2
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2022 11:52:58.6491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PSnJ7aFQCA+UMR8J2JT+vpA8qFY5+gv3/mt+3r3hVIuXql6yQ4fI6+B/R/xBeEJT4nVcfXFIyQT44t7sTSUEaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7441
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Accomodate for nested dma_resv
 fence addition
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This needs better explanation and probably CC to stable.

Please ignore this, I will resend.


Nirmoy

On 12/19/2022 1:36 PM, Nirmoy Das wrote:
> We have below nested fence slot reservation and then fence addition
> to that dma_resv.
> dma_resv_reserve_fences() from --> ttm_bo_handle_move_mem()
>          dma_resv_reserve_fences() from --> i915_vma_unbind_async()
>          dma_resv_add_fence() from --> i915_vma_unbind_async()
> dma_resv_add_fence() from -->ttm_bo_move_accel_cleanup()
>
> A nested dma_resv_reserve_fences will not reserve extra slots and if the
> BO comes with lots of fences in its dma_resv, we might see:
>
> BUG_ON(fobj->num_fences >= fobj->max_fences);
>
> Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 7d044888ac33..5ac4c1c2403c 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -2149,7 +2149,7 @@ int i915_vma_unbind_async(struct i915_vma *vma, bool trylock_vm)
>   	if (!obj->mm.rsgt)
>   		return -EBUSY;
>   
> -	err = dma_resv_reserve_fences(obj->base.resv, 1);
> +	err = dma_resv_reserve_fences(obj->base.resv, 2);
>   	if (err)
>   		return -EBUSY;
>   
