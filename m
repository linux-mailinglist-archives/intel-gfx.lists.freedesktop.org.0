Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A720E6752BF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:48:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153E510E942;
	Fri, 20 Jan 2023 10:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0213410E942
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211677; x=1705747677;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GP3pak5xn1jNRlZrlEILrZ6/xwWzespUtXGbi4sLSGk=;
 b=V0UFeEiv8KB9SOUQZNr92H/DVFgFvtGxO2QCyUhChUuDsoMyCirzuAdi
 MICa/JkRgyYnDQkaSFyeT2C4VCs1zpCQxFQanDOCEG9sBk4vyhVKBKuJU
 aXIXhTT+oy8oHR+UYEz4P+wFafQDV1Z4kHBigrtgmbOdNfRwy6dbqsUKg
 uGbWVXPpR42qAYDGNp7XrXaxdOMBVE7FC7CzXptV3LsgdtfntisieFaTH
 Rj5T0DUcA6+6SS0UeG5zz7w05FwePAiL5Dao9Y5vYCXcO5n6ZGrI8ulnK
 /ggTwwJbHrSICapfRoWe1pAM6t8OCDyl+fOtPVBShHZm31Huz6V2CFeBi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="309128254"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="309128254"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:47:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="729072004"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="729072004"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jan 2023 02:47:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:47:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:47:52 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:47:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nZ9NlFv/T3xK1kctNNFq5MpgXRH92nClUv8fx/jjXvreYaGjRcKijwWZAnHyuC2GSqtCH0lC76k4VzQ30OuJqubrwG1vyybXFa7RXa0zjzLl7J30z0EgMM0n9f4Aih2SVcXF0XZiGXRK3TKLrcwUMvrKaTAPIcokN1z2yIKHAM87x3S8a8E9F+iW9C5xpylvixa5lXejwg8ODv0/r1poZbQbyKryMSB5PE7SZBiVXKGUGzorz4XrT2C0aaGIffsjoLm+xm9DXDu1kvb4+0SsYt0WBXDqmgkbGHb8w9YmG/P+sJAdaCg48SNu20aANQG1xKRpTKhEuo9hqhGJ5i4RBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u1Q8teTwLrQY+QW8Q0hCn8en9x8tSSR0U+UAj+e2Lz4=;
 b=cyjt/i7Fmd8w0MI7stDWz+UGLRJiNLLQsGyTYiPDZ2EnSnZibZFh469isnWiAHZQ+KZQplfnqzF4KK02KQux1FECZo6O/byjlUb58iA9R4sLnhLuUIgg7uTKLoqE62h5WLZLY2iWWN8z9Q+5d8rBZfcTXuwhjDqQYuoelGkt6ln6kpgMZPUUylpSj3Wxj755sZwSEfC2W9yS8JohfLNRXw7y6mFPR+J27jwO/jQETsrMBqXp3QzYBAF84VatF6i0jo//TasXZf3w/kOCnsaP3zVfLBim/67wEotY+Xl9ZYAPpJ5rM+yMZ8Y7y+olT4Apog41Wzi+IlXenbUZgxkTPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 10:47:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:47:44 +0000
Date: Fri, 20 Jan 2023 05:47:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y8pxTcbFcU/dFXU3@intel.com>
References: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
 <20230120010639.3691331-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230120010639.3691331-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR06CA0046.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB5108:EE_
X-MS-Office365-Filtering-Correlation-Id: b0db89db-921d-40f3-d493-08dafad3c31b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w7lvVVRZe6Enc+QZX4XrL/Q0XVksu/iW2moqzrpjcpttL03iaI/Y4RZmezojK1IX4QAMZYGCpt6XWU8pAwxHcu4vcgQJZz6OVoAGOwgfAqGnnyH42WTRBVh3Yf/6YK/0yNTvQQ4YTS+uxWRPJWf4dT7W3K76T2WeSckvR62wegIoNUBaf+aX5Wb+rT45TCxOFPv8QS5SZjFnaRj/xQENTGogLNYBOcCG0mCy7KHBxjjlFvixrYrnyl53IGFSJ8/6SELkYFsLxzd0kpl3SyLpzN990O4sZ8iE/VgRtV5cOw8ZRg+ctWld3bHVESXbgaxtfbaRJCaFllxODDC/KFDz9FZZ9aO9KSM6C6YPAw+3B/Rr3DofrewDJWX8J2zN0my7sZoTinVBPtdeNAa8YQ6eUuWH8r2yJOOId1d/DLF6HzzJ6AWWOB+Pbb4q6tNJdcIes17wJ5fFs4zi42eqtOFMftd+IijFOYVlPFCnC59VRAnlf4Qt3TtTEQ+nND2EdXu6GrBgmJZRuBy+W7fdBeFiOkLZ5S/R5iDc7VccY33B5ZDx1dpVFx2T/52AyNVIBHw1Ze+/FEx1kcPtnZhYpcDGW6z1POI/yM084+XgPp5HSeWmAFMs9BIhuCrTLYSP0EH72bkKmbFN4k1RBOZIH1QIOQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199015)(186003)(2906002)(6512007)(26005)(6506007)(6636002)(37006003)(316002)(2616005)(6486002)(478600001)(36756003)(6666004)(38100700002)(82960400001)(86362001)(83380400001)(41300700001)(4326008)(6862004)(44832011)(5660300002)(8936002)(66556008)(66946007)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TiNyAcrSgaHHq/8GwwUi6XCffjHLI3fxaQG3kgasJX0aZWBzejXsJHhvO8hf?=
 =?us-ascii?Q?7vSX+IpQIwNpIhAawafLUJZZ8ATY/TsNYd4og7e6twbLjORtVabKElziMDR2?=
 =?us-ascii?Q?6ktFSPnyWukv9bbpvXZ/1a8+aNy9ql5YnmEY+P10En4u91CUh7W01zNmU1fo?=
 =?us-ascii?Q?i0bBqLY5Y9Dj8dI7WZFmyaFihteAQ7IVmsjmHI2mPApdImfBmgRBSfXlbNuH?=
 =?us-ascii?Q?wpflAPJu1/Z82zPkkZNKQOCK+qY3ZVKxZHQkuUxoZ0doGBgjvXdyrrsptcqR?=
 =?us-ascii?Q?txh7ia2z9JbiTqDvGsbT7gkm/XceZQk7OCMvCNUzdoW8BhwPUNRUAJACRPtj?=
 =?us-ascii?Q?eNJXFP9V1/jOMqSNZP91j32TEjaA54ieoC98lvHVYPajgyNUHWNl+qCdT+8V?=
 =?us-ascii?Q?SjTyNkuqdjhwrr6zeCYP8vUHAgwLA8bXEVmaAR5MK35/g/O7uU4EtPiW9ByV?=
 =?us-ascii?Q?owJeZgfRzbo6V0LqdE77avfetkjDFVMKFXo30EG0zGU1iiwJLKmdMjqGOx6+?=
 =?us-ascii?Q?z/bZ0xwz0wOo3XaOivSA1XRFs9dCy1Sutsqtk/2ZgoOaj58b26lTq2L8sdzp?=
 =?us-ascii?Q?2EU+ycWNw4OqGIMVRV6V3ao4XHAXtFXbuhudfXrocsty2i3pFBseuSOSx+IK?=
 =?us-ascii?Q?1Dx0BEUUZC7CrI/VAf3aE/UjHGzW5CPV2qHElhgP2gEFzRkc8/vGNrDWgzjt?=
 =?us-ascii?Q?x7Dl/cyEIrfFdw7ArOYWC+7SP9wm1Aci5mGlwYgMDs3n4X2Vjtf3ZNz5apxO?=
 =?us-ascii?Q?u0pj7IaA+aqLnDjDSYDxizoumxcV2cdJhDsC6lVryDh7EA5nU4ke+byg7Tri?=
 =?us-ascii?Q?DSygZh3RPWwggllyNiu4mEqKJb1rIQrEn4qh3Vsn28i6ZCq7RGDs0b7cpnvX?=
 =?us-ascii?Q?tQRTLswWryN0e0UTCzds4BQTRPynQhOLl5Oj385oBBYhL4iF48yJtQhYi9fK?=
 =?us-ascii?Q?KfrGS5BYaWa0qZOSKV6J7KoZ7lKKqMz957FFyqDTnG+EABqy0zbKLxQ3V5HR?=
 =?us-ascii?Q?SLwbOkG0xf79XvlZUjjN990aTdJhu4gfdxJTgVw3vohiWfM74UgajtmPgHlX?=
 =?us-ascii?Q?AdggFg8yuSzHCW5KbQ9oFQqElRE5wNIDqXTVYg1MrPRmBhVuZCZAmSQD5qx6?=
 =?us-ascii?Q?FltlIYNq3HVHAjBTmt791IZc205thKsDkjvHqmbtQnV8p0lK3/iUdiVJHIrr?=
 =?us-ascii?Q?14h/GXzOGhb/ciW8Eenmc567sl6B0x+8QYk9QPGKJAsryAHRkXCpMgTupKRu?=
 =?us-ascii?Q?zE+akfm7thlmQxTt2Jk5YmxweGaQ95Jq4IjTMRc97PTIPJ+3kY+wU+Qwsa0V?=
 =?us-ascii?Q?JSox5/c4IPIpPhYylsv7awge+tiBOoPZYP7G4DRmQAXXa3YkAK7zq5ry9tcM?=
 =?us-ascii?Q?Z9Z35T40XlFRiztD3MCF4w1/eZgTxIXklfGIGDW6pLadooXR9Kncfrm4Zs/2?=
 =?us-ascii?Q?uPACZX6iH4omgKMQZVfBhGso3fWVVHG+GnEFR8AICj0ljHxkwfOyUSeEUIEc?=
 =?us-ascii?Q?F/dZ/5K0U6CA0WXLK+hm3qC/gg2L92qpmomXEycJe/95ts5cg+idXvng4UVZ?=
 =?us-ascii?Q?9FtmU9NBqH8QJ9KkK7eOgcbCz3fW3CKkUiVORCVKg1rHg+o4IqUbWVUXWUnV?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0db89db-921d-40f3-d493-08dafad3c31b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:47:44.7895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G7g1Gyi68DZfYCD2P9ZwWAebBS1x3Ju3iaabgn6kouwpBbtR56nFYD9d9ANXakciglF3Ij9MXBf4PBbk09mYog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add Wa_22015279794
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 05:06:39PM -0800, Radhakrishna Sripada wrote:
> This patch adds the workaround to disable IC prefetch.
> 
> Original Author: Madhumitha Tolakanhalli Pradeep

ditto

> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index c52c5f9ad9ce..47ff4ca2bd61 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1677,6 +1677,10 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
>  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
> +	/* Wa_22015279794: mtl-p[a0] */
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
> +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> +				 ENABLE_PREFETCH_INTO_IC);
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
>  	 * all MCR accesses are explicitly steered.
> -- 
> 2.34.1
> 
