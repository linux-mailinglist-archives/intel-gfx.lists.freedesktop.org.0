Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FB366E552
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 18:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C1210E310;
	Tue, 17 Jan 2023 17:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7288910E314
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 17:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673978022; x=1705514022;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bp4NOx11DPE29QCShhjuP10CNeWBn0SIeMXOvspgcgs=;
 b=D1lJTPQcs5c1JGgKWLtL2cSv5AVibUaKJxpDjH4L8uny0WKlWqADICFK
 z1fX9AHVXWuZae+E1zJJvPpVoszM1pJ3iD3MiUdLKTOdQJmjqdHgAcKAI
 WjCEIgJvx5nI4YrlJiXlwAQVuci/Rxw9O+qhUAoMeo/+xi2N1JYtb90We
 gV98+LaiLTOPfdwknRoVRJRTEsy8CFK0BMVswIy98aPT6v0I0yoleV8h6
 XYEC9Y2PWswUWnXDJsnAq3Pwo29jQIP44Jy2pdfI1n0VuCS/S5wwO6ePb
 x6CVNTeR+KaLnnNiHCJoRJ0oxBaRmb7cvohSia2dnIKWW30HlcuR0XU5s g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326040843"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326040843"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 09:53:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="722752984"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="722752984"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2023 09:53:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 09:53:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 09:53:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 09:53:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmCGOltrVadX+ar24ixb5G9YKZTWsL7JnlsWJGnyNdRbmmwXcANa5er/RF6P4D0oLESwUZWehjgqpsICHs1g5UzOxQPbXCXWNcJVeoIgTPQH2OxdB9G4MOiJJDZWetnsd3iymOkBeL3WD43FyIF0Gb1ADMmbyZIbcyd9JvN3AcLJPkaNSOF3eCMBUKsHIg0wI5An0kSWf03WnEBeQn3ppli5m4qdOxuIao8KSJH1OdSpZxV5wpRx7OYnJj4fn8wEl/CGsbAN+SMWo64bPFBrYjqfJ8cGR+5q364AJfOwmQNYutBPjAXr0BXeAxnwIxFcHvBHwuK5SWuebwK6JdnPkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oYwQa/gaaNQQQsXO6enAuvvLk1yUJIydW64jVIvk+x4=;
 b=IyzgO8XXhVEmTcSTn/ZliYYtfwUOu298gs7RSNNc5hnqAGqN6TKQb+acQVUDjgCGX3XJjyiIoL8Dl6qy0CXPVjMPhamRLU1/kBz4r3iFGwRkeTu1CJbBm1skusyjzR48vuHC2UfwaPkBm0uF5QWnDFOz7DZx63hYtZ74X7W56LNOBPasbjwWRiwNxM3aGNsMGgP+USHDuOExsMeb9yXLikG31x86w9IgCwA4nRmpubiqruoK4p6wWXLodBzdgg35jJ0RNvLEOS3hJYqWyOHRQowdV4DmYssu3EYDa/QBK3yrf2kfv9s5cXsQ7bmSciir7EjBRPlTwPws7zHv+sIVAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6686.namprd11.prod.outlook.com (2603:10b6:806:259::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 17:53:37 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 17 Jan 2023
 17:53:37 +0000
Date: Tue, 17 Jan 2023 12:53:33 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8bgndYojVvvfq7P@intel.com>
References: <20230116164644.1752009-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230116164644.1752009-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0070.namprd17.prod.outlook.com
 (2603:10b6:a03:167::47) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6686:EE_
X-MS-Office365-Filtering-Correlation-Id: 2685f146-08dd-4845-2046-08daf8b3c242
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kAKYUOn4kEFqISOoeoh+LCU0q358Vi45Rr0rC2xfzBNTP9OeI4JGoExNFBuxR0fgvY1CrcXlwe5R5ByAYxm+/ox+7DuxbrNh2BHQWcnXfpzlDCZjJYvzZqyBMySweV9UC30CliYS1DeeJ+HGj+s6R0qYnMnowR8/+2ch5TadjnbsiHED6qYwQ8LHh8UyoNE4B0DwKNds7FEVNrCmI8WWly7BuiZHflDL5TX0AA5gtq96JM5KvhcawUr81wnYJudSB/JBrMRvldlsxrcRq8RpZj1JtLm6RWqTsA2i+o74pgK+7XE4a6KlxiqLeNZ9PK07n02U0VfsAENFdx07xdojQ1rrdAfkWprwIEeILEjKQeD26qCF56JThN3VU7x1Gr1ryHyLt4sCgAZeb3ac+Ur5Ae2cUfRg1tS65qcm2FfnFlphkd/RE+VO2ICbrY6QmsV1ksBqd8deSPBWDXYrozbOYDWYZ2XsP7qGt0C1DHkPtodlTN79FveH1cPi8LIJpJaK7bDm2NQErwg+C7lITdPS+2gfobKjmz8tejNyCCT0/cncsVAkoZk1mT/aG4T25sPquztxbIzpAcGnVtUS8e+bEpFCwYONybBWsZRiwMJ/o+oKWqHh33odA9dmcgLs2uLTp2qcvpg5a+hM3jSY2qi0qA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(376002)(396003)(346002)(451199015)(36756003)(478600001)(6486002)(6512007)(6636002)(6506007)(6666004)(44832011)(26005)(41300700001)(2906002)(30864003)(6862004)(316002)(37006003)(5660300002)(19627235002)(8936002)(66556008)(8676002)(4326008)(66946007)(66476007)(2616005)(186003)(38100700002)(82960400001)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?iQcP31rNkZwz4goI4s0A4hYj165l3dio3AZDOqFeuyCtYPrEaLudvwp4gZ?=
 =?iso-8859-1?Q?p4j2JnSUHq1+R6h+CTllA0PVpkZcO6WXQF+evJzNj5jq3JAO4j0BFSE39j?=
 =?iso-8859-1?Q?p3Vppkvfsltnvh38ZJbd9h9D3DbRl9wXJ9ZnFLR7I0jqqUhAIWGGlOYERB?=
 =?iso-8859-1?Q?iZO6whRTrKACzw6Tia7fWT/gQYolwderbsFpDFIcGvV0plZjy2lcWpFV0I?=
 =?iso-8859-1?Q?iKr6civB1jrtwqQQLfQGfbIGdInuFxGVc+jfmo8mKu0Qzd80/EaGCdmnXg?=
 =?iso-8859-1?Q?tbc5sFoqeIeF+CJ11KUAQfusAtTUAsdPyiOGK6N1c6nGZCR4Kg/8gUhRg2?=
 =?iso-8859-1?Q?YgBEZSwcOz1FDk7m+U4LW0S8Tl++Evxuz0yeVHrNxB59kONgshpBALjyI2?=
 =?iso-8859-1?Q?BS8EKTrHFeL22ztxzfWhdD22mZZEmG1g+3OqgEBw1DrHZmTylZk8V2HJ7+?=
 =?iso-8859-1?Q?WufUCo+KZC1t3Mgc/+qAdWvqgZYRBTtEJlHIWrm0cmnIHmVF3oTm9x6N5u?=
 =?iso-8859-1?Q?mZeoP8W22gfj0E8fWBtWfsPb5cc47Bz10qq8JHoj3OvBVDuVTm77fonNHP?=
 =?iso-8859-1?Q?VVE5U7VnzR78PInMGR4+LAgnCbQRNMT+oY0UPgAtU6r4DS9t6rZi2lS43J?=
 =?iso-8859-1?Q?iZfPWowJc2Gls3JVJ4BeFAzUITOgjr/sCpYKVWTiln/HwKZxbH/8UiAQHe?=
 =?iso-8859-1?Q?UdeQrJBtTBJq/WuG6ojknp12DMQsFzgcFT8mhphzJuAwfDOengY0MhC+89?=
 =?iso-8859-1?Q?aFZ5/khhBSOd3m5BJLFwHBAcfRQ886EOet6HBNAQ/VINi6Cz7NNY81TPyu?=
 =?iso-8859-1?Q?Wto0G2GboK2QmZR+gsOS+PJZNLyns/3uIso8VWx61ysOOak7ec4a2/Zhv0?=
 =?iso-8859-1?Q?IkbrhlINQuZOdo1lvJGriAKkLBsUaeNuCDRpGLknw+zepMRF4ZuWdWiZUZ?=
 =?iso-8859-1?Q?wBG49+tcihAE6AtfJcZqXtxfyGGHwyM75CgrB5IFaH3eNGZwPSynSXeKoz?=
 =?iso-8859-1?Q?pQGfmr/ULQ6hiP6n9268Oo3/VyU6ullKGzV4PAr8UGHpViKm1TAcII2JxA?=
 =?iso-8859-1?Q?p8mPeAeMZnvNjaiQD/0ieKxY+gtH8W7+LolnumHHMeJQ8jHY48l4uB4lON?=
 =?iso-8859-1?Q?0+CzVl8FMg0rO6WmNCMgZlypwTNQ7iPJNaJLsgKJduuA6iNrQP3C3lfyX5?=
 =?iso-8859-1?Q?jCDD7JozDB24HZ9mTQ43DugYogNwnbKDiu4c1ZoCYF9Ur7RVk3A+Fx2koF?=
 =?iso-8859-1?Q?w/KaYOz3HnPiNvSeZOuEIH7OV4/IRy9r8HIFcNfana65QlXDZLM1+QEoQf?=
 =?iso-8859-1?Q?dHGXTsDTSGNXrIIVCMEMDkcMH1I9Rui63u7JWiqMAIRLNmkK5VVSfr1VVJ?=
 =?iso-8859-1?Q?kCPS+/sC84tfKmNeYu/AR2iert/YC7mFum9pqSzcGU3yRVGxKU6iiTe1mP?=
 =?iso-8859-1?Q?Bm9TIVa+2PDO5d+X5jZRaz4q8zKr3Rq8SsUOanmhRX+DetPtORz0oweizm?=
 =?iso-8859-1?Q?b9PPYnKS9d6qawJa2u5h0zJgNv86nHuZlhZMoDn9/W+BrnokxvBWgmmVCR?=
 =?iso-8859-1?Q?EmsCDatfLY50AQWDfxUCmcJW7GD47YlHap0yQIG0aqb7GHpEFZHmIGG4b0?=
 =?iso-8859-1?Q?g00OwREgGij7fR7+fP4KKUw5lI1++K4PXYDoJNJIOvJqAk5CqekKeFXQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2685f146-08dd-4845-2046-08daf8b3c242
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 17:53:37.3918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bm14g0AhYY9aLeJu2oPcjHExrgIaG+kQNaK0luQt9YhkFW8J1O2Oz53jh4eYNFcenig2JOH3+icrVghOH86Kng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6686
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: add
 intel_display_limits.h for key enums
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

On Mon, Jan 16, 2023 at 06:46:44PM +0200, Jani Nikula wrote:
> Move a handful of key enums to a new file intel_display_limits.h. These
> are the enum types, and the MAX/NUM enumerations within them, that are
> used in other headers. Otherwise, there's no common theme between them.
> 
> Replace intel_display.h include with intel_display_limit.h where
> relevant, and add the intel_display.h include directly in the .c files
> where needed.
> 
> Since intel_display.h is used almost everywhere in display/, include it
> from intel_display_types.h to avoid massive changes across the
> board. There are very few files that would need intel_display_types.h
> but not intel_display.h so this is neglible, and further cleanup between
> these headers can be left for the future.
> 
> Overall this change drops the direct and indirect dependencies on
> intel_display.h from about 300 to about 100 compilation units, because
> we can drop the include from i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> ---
> 
> N.b. intel_display_limits.h is not a great name. I was hoping it was
> only needed for the MAX/NUM enumerations such as I915_MAX_PIPES but
> there are a number of headers that use the types for struct members as
> well. intel_display_enums.h sounds too generic too. Suggestions?
> ---
>  drivers/gpu/drm/i915/display/intel_bw.h       |   2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.h  | 115 +---------------
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +-
>  .../drm/i915/display/intel_display_limits.h   | 124 ++++++++++++++++++
>  .../i915/display/intel_display_power_map.c    |   1 +
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_dvo_dev.h  |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    |   1 +
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   1 +
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |   1 +
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   1 +
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
>  drivers/gpu/drm/i915/gvt/display.c            |   1 +
>  drivers/gpu/drm/i915/gvt/fb_decoder.h         |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   1 +
>  drivers/gpu/drm/i915/i915_vma.c               |   1 +
>  drivers/gpu/drm/i915/intel_device_info.c      |   1 +
>  drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               |   1 +
>  drivers/gpu/drm/i915/intel_pm_types.h         |   2 +-
>  drivers/gpu/drm/i915/vlv_sideband.c           |   1 +
>  26 files changed, 149 insertions(+), 123 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_limits.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index cb7ee3a24a58..f20292143745 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -8,7 +8,7 @@
>  
>  #include <drm/drm_atomic.h>
>  
> -#include "intel_display.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_power.h"
>  #include "intel_global_state.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index c674879a84a5..51e2f6a11ce4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -8,7 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -#include "intel_display.h"
> +#include "intel_display_limits.h"
>  #include "intel_global_state.h"
>  
>  struct drm_i915_private;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index ef73730f32b0..cb6f520cc575 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -28,6 +28,7 @@
>  #include <drm/drm_util.h>
>  
>  #include "i915_reg_defs.h"
> +#include "intel_display_limits.h"
>  
>  enum drm_scaling_filter;
>  struct dpll;
> @@ -62,51 +63,9 @@ struct intel_remapped_info;
>  struct intel_rotation_info;
>  struct pci_dev;
>  
> -/*
> - * Keep the pipe enum values fixed: the code assumes that PIPE_A=0, the
> - * rest have consecutive values and match the enum values of transcoders
> - * with a 1:1 transcoder -> pipe mapping.
> - */
> -enum pipe {
> -	INVALID_PIPE = -1,
> -
> -	PIPE_A = 0,
> -	PIPE_B,
> -	PIPE_C,
> -	PIPE_D,
> -	_PIPE_EDP,
> -
> -	I915_MAX_PIPES = _PIPE_EDP
> -};
>  
>  #define pipe_name(p) ((p) + 'A')
>  
> -enum transcoder {
> -	INVALID_TRANSCODER = -1,
> -	/*
> -	 * The following transcoders have a 1:1 transcoder -> pipe mapping,
> -	 * keep their values fixed: the code assumes that TRANSCODER_A=0, the
> -	 * rest have consecutive values and match the enum values of the pipes
> -	 * they map to.
> -	 */
> -	TRANSCODER_A = PIPE_A,
> -	TRANSCODER_B = PIPE_B,
> -	TRANSCODER_C = PIPE_C,
> -	TRANSCODER_D = PIPE_D,
> -
> -	/*
> -	 * The following transcoders can map to any pipe, their enum value
> -	 * doesn't need to stay fixed.
> -	 */
> -	TRANSCODER_EDP,
> -	TRANSCODER_DSI_0,
> -	TRANSCODER_DSI_1,
> -	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
> -	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
> -
> -	I915_MAX_TRANSCODERS
> -};
> -
>  static inline const char *transcoder_name(enum transcoder transcoder)
>  {
>  	switch (transcoder) {
> @@ -147,29 +106,6 @@ enum i9xx_plane_id {
>  #define plane_name(p) ((p) + 'A')
>  #define sprite_name(p, s) ((p) * RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')
>  
> -/*
> - * Per-pipe plane identifier.
> - * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
> - * number of planes per CRTC.  Not all platforms really have this many planes,
> - * which means some arrays of size I915_MAX_PLANES may have unused entries
> - * between the topmost sprite plane and the cursor plane.
> - *
> - * This is expected to be passed to various register macros
> - * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
> - */
> -enum plane_id {
> -	PLANE_PRIMARY,
> -	PLANE_SPRITE0,
> -	PLANE_SPRITE1,
> -	PLANE_SPRITE2,
> -	PLANE_SPRITE3,
> -	PLANE_SPRITE4,
> -	PLANE_SPRITE5,
> -	PLANE_CURSOR,
> -
> -	I915_MAX_PLANES,
> -};
> -
>  #define for_each_plane_id_on_crtc(__crtc, __p) \
>  	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
>  		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
> @@ -182,34 +118,6 @@ enum plane_id {
>  	for_each_dbuf_slice((__dev_priv), (__slice)) \
>  		for_each_if((__mask) & BIT(__slice))
>  
> -enum port {
> -	PORT_NONE = -1,
> -
> -	PORT_A = 0,
> -	PORT_B,
> -	PORT_C,
> -	PORT_D,
> -	PORT_E,
> -	PORT_F,
> -	PORT_G,
> -	PORT_H,
> -	PORT_I,
> -
> -	/* tgl+ */
> -	PORT_TC1 = PORT_D,
> -	PORT_TC2,
> -	PORT_TC3,
> -	PORT_TC4,
> -	PORT_TC5,
> -	PORT_TC6,
> -
> -	/* XE_LPD repositions D/E offsets and bitfields */
> -	PORT_D_XELPD = PORT_TC5,
> -	PORT_E_XELPD,
> -
> -	I915_MAX_PORTS
> -};
> -
>  #define port_name(p) ((p) + 'A')
>  
>  /*
> @@ -312,27 +220,6 @@ enum phy_fia {
>  	FIA3,
>  };
>  
> -enum hpd_pin {
> -	HPD_NONE = 0,
> -	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
> -	HPD_CRT,
> -	HPD_SDVO_B,
> -	HPD_SDVO_C,
> -	HPD_PORT_A,
> -	HPD_PORT_B,
> -	HPD_PORT_C,
> -	HPD_PORT_D,
> -	HPD_PORT_E,
> -	HPD_PORT_TC1,
> -	HPD_PORT_TC2,
> -	HPD_PORT_TC3,
> -	HPD_PORT_TC4,
> -	HPD_PORT_TC5,
> -	HPD_PORT_TC6,
> -
> -	HPD_NUM_PINS
> -};
> -
>  #define for_each_hpd_pin(__pin) \
>  	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 57ddce3ba02b..1d5d9d56fb3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -17,7 +17,7 @@
>  #include <drm/drm_modeset_lock.h>
>  
>  #include "intel_cdclk.h"
> -#include "intel_display.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_power.h"
>  #include "intel_dmc.h"
>  #include "intel_dpll_mgr.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
> new file mode 100644
> index 000000000000..5126d0b5ae5d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -0,0 +1,124 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_LIMITS_H__
> +#define __INTEL_DISPLAY_LIMITS_H__
> +
> +/*
> + * Keep the pipe enum values fixed: the code assumes that PIPE_A=0, the
> + * rest have consecutive values and match the enum values of transcoders
> + * with a 1:1 transcoder -> pipe mapping.
> + */
> +enum pipe {
> +	INVALID_PIPE = -1,
> +
> +	PIPE_A = 0,
> +	PIPE_B,
> +	PIPE_C,
> +	PIPE_D,
> +	_PIPE_EDP,
> +
> +	I915_MAX_PIPES = _PIPE_EDP
> +};
> +
> +enum transcoder {
> +	INVALID_TRANSCODER = -1,
> +	/*
> +	 * The following transcoders have a 1:1 transcoder -> pipe mapping,
> +	 * keep their values fixed: the code assumes that TRANSCODER_A=0, the
> +	 * rest have consecutive values and match the enum values of the pipes
> +	 * they map to.
> +	 */
> +	TRANSCODER_A = PIPE_A,
> +	TRANSCODER_B = PIPE_B,
> +	TRANSCODER_C = PIPE_C,
> +	TRANSCODER_D = PIPE_D,
> +
> +	/*
> +	 * The following transcoders can map to any pipe, their enum value
> +	 * doesn't need to stay fixed.
> +	 */
> +	TRANSCODER_EDP,
> +	TRANSCODER_DSI_0,
> +	TRANSCODER_DSI_1,
> +	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
> +	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
> +
> +	I915_MAX_TRANSCODERS
> +};
> +
> +/*
> + * Per-pipe plane identifier.
> + * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
> + * number of planes per CRTC.  Not all platforms really have this many planes,
> + * which means some arrays of size I915_MAX_PLANES may have unused entries
> + * between the topmost sprite plane and the cursor plane.
> + *
> + * This is expected to be passed to various register macros
> + * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
> + */
> +enum plane_id {
> +	PLANE_PRIMARY,
> +	PLANE_SPRITE0,
> +	PLANE_SPRITE1,
> +	PLANE_SPRITE2,
> +	PLANE_SPRITE3,
> +	PLANE_SPRITE4,
> +	PLANE_SPRITE5,
> +	PLANE_CURSOR,
> +
> +	I915_MAX_PLANES,
> +};
> +
> +enum port {
> +	PORT_NONE = -1,
> +
> +	PORT_A = 0,
> +	PORT_B,
> +	PORT_C,
> +	PORT_D,
> +	PORT_E,
> +	PORT_F,
> +	PORT_G,
> +	PORT_H,
> +	PORT_I,
> +
> +	/* tgl+ */
> +	PORT_TC1 = PORT_D,
> +	PORT_TC2,
> +	PORT_TC3,
> +	PORT_TC4,
> +	PORT_TC5,
> +	PORT_TC6,
> +
> +	/* XE_LPD repositions D/E offsets and bitfields */
> +	PORT_D_XELPD = PORT_TC5,
> +	PORT_E_XELPD,
> +
> +	I915_MAX_PORTS
> +};
> +
> +enum hpd_pin {
> +	HPD_NONE = 0,
> +	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
> +	HPD_CRT,
> +	HPD_SDVO_B,
> +	HPD_SDVO_C,
> +	HPD_PORT_A,
> +	HPD_PORT_B,
> +	HPD_PORT_C,
> +	HPD_PORT_D,
> +	HPD_PORT_E,
> +	HPD_PORT_TC1,
> +	HPD_PORT_TC2,
> +	HPD_PORT_TC3,
> +	HPD_PORT_TC4,
> +	HPD_PORT_TC5,
> +	HPD_PORT_TC6,
> +
> +	HPD_NUM_PINS
> +};
> +
> +#endif /* __INTEL_DISPLAY_LIMITS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index f5d66ca85b19..6645eb1911d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -10,6 +10,7 @@
>  
>  #include "intel_display_power_map.h"
>  #include "intel_display_power_well.h"
> +#include "intel_display_types.h"
>  
>  #define __LIST_INLINE_ELEMS(__elem_type, ...) \
>  	((__elem_type[]) { __VA_ARGS__ })
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 32e8b2fc3cc6..8f3d5d02e207 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -50,6 +50,7 @@
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
>  #include "intel_display.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_power.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_pm_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> index ea8eb7dcee38..f7e98e1c6470 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> +++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> @@ -25,7 +25,7 @@
>  
>  #include "i915_reg_defs.h"
>  
> -#include "intel_display.h"
> +#include "intel_display_limits.h"
>  
>  enum drm_connector_status;
>  struct drm_display_mode;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 7a5a4e67cd73..37954c472070 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -8,7 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -#include "intel_display.h"
> +#include "intel_display_limits.h"
>  #include "intel_global_state.h"
>  #include "intel_pm_types.h"
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 005a7f842784..e76c9703680e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -5,6 +5,7 @@
>  
>  #include <drm/drm_fourcc.h>
>  
> +#include "display/intel_display.h"
>  #include "gem/i915_gem_ioctls.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 9969e687ad85..497de40b8e68 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -4,6 +4,7 @@
>   * Copyright © 2014-2016 Intel Corporation
>   */
>  
> +#include "display/intel_display.h"
>  #include "display/intel_frontbuffer.h"
>  #include "gt/intel_gt.h"
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 0c7fe360f873..b2f3f49f418f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -12,6 +12,7 @@
>  #include <drm/i915_drm.h>
>  #include <drm/intel-gtt.h>
>  
> +#include "display/intel_display.h"
>  #include "gem/i915_gem_lmem.h"
>  
>  #include "intel_ggtt_gmch.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index 7ac8ed13e1fe..37d0b0fe791d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/highmem.h>
>  
> +#include "display/intel_display.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_scatterlist.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 9ad3bc7201cb..f5d7b5126433 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -7,6 +7,7 @@
>  
>  #include <drm/i915_drm.h>
>  
> +#include "display/intel_display.h"
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "intel_breadcrumbs.h"
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> index 0ebf5fbf0e39..3c4ae1da0d41 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -49,6 +49,7 @@
>  #include "i915_pvinfo.h"
>  #include "trace.h"
>  
> +#include "display/intel_display.h"
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_pm.h"
>  #include "gt/intel_context.h"
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index c033249e73f4..4d898b14de93 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -36,6 +36,7 @@
>  #include "i915_reg.h"
>  #include "gvt.h"
>  
> +#include "display/intel_display.h"
>  #include "display/intel_dpio_phy.h"
>  
>  static int get_edp_pipe(struct intel_vgpu *vgpu)
> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.h b/drivers/gpu/drm/i915/gvt/fb_decoder.h
> index 0daa3931aef7..4eff44194439 100644
> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.h
> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.h
> @@ -38,7 +38,7 @@
>  
>  #include <linux/types.h>
>  
> -#include "display/intel_display.h"
> +#include "display/intel_display_limits.h"
>  
>  struct intel_vgpu;
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 48fd82722f12..aa7901bf484f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -36,7 +36,7 @@
>  
>  #include <drm/ttm/ttm_device.h>
>  
> -#include "display/intel_display.h"
> +#include "display/intel_display_limits.h"
>  #include "display/intel_display_core.h"
>  
>  #include "gem/i915_gem_context_types.h"
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index bc1af7e8f398..c69637bf0ad7 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -26,6 +26,7 @@
>  #include <drm/drm_drv.h>
>  #include <drm/i915_pciids.h>
>  
> +#include "display/intel_display.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_sa_media.h"
>  
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 5272e2be990e..f51fd9fd4c89 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -26,6 +26,7 @@
>  #include <linux/dma-fence-array.h>
>  #include <drm/drm_gem.h>
>  
> +#include "display/intel_display.h"
>  #include "display/intel_frontbuffer.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_tiling.h"
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 05e90d09b208..98769e5f2c3d 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -29,6 +29,7 @@
>  
>  #include "display/intel_cdclk.h"
>  #include "display/intel_de.h"
> +#include "display/intel_display.h"
>  #include "gt/intel_gt_regs.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d588e5fd2eea..80bda653d61b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -29,7 +29,7 @@
>  
>  #include "intel_step.h"
>  
> -#include "display/intel_display.h"
> +#include "display/intel_display_limits.h"
>  
>  #include "gt/intel_engine_types.h"
>  #include "gt/intel_context_types.h"
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index ce6b3c3b636a..1f4805aa2b08 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -5,6 +5,7 @@
>  
>  #include "display/intel_audio_regs.h"
>  #include "display/intel_backlight_regs.h"
> +#include "display/intel_display_types.h"
>  #include "display/intel_dmc_regs.h"
>  #include "display/intel_dpio_phy.h"
>  #include "display/vlv_dsi_pll_regs.h"
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 73c88b1c9545..3fc65bd12cc1 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -26,6 +26,7 @@
>   */
>  
>  #include "display/intel_de.h"
> +#include "display/intel_display.h"
>  #include "display/intel_display_trace.h"
>  #include "display/skl_watermark.h"
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm_types.h b/drivers/gpu/drm/i915/intel_pm_types.h
> index 211632f58751..93152537b420 100644
> --- a/drivers/gpu/drm/i915/intel_pm_types.h
> +++ b/drivers/gpu/drm/i915/intel_pm_types.h
> @@ -8,7 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -#include "display/intel_display.h"
> +#include "display/intel_display_limits.h"
>  
>  enum intel_ddb_partitioning {
>  	INTEL_DDB_PART_1_2,
> diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
> index 6eea6e1a99c0..b98dec3ad817 100644
> --- a/drivers/gpu/drm/i915/vlv_sideband.c
> +++ b/drivers/gpu/drm/i915/vlv_sideband.c
> @@ -9,6 +9,7 @@
>  #include "vlv_sideband.h"
>  
>  #include "display/intel_dpio_phy.h"
> +#include "display/intel_display_types.h"
>  
>  /*
>   * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
> -- 
> 2.34.1
> 
