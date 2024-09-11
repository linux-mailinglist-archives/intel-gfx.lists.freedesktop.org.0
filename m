Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFA59749D7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 07:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C29010E952;
	Wed, 11 Sep 2024 05:37:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AA/wFKRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD4810E952
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 05:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726033029; x=1757569029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r8Ep5gFlUe74kEhWgRelZoenF5bp4trrGqNX2mh4YgM=;
 b=AA/wFKRy/6LkIqhPuo80iVhkE2Lom2G+QlyPKQRB9tW4oScVoSECXdfT
 yRiNESOmPnb8Ny2A+JbG64/pgHDCILxfB4YpnDdtkFjZxUkVi917Ma8VU
 sTD+nrmxMgTcRcFWnlXonSU9UvSr+Llzl7SgjOtYiHqM+H8gNhk+vY6/+
 +n89Br5QKbQ8n03uK9hEAk09KFUQWABrdRbtrSOy1PA0X9qK0D79BfOkp
 t9mTXwAX4fQuHJIpf64ZOJQ1TrfHMQDlyH9pz0S8Ta7T0ry5LvTyu8tHf
 fCWcVEQunvcwqz41Wophsc7RUitxE993LiK3+zyv8SAMTqgs2opIoUuHk g==;
X-CSE-ConnectionGUID: grR37394SwaeBBAxDrfN4A==
X-CSE-MsgGUID: Uz9OThpcSh6+vn+nZ8vaVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="42332523"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="42332523"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 22:37:09 -0700
X-CSE-ConnectionGUID: OSrMLGMWSZq9M2XGK0sOOA==
X-CSE-MsgGUID: jh1N5uX4RGe859a8Vrys8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="71628409"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 22:37:08 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 22:37:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 22:37:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 22:37:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UwyB58CFJrCgxsrHY5dyDMcfHHokpOburFtnAoQI3WwMFAJZ49iix/JCNbIP//koZUxq+LoSKLUexlk/9ogPfxzf2cYg2DlEwxQboYbhETysH5bLuXIDwSlHr8iNiNgbHzk5uViZCI0zHbwfjDqnLwdRtk4C2DjswONI9Qq/hQmu9wPqOV8S/AXQCbZMEElGiMZokItobtuFoZwMeg/kpyYWiuAfohKi0MixQCpIlt3N1sfGUePSPGdV9QLVjV2FxCW6d1yNlf6SDOnET+mO3bh3I2q/6qAoEQ3oxti0Offr7NESXvGLDsw80+7VyygWXq7gZkuGAmqh5a2cfJp6WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tc/vchqNCH/57hK2E1+Hw9QzbrYmPFkkMR3aV4GSlUY=;
 b=kTB7MnQiW0BxE+eX4IpOeUxYyqQ6oUpawBNPGpOuv0bZYOOTCVHQSiVEEhonocl61M1OU1jyF3yyHpw5SsCv1GLBzvxgWfaI4W1gHZEpY8+LBqx2Ys2Vf30kUp4MyZ9UcqTdZe2nEV+bnTEzpVHheZbets1YUHjOXwV6xYnUGf+BHwIaSt9k2SQBAQh8rn0BccRFc5mI0iThPlC4CzL+w92jqhWDJdkZsDAoFAMp1hvrj0pLqK2Kmoq1dMKVf11qvfzNbMtwgQocVpffq8psTgkiE3g4qD3sb3Vslf3e4+PDBPoGWDyh0aZ+CvSJx2yu/SbYDqh/T8h+ZHJK8gOfww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB7215.namprd11.prod.outlook.com (2603:10b6:8:13a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.23; Wed, 11 Sep
 2024 05:37:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 05:37:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87Wna25yr6dJmECof506AaELfrJSLptQ
Date: Wed, 11 Sep 2024 05:37:05 +0000
Message-ID: <SN7PR11MB6750823FFE28098879A30E73E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-2-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB7215:EE_
x-ms-office365-filtering-correlation-id: 58e23914-bd96-4780-5971-08dcd223c554
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?YNSNYF/DiZV6KOUsEcQNDA+YUchK1mUoR2QIXbiJcZPJYiPugtoVHWrvrg?=
 =?iso-8859-1?Q?ysSg1WY2o8OZtS42xHqYsOBLlMmocI/rdlj5mCYIgstDWH8xNJO17B/8Gx?=
 =?iso-8859-1?Q?UD72LucPE9Taio50qrjjMJc5DoxYwMFn9cmwNlUOTzYcencbAdy5ZeBb7X?=
 =?iso-8859-1?Q?4yUUNFRqMTtDLGZNkPen249JiuzLQI0vSEuZuRVRZH7gCYZawyAf/x89+9?=
 =?iso-8859-1?Q?L7lSzOIvg+tofD3T1OYPjdKa4LXXgn6hQER3LdH8n15fGlHEOO6fe4CSdU?=
 =?iso-8859-1?Q?lexwKjB0EwXv9WjJoLSSso7Dg4At87kvuUh5I/NKs/tmj49iSuA1YkkzGz?=
 =?iso-8859-1?Q?kxkg9ryueAwd8MVwyy3lf2ii1gJ7WAqWKPsY7sAoW+SpBqTxdKulKS6TDX?=
 =?iso-8859-1?Q?+E1nlX3JmUqfKSMQgqbhzcdVMRBP21tUGI++c1lEwb4aTM5wtAIgnR+Rvl?=
 =?iso-8859-1?Q?CXyQFsADO8Dg+FUD+WpT9Z/7b4OIwU4OQtkoCAqaBSfE2DApeJsCB1v3JQ?=
 =?iso-8859-1?Q?aVksQIfrmZR5XuQwkeAQHd0TumX5dxb7KDW33QBPaU5TT6jjUeurY1PznG?=
 =?iso-8859-1?Q?eZlLfs8fpGj+lOjQJETD1WyVnooGg1aDLU7g3OlCKM671LGoNN/vEOVtBo?=
 =?iso-8859-1?Q?E5SUKCqLLbZMxML3TjWhDM86kiAMs2Mn94/VpZRwMXrfjnXUHs8L6RLTZw?=
 =?iso-8859-1?Q?PjERYoItUrFE1MylE2B/dZyZsCkNHabeGhy5QmYtZA79qwh2HPOtOcpsN0?=
 =?iso-8859-1?Q?krsJ+l51CVrmZ6t1rwc/xFg5+1o6Cs6PLrPIL5NyoY6mdz6QO/dTflW3lJ?=
 =?iso-8859-1?Q?26wEqDKug84AFC1voGDd/jaOyR/yqGOXTLtrW3swYtX9hvrUWbNvD3tsdv?=
 =?iso-8859-1?Q?T6Lr6ejtJ3c01JGIO/+tftO4Mm3XAIE9xa/VKID5BqrwwE+KamJMtp4uor?=
 =?iso-8859-1?Q?0TbWY3TUy+2aSxTluChekwOLJNQqe5BlBecYxULx0na8XW4rWS1StiWZkT?=
 =?iso-8859-1?Q?AKb88AyVnUay/Pgzjn1jSFVjgggSPw1zSiOLoyXqBGzicBhfi8BaUempvt?=
 =?iso-8859-1?Q?nHqzPNz/9uljuk7C5VHN6XI6zgI2vPXe6d3/obHzrliri63BKTdIFQZlUq?=
 =?iso-8859-1?Q?aXc0DDvcAvZ0abx20gPL26QgpFY58kXeNTzmBFwBW1gecZ43hoA5KyPpRX?=
 =?iso-8859-1?Q?A/xfEA2vfPbf85GNGbfGXN7yFep7DTuEpZRsS1ZYj5nXMweS2CWoqBRdOw?=
 =?iso-8859-1?Q?V+HNu94tH0NZwgIJOAymxkLCA7bvlYKzSfWR4K31dQom+r+ljHNgsxsdPk?=
 =?iso-8859-1?Q?4WbCAgPk1mA6G/i8dyuH7KwYHaxnEr8HAxfGGeyNI+6CHCVs0uCep3NGUm?=
 =?iso-8859-1?Q?mv2sOzx2o+Cxrwevsv33f3l3h20y1n6Oc7lBBhO1ioM1HDJ8AoxtJuiktl?=
 =?iso-8859-1?Q?6D7lEp8lRuJ8oFJ+qfL3TXn1nTdnAi1mWugnFA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Xjr4aKpeaCb08i779l3pY5JrNfjB1fGPXufp+e0bcYpKya/ZsNLxgCYJSq?=
 =?iso-8859-1?Q?xo5n/FWo/Kha2WrdarjwdqHAehCIKLCLBuVKhdGNcbimBCvTNAEo2YPBtE?=
 =?iso-8859-1?Q?GqjPN36HkTkrUjmlyNT92m5JHFIf+0rBQu92Pm6JTQy99jMIL3icCBxNJG?=
 =?iso-8859-1?Q?sHYqWQ4yU4FvkBePXdfgmMYWXIsEhSajPNOKDpXiAl4G0/4oZWTie4yzQ3?=
 =?iso-8859-1?Q?lHYncm1UEJUjuMkDItH4ZLczCtIpD4XrpMxuo4T5Kn3rKhAHzoXrY7tZit?=
 =?iso-8859-1?Q?r3Hp79qNmU1r1fWpQ+ESq4xXq0q7K77MKPwxqgHLgfqOtf4rSAqdvCF5bD?=
 =?iso-8859-1?Q?ckKN5gr4KPPVEivu7Vz+KEtQm8xCygAjS3I2Nbrktp48hvuTKEPithgIEn?=
 =?iso-8859-1?Q?/5Xuuy2VxQ5xCCO6MsmrOFRYlvFLn89kNs/YnRDNxZXXXfw+0bbAx2xS0R?=
 =?iso-8859-1?Q?I8ffT/fcwOTGYfo9eOCmDKCQ52XkOF2fF80EtzFiTX/eXnI7O0lwrHH/te?=
 =?iso-8859-1?Q?4z0Y4BsXZ1ZUUinrxzR8poJvU4lujxtQLmiFwohLLIJsjckbv7DpSlZLIh?=
 =?iso-8859-1?Q?nkl5MkPGZs0QoUMLhIN51mKpK3+0QZQD9JBGSiLQW4zplMbdq+NHfPMmUL?=
 =?iso-8859-1?Q?KXOUsiOlKOGYRGeL3q90hz5MlVIT3U51/56zy0TcCC1UFRirNvFww6HsyS?=
 =?iso-8859-1?Q?jcW1RHJW1XXkThsv4D5gyNFsF3W5S2YNxg0TwpMmo8B+P32Zbx+Mljgjgu?=
 =?iso-8859-1?Q?tHphW4+++lpbhWnUpyHdMnK0EqBm+kerhj5tv3BXaUzD3ns/A2oHiabsAJ?=
 =?iso-8859-1?Q?cheYoKCvPLJ4k7ugCENbd4HgGXJRJBl6NqsaKk7TIevKhRfO9N+7Qulcul?=
 =?iso-8859-1?Q?egtsPfgbr0TLgml1n60CSQAs0a9U50szzv/Wa0EIxP5MtVOEV/1MTUXA61?=
 =?iso-8859-1?Q?DQu78nDpelPkr+vrjYli4zdp5De1C0Hidn1CpYi3nvUj67Zc/xt2qh8FXv?=
 =?iso-8859-1?Q?XmKSF9HSxMj1dn008tz/ND1Tpps0dsnywf5srBmOZ3RF1LAC9FB7nrLYDO?=
 =?iso-8859-1?Q?6vXuhCVzomHFnAeqVXBt6Bcn2K/86ZJsjXKw2uPxPVEi85ladlNaWPETMM?=
 =?iso-8859-1?Q?JG/mLilaLUv/Iik4BOshPT4nKqDB3kQsrKd1DdY2Ik/ERYapL7LCMzdOi+?=
 =?iso-8859-1?Q?WNslNiXx9MMzPiBXe557y1kHu2kXGWBie++NljTyuKsowRaRqZ0y3TlDht?=
 =?iso-8859-1?Q?3vE2EUizWB/l2tL0ZBzkPbWAnHmKdj6jPqYQKCCN1T57DfRZLJoPQjyTpJ?=
 =?iso-8859-1?Q?hnDlluIEBugu30ijrqWIdaIc9Ti8OmT7I5X20VZp+DBg5PjF2R1uesKT9p?=
 =?iso-8859-1?Q?//ksrsX4pySZu/tJQdxLrj+QIOogjcgPVgb8Z8OwEdBS1N6dZ7tQ7tFiUJ?=
 =?iso-8859-1?Q?o18h1foJxK4sb9uKdtxyBU5SaPPoNGlINVx3DHGV/BFscuoapAo6zzb5Nj?=
 =?iso-8859-1?Q?WhkJpahqQJBAnLAIctUi3pVYJ09m12TNrBb3pCZW+kQWHJah+DxBve+xK1?=
 =?iso-8859-1?Q?uzTxp/O6S3umqVICEDKiha7KwXVMdgSvQjuUbdcRneguWkuXdrfA5TmnOQ?=
 =?iso-8859-1?Q?/3JvHjp3M0YGdiXKxk/KSe06zQfjQ9F6ZO?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58e23914-bd96-4780-5971-08dcd223c554
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 05:37:05.5728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OvbxonW5z/w3vhjgg3292PAN9i4WRdzgxQvTv/MOe22ezl+BnCul4QfzEIiTnjxeImhupSqP65luAlDcwSkELA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7215
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 1/5] drm/i915/display: Add support for histogram
>=20
> Statistics is generated from the image frame that is coming to display an=
d an
> event is sent to user after reading this histogram data.
> This statistics/histogram is then shared with the user upon getting a req=
uest
> from user. User can then use this histogram and generate an enhancement f=
actor.
> This enhancement factor can be multiplied/added with the incoming pixel d=
ata
> frame.
>=20
> v2: forward declaration in header file along with error handling (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  .../gpu/drm/i915/display/intel_histogram.c    | 205 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_histogram.h    |  78 +++++++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  5 files changed, 287 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index c63fa2133ccb..03caf3a24966 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -264,6 +264,7 @@ i915-y +=3D \
>  	display/intel_hdcp.o \
>  	display/intel_hdcp_gsc.o \
>  	display/intel_hdcp_gsc_message.o \
> +	display/intel_histogram.o \
>  	display/intel_hotplug.o \
>  	display/intel_hotplug_irq.o \
>  	display/intel_hti.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index bd290536a1b7..79d34d6d537d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1537,6 +1537,8 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20
> +	struct intel_histogram *histogram;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> new file mode 100644
> index 000000000000..45e968e00af6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -0,0 +1,205 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>
> +
> +#include "i915_reg.h"
> +#include "i915_drv.h"
> +#include "intel_display.h"
> +#include "intel_histogram.h"
> +#include "intel_display_types.h"
> +#include "intel_de.h"
> +
> +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the
> pipe's current pixel count.
> +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision
> factor for threshold guardband.
> +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> +
> +struct intel_histogram {
> +	struct drm_i915_private *i915;

Lets use intel_display here instead of i915 as I can see this is mostly bei=
ng used for reg read/writes
Read/write/rmw also work with intel_display well.

> +	bool enable;
> +	bool can_enable;
> +	enum pipe pipe;
> +	u32 bindata[HISTOGRAM_BIN_COUNT];
> +};
> +
> +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	/* TODO: Restrictions for enabling histogram */
> +	histogram->can_enable =3D true;
> +
> +	return 0;
> +}
> +
> +static void intel_histogram_enable_dithering(struct drm_i915_private
> *dev_priv,

Use intel_display here
> +					     enum pipe pipe)
> +{
> +	intel_de_rmw(dev_priv, PIPE_MISC(pipe), PIPE_MISC_DITHER_ENABLE,
> +		     PIPE_MISC_DITHER_ENABLE);

So every where below drm_i915_private can be replaced with intel_display
Ditto.

> +}
> +
> +static int intel_histogram_enable(struct intel_crtc *intel_crtc) {
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	int pipe =3D intel_crtc->pipe;
> +	u64 res;
> +	u32 gbandthreshold;
> +
> +	if (!histogram)
> +		return -EINVAL;
> +
> +	if (!histogram->can_enable) {
> +		return -EINVAL;
> +	}

No need for brackets here now atleast

> +
> +	if (histogram->enable)
> +		return 0;
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_histogram_enable_dithering(i915, pipe);
> +
> +	/*
> +	 * enable DPST_CTL Histogram mode
> +	 * Clear DPST_CTL Bin Reg function select to TC
> +	 */

Nit: maybe make it Enable DPST... and If we are mentioning the steps lets a=
dd
some number or points(-)

> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> +		     DPST_CTL_HIST_MODE |
> DPST_CTL_IE_TABLE_VALUE_FORMAT,
> +		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> +		     DPST_CTL_HIST_MODE_HSV |
> +		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> +
> +	/* Re-Visit: check if wait for one vblank is required */
> +	drm_crtc_wait_one_vblank(&intel_crtc->base);
> +
> +	/* TODO: one time programming: Program GuardBand Threshold */
> +	res =3D (intel_crtc->config->hw.adjusted_mode.vtotal *
> +				intel_crtc->config->hw.adjusted_mode.htotal);
> +	gbandthreshold =3D (res *
> 	HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT) /
> +
> 	HISTOGRAM_GUARDBAND_PRECISION_FACTOR;
> +
> +	/* Enable histogram interrupt mode */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_THRESHOLD_GB_MASK |
> +		     DPST_GUARD_INTERRUPT_DELAY_MASK |
> DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
> +
> DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DELAY)
> |
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear pending interrupts has to be done on separate write */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +
> +	histogram->enable =3D true;
> +
> +	return 0;
> +}
> +
> +static void intel_histogram_disable(struct intel_crtc *intel_crtc) {
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	int pipe =3D intel_crtc->pipe;
> +
> +	if (!histogram)
> +		return;
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_histogram_enable_dithering(i915, pipe);
> +
> +	/* Clear pending interrupts and disable interrupts */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_INT_EN |
> DPST_GUARD_HIST_EVENT_STATUS, 0);
> +
> +	/* disable DPST_CTL Histogram mode */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_IE_HIST_EN, 0);
> +
> +	histogram->enable =3D false;
> +}
> +
> +int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
> +{
> +	if (enable)
> +		return intel_histogram_enable(intel_crtc);
> +
> +	intel_histogram_disable(intel_crtc);
> +	return 0;
> +}
> +
> +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32
> +*data) {
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	int pipe =3D intel_crtc->pipe;
> +	int i =3D 0;
> +
> +	if (!histogram)
> +		return -EINVAL;
> +
> +	if (!histogram->enable) {
> +		drm_err(&i915->drm, "histogram not enabled");
> +		return -EINVAL;
> +	}
> +
> +	if (!data) {
> +		drm_err(&i915->drm, "enhancement LUT data is NULL");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * Set DPST_CTL Bin Reg function select to IE
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
> +		     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
> +
> +	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +		intel_de_rmw(i915, DPST_BIN(pipe),
> +			     DPST_BIN_DATA_MASK, data[i]);
> +		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> +	}
> +
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> DPST_CTL_IE_MODI_TABLE_EN,
> +		     DPST_CTL_EN_MULTIPLICATIVE |
> DPST_CTL_IE_MODI_TABLE_EN);
> +
> +	/* Once IE is applied, change DPST CTL to TC */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL,
> DPST_CTL_BIN_REG_FUNC_TC);
> +
> +	return 0;
> +}
> +
> +void intel_histogram_deinit(struct intel_crtc *intel_crtc) {
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	kfree(histogram);
> +}
> +
> +int intel_histogram_init(struct intel_crtc *intel_crtc) {
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram;
> +
> +	/* Allocate histogram internal struct */
> +	histogram =3D kzalloc(sizeof(*histogram), GFP_KERNEL);
> +	if (!histogram) {
> +		return -ENOMEM;
> +	}
> +
> +	intel_crtc->histogram =3D histogram;
> +	histogram->pipe =3D intel_crtc->pipe;
> +	histogram->can_enable =3D false;
> +
> +	histogram->i915 =3D i915;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> new file mode 100644
> index 000000000000..b25091732274
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -0,0 +1,78 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HISTOGRAM_H__
> +#define __INTEL_HISTOGRAM_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc;
> +
> +/* GLOBAL_HIST related registers */
> +#define _DPST_CTL_A					0x490C0
> +#define _DPST_CTL_B					0x491C0
> +#define DPST_CTL(pipe)
> 	_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> +#define DPST_CTL_RESTORE				REG_BIT(28)
> +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_ENHANCEMENT_MODE_MASK
> 	REG_GENMASK(14, 13)
> +#define DPST_CTL_EN_MULTIPLICATIVE
> 	REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> +#define DPST_CTL_BIN_REG_FUNC_TC
> 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 0)
> +#define DPST_CTL_BIN_REG_FUNC_IE
> 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 1)
> +#define DPST_CTL_BIN_REG_MASK
> 	REG_GENMASK(6, 0)
> +#define DPST_CTL_BIN_REG_CLEAR
> 	REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC
> 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC
> 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)
> +#define DPST_CTL_HIST_MODE_YUV
> 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
> +#define DPST_CTL_HIST_MODE_HSV
> 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
> +
> +#define _DPST_GUARD_A					0x490C8
> +#define _DPST_GUARD_B					0x491C8
> +#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe,
> _DPST_GUARD_A, _DPST_GUARD_B)
> +#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
> +#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
> +#define DPST_GUARD_INTERRUPT_DELAY_MASK
> 	REG_GENMASK(29, 22)
> +#define DPST_GUARD_INTERRUPT_DELAY(val)
> 	REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
> +#define DPST_GUARD_THRESHOLD_GB_MASK
> 	REG_GENMASK(21, 0)
> +#define DPST_GUARD_THRESHOLD_GB(val)
> 	REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
> +
> +#define _DPST_BIN_A					0x490C4
> +#define _DPST_BIN_B					0x491C4
> +#define DPST_BIN(pipe)
> 	_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
> +#define DPST_BIN_DATA_MASK
> 	REG_GENMASK(23, 0)
> +#define DPST_BIN_BUSY					REG_BIT(31)
> +
> +#define INTEL_HISTOGRAM_PIPEA			0x90000000
> +#define INTEL_HISTOGRAM_PIPEB			0x90000002
> +#define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> +						     INTEL_HISTOGRAM_PIPEA, \
> +						     INTEL_HISTOGRAM_PIPEB)

I don't think this is the right way. Lets have a file for intel_histogram_r=
egs.h and intel_histogram.h
That will look a lot cleaner.

> +
> +#define HISTOGRAM_BIN_COUNT			32
> +#define HISTOGRAM_IET_LENGTH			33
> +
> +enum intel_global_hist_status {
> +	INTEL_HISTOGRAM_ENABLE,
> +	INTEL_HISTOGRAM_DISABLE,
> +};
> +
> +enum intel_global_histogram {
> +	INTEL_HISTOGRAM,
> +};
> +
> +enum intel_global_hist_lut {
> +	INTEL_HISTOGRAM_PIXEL_FACTOR,
> +};
> +
> +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc); int
> +intel_histogram_update(struct intel_crtc *intel_crtc, bool enable); int
> +intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
> +int intel_histogram_init(struct intel_crtc *intel_crtc); void
> +intel_histogram_deinit(struct intel_crtc *intel_crtc);
> +
> +#endif /* __INTEL_HISTOGRAM_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile in=
dex
> b9670ae09a9e..424ea43016dd 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -238,6 +238,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_hdcp.o \
>  	i915-display/intel_hdcp_gsc_message.o \
>  	i915-display/intel_hdmi.o \
> +	i915-display/intel_histogram.o \
>  	i915-display/intel_hotplug.o \
>  	i915-display/intel_hotplug_irq.o \
>  	i915-display/intel_hti.o \

Lets try to separate xe and i915 changes into different patches as well as =
we can I know its tough to decouple some
Changes but the ones that can be done should be.

Regards,
Suraj Kandpal

> --
> 2.25.1

