Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4059465966B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 09:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2B210E117;
	Fri, 30 Dec 2022 08:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF8910E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 08:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672390078; x=1703926078;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+6Lex99SL/FlKHlglTmMZg4vG8NDj9lUBNTuMoMID/M=;
 b=i9bVyQyQduMTVgWEfCHCb+x2YFexAhnXHDyONc+VHdbf8xUODeBq4Elv
 ZxntXTLw36lkWPDQD20bL4M7Dhz9nriJUFLSdaIXtxiKdiaRMxfwifxPE
 lG6xqHomFXPsvHjkn9Gc8LGuSns8cYkhaErfjyGn13kKsb+SNPYo6jF0U
 XO8YwIuZsb1ERSIDXsYM3rDN19Q8DjHXWFKsulpis5v5GAR5l5GT+WDYy
 wBMHMemKsXhiUdDlJurMwiw+3vO4PnxBzvXRZlT9v2bgCvMEfJylWq6zS
 ESroFiJoR1sknkxgm8TPGz5ldbEHBnhVGjJ1eX4YQ3zexpVAg45SMaELG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="348387694"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="348387694"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 00:47:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="722292041"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="722292041"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 30 Dec 2022 00:47:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 00:47:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 00:47:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 00:47:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTWvWkR/tH5+dugoRy8U6HXZ6jhrgS5serTH/oAY9EmlIZhNwdIuEO11o71e7rgRL+oyvUKwjSS+E4nDyna5vFl5DF+VbrsATafnOFg8WpzkLiVFLwAokD9vjfaYYbsRZrkpt+B/h2/Hh/CMwGxa1Zn0B5J7i3UIvZcUfc/3d2P+ZrIMU17AlbMX/KhChRbfmePsSFqcJIiXS+jWIarVyQ/yUFi8NEoZFxch3uWiNtWxxB+6C3OmkqRDgxfrVf8bZ3Psf4fv3vo96t/sFZJ2um0LG6uqFNAdO0JX8UBdeh+Qdan5fdeKg6eAQq2SkzM+dWq4Tl1gyoZxHLtfAMl5Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h205qnriBDRMKU0LEqtd/+0ZufhdBs/UrcK8QgGwTzA=;
 b=iBfeeeOmbRjURK3XQ8cdKrL0N6vcPLWsYIB7EG/wGYovCN190EMoyLAhqpKzqJgm21igvnzienzBIRE2kqF6KdB59AnW0qpHDzo4kFtQg7BBHWl/ryGNAM2T09GExVwXQSyPMss/IyTn9Q3Fko6Aum9jUPnipJ3ZcpZmbx/34gvschy5YkG1GbtXJnEN47LPKTyEXq3dbY2JZU1TphCUuvmV6s9nU1p7yfqJQAShY0hQFVJkCxz7Lzvi2UkBcz1mzqiC95imOr1Ip4X8KJIDhZUvhmbPGjDBedx3lBgirQdgTS4ORfEDXoWPVfisSf5ugUxIWzzCwdDRzsuSjDAiQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Fri, 30 Dec
 2022 08:47:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 08:47:48 +0000
Date: Fri, 30 Dec 2022 03:47:43 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y66lryH0QYwmtxbN@intel.com>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221229190740.45471-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR02CA0028.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::41) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB4996:EE_
X-MS-Office365-Filtering-Correlation-Id: db88ba0f-f836-43ea-9fa1-08daea4286cc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MYYp5FGvFQZM8aIzJQyUC/G0v6N8ippeMtKywfEUdo85rhKEWAOoEpUVHTH7x86i5+LH1DH+xEvCTOgvLGvqPKSSJK2Wx2b6M+UuqoWuiS8ZflgYojjOBNDq/x9HuTh9lemB7XiHmkFq7k0p2AF3KRSgtBYx/3KHd9SLJVwFGhghcKXINvD8OKiA1+quQWIJT7VcCJ9PQ2xyT/jqhRRSSVAIzvhQY0DEY2wItkYVQS8pf/e1uv8isILzl9NwlxPG4gZ0AA6cp6Vx5LF7enuPxHYtb0+0mVvM5j7HuQAurf5YKLG2jD4BXbvGScE7vu/w6EDZbD5D30lVO3Igys657O0nIKGSe6Fefy23WWaPnxBZsrb8kgjscRdAkRn9S4V4J08VatIzfxrrScaPgFOaXdkrcPZ8QU7UnzQsHDGyqj659kSnjotkq5fznDUuqF1QFy0k/uQBdWiV+Nc8R6suzHaY2oGoVSUNXJpSEk6g383ygtpxvtl5m4b0+xZH4TduSKwAOlJH78on94PkksM/64f0/uFI1eawbXpWD5Kn3XvanZggtT2I4RUsb+DUCZBLoA/nGbVCq7qjSr9aYsy8oF9cAJBq7PhPI8TPkPzJVEY3cxQFer8hqpZ3CHbclAg0f3NND0+bVyGras0LyaD5S/s4ZNj6NV+Zxlb6Di41ceI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(36756003)(82960400001)(6862004)(8936002)(5660300002)(41300700001)(38100700002)(44832011)(2906002)(83380400001)(86362001)(316002)(37006003)(54906003)(6636002)(66556008)(8676002)(66946007)(66476007)(6506007)(6666004)(186003)(6512007)(4326008)(966005)(6486002)(107886003)(26005)(2616005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vBAEAaSYT0SEZWgxFuXPbD69D5DGvym2lbvlQj/W9J1uzkJXJTU6s2LKgyMg?=
 =?us-ascii?Q?xEvkoxsoU9JEK4n0/g5Oct6zIkOhG59MNcyjjzQVA819Y12F7pWHHgDg8hEg?=
 =?us-ascii?Q?LzXPXvzxiW8HJLhZTFvAz/iAJ9tfuRW1JB/NAjMiP/ydhhQgg9b7FOkqriFV?=
 =?us-ascii?Q?NESUxcrx0KeHyIxnsaEqdX47qAdATMwWYKCWxj9dd8Y/XslWGE1oHJ+WakO5?=
 =?us-ascii?Q?IdvpNJWGA5YNxObm51iUjRBot/jX/x4aK6bnw0NsYfX8UrPCvGV4dUdaUpMR?=
 =?us-ascii?Q?AMrv6rQ2UrBsGo5niSxhbo6VUFimaji8ea+1PM4ruEDPY0oGbUJOryUub+qO?=
 =?us-ascii?Q?uLxDWKYkigOtXWXIpsPIF3u141Nb+uR9b/TIJpGtNNUBy9XuWTkQINxeWkei?=
 =?us-ascii?Q?YLWdU9LSONQAbKvYp4ktHm013Z66sozyGHHfV+I076iByKav3+Z3SN0b1QZ/?=
 =?us-ascii?Q?5CJDwK6JrzxIvLPE2tU1ubgec6QmtGLUq94XV0UpfbzHOdO5RXnVdgVn41K/?=
 =?us-ascii?Q?loObTC2xDIKkTa47PnIZ8BZO+yrFYHdYHdIoZbGF2lit/VltqUSC0LlINBVc?=
 =?us-ascii?Q?mSji7EfB83ZeDOHEjGF9bTOmp3tD+e/CTnkceTxcW9JSnHZHZ0fO5BvFY87Y?=
 =?us-ascii?Q?Oz7qF9s9za9+eEdqCuhONmI9yZOVOhbSPsBzBC4Hl5YXgJnwUqdGFKDkuXCA?=
 =?us-ascii?Q?ewt9Z1Ob2TRGfIJrq0NlDKffhiHEZdcL2v9+zy1oADQGIKjMLpgMH1suMnt1?=
 =?us-ascii?Q?xeQurKaZn1BTmtJ1LsMls42CgFRgfYIXbMwMaPOJqMcZ8rQFdZzjFAOOr79g?=
 =?us-ascii?Q?rCpHNJms5uIqDQTiTugkDWw+gevDOKMdVw7Ah9xmepser3tl2/JtTA3bHjI1?=
 =?us-ascii?Q?Pdc3fGr+Y/zTqwG78dlGWDBlLp3KZOPPzZd8YXNi8P/dK5Jkcaw4faaUxd0z?=
 =?us-ascii?Q?9yhMhhhtE0DJDRGlfN/jh+U1FHguE32dKpzMj6w/+L39rlFW5vgT3jSJdOpV?=
 =?us-ascii?Q?K0bCrzuuXR9dc62vG41MyRhLX3aatGwfFHdqq89Q4p/Z2z6SOTy8XUext2zw?=
 =?us-ascii?Q?fDr4ifyjba6qxilQJKKxrzAZTP5n/v//68r+IGMyN5GYpTao4tOye5NTFxl/?=
 =?us-ascii?Q?kVPC/46b4Lr9e8ey5KHauBS421A8F/tHE+Yq0sccGLKR+oWyh9oh3x253JQj?=
 =?us-ascii?Q?WVnB+kP3ktwN3Q5djM3zSC+kB1ecesgWibG8QEeXUN6UXVT9yfmYBN7v3RK/?=
 =?us-ascii?Q?xaTzeEq6SuyU464zL31P5HlmR40D1mu1cBTET1DlizddMv8mMqR4VI251tES?=
 =?us-ascii?Q?whWU9MvxVYP4XMHa7VjHFIA9kfKhbbn0E+Q9g0fofSSkGIDhRPL3Ug2zPlt6?=
 =?us-ascii?Q?GJXX30XSyUJl3W990WHONUWw43gNSJ2RN+gH0VqjOABoLyX66wu/lpRC3/ed?=
 =?us-ascii?Q?FHZ07wEuQc9LdspdAP19KBjbatd6mNm7ZUhC61P+FC//vsDmUtsm3LGdcuX9?=
 =?us-ascii?Q?v0KkBlq91nF+N2wxnYsqAFL+N9kG5QynSkTUcu4cSVbQzyzlcGNvncJM8xbk?=
 =?us-ascii?Q?7yF/tHCROGlCc64sf2Ee+aDSevUQMgElXehs3I7K9WLLEdwLKYqwEMl6IDvn?=
 =?us-ascii?Q?rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db88ba0f-f836-43ea-9fa1-08daea4286cc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 08:47:47.9456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9GJBK7yFnbumeFT3W2Xok215Lca1mjQNiDouM0Mi+b59QMgf38MCc5yZu1fxp+y8ys0R8Ya5iVlWvzwgaKhWfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dmc: Prepare to use
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

On Thu, Dec 29, 2022 at 04:07:40PM -0300, Gustavo Sousa wrote:
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
> References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com

I also don't believe this link is a good reference here...

Regarding the patch, I liked the approach in general.

The patch is really neat, but I believe we will need to split it:

1. Add the new DMC_PATH and DMC_LEGACY_PATH only with the introduction
of the mtl_dmc.bin

2. And the fallback function, add only if/when we get a real fallback.

Oh, and I just realized that when doing the new _dmc.bin path we also
need to make sure that we read the fw_version from the header and
print as a drm_info msg somewhere.

> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 62 ++++++++++++++++++------
>  1 file changed, 46 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 4124b3d37110..12f05b2d33a3 100644
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
> @@ -821,16 +829,38 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
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
