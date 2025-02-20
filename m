Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FA7A3D84D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 12:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B2410E940;
	Thu, 20 Feb 2025 11:21:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="esgnwRdb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86FB410E940
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 11:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740050506; x=1771586506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=r7E+spc/YRAVSbTL+oP2r6kwH+jY6oJWqd6H13QUQxk=;
 b=esgnwRdbshuDaJTidjzr36w6mEKKxsIGbD2MAO2Ih2Q+FavKQ5CVQqJh
 L6auN7mgtbuqA1D7ZmJwD2jeuAdhwfWi576DvglsJYULOrLR9QF20Dl5a
 QibAknNyNItqMBMEky/jV0D+r/uQHCKHtWNGDOgVkgMSHLQHL2O3HaOQT
 NecMMbmiy7YZFECui6SqCrQkTVEnlDndKIjLPwXfCHO/3fuXnjMASrz3p
 bPiSmRu4unYdV/KjTEVuOtF8EVMQU7pWNAvp/Y7N4JidQHbhWH4H69VRQ
 uL3zFw/isvHGF10OYj0CHzXsznoMCXAeHF8lp9JYjSahR4JKAXrMq/kN1 w==;
X-CSE-ConnectionGUID: 9KQ94B6JQHmm5Y7uSAO2bw==
X-CSE-MsgGUID: D/HyjlW0QFGSqSSkUVusqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="28420586"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="28420586"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 03:21:39 -0800
X-CSE-ConnectionGUID: Rwvm7w4/QteT7X83mFLSXg==
X-CSE-MsgGUID: ah6hQpviS4qSzw9cL8N6Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="114846216"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 03:21:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 03:21:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 03:21:38 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 03:21:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUpoJYgXVP1zLqiG/iAIhCaJyFI6Is39hrc5oo6g+zGyHBlcrT9BDGtLO3ddfXKPBMHar4OvYqF5K/3OBr9IY2TVmxgzCFk8qEFCYqsYZzjB3r+0oEyhGgCXFxpdMNN2UGGhXsy7dg/mUgqDp/GvQP2wQbIuqjGqj04kW/l/8mNjd+UUaolikkWL7UseggFCCeNHvjlCStXgxEcz2RiskZxALsYDz880/0uMBzsvN8XhLHTtjYqiuRIrn/wNdL4oSJXMqUJQurqctfuIR0PdwWvyFqEkxvf133NjJsznV+uM/QpOWeLMMxR0AJjsKK12G8WaH794NPvXATaUb5Zirw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G9x3MZOnipDZjg1D88VZPOXK+IJ4GiTA0wvUuFG0KH8=;
 b=juRUQ4U/a8dNbj8qWUwMg9/ArTac/ZYwOkDBwk9Ru1qq8jjAfTi09U6CNC6EMCK9w+kHvzDyfCJ6atf0ICnplQ5u5z7N1LbsAV4vmOPKjskKE54i+Fs3ukxWBIUq4JF+eLLpy/ExCKIDQDXVtV1Qigl0Q+4sbt1RNdgdEGyQqvHd4OL3cKzDCiGiO9Lgj3/EdiXUD2iOcMI0slyqHBewORCIngGilWGTr2QJjJP8xzt0zwGXmXsJWvfol3UbnAOQDtnx3/rC39nbpG6BqzDwAbrMHo0iu9vipKIug47woF5lz/hd3yQB3v8D2sqtfMp/2O1YZZ8jo8JFBTAy/Gj8ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by CO1PR11MB4947.namprd11.prod.outlook.com (2603:10b6:303:99::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Thu, 20 Feb
 2025 11:21:16 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746%4]) with mapi id 15.20.8466.015; Thu, 20 Feb 2025
 11:21:16 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Nautiyal, Ankit
 K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/dsc: Change rc parameters calculation for DSC 1.1
Thread-Topic: [PATCH] drm/i915/dsc: Change rc parameters calculation for DSC
 1.1
Thread-Index: AQHbg0cyrgjeSHCrvUGEc64rMnL7orNPsyyAgABS2AA=
Date: Thu, 20 Feb 2025 11:21:16 +0000
Message-ID: <SJ0PR11MB5894EA8D4A29C8F3C814564FF1C42@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20250220032603.434570-1-william.tseng@intel.com>
 <SN7PR11MB6750239F361717E2AF71A4F6E3C42@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750239F361717E2AF71A4F6E3C42@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|CO1PR11MB4947:EE_
x-ms-office365-filtering-correlation-id: b0330280-b5eb-4261-5673-08dd51a0b104
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?37e7v3+6JEjBPg0c4cSwuGnZM6QInUZfs430OnCFCo9GZBywdKwiR3kXmXka?=
 =?us-ascii?Q?kLSAZjRdfZXYV6hSI9ThIuwbWgMnTEv2Nc3Qn+M7WmpW3r89FH2hdO8gAmPx?=
 =?us-ascii?Q?Pa39MeUam+/ijTUclieB4lFAk71XMv/hNf/WOGorj0Kxi6Bz55eiMMHnwHti?=
 =?us-ascii?Q?86SM6R9b4uQLyLo+OcAGTawZkSvjCW9EVgAxVRRRV8ekp9TMy/08AKgzLv+D?=
 =?us-ascii?Q?aQ+WaNQlYxkTAQ8tTIGVjBWn1YGCAoGt4vU9vcxdT3YxG6EKF6ZZ/RYTjXdf?=
 =?us-ascii?Q?zqfD7LRKCP7l9a/jWIUdQ6+kI5cr0dGB9qNZWQ1jX7T5uzgJMTlc8jMGCA3K?=
 =?us-ascii?Q?ijUgrYbMbX/Hk6NkXa2x6IDhEgZ7q4UgkZ8oRAiApHFVQE4lTlAY1/IeFM97?=
 =?us-ascii?Q?6zPUEuCqtk/clty7QDizioc5KsDtzZn/jem8YEb3ymGPNJxfTtEnECCqKTeg?=
 =?us-ascii?Q?yKXwLc8410ruDci/4u3ysDnMBNPUnOfjs2yqTUeivWQ4PNM3EyVQQFASMRU7?=
 =?us-ascii?Q?WIbM4Dl/SEXG9aBaSIFPtYgtUxdaurlL1rk9+qVPVvMVNl3foRwM35GKsT51?=
 =?us-ascii?Q?hOvCm2LfLSZK3lqN23Gr2pQwJnr6CsjGjS03eaMyjlnf2WR9ytkqmru0cES1?=
 =?us-ascii?Q?n5lKI7yBGnWUQQhH7uihWWcgVjAXnSkdmoFy3IZ+CZzH8buiZLlP720MkDbE?=
 =?us-ascii?Q?1u7Zx7ePCOfi0fGqHBNkfYkVrY2pTxymJDWkUEREzJ+dgsbg7e9VZHBLHr3U?=
 =?us-ascii?Q?eCdVjUt8PS2nv2Yw7gDMrspVeq3EDHl0lZ7QiYqa436VryGd4v8yYLacFsXf?=
 =?us-ascii?Q?EuuDfiIG354Hg6JAux9uc2YOUkNOh/2tMsYI3TdedU2qM1n8a1qehN+54EKm?=
 =?us-ascii?Q?zVHzXJ3dPgUOChuWH36NJG8jzKqin2YumRISxjp9XZA89alx1ugo2Qpg1Gur?=
 =?us-ascii?Q?XDXc/YZPWWNuguM4oO3uN+l6+ctXBjLihWnnsHwVpdg4pBCy2BGH0QDOc6IV?=
 =?us-ascii?Q?mXXhaniaK6sWZTG3zpKYD6yi4EVnYq3AbkTMiJyY2fkNHh7A8b2DT3Nm+SL7?=
 =?us-ascii?Q?VVY6oLB2l3+nkRjSFhP1bMr1CoLbp2MsEzdBn8Ac7Ojqa99jJw/0U6eTbJGr?=
 =?us-ascii?Q?d1kc+p5NDo7Dk5N7g3ONmm4JHR4lD30/3x6NiCtDMzjZH8BaaB6o3YFpHuvm?=
 =?us-ascii?Q?xMCgPvg7xWswg7x8ictSvTJDF4OUK6LiJkESgpWDucDujpOfJsOmahXYtjCp?=
 =?us-ascii?Q?sTDcSM9Ejnd3jlIZ1lbW695WbFAJgaNtpayUHchlVEbmqjGijEFGOtgOkgvw?=
 =?us-ascii?Q?J77gKKQ3Hg0hVdAzdtTiKoIoRMYbMMtr8pOzRzlWFECyrwGnwU1iKNKqwnAo?=
 =?us-ascii?Q?KfqTg5mSvtfMeEWtQQZ/7YbyK8CyG6YSayzZJO2L8h5ek9OL6yl1/yxY7I6q?=
 =?us-ascii?Q?Y5csEzFB44co7eV4HXUoy2ACkb4ncX/Y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yMh5JZUbcF80+XLH5BU/3BM4HoOQ86B78SHHL1DN1pjTl+uUEymU07+R9eNH?=
 =?us-ascii?Q?PljARs34muHNYyUnAKz76iY1re4jU8xwwnWDlfJygCTgHCSbk22kzh+V1Rq7?=
 =?us-ascii?Q?AzooSJSApv5XJKaEsh/OucSFHH7BpS6/AJM1upj411q+UIP85MZKA29IE9zV?=
 =?us-ascii?Q?qNkD/4O6GXaCRGBqJ3ovXdF7U8RYM2FJxPP7f00g6xLS616JakIiJJe1yQ9M?=
 =?us-ascii?Q?1WFZ9K4pHMUZvet6kyI4V+tL54RbIUnXlkLTT0MoRRjlRZZqecZ6Rm3KfxvI?=
 =?us-ascii?Q?ILyrMUl6L4MSKkIIXPrIYlJbRk11Si5LCHxAbt8+0UGAXCt9y8ivx3IOIQto?=
 =?us-ascii?Q?0IcBBjTMQ9MWSm+l5t0rZDGIU0aCSmTIzDoHtEEWPS5NHFIAJAOe7dLbeO1m?=
 =?us-ascii?Q?gCB/DeUKKse7cd+qM7JgmDlPTTvlCyHt1tGHHmX3awUHRb/pqjYX6W4VLJOc?=
 =?us-ascii?Q?g/821kgrxy7BCfmA3qoz8p9AtZIE7hlWQ923y0bIjkzyHjHTkYpixjOwIYCT?=
 =?us-ascii?Q?U4s11MK/8Vf8XEDoXv3AJexv5jDKpRFi26iadSefCKK6bOZ8DcYmZaYBVV6y?=
 =?us-ascii?Q?qdvFU7Kj0WCPtBsrQmCD2cwsvF5DAR6wUw0aXAPGCPX4Hf6SV2FNGtq+C9NQ?=
 =?us-ascii?Q?r6l5Z/N3Ue6P2hUsjSuW0VYHXFqxxOt1tKSDBWKiAbBNHZW5+5cdbFRk4JPy?=
 =?us-ascii?Q?Ecy1gvhiefsLo1bUbVVEoiUDKMu7GVNgeI/Aa/UqCFLe3F4AGBcVyqElvhM2?=
 =?us-ascii?Q?VFT/7AuFbKD8ppN49jW9AGsv/OAEFV4bDYbd5S80tstsV2qLX8Z3gshRyWG7?=
 =?us-ascii?Q?sWqKwgFdQN9k5h7uze86YA1Cv/9ctRGvrkpfsLs5XGCb3p6XY1QW6UYgorvM?=
 =?us-ascii?Q?HqfYWuD/VrV0o2FPiwfLCnHh6lFwW7zjRQ09KcGT+BaYhbKhskBNSNpoQI2j?=
 =?us-ascii?Q?btuLX+fAfvpAvLJzkWbGGvj+I9emvO5674KeKTQimcTa0pkv8J8oWRXVK2mF?=
 =?us-ascii?Q?mqCAgdG2tG1MSh0GUPVEl/uWxUvGWdqfW+TvE22Hp6LWiL4oUNyDT8b317Mi?=
 =?us-ascii?Q?tePPlNSPOXqvnj9ZGJ5OrQkOTBBtCXAcTG49G9KRJHw0htNaw6AtNmlkP11M?=
 =?us-ascii?Q?DKmOT8NdxllsBtbsitR8nZLE3xK8OUCXth07ewNFdDtWIQEPzXvmc0L/JSN+?=
 =?us-ascii?Q?nhtc5f390rJ1shJNzAjOQWA2mafBbuEFg/3WnlOc4gO31aSZNtw30MtGTyUY?=
 =?us-ascii?Q?T8wZZkQ2qw63PPJm44YL489NZy9YW55+YHyxEnVg4kr4cVK4LAXepmmAIRlD?=
 =?us-ascii?Q?GI45Pe2aTedLGdO9Hh3su13yeazaQwV2xNJL9Ozrw1nlLR524cwZ6ZHrdu19?=
 =?us-ascii?Q?5dwexm/t95aNaCOdlC378U5/vNgSsEz+HaeUvzRk+sDFYlLZ4UVMnd8ZC2ZW?=
 =?us-ascii?Q?W3hz/t9vMA4YBB9E/w/I03f9zZlul3+0LbQ59xtMOcbOgTCXZgnAgaB2z3E7?=
 =?us-ascii?Q?GQjZzYXCuq4ML2hBZ3cG36tz21M+nJL2vKP6qdtj2enktMLCRuu2dU4UWuql?=
 =?us-ascii?Q?J7MKmyoMWdrAL1SDWiRO5D1Dbr8lccAJ90QLOPkP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0330280-b5eb-4261-5673-08dd51a0b104
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2025 11:21:16.2848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I7TTYQz5eB0QNSGzSWdonN4ly32TVowahTgvzJD2LbTJYYP7x8ZHkvaKtg12vpFbpIOeHIgv2nb786tE29G0XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4947
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
Reply-To: "SN7PR11MB6750239F361717E2AF71A4F6E3C42@SN7PR11MB6750.namprd11.prod.outlook.com"
 <SN7PR11MB6750239F361717E2AF71A4F6E3C42@SN7PR11MB6750.namprd11.prod.outlook.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, February 20, 2025 2:01 PM
> To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Nautiyal, Ankit=
 K
> <ankit.k.nautiyal@intel.com>
> Subject: RE: [PATCH] drm/i915/dsc: Change rc parameters calculation for D=
SC
> 1.1
>=20
>=20
>=20
> > -----Original Message-----
> > From: Tseng, William <william.tseng@intel.com>
> > Sent: Thursday, February 20, 2025 8:56 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Tseng, William <william.tseng@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>; Heikkila, Juha-pekka <juha-
> > pekka.heikkila@intel.com>
> > Subject: [PATCH] drm/i915/dsc: Change rc parameters calculation for
> > DSC 1.1
> >
>=20
>=20
> So to start with this needs to be sent intel-xe mailing list too
>=20
> > When calculating dsc parameters, the rc parameters calculated by
> > calculate_rc_params() may be incorrect in the case of DSC 1.1 and
>=20
> "Maybe" does not work to get the patch merged we need specifically what
> param does not work in calculate rc params so needs some more debug befor=
e
> sending a patch over.
> You can compare the dsc param dump when we use calculate rc params vs
> when we Use the tables
>

Thanks, Suraj.  The wording should be changed.
=20
> > DISPLAY_VER(dev_priv) >=3D 13 and cause noise-like lines displayed on a
> > MIPI DSI panel supporting DSC 1.1. The calculation seems for DSC 1.2
> > only. So, instead of calculate_rc_params(), calculate the rc
> > paramerters with the function
> > drm_dsc_setup_rc_params() for DSC 1.1.
> >
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> > Signed-off-by: William Tseng <william.tseng@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index b355c479eda3..e3443a1d12e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> >  	 * parameters
> >  	 */
>=20
> You need to amend to comment explain the additional conditions
>=20

According to test result, the different parameters are listed below, compar=
ing
the results from calculate_rc_params for DSC 1.2 and drm_dsc_setup_rc_param=
s
for DSC 1.1.

first_line_bpg_offset (14 vs 12),
vdsc_cfg->rc_range_params[1].range_max_qp (5 vs 4),
vdsc_cfg->rc_range_params[2].range_min_qp (2 vs 1),
vdsc_cfg->rc_range_params[2].range_max_qp (7 vs 5)
vdsc_cfg->rc_range_params[3].range_min_qp (2 vs 1),
vdsc_cfg->rc_range_params[3].range_max_qp (7 vs 6)
vdsc_cfg->rc_range_params[4].range_min_qp (4 vs 3),
vdsc_cfg->rc_range_params[4].range_max_qp (8 vs 7)...
...
and so on.
That is why the additional condition is needed for the issue.

> > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > +	if (DISPLAY_VER(dev_priv) >=3D 13 && vdsc_cfg->dsc_version_minor =3D=
=3D
> > 2) {
>=20
> Needs to be >=3D 2
>=20

Yes. It should be >=3D 2.

Please let me know if you have any questions.
Thank you.


Regards
William

> Regards,
> Suraj Kandpal
>=20
> >  		calculate_rc_params(vdsc_cfg);
> >  	} else {
> >  		if ((compressed_bpp =3D=3D 8 ||
> > --
> > 2.34.1

