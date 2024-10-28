Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40109B3C6F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3BB10E57C;
	Mon, 28 Oct 2024 20:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IYoI1+Uj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E1510E57C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 20:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730149173; x=1761685173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=boldWZaYzdTkhAFhVOdjvGsepXTgDDmn940Li7c/e1Y=;
 b=IYoI1+Ujn3V2/BOOGjvW4oNkfFrnkvHBFl5xFhUOLPp4UxFM0gY1+sQS
 WWy4DrG5hOe+BHJd/oJjG+1efGWAINwtCpl8Mfmt8N7SFwZFNqSrNy5yt
 UUwXbpcN46MftG7ml9ldc97sAA8Os3fcSqDrtjHMy8Z3e0pSQUir+3Daj
 6Se5qwrFmQfAEdq5iJJNHvgBKStWT1fBl8jwMF3gMHqSsygSueSmdjdUZ
 BhOdH68Fzqw0XMYkEP2zKswzk8ASpeqj+io2nefhYa6xWIdV+FBi4dofl
 0R/fBp3Qsn4qbK8ounLATu0WPhYYeCQxMyzoKcJ/qyvVM7cIUDhGjQ5c8 A==;
X-CSE-ConnectionGUID: JkVCLcXuRLm8+xqF8ZpJKQ==
X-CSE-MsgGUID: RPdZqG0zRQC7InMCkgjT4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="47226592"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="47226592"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:59:33 -0700
X-CSE-ConnectionGUID: zaPgNwMJRKiGKO62rZNayQ==
X-CSE-MsgGUID: MueTmVhMQ4Gjp++mSNhRdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="105079592"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 13:59:33 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 13:59:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 13:59:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 13:59:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l9C7Ie0eYjTKEIj00LX5dIzWi05KAiLC0hAsjbQwadgbpjwrUinh3cFc1FupYbVwhUhB4Z5FMLUvgVOj3lAU8M45A2x1kiDBSek5lW8O8QSWFJ6Yv3eNE1D/RgkZQvmal6hImVfJkjF/Cy/Lz1T5eGF2XyVt/imcsNJvtccAU7je7diGVEeia2XJ2n/YBDF5PyfCW2BetYNPrgWCSf0MyczLUZjsGuMlADrkav9/ESuFycF2HEdpj3lL2cDsZ7eKhHqMMGcwBMGb535kl2bFtJUFjte+yhAMyUEVXNJ1gH1RZM+7F0A6hWQmDdOBZRFzfY1S/90+4qY803BvTtTYtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=boldWZaYzdTkhAFhVOdjvGsepXTgDDmn940Li7c/e1Y=;
 b=gXraf7EVGpOcBdNrzDQrs6AEukNdjJ3GZNP9XPnE6Y+roOXNJbQvROtZe8X9ysnzs1fgbIYJMsCOEEl4hmaD3fKgR7TESYbasJLQOoRMphASJSSv08vOP5bCj8/ZDnfkbSKRMkeERnEnEf7tz+h6r/DPPj5llFB8PdmjIHnlDZWlrViDN3k0K2vF3T2ySR+yFKh1JN2M5GxnwJrWKSaZzFfj9KS7TZoOPDD0MpXHDfmIpvol6wbJzESPeKVO4KQetPmVLylPWC8wpDS06qnqQA5RBjDXapgPOZUfJIHk6NI/PiARrGEHegSpzCQu/rdWHn9dD5HxjeibyRhufOASYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 20:59:29 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 20:59:29 +0000
Date: Mon, 28 Oct 2024 15:59:25 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH topic/core-for-CI 1/2] Revert "HAX suspend: Disable S3/S4
 for fi-bdw-samus"
Message-ID: <3uyyleaxhsa362iflaaas2tqr2dky2nhixkmepu5gz6mne45sz@4qk2v5udae2h>
References: <20241023211834.3370346-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20241023211834.3370346-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: MW3PR06CA0024.namprd06.prod.outlook.com
 (2603:10b6:303:2a::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB7175:EE_
X-MS-Office365-Filtering-Correlation-Id: c9078558-03ee-4a0d-ce35-08dcf79369f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tVpnh2gsLFQmnKM4yHYMvcAM/PCkx1o1iKw9WMiLFIKlrMBPbXkJmvT/gNkC?=
 =?us-ascii?Q?eoeQqEhj9HR7Zmrd3npQeIgTD6O6MnCfRzIDrOpqCg8kKYEq0y68PsmnwJOy?=
 =?us-ascii?Q?+9MKhlbdKSBD0dT0fx89M/5sWC10HmENpXzO64gNhZhGlF26PwYOnLvaTMZS?=
 =?us-ascii?Q?ns4SOaQeq4hwHSynZBEsxCJZg7nN4mytc022vwiUm+gHquwOUL8zsfsSSWjA?=
 =?us-ascii?Q?TYzA3vAshloyvVXARbDjbYgMbE1gdER7HMrLhLHefjM/40jyhx4plnjJ8APA?=
 =?us-ascii?Q?ebkLhmQvP6jK+gbzYxY5aX+8tIVlXZvh15ZVT1gpKWQy57FWAgpKpt2JzeO+?=
 =?us-ascii?Q?8Kpz9yWGTgbcKAPM46Pam1L1lvkSLVTDGVaRUoDRxQFGLHdypasspCNa/UCF?=
 =?us-ascii?Q?KruX8Ea24TJxiaY0yDOtKSZlu9brf7K0bVz3Trd6na7tccR191LDsNRa90tu?=
 =?us-ascii?Q?ZjJA/CIw3s35lztPLHtD0aP4LlHkvuo8gJ8NnN8GLfywtoaKO96vKx8CBI3T?=
 =?us-ascii?Q?ZW3x4a2X3P3EzKtmnb62HJE+EvbwGkjTDbw/AU72ot/8JQ0pf+OGBssFWKzH?=
 =?us-ascii?Q?PrU/mcx9ugW70i4bXmxHeRbYhLjJVyZNzIHWjwL/KA6J081pdnl539uV//ds?=
 =?us-ascii?Q?J7JUbM1mQli7EmpgRXHZaJDCx5yXcmCpsc5Wg4c7Mj//hpz0GlTQ4vBz8/VA?=
 =?us-ascii?Q?YCMyNrTHrPFVLwcATFZ8RYUaDwx0EO9JKVLU6/NQ9cTe7kD7efvaXoYO9AZv?=
 =?us-ascii?Q?pIjNcFK6TW986WQZqXJ6Ik2DXOtQhAEVU/VOnvOcf42IzoniOl/bcRodWE6d?=
 =?us-ascii?Q?0Pky07n3eum+VXcXd7PGTQQPCrKsvlwiMsD8k4iTV8N2leBPzcEIMykJ+F3S?=
 =?us-ascii?Q?I+3lp6Vc0SEc9OXIzd2wqOBHVqWz4M9sN9D0SCFGNSml950TZKyWorifBHio?=
 =?us-ascii?Q?kOiTzO0SMd0ovsDNH9Ey/guTi4EjGwkqbKrbVsnMK+JzWlWX3ma2r7uvd0xx?=
 =?us-ascii?Q?GIjljL9xb+F9UmtJDw+YQ8qcL5i6p1+eb+9zAR5k9+UcjVSuEU6yDekr6GOj?=
 =?us-ascii?Q?mJfyxD6fYSk1F92IJjJ4htb++LAw/1I31glV8aeZKSc+WouESI3EoeCuacgM?=
 =?us-ascii?Q?Y2Jw+9ttmyaHm5ljnlx3MEW3mu5fB40s1hZGQ3Z0AnwwyrQepMC4yC7RVofi?=
 =?us-ascii?Q?QCK2chT1kEVJD7i4E3GdknygzTQBjFt5l1DC3DsVKx4SeE4thkZ4zz3MrBEz?=
 =?us-ascii?Q?uAn4eIi2JxVpY0lRqRg5kg/C4ya61NWV/lAdh8pzIvhkLI4JI9yoRVhjN+Vu?=
 =?us-ascii?Q?TiFSYY9JS7TRpOixTbK10cp5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B6hb3XK4cCpgGa9dF4Qsb2qhcGXiTGTnOTv2H3YQEqbGIqDSeHeCgTOfnpd6?=
 =?us-ascii?Q?gS9cVmIGWVNKNMV3L7Xdb6IX2A4PAlTAwYeTNjUmHxFb6V83unwqgtN1XH+7?=
 =?us-ascii?Q?iPQZpDei/HK74tUpKWVUoQvuHqQ4R/nQsJ3MkNDfEtCj1dxs5HwpeiyKJkmG?=
 =?us-ascii?Q?KKDCrr47LZsYAzxMqWUcJg7oiYSrAU7j9QKq5rkqEdJlctxzLVcEmrTX1ylg?=
 =?us-ascii?Q?MrMAqLjzMmwdV2R0T3tRIZ4QgGUvYwd+LEQXqYyoBbZXVO3swo7OQ94EzitQ?=
 =?us-ascii?Q?9SyE9gaNmTreb9q3A9m1tqfphHQ3/pXfSNKFzZxQVIDKiwkCWUnVsETkmoYi?=
 =?us-ascii?Q?o3W/IWHSHRM3oL65y6Zn0XwW+m2wNZR1QgI5u73ey6wAdMrUkWTtdeKSmHAs?=
 =?us-ascii?Q?fIS+ZhBCkBIgNWIZfjqJLIiJV184NulcibHHhJ0Aq4peaVsejEQ+a1zeTeur?=
 =?us-ascii?Q?Vs2AzmwKeuTVbyRV8sQB40SHKG7O3nd8aBXz2b0MXBfxcXY0JI6o4wBdudNJ?=
 =?us-ascii?Q?+YY7Nhq2abvrw+BwZCDjKeFnPdtC6zXVTYtZkb0rKPzN/5I7suHa9cX02JAM?=
 =?us-ascii?Q?/7r6oyq3cilG9q3C1OaEXvQ1UfW68HisSUvVgzCN9Se0A730auvqxS750z8N?=
 =?us-ascii?Q?fp9+9IbYV9ZmV230l5Y4h/yisuGRk7IcT6IhsedOehvEcA/JV5RC6SbQnEPY?=
 =?us-ascii?Q?7eEN3NqkdRUZXcdvz883BifoKioZrYs1Iyt8ggjRWr+GWjlmRwUfBkH6wvE/?=
 =?us-ascii?Q?X3+olzI0uLX5JoFgeYunY8q7ihH5Va8CoPj9Ah+o7VW29p2Tsl6w0r7oZDED?=
 =?us-ascii?Q?ivucUd5e9bURcFMQDOH1jtPBJnrX+zjMwfoFsou5Rh5rtvZb/XoOe9by07oR?=
 =?us-ascii?Q?BejCMmg5FxeVgJkYfx5kZP5mhQBehNwYP+kfh+1vlF2JVD7IgwWGUuE9usm4?=
 =?us-ascii?Q?DaZubo2ocCP4FBqY952VWbyZJ+duzxBCMZ0YgNLdSDZrq8LiCSZMunIsh+pe?=
 =?us-ascii?Q?p4pe0/i2YFuUyMcmMVlOt4zbm8hwSTMevbd2A9FHrGvjZ5Dv9lAvFEUzWqyn?=
 =?us-ascii?Q?V1OzzEu/R14k2T6v5f3Z5ZM4HAF15f4F5F3GCCjjQZSTsmx1VKFKpbBG/oHS?=
 =?us-ascii?Q?tyZ99mc4bc8x8FULyXo3gBtmPseYlHzV3ddTkeKuZZax/xj7Xlxn6tXuTRiK?=
 =?us-ascii?Q?O08Q0xRJAvbVFlPB5QLX6bdSiqpBwTUmX6QHOgPnWq9XllKf/GcQQ6mL70bQ?=
 =?us-ascii?Q?JAiJCO+VIBTOExHKlzGxvnIbwYbqE/BLdp04QDi1o3GBoFQ9IhCGWD9gg6ZR?=
 =?us-ascii?Q?2qcrlvXeVoAQVLAfRxnO6bJXtQQA7NosUwUvej6T/yGD60KiANxr0aVDlx++?=
 =?us-ascii?Q?UtOiQoGhflxQmSIkvcjZx2wVhbMOZNi0HQVDQh+roh/m4i3DYt0uovvEhdzD?=
 =?us-ascii?Q?sC9TN9jB8LxuPWTfLVDFNXhw0k1s7z/0cLo3KCNI0PTbYG2IjXS0nY9+g4Mw?=
 =?us-ascii?Q?3P/SwalCFbrp6/rmXquodBvDX4Vz2rgObNgb47UXE0F/zI7nU/YnovVxICW9?=
 =?us-ascii?Q?3MF33ShCBzVuYdVwUOElVWJK9Ywh8P7xK0wUcixjSLsspPNyfL8cFsy7Bi7v?=
 =?us-ascii?Q?2Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9078558-03ee-4a0d-ce35-08dcf79369f6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 20:59:29.1841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AunprvpsjbvAVhbiYVuteLrAMXTU6g7+Zqzbkg3HAaceHPdyX8EgnJdVwl1kYSId0HzzRkka/fxpoAGzI4GL+jRO7XD3SU8qdxkp+YRnck4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7175
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

On Wed, Oct 23, 2024 at 02:18:33PM -0700, Lucas De Marchi wrote:
>This reverts commit efeb42fe3b7c58abbe674515252cfdb71c09eba5.
>
>That machine is not in CI anymore, let's drop the hack.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Failures unrelated to these hacks being removed.
Thanks Jani for the ack.

Patches removed from topic/core-for-CI.

Lucas De Marchi
