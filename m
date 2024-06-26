Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5761191858B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 17:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216C210E912;
	Wed, 26 Jun 2024 15:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJ7uyX5k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBF610E90D;
 Wed, 26 Jun 2024 15:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719415118; x=1750951118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8TAwyE2nQcdsETtaFNyTEczjQ43Qf07pL97L/V2juf0=;
 b=cJ7uyX5kP8mQ58BeMOqLSnYsxFviMF8r57ZXuCHrKrHHRSx1SpXYCtTh
 BOoQ8SZ7OURlP0X9lQqHESduq3c9LuSiUjI+4k6a8MOoBJCGZMTGgw7Z6
 CfNH30lT/t+/JAjyorm/9rrr89twQ+mh5Bwchr7CXTbG2PAoEhXNqUtG2
 g2dGvQYwfxCLf09cupg9qo7o6bJxT22G+/x6IYYpsHfAXtTi92M8HnG6s
 x47n0PM8xe7uc8RsKvW707EyU/6MFbIDpjvye2OWG5ijmS5qNcqxreWZi
 0sqfYdBEwQIiJGpi0q2xPDsacWv9guYS+IMKPD8EUpRq7jyK0kFjGd1iB w==;
X-CSE-ConnectionGUID: ntorNcloT/CVRDSqDNZB1w==
X-CSE-MsgGUID: lxkMv1gKTDC4XGWkEx73pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16623441"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16623441"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:18:37 -0700
X-CSE-ConnectionGUID: 8keyoonPQS6WzZUnn+jzUA==
X-CSE-MsgGUID: SCcfcpkTTd6xj+IMOyFLYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="49209012"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 08:18:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:18:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 08:18:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 08:18:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9t3l6OJR+1Yl+Ge+Sv/Z+Cu6KCWghRuIV1ImykLr71xO9vOnPfGdLBwyepHyWB9w5w/OIL9xCrjU4ksPx0VLau1/aH+RDagBKxtl1HLb5QAUAfrA4CnJQ44ogQbvJvaunyTRFw/UlLDlpZnysVSiO0HqCBoa0B6Ti30YFQ9KUmtNTwLk0uEXVEFQzreX6zonq0MnUdJPG0JLzeC05fBNZl6w0IQ7c9ymwB/sjTxI7GDER9QX7hQxOIIw3faVpkG/IWui3vo2iUgQW3unyZ5vlJUA84dEpOxdG5W6xjYkUSL1uLC6cPO+/uGZ4nO8QkqLDR2JVODEt3KIHt6EUljEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UwtwAz0It24OWKPwS09KrO5jH0n1IIv4yVCOIjcwhI=;
 b=IPlS5AaRm8KZA0VhCcGhMMk8ZRGOgV/u5MKgPixnWNpvkHdai4pKbET5BeSr9Y8Ha5TQQfUTO2/gd6tuDev1TnjP0bJ8znthA0qeTBLX4wH3WcTtR/nVdholUDJHE6NHzemmxFF/FdoQ47ggUJ2uPtD9pg7jbGFkUrtp5+AKyWChEmaYRuI5kPzaITIB3rjQReXXicw4YcDKMHX6zlV0SOqcVzdKirnIWtovRTb5z/s6uvwge0+dAWXNQ3ZUiC8isvhPL+zlVDBY5GVkWkgyzYnQ+92mY7g0RMMdg32CAlutMsm5kbc49P07ZjInrHUiPI73Ww0d8EcJwu0pkoCEog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3013.namprd11.prod.outlook.com (2603:10b6:a03:8b::19)
 by IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Wed, 26 Jun
 2024 15:18:32 +0000
Received: from BYAPR11MB3013.namprd11.prod.outlook.com
 ([fe80::11dd:857d:99e8:5fc5]) by BYAPR11MB3013.namprd11.prod.outlook.com
 ([fe80::11dd:857d:99e8:5fc5%3]) with mapi id 15.20.7698.024; Wed, 26 Jun 2024
 15:18:32 +0000
From: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun
 during retrain
Thread-Topic: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun
 during retrain
Thread-Index: AQHax9te2uejDhUp9kmYUDQEhrnes7HaJ/+Q
Date: Wed, 26 Jun 2024 15:18:32 +0000
Message-ID: <BYAPR11MB3013A95F661ED52F8D1AA7A0B2D62@BYAPR11MB3013.namprd11.prod.outlook.com>
References: <20240626083624.4042544-1-ankit.k.nautiyal@intel.com>
 <ZnwwBZFFugbV7JPj@intel.com>
In-Reply-To: <ZnwwBZFFugbV7JPj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3013:EE_|IA1PR11MB7854:EE_
x-ms-office365-filtering-correlation-id: b1dc8cdc-ad3c-4be3-5e26-08dc95f33d9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230038|376012|366014|1800799022|38070700016;
x-microsoft-antispam-message-info: =?us-ascii?Q?g/GOscU2kKln8h5a+RhRQy1hDkvyo19dc84zHBXY9t45rzg5LJcBUigZcTVo?=
 =?us-ascii?Q?nRlp8SyVs+OBVTNFt+g3uMKckPSPSDMlIdsBvsgv37awq0bgONqo+MnN7xJj?=
 =?us-ascii?Q?drIdBdCduKssXi/4N/F8ZyO06z+paN6rXF4vUxotdqH9I/et0GTnTPSSl6pC?=
 =?us-ascii?Q?PMjOkmKTwbML/m9O0l7V66Sr/9QRE81t9ByRwG4Y421V47v25ChDjccNiw4R?=
 =?us-ascii?Q?Sq4nBMgJbirwMiXyBLvDyLdomvue62PhgF1zla9anJsKFHN+vs3DZhfIMQIY?=
 =?us-ascii?Q?00oGoH/DGx6dbJk6dfi8mlSrq9Ir7CDHLYItBx/8+L1HRSjA3u3xVXuyDwtx?=
 =?us-ascii?Q?c+k/N5QhnEbARnpiYWt6fsnol6vVtZ65HcUdQKWIm+dHCGUJ+dk+mqAaCoJZ?=
 =?us-ascii?Q?pS2TReu7Bix6awXPCA8rOp5oZK6KbtCNWvV/zEMXTTcghmqBiR+j5c2++2sG?=
 =?us-ascii?Q?HAhsnzraTxP37MSlhxQZfc/Gj7QTbtFuR8/Ji4u1RAS29YEeaT45Aq3Gy1W1?=
 =?us-ascii?Q?BYEKV1q+5c9Dk4e6q68kpfFmsPxDb8U9pXjpEmNGyiyY5UTwuM3vqapbc0c+?=
 =?us-ascii?Q?1vCckep8/c+DOyeyf2CQE6lCf4pH9/HMV8lrSqDiYHiW2m8nGISKheOvrUOs?=
 =?us-ascii?Q?4w6a8raDD+pGex17iy9UPdSY7mMfUAJhXxiS4mrW1CuJhphGwETMKZ1KeaBN?=
 =?us-ascii?Q?ZXeyd+40wFIZmHGxSo9Q4MtqCTtP7rY6aL3BuRKOICbdX1JDDe+/Ezb0GYhR?=
 =?us-ascii?Q?91Q/mINCibvvmHGXujUAv2hgC3+ZGBwu2uahKzKULjCKhBOSUAXo4wm7dwot?=
 =?us-ascii?Q?QsBUEHJ92zA8u4E0c2FDIYyNaRTueJAOriNc2qbHsEhzU7n392jU65nCzZih?=
 =?us-ascii?Q?5NUaCMwE9vRczaE3pl2wJ3G7rmpY3XP/yAUKjEC+Ovw2uWJD5MAsaFjMqMNy?=
 =?us-ascii?Q?JdAxNaNnfGTEtDicWedr03Ikb5zOkcxDn5SK5PCV6YG+aFSO6g8SDbGMc928?=
 =?us-ascii?Q?+79D22QO6McmwmlMjRi0N+H8MxCt7Tfst/ASA2OQLhf6Fk3jNkSlBuvQFPOE?=
 =?us-ascii?Q?WkOS5YVFV4I1KNA1w+BsT/+tQaMrkyBFJxpZvHMRKzvWhkFQgtLeByEyEt5M?=
 =?us-ascii?Q?2KGDRFbQ1ea+av3dIpki0N6uEmqdaPRHakhSaMdgYOkYgGTs1ewyqe+3x/AC?=
 =?us-ascii?Q?Tse6avMDIIEcWIKuRK0/0jiR3o03PBaa2Gl3XimCty5lQ/SXAlryym+kKXYd?=
 =?us-ascii?Q?9X6TU9Tm3fd1m7vP53csYSAN4NoDVH7JRSuJ7jyUr/7uPXOJV4ppurYizyaO?=
 =?us-ascii?Q?quEFkRzsdezZiwCa5lc5E1kTO6orkbfgUP66JLFeahNqzDdiK8HECuTUlCsB?=
 =?us-ascii?Q?dKvD67s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(376012)(366014)(1800799022)(38070700016); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZGejqCAUFgBHQ1H+L5euuZ2FpY12gsjWQJL7jZSevJ5noRfseKMvXKrKKAa7?=
 =?us-ascii?Q?P9K+R0npRWFnouXjFJ7hBXht/tnGBUUmt4x1R+sRHK9QZwZYq2HxsQ9x14/d?=
 =?us-ascii?Q?WQ9Nisk0PA4jIsey5uwvbxVqzRuHUKSmoekJVVdzbEdO0ot8sqLXLldj45s/?=
 =?us-ascii?Q?0MOyXe2z+7SxWxCwzHxNfYZ/jC0bJJrkVdNXMy9tNCiwVwEKJ7Mzy9+YjJAX?=
 =?us-ascii?Q?pdll1dbyQntmKx+P+1y6DGy2wcc7foa4HgK+tTWrj8PoPcS+JNKndQKR/cbJ?=
 =?us-ascii?Q?SMpsuPb5u/pafFdDYtRddE4BCluEIUr0lfncZraexkuXTLd3A7lo/FR9LTBO?=
 =?us-ascii?Q?REzhJW4F0E0dl0vGStmgK/VQ5zs+QHPcoNffGzkqsf+0HxJm+3YO8+E6HxeV?=
 =?us-ascii?Q?lh8+mcju/LVzus3KgtIY/w9zfBReVaiqmFxKp3LG3GQtUD2MZvLrQOP7HRWn?=
 =?us-ascii?Q?g+TNVVK1z0DTyIo/fI4/B0WjMWJdXuurRJRX3YJdzGJAhG4z1NTMFc3hz637?=
 =?us-ascii?Q?7QIsEHx6184AuA3py0FGl9VMaSm9TjeLHpub5sizH5dmjB6v4zT89ATzWb4U?=
 =?us-ascii?Q?Aio0i0XyZE0b6qEb+4cwzmhePZfRYROMPhTlq3nqHsM6n58GxZlAJ9Mfqq0m?=
 =?us-ascii?Q?AUG5G1p1J0Xz+vFD6MYrhHOyPa/vnTIL4SW0NwUmqNUFcJsc9LRwltKupvdK?=
 =?us-ascii?Q?Afy3cmkg7652jL9PaHk773V0GrpmLs6vJGtlDQgZ941xCuueYJuP8JUORZNA?=
 =?us-ascii?Q?jWOjqMnjT8u4uBmJDZt1AhIHbP1Vd5LzmhNXVt2ziiSK6pnpw/5rCDZncXHx?=
 =?us-ascii?Q?7M9BBw8mj0ryxZkuJxVUNmVD0pZ6fHYiFvJ3zngf4anwtwuQyDBWapOXvedp?=
 =?us-ascii?Q?t6+2BIZejiuqF9zZC2Xg2cZTXtX4tbxwnVw11kYbI1I3pChNCkwqZ3oOOA/j?=
 =?us-ascii?Q?8QBbx7mC0nOOtZXH/JtAJ74DE5ELeC+L6yvAgHaACWlKxC16wtf3pXZ8MSm1?=
 =?us-ascii?Q?L6Twpe7JsgWCAJVBkfK1hj0exsIkwYY387nPu3xKAU8fZgrxULQXst+viUdd?=
 =?us-ascii?Q?352Qj5uMo8eHTX8fhgdyP5pi4AhjshgiKlRRyTqoy8shjiW5ZPEKyGLszWws?=
 =?us-ascii?Q?7VtM3iHnZK0k2RZXKPn0vX6zPKc8f4A7l1aNPeAuZawtZROiHWKAVbilca4N?=
 =?us-ascii?Q?qh21hykm/7WRUb8ULBVc9jvLE0OqEbyZdcNVLKMDLQ89/fw/v6eSXVFwtnhi?=
 =?us-ascii?Q?TmElAVbeCU4QXPAmkEJdaB8ks9N5nhVD+f4ZOPrW3Pt60EwohreLDxMNqAyo?=
 =?us-ascii?Q?TzEvCvm5l4EY8FrnEWGDV0xx37tbukTWUnK9TrD1OdLWWb/44eOHTEMd612+?=
 =?us-ascii?Q?mysq532af0qnRUz6oEgVXqxLlvLVkVInlWDT7c5xTHzCSELwkCUyTIUXt0O7?=
 =?us-ascii?Q?N53nMQFfINNGJpPAolSTqbgeXD8UL/CJsEuhI1jkh4lP5tVAXTaHv51jb1y2?=
 =?us-ascii?Q?vKsXvrMTqI5xo2OcwJBH8B8VFjc/6h1EfS6NCqgiw/YuhNU3x7vR4GcSrRuh?=
 =?us-ascii?Q?6gJzJPtGhUFQw7K+aXzKvEVCiPs5Uh6S4m+ZYcex?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1dc8cdc-ad3c-4be3-5e26-08dc95f33d9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2024 15:18:32.3059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3y+e1W5o6DMRdw2oSLpYk3UsRyazwNVV/hiF2adek/jl7vyGm7ZO5KBI5D9S7um4Z5Eyaewk2143gnPkJz4JLUD5IFgLgB/otby9qyhwjl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
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

There is no underrun expected (that I know of) when coming out of training =
on recent product generations.  You should undo this masking and debug.

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com>=20
Sent: Wednesday, June 26, 2024 8:13 AM
To: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Runyan, Arthur J <arthu=
r.j.runyan@intel.com>
Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun d=
uring retrain

On Wed, Jun 26, 2024 at 02:06:24PM +0530, Ankit Nautiyal wrote:
> During Link re-training reporting underrun is disabled and then=20
> renabled after re-training is completed. For BMG its seen that we get=20
> FIFO underrun just after the retraining is completed and the underrun=20
> reporting is re-enabled.
> Add one more intel_crtc_wait_for_next_vblank before re-arming the=20
> underruns.

Cc: Arthur Runyan <arthur.j.runyan@intel.com>

Art, any new workaround in BMG for this issue?

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c=20
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..25af51499383 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5325,7 +5325,12 @@ static int intel_dp_retrain_link(struct intel_enco=
der *encoder,
>  		const struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
> =20
> -		/* Keep underrun reporting disabled until things are stable */
> +		/*
> +		 * Keep underrun reporting disabled until things are stable.
> +		 * Wait for some more time, as we see (at least on BMG) that
> +		 * underrun gets reported just after the reporting is enabled.
> +		 */
> +		intel_crtc_wait_for_next_vblank(crtc);
>  		intel_crtc_wait_for_next_vblank(crtc);
> =20
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
> --
> 2.40.1
>=20
