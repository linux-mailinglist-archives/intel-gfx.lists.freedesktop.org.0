Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6484F993788
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA8510E413;
	Mon,  7 Oct 2024 19:41:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8u1hfn7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082B810E413;
 Mon,  7 Oct 2024 19:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330116; x=1759866116;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=70dF8ZiHsxzdEsUgFQmyrwOe+c75P5tdv7QaKIAcoUM=;
 b=K8u1hfn7JAgIilrOBtrixT/MH+Ghtgtym2pG0BgM/KV8o1v+zrUZt3o4
 F4EHCCulJD1e7T20VPBQo7pCJEldzxrwWJtA/NLMdAWxauzOyx/8DmvUh
 kpFZGdNzKfQHDugqisOhdDC8hfAelEifMImTHh+xaSvNCh9Ss/90GxoFA
 hWph/36DFCmf1DdFpMGNojYhFcx0eihhd/ARIKsA7Gxad8+ONk03kXzfV
 mAMdShE9Njqg1q1mKtxUNeroGvO2FbjIAVB1XJJeZgTGl1n5ThPv/bGak
 FPpmCZXgDvE1/vLt2K0cUM0aqQlc22Ut9IftGSVgr3Siy6gXgPJ9t/gP4 Q==;
X-CSE-ConnectionGUID: jvBKWrqJQXWuyFwds0jYkw==
X-CSE-MsgGUID: k9wnee+kRWCcKGfenEsY9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27379065"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27379065"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:41:55 -0700
X-CSE-ConnectionGUID: 9DcogiwPSpaXlURtHytARg==
X-CSE-MsgGUID: BSHRIQN5QU2efGzfCRfRJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75260467"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:41:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:41:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:41:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:41:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:41:54 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:41:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rYaLPySAVNSA6z1VygNsdL45P+Pi3r/jelKD5yW2+CSxpcJ9vMLJIfW1adUMVdBX2wl/s9K2nU2E3n3U4HiZvTWRP/oFj5HvHZpdOL2mBFWOr7fPzt8kqJaLMYASIACVfJ04BOPNrswXodtbOha2j3Ysing0Ii3rdwqqjpVTlRiBf3mZ6GQJgiZzysMOQtNI8zXPusBtimz8ifGEGPhhqtK0Md2RbgX9QCGBx9fHna3vHMXgimpGLLcHCJc4IpvTHxzJdycFVKJX1LXAN2d/jAKD/CoYMPMW09Avn28Ajn4f3Ic8uDL0R7mjVAN7igrBQbWATke/bL86YN1IRsrI5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rPJjx1WgGjuPIS54kLgUWo46HGeM9wW5j4RmolQ7Qt8=;
 b=xE5cEz0Cq8WfukLr7JTx8VF/Mh+9Udgqd65dC0xcv+2hAynZ1SO2nYcEjGMt+kcOgvt9mmD876MjCweQezselFuQn/fsfiL+MLsMUj1c77LYmf5XhCXhW8d+X/mwUIDX1y7PY0WY7W4tHYC7/vS5yIH5izElx4n1CsNSlpiGuexsFeQZ47vZ1aCs0uhZZz8clCoKVtRHessP5vwuHvzlWbTzXiZBuY7N1r9Qdlipxfb08hUNQutXtu5416lp1FA5H6UL7yekQzuMD2o8xemY5KfzA9tNhAnWLZ6RqdJcxydC7SinOvfL7Nx1kk7e/VJpED8myTaqZWcs9r8Z/qApbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM6PR11MB4692.namprd11.prod.outlook.com (2603:10b6:5:2aa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:41:51 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:41:51 +0000
Date: Mon, 7 Oct 2024 15:41:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 02/15] drm/i915/display: use a macro to initialize
 subplatforms
Message-ID: <ZwQ5ezyAMJ9fB5BZ@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
 <8a2fb625fbc3623089e36fea3d09a6343c2a468c.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8a2fb625fbc3623089e36fea3d09a6343c2a468c.1727699233.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0209.namprd03.prod.outlook.com
 (2603:10b6:303:b8::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM6PR11MB4692:EE_
X-MS-Office365-Filtering-Correlation-Id: f8f6bde5-7025-47ce-c1d5-08dce7081701
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HZVjMRgLHOVVh08SusjYciHgAIZQzGSqD4R9cBPemWwpOgTwkA8B/R3hSJR2?=
 =?us-ascii?Q?dEJWsE3IxIiXNdz9l3+hhxIOPMs1X6XDC5lAdIgAOI7MxaeDEl/sa1RVcslU?=
 =?us-ascii?Q?PA5c4E/LayJd+SyD2CCmvH98PUJwOq9HoIUdRCh//3Em3IOEhbBfD4BF18gT?=
 =?us-ascii?Q?prLknaWmvgv1f/MnyJgRFrWi0gWkDEaBMMmlZG7k4FFULO560dNdIXdtg50K?=
 =?us-ascii?Q?2xD/L0Kq66UltkFcfs8W5JSDIYjzLU0EuNPSD5nmJtmu4lFb36JI1E++SkJH?=
 =?us-ascii?Q?nTZfqrZVWhVfHHMu9mn6y7UUySGkKzVB4ocjXaeHASdvUwJe5b1TAtk8Emeu?=
 =?us-ascii?Q?UB2LtNvQGbPL/YdaQV53rqXNLcmyfGBRXfTW8mznHz9aUniMawm4SkFLMypT?=
 =?us-ascii?Q?OeJIym8W4yo0gdWTRzsXy6zDB5v7HvecR1BMahcdW9C69FCqbQmeP9cHKLx4?=
 =?us-ascii?Q?ctp3Uncn5BlAa3ZagtY2+0ZgfHyOYxObORAFmX0UhlxT5HqYn78KLaybRQwY?=
 =?us-ascii?Q?1URPiRnkrHP0z1wBeGTaie/2x6On6NuCUTKtj5V0pd5HmVe/EdTBk96SwY0A?=
 =?us-ascii?Q?erYbLaIK3BxGtYw4UHslC5WYrGhkfuNJYU46j4W4O9JveNlydmyn1MjYRPVX?=
 =?us-ascii?Q?qZ1GIJo3BQwVpiv4ghfGbgi3nKrNc8fVbP8nh6xuckGfwYF9jGAV+eF75UEh?=
 =?us-ascii?Q?G4dKKIFmr44n1dyKlJ39mNsSB637GWgpN6nlRJAv+iiFxb8XdSg43n+2LrIX?=
 =?us-ascii?Q?0Hg0hpsZgcKPTr2ZFORE1paLAihr1lV4nyBilNrYvj+r8cdZw6KWMtwfHXhf?=
 =?us-ascii?Q?YiXZpxeZAhenD7LLK85SXs0heL8zjRJqnwP32klf750qycateeVzlCHWhb79?=
 =?us-ascii?Q?eeQVQiWgSBlV/IwwYZzdTWE8TgucjFqlbcriJP0+nNCBeUXUdkA4j9X67ZAd?=
 =?us-ascii?Q?upHcTYpKub+p6oZRMWbhNjr/X9gJX1VQwMiM6/33fIcdHhb8C05utUQVrnmZ?=
 =?us-ascii?Q?q6tbO8kgSIMFUT1ZLamlSXBhzmlkQrAP2mIpm/S6zHm/Jrwc3owKxXbApvOD?=
 =?us-ascii?Q?PiW4D6ZyWdkIXrCxWjJqMLaU/eoa1zdEJfnxswdCC5iKiM8CxGIKerCGMVkg?=
 =?us-ascii?Q?sberaDc8eZ5XHCABmS3Mm/ZK4CwqMBGNUuSge/TbmUlmHfjA1n5V+8SScIci?=
 =?us-ascii?Q?t/LxiyoeVP9KaVS7zNbt2ijPip9ooVmdOnb7IM7FDMj+CkCktUH5Zut7ltsQ?=
 =?us-ascii?Q?H7pbNfdZ6PdVob9qYuT8u0R5+uLnIVNA79yaZCHxJw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WL2dze5Hp5pKEdpyqa9cbs2LZn//nkvBzHqirdmosq4NNjs0P/1TlFYIlBrW?=
 =?us-ascii?Q?L4ex8g6VosVAnIrYq1e7tMQ2K0SbQB1BbsMHaNWp2KlKCm0H+Kidvj8+59O6?=
 =?us-ascii?Q?BCUMPF8tbdifuTgSTZN5l6N2d2d82GhrPkqblxrmbszwDcfaxXrCTjyFwBuF?=
 =?us-ascii?Q?dTNW04sCUzxApFlkSLw7wwaBL7GJXmPuUGL4AgnfPT8m7pIBlWava5Y8V+zj?=
 =?us-ascii?Q?77eFD2fXKqGJk+DDDaSqwiTIddFYv2D1obk1f4LVGyvjuo/1BVPkveHkRJD4?=
 =?us-ascii?Q?R+S2xoFvLnOw2CCO4nl/Ey7cl1+sQL6AWM6P5eimIMmnHGlUqE5YqL80EAtI?=
 =?us-ascii?Q?CLcNPjSRQqo2O0xIGJhuh54oxT444hgLTVrRM4drCaGA9f8j6jmWy86rHX/o?=
 =?us-ascii?Q?xW926/RCYmYm87Xm7Fl0kZyb0b6KNzj+JgMNT8KthBkTCxpo1K9dwInoSyil?=
 =?us-ascii?Q?P6vktWK2mnWv21HFt3m2IsLtqZjG8lM9/mBjlLBwTKTzABuR3CAcKOMtvkiF?=
 =?us-ascii?Q?GopjNCQzJVFTNy8KPjNEfQ6UwrP5ICcwUrYjYWH80xyCmI86WxFjfN3nPDpj?=
 =?us-ascii?Q?99TKv3Aw6Kk7PvkVfVUOO/x0fyCN8uVBPIoRRnv23qdcUILWxZg+NRKswB+f?=
 =?us-ascii?Q?evogqvFBKgkd8lObXJxvL0iG2lfgeNASm6uSQhWFcZAIrX91rgpV4fq1kn7O?=
 =?us-ascii?Q?pkENguJLbX2dzg6sIep0U310/ufNjiNlRqSyih3GTnNA12W9tjTFsyCkEEzC?=
 =?us-ascii?Q?cXnRql8LH9nlXORLWKMi401MHqZdFPrznZHRYJaRW5FJP8qX0OCYq4aZiSdA?=
 =?us-ascii?Q?H5cNWV3N6b5c4eBsMd7Y2mnk7g+LIheK8mKmC42tuT9DILYqR3erKMJftM2A?=
 =?us-ascii?Q?VVYGS5emflFZig4Hc2OQGLwhmfh3TlqZdb+L045tEmnGyGoWf+kTcDbQ3pG8?=
 =?us-ascii?Q?+hBykknHLWSvheZm1mfs/WRZPmT0ZpW+ALy8IQGazBt+KbDIOeglaLpFDg2P?=
 =?us-ascii?Q?ZPG+AxfKLLVnwKDjrhc9GxProc4MnhpP/cYjwKA4V03SAfIwotm16tvd0iEx?=
 =?us-ascii?Q?M5EjJCdB/XZqHVnCL2/aphaMmG3PNzk4AygNHgbm49InXC/KPl+YC4STDiIx?=
 =?us-ascii?Q?r4+xNTVXRR+EnKMEsq7Bh0OTws5+6DFHDekupL1658gs2y41h1AcDaEU/Pat?=
 =?us-ascii?Q?NIizSa5L5ykHlHBFk1EEDLkE4czCWQcb7WdjTub5MO2tEXGsWmBndHpp5dXI?=
 =?us-ascii?Q?boVGO6hvkaSXjxBrjTIR6wkmX/rlT+6cJfiYZF7ypVLg47XCmqO6RB/Ubwl6?=
 =?us-ascii?Q?iYAzz/QU+sr8U2MpwDMiIlq88HTO2VoN8pt3GOGsJjhjJjUcj3YuXZwwryRl?=
 =?us-ascii?Q?4Ieo48ubSEtJGiiVrbL3ilbDoqYBDhhAlfI3tZI+Maes+P2E4HGgpj6nVJqk?=
 =?us-ascii?Q?Y/EWKiUKuIjOEhTluFWMJbg2xnmlHks30xYLvmnRa90jrKsXpZsGz7wEP43c?=
 =?us-ascii?Q?IIFmSp19a79TpaZ1WqhXJfPAjdR7h1uPJypqHjuRkRKvh440KomyHnaAMZHM?=
 =?us-ascii?Q?MBS35VRbSI2XGFVmxheiMvblNBwLo59MHBTlwII5oMLED5mU2ZWEBTL20Ml/?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8f6bde5-7025-47ce-c1d5-08dce7081701
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 19:41:51.3047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MBystOaJrMM+XKu8ckU0iCDz59t8YigfJ+nAOvWjSf5v7DZgOqsaqqAPpOapP1al+giKffPTn6pnLdy+XwmzfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4692
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

On Mon, Sep 30, 2024 at 03:31:03PM +0300, Jani Nikula wrote:
> Make it easier to change the underlying structures by using a macro
> similar to PLATFORM() for initialization.
> 
> The subplatform names in debug logs change slightly as they now reflect
> the enum rather than manually entered names. For example, RAPTORLAKE_S
> rather than RPL-S.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 44 ++++++++++---------
>  1 file changed, 24 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 93c751fde1a9..d311edbfc069 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -37,6 +37,10 @@ struct subplatform_desc {
>  	struct stepping_desc step_info;
>  };
>  
> +#define SUBPLATFORM(_platform, _subplatform)				\
> +	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
> +	.name = #_subplatform
> +
>  struct platform_desc {
>  	enum intel_display_platform platform;
>  	const char *name;
> @@ -498,11 +502,11 @@ static const struct platform_desc hsw_desc = {
>  	PLATFORM(HASWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_HASWELL_ULT, "ULT",
> +			SUBPLATFORM(HASWELL, ULT),
>  			.pciidlist = hsw_ult_ids,
>  		},
>  		{
> -			INTEL_DISPLAY_HASWELL_ULX, "ULX",
> +			SUBPLATFORM(HASWELL, ULX),
>  			.pciidlist = hsw_ulx_ids,
>  		},
>  		{},
> @@ -548,11 +552,11 @@ static const struct platform_desc bdw_desc = {
>  	PLATFORM(BROADWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_BROADWELL_ULT, "ULT",
> +			SUBPLATFORM(BROADWELL, ULT),
>  			.pciidlist = bdw_ult_ids,
>  		},
>  		{
> -			INTEL_DISPLAY_BROADWELL_ULX, "ULX",
> +			SUBPLATFORM(BROADWELL, ULX),
>  			.pciidlist = bdw_ulx_ids,
>  		},
>  		{},
> @@ -645,11 +649,11 @@ static const struct platform_desc skl_desc = {
>  	PLATFORM(SKYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_SKYLAKE_ULT, "ULT",
> +			SUBPLATFORM(SKYLAKE, ULT),
>  			.pciidlist = skl_ult_ids,
>  		},
>  		{
> -			INTEL_DISPLAY_SKYLAKE_ULX, "ULX",
> +			SUBPLATFORM(SKYLAKE, ULX),
>  			.pciidlist = skl_ulx_ids,
>  		},
>  		{},
> @@ -686,11 +690,11 @@ static const struct platform_desc kbl_desc = {
>  	PLATFORM(KABYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_KABYLAKE_ULT, "ULT",
> +			SUBPLATFORM(KABYLAKE, ULT),
>  			.pciidlist = kbl_ult_ids,
>  		},
>  		{
> -			INTEL_DISPLAY_KABYLAKE_ULX, "ULX",
> +			SUBPLATFORM(KABYLAKE, ULX),
>  			.pciidlist = kbl_ulx_ids,
>  		},
>  		{},
> @@ -717,11 +721,11 @@ static const struct platform_desc cfl_desc = {
>  	PLATFORM(COFFEELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_COFFEELAKE_ULT, "ULT",
> +			SUBPLATFORM(COFFEELAKE, ULT),
>  			.pciidlist = cfl_ult_ids,
>  		},
>  		{
> -			INTEL_DISPLAY_COFFEELAKE_ULX, "ULX",
> +			SUBPLATFORM(COFFEELAKE, ULX),
>  			.pciidlist = cfl_ulx_ids,
>  		},
>  		{},
> @@ -739,7 +743,7 @@ static const struct platform_desc cml_desc = {
>  	PLATFORM(COMETLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_COMETLAKE_ULT, "ULT",
> +			SUBPLATFORM(COMETLAKE, ULT),
>  			.pciidlist = cml_ult_ids,
>  		},
>  		{},
> @@ -858,7 +862,7 @@ static const struct platform_desc icl_desc = {
>  	PLATFORM(ICELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_ICELAKE_PORT_F, "Port F",
> +			SUBPLATFORM(ICELAKE, PORT_F),
>  			.pciidlist = icl_port_f_ids,
>  		},
>  		{},
> @@ -958,7 +962,7 @@ static const struct platform_desc tgl_desc = {
>  	PLATFORM(TIGERLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_TIGERLAKE_UY, "UY",
> +			SUBPLATFORM(TIGERLAKE, UY),
>  			.pciidlist = tgl_uy_ids,
>  			STEP_INFO(tgl_uy_steppings),
>  		},
> @@ -1038,7 +1042,7 @@ static const struct platform_desc adl_s_desc = {
>  	PLATFORM(ALDERLAKE_S),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S",
> +			SUBPLATFORM(ALDERLAKE_S, RAPTORLAKE_S),

these gets a bit strange now, but anyway, it is correct...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  			.pciidlist = adls_rpls_ids,
>  			STEP_INFO(adl_s_rpl_s_steppings),
>  		},
> @@ -1145,17 +1149,17 @@ static const struct platform_desc adl_p_desc = {
>  	PLATFORM(ALDERLAKE_P),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N",
> +			SUBPLATFORM(ALDERLAKE_P, ALDERLAKE_N),
>  			.pciidlist = adlp_adln_ids,
>  			STEP_INFO(adl_p_adl_n_steppings),
>  		},
>  		{
> -			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P",
> +			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_P),
>  			.pciidlist = adlp_rplp_ids,
>  			STEP_INFO(adl_p_rpl_pu_steppings),
>  		},
>  		{
> -			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U",
> +			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_U),
>  			.pciidlist = adlp_rplu_ids,
>  			STEP_INFO(adl_p_rpl_pu_steppings),
>  		},
> @@ -1213,17 +1217,17 @@ static const struct platform_desc dg2_desc = {
>  	PLATFORM(DG2),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			INTEL_DISPLAY_DG2_G10, "G10",
> +			SUBPLATFORM(DG2, G10),
>  			.pciidlist = dg2_g10_ids,
>  			STEP_INFO(dg2_g10_steppings),
>  		},
>  		{
> -			INTEL_DISPLAY_DG2_G11, "G11",
> +			SUBPLATFORM(DG2, G11),
>  			.pciidlist = dg2_g11_ids,
>  			STEP_INFO(dg2_g11_steppings),
>  		},
>  		{
> -			INTEL_DISPLAY_DG2_G12, "G12",
> +			SUBPLATFORM(DG2, G12),
>  			.pciidlist = dg2_g12_ids,
>  			STEP_INFO(dg2_g12_steppings),
>  		},
> -- 
> 2.39.5
> 
