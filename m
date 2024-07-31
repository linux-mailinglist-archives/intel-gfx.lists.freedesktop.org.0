Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875E09427D6
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 09:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1602C10E0A6;
	Wed, 31 Jul 2024 07:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHjxxPDl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D06510E48C
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 07:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722410833; x=1753946833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pePNsPj2/1Fg6iMMW39wpYtcc9C2MtTpn2sqYEaIFiw=;
 b=ZHjxxPDldNVVfmgbna1vmtuoW7Hxhion1GsgrxjvCY9RbyuBTJte0n68
 Tgg13kGYW6TsecPyBVuHXyIugrNeQgcXhVB3cWzCvxf0vR0GwDgnK3nqm
 mGtvfeGVBgnstTIxDcJnuOSm4o1+pPfUrFWJDQ4OLJ0TYEj3S0WIarEju
 7ynT0lk4EWVWR3/Ev5bJSM3EFC8w3XUACQ6+sETCi1I9obloti6dn7o6X
 FxDn8qvRxSRiTaoPck5XmJAdt/MvYboBAf548HjOoqWIhWdTXYFtwgl3z
 n5s7kWe8Qey3cSgvpVQ1gehNywXtpfYNFf4df6yXh65Yn/ImKLjXhTYbK A==;
X-CSE-ConnectionGUID: 2YLyQID8QfKKPzlDCoXf9w==
X-CSE-MsgGUID: wz113BeIQcqPedgy4q4jJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="37743224"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="37743224"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 00:27:12 -0700
X-CSE-ConnectionGUID: T74LG4aPQTaeLUnw6l5g4A==
X-CSE-MsgGUID: Wo//ZpGKSXy/MDW/WZYjUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="85525104"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 00:27:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 00:27:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 00:27:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 00:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AccBiqWCHeO5S2jpIMaWXIZbXNm48iIScXZZ+PkwEog/Y9i0/QwMOSE0helbHx5Oi3l9Fvm9+oXxI/CYSQBRdVBeMo9ff9WX6GROOxPfPLbJyIVTylKPVn5fHVHybHfAbmGdkm5YqpUXFEC0hNuNVWUQCvC714kLU862izNBo8tO+J4ZvZbwwuWVPcxIG0KB9Dvza48F6WFcfpFu2XBeQwivwhjUVKVRguZxhU9v2Oa4m+Xo7PrZYtHUkHfCfVwUEKsaxV4q8vX8qZ6Pk7pYxFkAqP04iRV6WfUVs3f7EN5ep2EX+E7OtDMWPyJwftUf7gzPFml0Gyj5jT7oH3qTKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L47AY2BhfGDmLt6IL+r3+cLxMH4n567o5nvQbvWF4eg=;
 b=YnmS0p4kIG811aJ96i421WhC1ZzoGtuG9voFQ3Lyx3mzQPex2cI09SN8MApp2mZ98SdH+mwAzvr2Sf9X3BYsscKsOVCZ0JhB2EpEj0vBRXbUME0+BuIWHp3WKwt3zJtxf0BnGIoi0JeDDXsHvD3g7Q4mzI29nrTPynZriDNnHlSpzeYVHSVo72rIbeqwOvC9wHRPWPe3m7esw0mE975Eu3i5fR1+eAAetyCaSCcwsE2kAmVbxZqv3evlG4HEdeYs47Vvv/bd5Lb8wEgvkoj0H1UOHse94hirgSixvDuJyufOhe0yQa/wYxzDFOyWYptw+0Ie/EQ+l89cOdXItzEYnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DM6PR11MB4643.namprd11.prod.outlook.com (2603:10b6:5:2a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 07:27:09 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 07:27:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 06/12] drm/i915: Split current joiner hw state readout
Thread-Topic: [PATCH 06/12] drm/i915: Split current joiner hw state readout
Thread-Index: AQHa2OrwHGKA5lN1fEuKSCe9FqsQPrIQg/yg
Date: Wed, 31 Jul 2024 07:27:08 +0000
Message-ID: <MW4PR11MB67611518B31E869FD11C4B5AE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DM6PR11MB4643:EE_
x-ms-office365-filtering-correlation-id: c7535b22-f160-4a46-6035-08dcb1322fcb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Kq6qgyVJmRSpnf8qKFictYk0JQYLNBCfLGQKdUV3XcKqE6WJ4n7Bg+aT+oUu?=
 =?us-ascii?Q?8ZUx2j+Uk4dHx32ZHwUEjk9QNp1CB31Y5UnWkOyCZKd06dBQ8yPysyQ2WIdn?=
 =?us-ascii?Q?YOCuSgqWvx/tVyEx3pAiy43SmjAzXneAlnsobRDcrtwCQBweSoDQcsUkdxnU?=
 =?us-ascii?Q?OyjAVOFSjSV7HUROiBd0oqTiHh1Jd12isyMBKMpFonTpw7j7bR21i0pYEm6t?=
 =?us-ascii?Q?dWn0EVIa7B7XBg+PQS9ULzFr+k/9rtBGpT1weYxbghuDQTZLy9r9Tu9l8+a+?=
 =?us-ascii?Q?N+6fxz1IZGBa0Z2Fc99Go7xFUkRk32TTt0eJcFr5ItPGXpGx1fiuaXmfMuUx?=
 =?us-ascii?Q?GI/Odz13J961nA5h6OhrJT1gjeyoDWnrHUqd1TMNzL3qo3NTxQZ+godhM8Qt?=
 =?us-ascii?Q?v2YBQxIdI6G26C+NRd1K0StZZ9PBYyfSDy3pbNJbdTlXNWZ9IRJRRzD4M9OG?=
 =?us-ascii?Q?y/Ldi/4xFJz6CH5avM3m8hlkH/BXOYc5yOWrySleJwnHJUzQ3cX2okURpaZI?=
 =?us-ascii?Q?PV/kytGlaikBt0exgomTqzowK79LYgKmqR9x/UgXIln6oI26jpBT5Es2g9Dt?=
 =?us-ascii?Q?u2MkOX00AvKtAWul2tevQ0EpBrkLcIAW+BGdDdAgaUK2EJ5QM0suJ+l3m3d7?=
 =?us-ascii?Q?PyiYhynBDrEV8FBMOUJ8HuPyKzJBfUcIFDuH5tHLlM69JPIFU69Kj6AwVtSc?=
 =?us-ascii?Q?KF82Zf+BpzGtNABr7Lk4cKn5iNzE9NKVdfg9LeVOVQOi8FWkwh+OPjyMmmhT?=
 =?us-ascii?Q?/zg/zePKEHMLxhWi7ycH39J5ovuIYvU+Xr0eiMpwO7m1pSV04Qj/wlgJXC6j?=
 =?us-ascii?Q?a9HfYSpwPqMA/7D/TNVfyni819TqT3FblhD9lnAJPyhBqSnQVwRVcM3rglfN?=
 =?us-ascii?Q?4FcPKD0ESxLtSasAm+Yp2dENwSHvobRuZZ+nTNRg5/s4qGgnb3vdM+SewS1m?=
 =?us-ascii?Q?hDNH08Cvyy037gW9uuuNfqOzJT4SAGozyZjMbEaF8iUVo/uoyKjzgXFRx1Gn?=
 =?us-ascii?Q?kUuBYPXL5wZ69peIRuzg5lAqVUjxSaPjSD3UgkLKe6WOTs36TjJQ9odnk9l2?=
 =?us-ascii?Q?afdxLkEv403nZRF4FKzOB9pG0ZuGNAytBPu5wACKIZAn2mNFRjVg7XeXdDJH?=
 =?us-ascii?Q?mGzmsnOY6RQyE7noYnKxU5XPM83HKDuxGB8Av6TijexVmLMmmgxgLgpocdkr?=
 =?us-ascii?Q?0gXXiFiMMFI3L1ISgX1GcGwEH8kRgSnobd0Tnrt/r4GUvj3A/j/eL8truzvG?=
 =?us-ascii?Q?HCYJDZ2r31HSQuytY3sZwpRPq1PZH9/mbvJHaE4UTrLsbFBDp+9nvKzZNeC/?=
 =?us-ascii?Q?emOUZ+mnooreTgZ8CYQC7Z1wpAtRTBkcwt7EKqQPbBJJf7aNgmLOEJxTD295?=
 =?us-ascii?Q?00nt+hsJn1KT6vneq3eukq/zXKSuYuYNuJWrOCLWVD/suzptOw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vlQH68NH86Ff1HJ5KsmflypwsNklS2S8qjZOg2vKQdobxpBXjQRLQ+IBkpNT?=
 =?us-ascii?Q?9MM9jCAC0edefktIjtmU+LKtgmSnZZ658c2F7z1m/mEfPy0SmNybyiJsCC2n?=
 =?us-ascii?Q?0CxhPK9EUi76vHRWBx9qtMk82B0tknblcwbwBeqWITuV7or6hT4t8DlCKnB3?=
 =?us-ascii?Q?zRZmwKM4A4EA6qkpXYVCUYi9gd+7RDKZoZtkEx3pREip/DXHq7aXzzCmHFYw?=
 =?us-ascii?Q?bFDyucmvq2oQ3l75ZnyvoU+XosE3rFSDSBWIqmXe1tkmc1ZgKxpy2qGuzTV0?=
 =?us-ascii?Q?cbHXgh65tYI4SpAZFQOtdxN+Wo/8f0qRnjL8wR6BDsBt7HyPAYs7MShPVgA4?=
 =?us-ascii?Q?VcoSc1lG4ZJWMYZEuEVP+BKOtLCa4mw0fraHvHLaKDVl6SN0HYtmbjOrLAqN?=
 =?us-ascii?Q?XyvBFsIVg7rsrntcfLl5zFDjEkkLc2R1hupI6qQxX1z51hYaLkSbs7QJ3QlR?=
 =?us-ascii?Q?I2nWMtbqr/iX3K3lTiYQzLTIa2nrdXlOlvPaDvP6Ih0DYls458F6GSYolYNb?=
 =?us-ascii?Q?X1MTsuSxLNsOPrBezpuBshgsWfHLXyvg7CGxMyyO5XHtgVnLYLNTPPdSdmT7?=
 =?us-ascii?Q?2MRVwXAccdXf8zxEQbulFBp2CyNhfXhnVa/hAri9+7PTvlsqsxRBdV4Jd7Lr?=
 =?us-ascii?Q?fn4I0F+4Lgh34AhEj5oH1HJndRLC2ROiApHCDzEGGEppUfPtBcPF+RYvEYAW?=
 =?us-ascii?Q?UmzcW3cZWuf1QmQb+mSDDXuVLnNocMzdMdoxk8ITv8N4PLXpbVkQ8M5JFVVj?=
 =?us-ascii?Q?/Uf2DpaFnKPm/eT1drjO0WLCx+LE7Gk/JUOLlrxFuAAzsbRA39iIby7Vwfqk?=
 =?us-ascii?Q?qrR1DTp4Jbw0fWtp00LrgUPUtChYnjtoSLjt5RuXGHnYngAtEKGzGr2PVuuP?=
 =?us-ascii?Q?Eu9/nPaOOaNK5/DT8F6kjUwkKlwte8fc9+LPT2wIPkLs3n34CG/nDXDDp8K2?=
 =?us-ascii?Q?UdIRu4EdS1e+IgwsLvjPgFzydFthElp1Ddgfgu+k5+Hq5j7Kfjplv+X4e0GL?=
 =?us-ascii?Q?iXI7b3ezPwBxc2InjAfQ8tTg188Xwh5DxwA0KjoGRHgnqdvo/liNjD90K7wj?=
 =?us-ascii?Q?/YWwsrFg7UlwOf/j/1gVU7TOD5TxlmbcJ749umOryMQTvT+At07ADzsSYBwH?=
 =?us-ascii?Q?s0Vk85GZ395J0jVWsJUM8q0dcYhjr7vF2SSeplhPhs2NVoiVMbpTzIZ9Krwg?=
 =?us-ascii?Q?1DzqB75AkclVp4CKj1IpjKZCQLNubDaPKMQ+MzPvv0tiELE323n2dIytrhXE?=
 =?us-ascii?Q?I5pvL0WjZ1yxAQN1vIqWxYLUqCjhN8zJbII0EkgXkd3Qv3jDhtpt9mCzYnHL?=
 =?us-ascii?Q?nYWfj+GCf8XjBNstvem54fhjkyuElmkYpRmbFWfU4yETiYKSawIhEDJYz9l6?=
 =?us-ascii?Q?i6sZW0UoHO0mW+Pa/0o/JG6fTcJBqO01G4HOokgrz5nnOd5YVCTjOQ3gJRG7?=
 =?us-ascii?Q?hM9RgTw2WeZvnpFua+9Irvh+F4kdAbdVej3AhbwUhme218Wioh4BzcpgbFC3?=
 =?us-ascii?Q?wVFUoGNe1twQQ4jTVYhY6vF4dd9QvqlZGGXUh+Q7Bz9k5EKNdLtroL/afBVF?=
 =?us-ascii?Q?rUd26VNcS6Gc+QeAZyWWma3Ul1I07qaJq06q36M+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7535b22-f160-4a46-6035-08dcb1322fcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 07:27:08.8000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJ5PdFsFyy/hshZkxzVK2qoTRNMxZTl3vwTMNVKNi7NYqbBO+IhTn6ShRQ0b8uAXM+kZgkdtbiWFcG6HFpsZHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4643
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 06/12] drm/i915: Split current joiner hw state readout
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> We need to add a new sanity checks and also do some preparations for addi=
ng
> ultrajoiner hw state readout.
> Lets first split reading of the uncompressed joiner and bigjoiner bit mas=
ks into
> separate functions.
>=20
> v2: Fixed checkpatch warnings (Ankit)
>=20

Use imperative here
Other than that LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++++++-----
>  1 file changed, 48 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 38e7c6811bf3..4aed8117f614 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3590,51 +3590,82 @@ static bool transcoder_ddi_func_is_enabled(struct
> drm_i915_private *dev_priv,
>  	return tmp & TRANS_DDI_FUNC_ENABLE;
>  }
>=20
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +static void enabled_uncompressed_joiner_pipes(struct drm_i915_private
> *dev_priv,
> +					      u8 *primary_pipes, u8
> *secondary_pipes)
>  {
>  	struct intel_crtc *crtc;
>=20
>  	*primary_pipes =3D 0;
>  	*secondary_pipes =3D 0;
>=20
> +	if (DISPLAY_VER(dev_priv) < 13)
> +		return;
> +
>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>  					 joiner_pipes(dev_priv)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe =3D crtc->pipe;
>  		intel_wakeref_t wakeref;
>=20
> -		power_domain =3D intel_dsc_power_domain(crtc, (enum
> transcoder) pipe);
> +		power_domain =3D POWER_DOMAIN_PIPE(pipe);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain,
> wakeref) {
>  			u32 tmp =3D intel_de_read(dev_priv,
> ICL_PIPE_DSS_CTL1(pipe));
>=20
> -			if (!(tmp & BIG_JOINER_ENABLE))
> -				continue;
> -
> -			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
> +			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
>  				*primary_pipes |=3D BIT(pipe);
> -			else
> +			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
>  				*secondary_pipes |=3D BIT(pipe);
>  		}
> +	}
> +}
>=20
> -		if (DISPLAY_VER(dev_priv) < 13)
> -			continue;
> +static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
> +				    u8 *primary_pipes, u8 *secondary_pipes) {
> +	struct intel_crtc *crtc;
>=20
> -		power_domain =3D POWER_DOMAIN_PIPE(pipe);
> +	*primary_pipes =3D 0;
> +	*secondary_pipes =3D 0;
> +
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> +					 joiner_pipes(dev_priv)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe =3D crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		power_domain =3D intel_dsc_power_domain(crtc, (enum
> transcoder)pipe);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain,
> wakeref) {
>  			u32 tmp =3D intel_de_read(dev_priv,
> ICL_PIPE_DSS_CTL1(pipe));
>=20
> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +			if (!(tmp & BIG_JOINER_ENABLE))
> +				continue;
> +
> +			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
>  				*primary_pipes |=3D BIT(pipe);
> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +			else
>  				*secondary_pipes |=3D BIT(pipe);
>  		}
>  	}
> +}
> +
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +				 u8 *primary_pipes, u8 *secondary_pipes) {
> +	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
> +
> +	enabled_uncompressed_joiner_pipes(dev_priv,
> &primary_uncompressed_joiner_pipes,
> +
> &secondary_uncompressed_joiner_pipes);
> +
> +	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
> +				&secondary_bigjoiner_pipes);
> +
> +	*primary_pipes =3D 0;
> +	*secondary_pipes =3D 0;
> +
> +	*primary_pipes =3D primary_uncompressed_joiner_pipes |
> +primary_bigjoiner_pipes;
>=20
> -	/* Joiner pipes should always be consecutive primary and secondary */
> -	drm_WARN(&dev_priv->drm, *secondary_pipes !=3D *primary_pipes <<
> 1,
> -		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes
> 0x%x)\n",
> -		 *primary_pipes, *secondary_pipes);
> +	*secondary_pipes =3D secondary_uncompressed_joiner_pipes |
> +secondary_bigjoiner_pipes;
>  }
>=20
>  static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipe=
s,
> u8 secondary_pipes)
> --
> 2.45.2

