Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16349E60AC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 23:34:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B051410E2DD;
	Thu,  5 Dec 2024 22:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RWo5zjtP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42C910E2F3;
 Thu,  5 Dec 2024 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733438074; x=1764974074;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bJExkAm3NCAwTuCuZtOGyPaG/Qg0QJbYddNR5n9QzjY=;
 b=RWo5zjtPty52Kw62fV+k5QwBhfBG2/nxLnwtZOfpz9tIaM2jzIbbA2VF
 TrhNletR5qYO/qFJi984+24oopUihlSjlKX2y0gRwKYJpLz/UYgiarw3P
 oxrEz1wNU1kxuwDQICbxekjLnxMicun6KegjxGtaSNSwWkFxEFkHzYuZy
 FLGjaGqZUMBjQpwa1tzdngNoTZ+ECfl4yAXmi4GgsRQ9bA7ndCw9KXFxH
 IirZudwhYmQp+5X8iEHxqUvPNmWgP0gJk4WGzze+8kfrfMfH5I0lYXmVc
 BNo+o5s3ut3j50OkutrInrDlUkRlmR8m7BxqRJYlgN3uLf5pBAqg0n5My g==;
X-CSE-ConnectionGUID: Fy4T1zKCRRuYbofa+KJJJg==
X-CSE-MsgGUID: DK49Lni0SzeIWxWFz7j21Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33692045"
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="33692045"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 14:34:33 -0800
X-CSE-ConnectionGUID: wutpThRWQ6ejY5FFyJ7tjQ==
X-CSE-MsgGUID: NYrH2YJTRTCvduC394dCug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="117479515"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 14:34:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 14:34:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 14:34:32 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 14:34:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uTYaLKCzoDDbM9oSjdfuNOESvKURDXQk61y/a5AejwNLHsLGhTW12HwFOzHVOFBhXinDsef6yX4FJ89QRr+mGYoaC8aNr/lquvolmVyEkeJC06EqMETnS7y6eDzLNx2275sgX5eDvl2dIvfbHwLXRAsAZHqdXKetg5SnGv9xCnZdeVyfH8bGdaJwHSVKqcU8iQlHODDaE7JpJbA/r3T4PIyzDMCBlqNx4uvP1mQF/nzH3l/kOyAXJdOdpFbNemv8nyC0G4XD2WnMw1swH2ohJSXYrSJm55KBFnHk4UaEdRQIUzhhkE16VJsYf3sI0naIJcgPo5MdZQEH4SrAupBoUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dG45B0vQg4CkZaaw5uAgU9+KJxEQHJt9nkevQfip2Q=;
 b=UWnugLruuH+p74PnlUuAG8GflJD4oDmEtDTRi1XtcHmSGdkM1IBPOkVpbaSTmmqW+2o/B6faHMnBlMS17ASbwD5BX4wDnSBZMVBIAJ918bLuaFZj8eMSObJCowe166Q+N2aiusMe3bXqUX6ozIMqhzuf4UzfViTf7o35BOhINZ6MQRcHMHVKOUW7n8hMsBgoSRE7Liavdc9O+jXrqLc5xwuZ30RWVvUMuDMRRwduerVBtgyQzv4bNd3zaesVHe76bh8DYXPbCScd7/zoUhbBcrba2ChT2079Tfdfi/WopK5Qal6VJcn+Q7+QLyVcO2kg3zn4ynqd3C5Hou3giNufUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5801.namprd11.prod.outlook.com (2603:10b6:806:23d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Thu, 5 Dec
 2024 22:34:26 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 22:34:26 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: RE: [PATCH v2 3/3] drm/i915/xe3: Use hw support for min/interim ddb
 allocations for async flip
Thread-Topic: [PATCH v2 3/3] drm/i915/xe3: Use hw support for min/interim ddb
 allocations for async flip
Thread-Index: AQHbPAh0KtyojLu5d0Sz4UuMY3h647LYU2WA
Date: Thu, 5 Dec 2024 22:34:26 +0000
Message-ID: <DM4PR11MB636023BDE883AFEBE36E9A10F4302@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
 <20241121112726.510220-4-vinod.govindapillai@intel.com>
In-Reply-To: <20241121112726.510220-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5801:EE_
x-ms-office365-filtering-correlation-id: 986ed6f2-8419-4468-0e1e-08dd157cf984
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?R7izBEU5reLIgp7SRu+Ef2im5AFddtCWg/aLfB2jQ4GjYK2C+PjLNeba+ZOz?=
 =?us-ascii?Q?lkTKLIRY6pJE+sDsg0QvckkcbsuqallbXx6TUf8fhchEbRNf0AAP7Eelzppe?=
 =?us-ascii?Q?3QUOCiSMu4iH6BxX977DoF5kCBqxqSavxzxTV/J3b8V1GnUzEwino16DeTxn?=
 =?us-ascii?Q?w6AK3slVajlMSf6tNWLuGDc/d6CwNvKjqYWLqjWb8XFOweOTKfTu+ct6Mnqh?=
 =?us-ascii?Q?tAWQ2G+79qWYO4tcN4CvspdZp03nYwHnuc0G8choM67BX5uvTFsEHTCqg8iv?=
 =?us-ascii?Q?r3c+sHKR0uzAIGcAVHNBNsfpjRZTYcmPPUDsRrig+1iYf/YIzwjrbQdhlb99?=
 =?us-ascii?Q?oU2XkkcbBWHtcuHswWyL+3V6dXY8mVN6dC4BF7D7L86p3rY8v32ZMjU+xCD/?=
 =?us-ascii?Q?vTsqfV6+DgHydJ3DNAv7o9WHDZfKpUTY2gmIfXHgq27LUR4lpSBB1GnNLgIB?=
 =?us-ascii?Q?T5ZifLha8KjMIYvwaY/lX9pNWXHng+pmurp1cHMpoikloeKW1O/o9/uyCZvZ?=
 =?us-ascii?Q?+9TlLtpWvP6/Dt373auBzrGp/8bZPQSzCjNCIXUMZ6kv3TEIs+RvazIbj61e?=
 =?us-ascii?Q?nD9h8W4kLpjoMgzdcpg47VtUQAKhNPHpd13gAq34RgF/Flf6oQNmzxbFdV0/?=
 =?us-ascii?Q?8amR3U31PWmyo/fA698Q5yhKwJemxtJxY1lyj2MGlaCCqiO37/9TVmp0oNkN?=
 =?us-ascii?Q?/yf+b4x6cE8KT30y9FA5W/cfzZ4DILvIjMNvsEF9eh+RK8wQGl3hC8ikAtcQ?=
 =?us-ascii?Q?IrYNx1UzPT0jHu7hEEixjYvh3/BSDODCw34KARhJs4WV4IzYDjWgyqBpHIbA?=
 =?us-ascii?Q?NtwK5sDiqg2LNzr9/1mI0TgjOCMn1+cJ1N3+3FmRXvU3vBAf8PLg1RmhvGvz?=
 =?us-ascii?Q?7VJ1pEymsLrrxIoF444ku08vyfVXXs2j50L2gdi+xAVp1cVXIYZ3iVGv9XLP?=
 =?us-ascii?Q?MC9aJKYwcInPy1Zrp2S+HXfQOuNgV21hMukVTg8CnXmD+f87pi3hmJvk6Kyp?=
 =?us-ascii?Q?iaRtZaPfLBwos+0DVewjdm43yIeJqk4xhaAaOm3mO4zzo+6cwsT9zFtgW9pQ?=
 =?us-ascii?Q?DzMEEvZ7MmDV9oVNVOASZA/OdiXROrjUVjxfb3QA2/qGtx/9JR/J90+tiGhT?=
 =?us-ascii?Q?Zd/5WJvzZLqrI95hjy8UP7j/igoAF3VwNzjFBGL4QI4b39hQW4UwfgGbXFwu?=
 =?us-ascii?Q?6T4zVSJXDL7052uf5Y/VAYy5bTogffiPo46Z/taLlJ2/FeP9H3AGUzArQmVI?=
 =?us-ascii?Q?fUn41S2gCSJEvDldzTZRSp7s+hH5hVeVVKe8yRu6/N6m1ZoXoSnKzXC/i3Kh?=
 =?us-ascii?Q?KCJY7FzcqzJF7NCe/eY165bwfpm9onyeRgRk8L4692uejoTdjG+VHDDHBm19?=
 =?us-ascii?Q?fvzQZuypVH0hBeiNuBe/B8nNgmhVOHz645km7DvVgCjtjsyO4g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tmOekmFC5jug51xfTVXjWJnp/Kn/gCnXahjDODU/H98pfG3VVP+ww5eKLs9b?=
 =?us-ascii?Q?tHsuRc3x6LDEej9nBNOCsuJWTnsl+hANJ3nNDzOTbY27da4BhlMSDzc7xymX?=
 =?us-ascii?Q?3b7Fn+AXVD+ck8QlV1abZ8vw5jHoC293x0w8gzmQvvCp/raIzC7vfQb1vbWp?=
 =?us-ascii?Q?GpccMww5cwhCVSWh3/PEeSnwAhLa0jGPT4azBZGSOTivqh3TRiZ1xpg8Fv6F?=
 =?us-ascii?Q?+cmy+TkGLMHk3QTxiSKSJ/1/UpnHtWF/0usHRc/I/O7S3FRgeUgyWrGYANmT?=
 =?us-ascii?Q?U2RFL4BAb9X2/n6pspJKJJuuPb7VzlFnixieMm8zeEVdyePEMzR3ywDMowoa?=
 =?us-ascii?Q?lWddn7URUl4fn3eNXpTUeyw9si0cp8dpPOLm+trb+1+8bBqSV6YRp7WkdRac?=
 =?us-ascii?Q?kkyT6U0gUnQnW4lKsKYoPVCkzFejt7nQy6t1AR9jKjfGMF/a1QsyBbDdCcqc?=
 =?us-ascii?Q?rNgoKtz21qQgMED1TgE/oDlOEz2WTbMBLq6jv2lQtQPEY2/NmpT1qGP8MCvR?=
 =?us-ascii?Q?H2wQlYXHSBcgqMpYfEQj0CluQyRnyGNtJ2MnT1mdl6WWiYR320HSh2HmjWU5?=
 =?us-ascii?Q?9geh0ORNk139mv+HClF70+oLze2BMkMCka/F1Tvrh8UXvhIBs25+k+ylpn4L?=
 =?us-ascii?Q?QTWLWS6E189Rcgs2henyTM82SAs6tbISG46iQx17wEP/DkpSBN2s0V+FogtH?=
 =?us-ascii?Q?nzE40jZoyje6IsTqfXtxUAltlG3vuB4BFUKRSPXUNYMUPFdtwwHQHj3ygS/t?=
 =?us-ascii?Q?TOI6hID4Th6KCdqcUuOr+6/P30yqhOXpAgIVv94isFkBtSAkQkLXhbIuTS1L?=
 =?us-ascii?Q?K/k/mGEvAWWpWf5ebrcc8CqJxcsfhShO4/wm+sKNpkrNTO8/OWWbAAnxhoas?=
 =?us-ascii?Q?QDjq0nMmVvwINEX0101Nr2IVqfTBYGBjDA4maHrOS6s07dOQt6W0p33Ch9Wj?=
 =?us-ascii?Q?HB4h5fzgd5CjEtLvhv9ZvYToMGYv6a9X+BRooodtwNWpsNcVg5HbHM1vh8eL?=
 =?us-ascii?Q?6IG3HjD+QYsaHqhGiG4rj3gQhVHn0uKGSAkKbiwlib21quZ2NUegOvmtHxXT?=
 =?us-ascii?Q?6iSOxTv1kkH96szmv9+EzDiNoxqHg57A7hxInIGEYxa2PP/RrAE0bjO/WJbN?=
 =?us-ascii?Q?Ipgh/cDShFue56pL8jwtd5/IUE1pQ1tXkfLruLwl2QNg3Uai+6aoEyKdVQru?=
 =?us-ascii?Q?iffWiMQwv+9hyK8ao58CDHA4Tk0L5PI1NeYv62qU10L52vNCGWoPH5cFqaiv?=
 =?us-ascii?Q?d+tTuWUh1A2rL3HEWR/Ex+REmDepT0PBqq138/QaSW4EoUpdG3cT/QkGmldt?=
 =?us-ascii?Q?AdgnUDe2jlkyMaTFChqSNI4YCX8UxMNyj0AmUt7vZcb5VNGPUwZiUr08Qc/B?=
 =?us-ascii?Q?7v9V8Kc++5io80xZA2aevceUzCdP8FKyAq23dq5jj5fOBJLDOqqMeq2NQqBO?=
 =?us-ascii?Q?x7U9KSYhC23O5ekMkgd0kkuCAUGxSJX4eWsSyELdGWe5D/QlkEgo1N5RFc2L?=
 =?us-ascii?Q?CcFRVlCv3fw1nT/tLdQ2yBfCPSp+2cIHaQgukHqPYchbNUJoX5vEhd3XeNH8?=
 =?us-ascii?Q?dqrIByIF7lxeZB3DPKsTnnAQ6RSDcvluse3UbkCX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 986ed6f2-8419-4468-0e1e-08dd157cf984
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 22:34:26.2176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VvKLwqs/0AgAk+amjRuv2FNUmBKcKSfHxfEhrAxukZaKbpwrzXnobDkflB0icD+5MlToZmEoMpKApk796eQRXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5801
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Thursday, November 21, 2024 4:57 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>; Saarin=
en, Jani
> <jani.saarinen@intel.com>
> Subject: [PATCH v2 3/3] drm/i915/xe3: Use hw support for min/interim ddb
> allocations for async flip
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Xe3 is capable of switching automatically to min ddb allocation (not usin=
g any
> extra blocks) or interim SAGV-adjusted allocation in case if async flip i=
s used.
> Introduce the minimum and interim ddb allocation configuration for that p=
urpose.
> Also i915 is replaced with intel_display within the patch's context
>=20
> v2: update min/interim ddb declarations and handling (Ville)
>     update to register definitions styling
>     consolidation of minimal wm0 check with min DDB check

Change Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 69880, 72053
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  8 ++
>  .../drm/i915/display/skl_universal_plane.c    | 26 ++++++
>  .../i915/display/skl_universal_plane_regs.h   | 15 ++++
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 87 +++++++++++++++----
>  4 files changed, 118 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 339e4b0f7698..278b4c21f9d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -769,6 +769,7 @@ struct skl_wm_level {
>  	u8 lines;
>  	bool enable;
>  	bool ignore_lines;
> +	bool auto_min_alloc_wm_enable;
>  	bool can_sagv;
>  };
>=20
> @@ -863,6 +864,13 @@ struct intel_crtc_wm_state {
>  			struct skl_ddb_entry plane_ddb[I915_MAX_PLANES];
>  			/* pre-icl: for planar Y */
>  			struct skl_ddb_entry plane_ddb_y[I915_MAX_PLANES];
> +
> +			/*
> +			 * xe3: Minimum amount of display blocks and minimum
> +			 * sagv allocation required for async flip
> +			 */
> +			u16 plane_min_ddb[I915_MAX_PLANES];
> +			u16 plane_interim_ddb[I915_MAX_PLANES];
>  		} skl;
>=20
>  		struct {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 4c7bcf6806ff..ff9764cac1e7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -717,6 +717,22 @@ static u32 skl_plane_ddb_reg_val(const struct
> skl_ddb_entry *entry)
>  		PLANE_BUF_START(entry->start);
>  }
>=20
> +static u32 xe3_plane_min_ddb_reg_val(const u16 *min_ddb,
> +				     const u16 *interim_ddb)
> +{
> +	u32 val =3D 0;
> +
> +	if (*min_ddb)
> +		val |=3D PLANE_MIN_DBUF_BLOCKS(*min_ddb);
> +
> +	if (*interim_ddb)
> +		val |=3D PLANE_INTERIM_DBUF_BLOCKS(*interim_ddb);
> +
> +	val |=3D val ? PLANE_AUTO_MIN_DBUF_EN : 0;
> +
> +	return val;
> +}
> +
>  static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)  {
>  	u32 val =3D 0;
> @@ -725,6 +741,9 @@ static u32 skl_plane_wm_reg_val(const struct
> skl_wm_level *level)
>  		val |=3D PLANE_WM_EN;
>  	if (level->ignore_lines)
>  		val |=3D PLANE_WM_IGNORE_LINES;
> +	if (level->auto_min_alloc_wm_enable)
> +		val |=3D PLANE_WM_AUTO_MIN_ALLOC_EN;
> +
>  	val |=3D REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
>  	val |=3D REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
>=20
> @@ -743,6 +762,9 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
>  		&crtc_state->wm.skl.plane_ddb[plane_id];
>  	const struct skl_ddb_entry *ddb_y =3D
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +	const u16 *min_ddb =3D &crtc_state->wm.skl.plane_min_ddb[plane_id];
> +	const u16 *interim_ddb =3D
> +		&crtc_state->wm.skl.plane_interim_ddb[plane_id];
>  	int level;
>=20
>  	for (level =3D 0; level < display->wm.num_levels; level++) @@ -767,6
> +789,10 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
>  	if (DISPLAY_VER(display) < 11)
>  		intel_de_write_dsb(display, dsb, PLANE_NV12_BUF_CFG(pipe,
> plane_id),
>  				   skl_plane_ddb_reg_val(ddb_y));
> +
> +	if (DISPLAY_VER(display) >=3D 30)
> +		intel_de_write_dsb(display, dsb, PLANE_MIN_BUF_CFG(pipe,
> plane_id),
> +				   xe3_plane_min_ddb_reg_val(min_ddb,
> interim_ddb));
>  }
>=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index ff31a00d511e..ca9fdfbbe57c 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -322,6 +322,7 @@
>  							   _PLANE_WM_2_A_0,
> _PLANE_WM_2_B_0)
>  #define   PLANE_WM_EN				REG_BIT(31)
>  #define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
> +#define   PLANE_WM_AUTO_MIN_ALLOC_EN		REG_BIT(29)
>  #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
>  #define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
>=20
> @@ -373,12 +374,26 @@
>  #define PLANE_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
>=20
> 	_PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B, \
>=20
> 	_PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
> +
>  /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
>  #define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
>  #define   PLANE_BUF_END(end)
> 	REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
>  #define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
>  #define   PLANE_BUF_START(start)
> 	REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
>=20
> +#define _PLANE_MIN_BUF_CFG_1_A			0x70274
> +#define _PLANE_MIN_BUF_CFG_2_A			0x70374
> +#define _PLANE_MIN_BUF_CFG_1_B			0x71274
> +#define _PLANE_MIN_BUF_CFG_2_B			0x71374
> +#define PLANE_MIN_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe),
> (plane), \
> +
> 	_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \
> +
> 	_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)
> +#define	  PLANE_AUTO_MIN_DBUF_EN		REG_BIT(31)
> +#define	  PLANE_MIN_DBUF_BLOCKS_MASK
> 	REG_GENMASK(27, 16)
> +#define	  PLANE_MIN_DBUF_BLOCKS(val)
> 	REG_FIELD_PREP(PLANE_MIN_DBUF_BLOCKS_MASK, (val))
> +#define	  PLANE_INTERIM_DBUF_BLOCKS_MASK	REG_GENMASK(11, 0)
> +#define	  PLANE_INTERIM_DBUF_BLOCKS(val)
> 	REG_FIELD_PREP(PLANE_INTERIM_DBUF_BLOCKS_MASK, (val))
> +
>  /* tgl+ */
>  #define _SEL_FETCH_PLANE_CTL_1_A		0x70890
>  #define _SEL_FETCH_PLANE_CTL_2_A		0x708b0
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 23ed989f01dc..2d87e02d90e6 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -801,30 +801,40 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private
> *i915,
>  			   const enum pipe pipe,
>  			   const enum plane_id plane_id,
>  			   struct skl_ddb_entry *ddb,
> -			   struct skl_ddb_entry *ddb_y)
> +			   struct skl_ddb_entry *ddb_y,
> +			   u16 *min_ddb, u16 *interim_ddb)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	u32 val;
>=20
>  	/* Cursor doesn't support NV12/planar, so no extra calculation needed *=
/
>  	if (plane_id =3D=3D PLANE_CURSOR) {
> -		val =3D intel_de_read(i915, CUR_BUF_CFG(pipe));
> +		val =3D intel_de_read(display, CUR_BUF_CFG(pipe));
>  		skl_ddb_entry_init_from_hw(ddb, val);
>  		return;
>  	}
>=20
> -	val =3D intel_de_read(i915, PLANE_BUF_CFG(pipe, plane_id));
> +	val =3D intel_de_read(display, PLANE_BUF_CFG(pipe, plane_id));
>  	skl_ddb_entry_init_from_hw(ddb, val);
>=20
> -	if (DISPLAY_VER(i915) >=3D 11)
> +	if (DISPLAY_VER(display) >=3D 30) {
> +		val =3D intel_de_read(display, PLANE_MIN_BUF_CFG(pipe,
> plane_id));
> +
> +		*min_ddb =3D
> REG_FIELD_GET(PLANE_MIN_DBUF_BLOCKS_MASK, val);
> +		*interim_ddb =3D
> REG_FIELD_GET(PLANE_INTERIM_DBUF_BLOCKS_MASK, val);
> +	}
> +
> +	if (DISPLAY_VER(display) >=3D 11)
>  		return;
>=20
> -	val =3D intel_de_read(i915, PLANE_NV12_BUF_CFG(pipe, plane_id));
> +	val =3D intel_de_read(display, PLANE_NV12_BUF_CFG(pipe, plane_id));
>  	skl_ddb_entry_init_from_hw(ddb_y, val);  }
>=20
>  static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  				      struct skl_ddb_entry *ddb,
> -				      struct skl_ddb_entry *ddb_y)
> +				      struct skl_ddb_entry *ddb_y,
> +				      u16 *min_ddb, u16 *interim_ddb)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	enum intel_display_power_domain power_domain; @@ -841,7 +851,9
> @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  		skl_ddb_get_hw_plane_state(i915, pipe,
>  					   plane_id,
>  					   &ddb[plane_id],
> -					   &ddb_y[plane_id]);
> +					   &ddb_y[plane_id],
> +					   &min_ddb[plane_id],
> +					   &interim_ddb[plane_id]);
>=20
>  	intel_display_power_put(i915, power_domain, wakeref);  } @@ -1376,9
> +1388,10 @@ static bool  use_minimal_wm0_only(const struct intel_crtc_sta=
te
> *crtc_state,
>  		     struct intel_plane *plane)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20
> -	return DISPLAY_VER(i915) >=3D 13 &&
> +	/* Xe3+ are auto minimum DDB capble. So don't force minimal wm0 */
> +	return IS_DISPLAY_VER(display, 13, 20) &&
>  	       crtc_state->uapi.async_flip &&
>  	       plane->async_flip;
>  }
> @@ -1535,6 +1548,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te
> *state,
>  	const struct intel_dbuf_state *dbuf_state =3D
>  		intel_atomic_get_new_dbuf_state(state);
>  	const struct skl_ddb_entry *alloc =3D &dbuf_state->ddb[crtc->pipe];
> +	struct intel_display *display =3D to_intel_display(state);
>  	int num_active =3D hweight8(dbuf_state->active_pipes);
>  	struct skl_plane_ddb_iter iter;
>  	enum plane_id plane_id;
> @@ -1545,6 +1559,10 @@ skl_crtc_allocate_plane_ddb(struct
> intel_atomic_state *state,
>  	/* Clear the partitioning for disabled planes. */
>  	memset(crtc_state->wm.skl.plane_ddb, 0, sizeof(crtc_state-
> >wm.skl.plane_ddb));
>  	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state-
> >wm.skl.plane_ddb_y));
> +	memset(crtc_state->wm.skl.plane_min_ddb, 0,
> +	       sizeof(crtc_state->wm.skl.plane_min_ddb));
> +	memset(crtc_state->wm.skl.plane_interim_ddb, 0,
> +	       sizeof(crtc_state->wm.skl.plane_interim_ddb));
>=20
>  	if (!crtc_state->hw.active)
>  		return 0;
> @@ -1617,6 +1635,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te
> *state,
>  			&crtc_state->wm.skl.plane_ddb[plane_id];
>  		struct skl_ddb_entry *ddb_y =3D
>  			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		u16 *min_ddb =3D &crtc_state->wm.skl.plane_min_ddb[plane_id];
> +		u16 *interim_ddb =3D
> +			&crtc_state->wm.skl.plane_interim_ddb[plane_id];
>  		const struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>=20
> @@ -1633,6 +1654,11 @@ skl_crtc_allocate_plane_ddb(struct
> intel_atomic_state *state,
>  			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
>  					       crtc_state-
> >rel_data_rate[plane_id]);
>  		}
> +
> +		if (DISPLAY_VER(display) >=3D 30) {
> +			*min_ddb =3D wm->wm[0].min_ddb_alloc;
> +			*interim_ddb =3D wm->sagv.wm0.min_ddb_alloc;
> +		}
>  	}
>  	drm_WARN_ON(&i915->drm, iter.size !=3D 0 || iter.data_rate !=3D 0);
>=20
> @@ -1676,6 +1702,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te
> *state,
>  			&crtc_state->wm.skl.plane_ddb[plane_id];
>  		const struct skl_ddb_entry *ddb_y =3D
>  			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		u16 *interim_ddb =3D
> +			&crtc_state->wm.skl.plane_interim_ddb[plane_id];
>  		struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>=20
> @@ -1689,6 +1717,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te
> *state,
>  		}
>=20
>  		skl_check_wm_level(&wm->sagv.wm0, ddb);
> +		if (DISPLAY_VER(display) >=3D 30)
> +			*interim_ddb =3D wm->sagv.wm0.min_ddb_alloc;
> +
>  		skl_check_wm_level(&wm->sagv.trans_wm, ddb);
>  	}
>=20
> @@ -1767,6 +1798,7 @@ skl_compute_wm_params(const struct
> intel_crtc_state *crtc_state,
>  		      int color_plane, unsigned int pan_x)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	u32 interm_pbpl;
>=20
> @@ -1825,7 +1857,7 @@ skl_compute_wm_params(const struct
> intel_crtc_state *crtc_state,
>  					   wp->y_min_scanlines,
>  					   wp->dbuf_block_size);
>=20
> -		if (DISPLAY_VER(i915) >=3D 30)
> +		if (DISPLAY_VER(display) >=3D 30)
>  			interm_pbpl +=3D (pan_x !=3D 0);
>  		else if (DISPLAY_VER(i915) >=3D 10)
>  			interm_pbpl++;
> @@ -1890,6 +1922,12 @@ static int skl_wm_max_lines(struct drm_i915_privat=
e
> *i915)
>  		return 31;
>  }
>=20
> +static bool xe3_auto_min_alloc_capable(struct intel_display *display,
> +				       int level)
> +{
> +	return DISPLAY_VER(display) >=3D 30 && level =3D=3D 0; }
> +
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 struct intel_plane *plane,
>  				 int level,
> @@ -1899,6 +1937,7 @@ static void skl_compute_plane_wm(const struct
> intel_crtc_state *crtc_state,
>  				 struct skl_wm_level *result /* out */)  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	uint_fixed_16_16_t method1, method2;
>  	uint_fixed_16_16_t selected_result;
>  	u32 blocks, lines, min_ddb_alloc =3D 0;
> @@ -2022,6 +2061,7 @@ static void skl_compute_plane_wm(const struct
> intel_crtc_state *crtc_state,
>  	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the +1=
 here
> */
>  	result->min_ddb_alloc =3D max(min_ddb_alloc, blocks) + 1;
>  	result->enable =3D true;
> +	result->auto_min_alloc_wm_enable =3D
> xe3_auto_min_alloc_capable(display,
> +level);
>=20
>  	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
>  		result->can_sagv =3D latency >=3D i915->display.sagv.block_time_us;
> @@ -2401,16 +2441,18 @@ static bool skl_wm_level_equals(const struct
> skl_wm_level *l1,
>  	return l1->enable =3D=3D l2->enable &&
>  		l1->ignore_lines =3D=3D l2->ignore_lines &&
>  		l1->lines =3D=3D l2->lines &&
> -		l1->blocks =3D=3D l2->blocks;
> +		l1->blocks =3D=3D l2->blocks &&
> +		l1->auto_min_alloc_wm_enable =3D=3D l2-
> >auto_min_alloc_wm_enable;
>  }
>=20
>  static bool skl_plane_wm_equals(struct drm_i915_private *i915,
>  				const struct skl_plane_wm *wm1,
>  				const struct skl_plane_wm *wm2)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	int level;
>=20
> -	for (level =3D 0; level < i915->display.wm.num_levels; level++) {
> +	for (level =3D 0; level < display->wm.num_levels; level++) {
>  		/*
>  		 * We don't check uv_wm as the hardware doesn't actually
>  		 * use it. It only gets used for calculating the required @@ -
> 2950,6 +2992,8 @@ static void skl_wm_level_from_reg_val(struct intel_disp=
lay
> *display,
>  	level->ignore_lines =3D val & PLANE_WM_IGNORE_LINES;
>  	level->blocks =3D REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
>  	level->lines =3D REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
> +	level->auto_min_alloc_wm_enable =3D DISPLAY_VER(display) >=3D 30 ?
> +					   val &
> PLANE_WM_AUTO_MIN_ALLOC_EN : 0;
>  }
>=20
>  static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc, @@ -3009,1=
1
> +3053,11 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915=
)
>  	struct intel_crtc *crtc;
>=20
>  	if (HAS_MBUS_JOINING(display))
> -		dbuf_state->joined_mbus =3D intel_de_read(i915, MBUS_CTL) &
> MBUS_JOIN;
> +		dbuf_state->joined_mbus =3D intel_de_read(display, MBUS_CTL) &
> +MBUS_JOIN;
>=20
>  	dbuf_state->mdclk_cdclk_ratio =3D intel_mdclk_cdclk_ratio(display,
> &display->cdclk.hw);
>=20
> -	for_each_intel_crtc(&i915->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
>  		enum pipe pipe =3D crtc->pipe;
> @@ -3034,12 +3078,17 @@ static void skl_wm_get_hw_state(struct
> drm_i915_private *i915)
>  				&crtc_state->wm.skl.plane_ddb[plane_id];
>  			struct skl_ddb_entry *ddb_y =3D
>  				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			u16 *min_ddb =3D
> +				&crtc_state->wm.skl.plane_min_ddb[plane_id];
> +			u16 *interim_ddb =3D
> +				&crtc_state-
> >wm.skl.plane_interim_ddb[plane_id];
>=20
>  			if (!crtc_state->hw.active)
>  				continue;
>=20
>  			skl_ddb_get_hw_plane_state(i915, crtc->pipe,
> -						   plane_id, ddb, ddb_y);
> +						   plane_id, ddb, ddb_y,
> +						   min_ddb, interim_ddb);
>=20
>  			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
>  			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
> @@ -3061,7 +3110,7 @@ static void skl_wm_get_hw_state(struct
> drm_i915_private *i915)
>  		dbuf_state->slices[pipe] =3D
>  			skl_ddb_dbuf_slice_mask(i915, &crtc_state-
> >wm.skl.ddb);
>=20
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active
> pipes 0x%x, mbus joined: %s\n",
>  			    crtc->base.base.id, crtc->base.name,
>  			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
> @@ -3069,7 +3118,7 @@ static void skl_wm_get_hw_state(struct
> drm_i915_private *i915)
>  			    str_yes_no(dbuf_state->joined_mbus));
>  	}
>=20
> -	dbuf_state->enabled_slices =3D i915->display.dbuf.enabled_slices;
> +	dbuf_state->enabled_slices =3D display->dbuf.enabled_slices;
>  }
>=20
>  bool skl_watermark_ipc_enabled(struct drm_i915_private *i915) @@ -3704,6
> +3753,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
>  	struct skl_hw_state {
>  		struct skl_ddb_entry ddb[I915_MAX_PLANES];
>  		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> +		u16 min_ddb[I915_MAX_PLANES];
> +		u16 interim_ddb[I915_MAX_PLANES];
>  		struct skl_pipe_wm wm;
>  	} *hw;
>  	const struct skl_pipe_wm *sw_wm =3D &new_crtc_state->wm.skl.optimal;
> @@ -3720,7 +3771,7 @@ void intel_wm_state_verify(struct intel_atomic_stat=
e
> *state,
>=20
>  	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
>=20
> -	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
> +	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y, hw->min_ddb,
> +hw->interim_ddb);
>=20
>  	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(i915);
>=20
> --
> 2.34.1

