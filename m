Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF4A9C443C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA0B10E4F2;
	Mon, 11 Nov 2024 17:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpaTEo06";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0301310E4F2;
 Mon, 11 Nov 2024 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731347734; x=1762883734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6+UPlgFULd6OVVZuNFeM50CR0/zmF4/nCYIKsq6dW7o=;
 b=OpaTEo065leL494aKahPFsxM/TVaKSBZFp7SR9GiZWEVR/pqW3LW/Z/l
 Nlj85KLGMHJBtFbCyBSmpNNFDeS0EkZJUfM5M1Vdcu6pVUJAOgH7lBJAV
 80vSrO1a4LHxwK782KBkXjm8UX12h/nQrrFbMEOck97eE+KfSo93dWNw/
 bkTskeUNv47X4S9CO16nPKJD63lpSC1iJWkq8aMSI3qXEsVtm3TKYNiAF
 W+7mnHyn9eOpg+Mc5ijeN1l6sw6dy3IjGWvb87oKxGN8fCBLDZhTem8Fz
 3HOVXwRKhawV5nVE+SA9AU5N/rV3/uHuenvaxUukQmzQ0zM6gWgV9AMS3 A==;
X-CSE-ConnectionGUID: KSlW6Ja8RkCFB20MUWFVJw==
X-CSE-MsgGUID: 7Eq0B9DzTwWl3cKA2AA8yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48617274"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48617274"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:48:36 -0800
X-CSE-ConnectionGUID: aMpQvWvUQTiW7noQ5FrabA==
X-CSE-MsgGUID: ox+fu9OaRQ+j/UUFPFK75Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87119177"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 09:48:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 09:48:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 09:48:35 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 09:48:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s8sbSjr5VIPxWSprubYcl4gl2MUp9r8tMxdYiUsLFT+uxOkENrRziEVHmmOALKXMMjkr/B6BZpe0OtZLRMvKqsHSaOZifcNmyEkOjqyIziJtJnhv8qr0phLRv7hyDgEm1/VKb3Bqr6x6dgQr8oSAB4/2/UCYkTQSXMi6nTaAFjk4p+blSR83FU5UYuw8tU9Bq+QEN5liWZ1hPsvvYV/Y/lwn7tF/88EfpHmHEuwHd1WH34LuIrQWWaoM3G+jkYRMGKO1q2Sw7ossCXnTI9U1boVwG8X2/qOAdwi8DI2qXmPFWytwdM07fAzroTsBe/Wry75HJJJEpJ8wqLiGd+Lnpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yVQT5wrVJDsZo29GGDwjWhtmTViK7SgVy3v/X2mWOCQ=;
 b=mAqb0IxxaqW1a7kE39deWJKWiT9B/0D20Blhjv+LJc0a/Mw3MuwOkYbAxoWSoEhQevP3ccoOQQYqlb5sjgYhTYr+LOU93Bc5E+7qxP9lpHNrM4sP85MwUxukMfKzFpRlqyeE/8U7ZmYeUoAf3Aj+f6iZZb8dsNlVWyZeHaA+gy7NVTBMeIv9t2EQll7DJHy0ZuKwxXwemaiuLlDMe50QXMRI+0zK6XUwM8R4U/yGkGjHkDBgcjudQVmvpIYyC9ruT+Ow0lKWZOeF6GlWhYusBF1+RAD/+nYudiMc7D4YKESRGdyy9xNv4ENvHUfvG/0JYOf2ycpV597X8ea4rtXqEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6687.namprd11.prod.outlook.com (2603:10b6:806:25a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.26; Mon, 11 Nov
 2024 17:48:32 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 17:48:32 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
Thread-Topic: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
Thread-Index: AQHbNBmEMQJLBZpsAkiBOaHBwRWAWLKyW2lQ
Date: Mon, 11 Nov 2024 17:48:32 +0000
Message-ID: <IA1PR11MB64676835BA32BDC582DF93E9E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241111091221.2992818-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6687:EE_
x-ms-office365-filtering-correlation-id: a0f7cbab-beea-467c-24e8-08dd02790ee9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rmHScY/nkmyGUKQx4RAOI3rgKmcAj7j9KelNaIeGIGqXo9lN25tiknp0Aurb?=
 =?us-ascii?Q?vHhYuREFuiunXPXBvqsLW+uMWYxgv23ZY5Wb7iULkON2E8gr288FhvP3y3Ra?=
 =?us-ascii?Q?OFPIe/6lE1bWbY4Z+I1O3rE4MWVSDNnPktv/kHxM65TcuEbX0DEORBcfcwi0?=
 =?us-ascii?Q?saFAob6hC4tQPQUjl3pI9UiTr9Ml1B+mRlf0pmt4d3remm6FZ5RqESNvS0wN?=
 =?us-ascii?Q?PdNfRzvajyIUE85dhR00rm8CVtVDPC4Hu7QoJbc0Aw/GgE601MDII4Ujgngw?=
 =?us-ascii?Q?SCiIQuDe6CGVLGZ6lSVr0rYjKAJse7zrJayPDwSM+yuaRBy6Bn0EBh2FDAor?=
 =?us-ascii?Q?ertf8j0vI9OvQY+xOIGCWNcj9X7IXhdNALXt1BYFayX+CygcT2fM68x2iA7q?=
 =?us-ascii?Q?Ok8Pmufx1YmL6ENKZpkTlVsuAUGLbmOffQwrpJB2Gl9n2m2mSZ+/4ILzs/GZ?=
 =?us-ascii?Q?amU+hiMET8++t9kG0xHcLyLrauhMuW8EHNupvQD8/uufjYqLPE3uI/+XvENz?=
 =?us-ascii?Q?7kTuSA8a3puODp66JmPvpv046KdzMx6WtcjBrI9O/35AJW2onbYLjm/5PL2i?=
 =?us-ascii?Q?07e1YS7J3v4YkmSQOj8NSzTgtIJzRHQ92qJsEb3iL6y95oevuIbSKatJ4CvM?=
 =?us-ascii?Q?KeKKSDp9Kvbad6nmaYGZ4A1ae/kLVSnw2WuaBChg3wg+qincsNhFXrZuVOB3?=
 =?us-ascii?Q?UT6D4hvkyhP8SOJBIN8rfBDGdyQNg8r35XY8LBA/PPA+pCJAHr3nLrmonz5l?=
 =?us-ascii?Q?hTH4pXsuxUsPti6BWZgoVh8OT7anyyCyPeY8wdVqoY6ifsWplGs0qyij0hbE?=
 =?us-ascii?Q?bnXgAj41z2kfPTrn18usf7wknKBejJmHzrSuJRvnvAg+0pklWXNittzmt/Z+?=
 =?us-ascii?Q?g47GnUj9dp7qH0aAB0nuyfFbWPSfIdCpD7I8vvL63KV6fAmCT+VA/A6LHHDF?=
 =?us-ascii?Q?tToW7nmTKmQ7O99/ibRW+qMotVe+SWKMpmc2RNB/G2CTY1rC9XMl3NV5OisZ?=
 =?us-ascii?Q?1tOsSigkh4+XasU/j0nSQ2bl+ZyV/b3waIENqydmfju6/QehEM1HcR9wRWME?=
 =?us-ascii?Q?X7TUoDL4A0JY0xwOYSEDn24Y++JrxocJUzjYaf4mnrGwEBmMcX7GKNuUMY/K?=
 =?us-ascii?Q?3I9iWcbP57TReGjg5jI6JzeqlncrfWeKt2VFMm71ZsN+ArWtm/gDBcQ8e5gw?=
 =?us-ascii?Q?ny3SVWB6zyR/hlxWsC+iVa7wRQmEW1JWlASB8aGmuBZPxRpz8SPWYbFr0ANr?=
 =?us-ascii?Q?ILOpAY39QdNynUFHH1EJkKbqaFwHFI40r/vcSJVNi2BamuC6C/Pk0F7oSP5n?=
 =?us-ascii?Q?3qA3pPjdAdR4f1t6or1c1Xet9VDIzMBgDZr76IPBb2hDKSNg1qyz/o+QtYbl?=
 =?us-ascii?Q?sN4yjKg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?thPZ66Tq1k1vgFFUFsE1KHS2esWYYqbbCctnVCKr97tyE+LfVQCU4CSogYpN?=
 =?us-ascii?Q?w/3V6PNMfJ1roABsfLADFak3TmQAGVBkq0hmYnVVsPNEUJ8KWp7od/49Yl07?=
 =?us-ascii?Q?7+yds68DhoDaH3uSeolh02vhlfasRZvk0eHPVFNUdG5MUNKsEuvjeF3xnLQ/?=
 =?us-ascii?Q?an8Lc2O4cd28nXlE9MHxXBkFIvy8ePyW1ADLSSY1MBhdmiTP3va7SlpZSrdD?=
 =?us-ascii?Q?DPhQdGCjSJPWNejqR0Gte6/3JzZ63EWmMDplBoER+38Ehev1jRU2k9E9VTZS?=
 =?us-ascii?Q?QreixQdJG4BMDTBNx4qPHnaLr0LZL+pUOqrkT45NOlugPFQGK/5yMY0Z27D8?=
 =?us-ascii?Q?wirfmM3se+t8QqG+t+9USRyOdGCpRpnKC15I38g46h2/glUfD3+dHGqc4AUr?=
 =?us-ascii?Q?ZBh0dkocG4s6tk/+HVeindxMjLhkgdHMAiZHSDElRF35bz6vZV9QM3ahVSo2?=
 =?us-ascii?Q?RPTzS4zETnfaF9QDluM3mgrZTWOb8BC57LCmbpKS1f9Xf0LHQlcrpLi247S8?=
 =?us-ascii?Q?DFvTRaCaTSHsRlvlL/xz5/7Dmsog/INbMhBCIqAzH9nbCXN66Kv9GfBK3k/Q?=
 =?us-ascii?Q?I4SEgrR+raPlgccrcAnEyaNVFTo5VmBUKtTueuA3RXEoybK6Xql5hKtb9Mvl?=
 =?us-ascii?Q?MhCNrwI/M/Z5BqgleMGtFDUV/rz59uWRVNFuqkpSGK+GThd4rYyxkfvXl4zm?=
 =?us-ascii?Q?huMTyEANcHxosgoBlDioVfMOk/2PMYYAB6dpsYCYIm8SXAD2hlP2XqS9L8NA?=
 =?us-ascii?Q?VANorZl3inejKfwccraNiWXDkohAIGUGWgk+2ajXNyNGlQmekdfoIgCPaJQ9?=
 =?us-ascii?Q?lJ27lvCJpVBSn0MqUOeCVgpKCiWUpuET4G9nv2Fei6BDpxhA8ZyjyNL9K3/7?=
 =?us-ascii?Q?/XFlnIA12MBSsq86/G7uCvWmJd7eY3RQzCPubHKqHzHKaKfVyuOCUnuBRgVN?=
 =?us-ascii?Q?HQJUySAWWGitPHsb2eYdeYW2YHyQkpB7vPqT4Iti89r6hhjzp8jDHu4dvIY8?=
 =?us-ascii?Q?X0hSekQ1Mw6hbMLhA4bzI5CA1Gfc1fajmo/tEyg/CitdTTKXOD9XHVuzLsxq?=
 =?us-ascii?Q?/d7Yvf4x6RtKTBbTuw7lq6OaZj+ivWWAGdQ+Kd93k48em5PPlxI6m/Qjb8yz?=
 =?us-ascii?Q?TLO/NoKYmuqh1dl6YUHcewEXhLVjqDrD5VNQ5FdktpvODhilfkgIe2ji+iPV?=
 =?us-ascii?Q?UP9LMa5ErntOikr9KsRqLuDwd2765Qn0dLDUzFWKAA2/JywZXuF5ZCIe743H?=
 =?us-ascii?Q?82ZKXJT5uxBWfFPj6o2vD8PBGkH3PoPiWYFNGHsmUBURX1fqUciUHqZxLFJ/?=
 =?us-ascii?Q?Z8zjb8e5tlYzgzHwpEcGMYrr3tssT6vrz0epq6p5CNNx/WASA6vGOnv60o1a?=
 =?us-ascii?Q?V+JntVpFT0hViElavMpWYbulrzquFMoNv2YTSKkP5UeYdTX9bfXAEUAK9BSA?=
 =?us-ascii?Q?s4ydeWf/YIg2QmNkXum61iEVr4/OL44A3leoJfCx6vJDxwPbzgy0vFXH/VpX?=
 =?us-ascii?Q?+e34/zu577rvXMssRIfb5Q2x/tKmPwk49+sPbt56EA9ea/17GiGyJZkLoPGi?=
 =?us-ascii?Q?kxZy5D4BWBtcvFFJyC7ghQctJONP/lNoQn/t4cWq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0f7cbab-beea-467c-24e8-08dd02790ee9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 17:48:32.0770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MOQaswQkbYB/bOI7B8xNUb+jOsRL4rzILF4x/x6pZCvccnzgw5kVrasaAZKbDgwyg/ZsrigRVHbm19DrEwjxRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6687
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
> Sent: Monday, November 11, 2024 2:42 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
> ville.syrjala@linux.intel.com; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
>=20
> Introduce helper functions to compute timins gfor different mode of opera=
tion of
> VRR timing generator.
>=20
Typo : timing
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 115 +++++++++++++++--------
>  1 file changed, 75 insertions(+), 40 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 19a5d0076bb8..defe346b0261 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -161,6 +161,73 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state,
> bool video_mode_required)
>  	return vtotal;
>  }
>=20
> +static
> +void intel_vrr_compute_cmrr_timings(struct intel_crtc_state
> +*crtc_state) {
> +	crtc_state->vrr.enable =3D true;
> +	crtc_state->cmrr.enable =3D true;
> +	/*
> +	 * TODO: Compute precise target refresh rate to determine
> +	 * if video_mode_required should be true. Currently set to
> +	 * false due to uncertainty about the precise target
> +	 * refresh Rate.
> +	 */
> +	crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state, false);
> +	crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> +	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> +	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR; }
> +
> +static
> +int intel_vrr_compute_vmin(struct intel_connector *connector,
> +			   struct drm_display_mode *adjusted_mode) {
> +	int vmin;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +
> +	vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +			    adjusted_mode->crtc_htotal * info-
> >monitor_range.max_vfreq);
> +	vmin =3D max_t(int, vmin, adjusted_mode->crtc_vtotal);
> +
> +	return vmin;
> +}
> +
> +static
> +int intel_vrr_compute_vmax(struct intel_connector *connector,
> +			   struct drm_display_mode *adjusted_mode) {
> +	int vmax;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +
> +	vmax =3D adjusted_mode->crtc_clock * 1000 /
> +		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> +
> +	vmax =3D max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +
> +	return vmax;
> +}
> +
> +static
> +void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state,
> +int vmin, int vmax) {
> +	/*
> +	 * flipline determines the min vblank length the hardware will
> +	 * generate, and flipline>=3Dvmin+1, hence we reduce vmin by one
> +	 * to make sure we can get the actual min vblank length.
> +	 */
> +	crtc_state->vrr.vmin =3D vmin - 1;
> +	crtc_state->vrr.vmax =3D vmax;
> +	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1; }
> +
> +static
> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
> +int vmin, int vmax) {
> +	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
> +	crtc_state->vrr.enable =3D true;
> +	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR; }
> +
>  void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state) @@ -171,7
> +238,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>  	bool is_edp =3D intel_dp_is_edp(intel_dp);
>  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> -	const struct drm_display_info *info =3D &connector->base.display_info;
>  	int vmin, vmax;
>=20
>  	/*
> @@ -192,49 +258,18 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	if (HAS_LRR(display))
>  		crtc_state->update_lrr =3D true;
>=20
> -	vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> -			    adjusted_mode->crtc_htotal * info-
> >monitor_range.max_vfreq);
> -	vmax =3D adjusted_mode->crtc_clock * 1000 /
> -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> -
> -	vmin =3D max_t(int, vmin, adjusted_mode->crtc_vtotal);
> -	vmax =3D max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +	vmin =3D intel_vrr_compute_vmin(connector, adjusted_mode);
> +	vmax =3D intel_vrr_compute_vmax(connector, adjusted_mode);
>=20
>  	if (vmin >=3D vmax)
>  		return;
>=20
> -	/*
> -	 * flipline determines the min vblank length the hardware will
> -	 * generate, and flipline>=3Dvmin+1, hence we reduce vmin by one
> -	 * to make sure we can get the actual min vblank length.
> -	 */
> -	crtc_state->vrr.vmin =3D vmin - 1;
> -	crtc_state->vrr.vmax =3D vmax;
> -
> -	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1;
> -
> -	/*
> -	 * When panel is VRR capable and userspace has
> -	 * not enabled adaptive sync mode then Fixed Average
> -	 * Vtotal mode should be enabled.
> -	 */
> -	if (crtc_state->uapi.vrr_enabled) {
> -		crtc_state->vrr.enable =3D true;
> -		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> -	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
> -		crtc_state->vrr.enable =3D true;
> -		crtc_state->cmrr.enable =3D true;
> -		/*
> -		 * TODO: Compute precise target refresh rate to determine
> -		 * if video_mode_required should be true. Currently set to
> -		 * false due to uncertainty about the precise target
> -		 * refresh Rate.
> -		 */
> -		crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state, false);
> -		crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> -		crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> -		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> -	}
> +	if (crtc_state->uapi.vrr_enabled)
> +		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
> +	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> +		intel_vrr_compute_cmrr_timings(crtc_state);
> +	else
> +		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
>=20
>  	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
>  		crtc_state->vrr.vsync_start =3D
> --
> 2.45.2

