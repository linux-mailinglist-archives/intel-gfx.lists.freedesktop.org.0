Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 970C0A33AE3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 10:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FFA10EA35;
	Thu, 13 Feb 2025 09:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEDY9rTP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEFF910EA35;
 Thu, 13 Feb 2025 09:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739438244; x=1770974244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TtEkDv1fGjLAHQaKFLq8ooshjYOucMiDMRIEGf2pPEQ=;
 b=SEDY9rTPU2E7kg+D3R8eYgmrnH9leJ6SiThXnIg2cb3gwaloJjnOUujO
 RDP0uHAPSZV1ONpCFbb4oXLGDmv6oPAlnfem5PMEB+9plDH270pkYhiax
 /B8S9uC0lPhrFEW5IA0cQNVZlR/3Iya7GWcMZMCfMnJs3IDzck0KrW6bk
 0WAQJZ3DKP/mzX9+VnxzA2Xz9Wq32iYdbQtLjefw2iorvMskEj0Y0n50t
 81P+7YiVf9k6b25UZYSouw0qKBz97V9PCsM2HamNXkwKB33C6f4DVmqhI
 GIrKolBizEsDYgNDEE92Gn+4TMyyz00/1cZyLycugIGEmXD4ZC1znxTFG w==;
X-CSE-ConnectionGUID: qxe8c9nrTNudexrir7lLTQ==
X-CSE-MsgGUID: As9cXCJVTkSQjhgMVs/Qtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57662580"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57662580"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:17:23 -0800
X-CSE-ConnectionGUID: //iZaLw+RZqI+SrZr8so1Q==
X-CSE-MsgGUID: T5ZTiWV9SamL9QEPCPDE5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144033423"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 01:17:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 01:17:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 01:17:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 01:17:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yvFFT5edzVScwOHviv5dKmfjwE2jZ8CZRnbe9l7bHix8GkvCKxX8YiGBlfgtshfoY1eZbCR9xxUbm34dTONeTSj4t768rk0mQkmIulpbzMs4xIwg+d9ok++SeO0l3oS+geDxlgjW6k/LLSByzwVxIHbhvpfygbFvVX9T/uBrauFGTaEaO3CK7HpgB5oKhy8LXWs44W0uaYMOMrfYVtxbrvQ52BOaaByVoIfp4hcwxarkTT3W2EkhMQF9p+UU2PKHU+dljADQACYrhVQ0+2LjJf7sAysBLO/bk+BdjP/Fs5ClqCnt1awZ0dLJuWpHY2my8zwZBAU5hdOy8CW7h3df2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Nw80c82j4h6Xkw3CavmaEApah1esSQWht9H2qBD8gk=;
 b=ePWWOsCylkI49Nv1Xwb5zZIxC9Ja3+ZGrKJ2uGHl4LdSyA1qszFUiGKEb2KjdFOdXWmlB+xUUBpWhut9SByA3FNuo0SjOlAL+YHvX1Dmw4vbk12qcZQ8VxHeLsPQjcz12qo9ksL3kTSct5PQ1RFvizcQSpMs1ts7cDvy2klNHZIkYG/bI//O5++O4z/Z2RDeeUm4eH+XhbqNumulvPWB1pxyzYrtE5Sk9k8a5IV0eTKLIz8wAYug+diwNlLSTbXCZ/8C9d3dNXof5rgB3y+oWRHrmwzErKw6NaHe3AhQIWf2jj54UY5g8bOFqxAIkKK3JDVh4wic8ZIoTbMw3ttfRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW3PR11MB4601.namprd11.prod.outlook.com (2603:10b6:303:59::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 09:16:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 09:16:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 10/14] drm/i915/display: convert
 intel_mode_valid_max_plane_size() to intel_display
Thread-Topic: [PATCH 10/14] drm/i915/display: convert
 intel_mode_valid_max_plane_size() to intel_display
Thread-Index: AQHbfWx8nehVcdwcKk6o9FYzL41E4bNE9QQg
Date: Thu, 13 Feb 2025 09:16:38 +0000
Message-ID: <SN7PR11MB67504B476004E3E99865CD4EE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <6e7810c793ecc8ff6a31569830bf162156245668.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <6e7810c793ecc8ff6a31569830bf162156245668.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW3PR11MB4601:EE_
x-ms-office365-filtering-correlation-id: e2613d58-6fc8-45e7-be38-08dd4c0f1efc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aHUxlRqnPQwrO/3nlAeTT3e2XLGttcBp4oSNEezqYZTau9RSPYx9vxLpnKL3?=
 =?us-ascii?Q?PAN4lNQt1LHjW0C9wdjZ+FC07oMvDT0PE1e9DwW4+fc1YC2DNb7i4ruLK5dU?=
 =?us-ascii?Q?he/85X7Iln1aStuFnC8scxNcA9FtlljNur5FO+TN0fXcnQfGqBIHj63ez6ps?=
 =?us-ascii?Q?n4rYu5l8hZA/XTC6TetVSssP2hrTi1Pth4n2zv5flcpOG8hOYwQ85T6nIDS3?=
 =?us-ascii?Q?d1/s1LLdnd0Ga72axgiPSy9HY3aSCC8JV2PjBTLmhuT7joDY2ps6NSVrt3uH?=
 =?us-ascii?Q?WRDAZbo/Y6UzmkZHSzx3qrAZiWxP2LUkonegeLmq5uWWHLA+cZTOo2aRAqz/?=
 =?us-ascii?Q?Svpo4Dq0y9Vi/fXEjxeHFFJhg983Ory8L2yOY6jGpgBXQdzVVUnrPJo/dBHm?=
 =?us-ascii?Q?19CFiPWWi7fVh0SJfGj8UcgbhaAnW8IJNpJIpWDkLCq1oNYxETin/OTraRV3?=
 =?us-ascii?Q?J327ZNjFz8lJO96vvslF1iTy7Zy53CWProvxWveNS/hC7TILICL7XVb2bXto?=
 =?us-ascii?Q?XCql5gsEHWoXZhnQ3FM2f1sdaJCFkTLwgd0pj93tUdS9krP6Eu2YjLJMzlTS?=
 =?us-ascii?Q?dS8r/OEeCSTcLuM+9g7YgLo37TRmPSTSCFyRoGZG703orIBC/bpte0QpMBIU?=
 =?us-ascii?Q?uIL1dynGmMoklnhHr3i72iSNnmwU1/deE2euqopG6z8w6K1Pza/PaUSy0Jpn?=
 =?us-ascii?Q?HN/SdEJ/mF7tF4L0VvrdmyZGasX+186wYU4h46TT4cgkmn2wrfY2bNLnrNHq?=
 =?us-ascii?Q?J12dblY9NfXcE/CgZ1nqlRJdBs8EfTogVhCuK2yiiJt1Sy8ShqnCqxni5nBY?=
 =?us-ascii?Q?JdhD++pXCNJXgSXK90jy8quo5LpxoFY24aK+ld3eqsAJQNC5L+sRbd7k8Uy2?=
 =?us-ascii?Q?YIonqZDvDPGct90dhGpL89Eiph3WCtMJgS+AMs4D5jRnwXUCpH2dNUCQYer3?=
 =?us-ascii?Q?d88Ghl7ZNLRjD8rL2mUhG8+K59qYq3PyEqNsMoB8dV4znNbux+wNffudjGDy?=
 =?us-ascii?Q?kNIXLpfl1wc5ZD9ps5ZNyC5WasUbJRwgKQYurz7jcHx0k2HNHYjeiy9X7exY?=
 =?us-ascii?Q?niBEEMiRXrXsC4FtDcy3qQbx8pvdH7Uqbs4AbG2W4+6JBYxq9+qE1pAA7uhB?=
 =?us-ascii?Q?mrqZ+AubCeCfpZpP9MnarrSZj9d80UJIZuLW+hl+M5Z4imObSSS7W/jnT4Eq?=
 =?us-ascii?Q?UET0KWUye18KEZ3CN6e90P01siar+VUblRokZfPhBUM/woiVN3fbGY+dppEq?=
 =?us-ascii?Q?eifwjqjZy2DBa8Cdi1EBl38rE+uUOY7cv1bNT/EeMFF+thUmzfu3boR5JLoM?=
 =?us-ascii?Q?PezGuIfVFv4uqKijXKwes/P5ux3zYPT/Xvg9CRE+05g3KWTR7iEnge8EWf+C?=
 =?us-ascii?Q?L2RDeque/TKC9QlA8gJK+xGvJHvEwTMeTFh/zngPvqDhQHxB3fhBoQ4ofc9y?=
 =?us-ascii?Q?sVca5ljZw1GmskbkEONThZfxac/p9SZ2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y17qK3MDU9JwMWL+ReeEhrQX/taL6xvCEBf2iy3gF05QwvJheUWCUNpc0BzQ?=
 =?us-ascii?Q?C50IzAP3qyRtKhdLzemnBd3Tl4LezvBDzDXdY0JbnhMlhzIg/gbxh+sJuWly?=
 =?us-ascii?Q?ySHAL+Voxqc3fTTgbd75EVIKxbjtRK3sVhK6EMZozu+LB4PNqR73cq/dV6U3?=
 =?us-ascii?Q?Zz/EMDgHf9VbpJnLgKCUNC0DL62Mqx1rnfhbeqepTFJ2zBiL6G0NTxlyugHm?=
 =?us-ascii?Q?VLVXuiPo/vWHTWG1VtrSqVGkLu86LKCHmvlvAeIjcteLQ77SNYQRBbjif68d?=
 =?us-ascii?Q?p05KFYBrn+r41c/I9qWQxYv1jMHP159fXvJwvEHkcL+uUiUCsulYIrTlonWF?=
 =?us-ascii?Q?W6rT4YzSk4yg1CLVYqVPC81EfnGKRydKInN9XSxWDVgJJbzuFu9u/HwrEGT9?=
 =?us-ascii?Q?/CUYo274HhHAEbLnU7kD6qsxyy9eBCYPdy8cBQve5X7UyT6Yf0g1O/oMUVt8?=
 =?us-ascii?Q?BPhtsc41qmq/mBsTcLfuQxC8AqoPkJYJLCU0EGsJy+cEYIAX5pq0zj4Ek0IX?=
 =?us-ascii?Q?hJhJeiWIDxtk6xaI4ynPw3AyOoiBYQZRyinS3gLIQgIE4JMWFE6K0X1o/cQi?=
 =?us-ascii?Q?OfUQ2bTQQH9qS7XYUtpcR0FD4Kce60ymb9IPzVdZov91szlzicqSz0a7qksA?=
 =?us-ascii?Q?R5gM4rJim1IbZEEevXnKsgeWMARC5TlJNvAEy0s8yAYcSoiaEErzLR6I0uLE?=
 =?us-ascii?Q?jXXStRlI3S4UGXZeLr63xU65JSycLjHywMw5oKK0lo2sKomzWS8gUEglDs6A?=
 =?us-ascii?Q?x6INuDvni+HrSkF/X3w/niAK/DxQoEOC42z1A7l4OJPLv9To2ZVojHxsrUR8?=
 =?us-ascii?Q?2Ghrbe3E6tDxrMI2tmRJivNuuTvIpib3Z0F3zAyAJlf9WcleONYwDgURczGu?=
 =?us-ascii?Q?4TvcG6X9+cOGy+OBDRqS2BRFLQYN5YyAliq8zPQwgUsregf/6xzKR9s0nvAg?=
 =?us-ascii?Q?mPmdY7gpCQJEp1aJc6Rcwcx1tMfrqWNqlCDLyqwxksjCyKDEFxeN0Xaq/R1N?=
 =?us-ascii?Q?9KuhBNPHVqId7eumFf26ZFVQODvVsKkc2494Fckyg4PKxsRVHJMqEEiQPF77?=
 =?us-ascii?Q?7q2FdeebP3Xe0wkMXdC+g2FnOwVpOBpwmDNBiUk/4vUVoP/DRWN+v/3W+wxD?=
 =?us-ascii?Q?NK7PrfpvryFQQ8/4zEobp2+y+myiunbHF9PdHGwcPyijKOFVz7C4rOlSpczd?=
 =?us-ascii?Q?yBSIj5WjAwQ0Bb/6RmC8hv3gJLvTOxzerylwtaciMxPunVFarCy+7D8WClBi?=
 =?us-ascii?Q?dlRzO9obcJTOjeBZr096TSk1wT2FBCzdBPxar14NQNbmNJcd6CzkrZ3DdqO9?=
 =?us-ascii?Q?mTZ9B/UCVb8Z0JLrhX/9PhXTSWeM/iexFkrAdPS08gcxUtoQG5tMo/OzSQjS?=
 =?us-ascii?Q?1YIe8DBvRqIsdfkV8nuP+OYpn/a2+0tLahKL1AYA61Uq+AqvvUAET7yUPlRc?=
 =?us-ascii?Q?9KcBNnh6ghu7zq4FDqTX4NqeTjywjUi5zWV5t5nNt1JBIFWD4WU3qeQQBTNn?=
 =?us-ascii?Q?2insaJYnwcBt7ZMQkaG0p8364Y6ThH/JgsLE40m2d5x6RA09nu92Kzn3lGyQ?=
 =?us-ascii?Q?WK3nS4VxZ8LU3UinW6WgtFelvFdYlLDcBXbVvcBC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2613d58-6fc8-45e7-be38-08dd4c0f1efc
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 09:16:38.4298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HSw+kK2jJTD/4Q8IZFPnZkYCEywvADE38TNTdePslXLGnWXteMqHJjw1mlsnXA5DLgo+4tGYBSHGjw0pt2qoSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4601
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 10/14] drm/i915/display: convert
> intel_mode_valid_max_plane_size() to intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert the intel_mode_valid_max_plane_size() helper to struct intel_disp=
lay,
> allowing further conversions elsewhere.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
> drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 3 +--
>  drivers/gpu/drm/i915/display/intel_dsi.c     | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 +--
>  6 files changed, 12 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 7a25c84bfbac..0450fdf9d4de 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8498,7 +8498,7 @@ enum drm_mode_status
> intel_cpu_transcoder_mode_valid(struct intel_display *displ  }
>=20
>  enum drm_mode_status
> -intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> +intel_mode_valid_max_plane_size(struct intel_display *display,
>  				const struct drm_display_mode *mode,
>  				int num_joined_pipes)
>  {
> @@ -8508,7 +8508,7 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
>  	 * intel_mode_valid() should be
>  	 * sufficient on older platforms.
>  	 */
> -	if (DISPLAY_VER(dev_priv) < 9)
> +	if (DISPLAY_VER(display) < 9)
>  		return MODE_OK;
>=20
>  	/*
> @@ -8516,10 +8516,10 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
>  	 * plane so let's not advertize modes that are
>  	 * too big for that.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 30) {
> +	if (DISPLAY_VER(display) >=3D 30) {
>  		plane_width_max =3D 6144 * num_joined_pipes;
>  		plane_height_max =3D 4800;
> -	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> +	} else if (DISPLAY_VER(display) >=3D 11) {
>  		plane_width_max =3D 5120 * num_joined_pipes;
>  		plane_height_max =3D 4320;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 08e28ea179d2..f702425df305 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -424,7 +424,7 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
>  u32 intel_plane_fb_max_stride(struct drm_device *drm,
>  			      u32 pixel_format, u64 modifier);  enum
> drm_mode_status -intel_mode_valid_max_plane_size(struct drm_i915_private
> *dev_priv,
> +intel_mode_valid_max_plane_size(struct intel_display *display,
>  				const struct drm_display_mode *mode,
>  				int num_joined_pipes);
>  enum drm_mode_status
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 61827b0fe95e..29970baaf03e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1396,7 +1396,6 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	struct intel_display *display =3D to_intel_display(_connector->dev);
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock =3D mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock; @@ -1496,7
> +1495,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> -	return intel_mode_valid_max_plane_size(dev_priv, mode,
> num_joined_pipes);
> +	return intel_mode_valid_max_plane_size(display, mode,
> +num_joined_pipes);
>  }
>=20
>  bool intel_dp_source_supports_tps3(struct intel_display *display) diff -=
-git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 38804254980b..73a0a0f9b3d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1462,7 +1462,6 @@ mst_connector_mode_valid_ctx(struct
> drm_connector *_connector,  {
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
>  	struct intel_display *display =3D to_intel_display(connector);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_dp *intel_dp =3D connector->mst_port;
>  	struct drm_dp_mst_topology_mgr *mgr =3D &intel_dp->mst_mgr;
>  	struct drm_dp_mst_port *port =3D connector->port; @@ -1565,7
> +1564,7 @@ mst_connector_mode_valid_ctx(struct drm_connector
> *_connector,
>  		return 0;
>  	}
>=20
> -	*status =3D intel_mode_valid_max_plane_size(i915, mode,
> num_joined_pipes);
> +	*status =3D intel_mode_valid_max_plane_size(display, mode,
> +num_joined_pipes);
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
> b/drivers/gpu/drm/i915/display/intel_dsi.c
> index c93a3cf75c52..403151175a87 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -60,14 +60,14 @@ int intel_dsi_get_modes(struct drm_connector
> *connector)  enum drm_mode_status intel_dsi_mode_valid(struct
> drm_connector *connector,
>  					  const struct drm_display_mode
> *mode)  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct intel_connector *intel_connector =3D
> to_intel_connector(connector);
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_fixed_mode(intel_connector, mode);
> -	int max_dotclk =3D to_i915(connector->dev)-
> >display.cdclk.max_dotclk_freq;
> +	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>=20
> -	drm_dbg_kms(&dev_priv->drm, "\n");
> +	drm_dbg_kms(display->drm, "\n");
>=20
>  	status =3D intel_panel_mode_valid(intel_connector, mode);
>  	if (status !=3D MODE_OK)
> @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct
> drm_connector *connector,
>  	if (fixed_mode->clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>=20
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, 1);
> +	return intel_mode_valid_max_plane_size(display, mode, 1);
>  }
>=20
>  struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi, =
diff --git
> a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 60572deeffb3..ed017d9de920 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2015,7 +2015,6 @@ intel_hdmi_mode_valid(struct drm_connector
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct intel_hdmi *hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum drm_mode_status status;
>  	int clock =3D mode->clock;
>  	int max_dotclk =3D to_i915(connector->dev)-
> >display.cdclk.max_dotclk_freq;
> @@ -2068,7 +2067,7 @@ intel_hdmi_mode_valid(struct drm_connector
> *connector,
>  			return status;
>  	}
>=20
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, 1);
> +	return intel_mode_valid_max_plane_size(display, mode, 1);
>  }
>=20
>  bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> --
> 2.39.5

