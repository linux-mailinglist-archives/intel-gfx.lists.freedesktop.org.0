Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342D58519DA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 17:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FFB110E9EB;
	Mon, 12 Feb 2024 16:44:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6DZIhuh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D15C10E9EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 16:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707756296; x=1739292296;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Kp6ueQVcMjBgK/F/XUGvzwltd9aysF/AT1DyvqxreSA=;
 b=Z6DZIhuhd6k4Gqp+EukuhU1Ve+TeA0m4SPhvxD93/K8+lgmk+wlc/ngf
 0+8psimRmkxKZOphAOrFDJUGE7ojoy4+RxaVpINMTzRTu4IPEaho++rHm
 dXy4JfWF83TXyscRvirb7+ztD0FFcDMtT07MaBG1Ab13A4oE57XJqtr2Z
 kZslf935yullsOkfC2jp7I5PBr9s35m7htQgwIV1bLzhhfzrQeNgKi6xq
 cdFyKyD+A+X3GcfKdpuEq+JrUTywW1zfILXwPs+WQ+uqTginN3BaEyY1y
 DMTbKCFfZrnhuhw5olYJEgsKOzWXLM+KfT6liX6aVtM1FHA4hmp7ssDVc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19246706"
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; d="scan'208";a="19246706"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 08:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="2606142"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 08:44:51 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 08:44:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 08:44:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 08:44:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 08:44:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rk0SJGH0O33inqOALUuLRB2509rPCPPxYX/fELKDZisI+W4x+kTteABFJ1u/fTjmTLeUZUZngRh4PKV6bSu6pM6GUH7Ur4/kyoGNvQQz5eqCIzJ1ezb25WM1ud+euYOA+TQO4ejO8MchbfWvkJ45p9+vU8gTFpI1FdDxhNnplOaulBYA7nFGB2U+tlBUTzwU66spima/BwP9RJ5oW9X05TS8ZlbHB0wYy6eV66rKlZPSkCavGMP+XL474Uux/6gXd2WjoET6tamQqHZDI1bu5I4UUy9kMerU+hX9uLFreH6EZ8VyKVN4hXKT0+TVy+SPHfwA0ZC+pHtlg2NEkX3yeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p1334ldyO2FTQ1IrbtO2w54odkODB7NoTB2rupFxrH4=;
 b=OTiawWNRuORY4MyfnQqf/Jnf5O7c6MtWoLA/dyBAknlSW3n+XSlvfPc1aJC+/IAquMpt+8HivHRrV4rNSrxzoDrFsi2AcD0CSUfUtLLdRqjRflle5ESf9FvbqqRTCiepTna5oquV2PiLLYE3nOBfEsnirqvFmdRuEcOLFXGAecEa9VMFnNydck+CBJ8xFrCrUZtf9n68e5shDsaAlQJ4u662j9Jnlou0gwcLOnRK2ovjqQ2TXd4w6RP9VlComJ4TLs1K9agwHJQ1hPGotzAd6AKavRaZdlsLdrAErvNNOdHuhVGDhfecY89vp4WirotdAl7G1mYilNYHkee7r0o9TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA0PR11MB4752.namprd11.prod.outlook.com (2603:10b6:806:99::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.38; Mon, 12 Feb
 2024 16:44:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7270.036; Mon, 12 Feb 2024
 16:44:23 +0000
Date: Mon, 12 Feb 2024 08:44:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/bios: bump expected child device size
Message-ID: <20240212164420.GC718896@mdroper-desk1.amr.corp.intel.com>
References: <20240131184841.872487-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240131184841.872487-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR04CA0025.namprd04.prod.outlook.com
 (2603:10b6:a03:40::38) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA0PR11MB4752:EE_
X-MS-Office365-Filtering-Correlation-Id: 20f7edde-7d13-4c9c-4752-08dc2be9ddd3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NB/n/pOYdKJxZykAvOfkJm2a4HgdXPlIStFSZAP7crQqlkS8ztyTW1BvsGdPLAmvmqKGEEH9CkPqN5kkNACdMfRtuBCSr+U0DhIBDzKNTkUOfe58SUAzf8sGPh1wIHAS9reo/3voo9ueUo7FxSLJnGF3+ySbFF3v13noXqekmlclsTlrkJiaOzZMMaBooI4Df2WnDXEveX4e3x6GBKsdeTxE510qhPdY98aRNxy2qxmoQE//JbiOTDJDRsNR5V7YOGia7nlorj0bmdhAmtqIhuO74/DqM2Jha+l7+hFmTKwM/AQ22sufiH1/QKyPIT6wkqJx5X+ezaVDxNlv8x60phJLl6zoG/3c3SyGOYST7PlH5mbKsj+QeCO4SfbqzfTpdk2b4bTwh/cYB0+RilhyHXq4oxaPL3Yen2ZGQRvFqO/eswyNoSHaBqOYTvgVEG5k27bwv2bgxN+RJOZEm2h87q6GybpxwejRTEjkXUWHBuhYwDKvGZMfzMq75MvlH8SC658qfxc7ewh94++5uw6U2uhE75wxHqtBVRM3gTokyThRk079ipuqf7RmRCuKfuTx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(136003)(376002)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(33656002)(6506007)(6486002)(478600001)(26005)(1076003)(6512007)(2906002)(4326008)(5660300002)(66556008)(66476007)(66946007)(6862004)(6636002)(8676002)(8936002)(316002)(86362001)(83380400001)(82960400001)(38100700002)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W52kDpUVb9apom6is8sntxCqKJh/dw4rRFbsotiWNM7HQNaBhMdtCr/iBTmq?=
 =?us-ascii?Q?cSOQEZ8JChW32XduDvnXEkAT0BXKHDXRu8lG873NcBbzJTOTBcdIu4GUn7c8?=
 =?us-ascii?Q?OgDy0qjPW+bUGiyBuCWexzxW49aT285aDc/bNvUPwgM+mhg+QY9sRqt2Nmxi?=
 =?us-ascii?Q?VWeAfZsUkEdWRxIhrIH/lE0+AM+k1e0qcRKY3YogYgDSZakaEiRivnE/fkCv?=
 =?us-ascii?Q?ho+eSjRmikdZCL8li/SXzyuKFu5TJhKfk98iLVtcuVvo7b0FYodTqDwlejXJ?=
 =?us-ascii?Q?d9xyeqWjo2OhPM7dcjfjH5cz9kEXs5jROvRzSzvGGpGcc2xEg01iYRMFKiAp?=
 =?us-ascii?Q?pXT3fdfDwdFT9wlrtUFsg1LBhR38EJzSWXRFt3NfUpENani0Aj4dUix69Juz?=
 =?us-ascii?Q?S67ZitooOj1gxag1EAfvF9RI41z6DTR8uclOT1Hd6PsmDiQcSRY5YwEZTsMV?=
 =?us-ascii?Q?ist0MZzxm1PwSJywwAykY0aoqHQvW+lgTpI/J50igW0AFlrpIo73Zbhr3nIE?=
 =?us-ascii?Q?I1Zp32829KQk/Q54VLXSdiG+zRl8Iv5ymTFOnGrsuzYIrmfMPGJL5RC2Hn4t?=
 =?us-ascii?Q?Iqj/JcPGaJvSQUOQNxT1OiRJKz8dicop8Ua4t4uyvtSP873IJhUPIr2pB1NP?=
 =?us-ascii?Q?366SGh1R42xK8ZEbVXqXK16A/t1kJbOB5iNj8ADuVG1ro5/9I6ht+zF9Q0V1?=
 =?us-ascii?Q?m/a5WR22FI1cv44SvW7u9TtAMjTmLKaqCbzrRxsJCFBngr6OjUXNV9t9nvhA?=
 =?us-ascii?Q?xMqRbvAt/8FWVvXmaBD5YeQe+yCU0YYQzmaHS25Mq5AE+VYV8QgUIgnESFr0?=
 =?us-ascii?Q?p4oU/YG740xQt/ZD2GHsc1RRHJyOBz6BD0Mizf3gWHU1R6RkN1n3qtKQEAKs?=
 =?us-ascii?Q?SRwfiW0pHOOK/ky4eWeRWwBLnqAA9nHyu9ecoTxW18p8sg4TKQl8fQ+ZKCSS?=
 =?us-ascii?Q?EaZAOLYvTtJNuBWEpsD69rm+aNsjcz1gpm+tWRDktvKV17N18W2FcYXgoRpV?=
 =?us-ascii?Q?KqZpRoEGMmrPtKVsCCF+Tdx9tHsjxSNtVbb1mcKH0I6qQ5eEQRu8BUqKQBd5?=
 =?us-ascii?Q?TETvlVkpSP/mYTOIV+gUceYoMq+dPB2luR7ocZXIiCwnKErMJvqDJkgn46CR?=
 =?us-ascii?Q?UVx2IOBfPIhQ8j9w5r8rhuXg2zyQu8YFiFH7Anjc911pxctRJ+a8+dTEfvOz?=
 =?us-ascii?Q?okVPML2fTx3swi4IEyqq1RlUAVqU//swCXgTsM5SF1snAvkSL+TgVWoxjYNH?=
 =?us-ascii?Q?r7r+wKT6CS5tmL/6L02ERb2I2oo9b0gRxfyF5wQjJeARTuyZZu9Q6V0iOqSs?=
 =?us-ascii?Q?XGMf1mMG8X+sePCUeJqrEAdT21mrWdxkUs0nHZpdtbd7vckUAIfHr+5fBikv?=
 =?us-ascii?Q?wTe8ziiDVtFYURixgbEoxCFJseTlJi+qdbVW1wlWPbMOHWjnQAf1CGnE144O?=
 =?us-ascii?Q?WuBA4/Bz80BixC8CHfyIfSU/jqJDz+tZkyMC6wisDg5l/9J+xj9aGrKsQ5vJ?=
 =?us-ascii?Q?1OqWz3x96sDRAWU3kIi/+Fwhk1VBkjWPdlHwcynwb12rAdwST0vp9DMys3B2?=
 =?us-ascii?Q?BY22KnEmeM6EhGCI7SXXI7r9AnY2YD444sGU5kflsHGkAdWy26aC8gC0H44i?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20f7edde-7d13-4c9c-4752-08dc2be9ddd3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2024 16:44:22.9786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X759MnO7UJq1+JfwksZbXAoRfKQ3Tr14MfAboNESRg9g7hmSeVspvdQb22e2hHJ19t2hbrddoONosVbruT4qS46xt2iztFc45dcFWEUlQ9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4752
X-OriginatorOrg: intel.com
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

On Wed, Jan 31, 2024 at 08:48:39PM +0200, Jani Nikula wrote:
> VBT versions since 256 have an extra byte for EFP index.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 4 +++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 5f04e495fd27..2805ad701fe4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2736,8 +2736,10 @@ parse_general_definitions(struct drm_i915_private *i915)
>  		expected_size = 37;
>  	} else if (i915->display.vbt.version <= 215) {
>  		expected_size = 38;
> -	} else if (i915->display.vbt.version <= 250) {
> +	} else if (i915->display.vbt.version <= 255) {
>  		expected_size = 39;
> +	} else if (i915->display.vbt.version <= 256) {
> +		expected_size = 40;
>  	} else {
>  		expected_size = sizeof(*child);
>  		BUILD_BUG_ON(sizeof(*child) < 39);

Should this size be updated as well?


Matt

> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index a9f44abfc9fc..648934fcd123 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -485,6 +485,7 @@ struct child_device_config {
>  	u8 hdmi_iboost_level:4;					/* 196+ */
>  	u8 dp_max_link_rate:3;					/* 216+ */
>  	u8 dp_max_link_rate_reserved:5;				/* 216+ */
> +	u8 efp_index;						/* 256+ */
>  } __packed;
>  
>  struct bdb_general_definitions {
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
