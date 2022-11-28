Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3779863B2E3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 21:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25AED10E330;
	Mon, 28 Nov 2022 20:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D358A10E330
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 20:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669666781; x=1701202781;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LXRC+DoYV9AE+wyYhGcIZ3Cw5rD0rhQdTWi0crBzMtc=;
 b=Vw52OVOElHFpEheeA2L2eQygwzG4RvLz/2GQmoZ59stzJHXtwbBg5htL
 /SawYSYOWQAvwMYg9BjES8GWxPxcXFdg8r3huFxHCMuNX/WLHA/UhIRLb
 kegePPsjWB0/pGaEdLbb+FB51Aa8XKLeZnT+AJ2ic96uj4TGtv24OCOep
 v7l55YbNSWXjxnaWd5NhhzOT9xpKxGr7gABAfkc+7no0wOEl8CPwFRRSo
 uHEhP14ULo/Kt1C2a6f7+Fbmjb3QFQlclqqKGSX4nnPO1qC9jkR+9YeRe
 +BBZNpiu62x0C2dbu5SXN0fvisjdQZveJPd2NCrHKRkAhQeEd7TmRADHG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379201271"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="379201271"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 12:19:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="706931277"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="706931277"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 28 Nov 2022 12:19:40 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 12:19:40 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 12:19:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 12:19:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 12:19:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jEcSEK6p6b9Kg78C8M90PWZsawe7JIEEoJYd5y857ethYsmPoA1/sESkhd8wq+1HWSUwWWI8+d/5+ucyRplk3Tr65fzWveolV0VwCaTOAq8n56ZR3laBVhAQDglRpUbMs9v4/s/iCEB5pl3KWgZQPvBbt5TFAWx4MIANrn2qqILK/pp5/VQM8h8DOCuVGovO6Qz9LWwVtSMuA8q6ZO2eTx9X69uymg7tpvzkhMAMqJTQIVrV/njYAxEx9MnNBG0xVFRdamJC+4ENe4+lsHsWNFt6CH9nbIF4wcm7lwc9jqh68uXZEWPzkfYTwQUwOwuSiBOWjQOSPF66SX8kJmRkog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AN0ZdPIOTm3bRh122fk4hTztgLtOYJctt8Y39LxZ+Ck=;
 b=JmPUNgZTWzv63pQyYmcPh7fyRGieCbk3xqQxqlrz9Px6s4g4doXpYnnHcevkMW0Y7I5Y2lv14FMiwgJanQKIt4EBAut8gNX0GCoQqVBzV54esT+RE6YZwladEs3+8PhmF5R17CWW3EzwegLOaXx2yUZE3Fkj8zlKhAjHhFc6onKDiPTPvtWyBXdoCVEFMgcT/BkKnPYExvdFlfVi+ym8N5ZGJGMmpJ8u5EwOS6pVb5tSgWuGWJzzLG3/XZxogror90TSgX6Wh6DFX/EzW0P0DsHuVBzwsrBphJNcGO+kZKLmGs9wSiEUslcl/ZVTnFLKpN02MHrrj6S2PEt/4WEXJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.20; Mon, 28 Nov
 2022 20:19:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.022; Mon, 28 Nov 2022
 20:19:37 +0000
Date: Mon, 28 Nov 2022 12:19:33 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <20221128201933.5aifg3cyrkda3l4m@ldmartin-desk2.lan>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <6cb639bfc8e0eddb3fece1b058e8ab6444f98fb2.1669629369.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <6cb639bfc8e0eddb3fece1b058e8ab6444f98fb2.1669629369.git.aravind.iddamsetty@intel.com>
X-ClientProxiedBy: SJ0PR13CA0069.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB5802:EE_
X-MS-Office365-Filtering-Correlation-Id: 4243eab1-eaed-4eec-7997-08dad17dde59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4CnyF6b+NBZq0pINTYf+uc9P3yeMtA3EkUhcqqrz9b7pBlQEoi54AYHOaF7c1pnSLaWkVLMSzPeYcwOqx9NgS4t4dn4YfQGqhexPoy7YV0jNR79TGW77oBT7HX+ZcErKNxPVU8hnUZXktp8pRQ8jSnesgd3vFdO64RUf9oUu97pGn2d+zYietJMhQB3S3OnflhlfRkdvi63MrFr4wGnY+KhpbVlIPDvnGI0GtM7FOqSu5AV8/3zaDFjP1Z726OhXAuuEx7NSFseHv8fQBL9KG2n9z4Q3zMbg5wrDJBwmfQAnJPGttbZEz16bE6tSS5ONCB5kq0w12tw50+Tpe5YVF9FreWfr7Fh5G0voejUCAUOUFIRguCddQgknm5RQYxeRuqgvgyHo9WfhxeWfiOYlVZP0kmi5oJeXDICnpICNhCurQA9bbtvCuCLl3z/IXgxWt9BaUmKnJUFp8cz3Jl97f0he6hMEIoym8eDhGB2iqvEHwVpSETGafQ4RSKdELK3dYW3RYpsOsNobq0bL8pmqkspNdIMpRj3SupH02JZQq8HsfJDtpKyR94jGPl0ieryUuQdCF3Uo54EEpFYqD0xZ5xv/2kH7WgQmI7XV+A+CWP++3YeIM3/lE+2UBup0oUEI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199015)(6486002)(66556008)(6506007)(86362001)(6666004)(478600001)(4326008)(9686003)(8676002)(316002)(36756003)(6862004)(41300700001)(1076003)(6636002)(54906003)(186003)(26005)(5660300002)(2906002)(83380400001)(8936002)(66946007)(38100700002)(82960400001)(6512007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?szmgfWglLboaPNPig0E+5L2kWFTP/WvqwGH662QoMH3MmA0vFGCCVy0DunIS?=
 =?us-ascii?Q?22qs87MNvIdzyVeEYDKjcvvpIiQf/DLgMI3Pro935V9Dsi2+lchNGasxu5wk?=
 =?us-ascii?Q?5N2VPgZBukH8ksGa58sVa6+ftfbNBDj9JjDOSfLLbFQZGDdQfZY0vJYsDJ0I?=
 =?us-ascii?Q?Y42qHuvRg5bbR8IyaAWytIedRY5UILXKscOAyTaJNPaoy1JfDvu6ES1MXpMj?=
 =?us-ascii?Q?4D7F92OcJmnkKphaXg1wIIliF26GGAbtigWQI2hWP7ACGdOEPBLuH37et8ov?=
 =?us-ascii?Q?u111ipE/zRUOLIEGLXD+/im3mT5ZPNax/JYaSkuEbJBOnT7xBkQkdt4Mwc0U?=
 =?us-ascii?Q?TjGjyQTpfgyXUuqOkJAbmmO9jx8iOXm7/UK2W9Ja7e8Mf9cmfRGoaa17Sr1J?=
 =?us-ascii?Q?oT198Gi3GsMDhl4f837orQv9W7Fq8oG6mBWLKWG01ZBGgblnPxGBzN35ITSk?=
 =?us-ascii?Q?2ncXtTDnJHBrKjo+GuzaKzKrGGg5fK7kaGFxYHIDRFrX9lUbpMK7EYnh8+3C?=
 =?us-ascii?Q?o471bH7MjUb/nfM6LXHc9EMNAxHb9DpVh4Acf93iFUzJxwylZqT1gVLtzhmV?=
 =?us-ascii?Q?aVdzkvKDol6rUuwuhGTC99t9FoKWN3fygyExcpOCXT0LpR67NHD5Le77dNWJ?=
 =?us-ascii?Q?f4UB7lCYz2gbQgLPaWOp95IOEKqvUjr5gOg4pf9Bx13L2nJjCt83A1+Rs4RB?=
 =?us-ascii?Q?PsffmIbm1saYYS4Yf0/FmMv7+xMtkYlcgBwoDdxHbzaUefHkQKHODNwWguy4?=
 =?us-ascii?Q?9TOU2uBvBGrm0+Pz+Odf9J0W1jrDc9coY+W9rHDeB3eelZn0V1O7YFGAH4lW?=
 =?us-ascii?Q?4nxu3M8rLGrRfHAtfVhr1c3MWmNbLnQvB8CVPXmMBeVQSzNUVq/MMwzzzjTI?=
 =?us-ascii?Q?NVC23t6U+Lk+Nl+y0ZaBjLPHaPSASYKe0Lue90PPjVakfb9B385By79Y2WKK?=
 =?us-ascii?Q?dF37DRu0/51W2dMdU2nRCl5sCXIJd5P/5AplcPyaDzWMuwTfMttBA9oaJYAb?=
 =?us-ascii?Q?ESoStDmt0p4/69u4RNL2x+7cA26VYrNfW/ZBKoJrtzQWE0+0BtvzVVejR4M8?=
 =?us-ascii?Q?g8FRS5uovXvch5+rgqglVnRODZqtCNXEdBu2fhXR8VQnsp5nr21cMSHpGBqV?=
 =?us-ascii?Q?CYfV6zF253qhDw1w+fin/HlZGrQ0tTDalBH4Rys4JtoaNL8b0CgoHN1Njr6k?=
 =?us-ascii?Q?6yf4E9wAEApgKOMk9Id5zetzH2gv0JT0okc4VYs8K0SxtGDQaUuH53+rVnKf?=
 =?us-ascii?Q?6ruabRb7uNDS1CvvvQfX3Tc7lVNHnlolXadPcKFpak6xjWaHzWThtpgai/uo?=
 =?us-ascii?Q?eYPofwE3CVjaFVy4vten/rLNjSR6lQJTu9DT/J4+qiUQmu88/tx2nyvR41hR?=
 =?us-ascii?Q?/tBVTi7fb468vN2nSRY1zZVwZkq+7Qvseg4zwF7Imz5EFbiJglk+xet5uTmo?=
 =?us-ascii?Q?DpVjKel0V7zHPZ6jL5OtECwZ19OdrttAXaj3LM95ILFRPh0KrwvobfMr5HKc?=
 =?us-ascii?Q?62flH3M3UepRJgHXPqB3Qubo6QXEdK+ThRrViObQicWrdma8eHqFGQJC3Qmd?=
 =?us-ascii?Q?BbN9qromelsaMvrByrdY3uCpU50OefPf8P0WEZ1+6hj8kpAa3nH66/OMmk82?=
 =?us-ascii?Q?Ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4243eab1-eaed-4eec-7997-08dad17dde59
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 20:19:37.5055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WCqYd+UT3QN9XqgU4Tegua3ScfzbsPRsIcw2gKHcaIoUviaAYSH7P7nlcSw1Y6g3x2XI5IDaylz77YXhD9OtvWTAsC1YxTqELZEJH+kHITo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/mtl/UAPI: Disable SET_CACHING
 IOCTL for MTL+
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com, daniel@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 28, 2022 at 03:43:52PM +0530, Aravind Iddamsetty wrote:
>From: Pallavi Mishra <pallavi.mishra@intel.com>
>
>Caching mode for an object shall be selected via upcoming VM_BIND
>interface.

last I've heard there was no plan to support this through VM_BIND. Did
anything change?  Otherwise this needs a better explanation recorded in
the cover letter.

According to e7737b67ab46 ("drm/i915/uapi: reject caching ioctls for discrete")
it seems it was already planned to extend this to all platforms.

+Daniel, +Matt Auld

>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>
>Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
>Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>index d44a152ce680..aebbfe186143 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>@@ -332,6 +332,9 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
> 	if (IS_DGFX(i915))
> 		return -ENODEV;
>
>+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>+		return -EOPNOTSUPP;

Why a different return? Should this be treated similar to the IS_DGFX()
case above? It seems we are also missing an equivalent change in
i915_gem_get_caching_ioctl().

include/uapi/drm/i915_drm.h also needs to be updated with documentation
about this behavior. See the commit mentioned above.

Lucas De Marchi



>+
> 	switch (args->caching) {
> 	case I915_CACHING_NONE:
> 		level = I915_CACHE_NONE;
>-- 
>2.25.1
>
