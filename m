Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A09647219
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 15:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F39A10E4A5;
	Thu,  8 Dec 2022 14:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F5E10E4A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 14:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670510715; x=1702046715;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ZU7Mn2IIpQw1XK8Ag2fLy9qkE92nnUTdSftQ3vEzxjY=;
 b=CvVFagFoaI/udG8ANEv8+06IOcrssYC1bvnCCf+I91V2OpxyPDwegGsf
 jRTRVeYjOKreO3nX/2o0wsXC0AaZRzmGK+/Q+ML6yKfT7jT236dr2E4uM
 vnUzAgjSvwAPpQHJSlvYlw8TahM+diZQgHMEoE/3U5xYKp9IdwM8wOJMI
 KGxse6djGilmS50X6oPVNLK/Y827bH20TO+ZjQPvoPYNyo13+H+H6Numo
 jbTDH4lir2iPFAVt3HI9tTWt+TPLUNV8TPNG+uZ2wgwxo9F0jYoBYY9pv
 WCsstfBsjbTF8bLwzGopCzEUfUTJkuixUd8alj5YO8SKZhaxJeB6112RX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="403452543"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="403452543"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:45:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="677772322"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="677772322"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 08 Dec 2022 06:45:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 06:45:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 06:45:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 06:45:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTCyfdpPf+QDMz2sgiEojDkomUVCxMhtT7BsRhBXwz5wdWDqWaxeFVm2OaoLRAiDGQjscU4SmrtNX+e4ij7/qyhv2M+jnMa4GWXAC4qoa3FguOParqUfIree8U3P0OH6oiTxZcJneEDojboY4BwrxZb0/7qo+csIwWe21ubF/cMUEFxDUcuyJI/CfKHq6Geg1/P4KDCx7ryA+MgIghV9UZaPhoeWjgtch5zzMkN5Oa3qKn2EeHvSiBF8P1Fz/Tw5M183Ygod5HRw7k57Mpb7WiVsMha1/XN2iwMbrGDK8l69RFh9+F/C59AUp9gPKApFMLsYNZgRXSqOdxb9oXTe5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J2UOMl4ISvjUqJWQJBCTMz8Y/CbBFPeCGZvf8adEXq4=;
 b=Wrh0kBK5dAOOo1XmYp/a2PC4R0CT/JrkMMwGlHO0bvrCzTNkK1XKeH7UyhQ3aZyRpuBQ3AeIXCoO7H/FLN0KC87kR3GCFQpGvqV07mnR6AyK1KGDX1Sy8e+TuoeTLYrqGDDFoPNQQhhGBVgGccCpe2RdCBUF1HzgWUA3sa+RfD2E3CEgUnQOFBA540dTtbbg4tWRVSKRngUP9gGceU7YeYHTEZ5cBGSyWCVLJMSDmBllFmVvQZLkVnqBPw39LE9DeuY31sjRuDjwrKbJ2wshktMWshaOVAkZ1gLNx+nTNk2RsycziQ5ZE2EWlUQQ+74nUx2/t8ruF0nXtg6u8wq5+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB7775.namprd11.prod.outlook.com (2603:10b6:208:3f3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 14:45:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 14:45:10 +0000
Date: Thu, 8 Dec 2022 09:45:04 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y5H4cAEKzdxTwIaf@intel.com>
References: <20221208142347.602726-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221208142347.602726-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0071.namprd07.prod.outlook.com
 (2603:10b6:a03:60::48) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB7775:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ae76ee3-b6a3-4848-c2c6-08dad92acdc0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vu2kzqoCsShWDsUw4LTVzx6oEK9XxCeDMGmtIT9/WLyBvtVofWsuDh0VJXS4BUOR9rZyhXGi1s7usYQhTeaBpn9y2Amg2zX1tjPCFM55avBuYdTn6iq8+PR5lSQG2aQeBPQEgRLVwuwCXrtZg6kBQvYHVhFiYeLO+iWOOpv3gBmtjPhYiiovbso4/AoyNKN3IznzjjmXEy6xMM359WzU8q8VF25Z/1DutSvswHn/tELsGzGQK9bnGtZRQISg9o2BL6plP95Iw3jeshh/sBA0u8kc3ufZ5ykwY8KM1czxp/elVKJ5CnJlvbwGckusyvH11mSE8nlJio15s9/ziCyrXb0KNveHYP90Cjs41ZXBCz+BXSqYotfyCqycRQmWnkJ2rKj6HvMVRoMBFaWLeEJLm8Pgu9L0eJknKfBBNsLUBJIRNCh0fmCH86qiJcCyfyrlOAcB7YQeTDcnXxvQwDJeepHDbmyM/f+ngPcLkxqOkFu3JbYV3FKff3vwAyNQNuxPf6/10fxWBqHOS4ypMJvqVPLwdFHDAIYr3jAluRd/E0zQ+Bi2tGwq518OjRpM9FXEIh5AhvJtOtbrIIf8U4AKqoWp3CZD8ndbkW5QF9pQpi4usYD23OfYIf29JK9+dd6qLoOMcGikos54f8Hhjr1XiG5M+MH/vM39Ac5ImJM3+zr1KlrSzKBFA1K/7cMNk4Ur
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199015)(2616005)(83380400001)(66574015)(26005)(316002)(86362001)(478600001)(37006003)(6636002)(54906003)(36756003)(82960400001)(6512007)(6506007)(6486002)(38100700002)(186003)(6666004)(2906002)(44832011)(6862004)(8936002)(5660300002)(41300700001)(66556008)(66946007)(8676002)(66476007)(4326008)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?WyTq0/V9FbmLQOwmojFQrjxYegrJcSqe46utcFUtMsfS8QsrGN3fuch6Mq?=
 =?iso-8859-1?Q?rrYjDFhv0Rk66MzzSWTVIZK6a9am3FdbiHdFT1yWqXJB9lzxedjGnYofV5?=
 =?iso-8859-1?Q?z0PlFYfw97WBKhmynhhfOZd4S1/zUxK7v5wqK6lU3h4TMqQjdTFsP49WAa?=
 =?iso-8859-1?Q?aRx29yULjaGjemeYTs2+PpB8mkfMKnOCbEofBYEK7fFcd1nCJK9csmMtGt?=
 =?iso-8859-1?Q?98iHMI6cEQd8CQ243mKeEQRTCs2l2n7JbRcmWsM2h0SwWwju3khFQ657lR?=
 =?iso-8859-1?Q?evH4qR6yoCK11to5cfNzg6D7zIbBEq5Qd0s7UgGzu6i6aHcTGOO3cgEtgs?=
 =?iso-8859-1?Q?Yb8WwkjOerzcip3bNHZWwPQ8ah28OgcC+ET6zAumvPyIQ0XpocZX2WMLHw?=
 =?iso-8859-1?Q?mrudssahlX04LMG/8kkyY1jdxvVPP9SUmyN6du9Ey3x2Jf0aV082Fta69J?=
 =?iso-8859-1?Q?JQZn2hniNE+yiej8+zierrgWFJGBW1NjDiWGdNbAlhYEWdtY5Ddbur7/NR?=
 =?iso-8859-1?Q?2pxpOyJEKW0Ju2ohwIhWM93FVh0sJSMR4oA+tJMMSV3q2vxcgkIgdZry+o?=
 =?iso-8859-1?Q?O5Zw6V7ik29g3mZDrUL81YrjmpiG/Hhvet5d4m+l3AdjClPDd6+RQADSXN?=
 =?iso-8859-1?Q?A8Mv78sR7tobS2A0Z/syHWzflPhtwxEg+DOby/2H6N4pFYawbnGv1Houae?=
 =?iso-8859-1?Q?NY2vtv9Av0yC5kh4NNSE3j3LD533SIN8fXUM+06xvpcSEujOC/HwSWF0uY?=
 =?iso-8859-1?Q?mbev5IbniHE8h3mRSq2FYPxGczHUnGyGj5XHno4FgHf8dqE9ERTcUUa52E?=
 =?iso-8859-1?Q?xH71JDGUenmdru3QI51pAXXbpYNgvUHKCNhiuBgDHeO5ln029mJb4CWP7x?=
 =?iso-8859-1?Q?2pUEMcRe//iZWXC5F4egEqjKyVWWFmo7PteYzhgajnwu/uQdCO7SdAS0vN?=
 =?iso-8859-1?Q?83OUgcHHd3S3+5gty7QBMOChnNk3jpC13fsxxNOiVAATKN5GGW/kIjjpaP?=
 =?iso-8859-1?Q?zSx+3RSZOwTC5eyOwp+YkYbquHVWD7Qw0WyiQkFLhlHUyF55ueINxo1MKD?=
 =?iso-8859-1?Q?0idf3mrS5xpdBeEDzfoFxHm/G6C7g4l9x13gBHrzIz+qUfY3fKVWHdQSGe?=
 =?iso-8859-1?Q?Jdz4mpV2D6m0Cq1oVZ+OOoJw2dOLrZwJyvjfgKkPyLp0hmY58gPROJTzb1?=
 =?iso-8859-1?Q?rgKjx2cZ5wzKgBUkYgn35CVZ6iD5T3P9I6Kmlc4cpMU9gxTryWt2yHcSko?=
 =?iso-8859-1?Q?peMV0X/5ImDRHQ4PfZ0c55qzqf7JfbUxJRNzq2ux3+bWGcgLn3HuWDj//d?=
 =?iso-8859-1?Q?qgq05RHtPb2OUo7dKoWlicv8P465aHwL1BEYnkdlrx+AuymUeAqkEwnbPj?=
 =?iso-8859-1?Q?zv00qtC44WSJtiw8Q0Y92pBhSMnubqbD2riW9lCuRrN4Oa50ZHkDi7A1sX?=
 =?iso-8859-1?Q?lysL/7GpaEKNRdB/1tVSdtXORjBo5lCcgck1csQNnok/xAoPd5Ufc5alLO?=
 =?iso-8859-1?Q?MiHI2RDdixvJbbeMr6VPOMNAyebvz2f0capb+rJAy0+X/084yyyO3dwG1h?=
 =?iso-8859-1?Q?cFS/1mADoBF2rczbsC5y0pA2OROBbUhw7oTc6cBCQ/R6otwWDriPdl7aQD?=
 =?iso-8859-1?Q?Y+f7KXV/fHfOBXyJ/qPK/42LNbeelWq1fHzXOfpikbQvW+AwtrmnGJFQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae76ee3-b6a3-4848-c2c6-08dad92acdc0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 14:45:10.6422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A5L/qDc/NMLdo9jUOhDyRlzDyyMgyqD7IGVFwiujAAgnqqOYhtJfzENwAr28+K3tlyk6pAzJWs9p3h0v2TDe5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7775
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add new "soc" sub-directory and
 move PCH and DRAM code there
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

On Thu, Dec 08, 2022 at 04:23:47PM +0200, Jani Nikula wrote:
> Add a new sub-directory for things that aren't specifically about the
> GPU and don't really belong in the i915 driver top level, but also don't
> belong under any of the existing sub-directories either.
> 
> Name it "soc", and move the PCH and DRAM code there.
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Naming, always the naming! soc? ext? offcore? In the Makefile I'm adding
> comment "core peripheral code", which is also silly. *facepalm*
> ---
>  drivers/gpu/drm/i915/Makefile               | 7 +++++--
>  drivers/gpu/drm/i915/i915_driver.c          | 3 ++-
>  drivers/gpu/drm/i915/i915_drv.h             | 3 ++-
>  drivers/gpu/drm/i915/{ => soc}/intel_dram.c | 0
>  drivers/gpu/drm/i915/{ => soc}/intel_dram.h | 0
>  drivers/gpu/drm/i915/{ => soc}/intel_pch.c  | 0
>  drivers/gpu/drm/i915/{ => soc}/intel_pch.h  | 0
>  7 files changed, 9 insertions(+), 4 deletions(-)
>  rename drivers/gpu/drm/i915/{ => soc}/intel_dram.c (100%)
>  rename drivers/gpu/drm/i915/{ => soc}/intel_dram.h (100%)
>  rename drivers/gpu/drm/i915/{ => soc}/intel_pch.c (100%)
>  rename drivers/gpu/drm/i915/{ => soc}/intel_pch.h (100%)
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 01974b82d205..7046e435a155 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -48,9 +48,7 @@ i915-y += i915_driver.o \
>  	  i915_sysfs.o \
>  	  i915_utils.o \
>  	  intel_device_info.o \
> -	  intel_dram.o \
>  	  intel_memory_region.o \
> -	  intel_pch.o \
>  	  intel_pcode.o \

should pcode be moved as well?

>  	  intel_pm.o \
>  	  intel_region_ttm.o \
> @@ -62,6 +60,11 @@ i915-y += i915_driver.o \
>  	  vlv_sideband.o \

and also maybe the sideband?

anyway,

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	  vlv_suspend.o
>  
> +# core peripheral code
> +i915-y += \
> +	soc/intel_dram.o \
> +	soc/intel_pch.o
> +
>  # core library code
>  i915-y += \
>  	i915_memcpy.o \
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 4cc3ced83959..6c87cfa0d7c8 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -75,6 +75,8 @@
>  
>  #include "pxp/intel_pxp_pm.h"
>  
> +#include "soc/intel_dram.h"
> +
>  #include "i915_file_private.h"
>  #include "i915_debugfs.h"
>  #include "i915_driver.h"
> @@ -93,7 +95,6 @@
>  #include "i915_sysfs.h"
>  #include "i915_utils.h"
>  #include "i915_vgpu.h"
> -#include "intel_dram.h"
>  #include "intel_gvt.h"
>  #include "intel_memory_region.h"
>  #include "intel_pci_config.h"
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a8a5bd426e78..b6d0c12ffeea 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -49,6 +49,8 @@
>  #include "gt/intel_workarounds.h"
>  #include "gt/uc/intel_uc.h"
>  
> +#include "soc/intel_pch.h"
> +
>  #include "i915_drm_client.h"
>  #include "i915_gem.h"
>  #include "i915_gpu_error.h"
> @@ -58,7 +60,6 @@
>  #include "i915_utils.h"
>  #include "intel_device_info.h"
>  #include "intel_memory_region.h"
> -#include "intel_pch.h"
>  #include "intel_runtime_pm.h"
>  #include "intel_step.h"
>  #include "intel_uncore.h"
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> similarity index 100%
> rename from drivers/gpu/drm/i915/intel_dram.c
> rename to drivers/gpu/drm/i915/soc/intel_dram.c
> diff --git a/drivers/gpu/drm/i915/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> similarity index 100%
> rename from drivers/gpu/drm/i915/intel_dram.h
> rename to drivers/gpu/drm/i915/soc/intel_dram.h
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> similarity index 100%
> rename from drivers/gpu/drm/i915/intel_pch.c
> rename to drivers/gpu/drm/i915/soc/intel_pch.c
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> similarity index 100%
> rename from drivers/gpu/drm/i915/intel_pch.h
> rename to drivers/gpu/drm/i915/soc/intel_pch.h
> -- 
> 2.34.1
> 
