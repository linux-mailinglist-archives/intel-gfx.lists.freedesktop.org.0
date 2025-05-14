Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBECAB6A82
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 13:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1FD10E61A;
	Wed, 14 May 2025 11:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QLm+kTfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C258510E61A;
 Wed, 14 May 2025 11:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747223425; x=1778759425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/QOdUNezguJZ5z4MVF1CSu+suGnOr/08PWLvt42lAHE=;
 b=QLm+kTfE2o2sbJQAv+O73BXT9EmUBwBU1YgveAfiS/XttX1YhTsfJLYW
 1qJgmqSe9Qw6uVHxwGKxtFk4ch9P20y7gvj/teUhsvh9GAywOyVmn5cKB
 pNj4I9WgmwSERKsUXowFLDimdVX4f8Kgp8TEogCbxZQapakcaZNostb1e
 qBnS9QmSeo54mmVU0f1URckwToyyT3+CY/eazLnIhLVglnr7sMICJ9HZm
 IxOcG+9gEPQqCryIV917tS5jRAE8fNpl6LPsQRaxEAZWWXZd85FV6K3B0
 qiR+jQ1keR/RmdphEpIYs9KRj8mzCVqeorKD4fnBmBWFyqpHXE/zSAgog A==;
X-CSE-ConnectionGUID: OS4/fIF3T1mk692eDkUyrw==
X-CSE-MsgGUID: wP2aNU+SQKqwsdYuVuHxOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="49048801"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="49048801"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:50:10 -0700
X-CSE-ConnectionGUID: i3k540xGT/6voFcTogz3mw==
X-CSE-MsgGUID: 5LssQPT9RnaB14WibiYMew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="161306436"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:50:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 04:50:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 04:50:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 04:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WZA+2pf6kYfVnvZfLOWlTyq9O2Sejf3Y/0bxOjdK0l9ZERfXDFd3LMzSQSwdKb3juruqwVIheuzM+YKWzI0TAKQjTZfjIi3RDlolyQCstYgGmvW+V/3bkWvNUyqytEtRrxUNsnmQt14TlYV4zsBVwcFVbUyrr5B4mwCky3DCjFQ2+D5UxJ0YOY8iDaCR+RVGdZg8xclSc0gHcXhQb89YQcxSYA9FUXCk6VJkSQyFT+mQrlEGLHhuiEgcuMwQ30/ZmewX97VO5LGLbC2W2oXxouGz32nqQDPaNdLZZTT2Wxbfb4konK2mLDErWkaSREaGU3U7AVbHQle5c2jABpVPvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9tCmMYWMFzPM1gXNJiddS3Ww/+sTfZ017MdH09Gbgcc=;
 b=T1H0ctogr3gA5ISPIhfxHrjXsHFsOQd0xh18J42gSplDHUjSj7Htp8AsW3oRyV+YckdkK0YkjSqBTPFsCyZUc8fErwY4KWQBQmTvCCPMEOytzfMkLgk3j4Wsh/rpH1Eg498Om1F14dfn27Z9jEC3lQaO5xcmafkwAIZQG0/U1SmhIzTAFidEtqRnxMLUTnuNXjyX7kDgKOOlOnZGbQf7cwdJZlIDi3TOmLhIKBWzZNGiK9FNeCTwS7S4kjCjytSpVg4WhZ06XFvJ5DGysEpG8gtzkohGukAw/69A04DVGnzpMOsZsNbY2EXeM4bkuKoyAkgERoTfIE0v0UsoKfhqdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH3PPF310D5CFFC.namprd11.prod.outlook.com (2603:10b6:518:1::d14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Wed, 14 May
 2025 11:50:01 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 11:50:01 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 11/11] drm/i915: Disable updating of LUT values during
 vblank
Thread-Topic: [PATCH 11/11] drm/i915: Disable updating of LUT values during
 vblank
Thread-Index: AQHbqHeghJU4yPxSEke8hEUXQ57ka7PSO4aA
Date: Wed, 14 May 2025 11:50:01 +0000
Message-ID: <DM4PR11MB6360054C54CE548F574E1DEAF491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-12-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-12-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH3PPF310D5CFFC:EE_
x-ms-office365-filtering-correlation-id: 4bb6063a-3704-44ea-9b34-08dd92dd758f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MmXX7Lbt8aGBA/ylnAB+94D1Mfqc4buS27JIXNRq9sjH/pK6oXtiq6KhLYEk?=
 =?us-ascii?Q?nL7LW7lISfD6SYy38y7uW88xK0uj2j2jT8qcZgU6e5vlOsVqsFsc6JNlR0m2?=
 =?us-ascii?Q?979pcYOOPakbSb6K8jmqnBBgNQw1iTnHgfU1Wv7TTDNZkDJq/D5JWNHFW3dq?=
 =?us-ascii?Q?hiEZkgmvp2UDTyuHi7AlkwzN1amRzQ3S+oAqjHdTw7+TMKaAD1cFvwsZCTH1?=
 =?us-ascii?Q?YV5FHX+zQ8eR82IYcbnjeq286B5RK2MGPVvfl1Q4V8HjBgjnh2voQW5y9sEn?=
 =?us-ascii?Q?Grvvig63fzzf7i1FqXrhvXeCTnnvnXtq5VgickiHRfuRLAT0FmFdlMTPaf7g?=
 =?us-ascii?Q?oaWN20owCZMpKC/N48oihJpivOzIBVaB2ctLltrkoFijjfH2awcYbZmxTPF1?=
 =?us-ascii?Q?c+8wrSMVcwBJY5Gd0/l7hMIqzrBg+CUWs+gO04ZSetIXEEzZMThWug3jivCL?=
 =?us-ascii?Q?LIRZc7MjxgwNsc+T62O+XthKE2pGHCmv8NzeFQawNS8pJqGpZCcNw0o6/5VW?=
 =?us-ascii?Q?7d5ly043NWqUM9Pb6CGazBuUDg2IXgjafGpNJxP4bjAaLYO/jxRIDsfwtHhI?=
 =?us-ascii?Q?ucRUhBY9qnEWxm/5ifaRdVrunxGgIdmtzLBdnkVL1/X3L3+5yI8XyIDZ3Yl8?=
 =?us-ascii?Q?Q2rBU6ipCSXEzdH3UgHgpzs4S/fVxlCzxXwpxDmVwBl74+N/2RTFSeJqkykn?=
 =?us-ascii?Q?FwoWA9O/eAxLcYaHsvbE03nyvUMsHkbYJG7a8LD8P7ItUsBLn+2vcCmAKQiO?=
 =?us-ascii?Q?59UOPWMYclpNpk2OdoerHdUcVAqCZrCmVoM2zB5wIcwJHgLqMGcj240gxyhB?=
 =?us-ascii?Q?OGetJNXa8BMHvGFrhZR7bhe3DjD0vItVlxdHzeTsix5d1LCpVmJISKxVITFV?=
 =?us-ascii?Q?oEBTIKqI53RKsyoDCN979Z9EXKA+9Hx68GqZoKbKgimW2+T4p1nlB/yKTlEg?=
 =?us-ascii?Q?KvSyZnbbSPvCc47w6kfS4J0reTkwf6PhwYkLyYGneVWvHsEFgjUpBM5RFq3a?=
 =?us-ascii?Q?yXgzOKeC7I7sUXaM6KVyEf4tAsWJHzCr1Z1a7YRqii851lnjbRUzqlbv7NTc?=
 =?us-ascii?Q?CjvihOFtg9GBtRwSBh+nXA7LoX5Nro7QM+e6RHQyIaKTpwwzthuCyJCqrQta?=
 =?us-ascii?Q?qeDPeoeJw1eQMfX+snk8sQROsz5B+vJSLP34ZFrR1D5cg/Tw+Bzkorq+fd7k?=
 =?us-ascii?Q?Ba4N6cwdxYGh3FSJbcMg4Q1pA2x0dC2gCR7sdBYWM550Fe1mVd2lFf9Kk4Ux?=
 =?us-ascii?Q?tpHG1QTQxfh90FiLOL0r0lX0ynNRKXiU1kPEWuI166Bn5tjompHtRtD299io?=
 =?us-ascii?Q?lxA9r65ymkc7u8t5KNoUOpbYg2G81sOAS4v5wYglkMVcv8T8jqgImrA6AodZ?=
 =?us-ascii?Q?Jl+OgSvKZGLbeFw4MCCkoNdx+wRwtobKqpU+WRzT071itjX3gSgmWTUvBab+?=
 =?us-ascii?Q?na4uQgEQHL5SZSQQc3G0Q/25/mwFKzquBQorp02VKY98Ii6wJLFTRQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ekTD4frIYvgG6cHMuR1GCVt8PssBTKcBe8tgKTpD5LDcRlwnd10qPT7jjDoC?=
 =?us-ascii?Q?Ngcywx8LMrZJ6XHA03dP7/MmVrhOHJbhiSv2tZ+ZFdzK0y2zGR6d6F8Q+Er7?=
 =?us-ascii?Q?EMQALjlDoGeyudD1xEillFn56KxFjo6rIqoS8EvYX5wrGXViM1cxp4Uqg+UJ?=
 =?us-ascii?Q?ky64gt5fN98N0JdBR4x8Orey2bZwyWKpAuUmK7yTDBl5wtptQTSEO6Rk9JSC?=
 =?us-ascii?Q?ba/oOFdMCqF8XSqDDkHmUdRT/eiKKwuuijj1GDCfDYDFCiGDDPIMS48wnct7?=
 =?us-ascii?Q?gj3PbY58qNjPdHfgjsS0y/6TVa7tVXbf5o5M5s5NhZwBP0ny70AWjyCeoLsR?=
 =?us-ascii?Q?LmhhQtWy6xb7VPb/V1vURB2Vxf9f06AXzxc2K3+Lmq9mvv6w5vqx0iEgL6Qd?=
 =?us-ascii?Q?q2x35sMbeLnCa13FFru29d5uzC0PYy208wn+aHzjTCvTgRRJ0CSdb71CayhY?=
 =?us-ascii?Q?vY4/PPGGo9UA9sGW1LxXD9DWIXxOPOj4JHqN/rOii66gH4ioJwC9JN75u7p7?=
 =?us-ascii?Q?m9yRwnVwFlY3+YY0zB2usaY4xrdcDTfbQxtKtTQsCIEqOHFUGwrXLSw1E9Ml?=
 =?us-ascii?Q?glNbCmvEtnGPJwVCgfya9YlCnzT6nfO1X99baD6VKW4nb6ujs8ef3PCQZPGX?=
 =?us-ascii?Q?o3mc4dVvMF1/KyAz0OS4jkIt3Jvwpamwt1/77sKDfqUB4mdCGdJfdPll5iWk?=
 =?us-ascii?Q?FK3ZnPUCdGBZpAID0NVQjJt756P5dXNzro7dL5i1HaLPGZYmSX070q4ZZt//?=
 =?us-ascii?Q?3QEDAUCDylaa60JmOvrXH+L2ds2hkBrl5WjdZSpHSL/nZ4QdKOFbC0k28ovW?=
 =?us-ascii?Q?BzmN/79pT3AfbhDgbss2Eyn7PVR4ovrjQMB34QTrfqAZBHFMLUg521ZtLMRu?=
 =?us-ascii?Q?+SI3R8HJtNLoIJxndAvOkyt8HHL56jHaImLEVc7E3lF4ukSRpL7LzXcYM/og?=
 =?us-ascii?Q?vUMliSwvRbhn5pVqmsYAVOWFDgPhPNdAJPMO8NPnsch73GAr6tQe4xzWNPIm?=
 =?us-ascii?Q?Vlza3e77e/JRNHN1yAmpzT/V9mdR/LMa4STn3WFD7B0FEn/4D9kqEHBzXWKt?=
 =?us-ascii?Q?pA2xuLJd75GEPWMltsbW6Tsz0ke4s6w/93tRxWhJwuYtpfMdQLRPvlTHVL9c?=
 =?us-ascii?Q?gevevSgPFVP5Hjj8IZojE/OyOJMtd98RFs9ccXYBTDVKbhqJp6QCCQTgrBu7?=
 =?us-ascii?Q?Vs+h0lmSvXE0O6z/L/ggUmSOpD6TiFfKmlpLx2aXr0Bw4Hq1ZaPd7Pfc7r29?=
 =?us-ascii?Q?UmB/Uj+mBVeZiuX7v4c/k6u6uA6tfjGwz8pVer4/t0pfORjdeYkN4K9MJShA?=
 =?us-ascii?Q?nIIdMqh9yJT6FzLq6fSEKqHrFhN/ooatSBoWJ8R3sg6k8v69BcSXTpKoDnNP?=
 =?us-ascii?Q?dy415yFFbJ4kzbBfCRKkD5dqvsgwNe13F9MfLXuW83e3byE1viszf0mTz0I8?=
 =?us-ascii?Q?nOSIzEGAbS4sU7S9LZm3J5xYteFg22GHEtYPQk1tppyT8G7ztr9KuqctY8OY?=
 =?us-ascii?Q?K8kS7eRrOG4hd7IGdsx96VtuM1RkypJytAhBZTlJkoaZilkbG5XzqDKfXMxg?=
 =?us-ascii?Q?VQmh0pisNXrSz1t3T2sqTx+7jM/cC1Xr90E7QJJT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bb6063a-3704-44ea-9b34-08dd92dd758f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 11:50:01.3700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qI5vga6DiZv9tTktkC056PMZ+0NmOWjiharXwwSD4aFIy7TFjxfrr0Jbzug2gA4Q5c9HTfiv25iXvv5vBH5wnw==
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
> Subject: [PATCH 11/11] drm/i915: Disable updating of LUT values during vb=
lank
>=20
> Do not schedule vblank worker for LUT update if the registers are double =
buffered
>=20
> v2: Do not schedule the worker at all (Ville)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 5b2603ef2ff7..fd6d52712462 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -418,10 +418,13 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct
> drm_device *dev, void *data,
>=20
>  static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state
> *crtc_state)  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
>  	return crtc_state->hw.active &&
>  		!crtc_state->preload_luts &&
>  		!intel_crtc_needs_modeset(crtc_state) &&
> -		intel_crtc_needs_color_update(crtc_state) &&
> +		(intel_crtc_needs_color_update(crtc_state) &&
> +		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
>  		!intel_color_uses_dsb(crtc_state) &&
>  		!crtc_state->use_dsb;
>  }
> --
> 2.25.1

