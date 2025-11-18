Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E959BC67445
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B494210E1B1;
	Tue, 18 Nov 2025 04:33:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V29CdPXo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548EE897FF;
 Tue, 18 Nov 2025 04:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763440389; x=1794976389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E6oH7QO0r4d615yLMkIYALn/SUlHe5sujL3lURGoQvc=;
 b=V29CdPXoCbctnEvMtPIbLtxefLxR2ZOu48B05uoelDP0n6nzEeW1G0Z5
 rpgG+HjYOSCxv9lJtLfVniHWz/N7rEHqGtqoOjJ4heauiQyeYUalg0eSO
 0YI6nuDkfvZBJc2fynobYL3cmetW758nSlHqspsErb3NCGtc7AT8sR/Ee
 ZkLhlp5ywqVWRx+wKSY9SBo2xaOYQxStuJ3sN01eGcEtDQlORQ+JJmUXe
 2wzCtSBgzFJ2sk+4R4C7shdWM6AOrkHxuIE28lrxZUK6jTeFtl9oTeSq8
 +aWTgSfL3q9qIkul5a69iH7VvSbB8UkdLqB0bNYbdjW7ZG09CI3IV2gyK g==;
X-CSE-ConnectionGUID: Ntd1v/EyTyq/k3Us1KBb8g==
X-CSE-MsgGUID: Gxils7xNRaiidzOMVOYYXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76806265"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="76806265"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:33:09 -0800
X-CSE-ConnectionGUID: 9XLIKHm9T4+iVsb0J0YVeA==
X-CSE-MsgGUID: vAlV5HT2QpCUqU6uzVDLCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="195568553"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:33:09 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:33:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:33:08 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:33:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yN9YElyvBQWBLnbUwcJAxAyGsOZDk9bezFhr3wZSuQUROSZFLms7Ly6zExJNIx6pqxoZJzDMVkfQZufVwyZ52uY4r9uQyPTyROGanYSh2eBB86xReUhfvsJ0kALaI8Mqh4XcAG7VXkz7uW+sWGe5lPUlHSn+2t0t48VLc/4QgJOwWWdzzEiHwBuDDMc/hsN+RyCaUC0PPp/SKRPC9VfojkITMO+tGFVdDsUlXgnjy8Lclf9cXteCXwWjkVe2+QcekqRPeuunh1wySQRrU7GozOgCW0D3+DYpGmqi+bW4BXdf6dAYf+uPIqg4KjcpEBlEQe6JUU+YvrgDwOYb8rMY0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aoBKgE2tKse0ktzXfGBCa9qPc1SfKT9dgCQufdpmmiw=;
 b=KHy3vcSJJ/OtcvNS2CiEf7nnqYVvCyWzsT7A7khS3tWbVSlunqJzNbeG3zho8GziD/zzQc6e/i4/9tmIptv/e2DmrggugoUrBPGRHx+TOSG8N2tr5l6ldSnwA5/3fsuD1ab8WRyzGoxVDZDL/DT1D50qXeCIDu04ARmMQ9kHtyxCvvEpk3w5T42/kX/hFz14GTaFVijfw3+LeSHmHypT06Rd6qSPX8Yfzq+w/WUnDYdOy+p+8x0pMiQuFsjWzR9BeBpyf6UD8aArNorS4sEeGFUfC54oK8vLpTs9OT8lZAP/5O3rBV5STgtBi/gUcsEWu7/nIc1/uwp3+fiwqw0Ihg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6933.namprd11.prod.outlook.com
 (2603:10b6:303:22a::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 04:33:01 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:33:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
 and C20 PHY PLLs
Thread-Topic: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
 and C20 PHY PLLs
Thread-Index: AQHcV7j3JQuavNj2qUGZgDuJaZ54cLT32AsQ
Date: Tue, 18 Nov 2025 04:33:00 +0000
Message-ID: <DM3PPF208195D8D197F1979D266EBC18C61E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-31-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-31-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6933:EE_
x-ms-office365-filtering-correlation-id: d84f23b3-68f5-422b-1e4c-08de265b8e8f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?fG+AwGeprxLFntpx4U82SsYN+LtMKmjbhsLp4tIjZ2tivVdRiz012+r5dXgA?=
 =?us-ascii?Q?2kf4WJFxAtOFQNcNCzKoit1YkJ53NWeQriwqaaTrSGPK8nEDq6vksFJ7zzDh?=
 =?us-ascii?Q?6nWQZL54WJf2S2CIq8YEKoSkYOB2xf1d5H8oBwDO0igzFA47AM1QQtpuSg+F?=
 =?us-ascii?Q?P3+MvNhu+EVEK0rmR4X4AaioBVw7WvADljd7avg2lNjyt/ePTdy8uq3ETU59?=
 =?us-ascii?Q?wiQKu/wks5vB8IJ/8B93cp1weR9MRNLsnrP1hGd/uRurwZzw2OH3VLoeHIl6?=
 =?us-ascii?Q?7erbHDnoxuFzWQUfQWSfKzmLAzYGiBVXcT4iKnC3Q9NWHtiYrdVehQTvsipY?=
 =?us-ascii?Q?OeAtJlVQCv3EEeesySEGxm7KHnP0/pwEwr/7N2uoTNK4MfAQQsrToBGGR09j?=
 =?us-ascii?Q?tUauMZJTWADC7o958km9zdNU6Ql8Y2krZA7MROQ+Kf/SUkpDsZ0sYPMk57TP?=
 =?us-ascii?Q?4tTwJkSlTJKs6gMYJ2as4hfjSlJo27+ZCtl2a2lkgi0wGtLCW7Y1TJOHxUxJ?=
 =?us-ascii?Q?53fZtXuPZwL10fxXXambT3KAlzHj+JMvkTeRLiWptRs43ohmgTNfXEH4n0p3?=
 =?us-ascii?Q?gi6+xShtTsuf4hFmbWYgRQQL/e1qkCG++lsi3mBLQHA4LrxLmvKHjoptoZYn?=
 =?us-ascii?Q?tFHnKynR4yGqMCWluetc1QxJ9lRa3od9eVMOt+b0b1dvjLI6+gslCp5JlZT+?=
 =?us-ascii?Q?jHvB2P4ff5+QGZbSuUmMA2V83OGFTMkK6sbxONQb1hQBQ9o+yteCnDldgGOy?=
 =?us-ascii?Q?FkiLm+K1av/s7ks4wiKBX5rXHJV5Z6xJNOPiFPi9Zx3KhozWWCvzHIx78RbD?=
 =?us-ascii?Q?RD+YEEP3m8J1/tXdG+30SUBeT62DgUAmt6trUJVa3+ZA9vERc3wt+2TvqIG4?=
 =?us-ascii?Q?NOZh0hC/lvg8Z+YJ+dSNMl6eob6Q3pFEcv9uY3IvYQijn3b5/4EAcXe6bg/i?=
 =?us-ascii?Q?cTXPBPHWWVV92DuN/wk8+NOgKw1LvHWAJkgKsPnb3/XtIlC0aCafqEKzwMB1?=
 =?us-ascii?Q?z2nBSWg7wIYNnOmxQ2ah7pgt9RuY0bX5rN09yo9USmLTflRaZrXX/RsyfpTd?=
 =?us-ascii?Q?d0Xckg7JtfAwxmTGTH2HWBq2BtHAWPKOe0Y8FQjd6pYUROVXqkOpveBIB4qF?=
 =?us-ascii?Q?yAbK4CelzP0Kysg15OP9abMsar2udgelvLe+mWl1shtinjZMEtb3WvRzzKr7?=
 =?us-ascii?Q?PHTbZNcSrfbhgnSk0/Ko9NAXkFmTlhPesiNi/5HZZqiYHV+brdCZ0nrUo4uc?=
 =?us-ascii?Q?okDrnWqfEeX6DUzVVIQ8jEzBxwypikZ1i+hqAUikwIwtTu3eGy33WndeP2BB?=
 =?us-ascii?Q?GcAzabZG9eiduCN7WaH+VR1S91Y8W+rg7dOm8xHrqRLhkgGUKUxfOm/SoINx?=
 =?us-ascii?Q?CrWsUz8+fEFh55x1ZRAd8DeO3qoyTAjCIDaqVu0Afhquf9CWBXzJiZGO8dRe?=
 =?us-ascii?Q?TZnUPAMeZYvU5D/Flhz43ukWxYfPIQUeC5xa/vztEpTHC/lqLg/TCz3dKsSY?=
 =?us-ascii?Q?QfaHAkT372oLi1QxNBx0tUAYkqe2GOo9Lbwx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pKec6ATvhreIyMLxlYOja2DlrnKcGtGaIHYKDhtmvhHI1Msw6Utbx+Ghxj7v?=
 =?us-ascii?Q?+YfRpp0LmJFo2Fsu1ZpXAfn6fJOJIo13cUzw8i34pN4LpbJ49Ysb97562bPE?=
 =?us-ascii?Q?INq/q1ifY3ZIWMsV2dvMSC+as3xjgsp8t16Hc38PRvxrHCykz4IGKcgDq/Vk?=
 =?us-ascii?Q?JYfQIfi3psTdExpIQsxXJGtsm72XRQ2wYJktzD1h6hCp6SqJhhfriEbUmqdf?=
 =?us-ascii?Q?mzQkLLwgWwW5ybie9nV9wrcA1hcAK3CbhE+brGD0V7OBGxW0bD1Vigg5e4y1?=
 =?us-ascii?Q?7nvEWL1wRaHLLA8k7iUXvErG5gjwESQpCEcReLAD4pIgaZ1ce3cfzoAPTNWW?=
 =?us-ascii?Q?D/EBR8zxgiC3Y3ecwlqZMK4mJhn9qJLM31howQ0GBkifCPVjNigXpgN2MouI?=
 =?us-ascii?Q?A/cIkfcWcsIcdiRFvL3PF+HfUvXJgEuMAs2PZQbsNqU5Fteo1Cu14NQAtQqm?=
 =?us-ascii?Q?1dbR04ltUn/bQI2CNDUZSZwJ7oqi8GbUXarqNC4OARRrSZHqwasOdulsBGP1?=
 =?us-ascii?Q?QcezMcCA2grxL4YipmgDsE5U47ddA78E846bd0HpLbF9Ct4d67A/QzjBnzkj?=
 =?us-ascii?Q?qScuGaUfVkDtoxxbhdgevqrAlSsIpCM6idT2GE9AhMMYUgIMsYKSOETnm5tY?=
 =?us-ascii?Q?n6/3ZxWcZJ7evUZtbLHVVWOTeAQkO7wTWX9LrdmByp8HBTB4Qvjkd6NoX8t8?=
 =?us-ascii?Q?R48+sK3C+lo46atBGNPQ2dTwk4hh/3s/CCS6jnYnptlPAW7LQzsg3ozBRMi2?=
 =?us-ascii?Q?aT/0KL/wvxe8KAyzPHeub8JOMLoqfOr0myMRBIL6hMjRJuq5nHmPiH2yZGDf?=
 =?us-ascii?Q?9bx6FHU1Sd4VUnwkS/1MVuwaHzkZ+9QhdVYxyIUbOr0z0HSb4zf6w6SPQ1MK?=
 =?us-ascii?Q?bFGPlp+dQx2eIBRtcL1mGV5XpanDYiJUmKJ6cuhg9e9ad/MyVrj/LXyvkRf1?=
 =?us-ascii?Q?wMw02mPuTsJGzt+rz1ijprjg4HdZwUZmV0pHbD0xVxJzBOxmltcHgbt5ymTK?=
 =?us-ascii?Q?4o/x2nPErwfi+qZnfLkhj2S3LafvWBSV99NLCES8pvkMO643ShwLxwSoBtqN?=
 =?us-ascii?Q?k53l9xX4ii+fPH6HHGFoCdjb/YElG0T3+LtfWyf36eCbCyRJzZHrShxCWGMO?=
 =?us-ascii?Q?dt+xNafgl/pFf4wjQ7Z6e8EAXrBBDErC2WGqOtqhO9EVxSNzk4cyleZY2nsB?=
 =?us-ascii?Q?gMjMX7r856/NIGmDKa27i+S2tWQhZu5KAObkJSWxSh5aGSKBK+pbF679eLeJ?=
 =?us-ascii?Q?8VpRsoh2iZKdJ+ogFR/T4gubJaUZrnr9So4AMLCv8CTLXqE/xz9mhkMRzp1G?=
 =?us-ascii?Q?84gc++P1TzsVREOVO8K/mVN5idTJCZszpFmKFhQMMvJbRKfVQayNYL59TS7C?=
 =?us-ascii?Q?GcOw+5n7iV7RsvjZ+Kc8Gy2G552NeprF8i9pmw0SE/woIUJD9tIP/XUPiIeQ?=
 =?us-ascii?Q?12i3fWAuWy/hu5N5i4SQfGKo9nRK38kB3dlgm8Y8HgLY2IxRJU01dOVQB/DS?=
 =?us-ascii?Q?MPq7/NTVxC/+21QC+gW8xgL/hl+zKPO0xph8NSKWUwhN1bLidnSLJIrRt5kb?=
 =?us-ascii?Q?Q/UabOm61EA01F4Y+4D7r+eboVWcqLCZfXpsMEvv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d84f23b3-68f5-422b-1e4c-08de265b8e8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:33:00.8659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XPY1bwd3nJ/WadBxdxYlhgDxTDrXDiYpK7FtFf4wVIgAtZocE4iHs2Cldql4OXPK59lPQPgZwZzaIVQkjgMKgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6933
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

> Subject: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
> and C20 PHY PLLs
>=20
> For DDI initialization get configuration for C10 and C20 chips.
>=20
> v2: Getting configuration either for a C10 or on the PTL port B
>     eDP on TypeC PHY case for a C20 PHY PLL. Hence refer to this
>     case as "non_tc_phy" instead of "c10phy".
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 81 ++++++++++++++++++++++--
>  1 file changed, 75 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index be25a6fdd491..689bd3224919 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4273,6 +4273,77 @@ static void mtl_ddi_get_config(struct intel_encode=
r
> *encoder,
>  	intel_ddi_get_config(encoder, crtc_state);  }
>=20
> +static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll) {
> +	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL; }
> +
> +static void mtl_ddi_cx0_get_config(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state,
> +				   enum icl_port_dpll_id port_dpll_id,
> +				   enum intel_dpll_id pll_id)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct icl_port_dpll *port_dpll;
> +	struct intel_dpll *pll;
> +	bool pll_active;
> +
> +	port_dpll =3D &crtc_state->icl_port_dplls[port_dpll_id];
> +	pll =3D intel_get_dpll_by_id(display, pll_id);
> +
> +	if (drm_WARN_ON(display->drm, !pll))
> +		return;
> +
> +	port_dpll->pll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(display, pll, &port_dpll->hw_sta=
te);
> +	drm_WARN_ON(display->drm, !pll_active);
> +
> +	icl_set_active_port_dpll(crtc_state, port_dpll_id);
> +
> +	if (icl_ddi_tc_pll_is_tbt(crtc_state->intel_dpll))
> +		crtc_state->port_clock =3D intel_mtl_tbt_calc_port_clock(encoder);
> +	else
> +		crtc_state->port_clock =3D intel_dpll_get_freq(display, crtc_state-
> >intel_dpll,
> +							     &crtc_state-
> >dpll_hw_state);
> +
> +	intel_ddi_get_config(encoder, crtc_state); }
> +
> +/*
> + * Get the configuration for either a port using a C10 PHY PLL, or in
> +the case of
> + * the PTL port B eDP on TypeC PHY case the configuration of a port
> +using a C20
> + * PHY PLL.
> + */
> +static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder *encoder,
> +					     struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	/* TODO: Remove when the PLL manager is in place. */

Is the comment needed anymore

> +	mtl_ddi_get_config(encoder, crtc_state);
> +	return;

Why the early return code after this point then serves no purpose.

> +
> +	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
> +			       mtl_port_to_pll_id(display, encoder->port)); }

Have the pll id in its own variable.

> +
> +static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
> +				      struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	/* TODO: Remove when the PLL manager is in place. */

No need for this comment

> +	mtl_ddi_get_config(encoder, crtc_state);
> +	return;

Same question  why the early return ?

> +
> +	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
> +		mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_DEFAULT,
> +				       DPLL_ID_ICL_TBTPLL);
> +	else
> +		mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_MG_PHY,
> +				       mtl_port_to_pll_id(display, encoder-
> >port)); }

You can have the pll id as its one variable
In fact you can call mtl_ddi_cx0_get_config just once if you have both port=
 and pll id variables assigned
After checking if intel_tc_port_in_tbt_alt_mode

Regards,
Suraj Kandpal

> +
>  static void dg2_ddi_get_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state)  { @@ -
> 4310,11 +4381,6 @@ static void icl_ddi_combo_get_config(struct
> intel_encoder *encoder,
>  	intel_ddi_get_config(encoder, crtc_state);  }
>=20
> -static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll) -{
> -	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL;
> -}
> -
>  static enum icl_port_dpll_id
>  icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state) @@ -5260,7
> +5326,10 @@ void intel_ddi_init(struct intel_display *display,
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> -		encoder->get_config =3D mtl_ddi_get_config;
> +		if (intel_encoder_is_tc(encoder))
> +			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
> +		else
> +			encoder->get_config =3D mtl_ddi_non_tc_phy_get_config;
>  	} else if (display->platform.dg2) {
>  		encoder->enable_clock =3D intel_mpllb_enable;
>  		encoder->disable_clock =3D intel_mpllb_disable;
> --
> 2.34.1

