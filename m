Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF7D9950F6
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C2F10E558;
	Tue,  8 Oct 2024 14:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kW/C3b3L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0327210E554;
 Tue,  8 Oct 2024 14:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728396285; x=1759932285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+ScSUT8UywqwBPne5yuBX9uMdR9a3mMK2tveuoKzRUQ=;
 b=kW/C3b3LwFLW31uqHf+gThAciWq+7DpOgvp63gOZl4rV6JEg6Om4NtwY
 45od2RPjT8tt1cOqxlPICXvxs7gPrvSEaH+FckmWNADcPyA9MNBaDKz7h
 lZD46ix5ytu4OdbDvvPUcfzoPYfEOUrZF4WV2LiJadUGUpS4afTqy0YBk
 xBc891cF7WcX2aWlFb4ksyQdMlfVaYpWbBZt13v5bbYJxvslGgfx5/rc4
 zvl+8g3EX7JQYAvFhahnMndAGmt+xdtXR80VyYC5ASFvGmS6CdlGCm4wk
 GCZhpvR4VrYjKxeFhpbhlrbylB8jtVcpN3dLT6UEJBViTqe7YpHINfkdU w==;
X-CSE-ConnectionGUID: VBIdTsTvQ32ZwW1Q83nBAg==
X-CSE-MsgGUID: Tc2MpPh+Q2CMvuAd5t/Qhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="52999976"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="52999976"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:04:44 -0700
X-CSE-ConnectionGUID: 4Khdxp9bSU+is7geF+hBKw==
X-CSE-MsgGUID: lJJjElDBQ52IbYUQVPb/RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="79827658"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:04:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:04:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:04:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:04:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ufVwjGPyZf1GmuXVDVSPW6HtKvjDBb6OrVb9OwFNMpxVd3M1hIDdyc98zITtKnXu715ScHjTRdOngW7hPGT6rflQvaH4Zk8fYEsLlYfDxWjXibfZNRUxdin3W+pnlqtlh+ictUWkoKp/XWuzFAM02oRaa2WGYUqOZM5CuwCJCHOpsKgLw0sv0dlJw69GaS/dLVugZSG218aWdEhqgGOP25HDQ6WrMLPn+KlB/aTxtxk4ulzzDpPj3to05Q7XWO8UAlUwAyBc/ZZQvYfErP+5TX3t4EcpGaKbD/enBB1gJjbhdYQeq93gRzt1u7xz1GSCIUrpIFKXynwflHQcZWHKDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ye/eL3ekqXS+qj6bu39KfYRqFn63XC8e51S2S5YWKqI=;
 b=BTWXhW7c4SiaHJ1xmlkOXHjV/jrcRgu2svlKUEnztOW7eJSxxT/MK+M1esxAKuZK/nKx2HX/XKr1qgcW410ffYBuN3HoYoH9EAsbOkbxAbt3jpNaMtlZFd8taMZ6n8I5WtVM2IZW3VxZXYvcaryz9r+QVRfUuLY0KPoXzszUHAfw3yHBsxAVI/2mR4Vfa68JA+luJK8ZvyUa0rVyUjbKHAtI/A3FVo434+hPd8Ok5f72rMPEcrVNtM0DRPrgtka9OTMxbmFm8Hge9yk0XIaSNeLieXcgT+FtC5vectSXrHrfwWEI+rZfY9nynDyuA6MjAe6IyOVASxJANWI9qvWJaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CYYPR11MB8408.namprd11.prod.outlook.com (2603:10b6:930:b9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 14:04:40 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:04:40 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 21/31] drm/{i915, xe}/display: Move dsm registration under
 intel_driver
Thread-Topic: [PATCH 21/31] drm/{i915, xe}/display: Move dsm registration
 under intel_driver
Thread-Index: AQHbDsJ5GxY0PQcXzESDPWNjUV+CVrJ898GQ
Date: Tue, 8 Oct 2024 14:04:40 +0000
Message-ID: <CH0PR11MB5444F9F0DC763FC8651B436AE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-22-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-22-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CYYPR11MB8408:EE_
x-ms-office365-filtering-correlation-id: 4042d002-dc5c-4b47-3c99-08dce7a22713
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qWo5vLmwV5BvisUrSNIFy22S+pRpQwTut9Uwx/kIeSbs5XNi/Pp1EjKU4jPw?=
 =?us-ascii?Q?1J1IlZRRk0kQoc+T++aU4LbKEx5SCoa/OCfejsRRDhSZUKyTg1cm7cI9hhy8?=
 =?us-ascii?Q?wD8fQWkCDD4PJ8N4OQzHoNvN+LtoZlXqLxkByH4FMKuVGSQtEIqcEYegA58k?=
 =?us-ascii?Q?Nrlup/95I1hnTkEgs3UQk2L9E2ujGR1HyEMQBsOpLQGwVmzrGbD9T8DNbEXR?=
 =?us-ascii?Q?OePeB7PeaKZ0CT+QgpV0bEIO6L4VzrWc23y8+fyThAjyJ8IeMR4dXXdu/iRu?=
 =?us-ascii?Q?EpuAiXpDSI+63metnq5Cn93PGy2caetBBsNdbGwAvTEyCB9H1aso+k68WDMG?=
 =?us-ascii?Q?neth1/4b/vUSlfM3ksfr2IjJ1MyjfZOENir0FN1kNafGswRcLgSUB/F8KnCI?=
 =?us-ascii?Q?TLSy7YX5H3qEJltjH8KTkIK3reqpva/L69Uiquxg1d33o94DtaZ9HNkQvpzS?=
 =?us-ascii?Q?LdXG8TXmy9O1j/K2srL/x6TBSJcYe0tpWuWpdgeUYREa6hgYvt6L1S5F86JB?=
 =?us-ascii?Q?QnvAWhPfaq+wVMyJVlmYOT8nORIaiuw+TrfguXHJFPtSS20pdOR4aGINPmDG?=
 =?us-ascii?Q?5Ebq4wIX+QEzzXlRTjUeOYE7E3XowJvFeusDWeEqSJlYv05UYwRBXavqP1JY?=
 =?us-ascii?Q?qDRZ5Eybd4EXthXRZu4Wl2HbDLEglyTnVqFdY6eTaVXzIEftKtCDE1ur9SZR?=
 =?us-ascii?Q?fX1La16gHIk9gBUmVBQ5t4ySCIp8ZoTBKIDLeVJg1g+nriM3SE+79c3P3H6w?=
 =?us-ascii?Q?iSqCGy0UAws5xMWySkd7d7YL8U6s6gYv6oijX5uGr4UgCHRZIoghyqB0HsFD?=
 =?us-ascii?Q?dMMlivWPpGHG5VG7ZJZbJEhz12n0xEmR/mo3zNqLZLf6+uYKl3sDceXa1RZm?=
 =?us-ascii?Q?pkSraMCBhGgvd6M8PR5XYX0aGMAtbMfaZGPbvjSI//w9LGzfH40LhcEZoM0E?=
 =?us-ascii?Q?KP0BF0e0QmRGrQcdIxvopG2lawuas0bo961aXVvaBKP9Nw8bwQuGLpI26sF9?=
 =?us-ascii?Q?rHsDiQ2gi/QDLm56K928LGEIPJnPC770rXoDQvMlHhio4nNRfJSmbLdVABze?=
 =?us-ascii?Q?gZYIJDi4pTl/dTZu9/XXDobb4mne53/4CzK7Xpew/DtWJu6hGR5zDtawEkNT?=
 =?us-ascii?Q?NeQkZMtCQhQLJg6d2SUIxHBGkxxCm4G0dwJsJgvo4unR6qLUMXNVUYpJ35VS?=
 =?us-ascii?Q?ensXVO3IsrbH3sXo47ATurC/IuhW5GTjfLMTHddq7bH9JoB1bxwNPyYklnrN?=
 =?us-ascii?Q?h8ur0DjBxU4fjLaG8s/ey8NsnaZcuu4AaWBAau1u/CFNfMCrheZSghJUJVEp?=
 =?us-ascii?Q?26TNzs98rPAZXPnSBZsUXdzY49S1VGPqcyqli6nVVWbjMA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JNq4gbTX1KAqgBHNmNnKOwHKxnlAHqiSJIHQrwSumQpTrQ48NxpPe+xlM3S0?=
 =?us-ascii?Q?B++u+jxTwKK8lnIArZzMj+q9KVPSnZVyU/ZP/q7oeNhujGgTmOGL7QDVzjpT?=
 =?us-ascii?Q?Twa8TZxSmvLelVcnCsouqxj28eBAXCFRXwkLGKzW1Yf93BIDQX/eSMkTyZGx?=
 =?us-ascii?Q?/gBXyQLbMZ2o2vqPle48kX2GF04hRX4myNW5tgg2BVCtqkJkwbS6mTRjAliw?=
 =?us-ascii?Q?ir5HZYJmmHdZxi8oWfs0jAYuJgGKAZgfSdrM15v4HYU/v4GwsfYLOyIHMHkX?=
 =?us-ascii?Q?yOSK7XZ8I+to9EOAEYzvTO/np9Woe2X3Nwe61HvwjP2Zoadt+ZMzC75nP5gS?=
 =?us-ascii?Q?k3o022aWnJSkcODlXHzo1pyyCgGLbzlofvtiyN9V86q+sWk8WcIyGKqR1bVT?=
 =?us-ascii?Q?zS513tRSBrz5xTZiosgMuO7+vwUN0duucjU3YuNZeVGl1yBhXhZ8c5442QO6?=
 =?us-ascii?Q?bnQGHU/WrKJhVj2Cvf8XgrA3Q3zP+Uj4YsXGb6dbVFwKxPwCF25qkCgMr6iE?=
 =?us-ascii?Q?jsNMvjsuiadFBg/z+PZz3wvKIdiTZLatY4+6ISdhW8Tksi4kyF8ZppfW8AxF?=
 =?us-ascii?Q?uFDoSuRhlnuXNDjeu+bO2uzjy+C3oyuEM7gEtt3nvNInwBTiFOOHyCl7FQmK?=
 =?us-ascii?Q?+eQKVXm/G2Fk8EEmMW172a9wChvKHCVnFPsPJkrqW0NQS7vvRRvKoIlHvHaO?=
 =?us-ascii?Q?QqBzIx5RGZpyBsYypt+KNOJwNURDd4WzcPhAYgjscpndJEoDOl1Zb2vec4ru?=
 =?us-ascii?Q?1I54vaFxOhXm1Jmsgj+dy7Q0+mo/Ivl3GHk5Xpl9RqxiQ/syw0UsNEjnkEVp?=
 =?us-ascii?Q?A7zRw8ZPA3xgTIbVTGDDtBMlPp4FlX14Qg2+RdWKy1BDLnwhGE9IU8xTSxhT?=
 =?us-ascii?Q?nMbjRquVZ2XJpwr3N07OZ3Vbwu4pD0Gbcqjhvr9KWArp8Qp9gp1qWdVZrlro?=
 =?us-ascii?Q?VJ6qneM695iyHDiNRSVhDDp1mI0/SAFcRQoZTnEQS/29kiWd8NbD+nB8G0Zg?=
 =?us-ascii?Q?43jH4N4B3d7FdHoinhLNFLAmYiN1Vs39zehmf+mbSzeO24UjZMMVvirPQwx+?=
 =?us-ascii?Q?3TcAF8idyOhvmfYACxdvyu4izZ0sn27WgishWPVr8bAwnng6nio4MskpCiM2?=
 =?us-ascii?Q?4aPgm43V0kiM3eMg3uEK8kWq3pIji5WikmHAe++T/Ai3UrtyoLFCyEWyHahC?=
 =?us-ascii?Q?I4zB2QM49ooJCXf91DSMxf8daWi/IApCeyr1s5K6Qh18wQMIWjz+iBO8vrQ3?=
 =?us-ascii?Q?5UsC9AQ5XAnFtKHMmijdBmS5bW1dFbnCGtyj9BmwGdUTeWmEV8Oa/vAD5wOg?=
 =?us-ascii?Q?rQyRqv1LQixS14CiyVqJOs0spD1EjtZMWbE5eES7aV0I7mwxMxd9sn0SHvzB?=
 =?us-ascii?Q?17qsdym2XC3Ss+ezNz4wzibPbZkQnsFzic0YEz7KrEy0ZFEjLxhdOjW2Fhoh?=
 =?us-ascii?Q?Z9JIdfKxmpYY5M53DPB2b4ABRcadurwND83LZ3G7+hGpWojqtsB+TftHYdG2?=
 =?us-ascii?Q?fVJTtda8VemfVPCL7jFJBDs0AmSxvIOGQed5uAdiH12Q1f2p4WfWqXSP3SEk?=
 =?us-ascii?Q?HOTlL14jsUhweLAK3YMwkjXu/vc67bSWDk22cugulVu4cBiOIpSITozY0pDh?=
 =?us-ascii?Q?Jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4042d002-dc5c-4b47-3c99-08dce7a22713
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:04:40.5440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V87P/+lGHfipWsn/gxkdqH+uT8k0YgmOudUqQC3I5m1wvs8/6OYtjZDOOjMDZQlLWt1L2s1hKEIYenaoZ7lvR7VQ/Ke/qbu1AykACViqvRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8408
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 21/31] drm/{i915, xe}/display: Move dsm registration under =
intel_driver
>=20
> Move dsm register/unregister calls from the drivers to under
> intel_display_driver register/unregister.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 5 -----
>  drivers/gpu/drm/xe/display/xe_display.c             | 3 ---
>  3 files changed, 4 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 85a51b9d49f8..f3a586913c6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -565,6 +565,8 @@ void intel_display_driver_register(struct drm_i915_pr=
ivate *i915)
>  					DISPLAY_RUNTIME_INFO(i915), &p);
> =20
>  	intel_power_domains_enable(i915);
> +
> +	intel_register_dsm_handler();
>  }
> =20
>  void intel_display_driver_cleanup(struct drm_i915_private *i915)
> @@ -647,6 +649,8 @@ void intel_display_driver_unregister(struct drm_i915_=
private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
> =20
> +	intel_unregister_dsm_handler();
> +
>  	intel_power_domains_disable(i915);
> =20
>  	drm_client_dev_unregister(&i915->drm);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 65f885e03880..7fce210d355d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -45,7 +45,6 @@
>  #include <drm/drm_managed.h>
> =20
>  #include "display/i9xx_display_sr.h"
> -#include "display/intel_acpi.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
>  #include "display/intel_crtc.h"
> @@ -629,8 +628,6 @@ static void i915_driver_register(struct drm_i915_priv=
ate *dev_priv)
> =20
>  	intel_runtime_pm_enable(&dev_priv->runtime_pm);
> =20
> -	intel_register_dsm_handler();
> -
>  	if (i915_switcheroo_register(dev_priv))
>  		drm_err(&dev_priv->drm, "Failed to register vga switcheroo!\n");
>  }
> @@ -646,8 +643,6 @@ static void i915_driver_unregister(struct drm_i915_pr=
ivate *dev_priv)
> =20
>  	i915_switcheroo_unregister(dev_priv);
> =20
> -	intel_unregister_dsm_handler();
> -
>  	intel_runtime_pm_disable(&dev_priv->runtime_pm);
> =20
>  	intel_display_driver_unregister(dev_priv);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 44850b6cd382..6bfad26a3c06 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -14,7 +14,6 @@
>  #include <uapi/drm/xe_drm.h>
> =20
>  #include "soc/intel_dram.h"
> -#include "intel_acpi.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_display.h"
> @@ -217,7 +216,6 @@ void xe_display_register(struct xe_device *xe)
>  		return;
> =20
>  	intel_display_driver_register(xe);
> -	intel_register_dsm_handler();
>  }
> =20
>  void xe_display_unregister(struct xe_device *xe)
> @@ -225,7 +223,6 @@ void xe_display_unregister(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_unregister_dsm_handler();
>  	intel_display_driver_unregister(xe);
>  }
> =20
> --=20
> 2.46.0
>=20
>=20
