Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1FD63B17B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 19:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C53010E322;
	Mon, 28 Nov 2022 18:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3E310E322
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 18:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669660717; x=1701196717;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=haNRM3pzN/lRfn0PQS8bXtf2xC4liHIrQ4Tq5pyGdoA=;
 b=kGcTQzBtCe3HatsR7EFwGYWg7AYN5xw9G3TqrbTKetgem/FZO2pdxTgi
 CkDh25UIma5XLpfC8hsMZyJ5Z5GaYhtLGKYlWYprR5Ernn06DGaPE2ka/
 a3bqmKDuD0NXmbrWGicLNrYMPHhl7EzGvjCV6VvtMx+RkhdTi0l08/1jT
 dFtZW24q0lN9PFjjsgj2J4XxaklK0qG3z4w9/HQYhR9/evigqlTTdPMnA
 R+eF6w5d1gEw6pquOJgDCU1B+nWAfefbVywyidJGOZbqBjV8IRQ37fdau
 /a8QKx2/W3VCoRn7OCS7k4Ce7c17f9T3Sho9CrM3AvJq4cmK8Wu4uTGra w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="313622662"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="313622662"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 10:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="768146713"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="768146713"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 28 Nov 2022 10:38:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 10:38:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 10:38:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 10:38:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FPGV2ZpLSMFz+4J4BdcyNCLrnXFVe6dOgAV0jouUpuFCyYTjsv7ar2MMMTl4NxhOW9V3RDag3hXjMH95LcB+WBEHMW+PcEiDWK9QGcyK5rFNSFOQ/gyjK8zwGwB2ItbiHuU9O9O9mTN4Hs/zGfIpGawZf6jwcxW5IwrJr+TuZEJGjdfn9OLaXtE370LW39hnPeQ+WrHKpbRHK7qKnDTpz4MViUMd7UqPu5k4dQqpw7qY9hUpbRx5DmcxPSjsRQjB0yjX2bYWBGwyDxUmPTIVnlcDCdHEqETXxVDXyJxfWIsU/dP9L+BjAeh+/XElyIS4HBtFQALQNpwLxdcKfNXIlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PqSPyFm2gvGBT5uUW0juhSsMZoIOO4uatrYle9UHsxc=;
 b=S0w7f7fevAF4XHGZBJbRz0bUu6w5xq+wMHH5lZiqZy2pc84JntGzziqLYAKJ3K5DCncMn22KB7DyGgLKau9fqNxHSEpetOPQNGy+T8QL/AGU2XG0nuSNACi2RGY1i4LL4+Lv72rRbwTjYGs5DhIDcNEjupmQvdoyhoCS88BB0x611VkO8G62ob6R8K+wmA7xGzByKnDxshtU7enkHA736IKhn1KL2hFciRAqtRzpmRCss3vg5NlyaUHxkEwHjaUeKW4YehX4qWJziB6Op76fxt9TBme8jMwx+B7O8UbYlniS0cYOfzcZlvApas175UZmTM5nfZeXH5snHOHaSNzmqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA3PR11MB7464.namprd11.prod.outlook.com (2603:10b6:806:31b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Mon, 28 Nov
 2022 18:38:28 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 18:38:28 +0000
Date: Mon, 28 Nov 2022 10:38:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y4UAIlrP63Y2hesK@mdroper-desk1.amr.corp.intel.com>
References: <20221123164916.4128733-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221123164916.4128733-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0013.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::26) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA3PR11MB7464:EE_
X-MS-Office365-Filtering-Correlation-Id: 781a5711-74eb-4bae-6d7a-08dad16fbdca
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4roq6RSK3JLVhanq4k27e+SHnOgW3hrzfmLXkb5libsO8BxIErBrfaG0Ejsavc9eUVLNovuFrR3fOvPoD73kdrXJh9IolbatbmRveCdbY1Ree0CHdQ9ujNGu+6wnUFlFaThYMjxREImPWKJ+FFrEfKZPHV0tFHrBRVjKzsOEbi2TxjX6wWbXd8otDdis64ucFOsE0tFPdkdFjsw2bMYYN6PhoW8hnlvMzBPElMtfByUNlxyypzlZU2oz7Rmt84qZE3ScLlfSKSN7zJ02wfB3eeHA/NMqoM45vO+CTeV273XsGciWHM3BiBbtU1/QitOPS5ZfyHU/CC3MynmgjmNiVBGwIF6dBX2urxR+2l71UUEPcZbkKyQipeWp7s8L7vC+/MLKe8ydxCRfgtr0TrqLn1ddFWQYWPt5gTyBTAiPDexPCZyCaFjd0n0iyi6HabDI8Un0Wom6g6zqq0jzrlXgcj6FGW3PFjCLoWCv0uwVPG+Y/0f/RCtJ9CHG8uGIwD4Y5Xe8i1VgkVgR8eF+VCOMRo3G7K28EYurc8V+9ZTXLQpcuSJD30w6v/Sox6TQ623rgTgat8t54DxGMGB2hKALW8HLTjcUtWYS6n97IGfADUwtzI51qyFKDFTZwZAhxkQHiqA1+3uv9aXK6oUctySL7NtA9rsTe25fwpMtuBujxAPqcoejed7pt5j3PWMIztYW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(6862004)(8936002)(5660300002)(2906002)(86362001)(6512007)(6506007)(26005)(83380400001)(186003)(316002)(478600001)(6636002)(66476007)(66946007)(4326008)(41300700001)(8676002)(82960400001)(38100700002)(66556008)(6486002)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nVoaAbGw6nBD98IO69UCV1PfFXZCIafJUeu4BCN5kvMk0//T5jG+xKH3l6sM?=
 =?us-ascii?Q?kxDCxMElNSnpxYDQzmvEbbZJ3af0l8eVlKKgze8ejfqA6zxXllSqQMdnfwlc?=
 =?us-ascii?Q?8ybQrsoQKbp86IS4dwBJeiEsb0frKSPkIjQhkR4bnYu2hqUJspLg67k/f2zb?=
 =?us-ascii?Q?McjnHbpyyJT6ZkUfHw6lGK0AQPprGeakwb/xRzgQjdO8cQpLHYoo8ssUv9hQ?=
 =?us-ascii?Q?Cvej2K8lnHlHq095LVHOH6cqY/Q+dcy6PyZZApjNlM0S5asuZUyBPg2ppcC1?=
 =?us-ascii?Q?UrdZzCFHZz8FV6hpMpKAGwitM626xXFDAECf1cvKaehrIIjGQz1OnEQiEYCA?=
 =?us-ascii?Q?kM5eaF4iJyVL+k2HjtBvp/3HQxi9THZkCv1zUAnwoRbWUwYbDdHOoM95zAhP?=
 =?us-ascii?Q?dKiUQ64P+sq2ze+F5UosR3qx135NJjLz7neAs+buQO4bJWzBL1EXhkgs4oFR?=
 =?us-ascii?Q?HP44xLv2jyy3Mbr9AXGkZWsYhiLhsk8owApYwmsgD8HEwg2plENUr5gAgvRP?=
 =?us-ascii?Q?S82UNYnObLJwaibJpE8HN/LtJDXFT9aBQxBoFDBG5G679iPWJZNQVDDX2YkW?=
 =?us-ascii?Q?QV/ixdswJBi56M/cxAMu0uMEYxbarf3RuZrIwrvysMa1DEKmStmhnj59VagC?=
 =?us-ascii?Q?eSHaA/9bNrrxV5eihnUcjjUCjyS5F3416aRjN1SMVC2isv/JV2LuZicTpomW?=
 =?us-ascii?Q?TWH5mAaq5AAVvMA1PmdnQSVanirA2W7OOeby8wzNe1l+yTo9kuxAsjPEaKNl?=
 =?us-ascii?Q?J76h13wLWaUefBsm5F+y8FFH1Qw0UdwhBWFglj0PYknnm2gDIqtO0ULmp+bf?=
 =?us-ascii?Q?oZuAUw8YOE1FsRl8IYw6/96obSnmdBjo9V03I6Ao7DxX3thwYdauf7CSEao4?=
 =?us-ascii?Q?KcEI3QNXNKfIoNbebId4mUNK3u2bHDSViSe3R7TYNIb66hwTnsgTB6qvOz9g?=
 =?us-ascii?Q?QRX6pa5BowEnxG6Yp/RpM8c6bRSo/Ul24EK1b3eFXEKMgQe6bxWH7bJApXX1?=
 =?us-ascii?Q?t9bJ64JwC6RLor1luevfk3wfmNTdTYfHtoFMH0HLYgVYWkOd9mHH3XvNIOWd?=
 =?us-ascii?Q?yjbu6833fsBvu1Opb0O08sELJfSLAHPSwR9NJ/eR/7Qec7R59UxW7Pm+Z1Tf?=
 =?us-ascii?Q?UAJiQQTxqwFNRmLhE/1SsqdSrbiphtc3N6gPvfKtEWjNIIatADzfEir0Gn9R?=
 =?us-ascii?Q?Sli2um0lwuea4FKXUg5QvE0z93XUlmgKnoMXSjg4k3cvbJU82QaWQRrcu2Kd?=
 =?us-ascii?Q?8stkt+nBXmXUHwlC31ILD9q4sOttnIXqlf0VK1Z45rDro+4qTVF7pgaAiAwy?=
 =?us-ascii?Q?3VJtK7ILbNIN7JpPoqhJyA5F8yPmW7633odgn42RJIEIPtLB+s6IaMDjxPLO?=
 =?us-ascii?Q?8/ny9/nCfZeGyapd1MDkzHPrRCKpV0o+rECutE3UyvRVFDbwZKtAPzfzSxYS?=
 =?us-ascii?Q?XBlgLBcRkA2RiferLEEFGjNNMWJHcz1Spn9PzWUV7SwoHx5IvY6Hp1DswS7h?=
 =?us-ascii?Q?IFrcFfkaxn07NVxrPzUuGUYPolavtYSVKxilleklsW42+JM9eADeQD6tEDC0?=
 =?us-ascii?Q?v8AOrIWAjsua2ZwcQlN5HGLZWABn50dMbQ8xy7cgPz8IYmBlpDv2tNb6RUMH?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 781a5711-74eb-4bae-6d7a-08dad16fbdca
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 18:38:28.3644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 99gDtMtUWoIdZjMv4+HYRT3TsGZt5caPemKFu7R5FyMPgWP8XS5w8X1sMjZJ1mpCTzrJOO7vOWUti4Uh9MiEjmd4tPnt8HmJHKzj/7ERmI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: remove some limited use
 register access wrappers
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

On Wed, Nov 23, 2022 at 06:49:16PM +0200, Jani Nikula wrote:
> Remove rmw_set(), rmw_clear(), clear_register(), rmw_set_fw(), and
> rmw_clear_fw(). They're just one too many levels of abstraction for
> register access, for very specific purposes.
> 
> clear_register() seems like a micro-optimization bypassing the write
> when the register is already clear, but that trick has ceased to work
> since commit 06b975d58fd6 ("drm/i915: make intel_uncore_rmw() write
> unconditionally"). Just clear the register in the most obvious way.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

There's also set() in intel_rc6.c that could be dropped as a follow-up.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c    | 29 +++++++--------------------
>  drivers/gpu/drm/i915/gt/intel_reset.c | 18 ++++-------------
>  2 files changed, 11 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index b5ad9caa5537..efd9d722d77f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -210,21 +210,6 @@ int intel_gt_init_hw(struct intel_gt *gt)
>  	return ret;
>  }
>  
> -static void rmw_set(struct intel_uncore *uncore, i915_reg_t reg, u32 set)
> -{
> -	intel_uncore_rmw(uncore, reg, 0, set);
> -}
> -
> -static void rmw_clear(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
> -{
> -	intel_uncore_rmw(uncore, reg, clr, 0);
> -}
> -
> -static void clear_register(struct intel_uncore *uncore, i915_reg_t reg)
> -{
> -	intel_uncore_rmw(uncore, reg, 0, 0);
> -}
> -
>  static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
>  {
>  	GEN6_RING_FAULT_REG_RMW(engine, RING_FAULT_VALID, 0);
> @@ -250,14 +235,14 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  	u32 eir;
>  
>  	if (GRAPHICS_VER(i915) != 2)
> -		clear_register(uncore, PGTBL_ER);
> +		intel_uncore_write(uncore, PGTBL_ER, 0);
>  
>  	if (GRAPHICS_VER(i915) < 4)
> -		clear_register(uncore, IPEIR(RENDER_RING_BASE));
> +		intel_uncore_write(uncore, IPEIR(RENDER_RING_BASE), 0);
>  	else
> -		clear_register(uncore, IPEIR_I965);
> +		intel_uncore_write(uncore, IPEIR_I965, 0);
>  
> -	clear_register(uncore, EIR);
> +	intel_uncore_write(uncore, EIR, 0);
>  	eir = intel_uncore_read(uncore, EIR);
>  	if (eir) {
>  		/*
> @@ -265,7 +250,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  		 * mask them.
>  		 */
>  		drm_dbg(&gt->i915->drm, "EIR stuck: 0x%08x, masking\n", eir);
> -		rmw_set(uncore, EMR, eir);
> +		intel_uncore_rmw(uncore, EMR, 0, eir);
>  		intel_uncore_write(uncore, GEN2_IIR,
>  				   I915_MASTER_ERROR_INTERRUPT);
>  	}
> @@ -275,10 +260,10 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  					   RING_FAULT_VALID, 0);
>  		intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
>  	} else if (GRAPHICS_VER(i915) >= 12) {
> -		rmw_clear(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID);
> +		intel_uncore_rmw(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID, 0);
>  		intel_uncore_posting_read(uncore, GEN12_RING_FAULT_REG);
>  	} else if (GRAPHICS_VER(i915) >= 8) {
> -		rmw_clear(uncore, GEN8_RING_FAULT_REG, RING_FAULT_VALID);
> +		intel_uncore_rmw(uncore, GEN8_RING_FAULT_REG, RING_FAULT_VALID, 0);
>  		intel_uncore_posting_read(uncore, GEN8_RING_FAULT_REG);
>  	} else if (GRAPHICS_VER(i915) >= 6) {
>  		struct intel_engine_cs *engine;
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 24736ebee17c..ffde89c5835a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -35,16 +35,6 @@
>  /* XXX How to handle concurrent GGTT updates using tiling registers? */
>  #define RESET_UNDER_STOP_MACHINE 0
>  
> -static void rmw_set_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 set)
> -{
> -	intel_uncore_rmw_fw(uncore, reg, 0, set);
> -}
> -
> -static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
> -{
> -	intel_uncore_rmw_fw(uncore, reg, clr, 0);
> -}
> -
>  static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
>  {
>  	struct drm_i915_file_private *file_priv = ctx->file_priv;
> @@ -212,7 +202,7 @@ static int g4x_do_reset(struct intel_gt *gt,
>  	int ret;
>  
>  	/* WaVcpClkGateDisableForMediaReset:ctg,elk */
> -	rmw_set_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw_fw(uncore, VDECCLK_GATE_D, 0, VCP_UNIT_CLOCK_GATE_DISABLE);
>  	intel_uncore_posting_read_fw(uncore, VDECCLK_GATE_D);
>  
>  	pci_write_config_byte(pdev, I915_GDRST,
> @@ -234,7 +224,7 @@ static int g4x_do_reset(struct intel_gt *gt,
>  out:
>  	pci_write_config_byte(pdev, I915_GDRST, 0);
>  
> -	rmw_clear_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE, 0);
>  	intel_uncore_posting_read_fw(uncore, VDECCLK_GATE_D);
>  
>  	return ret;
> @@ -448,7 +438,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine,
>  	 * to reset it as well (we will unlock it once the reset sequence is
>  	 * completed).
>  	 */
> -	rmw_set_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
> +	intel_uncore_rmw_fw(uncore, sfc_lock.lock_reg, 0, sfc_lock.lock_bit);
>  
>  	ret = __intel_wait_for_register_fw(uncore,
>  					   sfc_lock.ack_reg,
> @@ -498,7 +488,7 @@ static void gen11_unlock_sfc(struct intel_engine_cs *engine)
>  
>  	get_sfc_forced_lock_data(engine, &sfc_lock);
>  
> -	rmw_clear_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
> +	intel_uncore_rmw_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit, 0);
>  }
>  
>  static int __gen11_reset_engines(struct intel_gt *gt,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
