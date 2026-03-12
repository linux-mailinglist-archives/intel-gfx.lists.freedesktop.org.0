Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJjRJZwusmmzJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:10:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD16226CA4E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:10:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFD110E942;
	Thu, 12 Mar 2026 03:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RtUH93LE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D7510E942;
 Thu, 12 Mar 2026 03:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773285015; x=1804821015;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lHQQzDnQ1ulvaA5B17tmXvoso3VtrPkjMlMc+RRnSuc=;
 b=RtUH93LETunx5oRq/ry2IAaNVsSmKE548tThhTHvXwOfDtlnvI14JR3t
 SemPLoVaWpMUdE8OVsYnPDNmaDM1c0zwKG8k4tqrElnVEi3gFgeFDKlbX
 MfswuKTsUBTfg9PwuPqonR9PC+2HkXqV1xDcqJgBvJxWUZB5S869EvzIl
 16rwhIIkLZtHdAbXbVVnLsE8RyMzfEpJ1DRMHbqbGFMp9HvIdaPzUsfTh
 rX+Jq54VBZQxN6X7E0tbar1JkcV3euYpexT7nxv7SWF+XHweyTHw5fDrS
 uxGYZnAy2zRmlPFSrH6NukANjl3PTNes55AWeos1H7WOOSMhCqp5cjoBb A==;
X-CSE-ConnectionGUID: RYAeQ6jNSka/y5zP7Xq4cA==
X-CSE-MsgGUID: /hEsesrIRSOrxzplV+eExA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74485062"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74485062"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:10:09 -0700
X-CSE-ConnectionGUID: XzWhhkahQ2q+PxzyYcOSlA==
X-CSE-MsgGUID: 9J/TQbZlTs+v8JVs6ZyNJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="216848947"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:10:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:10:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:10:09 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:10:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EkpnEdI5rvtPrZjiMDHe0wBoFRunZMqcfSrNDzbOgkP/Fo1Dr02Sf4hNRaZoRwK/zSCFbGyiewimQPpy178Oi4qNUN0s+yJK5LXgEENk95WAG+ojCYb0oa+0Ize2F/2Sme5m/qxvgI3m8+p1qQa+f8MKWkbQjp6xuNDDzkfnfrCRlgvVTxFc0fu44sqVMc8M/h6lMJPphXqsRAeJWsqoG2gC3nBl3X3dDPPuk9QSp3N4k0vXcKmftNgOpHQAyhmdCjQ5XHWz0ch/IeA5FcXHEeU5pccWPsIeZ+q1ZK0ev1q1F7dlOR2SD/uu0UaVpMp8U2VINg251go4q3NeEbcRLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuOEgnlftiEtEmoH4RSlluZz8jGjVUnjTK0AIUA5umA=;
 b=PLrRjbQqbi2Ho4LatvLisCEXFNXImX8lywylA/P+suOwkcSJL5TrMy5Auy3s8kGIDiza9LAlD8DvyCQCrHOStQtqGB70/dfV6ujmvvH2ipXgixl18yOLmcVermqqaUtBxi0MnGl4LXlI+/lRYlFl9cy1bVW+zoUSnO4YlWEYAwCA17N336U389JSKXrhIhyZ4/+DPOUz8F+IlNj+QSHtFvJ0veTZnF6E6w3ce4knCpx5UAf+wEl7xRipUVCv71v5PtEoWX6TRO9gLYe1XrTMAg0DdRwdy49+8ETfa+vAwuwgzJLJq3r1hd8jwV4D0QXm41SURjRSkH+3n3mRdbcsEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB6901.namprd11.prod.outlook.com
 (2603:10b6:510:22a::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 03:10:06 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:10:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
Thread-Topic: [PATCH 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
Thread-Index: AQHcsSDGq3Pg8PJ+gkmg1SU4pHGT+7WqOCSg
Date: Thu, 12 Mar 2026 03:10:06 +0000
Message-ID: <DM3PPF208195D8DBEC097F8191AE0DB3497E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-2-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260311063259.2608206-2-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB6901:EE_
x-ms-office365-filtering-correlation-id: 500105ab-a069-4cb3-844f-08de7fe4dca7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: ScCSx1Uk5Bn5XjsQnWoSuoDOoWkcF05eC0NWhOxiVSeAvqKy1irTIS4z/S47VxN0RnO8BWAzA129tvKML1Mx5EGLR8HzneXwqnY9teuPvjoBqu1HfYesVVQ7ZE7vk1AOmwBKyP0HVUu582EWIm4cEMjP8FRtFESlgGIV9CKvXPGo+qn/5eKvei8MR7/8VdLLQogI6lQzSPSoqlTTcQFrTrxZLAleTpo2Z8Jiw25tBVKizapLXzxt0tivfY5IF+NYxJZVZrcMIGMVY8KOD5HE+E+mEEMvPyKQkCV9uLvjA0NTNN/PyAFknLGGRPaHNLdWWfLNNMuUdHzKaZMm38FiQqm8K8pxc2icZCVFnkqq7SatPtp/5ihnQCHqMfz7Nq9UGrf+oErl2LOMX0e71aP40X4+9u8fs9MlqEhIQ4v7NzjfS4nq4b7+CoU6g2ypn2myzhOlWTK+AiQmBDspBsHeGLFruoTlmmkhNOL/RU98WuFMOlrEC0P6BTtA458nYTPSEtSpJOFPed0MvJqf5KPLPuR8xgIXNXRp7pMZZEt/j5vjIukKWAuqELfsS1fSpaWeg9DGgWmkEgfuqoNYfiYEMtsQg9EcwCowSV5VhIY6GcvbU9yb2GEJZdLgi3/uoHke0vuyzgSknjLCsA4R2+Z0cBpk9SqlaVUbjIqb9XkUriPdQXt5H2IoxshE9NCK16MCXwCcOzB10NakskWqaqLFIamj9QtjY26AGODM9hrWrCkY/IzMlEzRpqgV4hQR5ashdLOJ36lgR47tAH3PB+3H2IlM9kmynd6YZE5ZDaGy6P0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AEyyczDzDxPxoUoK2JzBm1bgc9fMJfFRfOeZ5V/qVtRLnKy7cfVd2EkByczF?=
 =?us-ascii?Q?UqZN/MmPCXjTX78EvIm3JRktRCfV3fsx2a8fv4ia7NO9JmmWu9dnVccUy2WV?=
 =?us-ascii?Q?16gKym7QGay6oESFBsnq2YjdM13zXpWJ5DkGcH4HcnDy6Q6kjR6GEVbX+/l0?=
 =?us-ascii?Q?ix23fa5jiKUX6qAOIeTDitrwFbGw8f2y7U6lC8oH2BDYEPLeJZXPRpRk/suV?=
 =?us-ascii?Q?j/HpELQWNRRp17cLjls5aL/sUCA6G4hU7oFQbdgzgsDXM02pwt4rUB8nupyp?=
 =?us-ascii?Q?YOOsHdta5A6rWf/K5QeXk6oY/qJSg3VrNS34dsPE9imhV3dR80TYS0MpC2Cz?=
 =?us-ascii?Q?cPSDRmN6rLIx85R6GCeIQIVwMsJWDEcbAeWw0mEomACR7naami+3RK7hEMwi?=
 =?us-ascii?Q?q0Tp1lEBPgHCNFJ5O4wnDiejKwFbefy5+0t8PoBvKC8N8Aw629RiSdpwXrZo?=
 =?us-ascii?Q?Ah8PMG+wB616mAFjlZYUQkeXcqjl5HBhq4KpVKju7Wxwf++hWFMpO/WQdqxP?=
 =?us-ascii?Q?B3+gY/aSlhTUmwCiyaOr29dlUDVsyGz85xDoc6Q6c0SVG+4S/Ff8ezpqGYtN?=
 =?us-ascii?Q?ciKHatGKpFv51H77C8Nqo0lVZKoHNcZgLffKRCaTcasX3kOrHAws3jjMMGnR?=
 =?us-ascii?Q?5itZjwdMALMbmjdEqbu05Khup6kkwJB4/QXt/z1pRBk67PsobfFU4CInhwJn?=
 =?us-ascii?Q?CNArRY34MN+BuDuZBkhSBO18MCNj+mF6NfLwQ+59Y/YbI/yW0cNRNBVPN4QM?=
 =?us-ascii?Q?Rlytoc2whKlvWgYSp3QazIAxKQMSkHBf+ikwqMQbYyHaxRDo33W0aQ6UjqTY?=
 =?us-ascii?Q?6GTu2EYUlbmvwEqpAOl7SqhyJURqCUXLfi18XEOEiJhdYYn2p5lHNV7jTUEa?=
 =?us-ascii?Q?KwiqwYjruAvtES1VI/CE3hRqUt0yDdPAr+Jr9GtjHbZlZdMV3Z/Bft8emCvP?=
 =?us-ascii?Q?v3c7x74AkjqnCsL9zjvqCHvkN0zk2g9yBKAleoC+6fhVg30q9oZAuh6gzVnE?=
 =?us-ascii?Q?O7MbT0yzD9hkRxJ9tQE6wevAB3/F7HqZmQzWXahbue3KzGwV4MP9d3PNL+GI?=
 =?us-ascii?Q?h4ntebrZFiD+/e2bt2/++t/7sPp7YefX8y0vqCENclWIVA/WqYrxMKVukEEx?=
 =?us-ascii?Q?mEPr11UHcefThX4is5uTAA23ZQu+swv6UBOadyePFRDdnVWf6nDX/tzZtuZ5?=
 =?us-ascii?Q?qu9xTXVpgY5uhnsL9Ni5xmc0eX/KOy5BaCzNxbtFCjd+AUtOdlZa7TzsvyIo?=
 =?us-ascii?Q?CYE+6NOG65dXfFfVGVCMs1hTW7zalrkmF39AGsNQgKD90cLvFnwQYz3Tt+nG?=
 =?us-ascii?Q?a6RsdHhFttYEqAZk8MB2/DTFqoqAWJRZ/xY95tRxNJBjcuH70Lq59lzJdROj?=
 =?us-ascii?Q?Qi257ZaNsYMouVjddSUkBYJHLGoC1t8B92aDd63H+YuGeeTuvIzNtJtGiq34?=
 =?us-ascii?Q?m4l8Ccj63OW63+GBXKVUGervgBtC04ZYk+Tq8UQaSSAYQQAxzVt/aGjyk+jK?=
 =?us-ascii?Q?QH1AvyrdRQn/SIdX0BjJ80tHMKJsGy6SZ7tkkwHBfaUu/4iff9C4Yxi3l+u5?=
 =?us-ascii?Q?D1zE4AZbqqf2KxYCPQHed2KmeG1LWzT1xwM8hDK5FCpEpVk24lwk7cBChzLB?=
 =?us-ascii?Q?5d6+nD6TLN3WTolbxw5AxqyRTh7aZ5hHcAhpYw0U0EZ9D5ZRRW4lvnD9qhVZ?=
 =?us-ascii?Q?gOs6X5Np+MrDfNwW71aLYMGcpEvFqiLb9LrR9IHgxnjiUZ29r75uAX5vXeXq?=
 =?us-ascii?Q?+6JgvAu8ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Y86sPhBoAIiEgf2iv69P6tCGUBS9uGKYBfA/WKrRO+JS2vPvLRDx3GCnwGKcP3VwDpLs243PXsNQfnEGnQARfGPOQY1db2ljfgNX8AzqohMCSjdR6PzwVE+r++HNYKYO3ZeRJZxZJR5UIKxFjdzKgNjFcgF6lYllA8unelkn8um7uK/0Y8uMn4w7jZDVkja16KdUNkF4YvaB6LnxDnHXUkf5j1rkmitrlnEQbLtEBVaVXuQPFNM/1tGv3wk1zWYQMLT93aTxBiQBvUaN4wOw0fY5vMeqnebAektG+AP5L+3zB292d5NgByiA0D5g4QyzaFhFdQ8MPW/a27opb87zXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 500105ab-a069-4cb3-844f-08de7fe4dca7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:10:06.3999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2lR2+J8GbcufeYyXkGTaAYauZa6fTHoGvrE5YpQA151htPs+ob3UMygxgCXsH7ryMbCc+NrQHnXJ7fBg+gAfeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6901
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BD16226CA4E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
>=20
> On display version 35+ PIPEDMC_ATS_FAULT and PIPEDMC_GTT_FAULT
> interrupt bits are no longer defined.
>=20
> Update the interrupt mask to drop these.
>=20

Add the Bspec link for register in commit message
so that reviewer can verify this if required in this case.

Bspec: 70296

Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index c3b411259a0c..38b284a0db82 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -509,6 +509,9 @@ static void pipedmc_clock_gating_wa(struct
> intel_display *display, bool enable)
>=20
>  static u32 pipedmc_interrupt_mask(struct intel_display *display)  {
> +	if (DISPLAY_VER(display) >=3D 35)
> +		return PIPEDMC_FLIPQ_PROG_DONE;
> +
>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>  	 * triggering it during the first DC state transition. Figure
> --
> 2.43.0

