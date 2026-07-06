Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1BwXE91jS2p+QgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:14:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCAC70DFB6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:14:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O2psS0Pt;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993B010E7FC;
	Mon,  6 Jul 2026 08:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45FA710E7FC;
 Mon,  6 Jul 2026 08:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783325657; x=1814861657;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=piJAB71TGg6ut5xcr+Ed/Ko7YLAAx3YkDrKRrrOxRFQ=;
 b=O2psS0Pt0G4atQ1LHWCmB5Frn3qxyHSR7YKyn89g0Vc6HtjvId0+t7II
 8ByD5rmSZ5XgyhN+YLKQKCI83jySAJhnStN6hnmcAJK7T3cti+a0CDoo1
 QCf43kcacHuVw/NHIyjzkYH1z3Oh6kX02aSs0HNxFxY1XDXsRub+n/6tn
 PRYjPn6GcdQE0E3C1UTKXKSOi2UEGQq7QXH0fQqwvDGb/2eeJzkxCqFhl
 AI4ROncfTLI0/xUkbnzIL61PFMsDxglnQ7T7p4whHG2m9Wc2VEeibGMQm
 Ha0LUuRGTKEvgws3ZgAEzwqF6LccfDHZU5VTpqcY6R3b/LtPcj/De6Ohx g==;
X-CSE-ConnectionGUID: 5SdPrl9yQHa3Njd5h70k8w==
X-CSE-MsgGUID: +fRn0ZYXQASco0Fdcwp3ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="71475644"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="71475644"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:14:16 -0700
X-CSE-ConnectionGUID: Fdp0I6szQB20Xw/Eb61hOQ==
X-CSE-MsgGUID: aKeQZmyhT+aiy4MqkC35MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="251912854"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:14:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:14:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:14:16 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:14:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oae20vGzsEZ3DWqrKnYnG1uvs7mDr75Q/fz88zMmOJxj45LH0pPbxXTql72uMHIZqYs2sP9cLEd8SptUJWWpUWkYxWgct2bIU40hY1ArJzuB5RJ7nGCRYcLYEuUKhlVoqPv/6dMoXZVSJiJVYGyaUhesULUtywG37BsCHSIOnRsk/0DITlszchI02jeJMFqTeNANxtu4NVUEBphlaZk1mJweiOhvxtpN285rC3xsqMGN90kY/ZN2iHD1XuaFX74Sxze49ljelpA17qvy8+pD+p7vHP4r/tmC4w46kxoL49iS5Y4cEvwNvYCMpyz4oDrenhUfoz4xYfFvN97egM+7YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bglGpnGLSJ0QaHV7ShnjeZK+kd7i+sE1SQnxxBFZE4A=;
 b=iLImccXT9d2+Lc3hskivEtLtIXHoO5wmBxUoBtNIqq9cCzsRpJDVcfA5FVqgoQkyH8ep7chwsPiR5rR0vTcOt2AB7SARue1tkVLfjT31uMq2MW+33NZRa1F8buAo6KOdZD3HKn1UfxTwDM05yROdUGCvX5rsA+SOr9jyUoeCM7hKorIm611IQfxLCodYPTkTKHGTgyexyPPOh6AUEe00e8rrwBqY/OA4ZCstcCNicyACkoCZq3u14caw9XnmUzHo7AaJEnKLn+UXDh3szHx/pMFJ6xYjGALhiH0gnCsuWQEDbYw4wsA9Z4W3FhwFuHwqXKhp5yZHagMWLvs7y6hkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by PH0PR11MB7712.namprd11.prod.outlook.com
 (2603:10b6:510:290::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 08:14:07 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 08:14:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 09/34] drm/i915/dp_link_caps: Re-enable link
 configurations after sink caps change
Thread-Topic: [PATCH v2 09/34] drm/i915/dp_link_caps: Re-enable link
 configurations after sink caps change
Thread-Index: AQHdCW761N+PVLonpkC6xFzhU3UYZLZgK86w
Date: Mon, 6 Jul 2026 08:14:07 +0000
Message-ID: <DS4PPFE901A304F4E925539C3EA739183B6E3F12@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-10-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-10-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|PH0PR11MB7712:EE_
x-ms-office365-filtering-correlation-id: 1c96166d-7a24-40b6-12cc-08dedb368cf4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|4143699003|3023799007|22082099003|11063799006|18002099003|6133799003|38070700021;
x-microsoft-antispam-message-info: WVxxOst4k23eDWzYtKgtyBNYtMD4Cz9TctBhTNqAL7PAAedc6/TTNoBf1A+1vW53Rx9M/A5s6X9sxNR87Dq+uy9JaZKt0evinI/s3PUdZ6oZoyBh7MLif6zUZwb66JkLEWNti+RIE+LQw5EcXSheJKUzTOif3iPtRrz+6MmeYwU7rqX9ngf440QwirVl+HfREB2wFkeaMJjP4KmOkkmdbEEyCRBGlWRqRfjf28Hh4dZl5KDzLU9N3Qs9Kk6kCf0V73+OtwNiGF6hZb9MBuiY//qev6R+yT3yPpHO90B6s5AXeBdv2/iheOnILNmFugmslnK6My1+czoDOxIvsLi/8R9KB5z10aABMPqCPUrAiwjIt4IL0GOEizE6g1PYsanbz3qTDdHKoDkHWBvRWC7A5ISZ3hsP5tPqFQVGbzvvTl8KIFbzM2if6VRUFhCxr38jAzF7Fdos9ockBHb6X5G9yd5oDiXwGqqqIg+BzO7tVBL9MNgFjm4Xn6OpE0gzFjksj8v3pjnU6ihcW+ZMSWbLRPZCxfOLgas0Q6xj3mqe4uxrVXs8wK/0MqU77ftwaMjcjnChYz/ulCW/SpGyMvoPWacjwje0x071QWE6ii7EG8lJck32/2cTuf3MLcScXIAAvYVSgeCYD9ZOQZcOt8RCHHGkEd+DuwpElohFAzjIm/+DnZgRn3Punwv25lYzMnEtrXvFiHM/v8IRnFFBOpmmt8WAwbbZF1b2wwgPfBtK3GY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(4143699003)(3023799007)(22082099003)(11063799006)(18002099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zPZgJNhU/1n3U7h2Elgh+z3p7IIMwQDYhXtVfiK4U3H3ouLN9Lfy2GWVOA+R?=
 =?us-ascii?Q?tKWhWRguJPbLZ5Xn5Cp1orV8fK5jlFqacuDFPRsrEh1i4+eDrVJvGnh5Sa3f?=
 =?us-ascii?Q?p5lpBbKw5xpz3ahuExxVrZDBbm4FMbnABvKqI5hoaFLMedohIdpCr1QWo86O?=
 =?us-ascii?Q?IiOiuhTYb6H5d2hIRFazQ0hJ13jv4ZEl8viHtyjSrCYbVk7j2POe4sMR2ZoK?=
 =?us-ascii?Q?D4XU4TOY/elHbS89mIjiet68uBYVGsjn4HvuiR8GNqDdmmrWQ+ba2GeLrQRX?=
 =?us-ascii?Q?hngPSQKA8FIW8bEbhioSgKTDwr6NmUpCTCUnDPOvVlJjBYKMm8frl7cr6TJI?=
 =?us-ascii?Q?7WH7JVUPa4EXFw5o8AgFY2KGB1gnsv1UkEa+k4yUuu9tD/q8P0m6m6YYTzgW?=
 =?us-ascii?Q?fsjb23621qHauFYcVzd4yMrjKcgwWzOmNrOZhMHBAkuXtEP3792G9ZT68l8/?=
 =?us-ascii?Q?7lttCr0fmWwKqIVxVCoRz31ixAtoYK60NCn9UuDXR76GNSSMbiSwRZfin64U?=
 =?us-ascii?Q?t/b8MyqQD1lQQg5e8iaZFpAWAazPlAcOhj7UytlsqRMMdVFrx3GE8VC9xi6H?=
 =?us-ascii?Q?WlheDxkdnjVhF6gLeVEJMihDypTWx1Y/USg7ZvOXfPqchVubcfmhnQ9GeWJp?=
 =?us-ascii?Q?y2lX09L+xydLzAnUyTIao35B37dYQQcg65woITUw3r0P4nHxqJnv5pW9Afek?=
 =?us-ascii?Q?4KaMvNn640hc1j4IAVlgvjm/AKKltQt8FpcqJP1lShBbTYcNq9nb+313EjTE?=
 =?us-ascii?Q?r+LFOhHDbCT6/ZmgvtV7gpBR/OPyH/1VlLLZoaqXV3mpuQ/qTciUvvr6Ssm5?=
 =?us-ascii?Q?OJZQrXfYr7Obcve97ENCZSR/a5S4E+vARWZ2kWMuU7hcYH3fG1UglsVcYV/o?=
 =?us-ascii?Q?5fmH3I9n6XdQVqd5wxAej+yG3PvDfvIasHb5R9wwjce8vsyIKiFFdfNk/oN9?=
 =?us-ascii?Q?1I5bL3NGutahqzQcXtgRnhWiBhrBlDVunhtETuVHV4sASmlXwIIy5dQ6fOpM?=
 =?us-ascii?Q?3PtShyVVWKjYOOCYt9txrUfD0F8WmWjI2zPawvcZG7IODwxTmwrAa2TnDJMb?=
 =?us-ascii?Q?NudqpijcmRFi7PHcD5XGGqzMX81ZDXuJmzFm6S9euX/nHSO036/S2RM/zBdy?=
 =?us-ascii?Q?bDBcSF9zENcrcv1dJY8TrHQw5TyuuSrsIQu/6D91nvbiwEecJFKkC0OLkgjk?=
 =?us-ascii?Q?SLVRt4dQR3cqBLgoxAFHev9R4DqdsbYwxJ+yRmtMzjsWALTnVffdzdcvQj1t?=
 =?us-ascii?Q?7Y9c1fK8PQxfqiWrEPSxvwR0ZcxJb41BztPeDiORQ6/ohzWH/uKcz2GagwpE?=
 =?us-ascii?Q?Vyc+Y53oMLr3evHCCrnHIRLl071TS6KM1NqcR3DPTiNxPq/FPJ6OQ3zkuGSS?=
 =?us-ascii?Q?iQc/npeU46MZhLNY0ZaxfwQ6Vn1bBGVlpY7Otb1MEs2Bb4gxE32Xei7pDy84?=
 =?us-ascii?Q?ctWhw6a+i9eXoLjRSs3g6LBVcRViGBFvY88srCMZODJV/oSyGa7GrTom/deY?=
 =?us-ascii?Q?W1nwWFkBnCSqUvlxyfyg6SUXe/SLQjjU39nV8ifAVx0XxWtg0gnwcDZmUASw?=
 =?us-ascii?Q?KsfGxO1BmEzuijiNiDfxP9lZACzfVsjB/b9rNOrUJrVz+Hdf1IJceLv/54AN?=
 =?us-ascii?Q?4VPyFeQh+X7vyIntvi9X11VKXYPI0R8tNO/69jkTpUy3ijt5+Tng0H/54LgS?=
 =?us-ascii?Q?KvB5m4Ej75xiUufZeO5pWcLCfUw2sBIXFDHjhQm1JChxdA3GvA4uRZ1ZK6zq?=
 =?us-ascii?Q?InaSk9LcOw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FWeoGXeWsWKJbueMaKI6iXgbxAjPMjEfwjtrWmDLZShhLFVt6Q4mpSF/O6tcM3PUrjtN0z7cDikgVDHWZLXUsfPgh7hDSo4M52Q+Uo0zyGhctrJJrJzB447Y0+w6/WIl5aW6BqDvpS5v/vz1q3h76r4oOy68fMCKOLxohcMzhW2QUeX1xDsqxHvlGKgqo/XquCxsVFm9e9k92TltRfWFevtk/Z2F87Sou0usl0H2dFvSMU6pmZsJirwyQatHNG9tfzyu4z5NVKgYlIJ5zpgEUa0KL2/ky9PoaTlEwLvxpglquRfuOxj/6nnTOUgO0wJK7gViVLElG9QFwXSlh49h+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c96166d-7a24-40b6-12cc-08dedb368cf4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:14:07.2647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YNZmzhKXCWdrXZznmYdHmp4y2uRv4U/efDUxysr0qy3FzzCxpeW+BZCsYUexdYtMZIMtsNLQiVZpDvsWFtn1lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7712
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9DCAC70DFB6

> Subject: [PATCH v2 09/34] drm/i915/dp_link_caps: Re-enable link
> configurations after sink caps change
>=20
> Re-enable link configurations after sink capabilities change or the link =
got reset
> before updating the link capabilities (due to an RX_CAP_CHANGED HPD IRQ f=
or
> the currently connected sink, or a new sink getting connected).
>=20
> This makes resetting the link explicitly by calling
> intel_dp_link_caps_reset() subsequently redundant; keep the existing beha=
vior
> wrt. this for now, adding only a TODO: to remove the explicit reset.
>=20
> While at it add documentation for intel_dp_link_caps_update().
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++-
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 37 +++++++++++++++++--
> .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 +-
>  3 files changed, 43 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6e3fa6662cbef..23001541283b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -701,7 +701,8 @@ static bool intel_dp_set_common_link_params(struct
> intel_dp *intel_dp)
>  	intel_dp_get_common_rates(intel_dp, common_rates,
> &num_common_rates);
>  	if (intel_dp_link_caps_update(intel_dp->link.caps,
>  				      common_rates, num_common_rates,
> -
> intel_dp_get_max_common_lane_count(intel_dp)))
> +
> intel_dp_get_max_common_lane_count(intel_dp),
> +				      intel_dp->reset_link_params))
>  		params_changed =3D true;
>=20
>  	return params_changed;
> @@ -3652,6 +3653,11 @@ void intel_dp_set_link_params(struct intel_dp
> *intel_dp,
>=20
>  void intel_dp_reset_link_params(struct intel_dp *intel_dp)  {
> +	/*
> +	 * TODO: Remove the following reset of link capabilities, as
> +	 * this isn't needed after intel_dp_link_caps_update(reset=3Dtrue)
> +	 * was called.
> +	 */
>  	intel_dp_link_caps_reset(intel_dp->link.caps);
>  	intel_dp->link.mst_probed_lane_count =3D 0;
>  	intel_dp->link.mst_probed_rate =3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 667d2e55cea19..de520bd423d59 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -709,14 +709,42 @@ static int link_config_cmp_by_lane_rate(const void
> *a, const void *b, const void
>  	return lce_a->link_rate_idx - lce_b->link_rate_idx;  }
>=20
> -/* Return %true if the supported link parameters have changed. */
> +/**
> + * intel_dp_link_caps_update - rebuild the supported link configuration
> +state
> + * @link_caps: link capabilities state
> + * @rates: supported common link rates
> + * @num_rates: number of entries in @rates
> + * @max_lane_count: supported maximum lane count
> + * @reset: reset limits and disabled configs
> + *
> + * Rebuild the supported link configuration state from @rates and
> + * @max_lane_count.
> + *
> + * If @reset is %true, reset the maximum link limits to the maximum
> + * supported rate and lane count, and re-enable all configurations.
> + *
> + * This function is called regularly, at least after a sink is
> +connected,
> + * but it may also be called later whenever the sink capabilities may
> +have
> + * changed, for example in response to HPD IRQ / RX_CAP_CHANGED
> signaling.
> + *
> + * In the Intel driver this function is currently called whenever the
> + * connector detect handler runs, after reading the sink capabilities.
> +This
> + * may change if those capabilities are cached until the sink is
> + * disconnected, or until RX_CAP_CHANGED is signaled. In any case, this
> + * function should be called whenever the sink capabilities were read
> +out
> + * and may have changed.
> + *
> + * Returns:
> + * - %true if the link capabilities have changed, %false otherwise.
> + */
>  bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
> -			       const int *rates, int num_rates, int
> max_lane_count)
> +			       const int *rates, int num_rates, int
> max_lane_count,
> +			       bool reset)
>  {
>  	struct intel_dp *intel_dp =3D link_caps->dp;
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_dp_link_config_entry *lce;
> -	bool link_params_changed =3D false;
> +	bool link_params_changed =3D reset;
>  	int num_common_lane_configs;
>  	int i;
>  	int j;
> @@ -778,6 +806,9 @@ bool intel_dp_link_caps_update(struct
> intel_dp_link_caps *link_caps,
>  	       link_config_cmp_by_lane_rate, NULL,
>  	       link_caps);
>=20
> +	if (link_params_changed)
> +		reset_max_link_limits_reenable_all(link_caps);
> +
>  	return link_params_changed;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index 79aca74ad9eee..dcbde890809bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -147,7 +147,8 @@ bool intel_dp_link_caps_set_max_limits(struct
> intel_dp_link_caps *link_caps,  void
> intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)=
;
>=20
>  bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
> -			       const int *rates, int num_rates, int
> max_lane_count);
> +			       const int *rates, int num_rates, int
> max_lane_count,
> +			       bool reset);
>  void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
>=20
>  void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
> --
> 2.49.1

