Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ED3659657
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 09:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6401510E109;
	Fri, 30 Dec 2022 08:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB1E10E109
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 08:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672389171; x=1703925171;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MRLgdOmK3a4xxuy1C4c+qbGLD9y2IsoaWMpRr8NcNzs=;
 b=JPf2pjWDFpzOF/r3gmCxhfjdrClr0Vi0vHlJnGii8ntjo37mkvuN2SxL
 bhLRHsBaaYExKUrbXVn1nN35c/1542wWYQjk0XUY+lQgczHuaZEoD54v6
 w/ESrVc80/N8sTrvv5phf4PZmB22QTd8/ZBW+aWVzQy+sfAuWUQzTbiuF
 xlCFSaNQ82HmdANxAx8Aq16jUnw2SgLwfXWDcUQ3JJUnf7ZWG2oSjXR91
 hsSkxoRPsItlvaXxP0k2ZnJQU+c9LZe7/cf+Dsyq5PB+tIYb+06Crs9qx
 tMUJXJUuWpJ76enIFMZCBh5syO7QxQDLt0rlqXyI0kP8Bp4C/lh2/+iSO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="308939612"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="308939612"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 00:32:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="717130477"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="717130477"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 30 Dec 2022 00:32:49 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 00:32:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 00:32:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 00:32:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 00:32:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZiFN7SPKLEJEaDwuP+dSxf9O8kAcHfmnUddGXW1dSjGn2PmbTjM4lC7BuMXMh7eeEqyu7CFGzY94rlUBU+fPWE+DAyw4oAQZah3h2YDRAvtzYjs6mgvj0TkD1D7tIIEf6GqQhBPCwJuSTpNj0gJvMTqS0+F87MQ24a7S1ETjUFOU+v4NhIkuOMKhAK1iIjpViDIqVnywiKdBYVDH46kxWVN5cJjYamxBAYG6D89GJ0hxkWqU/1EjuGh21zOWFKgVF8Ju6a48fd8t0eTYbjC/jxwJMg41SJ7TEIEKr98lFvZrU2nkhlhFt22fURs6SicfEqDg7f8OnQAogc5c3nZF8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G1voag44ZBkS3KAEFaAQCrPjwD3DWWiQ9bUUgjeZ+nw=;
 b=W2Q1GgzsIwhXKmPeRZgr24TvDkDiI0bgS7N27BWUhTpKrNlFCgPV3zz1WEZNFvX2MC+z4igQC6qHgT4UEzry4mBzEezbmj2ebmZXmJKdSPe9cghL90QHKtkt9qxrauiv6AD+SjYGTHYyaF0o9U6w9G6eq8R0KfYBhJzz311UVkhm0O2Pq72aRqjLdbKMgwCMxoSYvQHHbB7S63MlicgzsXLMGw7uM211FGfdQGiQl2i0EoB+7eLft7pfgSoNaN8bZ8/D+lqHWQVveFTsqBduekJUJeX58oMDQodJ6FjwLNfA5WZ+5N0+2cZRL1rQV1aJI/z5/9xoPd1KMdnKr5yaqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB8180.namprd11.prod.outlook.com (2603:10b6:8:18d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Fri, 30 Dec
 2022 08:32:46 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 08:32:46 +0000
Date: Fri, 30 Dec 2022 03:32:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y66iKQ5aGdMzyVh2@intel.com>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221229190740.45471-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY5PR04CA0010.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB8180:EE_
X-MS-Office365-Filtering-Correlation-Id: d51a4edd-ba4a-4719-7be0-08daea406d57
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /JjWwrmJaxqIjXZlwgV6cRO8eSdjs+Qy78WDonyS5b0ci/GVQgPdUQLyiyIsA8VuXO/4dOvYWnQvGeev3Em5REHSKry72kYMqFiL2R3q1h5nMPbTruxhlMwgtBcPMYwuEyqFxRgiNuHnQEBIlIanwfpTROjbGv7UOBW3JHPclNXo1qySoJ82o+e65+2S/+zegzv2CDq1+WL+3YyKOBkWT4Ee/vY4Z+Q0uikJ9aYCebUsLAm2IktxQCJzj7pW6ebpeaojzAaNQkSahakhVI1ZuPBhOOM4LhEKwmcrhVVZoIbbddNSeuPd7OC0pw62UwWuS05CvL6D0GXtllRnR7JKeURMEaH6WbngcDoGd1aive/TuHhjyK9OS1WiVgOAnMK0oRMhFB5UqGtO3Uhn/aO941gkx6A3zopA6Y03fmBcZE5blu0IDKxnwh6ny/5mrg52y4rjTVT4IUyokCSQw/stvgbAv9Gflf/c8yxEJllQzLwp7OGHEtO4CatmXm3cMofxDrn1g5R0P0dJinkSNvSZ7R/HAi324M+u9BcupTWz5tl3mKGtWg7SvnGHPLYd6uxjNgDdZ0PpXBs59M9JkbZaZZrZI77OMJwbMTQnfYN6O+nHJR4G43rXyYy761Izv+PGhL7z43ouePNKnKtX09NZiSpGekIAGIg/efEdb6Kp2g9h8iH7ZSkFOs+Gx8742Bk07Bk3+/tSqsOVHPeak/dgvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199015)(83380400001)(6486002)(2616005)(966005)(186003)(107886003)(6666004)(6512007)(36756003)(6506007)(86362001)(38100700002)(5660300002)(82960400001)(478600001)(8936002)(6862004)(2906002)(44832011)(37006003)(316002)(54906003)(8676002)(41300700001)(6636002)(4326008)(66476007)(26005)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+GxN+/0Aft3XwkBAmPECX/oKqkUeQTcOAltwrzlnIOEQlOSww0Y7qAtNk/gx?=
 =?us-ascii?Q?dyPUs6llCLzQnTfmA7+7jFA3DlgQ3okKaKzyD7EB6Q5MJjFnGP2LLhpt7Rwl?=
 =?us-ascii?Q?DLopmjBpHXQ07NMru1FZA5fSIaraBQjDA43Tle8q2nYhiJ0bzoeDyKugQjpm?=
 =?us-ascii?Q?Vs6lJ9iPvQAJqZdMaF3dyrFcFW9ysYChnyHIp8x2AA/Ou9dAiKEfdwi2rR9H?=
 =?us-ascii?Q?WiBJFpu9ugALR3J6fH4YvdaW9YiWkKdszctE4fnrrjgElzkeYORxkfF1+/4b?=
 =?us-ascii?Q?giOAmA+3HSNFB84lRpAJoeCj45EAiI29CY8vfWE1o1Dta/y+n55dOJ/UtHzC?=
 =?us-ascii?Q?4xGsnbngVB4/FU6T813j5rYbcTIk6nRF4vfuxvpDwI6s/Zd9I23sBpzSylPS?=
 =?us-ascii?Q?4QMwWIFogjD22ifOn71FOBeZwNP9xg3WIL323zI+GsWfothiYlvUN2hsnCgE?=
 =?us-ascii?Q?npxGYX6FRguBb7Wnw+wyOPEJWX0E3iGe5irLqD7vkmVbvIfn3KPTxkv0Gp7h?=
 =?us-ascii?Q?EMXjzoyVEKsxcFcKC6mq17gF5Lua9+YLdicbjsRABYqGvmt3zzt3u9XSjpFJ?=
 =?us-ascii?Q?z5aShdDwYebwx5LjyV0xhAiI0rEf5/hmPccqdpLbus6YExh1sybObcGez4us?=
 =?us-ascii?Q?u1FhR7dKSzWMK6fcGrKLSt4VuS8LvkvnSymY/KlqPga7yGeHgbI8a0fIgl7i?=
 =?us-ascii?Q?O4Zn+YR0CQZFsOt6AvWKnWgIB4OTI9Uf7FdGLjgY452vcpju2i3rKxMcSSXK?=
 =?us-ascii?Q?4NNt7b8nMY4G8vaZoV1LAi20TNVWDCCmchBw25c5h59/Cmy1bTNg/tfwL+YI?=
 =?us-ascii?Q?v/2+MhjB9CHytVWL2WKQlj1hZNVsJe4/BRNNHQymw5v8CdghBL+ZbaxmRu5t?=
 =?us-ascii?Q?F2qX2hlZu+sTRomYl956gkqcfX97Ni3q+JPJaYYJz1vtUoK3kllF4M+FkWsq?=
 =?us-ascii?Q?kXPOGyvJC5ZMnUfdjDFWZ9rDUQb5m7WO9wBrWNjsaeBxcaPE3Y56h0DiPVXC?=
 =?us-ascii?Q?ooJ0q7zO08iojJY4pbSG149B1TwTTh2xUd3h1kIozon2vSVP1+Qengjb+gyp?=
 =?us-ascii?Q?T0+LhacZU36ACEGgI1fdzSN5NlEs4fXu/Oa6po6kzccwJOhfTbNpyYVd7auX?=
 =?us-ascii?Q?33rNJj6pboaGUvDT05so1cGD5QMsE52DENkzgjI3TS5YpfZ+4WZYZnAWv9/t?=
 =?us-ascii?Q?iCClNldAT24uEHFu3ZgdvYYfvg4XNNyy53EMXdA0C088MgRqBKoj3Ek3TPtD?=
 =?us-ascii?Q?1/pEE0i/E9/dAeZInEY4vv/wT9aRR1f0tsE+vGdbEkTu0YQmVV/5ANBhmOoD?=
 =?us-ascii?Q?cY7phmoaTrT9xCmgPA42D2CvwWKg/qLmXclJqV5TCc2HQnRZimm9ayzNG615?=
 =?us-ascii?Q?FvG3O1lEC6wX9cu6c1JmeM7OxwXTtaUksMJNJ/xhHFXZf1xvoLEq2RbKEGbQ?=
 =?us-ascii?Q?ATGm/VMNSilcyFQzoAMEZP1zNtqsVycd4X1q7qwYy05Vm8h2dNPDrg2PKfzr?=
 =?us-ascii?Q?7lAA2fKfVJZSor7tMVElRotxGMw2FsmT2L/f6MCrpx3SXa0Goq0r52XovC8e?=
 =?us-ascii?Q?2BtCcs9FGUdySNpd393GZ8/NMU6jZzbjKjZDC4kltSno2u8m4hC9NyemW8wD?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d51a4edd-ba4a-4719-7be0-08daea406d57
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 08:32:46.2414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VwJhrHAmZvtZlhkxsPtImWN7r/Q2nSxNwU2drHJwf4kPmz08YL4+XG5iWxZklE/C+LUZPKDppETWPS0C1VLY1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/dmc: Do not require
 specific versions
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 29, 2022 at 04:07:39PM -0300, Gustavo Sousa wrote:
> Currently there is no DMC version requirement with respect to how i915
> interacts with it and new versions of the firmware serve as drop-in
> replacements of older ones. As such, do not require specific versions.
> 
> References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com

I don't believe this link is a good reference as justification
of this patch.

Probably https://docs.kernel.org/next/driver-api/firmware/firmware-usage-guidelines.html
is a better link?

Also, in the commit message we should be more clear that i915
interacts with the Hardware and not with any FW ABI/API, so the API
is fixed within the platform, hence no need to get this so-tied
version requirement.

with the commit msg changed you can count on my reviewed-by,
the patch looks good to me.

> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
>  drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
>  2 files changed, 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 905b5dcdca14..4124b3d37110 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -53,51 +53,40 @@
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
>  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>  
>  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> -#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
>  MODULE_FIRMWARE(ADLS_DMC_PATH);
>  
>  #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> -#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
>  MODULE_FIRMWARE(DG1_DMC_PATH);
>  
>  #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
>  MODULE_FIRMWARE(RKL_DMC_PATH);
>  
>  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
>  MODULE_FIRMWARE(TGL_DMC_PATH);
>  
>  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> -#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
>  #define ICL_DMC_MAX_FW_SIZE		0x6000
>  MODULE_FIRMWARE(ICL_DMC_PATH);
>  
>  #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> -#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
>  #define GLK_DMC_MAX_FW_SIZE		0x4000
>  MODULE_FIRMWARE(GLK_DMC_PATH);
>  
>  #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> -#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
>  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>  MODULE_FIRMWARE(KBL_DMC_PATH);
>  
>  #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> -#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
>  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>  MODULE_FIRMWARE(SKL_DMC_PATH);
>  
>  #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> -#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
>  #define BXT_DMC_MAX_FW_SIZE		0x3000
>  MODULE_FIRMWARE(BXT_DMC_PATH);
>  
> @@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>  		return 0;
>  	}
>  
> -	if (dmc->required_version &&
> -	    css_header->version != dmc->required_version) {
> -		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
> -			 " please use v%u.%u\n",
> -			 DMC_VERSION_MAJOR(css_header->version),
> -			 DMC_VERSION_MINOR(css_header->version),
> -			 DMC_VERSION_MAJOR(dmc->required_version),
> -			 DMC_VERSION_MINOR(dmc->required_version));
> -		return 0;
> -	}
> -
>  	dmc->version = css_header->version;
>  
>  	return sizeof(struct intel_css_header);
> @@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  
>  	if (IS_DG2(dev_priv)) {
>  		dmc->fw_path = DG2_DMC_PATH;
> -		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
>  		dmc->fw_path = ADLP_DMC_PATH;
> -		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_S(dev_priv)) {
>  		dmc->fw_path = ADLS_DMC_PATH;
> -		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (IS_DG1(dev_priv)) {
>  		dmc->fw_path = DG1_DMC_PATH;
> -		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		dmc->fw_path = RKL_DMC_PATH;
> -		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (IS_TIGERLAKE(dev_priv)) {
>  		dmc->fw_path = TGL_DMC_PATH;
> -		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		dmc->fw_path = ICL_DMC_PATH;
> -		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
>  	} else if (IS_GEMINILAKE(dev_priv)) {
>  		dmc->fw_path = GLK_DMC_PATH;
> -		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
>  	} else if (IS_KABYLAKE(dev_priv) ||
>  		   IS_COFFEELAKE(dev_priv) ||
>  		   IS_COMETLAKE(dev_priv)) {
>  		dmc->fw_path = KBL_DMC_PATH;
> -		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
>  	} else if (IS_SKYLAKE(dev_priv)) {
>  		dmc->fw_path = SKL_DMC_PATH;
> -		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
>  	} else if (IS_BROXTON(dev_priv)) {
>  		dmc->fw_path = BXT_DMC_PATH;
> -		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
>  	}
>  
> @@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  		}
>  
>  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> -		/* Bypass version check for firmware override. */
> -		dmc->required_version = 0;
>  	}
>  
>  	if (!dmc->fw_path) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 67e03315ef99..435eab9b016b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -25,7 +25,6 @@ enum {
>  struct intel_dmc {
>  	struct work_struct work;
>  	const char *fw_path;
> -	u32 required_version;
>  	u32 max_fw_size; /* bytes */
>  	u32 version;
>  	struct dmc_fw_info {
> -- 
> 2.39.0
> 
