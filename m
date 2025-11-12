Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B4FC5099A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:20:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F0910E15A;
	Wed, 12 Nov 2025 05:20:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jgvFuZ9m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B267610E064;
 Wed, 12 Nov 2025 05:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762924823; x=1794460823;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FdYvNa0wBMlYo8ALfXMpZrfpy67TSYq7tj7+WAb/gwg=;
 b=jgvFuZ9mYl87Hel7tp+eLcWd9nY+XkQsQMhuY6oShh2H9KclNY3Dh3Qw
 0avyJJvVtpWJRkErHZDroftv2ug6cGnjyGssIqj1Jka9lifxmbaYUxfYH
 6RpsQHUmm7/e3M3PxJmlTa64Oa7gR9VdA8mTNcv8IwQA8+VqCyFsnf6Ez
 p/2WQjnEO9Lin95Pvv6MviJ/b3mkUJcwNObRh1HauHQDluQr39bh95tHk
 1Z/Z9YnWuadRKCr6GsCZ6rhqEDipAllfF5C+RPLwm6fKCRgKX7ZGxO2gy
 C37H/HoY7Z+XkgNrNvkp3akHPDxmqZO5SAFy2VssgYOW2CBdNqSN19v7E A==;
X-CSE-ConnectionGUID: aiBr4GOmQSSlGEOzOenpvg==
X-CSE-MsgGUID: J7SWSIxpRxi91xE2rhGOKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="75663479"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="75663479"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:20:21 -0800
X-CSE-ConnectionGUID: kacFGf6MQSihD5c//chzCA==
X-CSE-MsgGUID: VxRuoTG3QjiqBnAozLv3pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="189853848"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:20:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:20:21 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:20:21 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:20:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AiudeOwxo06yd1Tnx/AhAAMt9dWzO7GWSL0eTrQn7ACrSfMWbtoxOvIwC68uF96Wgr0RUmmuL5Pwnz3iiaL8tw5EWN6/dfHErNbTEQUADQbknGnUuahdKV03vDah3WNpoqpLp8LbBgF+pVE9VKoM89DQz8nHUdLlPGk84phyGqX4sK7JJrB2PwIiRaSspjnL6bj0FMEU7jzZkT80R5L00HgH7702DvUxbZqQ6xyNIenQpoKAwQzo2V/JJcF0aXmSkVAhTozRgN/j3Ntpdhhzi9hr0AjsWTpb5VQcnVZuclVOyypJMFGBRrITi+Z5CuT5jsTLp/06hdHzpkvKDkSgtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mmZ6TCT+IOX8xVdVfSjNQQyUOB1ymiI+vuGiWR3W+w=;
 b=wqa/lj9iDHr6FEMlmFSZgSH7KJfs5m2KKKGufWKyMOA2jAC/Supea9wfrwVsBfnt9xueJsaJci15tIwOZ5pWc6jKUQEtv51HYb+uaPc3FoP8Sr7T0/KzCq4EXwYBbUZQ1AHAJ7kU/Y8cRcRViGaWfiwaTnw2Odwmw7ybxgLdHj9GmuAm+1YpU57eq+HP856aEfOjvNwd0vluiBoF92QLVCb+zw2UpCrUDkziiSYeCDIGOeLqyCVH33Fy1sFqcV90YI+5X4QgTILZQz606EL+hHVdo5sMgV46fkiRGZ+PI5mVA/EWRAjGzVSeIQTmViXoztOyJNMUZ2631TBYKFNmMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB4789.namprd11.prod.outlook.com
 (2603:10b6:510:38::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Wed, 12 Nov
 2025 05:20:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:20:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 27/32] drm/i915/display: Add .crtc_get_dpll hook
Thread-Topic: [CI 27/32] drm/i915/display: Add .crtc_get_dpll hook
Thread-Index: AQHcSlaF3PwmfMfAvEOrK8NwiCsFebTuk0Yg
Date: Wed, 12 Nov 2025 05:20:18 +0000
Message-ID: <DM3PPF208195D8DA12DC00048159AE5930AE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-28-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-28-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB4789:EE_
x-ms-office365-filtering-correlation-id: 632452dc-19f3-4245-c89f-08de21ab2b9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?zmsRI5+NL2PsSznQaZOw1Qj0RbnYV09VvXkP5t+RJ86JUENKijJ/sBYpz2ar?=
 =?us-ascii?Q?OehTZ/GPAN1aG6uO8IJAdIAVUu95Xi1D7ieoYgrvbk9Uc9kIKuTODWW/c92t?=
 =?us-ascii?Q?MBpvnt/of4ZL4owGV14Cxp0sDy+QdJbHaLTKqlTMk+h60r4qwGS0sxYJDkNo?=
 =?us-ascii?Q?xXdQPN+REq7Z9UiMHbwtnd1/Sa29LS9h9T8FG8P3MoGFfJ82yrDp4vMcED/A?=
 =?us-ascii?Q?1/Z2quY19IdpCshDUyWX1ZkWSSWAlR4ApTpY8nOKSPp3IgY3tHVXmLiV+xUx?=
 =?us-ascii?Q?2fbNelIFoH+A3uCNORGmIHW8KkluQ+iZ9aquwjFDuVRsbAgvMnBYTc20GMrQ?=
 =?us-ascii?Q?s1SSsAPHwy2MmQc6ILTcW0EuwPIStSwVm1WGdNUXVHJNr4Fy9NA7+MTZPttg?=
 =?us-ascii?Q?vnjUQoTlYnsIBK+qLjthVPVfgfPokFPcSjH99mgF1K6pzBwnT5XtaO7EMO+1?=
 =?us-ascii?Q?C2S+s8VEOitU9W8ynk2Ch/9xh//U6E6msPCo1oci9kyZXdw7nALUFes62pWk?=
 =?us-ascii?Q?1+9sLSCNNNm9bLiQzip30PK5+V8aqFj43KDvPeiq1H3IAViCp0+HKkb65Uoj?=
 =?us-ascii?Q?fcpKHIoYgG0EZI3er4PRKmjSzVaZ/O2USVz0DznVHWHiZsPG/DuQ+bg7kH+6?=
 =?us-ascii?Q?ueIpdGLXbIY9xwR/F28Y99oN7Vds42rRSQp6LIpGDNmyiErpdawvbrFfk0GC?=
 =?us-ascii?Q?4g+BEEXBixOJKzb8shzHk02VzFwUZWCXEVPaoCg/tCCWNkTavEHipBFbRMUb?=
 =?us-ascii?Q?sDom48wk1E/8qHpwlrsbAH5EDrPWrOnxRf4eS1ZkbKX4ii9X+XnogVoRcuaP?=
 =?us-ascii?Q?qAeeDMpv7/TV58O2xlRUE8uU0XjDauWrQLJVbd0ApxByrPwAaFBMjNHv5x9C?=
 =?us-ascii?Q?AMvsDBi8L5IUWRteOtg0Bop2VTrWwHI4eINhBpsdeqEsVlWiOlS9uR3kCC0M?=
 =?us-ascii?Q?gfqIjptB2FzKoSx3JmbS4VqfG59LimHm+B3mTHzFU7Y++KHz7gEEUTL4ngBi?=
 =?us-ascii?Q?uMp3tvbbb8JFDd25rJ7/uVA1OSuOHVdbW6nizXaiuWyxdHGKb74lYwsOg82m?=
 =?us-ascii?Q?1ACCS9i5nBsGBkI35L36SNGAcBr7uVlbKpZUDPoxR5yn+53Ujeft33O1EAGy?=
 =?us-ascii?Q?mCJtmEU12UN5cvqlsdvDrtUUwaT7jtza0k/Q25jFONcyIzqBhfj9DJPvIsHF?=
 =?us-ascii?Q?arEmWmzrJfiK2lAhFhnNoNp1p4oQDUp8uBehe/MMYlFx2w+ag2esTfnqMymj?=
 =?us-ascii?Q?XLD6udUAe99Koj39td8aFRG5bSxj3/mlHYtvCKKU33QiDIhQK4cjO3oIt/Aq?=
 =?us-ascii?Q?wTc/2CBHBOwjxTqXM4CACbyClvroYpiBTT3juJZ+MnbdEgoduYuafStu59tI?=
 =?us-ascii?Q?2PjalyTij7gcyK9/4Z6cOwJ6PPWgs7bzjN+QNKgAPv4hblVHiaMM/6zPOx6z?=
 =?us-ascii?Q?oUR6DbHQBEGsgyUEeWwG3AFmT2ylbUOfLzQQZThHokgImyqRCcTGapLeak25?=
 =?us-ascii?Q?+VrqlO9+DhXhEJotShIeV3oos5/sYghsABBx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NTLJ6F8X0LnHwmRNtS+JthpzkRH18QXwzq3pbeOQcvIuf3aTZHt24uFJDfBP?=
 =?us-ascii?Q?SmxpOQ5fnLrx7ylsoZFYaBTeBf/st2BZHuwK5JwrlzH0m1j3CQuao/vZyI1q?=
 =?us-ascii?Q?DAfjx12XOxCypN5CYNb2VsOkndEtgCeB1CCQC2IuN3hyfkCNjrvYXdEOu7YF?=
 =?us-ascii?Q?c+m+ZVDKJmQEXSeU/G4RG7wp1to68cwMyAKRD8oVEhYT5xRAQSfKVfwdyUIz?=
 =?us-ascii?Q?0dpRXlQZqw1GtrycKhLvUgC5qMuIhZoQwyj4FnXJ3IJf6/OMu8jf9TttHOug?=
 =?us-ascii?Q?aXB0rACesjK9EH3utEkB6dbMowGlT8GbmKY7IGvNAHYCDEwh95Ol6xlzWwl4?=
 =?us-ascii?Q?zlpJIiRpWmUL9rlDD7SBYrrwvL2CPkNcjWey0XTCgdEljFcTwQWLyoxSGCGR?=
 =?us-ascii?Q?IkQpCeBlRR2udAuv43zrCP470IajxWJz7WkH4fMogVoySPdMdXBsVHTs1bNm?=
 =?us-ascii?Q?xw6H8W1hzptWgY0E4K10qsoyq6558JG5SqUTn0vSuKeJCLpNSSZpAbq0iRmQ?=
 =?us-ascii?Q?rizYJGvByRDgtt4zzD8NGwwCIt3ZsEUwG7pyL9dzFB1qF3XsrpXdWz9ZNyDr?=
 =?us-ascii?Q?ET1z3gocJrGIRKuuOPUN6Kdeo2caz8elzi0tVqYhD1rMEvTGHAOE79WQPoAI?=
 =?us-ascii?Q?VunfJNXCAFuq+lQaGI0mrIK/hWY+7eKuxybQgZpHp6Jm+6DFRVUE4Dv7QOvM?=
 =?us-ascii?Q?Y9Oldk2jucplzO8wsYbFkNQnj98QZv3oaRyGwTnQu5KV8V/0XQCKJxlqLDyE?=
 =?us-ascii?Q?CbTjny58yNUWBX4mkEK6CZmh53+/rlkUqkhGK/H/zIB41GU70ggl43nUywzK?=
 =?us-ascii?Q?7/0S7+ge4XB5ahll8d4xmAUSCrWE1kEmaOl2TP8k0RUn2E4JA55bXmPVLCf/?=
 =?us-ascii?Q?yWsk4XiK5ggPxiUtSfzBUUCHM3uAC63TiE6ONjH1wCdodGAnKj4lr6VKS9Wl?=
 =?us-ascii?Q?neBx2gtby8t5gX6TQuwwbpTpGEL3xqqWQ+eickOaVR/M+G6FqYxlsT57ZK1v?=
 =?us-ascii?Q?+NLeW4zGVrowzYVYYtIZgN1W+IlwpiI/kmAhv83vd+u6ypQMTPUvb9Z3DNpU?=
 =?us-ascii?Q?OMromzxSxxpkTMxa4R32qweGTdoUYCBOoaw6MjxrRiNlNu8pOwa2FGVzFuG3?=
 =?us-ascii?Q?7SipxV5URkQkXm3EhVpag3UtKdcnTt98Skx5WOHMILGFpox4hQgjIwwRR/7S?=
 =?us-ascii?Q?TbvWvFXujiUesBP9m2VhVBDhgXviko6am353U53FSeM0IrUzf3K7IQUppVn4?=
 =?us-ascii?Q?YsbTLJQ54AuwTIEXSy/PwEHot3bfHbp8c/Vxi5o6mp0eR254wO6wj4eUC61m?=
 =?us-ascii?Q?kZYeNaT88gngcxHdTJGHdQF6UlSTAwYBr4YJefkmgJhXf7/j5ityDvDh16VI?=
 =?us-ascii?Q?zfKMDA7jLyrpE6XUj10YVAgWHnRhAUL23AwWNGO8U3VbxelFDVrye4M60Uta?=
 =?us-ascii?Q?Wmo7vmOvo8CX5sQeipt4JiRFJxuXEQvsFjONbhWE/TqdMwluDLuk5mMJC1Hh?=
 =?us-ascii?Q?T7dkS1G0oX7A0FDHgMLMg1gEz6sWetqsklwJdZs/gsWBWURkXNN6bt22RR/A?=
 =?us-ascii?Q?z3ar2SZruT2RyRD13+v+9D8Elhbl9WblbQdLgOML?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 632452dc-19f3-4245-c89f-08de21ab2b9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:20:18.3196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3u1OAMb/Fmlr+Csd7b+t/Do5/n4QsfUYYk2Fe8EEDZH5Eif5OMIqQpxW+GJA0KpNEfiuNIv/uqcl4IOO3H0NjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
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

.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>
> Subject: [CI 27/32] drm/i915/display: Add .crtc_get_dpll hook
>=20
> Add .crtc_get_dpll function pointer to support MTL+ platforms.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 7a48d6f0db10..46ae05976191 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1693,6 +1693,7 @@ static int i8xx_crtc_compute_clock(struct
> intel_atomic_state *state,
>=20
>  static const struct intel_dpll_global_funcs mtl_dpll_funcs =3D {
>  	.crtc_compute_clock =3D mtl_crtc_compute_clock,
> +	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
>  static const struct intel_dpll_global_funcs dg2_dpll_funcs =3D {
> --
> 2.34.1

