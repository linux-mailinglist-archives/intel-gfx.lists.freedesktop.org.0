Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D901C4B89B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404CA10E4D7;
	Tue, 11 Nov 2025 05:26:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lmn8qpwq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A537D10E0C4;
 Tue, 11 Nov 2025 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762838793; x=1794374793;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h6Zd2GuYGM9nsf1gk00ipNXwVcIIAkP5ewaFppKwfnI=;
 b=Lmn8qpwqHIfyOH3QRuvHIbBB+4ydleYtQIANbwVUCewx9lcENECcZdUP
 I862J0Sqhb1oXQdY1KBNlvlNAjvH2wPHW+Nfqa4mnQxiI1PdDuElmp2Cr
 zXxNYudC8HQPQPH/W58egd3SSN0tEwXlm47kdxqakEYnXmu8S+dZo9y9M
 P3ObraCHJNqdfO3Gn9zvehH2JbST9M5q1WmTCVmpo6s09nWj5VMu/w3ql
 LHMixha5Iiqpzlc5g0oGRG+X9ab/frk0SHtwOrWFo8KLRvkhpnx17cosR
 36GSBp9VMBcnowW9AlzjniWQRuMvXskQXt1+1Q+Xg5zAhaC68ZcyDd1Oz w==;
X-CSE-ConnectionGUID: iYbjUqajR720AxrCoHmEVQ==
X-CSE-MsgGUID: TPpiL3xVTEGeL94Y7cmbIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64931129"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="64931129"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:26:32 -0800
X-CSE-ConnectionGUID: Z0G8qDbPQa2+0z8K9UNU3g==
X-CSE-MsgGUID: uR4qqVo3TMKRDoJpbJP9kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="219582948"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:26:32 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:26:31 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:26:31 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:26:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ls5n1ehdiHkH57dU4r67erx4HcTXZCJyiNtPSLFdYhj4hzlb1cmTssnd6y7tU0uuZguCIf2q/UqtoI9n7r/zMfGYluiHoBkNCgWyMnsLKSjqf0YNvjP8xI0jrtGqxE7U+/6yBWVtVsQDbfeqdoao0fNOq0QkdJszdS5sTiCO+5BZ7YcJa1ea9GSiEW7W6B1WIArAd8Yb4czynIhHxqwM9W4i0UZus9lsEPXBdkFTq/iQmj3PiybMuGwSgrp1ELG9p6IIGKGY1U93QkLmTRCwPy+cpaFfXBdm3fjrPn0E+5f1A1/CVkhTuEvtCLsXVANRwGsj5fD3I2tnvOEZJJ5EnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F0ano5P7UJAQ56IyHbmBvzf9HKVt8EUhVAJhfwvi4Lc=;
 b=BsbMBnxTs1WVgJnGIaimR932bFWoalP4hOtrv/YxJkb0cfG0bs/qfq5HwPbYxj2KLj9m2XVUWvbaSzfHKam8KPikBhqlY7PEr3TwZmI1IHwcqUZphfbd7MpokptdfkWJe4XySuiQTsT2/gOMUk+ariJvZKlWR9XFlTemRwnnpqymdvfN0Z0mDR8GHvrQ0ozqHgvEpy+w2Ph7AvvxLKoE3tHo05Daji5CYjm3u457488hcdbsklamEf/IDXIzTqtRbueGILLaxpAN94BzeYOh74UGesAITH/z5OMcaiOjWl8m//p7mHiMMOYNr+uzNmPmK0qe/xvwsQ5MDKTEyxy/2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA0PR11MB7882.namprd11.prod.outlook.com (2603:10b6:208:40f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:26:24 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:26:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 02/32] drm/i915/display: Factor out C10 msgbus access
 start/end helpers
Thread-Topic: [CI 02/32] drm/i915/display: Factor out C10 msgbus access
 start/end helpers
Thread-Index: AQHcSlUd4vTsG+xYbEWiE103h3iriLTtAqaA
Date: Tue, 11 Nov 2025 05:26:24 +0000
Message-ID: <IA3PR11MB8937482E92580DBF2F6671F4E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-3-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA0PR11MB7882:EE_
x-ms-office365-filtering-correlation-id: 73644620-6baa-468c-53b2-08de20e2daf3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ndzL8aFQaT5LviQcchpCK4iYIF0arriltKyBr6eNRR563OisSObd1Nezgakj?=
 =?us-ascii?Q?HX3MJI7efFAodmT9lJGG0HKo/uhYFfuro5LKiP4mMFoftntg2wDP4CcJB2Xd?=
 =?us-ascii?Q?4ciZB+jkd2Kb3zYx7tbe0W8WRJdazsDV2JMiCMlxQMwTpbiWK5Cjt43WMpdV?=
 =?us-ascii?Q?NnRqnCm1HfO4XG6nZmj1T0ssDs/vsC7sH7YqfRStuq+vmBxJIDo+HocY8fcR?=
 =?us-ascii?Q?i/JRj1CZYGdBZdZM8UgYkEV2zhRCTumzic5EJooJ1UEfdVCzSY32BzA8CsA4?=
 =?us-ascii?Q?Zb3b2RFPh44JJFOeJyBAu3kp1D0sMPe8516awCtevbRyPuMC3W1v6dJ6BJ6w?=
 =?us-ascii?Q?WeiXjzaHYAIDHd9/1koGvVxQ2a8rWakfJlmvKkpVIk8S/JhQmX9qk53q90cH?=
 =?us-ascii?Q?bgxNKvfgD57uO1nlnBUm+5mdod2FV3G6VmIxeZwLA0+epq55LXxlaY8w9uMF?=
 =?us-ascii?Q?ik8dIXkiRDEoFme3a0kh4T7wtdP+GErX23X270uw6+pcCmjYf8P72MU703qg?=
 =?us-ascii?Q?/9+5vIh8119aOW/aNr3lDt01aSU9rxaRw1xytU93X4rTkQJ1dMOuytz0S7uD?=
 =?us-ascii?Q?mxGdTplYCde8N3KprVu+v1SJUNbJkAwzxlUDN9zIFDgjmsQvtKAjYpYymWLz?=
 =?us-ascii?Q?jTHQ5Sj7ZAoNb9SpF/UIAbK7Z3XmeP4mjzlX3UHKxNZSbm3slwOv4fF+rD2v?=
 =?us-ascii?Q?1Hi+rPXfbPomFIkCS8ciAdLzaWzde7IP+BgX7OH5KfWYM1jbWaINdqwK9qwu?=
 =?us-ascii?Q?gCRjCogJv90SHqal/CHSSHGinh0JExUHHVUeiFC1npnBTuN/JNzHlbNCPDZD?=
 =?us-ascii?Q?mVKN/5IBCdNi0VMj+2Jpx0e6gwkQzfzwU9uhwwcdeGm4ScUbDaY+pv95a1Qp?=
 =?us-ascii?Q?SYOEOba8/u5RliB5LKIDqfe+DifxSKKNCQageBmCv8wNI4oNLrfRo8t4MD8A?=
 =?us-ascii?Q?GMC/2uyt90U3vOGpjOC7el4BSJ+1WDeTXwUZxp8T9R3LzzJrZ2Ep8yCzgkAo?=
 =?us-ascii?Q?+0uC+4rpM04W3Yq7xGQVdFMk6JG4b/8JxErDrKTea0+Zz6XGNP8uDhH8/fT1?=
 =?us-ascii?Q?4dYkMrTj5W0tKNgZ3O5KWvuslxLa1mSTH2vzd/wJ0mGOWkKPZXZo0nWti6Tm?=
 =?us-ascii?Q?SKeVK1VX8WG3WlYfDapWNtqnekM+B0OTRZdawJopiIoR1A5baIIq+Aw7m69y?=
 =?us-ascii?Q?O0QX6Aih8XTjJeL2bnRXE3NMsvFh70Lk5gyTd9mWbWX9hI+6Gv3H1iFMuA4G?=
 =?us-ascii?Q?8P9ssm4oXXtr5tyRM3bguelkMD+0FQH4eLwqLyGOZvzQ6DGjiBWOf+0KgtIX?=
 =?us-ascii?Q?HaVoKB3hfFdlbrno5K+v3KMqqqt7AhsVnZsJOtm4r5R6f7WmNxqgwZ61lkWf?=
 =?us-ascii?Q?4OAQKBEjjPn42GUDAKjFcpy0RrLh7iUCa0X8rYVM/GXYUqocitZzmqszRgyg?=
 =?us-ascii?Q?oEEFLhfSrJnNSxku/HuL9aOnm0nq8Ob743UqDe3719iPavI8UJ3eQnpZl9f0?=
 =?us-ascii?Q?y/k7RHkNU7falK3+Ml7I65lM5nlde0Pu+iOE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ByU5wCdbMBieYLS4qgMI1euqRjYwj46JLhbfIqO0k1en5tN+p9gT8C4Z25um?=
 =?us-ascii?Q?mTQrKvc8pNrLEwKzsDGLk/i/Ox2pLviJkJP3Tpw2Dbe1ohovMe0oSRDNk/fI?=
 =?us-ascii?Q?o/r1T6vSsB9wRcmkzvN9Muma/cRJs+6jwgDk9Dbc+db/DAO8NO641CM3C9Uy?=
 =?us-ascii?Q?tqioZ5NogzEq8XhY6u9VTdw8zwA+HOlqQbwgBxYpfFi7mdh9PSk9RREO0/ah?=
 =?us-ascii?Q?lv1jNFLdXTFIyvDDoXELJPJ5Flc18b1rouHUvliruVLjHq0HOFfj2gxsTCBG?=
 =?us-ascii?Q?K/2wdl0KHDwrKlcpTVHDKMY7FC09uR5HaJWhCyWXY/pU9AQjd3xH9oODkg92?=
 =?us-ascii?Q?2QPe5IgtE7QdsjisTLvYOmQXavqwn4kzekssaNEiBqvs5QjxBCkCFErvg7UT?=
 =?us-ascii?Q?u17rZs7Napf7g+/6IyXGD1s44DslKcllcnYwWk62LyisGtO7eckeGFqOeGW6?=
 =?us-ascii?Q?sCXx8heG8i0YZPFYs3uDb7AkxBE/FEChnOzbygmbcWc1LYmCnKKFvaWXokA4?=
 =?us-ascii?Q?5e5lFGDHrV8IvrBIHPUZPk/tfcPrJcvGio4wWtnF4eHy4Q7oBajjznnfmGqM?=
 =?us-ascii?Q?8zh+C7MY4WlbFbLbnQxis0VzyojL7lC2K1pdVvPR2xZpvMPoOxJahu+eX7fR?=
 =?us-ascii?Q?WqVnKs6qYdZCybjjguATfRr42DUStC+kg3bjJXqrnKn4DIzLPzJZg1aG8Kkc?=
 =?us-ascii?Q?xkOGUP/3dC3jdpWr/uopXZwM0yWmUfY/UYKOyk0Ch22uE7G5R4bjVyXJ2ik8?=
 =?us-ascii?Q?E2wvoiFRsIzWlxBvyuR7qFAScv8FaTeFfJqM539V56sb3oRNwutoS+rPgoUw?=
 =?us-ascii?Q?uiXCiau/oAeJ3xqNImKH+1e6EnTsrjIwlf1RC71BIZ3sQs6edyezsdwnCaNE?=
 =?us-ascii?Q?JU3dN2lNhIlol8yobfYPghE7CJ9Rrg2mGrHMTr9x0TaUqNv49mD7neyhTKJI?=
 =?us-ascii?Q?mzA1y04eUshJ0M9Vom2c7ylSwa3zuYb0qrWRgoDXvG/vBc4JZtw44j4ZV4fm?=
 =?us-ascii?Q?vi9BhbEgNjV4qhg2yFxtWPze8fYshNxE9WiXs3UnanEkK9zvZeP0m0BnjiHP?=
 =?us-ascii?Q?78SxuMky1qDyn8X5xN1WyTIgWyoJ+2qKjpIbxr0Jx2dG9tgpD0UwWNSUf34P?=
 =?us-ascii?Q?+WkhqHWLyKxIGL1AOe+0XirAcUj6/nXPkCqhhzzwjDK0Lik5xAraMNohTSMK?=
 =?us-ascii?Q?5tMTs/A4dsWRkTDdIiypMvIsTdKQA/EtVzWOkh+raTo9h8aESJBt+pI3kj2O?=
 =?us-ascii?Q?IaR/jJ4NTQbKZx3spF+MVcjgU2/aZPd1cQX/HafTaT1mFBbflkfdZCBw4LF5?=
 =?us-ascii?Q?7KmtqDmEbo+Sp753XIPE7wQdg6RA87OmQJ5GsYcfrkYrNzfHi5nRoFwoFKNV?=
 =?us-ascii?Q?4a02503TwixACe5S+lNU8SkMPQ+WMnwRK75TFKshuqZw8I0+SOqac9sWA1eL?=
 =?us-ascii?Q?ubfVbgsrn5QKBClw4AF6wDp49kRBzlrcz91Hv2aqrvmTNt65Dv1l+CmCDZ1b?=
 =?us-ascii?Q?yHuwLhROcTvLMNUj30vZ9wNbQsvOYuYD1cYS5ZfkvFP91nasAuJaklcaBUfO?=
 =?us-ascii?Q?Thw31fLDB17jML/H8GvQ0bPjWMxb+F2n+vj2bjkE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73644620-6baa-468c-53b2-08de20e2daf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:26:24.0750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2mnvw0zs0sSHPYwc9PBf3G8RWlJl4kIfxSSSGQvegkqdA6b5E+BsAaq6tfASyOPOLEuJi+wDryFUm6lLBa+c+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7882
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

> Subject: [CI 02/32] drm/i915/display: Factor out C10 msgbus access start/=
end
> helpers
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Factor out functions to begin and complete C10 PHY programming sequences
> to make the code more concise.
>=20
> v2: Rename msgbus_update_config() to more descriptive
>     msg_bus_access_commit() (Jani)
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 62 +++++++++++---------
>  1 file changed, 35 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a74c1be225ac..94ba7db2115a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -449,6 +449,31 @@ static u8 intel_c10_get_tx_term_ctl(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>=20
> +static void intel_c10_msgbus_access_begin(struct intel_encoder *encoder,
> +					  u8 lane_mask)
> +{
> +	if (!intel_encoder_is_c10phy(encoder))
> +		return;
> +
> +	intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
> +		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED); }
> +
> +static void intel_c10_msgbus_access_commit(struct intel_encoder *encoder=
,
> +					   u8 lane_mask, bool master_lane) {
> +	u8 val =3D C10_VDR_CTRL_UPDATE_CFG;
> +
> +	if (!intel_encoder_is_c10phy(encoder))
> +		return;
> +
> +	if (master_lane)
> +		val |=3D C10_VDR_CTRL_MASTER_LANE;
> +
> +	intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
> +		      0, val, MB_WRITE_COMMITTED);
> +}
> +
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state)  {
> @@ -472,9 +497,9 @@ void intel_cx0_phy_set_signal_levels(struct
> intel_encoder *encoder,
>  		return;
>  	}
>=20
> +	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
> +
>  	if (intel_encoder_is_c10phy(encoder)) {
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C10_VDR_CONTROL(1),
> -			      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED);
>  		intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C10_VDR_CMN(3),
>  			      C10_CMN3_TXVBOOST_MASK,
>=20
> C10_CMN3_TXVBOOST(intel_c10_get_tx_vboost_lvl(crtc_state)),
> @@ -513,9 +538,7 @@ void intel_cx0_phy_set_signal_levels(struct
> intel_encoder *encoder,
>  		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
>  		      MB_WRITE_COMMITTED);
>=20
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C10_VDR_CONTROL(1),
> -			      0, C10_VDR_CTRL_UPDATE_CFG,
> MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_commit(encoder, owned_lane_mask,
> false);
>=20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);  } @@ -2119,9
> +2142,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder
> *encoder,
>  	 * According to C10 VDR Register programming Sequence we need
>  	 * to do this to read PHY internal registers from MsgBus.
>  	 */
> -	intel_cx0_rmw(encoder, lane, PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, lane);
>=20
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->pll); i++)
>  		pll_state->pll[i] =3D intel_cx0_read(encoder, lane,
> PHY_C10_VDR_PLL(i)); @@ -2140,9 +2161,7 @@ static void
> intel_c10_pll_program(struct intel_display *display,  {
>  	int i;
>=20
> -	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, INTEL_CX0_BOTH_LANES);
>=20
>  	/* Program the pll values only for the master lane */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->pll); i++) @@ -2157,9 +2176,8
> @@ static void intel_c10_pll_program(struct intel_display *display,
>  	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_CUSTOM_WIDTH,
>  		      C10_VDR_CUSTOM_WIDTH_MASK,
> C10_VDR_CUSTOM_WIDTH_8_10,
>  		      MB_WRITE_COMMITTED);
> -	intel_cx0_rmw(encoder, INTEL_CX0_LANE0,
> PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MASTER_LANE |
> C10_VDR_CTRL_UPDATE_CFG,
> -		      MB_WRITE_COMMITTED);
> +
> +	intel_c10_msgbus_access_commit(encoder, INTEL_CX0_LANE0, true);
>  }
>=20
>  static void intel_c10pll_dump_hw_state(struct intel_display *display, @@=
 -
> 2959,11 +2977,7 @@ static void intel_cx0_program_phy_lane(struct
> intel_encoder *encoder, int lane_c
>  	bool dp_alt_mode =3D
> intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
>  	u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>=20
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> -			      PHY_C10_VDR_CONTROL(1), 0,
> -			      C10_VDR_CTRL_MSGBUS_ACCESS,
> -			      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
>=20
>  	if (lane_reversal)
>  		disables =3D REG_GENMASK8(3, 0) >> lane_count; @@ -
> 2988,11 +3002,7 @@ static void intel_cx0_program_phy_lane(struct
> intel_encoder *encoder, int lane_c
>  			      MB_WRITE_COMMITTED);
>  	}
>=20
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> -			      PHY_C10_VDR_CONTROL(1), 0,
> -			      C10_VDR_CTRL_UPDATE_CFG,
> -			      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_commit(encoder, owned_lane_mask,
> false);
>  }
>=20
>  static u32 intel_cx0_get_pclk_pll_request(u8 lane_mask) @@ -3260,9
> +3270,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder=
,
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C10_VDR_CONTROL(1), 0,
> -			      C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
>=20
>  	for (i =3D 0; i < 4; i++) {
>  		int tx =3D i % 2 + 1;
> --
> 2.34.1

