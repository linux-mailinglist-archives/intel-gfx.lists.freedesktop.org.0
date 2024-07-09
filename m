Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C0A92C487
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 22:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7395D10E66B;
	Tue,  9 Jul 2024 20:28:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kpcXfPCS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7706510E66A;
 Tue,  9 Jul 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720556903; x=1752092903;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zwWNqxJ76xYi3UVS74z7kL8jFrabnJTsH2ZsRwO8gP4=;
 b=kpcXfPCS5mZBKXNcBRYX4qqwue396sPk00ZTzjF5RbchsBkfhCmcKSI5
 hTLkSm/ymvkEYBwRO6xvEeXzdjPhB0XO50LN0PYWWXKuOYjCUBuxcofxA
 5g7dQf8kcyw7Dw7qYXX0k6qPRKzlc6ggs6JdopfU5d7yuYFee3BwIYEXC
 KW7q1trtxqMgv3/mSxGuINJB0BLNHr+NlPu0tJXJHEX3hn14UrW6iRHpM
 PLOV31cfEO+vmGgy0wI7SGT8eBOCG6YaOJ2wmsI3/lWhuBHBlE+8Mkcos
 P6ELPx0/OWcISgg0b9lJM3nU6iz2mtpbLO9r5lvrhKgJPoOv+Jv0d/aIz g==;
X-CSE-ConnectionGUID: woJDwZMCQMiWsbTtzyAJ1g==
X-CSE-MsgGUID: hqvmAB/7SLyJeemqR58BbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="29242668"
X-IronPort-AV: E=Sophos;i="6.09,196,1716274800"; d="scan'208";a="29242668"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 13:28:21 -0700
X-CSE-ConnectionGUID: eLAf9m1yRVeE2eHjBs0iYw==
X-CSE-MsgGUID: vl7TmEqjSqm9iuRPX3HaOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,196,1716274800"; d="scan'208";a="48427825"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 13:28:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 13:28:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 13:28:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 13:28:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RhnT8ELglaUb5RlRP4N7HKVXEUdfD8vLNplHQAdZ5UH7RwIBjdnSaDhZsYTT1n+GXy2uTtjphAInUYlG9JP1uKhziBHcBcIfQXYE2/BV2nSZkkbGiGGko7NwZCxvfuByInt+W1EnF89OAQJ3+ZuuO2xuOIlaBSYshnRwu+Ce6IogxRURI5ca/qlRZKCt8rfnPS+gyr9nceYd/p+UuaNNFdtruofBRoZnIxggnyx5IBPnT29W9MdOLaYC1wKDtBWWPB1S1FiCKOhSVLsc1Ec9IhRdYtvcQvcGic2xrYLvKvZiwyH3V659SHRwlpfQzAFHC+dVBiEYod/TYhUMPHYJog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nAutXIFaA5uPQWFYjWorathxIMBhLuiX7yhbsoMy1UU=;
 b=gQ6fF1fz8HLbMPV6n4f2fPCCRe8esBrlXZh0vwBa046GvhkiN+O5Sbf9E1DoVBacd0BMvnG+boB10Sj5wYV53hPc6IpuOoVGY4o78EfgO+8qgOUr89VweElCGUSGqAHSwo7sDwt7zTqb2mkOfwRE+RZiboIlYyiNmKN2zX6+TUI8TxgnGz2HM23K3BNBEXfkquNFKMQjU8UFPvrXuOg2Ky6QqxGq+gLEhAYJJFJ8544lmqxz7KaHPdaR54LjqxRSK8oTPwxJy/wRIggdx7u9L/4DCymyq9TkpyOeMQYXAceYLGvyiej0luyZ/LH13vhzcnD+YyJBE+4qVKdgkaLlgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB5944.namprd11.prod.outlook.com (2603:10b6:510:124::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Tue, 9 Jul
 2024 20:28:15 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 20:28:15 +0000
Date: Tue, 9 Jul 2024 15:28:15 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 16/20] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Message-ID: <4mw2rthck4nmipknligxj6hu2siwzg236ge2vwor3w4ae7pydu@i2hwfhwouxon>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-17-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-17-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0358.namprd03.prod.outlook.com
 (2603:10b6:303:dc::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB5944:EE_
X-MS-Office365-Filtering-Correlation-Id: 3736db4b-35ab-4a9b-447a-08dca055a948
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?LgGqtDyLNRvI3UQHyDKLWOap5qk4YfLU+d2l8FV+5qDIG94+hyLXr1BDa7?=
 =?iso-8859-1?Q?C+xT8kfWFglP+KCtwSW0WrJcK6Zv8KlvwmU8p5t1lGaHTxPfT2FIaWO6CK?=
 =?iso-8859-1?Q?5qMgTAhcB5K6KoFSq89GvQ4lXKi8IDHJ51BZ6gq5aPkZxQwlrK3DtpN6Ko?=
 =?iso-8859-1?Q?s+v0sB6weEPafPFCo9e1oXNnYINgjpCNymXoVnlzg21GF49eOH+vrGAd4o?=
 =?iso-8859-1?Q?14kKURMPDm2a1FOXXffFJK/yzT2iaOCqihFX5rU6aXP5xxOtKN6DCOCbI+?=
 =?iso-8859-1?Q?Ar6c0KBHUe+21W/Lt/ltPjMzE18Vb4D6+t8sbaJlU2Hz6+5OwSoCTEw2yL?=
 =?iso-8859-1?Q?5dt/ZlqbepEbR4t1yHA3gnkNVOird8fg4SRAHYx2qWVqog73BkyOGYgEey?=
 =?iso-8859-1?Q?IaI2DE7O8DD4OwFvbRBDYlNes8YSeiNQbMLY7Zz2CqjnHDrYtZNIKP/DT6?=
 =?iso-8859-1?Q?CkmIDx+OhYnGWVMmIwftB7BCegP7O3Oaczj2I7ZlhJOwZqXhPvyT7oyWZr?=
 =?iso-8859-1?Q?ZM9Au9yxJ4uuPoIEz+jBqfycUx/7/BpjI5ji+xUV4nnEi8oN6MhK1angud?=
 =?iso-8859-1?Q?fUH85WeHpul2zLt/haLjrW+N65q+QwJsU8FvfN5phx5wohg5nsC/Xr3+y3?=
 =?iso-8859-1?Q?wS9XeVBui8s8sAvvj8xQJOEKIndI8kqksTwph/TFJpfbPnhKUMd0RuFp2e?=
 =?iso-8859-1?Q?4NjVeVw7KxD7aoGbjeS91BYqtaDw/a9ysOLs3sorzAYXP1z5y4/43Sv3Xg?=
 =?iso-8859-1?Q?8ofvA65STqVOBkNJho09285QyfbdjhnINHVnBiG6H7wCKdO1OjJJ2wIdET?=
 =?iso-8859-1?Q?6AZzm0NiIHTmYv51bujAN0t0momsG9REQDNdKgOYi0I/j4aQBVhFbq0iL2?=
 =?iso-8859-1?Q?27RicuSm55/XFW+kS8fqItbSMBwZ3DbrNMyUh5PzBtPJ+v8THFtol7eKwI?=
 =?iso-8859-1?Q?QSopn7pRsXIGm03vg4DXnqG5CcPN+qbFAFk7P++Hi/1OOZ5xJuRRrMKqd0?=
 =?iso-8859-1?Q?YWVUuBAG82KZOsVe45dy9bl/CgkTNLwrXeDfpPMTa76+llelznreVGNKYX?=
 =?iso-8859-1?Q?tj/Z8zS3uLAwHgj26H63Hn0IrGIZdjaKNoD1uQ28pcCHDLsmqU+opHj0h9?=
 =?iso-8859-1?Q?QZI2DJnQzGXqvMww8FGJ7JPLDqYChusdb8xtwIhz2AC2/9gutn0vRh1MCa?=
 =?iso-8859-1?Q?BMYL10yisqssAT7aPiOl4HmI5CBdnQfyETAxP+dxgScLqdeHT+k7ke03fa?=
 =?iso-8859-1?Q?2+YrtNqSyhJvxZvZOgrXVX9KFlQGd/JbGRmsba00jybNTzxB9Cu+SWtwxm?=
 =?iso-8859-1?Q?J2dEeQE7vpYWsITEErzgjxdhS9ghi1iJ+AcRo68L2p0FxQDD+0eyd9hlpw?=
 =?iso-8859-1?Q?sNfgBu7g6bLDodmDexHl5Am0zgnPGCKQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gT5fq6SHw79a4PM2XszriAKxBiCO8kXf84iRyn2bY61Ryg29dQ/2p4YbMK?=
 =?iso-8859-1?Q?LruWqLW49piwrAZQ9V6iHvzuoJEhX+oVVeMWdib0fxTKKnl33YrIm7PSiP?=
 =?iso-8859-1?Q?OhCP13o8P3TgQhzR2Th8AZP+TXVpepIbhAT8RBVpDlORcZKKZK9BDoeEw9?=
 =?iso-8859-1?Q?+TcncoHmtEPHjynvRL+122AFiFT2Ar1hYg8gZSYXe5oZnGCDDmvZMAd6E1?=
 =?iso-8859-1?Q?NEEaueI95at7eFLVC0JVbsYLVrwPyAsaExbH7lasQMsctQgBdvZiwsj55y?=
 =?iso-8859-1?Q?F97ioptfvv23IoFxvAUK64wkZe3R/yahihiGmXxPBEJvBDx6vbgobPCmy4?=
 =?iso-8859-1?Q?ZYCv7m9J07iSHiBxZmPbBxxIHNLrjz3166Ulb+dXsV3GRhv5wn/9UEfAYY?=
 =?iso-8859-1?Q?uf+e5w1UFBpBa88s+d0CMEOD3Udz9JfNcBmgcr1VdgOTg2hlYfwx1epeCS?=
 =?iso-8859-1?Q?z9GxQ7gjrV2u9b43xB2yxOJBDUK1WVlrHHCCM8aIFovbFEkLPReyfwunAl?=
 =?iso-8859-1?Q?HknneXDzcoy8h0RPxhlMikCUMw4voJkxS+/VhR0Yj36EIe/LnS7qUsEUfm?=
 =?iso-8859-1?Q?VSFZx4Oex1L5NXaF9VR3GvcuT3O+9lS8BIImL7m5E8uxt4pyP6kU/KqpSS?=
 =?iso-8859-1?Q?J7z8C/J25EdP+HczFcT7ZjC28mIqI0ChaKFzyV3Y+GltKJu+0bfU6yFHnZ?=
 =?iso-8859-1?Q?X4FighU5B1NSMIPUAqF7Khs2Zm7NsV+ZLEM5Pdm4AO58l+9EHk86Z6LSEx?=
 =?iso-8859-1?Q?AlYgJNWF6IBYvLVMFUdM6fwafdb4/4+4wyZcocpOrkOVQMsNtcqPiQM9sx?=
 =?iso-8859-1?Q?ETmaHTP5Wt8Fa9J3LJUyJD7Irr+SirWQnzjCTaOU6occOZgQyG6b/mClTV?=
 =?iso-8859-1?Q?x/vo+qvhKM2gk3ITz3wihlIWdkM1dx+uP0UYOmqLYtw38Apt7bhWX0jMJ7?=
 =?iso-8859-1?Q?GxWc33s8Yr2e75Wz7wJXq73vN/PO6k29NuvfEJX4gDKAZy9jQw5qcbXbJ9?=
 =?iso-8859-1?Q?xHq8Xhzif0hvB9znZPMgS5hZruYN0UhCOK2S+46K5WdruzOe0ezC/0LZHG?=
 =?iso-8859-1?Q?6/MoO+PJEEw6dj+Z442Ycj+toBErGd8iOa4nFm/a9pJ7ammJxYWGjcjykz?=
 =?iso-8859-1?Q?xtYSFiPyyBuRuZDXw3X3C2IyW+WfgujnKfasqNkuAb2OOQLtvbv2y47Iuf?=
 =?iso-8859-1?Q?2Goooc6wB9Du4lEdvnyvsGN3zLdKliVhojnjqVpQDR+L4qPj4iYc/qgAg7?=
 =?iso-8859-1?Q?NiMQh8D7t0ViXspgtd/pZXIH3AguEVDCmD/L8/8nUMiC7g/gX4IlPohdeH?=
 =?iso-8859-1?Q?tr9JUKuChg5AaBwVBQ2KgtipT+tYXGIChPJ/i3gcvQNnpk8BZ5y555a9YT?=
 =?iso-8859-1?Q?XoRPDqBGS9z4tBSA4RqW22fSFdaYPFco3Epp+TV8dt8cFwy43qhfWJNf1r?=
 =?iso-8859-1?Q?1mCAWynnj4JaJcDSpecCt26wHflFlfOTvMOssawTu4UUwSw0uY021ChUk4?=
 =?iso-8859-1?Q?jiYmnZPm0C9y+m06JCPKNzKqsKerK6+e62Ism4IEwMXxZ8xDUKsf33OPKK?=
 =?iso-8859-1?Q?vqkkQd0CsNdkfqL+XjibF3adeKxo/cu+/DpyQcd7Wp4idlxOX1eoYI39ZV?=
 =?iso-8859-1?Q?1iRDCiIbi1H0toqFzC4Catv65bZ7RQZcUxcwfQiKFSg7QX4uc5vyTZZQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3736db4b-35ab-4a9b-447a-08dca055a948
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 20:28:15.5050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X88drrxdux8RIkFXIfIyMOjiHAGg3Ob1xSu5tkJah5VHp1JcsTxLEbN79IEsFpMTHaKNw0fxwu5wmVvmHAfe+6xJPlBBI5M3SHj0+8Cysi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5944
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

On Fri, Jul 05, 2024 at 05:52:50PM GMT, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Consolidate the "should we allocate fbdev fb in stolen?"
>check into a helper function. Makes it easier to change the
>heuristics without having to change so many places.
>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 24 ++++++++++++-------
> drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +++-
> .../drm/i915/display/intel_plane_initial.c    | 10 +++-----
> 3 files changed, 23 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>index 497525ef9668..0a6445acb100 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>@@ -11,6 +11,19 @@
> #include "intel_display_types.h"
> #include "intel_fbdev_fb.h"
>
>+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
>+				  unsigned int size)
>+{
>+	struct drm_i915_private *i915 = to_i915(display->drm);
>+
>+	/*
>+	 * If the FB is too big, just don't use it since fbdev is not very
>+	 * important and we should probably use that space with FBC or other
>+	 * features.
>+	 */
>+	return i915->dsm.usable_size >= size * 2;
>+}
>+
> struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 					       struct drm_fb_helper_surface_size *sizes)
> {
>@@ -42,14 +55,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 						  I915_BO_ALLOC_CONTIGUOUS |
> 						  I915_BO_ALLOC_USER);
> 	} else {
>-		/*
>-		 * If the FB is too big, just don't use it since fbdev is not very
>-		 * important and we should probably use that space with FBC or other
>-		 * features.
>-		 *
>-		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
>-		 */
>-		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
>+		/* skip stolen on MTL as Wa_22018444074 mitigation */
>+		if (!IS_METEORLAKE(dev_priv) &&

shouldn't this be inside intel_fbdev_fb_prefer_stolen()?

And also pull the same logic on the xe side a few patches after this.

Lucas De Marchi

>+		    intel_fbdev_fb_prefer_stolen(&dev_priv->display, size))
> 			obj = i915_gem_object_create_stolen(dev_priv, size);
> 		if (IS_ERR(obj))
> 			obj = i915_gem_object_create_shmem(dev_priv, size);
>diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>index 4832fe688fbf..3b9033bd2160 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>@@ -6,16 +6,19 @@
> #ifndef __INTEL_FBDEV_FB_H__
> #define __INTEL_FBDEV_FB_H__
>
>+#include <linux/types.h>
>+
> struct drm_fb_helper;
> struct drm_fb_helper_surface_size;
> struct drm_i915_gem_object;
> struct drm_i915_private;
> struct fb_info;
> struct i915_vma;
>+struct intel_display;
>
> struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 					       struct drm_fb_helper_surface_size *sizes);
> int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
> 			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
>-
>+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display, unsigned int size);
> #endif
>diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>index ada1792df5b3..4622bb5f3426 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>@@ -11,6 +11,7 @@
> #include "intel_display.h"
> #include "intel_display_types.h"
> #include "intel_fb.h"
>+#include "intel_fbdev_fb.h"
> #include "intel_frontbuffer.h"
> #include "intel_plane_initial.h"
>
>@@ -160,15 +161,10 @@ initial_plane_vma(struct drm_i915_private *i915,
> 			mem->min_page_size);
> 	size -= base;
>
>-	/*
>-	 * If the FB is too big, just don't use it since fbdev is not very
>-	 * important and we should probably use that space with FBC or other
>-	 * features.
>-	 */
> 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
> 	    mem == i915->mm.stolen_region &&
>-	    size * 2 > i915->dsm.usable_size) {
>-		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
>+	    !intel_fbdev_fb_prefer_stolen(&i915->display, size)) {
>+		drm_dbg_kms(&i915->drm, "Initial FB size uses too much stolen, discarding\n");
> 		return NULL;
> 	}
>
>-- 
>2.44.2
>
