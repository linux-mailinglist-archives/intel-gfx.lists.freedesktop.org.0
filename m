Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CA498ED8D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 13:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E3A10E18A;
	Thu,  3 Oct 2024 11:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fy9EJYHM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0A710E180;
 Thu,  3 Oct 2024 11:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727953499; x=1759489499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dIgAvLMAm4BaKOkIJa1z3CvcC07iRCyj/GGRR+nqjK4=;
 b=fy9EJYHMhakAD6AtdcxjhjVy3ZNIXkxU87qx0RQnL9YCfO+Hmp0LX6BS
 sGEbWA8IWglk9wXsIbWxb2SqkD60NyH4EerVbqo+6UomppbWdhgdHet8b
 6e1i4EyLKA8qxAWPDDL1XkYdtYvreU24XspwgD5w/fSe7sVWX/ArzA0nS
 xp0Y06EpSZ61eFHewH6ldpeTOdRUoEdAr8edTjA8XtNOeqMcKpeFQ8E6k
 sFrPW53T7k7KGpuE5Tara4jmYFGkioASV9rpdSuP5KjKVSFamDCQDe4Se
 c+T7WgQgBomtDEm3EedURVU2MOB/buoDfxKmNAi4x9C91U0oiaQbKtRCD A==;
X-CSE-ConnectionGUID: tkNEGHJHRYW6Wiw88CijLQ==
X-CSE-MsgGUID: pxgXzuauSBOqPqbPaTlYsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="49665285"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="49665285"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 04:04:59 -0700
X-CSE-ConnectionGUID: GvHFft/jRRONgeFNWwhGEA==
X-CSE-MsgGUID: rhrhibW5SMikeetfbCb4YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="78732046"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 04:04:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 04:04:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 04:04:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 04:04:57 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 04:04:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hNDV/fZaGvDVDRJBeDIDPkpoz+wQT3/AdC87I3OpPgkHUNYUohMgM9eaTcdzL/dAxnDb3hFermB2XTpjW9ZYhlXq2IVQWY3NHG0cv0FOPYYFiTqFiSoXur/M21zwEIio7J7kT2zl18oSsbTdYcPdNiJowL+xVcOyBTidbhRFbjQ8A+WlbGZrG2rTkfd5SvHfCETN+Tg2t9qOU0WhY9qTr3QaKbrCB+nqQWGCL8oR1d4DQQxIlSjUhdxnDzzFofO/9JlnZRkZMjrJ/j+icdJvEgzRGzaO9LeGMco3ogrAvykU4R6Ta3ZthZ1xTShNFNuNT1YmGluOk7pm5TNBqBaNNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KtgV6qQjaGc021iDWCUAVEpeU9bdbhQ97rbxqI/+FWw=;
 b=cpFmgGw3ySumpnqDaS/yDhpoFx5MpqxU3Tv8CAleQd8nZ7WpFjyrzJQVJMY7drNAhJqB+DVCMt5mqqYw/LrT+/nc5qb+2s5TOF7KrN8uj4TUbVEq6u9qGzSeVTFiR/h479CgbsY+SDhF0ogD1+Ud2+FiBDrJCQ75mESGgbCT0lXUacBc8IDGs7aQlvgFUpkQcfIjw47/nJQE9G1B8MKuuZLfXsxsEA+IgkiAYZvzmwUSdItYEvAl/X3CMyjjcB8TaELVfuozQ7NGFHVwp4QOdYFSOSXLaFTag0k/vWbNerBlHohdzaU5BSO8duofwBpEj50WiY8iQxg4Kerz0j4iVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 11:04:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.017; Thu, 3 Oct 2024
 11:04:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 1/7] drm/i915/dp: Use HAS_DSC macro in
 intel_dp_dsc_max_src_input_bpc
Thread-Topic: [PATCH 1/7] drm/i915/dp: Use HAS_DSC macro in
 intel_dp_dsc_max_src_input_bpc
Thread-Index: AQHbFYDgxWShaJHxrEWb7KEr3J56crJ02XgA
Date: Thu, 3 Oct 2024 11:04:52 +0000
Message-ID: <SN7PR11MB6750B9E14B7E52B7650A4970E3712@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB7983:EE_
x-ms-office365-filtering-correlation-id: 01aa3aa7-fc89-44ce-fe24-08dce39b350d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ca4uHq+MPa2NKDx2VioRTCckXjtfdOWtjgb7qtIkZTtTk2HMhygDZdT/YSqx?=
 =?us-ascii?Q?Lr4trprYgUZBzjRDvKYOEM0bsqTAuFwa26EIsyMrAT2XKBDZJuLFT2NS9ZH+?=
 =?us-ascii?Q?Nr6iH3tsD3ajQ1D/DuQChA74aJ7LwdBTnFxFRh0Wjw+qQuvUVK7yQU+2LeV3?=
 =?us-ascii?Q?G1rb9yMUu+E3PgVaJGC0vKKVTPj9u4w4uLuw06RFSJpIKnxLyEHsOGXMet/j?=
 =?us-ascii?Q?BWaW5MDo76XA+IwQMSOkfsCW26tCoYM4z+gHvtx0a5H6tnQNXz1nuqdbEeb9?=
 =?us-ascii?Q?qvsRKfvaIdNyVwCIQINepqUwdubW8AwpaYls35eZzAjx9GvD4ocCBd/2wdM7?=
 =?us-ascii?Q?ACMkpGOX207Xb9nE82Wi5YQbFUC3ivytJSP55BQMchaN4ammDfdst5Sg9/cj?=
 =?us-ascii?Q?kDahQpGs6boqYHWA0GjB7MZBTRdak4xi5zfkf2QyCmHfYwG4eTbOPtwbdizW?=
 =?us-ascii?Q?RJBgPh3cKfmYyMpxQGcDdv6djziVmR3NRK2Ab56Y0zkYbhIgc3RpQ1PuZe0I?=
 =?us-ascii?Q?3lH4pc1FhB+NL4ifvcaHCojgi0yEQvbtJdwMJmo0zKMKMmpUrCr2/F/WeTMe?=
 =?us-ascii?Q?rFe+byoyUrk90SUdv1ApdOwPLM7+ZmXcw/SaCx+FVdVvFCT/V7dONTm1q84S?=
 =?us-ascii?Q?RW2zEt2eLfZ3Az+bmzHXX35svrjAFywoCo4qHtvEygseB+iunb5QNDV/pENs?=
 =?us-ascii?Q?OFS+uxUz/d8xzZJSsTPNkmYmcZGSodYFlfKfdLPCTLHgO7xSaQF3sLk4AJ/1?=
 =?us-ascii?Q?hFeiZkvT/wi8he4PnA0QA45gDnia6HRneqrODofD1Ik55khORKZAii9UC/fL?=
 =?us-ascii?Q?h1zOoM3QGQF6Vx0xyfFXLZM9oAWaQov4cBNbQb8Bz5wnKkZB9YehMmVH46P4?=
 =?us-ascii?Q?9Lp+kBvtqZeDaFcS00/qpDsr48pZge5HOPtuh2VN3Jw3metUYjZyJj33dgFC?=
 =?us-ascii?Q?2UD/bITHWaS8hhukMIGWr0/keT+cEPOpnOPponHGyX5XSbEcsXwl8CMtaYJQ?=
 =?us-ascii?Q?SD8QArZhG8/b9XSWKyWGjOQmGCYXwnC3uPqdA92q0ZSxG+9V00FUNbi+qwvU?=
 =?us-ascii?Q?8UK6BMQcORUufq1cVVob/6UwpBm0hTUVbzAAW5uJITTNnDhVZyHqRIzBFNBz?=
 =?us-ascii?Q?9ZTgIWYX8YXdqSZfyorjCNB41RJY2oIRzy2pfhdl1Q/VSVb5BRp7Uod5/BN9?=
 =?us-ascii?Q?0Lexi10Waawf4XrC/myi2LPruUJjfWYZEgqlbCiASKvfp/QGt7Kbct/fvA+G?=
 =?us-ascii?Q?aCYxzXshsMFDparViHVXjzyLnAXv/3oJx2MDEE4DxtZZZJc+LQYWN1NY9ekQ?=
 =?us-ascii?Q?t5gPOKSdNJaGkgp7Dz5hIYZw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dkDje8z2Jm+UQ8qDM6ap6QhsTo0q8YqU384R+l7ehmm3AWt+9MoSZ7nBmC4D?=
 =?us-ascii?Q?g2k88a9FkvBgORhv75wEcCeKa1ox4obRloSUYHYseevLz7dHtDBusJQBVGFB?=
 =?us-ascii?Q?8TLQb+qnERl1EiNCTUrpCV0SHO5QFWgm1zxuI2LGumJnIIR9wkOarwvo/DXE?=
 =?us-ascii?Q?Ct/rsFAY7OVqtW7XxNuSt+OtvBPvLd4aCV+CymYsDahvbyPtD3b1t/9lrxG4?=
 =?us-ascii?Q?QaCwE+1dmVN1OeWOQpGp6sq5r7eWRPmi4L49+61CcQiFCpxl0dXKKYI+1X4x?=
 =?us-ascii?Q?k+Hnxad2/NiSmx2B9Q83j5Rc1I4dI6ocmWqhpZa0notElk+mU921mJz5lkpe?=
 =?us-ascii?Q?qVGMO11IIPrs5MWvGRVenBb5dUCa43p7dMbCvVUgxi9RK1pm9nPEHFeZ38UB?=
 =?us-ascii?Q?mdrQyZP2kxRb6g1/dRcLechwv7VDQ6emZZIYQZP1EARF0TRaHw8GwCD9u8P0?=
 =?us-ascii?Q?FsPe8lduRAsgcu4nHOd5beLD+iK27lt+LkPZhGs7Hu8yTmFX8cs8EBeU+N6A?=
 =?us-ascii?Q?a2EzNOeZk7hhi1nlPqKsGINYG9bc3s36+AIWC+hZktW/J3snDM8O/VVqKBx4?=
 =?us-ascii?Q?76O1LAvHVUnSfgUleJBzEg1MAtzdli/O68IegCyZ6Z/5LMueZTDgX2Uezpwv?=
 =?us-ascii?Q?yQhgpKq98HkKYvn9z8eAoqa3pAoFOSW4EEDNNb7wjIB9Rbt4hGoxSExprVg+?=
 =?us-ascii?Q?C3pFMkzagu++YYF1G6Y11n2CBn9OtmcWldqcbPBOuWhOaxgWI9HYjghiQfNa?=
 =?us-ascii?Q?ZnwwYhIdCZp9TX1TNad0oU3gAfw5axkTtUvdMUXTCPc3flAHWkDOP1T/2N8/?=
 =?us-ascii?Q?C/M1AOWIMdKk53z/550Zcx2jdHOpUOeN0R1vuXdgtyxkzT//H0KHkFYV0/Mi?=
 =?us-ascii?Q?JyGtGNjRSVh6qVQv/Z7MCRZdBdCJ4BUKRs8D2q5sytDWuM65nhMMSPocr/7Q?=
 =?us-ascii?Q?tZOfgwLeEEPUd73OqtTgiprqQdFfiB9uxQoKjtZaXMDt5ZwkGFa9OkIqSR8e?=
 =?us-ascii?Q?/IighYNlEfbi6XQHQ3sQWEf8i7OnpNkeuJRP2ZsMPkfPHCFfgu3KOSDUOCGy?=
 =?us-ascii?Q?CSaMJu4iP6/cFuwTE551mbIBUer2LE4dr8RNrb4QqBHJY19LoLo/1/RhzODp?=
 =?us-ascii?Q?NSgf+HrQOZLmUC5JSElX6HvaiKUADbzjfxbyLG22QtJL7wxUiNd4MgNWFHbK?=
 =?us-ascii?Q?xn6cXmb/yUjPeR7mCHnFZCMK6igmgDBsJ1bXh1kailjHFs81ZUjBCbchDexx?=
 =?us-ascii?Q?XOjTaP/td2c4A8oHrtR9vDdvc7I4icluetEeA1zqlAyINlufJ2+SnqBmmfc0?=
 =?us-ascii?Q?qR2hK5XQC34FeJ37eA2x1SmYjKDMf9qXoDadNRx4Q3/SAXqtblNuUHrnu+2e?=
 =?us-ascii?Q?q2c9E7uITgCCjZXSv9aPRz8YhhUJKg44B2J+TzRHHHpZHOzpJkfMQx2itq3a?=
 =?us-ascii?Q?JaOOfwgBsMYqL4dT2EVbl+m5h0DBkOV5MumKnKxbn6vnbagjVgDp/9v9Jk8Q?=
 =?us-ascii?Q?o9aKmyK1YWwigeMxESfweNL30bXGmwF0DAmk9LPakPB6INfuUhsZBFt/kD1h?=
 =?us-ascii?Q?9EXksDW++zRYgDDKkAdg4BciVxi4cOb6NASKB2/B?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01aa3aa7-fc89-44ce-fe24-08dce39b350d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 11:04:52.8779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lvs8AskukeQ7rZ05I8V168NgFrozBzwrHSIXwUCl7urA7JVFEoMM7YtQpK/qyms+9Ps55BhzcRznrSA35E98QQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 3, 2024 4:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH 1/7] drm/i915/dp: Use HAS_DSC macro in
> intel_dp_dsc_max_src_input_bpc
>=20
> Use HAS_DSC macro to take into account platforms for which DSC is fused.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index c4fdae5097ec..c47748905506 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1766,6 +1766,9 @@ intel_dp_compute_link_config_wide(struct
> intel_dp *intel_dp,  static
>  u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)  {
> +	if (!HAS_DSC(i915))
> +		return 0;
> +
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>  	if (DISPLAY_VER(i915) >=3D 12)
>  		return 12;
> --
> 2.45.2

