Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0704A322AE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:46:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60CCC10E82F;
	Wed, 12 Feb 2025 09:46:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QbvqPS+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A581110E82F
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 09:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739353573; x=1770889573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9C3IcmtYiKooow5Qx1tN0LALWXOUL+CyVlFRMNART4A=;
 b=QbvqPS+PmB7ZL27u9jTuMQepJsMXA3URpZxRzLhtPOCNintj7PtKKr/x
 KbJmj0m4ZeoF23fMCruQcH5E2cC7cAgv4HcGziILjXryWUXseRmbAp4jY
 foGGL78wPWDg3/k6oCVgc8n4FgabJgS7jc50Z56s5R+c4W4W+qo6OWJdI
 hrE8ODZ8g68mItQzR8+BnA1tfEtuyle5o8pE5SUbk42I9ot8KcLher6xL
 NdMqilRkfoomyRsg9EUYnTfYSchlBO+/ZXipBQdmCs47MWsQ2S4ZzgMpG
 bpEauLX5Kmy9hVVBry+QhUC8KOzAvzeSJouMzRdh/kw8uAsQQoiRHw4pw A==;
X-CSE-ConnectionGUID: oG8QvCseROOKPiXLOTVpZQ==
X-CSE-MsgGUID: YufcxV1wSMCua0OBUp+GPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39233917"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39233917"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:46:11 -0800
X-CSE-ConnectionGUID: T1uIQnsRQNqR3nx2ClwvGg==
X-CSE-MsgGUID: 7DiiXQ9kRQqa0P1bNfRRPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136044638"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 01:46:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 01:46:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 01:46:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 01:46:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ajx5uXSpPjpBwldf3HBDbrkwqdVxtPdBsBe0CRYM0noNUKcD4iAaMUQB0tfIrsJldMVRiEu8R4Ys+QVluEj7k9KxUPsRZZDjId0c9/d16gYtpsmMbNPH/37S9COyv3CCVwq1z24vj+GOkb+jAbvOooTQsrMEUio0II/nhYV1RQ9DWMAkf/LUuq4uIJjKx2wGmt7lElyCDHEnsj4xOAdOrL8SMWgSg0thSx1XtgTgKoNpmRM0jW3ULucRGjt8MKawzR9ckm765gpLpvdwffjPKP08eN8JOxc1Y+hRHLVBf/qPRCI53UAQNmmdTcNZYOhO4Tr4hQJHFBhwEXXvOd06KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9C3IcmtYiKooow5Qx1tN0LALWXOUL+CyVlFRMNART4A=;
 b=Oonb2S//SDXxAVpr2Lq7gLelpEoAgcJfM+Bl+uc6EFylE7YLJFcC/q6EYo44ic/d8ec0rINhU22wUXJcM4NvhwZwpBKePRlcE/SAGZ6giYOxB7IbI42F3wyNVHRVeFEqHAmT4AwQLA7zDWiLt35iOrQU7f2uJn4j/q+g+kgycvRRLXJlueXNJEWN0d4//rmWA6QvJSwKL2gcZVzTC5fLWugWStxHSYI9zfmNmpNILbBM1ZJCm17JUUhrn83NfFC1n6ohGbWnM6MCRNVZYKiUjHXDXJocNYta161BGzoRyC1iWe7mJEfkYnnEU8qTavKOoHWUBT0QeObEO3OkZdbrYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 09:46:06 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%4]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 09:46:06 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/pcode: Fix the coding style
Thread-Topic: [PATCH] drm/i915/pcode: Fix the coding style
Thread-Index: AQHbe8I9JEUWkI7qfEq1LYqhV7HuXLNAlsqAgAGCmQCAAVNm4A==
Date: Wed, 12 Feb 2025 09:46:06 +0000
Message-ID: <SJ0PR11MB58672CCB29FDDEF79D897C5BD0FC2@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250210140924.1364158-1-nitin.r.gote@intel.com>
 <Z6oLeQjRUatMGgAs@ashyti-mobl2.lan> <87ed041ulj.fsf@intel.com>
In-Reply-To: <87ed041ulj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|SJ2PR11MB7573:EE_
x-ms-office365-filtering-correlation-id: 7152791a-9ed6-484e-9467-08dd4b4a1277
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?v7eo2WZh4kgbxdbhF3voYS0Ai+4txHrjukN0VrN6szW07htCpnDFMCBM9c1Y?=
 =?us-ascii?Q?6o2DD1h8lYQCNf8nXV6480mCQZ5I/dJylWzpzUhSjdiCOUNK1wMvQLypkisq?=
 =?us-ascii?Q?ryxOQt15ogJ2ywT3sla19M1DCUthEHDGUiw7prLD7zwkek2VCkjCgm8/+yBN?=
 =?us-ascii?Q?qWOTiuQl5FcXhWGqA41liuhfL4iqowqSjHjaJ19lYsOPNWWY/zSW4vmL86EL?=
 =?us-ascii?Q?WOgpkhiUPz3jKl6bzjT8t1Sko4tPlpqWY3esVICC9Hg6QfybnycDoJFGf/iz?=
 =?us-ascii?Q?dewpzw3DLMhcXogsKM9kj5hXuLTwTZdgmyO+PQlhGABY+54RLdh1rDmrR5IF?=
 =?us-ascii?Q?xLmOJblneID3mkXVUb1ykQMf+gC3Q3k9DtYUCvSDqUBbk764M801zqGC6yrL?=
 =?us-ascii?Q?LMva7Vutu2lD6d1ghpW79vCQh7WV6fggKNvC5Wuxtx+mHO3g5t5uOM8MM+B+?=
 =?us-ascii?Q?40OqjP7EZ03mZF1e6m6IsibwmWbRb6MIYE+C7+HC9JhjKbcMrde3tK4wXCkQ?=
 =?us-ascii?Q?XxewMZL4MGKlV7TDUjICzdpXAXlFynurAPdI9kk6ZkjluZDpCxtbY/SL57qN?=
 =?us-ascii?Q?7YTrJnHB4bJrrdhsYzq5inRBRA/h7d3pwIrYYsErUdj6YrSKawkfIVz5+6Ps?=
 =?us-ascii?Q?GLvpqJVZbislpm6Lm9qow2dYak7X/atxbluV21dYwnOSyYCHVOr4SGBUrFt9?=
 =?us-ascii?Q?Vu+/O15LwY6TDIk8PdrOH16qSRLSmmxx6UxVrA9ukkWHnspIZDVQVhsZIKXX?=
 =?us-ascii?Q?w1cG2K5CA99ORmBldYBmxgERPNINW6KUcwmjocKW1iUFkLkUL1wZqjYY3aGx?=
 =?us-ascii?Q?/svtpMaPfxGIWH5grWuDFVkueYa0UPQt8AHNpdTDhmmh17w4kDCb54yZhsBs?=
 =?us-ascii?Q?EoI1wlOSz+aVdAqhv1xHCWicM9lYmWrvq9vpZN8HS2+eQUS9/yGhud36LBTN?=
 =?us-ascii?Q?psXk4R08mJPC/z5XOUrFjePAm6kA341LPzvijn2HbkNEQ1Dt83y35RpC8Q+Z?=
 =?us-ascii?Q?nKkhlHe+Fff2aAqHrtDzCC4fZ1r4n45SfWIVs6TxWIEFfvoQ/IQ9MP5LdV4i?=
 =?us-ascii?Q?IyZmUGiHUhiIQbcS8fsptVk9WXkC59XbUGx+19cxFMCaoLbuCLUkr5dZ7RzA?=
 =?us-ascii?Q?lsOLwlM8pWvBNAwiGSEr7a0kna1deUnzZYO8rEW3quvbYqrTeY7284dXAOMm?=
 =?us-ascii?Q?BUZeRYk7ZCfwKNh2JoLo/vw2Qm1kDetGeoTi2XeUGYE7HPJoyz2SWiDUH8yJ?=
 =?us-ascii?Q?DxSowzWhPccyafr/K+KmzEvKY5O7O6Xh6t8sm5m3c9JevhSWt3Sdwns3WQ53?=
 =?us-ascii?Q?I7rY+itWyXFHfRr4R79GSCI4SHLhTA/j1dVJDW/qInGObLN4Pq8M/uQGJZSN?=
 =?us-ascii?Q?7J41ngpwdLGtdtX1QvG5A2ntSmbr3v/mTrqd4C9vzrayx2SgG8fZyun6c80h?=
 =?us-ascii?Q?LB7FMi9tjexeiO9qPiula9B1G2WiPjTN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YQipsPihPcS7Cz6h926BiqgwMtUnK37eMrnNIhQ8qwlLfTbV3r0Onu1gift7?=
 =?us-ascii?Q?8YIVa9kJeLEsRWWLLLIvAKkrlzn3ESQ+l+9+8G/6yLuLqx06YQagB639/0TE?=
 =?us-ascii?Q?YtXVNs71GVG4RbAWhO1tkBiJlsfuTim4JNrjMCIdWuXFfFNENSTIlTjhL1vB?=
 =?us-ascii?Q?ggX6j0f7Kz9uTfJW2T0w2hgUkMr8j3JAAMFJFvkhbLL/whaoZkVtkgekNEON?=
 =?us-ascii?Q?mXR8vHl1tNyQxVufCkw3Zor1LGF2I2kPb1tj8YSQvI9jR7Gu+7NOUhqhJnn/?=
 =?us-ascii?Q?yGd3RVY0dR1JPM1U0KYju5ZbnYR59BKNNekj93C+/UK7ewbRHG3ccMiHAKxA?=
 =?us-ascii?Q?GZ4ZkHwfMgESjHYOXpFyUih+qpwzvK6TMUavejCe+yMq8w5NpM3JBWa/wocg?=
 =?us-ascii?Q?b3j1/YdwQEZNYyw2NFbIAsF8zpbfV7QoP41TZ2aqSWqxEbNyPrh4UBjQJU6X?=
 =?us-ascii?Q?yu3VzgDbjilzD2vB2iQAlDGQgM95gX1ni8V/0t3CV+fQ9BdrPgCfqnDLPUJq?=
 =?us-ascii?Q?s6lifV3aiSwdd6naqsFW5kJyByCH0d1rwdEbP1kXdFud5O3HDk1NnR67qHAm?=
 =?us-ascii?Q?X97z7kPJCSLemsOwsN5ydCBWZLejfNlr6hhheJPcJ2jzoEt+cJBOLsjoQlOv?=
 =?us-ascii?Q?POc55Q5h18xgEbd9SBVIx2l2l9LbyOwWQwmASkVpmIiMPGNqXo4jAZf5/sf+?=
 =?us-ascii?Q?rpMKMXsPUd6sHujMYEwv+Mm/5iGT+0WnNKAschX4yvNXCotY0OhfdMxNKtbq?=
 =?us-ascii?Q?oIZwjA6VtrsRStPRK9CVL8nmouWwrgzgXfUHoHQU2dX0Tam7i8MkSxzWRGL9?=
 =?us-ascii?Q?t1I+6jCDkom27QS6FMyboBL29HtBZECNHDRR0Z62DQaq0ehFecWBZ/GnaUSA?=
 =?us-ascii?Q?M9It/jJNmu2wd86zyh4uSa7hQXKF6CDUukijPZSKfg7147FjP2ph5i1KW1RJ?=
 =?us-ascii?Q?wJECX31r9kppBBBLIrXQTJwm0yAaTLkhNVE3DUDVvOBvFzPfVux6ymw6Wgas?=
 =?us-ascii?Q?JD6OKpFVzPXqyvKeDe4yy/Ktcwz0zpuSFiAVIf5o6cZZqnbfq14JXm8in6UZ?=
 =?us-ascii?Q?3tfB0qLLuLnkBc7GHKKX63e89bzL4+vGsDyiGnCPt7PhGTUGImoQQWpC7p/S?=
 =?us-ascii?Q?aXCisi+f3aXYubFz67m5tcdC2VUYzCJ6OeBXePKbtXh+Ulh1lX+XEd1MR04I?=
 =?us-ascii?Q?IFmWyWCGLGYW/Q/rJ7HBnUcNvHsh0C4QIqYUx7oIB0piclHrKMgLl3KCaxqK?=
 =?us-ascii?Q?grywfOMIdoqVUOLiHAC10q3fO09G5f+/1RiSAY2wwcVcXRxD0Cdlra3IiJuS?=
 =?us-ascii?Q?d4oMmNH42+nu/FtYQPAAXyG8BKbFR+jc4ZsSVRHsNuDiEszoNgfBFBPSW32b?=
 =?us-ascii?Q?UK4TGcVEA8lve+/NQdlbSIh4fgYpSedxx//EyZ2SyOJ5lnbEtCVcbqAxI4q8?=
 =?us-ascii?Q?klh1fgJbFxxfdcBgMm4y018nTjOxMwmMFlqBag7mb4Xk6KfDLj9HshuUBt8f?=
 =?us-ascii?Q?M+DaO/SKci9CfTaFK7hdqIVkKe8Jgx7SdzEcxfEiQnT3RTAbbRtVeYuC/WJ4?=
 =?us-ascii?Q?RVoPFl7Q7P6FIVvZUD8hHPU/indT3VFvGy7tCAo6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7152791a-9ed6-484e-9467-08dd4b4a1277
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 09:46:06.5539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cVqjknJA53DOl+rJ7P37DiCqWtRcPVxGZ8i9nxC+iSe3Q5tK3pKMPaGRkd5d9xxTL9tSfKbtKrn3ZMuMb5hKcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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

Hi,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, February 11, 2025 6:56 PM
> To: Andi Shyti <andi.shyti@linux.intel.com>; Gote, Nitin R
> <nitin.r.gote@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/pcode: Fix the coding style
>=20
> On Mon, 10 Feb 2025, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > Hi Nitin,
> >
> > On Mon, Feb 10, 2025 at 07:39:24PM +0530, Nitin Gote wrote:
> >> Prefer binary operator at the end of the previous line instead of
> >> putting operator at the start of the next line as per coding style.
> >
> > I'm not finding any documentation for this change, where did you take
> > it?
>=20
> If not documented, it's the prevalent style, anyway.

Yeah, My bad I thought it is a standard coding style but it is not so.
But still, I feel the more correct way is to use binary "|" operator in con=
tinuation of first line
instead of second line.

Thanks,
Nitin
>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
