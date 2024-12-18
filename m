Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB7A9F5DB4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 05:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7103010E320;
	Wed, 18 Dec 2024 04:06:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fJu3l3Wd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960AF10E320;
 Wed, 18 Dec 2024 04:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734494815; x=1766030815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oiyx9B9ucipIq9FlsSyiJWvOukPW+zH6EdyHSAUAKjM=;
 b=fJu3l3WdSW1aX6LTgANy0JhfH6v6cH69nW4UJ1etXuhMdszVzv8iXUgy
 JFK+YVTBZz8Y3mYfC2VNBM30zmz9AFcNhJNH7sclpojuh/+vglFK2LAVS
 Ewsns1/FW81271AO8MPiFcY1CIbkeK/J5JcLSpb03XvOxHKLQgP2XEyz9
 IVj5yX1uREhBTmaedjuEoSkdr2sRprmC9zS3KZlFnXZu/nk2f3LTUOc7s
 oKYurRgWgjtNORciS5xdjtfCR6DJNpoSKEmpo4z1g/e3XRvWS+Hx7BuqN
 WdopYvwanut1XLGL2BpklMfP/JGhE8NYCudXEJBPkH0o+b4Rk8ZxuX8MF A==;
X-CSE-ConnectionGUID: 5atfQTUfQgOVxASoMEFkNg==
X-CSE-MsgGUID: c1sNZOi2T02RcEnNPb9osg==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="38735341"
X-IronPort-AV: E=Sophos;i="6.12,243,1728975600"; d="scan'208";a="38735341"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 20:06:55 -0800
X-CSE-ConnectionGUID: FnEQGYE3SOe9pg7A7QGqYw==
X-CSE-MsgGUID: U0V25auvSp+H9EyKJ2ij8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98566235"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2024 20:06:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 17 Dec 2024 20:06:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 17 Dec 2024 20:06:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 17 Dec 2024 20:06:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=af22HEB9JOZqdzEuDFLGq2QP57mW/CXMXRgebbq/blioktLmgPYE7iKGsUWW7Wrc5+0KVQISAIfszd2wAK9iOBknfJ3sGj93wOwJBreHdbaHr6jr8JPDEHv9A9Tb/0VschPGi9hYYHhnwVwI55iikPkaLV5jpYu5KgNjszkaiwpIWVd9vRRnQZJDWd9KgL0FgX6lI2k21DxxamXNIFw4mcIy9q3sf279g2QNHJV6SfZp2WaPdyEJDcap9GbZGmRAbD4oq+jKpJps8w22/hCGcmpNmLV+5J6MoDiDNtC80AqnuolHoITWzDl/DU37d45MCm5W3ZtBJuZaPpiqn8MmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9iKy3s7yeJcN4rTWjqsLtLSXO7g2T934yK+QrZNEI2E=;
 b=y6S4J2Mu4k+E1cp4C937lRbMr2szLxzkEmi8Vd0bcVSNop47YHscDBHmITe5VYT1LUm7Ij9LUCb4G87bXMaD4G7YG3by+DNeKFQfCchOnzdpvsrGiz65oXAwP11/L54jDDBUQje35rS6YUbRzHuyhTVjzL8bQ0iaxvE+Bd5yv6ra6x3KlaOwV6GcdvdOOcKZLxG0AtEosk3Fsl7o9FHuTd6l7cP+LA/qlcMi2uU/+872H0TsHCVano4RamzkZp8PEu9y/+0c+cpNgrs76+zq6Y5AT/9XQZ31FCgj9/1faLqnYFoGCM9nHO1rvrCgBUy1mMyWpWOLYuu9T9RCH6lK+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB8128.namprd11.prod.outlook.com (2603:10b6:a03:52c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 04:06:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 04:06:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 14/14] drm/i915/dp_mst: Use link.{min/max}_bpp_x16
Thread-Topic: [PATCH 14/14] drm/i915/dp_mst: Use link.{min/max}_bpp_x16
Thread-Index: AQHbUGZR5e1ah/6790mM0P0I5rnnpbLrY55g
Date: Wed, 18 Dec 2024 04:06:52 +0000
Message-ID: <SN7PR11MB6750CB7B41D1DDAA3713D476E3052@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
 <20241217093244.3938132-15-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217093244.3938132-15-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB8128:EE_
x-ms-office365-filtering-correlation-id: cfa9f353-8732-4ea7-ce3f-08dd1f1967a1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AaHs1hYOcpzGimsXK4EHbOnG/EIoPReQXuC0x2r+dNet47hm9lp9eS9/jygB?=
 =?us-ascii?Q?4jGJ8Jon88DJKDXdxc2TuNIEMmojl/oAVx3uhU4XWUMKADopBbqVbA0GXwBi?=
 =?us-ascii?Q?U7f18xGgIOFr9XAz/nzpI8Th3DBphN1Y/kv12EUI2N9Y3nfdnDl3Yh0c16vQ?=
 =?us-ascii?Q?3zyfe6QMZLg28Y5HddnLIXFXPbhf/hBx7F+H1+OAZX1PhiEhwcdb0R++9K97?=
 =?us-ascii?Q?am1z9HaHTHDxdKAlCeXLWyM6bAxVTkStOa2zjX7y4z/LvObesy1eRskUyVIP?=
 =?us-ascii?Q?D51We8ObSDPaoH4wYCASiUCEjFuv7sP2RTJdTuQ7c+y88m+5n2t67lZvSzm4?=
 =?us-ascii?Q?Iw2GREfS6p87ofBtPqKmt6k/lEXi54RQ0XWJYtS+lhZj1glspxzIXp7BvmHn?=
 =?us-ascii?Q?3gxWW8qidA8mbYMB0RplpsUNemdRqywkj6uu7duqZJjnxthmkY/c69APHV/B?=
 =?us-ascii?Q?x5wwjAs4HePlmauVT0Dd4B6D4MQP6jYr2ofynTLWnuZlFHEs2KLIgd7wbQHv?=
 =?us-ascii?Q?WO6AwFB0oZTVTMDXXeH2Lxm6LrAplG01ZBIqBT4icM5sZDWrgrRgfK3SuA6N?=
 =?us-ascii?Q?tycBMGKwkNlHfkSSXMTGq6uVZMwNlTBynu4gmpkyGlgJstcFNjYzu+IglwrD?=
 =?us-ascii?Q?tzOOZyfcZntYgTWalL5Cq1ITwRbMx330wzDFEuuONdMzz8lUT9jaDrT1cnrX?=
 =?us-ascii?Q?UG9mo33U+khAkWWkKKAYQnrJ6Zgjbe13rXi85pRTptyNGBmnruGNvQ4aN/B2?=
 =?us-ascii?Q?r1aOrwRsge5mrcGvZ3ETUZsk/l1DjTPvl0GbtWkUaz2Z1UxWY0hCGPvsDtM1?=
 =?us-ascii?Q?dPUaTDRBXyFT7GdoSyEqmrzUS1d0MnvJKbF/IwW40qK1I1tFLyI45rxHLa8r?=
 =?us-ascii?Q?Z4nKu3qbMTGf9irkB76aHiHLEFkA471buE0nWFrFjIsGIPwJRB0/FRlnW4MV?=
 =?us-ascii?Q?Rp8RrJWKeAqL/lJ85kNlieLKDcGsOJoXEsEz2yhLWbIOlTbukKDKUN+BOM/D?=
 =?us-ascii?Q?Hmk4gSIhk6BonfEdVTl1AtnD3K5vA6fuCcMn7GbQVryB8obXev0YZZKFxIjX?=
 =?us-ascii?Q?aPpWOUkIXE1bmnBf4W8jiXf+hOymoRQzHpgwZGgUPQrS8zfU/vObRs5doB3y?=
 =?us-ascii?Q?mqqy4VQpF+IzQ35V674UshLEKisc/dLwcOFqQu2dgLeHUjlS78ur6tgDdwmR?=
 =?us-ascii?Q?WMBnzVqWH4ad3u0eVMOyh5F7oFAhACDjY/67kkkBfEMnzcIxifPHRKOJoFWv?=
 =?us-ascii?Q?UNi+/7hJ6oSWbCdXeZcRhMJcoHcy46mslTTTuDPzwCYj6o7pslGOAJZw5kE9?=
 =?us-ascii?Q?2AFapbq63Z4NTsqxSdPSGl/vZKKCgC9llydWRoJClCaJdHMstDlYmBIkAAMr?=
 =?us-ascii?Q?enwmGs1kBER7o1xqiLtADL3Cb61BS3jXITxGPQ3tUxa4nu95VWPDR9cK+Fv4?=
 =?us-ascii?Q?tQJliLu0LLs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qe+/FX7xNnTDplOCZIKBy9q303698l6PDPYcYMlGxejA+R62sUmT+ULzsDoB?=
 =?us-ascii?Q?ZDrMMGQ7TwGFcLm12+eG1zLF9nOokvG1yJwZbw2wL6fMsUlqXEf4Dt4Gmwmk?=
 =?us-ascii?Q?5VLbp880th7AjUprykpLcevHp6YrwdtFPttJSuSSvIeV0chc2GhY/rrzQq3N?=
 =?us-ascii?Q?q9oSW+1LMggS/O2x8lmjDf1UCAhlasotX+x87RthicM7SlPxzBAqPByKizGR?=
 =?us-ascii?Q?16OC0VBtbWUBwvgJlANPrSMvsuUfyzC6tbPVF2VJjFDvAqqJe7rSUnemYD3m?=
 =?us-ascii?Q?Gz6kpljxrBTswB0Tg9ZnuCTM03stY9uw39dquklWiKIWIXr/tADUHk5SPRSc?=
 =?us-ascii?Q?feGTRZCTBJN8LIPnlobkrXQhxzbG9sKKw+xfCFrY0jj4LFyrjRoysTpQxeCf?=
 =?us-ascii?Q?hWNun9XOVhv7/Mfr1+CQuggWupfrKdye2PhNLdLyK2asr4s6dw3MsS4UFmHx?=
 =?us-ascii?Q?xu1ZH/G9qqEoKo9Y/3rjzYiFuBBe9HbGcGVAtAlMW/jcpv4lYClWltmN72kk?=
 =?us-ascii?Q?rl+quS1fzJ2BoiO6rr+ynB5gCIgDfCDHFEYFXT5/5PYAGgIHcfmgX2/ehDiz?=
 =?us-ascii?Q?7GYHV8+dg34nPkh2Naaey42Qfxb4gVSPzlYblHgiTCBqaUNzbL78+x8cbm13?=
 =?us-ascii?Q?IFiCQT5ENWB7kZK4hfBMIVGKAcIlxFUAl8WlxNLMC0oM8clWlUfZdPT3RAJ7?=
 =?us-ascii?Q?HL0LIFVBF1Y3hU875d00gXMaq88fyZ5hn5fGJ1jpZxRCKuIW74sp4vXp3vnN?=
 =?us-ascii?Q?tkd2HAT737+P4f0X2c1WavpnhDBR9fJo3kCC3K3ylIQqfqdM14PCSKgeCIMW?=
 =?us-ascii?Q?1qzUGWoEGiZjbuHdtB9EUmXPONni5a7DTdf5QZhPzQAwjZT2EYFufjsuHIKo?=
 =?us-ascii?Q?EV/xC6B5gMgxuPoFANzHpOOl02G9EbDGPI1WrwOWJSdoeLqPGKWkBtsc3vpG?=
 =?us-ascii?Q?tgEBmVuC95Cn8lW6bCTdMvNl8DvvXg1PxiRH2W9jZxaO3wAnupfe7nsVYFaT?=
 =?us-ascii?Q?1VFm9kQjr7BxZFfBbwxGN5Ft+ts7Qjf1mpYVQqZTVEgWi/A4vHYNahtUt0ZV?=
 =?us-ascii?Q?YmCMy+Z1unegu5SeoW7+pizD8TYUdb0oWHkbu1D+2r4VuNWJr35Uy27673Sk?=
 =?us-ascii?Q?AtPUF8QEBzfNNtj0H+rL4UB5PH3VngiGUrusVzQW6yKMQ+lQl5PK9WngL2Pz?=
 =?us-ascii?Q?TV4z7bIDezm0sC0cCM94E1oo0d5a5y/F+v596gTNnbgZT5qONOqpH1HZ6DCD?=
 =?us-ascii?Q?gN6TrV664A0et35iJe14wLT8Iek8QhiO4kJjYM0fT1J+9BJn9C616vcUdSb5?=
 =?us-ascii?Q?4EkXaHDEuTnx3dhr3mgFo7i2qW1eT+T14TAm7yk2xIEz8LDLr1KG39uQKhKt?=
 =?us-ascii?Q?hrLNHbf678YB9prRqI/ChKwrc5dn4Q9BUqNFDvVojEsdqs898aCveli0CwaP?=
 =?us-ascii?Q?cfSxXhEfid2SOmLIIhrN8TpWt/ci6E8l7Ylt9jj8q0louDd8GYvrJ0kU6p7F?=
 =?us-ascii?Q?bJNOvYqtRbu8tgv47qBjg1SwsiZt2NHDC15f23O2Nc/u964KTOnfcEfzlUpI?=
 =?us-ascii?Q?ZPL7RSvk1ieKlBu2mLJYTRHP0wM4uRGD8dPm7K+i?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfa9f353-8732-4ea7-ce3f-08dd1f1967a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 04:06:52.9724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dY/zYhszHhtBHU3AIHI/6hLI/51VFof7pmFrlAp5em9GuK+nCU9PdM9EIN42mOSieujrICg4S1i91QeVBTmanw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8128
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, December 17, 2024 3:03 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 14/14] drm/i915/dp_mst: Use link.{min/max}_bpp_x16
>=20
> The link.{min/max}_bpp_x16 is already set in crtc_state, use that while
> computing link config for MST.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 689fbd6bcf9b..a9d9d7694acb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -428,15 +428,8 @@ static int
> mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>=20
>  	crtc_state->pipe_bpp =3D max_bpp;
>=20
> -	max_compressed_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								  crtc_state,
> -								  max_bpp /
> 3);
> -	max_compressed_bpp =3D min(max_compressed_bpp,
> -				 fxp_q4_to_int(limits->link.max_bpp_x16));
> -
> -	min_compressed_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> -	min_compressed_bpp =3D max(min_compressed_bpp,
> -				 fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	max_compressed_bpp =3D fxp_q4_to_int(limits->link.max_bpp_x16);
> +	min_compressed_bpp =3D fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16);
>=20
>  	drm_dbg_kms(display->drm, "DSC Sink supported compressed min
> bpp %d compressed max bpp %d\n",
>  		    min_compressed_bpp, max_compressed_bpp);
> --
> 2.45.2

