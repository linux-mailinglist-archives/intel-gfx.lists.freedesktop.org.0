Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF62FB0EE96
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 11:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC25C10E12D;
	Wed, 23 Jul 2025 09:38:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lIX+UbuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4DC010E12D;
 Wed, 23 Jul 2025 09:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753263509; x=1784799509;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=jN9sFGJOXp08g+vjV6zy0RBy9yhMFxXzJfTw9+DSF44=;
 b=lIX+UbuOHm4/VdBSxxbzyzi9APzzuA6qDQL9GcFOqvK+G365uk7fGVl3
 ycQOOZbrEAamDD9wyJTtZ95y+33X3DJkGZ3dOV414omCDffZCPsbsmDQ6
 5y/kT5Ym/gcR6I21ta0sVJgqpKQ+kMF9AFNvApVRCSHKexyis3rmlJ0jS
 ReurYbJlXGJvYRI+7SnPYO+pQP1MIaZdXe7CKePs5fSgdbzuu3vw38KsB
 LlrocSEmyNuk3ojnA2Md5PbN+jSCJxJD5Y3pE8z2AgsAfU+6EwF0etnuO
 wyLBHLVRgHgX1aCkMpzgrtSTZ36sNecr4JC0TXKvllEZzo1bHOzNx0PeH g==;
X-CSE-ConnectionGUID: 40h4Xv0uQ+Ob5BzebLqg2w==
X-CSE-MsgGUID: zZGIEQK6SQqvuN0ELfpctA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="73114663"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="73114663"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 02:38:20 -0700
X-CSE-ConnectionGUID: 6EvoAwpXTC2eEDNWHjfEog==
X-CSE-MsgGUID: 6IE5pIj2T42yuw02E+xVUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163634311"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 02:38:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 02:38:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 02:38:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 02:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s95+tYwdtV6YoDc5rXDYrnXabrT8800pIVCsA+TY30FbclsGyAL4iOreot0JzxWBbKLkZtl3l1i9MT0icy62zCA6ak10hgf64tqmO8L2e/F4BkIl1jgLYE4RCHamOZZOKvWgQ7Jy67/zLJ7fUbrPEaCRscFYbgQdh0iCu7TsCTFMGF878Aziko5w4wwzXIE5kXryyN/glepZiab3p7QE3K8oeJF6XDyii07gsCXs22SlisbStqiXAbPWa+bwvVSni+xH1RB8M3o660dAr9YhVuPay6OFbvvGo3Irs7csg9V1I3TjkXCc4EszTXso5k6AErHLPYj+9uvpL7hWiNJ4sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2lf772OJNZCThAXXhmfzpevdJu0zj07r3PJ9GrTW6Qs=;
 b=NwqNrUZgArHVBp0VgYaAT0c7aEAYeUduVa6sity58+cGwyhI/xMWc722K+2F81KBJINqEn3SbBT6OJdTTs5lHO3vVe6lTHNXdiSzlJCuq6/keIHqB+V1JYLDmPnhXJyZYpOPPvOj9ozVDWujfhJHJMjWqfBkVZT/drdsU3gfDekifmrgJmRGS0l+r6Jg91BK8IMrQQ9RkwOYekyNZxLRWVE4BOcaUKtV3PawEhXoIv1RS4hUUyPPcBbYCAcoiZsdHL1J4YDFoEEeuTRwHDSHuSFJIVihWHxhSNdgRLC5iicPAnGpCqEBqiH6lWgZm5zm9cT3sfr+MVbBiG1uCPtzng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7007.namprd11.prod.outlook.com (2603:10b6:303:22c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Wed, 23 Jul
 2025 09:38:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Wed, 23 Jul 2025
 09:38:17 +0000
Date: Wed, 23 Jul 2025 12:38:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aICtgAa54ESMZ2ii@ideak-desk>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
X-ClientProxiedBy: DUZPR01CA0034.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7007:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ea0c1ea-3689-4e9a-6e22-08ddc9cca745
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?w9XxsiNyVXOuH+wmwzWlLSaoUUusGFtkj93egueFT3vb7cB9qsGNcTvkZtsm?=
 =?us-ascii?Q?eTqcZpKaWXfuIaWz7LgXr6W0VeZ45biotpSVKcE8lRfa84GEENv9CygyGiJZ?=
 =?us-ascii?Q?Q9BQW4yX9b8KH1KhqoQMaC3jyAZk158V2WVxGyP0RN+Ov1bULLYKyOqy1eGG?=
 =?us-ascii?Q?nBE8tTF3kI9IfuEkmLuLANr3aGPZyGg6Wma8vw7BzpFi5zE92nJ+Z0HAojSN?=
 =?us-ascii?Q?ynoJl2MMEffFrwxzTD8nQWC6MHL0a7sRvr6Pjy4SPevvnuAbLvuFMmtihpV5?=
 =?us-ascii?Q?XmwXWdXHTG7QajaOEmpKUkH9YAp7QMYXeqV1H8Lr6RYQU2Pn9uGJv8mGv/4C?=
 =?us-ascii?Q?gbpyqc1y2+uz7xXYiEzE/pzPyH24oMbdoH2iZcW56ZHL1yBX47f7rkr6zdHE?=
 =?us-ascii?Q?kBzX80F/trxkPfig6I9ZKgqWG/cc6PqVMsKv29JeIEn7peXCofpdsnzBNe91?=
 =?us-ascii?Q?4us/ZV+rxAer6JkRZqo+HT/N+lKGRe8rjTakBQRBLPZ4k/jv6OeU8YrE3Z5i?=
 =?us-ascii?Q?0c/iBA6RmrjYAiE5MwMhakdNqELY8DmwvhMcP5IbKaNNT6TSL5Apl90pQ+5p?=
 =?us-ascii?Q?Mr7yEFWrtp6lndcGWsEIhqaN6K0lonSO0HGN/ccRdKXD7OSLWAoVXfS/+8Oj?=
 =?us-ascii?Q?YPcILRsDy+KQScu9fSMw3V/A+C3fXRCUz+B9/7MiIsLLxcCAFdFczwJL3r1I?=
 =?us-ascii?Q?okUNnJWvczFaWZEAsxA1KF1O6YVKJMS464fI77aBd3ZQNCiG59j8rexOTABY?=
 =?us-ascii?Q?5oiwkja4g+Oy7AAxWRhINzFVCExYqpIleIazPqmkoy/lZ8UA/ZthYZ7joLcV?=
 =?us-ascii?Q?qeL6R6G+7/T6ZZ348bt2uuoido831XR5g3W4dovoam1FrwCJ0fsEGA24Eiib?=
 =?us-ascii?Q?Bk2W3o3BiPzY1pyQmU5NWLuU+uwKx4x5wumzTVyKC5kecXEmHxdGjvqpmlC1?=
 =?us-ascii?Q?Z23PTnHoqKCkJQwdj77lO2MVtC7Mn48BF0ZXv1Q1aOu0kQAs+E47pHBAp8jZ?=
 =?us-ascii?Q?RDZcT5VCsP+l8OWVuKBAo5xAmuZlbgbA2HJV9abr/PfHY3TDw+HdTdJNu6tv?=
 =?us-ascii?Q?vxveJn3OJcdIF2fHGDgWQYOFMOWN2R2wrLQtmwAluVfoNmWB0UPhjIX9xNTS?=
 =?us-ascii?Q?4GObh7PtlRfGJjJVfx1MA03HrmZOC6HO7mKiRgGTqg0Il9cRazDv64DsgVpR?=
 =?us-ascii?Q?icc5nxluaMPLRdf6Hk+f+90PDRwvaarLXMG6pfm8mFOEqQgIXAZDNwrU+eny?=
 =?us-ascii?Q?k4/yZiWGF0+N1OdQ343hbxqK2FHQhjwssKI3108xVkkUff8QrQIUsVuYZn19?=
 =?us-ascii?Q?AY3RFnehhgBwNzZT0n3/DGw/iIuAMvx8196iBhsW86qjEIf7OvPyzfNgrS/A?=
 =?us-ascii?Q?9OTdYqk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RvvWgRD77t3zsygqi429TEh0Sqx1AlKDXWshz4vFyRoE7gbryJ3WWO4rhlcN?=
 =?us-ascii?Q?wHleWpxptDNkXxamiBasrKsGLAAKZwBqgLAPb11gMtBkimumDAjKOm9hw10g?=
 =?us-ascii?Q?yR9EgXGgIW+QDKmaUZGf3Wlr+Kt3BwxYQsMxv3ZgHF1ucInC3HHlsozdesSR?=
 =?us-ascii?Q?9bsmy+aZ6vKp8Brbl4wcPPrYoCs3RC/I6Sya7ZapuCLL5sLr9g4zHneYBdFU?=
 =?us-ascii?Q?vPlz6ay5egDOg6khY4MAawG6tLULZGoHpQyz7TyRdPP3deTBIiLk5kZzX+W7?=
 =?us-ascii?Q?WGKNoNHACNiZzLDSf2857Rx5CF4V0Gm8c2u/MNvoY/VAELPuA0G5jqHWvlBK?=
 =?us-ascii?Q?H0+FbPHHmWCPuzjnWymyly60hOIgouL1aHuW84dYmw5pssIKZ86FxolZmIrD?=
 =?us-ascii?Q?W2Udvl+EB/Ktk2C8m9X1JXvzSzmIvjrT2+m+I/eoaGKWgCLk2LaoIHx9MNmF?=
 =?us-ascii?Q?XDU74Ro2C6Rd6yEV7XwlmnpY2GG8nxaNMuDqP6lAjjFDc2g3liWAW2VVuLxa?=
 =?us-ascii?Q?vcrqm5dEMwGwDCwlR+Fwz1nsHAo5C1Qi8bnOfB29Igon1MtyYETSUL7yqirE?=
 =?us-ascii?Q?lM9ijytNx2sPnkbs/YG97nXmgZdOhRX9RN2AB0QRWlELfGQ97vum7P58KeGX?=
 =?us-ascii?Q?7opNrncAZPW1+BAVPgqR8Hgb5IPdHUN/l3RMxdiqYwLcTb1W00s6JO0RFhqL?=
 =?us-ascii?Q?cFWCwqf41fjLLOw5jx5vKIhMlW3+gbbvwBb/8B7blrYeaClSUQd1a1OoFJQN?=
 =?us-ascii?Q?KV7NSUMiBd7hpA3zoqq3QzLdpXJF3GH2mEib9v9mUe764DrFC1pQ199YLdRl?=
 =?us-ascii?Q?ENlt1bI3K5d4s/MJu+9VSnOFS67sP/dCQSGdfrVEPhgeMgSuuBIAS7sPM8Ly?=
 =?us-ascii?Q?rup8jVrQIwVNq5xcOkQcWL/Xp4wEgWjq5kQ481KIABDCS7LUCEm9fAQFgl1T?=
 =?us-ascii?Q?nes9wPhvJUWdCRdKTRFKwZVKuAEccbFfXDLbGzm43y1nDiLmVNoUUgvbCyZ6?=
 =?us-ascii?Q?NtXTvRq3qvL6BvnD7+AzUZS0q7ANU2j5IEkWM/d+l/LDTpv1VKWWTE6+tLtV?=
 =?us-ascii?Q?IfXl6rOe8Afoy/vdLCOvouGf3x9WEr1vyok94vN1Y+4yfKn4GT1qcW/dGmWa?=
 =?us-ascii?Q?Pez+82uAP9ZGPRSL5Fzi1cdQioPTzexIPTIlvxeHnP4SH3n8QRgXjzu3TU/E?=
 =?us-ascii?Q?yTiOsTjx72eiQpmO3jyYTFJOh3IKD23hR/+tjXo7zWZiIWZrEH6ttdpvvO0c?=
 =?us-ascii?Q?bdsmX/A9a8sbiOiflIzKShKNusvQnwxw+WYgTDQBTYvx0NS78VwhsbfEymub?=
 =?us-ascii?Q?KnmvxaZJ2SBDbsS/41sO6g8tjjNmEP8VsDVZUFKNamzVNcXmmt2BxGS/DCpL?=
 =?us-ascii?Q?huQNS5voAAFqdNp0EYDxVReFg+BUtGg+wbTUgu8Q7eBskmGlHQLpEa/cuHge?=
 =?us-ascii?Q?Frm679siBsSJQ/ZIKiLVCE0zXroUMm5GExqMjzzrE0ut7UjIF9QnX2A+KqFB?=
 =?us-ascii?Q?45EsIrXGj1tMG7CHp9ntKa7G9GU1tLRKpOBnMXGodk+Mi4ghUMHzGg3KdJMz?=
 =?us-ascii?Q?an/OveZVUqEtOqVVgj5UWAOReF7uTMCssg2NzXkGUJ/yJF3c2nWr1TayDVyw?=
 =?us-ascii?Q?5jBxtjvhAxyG83iAmLpo8dL0kv8jWBGtmfl15sjDREN9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea0c1ea-3689-4e9a-6e22-08ddc9cca745
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2025 09:38:17.5711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Ymijpt+ElC4/vdK2yINtxza7b/Y5iiM8k6nzillzXYMQ3ZmlyCrBwtNQ7OPO+v4ZOQ7nhK0uMZn6sHu7tQHaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7007
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 23, 2025 at 02:59:46PM +0530, Dibin Moolakadan Subrahmanian wrote:
> It has been observed that during `xe_display_pm_suspend()` execution,
> an HPD interrupt can still be triggered, resulting in `dig_port_work`
> being scheduled. The issue arises when this work executes after
> `xe_display_pm_suspend_late()`, by which time the display is fully
> suspended.
> 
> This can lead to errors such as "DC state mismatch", as the dig_port
> work accesses display resources that are no longer available or
> powered.
> 
> To address this, introduce  'intel_encoder_block_all_hpds' and
> 'intel_encoder_unblock_all_hpds' functions, which iterate over all
> encoders and block/unblock HPD respectively.
> 
> These are used to:
> - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
>   and shutdown
> - Unblock HPD IRQs after 'intel_hpd_init' in resume
> 
> This will prevent 'dig_port_work' being scheduled during display
> suspend.
> 
> Continuation of previous patch discussion:
> https://patchwork.freedesktop.org/patch/663964/
> 
> Changes in v2:
>  - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'
>  - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
>    any HPD pending work at late driver removal
> 
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_encoder.c | 23 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_hotplug.c |  2 --
>  drivers/gpu/drm/xe/display/xe_display.c      |  6 +++++
>  4 files changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index 0b7bd26f4339..4e2b77b87678 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -8,6 +8,7 @@
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
>  #include "intel_encoder.h"
> +#include "intel_hotplug.h"
>  
>  static void intel_encoder_link_check_work_fn(struct work_struct *work)
>  {
> @@ -37,6 +38,28 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
>  }
>  
> +void intel_encoder_unblock_all_hpds(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder)
> +		intel_hpd_unblock(encoder);
> +}
> +
> +void intel_encoder_block_all_hpds(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder)
> +		intel_hpd_block(encoder);
> +}
> +
>  void intel_encoder_suspend_all(struct intel_display *display)
>  {
>  	struct intel_encoder *encoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index 3fa5589f0b1c..e1d3aeab7c00 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -17,4 +17,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>  void intel_encoder_suspend_all(struct intel_display *display);
>  void intel_encoder_shutdown_all(struct intel_display *display);
>  
> +void intel_encoder_block_all_hpds(struct intel_display *display);
> +void intel_encoder_unblock_all_hpds(struct intel_display *display);
> +
>  #endif /* __INTEL_ENCODER_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 265aa97fcc75..c69b535497bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -971,8 +971,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
>  
>  	spin_lock_irq(&display->irq.lock);
>  
> -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> -
>  	display->hotplug.long_hpd_pin_mask = 0;
>  	display->hotplug.short_hpd_pin_mask = 0;
>  	display->hotplug.event_bits = 0;
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index e2e0771cf274..9e984a045059 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
>  	if (!xe->info.probe_display)
>  		return;
>  
> +	intel_hpd_cancel_work(display);
>  	intel_display_driver_remove_nogem(display);
>  	intel_display_driver_remove_noirq(display);
>  	intel_opregion_cleanup(display);
> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	xe_display_flush_cleanup_work(xe);
>  
> +	intel_encoder_block_all_hpds(display);
> +
>  	intel_hpd_cancel_work(display);
>  
>  	if (has_display(xe)) {
> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  	}
>  
>  	xe_display_flush_cleanup_work(xe);
> +	intel_encoder_block_all_hpds(display);

MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
be blocked only after intel_dp_mst_suspend().

Otherwise the patch looks ok to me, so with the above fixed and provided
that Maarten is ok to disable all display IRQs only later:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	intel_dp_mst_suspend(display);
>  	intel_hpd_cancel_work(display);
>  
> @@ -471,6 +475,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>  
>  	intel_hpd_init(display);
>  
> +	intel_encoder_unblock_all_hpds(display);
> +
>  	if (has_display(xe)) {
>  		intel_display_driver_resume(display);
>  		drm_kms_helper_poll_enable(&xe->drm);
> -- 
> 2.43.0
> 
