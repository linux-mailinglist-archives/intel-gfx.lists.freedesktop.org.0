Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7548AB6A74
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 13:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE0110E616;
	Wed, 14 May 2025 11:46:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfv0Zd4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E0910E614;
 Wed, 14 May 2025 11:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747223192; x=1778759192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M3WAQbMVz4kr/KhkWli92AZs2sinHd3IdfO6B5KIe9E=;
 b=lfv0Zd4miUZvkUXvX0tTOU8kUJWUALisRkIlsVHQPJud3cTdFrEEln3K
 BmNhI037yjJWBgc/chscnyTMRTyG5IOSFIWezKEwqupTf7gGt/tmF/Uqh
 lJHAwrKDdIF2cPmYNnYJ6Xa4py1/zrsoQxBCfq4fA9wnLZy7RNEc+EOnE
 dsDD05+M9EGX3iP9UcjRhnN4dY5wJjSM90A3m2gBC10TVt8QIlzAHHcHx
 6gNjHYkrAg2/8RlyVS8W6yE6NERTXoXd8JcGUrfr4IrjYfVFQOnDHs//u
 wOlQoj5+Rwr1gaq+VcYW+QZ+5q+kne6XVZ+Xc6eRfGDwewR0qRnRrZZP0 Q==;
X-CSE-ConnectionGUID: +BqO7J5dRv+16Knj8jsc3A==
X-CSE-MsgGUID: oN3J681rQxeIWq5HW0qskw==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="48224823"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="48224823"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:46:32 -0700
X-CSE-ConnectionGUID: MCpeRX8BQl6l1GOTexN0fA==
X-CSE-MsgGUID: DJlkVVnDSK2et11uk5DrGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="168956708"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:46:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 04:46:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 04:46:31 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 04:46:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdlQadFfk3ksWnGcVEL6S2JF7kOFZtcS8t/xtIm8u1+TQkRJb3gAGKMJmWq9wHyHL/ZTZVISfzAYR0tY7OQCJic26ENxY+54lBjZu1Dl+QBtCuHCv6C+3XZ6Yj/kBhQE55bVjedsiXpiSaKlAgXiBEKi5jH8B3N6hnGW4HxY+CBD5bit2heFBm6NYZZzfa5ZwpXSixcXCVgJ/jCEWmnuBGDbAeqtIo4zru+YuyV4k2JJCxKsKJgvZ/2ti1gcumTT4FCfue17L9Yr7KwRQ/U/jU8AavfEErALOUvRhVH4ORbbtThKchocVaErEc4AA/f0j4/PnbJgKsyDEOA9HKFuTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fuzKsUXt0/zqS4sIg8eauSLJY3mktZYWDtvR90ix0jk=;
 b=lzPSNf1nyvRhomaBpD+8PcbpnAGUL6B9oVrrfaOgbn2jhQNmkBCbdtIYEPkCBKMJfUc51+EPqLCTnJApT1/VYZJPifTjc88ErYnWLyCN+HbG3K8IdK+04h9hkcxpSvGAwSJFuMKQyfVFrxn1OoY4Z5CRXfFuKp822l0gzBgDEoqZUumLoeIY5Msu8nC8n/jn6nsARx05A+zN0EscyMXTfXmbiJJKgR4Z8yODG4Anckh2LgGlnWm+/6dCU8GAIyGOiu0ikRdy+7cJYtEfacabRu0AHMzCzTQhMo/X+lgZl1cXDmgy6iynaGNa+O/GCesX40FW361vtA+VbwnS7ijGkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH3PPF310D5CFFC.namprd11.prod.outlook.com (2603:10b6:518:1::d14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Wed, 14 May
 2025 11:46:25 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 11:46:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 10/11] drm/i915/color: Do not pre-load LUTs with DB
 registers
Thread-Topic: [PATCH 10/11] drm/i915/color: Do not pre-load LUTs with DB
 registers
Thread-Index: AQHbqHeiijmQzpuCdUW7Ad4Z5Qt287PSOo0w
Date: Wed, 14 May 2025 11:46:24 +0000
Message-ID: <DM4PR11MB63607DD27917C7E76D9EBC4CF491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-11-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-11-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH3PPF310D5CFFC:EE_
x-ms-office365-filtering-correlation-id: 2946498f-dc5f-46e6-b784-08dd92dcf47c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QCKZDdJPyaw+picS+pqrRLJeYj8BJHc+7/qSPieeSYW9zYKlQhe3I78iODPM?=
 =?us-ascii?Q?3iV2eLC2jdx9B1M5sqBq3LbjmJP8kpUE8wB2lceeb2ldZ3Y3RFLOSnAGhs8s?=
 =?us-ascii?Q?g+ehgigKM8n/GxaJpQKYX1mlnuJ7RYn8BsvSRJ5v2fCzRTvo0q+/rYzvUaj1?=
 =?us-ascii?Q?q5mqEsLp23pdC22O+B/Z4lknoQY0YIIPqbXE95TZOYXsz6okBYPOVkZ+k5W5?=
 =?us-ascii?Q?ZgBbXddtoH4O8kaXxHg3DLKfOeEp78qnVkXk3ShaPpx8T/4u0dyYyBh9AIJ1?=
 =?us-ascii?Q?6Qzl309F4Alxt/vl/qPDoRUfDklYRDGRyzPENk6xDS4Y+BlH7pPb2QtbXKvC?=
 =?us-ascii?Q?61kAa2Xj+WGGpFV0g+cS+qlEtmmHW14uvsK5Ain/dWCTosNbgdV1TrjgUnSj?=
 =?us-ascii?Q?MQ9bNsXyI0Rno2g6KPz1d9vxNo1dEPIIgpgDSu6py9oCgUJMJgFaCgLdt8MI?=
 =?us-ascii?Q?jJvUWCR89d2g3p7ntfDlYPierONT08j5ZRjK1HVJzEisy5EfP5eSwyzQ/vna?=
 =?us-ascii?Q?YDsr1Hp7lH21DX4hV5yzCJ63vYcaaZ/0vDKQ7qrD8MS30f0D02uyzjdZXp7Y?=
 =?us-ascii?Q?naL41W8zrWakBtrFpbZ7dIT8/D5fOqGZVummNcE1e94Yx2G7nSuXYYAlSWRs?=
 =?us-ascii?Q?VMHCEji18fuaWARK4DS2JaC7fStgRhX/NBtv08OnC8J+B9gGIDnBO9m+pt1+?=
 =?us-ascii?Q?9kSr81RIEAAW3XW5mTh2dJ+Zz4SKDNWY1FJhWyT0yc+LVYayJ8TADwKwCuaf?=
 =?us-ascii?Q?T87m0rFcX7XF/UE5Nns3HLCxUxM57GC7qmCtXRKzeR3Ij4Gm5xE2aKFfaEKD?=
 =?us-ascii?Q?6/qkkzdiIXa4c3EBwFX9PlFDMyi+pc92w55oFcpuiP5iajxII6NjN357iIHZ?=
 =?us-ascii?Q?e1m5r8Jo+Vh8OXnARShqqp4HBMvgj/dBowiOXGOaewBW4CoY7J9JK25Hb0fT?=
 =?us-ascii?Q?NtDT7OzDAmwGXl/OV3kgjewsH/L7mOuqXJVdeyD+u081GGMiskihefgHMo/p?=
 =?us-ascii?Q?QrdbPWAEZc7s06VODwd/GiZ0B6NgxtlPtDU/8HkP8+tSzQbGta70DzBQXNpX?=
 =?us-ascii?Q?OIWXSW04Qg7rSuxMvLJx93QcYcI0L52SL04XfbLa9MTRJt0Wl3uATgWF/TOM?=
 =?us-ascii?Q?hzUL5vqYQ9YOk8kWYf1/S0LxkpWxRCY6ZxJ6DbZAbzCKJ7ZbuUcp5bvukq1v?=
 =?us-ascii?Q?8HL9E3LpLaC3hA2Q13dx+3HfAyz9BisGxVy1mo+T284wq8UapYM13o+D1bID?=
 =?us-ascii?Q?lMD/qkNFfZDmexTu3rvRwSvUXz7J7VrC0jfJHM3exMjL+HVQTUGoRCYrJXMP?=
 =?us-ascii?Q?B1W5ys/0hXJtIIPMAV9IkHNmB3UciyKabZd5d6LbGAtz8nMRw/FS8SCSuceC?=
 =?us-ascii?Q?eJG1TEWAkKempB4GrFAe728y2yJTtNmslXwn4arh/PDoWNDPFRCoav3GFKMG?=
 =?us-ascii?Q?GmmQagJY6wg9mDW6LntMvJTq2FeSk/+ihB2CHQVlvzIJt2HK+lomUmN9Miae?=
 =?us-ascii?Q?0uUpNk9ZN44Ynvc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9o5zhs3qTkZlC6PlniJvRJfVUpARA+3O0Lfxk1y9Qs+IsRduW/UOgjnS9AHv?=
 =?us-ascii?Q?e1k3PbK4Ldv96FBl7k8DdkaP73F0riAa973LZUVeq2/mDSGDKlI4AZf0NoRT?=
 =?us-ascii?Q?e2bhpWKsit6SnLsmAjtmqolHj+nWcHgeYmp6U99/nKJQFUK0V7sCevrMwYKg?=
 =?us-ascii?Q?6yXWtpTzFTSbvpAbCVujXqj+aVfKa2IpZweSZ+iqXtBeG6jfB6sNJwMTSUDL?=
 =?us-ascii?Q?SsytQlnVYRM3Cshrc02P81m0lTVu+PB6dc8MctjKFRX8vBDrzXBgp7YfVWAF?=
 =?us-ascii?Q?rstlUddSMGi15b+8Rru+kwyIWPbtwtpM0+mHRJU5IkJLZ44+ROtl/zvnBsky?=
 =?us-ascii?Q?vTvTRlqMxmVXThydSvuWeGvFVuvl3knwUBbQVgiLyFLTC8pikqFjj4C7ZUBg?=
 =?us-ascii?Q?Prtd6DCsZf0c7e7Gjy9kPsXpjFSfjDyITgzmP46wPsOe73GaZ6onM4hRZBNu?=
 =?us-ascii?Q?nGP6k5pmCfaDVd05qrDyR6A237XQNoxS/+Gz3vsOwfS0VxPXHppIhXCW99NC?=
 =?us-ascii?Q?kU6VjZaykBjWofM521oB1dsRos82s6gt1kLjW+qGTy0ZnHVM8FoU6ec/T0bB?=
 =?us-ascii?Q?sZ54eF8GkcKc4j5AngCHkSKfBpoESxCR0Tmmv0rONi8qS39c4lTkPs+MiNBK?=
 =?us-ascii?Q?QatTW01SJtWY4LjzLoJhqwveRDcdsgoP+Wx7PoEag/ny20ykZ+v1fzp5noBb?=
 =?us-ascii?Q?pV9OXMuIMxq6xEL8/akuIhQz4w0o9rpS3G+RHtEw4OqYm8hjGKgTVVuKjX4u?=
 =?us-ascii?Q?74sVCMQ9re4yRZPtqF13FWLHkMOxW6i4dPn1hkwmUlQUiRSkORxXNK3y659g?=
 =?us-ascii?Q?rUSJJsbClkU/rP4UhqWtiz4+JDENxO5Q/3y3qsvfOnQE2Kaz7IJgdBq43owh?=
 =?us-ascii?Q?5VmCdaobzIeHWBWtarPnu/2nj8+YbF8E1/FuZKQpp35/vAVMbD9teUp43XB9?=
 =?us-ascii?Q?V6HYd8UXXKtPh+EsxpyoJgnaeD2Px5RI/Y/aNX7k2ktnnVXtcqmDiWCR2cvD?=
 =?us-ascii?Q?W1wweKAOPuMyxxN4CghBt2ARnyqaSHVleefxahVJhI1btz1hSc11IhhYPxmz?=
 =?us-ascii?Q?TXdRUZveynLj9qFbVXb6BFrN5SPP9EduWzRpNoyhP11ZAotYmMnDE8o3GXaq?=
 =?us-ascii?Q?Z1HqaO99pjswOb4JbvtJI1Qw87pvi4yB934oQYl7Hl9v8H67F4TqPc8qjE9B?=
 =?us-ascii?Q?/xHR5cS61tFqIy+tLnotzuBgU6X9bDFSd6LQgPmoIXXUkYPFyxJ7ehM1p9ny?=
 =?us-ascii?Q?DS/XWCanK7bBP604CZBjeMPyeWPVhUpvZ9omaA9vTgzikZ4XcOfehBn+Ndiv?=
 =?us-ascii?Q?LuBV2i+c4lvwOGij6XzR1cZ3L0RDpYC5QaVf97allNA1ATjk0eX2pt/ihgy2?=
 =?us-ascii?Q?FfBM/MNlj344Tu/lVQDEs/zxyMlPeQBNFDNwrxd1E81kuILudsQhs2EG2rhm?=
 =?us-ascii?Q?+LQhuJ6ZnTx8sUhBQd0g/kCd2wMSny4L19GlvbImP2IhKLBIwHLykt7fQ782?=
 =?us-ascii?Q?uSPCZfnQUk1EPtjmW7LEXz31a26tpLy2XbeDmnZDewsmTh+F/fPo8mcX7D0o?=
 =?us-ascii?Q?l8ucz7Ooepde0nZZy+RbYwSGexlHpGzfK4+ffqXD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2946498f-dc5f-46e6-b784-08dd92dcf47c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 11:46:24.8307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qDhtdUFAQEB/gyROL+CADzItTFBzKCqjiKtFjJ2fwB6gatDUTx92ltd2lIn30nczrXZ/uhQwLfQq9pkiU4bmsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF310D5CFFC
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, April 8, 2025 4:30 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH 10/11] drm/i915/color: Do not pre-load LUTs with DB regis=
ters
>=20
> Since Double Buffered LUT registers can be written in active region no ne=
ed to
> preload them.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index ac00b86798fb..671db6926e4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2041,9 +2041,13 @@ void intel_color_wait_commit(const struct
> intel_crtc_state *crtc_state)  static bool intel_can_preload_luts(struct
> intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>=20
> +	if (HAS_DOUBLE_BUFFERED_LUT(display))
> +		return false;
> +
>  	return !old_crtc_state->post_csc_lut &&
>  		!old_crtc_state->pre_csc_lut;
>  }
> --
> 2.25.1

