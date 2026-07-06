Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NRLmA5piS2ofQgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:08:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E5270DECD
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:08:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JZbF8f8U;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C4AA10E7F5;
	Mon,  6 Jul 2026 08:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3863A10E7F5;
 Mon,  6 Jul 2026 08:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783325334; x=1814861334;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/YCgTVyRIlDnxNVFk7HTT4aQFPg005KxM85tfMnaCKY=;
 b=JZbF8f8UMe13IwcYbuoRXPoOufNqidet6Wp6OUtNmeaVqaYaoUx415jn
 yucVsiYdmWFdJ6viX9hZtRsKsQ+WeuyOh/WPPmxZFBQBuR4wzzYAhAvdw
 o3knSQL3zdWu0hT7GkInISm6PtMkr9FFUXsINiu/HOl8Uwx1eFrH0TSzb
 bs1BlUuIEhZDJoRoIKIgwEuqn1BgT66s+1GfWru/7py0wLP68UpbPnDSx
 u4FZt8pg+f9HlDfXVskHQBHxXfILjtR/KUboC2jW8w1WnMy/2iMmghydY
 ezDhkWiYuzXGP4zPi+KmwCcNibiBwG/RtYlVDjmt6nCVmM5sFUUyBgCeU w==;
X-CSE-ConnectionGUID: e+bZNUS9Q7WeyPYHU7y0xg==
X-CSE-MsgGUID: YDS3Tby3QHWQblEqw0fWKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95329953"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95329953"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:08:54 -0700
X-CSE-ConnectionGUID: 1dgNQR0+T62NxvJt3j1NVw==
X-CSE-MsgGUID: rwD8b3JcQyeVwiEhP5Zflg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="276859422"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:08:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:08:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:08:53 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CzBFfzP76FyrgnBZAbDAL2n3fg3q4CtcbuojYZ+UwssFrdYzR5rF1CYNlGn0ug2FNRImg8nK/qxhZmtcC4GE1gpmnT1CzBBVJUuK2/hiV5pF5MVyTsbYV3s2iZ6MQ7DN9/5r5ecoFcmdD13/TjccL9UTWaFLl3pBPE6v5HXT9H6rrjspI7pycG5kfgR+oerr787JQ+7qz9i3wFwGxWrle+WDxspBEMP14TxTjrdNkd1c3rINIDY3/zjRl/fz0JEuaOq1EuZRR6Oc/3ZPhop0AxoOJ4JnNFUhyZ9qSnA6fT3M3xU00yk9LG/JK/+M/iiDNzbmzRwq85wyKVUMXW8Aqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5V86RDUCs44FUG3AbebZhP28jt8OTlODXAOijH2Bp1c=;
 b=D1RCDnOVPsoAsJAcRHx/oQHdX1JlabB8tbOpLnWp1OgcCXCrgolQVRsP8bjc/Xj4eJIH9SpeThljKBArOO5rWUyZloGUdptEVrG9+9lwlaGkR2Unzhdn+mHsa91EOpPa/PKd6owNZpCcfinm+kQsRvDXPR00pDv2wbEaacWacglHuk7RQl/gH3EUjOGdhwliAzR+72tn3sKKDIB+5/g4xPK/BuOlFhklU3y6AGS8Ij2d3Ll5ZTZct4+ToqBs/R29QauXqL6Huvx5rdmL1LZVGMuqXtW0pq0BNeqZqPvK/JvbxBBsuP58H3ypZNPccwG3CIiHkaWPpAA5XIG97BFQ1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DS3PR11MB9648.namprd11.prod.outlook.com
 (2603:10b6:8:38d::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Mon, 6 Jul 2026
 08:08:50 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 08:08:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/34] drm/i915/dp_link_caps: Add filter for enabled
 link configurations
Thread-Topic: [PATCH v2 07/34] drm/i915/dp_link_caps: Add filter for enabled
 link configurations
Thread-Index: AQHdCXQXdzmhfobuzUipeUJ/8++JZ7ZgKlSQ
Date: Mon, 6 Jul 2026 08:08:50 +0000
Message-ID: <DS4PPFE901A304FE4CD0B1F63C33CE1AF17E3F12@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-8-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DS3PR11MB9648:EE_
x-ms-office365-filtering-correlation-id: 8aced1d4-d2f5-44c2-90a7-08dedb35d01b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|38070700021|4143699003|6133799003|3023799007|11063799006|56012099006;
x-microsoft-antispam-message-info: R/ahozl2R+/rSlgTJTgUU8bH9l7XwOJAprQCzjuv55fUwcXg8VBXQS+Mph/by/6witeHFdoVtZNee6TMlIo7QOiG/vb1KOGzs8hQNexofvujJP0vogN5GrJDf/sO9Q12IUAt+AlJnLk9I2E1EjhjLsIvPiJd7ZqnQatNIGPFnzfCWKikw0+X38Njv0WouCAqfXA+VPmT4xL50IWT0TAd+f4drML0kwqVtDYOmoKtcboRNND7fCH6eQcK7Pht+HRXydOfVPmY4fYvPARaXH+539wFk9o++4KUBB7eb3AFkQ0dTpl99NAPsq7P9Qd3TQJMYiVTdUS8KZyIVJzq4RB/ovsvZMPPloI2uUt6GXTb1KvHoo0l1YMWKHAauSA7BoY+srkO0kT2EwH751cIVEtGOq1Cu70s+49/dtdN11Tz54ngM/AhIsuKYwayY9JeMYzYjBcoCJDeCJ3TEuHSXOL65KhXvumXuCDBsauc62eMawu6P0kFPFGyI5LE+oLN3nykbpDDdKl2tP991mbYZzY1rPDjjZLuhAGMdTQbNl+sqQyp+va7NWJmrKNwk7zQTHrGnOJVOLKKoapxeRbvCfhxl00jNvsR6HqOWmispxVRH6AZbyBpo+klGQ/wkn11UKfPZQkXqDUVXPsVupJtQdhSCjTd5zV4fsOkjkbHgEaBzzDn9SJeDzI8Q4j4L9vFaNFxeEqqt2n206aIpUaZXpdMvjsmsBd17F4HVP+5QEdJgwc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(4143699003)(6133799003)(3023799007)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E0Zmvuwa+KnMwpl5tapzhdGQqulbSoolZRw41jEKQTeqIO1SvYTGlUdbeg+S?=
 =?us-ascii?Q?LXQQaw+yazx5ohVpEFKVsk+I2hNG5M54NxsBnFQ7eouxmYlC28D0FFXJcjf6?=
 =?us-ascii?Q?uySF7GziJ4WDxoCz8toW96NiKgZ+ufT2ZtPat/kULqbwUFRTrHZUdMHgqkcr?=
 =?us-ascii?Q?DzUUvYEakB6i5miGskXHANedULnNt3biSW1WWqN1oQH6ULoXknoRILsYN06o?=
 =?us-ascii?Q?X16IjYMdhXQSR5DCiTrnzNhF4kMb1ijBN1LoGEtgOE260v8yYTwuW/cbxecZ?=
 =?us-ascii?Q?qtK0uugxunVxwh/rLSwRS6qYWpi1kAMe2DVkSGO2LrR1JaaEGQv8JevJMJTD?=
 =?us-ascii?Q?49DYiFk/u794iH6/TU/5wJroe4P4YmXc7PHlp8FDltga663C95g0uWed4qiA?=
 =?us-ascii?Q?J+2dP0GS6ECSaqoYXjq7sSQFkTtk0yvQu/Ntziy6q2f+3eA4rWOjCdyiDBAT?=
 =?us-ascii?Q?g/Yit5iydVHCf6c9jClXu2VOrySDcZ0zss6gXFRhwQvJF+ZAuz9leOZMHfD/?=
 =?us-ascii?Q?9xw45QYZ27FlWZWeDUAnkBPrXRRRhVNNowCArZA9trmB7bTXpyXe03381TTZ?=
 =?us-ascii?Q?eaBRXubB8y0HdrKpz6gXe8la/3vPwAF5vxKFk8qZgqTtB8tn8uG6UxbklITL?=
 =?us-ascii?Q?M4DgRJVtps7M6nJPNbwqSjN3Lh3brxolf2cuVZSlPZ0JidiagQwRSPK7vbBm?=
 =?us-ascii?Q?CtOh0EnJL6o5zdA23BxtaCYuFyUREF82g5Da4SuVfjJ3gUWdE25idxmTCYs1?=
 =?us-ascii?Q?FIs00rZUMD4mxEDq7bfPEVDEqffUpex8dkj2nNmXLbW0xN1hc3UGuyzVmbS2?=
 =?us-ascii?Q?IsB2OvFW2gHvQDXtKi6ZW8zbsamH4zDnEIhyO6l1zdRWPZlfXPlxia7ze6Sl?=
 =?us-ascii?Q?HoLlMlwsXn9ZkFYG7q28IYj+ylIIfxTHsB3ZJDoKPsvhcytJhg7QyyzAzc4S?=
 =?us-ascii?Q?XLquxmotv3rB1VHfDIWWp1A0p2Vh/kK2Bvmr9oHNQtR38L8DJOpLesjNbfhM?=
 =?us-ascii?Q?C28wM16w0ClRnc8cjMElFM9OUoj203t2sO+nmtsWVjlEhrRbmEreiX2S4ZCo?=
 =?us-ascii?Q?aqU94OgfrDIUZtEcb5FYALHDq/9fo74IvU4H/7AfAH45QG17BR/98qdTUqm/?=
 =?us-ascii?Q?3rclNw865VgGtJDdhL1qbL4ptNcKF0ZBs6Gj+Q7e85WOQZGjRs2jZoFt7RSa?=
 =?us-ascii?Q?vVUTFfE2558D+y0PX622D/7VZsdNBz19t692nctCGpYjE2lU0YrOGGa70o4+?=
 =?us-ascii?Q?d+qT14qspLqBp0NzKHqD5sXs/NS6sVrg/zEseqtfmhOd/mdjWSu80F3qzLTr?=
 =?us-ascii?Q?B1mFBzO3vwsLloIqktehm6G8assqDE9NecQCAoOD6nuLnWnH+tjsvpRTgAKF?=
 =?us-ascii?Q?UZhvEgCMklGuvYYi6vkHTWujMjrcUZAbq3hbIBj49q13kSUFclXvsVcOOuSN?=
 =?us-ascii?Q?+C/nGaEESZ7coKKYcLv9PUz/WQK7Kg+MkorZN/3WXjiYHsgJA0LzO/SrYWou?=
 =?us-ascii?Q?gAqqxoZmajNOdjdx0worGaHFlJ33jND2REKpD+nzEjAdGxePqpaEEt8iqRcq?=
 =?us-ascii?Q?JShc0j3KJDnBMAHRH+bvtQFAe7OPSS4UyPi3pFOTW2ooDSQwCQE5Ng4feIhT?=
 =?us-ascii?Q?wOx/ShrIgVvQ68z6b/Qjj9reR1jw+Ar368atSrQsn2m//X5BJatFvwZsSP4q?=
 =?us-ascii?Q?nhRlwc9JfLVwttrqZv9TdemV/UH5kIvptwHRJF7iXaQpqgXrBx9Mnv4PHim5?=
 =?us-ascii?Q?oDN2Xdfldg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LL3NA2qx7e0T2+QLmp2H85bdjKcn6iHD3i8OirxdpNjDI8jnp+Ko1MwI2m7ChUaZMjm8/+zVhZ7o+xV3jhgqg6AUNadIEtOi32zU2QO8vpZwqqcakp80UtuiQ3E+RcRyHAXJSn0aYadrHQPIwqlBC70AOZwWW4UjczUwfmzDQrcASEtfR77ClWy+EOGD3igsKnXqQ73aVplwBqv//YnQqF39JlVpRCge4gdBl57eeYz3amRT6rSFA8ujLXN7TXwlLDuoL2/wDNTcX7UK9i++3Ow7am1mvf6mfNNlcUPxmelRi31eiHme/IXxJVFfRFXiBeHseUM4ac/wGPIjBCi8Yg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aced1d4-d2f5-44c2-90a7-08dedb35d01b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:08:50.3960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w+k4plJvmMbPLIbWPrLAQRRu62zo0V+Du+EHAEFlEHVR9CVl1XzFW2wvFP9qm2TQkbl8NRDdCC/iUSBoJvILAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9648
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 62E5270DECD

> Subject: [PATCH v2 07/34] drm/i915/dp_link_caps: Add filter for enabled l=
ink
> configurations
>=20
> Add a filter for enabled link configurations to the link capability state=
.
>=20
> This allows fallback code to disable only the configuration that failed l=
ink
> training, instead of constraining later modesets via maximum link rate or=
 lane
> count. The code only needs to exclude the failed configuration from the
> allowed set; all other supported configurations remain available.
>=20
> Use the filter when computing the allowed configuration set and when
> validating maximum link limits.
>=20
> Follow-up changes will switch the fallback code to disable individual
> configurations through this filter.
>=20
> v2:
> - Rebase on changes using a filter object instead of a mask of
>   configuration indices.
> - Track the enabled configurations instead of the disabled ones.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 38 +++++++++++++++++--
>  1 file changed, 34 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 5976e85bb2729..03e40e8d24fb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -130,6 +130,37 @@ struct intel_dp_link_caps {
>  	u8 rate_lane_map[INTEL_DP_MAX_LINK_CONFIGS];
>  	u8 lane_rate_map[INTEL_DP_MAX_LINK_CONFIGS];
>=20
> +	/*
> +	 * Filter of configurations enabled for the current sink
> +	 * connection.
> +	 *
> +	 * Each bit in the filter's configuration mask corresponds to a
> +	 * configuration index in the intel_dp_link_caps::configs[] array.
> +	 *
> +	 * All configurations start out enabled in the filter after a
> +	 * new sink is connected. Users disable configurations afterwards
> +	 * via the link caps API. All configurations get re-enabled
> +	 * internally in the following cases:
> +	 * - when forcing a link rate or lane count
> +	 * - when intel_dp_link_caps_update(reset=3Dtrue) is called after
> +	 *   a new sink is connected
> +	 * - when intel_dp_link_caps_update(reset=3Dfalse) with changed
> +	 *   link capabilities is called
> +	 * - when intel_dp_link_caps_reset() is called after a new sink
> +	 *   is connected
> +	 */
> +	struct intel_dp_link_caps_filter enabled_configs;
> +
> +	/*
> +	 * Allowed configurations are the supported configurations defined by
> +	 * config_table.rates and config_table.max_lane_count, constrained by
> +	 * config_table.enabled_configs and the forced_params and
> +	 * max_limits values below.
> +	 *
> +	 * See get_allowed_config_filter() for the filter of these
> +	 * configurations.
> +	 */
> +
>  	/*
>  	 * Forced parameters requested via debugfs. Remains set across sink
>  	 * disconnects.
> @@ -454,8 +485,7 @@ get_allowed_config_filter(struct intel_dp_link_caps
> *link_caps)
>=20
>  	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
>=20
> -	/* TODO: Get filter for enabled configs. */
> -	return calc_allowed_config_filter(link_caps,
> INTEL_DP_LINK_CAPS_FILTER_ALL,
> +	return calc_allowed_config_filter(link_caps,
> +link_caps->enabled_configs,
>  					  &link_caps->max_limits,
> &forced_params);  }
>=20
> @@ -571,8 +601,7 @@ static bool max_link_limits_valid(struct
> intel_dp_link_caps *link_caps,
>  	/* TODO: Validate max_link_limits->rate against the source supported
> rates. */
>=20
>  	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> -	/* TODO: Get filter for enabled configs. */
> -	allowed_configs =3D calc_allowed_config_filter(link_caps,
> INTEL_DP_LINK_CAPS_FILTER_ALL,
> +	allowed_configs =3D calc_allowed_config_filter(link_caps,
> +link_caps->enabled_configs,
>  						     max_link_limits,
> &forced_params);
>=20
>  	return allowed_configs.config_mask !=3D 0; @@ -1095,6 +1124,7 @@
> struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel=
_dp)
>  		return NULL;
>=20
>  	link_caps->dp =3D intel_dp;
> +	link_caps->enabled_configs =3D INTEL_DP_LINK_CAPS_FILTER_ALL;
>=20
>  	return link_caps;
>  }
> --
> 2.49.1

