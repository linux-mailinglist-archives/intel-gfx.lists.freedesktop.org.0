Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0171711ADF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 01:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795BB10E789;
	Thu, 25 May 2023 23:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38D310E789
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 23:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685058662; x=1716594662;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DrDrZdo0UfrbNGp9VUe8u9RHyR1hdg3LqlEEnSJHadI=;
 b=cMs92SMYgWEC2YquK66otqZDDhqcCj1ol7LHN2+THfkrr3fnufs4D2L9
 6S07caMSUIzzjgV5XFzW7ScHpur4ayxdBIhupMyOVfoKidIfYgMu4m5E0
 IYg+YFB0oAOVGtS6wr69hs1O+MMKOv0x6BgjImO61KNpBZiFlVSDc09vB
 0HvHO252iRdusBawJW7+ipXFWwE5MZfr07jRGaix3CF2hvQMk6KlhCHU+
 SP+vkbNEejVObximtFeA69QO6MfNjwczWqzG/riogjpXJAadOIZenvKVe
 QwnqWgGD9OrcPeloWVhfpuOvuF3NOhOuMP5q9UuEOWtsyA+eUexo+w7q2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="357313219"
X-IronPort-AV: E=Sophos;i="6.00,192,1681196400"; d="scan'208";a="357313219"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 16:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="738017696"
X-IronPort-AV: E=Sophos;i="6.00,192,1681196400"; d="scan'208";a="738017696"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 25 May 2023 16:51:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 16:51:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 16:51:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 16:51:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqaWiz0e9uTjXIILwVlOUCEoiOC2eyJWipqvTPAKA+p1F4d+vad/iGtXq/ki7kaM6bw830plfpBflm43kBAEbgfKja1/mpIZnHctyhytidl/1RO9bUef5k1TKqqJbUvpwXd4V/+RDCv1rFOG3Mkga0S6XbdTntNBgtbXMDGd1QkChROPqmqTi8HC1NOKnBO85bEqvelv+MuXlBTC1953wWfI686tBLaXgUDaTv9NgPLwm3VadjYV0mCFCDh28Z63LL4wpKfw61xQ7UUJr5XJUJl9NhP6WOgvsool34GdIayfQM4HsMS7u4IN5Ukte812iDGn74dDA6NxXaabIUHdYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OfiXQxNMhQw12I5RffdKE9VbIbFEp4lXwgY/lB0jwls=;
 b=ZYK02cE2FqCSu2M7ye58/S14l9yLdPI38iKWil9UCE2ssilbwe8BVj5wm6T08yP3EBHvcg5Dwor0AqXqPGk0VGKcAI3sPG6vACH64+qRSdHZMEy1o07h8eYQxmVSrqRAIK6Ekfm9VGhk0ICP2qD7q0JBQch1xkzsq2IKmBO96yvA3AnGIHi5EP2QDxLd0ZFlrcCXOQNOKAVAh82ANNTiEx6EY21nOnT+cI8Zs9Bo/Ypel6DpI4qdzj4KpfLE87HvF6jAyc3HFs6zvznY24Sc4cK/lJK2CIJt+k/QnRSPEXrhUbA64EHOlHkCHLJSit6KntD9XzRGvRUpURTeyYIJqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MN0PR11MB6036.namprd11.prod.outlook.com (2603:10b6:208:377::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Thu, 25 May
 2023 23:50:58 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 23:50:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230525210653.1048972-1-jani.nikula@intel.com>
References: <20230525210653.1048972-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 25 May 2023 20:50:50 -0300
Message-ID: <168505865091.3319.13924171660522526573@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::34) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MN0PR11MB6036:EE_
X-MS-Office365-Filtering-Correlation-Id: bdbdde68-dd21-4b9e-111c-08db5d7ae2a1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SnDtT0VrC59rlC6ZJ+ZVw3PQBpdfWq6u7eKFu5tYkPZ6l14KrcacrjnxkYnh9w9OXCVVLy+AV+wQXhG9tpzX0817INeWAuFChbdWCa+hz50ULKjHQgds3mTZ34Tg3RZDLqyj/aPS2ExPLh4jsSCSoHvhG/zwAhmUQTk3zZ2nqDcWMPNB5XDqEhtL2XsV9io48Z5X0YT5/3hLZ3hiykCQmeLgKUFw4ZcDbWgKmEeT/XqKWBWfX3qh9aeu5vXo+gEsxTYAoGO8+MKpcr4Q1fR3hLozMa7ujMZuNBN1IghwMNydn/y26K0rUwijCg6RixbH65xwbgzonIqXSzjxzUezSZ6r9JS7SWNlofrpA3P4O84F0iG2KoABWWWLQGwkUPECkxm/Wf4oHYDXdBPEuHiHXhqyGPxoH+JBFA/DapSC23raJ3T3YB981dup4VlaQ/KZJ8sVGNMLgu5+iRVZ9UnEeEYEEVn6HM5NZblyxMpEHFB8E/0JUpRaJaduS5xZFoGqbyGvpbTsRc0aZeIsRLJwjvIyiL7taPZPECbaNLKpxlunEcwK3FIf/RbpDYDeafGR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(376002)(366004)(346002)(136003)(396003)(451199021)(8676002)(8936002)(2906002)(5660300002)(82960400001)(38100700002)(186003)(33716001)(44832011)(6506007)(9686003)(26005)(6512007)(478600001)(83380400001)(107886003)(86362001)(41300700001)(316002)(6666004)(66946007)(66556008)(4326008)(66476007)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TE5scWl2NGJtVkFVcTlkejdDYkJJREhPMnJTSzBZZ2laUzNGQkhoVVdQVC82?=
 =?utf-8?B?V2FNTm1Uc0lXdGZmRVlBOGozVFhtOUlWVDlzZktRbGxVYzdRVG8wT3hSNUtU?=
 =?utf-8?B?OGRkUThYM0VjVURiTzYxR1FDUDA0ZW1MMkU1WXRya2p4WVh3VDZmVnFMNjdX?=
 =?utf-8?B?UGI1RmMzUHBrL0VmNlNHdHczMEJMbXlRWGdwd1VhOGQ4cGh4aFNzM3NrWkh0?=
 =?utf-8?B?Qmo0bDhmWFNZUlk1dDBXTDJ2b1hna0VIK1gvZVdNQ2lidWtUWVlNNm5NNGFU?=
 =?utf-8?B?QnZMVFR6cUNzUStyOFBVaWNnQTVLempOeGM5VnRraUE2cWtLT1F3SllMUW1y?=
 =?utf-8?B?Y0hHd2dLSXFFcm1FMDhDUHdiODNWYjFIeUxFSTJsbDMreGxLckppVTBINExD?=
 =?utf-8?B?MEs0ai9mVklhNUIrOFlkSWlNZFFrOVBKbTVXMmJhak54NFE0cVdFK0VXdVBh?=
 =?utf-8?B?TmRzTTdHcG5FUlA0QzBpc3hSVnd2QjIvamI5a2dCUVVtWkNXdDR1dmpNaEJi?=
 =?utf-8?B?TXYzY3FiTmdTREpWMjZCVCtyendaUmN0TXJ6QUo3SE1NYllHbEhoekZNNjZD?=
 =?utf-8?B?VkM5U04rSHhkWUZYMVU2VEtTUDh2Ym9peE9xVnExeWJSUzFSUDhYUnd0eFp3?=
 =?utf-8?B?UENVcHdSbGJ4SHR3T2MwNitQeXNPNFhjMTZiV3kxbG0wYnA0TWdqbEk3QjhG?=
 =?utf-8?B?UVBxTEJZM2FXbEJxQ3VTT3phVVYwSUEydkdvQXgrM2FqcXloTFRaWFd5N0l4?=
 =?utf-8?B?VHpmamRObkMxM2NNd3BDYmRzRHU4Ulg0bjd6VDh4MXg5UmdaaGg4cjFweTV5?=
 =?utf-8?B?M1BSVzFXMC95UXRmZmE1QWdWMFBYMkl3ZDZTT0NSRmYyL3R5SHgyYWJ2c0pP?=
 =?utf-8?B?OEZOaDdIWFphU3ZyTTlyOU5nMmQvRHkzZXQwbUJRTEwyaUxVTis5REphL2lk?=
 =?utf-8?B?VkVCVXBKMHE3RERMNDZVY1U1RWluUzJ6bXptVW1HOGJ2K2x6WmQrS3E5eXlS?=
 =?utf-8?B?RDJYZ2tVdlFyT0NRM1JzZVJZTHpHY2JidmxHRXRXV3B0SG9nNjVFQ0o4a1cx?=
 =?utf-8?B?c3c3eTNUNDhpZ3FMK2FZSmRuNHZFaGNLWktBd1RoaldrNFFqOHNhaXFQYmZD?=
 =?utf-8?B?d2tqK0pOb29nRVpiY3VsOUsxY3ZkcFpsMHdJNjkzaXIwT1NhbWErZkErSWVN?=
 =?utf-8?B?eDAvZEE3a2ZJM3RVb0dxQ0FxdHJoWENrY29oNjgzMjkrZ3NsSmtxdVo3MDYv?=
 =?utf-8?B?ZkJjaHZmM1FMRkVpVVF2QXZMeDdTSkFQb2ZCZkJGa3VTbE9YK1FXZ0N0QlFj?=
 =?utf-8?B?TjN3WEJJcHk1WTg5STQ0UFUybWNEZElVTTdaVVRrSlFCSWdZMmVCZE1aN1Q2?=
 =?utf-8?B?TXBYeUk4MHVsWXhMeHBCRFlya2hIUWVoUUtxMXVaVkVzNCtQVHBUUzRZMTNG?=
 =?utf-8?B?S01LbW9ROVliTWg5UnYySWNMQVFraTZFS2FnZk8wTkhWdDVheUJIRlc1aE9L?=
 =?utf-8?B?REJJK1RuVGtwRVduV2VWUUlkWmc0aHZkaFRmWGk2eFJmRVd1ZFVScXU1bjE1?=
 =?utf-8?B?ZlF6cXIvUmJPRDU2L0hhSkJoKzJoL2pLQlFHTGdna3U5YTl2NnRNYy9Vbkgw?=
 =?utf-8?B?bWtKSDJ1cFZyM0ZFVW00anFIQ1p6d1V6RXk4NUFNWHMzS2JLbE1QRlBUVzli?=
 =?utf-8?B?NkpuTmI3NHl2anhSZk5QV2Z4OWFvOEJDUlU4K3RiWXFCWE01bGpqQkhEbE40?=
 =?utf-8?B?VSt5eUhwcmtpQU4wa1ZOS3JJQm40WUhSMW9jRGtXTnAvd2pwYkxGZDJsZUdN?=
 =?utf-8?B?cEhIMzZrRUZ5NTNRVXhGcTdISDJNM1lWQ3MzZTJ1Z3huSmRnRmlvQXZUaEVm?=
 =?utf-8?B?dDFxajRJTFZPVENDUXhKZFNqMlg2c2FBY0g4ZUxWN3lzTWhrQ2RobTZUNk91?=
 =?utf-8?B?ZzlZMWFiMlpGYUN2c2NZZi9sTURvbE5udFJxQmZvUkEwZkZFNTRJTXNRbkpL?=
 =?utf-8?B?L0NFQktIaEszeTdGQXBBNTVyeUhIbm9YcC8yT3ZPTmgxM0xTWXBEbElpZEd4?=
 =?utf-8?B?aDRQRy8vZ3hySVZXS2JSTGlrSW5WZndLcUFMajdQNkhjeDFrTC9LSkx0SStB?=
 =?utf-8?B?eE0rZTJ0VkFXTno1bEwwWHNXTlNsUzkvek4wL3JEVVZPYVZHRzViTkt3L1Er?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdbdde68-dd21-4b9e-111c-08db5d7ae2a1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2023 23:50:57.6839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IBm/INhB89mb8at/OQ5yu2vDy6B3HeSLvKXb8DsBtESItycBYmDu49lD2qk+oNteO7mvFLRspH7EduhO/CMH0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use localized __diag_ignore_all()
 instead of per file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-05-25 18:06:53-03:00)
>Use localized __diag_push(), __diag_ignore_all() with rationale, and
>__diag_pop() for specific initializations instead of blanket disabling
>of -Woverride-init across several files.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/Makefile                       | 5 -----
> drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
> drivers/gpu/drm/i915/display/intel_fbdev.c          | 5 +++++
> drivers/gpu/drm/i915/i915_pci.c                     | 5 +++++
> 4 files changed, 15 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 06374fc072d3..1c9ed4c52760 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -23,11 +23,6 @@ subdir-ccflags-y +=3D $(call cc-disable-warning, unused=
-but-set-variable)
> subdir-ccflags-y +=3D $(call cc-disable-warning, frame-address)
> subdir-ccflags-$(CONFIG_DRM_I915_WERROR) +=3D -Werror
>=20
>-# Fine grained warnings disable
>-CFLAGS_i915_pci.o =3D $(call cc-disable-warning, override-init)
>-CFLAGS_display/intel_display_device.o =3D $(call cc-disable-warning, over=
ride-init)
>-CFLAGS_display/intel_fbdev.o =3D $(call cc-disable-warning, override-init=
)
>-
> subdir-ccflags-y +=3D -I$(srctree)/$(src)
>=20
> # Please keep these build lists sorted!
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers=
/gpu/drm/i915/display/intel_display_device.c
>index a513ac8f71a3..464df1764a86 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -14,6 +14,9 @@
> #include "intel_display_reg_defs.h"
> #include "intel_fbc.h"
>=20
>+__diag_push();
>+__diag_ignore_all("-Woverride-init", "Allow overriding inherited members"=
);
>+
> static const struct intel_display_device_info no_display =3D {};
>=20
> #define PIPE_A_OFFSET                0x70000
>@@ -650,6 +653,8 @@ static const struct intel_display_device_info xe_lpdp_=
display =3D {
>                 BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> };
>=20
>+__diag_pop();
>+
> #undef INTEL_VGA_DEVICE
> #undef INTEL_QUANTA_VGA_DEVICE
> #define INTEL_VGA_DEVICE(id, info) { id, info }
>diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/=
i915/display/intel_fbdev.c
>index aab1ae74a8f7..2c3f7befed17 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>@@ -130,6 +130,9 @@ static int intel_fbdev_mmap(struct fb_info *info, stru=
ct vm_area_struct *vma)
>         return i915_gem_fb_mmap(obj, vma);
> }
>=20
>+__diag_push();
>+__diag_ignore_all("-Woverride-init", "Allow overriding the default ops");
>+
> static const struct fb_ops intelfb_ops =3D {
>         .owner =3D THIS_MODULE,
>         DRM_FB_HELPER_DEFAULT_OPS,
>@@ -144,6 +147,8 @@ static const struct fb_ops intelfb_ops =3D {
>         .fb_mmap =3D intel_fbdev_mmap,
> };
>=20
>+__diag_pop();
>+
> static int intelfb_alloc(struct drm_fb_helper *helper,
>                          struct drm_fb_helper_surface_size *sizes)
> {
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_p=
ci.c
>index 928975d5fe2f..3d7a5db9833b 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -38,6 +38,9 @@
> #include "i915_reg.h"
> #include "intel_pci_config.h"
>=20
>+__diag_push();
>+__diag_ignore_all("-Woverride-init", "Allow overriding inherited members"=
);
>+
> #define PLATFORM(x) .platform =3D (x)
> #define GEN(x) \
>         .__runtime.graphics.ip.ver =3D (x), \
>@@ -843,6 +846,8 @@ static const struct intel_device_info mtl_info =3D {
>=20
> #undef PLATFORM
>=20
>+__diag_pop();
>+
> /*
>  * Make sure any device matches here are from most specific to most
>  * general.  For example, since the Quanta match is based on the subsyste=
m
>--=20
>2.39.2
>
