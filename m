Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606E29BF412
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058FE10E749;
	Wed,  6 Nov 2024 17:12:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TBVkWkT0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5095910E744;
 Wed,  6 Nov 2024 17:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730913151; x=1762449151;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=u3Z6TWajShj9n7SV1KifVDHB9UQzp+b56ZXSPUWaXQs=;
 b=TBVkWkT0IQ+WQmVESEXXr8/s2UHFs80ScfF8pteN8ru8ezhXffkcFBKE
 auyDrWS20rbaZ/XwrHecaxgyymoKwHyQLDG/0OalF/bnRr0PRbxZffiXM
 pBEeIqlQ9mBxmXrQ26XFfA4OdkvaF9jPJXnna44SU4SBbuKsdVGgymFQj
 v9gHf0UzY1KI7fijrEEjSLjzAar6YI1RftLlNUuF7jTxObxT1B03LW2zS
 Crvx2qLQ4jtB+oPGvU5P8PapqCo3Xum/MCk8Bd1VFH07JpGum3ZSkXmXp
 uXQ38Q0AtzCuiK4eGowA6OAmYEkm2Tj8Efx1vF7rT6tRWmiWmBpbShe/B A==;
X-CSE-ConnectionGUID: 63OxsV9DT+W/ivtk/Up0PA==
X-CSE-MsgGUID: 4Ve5KtbMTDOK9c3W01v2JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41346103"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="41346103"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:12:30 -0800
X-CSE-ConnectionGUID: OY9zuq5VT0iqP0d/xGTyFg==
X-CSE-MsgGUID: 4bFkUtBiRjO4m/uK4g0/Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84566128"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:03:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:03:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:03:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:03:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UdIxi6+6hZAf9aJY8oDlFLIpEDyXmaNaVzhgSJxR1l/YPWNT84iAhebQgwxHcq5wLtOuuQlLORPdKUdU3g2CFlE3Sq8Lf+rQFg/nI+ByYBXkmyNIAJpK3RH5zZh+32/UAohMjniZCZuqjD0ciVSr+x6GOKxQdJNpw7PFz4IjTPOkhkAfuEtXBO3b5wqCfw3d2audLpXLbVQzKwgwK3VEejaT/J2yr5M6V1OkuEiAcgZjsSpjrrCJPc/RjwQ+lw2QSltKh2bEz0Nnf5gxjxcePQ6rmO1E4wTjmJChHRujGDQRWYxc+95zNAxQAnZCTho7QPHRoG10u85tdtd1pPH0kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TW5n0fpTlwU4oo2zOcKZxpHfV0ddjaxp+WCaYKxo03g=;
 b=H/xif4m7Btd2ljH8Jg2y4KgDy2JZTMM9yyWapeGHbC2TfFIikPap51OVIqE5Xm+A1nQdXMEEcWqAOMHG9EPQT26QU7yDeUGvp1BD2SnYigB6KtfT2Bm2FQdVhR0eIuYsLJ+3JBkUeXdEu8VFADhb31feTnoI4QO7C4rg1cfr0TZbeASEBmxmni5s99FlL0Cls8Nzr2CrygcwwoWiMUMs2aUJgeQ4tkgOEDc5YisZyld+0GnSHj+CktfGlwBuVzqkAuQ56wWjbylP5UdEkoc+RsZf10wTZS/D9xt48hhRgNnZn3WPfgIJHqMNV+gWfiFtKM2Cf6k4omrp5YVN+KIz9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6749.namprd11.prod.outlook.com (2603:10b6:806:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Wed, 6 Nov
 2024 17:03:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 17:03:49 +0000
Date: Wed, 6 Nov 2024 12:03:45 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 06/15] drm/i915/display: convert HAS_GMBUS_BURST_READ()
 to struct intel_display
Message-ID: <ZyuhccZO1Cj4WBpJ@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <556f3636528357cc9149f31b348dea80c4e0bda8.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <556f3636528357cc9149f31b348dea80c4e0bda8.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0257.namprd04.prod.outlook.com
 (2603:10b6:303:88::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c812302-0ad3-4c78-9000-08dcfe84fbb8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+x0maWCXpKKU9mmhTrNb3KX2JoF5JHwS4mBz9+mkOTa4KJL3l4WiW37INPl4?=
 =?us-ascii?Q?f8/0T/Ik6MNOXHC9R1Q5QOk0jB4z7zRldI9CM8W4s/cPFnAVIXpRbsBMV6GM?=
 =?us-ascii?Q?DMSip+Nnt+OUbVyXMbQQsyogR/KMSea3KHqyLn+yU+vzDVnZ2nKgLb+0sfWr?=
 =?us-ascii?Q?/Mm6RyMhML6jDvTZTQMzJArtH3kUdxL/921/xfvS31+JP6EcCQDQKnUh09cz?=
 =?us-ascii?Q?4h4YPef0xv/ND67xCG1pVBnYyyXk16F7i5ncepl8pBqZOT6SiczB627kCFSE?=
 =?us-ascii?Q?Z9pZ2B8WIQpRVf28pAGm62k6AzzO8eWGFI+DQJNyxCLJa/JJeJgY5JK6YYqR?=
 =?us-ascii?Q?X6m7zBW97IsDNr/ZmodJuTyIAQyk9NS28M+GBTyCXizSlxmB/ptfZz+1Dimk?=
 =?us-ascii?Q?N6CN9vTropmZdT9u8ohfVYirRzbQxEXW3jgbqvKGVowEnG5EPTh/eg8VbgYL?=
 =?us-ascii?Q?C/pzAVgZnBtg1zOVILgte/mD3ELGP6iw0gJkHNQlP9kHkCkffohN4ugm2//x?=
 =?us-ascii?Q?osp82pgYnjVf6VEEvPNd6Yavb86TR8KvVKMPj58ggL6jtuYbchOGvc7vr/g2?=
 =?us-ascii?Q?jlvOj2yNOT3mZtjH8+JQo6HZCPgZoZ0r0a0iBAM+wGYo8EUmbsOqlWjSfrJL?=
 =?us-ascii?Q?l1SQZYdX+3e1WBK+tR8wKQjRAzbkN0NwVPxll2dA/kXPI4GsU4eTQWf7Dptg?=
 =?us-ascii?Q?CZwuBaigZxW8knlp6MTfxQZOElPh7oe7zSdlLbvi7VxRjvbWqORixw8XR69/?=
 =?us-ascii?Q?N4/zlj0PiNuaZk9Ab/XL+iwMQXtATEJ8yIulY/ST1Nc4EzS2kaYXVkzqiwKC?=
 =?us-ascii?Q?/b6wi1W72Td8J4PmLQE/pSPLUrvMwkEtmnBPSWGdFOHzYWUDrs9rkWZPwbFV?=
 =?us-ascii?Q?TzjtG1Kpwa065xuOXg+qxXLs/SxPBt4oaNMdQEvp2WhuTi6fYzngy2lgFf9+?=
 =?us-ascii?Q?WVTwn2FgE0KpTa9/e0LweQNXYYtOP19VOf4nrUiqAcjNGxzDya1kxuKSR1Ee?=
 =?us-ascii?Q?cVPTvvRzclRpzX57f247zy8AQAk0eEMexDw2bKaMrtpmNA5ELmBirstoqviA?=
 =?us-ascii?Q?/G3RW9TpnSWjOCRqk8F4BvalPIfKCtAvpC3q3DC4uFQhOglEdGYjROH9ud9p?=
 =?us-ascii?Q?SVSB8D5cDVdba/1wT7slttLg5RoH7pcn2lxI7I1pTrPYcjt+SKu+zm10wtah?=
 =?us-ascii?Q?sP+T3vFmelQf7PjC7jyjpe28nc4Gl3/QeN/SWKc5fuONtPsEADV5huaIOCJZ?=
 =?us-ascii?Q?a5HAuaAaL/lqFjY9OWQvxgnOYy23oCDs9p11fFU7GhzwF7n974G5Y0lpzHwY?=
 =?us-ascii?Q?d8sfOxL7r1+IeIsQE6hdtZGQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g+aELRBhRz5NkAhXVifxew7hRo6Efp5nqXyxbAAzi3N+xYrX++IQDuhjGmh7?=
 =?us-ascii?Q?XdedXXCc2N1SrtM/DcPwUr8bShgEZMj9X7KOJ1IPrFMGyMhCZRsk6n6Z0Msa?=
 =?us-ascii?Q?JvxenBOVc32HI1Y6UTRNGd1oTzUGmEMMZTLlRhP2p4iBmm/QSqfs0CX771xB?=
 =?us-ascii?Q?cIwq2jwGb84YWnE+F1O2vpWG9ha8nBjUsPwvxoEUgwiEYYP0szDN8+iQ24cs?=
 =?us-ascii?Q?y7PL88QEs8oHT6h8FNhNctt7W29TS0+q6t+r/AH4KbNP6nLmShXudIEZaGmG?=
 =?us-ascii?Q?6DJXLCzql4z7K/u6QTWaE9qFANaimWSZsSFO+aZwNDv0yXUVf0KgBe2eXXUu?=
 =?us-ascii?Q?LKdVp2dZtkcAEEtMpQmWvHQ8Me3EScThFWf8qIO/PPLedMzq1TW0p9SBhTNx?=
 =?us-ascii?Q?lXnumqjnHOvUJktV1TMRLQqed7SbUU4E5OjJRYVeXjUnWtD0W8kFGfEDg0MR?=
 =?us-ascii?Q?UvaSdO38kpmAumxZcKQaA1Tjo810n/yIZx6LgXTkOsnNgbceqEfVN7xcocb5?=
 =?us-ascii?Q?p0ZmVcFjJhSryJWcB9LkIwzY19yw2Tf2qPqbvuCy8VoPCh6wI3TLylSrtXPs?=
 =?us-ascii?Q?Mxvf/JSULB26k79XD8k606NaXYIMfA9EtDjq/ib5WtD+eE7JXVuOHBA5Tu+S?=
 =?us-ascii?Q?sD0UULQKGz9aNm2xF9+DfiDCd+0oD9ZCFrnFp6AyuXqyWY1KaelbqqgTDGdS?=
 =?us-ascii?Q?g5v+GIZhFmcwOdw2pbe9ewLzO9PY2Pys1PUY9WnW0Vn20aYnNP1rkITJix99?=
 =?us-ascii?Q?5iadyNQmWOMjt+vPY4nncICKEEx1TRlLl+4Jmy3kS8Kg6rXLmkpe/x9YrIbV?=
 =?us-ascii?Q?k0TOY8D6xEon+08YZSDonsBI1peBkW5POi0lt8agWHNa3988AcWX0RyAsfjV?=
 =?us-ascii?Q?Mu5U9sz3a2euz3Uu8QWQ+QqKrgQEZ/WmvD+Wz87I0qpzYwQa/nzmcOQtrxuo?=
 =?us-ascii?Q?7X3lgyg6dlXTEAR95799YaiCQ7NBbcTC2YD3/05gxKjCnbYkm7appVqbpfxZ?=
 =?us-ascii?Q?na69/FqQRxS/6sms3rt84PA/fw8yJ/GehAz/TZDqDC89ik08bGro+M7l+QVS?=
 =?us-ascii?Q?4GrPMyr67aTp7GZvNQWNCa/mwjSENsFV0Yuw0lolhocbxGUB1w7CE+2JVZja?=
 =?us-ascii?Q?cmcwfRYxRgzrMXvktkyn0AJDa3Whqw00O34RottuLhYC4yckuNM1bmhvd/Op?=
 =?us-ascii?Q?G8UgjdZ/6go0fLkR7YX1FUaTv6wr+StckbEetqu9031a/YFj+XG7X/eQFjfV?=
 =?us-ascii?Q?ZWVOWC0b+ZHiyu4jKdz0dJojhy+qayjJ/75hwsYHmYwGw5dwwxSPGKUDMYjH?=
 =?us-ascii?Q?98yX2guBpxSLJTN5uenO+++lSHCC5vAO22T/cIpsNO1LFGaD3bA3mepk0THv?=
 =?us-ascii?Q?5VmkTqqBgTHDhOmoRb5qhD3OT7y94yZGinJiV7KYMh1Bu0ffoRzS41FkJlV+?=
 =?us-ascii?Q?hq8SPelKpLnxDeEK/tIuw/jgLEJCrIt6X10VVmZ9dwjkNm57M2Jb+SV22Osl?=
 =?us-ascii?Q?IgcQQSWulXKoAPBex96UiBW56HH+fonCaycGIZpiMg/ZYG2hO8C/AaGl067S?=
 =?us-ascii?Q?Voj5VRJbiye/l1Mqrgi26o7Dk5c7FE6XLrOhF9IIO31PEh+B821DTP48n5Qa?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c812302-0ad3-4c78-9000-08dcfe84fbb8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:03:49.3995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uN+Kl0bADmgbpIZCLSUsirn4V4TumBbX2DlCrQ1raFRGlyZRUmUPqAb1xby9xbcJKVBWWdMXV7Ql1Yzs9yqwng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6749
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

On Mon, Nov 04, 2024 at 07:19:20PM +0200, Jani Nikula wrote:
> Convert HAS_GMBUS_BURST_READ() to struct intel_display. Do minimal
> drive-by conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c          | 3 +--
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index c861a61839b8..6279c6c6e831 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -160,7 +160,7 @@ struct intel_display_platforms {
>  #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
>  #define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
>  #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
> -#define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))
> +#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
>  #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
>  #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>  #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index e3d938c7f83e..807cf606e7a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -496,14 +496,13 @@ static int
>  gmbus_xfer_read(struct intel_display *display, struct i2c_msg *msg,
>  		u32 gmbus0_reg, u32 gmbus1_index)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u8 *buf = msg->buf;
>  	unsigned int rx_size = msg->len;
>  	unsigned int len;
>  	int ret;
>  
>  	do {
> -		if (HAS_GMBUS_BURST_READ(i915))
> +		if (HAS_GMBUS_BURST_READ(display))
>  			len = min(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
>  		else
>  			len = min(rx_size, gmbus_max_xfer_size(display));
> -- 
> 2.39.5
> 
