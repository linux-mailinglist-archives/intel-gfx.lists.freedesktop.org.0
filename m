Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30176BB35F3
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 10:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8833D10E0E0;
	Thu,  2 Oct 2025 08:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9eqDXbi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4A610E0E0;
 Thu,  2 Oct 2025 08:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759395546; x=1790931546;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=shGW2p2hiHQKNvlwKLJG4zn52zuPsEVmOuAg+ZOVzj4=;
 b=W9eqDXbimLEeA4MxB1JZaJT6p5BBUCKrWiAB34ApiLY8ApW9eGaeakNY
 d3xm6Ma034XYcxC/Y6TCvDT1xjL2r8Q/sZ69OKQ52kBfsiQtK5xsyMpgt
 G0BqUMq7PHv/grjetPjBvPZy7+yWLACNeAcxQcCnIPB/eZccf+kyN8672
 5MXvq+jKdzGf0IWqVhZXgyRoJv88A7Qo+RXe3x4tFmFpOZyYMf/p2XhTP
 zcrRAUzUkCcz8Oahn2wwzvLvraiuMRm1zeeKfbA7MDLkVEaoPaDmLXxH8
 ug/0UuARLp5dFi+6blAjk08/tZpKerHVb90VFlgbRmqte/9GpFpvu3C+4 Q==;
X-CSE-ConnectionGUID: WimIkKGcRHCD0yIF9BbZLA==
X-CSE-MsgGUID: bR0rr3riQY6Kt5s7XzHpUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="79327818"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="79327818"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 01:59:05 -0700
X-CSE-ConnectionGUID: sbwq1eKXQw6HhSwylovSng==
X-CSE-MsgGUID: VIcIHqwFTq6OioqQ9dS8+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="178954032"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 01:59:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 2 Oct 2025 01:59:05 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 2 Oct 2025 01:59:05 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 2 Oct 2025 01:59:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KnSkFNuaWERrWRkladYjFHgaU+ZLsHFi+WPBrTpG7wljacx+wGjkmABLU/86xbS+dcFginTTngOELXZfRQTsZGDLfvs8N3QgMvFFKtrq5gCU1j+n4N4SWgJk44nZmwuDsOwmCjC0LhVyo2rajOYot89Uk+JgEvoe7B13axDrXkbgzodsl4Ao3QaO/fy2OFwx4LAX0DwbSVrc+C0q9n/XCjlnMgQQxaoZvqWHRIPMWOy2ym8ZixxSXzs/xcnto1am8muHLj4qVW2JMDNb4nnYg/5VopX0YUZuTViPNbAllZ+l9X+9R2EdC+uHRkIadc/QrNLug+y65Rs0hZ7IHGVZGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ES8j7sUVVBtLG7d8FR8YuxoUhrzN+yZmoxNp1qCZaw=;
 b=fU0yA4fX3SvSLv0oqgMpiFF446XO5wgNZJfA337EJ1xZRihSP81La74/UIwUfiYXBBOgpwiwBGxSQRBPNXCRJyd4tyrVhuBXc0+ClTJ3ztQ2aE1mjaBefKZTOFsspnTLoxo7i467u1eheBFGYVgJ2EfeR09WdAXlp2vUTgMVlyu52EzEtwuDfpp6qEKzqkH41xt/noUNIGn+YrmUp38v40TbUDtRnb74q2U0cyk0z1LWtKJ50VjrNODMx+deZNfe4htZ7GEixm9yPJFvOAyTzpMi+tlZf+TUA2g7HcbdDXQgIZ0Wq7z5FlU2ZFTfhlHvALfytkea3vINsqXpDj6/uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB6700.namprd11.prod.outlook.com (2603:10b6:510:1ae::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Thu, 2 Oct
 2025 08:58:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.017; Thu, 2 Oct 2025
 08:58:59 +0000
Date: Thu, 2 Oct 2025 11:58:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Extract separate AUX PW
 descriptors
Message-ID: <aN4-zYRmBz1xWdLK@ideak-desk>
References: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
 <20251001-pica-power-before-aux-v2-1-6308df4de5a8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251001-pica-power-before-aux-v2-1-6308df4de5a8@intel.com>
X-ClientProxiedBy: LO4P123CA0515.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB6700:EE_
X-MS-Office365-Filtering-Correlation-Id: fe14b536-5b47-4c90-0dbe-08de0191ecb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0kL8wbYcVigPnMfy4MfhyufQnHs7M8OyXKDRabfx6KfBusP5la4YcLKyraxA?=
 =?us-ascii?Q?935/Ny6mgEVbVnuf/iz/PzWPZid+EoMUgsuThN9+kTR87DVd8e9lSOWdiP/7?=
 =?us-ascii?Q?5sLc3ItA2N5m2jSxp3X3mTU1xpO8fNV7A6W1yawEnqb5H0jr5FHn+89bmWBA?=
 =?us-ascii?Q?D5It5uLLZuS9xpA0Iv3ea3lXUJnOUaFzS5uMEbjBfwOoy+FEPBKUMiV6LS8C?=
 =?us-ascii?Q?mmOm7MuevkrBQWuuGS//FpzREVFMNWa4C840bMtWG7Oxfug29REWI3OVzixT?=
 =?us-ascii?Q?T9Fj8VnFfbM+JVPm8WXZiDwL0FQvK2UTNSuOL4TpZuoFcIGoRvNXDv3uSzwE?=
 =?us-ascii?Q?Eblk0fnFc6xeE7INyYlNPD7fl1EV3RDF16sbpVv/8EeW7CRClzpPkAq7yTYs?=
 =?us-ascii?Q?IYSubeYMSgkew8YDd1If9yMSSGzMz0KhHGMxdYvjPXoaYc/DkheE8y4eSnp6?=
 =?us-ascii?Q?JN0t6PT6YIRms0peQwGMAszRcfDdRJX0du5K2vMYUGXARMOBAHMvZZ0+rEVy?=
 =?us-ascii?Q?Wp3G5FU0XXSycZFESfIUpKqtFZeAH9OEuAoCoPTBRQBsE5/j1BSqMy9KVf/p?=
 =?us-ascii?Q?QNNRqK3K2U7NcgPwBWKyDbqETGozL9tsBpKN0QY1pNLaICoHvl0yfDbKdLRs?=
 =?us-ascii?Q?Xm80m52A/iNRfFvGIRveUfsDeJNvpVs/XNLUQFaJeeSiyfOV/Zjy2jIJw1yg?=
 =?us-ascii?Q?Xka6kUuNVcwmbFxZqHO3RlUPoZqWWallbbQycH7mYNdpH8/xyQyI/Rm6Jd5a?=
 =?us-ascii?Q?/n81gxP3jDwYb/KbldThHHrqZAS+7XiO+Dqub4Sw18Xld2NcsKDcmNtb0X/0?=
 =?us-ascii?Q?jSRyOhpekBWK27g/VFBvXmrtHomBDWXLVS3PfYoxurGgLTXebACYtJZddnbr?=
 =?us-ascii?Q?Yr8AwFCaVSfm1vfBp1YaOvWU2tykUV1FBE63Hz4lOL065UUuNzuPemQXoBS/?=
 =?us-ascii?Q?1BCDjAZHfKfwwb41B5QMyzOEy2DpbEXxTDAEufZcBxplwZUvEDJDpamsfjwv?=
 =?us-ascii?Q?mqVar4NeMBccsKmfzw7scVdSKCRrMBOA/c7owCXy46YkPxDVMz8yHfb1kaQ0?=
 =?us-ascii?Q?Zbp6Tgx7V6DRcvKpqot0NFo5APEDA7LtqOFwN9SXPxV2xjqBQiwfKPgnx0c8?=
 =?us-ascii?Q?fUo/z5Gbf4vqiB2lmmwaIXoV607YgioxNQwiup31iya3rkungHkWuXHn6wBk?=
 =?us-ascii?Q?bwNYxbSfytpKmkUMG4cKzSqXPsXY/ZvqKrxUVsw7DqUMLcx+Cm9E4J+PqIGx?=
 =?us-ascii?Q?rQy7lMwD2XV6CCFdEZ9Fy665g2cw9NqDP2CiEbWFRjJPGijeDu4+tzpg7h09?=
 =?us-ascii?Q?Od49SOA7qKPDch1gFACqPsWSS/cXR2odcyYnOsXBatrZkAqYpLiisyUYC6cQ?=
 =?us-ascii?Q?lTewA94iaV/mWaaEwMY9lnD3tlAOLFTGAjYhKU4aRbyC5UCskj/lZMwrSkfS?=
 =?us-ascii?Q?bPPUBu+y+nFfkVSm/5QPbZY4txIz+cVr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lBTBwpMazCVae0gQVme0TACS1ZrQEUzeXOz0qPrK7u2C9MA2cmYO8pA9jQmI?=
 =?us-ascii?Q?Z1QL5mkQKWVqMaPH80xk9i9ghdmM5cjgO4FCJAgsY40cMFqmD1fyNF6fNaIM?=
 =?us-ascii?Q?n7HvMxj6YtGCZwq1y2UFtcCZTQyJVHSdBINPQpudPJj+B2PEzdAWUqGoEhfJ?=
 =?us-ascii?Q?Ql5UcFsdNP7EfrhDFM3UVHW+WvoOKjT3GZat/UjWF1IZObfwPG/dYesIOxlS?=
 =?us-ascii?Q?UNfriz4gHr+wWytJcNRjh2H+sj+lRN+G2ERxiXTLqhhgLk/0UlXb8cLc/GuY?=
 =?us-ascii?Q?ZqoYev6m0yy5CuvRc8wbdkqb8DFkOeIhA8XSHXkTxQIh68QxubWCO/6G7Im6?=
 =?us-ascii?Q?Y8K1Fqr0cMaInaCgbcVvxQCzWvSZdQ2XtypigNGkDOMGdnsNwbP7r09Ry+3n?=
 =?us-ascii?Q?DzPYec2TbJsvNVE0Nw1R4062Lckoy1gU1kegkUYfc7O9LX2zpu57lF6BR6/6?=
 =?us-ascii?Q?Fg/SFuHyKD3y+T0EO/ZB/MIaif0DKVSx9YvXtgFwJkjHPREROguETma4HTJV?=
 =?us-ascii?Q?fa+d9N6jccecuY+l9wFJJGgoPBdurNY1xAl0ejJhJOA4VqZBlCtTNc+hE19Z?=
 =?us-ascii?Q?ztOdPjK8HsLno7+E6DoDdmxEXfvYuzfCPUv4rSwi1yLknIkX4MYkfuHcFfXr?=
 =?us-ascii?Q?7JZGdV57QO7ICI5LUi9ztk1Iuu0rd1kXY9ORYKUyr9dro7SRYmaZwhIkfouQ?=
 =?us-ascii?Q?xIyCakB+g0ae2NQKZmap3jE1XJLYe7sNGW3ZU1Z2Vb1eDHzy9jL44qHLTILx?=
 =?us-ascii?Q?HMzGu3RhERf7l33SQGO2SwZIl3/4pBi6eLdOBpX24i4zY8rTIxIU984uAvPL?=
 =?us-ascii?Q?gP9vpjkhz2z/ir9Qor6lbJYtzxCkj60un4sZGlGwSQwmZKASoJmj9sG12oFK?=
 =?us-ascii?Q?303k99gZompij1gH3phfiL0a3EP9fQsIlpl568LS70fNrmME6RoD1dTnPGg/?=
 =?us-ascii?Q?6N2VSTjQ4TaeqqHeXe3LhI9LCKarR4tuJd+ld9l0cWSoXi5HRLS95jWA3orW?=
 =?us-ascii?Q?hETX9PY7zFllNqgzSnUVmR+GJHiXZZayDwvloc2ZzAa0Du8LeSunSyHAcvrh?=
 =?us-ascii?Q?hqCPDqql4aIe9KD8xy5GTsOtKAcARw8EBYAPk6A4ydgq5h3qIiNdD9x75csW?=
 =?us-ascii?Q?9ocj3xWjSXx9WtZFCx8xVzSxeBFiCYrCahdMiyJoHcZuNJLyKzIkE5nrjP0b?=
 =?us-ascii?Q?IG0VVuaHfMlsnDjYN9DdS18Uf/nu2ASHkI9/lH9Bj5+DnlqsVtxUUJ/rLctc?=
 =?us-ascii?Q?QPS3Lj01hMKCTYDgIVdwRdTtFS4AlKxhnSabdTHjHJv+3HbzhQGkkXyUKBAl?=
 =?us-ascii?Q?ZD8r3lcelcjU2gamlU+QdTjt383M9TFsE9uZGGRd/TZs0m+mNAZMPDXMa3z5?=
 =?us-ascii?Q?0BgW+mC1WFp4oXxbfITRvMXHo/mnlMO8y6WBCXNihET6tbI3TTgZkyEPfUl4?=
 =?us-ascii?Q?E+tV7w/nv+ABEu34PJllrG9guOapYoN340VIOhsq+fvsWdNYfQguUNTSOA7J?=
 =?us-ascii?Q?nyJWPs3p5QmYhorTiTavbOCDCoVFRYXXhqQyp0f19lUUCocgqhMvquPu9G8m?=
 =?us-ascii?Q?UMhaHNnJc9dAUxbgx32VawqUKzjH2c6RqZtKlGJFYJDvckSiYUkumCHEE7s1?=
 =?us-ascii?Q?+/Uhus1KdSDo+iuRRhQ/7lvRBciSF+vWjG90Ej6Dt/Le?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe14b536-5b47-4c90-0dbe-08de0191ecb0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 08:58:59.2460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +FxbshuUGU3OD+O7obeHM5S7tS0xelH13lJ+kk8dXodrkJdQEMFhEsbKBwMwsAmoPIRc/pA2j7k2hnl7CUZfaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6700
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

On Wed, Oct 01, 2025 at 01:04:48PM -0300, Gustavo Sousa wrote:
> In an upcoming change, we will fix an ordering issue between PICA and
> AUX power wells for Xe2_LPD and later, making sure that the driver
> acquires PICA power before AUX.  As a preparation for that, let's
> extract separate descriptors for AUX power wells.
> 
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, this also unifies the xe, xe2, xe3 (except for wcl) aux
definitions:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_power_map.c | 26 ++++++++++++----------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 39b71fffa2cd..e89f18b7037f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1516,7 +1516,11 @@ static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
>  		.ops = &hsw_power_well_ops,
>  		.irq_pipe_mask = BIT(PIPE_D),
>  		.has_fuses = true,
> -	}, {
> +	},
> +};
> +
> +static const struct i915_power_well_desc xelpdp_power_wells_aux[] = {
> +	{
>  		.instances = &I915_PW_INSTANCES(
>  			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
>  			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> @@ -1534,6 +1538,7 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xelpd_power_wells_dc_off),
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  };
>  
>  I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> @@ -1583,6 +1588,7 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>  };
>  
> @@ -1677,16 +1683,6 @@ static const struct i915_power_well_desc xe3lpd_power_wells_main[] = {
>  		.ops = &hsw_power_well_ops,
>  		.irq_pipe_mask = BIT(PIPE_D),
>  		.has_fuses = true,
> -	}, {
> -		.instances = &I915_PW_INSTANCES(
> -			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
> -			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> -			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
> -			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
> -			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
> -			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
> -		),
> -		.ops = &xelpdp_aux_power_well_ops,
>  	},
>  };
>  
> @@ -1714,6 +1710,7 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>  };
>  
> @@ -1751,7 +1748,11 @@ static const struct i915_power_well_desc wcl_power_wells_main[] = {
>  		.ops = &hsw_power_well_ops,
>  		.irq_pipe_mask = BIT(PIPE_C),
>  		.has_fuses = true,
> -	}, {
> +	},
> +};
> +
> +static const struct i915_power_well_desc wcl_power_wells_aux[] = {
> +	{
>  		.instances = &I915_PW_INSTANCES(
>  			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
>  			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> @@ -1767,6 +1768,7 @@ static const struct i915_power_well_desc_list wcl_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(wcl_power_wells_main),
> +	I915_PW_DESCRIPTORS(wcl_power_wells_aux),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>  };
>  
> 
> -- 
> 2.51.0
> 
