Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83201AA6E66
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146D410E15B;
	Fri,  2 May 2025 09:46:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+7AEvri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C07A10E15B;
 Fri,  2 May 2025 09:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746179198; x=1777715198;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BASIsd5YCgVvRyEj2XKQFU6bnzxpoeRqM1fr2LbmCro=;
 b=F+7AEvriDBKKH17Jsdsaj1ZLv1GfdHs110gY8jlYtn8tCTN4HbrBiuHE
 KrUZV7icUO+SiTFByAUOu9B3rFFBO95z6O9JdYMrFVhfbXMFvRBXlIO2Y
 ch7P2NtsiS2xLo45WuUcZB6E2KeKj+A2oDcu2frHzFiRyInQOqB8hvDAU
 a1COea2djSx/GigvT20Hf8bOAgU++iFAhUOutZRdS8x7aeTT1RXWEjbNM
 6N0h2y1ouJJve+faMexcNIgTAVGVjb7NWEpddhvHTouP7VAGKBi7N+8Tg
 ECOvktjUzXUXM0vkoxLgXBL2buXtaNJcD6n2tRCd4E6deLhXU84MXslhv w==;
X-CSE-ConnectionGUID: etjh3payRkyP2UXT4RYBoA==
X-CSE-MsgGUID: YqJgq1UeQUisWVl4BAIXqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="65390460"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="65390460"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:46:38 -0700
X-CSE-ConnectionGUID: FfUCI8YlTOGEFs/Jdn+FGQ==
X-CSE-MsgGUID: JAVAkjhMRu2y+V9EOnIxcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139779365"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:46:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 02:46:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 02:46:36 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 02:46:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DNPC5QTUni9YB5uc1VZ0Cq5ghXxtTKrkERguNxkg9Fs428Q+fe4wz41acwQM3YRcloPlfYTma4aHPJvxPy4Ofb3q1+60yJxxgReFWq7pfm0sThUp+AyOYwv5SvhMQMy3SASxbWKXksENSIIxYUTZ6lu/nbvhWQFDL69Sqx5iZYucLP0I8EA/e1SbX408SU9CW2jMUNvjG6JO4ZVQ7j8s4sw8U7k0+iK+pOZ/KCIeGIVJZlr9zWIZL7GVr9fPuM4Oq8Y4Yp1eNTvlEcsoWvK1khHaRaJuujVdxJGRsV9RpOKQLKeiCugrxrUiGuyd0RVEyFbYxvEjmoFFOYBdoFxmFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hTm2XX6zWTDHEBpeeg560dyqdcgBVKeR6QCcRX2gd0o=;
 b=LRW6262Q4XzoR8TyoeGuTqDZrsVhhTyWBBXckwmlU34h9ZNOrZ4SyZggozW+Cr/xHsCcqfna9UzDTJLg6XgMBE74K/Tf++zkTwaBnJkaE7V3QDfi2+RJ5Yin4IGjCAdBcRROK2aYCKEyrurFhT9Fsyi4aWBumK3+nl7iDfULpKT9hVf21BNzbZmjvtjbSUToIEMVyATq/zyKL1JiKflf4iyfhRogQmDNZbrp7skQBklH6YgFDD87cZJeh6ZSfDm6hDqQeWLuGHIp8uM9WZy7Ey8+FVdBqucg9z/pWFB5dpTuGvdNgjcM+yt3wfvNZAx+Ix3B+yPXb2ufdjtcxlVLyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Fri, 2 May
 2025 09:45:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 09:45:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
Thread-Topic: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
Thread-Index: AQHbtVPcEOSans61YEaEeWj9LixJJrO/GVLQgAADioCAAAZRQA==
Date: Fri, 2 May 2025 09:45:48 +0000
Message-ID: <SN7PR11MB6750FAB2F21D4D866220418DE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <bf9aa8e44e18eef41e3077a2966935b4e2649b62.1745524803.git.jani.nikula@intel.com>
 <SN7PR11MB67506BAD789777010E86BFAFE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87r017wen0.fsf@intel.com>
In-Reply-To: <87r017wen0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB8295:EE_
x-ms-office365-filtering-correlation-id: 1f21da56-7af3-4629-87ff-08dd895e1e30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Jc7GfV5C/3MtZZqNCTm87o9kokdafoEzBzsVatDAP5Nk7e+9UcbC9DaylXW4?=
 =?us-ascii?Q?XQwmSqYhTQvd0HqGHgqFkkzHKFUc7S+JWVo4rWIOobFGY4tt5vIJzJamfaxs?=
 =?us-ascii?Q?VhqRnwlOjvjtP5NJPB78bnG0iRGGhKgMxwwdgv0pfGJLoIumTkIeGYMAEG6e?=
 =?us-ascii?Q?/wlYGQKR5gxCSHDaulK8Y3zW5qdYjgrI3q99u2g+sGkg4W3j3zlrNbOsCjip?=
 =?us-ascii?Q?syY/qdXMD8R1BHY5Y1M0VXYDhk13HXUuXKkJP581HIq8bLAmkSETtDYwQgNT?=
 =?us-ascii?Q?xzFHU952+4e1setM4tXIBTwYRQmeybyWsI8ubiBpLBL+xCP3cJqYObkQwyR0?=
 =?us-ascii?Q?PMjuCZomn43nfxHi4JWO7YYm57J0zIoUUWT8obaiNx1C5c8fmaJkR4/3BDUF?=
 =?us-ascii?Q?qXVRQ8qn8YHtarHiFkNpP+Sc2Cy6uKIsBxjymz29DpiwqtXAB7kX2Y+SJiiF?=
 =?us-ascii?Q?5bXA+Wv4HkkdHMy9dYWBQA54wgLY8JFvW9dst9rl1zMuYih0mH004SGG/ITc?=
 =?us-ascii?Q?JNyUPW+4sPwMEL8a0JNokNsXWJG6M14ytrOexcDLnIhwRHPOmrqyxaw96ed8?=
 =?us-ascii?Q?Z+f2KemQSvi5YsMWGxIdegc+iu/2xW7FZSGZPFfvedEJdLNcqWibH64U+R8z?=
 =?us-ascii?Q?Rg1dtgmksaZdSEPxLsIWhOopqTNFfduY344SlL50sBLn75hjkVQRUluoFawx?=
 =?us-ascii?Q?GBaCfnvbrd0LqhMymVjd9li2mQ+amLa8Pao8D8yOk1+QYqzL3/q5GS0zzfIO?=
 =?us-ascii?Q?pQ6rT57O9T69G/2YBN2Nfd1ozgeDS9X26uPLeFF8qtty+f3AdMr/NtN9WHhf?=
 =?us-ascii?Q?RxZEKcNwqlgZG+VYVUCTSifbwJiv5AU6+UYiODJ0EbHFNAsCwoYyLI7SssVp?=
 =?us-ascii?Q?NZB8bUazdSHA2cGLU3jZB082WKO5ISI5awEhxTp1AwaMevOmT7RVXo7XFiig?=
 =?us-ascii?Q?73+UzIXO2t56xM5zYXgXWd2tWTJhBIcSj2eBaOqswYE89HyQdcVD/Df2DhMJ?=
 =?us-ascii?Q?hO/oVnt5fhjmwzygsyw56k0XR7sdMpnl8x504SWZ93xpLLNtjkYrLVJ3qSfr?=
 =?us-ascii?Q?h/KNQoSJp8fkQ4h5vQiZ5fv2Yq7h3ITo+rL2/Kzy6ioVLW/8XGRlQwYJqQaq?=
 =?us-ascii?Q?5TH1MKWNWPuJR6xeMTwZTuPcpPy8QwwXxfcCxO8KmsyrNALvkUw7/RmeCIJ+?=
 =?us-ascii?Q?zTQC4yPIZm5vhOobJuCEws1h9DCCcF34adx8mN1rQX8BQxzZpM01cK6PTVXv?=
 =?us-ascii?Q?G2oREdiivnqq/0QLg1qt/AvpBFzbjZQ+QhqdGOLay80D4tVR7/4o/R+724zq?=
 =?us-ascii?Q?S2sdzkkXun/c/G5iCjDZq7lFYEu0OOggbOtftOd3HgnX2Deu0M8hP1qTSJiy?=
 =?us-ascii?Q?54TihCeZHhs46sCPLpkDO6y8MkMDylW5wLK12V7YjfTjkfTz5RsNH5mxF7X5?=
 =?us-ascii?Q?VSzFNAq/1E8vMre6H9AvshMhJm+zU6tz0AZwL0Ets7oeJCiE0QpDsQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hmPLiciFI+N2j4rSQ2PNT9UDFFKLjuqmRcSUX/0fk6hs+QGAvW3Jpa93RDA7?=
 =?us-ascii?Q?7F1phYI+HSenypudTXpf5YN1mtytfrn0M6YLvFmjwnYCwruh55YVfpSxwQa3?=
 =?us-ascii?Q?h3L5uijaa8eHxm/Wb4k1W6GFQHn7qEB8i1oM22MmGPyEoulB5y2UVBPwM1SS?=
 =?us-ascii?Q?pgUkL8mZMld/gDCbGJbz0OQdzoCIumkoQmjU6ESHjCAko37SUn2nwqNPhaMH?=
 =?us-ascii?Q?qaIpe6HN679iG90sVe7MB28NQ6E8fA+ssUQiekCy/FVJFJpux8xUfamrD8oH?=
 =?us-ascii?Q?+QvNI1mh2n+C3EqdvfB7jWVgkNTAzu3JjCK49EACim3qLL+A/n7Ja2XKknyx?=
 =?us-ascii?Q?QtAsD7QHVOJF5JYQhTDQwuYIVGksIvBodtWmkS1kjXzkMd6dpGSerAcmDS2u?=
 =?us-ascii?Q?Xry3bdSFX+scOzcQbexPm4OZaf6BC4kF8e7H2oG8IGhjzkMVcgkLUSGnvjcb?=
 =?us-ascii?Q?w+uQfXA6HGPbEvRAwYS8L7N5cCHYtjfOA/FTCxE+dBU/rlVtKXIInthLhZbm?=
 =?us-ascii?Q?bSJeE4N6G/vis+Oe6x/cjC5CN2jLQCydldsCXFDaXkOsRWfYcGzIia2vajM7?=
 =?us-ascii?Q?IN73niabf0+Kyrh3zZrv92qg7uvfnPvMOQpRBevM4efdnnAk2jBdohrqAAyd?=
 =?us-ascii?Q?IYnerm63UZVZI/yvUdYU9OSwkzJuMDijhkDrRYdOZTvSw5DsAgGcD2+/kXQc?=
 =?us-ascii?Q?PqXq49LSm7dZttV2ywt8n3Xepf9pOJuTyA9mpb7xMqXnnjqDhFTAgk+h5jom?=
 =?us-ascii?Q?CxDnaIWC2kj9b4HY3w0pc4E2RoEK1akwB4UY0HGiH49LIBK9D930j/DWnEyy?=
 =?us-ascii?Q?98MHXqRFOpA2mCGJVRRxMqAo5IWogw/PpkdWcsQxkvZaBs+BkCjE5mtm0lqK?=
 =?us-ascii?Q?B+UU5JDb0mbBizKuK5/WztOh7KYMXuCKZOLaL5BjEn1tW5ze9CfEz6n4Qc7d?=
 =?us-ascii?Q?qVUH/dHUtp/RPcji5S9NrwBMBrW7Cg9FUY7dJrrxPHf0xh8p1/qddz1IqZUP?=
 =?us-ascii?Q?ZlAToDyKhO3bWFWr81qirhtdvU95D8nKRu3MJskMdvTCo3zKaRej/U+2TZzb?=
 =?us-ascii?Q?G4e6SwdbuG9zVZHNK0fx4JEs/ls80JF55xdVJJ1ufBAlSAjnZ9lEB/T+euqQ?=
 =?us-ascii?Q?11EQc/QG9gOvdV06P8HughAYSwlAixMU/w7Fhehl8xNo8FhmY01sEK+IjPIL?=
 =?us-ascii?Q?KhHlRQztuZRn9K65jBlFBunBmy5Kn8loqsRj6AecACo3ayt60QCuda27xhwE?=
 =?us-ascii?Q?J28egPHDuy8fdDluuTueYdXdp4wvMGsi7Yhcs18GYpfuWPsafK6qUZgOzRxE?=
 =?us-ascii?Q?P5qOovzYC1uTXPEAvxTOE0pnsSiqlUoy4oO46Unu5zk/qUnhgr/5Uoevq24E?=
 =?us-ascii?Q?fBull1LHWBUbuoNqBlml6UBvelNU/7ZPe0O4hNI3q7fs11KlaF6QFsxlsR5c?=
 =?us-ascii?Q?APYnaIHqsBvGDSfWmAgrkaRkhB2b8byOLqYCgRdQKpJLOd0Pv8oXLrDkhEAL?=
 =?us-ascii?Q?Kpl54Gjh9XuLexw4D54M6eSb3VQDvunSlq519/MeQfU5VWDSA2K9vSdO7E1p?=
 =?us-ascii?Q?SuF60+vIW6vGW8skZ8dCbEzg+Bn4rL+FoJVmK9HT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f21da56-7af3-4629-87ff-08dd895e1e30
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 09:45:48.2549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cEmI92Wpiv1Kucq8l/kePfeD/UWep9SZ9FUKsZ78AHvqjxtP1dy2HfYTcDOB9HX9v2EI+5BzlovI+ZZ11zHlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, May 2, 2025 2:53 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to drive=
r
> specific HDCP GSC code
>=20
> On Fri, 02 May 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Friday, April 25, 2025 1:32 AM
> >> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> >> <suraj.kandpal@intel.com>
> >> Subject: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to
> >> driver specific HDCP GSC code
> >>
> >> The driver specific HDCP GSC code will eventually be part of the
> >> driver cores rather than display. Remove the struct intel_display
> >> references from them, and pass struct drm_device instead.
> >>
> >> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_hdcp.c        |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    | 12 ++++++------
> >>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h    |  6 +++---
> >>  .../drm/i915/display/intel_hdcp_gsc_message.c    |  2 +-
> >>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c         | 16 ++++++++-------=
-
> >>  5 files changed, 19 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> index 39bcf8f3d810..3e3038f4ee1f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> @@ -254,7 +254,7 @@ static bool intel_hdcp2_prerequisite(struct
> >> intel_connector *connector)
> >>
> >>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
> >>  	if (USE_HDCP_GSC(display)) {
> >> -		if (!intel_hdcp_gsc_check_status(display))
> >> +		if (!intel_hdcp_gsc_check_status(display->drm))
> >>  			return false;
> >>  	}
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> index 4194ef77f7c3..6a22862d6be1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> @@ -19,14 +19,14 @@ struct intel_hdcp_gsc_context {
> >>  	void *hdcp_cmd_out;
> >>  };
> >>
> >> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
> >> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
> >>  {
> >
> > So the thing is this particular function won't be a part of the drm
> > core seeing this actually is a intel specific Check to see if gsc cs is=
 present or
> not.
>=20
> Not *drm* core, but i915 or xe "driver core", after display has been spli=
t out.
>=20
> With that clarification, does the patch make more sense? :)

Ahh ohkay

In that case
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> BR,
> Jani.
>=20
>=20
> >
> >> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >> +	struct drm_i915_private *i915 =3D to_i915(drm);
> >>  	struct intel_gt *gt =3D i915->media_gt;
> >>  	struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> >>
> >>  	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> >> -		drm_dbg_kms(display->drm,
> >> +		drm_dbg_kms(&i915->drm,
> >>  			    "GSC components required for HDCP2.2 are not
> ready\n");
> >>  		return false;
> >>  	}
> >> @@ -87,9 +87,9 @@ static int intel_hdcp_gsc_initialize_message(struct
> >> drm_i915_private *i915,
> >>  	return err;
> >>  }
> >>
> >> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> >> intel_display *display)
> >> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> >> +drm_device *drm)
> >
> > Same thing here this gsc context is the message we get to send to gsc
> > cs Again intel specific this initialization will be specific to each
> > driver based on Whom it wants to send this data(mei or some other fw
> > component)  Too or do the calculations on driver level itself.
> >
> >>  {
> >> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >> +	struct drm_i915_private *i915 =3D to_i915(drm);
> >>  	struct intel_hdcp_gsc_context *gsc_context;
> >>  	int ret;
> >>
> >> @@ -103,7 +103,7 @@ struct intel_hdcp_gsc_context
> >> *intel_hdcp_gsc_context_alloc(struct intel_display
> >>  	 */
> >>  	ret =3D intel_hdcp_gsc_initialize_message(i915, gsc_context);
> >>  	if (ret) {
> >> -		drm_err(display->drm, "Could not initialize gsc_context\n");
> >> +		drm_err(&i915->drm, "Could not initialize gsc_context\n");
> >>  		kfree(gsc_context);
> >>  		gsc_context =3D ERR_PTR(ret);
> >>  	}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> index e963c1fcc39e..e014336aa2e4 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> @@ -9,15 +9,15 @@
> >>  #include <linux/err.h>
> >>  #include <linux/types.h>
> >>
> >> -struct intel_display;
> >> +struct drm_device;
> >>  struct intel_hdcp_gsc_context;
> >>
> >>  ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context
> *gsc_context,
> >>  				void *msg_in, size_t msg_in_len,
> >>  				void *msg_out, size_t msg_out_len); -bool
> >> intel_hdcp_gsc_check_status(struct intel_display *display);
> >> +bool intel_hdcp_gsc_check_status(struct drm_device *drm);
> >>
> >> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> >> intel_display *display);
> >> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> >> +drm_device *drm);
> >>  void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context
> >> *gsc_context);
> >>
> >>  #endif /* __INTEL_HDCP_GCS_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> index 4226e8705d2b..98967bb148e3 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> @@ -645,7 +645,7 @@ int intel_hdcp_gsc_init(struct intel_display
> >> *display)
> >>
> >>  	mutex_lock(&display->hdcp.hdcp_mutex);
> >>
> >> -	gsc_context =3D intel_hdcp_gsc_context_alloc(display);
> >> +	gsc_context =3D intel_hdcp_gsc_context_alloc(display->drm);
> >>  	if (IS_ERR(gsc_context)) {
> >>  		ret =3D PTR_ERR(gsc_context);
> >>  		kfree(arbiter);
> >> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> index 078916072c10..b35a6f201d4a 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> @@ -30,9 +30,9 @@ struct intel_hdcp_gsc_context {
> >>
> >>  #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
> >>
> >> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
> >> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
> >>  {
> >> -	struct xe_device *xe =3D to_xe_device(display->drm);
> >> +	struct xe_device *xe =3D to_xe_device(drm);
> >>  	struct xe_tile *tile =3D xe_device_get_root_tile(xe);
> >>  	struct xe_gt *gt =3D tile->media_gt;
> >>  	struct xe_gsc *gsc =3D &gt->uc.gsc;
> >> @@ -64,10 +64,9 @@ bool intel_hdcp_gsc_check_status(struct
> >> intel_display
> >> *display)  }
> >>
> >>  /*This function helps allocate memory for the command that we will
> >> send to gsc cs */ -static int
> >> intel_hdcp_gsc_initialize_message(struct intel_display *display,
> >> +static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
> >>  					     struct intel_hdcp_gsc_context
> >> *gsc_context)  {
> >
> > Ditto
> >
> > Regards,
> > Suraj Kandpal
> >
> >> -	struct xe_device *xe =3D to_xe_device(display->drm);
> >>  	struct xe_bo *bo =3D NULL;
> >>  	u64 cmd_in, cmd_out;
> >>  	int ret =3D 0;
> >> @@ -79,7 +78,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> >> intel_display *display,
> >>  				  XE_BO_FLAG_GGTT);
> >>
> >>  	if (IS_ERR(bo)) {
> >> -		drm_err(display->drm, "Failed to allocate bo for HDCP
> >> streaming command!\n");
> >> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming
> >> +command!\n");
> >>  		ret =3D PTR_ERR(bo);
> >>  		goto out;
> >>  	}
> >> @@ -97,8 +96,9 @@ static int intel_hdcp_gsc_initialize_message(struct
> >> intel_display *display,
> >>  	return ret;
> >>  }
> >>
> >> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> >> intel_display *display)
> >> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> >> +drm_device *drm)
> >>  {
> >> +	struct xe_device *xe =3D to_xe_device(drm);
> >>  	struct intel_hdcp_gsc_context *gsc_context;
> >>  	int ret;
> >>
> >> @@ -110,9 +110,9 @@ struct intel_hdcp_gsc_context
> >> *intel_hdcp_gsc_context_alloc(struct intel_display
> >>  	 * NOTE: No need to lock the comp mutex here as it is already
> >>  	 * going to be taken before this function called
> >>  	 */
> >> -	ret =3D intel_hdcp_gsc_initialize_message(display, gsc_context);
> >> +	ret =3D intel_hdcp_gsc_initialize_message(xe, gsc_context);
> >>  	if (ret) {
> >> -		drm_err(display->drm, "Could not initialize gsc_context\n");
> >> +		drm_err(&xe->drm, "Could not initialize gsc_context\n");
> >>  		kfree(gsc_context);
> >>  		gsc_context =3D ERR_PTR(ret);
> >>  	}
> >> --
> >> 2.39.5
> >
>=20
> --
> Jani Nikula, Intel
