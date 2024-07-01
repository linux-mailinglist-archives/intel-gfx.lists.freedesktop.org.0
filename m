Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CE591E4C2
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 18:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B4110E478;
	Mon,  1 Jul 2024 16:05:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K9tpYnuj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1DE10E24E;
 Mon,  1 Jul 2024 16:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719849941; x=1751385941;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KhW66z4Hs6voqmCwj7aqduidDNM1F9ASISw6g1NEOPQ=;
 b=K9tpYnuj0vheNJYrTFDDA33CN6owj88NhZNPGXDQ1jXmdBPZ2UQZGd5e
 nHy9TDCCFeu56+V++1OGkLsJDY9Bm3pyykTx1mvy/mFUajCHxAPO+UFRM
 +M3sAHx18W9NmfpFwbPKWkq7L6A5sXTTVT2Vi0vGiHvDC4gXRTrZiRJtP
 EeZ7JJJr2QyKgVoFtfBMXb1q4WqN0lfQG8ql/N6ZCQ5ElBaOblrxWGi4Z
 OIxqY8rx11NcmTP4YWyLgOctC247rI/ABeWnHPZFDaEIftaVkm3UNpxZK
 NLp7FvHXkUlVIwXg9m//UdOxOWf2v+d4oMK5mwmbx1QDd2lqQToZ/IRpT g==;
X-CSE-ConnectionGUID: KmiEfwQ1T6+JyHKEwWZs9Q==
X-CSE-MsgGUID: cC2xp/IBSRi67vs6dKsNCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="12342459"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="12342459"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 09:05:41 -0700
X-CSE-ConnectionGUID: ALme2A1MS0iwE9LxxwKcyw==
X-CSE-MsgGUID: 9yGFMFsEQ4OLdRXatVGWdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="46234295"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 09:05:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 09:05:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 09:05:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 09:05:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4leaGfaTuhqNGFw3yjvNT8AbOrGbXe/FlQDwXd5eRSZm7KOCKMenWtoM/qyFYGZ2AAjHF9I0iwclCHSh+kUFU0fjHyWubS7TbiGO9jcrplDrc6QsKzPeGeVuMMNk4IG4GDrGA7mKtYGMIyU3oN8eMZjAdbzQzxiGJ9t5y3Eu55i086q7mNvrl7sTwma4gqPXz6Da2HEH30sP4ObbYS6ML8b8Vu08No+EEdkKrm/ZipTQn7Urw1LbbRSgcmc3GOJtXJyK3nINtqYJMWa0xQrq5ynKlG4p0k+GYFsJPbWZCZd7J+b7cfZpXEglcc0vpXa0Ax01C7U9YZU1j/qAY0Ahg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KhW66z4Hs6voqmCwj7aqduidDNM1F9ASISw6g1NEOPQ=;
 b=lu/EmotzYlCu+ZbfGbcwQZWPIuwrB78371TgVKopz52UakT4tRirPBOm9q5VuusQUa7jI2KuvHFFPxE8Mxin655LAV8ym0zsuDoCvcrJaWIkn9L7iIShjtuUQ4YxGOp9m2HgyR0dBbdN7SjqTQGJrPwASHv2W9W2vntYr/+apiiUtCzYJ52RMgZHVR2WYYA3ojQjM3uXqBCRRY2PZvdGVltbZrGbccbBjMkwdgc5wTza9hMrVczltqoBpP63IUFJtIXXnjlvNpxzKaF9RcPZwDHzijLXlQFx2Bnre7pGW9ZSMMt5aHp1gDC1Ve7w31bwShdTHpWaze2UCShAnH26XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB4806.namprd11.prod.outlook.com (2603:10b6:510:31::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Mon, 1 Jul
 2024 16:05:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 16:05:37 +0000
Date: Mon, 1 Jul 2024 11:05:34 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <6hq2htqmbjjhrdad3jbgsesvteqe3g65hpznzsyk6bxj42iowq@my4rit2pa4sm>
References: <20240701132754.101832-3-matthew.auld@intel.com>
 <20240701132754.101832-4-matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240701132754.101832-4-matthew.auld@intel.com>
X-ClientProxiedBy: MW4PR04CA0237.namprd04.prod.outlook.com
 (2603:10b6:303:87::32) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB4806:EE_
X-MS-Office365-Filtering-Correlation-Id: db742e5e-2f19-4a30-9247-08dc99e7a566
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vs7F9PFoxyAo0iGBlenkYZjLnq4leSPOf6ljpwlGRSjx1D3HP78mti2CxFIv?=
 =?us-ascii?Q?sosShpIIViPYviuaYkeyC02hO4SOssso41aeUVnlf9qv/ZDa1bGGGnxFZDsp?=
 =?us-ascii?Q?v8oNmPxvUvWao6s1vzqbUhmh2eYnbdX/BQrRDJ1ysR4kIkR8uKCy9L4j3ioT?=
 =?us-ascii?Q?GVIR6dChwnV5wGmPr9GBaB23QWuSs1pTLdNhUs4AteQL0ntRhScSXy7D9BDp?=
 =?us-ascii?Q?bPYN2FhT+hkDB/JOxnnzZ3loD/2wrzbSTnv+m8s6KqGwfqinFjSP627gBcEx?=
 =?us-ascii?Q?KPgWbu3QwX2Q2ERQCQaFJ9dHIgntr+Duh1ywWuDXUl63yX/+YAiQ9H2LBXIp?=
 =?us-ascii?Q?n3F6EJ/Yq/zKEOMneu8ITBDnh/x353+2M8EscfK3N0xnCIIwwURaapXFQfPL?=
 =?us-ascii?Q?m7e9kVjmdfk8w1SqavNvVg2YlUUgOB5Lufvhsqg+r7awunnCc7zufLEXGW6L?=
 =?us-ascii?Q?JBumoC3M5n8ILHcp0uqbNfZcXJUx8wUP5/GgXU6CSHXrg6LZ4UFHAiBKy4LY?=
 =?us-ascii?Q?RXB1M7AonN+Pwuc3C7ot++c2ZjkA7IseNP6h5Ud1syBlFR/4rhQmg9JmShVM?=
 =?us-ascii?Q?nBjzq05XbmeYzs/d9mNkuGgR22YKrJ/6+yLlYu/9qxqnCX/Dl2nLBYbejVPq?=
 =?us-ascii?Q?XRITpELuikoNlXcRI/pSTY7jv08H4+bn9VimrEu2K1a2ov+AvPxVl2wjgY5F?=
 =?us-ascii?Q?50N94tIP43B6uwyjEC1KeRhvVN1mwZQYKBYqxG53frZZPuaESasCk51eh3dI?=
 =?us-ascii?Q?qcgehsz4PjAosfJs5FJZYbeG4tKDRdFKD71dipDnr8Zpq2rJnam/EGhk8crX?=
 =?us-ascii?Q?CS0W+YmWQdZbmxK+dMxTc50a/9grJl8Y2Gg2ZWmoGuGZ1p+HKk1C8FOPU9mB?=
 =?us-ascii?Q?77i1LE++VfJRP3LIDmV+emQw5NBecqxzh2ZYU0evpuNNuw8twRbFlgFWZxY9?=
 =?us-ascii?Q?zAsILx3K5jKWLC3GoqU57X8I363TB2lnG3Yb7E0G5g9oclgo9SnlOLssl+J1?=
 =?us-ascii?Q?jFzbyfpRcXxzXKMeDOjqqeQDpFuUQVpJbqNnTmsMeOTZ4mPKTWByhmho/wdo?=
 =?us-ascii?Q?mgojkCF7f9W22mi2gJd6jeMNZzW8M3GVGc2VAYqq4cLROvIPDBWB7TQghZ2/?=
 =?us-ascii?Q?vxCn7VFv1td4NxrBOJ6mqKxsKHTAGQBj0ycHTWWFHKb7nSEubWIblaHqBpAb?=
 =?us-ascii?Q?DBvFXomDxLxUiN89r+SiMcUGpQmEB8s1ZrLtw/c0x1A0lUSkbdEdeA8gNRUM?=
 =?us-ascii?Q?Iv5NSIz2MR0Eu0vElPByLhB31/d3BJcR899r9HxPrnEAG5vcCCuMLbVThEnV?=
 =?us-ascii?Q?qt8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R/UfgYvg1zbTEUgfY93hmtci8MqhqhW2qzXpDZdkeCDXL8VKTyoqSsqJ0HTW?=
 =?us-ascii?Q?gLifB1kv/mIPDck22U4KmxX9F1iElokwXRvofBWYpvBjjUexvNBqGD8o1rtF?=
 =?us-ascii?Q?X3NeWZJMNXH3yEXzYFicaMPw97lfQLQ+pJ0a1JbGFwYsF//fkW6/2ZQZ7pIT?=
 =?us-ascii?Q?Z8kuary5Yxy4VmYEvJR2X6uprFK7B3h7oajrCThCyQRkCuyOgQzov+kyBQU7?=
 =?us-ascii?Q?oRUlIDlxFRhBGnywSXh1UIf0MW0DQ3hDOggZwrHI4nmxmZg6THRuCKsSGQuw?=
 =?us-ascii?Q?bF1jcI5yJ8sMNzFORzrcV5VUzc8LaoNir94/e26hIBZ4Lgc8qMjqibFLrYiJ?=
 =?us-ascii?Q?HvaTpdaYQ7Ohu0hxQDzsEdwiHYpxfmqI7Oqb6YcXD2mvvsmzuNaTo/oNxBdw?=
 =?us-ascii?Q?GwAqUaPCvI9/F344YVdojGfdUywFkutIkJJvMRy8yejWKVPUA/pnv5g90/qF?=
 =?us-ascii?Q?PHx9E4Z5rwSYD8FMoTLCVyZgGWNp7dm/vy1IjTFEtBon1J/Mg0eI0CJkysjG?=
 =?us-ascii?Q?FMB58tnba9xfB8VHc4p7Fy3S8ilEtqZMttbFa+p8zQxjQwB+UyI8A5XBaeb4?=
 =?us-ascii?Q?euIl6k7iVzEX08kcdEU6aXFoT6RrnbX+wl6Eci8wrwd1J+8BXKOsy3W8dfUz?=
 =?us-ascii?Q?SAoHtp1hoidym7hcoR0dpOB8pqOiug9+1w5ND9Q4H6+2jVpHSQo5R+xIxPML?=
 =?us-ascii?Q?Xfp6WwWRvR2fpZLZ1esCQ+Y5VOhO3YsyEzQIncdVTMT2+kPDCysY4nBe3OVZ?=
 =?us-ascii?Q?up2+ugpAi/AnYxvmgw2FsTZ67BRmXtTPYUCzNkn/lg/RbeeIbpR/DVRVdaGq?=
 =?us-ascii?Q?fPCPeXic82EOp9S/dzSoYDnB1vibBtxuUhT7ai5wlc2rjdyFWMduleSGlxc+?=
 =?us-ascii?Q?BLzsp1Anx0b6xTMN39VUQjpml5cguR3766/MhpR/zy7FfyWpJeZCc/jgjg+W?=
 =?us-ascii?Q?lc6P+9UvuAl4msPOxbx7UIU2XW0y6G3/w/vhsRvE63ym0wDak+cF81dNgz11?=
 =?us-ascii?Q?Leoj+yRl29QXxNmTdQpk6ah8FtapAxAqZUS4ifQ6KjVSISRLn3v3tAxBFMgd?=
 =?us-ascii?Q?0q0/LIqf/WJTNKYb64LQZGx7nyRNPxGQYHxGfAHTSJlT4DHumJ0xrw6gB0He?=
 =?us-ascii?Q?YLEFFs8afgbjU0der/Pq520oBP1XMtxFqnJOf2pUClq70ghYL3OO2178RDQi?=
 =?us-ascii?Q?QpUXaAWjm2ShG4dyaYpmoY4KXgl4sbOZ96TPwoTH+Lpbpj+L4htqUwPk8J9o?=
 =?us-ascii?Q?hAXDdy437xcMMHeI9QYEopttVQf8uIoGIezyxD9dJyUrgcYOdQFKDUGNTdwm?=
 =?us-ascii?Q?F0IACILLyDHmGBhwOcheq3Qk3/gLASdIDBbcXwy6uumNv6s2B3NxJD7L1tig?=
 =?us-ascii?Q?edZgpxKxRF31O5eko3sAcuTr1wvakrhjhm1/VguTqkRGoL0AIz0Wj8mkNXRz?=
 =?us-ascii?Q?C0i867e7TzE31OWVRkwudjPbwOSB4XppquNq7LzneiD/hu3cpmbVCJBvvlEx?=
 =?us-ascii?Q?P9N9Vc8h8zjqHX7OoJ4JsMDGIXOc0wlOyHeBvVCaMNxWRHbX9wlnU8dqFSb0?=
 =?us-ascii?Q?0oN7GdFAQkBkzdxaS6AOVqq3a1r54vJLnfB+VwE5YDCdlYEPMSkM0CHTNchE?=
 =?us-ascii?Q?SA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db742e5e-2f19-4a30-9247-08dc99e7a566
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 16:05:37.3131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JSMymoqy1KrmWcOKkqJggugU55RKNj395+OJuy+os97fNIPfBWzT9/4nDlC9wtannxatp/i0gLUHOS2FiNpqxT9ATXCd7Wdcd4MX/iMa+/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4806
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

On Mon, Jul 01, 2024 at 02:27:56PM GMT, Matthew Auld wrote:
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>index 2feedddf1e40..a4256144dff7 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -15,6 +15,9 @@
> #include "i915_utils.h"
> #include "intel_runtime_pm.h"
> #include "xe_device_types.h"
>+#include "xe_wa.h"
>+
>+#include <generated/xe_wa_oob.h>

I think building xe.ko with this include in a header will be racy: any
file that has this include needs to declare the dependency in the
Makefile. I tried a few alternatives to convince the build system to
always execute the generate-rules before anything else, but it failed CI:

https://patchwork.freedesktop.org/series/132331/

I think we will need that before allowing XE_WA() to show up in header
files.

Lucas De Marchi
