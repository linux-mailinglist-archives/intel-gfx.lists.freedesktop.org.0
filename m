Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C736E7C4DFB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3677A10E5D9;
	Wed, 11 Oct 2023 09:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AB210E5D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697014919; x=1728550919;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nD+M1UEJ03+IPzPrbETA7f0UO1THAGfozY+563wbMm8=;
 b=jR2iVqFbOEFDjvzYLmyYBN0t7ReuFvWwfPrTse8eto+K2Z7nLLWziras
 wUPz1Puy3wNJjCBGaaNHBlEgVQ2GKTjdsI/YEMozdo0RoV5rNIIXhfOJM
 R+uILWWeS0XefbyLM36PEWJdLkDMu+AgNuRmNR4/yDVI/uyNwulbosyMF
 uwodRd0pI8gtAFhPNz/31yQmp9PeSfaCcJONYQ5qJDXkEW3Y6TDl6Dzu1
 r5NqUXqGUA1UFi4sdqlMewK/hmFfbEVe/qwxH5bFzMmpoCzrPZWTZQHM9
 Mo9SzRJKJAqOHSJnyIfiRb5OyHqGugXjxTQi4/0DyIdNJT5sLnw6/ZCcR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387457455"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387457455"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:01:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819611824"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="819611824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:01:57 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:01:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:01:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:01:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E0sTitIxIzCyREG+9vohk4X60IEPjZwb4JIDLc0mlapApT2o7Fe2GowttYBsyAVQg4Ljj8JWWg225IY+zFfxHI7fSgqypygZL2SULY7/rpEs5cqxNYcstIFXPaRaakUCRiYbGYmYYe/mz+KCnUD/+M/aQoFvDvCZJj+s6uNqfUlPbyRUY9XLoNaqf2ziSLSGRirigejMCnKnlsXzsVzM9aLn5VK+shGzygjTqpjgfe1NVIWVa0dWqOnixHJft8qAis9zsDJIPVDLuWkdijfyK+SpQCLPy/jkV8gPDTLs6aVM/RiTUcamNxbpt9905pJpfjHaKWHbvnK/cMgm3NkvRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S65jItUx1Zw97iFzJnnpeE1RYleILxr0cBcKlYiqeVc=;
 b=jDpH5ibdU0JYLL/gC37Q8OjeHBTPbCd+FECYbLJJc5YCh24HC+U6waHkYCu/ozTsyrIUfAdNRaIl9OT/v/9BAL6Hb6VpyLl8fd52aLH47cp9bLiirkS7QG19PpkifqPJG6Ua2PKqRJcZPol/2hQ37isC2G6MJd20aaoKGoCuPPK8/CDIEYQIgYYZqw2VJ6Q9XQer/ABBKZ0OCkcg2g/cXHFUPRpcv4eVHRDYe0usfuB32308YTrVxaxAsblfJYGiX5uCqrNuerV5bshTByfU1/pix8qaa2q5NAVzP3wgbueNNEFZTF4izGMEycRuCTsSobs11zSfBa6QaXb7OLuIFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:01:47 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 09:01:47 +0000
Message-ID: <858b3dff-ed25-6468-6eb9-f4d1a5a2dc90@intel.com>
Date: Wed, 11 Oct 2023 11:01:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-4-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB7PR05CA0047.eurprd05.prod.outlook.com
 (2603:10a6:10:2e::24) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 1df5d9d7-1139-4d7b-5cec-08dbca38b2bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NnPT4T2AfRwMVfhMZXkNVGmpTLUv/fwEFh4ByTtAY4jrUBcu/WNiiel2w/xUsGGBXFl2LPH9Jc1NT+CwIpbA+rxv0SoTHlW0JnYuva8ssW0Rv3Nu08gMrr6K3N1xmounPivcWU6BYWKqzO6vCnWew33A79JZOkPMzhQuXtRc/EiUkQoWSJI5OhO5r685lG6fy2QgBaka/pn3VEzh5nfPQwp9KvMLY97sC/GO5Eyo6Sv6qeN4TN8yRgmSppEj4oWpEGpfQZMG3I7/S5bCU07aMK7BngSvE28Mb0SGNlnavsXpl8kAjta6nYhkQc0pjoWxyJD80u5nR/4aWA5OaXOHvhLlUnbCYq98nSsBc1+DT8Fah1Rzv3dkZ9IsJLEXYMX9cmM/LZjfqTsB2N1N1pYHjFW6177ucdy2mZgZHj+eOUqSd+TbjrRPZ5iDwk//4+/A6n/KTSRDvniVTC3t4PSBko5Pmkl9aT5A/vyQuTs0Ii1uquo3B/PyoH5FIShJJaWiZUhN2aJ5VQXCx0ybbWcbxjLnG6J094QdaTr+nYC5qH7OutWZ6RFjDigDU7ZYwpswYMSNwQHFnvkXKGctJUnrRbqoKozKCvtZFC2Gn2LvheL5X33xhL2g6T7dbjI76aC3i5JBtvXBooZQZY2R1vClHg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(31696002)(86362001)(36756003)(2616005)(6512007)(316002)(6506007)(6486002)(2906002)(44832011)(66476007)(53546011)(41300700001)(478600001)(66946007)(30864003)(5660300002)(66556008)(26005)(6666004)(4326008)(83380400001)(8676002)(8936002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGdUckVRZzlHdUl6S29ZVGlhRGNGRVFVUXpoTzhmV2FoN2JrbC81S1FPQjlZ?=
 =?utf-8?B?bUppTFBFODFvZEpIaDBRcEo0dEVETDliU1ROMGNmMW12Mml3bjJheUNpNTls?=
 =?utf-8?B?MlJXNk43WCtYbGZvaVNuVkRiNlRrUmwzbk55emM2bUFlODN3dXBYUTRLS015?=
 =?utf-8?B?aHBRZFp6WHJ2TGJiWjdLdEZwQXV4R0FDKzZaeGRHWUF1aFZzVFJSR20zU081?=
 =?utf-8?B?WWxpMDk0T0ZxRnBkK2U3bGVxa1JpbHVybjNYWHZhTzNHTjV1Zk1mRXhZTlAw?=
 =?utf-8?B?UXh0VzZEME5ONE44ZmtOVmh3Uzk5ZVpnekdJTkFoakpXMm56RW9XMm1oTktl?=
 =?utf-8?B?MTVVT05ycXhoRFF4WlNpTjdyUE1Sam9FdTdpQmYzZUNiMy9vSUJYWUV0KzZn?=
 =?utf-8?B?L2JSbXpFeTdCWWV2UjMzTTFtZFgvYU1JNHJ6TmhNbHN0MFFOVllJUFBkOUNL?=
 =?utf-8?B?cDZha0swN0JvTVRpNU0zUDRudEpWOVlhUDR5ZHdIU21MMUlmRUMyNUVLUGZO?=
 =?utf-8?B?UHVQaTAvdE9pV2MyTWNnYzFZUnh2eXZReVNjR0lOTTBzVTN5akF0TlRwK3Uw?=
 =?utf-8?B?NmZFSnJsMXMyc0oxTzQrbzJVWGo3MUtFanlZWVcrV2pPNmVyTE9FbjFwa1B5?=
 =?utf-8?B?R0RRSEo5cWM3UWNLc01KM0tWWG1CS0pzVk0zQUtsT24vRXBVeGR5SnBwamRa?=
 =?utf-8?B?SG9mQy8rTmxNZ1NnYWNGeFF4S2hzSmsxNmFOU1l1MFVBWHQ3ZHBnaTVsbWZV?=
 =?utf-8?B?RGdqc2o5cVJGMG9pQ21uVitncktpYmZNWUN3bTJlc0FzZFBtQzB6QmpvKzFj?=
 =?utf-8?B?dmtuamNBN0NneGxwZ0ltVDRnN0NsOURaNkxkQ0Irc0ZaT2crTTBSVzRZbS9F?=
 =?utf-8?B?dmtsanFjSDdQTEF4R2trQTBhN0tYUTM3d2lIVGFjdDloQ1JwN0tiVHR4TkJ3?=
 =?utf-8?B?eVV0VzlSVlpkTUtNSUVSN3NyYTVlM2QyNVpLRmY3dUQwR0lZMDJ1Yit1QTY0?=
 =?utf-8?B?WWZJVWdINUJlZ0RWcEZqa2wwQ1A2OGdFVE02R2pOMHVRR1VyZlg2YTNZV0tr?=
 =?utf-8?B?a0dtckFHaHBqcXJ6aDFsLzRXVnZ2d2Qvb25IamVLcHQvV2tNd1ppN0xwQkRH?=
 =?utf-8?B?Q2xURW1sWk4ya2EyaW5mK1FwVENSWTJRNFcraFBDdTNCMGk0WmdLb3lTZUVI?=
 =?utf-8?B?dEhrd1czNzl5UGxhM0V4ciszR21aMnZvUVRlQWNTOVd3eWZMUlpsZ3F1Tk1Y?=
 =?utf-8?B?NS9nWjlwelhKUzMyTTNtUmFJN1dCbXN6SlFDMGdKeUQwVm9TS3VxMmhFTjFt?=
 =?utf-8?B?QXo1dnRoei9RL0JjS1NQU014WW9MaUU1ZnhKVHQ2WmovZm9RRGNiQ3hHY05i?=
 =?utf-8?B?azR5WTJGYk9BamFSeGRqcFR3T0pPMHhzSjkxR3cwT0VSLzQyUHUzcC9FNVdl?=
 =?utf-8?B?YXlZUlhmT053SmM1eEp1YXRsekhrQTRuRG5PMkhObXZnbUdhTkNnalorTUUx?=
 =?utf-8?B?WWZ5eDNPbVFFcXU0UnZPS3BEeTFtcnlBcUVZa21Fdm5wcVpaWlpCSnlYSGow?=
 =?utf-8?B?U2dWcHdTR3ZVYjhHWHNKY0NTZnV5WXpvUGdNQ2FucVVNSjYyMmt4aGNDRlE5?=
 =?utf-8?B?aGpoY1FXSzVFekkxQ2dCVm5MUUc4WDdYOEUyVlFQVS9tcVlFYnpCNm90SlQ3?=
 =?utf-8?B?UGUzbDk1MTNZVHh5NlRicUxCYVp5a3VkcGswZUFucmFwR0hLa1pyZ3JmR21o?=
 =?utf-8?B?ck1PY2FRZ2dHcFBadEgrUlFjVSt0dGxLVmRvUGVIeWxSMVBEVFhHZlFRNE0w?=
 =?utf-8?B?QWYyMXVFbGdmS2l2bDFBR3VPcHM4aDRjVU4zRjdqSDFPNFNBRmtSR0o0RkZq?=
 =?utf-8?B?ekdsOG5OQmUvM2l1RGhTNUVqU040ZzRSME51VEllZ3JTVkphZnA2Sk40V09J?=
 =?utf-8?B?UnA4RitvVkRpRUtIVkc3NmhuRlNKWm1DUDlMREJoSVprVkIwUGd0QW9PaDY3?=
 =?utf-8?B?cm5sc0hUWW42YTc5RWVPUnJJekdmeVJlb3dTTXpBYTgvekZQRmtVekUyOEVF?=
 =?utf-8?B?Q1U3M1paRzF4dEQyb3ovcHZlbldsMmZCRTJqOFNPOFQ3WHdXeWZzNVBxRGIx?=
 =?utf-8?Q?3ZbgRei06IY1PkmRl5oBWEa8s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df5d9d7-1139-4d7b-5cec-08dbca38b2bf
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:01:47.0792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X53twRJfzCwlZ+j+Zo1AozS3dd0Xz8S6NHvsTtO/wikmUsZN96H3Qm7Ubad15vahE3nVH8s+Khq9K2LnYTkzsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>
> The GuC firmware had defined the interface for Translation Look-Aside
> Buffer (TLB) invalidation.  We should use this interface when
> invalidating the engine and GuC TLBs.
> Add additional functionality to intel_gt_invalidate_tlb, invalidating
> the GuC TLBs and falling back to GT invalidation when the GuC is
> disabled.
> The invalidation is done by sending a request directly to the GuC
> tlb_lookup that invalidates the table.  The invalidation is submitted as
> a wait request and is performed in the CT event handler.  This means we
> cannot perform this TLB invalidation path if the CT is not enabled.
> If the request isn't fulfilled in two seconds, this would constitute
> an error in the invalidation as that would constitute either a lost
> request or a severe GuC overload.
>
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
>
> The additional complexity incurred in this patch will be necessary for
> range-based tlb invalidations, which will be platformed in the future.
>
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 +++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 ++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  21 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 186 +++++++++++++++++-
>   7 files changed, 283 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..a1f7bdc602996 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>   	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>   }
>   
> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
> +{
> +	struct intel_uncore *uncore = gt->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +}
> +
>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_gt *gt;
>   
> -	gen8_ggtt_invalidate(ggtt);
> -
> -	if (GRAPHICS_VER(i915) >= 12) {
> -		struct intel_gt *gt;
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		gen8_ggtt_invalidate(ggtt);
>   
> -		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		if (HAS_GUC_TLB_INVALIDATION(i915) &&
> +		    intel_guc_is_ready(&gt->uc.guc)) {
> +			guc_ggtt_ct_invalidate(gt);
> +		} else if (GRAPHICS_VER(i915) >= 12) {
>   			intel_uncore_write_fw(gt->uncore,
>   					      GEN12_GUC_TLB_INV_CR,
>   					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	} else {
> -		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> -				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		} else {
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		}
>   	}
>   }
>   
> @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>   	}
>   
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>   		ggtt->invalidate = guc_ggtt_invalidate;
>   	else
>   		ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 139608c30d978..4bb13d1890e37 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -12,6 +12,7 @@
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
>   #include "intel_tlb.h"
> +#include "uc/intel_guc.h"
>   
>   /*
>    * HW architecture suggest typical invalidation time at 40us,
> @@ -131,11 +132,24 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
>   		return;
>   
>   	with_intel_gt_pm_if_awake(gt, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
>   		mutex_lock(&gt->tlb.invalidate_lock);
>   		if (tlb_seqno_passed(gt, seqno))
>   			goto unlock;
>   
> -		mmio_invalidate_full(gt);
> +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +			/*
> +			 * Only perform GuC TLB invalidation if GuC is ready.
> +			 * The only time GuC could not be ready is on GT reset,
> +			 * which would clobber all the TLBs anyways, making
> +			 * any TLB invalidation path here unnecessary.
> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_engines(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
>   
>   		write_seqcount_invalidate(&gt->tlb.seqno);
>   unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..33f253410d0c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,8 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>   
>   #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>   
> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
> +#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
> +
> +enum intel_guc_tlb_invalidation_type {
> +	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
> +	INTEL_GUC_TLB_INVAL_GUC = 0x3,
> +};
> +
> +/*
> + * 0: Heavy mode of Invalidation:
> + * The pipeline of the engine(s) for which the invalidation is targeted to is
> + * blocked, and all the in-flight transactions are guaranteed to be Globally
> + * Observed before completing the TLB invalidation
> + * 1: Lite mode of Invalidation:
> + * TLBs of the targeted engine(s) are immediately invalidated.
> + * In-flight transactions are NOT guaranteed to be Globally Observed before
> + * completing TLB invalidation.
> + * Light Invalidation Mode is to be used only when
> + * it can be guaranteed (by SW) that the address translations remain invariant
> + * for the in-flight transactions across the TLB invalidation. In other words,
> + * this mode can be used when the TLB invalidation is intended to clear out the
> + * stale cached translations that are no longer in use. Light Invalidation Mode
> + * is much faster than the Heavy Invalidation Mode, as it does not wait for the
> + * in-flight transactions to be GOd.
> + */
> +enum intel_guc_tlb_inval_mode {
> +	INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
> +	INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
> +};
> +
>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 818c8c146fd47..6af65d44b1a02 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -79,6 +79,18 @@ struct intel_guc {
>   	 */
>   	atomic_t outstanding_submission_g2h;
>   
> +	/** @tlb_lookup: xarray to store all pending TLB invalidation requests */
> +	struct xarray tlb_lookup;
> +
> +	/**
> +	 * @serial_slot: id to the initial waiter created in tlb_lookup,
> +	 * which is used only when failed to allocate new waiter.
> +	 */
> +	u32 serial_slot;
> +
> +	/** @next_seqno: the next id (sequence number) to allocate. */
> +	u32 next_seqno;
> +
>   	/** @interrupts: pointers to GuC interrupt-managing functions. */
>   	struct {
>   		bool enabled;
> @@ -288,6 +300,11 @@ struct intel_guc {
>   #endif
>   };
>   
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
> +
>   /*
>    * GuC version number components are only 8-bit, so converting to a 32bit 8.8.8
>    * integer works.
> @@ -515,4 +532,8 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>   
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 03b616ba4ebb7..f4ca91c0749e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1142,6 +1142,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>   		ret = intel_guc_crash_process_msg(guc, action);
>   		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(guc, payload, len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> @@ -1213,6 +1216,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>   	switch (action) {
>   	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>   	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>   		g2h_release_space(ct, request->size);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 123ad75d2eb28..8ae1846431da7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -22,6 +22,7 @@
>   /* Payload length only i.e. don't include G2H header length */
>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
>   #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> +#define G2H_LEN_DW_INVALIDATE_TLB		1
>   
>   #define GUC_CONTEXT_DISABLE		0
>   #define GUC_CONTEXT_ENABLE		1
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2cce5ec1ff00d..8e5a79ecfc2a2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   
>   void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>   {
> +	struct intel_guc_tlb_wait *wait;
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> +	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1826,6 +1828,15 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	xa_lock_irq(&guc->tlb_lookup);
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
> +	xa_unlock_irq(&guc->tlb_lookup);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1959,48 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>   static void destroyed_worker_func(struct work_struct *w);
>   static void reset_fail_worker_func(struct work_struct *w);
>   
> +static int init_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	int err;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return 0;
> +
> +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> +
> +	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait)
> +		return -ENOMEM;
> +
> +	init_waitqueue_head(&wait->wq);
> +
> +	/* Preallocate a shared id for use under memory pressure. */
> +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> +	if (err < 0) {
> +		kfree(wait);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void fini_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +	if (wait && wait->busy)
> +		guc_err(guc, "Unexpected busy item in tlb_lookup on fini\n");
> +	kfree(wait);
> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>   /*
>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>    * at firmware loading time.
> @@ -1966,11 +2019,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   			return ret;
>   	}
>   
> +	ret = init_tlb_lookup(guc);
> +	if (ret)
> +		goto destroy_pool;
> +
>   	guc->submission_state.guc_ids_bitmap =
>   		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>   	if (!guc->submission_state.guc_ids_bitmap) {
>   		ret = -ENOMEM;
> -		goto destroy_pool;
> +		goto destroy_tlb;
>   	}
>   
>   	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
> @@ -1979,9 +2036,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   
>   	return 0;
>   
> +destroy_tlb:
> +	fini_tlb_lookup(guc);
>   destroy_pool:
>   	guc_lrc_desc_pool_destroy_v69(guc);
> -
>   	return ret;
>   }
>   
> @@ -1994,6 +2052,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4683,129 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
>   	return ce;
>   }
>   
> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seqno)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->tlb_lookup, flags);
> +	wait = xa_load(&guc->tlb_lookup, seqno);
> +
> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		guc_dbg(guc,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len)
> +{
> +	wait_wake_outstanding_tlb_g2h(guc, payload[0]);
> +	return 0;
> +}
> +
> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
> +{
> +	/*
> +	 * This is equivalent to wait_woken() with the exception that
> +	 * we do not wake up early if the kthread task has been completed.
> +	 * As we are called from page reclaim in any task context,
> +	 * we may be invoked from stopped kthreads, but we *must*
> +	 * complete the wait from the HW.
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout = schedule_timeout(timeout);
> +	} while (timeout);
> +
> +	/* See wait_woken() and woken_wake_function() */
> +	__set_current_state(TASK_RUNNING);
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc,
> +				   enum intel_guc_tlb_invalidation_type type)
> +{
> +	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	int err;
> +	u32 seqno;
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_TLB_INVALIDATION,
> +		0,
> +		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
> +			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
> +				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
> +			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
> +	};
> +	u32 size = ARRAY_SIZE(action);
> +
> +	init_waitqueue_head(&_wq.wq);
> +
> +	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
> +				xa_limit_32b, &guc->next_seqno,
> +				GFP_ATOMIC | __GFP_NOWARN) < 0) {
> +		/* Under severe memory pressure? Serialise TLB allocations */
> +		xa_lock_irq(&guc->tlb_lookup);
> +		wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +		wait_event_lock_irq(wq->wq,
> +				    !READ_ONCE(wq->busy),
> +				    guc->tlb_lookup.xa_lock);
> +		/*
> +		 * Update wq->busy under lock to ensure only one waiter can
> +		 * issue the TLB invalidation command using the serial slot at a
> +		 * time. The condition is set to true before releasing the lock
> +		 * so that other caller continue to wait until woken up again.
> +		 */
> +		wq->busy = true;
> +		xa_unlock_irq(&guc->tlb_lookup);
> +
> +		seqno = guc->serial_slot;
> +	}
> +
> +	action[1] = seqno;
> +
> +	add_wait_queue(&wq->wq, &wait);
> +
> +	/* This is a critical reclaim path and thus we must loop here. */
> +	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
> +		guc_err(guc,
> +			"TLB invalidation response timed out for seqno %u\n", seqno);
> +		err = -ETIME;
> +	}
> +out:
> +	remove_wait_queue(&wq->wq, &wait);
> +	if (seqno != guc->serial_slot)
> +		xa_erase_irq(&guc->tlb_lookup, seqno);
> +
> +	return err;
> +}
> +
> +/* Send a H2G command to invalidate the TLBs at engine level and beyond. */
> +
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
> +}
> +
> +/* Send a H2G command to invalidate the GuC's internal TLB. */
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>   					  const u32 *msg,
>   					  u32 len)
