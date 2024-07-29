Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7941693FA29
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 17:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC6510E04F;
	Mon, 29 Jul 2024 15:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dUHp16nv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D454C10E04F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 15:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722268796; x=1753804796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C4Kb82AhWHCVHNKcSPwAkTOvmZLuE7shSwgtLRfcCcA=;
 b=dUHp16nv4qW523AVqfOSzaoz8+4SN65zKgSkEKGjesLeVSFazQbUVAmM
 xTO9tFtJv4ldxI8bkhesf7YMtTY3jybLHUhHQy7yfUwOMiVgry2Cc/610
 HQycDgNlmSJRuUWkhLwXexYvfyscMuaeR71H5j0s73YoJjNYiVJi0rixt
 1pycAPQMrhV+Z70OhYFjYiiyiU77B62tenlz7QYf8kJ8UzsXQuuntfKGG
 v5O1OWHWAUXDDrIn6Omn6rmZtW/v4pF2xqPmhA8l0RASB5IWlywWlFMZt
 59AulrumhRrR2V79er3N5izPiKYfNKUb0qgyJl5yfPcs1ZVkJMjV30ZzD Q==;
X-CSE-ConnectionGUID: 78hPzfllRWa7feEtMnTK/Q==
X-CSE-MsgGUID: dp++dPubQRWjIHrNZgU7VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19917808"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19917808"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 08:59:56 -0700
X-CSE-ConnectionGUID: Gf2QH2SXTwOpiaePtCBb3Q==
X-CSE-MsgGUID: nY6mr6GeS0OpQKcVgsYDaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="54833171"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 08:59:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 08:59:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 08:59:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 08:59:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 08:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P3ZsE0dFAoqBG2DL4XYkkZ8MuAm+vKqoe7KH+jxWbs4eItCOdKuxUpqF3zcukzGoX44cEvj0dNxxLlyvfndT3rHN3BfGvondCfKVComDPvQUerRBiOoUcIH7Dw8kvQvuAVFWdZDq4uCHc5eMh+N3zFhlo3tTO//3n1unAwz7gSNqPV+g+dO7nqPgM9U8c6aUROs6D+ojVImbr78Kfc7AiwSf6Lg4dlJiD9OMsS/7F/USzX2EdcUe9WG/LYR8gSaKdxsfMgUcMFodoffUJjpEONlmFAZVH2qpEtK5OC7XhztTpC+q73kFmSgFZYm4dreyioCp6IQa6x3noDpHtjHLww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zkIiYwn/3ClKf5LDaIPh2gVZrRV3htoc7atUQtyUs+w=;
 b=DmLNOcidnieAMyHMPD1jbIouUt231lMW8/HqPlNEgR+LAO1kwiOoxUnSFLn0fCRi8AO0PwqffnUC1KoB7HIxrHM4A6+7V+AseSsmmSz6bzkyGms+l31gjCwR3VZDoDpO0spKJlk7IMtA097O3N6B8SSseyPS1QH0PNn4ODdOuF/ugmpq9vUaARqOb6aOgYwFFLz5OpKPSbMj1VoKTXz6SdvoJ85wjJxjz2vZ4Lc4YmFjQrf/bKTgIYbojLymmwTEkGjviul7cQ3PSa2X2m6ckHugdwPO2Sl10VCPEF++7aFgfIcpgJjCcjPkur35uQOAm19RtsBRT0+L2z1hLKKpLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 15:59:47 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 15:59:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v2 09/14] drm/i915/dp_mst: Reduce the link parameters in
 BW order after LT failures
Thread-Topic: [PATCH v2 09/14] drm/i915/dp_mst: Reduce the link parameters in
 BW order after LT failures
Thread-Index: AQHa4cXiDott52nQ0EWadTn70JLGDLIN3NKw
Date: Mon, 29 Jul 2024 15:59:46 +0000
Message-ID: <IA0PR11MB73075ABD4F676C04A2001710BAB72@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240722165503.2084999-10-imre.deak@intel.com>
 <20240729144458.2763667-1-imre.deak@intel.com>
In-Reply-To: <20240729144458.2763667-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB8384:EE_
x-ms-office365-filtering-correlation-id: 2c190011-3144-46f6-e1d7-08dcafe77849
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?26iXcdnoJMC+hyJzSKtFdEQYsf/AL/8jfTc0Ldw1OGDYzDrD0HFZyB3zHzr7?=
 =?us-ascii?Q?cRlxvPmk5FUXTXxXWeIY595X8YShKMVbUjRBPDb/c1R5WXxNfv33vLmAO80b?=
 =?us-ascii?Q?mxop0YQS/gEXuvLdzuV/QscRDTw2+aoOYhiDkfxS+3rfbDUSQ1FK5BEL+OTq?=
 =?us-ascii?Q?NfyTzsetM9u9GJzKvjG6lbShsGl1ChUVBoBTXc8/wdAYR0LJDdLP5ZztwMLF?=
 =?us-ascii?Q?R7PeS9zFVxGiAuKz6Sg9PJatTuJrDeRCZ6ogO3XSa9rrzqLgDnuHmBV+KR1v?=
 =?us-ascii?Q?sOkZspe+w1Zov2UNuld0eVAYhe9iGcI11oYRfGPTkz2xqZYo94RqHcuxBYXu?=
 =?us-ascii?Q?hkwki35aXPda2D8y9zhoriy+rHDdyrVa2d/MEZyTiGdvWnas33fX7TWOCfxP?=
 =?us-ascii?Q?vuV22l4xPCmWcd0uerMtVfnSI4Bwvc2XFhnT21Wj9qW5goPPNHOpmu4kloyr?=
 =?us-ascii?Q?DfstZvXcw3DtVrBElOJe03CuSNJrSjHKZq1zWoAjZ8V1L7xXwNp/S7yWmYJp?=
 =?us-ascii?Q?BbSpA1juLuS1afymMl3rFqeaeaHIGGy1r1P1y01DiVgX8DSoe6MKHNBPVSk2?=
 =?us-ascii?Q?cmRDuuCfDp44g9rkM9pBlxmlanXn4Ra1rR05GOfV4KTfZSsch7C1xy2WdDeU?=
 =?us-ascii?Q?9ZSIT7pTjPBNdrpo3Ma+iLdbkyjCsSuBi7o08NoesSbMDItbSkM9sc5GezGZ?=
 =?us-ascii?Q?/KmgICYj2Zh9WuSyH/eqPrJCeE5x7VLK4Z0+EgpAve2Mbqx85gJjPs14F892?=
 =?us-ascii?Q?5/AwobDNzCRI1ZW7Qp0GYdlu/GO6NaDAfbRjpkIOg9X3fOrbQFOPM+1F0hg5?=
 =?us-ascii?Q?4plsorVcSfIXzf+aE49fJtpzD080uFvHJH/MIGeShwsTgE/6kYRnSN0yo/a2?=
 =?us-ascii?Q?9LOvaU9/TblIJNQMFLYW5NLH3CM6QFNt4VJf4UeMwA3O9+xPXueDNLb52rkx?=
 =?us-ascii?Q?ao15UQ9ZEHZWR8qLbrVaomtR60knzk5UjAXqBapOcO03mlzVv38ParACLKyG?=
 =?us-ascii?Q?niScAF4EhWnH/mF+cxtf5xj/aNJ+HaBW2NaD6K92whbW6+ZNoCtCth3cZ0mY?=
 =?us-ascii?Q?qoGpaYS/UpkDkVrMcNpsB1k+okjZW/BfqXStvvOKyoAYNphCLnD+638qsOsS?=
 =?us-ascii?Q?DyR7kc7UFeiisQn/45IlG/OJs2SXLnKVrHLhFb3aZ4IdZ43HoJTM+lCyBIE9?=
 =?us-ascii?Q?OHVlg9SMQjt3z2kHJysjSILqMbgqdI+JWg7VimDtHQUHZgc688LkBfVBM0Fp?=
 =?us-ascii?Q?pWmMDaJInPVEjWHsO4mWGmAnwQqWofCST12k9qbSfgdLaWXf4wM/OXdMCFLJ?=
 =?us-ascii?Q?AmMTB7H4RskFf+uGPo4HI5WBJjPaGQjz9N8SgO4ZXZ/XgaMtUBWv399K3LKQ?=
 =?us-ascii?Q?1VJD3sw1GrJyWhSeWaqjerr/H6CFCoplWKF16d0ZeAsA8URXXw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BTLSEvEw17RgoJTLplGfzDpE8uQsGfoOlcxXTSq5hX5MN88/Mkquj5uYVlux?=
 =?us-ascii?Q?Zd/tFxr9CAG6BbiRr/1+XRro1yfs8/Qj+Z4x9epZ3oLM8hkJGk/afE8X5tfe?=
 =?us-ascii?Q?tELQ9Gv+/mCr62IaL0iY0wbenmtVqq5Qdf6uCy2ZMs32JrUwQJH5V9186sWk?=
 =?us-ascii?Q?vf1vJjHUceaLp88oHWUqnNE/QeSS9PuTATb84OJfzo7GEWZ9IkHlQ/+Jp6L+?=
 =?us-ascii?Q?nRdL/Az2BRPRivNg1tOS4y3xAwua4pha50i1yRpav+zrVfg//n1+/IJ23Hpn?=
 =?us-ascii?Q?ZbUcyWhuXUijHoxeNGFC/RfEHntl7V5yEQNqRCA8cMNYmNuBdEeSd5FF3l66?=
 =?us-ascii?Q?24AqNQf+iv0tZOfTuF0fgJ6Wt6QdqJmsk86mirNOrlmiVEBLnDBrRh6AtxWp?=
 =?us-ascii?Q?YujHD1pmFp1JztTWmWl6TgePYSM1sx6NQRmfwmQrHhhjCedBZac0KhU89R6/?=
 =?us-ascii?Q?HK6yKgS60Ihd6HFNU2sFXC+jL/l1ZS0sh952PXmHGvjihvcHjLUucOCiTHxf?=
 =?us-ascii?Q?kPfHN1Bf+Q/RI8KYeX6Qvu91PDCOhb+m3WFyLHgmPnl/vCQoR8vMaE9PtcjT?=
 =?us-ascii?Q?4cYj24ioZrPSVUTjfIvnRfRkkF9lb1a/0MeHW+9BkHhrdWr+RC03GO7J44pk?=
 =?us-ascii?Q?X9DrTOS6zSxwkAyK6+rH4lVLc3P6FW+dEuo2vYtvznDP4m30koHiqu+eLAJL?=
 =?us-ascii?Q?Dt2QPgdoUu2ApvfUR5Rq5QVzlLEa8bPVa73axoIGmvDBEkOscSDbRHXRn89Z?=
 =?us-ascii?Q?aAOf58O+dbOQEbgAWLVZAw/gOM/hoL8Ef95qW2DNTEuzVBhviWIMAL14q3nI?=
 =?us-ascii?Q?wisrlIN4hA/9H3/hlO8tIfad/Hg4jNyeA9Z5ejVDV/DNg+bd5OQxWdWm+ne8?=
 =?us-ascii?Q?+KoEjerCCVZ63DEegPW0CUXBBaIdoAp2n+08H5TSFtGFYsqwTPMH4+hz+hqn?=
 =?us-ascii?Q?7yYKHBOFRiuSkrKRGVP6LovaNu6hzwGE/+2/1gUqsdowhLr4RkQBD48UrCxq?=
 =?us-ascii?Q?mRBsmmA/IV3XgyU6llC/LqalQCJc7YjBejamYyf6GTE94qp+EEx1PjYbGTe1?=
 =?us-ascii?Q?JIF3Ws9gODXLlmAmttQICob32pN9stwzYLvzs8zDG4NOddaBvfShvxymUPDC?=
 =?us-ascii?Q?v5EfSFYxriMJ8HDlB5rzxeWKVhEtd4BMCYz8mobvJWmex2+Oud6/Nl3hIHet?=
 =?us-ascii?Q?bhjB2OG098Hv8QOOpT5TDwcBamkqN77EzVBZrAwaNslo4T5mdTN/+Fn4jznl?=
 =?us-ascii?Q?CmT4lCE6p3hkQ5vBMDwJGDtmczxyRdk+A2qT5SUKKXwarQ/9wqwGes+X7fVb?=
 =?us-ascii?Q?7ndOlv6CgbQAH/r1d+SSHMtOuxUCoVitYheN60MfsgfViYkj9G/6MGj2kJso?=
 =?us-ascii?Q?fDjK+w7gFwG9SXi46Arf6ex/JwPxfXDiQ5ZI07qlWv1v2SOPZy7NdEvLYWac?=
 =?us-ascii?Q?7S5agUsR4oD0HXO8N7P7ZU6FOvGhaYazeVtOVv676M89eGCh+g3rYE7Vl0iG?=
 =?us-ascii?Q?TMAJithrSAB41jrY+UDbbwBM21Cto1WwWslOsCTp6YANMPrkCnQZE26fl26U?=
 =?us-ascii?Q?9JZRBNC58ZhEzIslABn+NY3b+Isml6e1kWxNCgOl74UaL8Sjh99K+ykdbDLj?=
 =?us-ascii?Q?GKX1PfRLF++omSaJ526EZV/U0zaHjw7Crl1t2PydTVLb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c190011-3144-46f6-e1d7-08dcafe77849
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 15:59:46.9600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 58kcoaC0naoXuccG0q8A8Tg8qQD9dMQ3AWBik/s0P6I6fuOoEv5FmpKrrti4Pkx4BcwftT6+KC87BLthHxM1kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, July 29, 2024 8:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: [PATCH v2 09/14] drm/i915/dp_mst: Reduce the link parameters in =
BW
> order after LT failures
>=20
> On MST links - at least for some MST branch devices - the list of modes
> returned to users on an enabled link depends on the current link rate/lan=
e
> count parameters (besides the DPRX link capabilities, any MST branch BW l=
imit
> and the maximum link parameters reduced after LT failures). In particular=
 the
> MST branch BW limit may depend on the link rate/lane count parameters
> programmed to DPCD. After an LT failure and limiting the maximum link
> parameters accordingly, users should see a mode list reflecting these new=
 limits.
> However with the current fallback order this isn't ensured, as the new li=
mit
> could allow for modes requiring a higher link BW, but these modes will be
> filtered out due to the enabled link's lower link BW.
>=20
> Ensure that the mode list changes in a consistent way after a link traini=
ng
> failure and reducing the link parameters by changing the fallback order o=
n MST
> links to happen in BW order.
>=20
> v2:
> -
> s/INTEL_DP_MAX_SUPPORTED_LANE_COUNTS/INTEL_DP_MAX_SUPPORTED_L
> ANE_CONFIGS
>   and s/num_common_lane_counts/num_common_lane_configs to make the
>   difference wrt. max lane counts clearer. (Suraj)
> - Add a TODO comment to make the SST fallback logic work the same way as
>   MST. (Arun)
> - Use sort_r()'s default swap function instead of a custom one.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
>  .../drm/i915/display/intel_display_types.h    |  12 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 103 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
>  .../drm/i915/display/intel_dp_link_training.c |  44 +++++++-
>  4 files changed, 159 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 3501125c55158..ac98bb57456e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1778,6 +1778,18 @@ struct intel_dp {
>  	int common_rates[DP_MAX_SUPPORTED_RATES];
>  	struct {
>  		/* TODO: move the rest of link specific fields to here */
> +		/* common rate,lane_count configs in bw order */
> +		int num_configs;
> +#define INTEL_DP_MAX_LANE_COUNT			4
> +#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS
> 	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
> +#define INTEL_DP_LANE_COUNT_EXP_BITS
> 	order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
> +#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) -
> INTEL_DP_LANE_COUNT_EXP_BITS)
> +#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES
> * \
> +
> INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
> +		struct intel_dp_link_config {
> +			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> +			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> +		} configs[INTEL_DP_MAX_LINK_CONFIGS];
>  		/* Max lane count for the current link */
>  		int max_lane_count;
>  		/* Max rate for the current link */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8ff1e80d178a5..53c7fd4eee2b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -29,6 +29,7 @@
>  #include <linux/i2c.h>
>  #include <linux/notifier.h>
>  #include <linux/slab.h>
> +#include <linux/sort.h>
>  #include <linux/string_helpers.h>
>  #include <linux/timekeeping.h>
>  #include <linux/types.h>
> @@ -634,6 +635,106 @@ int intel_dp_rate_index(const int *rates, int len, =
int
> rate)
>  	return -1;
>  }
>=20
> +static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> +				     const struct intel_dp_link_config *lc) {
> +	return intel_dp_common_rate(intel_dp, lc->link_rate_idx); }
> +
> +static int intel_dp_link_config_lane_count(const struct
> +intel_dp_link_config *lc) {
> +	return 1 << lc->lane_count_exp;
> +}
> +
> +static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> +				   const struct intel_dp_link_config *lc) {
> +	return
> drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> +					 intel_dp_link_config_lane_count(lc));
> +}
> +
> +static int link_config_cmp_by_bw(const void *a, const void *b, const
> +void *p) {
> +	struct intel_dp *intel_dp =3D (struct intel_dp *)p;	/* remove const */
> +	const struct intel_dp_link_config *lc_a =3D a;
> +	const struct intel_dp_link_config *lc_b =3D b;
> +	int bw_a =3D intel_dp_link_config_bw(intel_dp, lc_a);
> +	int bw_b =3D intel_dp_link_config_bw(intel_dp, lc_b);
> +
> +	if (bw_a !=3D bw_b)
> +		return bw_a - bw_b;
> +
> +	return intel_dp_link_config_rate(intel_dp, lc_a) -
> +	       intel_dp_link_config_rate(intel_dp, lc_b); }
> +
> +static void intel_dp_link_config_init(struct intel_dp *intel_dp) {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct intel_dp_link_config *lc;
> +	int num_common_lane_configs;
> +	int i;
> +	int j;
> +
> +	if (drm_WARN_ON(&i915->drm,
> !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
> +		return;
> +
> +	num_common_lane_configs =3D
> +ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
> +
> +	if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates *
> num_common_lane_configs >
> +				    ARRAY_SIZE(intel_dp->link.configs)))
> +		return;
> +
> +	intel_dp->link.num_configs =3D intel_dp->num_common_rates *
> +num_common_lane_configs;
> +
> +	lc =3D &intel_dp->link.configs[0];
> +	for (i =3D 0; i < intel_dp->num_common_rates; i++) {
> +		for (j =3D 0; j < num_common_lane_configs; j++) {
> +			lc->lane_count_exp =3D j;
> +			lc->link_rate_idx =3D i;
> +
> +			lc++;
> +		}
> +	}
> +
> +	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
> +	       sizeof(intel_dp->link.configs[0]),
> +	       link_config_cmp_by_bw, NULL,
> +	       intel_dp);
> +}
> +
> +void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int
> +*link_rate, int *lane_count) {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	const struct intel_dp_link_config *lc;
> +
> +	if (drm_WARN_ON(&i915->drm, idx < 0 || idx >=3D intel_dp-
> >link.num_configs))
> +		idx =3D 0;
> +
> +	lc =3D &intel_dp->link.configs[idx];
> +
> +	*link_rate =3D intel_dp_link_config_rate(intel_dp, lc);
> +	*lane_count =3D intel_dp_link_config_lane_count(lc);
> +}
> +
> +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> +link_rate, int lane_count) {
> +	int link_rate_idx =3D intel_dp_rate_index(intel_dp->common_rates,
> intel_dp->num_common_rates,
> +						link_rate);
> +	int lane_count_exp =3D ilog2(lane_count);
> +	int i;
> +
> +	for (i =3D 0; i < intel_dp->link.num_configs; i++) {
> +		const struct intel_dp_link_config *lc =3D &intel_dp-
> >link.configs[i];
> +
> +		if (lc->lane_count_exp =3D=3D lane_count_exp &&
> +		    lc->link_rate_idx =3D=3D link_rate_idx)
> +			return i;
> +	}
> +
> +	return -1;
> +}
> +
>  static void intel_dp_set_common_rates(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp); @@ -652,6
> +753,8 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp=
)
>  		intel_dp->common_rates[0] =3D 162000;
>  		intel_dp->num_common_rates =3D 1;
>  	}
> +
> +	intel_dp_link_config_init(intel_dp);
>  }
>=20
>  static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int li=
nk_rate,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 9be539edf817b..1b9aaddd8c35c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -107,6 +107,8 @@ int intel_dp_max_common_rate(struct intel_dp
> *intel_dp);  int intel_dp_max_common_lane_count(struct intel_dp *intel_dp=
);
> int intel_dp_common_rate(struct intel_dp *intel_dp, int index);  int
> intel_dp_rate_index(const int *rates, int len, int rate);
> +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> +link_rate, int lane_count); void intel_dp_link_config_get(struct
> +intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
>  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);  void
> intel_dp_reset_link_params(struct intel_dp *intel_dp);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 214c8858b8a94..86d58a4c8453f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1170,6 +1170,41 @@ static bool
> intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
>  	return true;
>  }
>=20
> +static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
> +					   const struct intel_crtc_state
> *crtc_state,
> +					   int *new_link_rate, int
> *new_lane_count) {
> +	int link_rate;
> +	int lane_count;
> +	int i;
> +
> +	i =3D intel_dp_link_config_index(intel_dp, crtc_state->port_clock,
> crtc_state->lane_count);
> +	for (i--; i >=3D 0; i--) {
> +		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
> +
> +		if ((intel_dp->link.force_rate &&
> +		     intel_dp->link.force_rate !=3D link_rate) ||
> +		    (intel_dp->link.force_lane_count &&
> +		     intel_dp->link.force_lane_count !=3D lane_count))
> +			continue;
> +
> +		/* TODO: Make switching from UHBR to non-UHBR rates work.
> */
> +		if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=3D
> +		    drm_dp_is_uhbr_rate(link_rate))
> +			continue;
> +
> +		break;
> +	}
> +
> +	if (i < 0)
> +		return false;
> +
> +	*new_link_rate =3D link_rate;
> +	*new_lane_count =3D lane_count;
> +
> +	return true;
> +}
> +
>  static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)=
  {
>  	int rate_index;
> @@ -1231,8 +1266,13 @@ static bool
> reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,  static =
bool
> reduce_link_params(struct intel_dp *intel_dp, const struct intel_crtc_sta=
te
> *crtc_state,
>  			       int *new_link_rate, int *new_lane_count)  {
> -	return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> -						     new_link_rate,
> new_lane_count);
> +	/* TODO: Use the same fallback logic on SST as on MST. */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		return reduce_link_params_in_bw_order(intel_dp, crtc_state,
> +						      new_link_rate,
> new_lane_count);
> +	else
> +		return reduce_link_params_in_rate_lane_order(intel_dp,
> crtc_state,
> +							     new_link_rate,
> new_lane_count);
>  }
>=20
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *inte=
l_dp,
> --
> 2.44.2

