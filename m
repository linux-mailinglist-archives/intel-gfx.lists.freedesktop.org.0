Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DA19C18A8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 10:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3542B10E943;
	Fri,  8 Nov 2024 09:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PSx4IL6N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DED10E943
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 09:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731056549; x=1762592549;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jATIQODqlxBxKEc9veVs3NqdzM+o/SsE9dQGe7Vix7I=;
 b=PSx4IL6N/9mbnTVkr6TCQcZdJW5fdycvCDtBeBbz2L13zGbI8ehUUvgW
 pL1aS4BihtOZonlxcszd589fmj2322NIgwcBIQP/9jVi00bCxjbmxkBNA
 hO5QttK8kVtn7xFqh7q2QBDbh68qVbPY3FScWEhvvZmdMpmEQ6iakxRd9
 4tSieJe0YDiTHz3W7FgD5uh6CV9JSk7tFb8W475eFlkvjqsiFRVTrL+lR
 HDXF4bfP2m/K9807dNIX9yy++QIdnHw5XLAaMV5X5ZzQiWxAlZTjnLq39
 B61DMCDlGsR68amt74M0JeOilzm3mCXY/63tISvVw44zqAkQn0BjBOIkS Q==;
X-CSE-ConnectionGUID: Gm37eDKyRf6CbYT1V+hJrA==
X-CSE-MsgGUID: zAFhR8+nQnK/9q5YyTXMxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30895391"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30895391"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 01:02:29 -0800
X-CSE-ConnectionGUID: y3oYN6u2S2yvHqWgIYtNcA==
X-CSE-MsgGUID: g6LOJcgYTvOHvvAPcdVuVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="108756736"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 01:02:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 01:02:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 01:02:28 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 01:02:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GpTSEH3ocIWh+Brz/IyEgE7n3VpONUXxa2WopRvbLRkegwNHcYsGIvnuy6ibSiAyfJTbK810C/mLyF+kVdCB8dudJijPz10k5wau3VwqXkGjGs4TH61SxSdMhQ0dMbDGU9PQQ2sDc+5ZaLRLv2tixLLdTtvggk1gD1Jh/xt46uCZuOSfA13Hsve6EtntYQ8apjqRXN7v7uWvl4OCbOG7QDuAKMiycTjJDS8Q1TG67Rsk3PfVAa21S3L6Tiset2ngVDP6dyNyDpaD9Ov+4bchsEmHdXpBzZWCgCls0VuxWRzvwtd5uUSFP+MRV1M/Ql0yCgq74vdulo2lE+ZUkopqEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=34T38cEbklVMxtzHpMJiJN0FXx1jX3oX2+egsyEnOrE=;
 b=JLzcpGfvuPd1Kua1/CXXaQV/YK9irxWhKlGyhBNmnef48A1tobzhOvMQ8ndWAoZV604XJqyjLG+s72cYJnSFWo5Z/VK7gdJTPLBi61O+hpNZ4bdPdil7TlsSg8//+lZ+SrEdvCSUAW07+SCzzVIkITQjWJGd7NcruAapTxxxlI98w9ISTwKBek5v0IKD18Bn0LkvPNl+wKvrYgHZssUTY0TJtSu4FCMaPV49MNY/0Nq8jt8vg3cyxNJP7ENIzlcMem/czNf45vqqfTkZq5RSkGYMM3YW/U5p9pWXJgB0SVPgw1ShXaY3SkKud3Nn42/lF+ohWN0ZHGBd3wzk+gLIJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DM3PR11MB8735.namprd11.prod.outlook.com (2603:10b6:0:4b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Fri, 8 Nov
 2024 09:02:24 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 09:02:24 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kulkarni@freedesktop.org" <Kulkarni@freedesktop.org>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Topic: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Index: AQHbMbRYC/O7mw+ZfUyGI9pTaIYe1rKtCaSAgAAJxfA=
Date: Fri, 8 Nov 2024 09:02:24 +0000
Message-ID: <IA1PR11MB6467388E105E9A08C28F2A75E35D2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241108080109.3049672-1-nemesa.garg@intel.com>
 <CY5PR11MB6344E6FFAF5D2A2085CCFEC7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6344E6FFAF5D2A2085CCFEC7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DM3PR11MB8735:EE_
x-ms-office365-filtering-correlation-id: 26677365-8e76-4527-095a-08dcffd4101d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4v0BS74VZTmQz1vCM1+0VxrHkAw8+mJGsWNjJTrvBASfDox8kuLyZw2PKuYR?=
 =?us-ascii?Q?X/1FZAwEvG1c2AgSrjojsauyU6WELvEf+KX6Lg4NwljkZWzXdzRV4QxTmBB1?=
 =?us-ascii?Q?w0xqBEqOFApeeAEcdh1qgguvy8LPhnYrbuQTbEqzKL3eSpe+2ASvtNsX2ltA?=
 =?us-ascii?Q?DQHnSSOXrLJPCqpOi1hdrbjWwLyCC9Mb4G7e/XsRuZAfGA3VCj1RdnEI4I2m?=
 =?us-ascii?Q?4hS0r4TsJy+6k81EbBK0l2K1b452UJd2aHcQdDMC1Wq+2A644Tmb3NGE+P5d?=
 =?us-ascii?Q?OaJDiuap1QOwcddCVoC+wLLnXArbAVrVZw5eNKiLc3/EGBLz4UgqDtFuBPsa?=
 =?us-ascii?Q?CywPCJwhTlNHhl7hH/r94eWJyr14JR1NPK7lwyIhjTsfM1g5Eof4cIsXdPac?=
 =?us-ascii?Q?4IOpXnJ1n82jQosSSabiBQP/zFa56h6FwhGwBq8lFBVxTT6DguclgJ16ImKL?=
 =?us-ascii?Q?YZxfAstZpI9aY5jL9BiZTYceDQG+fuOEUmgRUign6DDDFPxSSzwOQoBeGty6?=
 =?us-ascii?Q?zrGCIsMfOQ3zdcmUDJsAxcSM6ubYqCHPWPAiB9dBW3CpuyaPqJueQZJmu5D+?=
 =?us-ascii?Q?FSdaIj4ALTm412TKqcxscOQsGppVCyLSswbbN5OXUFrJ4xJc6KLjIjIjjz0V?=
 =?us-ascii?Q?O3C7XaTG6e9BhiU27ZhOb+6iOtSK/8CwoZMl+0gHfMQf4gjTiOKaVAnTus3y?=
 =?us-ascii?Q?U0+PTB0aW3KGilBCSE9+HxohTgaIIDXvCtX8+Rb9xvqknO2I2u4xhasrHUs5?=
 =?us-ascii?Q?JaaW+GDzQnaaR2s6YB7avupgXTaWqKCq9qY4IOsZLxU4LuCXOqqjtSBILGZj?=
 =?us-ascii?Q?xSiMf0l5U8Xew6PsmnZMg1b5Hb1+kJgcP+vzWFqtBiQAd4khVc9MumGV3L8n?=
 =?us-ascii?Q?aKMiPA6REqlwMqf6D10AHCM9GE+AAZIMWL7P0sbmlZgyl7k23124thoaN2cH?=
 =?us-ascii?Q?bM8XwMmWrDJlnXDK8CWwcswmQ4DyPsbL/y/RRn30tcRbReNl27OyAu5gmffY?=
 =?us-ascii?Q?C5h26d5g+Emi0mJbGSbkBm8Ir4hl+yUkIWOwx51TTSdADRd3PfJqyRCrIvnH?=
 =?us-ascii?Q?U2AJJTuwtUXu+dWIFdWR4cQYhm4fUneUCZrcuc3KKkbvUzaDaO5Pv18V5yeY?=
 =?us-ascii?Q?nCteY3lwO92Y7c6cP0d9btX9bf5GhxLnb7Grjn2kJzVpZEo3a2lOEfThnC7s?=
 =?us-ascii?Q?OX0IzjNDFn2GV9QwLADhdQMsWvfeYV99dcZpPdgwW/GLRFWs1h0K7Tha23oD?=
 =?us-ascii?Q?FIxPoRPeESPNy7breyfIBQbZypHOdzSqJSUgVeaB6qGmyI13cWlUkOqpG6br?=
 =?us-ascii?Q?QTJXFdMJ4NQKYun5cMwktGtdBK0D2euaerIQtFeuk60Ezb0Bj48XcbXbb2h5?=
 =?us-ascii?Q?isrZj/M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PSoaGlHpViNlxdk1vkUx30iUKKP2FOehKDG3pQV8tnLw5HuegRkj8ZXoXoCj?=
 =?us-ascii?Q?dJBIzALDGKCryFexyg1oIlQ4svhUmHvJZJcQG48IvWkK4+eyUEZhOnAMqw/m?=
 =?us-ascii?Q?HMXV0k5LMRSB6HtJAofR6qoyDVeAl0Wj8F9klvFQ7A2aaWbtRFOjfPeJOpHB?=
 =?us-ascii?Q?oz20flt8dUPVrRZzWdKFBMiG0k78hsCyG5R1WXLc9BmlhH//+Q0PEuQrYBA4?=
 =?us-ascii?Q?5OgUESCq0+fPqABB3F/nWn0JaWPTh7YVizDMDIBWAi9V6phYi/O9iI7Kz4As?=
 =?us-ascii?Q?deHQjCSwLpaiwK4Eq2N2phbyWXqvF78V6obDMCLns/xJJZY9AbA78S9szoX4?=
 =?us-ascii?Q?I4xvo7P45ZmTYqiIKjynMur8QmwNtK0OnYUEPiHMGhMZL7stdrcNUnP1PN3s?=
 =?us-ascii?Q?Mxd56lSLEaLv4jjKtLsUxzM5gbjpRZK6XRzXF1N6o8TC8BE1zSpAaDwzrNFu?=
 =?us-ascii?Q?FTiOyCczwElnQ5oCUFQ2LLvEmrCHA0afXNOmzVe7oK34eaMVWWMrxcgbQqTn?=
 =?us-ascii?Q?+is9jkjP4tweio6CRt+qdMwTxi7N1JpZiKLimcS1z5+vhwWyQgQ/J+wjrLCo?=
 =?us-ascii?Q?iSY5FyqYPlUsHe2VleeImLgtJpZJb+UufQZE4j9hKKPgaqxsZZbtam7i8f6g?=
 =?us-ascii?Q?DmK+VqMP2cPSFxLWELF9JWL321TM5ltALZQgr/AEDjfrQIIfOtewX6GRBxyu?=
 =?us-ascii?Q?PRHuQeM8sDiDYdiJTjHC9e3sxG3U4hcLV+RidYatfnN58WUHvreyr/8Galno?=
 =?us-ascii?Q?f6c+01GyTC/P305hqEeZ72POMf9r1iJxF8/gKPEO+LzoopxKi9rvXRY4gKtA?=
 =?us-ascii?Q?TFZABXeb3D8rMg3+r/Dxeu6964yJaKCAh0wS2ql/+Pf0Tq4FuSp+ejaShpYe?=
 =?us-ascii?Q?xcUGOQj+xxUQiuAEE+2T8ZwweWIGL8dakGhI7W6xfOPWAz5vtgyoYHM1k68O?=
 =?us-ascii?Q?jRunvqgJpTAd1OiU1IK9uo7jwZTW8JzBHUz1sGxsWxCHQoF9GpSd4u7+Y9XL?=
 =?us-ascii?Q?dt/VXx6WKhi/1kGW8tiq38zOgWqGrJiVkkdUdzp8SnXP8CH4X40/dsZmPVHN?=
 =?us-ascii?Q?pcJ352ybfr9APT7QQ2DvFq1HXV+gNkfI+IUCzG5zNmxk+cdh4ySpvxIpHY8+?=
 =?us-ascii?Q?AAnmbmWe4+Ix9b72dWL0HzHCh1nNdL6Ve4c5byfleYIlkmY4/iiybj4ksPfN?=
 =?us-ascii?Q?SZFpb02+tn3SBaxVv4K34oqOGhAONxq3qg+EhfmJbtp5yBMAvKY/gaq1YVR8?=
 =?us-ascii?Q?JfOGmuvOa1tLF5Kd20w68tQOhrMnPnbdlBdO99ISmg26SQncdHjdDe9LemCo?=
 =?us-ascii?Q?s3RWNaJTrCgVikHkhZEdq4EBQdtu+Dn7FwvpOyeKjdYTqNoDAUHQIorTilfK?=
 =?us-ascii?Q?L7tPguVI7/xk/NHFNxEYm2LG7lqZzD2oUhc/qfqyUaLsMAEn9udKVDTOh5W8?=
 =?us-ascii?Q?kZSikRG9XEva54c8QEPFTgDfEm/kHgALK42rAuIg1IR5eS6k+XDpSFHNMiC0?=
 =?us-ascii?Q?bMuQHWJX42B8Ao96kRNVsdz6r4qBrzt2o0QAtFVCGZJBWvgx8ha/YFaJQFhj?=
 =?us-ascii?Q?k5B9vr2cjEAzO+zA1pTYGJrme8xZa8IH3g2Nsi0g?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26677365-8e76-4527-095a-08dcffd4101d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2024 09:02:24.7629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FQay48TBhqobqC78Ri7T54vRuF8ujZBmMb7KY7bedrk4dYqn6cnks7Vq7wB3GrZhEc5+RGfOzOYEm8sMmjmxwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8735
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
> From: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com=
>
> Sent: Friday, November 8, 2024 1:47 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kulkarni@freedesktop.org;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Add WA_14018221282
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: 08 November 2024 13:31
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kulkarni@freedesktop.org;
> > Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Subject: [PATCH] drm/i915/display: Add WA_14018221282
> >
> > It was observed that the first write to DKL DP Mode register was not
> > taking effect, hence rewrite this register.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 769bd1f26db2..16a1d18f3aa1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2104,6 +2104,16 @@ void
> > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
> >  	encoder->disable_clock(encoder);
> >  }
> >
> > +static void
> > +tgl_wa_14018221282(struct drm_i915_private *dev_priv, enum tc_port
> > tc_port,
>=20
> 1. I recommend, Need to think on naming here, as doesn't clarify on anyth=
ing.
Sure will rename it.
> 2. Also adding on thought to have pre-check of return if values are alrea=
dy
> updated.
I guess return is not required because before writing the values I am check=
ing whether
values are updated or not, then only writing the values.
>=20
> > +		   u32 ln0, u32 ln1)
> > +{
> > +	if (ln0 !=3D intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
> > +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0),
> > ln0);
> > +	if (ln1 !=3D intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
> > +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1),
> > ln1); }
> > +
> >  static void
> >  icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
> >  		       const struct intel_crtc_state *crtc_state) @@ -2185,6
> > +2195,10 @@ icl_program_mg_dp_mode(struct intel_digital_port
> > +*dig_port,
> >  	if (DISPLAY_VER(dev_priv) >=3D 12) {
> >  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
> >  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
> > +		 /* WA_14018221282 */
> > +		if (DISPLAY_VER(dev_priv) =3D=3D 12)
> > +			tgl_wa_14018221282(dev_priv, tc_port, ln0, ln1);
>=20
> Always use the display local var when possible. DISPLAY_VER(display)
Sure will do.
>=20
> > +
> >  	} else {
> >  		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
> >  		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
> > --
> > 2.25.1

