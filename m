Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4770995261
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678F610E56D;
	Tue,  8 Oct 2024 14:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ImT3pvA1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2CFF10E56D;
 Tue,  8 Oct 2024 14:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728399078; x=1759935078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H27OAk4oOn/pksT1rvcP7kpBxtCMJ4CgkJg2oMIhay8=;
 b=ImT3pvA1Su2P+89/zRtpHRpW/FwQtgv6T/a/mwVOGW1DmqQFF6CFtjOa
 hhFByDNXQTU+v7ZdUi5j+ZpWJeWPLeRsNC48QC0LOs3DE9sZ6bz9kEmai
 1QiT/ckL011vCzyVPIsxGuVfjntEzvf8v7HhnLLQqm/gxNrpru6WorVgY
 6MAJF9uA9AZPZu1PDc5XNfn5zDVIcfXXzShf48BhBURxuqAd33IoiIQvZ
 2Mwu+atwaPoxaONTxk7ZfRVJUkAIMdVIHDt2Lj6bhz62ufHTBWJSL9io7
 e8B4Y9DHzmkWdLncd5B9Pd1OX5fdVZD/DNBrzGafFxf7RotkSlqee/yvF Q==;
X-CSE-ConnectionGUID: z5gF9ceaRVarE6FftU9Vow==
X-CSE-MsgGUID: yArEDtuDQn2V7G3qUecbqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38169618"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38169618"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:51:17 -0700
X-CSE-ConnectionGUID: +Z9zESXFRUuWPzRI42vm9Q==
X-CSE-MsgGUID: 3GIXnpLGTZmppjO6OyMLSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="106695815"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:51:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:51:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:51:17 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:51:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XtRNlsp6mxSCQs8eM9Q5J+zGnIROP/r/vdW3LFRV9L0bCAXeUcE+MTjafE1Zy6udcGXC7sbUjPOcNq1aZYQqx0IdACgLlZ5miOTm5oubGrnOJQcye3zXrj/k8NvvIfIQKm4c8nNhNr/AtNokPGN/HSIaTmu2luxtRDQJmleIx1/F5nI4Gn6giXKAqbjBgLwRHV8TpzFBRVbrd804rtaVyx9HgHrY3bWxLSmWtK3G5LqAkTqwTEJlqr8PV02XaFO1v2TLDyM3VFm5/vad5Sw4PiUqtvmhUTUvMFtlAB6U7yZNfavROP4NGNp3JQhwMSBmnZJREit6y1BAF8HIpwZUdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PAtel/EKMdprCLhsUCVylGHKTiYdubXNa+QJhotJZcs=;
 b=ejD5Zoz+sfauU6A7P8vJlYnq1o94sikQDcS4OiOZ3agokWusuOz4RL7gpu7WJi9vOeJfFxxgnQj/4HQlobz3gLUNN7qMygnzJUrcvs7IKBt1V+2PwS8NfR/K4hqgUDZ+EzDIEBCVoAvxfLH+tEDjFMWLtoKGGR87eM6KnuxTVyeeER41kBk3Y/2UTK+HlQcUobr9Cyyqqp6OB+mQ5rFoYtNWwyVcBlzKgSfC4b7iqytpDSZZFsdo7OnJeBap/Z+RGOpJ3X1RCiCEizj1oKeQH4HxK0w1k+Z5La7EWfmyuEvHfJSdMZDaeuGeST3MbvfIE3uaEuZ4Bv9FE/IXCfHNaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB8068.namprd11.prod.outlook.com (2603:10b6:806:2e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Tue, 8 Oct
 2024 14:51:15 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:51:15 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 30/31] drm/xe/display: Add missing power display handling
 on non-d3cold rpm
Thread-Topic: [PATCH 30/31] drm/xe/display: Add missing power display handling
 on non-d3cold rpm
Thread-Index: AQHbDsKX0KFcIp3rhE2R3MfC6AOo0LJ9BVkA
Date: Tue, 8 Oct 2024 14:51:14 +0000
Message-ID: <CH0PR11MB544455F2BDBBDD64999F5A71E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-31-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-31-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB8068:EE_
x-ms-office365-filtering-correlation-id: 1d56372f-bf4a-48ef-ccbe-08dce7a8a8a8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wLMDbB5YTNBdFaWu9n8wgLwohLIUegRUFq29H2uilj+Sov8zBAz+Rt3biNcq?=
 =?us-ascii?Q?O0lbzNg33hKr6ksj+duQsg1fnu5MDSDSOb6KT/xIA058nSF9PyDKyI4+ue9w?=
 =?us-ascii?Q?1BNssOUNuaUMtww/lw1betX+jsHt2lKLie41AiXm8zC68wXmcIbDVUZf1ai9?=
 =?us-ascii?Q?2QKHJt1CwH4MVDrYcVKs8STaQsryfHLHIWtChkEKS/bghftMaopgy5tKruUC?=
 =?us-ascii?Q?ndbI+y5HtblUSSCcoKxaSM2pTeAZ7iCi1N/jX6yLt/JllXI9HSUztBHLGng7?=
 =?us-ascii?Q?n+iM3r6crdqDjcXQMG4cuG8TCWmcvVQkRTQPrMsdA5nGA9Udok4jVu3cQrBP?=
 =?us-ascii?Q?RMt1MtEHDVoar2O2dLUOspr0v8PqCjFzQlkb4wNUh5SRNQVtMwj7cSX9nkG7?=
 =?us-ascii?Q?xz+k2XZp0ZYsWGSdd8Ktql991tqPRn6HVjqtHHrjomctT1rjAsdtYcWsnDkK?=
 =?us-ascii?Q?2Wk/9DyyjX0Et+oPvuavH0CDE+/u7TV6C8lyhJSxBazA2B96cZUk6b+/Q+KZ?=
 =?us-ascii?Q?CL9TyIpoPv3usPEx/vH77L6XZOdBdT+zLtl5qViqRoNr+8HeiI1Gps5ovrWi?=
 =?us-ascii?Q?iqddxWqMFdErCFG1ZL67sNr4jClhOGLTNl9pqyiL1Fn5QONGaMeT8+oOgK77?=
 =?us-ascii?Q?ryM/2lHPD3hUG9hA5h9v1kCTOQ0zskLxCdcHbM9+3JNuEhIJ1dkCnS1fd8on?=
 =?us-ascii?Q?shCeRLPjRsca260+sc9ST8QELWQ+caR9FT4S/DZsTlWwm9qIWbxwuLyuOSSm?=
 =?us-ascii?Q?/Kyt/gJSZsYAJ4Bu0MXoEW4DFtLSDarRjqpwgks+xSVfPpls5TYkP7JGPr9K?=
 =?us-ascii?Q?G6qBOsc4owJQz1FU8ygvPZLEYd4uH1bIx5SrlGwVYZ1V4raKBoa3pcdRsSAs?=
 =?us-ascii?Q?5/z2N+Q001y9GhJ4/KS34mkDHPIoRORu8wBk3H/fgSjfhCIfxnPCiGvE5Wwr?=
 =?us-ascii?Q?JVErkJmJhvorPGfuQn8ktazczwE86tZagpxa3QYp4hfq5w4/8RVTC/QAwy4J?=
 =?us-ascii?Q?sgOmrR6XvAQL46k55ffiSmKn22wY0JJJgzow4wlZlDBoWi6RjN/dAfKJkiW6?=
 =?us-ascii?Q?lu6XM9svJJNRYsrgqkvkm9/o/8k6mAsATHp0MNBB0w8AuVP59aENnx1c6xUt?=
 =?us-ascii?Q?kSLRRwp2qn933z5QMOji3Q6FJyc3zX2j27Dd9tN6NIpxFymWevFM5t+dt/kM?=
 =?us-ascii?Q?dUHrUIJCkeOhkLEkL27OGwVSiXmms6AhwwWMQ7oP3VEGcIJF8HP/E0i9LhGi?=
 =?us-ascii?Q?9IDYU1+aKpiYbOOyv6+fPlluj0dtdUZGk7D7cqzI1HV3Yg5ymlKwEO268gJH?=
 =?us-ascii?Q?WGGE8CRrBS0A9aa+n1KBcAeSPx4D+y8xHBkgd9FYpIa0eg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6HcTGDFh/JOg4+4RKbw/TogfyzDGd2KC6uKwY0o7yjsVFb/J6+JG8zotoDht?=
 =?us-ascii?Q?zFOKvEIfEP0uP3kxvOpSSMjiXZvnKwph7fp1UgSAA/8ok9CodkMd7P8SS2jp?=
 =?us-ascii?Q?VycNAg4JcHl3RCNYRz2dsmZBReL/sIpHbYgnIHqm2g71UmIkIa8CBt4WvPdz?=
 =?us-ascii?Q?PIRolWC5sPbPqFyG44s9nxv0fX8ei8zBuJfZHAbSC0UWY9HrrQKlaZv9Vwdw?=
 =?us-ascii?Q?+kLuxZQCvj1U9UstwI1a281JB8PXO2W5laFkp2Z1mJ2HvzO6txGFcX6ZUu9M?=
 =?us-ascii?Q?7caJxbkl2UtDyCuRm4qloHf5gUaMmvG8MEu8kEEIOMSwZLVyXG1EsTI6PgOZ?=
 =?us-ascii?Q?D/HVWh3t0SLEL0J+PZ9bEg3UR1m2z+JyoF2pTzn4jItEPfRYwI5Ebdid+Ovy?=
 =?us-ascii?Q?cSpCtwzE/zJdxocphiHSSmPugiUZ3xJe9tmZZKKQXBw87uDJSA8yUbwXDpLJ?=
 =?us-ascii?Q?yhMAqA8c26mIi2rSgeZyrAWUl8qbYbjMaIPe4BMGR8vy1odeuBkwDaTzBhfE?=
 =?us-ascii?Q?QgaRFkNueaT7bFwKrsikpJSzKH5bHvYzoEDu1W5vI/BnwhuY6eLu1r08h8H9?=
 =?us-ascii?Q?3d2gFx8Fl//ekCk5XKepqMS/fvUTKP//aQ/Y5ibNXLZisixX/SZwMp8bgGl7?=
 =?us-ascii?Q?5LGrzF490085ZM6LwD+PQEkmHg1b3jo3svpS5KXtSClghYlV9LZ5sdztDwxo?=
 =?us-ascii?Q?YcvlqgvlmR3Ac/Bikyq+YpETcUWjAkZ0V8I8Abxwsy8vBGTesV3joP8wG12Y?=
 =?us-ascii?Q?7cQ6g78cl4qNhb3Qu++C3l6uHCcxS3zZuqr+ZqaHrV1CzilYnekmDyisTfWc?=
 =?us-ascii?Q?7NO4p5iOm3/7bEFvTwXWJTnGyitcLSBeoXIabyr5ib+9Bp6rdD6bEuA3320W?=
 =?us-ascii?Q?cVK4lqRTlZHcyzq6AxmU8iYTnsb7YB6b5al2d/LOr6e8enUy5yVnLmMZVVv2?=
 =?us-ascii?Q?k6SzpKBa33ZWeyCbWSZN60nwZNqr6GrGwWx22MK8DKeKfPfKQnfByKIQQOTi?=
 =?us-ascii?Q?LfRTzW8qAQ1qfm/wf1FxeR/2jdozVP3aFghM+fm2avt3VidFYV+xohJEX8Uy?=
 =?us-ascii?Q?THCftgtQgaW9mOg5pUhdRY/yIWxEeKJ5/T15ksspcUwh6uTwTDXmJlMBTgsl?=
 =?us-ascii?Q?jM/qDnwl5yEnF/iqSkLLi0yQWD/wEGkEB5ExSoPWPVAKxKJNIbBmnCotrc6h?=
 =?us-ascii?Q?rx1h8QDCLsz1uLCHG0jWy8XAuSRbB1Wqmxz7MJg9BV2jCIt1efksspM6t6wq?=
 =?us-ascii?Q?hhKbU8c0QTHTGCz1ZW27AXOkqR0YsDxkG5AhkZauENn64out0FOl21XAkHjN?=
 =?us-ascii?Q?2qqWvjQRof6d413If8eeAewoCtOdX8mptqCce1dkjAXJV2j+DZCAT6sHvWpk?=
 =?us-ascii?Q?hJGwbOv2OoPdOA144lDa2UMS9v5//bb4y4SJB5Kf41CF6vw98cMJ9BzsZxZv?=
 =?us-ascii?Q?P7VTJcQpl2YvOXlPXhFuczgqxIggtYt3TCpbU/EU2+EcCMs2veZnoUrVdtNJ?=
 =?us-ascii?Q?+pSTrQiYJoQuQvD4BZPOTpJigrXoF4nMVtXzz3I3l/oBsGe63Qy5HFD8Ujt1?=
 =?us-ascii?Q?+I0fs4R4+XmgNE9tYXHXMzsJ89Tjf5un5AMNd8fxVe0PBDM/P/uOnKitWa0Y?=
 =?us-ascii?Q?vQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d56372f-bf4a-48ef-ccbe-08dce7a8a8a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:51:14.9554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AfrVyvz0cPM7wyI3zpGQaX6QIQowEX8VLCqQvXMFtywVVn3BA5nfW2fNZEAbapfWW6MW+HFjLrk35SRjHI/p2RisYd3vA2/lScTzNWDspJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8068
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 30/31] drm/xe/display: Add missing power display handling o=
n non-d3cold rpm
>=20
> On the regular igfx runtime pm sequence where d3cold is not
> possible, the proper calls to power display are required.
>=20
> Align with i915.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 23bdd8904c44..ab85c7fb217a 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -415,6 +415,8 @@ void xe_display_pm_runtime_suspend(struct xe_device *=
xe)
> =20
>  	if (xe->d3cold.allowed)
>  		xe_display_to_d3cold(xe);
> +	else
> +		intel_display_power_suspend(xe);
>  }
> =20
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> @@ -435,10 +437,12 @@ void xe_display_pm_runtime_resume_early(struct xe_d=
evice *xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	if (xe->d3cold.allowed)
> +	if (xe->d3cold.allowed) {
>  		intel_display_power_resume_early(xe);
> -	else
> +	} else {
>  		intel_opregion_notify_adapter(&xe->display, PCI_D0);
> +		intel_display_power_resume(xe);
> +	}
>  }
> =20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> --=20
> 2.46.0
>=20
>=20
