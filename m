Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D0FB2C8DD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 17:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D412810E637;
	Tue, 19 Aug 2025 15:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EBIWKQ9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C527210E644;
 Tue, 19 Aug 2025 15:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755619081; x=1787155081;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x3xhx51UMRFP9NiGocMD+b3fVhpM5FGYrHrAxb2YSao=;
 b=EBIWKQ9iUNHAQQ8ZGDpoqIWKuftmERWvwko1efOWu6GhTtM+fswVVr1+
 qFR1mimvDsoEHNxhgcl9ElXrEGS4xsuxzebgNkRHmCMAMktxuXuyjpRl1
 NqswaQicqk5nVHkvqXMuOx6UtCOqVEHVHZeYxlN+aX21/GZISAV3GSJOV
 p98ZMQy2FXgcZUZKUOYXLgmPguV7sEy5DsmfYRmqTrNFnE6p5vdeKyUUG
 gZAtrGyYpeFOStLj2yKSCm7X9frPOmW0rqe0/wH0BNUefRMvKzIIDbnj7
 eWYvXwfIdzHjhMRi+2LN6hppe7SxMlEO470o1r+EXBShQVtx2sjuxHSL0 g==;
X-CSE-ConnectionGUID: k7x6YMDHRaG5h0wUi4GcaQ==
X-CSE-MsgGUID: CKf3AJPIT8OjUkx55skL3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58016101"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="58016101"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:58:00 -0700
X-CSE-ConnectionGUID: Bsm5ZI0ISdy3OqYxbEWlqw==
X-CSE-MsgGUID: nVMwxyiwR/+ZyXIfAB6/fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167504616"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:58:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 08:57:59 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 08:57:59 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.57) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 08:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lXy3otydVQMOxQohyuLJ/p939wA7ICfbVNEGtKeSrR3K+N1JzfEODZ053YbxYTbx0qbyYKYrtkZgl1ECVrfln11RgQ1xiseAWv3IEPvUjutZvrn3hhMYYA6MuQP/ZNwX7jLSrOHXi7ozTAc8iejhDurTC057xZGR7GQEuyy21wOUj41mimZL1iMYgtmqMZtjuNH9VZ67IQmZkl3z9QLfBVeSspPU2D4Fc/bwVeN5rIwkq1Cy7S13P2E4Brim0etAhEr6MBEngHkHx/dYbsF+REQQCvjUOHIDY1Wiy3khOncmbTxAS/qlOTw1oAVLJ5PE2kmVyDWDghC2d6Qgag2w6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7I4U69Z6TE+rPbv3jQjlwloZFTIvFhS+1POOBvg9Ak=;
 b=nnUVmUCT1dSS0lohoiza3cCwsgbB3UFLNnmV/g8pDKukd8HprUXLa4I9bReYu7o1P0HIuGTxDzk1dbpJiO1zCtKLEyJjD7fVTbqBExN/8k/aKrdtdRBDvrlnZ86jkodn9Q9RYS+e4JI9JC7k5tE4+bU+cyoCP0z0EFWJ1leE/vqVCEjKIHv7lrqOREKy/sBanTEv7A0JnHuvCdSAtYqerU3bWGY5A9gjSM55HKsio3BcbJlQqH0cAHi8aLAOiOFacEt7VYIiuDRmykDlf3BV0961Qz/aswfvKZM05s2XUlCV7/Zs/oOqwLdDwLZ+DC6MzlPbuVn+lCknE3wk2WR0+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8669.namprd11.prod.outlook.com
 (2603:10b6:0:14::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 15:57:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Tue, 19 Aug 2025
 15:57:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Fix divide by 0 error in
 i9xx_set_backlight
Thread-Topic: [PATCH] drm/i915/backlight: Fix divide by 0 error in
 i9xx_set_backlight
Thread-Index: AQHcER+illZ6YJNulUCLOWnzQ5WUZrRqH5AAgAACEpA=
Date: Tue, 19 Aug 2025 15:57:57 +0000
Message-ID: <DM3PPF208195D8D5C87547E6D5C60D2BDA2E330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250819154027.143066-1-suraj.kandpal@intel.com>
 <23d35edfde1a5cb8eac7f0a3d029cfa8dff501f4@intel.com>
In-Reply-To: <23d35edfde1a5cb8eac7f0a3d029cfa8dff501f4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8669:EE_
x-ms-office365-filtering-correlation-id: 25546abf-c38f-4591-370e-08dddf392a3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hpBl2EgEeTNMV2cwna4Lct2n7W/fcHhGIAMdR5EoTcbrbVMXWyK0/Xuwfng/?=
 =?us-ascii?Q?GTEAw8tHJ0V5d8WKnwBD60tIW2Lug1qFGSUhHh3fl3GDxVYF+x9IdJ1/43sM?=
 =?us-ascii?Q?LPSwe605AB7OoX55lTQI61hes51GUkvlRppM5CsJ+xz5SICPW7F9cCAwRTkz?=
 =?us-ascii?Q?1QIBGfi/hxbWT3lrzqNRoEnUaEqnHuZot+GmBDuDokitVChf9VJK1tgk4ZMT?=
 =?us-ascii?Q?7VfQIRi3zSmv/m9JFh2IvWWVsITVHBQNVnSou/vzDkgNWyHeB/G1C5r1U1JQ?=
 =?us-ascii?Q?nryvFzQhVGAZkxzOdihmQKxb9Mk0cfR6YX9wqdexDhQynLhmYyYh5jB11yls?=
 =?us-ascii?Q?brw0Kgab1r04Jx4VlEtB5AotWfsI/oTp7lc8JT932eGkyC1XeO19sXBpN9CO?=
 =?us-ascii?Q?0Dm48UTWYzF5yqQta9XVq8Iu7GOlABTYyRC7g1sxSYy4t34KHNhsskVeb/cD?=
 =?us-ascii?Q?7BQBEwO5Y/vEuaUu4kSlALnCzo+qfmJg+KOZ1BL2xSMISgnyS4OThmSlySEF?=
 =?us-ascii?Q?f5RwYhGKXXIgUpx3ycUiuJVhlQg00dHuSngiaAHLElXHvR91/7s5ywEuUTFu?=
 =?us-ascii?Q?TjKL4kBRrDoOfbQyfpgX/y4PlMYUAtj3cCswUdUOTnorPz3MZjaqnYWazJbz?=
 =?us-ascii?Q?RTw4h91jGlswuqVCp0d2UGfs80qYKhkAHtE76/k2J/SoUSI3c2feG1PO3FpS?=
 =?us-ascii?Q?2q+qvz8cDS+rQVrhmchx6PWuxvuOzGNn5t48P8OJK42usV1HB34aUapbg7Yu?=
 =?us-ascii?Q?wnqXGkOiY+6E7HKySfmFDupZQMYB+hPCn/Qxrt+3UCDxvsQq6dDSr14oAiQJ?=
 =?us-ascii?Q?fyotJbYQNOtF81y55OwOfnxOuDpEedhVX+guEQSCe6lsHBR5DewUIMn0v9I3?=
 =?us-ascii?Q?nk98Vq2VRvWjdPRf86bB9N1t+nQOVGq6npWGnzpyQtUWqs80vGw+F9VaxkLW?=
 =?us-ascii?Q?MPKIZG5q09fTAdLD7jYFJwSHKm0U6nxg1YfpRs+QcG2ukiFRst771xn430OY?=
 =?us-ascii?Q?G5at8Uyc7VM3rlln36tx4FETszU2ow9kTGNAahgtNrzwPhbUxRzpz5V589OD?=
 =?us-ascii?Q?4FvF0FTXlSm1xGIrXv7RTGb9tjnRCEITXqu/MXHWRCFbqdpYnQL6hpFz9Rik?=
 =?us-ascii?Q?NxZMSmQLZ8DcyA1KP2jokkPi8RhLlFTgI297T1bS0rz2Jlo+XleRgjWmp7VY?=
 =?us-ascii?Q?BHaRpjfjRaOhmdHTBx8mEr2l/iv7CYxjXZjwQPZU9RJa1EzwumKjtzjPqgJZ?=
 =?us-ascii?Q?1BgB0NRRz2BhGPXk/N0ac9Pr+rFeYt9d1gcwPSGfY20iFhz+PsI8dR9rZhFa?=
 =?us-ascii?Q?EtICj1MjpwXzXFRgWOW2xxJSTR6AYKEJ0XpU+WAZcf/xocxXPimPNYb2d4iz?=
 =?us-ascii?Q?ICezXoPEu7okh7leI4WRVTi0A5jJghWUyhIc/9bIJgHxTPepPnvBeDj4jyuD?=
 =?us-ascii?Q?XYlRi9kYKVc8CC0GfJP1f5Us9Cs8iGNKVY0XFitioflzp/Rax71Tm138APdM?=
 =?us-ascii?Q?lazcPZj1c2NpamM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?45m5N7O1ci4a9l2hYkztynfHMYnerZod6sUODzutXbJG4uhIHYuIxBiy+Gd6?=
 =?us-ascii?Q?WRO0vyk2oR/+onZMsSO48LEWV0U+W14GTz6UeQw/UeEkxXCjqOvVie31KJ2M?=
 =?us-ascii?Q?PZaZKhzjh2vYvDjAyjOcbFuNE2PvLCee8cY/T5h0Obd7Er9Drv2in7MkYSnA?=
 =?us-ascii?Q?Btzt4PfruqVMUYuzArrHUaW1sXgsKCGIralsVGQuWCOh2OPqypVho8f5SZJP?=
 =?us-ascii?Q?lDOKxbAVLXrmkq3KuQqV3XkpIHmTiG9to3jew/yXepnpa+FJ23NQkiT+A6+s?=
 =?us-ascii?Q?0upMrLZx3dRhldAzVkV59SKsQxmWIx/On6Da+aDWFnp2+j1giIg12dq3O7Cj?=
 =?us-ascii?Q?9/BnM+0wcQi+vngLUXkRCtuFIJkQke+i+5poFKP3BtRfBg8SeUmwXtuHegLM?=
 =?us-ascii?Q?KcolOJP7UuVTF8qTKx8vctaYggXGsN3sk2lIGSMdoborreXqzU5UmAX/loYY?=
 =?us-ascii?Q?9Fw3guLDzuU9vVbuNER3JMBtcSmytWeJcoiim+y6IylS4eHlIc22WwQcHNVi?=
 =?us-ascii?Q?ZGh3ihB5e/JlQ99COhDJuGNu6ZYu7Met5+4S+UM+pBlSN1l0Oa8ZWmi/ypoq?=
 =?us-ascii?Q?x8KpItzsrkxWuYcjLVTND/dWOSCN1YGZadDVM/UqNClPUKdt+W8+fiDf19om?=
 =?us-ascii?Q?QdvchTMT96M8hTnshjosbu7wknQDbLT9ChaWoRPvZvBaYPDjK0WUMVYuh+8K?=
 =?us-ascii?Q?pezzBCz75t7GXzs0ztQr5uaTM5vHt8c84wRuGj8VWKamZHIdqru+N1Y93hUy?=
 =?us-ascii?Q?1MQH2t5wolgsN/fEUEJphP3IMJVBf14a6Uou0RqrcNukNu1lbt8xifDLV8j/?=
 =?us-ascii?Q?SdCQ92LasvoiSDpx8TPTZ2h+FiOsBBOKLP7p4GXarSPznff/V82Y7CV5L0c8?=
 =?us-ascii?Q?8uJS43S+ffX/qU9bR2En4ZH4qY+1o2oR4umq4bodidTheoGJDoyTB5M7yvVB?=
 =?us-ascii?Q?eWb40fAES5jDRyTGvkx9eiLAgsJAR97EyEfeQHnSfz2jIbhlB+WRlSiIgw59?=
 =?us-ascii?Q?aVyTgGsbffVkAq0gcS8vMl5DM2sOe6mGrQK7qU1KzBHOASJBnOqNhLIfflOs?=
 =?us-ascii?Q?PS/uTenIWDdTpWhOD0bT1awLj73QMKQkeJjGSUTl0zZFkekKGiFp1yhGpHus?=
 =?us-ascii?Q?iGT/nGdk432TYOjyFPnAcOrthmOAZCcjRjYq3KTL+fpSey+pdRkZeuWKO1UD?=
 =?us-ascii?Q?jVkWbK2MJa/OR96gWnGv8Zexu70LMtaD2fF0hMDVRO0vSUV/VSSI/lTubtkp?=
 =?us-ascii?Q?GrtMNT1tBOvE5oc9sDf1D4w3bXuxAHz8Bvf4+nUaenSE7xbesS/oUKQ5yfFh?=
 =?us-ascii?Q?/hjMTeaKsE2pyCn28hd/h3sGV3Gn+lUc547XOPfnlhPKyYgQiqrRMLzNgpIX?=
 =?us-ascii?Q?f0fuV2nzHqvJSMq+tFFKCrS0DQsn+6v4KJg3gVBnT9ti9qK2LkMXrMGpU6tn?=
 =?us-ascii?Q?q8npYMvmgFOvHA2qbl3RW6d+U0mZMmHuacCXs1nSxcLECseHNbl/8XUUeZ5j?=
 =?us-ascii?Q?g6fd6a4WXlqVMiSM4EPQTVPGOc91ATRJOz8hhjJy/PMnkHaX43saRy28BoPs?=
 =?us-ascii?Q?XK6wqAo0T2O4RosSqBr80ay1atNda8RdAvH2d0qD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25546abf-c38f-4591-370e-08dddf392a3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 15:57:57.1210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQ3ZfIvsGnzcFgsRhI9Qr1cHn4pNqIUH//r2Fs0fU92Q08SlB67Smgh1iWK/XNj7QlytNTTirgx1ixMIWXXLng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8669
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

> Subject: Re: [PATCH] drm/i915/backlight: Fix divide by 0 error in
> i9xx_set_backlight
>=20
> On Tue, 19 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > pwm_level_max maybe 0 we do throw a warning but move ahead with
> > execution which may later cause a /0 error.
>=20
> This is not supposed to happen, so don't overcomplicate.
>=20
> if (warn on)
> 	return
>=20

Sure will return from here

Regards,
Suraj Kandpal

> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_backlight.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index e007380e9a63..d0e9de8ab834 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -234,6 +234,7 @@ static void i9xx_set_backlight(const struct
> drm_connector_state *conn_state, u32
> >  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> >  	struct intel_display *display =3D to_intel_display(connector);
> >  	struct intel_panel *panel =3D &connector->panel;
> > +	u32 max_level =3D panel->backlight.pwm_level_max ?: 1;
> >  	u32 tmp, mask;
> >
> >  	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max =3D=3D 0);
> @@
> > -242,7 +243,7 @@ static void i9xx_set_backlight(const struct
> drm_connector_state *conn_state, u32
> >  		struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> >  		u8 lbpc;
> >
> > -		lbpc =3D level * 0xfe / panel->backlight.pwm_level_max + 1;
> > +		lbpc =3D level * 0xfe / max_level + 1;
> >  		level /=3D lbpc;
> >  		pci_write_config_byte(pdev, LBPC, lbpc);
> >  	}
>=20
> --
> Jani Nikula, Intel
