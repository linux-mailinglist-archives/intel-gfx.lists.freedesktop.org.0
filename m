Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AF2B01221
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 06:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DDE10E993;
	Fri, 11 Jul 2025 04:27:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5P50KUt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB9E10E992;
 Fri, 11 Jul 2025 04:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752208050; x=1783744050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vz/gotLKOGf/vw/6tHOlwlGckwmCKsceFGVZFuyWLRE=;
 b=M5P50KUtsaf59WD35h98lu6hM7cBH8oq6ab3QMhBcfKJjI83mA9deW5I
 LpMFwMKsVodgcfD8apA8u2Q+oXiIT7aAamKdL3feYy7kl2rK/qxi39gFb
 GP91ynyktr5F5Wc0gocA2nWAVWYUPCR8Qz6JYPToTyD8a6CYwWOVfeNbC
 bH156a5X6Sw2Ser0UMv1E5byr9JiY2/Fgu33WcFULXy3BBf+fGWDLTsQp
 cPVu5wZe6HUmhIkZGBBZNaOulKA6Py/0lxwtw1i2//3lQQiqBuJ/Sd7js
 hf+gZUhFkPVJqLx5nsR4oCphB8gvYXBgAA7nhdcz8jISkl4wjcca42PeR w==;
X-CSE-ConnectionGUID: LDT5Li5GQSqcH+doKwHlKQ==
X-CSE-MsgGUID: MhkIwGebTAerBDhc2vfFrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54475395"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="54475395"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:27:29 -0700
X-CSE-ConnectionGUID: +c4sIV9TTUiIXLRB3vQkAQ==
X-CSE-MsgGUID: rgmqWiIFT22btdHKkbFcyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="187270835"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:27:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 21:27:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 21:27:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 21:27:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=noUMvgaahOaogqZYDPB+WmkUQnemi6hs3AUCqO2ZfOWrc5ZnM5jdCzPCIqi2QMqD3NKA27QNLzfZrE7dWhmPWXAcft8omNC0wycCZq6lrIdpnxRP9eJFY41H151sfB28u6EGlCYaG2f9HzwBfNwpONGuRFGyiTgWnpURWq1q3Ze87l7hY1hxF3ECrPf2GEsqzCne73yIuf3+V2zrBkRbyRzwzi6abkesLR7estrTqIu2NiJNYhvfjGpLRoOAO+j2+A4cXtA1e1MWT4oL1upk7k1GfITeDeOdf+keX+4QxhGgFIOai4DjlRcq0mkJouB2A+Z82GxF/LvCntgscqaV3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LOvv/Vl7w1lTEMpZ/w0N8bB0muwwUiUP19tTnA84u+k=;
 b=IpELG5fXWB91KM0wfnC60llQEJRfv2Ok+5fLZgJiepIfY9X83HIuEV8IwgLDaLnZCyAiIRui3ApG6sHvbm16GEGyZ8X2cBEo38ejOmJ8Vz8o8FUb0eMSCLz0KXTrpwMhHM5LUTbr9q/l0MiV6oCFpoGViYrMM2AywmwdQkbZM1XR3lKewciqmQr+T8bitnre2pf2ozkm+C7bVfDbNVCjqAXkjQ755Di3P4T3dWH5oCw13aCpH9cS7WAjTTbl5gmsNNGTy4TtNkCqDh6BSEjZuZ2Ys7KFAGpgw6Er3mHOTfsPV8grDE6opnsIZ8gv8R3WFEAuUcY1nKoiarlUVtaQ8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA1PR11MB8787.namprd11.prod.outlook.com (2603:10b6:208:598::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.30; Fri, 11 Jul
 2025 04:27:22 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%3]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 04:27:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
Thread-Topic: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
Thread-Index: AQHb7CW6DQ3Np0j47EqXkKg66qkg/LQsWVYQ
Date: Fri, 11 Jul 2025 04:27:21 +0000
Message-ID: <IA3PR11MB8937807080384ED5609A3D0EE34BA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA1PR11MB8787:EE_
x-ms-office365-filtering-correlation-id: 6136b50a-6fc3-414d-a46a-08ddc0333acc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AzqWt2o7J3IB0kTStjm+ob1wk+xy0cKmzVveqD+xHDnHjftm2Xmf+m8b9ziX?=
 =?us-ascii?Q?3yB92+d/rIT6LXbaNPumsnYM4LZxu4L+67K44ts6Ruqyg5XGydL0S7ABUt0P?=
 =?us-ascii?Q?q6pqrH3fpQn6Q+6tWvB1ymJPMcCQU0k6PeXYFPkD+PRs0K2ITLrWOGSLU+qa?=
 =?us-ascii?Q?Fk5iupuPztmoNI1kekggUcpgODriJNUEQbJdTK7e1LzR6t+WSqKEtvt0eO+r?=
 =?us-ascii?Q?8VOdi/vAhKXAHIPun3TtEw0EdRnMOPryB1fQ2jWj5q5Rjf/qkIAKmAT9vdL3?=
 =?us-ascii?Q?x8Vy8/7t4sqKjdwbncMakcdcRECG5o3MeQ0qVihNz0ThS8iGSeJSnKshO1C1?=
 =?us-ascii?Q?nJvb7riicWi9y6Aab4uf+3drjQ3aF6+Ztk7UDjPqJRvS6RG/I2OgMfK3r7ME?=
 =?us-ascii?Q?GVSXee+YAa5bfXYKYcUqNkz05TSGjlbOunw/wxWr0Z4d5IpqniMaF9ppVGMf?=
 =?us-ascii?Q?5sM3TUcBda8kpNd+7FcPG+PrjWK88/viAIojUmlnIdA8RGBDBJQuKhlHj/wX?=
 =?us-ascii?Q?0uDQQkhG0tAW42VYanL2JYDMQv4pG469PtI5TEr+LQDCOy0/2ocDtw8iYdav?=
 =?us-ascii?Q?Lc3uzlHLCNN9Toas/r79libHdkWajcy6V1KWeLG5x71OAGaCCrMEaUhS4Rzv?=
 =?us-ascii?Q?OOXssIfWjmrLYBezJJ7es9fDLfD4BDmt4HwhRPTvV1arNd4pwfjI5OdBswX+?=
 =?us-ascii?Q?HsNLdaKstl1zCbbtBHb1HweyKe68cRfoIa4rXrQfJnaUTYqGqtTQ6IEyRbtP?=
 =?us-ascii?Q?NYpDckH6XDeNs6hWt1FJp1B631nchjXn/pZ5U2HTQUaAV/TOfwbTloOqXfHp?=
 =?us-ascii?Q?rORg0t+g4oeOQu+ORWHpzwMCXy1HeahWpsNt+C29deicQCE23yryZuTzjlSg?=
 =?us-ascii?Q?Sac8F6cr4N4fJyecnxyjsPUYxnmfjeLa2r/SJWOAzZpzztpWUgU3E13l7YKU?=
 =?us-ascii?Q?k8qHtblZCshH5NipIA5tuMq1dIDMKX4Auq9B5sinAF8TocjPcM7nldP+aPys?=
 =?us-ascii?Q?KqHmufb1KW6XI8iuUCAcpnq/Y2TQdL6mFF2Z/p7eX3aLT4vzvpNOeSiBFqAj?=
 =?us-ascii?Q?tHqwioWrXa+pXGEeqN92gGAHIcgNHflLfjBec7wIad2IXisAdubPcgGJZH6C?=
 =?us-ascii?Q?olLl7noKa/NM3B1vfc86jbK8/FgH/w/eWdu9UCiLiHcHbxEvfacNcqWiSDI6?=
 =?us-ascii?Q?5b1Vf9gW+ngM9Bn3kjKUJn691EUKF3ctktRP2jSXSVUfyegeRzuFaYtIstRC?=
 =?us-ascii?Q?8IWHH+IrjWwlA/QFy/m1Q0kVP3tBvAUn4UDRTDDc8GtVbOCHwrIXlTDQTm14?=
 =?us-ascii?Q?f+1WirLyRZFz362P1yn+E6pu5K9yLW5riktkyi4fkI+NliOxb/atwJS60XDr?=
 =?us-ascii?Q?9sQ3PkYm2SImbeKklhyLxUALLwAdlpGbG9zqYSCR6GJCQ7ihxcVtKZCAss7Z?=
 =?us-ascii?Q?zc0txV12gRnvoE/V9j42EIsQ4gxdaZ+PdxeedBaJJI1S0xHQCquBsZ2tvEPz?=
 =?us-ascii?Q?jWYrQBun48srSiw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GxJTAZ3iqTI4ZQCOb2K0fvatxDWNoPV+1MKJJTjC+1Kyguy1lEB5kWHGoL3i?=
 =?us-ascii?Q?fuGnUw3bLwgsDYlSMACRQs3bWgR7MFE93YrSeZI0BqzFGAhlLmT7RcdOiNAU?=
 =?us-ascii?Q?ZKPguiS97YcZQh/9wFQi30avsU6y8sGFE3Vxd7Xshps5t8cQwq2fWWfaJHA7?=
 =?us-ascii?Q?6KfGinN6/drzDYWWyWslEeR77FZYPDQCN2ak8WBoDQOJJOid8CPL4YGcGJvl?=
 =?us-ascii?Q?uNIR1jFL2eDyL1qupJNzDiK/dFw701lUacZst5rFki0KEgtVZqsu7T4jsddh?=
 =?us-ascii?Q?s9Wq7AdwKky3kM5s2dlPrEFFrmSdKatJ6xM6SpmRfKhG16hqLidBQA3E4P3d?=
 =?us-ascii?Q?hVhWqmnUPSdBeSyd/wKd3PSmX65oW5T4G3sR2+HxkuM+46k8gEF1TFgyzTOc?=
 =?us-ascii?Q?d6uRG1uVBlVSGl1tGosCZszfW6YrSKPiDKhU9uDBo0mUfqqpdVTqogJUUagp?=
 =?us-ascii?Q?FexnBI5j7i5FSf7jOSLU3pIwZDv64E8HgkECY7hroUY+4EhlOruhU2HKSku5?=
 =?us-ascii?Q?vIkS7uPM1Y0NzmnCLpsS5vYsSWqhgByUnqXG5fSDgtr6nT2kthhwTGEbE2RN?=
 =?us-ascii?Q?kEtogfO3GZJoJIhV3gTVFrGOZuVqMVUyD1mgPFYRmeJGZq7W3cdA+vV7LQ2T?=
 =?us-ascii?Q?HRCG+DvVuiFIPjHqmMmh7Za5DtgyQh7/Rn4ZjN9pJQnAr2tkKxXlzuo+Jypo?=
 =?us-ascii?Q?XSM0PzxgL/sRvdV6I/AtaoHRogSrInsD0KEYB2+k8bNP84qZZ+pOSsGWyKZY?=
 =?us-ascii?Q?zbPLKPIKDmeFL71KrMYAUdbcigMJfOFxi+aU2O4ThiQGGIvE7lB+GrjSk6iq?=
 =?us-ascii?Q?HyupSYT8YrZ2c4GJuzzmbYX/xaoWSKyQFZXs1z+xKpi/f8e5lhz3ArDTEw8L?=
 =?us-ascii?Q?h2WkWqDVzD1vn+p+oATxUsgFNH84VT1wLbQ2HwkMgdHiJByu6dIu1EvRjIaw?=
 =?us-ascii?Q?9ZYwvXURWEG/PFKsiyT/zkMggYE84Vgt7Wnoahzk31oejsK9b4fBc7d8Ip/f?=
 =?us-ascii?Q?urNK1MiThW8kLWkrX+BHMvQL4sFwgs70sgTcfR5XByrmcJjWtFMpFGbD/xF+?=
 =?us-ascii?Q?/iYBxwe8+EKbN5/k9f5MBQkQjs2un4LbTJtAAxDge1vWJvVuCKMKkT3kZgzb?=
 =?us-ascii?Q?8vjOpbZjAvwqVhEEQLyUyl2AKdp7TNUrBd8cvBvOGpj4viUNPWt3dTWqbr/2?=
 =?us-ascii?Q?Z6dQqFskvKnZkQZb0klSO/pYwSGP3c1fx4fwT7fKZ6JYEa39EuFxTbtyiIt3?=
 =?us-ascii?Q?g5Zk7MKHvu6u1mgSnd6yiniinVGe286Vv54Ny2UXOPhuUsYfcbY43ZEdmuHO?=
 =?us-ascii?Q?qgXrUl4iIGGxCVBbWcYMb1Bu8eRnQgg1LHDMXGI/57agGuUmYiJDmB9SAjYv?=
 =?us-ascii?Q?OOd6nMRMJheU+RxqxTd3KR56o4/BS97X269wc0qvEVBA8qMJhYmVWkx0Av/T?=
 =?us-ascii?Q?jNJzDj1XGKPQY4SEDno5/5qe8Fmsur+3vzd01DxVPEpnqcmBP9kmVjdilsB7?=
 =?us-ascii?Q?UUvSt7LZEw8KEwd1up2hOot9cxK2XaeFMki5WA2VPVk9ll09zghJ2Zk/sYSg?=
 =?us-ascii?Q?Q2a0mM2aSB8omw3g6cmencM8wQKssuQzUGosnZkK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6136b50a-6fc3-414d-a46a-08ddc0333acc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2025 04:27:21.8713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QYiOXBmBrFVcMhHhd/DHNzLdDfZtxE4mk5f1JaG4LpudYRXYlGj81enqp8LLo/XhRAt5ecFDTSQjXA0wdh9dgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8787
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Thursday, July 3, 2025 7:33 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
>=20
> If user-space has enabled HDR by passing HDR metadata and we can't
> support 10bpc fallback to DSC.

Do we have this limitation documented anywhere if so a Bspec link would be =
helpful.

>=20
> Now that we need the helper to determine the presence of HDR metadata at
> multiple places make it non static.
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h          |  1 +
>  .../drm/i915/display/intel_dp_aux_backlight.c    | 13 -------------
>  3 files changed, 17 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..abbba159e479 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1774,6 +1774,9 @@ intel_dp_compute_link_config_wide(struct intel_dp
> *intel_dp,
>  	     bpp -=3D 2 * 3) {
>  		int link_bpp =3D intel_dp_output_bpp(pipe_config-
> >output_format, bpp);
>=20
> +		if (intel_dp_in_hdr_mode(conn_state) && bpp < 30)
> +			return -EINVAL;
> +

From the commit description it looks like you are trying to say we don't su=
pport 10 bpc.
I think what you want to says is we need at least 10 bpc for HDR to work an=
d if it's not so
Then fall back to using DSC as we would do in usual use case.

I think we should not even get the HDR IOCTL passing id we don't have a min=
imum bpc of 10
That way we don't have a need of this code right here.=20

Regards,
Suraj Kandpal

>  		mode_rate =3D intel_dp_link_required(clock, link_bpp);
>=20
>  		for (i =3D 0; i < intel_dp->num_common_rates; i++) { @@ -
> 2910,6 +2913,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp
> *intel_dp,
>  	}
>  }
>=20
> +bool
> +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) {
> +	struct hdr_output_metadata *hdr_metadata;
> +
> +	if (!conn_state->hdr_output_metadata)
> +		return false;
> +
> +	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> +
> +	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> +HDMI_EOTF_SMPTE_ST2084; }
> +
>  static void
>  intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>  					    struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0657f5681196..5def589e3c0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct
> intel_crtc_state *crtc_state,
>=20
>  int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
> void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool
> force_on_external);
> +bool intel_dp_in_hdr_mode(const struct drm_connector_state
> +*conn_state);
>=20
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 41228478b21c..12084a542fc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> drm_connector_state *conn_state,
>  			connector->base.base.id, connector->base.name);  }
>=20
> -static bool
> -intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) -{
> -	struct hdr_output_metadata *hdr_metadata;
> -
> -	if (!conn_state->hdr_output_metadata)
> -		return false;
> -
> -	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> -
> -	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> HDMI_EOTF_SMPTE_ST2084;
> -}
> -
>  static void
>  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
> *conn_state, u32 level)  {
> --
> 2.25.1

