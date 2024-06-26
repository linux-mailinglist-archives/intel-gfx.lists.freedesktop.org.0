Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9712918DB1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 19:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0670F10E988;
	Wed, 26 Jun 2024 17:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJLA0LO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305A910E988;
 Wed, 26 Jun 2024 17:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719424692; x=1750960692;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kwmQPxg990ptWblS3kQeIJ4Cnpr85j0heWnBcmk01uw=;
 b=AJLA0LO18oOKrwtK76fQqUazHUbc7nZF/CisPiILD+mDIp9vRiPNhnnz
 sSptX16Yk/FnRW+ZMmpC8Q239Y6Y7p/3bh2VOmvtwKToCMg3ORKrU7BEE
 XikiaaFrR0RP4M6V1YxfFZJXWjI/gUeTcn/O3CFm6xHg7A4FWg5i0e930
 Fea5Gt89BxFG9VH74JoTHbpdo6nQo2ByJrPcHEvSQK+5XSpTOf0+7rQwE
 OQ2QuTzdrE+s0mgwiPz0v2C5fDPpLyM2Gx3v8wdVBOxEym7FQzQu0YWJP
 o9SboWA2Ec+la45ngEwHkkenQFAoNHrBlDNBnb0y7OBl9nn+kuREgJBz5 g==;
X-CSE-ConnectionGUID: Rmqnx2urQWiHlqB/qRep9g==
X-CSE-MsgGUID: Q4w5Gze3QJ2hbFKqQFXVAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16354196"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16354196"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 10:58:10 -0700
X-CSE-ConnectionGUID: 4DyC6EtMTt+r2r4bE++oSw==
X-CSE-MsgGUID: nMfD6+0mRfGbAitSDYC1yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48442812"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 10:58:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:58:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:58:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 10:58:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 10:58:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=moQVn9QU9bz3WWmZpi3OkdHT2Xsxx9Y5un6VYNasaErJsL8sURzAzQMBw0Oy/2/VqfAPsGXrt/ze06uzr6ecPLRk5eSJdvpF7+tujg++CKEZt8vRFDpGB5Trlp19DQoMRYb2blQagVyTlnr7N+wI1sGoTViXwpWVOdyWzxeb7/ekOzjjKegrbHTFLF89MrYpdVOsIGPVcr6mGdy+VQ4GQ5WUnFCcfKKBDTi4slHlDlVGxlWJVKDdNSOCCGMxZ/zizO86TlDK/c7OmzfprIB+FRqxQ/WsuKS185+DaSCfunc2T5lBhlwC4gWcZ5ZJBDYGM8+IowFbg74ICeDG/o8KsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vNav1oeMzcBYMcAahCOsFmbH6dxWYxq3ineOxb6DO4o=;
 b=lpyXcWwXluW5ntVWXpME9WgcSS9FRLURBni6mUSIx4yTjfMrIHgLCpI/UrllLaz245wDNn98apLTnpNR7w51yFF0ThJI8ecmlBZmbZOZM92o2O3xjMIz75Wf8KKdUBR44dL+ZE29ZjvjrAPmdl2UnZZPOfK8RDPZX9x9PAp20nimm3tRRC9fkGo/Qy7YaxR0whl9ctEy/mneZChlbgezvh8LSblO45YyfAoI9O8lb5nCHTvljCClnKCWfaR8WAtMfgJqrwQUnhmHnjkmL86NxUsOrOnwaC1DurhIL3ZgnPo542UMsPyOycYLAvAg+dlNf58+YRjhiAqlHiDhtRSFsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5766.namprd11.prod.outlook.com (2603:10b6:510:130::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 17:58:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%3]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:58:00 +0000
Date: Wed, 26 Jun 2024 10:57:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
Message-ID: <20240626175758.GA2906448@mdroper-desk1.amr.corp.intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240625202652.315936-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR07CA0098.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::39) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5766:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b308400-40a5-43e8-de80-08dc960984c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?i23ND8ou/MU9NniJ8PC1RTn3wlASNSsjCKJrrjUnlL/KhpWUs8xI3Bt0g2nh?=
 =?us-ascii?Q?228TqqDvPeDBXd0pNOKfdX35QNPK/sAExmzRovAgFRbdyvTF8Z1CYabVmghv?=
 =?us-ascii?Q?jOGs+4HoBSUZ6Qzvhoh5nFJgU0C690B5jzlCEIe5eqSM3cK46M0JYi3Q5IUM?=
 =?us-ascii?Q?kxi5arK7X7T3QbTxLM/Nygvu437//4A6yrwMsT5j/gOeMwIcTSHfb4MHjlrU?=
 =?us-ascii?Q?fHHPBCnYLqDgPr2HkZht/QaST6cBe3vw0J4/+vd843TzWAN25/+FAB3l8zDR?=
 =?us-ascii?Q?eV/kV5sQvziIbhESdrgidFvn29+RlSTqIEW2NL0+v46TmX8r+Bux42ZUwg57?=
 =?us-ascii?Q?RIR99c9KC1ejApQqpiGG7LfEJf5ua4pplDb6xKko6JCMOKOpzXbqXNmemHYc?=
 =?us-ascii?Q?JweRHniWpXuTTJY+FsAL1byGq/oikM50JNouc2fNdzfXjJ5HmfsynQ2QLIdw?=
 =?us-ascii?Q?tcdYL39hUhl/fm0beK2InWYpJZsJogoi3LoBg0HQNcw0Vw6z6K42YMUpD50C?=
 =?us-ascii?Q?s9WsaqrLyA7roRs0SBEB/HvjIOI9ocbLFo7xssJ+B8QKM514XBaoC3Wux3Ng?=
 =?us-ascii?Q?UWEGqfRKDu6sDg64trT8n9YwwCcHoopai/Aj411f8NQsX1aUPdPzB61N+4wT?=
 =?us-ascii?Q?kSPvzXvrbPmbkziDYCIiBexZ8pKQLcs7dbYxf0qD7e/w8YHQydUaTW295pzU?=
 =?us-ascii?Q?sL+ZvhAlRd4wiNZSArt5Ab/uKXvDIV2SElEhspovzRZxfW/yxhbIU+JpH68s?=
 =?us-ascii?Q?ytFxr8CczOG5gpAkJ/X2Jln7a0+SV/FjKcmO7S/wGb031TiQkN/thMXjcZk2?=
 =?us-ascii?Q?rR0Ytv8awXiyKGGOVMbXIjITeu2gC4wapw+QjWwMtJ5aJEHN1lOBqD+NZ2eY?=
 =?us-ascii?Q?tVAs8gemjm/PtBs6QAYaxplkNks+Wz3XB7CaJSI8rtWVxx3XLMiwmZVpW5+8?=
 =?us-ascii?Q?1FNAeWcBl7OSxBBDZNC8YmdYBvmtcHxFPzFFN6MJdzSDwqhjmgo0zzbHaE7e?=
 =?us-ascii?Q?nviOU2Yw/Jhf9d/gy4cPCOFyAwyy3s1rRECiBgU15JUCh/TsC4jVjBZ1tsMt?=
 =?us-ascii?Q?rzgnfpC8zppTiNLZ7vrZwRI5t+Fm0bFp4uYlCMKGcPKi2Ud2y0vJS9WylQLW?=
 =?us-ascii?Q?UPks6bWurk1psPgaKIFaXTERsTAyOT4oOjRc/jcD0+B8yqAykPsBNz9cW0H5?=
 =?us-ascii?Q?wbVwdVy1sQbBd44YSONoHI8lwKQIy95GpzjrV97C8j0Bj47VVDqhfG80lQVx?=
 =?us-ascii?Q?xRHUIdNyiufK2GWmL/nDsCSDmebfIV8/+CtByn8f3ZUUhBq+UyiNzGZtHuBB?=
 =?us-ascii?Q?mGmpJ+Vt2SqwfysPkkJxdnhO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a0LRekfipMCAffKgSchGSrEZhFg+B+FXrkD7lg3EXmzTdyk9kW+JNhTiOFl5?=
 =?us-ascii?Q?Qij5tkOViODbTlvXxkDmPrGVWSHg3p9CpviWB0vjsx+gS/VUtmO92gPYwdXy?=
 =?us-ascii?Q?Xl276h0q8bPdHs06yGFPvFqZpsWH+KVeJt3zZ7jhQ87dhoasPxzxT14lgGvG?=
 =?us-ascii?Q?Ve67+lBlsmYWC0GeQuMT5eUl66HbGPUiUkJq4WZQFt4lL738lYxzqkfL1ReZ?=
 =?us-ascii?Q?bNwFJ7OIDW5Y3TLs+FLpz5IerY7jbjquLSvLn2348VDkT//dOsyYR/wNAQUc?=
 =?us-ascii?Q?9uIkVACT6OTmpm6R7dU6UzBvS5fLTC0XTSn0z0PhHp+8mja5tNRZpB+5vAOt?=
 =?us-ascii?Q?cc4bmCI9S7q72naH6sh6iY63ZAs0W9q9cAWA5DPN48mxwXaecFXaL24hXyNb?=
 =?us-ascii?Q?oIupPZ16TwInvzIvidf5TbQYXLHkUVjPArC9VZxgHFu6/bYnfUBOg95fQSWJ?=
 =?us-ascii?Q?jabQRHSoD2izWU3IAdqtTa/rIJ16b3ypph3NaGX4U70+ZLUCoLAx21OfuC+5?=
 =?us-ascii?Q?SnM+eAoQFwq1WRuX28hIf/nS36MUoBE9yKiS09f1+hsyJFAqXCuXIwyudFJF?=
 =?us-ascii?Q?BuXeeqJGVjRGlUBCE7f3V4LnefTdS9t+70ShFR9bFr4U8P8cnATW/4RZAcnl?=
 =?us-ascii?Q?m6sMtdUwzq4M3NduabwHw05teJgXSDM/YTkw3MlHdoFWROytO1y0BDsuZWDz?=
 =?us-ascii?Q?kdhJoSPoHrcoGcptb/mTWuYg1yHfaOTStK4opgT7H4SVtoR6gxAVjzjB1Ngv?=
 =?us-ascii?Q?VqOBhSFymFakD3CzJtr6vqy+xHPv1nOBeZCAAKy02KBHvfym+A3VAkmgVf3g?=
 =?us-ascii?Q?Tz11yq/qoZugDIr4U8nCKtUJssRWsT7qDszmoLMujNsyMDM5AW6Q2S3EEC7c?=
 =?us-ascii?Q?vWX8I3ulLFsc8RJ58PxvDor8M4bxAv//syaUix/FxZ4z8YbBcUWqCnmFqEph?=
 =?us-ascii?Q?A/AzELYhIcfshC65YPxdCCS87MMKznAwZViM3DPzXdmHd3PPMLfWf0L0kH1c?=
 =?us-ascii?Q?KqXTyVa5XvBzjjOs+33G+0oaMoUZ1n9kCu04T3VdB6sY2mbT3DPf5COC4liR?=
 =?us-ascii?Q?6U5R6iaMJMWtymgSogVmOyJU3MM//WseQrzmS+CbI88e1KDSPj9FTOnVhG4z?=
 =?us-ascii?Q?/m5t9n7HtWwgTrzIENtFOVy6zQmc/r00zU2rV/VDj++h1kDAFdd4PFETAOoc?=
 =?us-ascii?Q?fJYkYOz8h7uyMJ9QwO+2oI9/OhhOAsVIZudhR4rKKYl1Lc6WQ63HRGNzdg+B?=
 =?us-ascii?Q?Fd/SF06jc0xAmpzN87DCuVYXNSE/+YnhGaAPD7USW9NVWjXVmlGTS0OlOO1j?=
 =?us-ascii?Q?XQoLdfjmNLebVgWn5mAUtv1Fknw07DJh47IRYQm4nn1NEbPMVtfMdT+uimSq?=
 =?us-ascii?Q?SyC4ygXwfwFwK4D6+iddR08Gk+2O9Pgl8HFPaLJdbo3zU+EgUXehR4pjLHW+?=
 =?us-ascii?Q?hCnu0g3FF6GtBfpy5bt+g9Wbnf6LiCWEgguww9i8mrGJQBL5XcvwYaF0Sk2i?=
 =?us-ascii?Q?14zv7a3Bzz0reFOHlxX2D3gpzjJXeatpvJHhlnUsCj/u/mkBfewxqeBeVALa?=
 =?us-ascii?Q?LXcLDOPg/too6DmAB+acrgjjUVu+4qCU3/nDW025EqJBgy2RRygnQ/tup6zc?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b308400-40a5-43e8-de80-08dc960984c0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:58:00.7791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: koEBTO30hTq8+QqcWHMDxGv4AHyDEWrM9JdPLWKE04P0P78iKp/U7lCFM1hG2B3XpnPRM6/YOcHE06lw6e63xx8l0EyLC50EfST+oK6ke/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5766
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

On Tue, Jun 25, 2024 at 05:26:52PM -0300, Gustavo Sousa wrote:
> Starting with Xe_LPDP, support for Type-C connections is provided by

Drive-by nitpick:  In human-readable text like comments and commit
messages, the official name of the IP is "Xe_LPD+."  We only need to
replace the "+" with a "P" in code identifiers where a symbol wouldn't
be legal.


Matt

> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
> anymore. Those registers don't even exist in recent display IPs. As
> such, skip programming them.
> 
> Bspec: 65750, 65448
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 9887967b2ca5..6f2ee7dbc43b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u32 val;
>  
> +	if (DISPLAY_VER(i915) >= 14)
> +		return;
> +
>  	drm_WARN_ON(&i915->drm,
>  		    lane_reversal && tc->mode != TC_PORT_LEGACY);
>  
> -- 
> 2.45.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
