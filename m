Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E939AB558
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0BA10E6EA;
	Tue, 22 Oct 2024 17:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bq4OTgr3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7325010E6EA;
 Tue, 22 Oct 2024 17:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729618971; x=1761154971;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6HFtRgI7Sj9tOup7bEwx7PgmmnDQPZsVXQEi7KJ+nJQ=;
 b=bq4OTgr3gq7HvvRseTMA+QixiMp/Jz6nRIWmC6LPa5RlMG9swTifbAJk
 uf6phiYqaUuRunM2iFfvCVibzUyth4CgVpWpGK1wlxALXA7uedot2XUr9
 o37cKhmtr8yr9C5thn3Gwp5n4Iny4ISuYNIKxaD+CY4YaTs1iN7PwH6OI
 lVp2NGk4D/T/z+F6G6HZ6I7Fg3BTOYiSxLJIiEHuiFO/kGZjtHG3SbCnr
 LWEx3k+CAOiWA9VUS3eLDNr3eoyTPeL8UgX2j4vg6ZFEEPo04VJDT+bHR
 TqIttUy2wNFu5bFTdNvpMqnA37OXxbdKttsRaMHykUfb2/1m49akFagmu A==;
X-CSE-ConnectionGUID: sajxzPZ1Se6VEuoebBDJiQ==
X-CSE-MsgGUID: qpX4T4SgQZikNh4VZaAaFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51712951"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51712951"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:42:51 -0700
X-CSE-ConnectionGUID: kmbP3+7ITW24SVb/3eP2tg==
X-CSE-MsgGUID: vt9zuemUSEWLKUHtXI66qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80354579"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:42:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:42:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:42:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:42:50 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:42:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4SAeRU5PXCJCpn/13STe3hO4w8Y2MCEttATUFf7IyjbfMwtifbDwtewsWYHtGPvbAKMoLnw2bzzlE+zYEnWfF2trHliGrNzNLhmG7bPOKgH+yHBYE1fI4coQbn+UEegkMRZniFbdBH6NCw2CdWrp6oPbtwYdJvbhXKYIpQevl/NCJsKK1TkvfVKI2qVUyqDJlkWSpSnqtQ48HKZQ8zwX8TtRj0B8XaSJAb+qyMp1L9+vlgmU1DVuFiq3imhWtdMUifG0/hHwy2kA+9SzRxfMtzC/d2Z/BwGc+oh4SIKbP6Tf4ds7HabuN9UTzO31h6KISY+zB4WFCqUZgwN4x69cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1uENU8aVqh7leWXvZ/UDOI9Ez9xudD8yCRI+8rg35Vw=;
 b=sjqMeXSQfH1ZY9e6oC8JTNL3ltpxEhtksLCg7SUzlYsPpOaUi/t1YBI+9GoeeH4V2dQrBQVXL07npBmt/0BUrtYbiSojO3coli1nPTOUqrMC8FZa9jQDyLwUW4i1PcF1Ms3ztR3/lTUeG039ZbVogKdB7EFWZbPIVmt4uCTSftJJRAJdgk+6guUBSK1ZB2aJB7x5ERsrkwcTxKOEhOwCVgMydO/p8eHAJZI8RYlExiBD1f7fR+JLdHupLDGEQ/QEecCtBrgD/a+EmcYTQq2dlX/XO9cwzrF4NDv6VEYNUhq3BeG6kauRpTIjklk8zolcQxaNvwbrvJ5iRnmG7YjcuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:42:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:42:47 +0000
Date: Tue, 22 Oct 2024 13:42:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 14/15] drm/i915/vga: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Message-ID: <ZxfkE4_1r5HcFn1i@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <f311ea0801853bf4aaee6dea9ce66a22f28e1009.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f311ea0801853bf4aaee6dea9ce66a22f28e1009.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0282.namprd03.prod.outlook.com
 (2603:10b6:303:b5::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: f96b7a16-e4d9-4491-dfaf-08dcf2c0f0e2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uXa5KzW14sgIMV9xLDM2wfhGkZEuteh7F/+39C9RiZNGX8oCd5OyakGTNkqK?=
 =?us-ascii?Q?ZTIDdvHgp6O3uLwJ+McJv7zR3rNhI3b4hXB3O7yngWm/7JP07pmo2saJiT1U?=
 =?us-ascii?Q?s6us0+5k2jazWz8LrJ9IsQ08PeBg91uoWQU/FeCzLzpjv9VEYY+faZ0qyi0X?=
 =?us-ascii?Q?WyvWERHJoHer0+HA4V5Wum1+scevfBYycrTRRpPwzPz5dLoel9PvxFA8blu6?=
 =?us-ascii?Q?Tm6GD0jwcrh2nX481G9K6Gx4Sn4FSZEi6fnAp8Y/SQX3wCBX01V68AmxMpF0?=
 =?us-ascii?Q?1Lvbj7oqYzOsDiEHEOZaw2fxQki0rBAxrNk5M4vKhCGR7TsXZlCNv1o95DEj?=
 =?us-ascii?Q?7C7m/KbZE08YH4PQJfIKryOwNVC1D/UoSXFZkvLHFapBuHfWCkEmQlmU2V0X?=
 =?us-ascii?Q?rYtd8L1FYxD3HNQ26pn+lxTTyZhiS4pH3PQsXosAuB0Mo25Aer9PaN3pCuff?=
 =?us-ascii?Q?cG5yB7us7Z92SltTwyfqMqesVZKHkEWrtCu26XEreeOwAqUWrs39fwcI6Qis?=
 =?us-ascii?Q?e42CyxPb1tkowl6UteAOMd3q84EMuexmQyJc0APJ8BthuWpEk/kWLTUcdRHj?=
 =?us-ascii?Q?7T1IttUvSaRbcW805ZisF3ijbGuGFUmfQ53fME/bcCOZVWvgSgufON14Kvh8?=
 =?us-ascii?Q?RebPQo1OiXKXOt2qKA2OfDpgP0urPuq/7GNWFk/VdTUP9N9DYOq/9J3GLE9h?=
 =?us-ascii?Q?gXnaKpGFfNeGVHs+A3BtJUTtPGiy9bQ4GRh3pMDAwyXSokWnab8Ed6zDIVeM?=
 =?us-ascii?Q?cn6iyIL4ffgBvbykz1t69TymwicFPO61076Rrwtktuaf92g7wxnKMnaNiUOu?=
 =?us-ascii?Q?mDoGmRTtK5IyyM4Yx+5R840zhbZkCgNGNQNnXI0Jid41S17lWm6Xnzd4n5Q1?=
 =?us-ascii?Q?muvMjLRJ/yRfsfvMHDRguPNmtNtzUaQSlnQh94xdW3TuALwIaHChG2g4onAz?=
 =?us-ascii?Q?zehgx5IgEULGf+K0IuvHZtoi2vEralDO+2lz1WI4ixkrnQMSOU2F2hRrWK6i?=
 =?us-ascii?Q?omiBMKX5keNsMHq66+YLp4jvtTgMsgMT4uzCN617ftDWswNwa0wDBJw6GiKr?=
 =?us-ascii?Q?Gjzq2y8hjh4GFWDicFZj9fBdt8X1Q23cVkXDvYRz4IBO9r5o1FndO2wH8T7Z?=
 =?us-ascii?Q?QjcSJOt6VpgTfQrdsd59ZM56dKvTaCHBsjSNvOOaN3DEg6uZfgJAXxzJAuiZ?=
 =?us-ascii?Q?tYjWqNxl2vxgzUgKqqF+WOKI4Bq6oKf+PhqjD/bQp5q4Q+408ZKmjPZj1rMA?=
 =?us-ascii?Q?oKt4jYl3zRhe48VMKpwPSJzmW75KN0HGxAZjBIBJ2KN96qEz6XehdGiTMAsA?=
 =?us-ascii?Q?amUHqIMMzjK+yVaCuuQ/wy4q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7b4E+2UQZ2kn7opjY4K3r5IC7PKjozSiWjWFUMRdGmk56WvbWYV7nB3IME/a?=
 =?us-ascii?Q?M0lowGQMZqe6slNYghUFI5Dh1TsytB4IsX2RdSWF80UT4DlO9kk/JeNkwPNq?=
 =?us-ascii?Q?Li9O9UPkTRryPa+pydMkl7sMiRKqWeaXX2w3ZcfZApNfLVVfUQrbY+ONq9kv?=
 =?us-ascii?Q?XJDrVzSIDl2DzuHkt1y1hkcKkMsVhm7Iwjn1l0r4CqIrjAJJ9m9bKR6tVvEH?=
 =?us-ascii?Q?LyeCQdnuBsEBqocbbIlUMvI7KI6CfnzcSZ0zpeyYEndRl7Sbeu++ADK4SuWn?=
 =?us-ascii?Q?dCMWAxlGbXho3iIqzTAL5YH0ZUpm++cFzxXoyfHQVWgVUNIv0uzGLrlypP89?=
 =?us-ascii?Q?FlyuI+V39icrkvDmI7vPMqyROR11OJWlk3cYyw8sBJPO/O8u12gXHIpbDb+1?=
 =?us-ascii?Q?Lto2Xr/4Gs6QPewaMuWPQAwR9jP3/JjAreG1YnhvClpu01B9NhW6IGazgKgm?=
 =?us-ascii?Q?Ctyvn17XKeDL1BhnVyQIZbx0FSjlLm6F6Cj2/TI530BykrhBWYb7GzgbwHIo?=
 =?us-ascii?Q?yrY/Mp48cCOaZaYM9CJAHP/XvywO9NPxlQyunttNIcJMeYmv5KL9scVXfVhu?=
 =?us-ascii?Q?DLjtgqSx1Pzv2Pk/Xe3aS4F9X5g+onqlghKd+9gntB0W63BnsALmhvrwzweL?=
 =?us-ascii?Q?1grGYqr6TB3dtYBAlytcutD35mmhZ38RJwp6FHbLgelXthPkwK5eMC5x7VTD?=
 =?us-ascii?Q?dZ1WSQxgPvwXNNhMbaCZMlAKqmcsGqVQ7UhUkOlC3kQS7Gb+VpP4HLADc/Pz?=
 =?us-ascii?Q?e2iO5ANJWfO7GQ3l5hzO9owDlfMjhb07bfU+63jU9KqUlnRprmSLkAMH9INh?=
 =?us-ascii?Q?T9Vsy7Yf8pA+YWlNnuT489ycPYdS9RVtzZ+oGgTClwde1fNKI4Opr1novUFP?=
 =?us-ascii?Q?izzsdzuY3aou0WfPwKnC9bKJH0JMUyXPdKPNQpf4gqQrP6uiJ6CdUlobWGsf?=
 =?us-ascii?Q?KfMp485dJ/RbiHJlEP2TMQkvP77wrWNCcoUQ65xv+E54Et3jbQ4WoRwU1Auj?=
 =?us-ascii?Q?MCePRDklVb175QlsSTEj/n3DKqOORUzhperciU+h8WOMJdjwJYdeezil0dcR?=
 =?us-ascii?Q?P8Xad8KmlQgIsyaQt9/2jTtnR/Swj6ptHdsEbELCPMBw1oKNYv6MbUTD8TfA?=
 =?us-ascii?Q?aa/mdQmgUuIjK0uca8BrfKjYX554VJPEaF3qxzbORiysnR3MdajVyPOYbWN9?=
 =?us-ascii?Q?Qv5WfQh+pwSQ9eyIMcb9ziFsZswPTSILczNsg35yWdGKpwPDovYrY7pq36r0?=
 =?us-ascii?Q?pZujdisJEZp3wvVCeTRMppa6ypaiRJUMm0NVhiDAqY7xqVEtzAHlHGpUXwU4?=
 =?us-ascii?Q?PlFGeKksbKbnwLViMIbv3tGLliPMHBZ0OwmTzSUOnqwXrMkRhWcZxt2P6o0L?=
 =?us-ascii?Q?deB32SGn2xcslLAXdACwfQMZP4UK9IjoSxBC63eYnWxFVb2VH7JNQI7nGYoU?=
 =?us-ascii?Q?6XsPNpJNUG5t+zN2zVhDC5kXvifkh/x1NmYdjtru7OHlYT5OqgIJ0yHBaHCm?=
 =?us-ascii?Q?e6+pL/bnxqIXUffgPYxw40nBSN0bkMueHfFTa5Le29oRpo/qEGQrCHpD6NnP?=
 =?us-ascii?Q?CIm0F11JEc3Yotkx5PQU7BM46ON7C7qLXRPFQY5uHsIowqYdR9m5/Vco4/tT?=
 =?us-ascii?Q?Cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f96b7a16-e4d9-4491-dfaf-08dcf2c0f0e2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:42:47.0618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gm13PRVEwBprxCs4DBlHDBvWoXr6uPg5UzIuQNxlEf8gAJ4yJ0UPvZ4KpggGXTQ+KcxBPwCLef5H1IyPycH69w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

On Mon, Oct 21, 2024 at 04:54:15PM +0300, Jani Nikula wrote:
> Switch to using the new display->platform.<platform> members for
> platform identification in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index 2c76a0176a35..fd18dd07ae49 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -16,9 +16,7 @@
>  
>  static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +	if (display->platform.valleyview || display->platform.cherryview)
>  		return VLV_VGACNTRL;
>  	else if (DISPLAY_VER(display) >= 5)
>  		return CPU_VGACNTRL;
> -- 
> 2.39.5
> 
