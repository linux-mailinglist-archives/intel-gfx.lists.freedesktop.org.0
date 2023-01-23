Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DB36788A6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 21:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7B710E582;
	Mon, 23 Jan 2023 20:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D38610E582
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 20:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674507014; x=1706043014;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VpzFpxapR9hzUsmNb7FfcLS2ruPrLcGwZKpagA0q4Cw=;
 b=XxE4hpGujCB9MENqIo8/+hAb0eHl1FhMHrgPPQzcwXSOh1XzbCZZSsHA
 FEHjsd/poPA3KHGsOjkS6voSPqcvBmHH8UHZYKNiB7soqlGkMWAm4fTVI
 WkTIS8UZTm8VlgRxjzj6n66UI3LqMJZaafAkiYs8Fho8qRb468lxjEATo
 GyIvMn4jcH0gvUBP0WWs+GR6lBZIq2OhEqz3uc/lDxKL6JwJvWjUWh3lI
 vjlJsnEL4jErej38Gv+t0loBqlj2c2xuyzI0CE1LocfoQ5r4P238UWqI3
 5WzYEecFWrWrtijQa1R+WRRPwkc//zZdm1xgBNHjvDuLHH3CNZNQJtpLM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="327406357"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="327406357"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 12:50:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="990606664"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="990606664"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jan 2023 12:50:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 12:50:13 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 12:50:12 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 12:50:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MK5TP4kPCnQqO3mU0abzvom7jemX9bF4kDmMlrb9oEAxuX2Xxh/Wzt3eqb8iTDpaKcGMvTRt99OQkmxEjvjWCFs0ni4t3lbWQnV37ydK81GL+6SthG9RBLV3/CFIWExnzgllSjvzIqj5FvUhBfAvuvss5/frkYZllJ9zXr2Ak4DSDDLfgmuO41e9IC2COrHsdh6Lly4WkpuD5ya7N0k0YaLCF/jYsjfulx+3DJwl/lgiOPzZV6t+ObmdSsXpP72YPvM74f3FCfUPJ/HTtOYGsFq4wlAI9pGXmsXUjfZrqOJw32w9U7kWMOVFA2thhLPZ2ZYW3Xl2KNyaFatk4dns0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=53hh7gFa2rpk4aNGs0jb9Y/gjcKhpxN0FxRQXpQOzy4=;
 b=Rwl9/lOw6PWJm+wteoVZBdvuX05ZvvHAuw2p5TjLhmUIjew8Qg38mfD130GIETgGFtmC1LSKhWVjNGLdJHGW5bkeMlIub8pp7NEE9rc4A31CIYS+mMi6/aqijMjIDghowIxGMA9EV+Cn1cRh0SvL7iaEqF3fpAnk3g6EYtBVhCxuN2t+iSY8+5tQRfN2NTcfjx9kCOzmUiAlRVV8hRSi88xbTblhIG8DJlN0l6l/OrxTuv7rXMjSGYMV/rBR389g8SJrhAFwSm13mgzVlGhEXnAFoH+lEnfjMmX7fKbi9WLoiyd1lv5opEZmv2XDCaYlGshyH84Ll1wrCddse/k5Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB5138.namprd11.prod.outlook.com (2603:10b6:303:94::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 20:50:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 20:50:10 +0000
Date: Mon, 23 Jan 2023 15:50:06 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y87y/sWNHJjgpziP@intel.com>
References: <20230123182021.31239-1-gustavo.sousa@intel.com>
 <20230123182021.31239-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230123182021.31239-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB5138:EE_
X-MS-Office365-Filtering-Correlation-Id: e8570cbf-61c2-40eb-93ce-08dafd836b0e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g+9Cj9IdMU1VDQGhYi/puPZ/y+FcB0Mckz8zPAReeLEIK0m/0k7ZOdRQle48nLjXoAsUJIy3ElHWks201v7KfSp0Yr/Ythyr2NFw/ar87ixYNF0BRs4qcfFItPTFznti3VUxjzESyUF3rY0nNRuIPEzDlvuBFBgQbQorh4NREuRl5hiBv2Cd2sLl4+soZxl0cTHVZ5W72g/jm4UfNLFwwHB1n9DwcPi2d46BcBdTwWTCEfGbZXCr3nQAgbQXw44stzDGHuastS7nWlU6y4b29NC3Pv8vMtAhrSPidtmEtRYxqgJgTstZMwebNITxNtdvstIKQ4BLBIDkDk7WJ06TV8239Haicn+UefEpdnFK+HvZJesQwScE3dgWtyvNrqxDC26iCHS/xJgUU7P+aJViFsMnPAva3s9p/2FQN3bbENLur59KjaNgBWlheSo5A20dhwzhf+EgOMFdl/ssilI8PPZPZe1IQ/nglD1Zr76BfaMsYpHIiE3ugJRQ/i/EcrxPywPQIRwALRMW4gx51+/N3LCWLeipFlDGi828GwN6vaCpYFGgiDaib/l2n4d1Rg3Dc14Z0AiYTjxop/RvvHL118YANWA9EVlSMw12UNuvD6Fl0Uq8SdiusaUoVnJSBSHV+xeMbOpomCpFoYN4q5MQfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(376002)(346002)(366004)(451199015)(83380400001)(2616005)(86362001)(38100700002)(36756003)(82960400001)(4326008)(8676002)(66476007)(66556008)(66946007)(5660300002)(2906002)(6862004)(44832011)(41300700001)(8936002)(107886003)(6666004)(6486002)(478600001)(26005)(186003)(6512007)(6506007)(54906003)(6636002)(316002)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l83OZXfbV/0jT3KBuP0tti1hRxGKG03eyE9OeIdd9CR5ZV9leUbJK6D3J8rd?=
 =?us-ascii?Q?ELvo5Lu55eZ1b7WBL3UDOjIwZf12LbFE2y8AqksU4p2ygZVi7e/NAbAXM/kY?=
 =?us-ascii?Q?OQtIEJZ1y4gCUTV687kU49Q9c50w3grbeN2Ob8G95k3ZM4wYdRtQuHRV3ZWm?=
 =?us-ascii?Q?f81L7lr7whQr+bJY9jWe1/Hlu7RMV2mk5zwUXM3iMzFFw39lYt4nggPv9g39?=
 =?us-ascii?Q?q474GTWOzIRrkME2hB96FvFYW/BJImOV+gxQSnRpA2oKVFMy2nfOOJ7XN/mv?=
 =?us-ascii?Q?/O02bhV5iiBqGYZb5b1z8Q4sTOb+b8BxLdp1LTD/l5lEhFcg9K/HneKHHN8Z?=
 =?us-ascii?Q?ZMsxLXHePQrbUxLj54Y1GAcED3J0XpSQYR4O3S04z+a4Fub7yyxjKRnPHcrD?=
 =?us-ascii?Q?cIBRQL38NntGfBefj8Wswlo1jgQgrb8cWUYqftt3aRhCIer6XZCUoyxn3QIE?=
 =?us-ascii?Q?fWjOSCtuK9WABfIjd0O9GDuCi1LzocItPhMfPjUEcC7V46pyEjW9fTk048w+?=
 =?us-ascii?Q?FvaZGHnMd8NSVIVt8ngzEAhm5h4YRhqj5QkWFIf46yP5KES/HkRSgQC0VveD?=
 =?us-ascii?Q?sMbJRz28my+alewedCi6uvYQfknanMRiLTKnng6j0yrQcnCqTl1rSrI31vUN?=
 =?us-ascii?Q?3Raf0ee5f9nfBc7mCUgNoDGnH0HuIWGVQOCc1YcJlWpFUhwN7s4Lsy72KiSS?=
 =?us-ascii?Q?gsmWgxArjnldZKm1qD1L1re/I0vKXXO6rYz//oIzI9yW+8V3SE9VprQMfhUB?=
 =?us-ascii?Q?/2zecf/gEl4b5FeBZ7vNajZN57fOuAy72qyX5HHR9xs1GrXfvOJ8+wuGcrLN?=
 =?us-ascii?Q?161IAZ7s5Ia9MZzT12jWJ5os6iSOY7pJDxdFMv+6ewKVKZavU9im72FetB2y?=
 =?us-ascii?Q?+a5+dgBZMTshGlBuPBzoTsuNmalgTjV+Grug3leh4eGm0X26+BdKRmFiKaAK?=
 =?us-ascii?Q?PUBy4V4a4898SruDnVxdfhQVGWFrD821PyliB4ReEr8w4Jmit/Dri/B7cTS1?=
 =?us-ascii?Q?3ARTuE0nLU023n437PosjWrGdqJrfaFXJHrr5JdX7OoenWJYYVG1IDVv/lIL?=
 =?us-ascii?Q?RvmuNq+Z/21uhuhRzQiKt+DDLmbRd1kFDKxlv3wQHdkcExR9HRiQSk7Xsqfu?=
 =?us-ascii?Q?HlZeTH7r6Mpy1bZuvzvw/f8TcGBAKDZROr3Cua74pfAG4bE/zKofgHv4Om73?=
 =?us-ascii?Q?wrgfRH4t0lMJ5XOTNQI36v/2nyA+D8orkSQbDNxt3zQ3faNqwkwxVBhDecPk?=
 =?us-ascii?Q?FzYtxTXVKl6U1JaYO3nvXu1tE9cDKEoN9uydja1BaSfZ7knckfJVZ81QRF/6?=
 =?us-ascii?Q?v8hJhdfRweMRMiEjtC1PDsStjguwBKD1pKxR7FR8rOFJlQ0weCnnCipgQ/zn?=
 =?us-ascii?Q?1zZ1WkH9Exwz4frfD8QF25oG3KRL911+V2eYGKDjFaem9ZHk6Zx8D1ckST4q?=
 =?us-ascii?Q?KJ4G7ubLEW2BpsixXRctVffGptdmjeH5AW3/nScBG+L/q2f1MYwG2AA39/I0?=
 =?us-ascii?Q?mz4sFSJVEUxk89lio64axZwqDFJHY4zWl2tytVuwTRC294W2Ycet/MIGbzZR?=
 =?us-ascii?Q?X6XaNXXG9RisDRKloUWC4Ay//MZGBMgUvsgRf0G8osEwz/EgIDAgEGwZRiov?=
 =?us-ascii?Q?ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8570cbf-61c2-40eb-93ce-08dafd836b0e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 20:50:10.8287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DyaLrN+2XPpnp4gPYaDEndmkO/85D2X36CBRIqr0emH+8sp2SdILsyZPJyc0ZVveblrvUx6TeH5KlntWdT3oWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5138
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Prepare to use
 unversioned paths
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

On Mon, Jan 23, 2023 at 03:20:20PM -0300, Gustavo Sousa wrote:
> New DMC releases in linux-firmware will stop using version number in
> blob filenames. This new convention provides the following benefits:
> 
>   1. It simplifies code maintenance, as new DMC releases for a platform
>      using the new convention will always use the same filename for the
>      blob.
> 
>   2. It allows DMC to be loaded even if the target system does not have
>      the most recent firmware installed.
> 
> Prepare the driver by:
> 
>   - Using the new convention for DMC_PATH() and renaming the currently
>     used one to make it clear it is for the legacy scheme.
> 
>   - Implementing a fallback mechanism for future transitions from
>     versioned to unversioned paths so that we do not cause a regression
>     for systems not having the most up-to-date linux-firmware files.
> 
> v2:
>   - Keep using request_firmware() instead of firmware_request_nowarn().
>     (Jani)
> v3:
>   - Keep current DMC paths instead of directly using unversioned ones,
>     so that we do not disturb initrd generation.
>     (Lucas, Rodrigo)
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 62 ++++++++++++++++++------
>  1 file changed, 46 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 370c91d323fc..2464796c769d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -42,51 +42,59 @@
>  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
>  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
>  
> -#define DMC_PATH(platform, major, minor) \
> -	"i915/"				 \
> -	__stringify(platform) "_dmc_ver" \
> -	__stringify(major) "_"		 \
> +#define DMC_PATH(platform) \
> +	"i915/" __stringify(platform) "_dmc.bin"
> +
> +/*
> + * New DMC additions should not use this. This is used solely to remain
> + * compatible with systems that have not yet updated DMC blobs to use
> + * unversioned file names.
> + */
> +#define DMC_LEGACY_PATH(platform, major, minor) \
> +	"i915/"					\
> +	__stringify(platform) "_dmc_ver"	\
> +	__stringify(major) "_"			\
>  	__stringify(minor) ".bin"
>  
>  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> +#define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
> -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> +#define ADLP_DMC_PATH			DMC_LEGACY_PATH(adlp, 2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>  
> -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> +#define ADLS_DMC_PATH			DMC_LEGACY_PATH(adls, 2, 01)
>  MODULE_FIRMWARE(ADLS_DMC_PATH);
>  
> -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> +#define DG1_DMC_PATH			DMC_LEGACY_PATH(dg1, 2, 02)
>  MODULE_FIRMWARE(DG1_DMC_PATH);
>  
> -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> +#define RKL_DMC_PATH			DMC_LEGACY_PATH(rkl, 2, 03)
>  MODULE_FIRMWARE(RKL_DMC_PATH);
>  
> -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> +#define TGL_DMC_PATH			DMC_LEGACY_PATH(tgl, 2, 12)
>  MODULE_FIRMWARE(TGL_DMC_PATH);
>  
> -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> +#define ICL_DMC_PATH			DMC_LEGACY_PATH(icl, 1, 09)
>  #define ICL_DMC_MAX_FW_SIZE		0x6000
>  MODULE_FIRMWARE(ICL_DMC_PATH);
>  
> -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> +#define GLK_DMC_PATH			DMC_LEGACY_PATH(glk, 1, 04)
>  #define GLK_DMC_MAX_FW_SIZE		0x4000
>  MODULE_FIRMWARE(GLK_DMC_PATH);
>  
> -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> +#define KBL_DMC_PATH			DMC_LEGACY_PATH(kbl, 1, 04)
>  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>  MODULE_FIRMWARE(KBL_DMC_PATH);
>  
> -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> +#define SKL_DMC_PATH			DMC_LEGACY_PATH(skl, 1, 27)
>  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>  MODULE_FIRMWARE(SKL_DMC_PATH);
>  
> -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> +#define BXT_DMC_PATH			DMC_LEGACY_PATH(bxt, 1, 07)
>  #define BXT_DMC_MAX_FW_SIZE		0x3000
>  MODULE_FIRMWARE(BXT_DMC_PATH);
>  
> @@ -845,16 +853,38 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
>  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
>  }
>  
> +static const char *dmc_fallback_path(struct drm_i915_private *i915)
> +{
> +	/* No fallback paths for now. */
> +	return NULL;
> +}
> +
>  static void dmc_load_work_fn(struct work_struct *work)
>  {
>  	struct drm_i915_private *dev_priv;
>  	struct intel_dmc *dmc;
>  	const struct firmware *fw = NULL;
> +	const char *fallback_path;
> +	int err;
>  
>  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
>  	dmc = &dev_priv->display.dmc;
>  
> -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> +	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> +
> +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> +		fallback_path = dmc_fallback_path(dev_priv);
> +		if (fallback_path) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "%s not found, falling back to %s\n",
> +				    dmc->fw_path,
> +				    fallback_path);
> +			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
> +			if (err == 0)
> +				dev_priv->display.dmc.fw_path = fallback_path;
> +		}
> +	}
> +
>  	parse_dmc_fw(dev_priv, fw);
>  
>  	if (intel_dmc_has_payload(dev_priv)) {
> -- 
> 2.39.0
> 
