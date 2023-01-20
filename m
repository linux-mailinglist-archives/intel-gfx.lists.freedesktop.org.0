Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53127675281
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:32:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94DB10E0EA;
	Fri, 20 Jan 2023 10:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6950610E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674210763; x=1705746763;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HtDE8hwlt5ZPB0+CS4eq0zonezu6yPM6gfpiTgMcWDo=;
 b=KF+T0840Oz2uYIOhU3b2NbKXhnj5NsfpZhUHN3nleS11UQ6t/VIUJffQ
 XxiXVSx49+DDi+qZSw7csJhYrS5+zLvSrXhbDFG9DonB6vV+GXad1c6pR
 2ekZjBOL/dWHjUE2TnA4+qDJfj7GMXMyv6s2CFcRyo7/heGaHRQ5AWlj+
 pi/kMyhOi40LEXsSZMoCehgj6NeFI7YanMZkLUbTM8Am59bXTUDJfwlY+
 vsDuCKekYbfy5hVIA8oGJqicDiPsD4Rr+/FSCeYLslbeCSv6wqtBJIK7i
 xfbZnEGV3tLbhRczn3P+PyPW7O2fp+QdnU56jtDbclNLxaHUfHId+p7Sw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="411782599"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="411782599"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="638118028"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="638118028"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2023 02:32:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:32:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:32:42 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:32:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnyLD7C7g2VdDHzt8tqUbgyVZl4EnTARYfxOheL1TvlbaEOh/z2wDmNjVulNB2F1+zah1p6YxqDe7RxvrppHaxaQH5An5OZbbyBBKhBojYC9Y+LH5/5NjiYTU3Ozguwtqw2bFoslSNfHKZfYFitnAWhxdh+HR2TTpiGYcRQrszzWV9KfVs3kpvrqLRK/Vzju+i2V3j+V245Qj8pv2K6HPXxefJ8kcN4FWS5ViGtI8sZazQrZonZzZ4xkxrDiKy8Cs1ad+hHr7AN2P6R/K/KsZwNL43SlZ1POKKz9rSCxs06uTqij4aldieuhcpbGWF41oJAAq8ZpAZvNTXEPkLjqKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2gx0/TQJ8YvvHG5YF+V+k456jxocjV3MT0utWQI2nxU=;
 b=BD3D2Cg10e7n9uKRDMq6Nf6UrhYJUnPW4QCP1C+jQu+7If852gDd+c06xBaTPuJivoqvcscIeCmdWogILEARl28QuwMvqauLJEJ/IuZDi0y4sczGcAG7IZi/IrkIwTWBMJ1uLJcoZdgr1N1dqTlLNkmiO7CTF1wtpipKvRkmjkuX46YQ1PUMMYVflW8dQ6UrNorwFSZJbLocWfAMZUsB1IkCQCYEk8bBOv2EtFxHfzV/v3DSOWjPauomBIB9zsVbIHIARFfuFBqK1xsdN40zXs7Zd3DgFpmjZFUHEtFoLTYatnnvJEGSRjWRrVsmcSlDnGFwbehp8BTR3OZys2tcZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5531.namprd11.prod.outlook.com (2603:10b6:408:104::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 10:32:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:32:39 +0000
Date: Fri, 20 Jan 2023 05:32:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8ptwyLJQqEbhjqy@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118131538.3558599-2-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0256.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5531:EE_
X-MS-Office365-Filtering-Correlation-Id: 5be849d6-96ee-4bcf-1951-08dafad1a75c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iHG/EgGxCFfbl+c3d7C/NHX1bAjLCJZA9OhPWfBRljSsw3Sk0mV5tKmRshQ/bfbCy4hPlDRtykKmZ0iPo4wvuhC0w4c9SpPRxJVkwdVAd1l0Bthq6Dei7g6xth8MPzyqDsQdJ3C+FJSX9jXIyvVHMpcj6k/bS93Sdz0lvGjN2dSzE+A2+zVcQxpvMvlBjpml/5KaJqZUfTZNy86T0LTyVcQ1xN4voJs3R24wTtvPRJcBYyCfkM+yWiEW67tCJ/sY1Oxg0032WSK1d0TZ5c/H56raX3Thfqt5WnY1tcoiy6RFt/5ACVB/xotxIfN2cyVZLSTR4Hv/arDbuVY/y1qA7hbd1guSXIgaZScRjnLWbKcSlDMuiO5BckyyZP9fRKmkX+Nqu6cAunEqGGZOvEIfl+UJIXd22fc82Bo00O08kRscKjfKfN/i2t+LKt/215tkq05xg7FDk3SCQ0w5oCducCGvEPTYtxq4H8cPZRabYfSiEb2wmz70BnYl2+OQBREcwfu22th7idhta0U3CpA+VnnNJzEGzCd0duzur3QHjR0NusAUKR5i/4xjbd4j+Af0yHY8VDkYX2TW+8Qhsqxq81Dd3rGEVXKExM00k6f7ZGbaK6jT24G5Jz1Yz3DHB6do/6lcvcl/E4O4Mqa72wMd7Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(376002)(366004)(136003)(346002)(451199015)(186003)(6512007)(26005)(2906002)(6506007)(37006003)(316002)(6636002)(2616005)(6486002)(478600001)(36756003)(6666004)(38100700002)(86362001)(82960400001)(83380400001)(41300700001)(4326008)(6862004)(44832011)(5660300002)(8936002)(66946007)(66556008)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V/+dHZtouGDcdoE07k3NyJM58PV1mLvDeufO8MX0UROYMX/e73I8fhh2tEI8?=
 =?us-ascii?Q?xOlM/aICJDEP6jMwSmugIEz+4svC2a1dsr4/ehyc7djN4uTuWhkRVuoWYLYr?=
 =?us-ascii?Q?4uSBl/U41s4scXJlqOJYzG4cJHXZexaeuh7ilITCdgU3Dst/sniulN13k3j9?=
 =?us-ascii?Q?aXUAoePh9xpoCg2IQ/Yd4Gov2UxonvAXTFcVZXvK9POvmeFYpXYGKbz8wcX1?=
 =?us-ascii?Q?m7T0EFQ2dSD1xxExxQblqzt/nD9JvfH3uRsFjkMz/A3MGdvZ5ckqDfEfxf75?=
 =?us-ascii?Q?65XNkSoHjrepGJUym4bq36VziVgmqHjMfpAGTgKF7ASbt6V/Nya33NESF7s/?=
 =?us-ascii?Q?HKZcMYyAb+qnaCga0yIoovpyx99I//MGgUEM9urCPq47T+tREh+kkGIV44/m?=
 =?us-ascii?Q?GhhoyqQtVWrCXcwCeoBkbxN+GkEBaTJAo0HtBp5i6UHhnwS9M63FJj4N+K6+?=
 =?us-ascii?Q?6aOjomdAMzZVPcp7U0Wq1RKrBsZC60tKgqMhmP95HlGtPQfXRiSyj69fYY/d?=
 =?us-ascii?Q?rBgtZZ69czufXxkw+LGvaYmg8wy5fq9YG/ZTiYqzP9gcMwxcB8czAtLDJf7r?=
 =?us-ascii?Q?AK5Zt8c9mV8sEO6bOdRXpwMptx7LChQzPJ3fVyiwbmG1Fo0A1zyYVRQtKo//?=
 =?us-ascii?Q?bB5SWHpgoVLYCjV93fojEtA+C1LuubyNOUQSGhmNcrmU4+vbewvHV7PSHfKl?=
 =?us-ascii?Q?+Waf0kTrtoMCgFjH66iUPCF3Y6OeVupd3FTEC/+bf2P/PeFQsCzElxsB8iG0?=
 =?us-ascii?Q?Xu5N8YR5IDIDaAZTbyzLtnho4Ia3Fhdp03RGODj81NXZa6dXvBSTeDUylBC0?=
 =?us-ascii?Q?vwi6+zwSKjrhlmSjwwc0/dSz+bJlnTtfc/VObnHUAwkphrXjNDn4EatgAIkj?=
 =?us-ascii?Q?m+bsmoIeb8g4vSH8yJFKODJD7eLKsN0GglkFe1Ykbj/HnsyHqMuuhtc1T+vU?=
 =?us-ascii?Q?ONqKExZwzD/P2GsbKNgUcnadBG9cD5yIhEB3gfyc/bSYYLzzeLGddF/E6u7O?=
 =?us-ascii?Q?LAcilhnCkYTY+TlTLfMkugTLhKFAdMc2XsGGCmsCU7BJteBtHlKPVuVxErXI?=
 =?us-ascii?Q?J9Y5llgTISMSZtoc4g6zts4fkcwja52S83GYvOF5T20x5fzaQMQkDI9DYnlp?=
 =?us-ascii?Q?9htsgJOXdoYlW856IOrMaW5BRDk5BBhFHKsKDZLcEG4jBiPsmjadzGXrsOdu?=
 =?us-ascii?Q?cvx0a4i08Fxj8FfUm99He0g9U4gSJl6A4OM6xDpg/dPKhd3c0esFvLQvnCmZ?=
 =?us-ascii?Q?JffUz+UjJlUQh1omczyxDlYk7rQzMy/AMqK99BGE7hKKqC6KnNtJMRE06qpM?=
 =?us-ascii?Q?/TGzT4ClqDN82ncviKPgoBT5Enk7nLj+5vHXYGOu6dL+EYeYZVYShkm+FVKS?=
 =?us-ascii?Q?E6ntcetnYah7f/I8xhW0dUxCJSybYUAINSJmOWIDcMps6mqAYpB4DsuzNU7L?=
 =?us-ascii?Q?xhGrPwWUXVUXlU65m/USC76joRCbhUTdBKozzFtT69GxO/KYlYThDMuLeVW3?=
 =?us-ascii?Q?FAzEC5I0HMYBBJAkplkArCJF6pTlhmx4N10OODK1Am2nbTSRDzvQG32xApal?=
 =?us-ascii?Q?XUsKI7HvnCjNjQAx5y1ItMAH7POUOSSSwgaP/mSpBnmkD0R1UaTdXluayX6U?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5be849d6-96ee-4bcf-1951-08dafad1a75c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:32:39.2735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sLaIsQfBl2ModGQDB0FlwbNbJLEDog22U8HT0HzXCSlkgJ1yZuSxyw1sbAtHCaW1/NtX2BLXrFB5IAFrsWhSDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: move
 I915_IDLE_ENGINES_TIMEOUT next to its only user
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

On Wed, Jan 18, 2023 at 03:15:33PM +0200, Jani Nikula wrote:
> Declutter i915_drv.h. If there's ever a need to use this in more than
> one place, we can figure out a better spot then. For now, this seems
> easiest.

why don't we get rid of the single use macro instead?

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 3 +++
>  drivers/gpu/drm/i915/i915_drv.h     | 2 --
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index a356ca490159..51ba9a8369c5 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -648,6 +648,9 @@ i915_drop_caches_get(void *data, u64 *val)
>  
>  	return 0;
>  }
> +
> +#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
> +
>  static int
>  gt_drop_caches(struct intel_gt *gt, u64 val)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8377173e8de5..343e3e568774 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -194,8 +194,6 @@ struct i915_gem_mm {
>  	u32 shrink_count;
>  };
>  
> -#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
> -
>  #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>  
>  struct i915_virtual_gpu {
> -- 
> 2.34.1
> 
