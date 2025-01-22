Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E75CA18B6F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 06:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4241110E1D4;
	Wed, 22 Jan 2025 05:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fp4DFEvZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731DE10E1D4;
 Wed, 22 Jan 2025 05:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737525007; x=1769061007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OJ3u15wZ0t/W33fqDH29z8bHptTMTsoq66X+4CdIFGk=;
 b=Fp4DFEvZuuuYebNixGJL+WcyzK6rm16tWPcO9XOwXzopg/9xQ0kl0IVw
 Z1VJ36c9jOBVwgTu+SZWBhuOllcjTFMbhjS3UeLrKLI28rT+SdHWygDpU
 BhkQT62X2yPVPknTihq8FMZUIZkuvuIor6onchZCwIXYs/IMytlLS816/
 maBrYKeVu8A4Afe8nipxBpVFszPCdk/hYGRfebc69VEVuMMHoY+PDDGc9
 65j+EDhWa2IU2NM7EqDllLWRIHIN7Pkkva9uLLYrXCSNc3QJj/ZXTJark
 Lg5v/ROo9BnwEl+oTCo+itZ5w+rp7pB+W5iA2owoXhEJP9anw7Km+715t w==;
X-CSE-ConnectionGUID: ISk9P2TiT2CkP3ZK9EMr9g==
X-CSE-MsgGUID: 0lYIW8gjSGyb251Nj8B2FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37663737"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="37663737"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 21:50:07 -0800
X-CSE-ConnectionGUID: EQey5OhhQlKsw7s3lkDN3A==
X-CSE-MsgGUID: Y50+RhQIQESpGGytgE0PKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107922147"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 21:50:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 21:50:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 21:50:06 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 21:50:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vommkJnoJsx8OdB6eeUM+DDj7b5WJ15VG3vV1dJmrpnSq24p1g6JRPspNaDoT9XFDHy2r9cNoUgXHKNNecpcspvlNM35TEKiOSTFifE9gj9FNJcxYV0gA++aaZybPnWxpJF0EuTlYz8eWbLwQBX0Dbp1dEGLeBubjptBrDsiAGWu8JY+EmhBbIQo5ov6kYHm3usT3/R5k0f5ssrR85Xj9R69oIULlayoR+uoAsmHUxbm1iSXx3e+cnicCWliie+10vAwW6w3tjqiXYIvraLp6OhBFdljJk1nWl4qJH2SQI65yVk9nW4Nkriko0tGhlV0Gys8B645ci4JGhJioBA0GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJ8LeRB081jvzBRpzq12cWYo87rOXNH2A4MUEATIfV4=;
 b=lW0TrxcTxiZSnuQHMrPXCttmxLRCQzUZuqhBIil3NRQI9UXmhSpynbSJiZ9s5mm2i3rRQndxowutCync/W5dq59dCcQcFqFJ6PCdq6af107ucvopD0brzgBnh90lFvvgpAAJp213Y096V6M+7Gnrwl3XPf4/UBrQj5rUK+yEyNDsZwYKj359yJoQJreW02/Xt1lJLW4XnVqdVOueT6fi8RALVYHX71HvG7ItnVpqgxBdyXea+fwI7LTZRkYRaxVKiyZjP30zxmgJpCwLDiQobEBE9v2hnsBMWwKomJe+7c9bzEJCOqfXKReIxCw6X7ROI33V+obHc9oVmgGOTpBm4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN2PR11MB4599.namprd11.prod.outlook.com (2603:10b6:208:26d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Wed, 22 Jan
 2025 05:49:50 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%2]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 05:49:50 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v8] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCH v8] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHba8RTUCRC23wRd0+WyHwqCYRHqLMhKQcAgAEf+AA=
Date: Wed, 22 Jan 2025 05:49:50 +0000
Message-ID: <IA0PR11MB73072A121A7B3CB30D2B8539BAE12@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250121-hblank-v8-1-b05752f4aa5a@intel.com>
 <87frlcpcwf.fsf@intel.com>
In-Reply-To: <87frlcpcwf.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN2PR11MB4599:EE_
x-ms-office365-filtering-correlation-id: dffda5e3-bcab-4566-4cee-08dd3aa89610
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?2C1Mp8AkoQi0KsswDdZPRMyUc0zkFeXrkpIpCBiSkLClUBSKadyAW9guD2Ge?=
 =?us-ascii?Q?cFPBUGVADT3edczKS/T25ANYTx3Pb+dP1OFywPpx5z4xu+DzDJS12brRz7iE?=
 =?us-ascii?Q?tpDjFX8fcqNLVU8CqC1FZI7cY8A0sxhMm9Vf9VjOd1Wj+74Hui3tF8GP1fhG?=
 =?us-ascii?Q?rCIWW2R05zSeqAV95TB6duAlmj4mKmSKX+fbRxLdwFROdeqfjSwKHq/ixCna?=
 =?us-ascii?Q?HShF703WFDKYQUVCCJo1QUgAB6/Y9kABbRpwC3z5LhpJCIad7itEwMDEiLDp?=
 =?us-ascii?Q?ktKvN7FKMIENHD+JvI2VCGfr5pA6BXKdocTDvncB7v+gdlkr5VnjqHG7IYGN?=
 =?us-ascii?Q?rU24F8CDyFwtp9dNfk3zYYHOf6xTSrS9uoTRnrvPmsx5tQIXD2YxwoB9or3t?=
 =?us-ascii?Q?WQQZVIkISh9v5JF2nDo3fUYd2v17l8/gTO/Rv5GXauysuhmMBMmqSB2V3bM7?=
 =?us-ascii?Q?Z0TP/7JFz2fla/rc3Aw5yIk833Q3sEr+Nkd3xKkIKCNKF8MV3xAvSRZXF5j4?=
 =?us-ascii?Q?4kKp1WIoZGCO1XWH+b80QabD1l/+HQnsHASdiCDMmGpX3XINxmheL/l7Yj7G?=
 =?us-ascii?Q?lDWHvjDhwouQ3ELLRRznyID1XUOlQI2YP2TjBgi0n6vf5d2wnF+/4Lsxtq25?=
 =?us-ascii?Q?qX0vgrw4cy5eTER/f5V3hjhZpIL63dox6xi+dC/kuT7/gbyCDUWZdNikJD+k?=
 =?us-ascii?Q?OpUoT+bCGlXPdOQdMkvfvHzXnKQlnRrm0LRV8hnqqdTMo6MHeoODE6gzDrB9?=
 =?us-ascii?Q?CAXdopFazCPdnnIEsioZ5mAiQi89nM04iHxkLc62PH7h6oIqtODd1IDJiQyZ?=
 =?us-ascii?Q?xlXrz5pRc3pazWYfOndP6E+CfgubFlWiD54Kdu3Cj3wLLRoqqhSqk928XlUA?=
 =?us-ascii?Q?NVcNBGzXgpHwMduYg5lk2zI1vSPe0qn9Bvyacd2TfvOG/ufuMsNunwOepsZ/?=
 =?us-ascii?Q?yvju2w/oLNvOh2zhW4nNsgn+zJbapFvecs86NzvGjVZgNF2MmtVxSNjrMI/I?=
 =?us-ascii?Q?SnBa8fWrwCb4avOdTqPOZtsGtbxpnuyPHevILX88eptR8V1ok36CWq9gzrMZ?=
 =?us-ascii?Q?Un7022yNUMTwRnQJuxEp0/uPzRe5iGqLsYdDpYAR1TzfmZ5mPTYT95tQmAMG?=
 =?us-ascii?Q?098+p8mPowwx55PWkxTHbZwgiaohywETIi7Iw1iDGVRp2KCzft9uG7SmXLr+?=
 =?us-ascii?Q?pS6iAf6kdlAL6D3jlzkGmmA1ySf6xQnsB9gmOS6m7IFPOM7FfsqhHROtSmZb?=
 =?us-ascii?Q?BMI1g9NTgZHODBAK3j4nEKBbnj09vOZ8/6diL+vRA0DdtLjeXLDUrWVOj8dA?=
 =?us-ascii?Q?234spIi90L3as6U19d9/KUxJeGB1cVKIT1S/xHg+Yu+Vw7pXbbjdq1PH0ugP?=
 =?us-ascii?Q?CDLVSYZEfLG10IFdpZMMY7iHfT+3oLxdeGkA247H7DmKzGQW0Id6tnrpYnTD?=
 =?us-ascii?Q?TtxcG+cLm6cRRGzeEKyP3Da2hqGiesBz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ef1lEzhvK5+iTuI+8ZEsM4EXg3OUmUFt0bx3NxyUsEP560WAGA55q5iOtJgT?=
 =?us-ascii?Q?Ms55VIONuCL1nasogfJMCjnO42kznPgQzkOP89K2bqCuho0vH0qlDgx/OPVP?=
 =?us-ascii?Q?vpbk4CUg4ETva0FxTZcdTx6yn1RIBRMjYM5W/B0/qnLULt8z9V9DXHPbcRU0?=
 =?us-ascii?Q?XIIhvDHKP5g29em08i9abmnwUG54i6mP3BnsCgC5DTAWlhnvcfyseHZpuhwh?=
 =?us-ascii?Q?7Wu3e/E1/TVobRU9252mPhYgvOou4KQy6CwIIGe6HcVnIPEJElXbTKQ7Tvcb?=
 =?us-ascii?Q?3T/qR5Pqvsdya4j+BleCRXPGv1cu5aCwGQugBDgFkR2/gTjQhx4d81cnnF5s?=
 =?us-ascii?Q?9sCQHClY+OULzwAl+lammCojjjQ7xva9cfIhHe1SGOMFImLVONaQJKJwfuBx?=
 =?us-ascii?Q?Ie/iRpOABVjSFf1SlUDQf08TDbOkPKjcW7c/NvAIkYU8GxlLRPcoQNT843gu?=
 =?us-ascii?Q?HSygYMBDf8+M0witKnSa7KVBm0xzJhyaNXyTy0P7cPrtrRlgYVyPKJjyNlCe?=
 =?us-ascii?Q?1ulZgmsk9GWSuHTzdTQWyDROEWGKrwQiAoiJ34YmepFqVNsFHb7r/hCmvLni?=
 =?us-ascii?Q?/PZa0E5t+vZeiS34yHHis4TlkAoKTutRtQ+N10IgXkUtACdv7kPSsruOe5oq?=
 =?us-ascii?Q?897boRJUZQkuWhQMPgfy+wtSKMBYvFDXIImpdLxk1lz7tbb2mhkonXIi+Wze?=
 =?us-ascii?Q?/b+3fZADU5wCWmNOfL2pjAwALvImEl8GaAg059yvmG1kHg4tJnLYdjqXnOZz?=
 =?us-ascii?Q?7npecuMaGomOg3LvxeJ9lmdsDgACEt6EAVDNtAMtOKFntNJo3gmbUDXgyXYE?=
 =?us-ascii?Q?YO+YTUmACtnma2U7y8YbYh4Uv7rmUq5Zb7CS19ObSS+zUodHoPhegs89qPDI?=
 =?us-ascii?Q?4s2lQYHZGSeuOB96rr8HGgEPgx/SUQH0EcQOxoI3TMdIPG8mhHfgZIBo2qFe?=
 =?us-ascii?Q?PXzvjhI7FTLq1Q0Ky1f8ylX3A9pvpq/JxA+dQD4ZpJroGqEfCCiODU3TOJGj?=
 =?us-ascii?Q?vPsmiLQ2aWa6/yVRtWyQW3NAGbdQaxMS/RyDAR3dDSmq3ZiBxlGw+5G12478?=
 =?us-ascii?Q?Vgpr0/iRjV+BngZpeE807jOSkXW0MDvQ9PG8C3M2WiTHm9G5T1dZBuH2wJrv?=
 =?us-ascii?Q?EH4lt57Z2BlY9Pl8UPA/Rao2d1SFA+vzj7J/GXZw2XysJWLs6NKiWcIupwlC?=
 =?us-ascii?Q?pUcBSDTjrDBiPMwKyKAUfzF7PuoRof0tpytwaBhIz7bSz57VpMoF4mYX1VJY?=
 =?us-ascii?Q?eXUBnndCLcPUD7HalcKekrEeruJFTae033xr5NkZIxTjD8s1IFSpj7xbgH5o?=
 =?us-ascii?Q?QvCLgkp+QV12NZC6Acx0f/wcuyui+NqpB52FIo11Kdu5+YPoNzT1JICVRMS8?=
 =?us-ascii?Q?dr6EJBch/+t2B0N4S7wZ8xgCAf7EByJZzhNCGlbCgNoMjMazs7JEhTSh+2Pz?=
 =?us-ascii?Q?aNGVwXkMtKUqS3ddqbpfv00UFT5+dbsDVfqWuIpAAzm1h8eSJEmQejyI08TS?=
 =?us-ascii?Q?9FjuZphTpvlYMalbbQ2v3hHO+E7Zj/5ZASbGbAgi+BXK4UhsDUYM3kmuF+U5?=
 =?us-ascii?Q?32iNuvBASwDg/8E7aj5obMsqHIyKc+4ZQkB6/zpd49t8/D0mL7qytJsB5x6w?=
 =?us-ascii?Q?vwdz8RvOQqkbHgCgdZmOUqG1EZdpjdV8lXNXMP/SA2+/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dffda5e3-bcab-4566-4cee-08dd3aa89610
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2025 05:49:50.2444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E0wl2YQs9vWMvgRgkNS1HY8xf8xIicYnuGxwE/WpGxN0QSjKF8pQNkHRLxscOqAk44jscJjwmIsp/1FS1mwX9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4599
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

> On Tue, 21 Jan 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Mandate a minimum Hblank symbol cycle count between BlankingStart and
> > BlankingEnd in 8b/10b MST and 128b/132b mode.
> >
> > v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> > v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> > v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
> >     (Jani)
> >     Limit hblank to 511 and accommodate BS/BE in calculated value
> >     (Srikanth)
> > v5: Some spelling corrections (Suraj)
> > v6: Removed DP2.1 in comment as this is applicable for both DP2.1 and
> >     DP1.4 (Suraj)
> > v7: crtc_state holds the logical values and the register value
> >     computation is moved to mst_enable() (Jani)
> >
> > Bspec: 74379
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  1 +
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 53
> +++++++++++++++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h                    |  4 ++
> >  4 files changed, 58 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index
> >
> 1fbaa67e2fea77279f120bfb9755a2642550046c..07c671741513f7f263b7b233
> ffec
> > 71998745fd0f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -249,6 +249,7 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
> >  			   str_enabled_disabled(pipe_config->has_sel_update),
> >  			   str_enabled_disabled(pipe_config-
> >has_panel_replay),
> >  			   str_enabled_disabled(pipe_config-
> >enable_psr2_sel_fetch));
> > +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config-
> >min_hblank);
> >  	}
> >
> >  	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled:
> > 0x%x\n", diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index
> >
> 8271e50e36447a6c97a93ca0d0b83327ff6ee461..f525e266c0232e8c29ba3f84
> d2c8
> > 1612f78e894b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1095,6 +1095,7 @@ struct intel_crtc_state {
> >
> >  	int max_link_bpp_x16;	/* in 1/16 bpp units */
> >  	int pipe_bpp;		/* in 1 bpp units */
> > +	int min_hblank;
> >  	struct intel_link_m_n dp_m_n;
> >
> >  	/* m2_n2 for eDP downclock */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index
> >
> 227bd2783e64105dc8dd521b99e7d04ce2e577cc..833167dc0e147dc5e793c0a
> eda12
> > 80453b38f385 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -209,6 +209,28 @@ static int intel_dp_mst_dsc_get_slice_count(const
> struct intel_connector *connec
> >  					    num_joined_pipes);
> >  }
> >
> > +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state
> *crtc_state,
> > +					    struct intel_connector *connector,
> > +					    int bpp_x16)
> > +{
> > +	struct intel_encoder *encoder =3D connector->encoder;
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +	const struct drm_display_mode *adjusted_mode =3D
> > +					&crtc_state->hw.adjusted_mode;
> > +	int symbol_size =3D intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> > +	int hblank;
> > +
> > +	if (DISPLAY_VER(display) < 20)
> > +		return;
> > +
> > +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST
> & 128b/132b */
> > +	hblank =3D DIV_ROUND_UP((DIV_ROUND_UP
> > +			       (adjusted_mode->htotal - adjusted_mode-
> >hdisplay, 4) * bpp_x16),
> > +			      symbol_size);
> > +
> > +	crtc_state->min_hblank =3D hblank;
> > +}
> > +
> >  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
> >  				   struct intel_crtc_state *crtc_state,
> >  				   int max_bpp, int min_bpp,
> > @@ -266,6 +288,9 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp
> > *intel_dp,
> >
> >  		local_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> >  							     false,
> dsc_slice_count, link_bpp_x16);
> > +
> > +		intel_dp_mst_compute_min_hblank(crtc_state, connector,
> > +link_bpp_x16);
> > +
> >  		intel_dp_mst_compute_m_n(crtc_state,
> >  					 local_bw_overhead,
> >  					 link_bpp_x16,
> > @@ -1265,7 +1290,7 @@ static void mst_stream_enable(struct
> intel_atomic_state *state,
> >  	enum transcoder trans =3D pipe_config->cpu_transcoder;
> >  	bool first_mst_stream =3D intel_dp->active_mst_links =3D=3D 1;
> >  	struct intel_crtc *pipe_crtc;
> > -	int ret, i;
> > +	int ret, i, min_hblank;
> >
> >  	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
> >
> > @@ -1280,6 +1305,32 @@ static void mst_stream_enable(struct
> intel_atomic_state *state,
> >  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz &
> 0xffffff));
> >  	}
> >
> > +	if (DISPLAY_VER(display) >=3D 20) {
> > +		/*
> > +		 * bit 8:0 minimum hblank symbol cylce count, i.e maximum
> value
> > +		 * would be 511
> > +		 */
>=20
> If you defined the register field with REG_GENMASK(), you'd get the max f=
rom
> there, the code would document itself, and the comment would be
> unnecessary.
>=20
Done!

> > +		min_hblank =3D min(511, pipe_config->min_hblank);
> > +
> > +		/*
> > +		 * adjust the BlankingStart/BlankingEnd framing control from
> > +		 * the calculated value
> > +		 */
> > +		min_hblank =3D min_hblank - 2;
>=20
> This means you'll never write values 511 or 510 to the register. Should t=
he order
> be changed?
>=20
> But then... bspec says, "The maximum value programmed in this field
> (MIN_HBLNK_LL_SYM_CYC_CNT_MAX) should be a value of 10."
>=20
> Please double check the discrepancy.
>=20
Yes the spec says maximum value is 0x10. Will change it accordingly.

> > +
> > +		/*
> > +		 * Minimum hblank accepted for 128b/132b would be 5 and for
> > +		 * 8b/10b would be 3 symbol count
> > +		 */
> > +		if (intel_dp_is_uhbr(pipe_config))
> > +			min_hblank =3D max(min_hblank, 5);
> > +		else
> > +			min_hblank =3D max(min_hblank, 3);
> > +
> > +		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
> > +			       min_hblank);
>=20
> This is left in place, never cleared, and who knows what'll happen if you=
 unplug
> an MST hub and plug in an SST display. Bspec says "This register should o=
nly be
> programmed to a non-zero value when in 8b/10b MST or 128b/132b
> operation."
>=20
> That's bound to be hard to debug, and never going to happen in CI, becaus=
e we
> won't be switching between SST/MST there.
>=20
Resetting the value to 0x00 on mst_disable.

Thanks and Regards,
Arun R Murthy
--------------------
