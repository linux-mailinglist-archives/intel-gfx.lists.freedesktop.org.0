Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6173D87E219
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 03:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4869110F19B;
	Mon, 18 Mar 2024 02:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLeyMqIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7F210F194
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 02:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710728447; x=1742264447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qgEACRggLWhx9BaLJyTLjvceBgXqLqQtJxrQEqXRYCo=;
 b=MLeyMqIE6coNdGtkmH/iVjO1ORLMnvidNnyAR6kzIKPsGXcbl/SrRhOO
 la9VTZVDgcwD1HDqRqJXz2ba+uvUfhOSDJwyLynWriWOJ65gCg85dAJf3
 0FKPfAHOf3miUgBHU06CupaeDWlnBr0PBxvqcBEeNgEHqudj9sTRzqDyq
 SKihUXiEBZxUa6hZ91mkmsoF2zs2f897ktd5NNWKa8BbwXzfw1QKDO/oH
 zsXj/mmbTLs011Sa0K776BYiBcGcVJb9wD1uJckzjybOSLf4lE3KBfTdG
 cezp0eYG1M0zm4ZIlL8ldBMCVQZOaaGJC3JLhTdljj9B/iq48avTb83o6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16167573"
X-IronPort-AV: E=Sophos;i="6.07,133,1708416000"; d="scan'208";a="16167573"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2024 19:20:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,133,1708416000"; d="scan'208";a="13260239"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Mar 2024 19:20:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Mar 2024 19:20:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Mar 2024 19:20:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 17 Mar 2024 19:20:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 17 Mar 2024 19:20:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htLvheROGsavlGuLqUdHc4aNbb2UoMPh5j63iZOTu0yIHQHk0CAir7ib6p2h8SaGTX5Sa3P4Jd2RkT8jI+aubAz2SJEyyA1Ybq5grYwbtbq4j7C+cRDjGjTnmdWH2eaq7cowQ2INvLPhcOC8VpZFkvWHfi0xGg9SronIsRIw9rK0bxOD9Jizp51aOm+sbkTWrpvFbO9/e7FWc5CqvAb2ndRf+fmiPm1QOI35qOuqqC2FTbSzqt9KElxcuuEVC2ElDpmFVMsnDfSxdge0hzgf37z6Eu0jvKX+iyd7OgiitkTBYUxejAosKgMPaR1m07x8FneSFvzczl7lIlOungH+UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+nwxFIMQMRmLIW3yabKjpCaX5ZFGdsAd7R0ObVt3YY=;
 b=IsY6ftjBPujn6y4ltCI86i+AO9Lw9hyX69N7d5A7o1xYPMw7PhRIBWvGjTL5xObbtQz3iuqbcIAu40TKYtsjJe5+l1xTBSoZPxRTidS7aTafbkt4bl6eyRi36BI5W2w0X/q90WMwBnNw++UtkkHzf3ojiF6OGlTKmdOV9k5J+N5j/kZtU2+Cj5F3WDcLFOxZI8p1X3qQb3PrLnNthtHDSvFnXqKwTbl8Gw15r3CrO7cWb7IcuP4goKVSEQie1UjfqYol4TZYDAp/aMwJrsKBdgr6CT5WehAETesuk0YQbos+4IQQineC+KHcfdZ2LcBkhAiymu/PoxqeJ7Y7JF+VEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by PH7PR11MB7662.namprd11.prod.outlook.com (2603:10b6:510:27d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.24; Mon, 18 Mar
 2024 02:20:43 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::9298:6ed2:d923:6dbf]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::9298:6ed2:d923:6dbf%6]) with mapi id 15.20.7409.009; Mon, 18 Mar 2024
 02:20:43 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Fixed a screen flickering when turning
 on display from off
Thread-Topic: [PATCH] drm/i915/display: Fixed a screen flickering when turning
 on display from off
Thread-Index: AQHab3NESZuTvK6ew06znQJuOQxKE7EqgLQAgA4w8wCABBIbAA==
Date: Mon, 18 Mar 2024 02:20:43 +0000
Message-ID: <PH0PR11MB5128487DB41A99A67B2565D8E02D2@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20240306031348.1344034-1-gareth.yu@intel.com>
 <87il1zzmpt.fsf@intel.com> <ZfQqyLJBAAuNLKZ2@intel.com>
In-Reply-To: <ZfQqyLJBAAuNLKZ2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|PH7PR11MB7662:EE_
x-ms-office365-filtering-correlation-id: ff113d3f-7844-4df8-cf4f-08dc46f203b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jp5Ho7csC4kVCg396MmnOdXu7Jozx0fLs5LTeAP3z3TU5dJ6/BgNCOy77LxKiFuNRukF6OwmhlHMiQbQTK24pwwpu7sQmMQ71TkF4y6e7/xvq/bg9R3zqgltubymPQmygrAd/EAhfXR3gE3LrZQDvsr54DulHzTOgxkaiL51ZuWtbrPTfVIliPPtcUoDT9D6JXV1YNuXdBLbPrwWSolOI5QhbI73r3VohWm5/XFa66oxmYqvIvEnpUpe0QMc7ltekNg8+sDWgvg2I74KFvd89ZhX70ybVtSKuBRol6qzOj8tCQ+Bx8A6Dn1GQ+wcKz3q4x3mIDNs97/+j0R7rklP7GWbnjUKkn1N9mi8ga8o40jGfcva54Jj3UIgmSwctmOa7RxeAQ/HzKG3ieP/7hB/O2GsW5En//UkthOphTiTLT27NFdPiY/vqiYwulYdJglZIBT56y7mE157gF+hBYcnjM0sNbKXi9hIQAxhE62vCPIN+8RPAQ4gmLVcCMPST4Nt/PUg6Pyu6qjhVJrake/i/r6pl0vGGMdfPHYqTI7UTrWjPeb5gMPS9kDN8aqtbvU1t92lmG5CEUCAusK2TVFrx0PRI5nn0cRBF6I/GndeeiaOkWotwPVCsiETIlkcCytn+zvOu/MfNKTtBFqVnC64IMMrJWwA+kSeNtrirsmEBJ7VUDPyQ+cZ6IFZ8F5rVyEsy8Zr4szpY7zvwvr/OLayYfdHICTTJXnLdYwCBKrW0KI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?e8slD/nufZVEYGO8/X5YYPZx9yMVWnYiZ6FYm+t7o0RG44G0FF1B+ahSu7?=
 =?iso-8859-1?Q?vYmL9TkHJvlSlPvb2X/TLL0X7/BARNBw/vgooBanO2TluEnQ56n00kN5aP?=
 =?iso-8859-1?Q?sKR+Y7FG+vCmst+ydE1j+QQeIkwKMlg1BJ1hTSXTDzJAypTiwjrLPfrGtR?=
 =?iso-8859-1?Q?C4FlkuwIZh76iSJl2orTD+I35vasPrA1KhgzrVupa6YMHcAkmp9rA4lz4m?=
 =?iso-8859-1?Q?wZPTCPjVo5SjLCIu1cFmbh3GpevXEwcMOKiXsLbuJEoG/x5jkt9e/UA4qS?=
 =?iso-8859-1?Q?OUN/KOjeXp4pjolz1pI2smZN+7KW7PGncPB0YYmN81SaI5gOFPv6D9MvYU?=
 =?iso-8859-1?Q?NMDOuyXcKKMT36M25Kx5g3czMCpg+TgBi47aw0rBX03gmXtOPGAKyStTtZ?=
 =?iso-8859-1?Q?0QRvOgbdHvgvfvy0tXW6eSvHSaFxXAuxk4WmnSOlfVRcpXyTf2pi2NF7/F?=
 =?iso-8859-1?Q?BmTX+hCdXfUdeSv+CCUc3C6aUp4ihZo5Dffve3LahpbJrUmFZsxFxf18Un?=
 =?iso-8859-1?Q?NQJUcb4k9RknwUMJ+yYEwgr1n8wk3hS120nvYZ0v3S8nUp9DJQLxD10Q/K?=
 =?iso-8859-1?Q?C58BsIHi2Jozt8joVrQ7wlB5cN3+ki59Pbln/RFJIEvTNfoA6xOpLEbQZO?=
 =?iso-8859-1?Q?eFzqABglaZkSvj9HIIH8Y/J+PeKkrsyMreuKo4ai0puyNiCbhk5UZ0WDJN?=
 =?iso-8859-1?Q?71xtb2pqPxYVdvG+Virj6nmoAqMeZeWnUGiFKAKeKUYUUJXpMcyO/axVjq?=
 =?iso-8859-1?Q?o923g0ZLW50Y4i7f2VRF/QDkqUSiT8WsCRgaFpMN4IQR+j35r9r3iUP+0z?=
 =?iso-8859-1?Q?b+UWBisJ/vOv+Go6k/1IkNSTlpFS53OKSQXr39QoZjG2vFILpswoedT3xM?=
 =?iso-8859-1?Q?mLFfCjZwOSGgugKWm/Sr2XpfzllZWRZxTj8sp9zcjF6wrG3yITrtwRLN0l?=
 =?iso-8859-1?Q?xiEQsvlR88rKKglK4hKWSmzPujO2NPHhuV3u+mjRI9WNvUIhAQBdHtujB6?=
 =?iso-8859-1?Q?TWs175BeO23ycn1C/gc+n9J4tuI/CgOwaGQtRpcwxgNxmu6sE7Nw3aIEJe?=
 =?iso-8859-1?Q?o92VdsxZdyIeVD1ft5H85uQ/hXjIZI42cSzNsXcQ1K7QKQ0DvIpgFVALOy?=
 =?iso-8859-1?Q?Jq3pokqXT15L7AGWzKNqfNk6t5nbuG/kjPFKPIOYwu1MWR6+EyP851cANl?=
 =?iso-8859-1?Q?n5rnrcJ+z8D6gqIsGHutjH4XxgQd7ipoSPyVsCkz9zjFC9a6jD8qnP2G5X?=
 =?iso-8859-1?Q?KR2Nf0A4YB2GjhaVnmIX4oo0KIEu9olGqsY6en/ztsdDdx3OM2wiNm11xr?=
 =?iso-8859-1?Q?3/S8pPJ2M7qJRIg/uUSmUjsb8hPOBG3iC0iKl2/gakE/RH7PuHZroqlHlF?=
 =?iso-8859-1?Q?MFbNB37mKDNXeNJJ4SWhu41j9sRNcVX4hh2GmIjw+Y3rdD1yXjd1jDCd/h?=
 =?iso-8859-1?Q?7EV7JRGF5Tb8We0w0vl/SOBInxK/8o0/3XXYjLwkneZt4wy3Ys+yk8aL5x?=
 =?iso-8859-1?Q?zPiHxB5gt3Bl+A45LNgYEYNGNsVBokoz+E6hyCBhIMwCEj6lH1wKh+ZS6D?=
 =?iso-8859-1?Q?XU/STbkZFuhIY1f0PL4p3uN9v9cKUI5IYKtZt8V1Coz8ZrGRznmgUHLLFS?=
 =?iso-8859-1?Q?PYvfP2ucLGPf6lVOIY+URueHPZ4X7uWm4A?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff113d3f-7844-4df8-cf4f-08dc46f203b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2024 02:20:43.7488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q+99NYnvT8nuwPrgQJheR0un3bdg2irSVWmy4wKyoD1KTPZJkqguY3l2h9d1U7WNHGgUDHHsRVDFEEH69N20Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7662
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

The original implementation was 47356eb67285 in Sep 17, 2001. The condition=
 can't be replicated for now.=20

The condition for invalid brightness level includes the minimum available v=
alue. It does not make sense. I've added the new condition in rev #5. Pleas=
e consider if the condition is workable.

-       if (panel->backlight.level <=3D panel->backlight.min) {
+       if (panel->backlight.level < panel->backlight.min) {

Thanks,
Gareth

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Friday, March 15, 2024 7:03 PM
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Yu, Gareth <gareth.yu@intel.com>; intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Fixed a screen flickering when turni=
ng on display from off

On Wed, Mar 06, 2024 at 12:19:42PM +0200, Jani Nikula wrote:
> On Wed, 06 Mar 2024, gareth.yu@intel.com wrote:
> > From: Gareth Yu <gareth.yu@intel.com>
> >
> > Turn on the panel from zero brightness of the last state, the panel=20
> > was set a maximum PWM in the flow. Once the panel initialization is=20
> > completed, the backlight is restored to zero brightness. There is a flc=
kering generated.
>=20
> Please be more precise in describing what exactly happens and when.=20
> Driver probe? Modeset? What restores backlight to zero brightness?
>=20
> Better yet, please file a bug at fdo gitlab, attach full dmesg with=20
> debugs, etc.
>=20
> Before we had the concept of minimum brightness, the minimum was=20
> always 0. And the check was:
>=20
> 	if (level =3D=3D 0)
> 		level =3D max;
>=20
> Historically, the point was, if you're enabling the display and=20
> backlight, you don't want it to be at 0 brightness, because for most=20
> displays that means a black screen.

I think that hack was originally added becaue some silly userspace thingy w=
as setting the backlight level to 0 on suspend/etc. and then forgetting to =
restore it back to a sane value afterwards. Dunno if that nonsense behaviou=
r still persists to this day.

--
Ville Syrj=E4l=E4
Intel
