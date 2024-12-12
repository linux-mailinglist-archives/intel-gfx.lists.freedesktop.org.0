Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A8C9EE014
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 08:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE0710E00B;
	Thu, 12 Dec 2024 07:15:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxrRzHd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED7610E00B;
 Thu, 12 Dec 2024 07:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733987710; x=1765523710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cMd0NgnovYlPL117hYbH60AGqKCICa+/N2hMi7ojbck=;
 b=gxrRzHd+EVHBVnNiZOdN/xgG0Q6kFuXCmYtz0gPFlAB+M45/2gKJmnlw
 YkqtjUPWNdI5sgqCXdW25q1CnpElD3ADUYFcOtIPw8bzMIU9WaSLBjZqh
 1XU63eFsQ0xb8FDrg3fFBW/pgAAqQajYUX61/pPeoFrbVhqeWd8ZGp30i
 E5+k/4lpwIUuiZcKOFf86nO8OySIieGrQJmKoGDD5Bd1ghAPG6yPt0dQc
 wOKNKgRarPt+YVBLK1KXt/3BuEI9bZ+1CLS+DcjtxyGva4FW5VuRUikVR
 zGt6u5x4uD/GLfgQO1t9feTzabq4TC6l964PWoLb387p6jhD0h4SKk462 w==;
X-CSE-ConnectionGUID: +1FYFzpLQEaeD0DFqsSXVA==
X-CSE-MsgGUID: y2R+uvlKScqhL+F8rEFQDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34527817"
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="34527817"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 23:15:09 -0800
X-CSE-ConnectionGUID: gRhKwGPcRnK9OeNr22DhRQ==
X-CSE-MsgGUID: Z+sxsyqQRs22CjzcazaVNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96595920"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 23:15:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 11 Dec 2024 23:15:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 11 Dec 2024 23:15:07 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 23:15:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r0/KudLqbSVQgdQKdmzK3B4GsNimhv6rnJyOAxUazKk8YizQzEmsPqDt8F77CXAkLG+xFbmrHToPQjnCYhcTV35huyndusEs59kQFj9JS5idnAyDoNkEuKax5YNuvSD4tuI9dgtURtPVGDULBmBk7ktSek53iEfT9x3TMSMfilz/XiCmAIAF+zWMqeKe9GXjGZ5yokaCu5/nrqzNPTINX+NlBT85f59C2tOjMq+yt/lYieReBwD3+2p7r3fYedSOuNVc+LbUaDaXuHDCIXIfyu+b8SigyS72OiSuY1U2wg3WQYQKysQVnrVnJ0tDYRDJw7Dcx2rUY+lyHBbn6tMJBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LFmnz11hs0p0jtDRv7i/GqpQ+OYSFbdRkLy861ExYIk=;
 b=EsD3pY9hjVAPwEOMUTEVJP3EFmi/j/5DdqovTdOLYB3Hg6GxKVIgQS/1zrsyTFjpL+pYF4iPNlBmz8Ipk945YLDtesxC3BgSVgXvGN3Q0TrvKXeaPyATWQgIoxYh9bYUnVfRXFTfWKon7IAz1kZ9NCf1pOD8r4sErbniMlapUa3Y/oyNlMe/AmeOcQ6OC3vB/X9ZID7bqg7yYVskuf/kk/TzBLh/q3dwf7TN7M3zyKtr73vHJeiTUNGG24aMp3j6yRQlV1oLMPHiIxAvbvlkS2gyogYDG1TrDLoNVFtjNVMtmN0hb7HddH3bZZsAwEZTeIQuZ7QAoxe/mUayPIF6+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7188.namprd11.prod.outlook.com (2603:10b6:208:440::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Thu, 12 Dec
 2024 07:14:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 07:14:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbNB0gQNFqNeO1O0ms7aeaRePrOrLiYODA
Date: Thu, 12 Dec 2024 07:14:21 +0000
Message-ID: <SN7PR11MB6750B12553B61CBA5028331DE33F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241111092608.129410-1-arun.r.murthy@intel.com>
In-Reply-To: <20241111092608.129410-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7188:EE_
x-ms-office365-filtering-correlation-id: 52e17c29-48ae-46ab-fe96-08dd1a7c9a0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fTBhbT31e498uI+3cvhMKOS8AJPoE5m3DgArBRaIkDPubpSbwZImxRFqdP3d?=
 =?us-ascii?Q?LTh1BOtx2iTfqw8GCFL+tRxGdhPcd7LQlPRLAYtVU47Uddq3bN2tJLvkuQsP?=
 =?us-ascii?Q?7htsMTIYVjAXosMxyXcp9by8GKU/ovZTZAnOt83GK3grStp/OWCk2UcBvlMA?=
 =?us-ascii?Q?uMPb0eTKuvqkuPn3QoPGvsWtvj23a/W7AutyA3hvwEui2lPR9HDV+XVDZ6TT?=
 =?us-ascii?Q?UGFnjviG7VpBfciR9KMxx68sHOOl2GexNAFXmOBMp/TbJ2G9KDlT2qSuY3hd?=
 =?us-ascii?Q?suLD05+1bVL82k1r/3Rhc4Wxj/1iaXmbpQ3aXgH0fsS9WafsCKGCx/tGsQTw?=
 =?us-ascii?Q?RDTXwzi8vkr4R3kQ4ZnyPGYZrYPsD3goBopCREfX2xGVgRGpSwnuA6nh0rW7?=
 =?us-ascii?Q?UsApQ7YeQhzD3NYzOaPsO5QVJ8ENQgRjMDdq2xGgvSCdodCVVZ7SJOw58f5x?=
 =?us-ascii?Q?LdM8zkyPCX4/Oq4pxEbsilQGTzrH75OLKehBgsDGbsmoR3ClqIKo0derfAav?=
 =?us-ascii?Q?1TFjgUzVQhHD7NRBmWaW7NDpli7zOf8LYiS5qbLn3WjQH+mRGQbJfyL9P3c7?=
 =?us-ascii?Q?H/I6Z33zwTdOZmqUZEUV+qjN2YGLGIbhUKmmD2kcAerYBhVc/fltEf89LbIs?=
 =?us-ascii?Q?r9BkBkhPerUoqWABR6QQmptPN8i/G7LihXcktdTLplXU3+FuqsGMPnFcXfyz?=
 =?us-ascii?Q?rsAk0OT8QoUsl6fPDU5P3AWdWv1KkvL6yL/cN45Ldxt5LRpCteA08+270zCY?=
 =?us-ascii?Q?1TcdLyXHHlL7YtQGuEoX6S/XETAFZTthUqUwx32ZFS3PR9pxsmXLx2j/xwM4?=
 =?us-ascii?Q?zgepBi5Civq506lb3rQfVkoqunImVta9Nyx/af1kg/RZNZmxPSVyOi0qys0l?=
 =?us-ascii?Q?Fko61IVqdlpHLyV4e1ZjsMalBcy57COkB92+VG726flmKOcoWldN0jTaU+6M?=
 =?us-ascii?Q?gc4RauMnQhg8ktcj94il+tfvlWrtMm52M3mCH1P5qovhY/Bov+2Dsb8gYfY+?=
 =?us-ascii?Q?sxtSVjVUN1C5sMu+whE169HquNBxd7WSmBGM80vQgiN5WNwk4Y4GV2+RYjEh?=
 =?us-ascii?Q?N7PYZhowsaGExQgHEH2ii/NqHzUAEZhvZXE3HMK3iP85cuYC8KZGEGrAVGhQ?=
 =?us-ascii?Q?of267c1tPki/sVwG1mtJSA2wfSb4vXH4csDiV7cDdDM9qPWsNohc6SQKkgER?=
 =?us-ascii?Q?nq0UvcD4q/W5hxy35mOuQofBYoTngDHSmZBvRAZoWw8eG2N0Ela1UrPOROu9?=
 =?us-ascii?Q?MaQwuRpt6lqzbFx8XBNszYgb8V5ogMkDpqf8N7c3uSQlxgYWLyACsGLne/O9?=
 =?us-ascii?Q?OF4KIOI6RrC1+huMlhaFrnksIoYqIkksfOICHQ35FnmFKq8TgMbqkRaFmawh?=
 =?us-ascii?Q?uyxtC+j+qqo5wHeBu4+Bxh5bvh5sOaIBQ/tkTeMyqYprH+DCGg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3cAgm/J8xjebCmE4ZDN00KWXgv6KSKud6LOUuxXVjexe3dKgHBM2o99j+RO7?=
 =?us-ascii?Q?0y78AXmdUorN/f9A6i2HYEvBVaW+nWkXIMl1J+yZ7j2c3phU3vUp6zHpE1yl?=
 =?us-ascii?Q?gy1Py5P253H95VnKsmSUSx/zNpH8XgFD990kLUN+j/JH67wt/dC3ZP4MSbS2?=
 =?us-ascii?Q?bYSf+TVXarkyjaBcOBf7PnYoZPRwoc4LoKekwPKB7NZmQkMPt56ED9Nckaad?=
 =?us-ascii?Q?a7K6gp0dyzZ4iLXbYcK+z3hi8w3+fhvhuf5IX2WUfHmjMjOoIpvh1A03MKua?=
 =?us-ascii?Q?mQai+WCiTYegN3ekUXLgoUtzw2J9VXpFbV01miPv9FLCZEGiR4IuI5cQTq5B?=
 =?us-ascii?Q?31vt7vyGNluyHItgQeb4D2KgaDPgR2/UobZQhZMvzPFpRexdFGFwSDGvpo80?=
 =?us-ascii?Q?Q8DDca93neQud6q+yUUMfgD25MZ3lU2+1F16jA4LbQVAAxi2O7vxl1WbuJRd?=
 =?us-ascii?Q?zTh527YptUuRADBZP0WK3XKnQ5OsSqoGtI/KP+a2dXcWwYv7ADERQtxEbhTu?=
 =?us-ascii?Q?HBirj1+BKej8TyhrRmKKfR89F6dGy1d1f0yVEyBYZS1RqYKWyi0mpziffQGF?=
 =?us-ascii?Q?N/ZpQRG+1HXwIJAMSUSfoeGhI04shc2rOiKPYD2/dAEJBpjUeN9kNsCld6s2?=
 =?us-ascii?Q?pD419m6udGkVWTQtS5SeOHe8+3DoZ6Sq07EQkCH4Afzd8IZOWOl9RxX48eWO?=
 =?us-ascii?Q?UXTAqwJGdqaxS3DIt2BxAuSef64wQb9RlPR9SkkxyOemvj1jYgrnwbYfq2nK?=
 =?us-ascii?Q?iiKMr9N5XvMs1/7WOzkjwdIYtpWQmJkzFJx8YsyLDlLHnPgtpkB7PJf3pgrM?=
 =?us-ascii?Q?ZPsP8VPRF9NRejQfK/B+y802cr9f2p1HIN/y+zyJCqHXKzmExL1JNSdldHvI?=
 =?us-ascii?Q?FspFhU3ZImiQndAY1L9hQHHHpXhF7c7a7RUQGLxd7YKykOf83JHVGMu9qX9J?=
 =?us-ascii?Q?jWQyErZIKQUP/ZaMOohO3/3WHk5g3K0ACc58AKoAjK9kijSZ7eJS+zSBht4L?=
 =?us-ascii?Q?E3wqCN4AkBiGxHTIcrwHPS/Ixvzt8Md1ie7JDl6b02h747sC/ui91NGzk1TF?=
 =?us-ascii?Q?MYPKmZXtI1+fN+RxDImbGTLvq/ATD+xGHVzTgzDNEJqQADAPK7z/DNV5ieOX?=
 =?us-ascii?Q?X/dMivrldQKeS2sbI19AoMFv05lBsE5tGSoUh/K6GAiCe2qyOIgpGrhInVWu?=
 =?us-ascii?Q?joCooN4EE623KVh2jyrDMjU2Bcl1rAH8LD68DIkgKO7e2OBYOYxbOyWuZCPa?=
 =?us-ascii?Q?GIaMuSYQSPp/AldX6pw21aH3trZNkYRkd7VluQLm369O7wz30uYkwBfRte1q?=
 =?us-ascii?Q?DZUgpRBGyxKmHuVy94t9dZBcsMUxHbknJvt1eGMQy++i7Acb5fSeKap24gUr?=
 =?us-ascii?Q?LjJ9sqFTe2yrf3c7+8SYLLg/VIdiuiLUQpu4feYTxTnFU/aP7Nj1G5fmQWMF?=
 =?us-ascii?Q?jnHOnF9IcnWf9A1T3j7q3n+POveC0c7GIk2TMMt3om0qRnuYFum+bCzg+U+c?=
 =?us-ascii?Q?tGtlYDE7MjufmZjnjh84rKR6MyNsamxrRw+znMUNYY+ZZ9CZfonOEggTORSG?=
 =?us-ascii?Q?gZbSTgf+xxhvD7R9ImexJGt6LV9oaNTgTXLdT2A7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52e17c29-48ae-46ab-fe96-08dd1a7c9a0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2024 07:14:21.9173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GHDL2vJRzX/uxHLUWCydNf8oRAxjh7cHAaHsgTc9hSyxF5Ki2Z1wMdFbzcPcOfcD3BHkTS2dfZVp59yfex3siA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7188
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R
> Murthy
> Sent: Monday, November 11, 2024 2:56 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
>=20
> Mandate a minimum Hblank symbol cycle count between BS and BE in
> 8b/10b MST and 12b/132b mode.

Missed the typo here *128

> Spec: DP2.1a
>=20
> v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
>     (Jani)
>     Limit hblank to 511 and accomodate BS/BE in calculated value
>     (Srikanth)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 35 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
>  4 files changed, 41 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 705ec5ad385c..f8c1d1dd66a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -258,6 +258,7 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
>  			   str_enabled_disabled(pipe_config-
> >has_sel_update),
>  			   str_enabled_disabled(pipe_config-
> >has_panel_replay),
>  			   str_enabled_disabled(pipe_config-
> >enable_psr2_sel_fetch));
> +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config-
> >min_hblank);
>  	}

Covers the dump but still missing the checker=20
Also maybe a different patch for this work

>=20
>  	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n", diff --
> git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d3a1aa7c919f..d2716addf88e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1075,6 +1075,7 @@ struct intel_crtc_state {
>=20
>  	int max_link_bpp_x16;	/* in 1/16 bpp units */
>  	int pipe_bpp;		/* in 1 bpp units */
> +	int min_hblank;		/* min HBlank for DP2.1 */

Is it only for DP2.1 because we end up filling in both cases if uhbr or not=
 just with different values

>  	struct intel_link_m_n dp_m_n;
>=20
>  	/* m2_n2 for eDP downclock */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 13449c85162d..1e7482efe95c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -161,6 +161,35 @@ static int intel_dp_mst_dsc_get_slice_count(const
> struct intel_connector *connec
>  					    num_joined_pipes);
>  }
>=20
> +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state
> *crtc_state,
> +					    struct intel_connector *connector,
> +					    int bpp_x16)
> +{
> +	struct intel_encoder *encoder =3D connector->encoder;
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	const struct drm_display_mode *adjusted_mode =3D
> +					&crtc_state->hw.adjusted_mode;
> +	int symbol_size =3D intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> +	int hblank;
> +
> +	if (DISPLAY_VER(display) < 20)
> +		return;
> +
> +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b
> MST & 128b/132b */
> +	hblank =3D DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal -
> +adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
> +
> +	/* bit 8:0 minimum hblank symbol cylce count, i.e maximul value
=20
Typo : Maximum

> would be 511 */
> +	hblank =3D min(511, hblank);
> +
> +	/* Software needs to adjust the BS/BE framing control from the
> valculated value */

Typo: Calculated

> +	hblank =3D hblank - 2;
> +
> +	if (intel_dp_is_uhbr(crtc_state))
> +		crtc_state->min_hblank =3D max(hblank, 5);
> +	else
> +		crtc_state->min_hblank =3D max(hblank, 3); }
> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> *encoder,
>  						struct intel_crtc_state
> *crtc_state,
>  						int max_bpp,
> @@ -238,6 +267,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struc=
t
> intel_encoder *encoder,
>  		remote_bw_overhead =3D
> intel_dp_mst_bw_overhead(crtc_state, connector,
>  							      true,
> dsc_slice_count, link_bpp_x16);
>=20
> +		intel_dp_mst_compute_min_hblank(crtc_state, connector,
> link_bpp_x16);
> +
>  		intel_dp_mst_compute_m_n(crtc_state, connector,
>  					 local_bw_overhead,
>  					 link_bpp_x16,
> @@ -1295,6 +1326,10 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz &
> 0xffffff));
>  	}
>=20
> +	if (DISPLAY_VER(display) >=3D 20)
> +		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
> +			       pipe_config->min_hblank);
> +
>  	enable_bs_jitter_was(pipe_config);
>=20
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> c160e087972a..0bd123276b9e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3485,6 +3485,10 @@
>  #define _TRANS_DP2_VFREQLOW_D			0x630a8
>  #define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans,
> _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
>=20
> +#define _DP_MIN_HBLANK_CTL_A			0x600ac
> +#define _DP_MIN_HBLANK_CTL_B			0x610ac
> +#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans,
> _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)
> +
>  /* SNB eDP training params */
>  /* SNB A-stepping */
>  #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
> --
> 2.25.1

