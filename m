Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EqWJxMshGla0QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 06:35:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF49DEEC2C
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 06:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C579510E7BC;
	Thu,  5 Feb 2026 05:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cawj1rYZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115A310E7BC;
 Thu,  5 Feb 2026 05:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770269712; x=1801805712;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YumUYE5Np+KTqg4UdWPS31gDD/yKrwDahtGYXikldvE=;
 b=Cawj1rYZNyotZ0M53wh1OqPsc8M7j0l1El+N8UWMU3twCZjSStH54zgF
 IPzFQ22x9DClkKlunGI/bnp4gc+xkiwIaG88I23c5jd0833OpK5sWP/an
 TYdmZ3IYmS/YK30A15QrHB8kXNq5LUPRI5Pr1L9n909ZAtkNIxVUQCiem
 HIPVXO4wGzfkP28dc/P0AJHGcaP9hvpH+7iu35TTXawErVJ4+/6MupEBq
 bMzA2l10rqXWrZxw9afIKMrEwDCHqvVm6WO32qyEBzrOP04/D6Wm1h9jH
 Ooc1YP5cjjlZczk7cAKYweLGRVHlwaUyvcyliDkxooQQln74RweyqO8zv Q==;
X-CSE-ConnectionGUID: LWhPIHVZQla+/XhGx0i9RQ==
X-CSE-MsgGUID: wthNmCyIQ9i6PXUY7ouJMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="75315647"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="75315647"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 21:35:12 -0800
X-CSE-ConnectionGUID: HPBzDV5NSmmwl0FYbsmv7g==
X-CSE-MsgGUID: fATpuryKRcWpiVEkycvh5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210351140"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 21:35:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 21:35:11 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 21:35:11 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 21:35:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a72ln049JL3qu1L7f6Jf2rsvgBOoTn0/9DdmIm5I4aODIQl60rnRPZ+UKywEgFpBcwpqjbKhE8J1H6Y5J2rCOydtDHfpvxLlFJMHSGEaunuZxi3msBfCpBa6/WLf4EwXRhgeWFm0cAyPRHl7F4cLkFWdksMoLMpt4NLEj1t7yK0QEvNxLnR82WonFutkmIJORXIs3CC6Akt87LRL1qRpptWXtTlIlGk9iYxZ3j/e+HZosoLinZ4Cu8YUypnu49xEc3ZixywrHLAhG2pGcmfWlbRsqqiy1W1ZeQtiuZ8lKqIdSt10SjR8/ZjQbDC+weflwAyh3qvAqTynQJ5+qfh7AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bSM3yGfOD/Y0aaBX4+v+zDvYLTHH7O88YTreMuW8i/s=;
 b=oDMHAtVvs9TE5gz/7mAkTgVoBBMPnvyxaGmO3OOTIPp+enKRN5rFl8PHrSGnFobxSBkgkVoAJtR50UUl/1seFOheIPLjFxJIl6JXWM6j6fyr5ZMVLiyD6p8Gs5gyjgtl3fQ2lJSsz65vT2bsE9SvtfkAxVL3zhJZ3Nf+AN14tZYhv24w26H3E+ifLAci5x6aubrtZu/b7Ve4kWPnCn6DZ4Opr+gHJK+aodH3D9xOaGCiKJLs/A1BCfSYl0/j57eHqvFHIIVaJZ13ZQdKjavN2l7cUbrlGtmWauJigsvRpi+4n/U4pzyNUDUcJ/JLgZMyQ5Pk8Jt3Dp0XIOHDnWjlFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB6778.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 05:35:04 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 05:35:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
Thread-Topic: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
Thread-Index: AQHclRdZsQBJ9rBQYkmlGfpDAl0mmrVzlb6w
Date: Thu, 5 Feb 2026 05:35:04 +0000
Message-ID: <DM3PPF208195D8D515BE84311847AC9B9D3E399A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-4-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB6778:EE_
x-ms-office365-filtering-correlation-id: b336bedc-5894-4a5e-b43a-08de647850ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?/7SdUuHtluMlWZ8e9foWK9igBrzNjs+TAwG+1WBB44Q1GRYHywk4bdVadb4A?=
 =?us-ascii?Q?u4RqW2eZl2nR/E7HgK3Evf+u6ABQhF+8pN2T/v4hAxP3FoDGB1YXWO5r8v0B?=
 =?us-ascii?Q?bAzOzD6vyBgPlzl/0bhUQlf0AHr/00nKiQq6FPQw5dxbfOBnBSvJpjN/DjwK?=
 =?us-ascii?Q?TibxTXXjnIt6LC34x0prsdw8pyDCqhGLIuoPeRA43Vcn8mzHVMoqylsAPwJH?=
 =?us-ascii?Q?kTaxZxloxW1FyMlDwzWn/YVlZNBiAj/lGwkUrj+E+us2Iz85Z3T1vyqdLujm?=
 =?us-ascii?Q?tA7ZRK/G6qAcYF05FcKw0lt0OsHNh34knZQ1Zni3vmRfUgC0LdQJAIZnF8ks?=
 =?us-ascii?Q?sInVgMYz0IP1LUFKZ6aqjecLX1P8GmsE38A8sDW7tADBOpWUPDtyVA4zz/Fj?=
 =?us-ascii?Q?/aJD1Mttpf9hlqfcCdnrhT+fEC5y6a6PKkgz24NtTrPLtYT+Fz0BI2Wh27XG?=
 =?us-ascii?Q?v8UuBwwLJh5xqJZpMSPH8G+ip9k78Af3TzN+slQ1MoBjyR4KyBuAEKHaTet2?=
 =?us-ascii?Q?sSt5R3iHtVrxzmT5d8VmqOkfg9my8x1PSAyIOvUN25NS2WrqWQKTaW3bwUAI?=
 =?us-ascii?Q?cr8XbjpHrAtu4fQPTWZTdEfAgZXo5yRfZx602zvAXLIO6VBm2kGE06f9X9sg?=
 =?us-ascii?Q?G2CakcQqIoNpNSajJt8OuXohIFibxLQDEC0IeZZHivJLyaVklPm6/k7+xdP4?=
 =?us-ascii?Q?Y0PrZ330TmTYBD4yQp17O2HeAV2NhzKOoozx0/2/lk2xibbnxyNw+AnSZOK8?=
 =?us-ascii?Q?6HRh4ww7EZFg/+OxqcVy1LKje6Ql6aYrsG9XBYP7UtrLE6jWDDtAhUZ8zDQq?=
 =?us-ascii?Q?7ZA/kt9mW99pAx2ABjwAjzRyY64gOn4kWnUtHoHcs5eGkxy5nPGES2dprumT?=
 =?us-ascii?Q?bLYF1qaw83KZzfj389JPS0P94Hj8RHv+xwIbibykdWkT61ItTcw+wg52wQR4?=
 =?us-ascii?Q?sFDKUvVptcYKg0IXAm2q/MDxjd+SJkJr3rsA31wIr7S3/jMdvusOEKdQLmQj?=
 =?us-ascii?Q?uACXZcim0w83Udyl1FOPz9bOqDh2REft1UcnTq+BdiCONm8KS7r/FcR2kpVH?=
 =?us-ascii?Q?8cKMpPJULeIGPu6I8qzS8X8c2geeluEdAMzlBRdGo1QVCQLMwtEfmUYDUmN4?=
 =?us-ascii?Q?tgNCZIhbSpW1ffCwEZoRc5/muvjaMlQQlcnT2gznzZe/kQIEUG0RUYyNTCd2?=
 =?us-ascii?Q?YzZ+LvS9BcI/4swGfnWhoDq+2T4dSnbWWeoqlBTwmq6mTzisjuWcxPspxSEW?=
 =?us-ascii?Q?Xly2lfSoM5UEMKv+6JKR3NUomisO0EdOrJapsiMYMDby/veBNY3tIN35SLxi?=
 =?us-ascii?Q?AmDeS1L6yXmSuP1jnhH2iMex0RjCXc9hi+E5NkAbC07/BQftXvVHy2WA0XLz?=
 =?us-ascii?Q?gfYBktFN8PXWhWPfnV/pU1IgNDX2BH3XrXdeF1TNnplj4PjxWtJtC3ZtH/ei?=
 =?us-ascii?Q?rhpxgletCeaIFUC/QiLbjXqvQs7k9+yVxnkgfa7VkTY+ZmYGwUgH2kolXeDX?=
 =?us-ascii?Q?QrCg6yRxCYZygeQcallxwFROIDPNPx2wIUwWEzWwva/kb1AHuG5C5cdaOOAd?=
 =?us-ascii?Q?O7HQNQg6tv2KjMySpK+XXWkYJLnxJPBzRHWtHaIAnp1kreE7uZBIsGAJHnTh?=
 =?us-ascii?Q?p8vLq0sKU9o8R0lrAEyf6BU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QolFmMCP6qwwdYkENDcMy9mlEHE9B2ix4hcz7+9hgRCP8/T7Kv3wyLOrtGq9?=
 =?us-ascii?Q?yohQcSmIiQ9PGx6oRlOsjkeb3cTQJs5JI5Wj02U/hhujWmXrReXl4NpDPSNE?=
 =?us-ascii?Q?R9D9ArK1HV7cMKIhntXb8cO5miBQzgam2zqC/654HM0oAkdRrVxYuwwqj6o8?=
 =?us-ascii?Q?6ilwXdyBADJb3qOQAB/Dx/TP1uhSCwbtsbfSTa80uEfblxderjnWW/Gohapu?=
 =?us-ascii?Q?4jneFkfIGSnQa9pHxFIR4yKlRT8PkTU6MlbzyFQkE7RVTCuEmU5q3VwhKJT6?=
 =?us-ascii?Q?NbJvUxbAAoaCAJFD21G1mWPdsC8tkz84VPP8DsIIr2vapTlwcLIKk3Xd3UaV?=
 =?us-ascii?Q?w+SfHpSPk9KPKE2CxTiodSM+BwEhcMfjP5/J/M6xclg15StCjEMpwXYyKisj?=
 =?us-ascii?Q?6j6OBxcqUMdTEJtPJFt9gKtk0Ctbhx0yCnRPgBGU6Df6SmZPjRO1U268Qdhf?=
 =?us-ascii?Q?64Ov3RNw7zAgm6eGz0ZH3v+64Wev8zq3CnOt7xZ8gnpzA1ePEBnoeS7fd2Nx?=
 =?us-ascii?Q?yFenxUSg+ojj0AJuMBR7diwMWMwI4fHx3MtjNNW8jDFaJHTlpYsn+VGP4sUA?=
 =?us-ascii?Q?vWH+qKALbrcHXLGbcQtbuY2qt8cGCYnrl3IWy30AhYciK9W3jFThttrNMShj?=
 =?us-ascii?Q?ccBZUXULkdI7a8ALF0nEklsspjHa4EQOPTPHWq6rp8tOFwBj2z2+NnChY811?=
 =?us-ascii?Q?cq8xyi23dT5COIn2NojHAJQJoEabxM1FWdxBm+mm4mYhI5R8+VlcwVMjS6go?=
 =?us-ascii?Q?EtFyRjhPwckO7y0MQGa0ZGhBXBDwhWClLgCVdTnDm6HZhQQITYczoywH+vd4?=
 =?us-ascii?Q?BUuWedT3YBxwks1MI6uOh1v4+1oNpVUgknL0S8G+8G208bCfBVPSCJASQgfC?=
 =?us-ascii?Q?fUlhDuqF1v77Iq5x9NZNYlrYLfSPD5ZkjicbuDWgLPe/4EZaxqxXRyHDsQD5?=
 =?us-ascii?Q?djBHgOF4XUL0FKfxsZP8nZzTHLkd70t+r6qSjeVG8kR4ggM5PLlE16lLpJ2d?=
 =?us-ascii?Q?Y++qQ9TxgU2vxzMx+g6h230f+8wxrSTmda0/C8ejmzzxEF/Z2Vj98mHeCBlb?=
 =?us-ascii?Q?ODdhhfGgIm4VfGSml2WOFVyURSlKBW0CmP6rVJtGfo6vehU9jhjGFJ2JkjJx?=
 =?us-ascii?Q?O85oHOtseBr75yqs/mw4YP5JTmvpi3WnwZlbWzdlWhJaIiiCbxeIZH34knV8?=
 =?us-ascii?Q?O2Xt4kwyDjkqrxRp+5wD6QtWf5kIB1sJdjVRaC+TLBwb9mm0RMHJrZDX7vRH?=
 =?us-ascii?Q?SbfziF49dELYzcatn8tguKjOEV6yg8iwoJzA4GM3lGUEefd+X806nUo+nQVe?=
 =?us-ascii?Q?K0rZBwaLF0/jxFrwYF+EOKUnpzPOgMTlWR8zMwf6olemlPlBrMJyw1apXFVy?=
 =?us-ascii?Q?FJZ+Q6lwF+IcLx4WYwg9XQAaoQS8LT5XKajqSNgPlx1KgOGgMOq7/f5ALRfa?=
 =?us-ascii?Q?jsWYlPJptz2hdlQOoQTU5dcyjIpWMJ0uFcMo7jYzYA2GIyS7OjMNaEBgTnS9?=
 =?us-ascii?Q?JFWhnUbYjHxkLp1e0HJmBfiKlYLiERyOEYwUAKfCfT/xjKJE7COWol0SJMKY?=
 =?us-ascii?Q?w5Zlel72F6gWCBAxwjMlfc2Jw4OCpSFSoKOBfm+jxEFKPYp0E+wMMr8xuGoU?=
 =?us-ascii?Q?eMDkAeWBP/QSDvgQYgVg+amO1TKw3PW/TmhZIOqxibubG+s1qOTveGLQPzZr?=
 =?us-ascii?Q?FCvaueYX3G//ccUcx6hA/+dgwy7c+JJxoD92HQ6A6WWU3DzCeqJda3fR7Xdl?=
 =?us-ascii?Q?j50W24YHOg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b336bedc-5894-4a5e-b43a-08de647850ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 05:35:04.6117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LS68gqk+BCJNnKp3wz0D9JL9q+frq7UeLlo/gIkoovI1jgYumZZNm5qsKRjFC/+GH5l+ZdGoc99s6UNUGoImSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6778
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EF49DEEC2C
X-Rspamd-Action: no action

> Subject: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
>=20

* CMTG

> Timing registers are separate for CMTG, read transcoder register and prog=
ram
> cmtg transcoder with those values.

*CMTG

>=20
> v2:
> - Use sw state instead of reading directly from hardware. [Jani]
> - Move set_timing later after encoder enable. [Dibin]

Why also I don't see this comment from Dibin anywhere
Bspec Links
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 24 +++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  7 +++
>  drivers/gpu/drm/i915/display/intel_display.c  | 51 ++++++++++++-------
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  5 files changed, 67 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index f5364f5a848f..4220eeece07f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -207,3 +207,27 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
>  	if (clk_sel_set)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> +
> +static void intel_cmtg_set_timings(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder), crtc-
> >cmtg.htotal);
> +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder), crtc-
> >cmtg.hblank);
> +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder), crtc-
> >cmtg.hsync);
> +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder), crtc-
> >cmtg.vtotal);
> +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder), crtc-
> >cmtg.vblank);
> +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> +crtc->cmtg.vsync); }
> +
> +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state) {
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	if (cpu_transcoder !=3D TRANSCODER_A && cpu_transcoder !=3D
> TRANSCODER_B)
> +		return;
> +
> +	intel_cmtg_set_timings(crtc_state);

I don't like the idea of this being called here this belongs at intel_set_t=
ranscoder_timings with others
Unless Bspec says otherwise.

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index bef2426b2787..b2bb60d160fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -9,6 +9,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state=
);
> void intel_cmtg_sanitize(struct intel_display *display);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 8a767b659a23..eb24827d22f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -20,4 +20,11 @@
>  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
>  #define  CMTG_ENABLE			REG_BIT(31)
>=20
> +#define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) *
> 0x100)
> +#define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) *
> 0x100)
> +#define TRANS_HSYNC_CMTG(id)		_MMIO(0x6F008 + (id) *
> 0x100)
> +#define TRANS_VTOTAL_CMTG(id)		_MMIO(0x6F00C + (id) *
> 0x100)
> +#define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) *
> 0x100)
> +#define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) *
> 0x100)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 564d11925af3..976af9eb3c3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -62,6 +62,7 @@
>  #include "intel_casf.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -1722,6 +1723,9 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
>  			intel_crtc_wait_for_next_vblank(wa_crtc);
>  		}
>  	}
> +
> +	if (crtc->cmtg.enable)
> +		intel_cmtg_enable(new_crtc_state);

I would rather have you have a separate function which you be the last patc=
h that finally calls intel_cmtg_enable so that you don't enable
a half baked feature in between the patch series. Complete all the parts of=
 your code and join them at last with the intel_cmtg_enable

>  }
>=20
>  static void ilk_crtc_disable(struct intel_atomic_state *state, @@ -2654,=
6
> +2658,8 @@ static void intel_set_transcoder_timings(const struct
> intel_crtc_state *crtc_sta
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift =3D 0;
> +	u32 trans_htotal_val, trans_hblank_val, trans_hsync_val;
> +	u32 trans_vtotal_val, trans_vblank_val, trans_vsync_val;
>=20
>  	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
>=20
> @@ -2702,15 +2708,15 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
>  			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
>  			       vsyncshift);
>=20
> -	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> -		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> -		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> -	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> -		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> -		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> -	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> -		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> -		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> +	trans_htotal_val =3D HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> +			   HTOTAL(adjusted_mode->crtc_htotal - 1);
> +	trans_hblank_val =3D HBLANK_START(adjusted_mode-
> >crtc_hblank_start - 1) |
> +			   HBLANK_END(adjusted_mode->crtc_hblank_end -
> 1);
> +	trans_hsync_val =3D HSYNC_START(adjusted_mode->crtc_hsync_start -
> 1) |
> +			  HSYNC_END(adjusted_mode->crtc_hsync_end - 1);
> +	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> trans_htotal_val);
> +	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> trans_hblank_val);
> +	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> +trans_hsync_val);
>=20
>  	/*
>  	 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal @@ -2721,15 +2727,15 @@ static void
> intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	if (intel_vrr_always_use_vrr_tg(display))
>  		crtc_vtotal =3D 1;
>=20
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> -		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> -		       VBLANK_START(crtc_vblank_start - 1) |
> -		       VBLANK_END(crtc_vblank_end - 1));
> -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> -		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> -		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> +	trans_vtotal_val =3D VACTIVE(crtc_vdisplay - 1) |
> +			   VTOTAL(crtc_vtotal - 1);
> +	trans_vblank_val =3D VBLANK_START(crtc_vblank_start - 1) |
> +			   VBLANK_END(crtc_vblank_end - 1);
> +	trans_vsync_val =3D VSYNC_START(adjusted_mode->crtc_vsync_start -
> 1) |
> +			  VSYNC_END(adjusted_mode->crtc_vsync_end - 1);
> +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> trans_vtotal_val);
> +	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> trans_vblank_val);
> +	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> +trans_vsync_val);


Rather than this pass adjusted mode to intel_cmtg_set_timing and do that ca=
lculation there

>=20
>  	/* Workaround: when the EDP input selection is B, the VTOTAL_B
> must be
>  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This
> is @@ -2753,6 +2759,15 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
>  		intel_de_write(display,
> DP_MIN_HBLANK_CTL(cpu_transcoder),
>  			       crtc_state->min_hblank);
>  	}
> +
> +	if (crtc->cmtg.enable) {
> +		crtc->cmtg.htotal =3D trans_htotal_val;
> +		crtc->cmtg.hblank =3D trans_hblank_val;
> +		crtc->cmtg.hsync =3D trans_hsync_val;
> +		crtc->cmtg.vtotal =3D trans_vtotal_val;
> +		crtc->cmtg.vblank =3D trans_vblank_val;
> +		crtc->cmtg.vsync =3D trans_vsync_val;
> +	}
>  }

If my above advice is taken this is not needed

>=20
>  static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te
> *crtc_state) diff --git a/drivers/gpu/drm/i915/display/intel_display_type=
s.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 1081615a14fb..defb54dd0bbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1572,6 +1572,8 @@ struct intel_crtc {
>=20
>  	struct {
>  		bool enable;
> +		u32 htotal, hblank, hsync;
> +		u32 vtotal, vblank, vsync;

Again this also wont be needed then

Regards,
Suraj Kandpal

>  	} cmtg;
>  };
>=20
> --
> 2.29.0

