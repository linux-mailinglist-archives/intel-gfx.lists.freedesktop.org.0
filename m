Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7A68787B7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 19:41:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E9C10EA44;
	Mon, 11 Mar 2024 18:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8xzzLfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849A510EA44;
 Mon, 11 Mar 2024 18:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710182492; x=1741718492;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pCCyJ20uTpQAH4M5hq48Nbi5LcyQ9KtQ9/Ga+Nrakpo=;
 b=B8xzzLfSNeuAXuTXlrjooDdeNSwu/jt0+qTp+OGoUYkHNBPtLUCYLoqU
 0sUPSKRjcrIylYVXbGzSonFCbpTzyvzMALYfqdbz7FJh2cFNPZBJ5nEfB
 4d+lhDhFJvsMQPFJLDSixYDY+qEWp43KQf/oGDq7/TZ0L6rU0iimkzR5x
 CY6wPkAZ17xpL3udYgARLuR/cHu+dpAZgNz54gkxMrGv7ULi5JBFwGhSW
 IYRjXfAYfeHTX+nwcI6+9qfJWIA+L/zbrlWP4VFTnqz0ERT8yGxEApVHE
 HS77QzIt+zfjkkitOELxoj84umaRFq/zdfDYNg8YlKQXQSnbi/MOEgp65 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8622298"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8622298"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 11:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11687152"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 11:41:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 11:41:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 11:41:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 11:41:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 11:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6sgLjlXeag1JYo9qyrFn39cMs2WtxcuSYM/ERFaKlCZSiDN3XGJt9r1EZWKojrvFl5TA6h8vgl3oWTQqfp/7CSUQ8cyFiIenYEnPUok7Fzamcs6QT46xhkn6teDo0roJM7JAB8OnlSxlSBTDEHcJQhlp7s/4EBow1NKDOh3y544TFeVSR+3qNsfbZZIdiXvh6SGgHzFrhzKfM8lX+aWBkVT+4i/wCCWKbYZcmarEtQk6/sxgf631T8fC0Q2eOO+kB3tmX3AldPI5jbFYfWWXX8G6Rt+C6Y48xDqunVgkpUize3GyOL+nVQzGPc3UBGLQGokJZHuqTJdsTmhhikUQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uelJ9D6UbJIBNQr8oAUUGFBSkvpT7uVY1C6OCdFiufo=;
 b=V9MS38Mlbq4T7QBy2XvbE9zCeOCKPRzgJCRTOQu90q++xv/hZwoTKpm9zFJA+23U5xTqm0jHLjjQ88PqFA7t65SlTcyEABFx6tpkeiz9EOgR5FPksjVX6w6nXfJzn5XJDDYvp4gwJVyzqVAzDh6dHniLb5XzVbS5eYM8wpZNN9+SXMrZHPvx4L2X85oDKhVjg0K7e+FeNudqN+l5Eyu3S3PKlfa13K3Z3bz8pnkwFQA3DGP65LHGJCHAwKIMEDsRzLHQlUcTCs1gIcnTLFxF+k2YZWhlRIvF+RkfS4gEQYknfxQFPbZuiLJN1cn1WhbPSAyPcTFNvvC+BGFwqa0ScA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN6PR11MB8218.namprd11.prod.outlook.com (2603:10b6:208:47c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 18:41:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 18:41:28 +0000
Date: Mon, 11 Mar 2024 14:41:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: Guenter Roeck <linux@roeck-us.net>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Ashutosh Dixit <ashutosh.dixit@intel.com>, "Anshuman
 Gupta" <anshuman.gupta@intel.com>, Badal Nilawar <badal.nilawar@intel.com>,
 Dale B Stimson <dale.b.stimson@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH] drm/i915/hwmon: Fix locking inversion in sysfs getter
Message-ID: <Ze9QU6ONoYEgnMkl@intel.com>
References: <20240311080717.421152-2-janusz.krzysztofik@linux.intel.com>
 <Ze84MKyzFzTRq_Fm@intel.com>
 <cb72e724-232f-4134-befd-f3c7144e1105@roeck-us.net>
 <4317935.24cOQSKZR9@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4317935.24cOQSKZR9@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: BYAPR02CA0004.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN6PR11MB8218:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fcaa0e3-d2f6-461b-e2d0-08dc41fadcde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FBHRT8jYtNqnKATxxijkMAL8f6s34bym7hlE+W747wPmZTFZgyi/mA+7asbTaXiWORKjbt32N4yJFvQ1GrnrBQlB1RMMaA5h6QnY5Uz9uJiI4nRtFU9Qf1zliRhUgTSlQU4tgnnjTW07s8xem8fYpj9fxlK700pcaxGJ53Sl2l5Lj27HkhC+SyWBCCntNWokjK+4IYvNaAmnaj7GmAanIdlEk+J548WoLb6iffEpcNYJyIaOzH8mrYZvd1C5ZNR7TWMJOzBVGv+tczDXKsz1s/vqxt0OVScS6gF7q/xCyfy/iocOIWRcpNB0TGhSeFznk3zfH6hn+7LjKt0OLsl+avMMz545rixKT8s27/ibRftybmm8uMH5eH6iK/ApaijA0Lt4APUoSOiqb+2mTuNHi/nG8WDV7PudhvSBOWXDdBK3SO4SSjRC4BDtl7NmkCqoM1E5NDM6mDcI1JHH6ja/wUgqmHOVTWwhRKar55LxwZFU19RbRoPvpWEVx74Z9Hnhremi0f0InImdmPOOpgbIQtgZo4vmj/r17txH5cEp+TyjvkPZD3ze+ysaNsMAOI1qODVi64bFJ37W89ZiFAfMTt1IUyR8xDV1OTYbFGCEzNz9xmsiUcqtUaqXfPHif/8c2KeAQHZos3mR9YMrGvxLMgcr/zO3WguHBV2lboPDUwY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?llXPseHKAOQUq96+ko0MVPeRz0VTTlX8JZMdT548dGwvdQx8KBwls9H3hJ7p?=
 =?us-ascii?Q?srHk5j8F8j0iHCYhtXlnAkLZ8Kw9/EIvPhrTAq3GhS73xNp0HI3b1o3Z06mg?=
 =?us-ascii?Q?BZ8/R40W5ajgvYjCc+4/7jt+YQ4Yrz8hJrU/l/zD26B6T8VhTiwY7GEf/nEn?=
 =?us-ascii?Q?/UpDrJs8SCS1+1hRyCUvyMMpTeNbXv8gbGtWT8ojcuQ1RFlAFERpmBjKNGVy?=
 =?us-ascii?Q?g8sFWUu6OenNGEen6cyAPlwtSRQxKHOttfakvvyR4gokIz/B1PqIlguxNXFr?=
 =?us-ascii?Q?uRe+FTxYAWFhr7hTsYKTe/sIxvdDteu98+GMnm8E1RgBvfZI6IqdXct8rVjI?=
 =?us-ascii?Q?iA1mKbgS3r3TvjSWtizQqylsageJAP6sGpLGlGJ5tgBKEmA7z7HI1+WhO4L2?=
 =?us-ascii?Q?2rNc2oLFsz5N6SmjmUL7D8DlX56dOoIaA/YvTH8aNNjv3TMk0Kd1mAKNwFfD?=
 =?us-ascii?Q?47eXm7yLJMGsuT8l0u5pb8H4Rup4dsW9WliRA45hgoOicMjDi3msjFOgdDRr?=
 =?us-ascii?Q?tVd1IABwW7zcN5tgzszU8GHwEX4RCiqMT6aglSUOqt26wF204gqwDK6ZDB5N?=
 =?us-ascii?Q?43mitd0iAItR5AUp5HnQx8g3r4ys5zkQkwwX9s4w2IJEEFpHk780lehOXIE8?=
 =?us-ascii?Q?ISSXu15SDQ0Lr+xXwtU27ckBCfg2H5Ut0QEIdoZ9SktBN1d5As3HfayvqsZY?=
 =?us-ascii?Q?GViLInJpp0SC7H0I2LMBQJj1TYait8Qr7Qwi1yEiFnj0GKbz9TVhHjKELlz7?=
 =?us-ascii?Q?F/f0BeJOWtesHdzfjUhq17mu/FeL4fgMSUEgumM4dJbS42nRMagQRAGqZaUh?=
 =?us-ascii?Q?+2Avp84VvWY3C/wf+E6ZrQKyjpxoDNqi8qcXPmRZmkt0aTScDAGSiVY/LgFx?=
 =?us-ascii?Q?nPjixYmyLZWXFMuNgISTTAtzHJaxUH1eoQxwB63IfgIjouk1Qo/iwXH4ZEHE?=
 =?us-ascii?Q?nK4ALMg74cnV5Nhp+JNa3/H3S9fqApt1QamyH9l4AfQsSHLiv3+0nOvTN+OG?=
 =?us-ascii?Q?Em+8RW6wXQG2PNiTRcSKUja63P/z/hlCefzHH6U+AMxxrXES62S6kDZNFunW?=
 =?us-ascii?Q?yww1pgSahbesLkdnIIU37XTJuBwQebKyISZpVyRG5Jcm0yWFRgXpgk0oQ2ne?=
 =?us-ascii?Q?StK5WLfUpONslxTlJec/FNJqfBQByUmK4hQfZlVllcgchL/Lh2ef8WT+WIcw?=
 =?us-ascii?Q?MaP9sFN3OuW0YXYoa4U01EzCUNLYHfbYEWtHFGu2O3jLAcSdEc+VHMrCzCpy?=
 =?us-ascii?Q?c+fFOlDY47TLyq20QBDF09SiZ49OgfXyNSHMPqBsvsl6poaWQSaRVkc2WdPk?=
 =?us-ascii?Q?6ih2oMmUB6w+beAiXhLZiSoUiCilKXIeIBKg5Pn6dj3brUnMXl4yJbssF0Lq?=
 =?us-ascii?Q?uZ8l8JbGI2d/cOE0ZDW53SdMEIIZ1z8sLA2NuqBNENQxuPxB1zBAz2twSkOO?=
 =?us-ascii?Q?+vZS6eaYABn39piQ1Dj7oU1cR0xICxJWTcuMApdhn/NjejD6ZVuGn09OjE0c?=
 =?us-ascii?Q?y4JTsdtvWTsKcxoQkrwvE3VPAAJb+3nIxO6Kmfezi+On6PJ06V98u9zrZaGW?=
 =?us-ascii?Q?Dp0Jgc2BntXUemUA6jCtoeSU5OfFf+sZwDYu07RE//gG/tjXwwhYCnocRMhB?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fcaa0e3-d2f6-461b-e2d0-08dc41fadcde
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 18:41:28.5295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ak3fNXroZ5k+FtXqU65qzN7qPYS+X2YsYFuNfq42Mh9FiN/z6sHAXppVJ0gQbu2u9c8o2an0//oVTlBJZElpow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8218
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

On Mon, Mar 11, 2024 at 07:14:09PM +0100, Janusz Krzysztofik wrote:
> On Monday, 11 March 2024 18:35:43 CET Guenter Roeck wrote:
> > On 3/11/24 09:58, Rodrigo Vivi wrote:
> > > On Mon, Mar 11, 2024 at 09:06:46AM +0100, Janusz Krzysztofik wrote:
> > >> In i915 hwmon sysfs getter path we now take a hwmon_lock, then acquire an
> > >> rpm wakeref.  That results in lock inversion:
> > >>
> > >> <4> [197.079335] ======================================================
> > >> <4> [197.085473] WARNING: possible circular locking dependency detected
> > >> <4> [197.091611] 6.8.0-rc7-Patchwork_129026v7-gc4dc92fb1152+ #1 Not tainted
> > >> <4> [197.098096] ------------------------------------------------------
> > >> <4> [197.104231] prometheus-node/839 is trying to acquire lock:
> > >> <4> [197.109680] ffffffff82764d80 (fs_reclaim){+.+.}-{0:0}, at: __kmalloc+0x9a/0x350
> > >> <4> [197.116939]
> > >> but task is already holding lock:
> > >> <4> [197.122730] ffff88811b772a40 (&hwmon->hwmon_lock){+.+.}-{3:3}, at: hwm_energy+0x4b/0x100 [i915]
> > >> <4> [197.131543]
> > >> which lock already depends on the new lock.
> > >> ...
> > >> <4> [197.507922] Chain exists of:
> > >>    fs_reclaim --> &gt->reset.mutex --> &hwmon->hwmon_lock
> > >> <4> [197.518528]  Possible unsafe locking scenario:
> > >> <4> [197.524411]        CPU0                    CPU1
> > >> <4> [197.528916]        ----                    ----
> > >> <4> [197.533418]   lock(&hwmon->hwmon_lock);
> > >> <4> [197.537237]                                lock(&gt->reset.mutex);
> > >> <4> [197.543376]                                lock(&hwmon->hwmon_lock);
> > >> <4> [197.549682]   lock(fs_reclaim);
> > >> ...
> > >> <4> [197.632548] Call Trace:
> > >> <4> [197.634990]  <TASK>
> > >> <4> [197.637088]  dump_stack_lvl+0x64/0xb0
> > >> <4> [197.640738]  check_noncircular+0x15e/0x180
> > >> <4> [197.652968]  check_prev_add+0xe9/0xce0
> > >> <4> [197.656705]  __lock_acquire+0x179f/0x2300
> > >> <4> [197.660694]  lock_acquire+0xd8/0x2d0
> > >> <4> [197.673009]  fs_reclaim_acquire+0xa1/0xd0
> > >> <4> [197.680478]  __kmalloc+0x9a/0x350
> > >> <4> [197.689063]  acpi_ns_internalize_name.part.0+0x4a/0xb0
> > >> <4> [197.694170]  acpi_ns_get_node_unlocked+0x60/0xf0
> > >> <4> [197.720608]  acpi_ns_get_node+0x3b/0x60
> > >> <4> [197.724428]  acpi_get_handle+0x57/0xb0
> > >> <4> [197.728164]  acpi_has_method+0x20/0x50
> > >> <4> [197.731896]  acpi_pci_set_power_state+0x43/0x120
> > >> <4> [197.736485]  pci_power_up+0x24/0x1c0
> > >> <4> [197.740047]  pci_pm_default_resume_early+0x9/0x30
> > >> <4> [197.744725]  pci_pm_runtime_resume+0x2d/0x90
> > >> <4> [197.753911]  __rpm_callback+0x3c/0x110
> > >> <4> [197.762586]  rpm_callback+0x58/0x70
> > >> <4> [197.766064]  rpm_resume+0x51e/0x730
> > >> <4> [197.769542]  rpm_resume+0x267/0x730
> > >> <4> [197.773020]  rpm_resume+0x267/0x730
> > >> <4> [197.776498]  rpm_resume+0x267/0x730
> > >> <4> [197.779974]  __pm_runtime_resume+0x49/0x90
> > >> <4> [197.784055]  __intel_runtime_pm_get+0x19/0xa0 [i915]
> > >> <4> [197.789070]  hwm_energy+0x55/0x100 [i915]
> > >> <4> [197.793183]  hwm_read+0x9a/0x310 [i915]
> > >> <4> [197.797124]  hwmon_attr_show+0x36/0x120
> > >> <4> [197.800946]  dev_attr_show+0x15/0x60
> > >> <4> [197.804509]  sysfs_kf_seq_show+0xb5/0x100
> > >>
> > >> However, the lock is only intended to protect either a hwmon overflow
> > >> counter or rmw hardware operations.  There is no need to hold the lock,
> > >> only the wakeref, while reading from hardware.
> > >>
> > >> Acquire the lock after hardware read under rpm wakeref.
> > >>
> > >> Fixes: c41b8bdcc297 ("drm/i915/hwmon: Show device level energy usage")
> > >> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > >> Cc: <stable@vger.kernel.org> # v6.2+
> > >> ---
> > >>   drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
> > >>   1 file changed, 2 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > >> index 8c3f443c8347e..faf7670de6e06 100644
> > >> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > >> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > >> @@ -136,11 +136,11 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
> > >>   	else
> > >>   		rgaddr = hwmon->rg.energy_status_all;
> > >>   
> > >> -	mutex_lock(&hwmon->hwmon_lock);
> > >> -
> > >>   	with_intel_runtime_pm(uncore->rpm, wakeref)
> > >>   		reg_val = intel_uncore_read(uncore, rgaddr);
> > >>   
> > >> +	mutex_lock(&hwmon->hwmon_lock);
> > >> +
> > > 
> > > This is not enough.
> > > check hwm_locked_with_pm_intel_uncore_rmw()
> > > 
> > > It looks like we need to rethink this lock entirely here.
> > > 
> > 
> > I would have assumed that the lock was supposed to ensure that
> > reading the register value and the subsequent update of accum_energy
> > and reg_val_prev was synchronized. This is no longer the case
> > after this patch has been applied. Given that, I would agree that
> > it would make sense to define what the lock is supposed to protect
> > before changing its scope.
> 
> Right.  In that case, I propose to take the wakeref before the lock, and keep 
> it while the lock is held around the calculations.  Would that be acceptable 
> as a quick fix?  If yes then I can take the same approach to also fix other 
> places in i915_hwmon.c for now where similar lock inversion can happen, as 
> Rodrigo pointed out.  Without that, we are stuck with another series that 
> cleans up excessive use of rpm wakerefs by other users, since those wakerefs 
> evidently help with the issue in hwmon by hiding it, even if not related, and 
> dropping them will expose it.

That would work. It is what we have on drivers/gpu/drm/xe/xe_hwmon.c already.

Please convert every case and ensure that we are using pm_runtime_get on every
path. Likely same places already in xe_hwmon.c

> 
> Thanks,
> Janusz
> 
> > 
> > Guenter
> > 
> > 
> 
> 
> 
> 
