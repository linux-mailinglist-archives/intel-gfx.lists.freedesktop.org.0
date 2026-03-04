Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id g//xDJvLp2lyjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:05:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 771F91FB032
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CC110E0F3;
	Wed,  4 Mar 2026 06:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M3ILo31L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2D510E0F3;
 Wed,  4 Mar 2026 06:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772604311; x=1804140311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LbE3xb6p4VcrndomT/XFGfECiDQEKYxcsFS3TD3iPYg=;
 b=M3ILo31LuTt7HcMK5ZOdyjyBE2gqg20jcrezYIz1m4ina+H10ii/8wlc
 NEgaW4SE5Frn5/rRJFrp5eu7Ceu9PEDXEYx6aF7zNl0weHp3tMEiMEO2q
 GHWOdH31JWBVbqnRmwTaZnt8VufDzlne8XUCrwEzmopAg3kQEs1Owo3Zs
 0PlrE2eMAIVXT4l0+a1qylDHnp5VW3ZUgmt3G3iTD7xVnZ+MzHMNyDhFP
 jBTCV89ovuSenXZ3xyHNupOR91R3tnbh1luwERCCrEaUjm8jb+3TXpYMv
 HVyONehAU4vPz9OQwT29J7pMFxKJ78TzqTC8ccyXbKzK450husWj+GSIN w==;
X-CSE-ConnectionGUID: jvioHyqRQq620fDJGnSO6g==
X-CSE-MsgGUID: H+MH8q2HQuqB8dGgqjD2QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73623222"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73623222"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:05:11 -0800
X-CSE-ConnectionGUID: U7fGAB2/RsyiK89z8IU3Rg==
X-CSE-MsgGUID: wUjM8BcLTbKZRD2ySuUpPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="218193242"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:05:10 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:05:09 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 22:05:09 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:05:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bnPXjp7nyOvclf68drVgayck8q9TimCldUkDoBbzqthzru0KNBd58ro9f0qXZgOdAFLO4PcFcOCom15Uk99ITN5UkT+AebiXA1Lq8F1XO8ZMa3VzdM0SBjkpUUJPbZdKuzRqsWH8VSWA0NUj+6DUJdWjXJ3BPNlAWD3it6OjyFrAVyfilXb0rT/UF883pZ7tqSQZr0vYH+1byI66z5LxKJnbOlP/jBgPKL5yQ2xVN9vrpupMNo5y1fjfiqlj4Fi9roGTL1gETKWWk8SbTrm67FeV0bFHt42vSvdVcSk9XSoF0hqIbVOfGKeixpHFljHB9FJ7pu1i0+9yncUUUK3IPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7sbmq7PC7cvv51AFm+Pcm5hTvEarjcrs1XtBChx2QRU=;
 b=skNzXu76aZCpTgVhwiEAwnqzkURF5wol3SG2NcIeJmOVlvCpV1XwbrFbbkXwg8+8+m9f5FiH+Z0nKc14j7uqgbDoLalbjx51kmypjpcwRtKFTn5dbquKvR1/5N8y56uid/x5sBiopbf4Rutz/bg/++LohA/QT2JiDlBLhkN4MXsG6ez7O9F1CddhyGmlehO+DlndBnTVduQj8QF6L3XPBvXeCaWgdDKNM0Ev1CNGWjU96LGjXg2gaG1LXw53f0YZBNcL2bH7G4U7K1atP6TLk3eIqaVIp/UfaQwznmu4hV+Il8W6DAqG6m+0C2k13fW8uC9iV0brcjrQ3mcRbv4RZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 06:05:07 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 06:05:07 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Topic: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Index: AQHcq4xncuBYMRoWJ0iScX/i836td7Wd4ZuQ
Date: Wed, 4 Mar 2026 06:05:07 +0000
Message-ID: <DS0PR11MB8049672936440D4378F1FDC5F97CA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304040551.754483-1-arun.r.murthy@intel.com>
In-Reply-To: <20260304040551.754483-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA0PR11MB8334:EE_
x-ms-office365-filtering-correlation-id: 4b3f3f85-09c2-46d3-e597-08de79b3fc8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: 5Nv32MrCg7PL9lr6+yMbE71vkCPWbWJgGKJBBG5k1XGk2Ix2mKB3RdzSGIMh45CQ+NwledrQiitOhdcBOcm38aIm6lGqRFH5UeJYQNqGOm7Q0Tyo1cv6W8Fah6yA7sidDIRIeWWNb9KpgBBffs4rfLRNNal7on1Fl2lROm1Z78MPpzeyinJa/9HcOReTYxP3MEP5cpnPyVBSxZpo4mdIFA7ouepQ+v7abbbmPpTIorN6RXlVyMxGXvUnKZOxdwXU/NrRKTeWYLO1m3ZkSM1/aoh2r7jQA1MED8m1A1eP0LnjJTdj7KdL8eK7wkqtSHeh48Ug7bgGXOCHGzxwn4g5Z1w8mNi/yBU7ukUO+JJH9ouVdi8x+sPSQeymfO1WnC0g9vSG954cSPSzWde8H4CoUoo0VBUQZXUjfA+5XK5xVkF1uqTNpYn16HAiEww/rWkkXL5yn9VOQ5bcZj0Dj4lM2KPZvwL4OlDekCrcrZzfutBeGFIoE11TI1AYmYdrOBGDDEuX3CI5QEhgcKikykPbC43TNdpm9a3ybU8d1yzI1WjyE8n9Qrih6AdWvPkgb2UNe9sz39DZFVg+7jnJMf3MiODgwAZVeHMDpnwCcTXkoZlgbtIGE9M3roCGpRRgekUjCjMIsgyzrHpYJdJ0aJP6TVgY6JhEZaYHpkdjdPb22dFfOPu8xUr2Wv+RXS/oHFPI629dLeA+jFRgKKQ5OU93LKFm83cPCHqtO7Q2vdY+B7XH9hX/brx5I0Ky6ZQRLXZuWQjO+zkrY1RRP+1gfurlWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/XAZHuuXHbK7y22YyeGLGXqErn28EOK8nycqKsAW/LbXwwbgcXeBCV9ACbtU?=
 =?us-ascii?Q?x/o+46VPuFCG/aQmB/CstM07aBifCn2NlpEHtVyAuwvHQPNlNn50qzx8zkIA?=
 =?us-ascii?Q?pFZ9dObEOyiVmfHkF5cP3gfRW4d5R6CTBUKzn3tqEUMyEiTnhKHcLZ4Gb6to?=
 =?us-ascii?Q?3bHij+5sOGgOOtTRk7mdM93r3HczYClJ9jLzJvVbwlGAUw0sgwg+RDADC1Qf?=
 =?us-ascii?Q?X5t58KRCGZQiRG7b8aXSLJx5/OueP3l9LSuaxkJC/6o8bu8KiVdwSkQwxWOc?=
 =?us-ascii?Q?+D+h7PLFy8JTV0qoViL/v0i59/PJDBR5VnfnS69ftV66JqLB9JHA37lUmlIY?=
 =?us-ascii?Q?iMFMP2GvM+SEFQ6ENGLzCFuypeGRiCjsWePIZfrgb4Cs1WiyWSkOKaFsUrNg?=
 =?us-ascii?Q?s4pawIuE22oclZDj1TwV3vsCKwqDwTxsbzZPsqX76RtCWE7eNRX1xFsbhwF1?=
 =?us-ascii?Q?pkEqIuzWJlbTXsbm3xs73pzUVzRIcejGXV21i2/F0K9M6HGHw4HW/dOK41Lt?=
 =?us-ascii?Q?gqNC6SVq1aAiXip8aLIzBSaUcTmt+NB3TYslEdju2Q7qsToWRZqPeCLJl6uy?=
 =?us-ascii?Q?CS+6NrUBJy43ynnq8OiddEKG1aXoNc2LGCujOg/PypyX77XEsrZ0a5CLrugH?=
 =?us-ascii?Q?611/QZwCN8w6eWXgmD0Y8dTIjR762/q+tOSkBtMBl4dNHbXti3m36TUZpsJC?=
 =?us-ascii?Q?oEc/F9P9kx+2cg72NvJ8SFODOJG0oLFAQNGCoNPaqgjKEDgyiHlF26fjEqlh?=
 =?us-ascii?Q?6c5gykzlC0yPrBk65hW3OIAVsdNFQvBbNN2933xrO+LZwtt9u1CmzeeadOi8?=
 =?us-ascii?Q?hdUq6Hljo8GFXrw9RdvAZAv0ypFYaqIV5BMFPueoF7Bc6fmSkfWRrExpgb12?=
 =?us-ascii?Q?jfHJrCRoSWfUE+o7OXVb8PVgEw07EN7Z6dhYnkhu6hIb9yD0Nb9CBpygLpiA?=
 =?us-ascii?Q?xj9mxUiddtq5bIk78+ag5VHP/BvY/4Xm1WsCcejaMdfoW9TsfWqrUeAKhWsC?=
 =?us-ascii?Q?0Txu/AVSnIZ1QeR8YEnqQH3aOmm6tOHgFchAhlFCtUv3teaQSvxpVbXGSCq1?=
 =?us-ascii?Q?9PoOJT8EqQiWVcfK0sOfMHvZ4FdJpvm748SbngVaxrKQKrxaEaVIeAKYYTM0?=
 =?us-ascii?Q?T+OvKL1C4e8GMi4FBEo8gIxTqGgj/F0sij1bPT79Hd8idfjUtt3ONps13Fp8?=
 =?us-ascii?Q?4OxzmSQEoECCJPY/mnTCeYj6kkCjWSAQNudy6SMlTaxrTyB2C8RbCCOWWDBp?=
 =?us-ascii?Q?sGg/JyH4UzYUpd+7ODoNGnyb1o6DI65c6z1fitZKLeOA0f2glAfrUHb3r+U9?=
 =?us-ascii?Q?BdIepLrcVLWzz+33fMUa2+ZneokI3bpl5Ch8NtlW3AFjHU2JYK9bORlDgIlP?=
 =?us-ascii?Q?pKtLMODx8mhmxrGaFf6lAVdigwLeQaTvXz46pySdgo5vKhci0nKdZLT+xA66?=
 =?us-ascii?Q?nGuU9H24uTmQXFcFJsAYENTb716bKBmfdqQrVQ0sXaVha4yk335N3k0BaVtG?=
 =?us-ascii?Q?18BJwND9m0OD6sAR+rCkBLaEJ3qGCl+F86UPV7QBJc44W1562yar7weNpffK?=
 =?us-ascii?Q?kwCr6qg0w+Q08gg/T5dWCUMz153tAtL76oOkjI1ug0wEg/aOo6O9AbpSHgpm?=
 =?us-ascii?Q?aLkbzVak8KmXTmNF/L2Z0PQVHs2L2PtHVA0xSELVUIYgA8MritsZ4IkaYupa?=
 =?us-ascii?Q?EsgePdlTcQz34T88YclQqSwkXzhP0JftVCXEx53FnfYKlAwuCu8v1nRS6yTb?=
 =?us-ascii?Q?l94XS7lIUw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b3f3f85-09c2-46d3-e597-08de79b3fc8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 06:05:07.6255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 394XieBBajR/r4Z6e1yaeM94ooxJRMIOi7baNyjIfdraOyHjRm0NWjEUE1IVmKbw6hwRRx/7vBR0j2mSVLLKVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
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
X-Rspamd-Queue-Id: 771F91FB032
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS0PR11MB8049.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
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
X-Rspamd-Action: no action



> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Wednesday, March 4, 2026 9:36 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
>=20
> For eDP read the ALPM DPCD caps after DPCD initalization and just before
> the PSR init.
>=20
> v2: Move intel_alpm_init to intel_edp_init_dpcd (Jouni)
> v3: Add Fixes with commit-id (Jouni)
> v4: Separated the alpm dpcd read caps from alpm_init and moved to
> intel_edp_init_dpcd.
>=20
> Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 6 ------
>  drivers/gpu/drm/i915/display/intel_dp.c   | 9 +++++++++
>  2 files changed, 9 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index b3334bc4d0f9..a7350ce8e716 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -44,12 +44,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp
> *intel_dp,
>=20
>  void intel_alpm_init(struct intel_dp *intel_dp)  {
> -	u8 dpcd;
> -
> -	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
> &dpcd) < 0)
> -		return;
> -
> -	intel_dp->alpm_dpcd =3D dpcd;
>  	mutex_init(&intel_dp->alpm.lock);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 025e906b63a9..e781d4d0dd1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4709,6 +4709,7 @@ static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector
> *connector)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	int ret;
>=20
>  	/* this function is meant to be called only once */
>  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] !=3D 0);
> @@ -4748,6 +4749,14 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp,
> struct intel_connector *connector
>  	 */
>  	intel_dp_init_source_oui(intel_dp);
>=20
> +	/* Read the ALPM DPCD caps */
> +	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_14) {
> +		ret =3D drm_dp_dpcd_readb(&intel_dp->aux,
> DP_RECEIVER_ALPM_CAP,
> +					&intel_dp->alpm_dpcd);
> +		if (ret < 0)
> +			return false;
> +	}

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> +
>  	/*
>  	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
>  	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
> --
> 2.25.1

