Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F7BA082C4
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 23:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8439510EF4D;
	Thu,  9 Jan 2025 22:29:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtWZ02dh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC0710EF4D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 22:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736461772; x=1767997772;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=YaZ/2EdH6OK4HoI8YpWd1DhRCn+mxyLPxmfGOs3QgSE=;
 b=TtWZ02dhsTz3Mj5WyC+X8zlob3zBi/WYWUz1jRi9DXu3k++3LU6O2diQ
 6VkhIBtVnqz0ph9d6cnyJKgi6YuNbeKo01RoiF2mtKi0sjPHNf7kJhg2X
 lycnPbXxjCWOVfTjSg0S57hNg+Q4j+K8ckw7yT60tK1XSKziQgp9lnZvp
 en2xImGjq784uIj6cYWQPQfx0eTnAbfxdNL6wi5zSpS++5DMrkbC0cY3V
 oOdLw3KLmUFg8ifqN2xAEab7LNn/Pf++dF1U1tLg98oXCbWb5MntXpk5Q
 4AxooS14D8Snogc4tQsJRPI1jbVzSrAPbtQXH5oHRViGIdxy0WEJlCMb9 w==;
X-CSE-ConnectionGUID: jHkoxXYoT1OqCZqg+AYGqg==
X-CSE-MsgGUID: qf86GlQuQMy70Dy81B3z1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="40690089"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="40690089"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 14:29:32 -0800
X-CSE-ConnectionGUID: 0aZ1DW9JQie971TG3D28tg==
X-CSE-MsgGUID: ENbPYDkjTeSjjZMhQvruCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134438581"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 14:29:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 14:29:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 14:29:31 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 14:29:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=thQ8e2OVYnuoebeEkkYuvoPbc9OOv1MpeifAeSm10DNJCdCYlRBmTRm7rk0vFTZOp63BaGMlC2Zhyu6Buwlcz9kV5P/C3xBiWEQq6XO1cfoebiX/nRFodQpuhW9Rig8bsOSBlYRnm6GBCFpDV+NQ6Y4N0LMpDlTlEZrk8dLyN/70yZGcDaRvs/hhSe/rWqK25L2kRJViiiOFkUyU62sK6fmdjR3pT/3tKEwQ6O5F5H4WC6M1tn3yL69SdJRZVtC153uvEw03MGbwChGFJnuSkflL5YMy0ErlzqbcYfB0enm2LbNbVrEq5ZhunO/th3FfnOrjVAlWG8kbpl7yx/XtfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HWPIebtPtuf+LpUkL1ehg6vAYF+vq8BuuWGd+LruYbg=;
 b=uY57XBs6V47sOtKRG+as4Myrgjt4TT6w2riusJQr64snAeFNV/gpLqs8p2QygR/OEY9CInkF8Pj0VvIblgQVJo4D8klPw11wWwlHuIkJVhfklasRXD/kOilLXV9C5bhuZKu05ZD5PmAzClsY4qceJTfcQ8TX5RviGBxsNIHty+Rcx3wuElAeiIgte2ASsmx3VL7MWBkgOuoefY0zjyLJgZrOaiZnSvDoy/6/AfTtNF9SUDyFYo5YckHU6/xMmsQd+R/MJKKm/ozK6AwbT9gU/wn4CHo8SfM0jm+MBAkwF3R6HhCzNavkNSbBDxkG2bp5pz+7bAcfokhlSnuS6da0jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB8290.namprd11.prod.outlook.com (2603:10b6:303:20f::21)
 by SA2PR11MB5035.namprd11.prod.outlook.com (2603:10b6:806:116::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 22:29:02 +0000
Received: from MW4PR11MB8290.namprd11.prod.outlook.com
 ([fe80::4a98:509:3b05:29b4]) by MW4PR11MB8290.namprd11.prod.outlook.com
 ([fe80::4a98:509:3b05:29b4%5]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 22:29:01 +0000
Date: Thu, 9 Jan 2025 17:28:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 0/3] Enable GuC SLPC default balancing strategies v2
Message-ID: <Z4BNq5ZtV711sBzs@intel.com>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250108141318.63823-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: MW2PR16CA0056.namprd16.prod.outlook.com
 (2603:10b6:907:1::33) To MW4PR11MB8290.namprd11.prod.outlook.com
 (2603:10b6:303:20f::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB8290:EE_|SA2PR11MB5035:EE_
X-MS-Office365-Filtering-Correlation-Id: 9eec4594-ec6a-495c-de9e-08dd30fd0470
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xV5HL8zC20bi00UCKhoYgGZc8dzSkqjKGvLZ5im+hVQsEGWjsBLFHcDmmB5g?=
 =?us-ascii?Q?lQ3TbfWhsvNZ7/7dqmrjc1PpOLJZj3sJaGIwO7h8OCCdn7tiBPy3Hw/ZqrgZ?=
 =?us-ascii?Q?ArB1sgstS5a1rGWQhq6JlvUVSD+W/Lnz+mAzGLoHVPe1A7ZhvItoiNNcos6I?=
 =?us-ascii?Q?6MBopcfrePlB6DHe/X7QNTgmUcw/2x7kOfnpnqmI2gXOqyIzBX19HoYOXEWJ?=
 =?us-ascii?Q?xeh+JX4DoJqjsb4Y7r3CPannyMjAJmFCPbvEL6BgOKuyd3PvDdTBfQd35LNW?=
 =?us-ascii?Q?UbecHeE4boRF9sYwCRxkTc1XDdSk5p4RM9/Z6rNyTU+KewEsJiqFszwH2SFq?=
 =?us-ascii?Q?78OZ+h2prjDWvCkCkXpsQtJztIfpA00rRoa50PjkeXBCAPpwIAlBhTfT+hdS?=
 =?us-ascii?Q?KFnIlhC6cP3i7ZtRdmggu68mxoeJtoo01PhEh3kl7e3jUxLs4Lx/cXQagMAS?=
 =?us-ascii?Q?qwYf6aYp+rDfM8mSWmheIcbb9tzjGcLO7psMGexrFiKzuLyr/A208BGaUUpy?=
 =?us-ascii?Q?ILAQwp6zh3FroDQmEw1lYCvqlGPdgKvMq3mSYmra+Ifc0lMwSwAElxdEAJrc?=
 =?us-ascii?Q?bahelMPrjFx3/3pPSUVVZA8QeyENs7jdPLBKkcacTw+DRkY/zwCbYdbuFIsl?=
 =?us-ascii?Q?mZCCmoV6t+mPtZQ5YgIYMeTf+HVJe/zgXnbwjkpcjNZcLgS7ATkd2flrZC54?=
 =?us-ascii?Q?2S4v9jNUHNI8/WJJzY9ndZnsRbWaQpNbSAzBYjHu6Q+ybePSSGcYfafCAjnm?=
 =?us-ascii?Q?ZbBRQnbGEvoZUKVCjP8XTMIL15DMX92xu41XCf9LNIw32UHIUFXzx3HYDyOY?=
 =?us-ascii?Q?qTMhEByDW3jV124of3rExew30x1qBJvB9gE30fvPLXKxGX9hL5WnqVSsUkGC?=
 =?us-ascii?Q?DY7fHsldej+gEDZuW+c1qxFzwNaIaCIW7Xp3hY4R/6ln/Ff5f+n/02Civ10S?=
 =?us-ascii?Q?FKLI5fFuaED2O8zPNUGxQqw3gwKdKm5wxSk7cDhpWVIz51ogOo1atNS+/Vjc?=
 =?us-ascii?Q?nAAtrXh4qmn7yd105RZjovlgBhBSuQjZLO0gn7a8jhuCeGxEhCYq9clTToxV?=
 =?us-ascii?Q?rdy8Ufq44Gk4ZX0+nEnSoe4EuPqCVKrJEx7BMMkDdRrhV9e5zkOkPHc2KwQW?=
 =?us-ascii?Q?AYKgWA0ZtOnHhWtqVJ79x7omCsybueJewDaRyh58esNpO1TUitXLkduYJ+a4?=
 =?us-ascii?Q?2pHskRgHvR5ThY9yEBjUqtKBopiTDjDrA94v7OhzgMSM21fv2Gy34CJy55zs?=
 =?us-ascii?Q?DCpPNRftT5+spZ+OuZTWmtS1oQ8GVeUxI1oM62dtlqp8qdkMV9lcVFmHHTKH?=
 =?us-ascii?Q?2/NNCPsfummUISqnWvMuWDVphOIBdRC2VTJCZCS/baHF6w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB8290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BVO2Y6t0xuce1TWPHgLd9GUAMEA9yZFLCry9Qu0zFFFtRsJUF1v5dzOBV7Uh?=
 =?us-ascii?Q?Glae82Mspz0mcHuA9bDn9xKgOmHuXTwNQobvaPCNhchmhlQYKhxggxsiYIRZ?=
 =?us-ascii?Q?igpggncEhSocixlVSa1kpK0DzFIrppPwMv3V+h78nYmhg5AxoWbC2jIYv0+K?=
 =?us-ascii?Q?fj9RrhkA1jnngJ69ZpEMFMyCSvEXy514l3toDgTAz9OuWokqfvBhFRJbwc6Y?=
 =?us-ascii?Q?XGKsEtbCS+PHTZ5Er3QyVKdG00Yk2cT1zqfCAE1yclcIcJ8cCvJWoJLhN7Jx?=
 =?us-ascii?Q?aM+WJXie/v1s9iYrG2B8CE5khlceEw0AGYc+p8kB7LdyGffEtIAWTmkFhOmK?=
 =?us-ascii?Q?INZ1Fo7d5J64CNeKbf2ZvrpHwrwEVu1IoUx3eYKVWE7StD3plytmhjO5wzpO?=
 =?us-ascii?Q?x8aElsLg6W7Ho+jDnMMrLqFoMYN5UjbsJrI65+7iCjZeLnQ5SBPSIo1n34D0?=
 =?us-ascii?Q?rLtbxpwEz8YIzTtojarylcF3xPBEGtIHlbap/56ELV+gN1SHNzUFqV+MVeeL?=
 =?us-ascii?Q?sEqyky+vMDnGzX7SemYZWr4K8azNfE8UBd/jtHOpZ+mDRFEDVzlJdMZSn7Oc?=
 =?us-ascii?Q?PzyLlNcK/l5NIOnw+qS+5Vvdqni70LqXRVFK3hENjWnDUH79/FgwCYockzd+?=
 =?us-ascii?Q?uY6ybTBqg3nVK/HBBfIjQgIuJHBZ0JhHaGVBZhy8FewsVRIIby1g/+Hec81B?=
 =?us-ascii?Q?2AgJ18T9H8RhwzUcT59OHe+IdSxxEzPRUnnUe6NyeFGdYVChBLR9WKPLqC1Y?=
 =?us-ascii?Q?84Euepow1XsIbkmMUZeJYZBVUAiBG3er43ZB9owMny42wxaP2Xrncp2LJVLr?=
 =?us-ascii?Q?Tx+BoPOjC8rhM/umWPZDa2zFkyM5JCc/eYd4ZLaQDKw4JZzobdKJIpFqgKUN?=
 =?us-ascii?Q?XBRGsk7iwhLEI4fV923ADJU+tYQFXKlSzXpZkbLuDD8IEUyEpjb+Oc2mDkkL?=
 =?us-ascii?Q?3cx37wPko1GFKnNDe4VWZ7TzWlHe89b//mnWDsi+iAoGWERlN06DPPcOD1+9?=
 =?us-ascii?Q?W4G5VOYYp/aiFsDaxQIfUtC1wFVxnTet1KoXw+HvJodi4mV0MoGIg37aPLoO?=
 =?us-ascii?Q?O7V7f2fJQyTBbFrHdLgJ4GwXTQCTvWxvc0QK9v/YEJ2u5J02szyBtghdm+X5?=
 =?us-ascii?Q?etSeIyOY6QX0WBHg6GT+eHrh16b4USq6BzEiR0szm3ZGHWTP3CfV2GX4GHS/?=
 =?us-ascii?Q?6OZFRBkd8GgdmaoaLgmOcw08CaEtwTAf3QksUNhgMDru9IavmDvAq5OinXyF?=
 =?us-ascii?Q?/rLJgvlrrwS3Ud4GitRdBKuIZ2eyKMmxvA7aDQCdp99BxXltsEUEYIgO9ccj?=
 =?us-ascii?Q?vNdmYYtk0nO7rZaihY/+FJSlQ7sgHB4IbOTCaEQZUUWoKYpzgFGlFJvtCKlV?=
 =?us-ascii?Q?z7L7scQOvH2iEE7eAF9j83hUXy/3M9y0vKKAeyAkkuZGrpnHmvO611VTRIbY?=
 =?us-ascii?Q?jo+vyophzOjasr2ut+FaWn7so7iCtFwO1Ze68Sb0r89R8EqasLaao6mE+mc+?=
 =?us-ascii?Q?86z+Gwvm5mhRNkQYslc9rWoUdQzeDX6oNEd8Ue7slff0b2ucuV1He0uLDmVZ?=
 =?us-ascii?Q?gUWdf2l2a7irF4tXQmMz471Age0lfdipo4hI47bFfURbjJwXF/ketiKL5MeS?=
 =?us-ascii?Q?Lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eec4594-ec6a-495c-de9e-08dd30fd0470
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB8290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 22:29:01.8498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nOPE5aAARPd5d35XakkEgKDN1tXXE9h6pwCmVLTFKJdIiXDN/yTVkqd8XcA4pjthHpsvYU+g+6aTo5jAcktBYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5035
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

On Wed, Jan 08, 2025 at 09:13:14AM -0500, Rodrigo Vivi wrote:
> The goal here is to improve the GPU performance in some cases
> where we are TDP limited, with both GPU and CPU with high
> utilization and PCODE without power to fulfill both sides.
> Of course, only matters for integrated parts with GuC
> SLPC enabled: ADL and MTL.
> 
> Apparently the ADL on our CI was not happy about that
> with the igt_spinners timming out [1]. So, this new attempt
> also lift the BAT restriction on the igt_spinner with the
> first patch.
> 
> Another possibility would be to make this change for MTL
> only, but I'm afraid that this is not the ideal, because:
> 1. ADL users couldn't get the performance benefit of this change
> 2. This would sound like a hack to bypass CI, where the ADL there
>    might have some TDP limitation and MTL there having more power.

For the records, I have changed my mind here. IBC on ADL was doing
balancing even when not TDP limited and perhaps even depending on
display metrics. Let's enable it only on MTL+

> 
> [1] - https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v2/bat-twl-2/igt@i915_selftest@live@gt_engines.html
> 
> Thanks,
> Rodrigo.
> 
> Rodrigo Vivi (3):
>   drm/i915: Increase the timeout of the spinners
>   drm/i915/guc/slpc: Enable GuC SLPC default strategies
>   drm/i915/guc/slpc: Print more SLPC debug status information
> 
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c  | 34 ++++++++++----------
>  drivers/gpu/drm/i915/selftests/igt_spinner.c |  2 +-
>  2 files changed, 18 insertions(+), 18 deletions(-)
> 
> -- 
> 2.47.1
> 
