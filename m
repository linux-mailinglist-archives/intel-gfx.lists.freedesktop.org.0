Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA13985808
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 13:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33D310E021;
	Wed, 25 Sep 2024 11:35:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqqW6Hh4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818E710E021
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 11:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727264115; x=1758800115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I5+QlC09PUrjqvppETa+Rbo/NS11qFmfWoaMz7D98Wc=;
 b=DqqW6Hh413hU9pdTgePJL6xorlC2LG6t6op4TduRp9i8J6uH/4vmx03Z
 pqF4NcOUwMlLJwefDSob5c8A5cLRzQmWNe42b63hkOHbank+DbW6OHyz1
 87GGe4wWluVUTUmjNkmBNIxQsD9em/st/maXiuqsEVzJNMXtHreaHT35e
 5KG1R26JEXsGvVDzv+J26kxmrl3iYKNsVO76WRASYWcXu7rV2nyWjgTQZ
 i8fTyrzEmRvqTf/mCzNgiIBPvqhcJj911FnW9XWgNxoZ8yvQRgtaus3xS
 beYiXfhnvjus2KU04qdSmyFHRkY5QmuPz5Pdm5DMwMzhUDqI0osujfrJz w==;
X-CSE-ConnectionGUID: JP0TijwaQGeRnoYqiDir+g==
X-CSE-MsgGUID: vIOUf225SHat2p290qPHSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="36870055"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="36870055"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 04:35:13 -0700
X-CSE-ConnectionGUID: EGAHn9SrQ6yvBB7MX0p1lg==
X-CSE-MsgGUID: QqX76t8lRr2B3eYlujujNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="109209446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 04:35:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 04:35:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 04:35:10 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 04:35:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w5/LKyPcA6wO6PHpQoZw9kInrzlWT02D3b0UQXe+701s+0BlmTTeLvgfMahCjzaqos6CtoLcYI4ydRmGwK4PHi2XgjF1xwV0O4x7MOel60YfXwV4w9EhiX+1OB8g0itEBbU+CP9D8A7bUzx8CNB7+qUouldW8yEDNOKb2M8mfIjZn0PJG91u712iorWwjZFchdYKrKdW4GLfiSoVZqu5W8nTur9cF0IoA0k4NRB3srMVQWloYRtqSP4nRfXnNaMmn9J4IaRsXX3EKCGtcfi+Gwh+9pxyzOwPgCftxlSIBX2EMYIyEKQoTAlcNfumpSFBgBisx7tgu2xTsW60x+vRGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3KfArUX6xTMeH/X2X4bn2f/xPIh0bLoh3q6ROnP5JJk=;
 b=uEexVX9pGCJUrjoB0G+il1MOZmsy0RoP5c2V3iZ54O9b25X7cReNYUftrOusvy2gS6pcAkU0yEcb7v1qA12Yy2rK7hLpAFxO0yMhjSP/REM9dvZjQZd4e//2NOSgPYSUSg8EiaZrss/o9EeMM9BlY3BE+UCjkQ1XHGlQgYroFzlLT6+/GiwCWwvOr5Sd1Tky0Mo4MH+bxynOD2FAH1uvATippXkfpFOdEWbBZIKaghidBgEKtiUoAR12qYQmYAw/D8bHqlXFDkOHQMh9Fxssmu0DZbtKP0p1O3zusr1J+wmQ6DSeJ8miaoM04K/kNbaBGXjJaaox4JvhSTDaFbh9xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5925.namprd11.prod.outlook.com (2603:10b6:510:143::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Wed, 25 Sep
 2024 11:35:08 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 11:35:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
Thread-Topic: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
Thread-Index: AQHbDxh7dCxvg/Atp0CI8mM9uIBiH7JoMz8AgAAp8tA=
Date: Wed, 25 Sep 2024 11:35:08 +0000
Message-ID: <SN7PR11MB675047F233D10EA3BD80FBD7E3692@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240925065658.1269767-1-suraj.kandpal@intel.com>
 <871q183yeh.fsf@intel.com>
In-Reply-To: <871q183yeh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5925:EE_
x-ms-office365-filtering-correlation-id: 996bcd4e-6746-417c-8b7d-08dcdd561bb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pflFL+mpLmoRSdmV2BGMF5qxHmD3TKuMfl04CFQZt+WNwuMGOCIFhe15wBfE?=
 =?us-ascii?Q?1TElPvfNJUWQRklLf3LeZhzSgEvatapO1oYnLbpi+50Wh5KgcJb4ZnIxyTy3?=
 =?us-ascii?Q?crg0wOhLdjx50NJIFjDyR4RuHi6f6lj+bj2QNzLdZ/nU+I/mKyophY9dS4Uw?=
 =?us-ascii?Q?uAnMNWjxkD61cmzIalSBeILAi8xw2WGH9mTGmNqURFv6+rDPJCamT4HzyIRK?=
 =?us-ascii?Q?1gx52StyMf1/Z5Ub/8geQ60QkN2UIW7i44X02XcF5mi3hDd7Tj+JDvjXDIqZ?=
 =?us-ascii?Q?dnUomSynWhTpR2G3c3U8+bkCmrRoOeyVlkTy+uzAnNGqA8gxD5VN5BLFJFaw?=
 =?us-ascii?Q?yg5lIGpwtX2orsk4mVL8Yi3/qH0CuuwUblGk5POyyAEDpOlTZobCfeaXzp8z?=
 =?us-ascii?Q?aL4jSsHxjLN6TyeaKZx/HOrWpRKhf0N+yjY1J1AGAH9t76Kl1X2wguJR4Txr?=
 =?us-ascii?Q?unK+l4FQ4Zef7Kj4DWaehtyZaxmIoCLGdX5loLzjrvA2egS7S3fQMCUfIAZo?=
 =?us-ascii?Q?8AM4PkVR2wegw0lNai5TDGp4S1cUxRO7yYux6s5Nz6bZCmfYqxukwhEM09LP?=
 =?us-ascii?Q?1ogLydMyYCrRe27LCYhQWDE/ht+gfOhijpCQFCnJthGZFd6FbD9Icz98EnUA?=
 =?us-ascii?Q?tRnmQikbjo6CJcIaEJRXKmGgTHBndI0wFhrQGCMN4GR7jsx29pjRsEwmgoSq?=
 =?us-ascii?Q?HpQGF/87NHdEf6Uh/9j/yFvNPWZ6zqxgVfy9ldq+3fVeY1Zrm35EvdajQDWY?=
 =?us-ascii?Q?PC3C7Ccj4oEnyezLXHHoNChSxgNosPotuvQm0T//QcXIXPl17BkbhvXAmHRC?=
 =?us-ascii?Q?QKXNI4nrLuo7LrzejNnKQWRQpvD8SmM6mqDnqzdVpGOsVgKFKlG7uqXQqiX7?=
 =?us-ascii?Q?0a0idprvnC+97UpDSpdC3QUo3bhbRyopB6seIld86j7t0qKW58Vm+uet99ZO?=
 =?us-ascii?Q?FyXrPzyhTaXGRHc1K9gM8Y8McDcdv8uhLISF8vbT6qDLvMK+w4xO5bvVt+E+?=
 =?us-ascii?Q?Rb9oGIM7GA9D6Ojgea/ZyWmMoEHj98Join1jL4ITeD5eLsKszbaiI/Peir/9?=
 =?us-ascii?Q?kGxQUhKDMBc0NJH7zRZVQYxDqcSnDtwWNkWOIRqnI8oM+Cd+7t64gRhYQ0LM?=
 =?us-ascii?Q?VU0jxSWyvKFfH0omb6rjRm91HRv1dP+M+Cr4NbnEw2My1L2Qa77Z7KElHdnx?=
 =?us-ascii?Q?VTkPHNZMn6HzL+IAoFI4cuTqCzW/R1QSfYvqAV80vEVv83Bhgvboetemo62Z?=
 =?us-ascii?Q?0ZjcFHuWuFEN5LO65/AaUHiOUjwhVZDT7LZufvhf9aMh5HAqvvpP4cAy413w?=
 =?us-ascii?Q?sYSiB/PaownY1mxXRMrSH80hFZ7BFeGvpkV5qTy79YxN9Lx5qafxxdWEVFSD?=
 =?us-ascii?Q?yx5hbLD9BVDGDlapVua6Ab70kU/IUe3Dm09MvYCh4V4G+Plxfw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eDmrzKEUoRS++JR8IyRpvGMxd6DA3OIFQQ84tX+8osCUMAgptS8iRmFPfNnd?=
 =?us-ascii?Q?fR4PsZzmSKU37kFQMGPYLgVnGL6FKqBhrZC5sqVAfPG8zIsSkY18ZTu88L4m?=
 =?us-ascii?Q?jj1ymdj4H9uWUTgyh9BtJ1Gx43ZE7Q8M0oobY3xcHhkBaXBjOry2ZNc3weTx?=
 =?us-ascii?Q?kN0M3AuUF3rkXawCzD9eeOoghrl1J+XPaDDp0Qn827ZLkDaqZQgISo3frlaQ?=
 =?us-ascii?Q?zD7uTmY+5AZg4nQ0MVRCRAZQBKM6c2nql8lOzulqIcPBscfIcG+ot2HU5ha0?=
 =?us-ascii?Q?VtsYGeI6n2Q/RNgcZiAStrQmsdzn9wo6Y18XMnd9ih+a7zQRvVqwLoHjf5r6?=
 =?us-ascii?Q?jEs33Ej7zCp7aKbmIb34w4hnh1jGGJDmGeckQwbUytjiPLacAg0fcDSh4QQ1?=
 =?us-ascii?Q?zJgcIXa9sP+iPWMqcJxgxqPrK7K5KwvuXcy9aIHvT53e38EFgN1YmWzyxRUw?=
 =?us-ascii?Q?55ZZlefk4D1m4GP/daXT7Bfj9vo3YnU/1ARma+8dhL2jS7LPXhDIelbosceQ?=
 =?us-ascii?Q?Pmvu7lwjGVj60vnWX2BZ/gY5iI5KalCS+TxTv9diYwW7ttVqRdsLcCJQMmRb?=
 =?us-ascii?Q?2M6UoAYJQME3i4BwOqB7q3oyHoO4CgrgxIEh+51LbR64FeaumT25820g066Z?=
 =?us-ascii?Q?edqLx2TwVvrtD9g5PXYdbt3817UtyJXMTMqTbtEc/Il1teoa8hGH7E98dpV5?=
 =?us-ascii?Q?K8DDC13OrSM13FO3ytDpopKkhtRxdca7GkN3gUf0HNhlw4/XwYeXDMdzAtOj?=
 =?us-ascii?Q?ak0KWAgDLWp84V6Bu9VYZHDDIsEXz1ktyUuAekxEhom1k5xIVaUlI8cW5CQX?=
 =?us-ascii?Q?wwMQhF9oAwtGaDIGp+Hh7ZdvPPWqbaXsAmOPK/IHjhdlaceHFdsrfNJ9EGuP?=
 =?us-ascii?Q?uswtunqsblW0CLoOBwAEBA21BWCEcuAgh/uhh/b+vYrXKJQg0t7ZUoDV3RPY?=
 =?us-ascii?Q?b8DJFNEYMUAzyakQ+e+arsOWb2Tkj8oi86l+S1NhBXCMPBoW58KOxg9KFwtW?=
 =?us-ascii?Q?XeNCqmQJ/9KCmL8gJ3APok7KoaCtlzbLdMOMaz/gDQeJt9IcbZ5DVgLRU1ux?=
 =?us-ascii?Q?EXc3PSfMoU0IgELWIDoLCh9TLdtbEPTNevC8KefaoWuMVwYFRmLsvN5/waE2?=
 =?us-ascii?Q?BeaxD6V86smmAHlaAPHinGJT/JiT3vAs6p5Dpzl1i2DKSUNurSM/uXGUekX+?=
 =?us-ascii?Q?MFD29y0RucYpV5ZrIrk9YdYIm9zPz/zOaqvrUm7OQfM3Q51aZxZA4oNbiAwJ?=
 =?us-ascii?Q?RbM55PuoqakY41u/OJtZ2vaLGLPDitxvu95okrJ3+nwEX5a1+pofFBN1axRQ?=
 =?us-ascii?Q?AFnHdsSzkM697e/+rBg5TQO9+LfpPcJ9fFRMLykgLBlmnlvZJDLT8v/tZznY?=
 =?us-ascii?Q?t1KpAD51L4YlrNlV6i78BdRWH6b0kqxA8vy63KjldDJpfnENW1lkD6uKem9O?=
 =?us-ascii?Q?o4++phKxaEYd9xXKbYwddq8adhkFPejD3D8P2d5HVA3kcRdLa+GX3f1XzJGJ?=
 =?us-ascii?Q?lQOqkJSNUEzzAeGHFIFoG2n6NwUMofyK/tNpQZlILukb71oIrQNKHxgwYtU7?=
 =?us-ascii?Q?afD6Y31V3ECD8Thic+f3KEGJjxMxgbZBj/1gSWHc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 996bcd4e-6746-417c-8b7d-08dcdd561bb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 11:35:08.0655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WGXaRToN0uXA9GwAXPbekOLBu9EvtKeSe18Bqnlu8FD9aBPFwE8VzXGQk7U777eJOw1A5dQh9S+BGGKX5pEVww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5925
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
> Sent: Wednesday, September 25, 2024 2:26 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Retry first read and writes to
> downstream
>=20
> On Wed, 25 Sep 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Retry the first read and write to downstream at least 10 times with a
> > 50ms delay if not hdcp2 capable. The reason being that
>=20
> What are the 10 times and 50 ms delay based on?
>=20

Multiple trial and errors and getting it working of wd19tb dock, hp type c =
and Lenovo
Dock,

> > during suspend resume Dock usually keep the HDCP2 registers
> > inaccesible causing AUX error. This wouldn't be a big problem if the
> > userspace just kept retrying with some delay while it continues to
> > play low values content but most userpace applications end up throwing
> > an error when it receives one from KMD. This makes sure we give the
> > dock and the sink devices to complete its power cycle and then try
> > HDCP authentication.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 26
> > +++++++++++++++++------
> >  1 file changed, 19 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 2afa92321b08..5f2383c219e8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -1512,7 +1512,7 @@ static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)
> >  	} msgs;
> >  	const struct intel_hdcp_shim *shim =3D hdcp->shim;
> >  	size_t size;
> > -	int ret;
> > +	int ret, i;
> >
> >  	/* Init for seq_num */
> >  	hdcp->seq_num_v =3D 0;
> > @@ -1522,13 +1522,25 @@ static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)
> >  	if (ret < 0)
> >  		return ret;
> >
> > -	ret =3D shim->write_2_2_msg(connector, &msgs.ake_init,
> > -				  sizeof(msgs.ake_init));
> > -	if (ret < 0)
> > -		return ret;
> > +	for (i =3D 0; i <=3D 10; i++) {
>=20
> I'm pretty nitpicky about this. Please avoid <=3D in the for loop if you =
can. Just
> make it the obvious (i =3D 0; i < 10; i++), or if you have 1 try
> + 10 retries, then i < 10 + 1 or i < 11.
>=20
> If the 10 retries is just made up, then maybe just try 10 times total.

Sure will update it to have just < 10

>=20
> > +		if (!intel_hdcp2_get_capability(connector)) {
> > +			msleep(50);
> > +			continue;
> > +		}
>=20
> This changes behaviour for the first try too. Is that intentional? No men=
tion
> in the commit message?

Yes normally when we se that the aux returns a NACK we also see that hdcp2 =
capability suddenly
gets reported as not capable hence we add a little delay to give dock a lit=
tle time to sort itself out.
Will add this in the commit message too.

>=20
> > +
> > +		ret =3D shim->write_2_2_msg(connector, &msgs.ake_init,
> > +					  sizeof(msgs.ake_init));
> > +		if (ret < 0)
> > +			continue;
> > +
> > +		ret =3D shim->read_2_2_msg(connector,
> HDCP_2_2_AKE_SEND_CERT,
> > +					 &msgs.send_cert,
> sizeof(msgs.send_cert));
> > +		if (ret < 0)
> > +			continue;
> > +		else
>=20
> The else is redundant here.

Ohkay we can the if(ret > 0) break
Since we need to come out of the loop as soon as the first write and the re=
ad pass

Regards,
Suraj Kandpal
=20
>=20
> > +			break;
> > +	}
> >
> > -	ret =3D shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
> > -				 &msgs.send_cert, sizeof(msgs.send_cert));
> >  	if (ret < 0)
> >  		return ret;
>=20
> --
> Jani Nikula, Intel
