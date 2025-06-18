Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F04CADF619
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 20:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC0A10E490;
	Wed, 18 Jun 2025 18:43:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IE/neG1X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC3210E29D;
 Wed, 18 Jun 2025 18:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750272204; x=1781808204;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=URDU4hesxcKp3bQRaGPeNjsuxJ4dG4hq0nBwQFgu0ts=;
 b=IE/neG1XLUO2EhYdYevQl7aoAQpSjT5ggZa7TNWPxUcQljxVjhasLmRP
 triR2imuWIpgz3vkD6QWcWwOqX/nEYBuhmoyL1CXKH8kCF8oL5Mm3UPVC
 w1y1nS2peZsgkVEdEk3ctQnQiyBmoWq5FnBG0eY+fPoW+0CLIqn6ZfyAn
 4gbIm2dsJRnDESYcIVRzvw5sCYluS5FtW25aggr2HnvS0r7FGduZ809zP
 qKLooSqRQzEPRZ5xex4j4wN0AlV+iTG0z+Lw9saoRjbfkMEhjMrovNxM9
 EHecuSGbJ13fRp02tZOXAckHw4diHUEFjNO3+8yOuXq9WkQH/tAh1IfQ8 A==;
X-CSE-ConnectionGUID: 3VP8mBdCRT+GxwLw/sLAuQ==
X-CSE-MsgGUID: G5Mxgkb5RpCmkXZmdw1omg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="40120295"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="40120295"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 11:43:24 -0700
X-CSE-ConnectionGUID: 6OqcRndMRdOJPLGz++qawQ==
X-CSE-MsgGUID: 7euWKlhQSpK3iGjxt8YWEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="155784121"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 11:43:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 11:43:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 11:43:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 11:43:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MGQXwrqegpU0YgS56VoZ2sPEtrsnXDy4kBylOFM3I0goh639bBuibixq1BR3cgX86K+rmQDzOhcXn68alkEKK6RUXhIB899r85239Kb4Qg4XJTWByIh3vNzPqm9Ur3m/K3huU5MM/uWH1IrMH/Jxd5VWzbuWNZcakZGO6jJdzbjgfg760nv2UqpnYkdWyPzPINk9rzmzyKiaoGQ1Z5r7VErsEeqAQlJf9h/37YPpjTaKVp6ViYgyd9f4VWyHTBjjtCCVU4YIOtURaNY/k5+wpINopEUpyZV3oQvMkw03Fi9b8DLBR4sUZvHpaQVmocgNUlAHGPIUjExNz1FYaUc31g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbYQ/p7GjTwsh3a0acPiLp3J0N5nXX8ECxcktW9u0eI=;
 b=YXnH8AQKJnMqZ1XkRVCZAvoZiwEvxNVTxK2SiKK1K0ceZxHtI0ReqY2uRa/qMB8eK/ZC0sb2wuddET70Lh0g1SrBcSMT437+KG68yBLrlUbEESIhK8c3Z+Ay6iKmojoV3TDLvLFkPccdBC8+WoevFviBBSE1jWD/Kzqa4Xew+RsYpXhe/C4Dj0QOYgFoj37YRo015e6wVfyNZXOVLzBuCH8iCbq5EupL4QNwb5oDxICHtuJND1XdXkfm46xl6KRmn/zN+Qhfl/ZoD5QbHLLYEwcw3PK8Nj1dh6TeylTEJ5HgWSnPrpCBjXojFIvz/uM7vM6hGfL62Ak3iUYkbBffsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6715.namprd11.prod.outlook.com (2603:10b6:303:20e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.18; Wed, 18 Jun
 2025 18:43:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 18:43:06 +0000
Date: Wed, 18 Jun 2025 21:43:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <dibin.moolakadan.subrahmanian@intel.com>, <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/xe/display: read PCON capability only when present
Message-ID: <aFMItK__ToPsUTz2@ideak-desk>
References: <20250618114553.3974479-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250618114553.3974479-1-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: DU2P251CA0021.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::24) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6715:EE_
X-MS-Office365-Filtering-Correlation-Id: dfb79e70-b862-4c17-73ee-08ddae97f69f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SZ0qhBS/fys6CblceaPToHBTMnZJ5aQTF09mpHfmUkG5454BD1qnsrZyWL7u?=
 =?us-ascii?Q?tbb2EZtEqfYmImbg9FoUC3Up2e127ztXrRxffv8Wsky4DlOUipwNDmWH9T8T?=
 =?us-ascii?Q?JqSsMYPeHNV8qNjEuikJZACDr2ichCf1dZwJKOhKCZxET6mhIdOql2cQKOPM?=
 =?us-ascii?Q?OtwbuDxGuAjJIEOXoTOJavh7dpkW0wifuv1o1/AoXHzEqpWK5OGR0fl19nxE?=
 =?us-ascii?Q?kIgxCTcG/h1Ru8FAG7ulctfxzDN9wpyxhrY78I7turPxIPIdO8P48916eNQD?=
 =?us-ascii?Q?Y9SwvGVRiXul/jZOsXrDxLOHaNM0aHWrAy4RW89zqAb58LEz9EwK5jcjYawO?=
 =?us-ascii?Q?hUebfhlK1Is+eCRTGXev6nQMj1dyExhpt4Uk8275zeDnw0ZM4QDYLbIZnh9Z?=
 =?us-ascii?Q?aI6znJqrqs01VGXTOlVvm9aWthAZNrlCtAPxGshUUNPJOPcJ3FRFHNMGSYe4?=
 =?us-ascii?Q?R1qPQvM09bRPs1xrwde6J+rjI7Wxe6HupVxMQs8lxqqNNzztenUQMfwrZd4m?=
 =?us-ascii?Q?jGbJym6f7QDg81cYSScnYQbhlyIKCi1HqNmyFME+VtJ3OhLc1JPeAPLmVGiN?=
 =?us-ascii?Q?6KOL0aCgzcXL7UkOjCJmqQ8Fa4iszPmJLY9gUlO176LMW3nJ1Bx9/Mh/qOBH?=
 =?us-ascii?Q?9+IzgVyaDGQYwq157nkABgGZwyjCKAoJGJ/zxKUlxjwiGvPhOjeRR4X0Ia6d?=
 =?us-ascii?Q?LgmXuRuS8AJbjDCGabtQ/Oj+zZpA7vcmwGyMHpRR29R27DOqBB4z0r0kynNh?=
 =?us-ascii?Q?iz9GpgP+UoWj2dSP+OF8nAoxZg9k51uU5O5UVcAsdnp1/rZRhnwiHHvRLxOm?=
 =?us-ascii?Q?CAnlslYSJ4QVP5LRQCLAWwFB3ouHKMTqH5u235XDLk9/LOGF6U1gmSnM4oRa?=
 =?us-ascii?Q?o+uC320E91PVUq2//SmOknDiFIBRwp2udbOFC5NVDr/gg+m79aeilhcrWvx3?=
 =?us-ascii?Q?b37zgWdeIaGL8iqJd35hH/hTywpWAkmTbGhwk0DUru8455Kus8D/DTgcEgN1?=
 =?us-ascii?Q?B9rhY9JX3Hg49HZfwxf9zcBvkaBJtlh93xyvoXACev3R3f5d9Ex14bmhQ22k?=
 =?us-ascii?Q?zFReqJEwTa/3T7VSOakecboCIzagKWX9gJjeEhAoWJNJb8VAgvhJnsprFMoU?=
 =?us-ascii?Q?wMa80qfaAqtgMh1XW1KJ6gqwaSaQC9T5C/pnjz85RVggP6bHViLDSIMrCVWG?=
 =?us-ascii?Q?H2rAs7/5v5Uh0rFO2393bGukXLb/UVtFDVH6YxYPPF1MB7ZQAHi5ds+19fRM?=
 =?us-ascii?Q?Rl5n+xbfWxbb2IV7UYswfG6w3v0Ov0PlOA6gj5tX5+SAx8CQHqYEhHFJdUO6?=
 =?us-ascii?Q?eyKxKXmUi5xUJ3FiGepTOJ2W3o/dEHcRJabUbfUFyyg6v8h9m6ye8pGPUUeQ?=
 =?us-ascii?Q?/6TJOPiKtu2DaLU/4RXaVETEP3q5GRT/b7HDwWX6Mz64fJ7+jUUtSgXRQHY7?=
 =?us-ascii?Q?pf4d0ae3ykE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LALB59OAHoFkqUaWX/hwcljlwpTFAqVM9Hkn8gGsRhAh17FPlI9fqgGKXb5J?=
 =?us-ascii?Q?sYPKAPfoX2t51Dl/RdKVOUrIQEUrKkpnwZi5X17El6hLQ11a2mb4oD/3lLFF?=
 =?us-ascii?Q?6068LrZ4FBM7Bz4xYHcEgg6tc5u5njveQihI/NIu0CLJGbFs1wGKUJMYgND6?=
 =?us-ascii?Q?YMAnuJGNzMaFGvcQgei4gj2W+oV0sK7jqR9OnXm7eW+wdHDMyf+hjFfmcJTP?=
 =?us-ascii?Q?DTSyGvEzXiZdkGMWQ4pQ2FBNLVx+Gt20SvMDCH7bJNpa8/iCedd1qzj0xi1Q?=
 =?us-ascii?Q?hs48hDMRejUs2dZw+Od/tbzmXIP/fDBN6GIeCtVoZsklZd7yttH1yy7qW/uz?=
 =?us-ascii?Q?daaYlinOPsd6AP6fEiWJhRG/YRb+vrkbAjbqMZcxPWg9gCAPDkumAvmmKo2G?=
 =?us-ascii?Q?W97A5y1EsyLyb0hSFjmTAA/SVBZkrnInlMAzi7M2J9pSRr5YNhTo8m/xnFKe?=
 =?us-ascii?Q?jmn49ujyqlsRYW/DmCmrXxigq8AN74M4HPImLqYsvwpq/VPXuKglEdE+/6PM?=
 =?us-ascii?Q?fMAPVvRSzDmk11eYw2roBoZrQ+7Oobm3LF+ORBsv0vOuD4WMYaD48c2SzopA?=
 =?us-ascii?Q?n/eQzvRT3lIcrwkxFpQqYy1AlnOWI0xTdx1Sg1L5IrCUEwD2MqHMefBsIgDS?=
 =?us-ascii?Q?bf/7cudYsByyvMjd0DQk2Vknq0WUZJEUDGa1LZNYwU0bBfRmB4w9GTqZe0KS?=
 =?us-ascii?Q?2KMKKU3bCxN4Qy2fWa//pZ7gi2zClusFcVFBAnwl5Nj2h5b0ka476NvNNTRM?=
 =?us-ascii?Q?BBpZiApr3rVbAoYHkA7B9gSMyrNYA3LR/5WpPnfZIKwr7c4OXeeQ4UuzFPYj?=
 =?us-ascii?Q?Bg1ADH8fgQ5ELPH7e2jzNYYyyoaAFySecm45Q2BlX7J/+7hmMkDArSssqixx?=
 =?us-ascii?Q?5je2q3pNcVwc18sRqEYjD/gfAsh5Fcc8iBfR3Kqi8xVx4hyuITcFnZvI8Wsh?=
 =?us-ascii?Q?jiK4IawxM1N6TGsO69A7LjgELwzL0N4PLqWfcXDEKKcnfG9RIw0sUymviNXr?=
 =?us-ascii?Q?IeuqSDqYZ02c6stQyfOLPdM2Y2Jsp+OQ9ORmqKHPpfJv4e0wKHrMdG05h1pZ?=
 =?us-ascii?Q?RGUJzlVNyIszsFI1JyYhAGUhk2VncL3XYAtl96zCQ5N8xrOqlG42makyzshF?=
 =?us-ascii?Q?X3LQ6Yu8/ryNDH/u5H/1ovvtmlrhp5f2G/n4JDBn1caYyu2syFBJDqtrXeyF?=
 =?us-ascii?Q?4jo4+35yBgy9pIpYv3qNN0UISR200zgV80lwbLTOHoOO3RJjO/aIh4vOHvtx?=
 =?us-ascii?Q?kyNUf7c9O+Sj+keO/66elI8jpH2hkW35x82vnVmcTtBm//xyb0m+CGLYVw7y?=
 =?us-ascii?Q?1SS9YfV7rjZRmUsa2HUmpcEFcmhU0BTbHJrw3I+3rvmYqcwnWambw1VY5o6b?=
 =?us-ascii?Q?JmarX4j5bhtFLVJVKb621A9RlKexL9+tWgafCOaEssFymJlv3/eG+KjUtn2B?=
 =?us-ascii?Q?aaO06exmopzQCGYuK9zOeyFr9cY4ODxBkE5/lc10y0heeMXDKPQRD6/USxS4?=
 =?us-ascii?Q?KMjebKJ3FQxsLNkCAo855UEBxCf0gYFxrLJyC+gVXe3Y+5uYKz/Ft2EkQZQ2?=
 =?us-ascii?Q?inxTFQ8mTyQ2BNrXB6zWsmM3ttOkvIKoXN7M8O/e?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfb79e70-b862-4c17-73ee-08ddae97f69f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 18:43:05.9441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0pztcPLrJa8Yyhodw/b6ZUL4EkPnxadF+1Yn08SDc73SoGx36Bq8k6K/vGDT06qG5UwMju31oC4FBLG7wOX3LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6715
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

On Wed, Jun 18, 2025 at 05:15:53PM +0530, Chaitanya Kumar Borah wrote:
> Read PCON capabilities only when it is present. This will prevent
> spurious DCPD read failures.
> 
> [drm] *ERROR* Failed to read DPCD register 0x92

The above read failure is due to the sink not being connected during the
read access (in some Chamelium HPD test), not because PCON not being
present in the sink. If sink is connected and its HPD is asserted the
read would not fail, just return all 0s. So the commit message should
just say stg like "avoid reading the PCON capabilities redundantly on
non-branch devices".

> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 277b40b13948..8a1c2a37a56b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5681,7 +5681,8 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>  		    intel_dp->dfp.max_tmds_clock,
>  		    intel_dp->dfp.pcon_max_frl_bw);
>  
> -	intel_dp_get_pcon_dsc_cap(intel_dp);
> +	if (drm_dp_is_branch(intel_dp->dpcd))
> +		intel_dp_get_pcon_dsc_cap(intel_dp);

Clearing intel_dp->pcon_dsc_dpcd should still happen, you could move the
above check after that happens in intel_dp_get_pcon_dsc_cap().

>  }
>  
>  static bool
> -- 
> 2.25.1
> 
