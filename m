Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPuuK6CaHWpYcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:43:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191B362111D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904EA113442;
	Mon,  1 Jun 2026 14:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1klA4Vt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21350113440;
 Mon,  1 Jun 2026 14:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780325021; x=1811861021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iebP9fn4df4gxOrgbzwIkTokICdyZ3thwWHr1krr7tI=;
 b=D1klA4VtBUILZMQQ4xPOWWUq5Im3c4DXAOi+2GcENI07HkMrVVjlwF35
 xvJxAXt6Df/kLDfjlm1HD6RgvC75oK8tTtuKJWuwboAZrU/AQVnE0PRhP
 jUOMCGc7QHCVyxyB7dIIuDHWmAheIy+7Awv/jS492fLJ2qn7tL+pDmaPE
 8cPVWjB686w760KECWoAi92vBer4F0jV1T6rvrD1jRGwaLKgoWs/NlVZY
 3FEJNsHC89MBRXK+1QA/uiRZbhsMHo+ZYNcHaGhrNIqRWxhtJjWQxkMe7
 /VF6DGLKGFGOwewuSG7FP+J3thfh9vgZcHnzGY7wlv61pPemSr6En8Ife Q==;
X-CSE-ConnectionGUID: 7bNBz/vaQDemjckZpM/VMQ==
X-CSE-MsgGUID: EWpW+sNBRty9K4PpYTB4WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81269799"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="81269799"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 07:43:41 -0700
X-CSE-ConnectionGUID: j0/VLVYRS8S8rkQqz5kHBw==
X-CSE-MsgGUID: bgS+VX9DRO2cKMJnSit56A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="248685265"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 07:43:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 07:43:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 07:43:39 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.31) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 07:43:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qW6HHmbZI0qiP/XAxDRldCF6tdlFNuC4sYwuYGGPcIOvi6j+N7gw2UXMFbGfdvchMGW72paE968H0QrhDCxQtciXeIYAvKvOgCgVELWBmflD9Kfh4FJO2e7ccvGBt9PtoyEAMZ9+9KlIo/rfz6UDKPXZWL0j+EMl+2VWtPn5gZFZ6l/RPj3tC6d9fe4PtFTmavHky1b++HlNcg3PedcmXbWlq3sjS4E4VYZDkZUKhrc5+kB77nEIgMe4HrodGrHcfj03RkNUOrgSU+owvEA1/ik5ucxt7fJMVJvzANGrCrk1h6NHvJncwhp74fSWVnmxyhjRKIqLXPzNbWTfGN5qDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tlzbXueez7hPLv1bEy9vz7QIgfrJsL8MXxaKaqfs/Sk=;
 b=t1/Az6dFWXGllJJ4l9QfXfc1e4vGkMfQWYKsnPIIDnwOPkv/mxFKx3dZ0cvtJqwtmhSn0pEGSuvaJi4WGOslSXcqvlb+EBjpf+PFFEQNhAyO/er7bUGjfhwmJ01Ieh1jEX7Kf0wZaUzgNjJOOOqkBOEFmPBH6FEyrL/eYcjFV8A6DoRy4yta8vUfPrv1nUXZNFkqK7r10UyAM4H1XpPPalEqrevd7neiXQfKU95dt5VaiN5z1js/XYEYMBIrPtJvsmnBaXDI5PicGHMnjMluGSAtb3vVljRAwQRRM5cLqcPNFXPaGZRhWkfFcAFO4g/6oKGkLz2PBjeouwYeX3fSeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CH3PR11MB7180.namprd11.prod.outlook.com (2603:10b6:610:148::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Mon, 1 Jun 2026 14:43:33 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 14:43:32 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v7 09/15] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Topic: [PATCH v7 09/15] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Index: AQHc7RlesDkcYL0j+kmZpWoD+ORw7rYk2vkAgATyMZA=
Date: Mon, 1 Jun 2026 14:43:32 +0000
Message-ID: <DS0PR11MB8049A9665FA606525F3906D6F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-10-animesh.manna@intel.com>
 <ahlyLvT7ZqvzaxwQ@intel.com>
In-Reply-To: <ahlyLvT7ZqvzaxwQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CH3PR11MB7180:EE_
x-ms-office365-filtering-correlation-id: 4b4b2742-9fcc-43fc-a7cf-08debfec2736
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|6133799003|18002099003|22082099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: z74uhLoQR2S3zJI45cUkkpAaRy8xw+8yd+zxO1PduB5n8dZu3LzfN0CjQnW5RicX4fYAPKRKwQpcnc9HqC+IqtE2v/IEPSerqbJw8UF/Bgd1QEcxtZ0a80oBezlnsTmpHunhC3ZRnCEEVmxmAl2+FbUpUvmuMchWK9FxesLmEW5RGyu6VxCWO5/CBJ1HsSYzO4+E4opDhRFc0dej/tcAwUNcWr34EjY5YzYnZrLQLN9mmJPUAQd2KTnpn3F/iGszaC1RMltIUMTERkG4PD/18oDeC1HAUF6CFeh9TUFpqV1gOxCh+ApE9FUyiIOMseA7oDePTVT7NzE452L6VK0Vfh6uCjT7Xj+8iSHN4Mx8zKFWpf2iKPQ3MygZZ6qHmGqy+lq88+l4PSE2JKDxrK6KJxx5afvi4svElATggMDPOK2yU3twveoCRXbcEdauY4nDqdPvUuYq8xpdpn8HQQ9DROw835NnSuKelQFXJe2/eKorqDIMiSuhr2JGOnPkN5cwm2HViBstKHzvePr5nHFcHRuQSdYm2QHrMVWKntIE3masKjIc24yPd5rGmXhkxYlExlo4kJU+3hXMDlkxAgCtvGVQd0/N/AIKDIVpXSdRA7TXa/qoW/B9yw0zNhjGrtMi6BuRSD2ZV376Bnp9zy5WUN9Z2358bFe3/3s4gv5OaZ2kzeNw9r/Q/l4ULqgtOqaJqmq0A6ZSB/sMNMfcjjMVCXx7XKpB08PWLNLLyQ5GdDI/SBn4ads48Kt1b6yQCJhl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(6133799003)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?r+6TeEMpgNzwg8iYiHNnTLcfspFphaSfGBjsOEyrjsYibPBxNZfCzwcSvF?=
 =?iso-8859-1?Q?D65tdi8PcQivOnDiznAAhE0+hfvgetxU205R8siQxplNP5KDZumDfjBPwg?=
 =?iso-8859-1?Q?kaCl75L6T04uXCvI+g1HvC1qSMahMn7PpBsh0vYAeABkabgCcHWEcw6Yrx?=
 =?iso-8859-1?Q?+VsM8zjTlpjMFc3DR6JiwPBKobuvOZAlubhrvo8eZqRS/gCCow0KAS0gpi?=
 =?iso-8859-1?Q?jLp3ok1Sn7qh3g/qzUQjVQl2tPYcosK9pefPEPwMqRMtIVYH3YGgaLgH/r?=
 =?iso-8859-1?Q?coujIcGX1Oj9ib9CGUDvi3Dkkp0Ko1OetDLVcBVhuf8NYVu5CX19gHZDD8?=
 =?iso-8859-1?Q?5WIMHqhJu5jgiA/c87tp10CaKHHpMrMgawzeXTuDOxE4yJB33ejpYXwfkR?=
 =?iso-8859-1?Q?8vhhdChoQ5jC4iOABhF7whp6LfXPFPaoQGCqgAbaIwPw3kec6eTxJpUxVS?=
 =?iso-8859-1?Q?SN1S2fV4WlR6wXdHS9rr5+BIZom7VWosuxyIn19gFV3QIUJVOicnFTgs6J?=
 =?iso-8859-1?Q?70m1p3CHOzc0PPBNv//mYT8qazAzt3H8Axkkd8+Xv/6QMV0B6fF0d1MAtd?=
 =?iso-8859-1?Q?s/2mPp8NX4WrAZBqYEerQjArDxYrKF2XUlIug0V2obGfuppx9wua4a1zfy?=
 =?iso-8859-1?Q?aKQ3DJ4kdEJU+ykT9mDKbumpFzzFNYCACbH9kt3g2KXgBk9CQB596YPpK4?=
 =?iso-8859-1?Q?MnwmeKBqsMeQUkF9WUU2FljaSQdIphZL3Z8ONBenvfEsQx4bORSVkYBx/C?=
 =?iso-8859-1?Q?LHKG7MYaHYeKnma3RSMKQa6Eo7XkG5yUnxEWD3ZoNcgE4FOQum7l58dhLp?=
 =?iso-8859-1?Q?MU7pzu2aTpqeTm7HpPHVpTJD3ecZmxN9nMg4wRDwnhVT2GzHBbrXGubAz3?=
 =?iso-8859-1?Q?EvFPK8rCwSWh3JeYrJff7PUn0XOHk1iPlPeOCn8rdkMoo/9AALjvchXPC6?=
 =?iso-8859-1?Q?Gj0cpptK+dlKykUbK8CmdxJTNaC1LEOhwr6Dn3zaFRnynra/cm0HJJq/Ui?=
 =?iso-8859-1?Q?VcDOZxz7CftX26rLIGAwngqnFyBOMQXVJtLEEfvy93nvg7KjtKSTxPA52g?=
 =?iso-8859-1?Q?FWG068OT9yyESgzjnKE41C20aQ1yd31g/Jz8IqNVvnCrDH7ZA5/M2X8evw?=
 =?iso-8859-1?Q?JxsuyLt0ncTJWi7w6hbuMMuQBZOll+F5Uoa8WmTAumXNzwCBXsdsRBF4/0?=
 =?iso-8859-1?Q?BVQp9M9yOMwBUEfe7pRgQGGIlO8rfFcfIvy/ylJL6TWnnUBvjYZvVslWLD?=
 =?iso-8859-1?Q?xt26WE6kwDbpcNFDvkj8MbEE/do8Y5f2y6cPSKjOLxFpuZlSZMguiW8yIk?=
 =?iso-8859-1?Q?Ikp/lqY0SYX9DH1ljQOVXM6Dkfh2J5lfSxiyZgWQPq6Di5Qzu9NpHg9S+H?=
 =?iso-8859-1?Q?FdW67ixcMTEfY1umMLFcIlqmW1DvcBwB0benpDtCEZbfufVra2Oe7JKYH0?=
 =?iso-8859-1?Q?T5wOEnWa6oL2EfAsqwC0CFzSVTVJOwvktMgDNFB7LrnFB9sNdN/LJyZyjp?=
 =?iso-8859-1?Q?uEJkmHjm3Nh8kJ0UXDm+Pp1mAPQ/BdlirXnW24p8lxy9wG1BkUhQVOFh9i?=
 =?iso-8859-1?Q?n6gmk3hXRDqmL1aSCH4eOzH4UxxmwfJDhLR9XKWqbhLCoyQM05APFvjsIx?=
 =?iso-8859-1?Q?dyDSSu6cKENkmixuyRIJLYHZRo+ciGvJYZ/pGFtIkXmNUaR1GTssUN4w4i?=
 =?iso-8859-1?Q?C4JbLhaYio+SoE8APjG4HC5iENQK5OU2w+Q8N/gQjrTNhZu8vNeTdZ5F+s?=
 =?iso-8859-1?Q?tV8pByVh6Yg6bq7ndwBhpoim8B7UUx7JWjpg8Syih7WHWDOzlUAAXSsOgo?=
 =?iso-8859-1?Q?p3i+O4NW6A=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YBYgOFnAJrnIVHhZIZEK3dq6CVP+++S+k3X8lu6URUpRSWx5ySw53az9GLueuJnYKvreXU41cG8f4qhly2DwvK6RJAiNsS/W/OmmLw9wIa7hWIGnu8WUItqX/ehMBZnW9UETrINqtvHhEc9C2BQ+zfYiFyXkrnsPfCyvriiEVnJfGP3yBYz9Ih1mB32XCqfwFKDs9hyV3hdyfzdQPf3r+3ruji8ux5bKMXjLJ86k0ZIz2LDQHroFXUG6u74PgVLO1QtzcmPFqKDd4xQfekaRoNyTq7dFX00Oo+KTyGgtP+R+cy0NuiUalb5LgJds+ly1tJoMW6EGudQPbdEifruDXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b4b2742-9fcc-43fc-a7cf-08debfec2736
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 14:43:32.4236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FaSappi1kn/1Bdkb32dUQYPfcw8qHlsY/uMLTFjN+jX+oRzY1eNVLu916dBu9F8599mvmZlm39scM+OytE2wwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7180
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 191B362111D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, May 29, 2026 4:32 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: Re: [PATCH v7 09/15] drm/i915/cmtg: Modify existing hook to disa=
ble
> CMTG
>=20
> On Tue, May 26, 2026 at 07:08:05PM +0530, Animesh Manna wrote:
> > From: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> >
> > Earlier cmtg_disable() used to disable all instances of CMTG which
> > cannot handle individual request for specific CMTG instance.
> > Introduce cmtg_disable_all() which will disable all cmtg instances and
> > cmtg_disable() only disable specific instance.
> >
> > v2:
> > - Use intel_de_rmw to simplify. [Uma]
> >
> > Signed-off-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 60 ++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
> >  3 files changed, 47 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 34715280d65d..643e2e846d25 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -82,6 +82,18 @@ static void intel_cmtg_dump_config(struct
> intel_display *display,
> >  		    str_yes_no(cmtg_config->trans_b_secondary));
> >  }
> >
> > +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > +cpu_transcoder) {
> > +	switch (cpu_transcoder) {
> > +	case TRANSCODER_A:
> > +		return TRANSCODER_CMTG0;
> > +	case TRANSCODER_B:
> > +		return TRANSCODER_CMTG1;
> > +	default:
> > +		return INVALID_TRANSCODER;
> > +	}
> > +}
> > +
> >  static bool intel_cmtg_transcoder_is_secondary(struct intel_display
> *display,
> >  					       enum transcoder trans)
> >  {
> > @@ -125,8 +137,8 @@ static bool
> intel_cmtg_disable_requires_modeset(struct intel_display *display,
> >  	return cmtg_config->trans_a_secondary ||
> > cmtg_config->trans_b_secondary;  }
> >
> > -static void intel_cmtg_disable(struct intel_display *display,
> > -			       struct intel_cmtg_config *cmtg_config)
> > +static void intel_cmtg_disable_all(struct intel_display *display,
> > +				   struct intel_cmtg_config *cmtg_config)
> >  {
> >  	u32 clk_sel_clr =3D 0;
> >  	u32 clk_sel_set =3D 0;
> > @@ -157,6 +169,36 @@ static void intel_cmtg_disable(struct intel_displa=
y
> *display,
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> >
> > +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> > +	u32 clk_sel_clr =3D 0;
> > +
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
>=20
> I think we just want to track the cmtg transcoder in the crtc state, inst=
ead of
> this stuff that just assumes things.

Based on cmtg.enabled flag cmtg_disable() will be called.

if (crtc->cmtg.enabled)
                intel_cmtg_disable(old_crtc_state);

But current code maybe confusing, I will add a check inside cmtg_disable().

If (!crtc->cmtg.enabled)
	return;

Regards,
Animesh
>=20
> > +
> > +	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
> > +		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> > +
> > +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> > +		     CMTG_SECONDARY_MODE, 0);
> > +
> > +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_ENABLE,
> > +0);
> > +
> > +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> > +		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
> > +			 transcoder_name(cpu_transcoder));
> > +		return;
> > +	}
> > +
> > +	clk_sel_clr =3D cpu_transcoder =3D=3D TRANSCODER_A ?
> CMTG_CLK_SEL_A_MASK : CMTG_CLK_SEL_B_MASK;
> > +	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
> > +
> > +	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> > +transcoder_name(cpu_transcoder)); }
> > +
> >  /*
> >   * Read out CMTG configuration and, on platforms that allow disabling =
it
> without
> >   * a modeset, do it.
> > @@ -184,7 +226,7 @@ void intel_cmtg_sanitize(struct intel_display
> *display)
> >  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
> >  		return;
> >
> > -	intel_cmtg_disable(display, &cmtg_config);
> > +	intel_cmtg_disable_all(display, &cmtg_config);
> >  }
> >
> >  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
> > @@ -221,18 +263,6 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> >
> > -static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > cpu_transcoder) -{
> > -	switch (cpu_transcoder) {
> > -	case TRANSCODER_A:
> > -		return TRANSCODER_CMTG0;
> > -	case TRANSCODER_B:
> > -		return TRANSCODER_CMTG1;
> > -	default:
> > -		return INVALID_TRANSCODER;
> > -	}
> > -}
> > -
> >  void intel_cmtg_set_timings(const struct intel_crtc_state
> > *crtc_state, bool lrr)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state); diff
> > --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 12abbafa7d08..79785afccc51 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -11,6 +11,7 @@
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
> >  void intel_cmtg_enable_ddi(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_enable_sync(const struct
> > intel_crtc_state *crtc_state);  void intel_cmtg_set_m_n(const struct
> > intel_crtc_state *crtc_state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index a93236bf7b75..240a02cd4a3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -22,5 +22,6 @@
> >  						    _TRANS_CMTG_CTL_A,
> _TRANS_CMTG_CTL_B)
> >  #define  CMTG_ENABLE			REG_BIT(31)
> >  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> > +#define  CMTG_STATE			REG_BIT(23)
> >
> >  #endif /* __INTEL_CMTG_REGS_H__ */
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
