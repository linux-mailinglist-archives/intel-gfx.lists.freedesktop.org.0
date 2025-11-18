Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C7EC67375
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9223E10E1D8;
	Tue, 18 Nov 2025 04:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvGzi5IO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 215D610E1D8;
 Tue, 18 Nov 2025 04:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763438704; x=1794974704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rj5QZ7K9209HmQPpH6JPHb76YOzdfxvGCoLSWtbWKbY=;
 b=IvGzi5IOca0B9upFx5g6ET7VD/NYYFb86cuI2kiBu63cJzWvYVLNSLUn
 KizjVExmnFIJKSoAw2FSDOkAmJZWeIS6eTdrHOTkKfsbZFcKwXhE3tfT6
 aoq157RruTNLCKfymgxiDw7XKNQYO1UN85jEvEMYZCPv3wukBfwecbAdc
 a8B3/dVJ1SFASikvwtIqayXQYCTMeAXSy2bOn9wYaGP3rvfpJRWMtYpgG
 63xCmRaNkMuFaowCVFIXVdzMnqdXJM4izdT/BAevMmSg3f6CE9Yl94NEC
 Zm0wV7St1DESD3in9zPKEIZSEtmIKwzbSlUiZegjc+MCczshAnZBw7vd6 w==;
X-CSE-ConnectionGUID: uT5WfT7iTQ28tg9/Erg0rA==
X-CSE-MsgGUID: eVQv9+2XSL+0L7x9YI9dSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65544492"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="65544492"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:05:04 -0800
X-CSE-ConnectionGUID: kLBs67PATXu7JztIfpr6Aw==
X-CSE-MsgGUID: GrzqYDkcQpKx74h0Ur6lTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="190440771"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:05:04 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:05:03 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:05:03 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.11) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:05:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hOyI5PgHFhK3puWHK3qRbhW+bjehakIzTzDGh19lV5OL1d75sCZV0WeZN+RNNV1txo14So9kcwWNtmzGclMTQuZStnT9fKwmr5YhTbtV4U80bAm7jK9klz9iidLN8r54ZPWitz+PPhS0Bek2FxHCjiIYptm5dcnJ0iOvh5S9d1QvtAMUaTPRb6s8HYkxDnx+l0NpIJ/xLHjqyKpf20cBtP8D4yb3ARR1aTTqmb+AIFOjWR6ViiDvICbIq7y8L7TPMNkLGnbOJSpvedufb5E512TrUZWcNpoP0rILTuOacXMeudHLdlPPAgGnUxHC4oiE1TciawvL4BZByehgX7UdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eheHS+hx9/wN5wgVXbqJz70ZdSpPWAx6dr1YRndbfGM=;
 b=cvoVJiDtEioQ97VD74zKQwd+RQDfS2MR1BZE0/P3qB20ICGR6NnMLv2XpvSi1LBNBPFmj/enZLQFsfqT8A49XWojC3m+iHpO+zw+3QCoCvqrriit0DYv3MXW41leacd6OMYCPtxyXtz1BMHfoaukuvj0OSqHAOp/3KIylFeVYdT+3ZUptRVur3y84Tr5lv1TDHLZOkGhB0s94XFe0YWhqn/YUH1rPzlv2cqcGopYuz71sNhmgB1BMpXmn7BBYmNzIggEJzqNTdknqMKN9gdEvwFFI4Bob7Et4p0y7SW2CJCSPCyBXvEmdFFFPIsVjVOXSs3zcTqf40mWwcCnMKlELQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7135.namprd11.prod.outlook.com
 (2603:10b6:930:61::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 04:04:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:04:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 19/32] drm/i915/cx0: Add MTL+ .get_dplls hook
Thread-Topic: [PATCH v2 19/32] drm/i915/cx0: Add MTL+ .get_dplls hook
Thread-Index: AQHcV8FhwFirX79IrEKgtVADUaPdULT30V9g
Date: Tue, 18 Nov 2025 04:04:56 +0000
Message-ID: <DM3PPF208195D8D26654E007A48C960C4BCE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-20-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-20-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7135:EE_
x-ms-office365-filtering-correlation-id: d9c7a2fa-5006-4422-f96b-08de2657a276
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?uYTKeVPkdmHBgvokKwwKB2iV46UkUbFQr5GqIdWogifamu7oHbHCPI9/8J6R?=
 =?us-ascii?Q?yLIBdOeMf+QvyxUvQ0CUsekIBgunqXUS57wHrdNrldcwnncT/aM7ay9TJLPY?=
 =?us-ascii?Q?OsbhVzQdfUP4dJPeOIgezKd0vu1yZNOACf/TROqdakuoP9Ob+JI1Z3IQ3b4o?=
 =?us-ascii?Q?tQeMsij2NyO7n5/uUB/HIVLjoA7X81oSxzDDcuLquR6YauUeVZ8ITj8SU/PY?=
 =?us-ascii?Q?oLsOws2DV96hnAXdnYtcnSioYZX15F2Pj42VFlAmu+OSLJGby9+k6CRm6ly4?=
 =?us-ascii?Q?iAtb0b/minVC57c1hRy2deV+Euod7phvW2FL8TSFY5pVClmdQ2YxYRZ24eAL?=
 =?us-ascii?Q?B2bX3proMK3rlcCEBpyV0GP0BwrNSYrG/Td+NKs8cBY7uBnGCUHClAjIgaCn?=
 =?us-ascii?Q?PzkMsW3eslTXPaUZGMFZUW60boU3zP9V1se5xfB528s16nzVia7kLG72xbpa?=
 =?us-ascii?Q?RaTgscD0lSDLzyh4bEQN1sit5DcLieyOmO8SPyfwIQ4SeTqM+QPPN3ro0eGr?=
 =?us-ascii?Q?hHYaxISjgyuJ5NNnyNEVYZuugGG1Qj7f535a+ZDcSGbM/Ad+PqMGumxsnqAO?=
 =?us-ascii?Q?fFHC7Z7lBitRYWhcCmdFK9miC4yaoEQ3UBg4m0WNcjQxAcByEeKmiJw26jIR?=
 =?us-ascii?Q?iWXwUPTqIcjbA9ckXsCzd0brkh2Fc940MbHrxGfmsSumG021PjKbU1sP08E7?=
 =?us-ascii?Q?AAJEdl6GRYZOQs8PcuUR9gkrxMHmeaOpKHzAXaH2s+7t/z+Dp+r+JLTWkYJY?=
 =?us-ascii?Q?CyEoom6kjuvLKlg/Hgj3C071gQQEvA6Z7Ql0vwaZVI1Vditug3914EPajKJT?=
 =?us-ascii?Q?mbvvkJUgKVZZhfeo64tHIZBWLrL3b0AgGvT3cszRbnb6p9gDUb/+VpLxb6Na?=
 =?us-ascii?Q?hpXKLY/9HI9F2eU2TEl0NFIqZtP6zNxjDra1X1boECb/DrIwsxK7kQK6wK+Y?=
 =?us-ascii?Q?fDOjjZjBybXc3/RUUWmDt6alHypM9RmzyEuHTEIjEniRMzOiaFcldpJQXGVO?=
 =?us-ascii?Q?YnAxMsJei4k01A5Fg3MZthjUAgNASluEVqLVOfHoAEhJEQHWnC3rrMgxNLF2?=
 =?us-ascii?Q?uMs6zY/tD9n8Ck9fU+yxxgflip4V5bWqp5EvIZ8/lwkKqqEtVQV7T8ygl0Fa?=
 =?us-ascii?Q?ZPIBZQX8rM7AE6MGk5wtfz8SLTysZk5VP36uOXlDTnfXJvlz7EyrhdwkXYpg?=
 =?us-ascii?Q?LzyERixKV9e5kHJbGC36oNKrL7hUnYJykTk1puauDWyToG0byPS9/DLGffEE?=
 =?us-ascii?Q?x8aRdI8HDmbVTfGoiVkFcbPyc4v1Zo5hTemeCqiAu5XQAy6lBZf1y3yrG8dR?=
 =?us-ascii?Q?/psp2TJDsbos7JlsPKZbwCSpfITD4NtNU/DG0mJxz8785siw4SDIchkFUNB/?=
 =?us-ascii?Q?BLad2sEMCWiEGZQpfWWaVe69sFWpXWB/qTq3fwlk5Hh0OMxLWgNHNJ+WrnU0?=
 =?us-ascii?Q?wfeS8TM9RWWZyP+YvKtHTt3aIBbBJrWfZTTZo5O8JDNeHCmvWzk9NtXe7fvP?=
 =?us-ascii?Q?rKShb75TsJr7ThiERzw++2VkrwAHlUdV1cvD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IFdCrpcUAXNT2Dgp0YhSvfPYtJjTRRMyMfBdT2Evl2O6obyQgcfHHhTjbe/B?=
 =?us-ascii?Q?GMYNrSE2l8t7IAk9rAKrp6Qq000nR8ocpkl74u1GLyjkojYKOCPD3dQNyFUq?=
 =?us-ascii?Q?+ACNnB3+StL0iLtudAXv7FV5ENqG2ubvEdaNepXtt/pLClOjLKr7R3HeMW0l?=
 =?us-ascii?Q?AE7+kabD96r6IrCS1GHZ3mM5qfnwu4fV7/6CzdEpolK5MYt2MZMWHNfP3CYJ?=
 =?us-ascii?Q?CHck1RAy4AmWEdOvHguCD1zKGoWUtiNFNuAUOltkqaSplOWo2h9Lcj+jm8OY?=
 =?us-ascii?Q?rgNnH7/7OAz97BoCp9ewlx0yWkUcbP9DxPHh7+BWR8gw9u/SAfWntopNUzU6?=
 =?us-ascii?Q?pGH8/sp/eHrDkJXsbc0jIV2xl4Vow8cW3SuHKjjUwutEwGukOUQROItvRN9a?=
 =?us-ascii?Q?KEGzJ2klk9cTDFghJZsdQhFwWCQXrrsdh25DjA6oTsE94+QRMjOQdjEyQWv9?=
 =?us-ascii?Q?76OoDZMC+pIlmJ7zQMzCXyB2ZikOKduuKjwQWrXVmoPzoKz7dH3yC+QBv/Pp?=
 =?us-ascii?Q?CrgI5J8B/eAgDzAdsB63+SlmCryefvEe6WRY9K9z3GDavN6IVVF57XhlSWH3?=
 =?us-ascii?Q?v+TLVbacDELPI9bn90G9aCMuCfWSgr8XLg66sxAAOKTTSaYpj9L+SKUoAdmr?=
 =?us-ascii?Q?hVTMAhUsMWwDADoCMWQR8z2EKmk4fW4g5/G5R1ZgG9NrUP3VZGyAuR/vRbFq?=
 =?us-ascii?Q?jg5Rcxayi9RuylmKBhwrQSqA5b9HSxEARdW5GQpJsrd6HwB0Z1F2cG3iT3fL?=
 =?us-ascii?Q?fJT3ifmWMwsjc6lVaQoElE6n8NJTLjhHHU63uSMm67TOA2H5h87OYcBzrZ6p?=
 =?us-ascii?Q?OtstgamwHTTUp2V+sHknhxLYMceJpTJWQatsQW6tzUa/mViW/td3zbzhlRvz?=
 =?us-ascii?Q?xppyiJ2xxnTz3zO68Q/QoicLQInxuAYulGYyKxY/LUZI4warroLGtsF6shlr?=
 =?us-ascii?Q?IQ5tOwXtRzVWU7M+gxIxelW41gCjkfcLMrPP8yjfqEXrkivKXx305TSLDkGT?=
 =?us-ascii?Q?59gvLYfyC15HHR7D5/Vwp4yR4/lBenzySWKeuFNHpsLMnLsUjK0uwuDgPVr4?=
 =?us-ascii?Q?3TRTGB6MdGyQb8slnOb23wUv3KLVJuLnjp5WjM9HVV9NVh8JBuE/RTngDVzr?=
 =?us-ascii?Q?l2am/5iBfs9pv8o0qiglwrAdAPnWd0yJmPBLAWU+2k+qksRvVuPoiZ0MPBJC?=
 =?us-ascii?Q?iNwlNS2NFtuQuK6+4nnFJKaZGZC5NVWsAlKe67h0Yssm9CETg/9WdtDSuOoL?=
 =?us-ascii?Q?zs4ahYQUg/IayM+ASXaN5CT6vroTfveoBna6IuzYGJHPFFP43ZVxH/GFrHF4?=
 =?us-ascii?Q?uDNq1tf16tzGuFpjrmkhP5vks/+zhEriuqBIKcRCLIjzh/rBabGkwpRl0Cz3?=
 =?us-ascii?Q?Xj3GhCYDbavrSvaT29wSTMehfiEHQZgMNsEpByhaKtidc7B85M+dz44cd6aC?=
 =?us-ascii?Q?dcMQSZhKwhyVv5HSsQYLy8bwtUDGI7FJF6cth1+DztghZAshoMINmm9tB6iI?=
 =?us-ascii?Q?dVv8Ru8eRXlShaVNRc80V2wTggbi86hV7bgNCm+Dncu4k5M3q0HULQ5jKwga?=
 =?us-ascii?Q?ouPWsxb1nhcSflFFVDezgWKsri1xVAlVvebOam7w?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9c7a2fa-5006-4422-f96b-08de2657a276
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:04:56.2375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QIE+2B09yD7PfdklQQ2QTjBoDNlMiEyYOeHw6Twp2Qikfdl4PjxwG/9XTi6kkJTES7nSZG8+Fzxt6YfNHU1E2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

> Subject: [PATCH v2 19/32] drm/i915/cx0: Add MTL+ .get_dplls hook
>=20
> Add .get_dplls function pointer for MTL+ platforms to support dpll framew=
ork.
> Reuse the ICL function pointer.
>=20
> v2: Getting configuration either for a C10 or on the PTL port B
>     eDP on TypeC PHY case for a C20 PHY PLL. Hence refer to this
>     case as "non_tc_phy" instead of "c10phy".
> v3: Fix comment to "eDP over TypeC" (Suraj)
>     Fix pll id as separate variable (Suraj)
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 57 +++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  2 files changed, 58 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 20f940110faa..313cb244d5d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -203,6 +203,22 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum
> tc_port tc_port)
>  	return tc_port - TC_PORT_1 + DPLL_ID_ICL_MGPLL1;  }
>=20
> +enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display,
> +enum port port) {
> +	if (port >=3D PORT_TC1)
> +		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
> +
> +	switch (port) {
> +	case PORT_A:
> +		return DPLL_ID_ICL_DPLL0;
> +	case PORT_B:
> +		return DPLL_ID_ICL_DPLL1;
> +	default:
> +		MISSING_CASE(port);
> +		return DPLL_ID_ICL_DPLL0;
> +	}
> +}
> +
>  static i915_reg_t
>  intel_combo_pll_enable_reg(struct intel_display *display,
>  			   struct intel_dpll *pll)
> @@ -3490,6 +3506,36 @@ static int icl_get_tc_phy_dplls(struct
> intel_atomic_state *state,
>  	return ret;
>  }
>=20
> +/*
> + * Get the PLL for either a port using a C10 PHY PLL, or in the
> + * PTL port B eDP over TypeC PHY case, the PLL for a port using
> + * a C20 PHY PLL.
> + */
> +static int mtl_get_non_tc_phy_dpll(struct intel_atomic_state *state,
> +				      struct intel_crtc *crtc,
> +				      struct intel_encoder *encoder) {
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	enum intel_dpll_id pll_id =3D mtl_port_to_pll_id(display,
> +encoder->port);
> +
> +	port_dpll->pll =3D intel_find_dpll(state, crtc,
> +					 &port_dpll->hw_state,
> +					 BIT(pll_id));
> +	if (!port_dpll->pll)
> +		return -EINVAL;
> +
> +	intel_reference_dpll(state, crtc,
> +			     port_dpll->pll, &port_dpll->hw_state);
> +
> +	icl_update_active_dpll(state, crtc, encoder);
> +
> +	return 0;
> +}
> +
>  static int icl_compute_dplls(struct intel_atomic_state *state,
>  			     struct intel_crtc *crtc,
>  			     struct intel_encoder *encoder)
> @@ -4387,10 +4433,21 @@ static int mtl_compute_dplls(struct
> intel_atomic_state *state,
>  		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder);  }
>=20
> +static int mtl_get_dplls(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc,
> +			 struct intel_encoder *encoder)
> +{
> +	if (intel_encoder_is_tc(encoder))
> +		return icl_get_tc_phy_dplls(state, crtc, encoder);
> +	else
> +		return mtl_get_non_tc_phy_dpll(state, crtc, encoder); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
>  	.compute_dplls =3D mtl_compute_dplls,
> +	.get_dplls =3D mtl_get_dplls,
>  };
>=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index a7946ff13cb6..322af5c55d7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -450,6 +450,7 @@ bool intel_dpll_compare_hw_state(struct intel_display
> *display,
>  				 const struct intel_dpll_hw_state *a,
>  				 const struct intel_dpll_hw_state *b);  enum
> intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
> +enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display,
> +enum port port);
>  bool intel_dpll_is_combophy(enum intel_dpll_id id);
>=20
>  void intel_dpll_state_verify(struct intel_atomic_state *state,
> --
> 2.34.1

