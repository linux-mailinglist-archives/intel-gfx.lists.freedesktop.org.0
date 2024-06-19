Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35A890F610
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F9710ED7A;
	Wed, 19 Jun 2024 18:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHpU/CO+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D09E10ED7B;
 Wed, 19 Jun 2024 18:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718821819; x=1750357819;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J/ZGArbyCaEARoobMMnECWrUwV34a9HAU28jKHAXNLI=;
 b=NHpU/CO+XhMVJ4EaoI8jZd2JPhEKqolpVTDo6LQKTntg80U9kykg8SsR
 bNhoKqubDDw9Zk9IH54i6q1qFsdhO3jhQPcH0dasu0VecyxpG6EaMG+MX
 4pGcij7Ex9aMiR1KwjC77McDkR0BqEOV53ASTQ7Q8N04E6SDfcjkEBZP+
 DYAbZHp4MuOuGgX2RKlbVyTiEjOSXvRStBc92jo8awubzk+Iu7Ae2tVJw
 SFxhlrY6jJ5TVNgbhD0pPmxWdI4n1YcMaCL1wYCFKJD1EY8Mvi+BM3/yu
 ryVZzkNbMPfJ0EhkKmdvMb7OxchuLGYKj/YWc+EQ/BrjsUctBpieRNauD w==;
X-CSE-ConnectionGUID: CVR2j3jRR9Oi872bX9FrHA==
X-CSE-MsgGUID: BMksU4ZSQZm2DRBWkupOng==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="18687285"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="18687285"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:30:18 -0700
X-CSE-ConnectionGUID: W4yibqOnQl2Mk8KUtLydNQ==
X-CSE-MsgGUID: 6tS+dGQkQNGzz5621yTCWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="46917809"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:30:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:30:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRtknZT1GyPcF+97wOhO+JLDndGB1BojGmIC6u9CwPDNaKRqSIp72ERZHcsHe3U0W0PoleqIy3INPqY7K10eJQES8jegJJJOC/4JJLgMWIKIhtUSrg24UvRkleacQCJ8NIrIt+lHGqEcReXbx0meFe0CcYQkb+nry35XEtAPZmLAV7jVCO7Nxm/ukdfJnSWkL3/uLRQ/+mcnovAwprFeMucafrq27dl6575H8CCxruLQ6aqN+c1aZth9ARW2ZKOvzEBXraPdPtEuA0oVk1+70aiHzuRjLoEhWojghQztOZOQ23YZxMxxRceb3oFRUFEXWaRuRslrRAnzpkIzT24FiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Up0TF/riJ3Z2QsSMfk9Y6JIf7C3Mc79kO6MkQUkHLC8=;
 b=gqWfBUjiSxSWRRLs4wL5/LYdTV+yrQ1IFU/G1pjpkRn4HMay45RNw+6wONq0w3OL3wc2VB5UCKS7HQhwiQFQdwoICoJ/SX1cnnxFC2cFgKKnwmSNa3POIizFWPo8KXtHtE6iYTNCV7kJ/MatOfpzcmDlY9Fr9a3nw7bzbZsxWQFKCvlV73afWLAD7CPDpOqGsHX+jOUCXSYm7ikFzzoLtL3YPgRMUTGrJbtmeAJJbViBuqwXTG3qMDdjzOV7vCeWG0+rmP9XEgzraL76v5TkDvVfwv9SW/7fi3E++wbsrc5QrMZuOvTReI1N9tItE8/DpZgZ3AJWULHbFRDxfKFILw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 18:30:14 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:30:14 +0000
Date: Wed, 19 Jun 2024 14:30:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 3/6] drm/i915/display: join the platform and subplatform
 macros
Message-ID: <ZnMjswA_P23l1TtB@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <e1f5f421c45a271f8fd0ca45956f70aeca855b5b.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e1f5f421c45a271f8fd0ca45956f70aeca855b5b.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0003.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::8) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bf38d99-e3c0-403f-8fc4-08dc908ddc7f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|1800799021|376011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DOU3FHom+nAV7JY+uBjvTyxOqHdjcAHVxTLWBrCnFDIkK5HHrBs1Uq29vCOH?=
 =?us-ascii?Q?URZ0xTcX0+sER5ftNVdgdQENpVvITXDTIsHFcbzaV8CziDgViHoeMNBm8jgG?=
 =?us-ascii?Q?NDqfZdcgFHqwMt3A02TybE0QR1svK8I9OhOOyrqjO9FinQiD8pMwU4JWzTsW?=
 =?us-ascii?Q?sZUyDEWOAOUGIdI7SaSVMMDcmWzpBsbn6BI00EpsZuFGqc3V5h/hiHB/f+mM?=
 =?us-ascii?Q?1Yx1T0X/sSCzGU6uy8W+iWziLm/VG68rOifdK+ws64abJAFMk9033BKvobJG?=
 =?us-ascii?Q?FKcKzvGu51EdDy4HyuMAbgn9zphCUD78czh+jVEsFMcVVJwxy6cHPegL65JE?=
 =?us-ascii?Q?1PyE3fim8orrqOC6/isMOUPUpjQyuYfITMeYNXXQYWDZY+r/b5nFeRmub15m?=
 =?us-ascii?Q?tONJ+FYSX5pZLqgVOYXsWFa1uTp0+rvJ0sh2g8sPS/proWfazfaOUraae0Mj?=
 =?us-ascii?Q?D7d4kExxzNbkHiKGdfckdtAHDrOFsOBT8PwpfXtn6bf6D6rfi0ky6cFDCBT/?=
 =?us-ascii?Q?rVDgg5BPkhBEwJetgIhROBDcyohU11bq/FFBp9v9gdIkBMETabCPH7nm3I2Y?=
 =?us-ascii?Q?P9SdWMq7ASljwVdUA7Tvl/cCDlqQCq+zoFbbvLqrWNae3tTEC4Y/CBcKxdo0?=
 =?us-ascii?Q?1WEk05dXNzYDmpHvNH53qhbVwfO1KfrctCyzE5ZdcwNpk6VZnRAXPWVN8EYB?=
 =?us-ascii?Q?/JircxPFr3xJZt2REuu+i3JTQwBctgUUYRjAvlzgr5b6ZxujLW8OSX+LCUOa?=
 =?us-ascii?Q?lM+hJVChTS3463DPCblu/zf5looAX2oBbKWv/Ks9CpFFMUma44y7Vv6C+Au2?=
 =?us-ascii?Q?5iOx/P0H2saq9UmhGFO8+hYv3ySo9uoyWRu+5pH2OAkhwAV+Jq3M5n+YOeB8?=
 =?us-ascii?Q?FJDtYPkx9KpRHojP9u1ZVh+ibIExXyuqiQbTw5az50dK9eSdBhal17VWVkFU?=
 =?us-ascii?Q?5e2LUFLBey0DAzrn8FEa3CKJ0p40aVqe0rtB4GGzKsWBe2UGCGsYmroT7UL1?=
 =?us-ascii?Q?XbBxIJ5u6uEuA85Fj4/StyGnrMPCt0dCeBnkujk+bQLyR/xmCEItfoGpVMEj?=
 =?us-ascii?Q?rKvsqW45KmOpkCA5L7lp0XEuOW3BiiKAZR1A4mQizgUvXVPw0AfmU8wWzZvd?=
 =?us-ascii?Q?8JOX4S9LLeNe3SaFdUfYDqrTafAZRBaqNALIhm2oIuMHzY9J5jtubqIRU/He?=
 =?us-ascii?Q?4x0OQfbo7tS3sWS1RUqPdsD7HSnx16FkWUGXoOtm6UNzjWnlMBXA3cRfH4rj?=
 =?us-ascii?Q?y4QuPUBjc12sEmGyyXceeFfIJ8X6deTnNGLnuSiuCobyc+ne2L0oop+jtUYT?=
 =?us-ascii?Q?PpctjAstYA0/MV1FDPhP85Hh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(1800799021)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n1Bysl20n9mc9pM9ewAa+dHB0xhZw+/rNcoHrxPasz9sCZKCLSh1T5nikShu?=
 =?us-ascii?Q?OT0Zf05FWHUpnl5sSHqYzBL99ohoiRI4g+lxmewov55Dw1k1Tjnzmrq+mb8O?=
 =?us-ascii?Q?CX44eRJ/GWWPGbKl2+UKGnZXNbD/LBCmnz46i+ZABSmmHJeRHP4RYMe69epD?=
 =?us-ascii?Q?TczTOl8QJvCJKdbq0WLDjT0sz1DE/jXvvhi3OACjernOjC32yweucs6T9IW8?=
 =?us-ascii?Q?4UiTTGYNueZtL/U7hXzzzpO87odfFEvOiC6TWIjv6r6oDnUh8u3aVlU1Ry8R?=
 =?us-ascii?Q?+iQU7Ewnp1V7O2sBf6kYRErt9bphNUcZq/2WaDWzn1K/vhVItqcOLgbJ7wEn?=
 =?us-ascii?Q?JR4PAU3cb6Em8eIx1ZVBIZwj9AWLcB1xm9VSVVOqCkOuOrmB9ZgZHYgSTUwf?=
 =?us-ascii?Q?WUBBrbf57emq/Doa1LjpwgiBKxZx/TXWa6+C0gzPHoYt6XV0MGzckmVBxHd1?=
 =?us-ascii?Q?vNe/9KVK+lmsG0/vWFdZzXGDOFPZFqhasXLRm6/S1iHa0yfQ7wlddcfRJHwu?=
 =?us-ascii?Q?IU5SsYRee0iVPYugxJKGQc/yuL537sUhoGn0KkfDPo2wtzmWHrQxAD5MYheW?=
 =?us-ascii?Q?LCnLnTREfQxhBF4RPDCkSVRK+X/TxiTp27MZj6ogOmmSV94Q4hcCHzR4hM/3?=
 =?us-ascii?Q?EH5uAqgSd4kCykM+roWV7A3QXScTSpvsbWNxSsXSJDR9ZYQWq6WNOtNHXiRz?=
 =?us-ascii?Q?QsXCLj1I/VvhfjqanR0q5WPyfbIUzy2XKeXvQTzd7ELguRjTw2JvaJ5CXJ9d?=
 =?us-ascii?Q?djWiMfUhOLoYhI3jVrN2wg5QiXPunfeOZ+6RsOG07JWqVAnWZPmSqVi/roN3?=
 =?us-ascii?Q?a9hQAqGhSIIuUXwcy+cGkFukn4z9EeHZzA2Z6QOjXd1F4GnrgYZH0AJH3d8w?=
 =?us-ascii?Q?+DKU+uV8CKg/dj+Vmsk1VwTB406IYFanfy58XPOTYndzNjsoklcaCFK+i6TZ?=
 =?us-ascii?Q?JpmS43NRkX+HRCX99E7jKjwbws5bc8N6f2cKEMehPjTgBPLUfnmt2UWZPcBu?=
 =?us-ascii?Q?m+x6c+FTTFeq9OpdXZqZDS5VvDdpZtoQHR18LRXDAsd5OhLmF+4g/wLmLF/w?=
 =?us-ascii?Q?H8v0KU5ZPbqCSAaX77MjdBOd4HRVyan+hET+FppqRNvEdTdX2LjKMz4VzP71?=
 =?us-ascii?Q?0urA+5tJpeIXQQSM9TECHzCqZS7seJwftRjvv+XS0EqoXa5xIpKVdsf7N22F?=
 =?us-ascii?Q?0RPj6DUDFRcXx6iBZAkVld+WBJxlKfJXE4g3SRHyAGncBEaDVF+ewhq1qzlv?=
 =?us-ascii?Q?M6Mm7kWMGzgZj5+QfQQ1GdXxeMI+KP90miXwDKPQVIc+915RDZw/K+VntBGi?=
 =?us-ascii?Q?gLJ5egNkZZiL6J/oHFKBAUPnfBRRoyVw77Tw0TAmf9m1ToeFjpgUyMidlQ+N?=
 =?us-ascii?Q?kCzHssVgk+P8/M3S4AOSkNz6dFW3vFZUd2XXZFpuXTOnx9l2vdXf/hw0fagN?=
 =?us-ascii?Q?91RMsu4/s4D/Gp+44PsScXR6RUMHXyjvwZ1AWq2D2hAqkHQBvaNHDRQBA3be?=
 =?us-ascii?Q?g0ALCKg1ITtWJL37x2n55t+77D5pJaGh1QGhPGucqrr69rmG76ibxaTKQ4sP?=
 =?us-ascii?Q?LVn8oj0tkhnv6YLCzpNoNG3ZgvCtQ/MCwdBC1nM0wRCBK6FgKvcMqcrHepXT?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bf38d99-e3c0-403f-8fc4-08dc908ddc7f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 18:30:14.5974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: toIumq1S/lE96GVQQAB9z2dbGMuomHtTU1ESa6cXxrKYpQlxolNhtVT/yOZTgd1hCVVRbjHgX8mp+vGWgpofBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

On Tue, Jun 18, 2024 at 05:22:53PM +0300, Jani Nikula wrote:
> We'll want to use the subplatforms similar to platforms.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_device.h   | 51 +++++++++----------
>  2 files changed, 25 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index d900c30907ac..80563af7ac71 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -21,7 +21,7 @@ __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
>  struct subplatform_desc {
> -	enum intel_display_subplatform subplatform;
> +	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index aca3dfd5e7af..50485235ef09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -69,7 +69,29 @@ struct drm_printer;
>  	/* Display ver 20 (based on GMD ID) */ \
>  	func(LUNARLAKE) \
>  	/* Display ver 14.1 (based on GMD ID) */ \
> -	func(BATTLEMAGE)
> +	func(BATTLEMAGE) \
> +	/* Subplatforms */ \
> +	func(HASWELL_ULT) \
> +	func(HASWELL_ULX) \
> +	func(BROADWELL_ULT) \
> +	func(BROADWELL_ULX) \
> +	func(SKYLAKE_ULT) \
> +	func(SKYLAKE_ULX) \
> +	func(KABYLAKE_ULT) \
> +	func(KABYLAKE_ULX) \
> +	func(COFFEELAKE_ULT) \
> +	func(COFFEELAKE_ULX) \
> +	func(COMETLAKE_ULT) \
> +	func(COMETLAKE_ULX) \
> +	func(ICELAKE_PORT_F) \
> +	func(TIGERLAKE_UY) \
> +	func(ALDERLAKE_S_RAPTORLAKE_S) \
> +	func(ALDERLAKE_P_ALDERLAKE_N) \
> +	func(ALDERLAKE_P_RAPTORLAKE_P) \
> +	func(ALDERLAKE_P_RAPTORLAKE_U) \
> +	func(DG2_G10) \
> +	func(DG2_G11) \
> +	func(DG2_G12)
>  
>  #define ENUM(x) INTEL_DISPLAY_ ## x,
>  
> @@ -79,31 +101,6 @@ enum intel_display_platform {
>  
>  #undef ENUM
>  
> -enum intel_display_subplatform {
> -	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
> -	INTEL_DISPLAY_HASWELL_ULT,
> -	INTEL_DISPLAY_HASWELL_ULX,
> -	INTEL_DISPLAY_BROADWELL_ULT,
> -	INTEL_DISPLAY_BROADWELL_ULX,
> -	INTEL_DISPLAY_SKYLAKE_ULT,
> -	INTEL_DISPLAY_SKYLAKE_ULX,
> -	INTEL_DISPLAY_KABYLAKE_ULT,
> -	INTEL_DISPLAY_KABYLAKE_ULX,
> -	INTEL_DISPLAY_COFFEELAKE_ULT,
> -	INTEL_DISPLAY_COFFEELAKE_ULX,
> -	INTEL_DISPLAY_COMETLAKE_ULT,
> -	INTEL_DISPLAY_COMETLAKE_ULX,
> -	INTEL_DISPLAY_ICELAKE_PORT_F,
> -	INTEL_DISPLAY_TIGERLAKE_UY,
> -	INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S,
> -	INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N,
> -	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P,
> -	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U,
> -	INTEL_DISPLAY_DG2_G10,
> -	INTEL_DISPLAY_DG2_G11,
> -	INTEL_DISPLAY_DG2_G12,
> -};
> -
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> @@ -203,7 +200,7 @@ enum intel_display_subplatform {
>  
>  struct intel_display_runtime_info {
>  	enum intel_display_platform platform;
> -	enum intel_display_subplatform subplatform;
> +	enum intel_display_platform subplatform;
>  
>  	struct intel_display_ip_ver {
>  		u16 ver;
> -- 
> 2.39.2
> 
