Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7885AEB54
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 16:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039C510E68E;
	Tue,  6 Sep 2022 14:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559FF10E6AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662473286; x=1694009286;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=M/XNKhuvGIpKx3zH+7p7K6SzJIBbfWgaFsGC7OIVtwQ=;
 b=egcntr1rN6pHHV0mpYcURgx+0ysB9p0Y5gNwynwYN0qnu675Az6+mUnT
 mpqdtmCEt7pGKEOrmqpNiLzH91hx6NigSw61q+TqHPNvrgASSXk1Y/L8N
 TaXSZRyRiR02ozvY3QapfzN47d/krG/aq4EUc0JKT+GjPyiaTyTb1SFLm
 IRZ61skS5upDuTJn1UTytBwfWnpitLyHfDQ7cu5BSxsO1967+bABRd154
 pv9gGJb6810Y5qjGFqUVRbW97Fm96O1obbfKZie8Itwiiv7JE7BUBd7z9
 Fssq+59JPHPXgNh8CbRDa8pKG5sOgsxpcg8A/SDAwbmSs4GfcUAAVicVN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297914488"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297914488"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 07:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="565105618"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2022 07:07:47 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 07:07:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 07:07:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 07:07:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 07:07:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnjWPmgYVv0Xt4+gQmlrRThZoNCoEO9fC0tB4zA/pqhQm3jmxC2GUEl1gSqX6Y+tB3k038kbXC6zLFRfnsJVQiPaVTpWGlcpzzK161sCzrVkDsrt7cRmh598HXld17FSCUe4hf7RsdN/k63lnvMW9jlzhs/5t9zSroGUBdmXl8qWy/Gh5v1aGM/sPZBbiv3Zbd8N+Z3dWUjEgHimCiIUXinJl7UJLzjiE8sZ3H0JdcE+yg3XL8UZ+XL5OnFWjlf53577dGdf5FfJOTfnoi1Gb3d+HWUv5MsjYsIxFTaFBGm5m+2liAL4cP5NYtEr2XSp6mg98TNOebiutUTWwe2xzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MrpbbaZaADGZ88vOcPM+tEUL7zsx6/bJEOEsF7cVKkY=;
 b=AdmdNj4e56Xt1TKWlvvAE1ptWJ3lKJ/8QnXYN8vYDlgUTd+mVFFaoFzL3UHM6enWu4jWMKr7SBBXsvkb9BgBf4XiNVREnS/rJfLNgPiswFf0RzxDTx96Q0jNpC/HZluZh57f8fF0K3KG1mbaQ2G9opCEDIU4jCzfUcdEjmLy6E7rb1N8B0jgkz9+/294qOtHRtQiXjGC7Msd6ZDsgULQ3qQDxeaGDvWIMvzVy+TZq4y7C+ijO0d8v8cMAkLg3ocqSsEkXKR8bXCpemMP85mjCYAQQqBhAUSPScEKabe7HSQTI6HyM8slB8FG6nYBnbV/dvJpoFLWC/GUggXpQPMXLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 14:07:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Tue, 6 Sep 2022
 14:07:44 +0000
Date: Tue, 6 Sep 2022 10:07:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YxdULUrti6KqP5ms@intel.com>
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
 <20220902235302.1112388-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220902235302.1112388-2-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40cdffd6-ad45-4560-b362-08da90112b73
X-MS-TrafficTypeDiagnostic: BYAPR11MB3413:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qryl72h4QrdDFc0bjVUg3unaj6Xb1/gjNXtpjoKdZH1z8kqNqhvHI8rLf/nBGtY0pPcWKA1up3drnrjBYOLyiSip5DUllaskA8zxKvmYNoby1BFyc92u+d0NPnFXKJsgD1tKVaaFnvUlsD9X6MSH3MYyWsBi/p7d42kRD72ye0+hQHZTNPQOM6HM7DE/My7l4D2cUcdrxKUnwQASgFU89cqlciLGwQqtg3/QNXqRqmoJnkHaiX6C4I1d5PQYF8IOYih1upHQE/uopF4tTcG2lHWCIuSTn4NFT7AxkQ0/4YIhuIHS6MJPgP1ycd4XIEs4tmDDnvXNDKvCCFHB84N527yf7gIiG/iwpwVNZJ+gXc9VJ6Qtu+VUepPysF6MH4oq0u3sHwDXrD1yViVDycqEFTaX0+msW+OGSIz8+stxTGGPoeg/wPkhvHXk4iYQNL8d4ybotMCzxmvcyWBNN1fHLbj+2CjnPyFKJTSLqAR7vuhdJgKu36gjPTlDOIwpYADP9qBxXZqp4JG/u1Q75BEPTnX+Z4QvGIF2xGjd6JM7BJnIn3Wo9aOoZgNc2cSUc1ITdlPVrrSfmVYPbcFKBmYiT3ZmzlZc4+EKKwvHXrPbeQOc0JmhevVINr1hLuqNrB4ZRm56YNBqIEG6TXWXT4SXone+hCq1ngmADEooyJ3wqdsvnTDczXq8uEet/S88It5ztKYftXf3GHOvYPm5iOe4ig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(396003)(366004)(136003)(5660300002)(8936002)(66476007)(83380400001)(6862004)(38100700002)(6666004)(26005)(478600001)(66556008)(4326008)(44832011)(6512007)(66946007)(6486002)(86362001)(36756003)(2616005)(8676002)(6506007)(2906002)(41300700001)(186003)(82960400001)(316002)(37006003)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Js6f+NDs2P3WrGWH1UnkKR3Ps5MdukzxakPO5Kn+ImPr5y1pA0QcO4eJLe4Z?=
 =?us-ascii?Q?jx1L+YSgFiXlz5VgQhobUKS2qVD4AzvMafEXEUNZlLMTm7x0x6BhbOBArMox?=
 =?us-ascii?Q?IC9+sKlvKt0R1AbMmWpmIVDu9ZjJsLoEDiZoSXaPiWLR3xGTizCaYWMJY9Lu?=
 =?us-ascii?Q?wEovREtYkhlQp8Znl2Gv5xgWtfc50dENC+bhAy7eG/h+/agvIt6gmdQVvkM0?=
 =?us-ascii?Q?YfgYo0msKmYncIz7odOnVbITDggyUhxhnLSUAOhuu9DUqCIx3Pqt2RVorBOl?=
 =?us-ascii?Q?++7KNrjqyHxKIUg/CTmgzX2AwuP9H1/AHySrqAVEhoElRac/OReHUMTgy1dQ?=
 =?us-ascii?Q?oanM5YjVnsurVV1s8WdfC++3RDSkzVvFrox6Rwz10OdAoiQaMqlygyjZkGCJ?=
 =?us-ascii?Q?fX87mruClmvqtyk8GGFvQSAeBjPlvEygVUpcs+LBw3+Sur5DHNL+7Xb0tIPV?=
 =?us-ascii?Q?FlSw+NzAqPPu4s4noXTL2DYT7bNrg27ia46bNZhUHxsVtec9na0szNUl47fF?=
 =?us-ascii?Q?CW7FB0AxFQvS6t44psBn6RzQMzN3nXAFLgRKfhBbS3sxuvypYgnH1RUGop01?=
 =?us-ascii?Q?6Cp3T3MoKeldXHxFeBY7HTZEtHds28azXPZ8yUtWqVVAuEFGKjM/f+nly2+h?=
 =?us-ascii?Q?kVcCtGzjabaHnil0QMFwQv+9KzIGOMAz3Dvr2fPH/sku7UQ5yjLbi+gYWEXG?=
 =?us-ascii?Q?bccCLR2h8NcwQ1DV9rR8N1o+o/EVQHJjcqDEq3kagQrAwznzV2tgY1NeHTX1?=
 =?us-ascii?Q?SbEwGw2nXDpsRnR7bfEnC950gVlKveZdeQQiO/z3vXCwJuizYeC4QPBh5zAA?=
 =?us-ascii?Q?3vOtwSQo5FuUxJUzywfu8CeULNjxiip3aLjzhGQNErFftSYqytS4yfZcsPVr?=
 =?us-ascii?Q?gVHb3wC1meAsMgZdyY8RYv2Bxg9vkpISOa4JwwAJHeTm7ArkUMa7fX/ahRHa?=
 =?us-ascii?Q?RU4KPhsSpIAz5Ys5GW5aLot8asjIgmWPUwGyCWJ3VkncrjyMq7g5y5mgqOH1?=
 =?us-ascii?Q?WbvIAGWOmTciJrAiFJMbdQyjPMVHBHngh2SgxGUWmLuBV40CYJ3Fp6/xmSBk?=
 =?us-ascii?Q?ItNh+uxhPZnzDXDeus8Yrq1Aq9SjCR+7getCXr+rD/tiGX5nC5IThtEWSgz5?=
 =?us-ascii?Q?b38nQcP4XKHZemthe0DUvhT8YqNlF7XC9VY+IRsyVWh/ePWNO1hFP0TkcNx2?=
 =?us-ascii?Q?OrrVxt5o3PxznBkZ8HCehPDnz80fHmsVcHQOm0cO4yO6P7MqYS25MJdA7+v7?=
 =?us-ascii?Q?5aj5UKK4b8AlGN4FGKSQ7B/R1rc5Qp30Hi3ZZHP8aJwxZlczDDQjzUXoIfA4?=
 =?us-ascii?Q?rdJYomvlkvX96XqH1HDVrxJ9qR69f3Vh4nvsg+r8qF1RZVN14XNrBVSI3I5C?=
 =?us-ascii?Q?I0cOBIB0mUIw8ohFljc2MtBWsCFc/SMr0Wgrz2U3LFgnDtp8LFQvT0KhHRao?=
 =?us-ascii?Q?h0NlA2EHhpKTsGZgmfXkhfJUuSZjCHJGSIfAlzcCtzWxnJS6kuJcSoBEvtpH?=
 =?us-ascii?Q?u0+4mLcvcCETswIcw9W7MZtSJgAnJVtETgXTp7tuVrtNV3wrGTp1uta0G4OH?=
 =?us-ascii?Q?cps9TDAubzXs3CnvFUH1PWRrBWkzwAOFyrmq67vZn8CV8ZF+p8mZiz5tABNn?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cdffd6-ad45-4560-b362-08da90112b73
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 14:07:44.7005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cEhr/NsK2nXvFxlfjAd8dquF3lWvo4XpmyfrRtcN7r1hD8rppbmJweHYMVP50ZJXJP+SiYX1ylkNCvERy6wRow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3413
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Prepare more multi-GT
 initialization
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

On Fri, Sep 02, 2022 at 04:52:57PM -0700, Ashutosh Dixit wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> We're going to introduce an additional intel_gt for MTL's media unit
> soon.  Let's provide a bit more multi-GT initialization framework in
> preparation for that.  The initialization will pull the list of GTs for
> a platform from the device info structure.  Although necessary for the
> immediate MTL media enabling, this same framework will also be used
> farther down the road when we enable remote tiles on xehpsdv and pvc.
> 
> v2:
>  - Re-add missing test for !HAS_EXTRA_GT_LIST in intel_gt_probe_all().
> 
> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            | 54 ++++++++++++++++---
>  drivers/gpu/drm/i915/gt/intel_gt.h            |  1 -
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  drivers/gpu/drm/i915/intel_device_info.h      | 16 ++++++
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
>  7 files changed, 70 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 275ad72940c1..41acc285e8bf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -736,7 +736,7 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
>  	u16 vdbox_mask;
>  	u16 vebox_mask;
>  
> -	info->engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
> +	GEM_BUG_ON(!info->engine_mask);
>  
>  	if (GRAPHICS_VER(i915) < 11)
>  		return info->engine_mask;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index e4bac2431e41..5b4263c708cc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -815,20 +815,16 @@ static void
>  intel_gt_tile_cleanup(struct intel_gt *gt)
>  {
>  	intel_uncore_cleanup_mmio(gt->uncore);
> -
> -	if (!gt_is_root(gt)) {
> -		kfree(gt->uncore->debug);
> -		kfree(gt->uncore);
> -		kfree(gt);
> -	}

In this patch I see less free...

>  }
>  
>  int intel_gt_probe_all(struct drm_i915_private *i915)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	struct intel_gt *gt = &i915->gt0;
> +	const struct intel_gt_definition *gtdef;
>  	phys_addr_t phys_addr;
>  	unsigned int mmio_bar;
> +	unsigned int i;
>  	int ret;
>  
>  	mmio_bar = GRAPHICS_VER(i915) == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
> @@ -839,14 +835,58 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
>  	 * and it has been already initialized early during probe
>  	 * in i915_driver_probe()
>  	 */
> +	gt->i915 = i915;
> +	gt->name = "Primary GT";
> +	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
> +
> +	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
>  	ret = intel_gt_tile_setup(gt, phys_addr);
>  	if (ret)
>  		return ret;
>  
>  	i915->gt[0] = gt;
>  
> -	/* TODO: add more tiles */
> +	if (!HAS_EXTRA_GT_LIST(i915))
> +		return 0;
> +
> +	for (i = 1, gtdef = &INTEL_INFO(i915)->extra_gt_list[i - 1];
> +	     gtdef->setup != NULL;
> +	     i++, gtdef = &INTEL_INFO(i915)->extra_gt_list[i - 1]) {
> +		gt = drmm_kzalloc(&i915->drm, sizeof(*gt), GFP_KERNEL);

... and more allocs...

it probably deserves some smaller patches with some explanations?

or something is indeed missing here?

> +		if (!gt) {
> +			ret = -ENOMEM;
> +			goto err;
> +		}
> +
> +		gt->i915 = i915;
> +		gt->name = gtdef->name;
> +		gt->type = gtdef->type;
> +		gt->info.engine_mask = gtdef->engine_mask;
> +		gt->info.id = i;
> +
> +		drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
> +		if (GEM_WARN_ON(range_overflows_t(resource_size_t,
> +						  gtdef->mapping_base,
> +						  SZ_16M,
> +						  pci_resource_len(pdev, mmio_bar)))) {
> +			ret = -ENODEV;
> +			goto err;
> +		}
> +
> +		ret = gtdef->setup(gt, phys_addr + gtdef->mapping_base);
> +		if (ret)
> +			goto err;
> +
> +		i915->gt[i] = gt;
> +	}
> +
>  	return 0;
> +
> +err:
> +	i915_probe_error(i915, "Failed to initialize %s! (%d)\n", gtdef->name, ret);
> +	intel_gt_release_all(i915);
> +
> +	return ret;
>  }
>  
>  int intel_gt_tiles_init(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 40b06adf509a..4d8779529cc2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -54,7 +54,6 @@ void intel_gt_driver_register(struct intel_gt *gt);
>  void intel_gt_driver_unregister(struct intel_gt *gt);
>  void intel_gt_driver_remove(struct intel_gt *gt);
>  void intel_gt_driver_release(struct intel_gt *gt);
> -
>  void intel_gt_driver_late_release_all(struct drm_i915_private *i915);
>  
>  int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 4d56f7d5a3be..3bd36caee321 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -83,6 +83,9 @@ struct gt_defaults {
>  
>  struct intel_gt {
>  	struct drm_i915_private *i915;
> +	const char *name;
> +	enum intel_gt_type type;
> +
>  	struct intel_uncore *uncore;
>  	struct i915_ggtt *ggtt;
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index c9cca165bf5d..d4b45c7e931d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -918,6 +918,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
>  #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
>  
> +#define HAS_EXTRA_GT_LIST(dev_priv)   (INTEL_INFO(dev_priv)->extra_gt_list)
> +
>  /*
>   * Platform has the dedicated compression control state for each lmem surfaces
>   * stored in lmem to support the 3D and media compression formats.
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 6904ad03ca19..b408ce384cd7 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -245,6 +245,20 @@ struct intel_runtime_info {
>  	};
>  };
>  
> +enum intel_gt_type {
> +	GT_PRIMARY,
> +	GT_TILE,
> +};
> +
> +struct intel_gt_definition {
> +	enum intel_gt_type type;
> +	char *name;
> +	int (*setup)(struct intel_gt *gt,
> +		     phys_addr_t phys_addr);
> +	u32 mapping_base;
> +	intel_engine_mask_t engine_mask;
> +};
> +
>  struct intel_device_info {
>  	struct ip_version media;
>  
> @@ -252,6 +266,8 @@ struct intel_device_info {
>  
>  	unsigned int dma_mask_size; /* available DMA address bits */
>  
> +	const struct intel_gt_definition *extra_gt_list;
> +
>  	u8 gt; /* GT number, 0 if undefined */
>  
>  #define DEFINE_FLAG(name) u8 name:1
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index f5904e659ef2..915d58ba383e 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -115,6 +115,7 @@ static struct dev_pm_domain pm_domain = {
>  static void mock_gt_probe(struct drm_i915_private *i915)
>  {
>  	i915->gt[0] = &i915->gt0;
> +	i915->gt[0]->name = "Mock GT";
>  }
>  
>  struct drm_i915_private *mock_gem_device(void)
> -- 
> 2.34.1
> 
