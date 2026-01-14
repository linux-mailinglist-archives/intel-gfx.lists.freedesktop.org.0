Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643C4D1CA07
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 07:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425C810E30F;
	Wed, 14 Jan 2026 06:03:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NGZCdzev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B8310E30F;
 Wed, 14 Jan 2026 06:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768370597; x=1799906597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IV1uShBCiYJwSD8tYhOXFceIv56nszNHYR+SPOGMmK0=;
 b=NGZCdzevyVDho2ysg6KO0R8S3zCQjJlSDBqjXiop8ndMUoDkx0PqVd2u
 XYwuexMKJh7UuzW4gO2aPRYJ7kTF4fBghg4clAOQxjSWAjDQKR1fhy0u/
 msPUO25xF3XBTZ5TBixEAnRRPSIZ0iRRBBdXVuiH/tsrCf4II6/2gS0mH
 sC1hM4EXWh8BUiM1Bd0QJXELfSOy9eSUbCNeYy9FDyo4tdUKNTS6Q0y/p
 iVWuZOqkgynrqeI6aCxjmUin+mID2V16io1GLhg1LUOfK/Wz6X7dUG7bv
 E+kor4inC4c5vmUfNqKMxYVpXv5r/uF6CjRf2lC+kLXB/EN63Fv4vb6zv Q==;
X-CSE-ConnectionGUID: k0EdnK57QiKJ54BYocOkxw==
X-CSE-MsgGUID: 5dkZRUkxTaa4h6+1GdmEAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69573392"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="69573392"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 22:03:17 -0800
X-CSE-ConnectionGUID: 63BDQOmUSDCby02jTBTcRQ==
X-CSE-MsgGUID: w8gzAynZRMeupzdV0PtwGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209049470"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 22:03:16 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 22:03:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 22:03:16 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 22:03:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MaSNgmb+wx+aIIzaPqJ+H0o5gahXWqEIEzMvB3XPq5dor50z7JUL1qO4lypi3ONUmS+geIKq19IFRnN3au+MlCgOIeL9ok3af7wbMXUhU18VTA5w8W4+W9er7ycP28upAK7LZzscgXjATqzXJ02CazhbYGKZLTlCWEtK6UKWaCpf8puZej9N0X9cAS9YYi35msj8B1cvpu0LxPXHioWEYZu5HdnQSzpjk2cNcHS6bW7lNZikm+5Cy/lykYe6oLFz1dgRJmtERNqqLtw3VIvbxudgTRr17wsUcfrwd0qF59tdV0yYxWPsCTWSrsNgxziIfx3NN7m3u7WH4O34yuX29Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GaSm1kduMhBkeuNMRHC6kWfl4PkwOKNCcx2+lMj/RFQ=;
 b=pYrsOhySR3LYx4RrXj2uFNArCe5Gk9WPHnEdpIdf4LZiYY+eDze7TLgwa9qAf+ui1xnn/9kGMo+Xu6ybvTLkWDPHRHcQwQligzAiwNT7dh3sqrpv7bdUibXlNSgPopHTCVpuBpaQ64ZX7dnKo6aXiGcvZehX3DmL3JkF7IKCtg3/hyTiOfumyItePzalSnBjkDvx6IUkRVDigjHfUhZGXcPthGxzTu/xBrx9zsl52zORyygdBR7uR7Rnzk3cbuZksPpo3Cg8R05iSrJ1dh5sRAupp6plEulfN87HHkyuQVv5v7Xc9DYNnA51JKMX5A2vdzDUo5gRY3jt8sDl8WV2xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 06:03:08 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%6]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 06:03:07 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH v2 3/3] drm/i915/cx0: Rename intel_clear_response_ready
 flag
Thread-Topic: [PATCH v2 3/3] drm/i915/cx0: Rename intel_clear_response_ready
 flag
Thread-Index: AQHchQfxuuVtwa1DfkmbCCi6FDrhh7VRLFHQ
Date: Wed, 14 Jan 2026 06:03:07 +0000
Message-ID: <IA1PR11MB646779E8AEF380DC97860462E38FA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
 <20260114034259.466605-4-suraj.kandpal@intel.com>
In-Reply-To: <20260114034259.466605-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB7644:EE_
x-ms-office365-filtering-correlation-id: e3ba7bce-8f76-4bd1-07e4-08de533296bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AR/MtFZoAhX0XXN+DuQOAvlH+EUEvAkFgCfCW7ywQAVxbGdc30dCcy/cpxXj?=
 =?us-ascii?Q?D1EzrRIKIl2JunxVQmeY8b45l4eJkwatWf61M2RD1JerqJL4IzFVVQ0BkPuC?=
 =?us-ascii?Q?GJuJ5+isZREi3/RnpLQRtdelw8f7snfZkjxjxsxE7GFbMase+XfOJywo/kqH?=
 =?us-ascii?Q?CBX+udNa7bD0aP8omJWc2eGtSR09zuDTD/zKmkQjwTg032MdwHi5YICLTzeR?=
 =?us-ascii?Q?S5TJ/++jVyb8MiZwsw0lS8P4oU0/yiN68eTGtaohxNflnAUgyRGe1NWkBEct?=
 =?us-ascii?Q?RdGfy0N3JhXekL2/CcqI+r4OgeXcx0nIK2ywsf1mblNA3kwJXnbXLj4VuAxJ?=
 =?us-ascii?Q?Z5fCmfZmSNv3dmgZigMeZQ/a/uAyYe3Gq7HTpahvZxlXBBIjf9T6zCN1si3N?=
 =?us-ascii?Q?3ExUu9tzv2NRFs14pD/3l2a3E2SIKnQX9VZmd5dCyvsfclo+uxkskgFwDafj?=
 =?us-ascii?Q?8/FBYvCKWyAhJW3xvat76VJYgHCUTnechBGwDDVinjWSS4vJLby13fHRe1td?=
 =?us-ascii?Q?yADCocVstJS4ydTV3HsnGaGWUbmu1mmd9MCvAVdLjNzr4XdwrAbZEwqHa/kP?=
 =?us-ascii?Q?GrIjY7RlFiW8Wsr1dQeSNvwS8KigpryDpG7GG6pt9vLLxC1vrEPKMf3G1KlW?=
 =?us-ascii?Q?6UuNOplO4ZVGvEBEKNT0M1P/MX8NBLJ7RoMN1VmuyhsVS6xtG+GW497zbhUU?=
 =?us-ascii?Q?9w+giAwrkIpgJAgrx3iKti5Nw+VS0018jgu2YvAH34KZznuaEtoUWPuLOk5P?=
 =?us-ascii?Q?1FDCYB2cyHdM0yMrg6pwQFBuBhplqCSh1DWR3BAfWqpIr4o452h/mHb+G4g5?=
 =?us-ascii?Q?wjJin6mBTUKtVZ9tkYw1DlpMqzpjiyjmdg1UeEU4khDyRKa8e9P0j5BeQ0gN?=
 =?us-ascii?Q?WiSrRGiNKmMyjUslGkRq2fdqVcwBIoe4YNR8u9wptp0iMCotEL2Xa2ueHCuY?=
 =?us-ascii?Q?uEMFOrHgQ9Ra2IEFLkgHXMuUtsjGN8m5TeLxJWIdcZVwjXpHnMQDsgKLkpOt?=
 =?us-ascii?Q?yeK8e2ZTcJmbmnpQAFgpHrmeWOG6cbgyanNY1Ps5svfWqzkAJvpauyjZgsul?=
 =?us-ascii?Q?WHdaDdZwsHa8+6dc6t+btPJ9THabKMK3xC0QZGmV7n++M4Pz9SGdq49xTx6W?=
 =?us-ascii?Q?GNM/FnMYd0qPsFLyxwgOGF4AEdHyZ9OOK+7jXdoEhdoWUQYkUQlaU/9x+RU4?=
 =?us-ascii?Q?s9RfnyThQziMpSmhmeBuxzdXnV9JEHM9psVu+Th/4CmbvphofJNq77v0glQJ?=
 =?us-ascii?Q?6XrJAdBhhFD9d5nd6smhlhni8+oLwsTCt+aXLeBh4VBnJWcosgXi6ooId3V7?=
 =?us-ascii?Q?ryLlqkp6tOfu8WnaclYVQM0X8nYPLTIm+2OX+J4lz8G8i+y9u19DnyEvbEHh?=
 =?us-ascii?Q?JTjP5c8wdcHsGDYMqGUfYGapCjyNPpBqoZnjJL0i2Lm8Dzfy7K70uHIAlbKw?=
 =?us-ascii?Q?zFPFTl3SbjChvs2YLOLLwRmH4LxrItfL96IFdek+/uVrUPQWuYLvtu9OB6kn?=
 =?us-ascii?Q?GAAMXYBA1UTCMsarUy6PipZtGGUjV2i38q/p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CAD6ZoX8QWuTfNbhvuPeNX/HESj3YXlolGlet9+jScX/aW3py/CWxJOYCdwd?=
 =?us-ascii?Q?LY8G8qNpzWHqMCHLh1m9z1azFo99l4O1IJvQdMyO2+Vk1ruzcGTOUniOohfk?=
 =?us-ascii?Q?2Y46GCHv46eSrCem3K4LPjH02yXJS1f3E5lN5WpNY7l4IN9GsOuwNQ3DbIKP?=
 =?us-ascii?Q?v7c8qlemfZZEcacOQKk/9hPdJwIR5AGxd52e0ESyBG/GNRYVkndbhuMBcjpr?=
 =?us-ascii?Q?yDllOmcs+4oEXfCzorS9xjZgZWZa/bZw3oJq1pM/hv786Xq4gkcM3zJSO4vk?=
 =?us-ascii?Q?Cus76q3XgMYKDh0PZs9jouRnT//6hEZRIu+jP9ykQY9lKAz5mm8M782DFIV5?=
 =?us-ascii?Q?nzlH0uB9+bWAqGDnczfMiQmVeEHM+8+YRVtliBxImJ+ePfB7AgaVoCIZypez?=
 =?us-ascii?Q?WZn4OU2jb7CfuFpDc19lgj0hKmoBLAUOH3Z09gciymw/0zUckyrgbCJppPzd?=
 =?us-ascii?Q?YzHO45jKrc+yEHbpPvhEJGFeFEXBipgG7Lz+CjsAfq2fCXc//hP/vx4MWQ4S?=
 =?us-ascii?Q?GQOg7wmaOixjpkR0Yt+vN8q3tPEDr9yjDP6X/0KG7o0JB7ThqyxWNmailr90?=
 =?us-ascii?Q?C3nWx1ynw57TdL6WiXiO5hG7bODgGxT8ASm/F+OmT6W0voZF2vwUspKg0vu1?=
 =?us-ascii?Q?bWmIMgNjVtQsfWSCKZYkqy/R8p4tWFaH3GSzk3Ryz8xcuKViv/QTQJ/nZMXx?=
 =?us-ascii?Q?dC692tMx6kpH1MlBwwnqJDPWLLvD0kF4Mpgx5xX8tFMRagxAUzYO83pQPkuI?=
 =?us-ascii?Q?hzCJQbohBen8BPn01jbSV51c/MF6LYBuzxUNtnEzvuikLj2YXhqgmsKGJJE1?=
 =?us-ascii?Q?PjMvExgNwWFN05Iuq4gmTrzD3wMfBquWKw3x1dTf29UGXANYBedjfl6C943w?=
 =?us-ascii?Q?l+SRFZ+bau97WnmqUj7yS6o8Xc3H7t67C0H3OM7heOEiEf0T0oEXy1FLLoNf?=
 =?us-ascii?Q?+hcFv3EBtoJuy43KBpRcdqGKJq860NOGj/WYXGtFxKrViYuFfQmFlOzyXVvf?=
 =?us-ascii?Q?4e8x+t7z5eEyIpJhNG9SFbzHkJL2Y+PunrDJfsZBpDc+KZGFIplEv9AubxVU?=
 =?us-ascii?Q?C7VYEAAuu6agJxvnGrfshBV38rSN4ICZt6LOmYui97YXs604kSDTBI4EdE2u?=
 =?us-ascii?Q?Nz62QQmChFIVlf5d3pjhdjamZlca08j6RuOFpka9Qy1NYQLiYGY/QbN/4bUw?=
 =?us-ascii?Q?1TvDs65EzxGhBKZENslNj1jPzq61i+USaS4AfMc2Dmr+9jF4ItpzEk27UE6D?=
 =?us-ascii?Q?6pq1gk2vxWyS/V8k2hG8IGuOLurjQc8vYDCtiO5SSBdgBlqlVomk1RjaYZ+q?=
 =?us-ascii?Q?el2WlfSIchZWcTGedjmyCaGtAuGim2YQprn1UG2j0y3oyyjh9zdQXkvMt6LN?=
 =?us-ascii?Q?rylLoMFzTHno7w59dzaiWwYL5bxYnu+VhI4K+7JIWt93LyZx3gzboW6HTA8Y?=
 =?us-ascii?Q?r/X53gDRkzIAQBmUkwWlFuzieyiR6ZRqGZkCTkAC3+1xB2cJFSg/f5aA1W2F?=
 =?us-ascii?Q?FOjx2W7W2Po3bpdh4lTrvnumYGo6Fe2OQYLCWvGWnN2mvGCw4KeZwIDNMWWm?=
 =?us-ascii?Q?AkRdmKQH1ZA44W5q5qDbaekUh+jbQIr9esCd6a1aG/zY755ayJcuJRYYU40T?=
 =?us-ascii?Q?c4wwKO8zGbEAew7qUgJH3cUVmSE52T8Vk9uzNPKGzsvElMrwF3RGBjJJJCbn?=
 =?us-ascii?Q?8hkJ8CcncqbVLGMuOQg43bA644Mz57e3e5bklFaKkvyslp7/j5rabSF2qcPG?=
 =?us-ascii?Q?b4j1L4o87Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ba7bce-8f76-4bd1-07e4-08de533296bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 06:03:07.3940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HW60pUXbRWwkdomOt8IkTynrVN8epptisWB6gDQ93jIKsaeBOo0J9SCFaEO8oGfgq2KMea0rMkvy89h8Slts6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Wednesday, January 14, 2026 9:13 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v2 3/3] drm/i915/cx0: Rename intel_clear_response_ready
> flag
>=20
> Rename the non static intel_clear_response_ready_flag to
> intel_cx0_clear_response_ready_flag so that we follow the naming standard=
s
> of non static function.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 +++++++-------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  4 ++--
> drivers/gpu/drm/i915/display/intel_lt_phy.c  |  2 +-
>  3 files changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 00c7fa9040ee..716b5108b4c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -127,8 +127,8 @@ static void intel_cx0_phy_transaction_end(struct
> intel_encoder *encoder, struct
>  	intel_display_power_put(display, POWER_DOMAIN_DC_OFF,
> wakeref);  }
>=20
> -void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> -				     int lane)
> +void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
> +					 int lane)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> @@ -155,7 +155,7 @@ void intel_cx0_bus_reset(struct intel_encoder
> *encoder, int lane)
>  		return;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>  }
>=20
>  int intel_cx0_wait_for_ack(struct intel_encoder *encoder, @@ -222,7 +222=
,7
> @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
>  		return -ETIMEDOUT;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display,
> port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING | @@ -
> 233,7 +233,7 @@ static int __intel_cx0_read_once(struct intel_encoder
> *encoder,
>  	if (ack < 0)
>  		return ack;
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	/*
>  	 * FIXME: Workaround to let HW to settle @@ -295,7 +295,7 @@
> static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  		return -ETIMEDOUT;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display,
> port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING | @@ -
> 325,7 +325,7 @@ static int __intel_cx0_write_once(struct intel_encoder
> *encoder,
>  		return -EINVAL;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	/*
>  	 * FIXME: Workaround to let HW to settle diff --git
> a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index ae98ac23ea22..87d3bdaca3ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -25,8 +25,8 @@ struct intel_dpll_hw_state;  struct intel_encoder;  str=
uct
> intel_hdmi;
>=20
> -void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> -				     int lane);
> +void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
> +					 int lane);
>  bool intel_encoder_is_c10phy(struct intel_encoder *encoder);  void
> intel_mtl_pll_enable(struct intel_encoder *encoder,
>  			  struct intel_dpll *pll,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 6cdae03ee172..e174ca011d50 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1106,7 +1106,7 @@ static int __intel_lt_phy_p2p_write_once(struct
> intel_encoder *encoder,
>  	 * This is the time PHY takes to settle down after programming the
> PHY.
>  	 */
>  	udelay(150);
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>  	intel_lt_phy_clear_status_p2p(encoder, lane);
>=20
>  	return 0;
> --
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> 2.34.1

