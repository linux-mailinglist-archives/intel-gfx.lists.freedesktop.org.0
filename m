Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B72B4AE61E5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 12:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2CE10E54F;
	Tue, 24 Jun 2025 10:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j+1fYUMn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8356310E54F;
 Tue, 24 Jun 2025 10:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750760095; x=1782296095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fx9BUnH0FSGwQ6oH3QAxr7FlGJrlRCuV+HjWJ5xMYm0=;
 b=j+1fYUMnxhP188u280Bb4PG8EcevQ1WblYzRRPNs5qc6mEx95ay1UTnY
 4yYZS175vOCZUwbt5M/u91NesXCpInr8zzJmuRVBOErMYRtk490Wlv/C2
 WiQweThzLDNg7XgkzjhsoQzh/ICOWYCD1uOw3fnvRnGKd8xJipIJseeIV
 FBtvpI3qretXLtaQXBhHfNlPdPhU+PZnrG7UiT0QKtaMtxy1a3fhqvJ79
 A2b8B97QaxuZSEnaIvvUS2hgyhZ8hQ7aQVjMLGVTDyXEWrMuioxJdJpFf
 Wt5kX99q6D/mXrIRnPzI34Nwg2kaCuB35gvI34PNKc/fZrUgL/ABfp2Yc A==;
X-CSE-ConnectionGUID: nq9YXxVLQnSv7rFbIWMF3A==
X-CSE-MsgGUID: B7LhGXAmS4OlJs3Ahmw25g==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52714992"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="52714992"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 03:14:54 -0700
X-CSE-ConnectionGUID: eowJv0oaTAWR4FLIuqG6Cg==
X-CSE-MsgGUID: Oq2oNSUCRaOhX4HU9DScsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="152378463"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 03:14:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 03:14:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 03:14:53 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 03:14:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rW5wkxDneyL4lT7r2vCOWEvHlJ3llE0gZtUqFGGZm0Qu7A9KyLLDUskDhnaECOsCgsYnhGBsyCdf5mKnI3bMDY4K+qcKJZPNkIdnrKCK0OH1dA//8Hr0lOscv2GRdHK7x5UFFL7wDxU+4Tj7yqSkAhtSne3WRTstueJg/lxn8MYZtXA8XsjG0Pt0n3Jhk/znsfO1jnguAv+U+RyHRIEqJcT7wgfQaAATygZshLPATAtc6YsksvWzSWFrvWT3c9OslTbD5BtS8HntUvf2hEGtap0GGuXaMxFdIiXMlvktDAmHQcfE1jDXK9aHLAqLpMdkrRKjVFaI+EXr3qW0OS/Uug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BrHt1Syi34Osi7xziaGGZvvnUhAqZXDp5dBQZJaZSBk=;
 b=cw+Zju32Li17roPcneVTCvZpQ3nLbIiMzfZt02hg9etDk3IbXanLZwgJIUJ7tssEjHdJtSk9aaLMClwHp55Ld0Nu95xEB18Kfr7pKWOUCROgHWdt7DmRVGACG/bB5owcWKeiDiSL3237QJznSAdfsti9mdhtqSGd8iJrXNgE07lBjRaAdHEDRuBn0NQNAgPb3LZVlyLg7DqB/W7HE92mIEQts6q0WSHLUmQC80cEMBcGUyh99YZaYpzVLwdBgrAq/AXDdzy0mMsEHysmfDuB58ZrJRJLabs4+UNyK+Ibh8hZoX9MQyGPTuCPydSG1aPFUNorSqhUFM28sG9ukjYSfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Tue, 24 Jun
 2025 10:14:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 10:14:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/display/dp: Use static values for min_hblank
Thread-Topic: [PATCH] drm/display/dp: Use static values for min_hblank
Thread-Index: AQHb5Or8yV2KX+/vNEuj2fZ4bwymobQSEN0AgAACPMA=
Date: Tue, 24 Jun 2025 10:14:24 +0000
Message-ID: <IA0PR11MB7307671A9A4B22E0F669A0D2BA78A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250624-min_hblank-v1-1-5c100e4a8b05@intel.com>
 <6ab7f75032c91ba507603aed48f8f924e7bb172b@intel.com>
In-Reply-To: <6ab7f75032c91ba507603aed48f8f924e7bb172b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH7PR11MB6522:EE_
x-ms-office365-filtering-correlation-id: 57a22c62-75b7-4408-cf05-08ddb307e4c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zYwImle7perUZwAJnrLvHC0Y3At58qmJp4iRcWbveOjAxnfc5gMpbNvBOqWH?=
 =?us-ascii?Q?ooFcPs+Y/GnnqORn9OtCW+8rHdJnEq2+GTYxmPd3LdYou12IMtbU6zZCrhiW?=
 =?us-ascii?Q?1FO72rODlERkYF6m5EKYaH20SK+Ez49j6n3EZVAlVrvwNg793IRWVxnqbXNs?=
 =?us-ascii?Q?Fy/isNirrUBLMEH8Z+bFN399AwUGfutPAXO/cmMQmtdwKpYqpD5Ck20tq3Yk?=
 =?us-ascii?Q?kTcc29NUW94Pkqcm2JGcw2CbrSB+SRPPCShHExW+lD6aPqBXNcF6D7R+QArC?=
 =?us-ascii?Q?ydgGR6dknEqrrJ/soycCGlP4W3ANVAzr6VEZDpgKmpWbsBoVWBj6TK/7tWrx?=
 =?us-ascii?Q?m/f5mwhG4mt514zXSdPkjfDuZ4uKoNHxLoWLMiQBzYRqdBTxfMT30AJl4Wlq?=
 =?us-ascii?Q?C0EX8GuNfV7GmNKFJmEjyR74BZArQczLKeoGLQ42/k2hWj1PhlFEWrj2rZuB?=
 =?us-ascii?Q?SEjo2HXbTMg2/3kL35+cz9IcvwGZcJNFdwbcL/GhwfZ3fyPhK7djVSe2/29X?=
 =?us-ascii?Q?2V3p2nTFuPztAI8N2aViJq69PNXxafpRjPhsNqkJk/nykD+dBld58ZojgJsF?=
 =?us-ascii?Q?TUtKfnm5AzPkunjXeS/lJ2u/zgSbRmNXFCfVUulw4uBuw0mDTL3lZS/N920F?=
 =?us-ascii?Q?pZdvfLRSsHisWarAkGDkVmJVnkkPc4apKSLE1JlTOZswaRYWZ39eeJU/ja/W?=
 =?us-ascii?Q?FjNYCXgrFSpI7XiyGhPNWU2Dhi8g1tGd5Iw7wenqqX5YsD/zMc4YSIXZgEKm?=
 =?us-ascii?Q?cmaLOThZCpBPS7BP1S4+2QUAZVH0llcXDUM1KjUYti/pOdK5n9PqK1W97kyd?=
 =?us-ascii?Q?PIBzlBB4MrbKe6bokTwwTBQTCe1eFJ8F/eY66SBuTpPZcSkz40RiJPiq8n4P?=
 =?us-ascii?Q?fXat3QANEwsCdbXRc7B2GxSbuaMueHyteDtD/6yKlqAFRP6Z4aq2EReFq+lO?=
 =?us-ascii?Q?oNKy8dhZNW7WJ7iYh7gu04OR5HWEcAMiASdyGL9I57CydJ5KZVl4prur5E00?=
 =?us-ascii?Q?6aqSmCLLxIHqOGz1fV8rAH8zZeXZ+e9cRFu7pAiIrLkJXCsUvOq2WiuAKRLv?=
 =?us-ascii?Q?TMWB+K6HrbYhJR5Dc054/AAFSTi5nCFNNBdev4HlVrva7Y4Mw/JmdZhqWJug?=
 =?us-ascii?Q?fwHZI1Titp904HUMedauJnCqkLhXvb1q9irh7wiGYJIG32Ox2L30rXtgDGRF?=
 =?us-ascii?Q?ayGTqz2yVybCRHLJ2B+m1TERZN4bMCqfaYRfLTP1Nm9jl823xgEkSE6fSgg9?=
 =?us-ascii?Q?U+d+dTE5uxAw1hdiwbxlUJYLgsdUlW9F0jMg/b5vAk3V5l+/4jkonVY5Tkuc?=
 =?us-ascii?Q?l6mC5PwLnMNP3fpbbr+EmcXVyPifEBA2Gi+YVmz8H8kGdZGRjGhYhscnsKYa?=
 =?us-ascii?Q?C11Pfi6cD1xpOxwQNNX1RLh8goFSWWH8fy7bKpk9ICdt158WwjE2plYe9n2F?=
 =?us-ascii?Q?HNP5x9DmgLg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jFoJ0smq94U+qax50gsHUO2h3+5Wn7LXjAOZQKsnyxWbJYrxsTMGxCSovPBR?=
 =?us-ascii?Q?Q0Vhrw2g+6a/sxMfAEcgYD/YmmJlh7nxg8AKgjUXmHiPeGUnGtXWwkEgjDkZ?=
 =?us-ascii?Q?ivnj4TrQq9IkaTWq/J6JoW9m9xi+WE9Suq0PABWLKdfI8+GNLZrLLl5tN1Xk?=
 =?us-ascii?Q?SpzR3JWUcbQFC49hkT4nl1PGSwwo56BFT7R2GDp8Ioz7K3z0cAOQy0kV3q9o?=
 =?us-ascii?Q?swWxezcDDlh1xNNnihpGymTRmiqoHY3df9TexU6u4h7nWaM1sDbQ/1uDrtnM?=
 =?us-ascii?Q?aohusvJ1gu8lLa6y6jLdMk9Hep2ytLrl6rich6SW1bsKiN7zo7XOcOsO9xez?=
 =?us-ascii?Q?jBuoZ76SDedhNoRVMGlnTkMFulX6qFGAbe/6/6O/jX52zkG324QXfg57WSyJ?=
 =?us-ascii?Q?naMAZgD2/CDe/7V5XkQxuVWWyS8bncYbJnw+XY8aRcTF4IvsdSTcsLpiCozO?=
 =?us-ascii?Q?LHpVEva71Go14qt1poVyFn6F3qLSa6d5RKO2IcFMxmsTdVyRfdI5K+3RtzG/?=
 =?us-ascii?Q?U30/Y9Az4qApxZM8Z1q8NKMEq358dId8W3RyVP1+a7l/hRe2EW76EMpg3e2p?=
 =?us-ascii?Q?1rZJC+NRZI1yWXqpDGEMZdgw6J2gCxu/MnoPoHpxIKyDotblaurOZ6JmWvt1?=
 =?us-ascii?Q?b4pN4qM3NPo/fG1Ou0qqAu52gpIyCUZrTrJ2GYDFJ8eCNzJ/urwOi+QcmfzL?=
 =?us-ascii?Q?0LmefAYYkTzDkaOhWEI+IVyGUhMa/yMA3rtLlIZqW/O3Zw4J9OHVSUhhsWbD?=
 =?us-ascii?Q?u0XpCSIE4qdlNQ6E1ga2E5UAffLmFyCmD51jYs9Zu7f8/82RTiBhZvmMBW2w?=
 =?us-ascii?Q?BplaMrvQ9E10/XI0JYvWAirUluU2Ix0fLH3AG2il0ul5TuhTz3KcWWmppoqp?=
 =?us-ascii?Q?fF31fN2BEuZXAuC86ZSjsgoLOSJ6UKorxmEpa1nmXRrK/ro5ACdMHmr8GKV5?=
 =?us-ascii?Q?W7/ql8cG733npFB3nY7BgF7xxtWONttZCEGnhg3nRR7BYnIGKIKql2dBN9/z?=
 =?us-ascii?Q?i5B0rurIPlNKJJ0FP42wDm3lh8vges8DOonUwABfU5Igfpx0yW0glVPivUXp?=
 =?us-ascii?Q?USkpY7KqlCc7GkeraDqRCFlOzF/VGwrsU1m8aZhYsQRuiEyh9CGLqAlniopN?=
 =?us-ascii?Q?pT5CbpRghUChMe1MNRmfoDi+PdOOcCR+RKZmlUoNOzb5F/MyXfZzQUztxdoC?=
 =?us-ascii?Q?bzJUIJOFtrgwiSr2caeDDsvyeql45LaOLjMTEYMwlyX5N5DdcBavjKAx0A2B?=
 =?us-ascii?Q?ezE2wCATJOelU1qSk+Z6L013dtqjcrpQT6RdaUMHowjm2J9raVK5jJYwjwNY?=
 =?us-ascii?Q?qJbfwZLBkskVBece2mqD1Qcy3ONooBXv0jnzpseYEHIXUYF0wnzbDoOM+992?=
 =?us-ascii?Q?myfDjUMRGCI6cQV2dfROhwsMqLUR9/vrQLdWYuEEM3AgSFv02mzC+68Aa/EE?=
 =?us-ascii?Q?xtqz5RB/qSUZmunnoYh8QHFTg40QO96q49pJPSnv2051NDi595K6vYU85+1b?=
 =?us-ascii?Q?T/FxHGlX4jvVsWG0JYjlbFcvsljIwrRGT+NI20KJLkGMDH5NJPMdgk41hqkt?=
 =?us-ascii?Q?Zks4sqFoC5RF+y1K+DogMhnuoCE0aEcgskCL2i0q?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57a22c62-75b7-4408-cf05-08ddb307e4c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2025 10:14:24.0925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X2GittKi/tSWrExzFeECuzsRmHIhJ81+3pAUZ0OhcSCSjXZiKAqq8LS/IKs6e4QtEFhKzL3AmN1FbqCtWBEhJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6522
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 24, 2025 3:20 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/display/dp: Use static values for min_hblank
>=20
> On Tue, 24 Jun 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Use recommended static values as per wa_14021694213 for min_hblank to
> > avoid underruns.
>=20
> Subject prefix should be "drm/i915/dp".
Realized just after sending the patch, will keep an eye in future.

>=20
> > Bspec: 74379
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 68
> > +++++----------------------------
> >  1 file changed, 10 insertions(+), 58 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index
> >
> f48912f308df7fd26c9d089e8f1bd096bfc8df95..feac034d1789c05994b210aabb
> b5
> > 3d4b407cecf6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3115,68 +3115,20 @@ int intel_dp_compute_min_hblank(struct
> intel_crtc_state *crtc_state,
> >  				const struct drm_connector_state *conn_state)
> {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -					&crtc_state->hw.adjusted_mode;
> > -	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> > -	int symbol_size =3D intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> > -	/*
> > -	 * min symbol cycles is 3(BS,VBID, BE) for 128b/132b and
> > -	 * 5(BS, VBID, MVID, MAUD, BE) for 8b/10b
> > -	 */
> > -	int min_sym_cycles =3D intel_dp_is_uhbr(crtc_state) ? 3 : 5;
> > -	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > -	int num_joined_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> > -	int min_hblank;
> > -	int max_lane_count =3D 4;
> > -	int hactive_sym_cycles, htotal_sym_cycles;
> > -	int dsc_slices =3D 0;
> > -	int link_bpp_x16;
> >
> >  	if (DISPLAY_VER(display) < 30)
> >  		return 0;
> >
> > -	/* MIN_HBLANK should be set only for 8b/10b MST or for 128b/132b
> SST/MST */
>=20
> Has this changed?
>=20
No, still holds good. Will retain this change.

> > -	if (!is_mst && !intel_dp_is_uhbr(crtc_state))
> > -		return 0;
> > -
> > -	if (crtc_state->dsc.compression_enable) {
> > -		dsc_slices =3D intel_dp_dsc_get_slice_count(connector,
> > -							  adjusted_mode-
> >crtc_clock,
> > -							  adjusted_mode-
> >crtc_hdisplay,
> > -							  num_joined_pipes);
> > -		if (!dsc_slices) {
> > -			drm_dbg(display->drm, "failed to calculate dsc slice
> count\n");
> > -			return -EINVAL;
> > -		}
> > -	}
> > -
> > -	if (crtc_state->dsc.compression_enable)
> > -		link_bpp_x16 =3D crtc_state->dsc.compressed_bpp_x16;
> > -	else
> > -		link_bpp_x16 =3D
> fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
> > -								   crtc_state-
> >pipe_bpp));
> > -
> > -	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST
> & 128b/132b */
> > -	hactive_sym_cycles =3D drm_dp_link_symbol_cycles(max_lane_count,
> > -						       adjusted_mode->hdisplay,
> > -						       dsc_slices,
> > -						       link_bpp_x16,
> > -						       symbol_size, is_mst);
> > -	htotal_sym_cycles =3D adjusted_mode->htotal * hactive_sym_cycles /
> > -			     adjusted_mode->hdisplay;
> > -
> > -	min_hblank =3D htotal_sym_cycles - hactive_sym_cycles;
> > -	/* minimum Hblank calculation:
> https://groups.vesa.org/wg/DP/document/20494 */
> > -	min_hblank =3D max(min_hblank, min_sym_cycles);
> > -
> > -	/*
> > -	 * adjust the BlankingStart/BlankingEnd framing control from
> > -	 * the calculated value
> > -	 */
> > -	min_hblank =3D min_hblank - 2;
> > -
> > -	min_hblank =3D min(10, min_hblank);
> > -	crtc_state->min_hblank =3D min_hblank;
> > +	/* min_hblank formula is undergoing a change and the recomendation
> is to use static value */
> > +	if (intel_dp_is_uhbr(crtc_state)) {
> > +		if (crtc_state->dsc.compression_enable &&
> > +		    crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 &&
> > +		    crtc_state->pipe_bpp =3D=3D 18)
> > +			crtc_state->min_hblank =3D 2;
> > +		else
> > +			crtc_state->min_hblank =3D 3;
> > +	} else
> > +		crtc_state->min_hblank =3D 10;
>=20
> Per coding style, the else also needs braces. Checkpatch will tell you th=
is, please
> run it before posting.
>=20
> This is not new stuff, and it's a waste of both your time and mine to
> accummulate versions on this.
Sorry for that,=20
Started using b4 tool and the option check does run the checkpatch. b4 prep=
 --check does run checkpatch, not sure why this was not caught.
Will take a look at the options considered for checkpatch in my setup.

Thanks and Regards,
Arun R Murthy
--------------------
> >
> >  	return 0;
> >  }
> >
> > ---
> > base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
> > change-id: 20250624-min_hblank-8af8d2626ff8
> >
> > Best regards,
>=20
> --
> Jani Nikula, Intel
