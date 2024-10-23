Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A969AD25A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 19:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCF910E35E;
	Wed, 23 Oct 2024 17:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LjvU3A93";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA19B10E35E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 17:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729703885; x=1761239885;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GBnt8um0RMFfhJUmgjcrbYbEGjwA96ZLotkn3hB4EyY=;
 b=LjvU3A93VGHgtnBCLvTKYiWkrtWhVv7fa57hw/xHIWdEdtFW80UFnrKD
 PmeuyVDuARE1BH01euohRGdQ2owQna7a51HfxyMsoL8qP/RY47dJlpSxZ
 DfXSLm34HogV/YFAf7l5iRRGwTkEn1nMPn72RF7pbfbP4kU5tAMtamTFx
 iE6EA+ACj7JRrqNGGwH25AiLaNeOiGkGnGmtWQpDjgqw9pjzPAu0w6SE+
 X2HMke6JUH78evqWZZQ7ABKGN3Q5ViZHea3DTAuDghHAwNRtOHbbcsBCk
 shQDKk5tdenxC3QPFMkyKzW54YF9u0S6htoiFHwz73w0ewwxcTN4Jguxw Q==;
X-CSE-ConnectionGUID: CQnwc1bjRVKVo4v0rKsUEg==
X-CSE-MsgGUID: +HzUSJtiQICH/E52+C9A9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29086863"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29086863"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 10:18:05 -0700
X-CSE-ConnectionGUID: knLwezb1SBmdUZQePYJRxg==
X-CSE-MsgGUID: 4BncsNPjRU2uU0/KhcQDDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80220629"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 10:18:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 10:18:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 10:18:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 10:17:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jexXf2YY+DHPRxu/gAyXTsnmmqypmt/wC7Q9lqAOH+euhg5api0JE65u2GBsbwy39QdN9JKCJLJ7DyXcghOs3S5oXhhart/p4q0kKW1oQJo64FgifpWCajCsV0dPB6MYEOKi0/GssyBIVcBTkFw3jwVZhlRHSCkRiImgD/oVa5EeYYuplammsIYcFj+STutYRIwju8yuD+7vLDnOYL3u/SbJvbMngYcVVC8QPxvu/w8p4JsWcDPNKwpWVB7HY3YaiNZOZYEgVRxT3zaSf3bPNYKVNvjTwFqgpkZQuKISFfJF33OqpgvxfRcy9ncMCLmwHwVj8t3ty8k2Ks1xIW4JOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFgncVpGoRgn6VI8210kxQ5esm3Bjo51Gk1WGAdFlwo=;
 b=cfaJtdQB9+JSSm9DXX3+xdmUW6uLD4mNUCeOXB274Btds5PoaOxD+lgGzx/U9jwitUWdBgCfwo18KZ6sK5Egy+MN+ZeNxBFjaiq84vr1v4cSFftD/nGEoM4Ol/gAd8hQfsB2Pw29sdmlqQKZVoF8XCEmYE+nqykvsm1wPGhJwcyxJ0GdkrjTVanVsVx3GeVE3G3vGmEtJxmaHvumPiVTz15T59kT8FD+NeptFtiuNOc5X6xBOmBlZ8zPW/00KyT7ic9lxdFgebIa323Muj1Ri2snhrL7oQW/gJl8d6bxg/5mU2FMxOj1M0f6goopxQWXGQNIkheVPCSJ6L3rnD++Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5862.namprd11.prod.outlook.com (2603:10b6:510:134::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 17:17:44 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 17:17:44 +0000
Date: Wed, 23 Oct 2024 10:17:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matt Atwood <matthew.s.atwood@intel.com>, Clinton Taylor
 <Clinton.A.Taylor@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for Add
 xe3lpd edp enabling (rev4)
Message-ID: <20241023171739.GN4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <172929032957.1294974.4509235075402735174@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <172929032957.1294974.4509235075402735174@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR03CA0346.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5862:EE_
X-MS-Office365-Filtering-Correlation-Id: a901ad89-b4f3-408c-70a6-08dcf3869b2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LDpZUmfzH+p6T5TtBkqewIjmJpIw+lsXHIBmkXO02QYIdIx3aZ42ZjW4JAm9?=
 =?us-ascii?Q?jKi5fM4COvr95r4N4fm6swTzY51oruGus2cTwURgzuay/ZKjMDEcIoEUV3tv?=
 =?us-ascii?Q?iHTvS6tRvcbZpVJGc25s3elYlEibB7V+Fz311sTJjL/SCaVzsmMJHTsAkweT?=
 =?us-ascii?Q?ghFukSdaqBWyokdtRn/aanmKZ0XhCDFSvMrzpy1Tv/jZPRiaQYfINB+96Jr5?=
 =?us-ascii?Q?kIGENSyhvBXn6Ey3+grvz/w49H4VYssFePROYo8c8Vn74+z5gUb+D8CxxwQZ?=
 =?us-ascii?Q?6XW08xPH3KK5XYxf/zW1RJNDl5ltdLOQxR1emtXq4kVMUlJoFaG+lz3UstQt?=
 =?us-ascii?Q?Hjnw91vhQTJ5WngOLy1USKsonjpLBqvTIi3TyYotJ2kEjSE1gGmXmK6e5dBA?=
 =?us-ascii?Q?GguGcTKs3iaVM+dOu8O2lYlVA9QwJMn5maX5mekVOzWo1KWHhsjE+vzuBCfm?=
 =?us-ascii?Q?CE73ZREpy/3JB8vPHwSpM6Tm7Dp4OWZe7V6xac3ooYTYIC9MjMnMMt//O6I8?=
 =?us-ascii?Q?XomSQfSvC43dXwG2TJN29sFtb+4GLHVyTVANU+n4FqUKcC1OzsBCuQzWSCWF?=
 =?us-ascii?Q?yx7+VltxYE+7SgIxRRm4oThcNiqcOi2sxG7xgiC3VNUQVZCCvlGo4mzp4g8U?=
 =?us-ascii?Q?SASH4TErW8yR3CiOl9/F2Potf2V19fBTqa7PpXg9zxuykko7d8HADOErNNeI?=
 =?us-ascii?Q?O+MnvKawqtyOfHL+xXsWxKU7G8NKdDfav1WSzdOEIDdBNj4ZKYhw4tmxaU5f?=
 =?us-ascii?Q?hwsX4bGzWOyIBKPF9IwIB+qPfyJvC2t/BK993Ea+0CpygWy7aPtdGUl5uB1y?=
 =?us-ascii?Q?AieB/kKWD8YDoeef07KdrGFfhk5xwbb8d2jsDYIE653g7lYRTaxo5Rv70vrB?=
 =?us-ascii?Q?+2wXoJ/6PcM5EnFmOqnTpwxwQjSjWhMyQXBTbfnqYOR16iM/XB/1qEiLS9el?=
 =?us-ascii?Q?/EJavQne4fcRqHT4Xr59ekZjtPzF+aWSS1SO+tdPW3X7Nm8sUbOzZU+hWYU2?=
 =?us-ascii?Q?vTNIip5N+cEU++/A50Cbv1FsCo+UcmawrVoHcEN5ntJssTKx6SHrO2Kg4UIV?=
 =?us-ascii?Q?5soOowWvpe1ivPoHAoI+5QKhcn3w+k9c7rkRNJvpQbrWEtHMHFiTmys2P8U8?=
 =?us-ascii?Q?U6ymS2IX1qp75dFShstAqhdKxb7F1dB051i80eENGhtd5xN0Azcfvz1Z84oR?=
 =?us-ascii?Q?iGJvF9Wa5nup6Vzk52/2X5pxxpUIzINxz6kax7dGeNXRfBs+JQY6zbixFLWi?=
 =?us-ascii?Q?x9YvueMJMpPU8FwNN2sI+aqqo9KfWpepdQVC++gUUw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YvN3Zri0DzvIPjPrVwjwz0pesOenFT2olc0jlbHqaBUIbfsxszlu9ZaxM/g0?=
 =?us-ascii?Q?8WOHGVduoUGOOjAk/fVgPEA0EkxIrlqd2hafU/YqYrY/wMwJi7d0L7Vq8m4R?=
 =?us-ascii?Q?MBFtDwbUKZ/KzhtzIDMCN/pGa1MmMSBc+CrJj5A3mpdrP/gUkWXRrYhaKrwr?=
 =?us-ascii?Q?7qsGSKT+hnyd3N+dP6KmM/harJgfWwJ0tblp79h1fSYTcJiRLoY69e58oTCO?=
 =?us-ascii?Q?ih4qdJqYgEZKRumgNc99q7Rq6870Ev3t8E18eRp0afxVyzs6qJZTClzppPWP?=
 =?us-ascii?Q?Y+ZXL9VdFphkbIitqJtfyrD4crWXrMD6bYbmPj4H7j8S6XJQAH+1F+tCu60G?=
 =?us-ascii?Q?pEz16+IDG6c/iu0BEuqK+aPyvhUKr4BLg4BbsWn2le59ziVHDzfc/kASCZRs?=
 =?us-ascii?Q?v9RQXQyXhkdLyh4L2r10eGaotrjo8m7cSFlPBeJMdPLuPwGamSvIJGf9DeuU?=
 =?us-ascii?Q?M5gyNApij8C6/dHN422Sp9e0xRfG6Mj0RJ992vDvJx5kk/A/JcCufZjHSZvj?=
 =?us-ascii?Q?T6xNLYtQwXbDOwbhCUyHIrNgSylfx9i1t6Flo8DIY+MxF8BM7gg4rRrjUDd6?=
 =?us-ascii?Q?QfHIBT35Gua0/G/44XesGe9WlBn3QbrXtxHPJd91JtrQ3dw6O69eXc+xc6c8?=
 =?us-ascii?Q?8NQ2hwDWjl7ZiyNxx9HBaM2F+Dz51gNI4PHHkDlGL9lPj72/aSxPSbiRpkpd?=
 =?us-ascii?Q?wV7HqDgn2QtTjjrpxOr0GiNIpJxokGW1yiZ/kAA1WqQIB5JytBiedxNs20At?=
 =?us-ascii?Q?pz5DSfAgFGAD7Xg1ZMryY7zZvdIvY1eDlIceV2VVTPZRyc9obmi677LSHujO?=
 =?us-ascii?Q?euAGUPjEivD1x0t/ztKyiME+BwyV9KD8wgCdVAhfz2SlMugosxlOAwZi5bWM?=
 =?us-ascii?Q?WgilGyG182R7KApBhDAgWbD8sBnRHXnUskaVpC3dv84LeV01u7yHUoBwmp9+?=
 =?us-ascii?Q?C19AB7tok5aobwoVyChvl9TAbTELNcpKQUTXDPDWu0Rj/WdSvyEKMd2UToSi?=
 =?us-ascii?Q?D25dKWKsMHVjinr9blRct73pFrTuQZQ13/2uQbDcJp1x2mLuur6ctyjAYOnX?=
 =?us-ascii?Q?sG4QUh7x93urSuIEDKGT7wrXV1kPPGLlDozL2NggrY8yaSY+/VolVGcJZtEo?=
 =?us-ascii?Q?1Cn1kr2EoHB2NhkqukOz8I1HdyVUqIRB+NOT9NJnTfEJXdqiZFGPZJB5piiu?=
 =?us-ascii?Q?22+j36TQRWu/rUjydg/6clEs2N31O6P565eO7Oy/crqE7etAYsF5U8W3QBAP?=
 =?us-ascii?Q?gETYdje0q/66X+994dXGTkvBMEFVHdmGDeZ7XxwsSOeU1oUI7Jxxh7Kljrvy?=
 =?us-ascii?Q?5WA3xxuxmMHWATi60Ku3RQsB8HU/rIqOWWrELLihlJBa25wKPWid+UUSr8rs?=
 =?us-ascii?Q?FQdCh4tNDySg7oxoVVgTY0QF9jPoP1jeHsIiZkH/hzmShGGzvNFT5Z1rBQq2?=
 =?us-ascii?Q?gdWV2yukYvEa44C2AFVdzaXJAD8ZeMKg/MiRWcdzM0gJZWra1nMz32dAmDfK?=
 =?us-ascii?Q?FfW9W2IHuUvG9FdcHio/1/caZuDYCw91vlkefPJp/I8dm09abmnfxsDDmfex?=
 =?us-ascii?Q?xjmjS9egOginFFAjUFFoyE8U5GIlZVh20gYfP1Xu0vlYuhKN+RV0p0ylUr3k?=
 =?us-ascii?Q?Kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a901ad89-b4f3-408c-70a6-08dcf3869b2b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 17:17:43.9289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D164uCeq1YFL+agY7cx/4A3biVkc/CiIcKasBVakl9L1JfOnvd1iy3CFOKzVO+XgkAj+twgr2/qu7R73Cl6D0ZhMlrWhpOLXAIxjPGaJfK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5862
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

On Fri, Oct 18, 2024 at 10:25:29PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Add xe3lpd edp enabling (rev4)
> URL   : https://patchwork.freedesktop.org/series/139731/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15562_full -> Patchwork_139731v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_139731v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_139731v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (7 -> 7)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_139731v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_create@forked@smem:
>     - shard-glk:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk5/igt@gem_exec_create@forked@smem.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk4/igt@gem_exec_create@forked@smem.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_cursor_crc@cursor-suspend@pipe-d-dp-3.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

None of these incompletes on old platforms appear to be related to this
series.

Since the patches in this series are all independent (and none are
actually active yet since we haven't flipped the switch on PTL display
yet), I've applied #2, 4, 5, and 7 to drm-intel-next since they're fully
reviewed and ready to go.  Thanks for the patches and reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_139731v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8414])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * igt@drm_fdinfo@busy@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8414]) +7 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@drm_fdinfo@busy@ccs0.html
> 
>   * igt@fbdev@info:
>     - shard-dg2:          [PASS][8] -> [SKIP][9] ([i915#1849] / [i915#2582])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@fbdev@info.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@fbdev@info.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][10] -> [INCOMPLETE][11] ([i915#12392] / [i915#7297])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-1/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#7697])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#6335])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-rkl:          [PASS][14] -> [FAIL][15] ([i915#12031] / [i915#12065])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#280])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#4812])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_fair@basic-none:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_exec_fair@basic-none.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-tglu:         NOTRUN -> [FAIL][19] ([i915#2842]) +1 other test fail
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][20] ([i915#2842]) +3 other tests fail
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share:
>     - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#4473] / [i915#4771])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@gem_exec_fair@basic-pace-share.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][22] -> [FAIL][23] ([i915#2842]) +3 other tests fail
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#5107])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#3281]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3281]) +5 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-read:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3281])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@gem_exec_reloc@basic-wc-read.html
> 
>   * igt@gem_exec_schedule@pi-ringfull@bcs0:
>     - shard-glk:          NOTRUN -> [FAIL][28] ([i915#12296]) +4 other tests fail
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@gem_exec_schedule@pi-ringfull@bcs0.html
> 
>   * igt@gem_exec_schedule@pi-ringfull@ccs0:
>     - shard-dg2:          NOTRUN -> [FAIL][29] ([i915#12296]) +7 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_exec_schedule@pi-ringfull@ccs0.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][31] -> [INCOMPLETE][32] ([i915#11441]) +1 other test incomplete
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4860]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4860])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4613]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4613])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@basic-small-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4077])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@gem_mmap_gtt@basic-small-copy.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4083]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#3282]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][41] ([i915#2658])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3282]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4270])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-3/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4270]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#4270])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#5190] / [i915#8428])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#8428])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4079])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3297])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#2856]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-3/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#2856])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [PASS][53] -> [ABORT][54] ([i915#9820])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#8399])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [PASS][56] -> [FAIL][57] ([i915#3591]) +2 other tests fail
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#11681] / [i915#6621])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#11681])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_selftest@perf:
>     - shard-snb:          [PASS][60] -> [ABORT][61] ([i915#12450])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb1/igt@i915_selftest@perf.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb6/igt@i915_selftest@perf.html
> 
>   * igt@i915_selftest@perf@engine_cs:
>     - shard-snb:          [PASS][62] -> [ABORT][63] ([i915#11703])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb1/igt@i915_selftest@perf@engine_cs.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb6/igt@i915_selftest@perf@engine_cs.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4077])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-19/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4212])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#4212])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#8709]) +3 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@modeset-transition-fencing:
>     - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#12238])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
>     - shard-glk:          [PASS][70] -> [FAIL][71] ([i915#11859])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][72] ([i915#1769])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#5286]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#5190] / [i915#9197])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4538] / [i915#5190]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4538])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>     - shard-mtlp:         NOTRUN -> [SKIP][77] +4 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#6095]) +14 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#10307] / [i915#6095]) +157 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#6095]) +93 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#12313])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#6095]) +59 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#12313]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6095]) +14 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][86] +87 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk9/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#7213] / [i915#9010])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4087]) +3 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html
> 
>   * igt@kms_chamelium_edid@dp-mode-timings:
>     - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#7828]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_chamelium_edid@dp-mode-timings.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#7828]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7828]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][92] ([i915#7173])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3555] / [i915#6944] / [i915#9424])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#7118] / [i915#9424])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#3555] / [i915#8814])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#8814]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#11453])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#11453])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][99] ([i915#12358] / [i915#7882])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4103] / [i915#4213])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#4103])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#9809])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3555] / [i915#3840] / [i915#9159])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#658])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][105] +2 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3637]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#3637])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_flip@2x-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][108] -> [FAIL][109] ([i915#10826]) +1 other test fail
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb7/igt@kms_flip@2x-flip-vs-wf_vblank@ab-vga1-hdmi-a1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2122]) +1 other test fail
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-mtlp:         [PASS][112] -> [FAIL][113] ([i915#2122]) +1 other test fail
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-5/igt@kms_flip@blocking-wf_vblank.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_flip@blocking-wf_vblank.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [FAIL][114] ([i915#2122])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
>     - shard-tglu:         [PASS][115] -> [FAIL][116] ([i915#2122]) +1 other test fail
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-tglu-7/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#2672] / [i915#3555])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#2587] / [i915#2672])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#2672]) +2 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#2672] / [i915#3555] / [i915#5190])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-dg2:          [PASS][121] -> [SKIP][122] ([i915#3555]) +4 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#2672] / [i915#8813]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#8708])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-snb:          [PASS][126] -> [SKIP][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][128]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [PASS][129] -> [SKIP][130] ([i915#5354]) +9 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-dg2:          [PASS][131] -> [FAIL][132] ([i915#6880])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-stridechange.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8708]) +2 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#1825]) +6 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][135] +22 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3458]) +3 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#3458])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#5354]) +12 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3555] / [i915#8228])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#3555] / [i915#8228])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][141] +2 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#8825])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane@plane-position-covered:
>     - shard-dg2:          [PASS][143] -> [SKIP][144] ([i915#8825])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_plane@plane-position-covered.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane@plane-position-covered.html
> 
>   * igt@kms_plane_alpha_blend@alpha-7efc:
>     - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#7294])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-7efc.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8806])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [PASS][148] -> [SKIP][149] ([i915#6953] / [i915#9423])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
>     - shard-rkl:          [PASS][150] -> [FAIL][151] ([i915#8292])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][152] ([i915#8292])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:
>     - shard-dg2:          [PASS][153] -> [SKIP][154] ([i915#12247] / [i915#8152] / [i915#9423]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
>     - shard-dg2:          [PASS][155] -> [SKIP][156] ([i915#12247]) +11 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:
>     - shard-dg2:          [PASS][157] -> [SKIP][158] ([i915#12247] / [i915#8152]) +3 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>     - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#6953] / [i915#8152] / [i915#9423])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#12247] / [i915#3555])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#12247]) +3 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#9812])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#9685])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-3/igt@kms_pm_dc@dc5-psr.html
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#9685])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#8430])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#9519]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#9519])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#6524] / [i915#6805])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-3/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#9808])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#12316]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][173] ([i915#11520])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#11520])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#11520]) +2 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#9683])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-primary-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#9688]) +5 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_psr@fbc-pr-primary-blt.html
> 
>   * igt@kms_psr@psr-primary-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#1072] / [i915#9732]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-19/igt@kms_psr@psr-primary-blt.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#9732]) +4 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_psr@psr2-cursor-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#5289])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-19/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#3555]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_universal_plane@universal-plane-sanity:
>     - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#9197]) +20 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_universal_plane@universal-plane-sanity.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#3555]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#11920])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@kms_vrr@lobf.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-glk:          NOTRUN -> [SKIP][187] ([i915#2437])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#2437])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf_pmu@all-busy-idle-check-all:
>     - shard-dg1:          [PASS][189] -> [DMESG-WARN][190] ([i915#4423]) +2 other tests dmesg-warn
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg1-15/igt@perf_pmu@all-busy-idle-check-all.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@perf_pmu@all-busy-idle-check-all.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#3291] / [i915#3708])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@prime_vgem@basic-read.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-mtlp:         [FAIL][192] ([i915#12027] / [i915#12031]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          [FAIL][194] ([i915#5784]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-3/igt@gem_eio@kms.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-4/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-tglu:         [ABORT][196] ([i915#7975] / [i915#8213]) -> [PASS][197] +1 other test pass
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-8/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-mtlp:         [ABORT][198] ([i915#10729]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-5/igt@gem_mmap_offset@clear.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_mmap_offset@clear.html
> 
>   * igt@gem_mmap_offset@clear@smem0:
>     - shard-mtlp:         [ABORT][200] ([i915#10029] / [i915#10729]) -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [ABORT][202] ([i915#9820]) -> [PASS][203]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [ABORT][204] ([i915#9820]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][206] ([i915#7984]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-5/igt@i915_power@sanity.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-5/igt@i915_power@sanity.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-mtlp:         [INCOMPLETE][208] ([i915#12358]) -> [PASS][209] +1 other test pass
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-1/igt@kms_cursor_crc@cursor-suspend.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-glk:          [TIMEOUT][210] -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][212] ([i915#2122]) -> [PASS][213] +1 other test pass
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-dg2:          [FAIL][214] ([i915#2122]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-10/igt@kms_flip@blocking-wf_vblank.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-1/igt@kms_flip@blocking-wf_vblank.html
> 
>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:
>     - shard-tglu:         [FAIL][216] ([i915#2122]) -> [PASS][217] +2 other tests pass
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-tglu-8/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-mtlp:         [FAIL][218] ([i915#79]) -> [PASS][219] +1 other test pass
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-mtlp-3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-mtlp-3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-dg2:          [SKIP][220] ([i915#5354]) -> [PASS][221] +6 other tests pass
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
>     - shard-dg2:          [SKIP][222] ([i915#3555]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-snb:          [INCOMPLETE][224] -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>     - shard-snb:          [SKIP][226] -> [PASS][227] +1 other test pass
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [SKIP][228] ([i915#3555] / [i915#8228]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-11/igt@kms_hdr@static-toggle.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          [SKIP][230] ([i915#12388]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_joiner@basic-force-big-joiner.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
>     - shard-dg2:          [SKIP][232] ([i915#7294]) -> [PASS][233] +1 other test pass
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
>     - shard-dg2:          [SKIP][234] ([i915#12247]) -> [PASS][235] +8 other tests pass
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d:
>     - shard-dg2:          [SKIP][236] ([i915#12247] / [i915#8152]) -> [PASS][237] +2 other tests pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
>     - shard-dg2:          [SKIP][238] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][239] +1 other test pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-dg2:          [SKIP][240] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-dg2:          [SKIP][242] ([i915#1849]) -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][244] ([i915#9519]) -> [PASS][245] +1 other test pass
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][246] ([i915#9519]) -> [PASS][247] +1 other test pass
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-dg2:          [SKIP][248] ([i915#9197]) -> [PASS][249] +20 other tests pass
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@mock:
>     - shard-glk:          [DMESG-WARN][250] ([i915#9311]) -> [DMESG-WARN][251] ([i915#1982] / [i915#9311])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-glk3/igt@i915_selftest@mock.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-glk3/igt@i915_selftest@mock.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-dg2:          [SKIP][252] ([i915#9197]) -> [SKIP][253] +2 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg2:          [SKIP][254] ([i915#5190] / [i915#9197]) -> [SKIP][255] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-dg2:          [SKIP][256] ([i915#4538] / [i915#5190]) -> [SKIP][257] ([i915#5190] / [i915#9197]) +4 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
>     - shard-dg2:          [SKIP][258] ([i915#10307] / [i915#6095]) -> [SKIP][259] ([i915#9197]) +5 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
>     - shard-dg2:          [SKIP][260] ([i915#9197]) -> [SKIP][261] ([i915#10307] / [i915#6095]) +6 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-dg2:          [SKIP][262] ([i915#9197]) -> [SKIP][263] ([i915#4087])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_cdclk@plane-scaling.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-dg1:          [SKIP][264] ([i915#7828]) -> [SKIP][265] ([i915#4423] / [i915#7828])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][266] ([i915#7118] / [i915#9424]) -> [SKIP][267] ([i915#9197])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          [SKIP][268] ([i915#9197]) -> [SKIP][269] ([i915#9424]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_content_protection@content-type-change.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          [SKIP][270] ([i915#3299]) -> [SKIP][271] ([i915#9197])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_content_protection@dp-mst-type-0.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][272] ([i915#9197]) -> [TIMEOUT][273] ([i915#7173])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_content_protection@lic-type-0.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [TIMEOUT][274] ([i915#7173]) -> [SKIP][275] ([i915#7118])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-10/igt@kms_content_protection@srm.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-11/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-dg2:          [SKIP][276] ([i915#3555]) -> [SKIP][277] ([i915#9197])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-max-size.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-dg2:          [SKIP][278] ([i915#9197]) -> [SKIP][279] ([i915#3555]) +4 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_cursor_crc@cursor-random-max-size.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          [SKIP][280] ([i915#11453]) -> [SKIP][281] ([i915#9197]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2:          [SKIP][282] ([i915#5354]) -> [SKIP][283] ([i915#9197])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2:          [SKIP][284] ([i915#9197]) -> [SKIP][285] ([i915#5354])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          [SKIP][286] ([i915#9197]) -> [SKIP][287] ([i915#9833])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          [SKIP][288] ([i915#3840] / [i915#9688]) -> [SKIP][289] ([i915#9197])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2:          [SKIP][290] ([i915#9197]) -> [SKIP][291] ([i915#3840])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-dg2:          [SKIP][292] ([i915#9197]) -> [SKIP][293] ([i915#3840] / [i915#9053])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-dg2:          [SKIP][294] ([i915#3555] / [i915#5190]) -> [SKIP][295] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          [SKIP][296] ([i915#8708]) -> [SKIP][297] ([i915#5354]) +8 other tests skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-dg2:          [SKIP][298] ([i915#5354]) -> [SKIP][299] ([i915#8708]) +5 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][300] ([i915#5354]) -> [SKIP][301] ([i915#3458]) +6 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          [SKIP][302] ([i915#5354]) -> [SKIP][303] ([i915#10055])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
>     - shard-dg2:          [SKIP][304] ([i915#3458]) -> [SKIP][305] ([i915#5354]) +6 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][306] ([i915#3458]) -> [SKIP][307] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][308] ([i915#4423] / [i915#8708]) -> [SKIP][309] ([i915#8708])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [SKIP][310] ([i915#9197]) -> [SKIP][311] ([i915#3555] / [i915#8228])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
>     - shard-dg2:          [SKIP][312] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][313] ([i915#12247] / [i915#9423])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
>     - shard-dg2:          [SKIP][314] ([i915#12247] / [i915#8152]) -> [SKIP][315] ([i915#12247])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][316] ([i915#3828]) -> [SKIP][317] ([i915#9340])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_psr@pr-sprite-plane-onoff:
>     - shard-dg1:          [SKIP][318] ([i915#1072] / [i915#9732]) -> [SKIP][319] ([i915#1072] / [i915#4423] / [i915#9732])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg1-13/igt@kms_psr@pr-sprite-plane-onoff.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg1-14/igt@kms_psr@pr-sprite-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          [SKIP][320] ([i915#9197]) -> [SKIP][321] ([i915#11131]) +1 other test skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          [SKIP][322] ([i915#5190] / [i915#9197]) -> [SKIP][323] ([i915#11131] / [i915#5190])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          [SKIP][324] ([i915#8623]) -> [SKIP][325] ([i915#9197])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2:          [SKIP][326] ([i915#9906]) -> [SKIP][327] ([i915#9197])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/shard-dg2-8/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   
>   [i915#10029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11703]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11703
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
>   [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
>   [i915#12065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12065
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12450]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12450
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#79]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/79
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#9010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9010
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15562 -> Patchwork_139731v4
> 
>   CI-20190529: 20190529
>   CI_DRM_15562: fe768c9d3f0cfbe30a1dddf3ae2319d1e04a4403 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8080: 20fcbc59241a16c84d12f4f6ba390fb46fd65a36 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_139731v4: fe768c9d3f0cfbe30a1dddf3ae2319d1e04a4403 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v4/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
