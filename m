Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mRELDTQDVmraxwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:36:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D97752ED2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:36:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=S46cIrfx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C1310EC8C;
	Tue, 14 Jul 2026 09:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4465110E044;
 Tue, 14 Jul 2026 09:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784021808; x=1815557808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Szf0VzqdfgFlB3puUGUwFwzZBKn0tb5pPCLMgaFFrko=;
 b=S46cIrfxzf4GfIl9GzDmUKkaTmTvP/9LRhGMZDsvMeiP2jWwoi//vvEO
 pRhLfncl54BA4mr6kyof9DENNMwnCehbfBt6WmtvFOh996EwaSqKkBSZ6
 JrPgl4LwoiBTpEFrpl6I1d+GOPvjway6nOKgkT4xUGipH0y/isllbiqfa
 bwDD22tUIoYEy+rj+Frn0Vs2VU7n9ByPej3JRugptzTtwn7bSiqlwM9DR
 H69420IdgOBJ6UkYJbTGIIvSZUu1mPJx21G64Zlsd3vLDhrpbuOSfmOzl
 dhzXwX1vdONmXhJP4Npge+IQbcggQLwmDY9vxXxilegrhKGW79TH0GK2b Q==;
X-CSE-ConnectionGUID: k4T6NynsS6e01xtmu29I/Q==
X-CSE-MsgGUID: elREb7w5T9qq3Nn9eNYH8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84687286"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="84687286"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:36:48 -0700
X-CSE-ConnectionGUID: ORr7f38/TC6f+Ea1Ntw/AA==
X-CSE-MsgGUID: 1vQIQYsDTbKumKhm/5G4wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="251394193"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:36:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:36:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:36:47 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.17) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:36:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mgBHos23csXBjjYbipusrwGWVLYxiL4KriArXoKscYz9Lxo2YHZ5LeGES0gp7s+SQbjjiC9a99tHFu+FLIwdaaRbW9OcreYSS4zrllkVD/AAZj81a0nrig0kF0Q3lRtjPQTUNS71hSUv6HzuQgJJwE5aLuale1FzArTUfK1vzH9FlDoErSK+3XVtMYGeHHXGOT9gZPvUGR0oTFP5qZD346G/ETC5P/PhcqLGBRq+maH3dL5OflLb8JkFQoNDNJGe7XWE6KkF4U1horv9eCju1aK0pI9t39Fis1YdVjLjylJ/qrJ6BiEOPiflgz1vt+RIzcvxcBUnvV0rZ3f1MuA0PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lf6XRsg57D4r7wTktqxd8ydgxkb985xmmfSkQEqVJJA=;
 b=yWdy8JoWpOhBI9F94ie7Xfl7umO6R7X/+X1mLrFQdv39brZur0UMnAQbcYozwAPY7kVwPLBb5pjcLX2LWBh6ss7vAONLSuBH+xNKoV2oCenOteS2OkiEDOxozurD2T9wkmfeXXVxC5dmynInsLmiQN+fEcwomSON1nnYqefZos7kjkB4GklMB4U92julqizdEjbehkIOLiP9VjNhRxv97aiorJg5k5sfn3xuDyXRhR6iq3HOqhDtddaHX+MvHsWZoOCcSxAVtZ+fLEFianGZoI76uFXxnbYoD6GMbab+S6us+dQaggde9VtUatxYhaOIxlgukGVVJItWn1Q7dwoxsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by IA0PR11MB7861.namprd11.prod.outlook.com
 (2603:10b6:208:3de::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Tue, 14 Jul
 2026 09:36:45 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 09:36:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth threshold
Thread-Topic: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth
 threshold
Thread-Index: AQHc/QZrwr4f4LtmdkWlgf4/ll8PEbZs7boA
Date: Tue, 14 Jul 2026 09:36:44 +0000
Message-ID: <DS4PPFE901A304F24C228DE849CFFF801E4E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-8-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-8-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|IA0PR11MB7861:EE_
x-ms-office365-filtering-correlation-id: 82ea29e9-dd34-4a12-5db0-08dee18b6b4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|11063799006|56012099006|4143699003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: mGeC50KPNoSlR7L/Nx08vGCD7uCHpX6I1VUpLF++S6xJYub7C0MBrRXCmadUfKJVNeArktl5ld0ErNEhNmLZXHIPLT+YdXKQUueacvYVwYA9fZT/nttxDzHMcQiH+O2ZQGfqkTw7T1tf91GIoiz3RfRBd6G6x/wB3eCextXw1uQHIne/ShOSc5rd+Pj1Sr7OID61KdOwNT1mDYYrFhBt3bPQbjzcsja2k6/jADnzwdkutVJn6r4tcCUj7LU/lcPq95CLcM0JSElyJTPkSKtMioT0gkSvCBccyRAIMx8Ammm8sHyLx4rqmjP7IYxZ+ZSAqO7jAdBZC4OsfeLxxiZFb3yRlGHMj9G4yEjxEw/QSWRjbTV92peGoo7F32V8fo6KfSdihhDdwFL0WgouwjjEjdIGvXytWVI5xJBW33haHUK0RO/kXjFlFVR/NgUrZBjYUGkuAoMC+CsSF01q2WCi2Jc4Jd4SHsWqBxRCzUAkPqp2xYZl2lSx3e3R9H25Y7TgaWLr8GPPDeiE8QsQrCZeRoQDmKTTJhz41Tv5zetbZumiPP7xSy3F9GbSW3/KrE0xp3BL65V1JwN2N9BAWV4ACMEUuvmFNf8S2aJnsP2qXa7JIuxvIwR++sm7OegVlJoOXc7EJXM0DpHzTpih04OQZEm2nkousz9HvLWBbX46OjogZNLKASxDASCfgVby30iUz3yD5NZRPSS2PwwNauYITA2KQjlEliEhxSqx+h/l7xM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(11063799006)(56012099006)(4143699003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MEIBkXNUX/mUam+o4e/LdTVjGge4omWMNh6exaRaK2BuevSVpz4m93Yxp0dZ?=
 =?us-ascii?Q?X1Sl1q7YdwCEID93aqb0CFvr2+s14BiaQLdTGsI3uTbbT61gh1WOcdfoAJ1A?=
 =?us-ascii?Q?FNHhyFBw0Z5qlKMpVihfHSTELB3bVnH5EeBnSpIzMeglVazlYfF4DLZGxHWi?=
 =?us-ascii?Q?Cjj9uEohIGCznNOI1fp/3gJ1YnTPbix6jDXmmaSmeOjps6JrpljZ6oThTidX?=
 =?us-ascii?Q?NddVr6FxWbRDvKUDHshN5pLWiY59tJpUxaILtAO5FMgUQyS2XITvJsPS3PIz?=
 =?us-ascii?Q?874T8/KHpKkBbIP8N/m54+7kR7Ad4m/+lxhpcRj4CuZcrvFtG+CZWKmuPVVG?=
 =?us-ascii?Q?Enz31NRioZx6Gkmr+imsvlTBu+dB/1COUzVcbNXavhXrR6SsAiBYzkH3qSXV?=
 =?us-ascii?Q?0ZtfPPCl7Nc45KRvAGOkXn+5RDWgSeXz74pmkfzkHbF2lcrxCuBPn8oWP2hi?=
 =?us-ascii?Q?QmVsnebdrhkI5qy1102sLoduug0TQL6KUFupWv8Tm502vWa742ffU7IXcgyG?=
 =?us-ascii?Q?oJQlQmA8z5Z20Kat/I04IZJXiYUSGBvUXoBmMz4EbeC6X1MaM60kVRMq3rd3?=
 =?us-ascii?Q?WFVv2Aot+zgpKkQ3T2SmKqD23TE6mg/WUCO//6K/8NDmpII/53v8a6/7hIeu?=
 =?us-ascii?Q?68YSOrXhPXQubOVp4Cyt9HicbGZ21cF3xXEiiOz3XSrbBzZOYxF5SBjcRStU?=
 =?us-ascii?Q?KwxTzSoptP10427mf2IEP4E2ygMyDSOh7LrQDTd2bpRkLRSaxytXKXzSHJcw?=
 =?us-ascii?Q?tNKaZbaMx7H6M6VhCeV6e/xSw5gRsMDEKyxJBd3L7SCrFidvOg4xxnceEGGt?=
 =?us-ascii?Q?DysGfurpuBk7QQCb36VN+chhQHHgTNWjEVtHzw9D4gSEtWP51y3H6B97ti1B?=
 =?us-ascii?Q?XXFtDtz38vlfQNU9UXp6lpPd7LpcV0Dut/bc1cAMwAa/b+jM0J7MoTN5AJf1?=
 =?us-ascii?Q?qjJhLXXYjTOmQAepczt2Px6VqzZkspF66HKuYej0z8fQnGsqF6z7b9PDrpbM?=
 =?us-ascii?Q?L9F6HdY/cfFj6R/49N6bvxmZBcnGq2FuH+XAoWgCdrLFDrx7PGFMVBPN4EOO?=
 =?us-ascii?Q?kCrDCBNLpsuUpFcV7BTyFIOIvZwehL6jG4MUc6HJ1paiUPbSjF0mZ5cL8BNY?=
 =?us-ascii?Q?m2JJd4lOlgCPusCLgVnx9wSH/MlovYsFIhLXSrtTabfR7fHTVzl7TsHc5PyW?=
 =?us-ascii?Q?y8N0nXOGyuQtHo0PXGIPSCZsT7+wijKhA+jqIuGQNBAAvvFdmcX1DOZVXm6E?=
 =?us-ascii?Q?mUfFxzG9boA6pubqYxNL8+3dvVOYISUgT/1I7O6ZfxKPF2iAcaTDCFtbt2+4?=
 =?us-ascii?Q?71vJCwitBJs7ibDR8pu2hwB0yUxAEoG6+qcZ/amhXGyIC58QzjFkN8SfuVmG?=
 =?us-ascii?Q?bEIkZ1E6Ovd9Z84h4jyTaQgkPfeluA8P34noLpf/WQe0UvL1VcsFkAfXswzR?=
 =?us-ascii?Q?CHzwruHjNx1oxgkr4DiIa0JWVRE9cZBwnhLNzOUZjffeqcg8eHoT2lWnBhtx?=
 =?us-ascii?Q?HWWsTfY4h/NPX5lVtvElvH/BGedrcRQX92Z30kzzH85BXhlfEqs3jU+udenK?=
 =?us-ascii?Q?WnEDY3cDyzQZRPAXGHLkQuPNimoW/hfnUDPb9VI/va60A6pq3J7PpYBXsA4L?=
 =?us-ascii?Q?Tuacp4mGbqWVr+DTft+CGPImo4/uFTjA5E5PoRILNi7yIGcYFA7R6uKv2Kia?=
 =?us-ascii?Q?aRvCjr2gjRbLcTisshmii+aIPtWrCm8PsR36E7An/IZoloSvGrqKwJDDI9/8?=
 =?us-ascii?Q?FZaQ1/jGOg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fhnXbrSqE3tuDsYivg72iqNEkSOZlNrbDPvnj+S6wy3d6I3hxZTPnVquMsm1VM+08ywO3WyZEZFAfq0Ch3WfZJHQOsRGaX2cnJ6VO1tmVxAqJNyo0JE9uINWvgMKzi7Sbj2oUh1bcLlQJckyzZFsFca6/+Wl1J4hDqPcfnzabx3CfIBD5KY9gKLq8mNobtfiAKmDFFOEBFX7yAuP30JXKAwGL3PVi9Aso8Rw6PcHuiAXsUPxlOOo7eytyVAHZ9oN+iDgvZ7zuVR7Pky25PCuiP2fyURAPBvOadBHHZJH3hl7Hqk193yv3byJlIra/5fdERu7Qjx40v9hrQu4V9DjLg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82ea29e9-dd34-4a12-5db0-08dee18b6b4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:36:44.9733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1h4TWaZOldPufbqKzWGI+FeTA2Y2p6P408PJZuHCRqxkBHf9mZ/ci1VgPs27BvDE/S+r4xjrX4qTgrCn3jhOYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7861
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 84D97752ED2

> Subject: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth thresho=
ld
>=20
> On Xe3+, the SoC can lower the fabric frequency when the display needs le=
ss
> bandwidth than the minimum GV point. This threshold is defined as 20 GB/s=
.
> The driver can choose to request this threshold when the required data ra=
te
> falls below it.
>=20
> Add an extra QGV entry, with both peak bw and derated bw set to
> 20 GB/s, to the bandwidth info when all of the following hold:
> 1. The platform is Xe3+.
> 2. There is at least one existing QGV point.
> 3. The number of QGV points is below 8 (the maximum).
>=20
> Once a plane group is found, the driver iterates over all QGV points in t=
hat
> group to find the best match for the required data rate. If the required =
data
> rate is below 20 GB/s, it selects the peak bw from this new QGV point (20=
 GB/s).
>=20
> v2: add the peak bandwidth threshold as an additional QGV entry
>=20
> Bspec: 68880
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 33 +++++++++++++++++++
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  2 files changed, 34 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index db2ee9de5eec..71aa9a6928db 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -52,6 +52,8 @@ struct intel_qgv_point {
>=20
>  #define DEPROGBWPCLIMIT		60
>=20
> +#define PEAK_BW_THRESHOLD	20000
> +
>  struct intel_psf_gv_point {
>  	u8 clk; /* clock in multiples of 16.6666 MHz */  }; @@ -601,6 +603,34
> @@ static int tgl_peakbw(int num_channels, int channel_width, int dclk)
>  	return num_channels * (channel_width / 8) * dclk;  }
>=20
> +static void xe3_add_peakbw_threshold(struct intel_display *display) {
> +	u8 qgv_points =3D display->bw.num_qgv_points;
> +
> +	if (!HAS_PEAK_BW_THRESHOLD(display))
> +		return;
> +
> +	if (qgv_points >=3D I915_NUM_QGV_POINTS) {
> +		drm_warn(display->drm, "Maximum QGV points reached.
> Ignore the peak bw threshold\n");

Do we really need to be throwing a warning splat here since these are just =
the conditions we need to meet if we want peak BW threshold.
From you commit message its not always necessary. Correct me if I am wrong
Maybe drm_dbg_kms.


> +		return;
> +	}
> +
> +	if (qgv_points <=3D 1) {
> +		drm_warn(display->drm, "SAGV not supported. Ignore the
> peak bw threshold\n");

Same here

Regards,
Suraj Kandpal

> +		return;
> +	}
> +
> +	display->bw.num_qgv_points++;
> +
> +	display->bw.peakbw[qgv_points] =3D PEAK_BW_THRESHOLD;
> +
> +	for (int i =3D 0; i < ARRAY_SIZE(display->bw.max); i++)
> +		display->bw.max[i].deratedbw[qgv_points] =3D
> PEAK_BW_THRESHOLD;
> +
> +	drm_dbg_kms(display->drm, "An extra QGV point %d added for Peak
> bw threshod of %d\n",
> +		    qgv_points, PEAK_BW_THRESHOLD);
> +}
> +
>  static int tgl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> @@ -695,6 +725,9 @@ static int tgl_get_bw_info(struct intel_display *disp=
lay,
>  		drm_dbg_kms(display->drm, "QGV %d: peakbw=3D%u\n", i,
> display->bw.peakbw[i]);
>  	}
>=20
> +	/* For xe3 cases add an extra qgv point for Peak bw threshold */
> +	xe3_add_peakbw_threshold(display);
> +
>  	for (i =3D 0; i < qi.num_psf_points; i++) {
>  		const struct intel_psf_gv_point *sp =3D &qi.psf_points[i];
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 13e93a4b4f5f..1360a16edbc1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -191,6 +191,7 @@ struct intel_display_platforms {
>  #define HAS_MBUS_JOINING(__display)	((__display)-
> >platform.alderlake_p || DISPLAY_VER(__display) >=3D 14)
>  #define HAS_MSO(__display)		(DISPLAY_VER(__display) >=3D 12)
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
> >has_overlay)
> +#define HAS_PEAK_BW_THRESHOLD(__display)
> 	(DISPLAY_VER(__display) >=3D 30)
>  #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >=3D
> 12)
>  #define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >=3D
> 35)
>  #define HAS_PMDEMAND(__display)		(DISPLAY_VER(__display) >=3D
> 14)
> --
> 2.43.0

