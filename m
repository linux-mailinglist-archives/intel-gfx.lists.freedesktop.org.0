Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA76BA1BBD9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 19:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFFC10E9F5;
	Fri, 24 Jan 2025 18:02:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FT6mTYDf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E2010E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 18:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737741755; x=1769277755;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mLJFSNEmjMLPQjaF+qQmA1SCAfttPB4degtlzd68k20=;
 b=FT6mTYDfc55ficoCaU6UfbAaxKl6I3CG+t7nZbPBboeWbkVU1GTgbcEu
 P0bqO0U7IPoogb3VKOBoiw/Nv8CBx5pIQ/ZxEJUGVo8sr7rceZmipI6vG
 CjWrYj/S4ZdXkk/xNZuXMuD3oHpIqT8YSVPHMifO8KMrhIdocRXhJ9E2y
 grYMnr3gr9fuMdKwCCH1mmFLNgyn9qEDG24RNLDM6tWLIL3CPu6dvkEZc
 QuzVQU/kldy6Gl/vz3064F4wdlJjp27l5BWFxjD1dzMpZsbH4rwjfbyin
 Eycuk4516fkBTEJ6dJLLSkF+2lAE6V6e3LIggvXdUoItbCYd5hctNsHu+ A==;
X-CSE-ConnectionGUID: YxDAIglqQ6aIwDg2fSBMhw==
X-CSE-MsgGUID: XIO4lifxRVqL+S+2Tjb46Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="48944435"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="48944435"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 10:02:32 -0800
X-CSE-ConnectionGUID: DADtuhkkRAePtJaU8ww1Pg==
X-CSE-MsgGUID: Z4Ip5EbhRe+5ciHyOGPBEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107638809"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 10:02:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 10:02:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 10:02:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 10:02:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hlRhn4Zi6XVuekaLIx/zsshgE67M+jX2Jsv1pym0Cif7zVG9B7cVxotmY49TFCU9Gc+FMGD9r8nOkCNi36tuFxhml/MGw4FdyLOP3HPapao6pz8J1jkDeNbdGbIzaKtRww6sJIo/FyL/S0W39Vzoer3vr+kXGXW/3mBvbTeoMcE38ezNFf5T63dFl059CtiV3PWyH34JddmCOHK7wuM96pz6uUUeROEpskQ+28OrHs8nyVh4N8XLNL4fqnncxy8cQoQH9UFmkxKL1O5P2xWzbrJJ2O2wN1QgsCbsFClgFQO2fJjZZSi2BmlntoXql0jTah+JFLs/ROvayctOeqvo7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TjFqCZo47vgu1W+vfxEDM+0TZqJe0eVP2/qiYJbFeq8=;
 b=Uec3TpjjCC8IAMtHOTu32v7yGrdpHOpq9xQfZQCEnvs9WATCBWDhntRhY2+z2dbqijc9stT/nb8tbGX1aIgbPdCWgt1cfTQ+YZ13zOf5/S2BKLHCriqUHp8AZqe7UGLCruoLxkB+4fepnLD+pBkX0Hl0tX+ldRSxUEdfCalV70BaSXyMlpXeqvrM/tG7bz9XQL+bfqGwmgME8bxYfU5wHhpbYEr8Dw4wshBFZ7OstUhNUSYmtCqcUp3EuGenanHNmzzUf1+E0sX9DQxGYtHDiMc85mdSGeoh2/VZ4AylfBjpPQ8PcMgmNBWlpyzqAx32LPamDUBTyA48HARWPbQFlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.19; Fri, 24 Jan
 2025 18:02:25 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 18:02:24 +0000
Date: Fri, 24 Jan 2025 13:02:21 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <andi.shyti@intel.com>, <andrzej.hajda@intel.com>, <sk.anirban@intel.com>
Subject: Re: [PATCH v3] drm/i915: Disable RPG during live selftest
Message-ID: <Z5PVrQeOCktGX-go@intel.com>
References: <20250124065023.1082862-1-badal.nilawar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250124065023.1082862-1-badal.nilawar@intel.com>
X-ClientProxiedBy: MW2PR2101CA0036.namprd21.prod.outlook.com
 (2603:10b6:302:1::49) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|CH3PR11MB7323:EE_
X-MS-Office365-Filtering-Correlation-Id: b633a4b8-3dd7-46b0-96c1-08dd3ca141b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?28+Yqm9l+6oE64b00OsHZ/68QocFecMdMyadkt56+oR19jEdrI3LbS9G5YxF?=
 =?us-ascii?Q?9EXXy342OoP+vhCs+UmHQEHZ6TUr+Mr90hn/3VSp+qHDGRuMLGl99jR770nw?=
 =?us-ascii?Q?wyeP64NsUGsUB8ZEBYXKnTfXNhwSAQlvmZAnvBIb+WeNfKnCymc9TzRge/d1?=
 =?us-ascii?Q?xa3RnpgGpSVd6UOC3Dh3Z6LdR6pKPkJOEU+esc+ZU+hVtS/KqwSnMLUJwCls?=
 =?us-ascii?Q?aZMT1ZqRqN01n4UrerdOC499/fTenMR4vTy/cYCSxDSpm3P4rU3sKXV5Fa2g?=
 =?us-ascii?Q?IfUIKDebKvS5W4FWmW9tdJN7xcmrU3OYQA2h3YSn3+TlbGhzUplF864xFRe1?=
 =?us-ascii?Q?3XKfZPNGgN2FBfBSPdpQbJ603Jtame5Ya+1jVNRFgv6CCsLh/n4VjB7YOfRz?=
 =?us-ascii?Q?IjjvGRyIC2n2GFKplmuJ6UoX1tbkUwXy2QtrPEjrHa1xY8DZHF+7WHBLgxCg?=
 =?us-ascii?Q?YWZLvUZGA/CLHqzhztCcbKU1W3Yzs8t5p0BvqUqpT9HDDomfZ2mp45zkdE3J?=
 =?us-ascii?Q?qfHNJAZp2dC0Cl8xRW1dU7vpsnDFlCsSTRY5llOkVeuPp9ar24sArYoFlUo3?=
 =?us-ascii?Q?Q+jlWUYMyXY+T3YMM3ROh13hCcapDdqCYEWVOhGQp0W44hcd3fZC6OsBhexo?=
 =?us-ascii?Q?sIJZAyiJ0+ecnDaeGK0lQPJziL/AZ8Mo7u1QtphHKgy9jRBEL7MjB3v1oa0I?=
 =?us-ascii?Q?3yvAIkWY2PZPL+WWlP/0cMpZ0DUkQvqr4a0zM2B7CNcLHHkxif458E6XkkWy?=
 =?us-ascii?Q?tvtOAKIoDsALP6o8wExPz0Ezj3l/joSn3Q/BoXTRUkbpdcDvkmejDpMzk/mw?=
 =?us-ascii?Q?i9Xt/3eAI2pKnyCx4cryW1Ueq02Kzt7r2L+aVNaK2PVA4p53H3my3/QU9eSF?=
 =?us-ascii?Q?vs0GQEY4j6O6NzKbX+nA6q4o7BGs636M7l+KDgBe5X49h59IOD8MaAg88gjr?=
 =?us-ascii?Q?caxETKom26kdbDdH03eSDfkYfuTSVUH+drARPpeiBcpMu4QFIp+V/Ve8VNrv?=
 =?us-ascii?Q?qvVdJTCeUGB95O/kkr43b5FFpcA+xNPB3b9+BUP+ZxqGpXSYiP2ortgkIQPx?=
 =?us-ascii?Q?JixWOd2f7QfFiR2iJ//DFnyGthTkRsPt8gdzk3m492BRLEkzbKgTxF2d3XJn?=
 =?us-ascii?Q?UZW1aW7/Z/wDBeO2pV0qRLCn6c3zL8F1LTgy9402VvjjFDEtK3TnDPTjVq+5?=
 =?us-ascii?Q?XaPlRDyP59Q2XZWqyClL5XgLquzuEAlgYVcDNQOy7Q3uw9PTTf3XKU2wZKnV?=
 =?us-ascii?Q?t3UAiNygWBOstv4sGG8zy1il2K5Lnvu3abwNMHJzcGy3swmdcrOmTL13c423?=
 =?us-ascii?Q?B0roiBYT6s+C8kCc78fnqoa75kVzVIb8YTCyLpWjnt8Prg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tnswEslrylBIex82wI5WI4kUQSUKxXwWnlFtZfkEU1L2rJHBW/AbcT7Ugovj?=
 =?us-ascii?Q?zqHnihAuPibADTHW+8sM4qm23bdc3xmU77lfUW1T0ue+ZN/aO6ASFML4OA6r?=
 =?us-ascii?Q?2qraZGQekbEukFxPGrj24gk0R8PMLKym16jUEpvR4n0dLp2Dfhv4Lv66pBd1?=
 =?us-ascii?Q?3NOcN83n9bJlkOkAupqPADXkn1t/zJYS+Y2x+g/C08BueVwbspCf23GV9aWZ?=
 =?us-ascii?Q?6Rb5pCdddmEVjOMMBVYGhLoTosXleYKQjS1ErXEyzWSIWtRH7yCLXFgnbbo+?=
 =?us-ascii?Q?fufTNRaf1K5PciSIkn1mePBFK7ZEtF1F0yygFdDkOA2NfFyhsmSDN5tdXcYg?=
 =?us-ascii?Q?jJT7B1WDhbbO64zr6N317E4iUv6m2sVkYJDRRyPTSFyWAmkNq2AWdL2hDEkz?=
 =?us-ascii?Q?Z2tpgYa1EaJzmd1gbSERpFlPMFP54O8QMnQiB+2kXUTviiXD8XuXM+37JsEA?=
 =?us-ascii?Q?LveZ6KawHYi+/8NE4ijSpIR/HwX60+v1ufmXu1WrUw/ArUAJ9VkZ66KoaDSM?=
 =?us-ascii?Q?7FUJ0cmHPwLFThLc1Ials845YRQNEPediQRZfN1Bewjr/qxk11asCcAx3NRk?=
 =?us-ascii?Q?z19h4TQe13YyLa6jWAGnuDJNsz5987Ub/nkjIBnibM99j03jxMCddgk96ol4?=
 =?us-ascii?Q?AGxyW357YSPZT/mWZQpnfPZFPiLlNo9yr1aVSrg6doLv3TM6E4Fuix7UqfU+?=
 =?us-ascii?Q?VhKbFbFHyv4kaQbOGhwdWREhMAwlX+zZePZP+35xwcPpktaJ0Ns2/2S22jOq?=
 =?us-ascii?Q?JBNEHd9c6u4yReydCWMCP6xaq2s94ORky1AqkKhIZ3LRuhBq8lTjyb6/I99c?=
 =?us-ascii?Q?3aaWVYrNb0+K4jyGB5TGGTYz5PteR53DE90iyaRR/zJ6Qk8dyUeuuJUE1rYR?=
 =?us-ascii?Q?NttAqZkWiN32xO9qp2gaP1vrWK3Vtu9ahVVqGLAPVluNZMAYD/R3WyKAN35s?=
 =?us-ascii?Q?vEYFG/94gNiJWzHG44ivDlHQJCuSWXTfVrsmyKePyU/fPncSq83yMPwBbanu?=
 =?us-ascii?Q?cNscNqC7tycmMXwTiECTdGm253JOOgwgb2qI/On5KnR8jOH46V5xTCC+Jh1f?=
 =?us-ascii?Q?ZxW/T6BdPMhGgktZvXgM6Whf40zgjtmH5LZFfnZW0zhcvNHaPlNbXEvAmwL4?=
 =?us-ascii?Q?+CuFkyDTDdpsx4dmB1oBkrdZip6NZCYqGJlVftF8nwSRWuMVDCk2c6XWoxhm?=
 =?us-ascii?Q?ADBkocYI6HWpyn8HlMCsqEt0LfpmxNQjA7p2ZrrBliw3pYl7RAkZApTWFbUq?=
 =?us-ascii?Q?44Dv8jHT9g0Q+zBFw3QFu3zTEKo2K8PqcCxOdwEip7uzLq+NEwK6BxVCUMdz?=
 =?us-ascii?Q?xo4fBWOivC1+Pj+vY1aH6JRrMyl776U5UM4+2hr9zSxy80J3dSES3lOXsNtq?=
 =?us-ascii?Q?wB8S/BN406Puw7NhwNBAEyMGBMIRvAEXb9K3NDhsQkSjgTIc8UZX0LRcRImK?=
 =?us-ascii?Q?oAWWwkl7MDzIUo90XcPsWAIVGrWqDjuT6KG9yTmXTp9/Jk7kQ5GNZ7rHS/Yh?=
 =?us-ascii?Q?QpPL/1T1l7sHFn+tvnaO4uqoMHtCDnXqRrxrTYFWVhDKAqe0RkRHq0pX4dXi?=
 =?us-ascii?Q?sRrxkvCj+hI8mIrRHV9HAbcbzVwbpLWKFBf99EGca+/o9oIhC9Ll26wSgAIV?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b633a4b8-3dd7-46b0-96c1-08dd3ca141b9
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 18:02:24.9252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xTZgs0u24Z5hxqbJUKDBxD8eO4rz72A+zAn8kDFZFahFz1DaJ+1hrdSUa2F7V+93XNcA3CDMIQDpdBkWlm25Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7323
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

On Fri, Jan 24, 2025 at 08:50:23AM +0200, Badal Nilawar wrote:
> The Forcewake timeout issue has been observed on Gen 12.0 and above. To address this,
> disable Render Power-Gating (RPG) during live self-tests for these generations.
> The temporary workaround 'drm/i915/mtl: do not enable render power-gating on MTL'
> disables RPG globally, which is unnecessary since the issues were only seen during self-tests.
> 
> v2: take runtime pm wakeref
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
> Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 ++++---------------
>  .../gpu/drm/i915/selftests/i915_selftest.c    | 18 ++++++++++++++++++
>  2 files changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 9378d5901c49..9ca42589da4d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -117,21 +117,10 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  			GEN6_RC_CTL_RC6_ENABLE |
>  			GEN6_RC_CTL_EI_MODE(1);
>  
> -	/*
> -	 * BSpec 52698 - Render powergating must be off.
> -	 * FIXME BSpec is outdated, disabling powergating for MTL is just
> -	 * temporary wa and should be removed after fixing real cause
> -	 * of forcewake timeouts.
> -	 */
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
> -		pg_enable =
> -			GEN9_MEDIA_PG_ENABLE |
> -			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> -	else
> -		pg_enable =
> -			GEN9_RENDER_PG_ENABLE |
> -			GEN9_MEDIA_PG_ENABLE |
> -			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> +	pg_enable =
> +		GEN9_RENDER_PG_ENABLE |
> +		GEN9_MEDIA_PG_ENABLE |
> +		GEN11_MEDIA_SAMPLER_PG_ENABLE;
>  
>  	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
>  		for (i = 0; i < I915_MAX_VCS; i++)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index fee76c1d2f45..889281819c5b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -23,7 +23,9 @@
>  
>  #include <linux/random.h>
>  
> +#include "gt/intel_gt.h"
>  #include "gt/intel_gt_pm.h"
> +#include "gt/intel_gt_regs.h"
>  #include "gt/uc/intel_gsc_fw.h"
>  
>  #include "i915_driver.h"
> @@ -253,11 +255,27 @@ int i915_mock_selftests(void)
>  int i915_live_selftests(struct pci_dev *pdev)
>  {
>  	struct drm_i915_private *i915 = pdev_to_i915(pdev);
> +	struct intel_uncore *uncore = &i915->uncore;
>  	int err;
> +	u32 pg_enable;
> +	intel_wakeref_t wakeref;
>  
>  	if (!i915_selftest.live)
>  		return 0;
>  
> +	/*
> +	 * FIXME Disable render powergating, this is temporary wa and should be removed
> +	 * after fixing real cause of forcewake timeouts.
> +	 */
> +	with_intel_runtime_pm(uncore->rpm, wakeref) {

We probably need to take the runtime pm reference in upper layers...

CI is mad around runtime pm on selftests with this patch.

> +		if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 00), IP_VER(12, 74))) {
> +			pg_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
> +			if (pg_enable & GEN9_RENDER_PG_ENABLE)
> +				intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
> +						      pg_enable & ~GEN9_RENDER_PG_ENABLE);

We also are facing some repeated GPU hangs on selftests with this,
so we probably cannot blindly disable here?

I know our CI oscilates some time, but when different attempts gets
same results there, then we really need to believe it...

> +		}
> +	}
> +
>  	__wait_gsc_proxy_completed(i915);
>  	__wait_gsc_huc_load_completed(i915);
>  
> -- 
> 2.34.1
> 
