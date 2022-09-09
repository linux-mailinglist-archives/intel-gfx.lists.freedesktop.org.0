Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B887D5B34E0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 12:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C00AB10EC5C;
	Fri,  9 Sep 2022 10:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CA8810EC5D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 10:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662718407; x=1694254407;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RHCuzflUdkqUBQzna1qWIxe44HsqEKeG2SNwjdzvsr8=;
 b=KpFwdaAT04GsLn34aOwIgdFu+58PRQIxF7N/LYBWOZv2Zqqc4gKHQaen
 1usTSTHI4njZrsXV5UrNFkUHroAnPaFez9em23fWcN8xRFoV7viHXYuos
 TYLy4N7BVk5MyENSIM8DWpQPfLQ3q6lqE6dRL0oU0Wv+S/IstEgRRDxA8
 i79nTKGzUI7Kpqg4MFaojAXIBnldLY2cRkFTi84vFrLs2MnJFlZhZgMy/
 mAQi0kWAtmsfMWavfZmAgNCLIv6QSl7PIoHEtpgrvQSZ9qQ/eGADyh0Ww
 xOqOH5eIYJf/Lq7YkWq2LiC4Njjluqc+ZzMayfCP+RpdUgFuK1VgK2YHG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="277833573"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="277833573"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 03:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="592558257"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 09 Sep 2022 03:13:25 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 03:13:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 03:13:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 03:13:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DdINNOMGrVMjAN279mPKSavayO63y670aXcuDDnct/FJN5qjEzY3E3U0SxpP7KcIMDlaPNmHCl3lTmM+EC/EF5C5jCRbPaeK172XW7PvAamosVL5GyehqhwQS8e5mhIdZg2ic897+/28y/gjfYpvWvgeM34qX+c3pGWTKoMEM9pph7Bb/WgIBUrvvlKheBfRKFzSf5DNHel5l1yoJ7hfdnEar+vZ1II/Ej2ngsmmHNEoQQ3gB5MJNfSGAsBm/UTKdx4BIaAvfv/eUhkeu+GPxGyHzBS8U2VRCSe+hjlVA+GqV5WyIEnjYgarmX6KpbfQoE4zSXo+h3xc4IXHUGRAfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDE0pMe6zcDKeSdK/zlPtXNZC/YdZG1ljTPMiWEl8uM=;
 b=jZPu/2FIrwRj6t2kClp8W9BAveiyz/tAJEdJyQ+/CTpCNiFed+5vy3kr7ErUflj2oxr3QP+QOFpQ7HyJSjaPXNQuHNHPOvWpNGd/3logbqq/WPPv5j9HS1I2qQRR2CdDJAj3xS/jdbYuUi8cX0hOOGyjpjGjXZfm95cVuYWmp7m8edXXckmvEiNX9z0xtWY8HL7yYYqujdMjYneKFMo52ux+jJ+1CovMDGH2uOxb4Z9vIMeO8urZBTaHK3tXlB7JwTSUB1WoBdomXqxIjKkBZrqZAXNColJSXY4vZp7EVG9qBa3bub2GJdDDFkONWxY4sRVq5tHmWUATdl41lAqtKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB7301.namprd11.prod.outlook.com (2603:10b6:8:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Fri, 9 Sep
 2022 10:13:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Fri, 9 Sep 2022
 10:13:09 +0000
Date: Fri, 9 Sep 2022 06:13:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YxsRscHgVHEv9+VS@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <aba9305853caa054dc598a0f559495d3e4e2b1be.1662613377.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aba9305853caa054dc598a0f559495d3e4e2b1be.1662613377.git.ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:a03:332::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0cf1387-2a70-4af9-14bf-08da924be518
X-MS-TrafficTypeDiagnostic: DM4PR11MB7301:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kBiouezkedIFk2kvpdCoFAARnUSW1sP7EZyNuzx9Ho0xdd90BdK4KLBlHsjeGn3vNh1YWsDvVf4DKnzR8Lxr7+hdAG31SLgspa/+nXaHFIjNbUFOpmv1it73ctJSBBvN6b5CCFxTH9wZUmzzrOAO2tpHL8p8PSV1zda15z4lBjiCv2yqf7/NL2hjN+5iA67fWuFeqL52gimtsu/BjJEBPArzBIq0vY6/oxshbnRXE8bc9ffarF5b7zU4Knw6KyurESTS+kOrIzzRZ1YM+wruZDN0d6ZKTP/lIZuG+3wMYL5G3fz8XLanhcL9eQoaqe3W5Vk1F/5MbuVikYeVepGLtOMPSiOkJh6eYMhI22ZRjv7F9NkLontRRXkT25JSPGzMb4SYGIay1/tpTGyfmfsLQ/YVRk1FWos/JmbFgBN+8dFt3WcuFoqemu6vtt4dj0hWXjAhbX4rHT/itFU5T2BvmBJ/dlFLdE1CPZinSZZo3pkZ7XlIHDUA7A5jcAAkUu7lz14jjZoCDAXG7ayS9vWqwMYiCRdGf7Igr3d4j3qUa+BoY5khEqmqN7RfSJX1brMYZTiLE2gyTogw8YmIrvZDhFBqf77avsKLtQmYc4pB1Cs2kqx9Yl8I7jKi15/P7ftOvGNA3M1m1YN+hEIP4P6H6WFsM6PWKlBd+bS0kqprC/kyFX4TF5/V/scSCD71R6NFVbO1e0Yp2LaBj6Ogy1Ah9ZKDAHTrpsTgMZI+w90xNAHWSA2O89q4HKUlojsIz32csQyfIoLyOo27/YV2+xinQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(39860400002)(396003)(366004)(38100700002)(26005)(6666004)(6862004)(66476007)(6506007)(8936002)(4326008)(66946007)(8676002)(66556008)(6512007)(2906002)(5660300002)(36756003)(44832011)(82960400001)(478600001)(6486002)(316002)(41300700001)(6636002)(86362001)(83380400001)(186003)(37006003)(2616005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wkbZiQMDq1AXF7Ch7ms9EwtSD+t8FfsA5dupTU/BXuvPoxOvweIYWhKzE3rc?=
 =?us-ascii?Q?aNEwr2zFGY0qh8YAJU2ymE7bLXwQ+U/pX9+Ayzusmt3SDAD8JkfzdTlZ6kG7?=
 =?us-ascii?Q?g3T10wN37PiE8mAJgDlvEpPvhhvnhGkD8nsUDbyhWkfV8QXcGlx3R+PZwYot?=
 =?us-ascii?Q?6gLF+47rkDFzx8rQNMn9zzuDZuwm0OaXrq1UzxLTNg9Kj2vfDijawHgkGmJ7?=
 =?us-ascii?Q?+PWlJD9V4EK6t6/qWsz3yOWuas/KG/agEqDtyHmQRojaUToilXuxpFza4CKn?=
 =?us-ascii?Q?1jfWxTRliotuTjeLn0EL6BTK0EFsU90HfOGLbHjzhJ+njgWdDVYuTWgkj6o2?=
 =?us-ascii?Q?kRyBeV7qZt6OaKnNslW15QAtG3dR5VXaViUy/7054N7krK1XNwqqHLYY0rzv?=
 =?us-ascii?Q?YU4HBB/vpXdZQ3EidH6cPD/Abg92Dkfve+/Z5shgEx8NCoYGXF/8x7onIAiH?=
 =?us-ascii?Q?ZcVCxt653gLE7hBvCMPdYoVfbKH3RXk22JYRaC22btkTqJlEoEdNBFLSeN4b?=
 =?us-ascii?Q?nedPCOtWOYKwO9dTDHQELHq6T7z0EwVgOPsp95Aogz/5wze8Wgv24/GDrcAx?=
 =?us-ascii?Q?gHDcdYqiUIF12dfjOnjdeyHmEPz1rT/f+x9n44k3whabc2aF9GiKoekrDhIh?=
 =?us-ascii?Q?3quLWSyh5pGnwwvkT5lZ3XUhl2yt6UE2brdXjGNPyViZtDdalGmcoym+yPU9?=
 =?us-ascii?Q?/rreFE/GBBGjETeavAAffi6zvvORzmF4P1i7d9KA5hpYhBY45LFURy+Ez3Oa?=
 =?us-ascii?Q?iaTlhWiM+4rDn13fXr+o64VshD76js91YBlTRc4RxtQo7/01BIAJZVkESXRk?=
 =?us-ascii?Q?WfU/EY0RLt9KdgPCJwho8ygJqkU0JszEaVK663YVITS4SeYQkxCuPsMQMlPs?=
 =?us-ascii?Q?wykYwHRkfzPr0Dohee8rlqfTsSHD1D2g+FGWenaajXPbXtYERQx7BkHc8LB1?=
 =?us-ascii?Q?a5QrGxq697UE7NOgXqfdPiMLvgLyaySAJjYAVK4J4QI3H+h6OP5MEBpA3I/W?=
 =?us-ascii?Q?PeywQm2p6eIVI8Yh6CgO74DGqW+D7MfFBUa3IBVaxEJ35JHyySm3V1C8soV4?=
 =?us-ascii?Q?SHef9NnWXO93tKAPPIbxhju34Lfbp3iB4tUb7him57/lIU1OXys/505YMVpw?=
 =?us-ascii?Q?+Fvr/jZVswAfvrnXVuZuXJKjwNdv8yBz+WbH+t6UTFOF033rUKMfY8L9U5/N?=
 =?us-ascii?Q?1J8833yONNdzwfigNMt6cWrNNlS7x/Zo3HL8qHIEurn4xTamIZdcKPIZLeMS?=
 =?us-ascii?Q?TCtJA4BLTsD6lFFoVb+cghCtAE5wazelxgxvVaHS7mSyNPGVOlVUwnD54ADa?=
 =?us-ascii?Q?3Y1HpHY4CLzDPSTnzJHQj+xLKiqFKvDnxXept8wdU73O5YM0c5x4PqiR28Gc?=
 =?us-ascii?Q?8tjc01CBSGQxy80zk0EmfZz0TI4D/Y/FSgvyEAKc1REBvCdAJHWCdnL+J6DG?=
 =?us-ascii?Q?OpA/kQgeAxWjvAoyXai+d/dJvuXWidGL5SoAsq5GnmL7t0i2kg6pl52a6NQ2?=
 =?us-ascii?Q?F8arVNjM1U3K6JMuO0HG0MjFtdg+qIJgGJ/E5tr2ZNJjsnClLdpdgvAPQc0t?=
 =?us-ascii?Q?515TCFl0v94NUsg07L96Vjsu0XtPJDzmrFhrx9F52fWowT4hQWKZw4NcqPVd?=
 =?us-ascii?Q?Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0cf1387-2a70-4af9-14bf-08da924be518
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 10:13:09.3072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: orHKPsg2hqEkOhSlLh+675I1hsoPhZWTHbV9SPpDiCIhS3Z2ilRz+faxAMpsEVNjRloSJV6FCQF5hdXhFIPFmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/debugfs: Add
 perf_limit_reasons in debugfs
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

On Wed, Sep 07, 2022 at 10:22:49PM -0700, Ashutosh Dixit wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> Add perf_limit_reasons in debugfs. The upper 16 perf_limit_reasons RW "log"
> bits are identical to the lower 16 RO "status" bits except that the "log"
> bits remain set until cleared, thereby ensuring the throttling occurrence
> is not missed. The clear fop clears the upper 16 "log" bits, the get fop
> gets all 32 "log" and "status" bits.
> 
> v2: Expand commit message and clarify "log" and "status" bits in
>     comment (Rodrigo)
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  2 files changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 108b9e76c32e..a009cf69103a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -655,6 +655,36 @@ static bool rps_eval(void *data)
>  
>  DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
>  
> +static int perf_limit_reasons_get(void *data, u64 *val)
> +{
> +	struct intel_gt *gt = data;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
> +
> +	return 0;
> +}
> +
> +static int perf_limit_reasons_clear(void *data, u64 val)
> +{
> +	struct intel_gt *gt = data;
> +	intel_wakeref_t wakeref;
> +
> +	/*
> +	 * Clear the upper 16 "log" bits, the lower 16 "status" bits are
> +	 * read-only. The upper 16 "log" bits are identical to the lower 16
> +	 * "status" bits except that the "log" bits remain set until cleared.
> +	 */
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
> +				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
> +			perf_limit_reasons_clear, "%llu\n");
> +
>  void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> @@ -664,6 +694,7 @@ void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  		{ "forcewake_user", &forcewake_user_fops, NULL},
>  		{ "llc", &llc_fops, llc_eval },
>  		{ "rps_boost", &rps_boost_fops, rps_eval },
> +		{ "perf_limit_reasons", &perf_limit_reasons_fops, NULL },
>  	};
>  
>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 24009786f88b..9492f8f43b25 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1802,6 +1802,7 @@
>  #define   POWER_LIMIT_4_MASK		REG_BIT(8)
>  #define   POWER_LIMIT_1_MASK		REG_BIT(10)
>  #define   POWER_LIMIT_2_MASK		REG_BIT(11)
> +#define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
>

I'm kind of confused here because I saw the other bits in the patch 5.

but, anyway, thanks for improving the commit msg.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define CHV_CLK_CTL1			_MMIO(0x101100)
>  #define VLV_CLK_CTL2			_MMIO(0x101104)
> -- 
> 2.34.1
> 
