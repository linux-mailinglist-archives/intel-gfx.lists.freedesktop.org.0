Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED15F647603
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 20:14:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8241310E4C4;
	Thu,  8 Dec 2022 19:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A600810E4C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 19:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670526857; x=1702062857;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3uVQNbncSKZAKU6paB3a2+kX3b4Hz1qo3lBWElwKg3o=;
 b=UetlIhK2sySJxMoiYUUCLmbr0rhV6DOQqOqyahktYS7V8V+9UqBksXz0
 mTz4lf+B3iXSxV+o0qn+0ip0cOe26IhAtBbn2Ka9Fvk5GjWE2wZ+5TEFV
 Rut3Rc+0asbfYPCL2Fmhfw4SwLBdwBPzE1I9BK/ePf/fWEkjx3NkhHm09
 UrrRqQYNiVeP96/IztqKVbogDDpYWeE4Eex+Jc0jqOU1ikO6H2fuzNhjn
 S5w7k+kaEXYJOqTADYb0QWZ3nwz5bDkiyxGXjaxJ47RI9rIM9axdcVH8V
 vAUzt6JjYMmTVo5wLu9bR1lPhtnU+5d2i4yTXSFQvoNVv/ojNAyQ79DpT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="314909634"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="314909634"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 11:11:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="679652511"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="679652511"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 08 Dec 2022 11:11:02 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 11:11:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 11:11:01 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 11:11:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 11:11:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkc7L1RBgI/XyfTOS2KdPbCPXlGCvHGDgnshrhNZI5cFNR3ha511MzifNiKypqHIM0u5qttlG0JmgUxG2WwUrc4MSqNGSRISIgpkGqpVPRKfxscBnIDixDepsyIwI7cN81HfTkL9l6pnwdZzS5S8JFh9WDJz3Ey2l5EtYK2sTO2iqWaovXnUj3h7z0l3KGTH9cr1Oh0p6ZpyZ3afFlSYf7PZCzGLqJGdcwm7U34z/2UtV4G+n+5yDahyYbaHaJwFGNNti1mjSp45EWpsUOhl326fdmxQwiKtt6MfuAkqjsI9UPgPNtDR44b4wCdivrHuD8p87vgWw1d9MLApjWO6lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VuaH/BYG5fTbY90E2AUlMjwb5GEWW2v6CBLoSms4Asc=;
 b=LnC12/Lxee282eqDk49fwiG0yivCqcMYTOW2kBM3qwuqDwyusXnk8+mWl8ctAjiecOzbce3UN2hr3/ui3kCA8vWajrj31WxVASjmDkz9lcY886/wOu1HeidHXBA7V3HqAAm3e0eCzBJEGVN/9SIBE3QyQKtdGpBHxBFSxQESS66rjXwgISlV7ommpGdEiCEOqPO4T/NfIlzmxVtEm/EtR9CKb2N489i4FBF16htPMR1NhoR6vRh4r5G/o3J2EfjXRL10Q1FhPZzy2DBfZYKzXjX5Myp7EeZbePb1vuuBoeVZzmYfejmLNoiBp2qJ3+La9Pcgm12asgKhG6GXxxx5UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA0PR11MB4624.namprd11.prod.outlook.com (2603:10b6:806:98::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 19:10:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5880.013; Thu, 8 Dec 2022
 19:10:59 +0000
Date: Thu, 8 Dec 2022 11:10:56 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20221208191056.imesdzudpeltiuno@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221208133638.478024-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221208133638.478024-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0065.namprd02.prod.outlook.com
 (2603:10b6:a03:54::42) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA0PR11MB4624:EE_
X-MS-Office365-Filtering-Correlation-Id: 12e327df-f4a2-45fd-1f2a-08dad94ff08c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RhjyRJ5YMnyvdFBQNf0uUuKBNvRVdy3/5k75sinRBTqhR6gzD8ZXGp1MBzWadWWkHuDFDDngl7HqvnL/W3y7ajyUZZawIXitsrzfdeVmTAPVibjDqUcCN+tkqMCzjxN5Z5e7uKer+DBQ61TTTMUafwhmZUH9rELhmAmaxvs4eJN0xKxSAnqIVC4nEpcvJaJQnhcP2Jz8E579lrc4mqHQQlKXoTDH/dg4jZQNki/PvN6lVZCrokNcZmE6eo22plHthh6IX/wEIfpUYWSFNLJw/ThCWg9G+LPxiJHgemj8X8V/Dtp/zluoIABse2dUELHS/HwgM3Jo11Hn41X8X9ygWAq8V6WWc7VqBLypeaVXP5G6B128Vm++2g/Sps90GOuBAlB0IPHtM9xlmdTu9otHaEyA5PPWn83s8fWExlTOxEFxF0vqcvloHvL67VLXUPoA8WWo/SzivMzBaR8pC+53hmNfWWD6Mj7K+bMas+nxJ05CQHrRZKM41sphAkhalxEZwUE6VcSkQEUtxHTbTWToeq4hUCCpoWl8HbQ+XPkRPs+O1s1GWjw3DvplWEPMfXd//M+EsI1wrzX6PUa3BeLRTinsCdfaA5QJVF55Rkqboh1WQGuD2Rr2i9/3IYUI4iogVCqIsmVb8O2KTGNHfveWIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(376002)(366004)(346002)(451199015)(83380400001)(82960400001)(8936002)(86362001)(3716004)(2906002)(5660300002)(41300700001)(4744005)(6862004)(4326008)(478600001)(186003)(26005)(6506007)(9686003)(1076003)(6512007)(6666004)(66946007)(38100700002)(8676002)(66556008)(6486002)(6636002)(316002)(66476007)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wbKd+vnlNVOT7bnMCQHiV3+vML+ZGTrqtP00gKZwqvrtV/NgDX5K/Bym6rWq?=
 =?us-ascii?Q?Y1BlHTEiHG/HJh/ngp5D3AnaHv7onzlP8BG9vxnBCS2fRo2/CzoDdsCbkpRT?=
 =?us-ascii?Q?zepoiWevo/12NMenMBms0AtSCasP1usEmNoddRGhneTNUgADbqrckYt+PGI8?=
 =?us-ascii?Q?abS9rx1xxIhmgBcY6kVYQas+oUoAUN80bhg1ajHl2FWSuFOqkSHq3NvXPiVO?=
 =?us-ascii?Q?T0Sob9/PzZVQIRnzuXBRHUoS3TIUdI0Yd1aJBOWWcCg7nBG8ilh5WFKoT98o?=
 =?us-ascii?Q?ShH8TFYFOLxaav+Pg/MzOCMElXNziyHXd4a4reAwI4DJ3a6knau5jKn+oJ5D?=
 =?us-ascii?Q?PMMsqX6di319LiHvKDiErHV1EZOBj4YUOScGzA5/5LfDge3GB3W47+1iHkr0?=
 =?us-ascii?Q?GMLS2hzFRxqyC4qK6qfb1sExjok987WQrCW/OFpcNvEQXZM0EDKRQiV9mEDy?=
 =?us-ascii?Q?pgmhxSoFm5UWIr2YySJS+ovdSBlOxn0H/zOicRN84OBSAssMcKeM0Va08n2a?=
 =?us-ascii?Q?pYIy/VUzBz0khcAHxZVJhmRveQW3uKPzeRiXKJNgGcasLcyvDmAptRQLflMM?=
 =?us-ascii?Q?7QCt+BuJYYZYJQcc9uDJgdECcaRvYcqZIS7CklgMiePb0kDoIH0/h10+YJc+?=
 =?us-ascii?Q?qy+QqJltJ5LpcV5nyus4ub8BgR89x/AF9Vd0zGL6huTWz+/y8fvsfJNYbNzp?=
 =?us-ascii?Q?xCESCFrjD1x0zGZfPPVSACY9L+EfWpmu2yrDS/knofyavaxoM2PnnYIFyxe/?=
 =?us-ascii?Q?5ZJy18qqe0eBphtIxLzQ3vZKXFU6/SjkBTM1ssrk8so3z/yMAfIYzNDqRk7V?=
 =?us-ascii?Q?oTBMQ5zOzO0o0uQZpTsORDqHwuEpFXQX5ZitscWsVboADGtS1j5QerTvgQPB?=
 =?us-ascii?Q?UJ67d+oLGQzVHS8cachlRtQp1IjPhsy4hkLfaC8HvAgp/gVAJN7wk3cIw6Ks?=
 =?us-ascii?Q?pJWhg68VlvnYr/H186Qhs8vQgAUIC59qnqu7jc7yTuWckFHNzas4ERkc7ZgL?=
 =?us-ascii?Q?9ZteFooj7wsddVvaltl6tdi8lOej7MWB+U4GrpLX/Rr2IFoEmXOQ9be8Ohem?=
 =?us-ascii?Q?7SUZc7rs37nIAT7PnV85sG0AJiHvtQ2zd/FYWyNGwPXd5z7b6/FPgncI3/Kq?=
 =?us-ascii?Q?JwZ9+V85fL+M3sG6tx0Lix9sUNAy2qELOhPZ9AaIQs6PAfHBiXl7XbvqQ9+I?=
 =?us-ascii?Q?PpPSX9i9Q5Lx/MNM+Onw5jq6nMFpaNc/1pPkITmhkgpLlz2rDzQ56uPdtAfQ?=
 =?us-ascii?Q?x/abAE8dtL6MQ3U1j8jlS2s+4hPdKpKveoeZus7GVICJ8IcN9u4Wxvmta2AS?=
 =?us-ascii?Q?gHgeHfb6wskogrBkbMPvHSAzyhJ8/vMA9vFVDWvHVIZz4l+3O0OQTu5NQZvj?=
 =?us-ascii?Q?iuhw8mLrO1280HXDmpjnPnOhxIGWO4a63wYtS/eOX5TmLs/JwAJral47lEN6?=
 =?us-ascii?Q?GdPBh865EArenG2dmWuXx/tODgi4kDU/jM+5UXFBLpqRQEIjn5rCyjgcbxid?=
 =?us-ascii?Q?jEXvKewOXjFp/Ptfcvkg9cy7SbE9863Hqf7P3QmgQ7N+0psiO6p7Soej00NQ?=
 =?us-ascii?Q?8R31Eb+Eep7KUxON3eH9O6pihT71C/xaEnBNWKWkn1CvdyASovAVZwPFFdQ8?=
 =?us-ascii?Q?RA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e327df-f4a2-45fd-1f2a-08dad94ff08c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 19:10:59.0829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CJ8zTNvF8e8I1gibsnUOv8c3cAP/fjS0FdnJhyzNPYTC4c4jTT+94rhtgX8SAojBNwaYYNM+f+zOFgoZotqu8+v83eEt6Ko8H3AOqY2qqLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: no need for
 gt/gen8_ppgtt.h
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

On Thu, Dec 08, 2022 at 03:36:38PM +0200, Jani Nikula wrote:
>Remove an unnecessary include.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

maybe we should run a script/something to check for unneeded includes
and commit everything? Then we can add a check in CI

include-what-you-use  does this, but I'm not sure it can grok
kernel / i915

Anyway,

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display.c | 2 --
> 1 file changed, 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 32b257157186..6cdfdae2c712 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -70,8 +70,6 @@
> #include "gem/i915_gem_lmem.h"
> #include "gem/i915_gem_object.h"
>
>-#include "gt/gen8_ppgtt.h"
>-
> #include "g4x_dp.h"
> #include "g4x_hdmi.h"
> #include "hsw_ips.h"
>-- 
>2.34.1
>
