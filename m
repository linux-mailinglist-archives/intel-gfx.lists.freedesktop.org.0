Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBCbDfOKlmm+hAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:00:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A33615BECE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:00:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB3B10E671;
	Thu, 19 Feb 2026 04:00:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kt6IqCYd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A2710E671;
 Thu, 19 Feb 2026 04:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771473647; x=1803009647;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TO5PHU0C33wCAXo/DBnRunxTILWt9uSgELuBEafNBig=;
 b=Kt6IqCYd6HkgqsYt9OIjlnN0MNsjc1VDhQzik2gIK8EY8r94vc7+crGM
 3qobEAWMxALbjR99tIzWUFNMwNm15JW5WcYOnG47sDVXzkzJ5wolg3lwm
 7V3/w2XhxbeNZLHUqCJaM/dYfxB9UIZZ1AfXLgr0m5UFdOsN51+y8yMb8
 QKBC2J7bOu5Hrv9C5FJ3FRdGgeVZjuKjb2WBkZlyauWBB5U8qRrKEM2Ql
 nKzZ/d7V8RyBHXaVZP+ZMGmdPkEhQzHXqksukeDNcGGGe2k7Viayg/25D
 xXkBD2gVJYxhgM6j3QMcG/fHr5ShzNZPjdwAqXSyV5hEL2HAdopGBpj2O g==;
X-CSE-ConnectionGUID: s3mg+MvuSJCs83MOijuZ1w==
X-CSE-MsgGUID: WgNKsesEQomQM1fY0DbmgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="76174962"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="76174962"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:00:47 -0800
X-CSE-ConnectionGUID: Z9gGUKsiTX6FmD28SzgUpQ==
X-CSE-MsgGUID: f/RfLsw7TvCGsYqLRAYOdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="218919661"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:00:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:00:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 20:00:46 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:00:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ObYsX2bM7tpCZO9yF9F0rf6xZxlfBTzPTOrj/xgUus8LDQK9KqQei7QxM0+L71UUxUb7XkVgPzFnlw5DApE+isQQt8QMyEnaf1258OTwvN/WSf7PWE5Sv+F7HQltmAJdUUSDL52H9cpbYGphTkriHtHGY0XoOCe+Ip4IIXQunK2LwYV3YM9xNVEODaTZ23J7eXsQYb7dltRt0vP0lgrOznGqpJCC46YztEOa1mCAII+JgscLhvqtfaGcbcaGTXHbJp/KioSktEJfiWakRza5HAjMgLh3q6Gz5jkYCbJxPoimr49ZNd0pU3WtJEg0nQlcES0jhJFk3gbNTNvzKaUtFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SurI6HLoeKyDcvh97ZuXEZiMaFifvW9BWyS3ZH4KcE8=;
 b=pYpjUD27QEXmNfn3raE5JhxEYJNcolnAWZaFvimiMtPQCqhp5Xpba3bJ8BFTNVO/dQma8W57DpvAl8Mr1wslUOmjt6XiUNXGndKV6xdbJGdSRsy4EQpn2Fq3rFtPU1svFCIdJ/jLvfuagOBCjxmO0Xm9+F7RnkS97sbMLDZc0B4ssYGDd9zhCZiOZs5sYV7RPWP8UOTvS/CDflbR/fmnJ9ORrAlBSLAsd+LWmVK+CJYcq0yUDJRGRfm4oeSdfv18fYXsoHm7r2WyZCrAOW2bb8SAX/hQGi7Af3TM+R9c3SrecD5YxWEClA7w95ecEzIu4BJnXgtrvylyyj2AFsubdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CO1PR11MB4851.namprd11.prod.outlook.com
 (2603:10b6:303:9b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 04:00:44 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 04:00:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 11/19] drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
Thread-Topic: [PATCH 11/19] drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
Thread-Index: AQHcnOehDk5S0GWEj0GCqpSuJS/h97WJbp4Q
Date: Thu, 19 Feb 2026 04:00:43 +0000
Message-ID: <DM3PPF208195D8DEEA8400872424581449DE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-12-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-12-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CO1PR11MB4851:EE_
x-ms-office365-filtering-correlation-id: 51019c2a-068f-44c1-f56e-08de6f6b7475
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?TRiUHc7qddMTZu8yWvQLe98Twd2Lg28Jbz2ql7OO9yO0BkJGjtVBLwejvSaA?=
 =?us-ascii?Q?Bu0q+mjTAfbEX0YKtXi5mPlCXU5waWNihlzkAIHrmUXWSRyQHtK3xY0aB45I?=
 =?us-ascii?Q?MGsPQ27RJxqIYa3RvbTfCtsJEZ8cuPF8kDKL1GsrI9TuzkdG/lNfkhgIbNTR?=
 =?us-ascii?Q?/Njh/3OZX6rzs8DJzgqFfV5A99iLeaTjJ4tYZx6y2CF3JDctg2yqzeQ+i5Le?=
 =?us-ascii?Q?dncoM9OWqUenibEIsKYlkJOFVt4QwC8PDeZ84JbRZGP6vwTuUHAJ8G9YfI/D?=
 =?us-ascii?Q?heAuX7XKNGX2bRev/QNOxQlDJmL81tvl36IIT1XzJFHvD7cjl0VcCJsYal0Y?=
 =?us-ascii?Q?hQVnlENTCua7sK6cvUMRlYEbi6owo+Pw5kphq/wxNyKzct16biEYbq6+aIvr?=
 =?us-ascii?Q?vmigThQxqeQJ8By4s/XRQXf4XWnOMbw+87rErORkLiDRMPnSayG4pc1ojXXC?=
 =?us-ascii?Q?G3As/tZbbV+EgSbNTYeS70uX8t2pUZuu0GjIASUY2xsetfLZJmwjR279LU6e?=
 =?us-ascii?Q?ZFK+TZLAV6yRgFoDFf8MhL09XZo3xmHbg1bghs6gQgIGnvVMR6S5yQwkKMOG?=
 =?us-ascii?Q?9CjAiOjZtqDpiSoXr55WXiOMPX2BsxfLgBpyVN4NBg4nHk194Y9KSu1aw1Yb?=
 =?us-ascii?Q?ArWRJ9dXDxrXL9PPLmNYMLEmATuqhyWP4neHR9s3F2JaVnpq8+xAjTuAg0od?=
 =?us-ascii?Q?549WcyGFKSXwDXmnLbB9lDwurIfsbF7zb1J1KQetezD7SzUIUkR9W28xSX6j?=
 =?us-ascii?Q?U7BurZTig+6JEuG7zVVpgh/4apuexqW7kuT7Vw9x3eFkNPMTZmJvT86564Sf?=
 =?us-ascii?Q?HQ5jwMyXAVGV4SX4yUjqiP+7eGxzFzRfaHfbjUZEBYIiIrlRrht5S/YhqFcX?=
 =?us-ascii?Q?wqzy9B2uTbE5qWOEoHisp2JJvqcDXRBBpy6dYCEsy5AvDbidOPaMuD8n7Nbo?=
 =?us-ascii?Q?Njs6d8Hd5yjyi1Kd+3rlWLEZfOcIbhyxUs3VTidvIg3FQNFZ43X8KfGYBBiM?=
 =?us-ascii?Q?bkYkUO/pKX+rZsfN5cnQQ4Tvl37xG+5Az8l5sDGK5MmeOrJyfss6a4ulNh3M?=
 =?us-ascii?Q?XXZ2s2oqbtijz80iqMI8lySLSWS1XV6MveD0/DgX/wZDo6xxBrksq1gReTrT?=
 =?us-ascii?Q?OTvDL2Lm07cvrTVNUEUrspR4QVIfv6j67NUBv1YOD7L5NyZP3Ka7kPfdjleN?=
 =?us-ascii?Q?87f0K2yXqBxebpVx/SCYfG0PGyiNl+1G0dtG69Q97gthp3GBEDXtezlI/wqH?=
 =?us-ascii?Q?UuWGIb+OZXNMXGLRzlJ4fTPm8Vo6btydZvIfYT21ff2M8GT3Mzoqv2Xc2PqX?=
 =?us-ascii?Q?aRVXKULv1qTXba/6CCf17BjYsqDOiWsyDBcmDL4F69jqcn9ZMEx7vkDGJZ5p?=
 =?us-ascii?Q?MCB1vx9qOEmUYQg5FWht0XY7axmGyeYneoD7gHjBtld5UY5I/suDDr3b+2qg?=
 =?us-ascii?Q?aunbMtnnIUqGVluXuYR5jpVErZmwQphLYde6AJ4Q0tyFrMLrJIEWoVU6pOsd?=
 =?us-ascii?Q?sAzYZhL+u/ByFeCAr0fEqCtHSOtD9E/vErymR/DrgoCXEjxxO3atU6VcKp7w?=
 =?us-ascii?Q?dQeYHi9ZQg/XqeW7cocbnztNO9oczCNU9//rmejyP680mGpf6hzdcxvM0ey7?=
 =?us-ascii?Q?CQGTP2W2wUjd/oMCOVXWTNo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6eULR0seijiqwudqZ1N/16LCzXPBYTCusfsjp8ev+OCuMBv1N2D4Svxnx/2J?=
 =?us-ascii?Q?+wE/fzvdYoTmUvUGv1xBYG8Jtm7yDAisknzUhbAElhMGADHgHGgm+wuTJfCu?=
 =?us-ascii?Q?tG9GVKw390mT/peMfAcCsGF4s2puXzNyz2Ysg1Z8Uh8jIqEA9aAafh0Ha951?=
 =?us-ascii?Q?JeT84SgLTTO+zTPkKmqIcT6rNRTr64guFWmMsJLnxxZuOvo4VE7hsC/V4+SH?=
 =?us-ascii?Q?DIA/NuiTGh5mMqMeQVsNDUW7rO7hj9+4wlB89D2LwXdsMo/3Qr0s8yHOHrEG?=
 =?us-ascii?Q?jgbKcAIjFY8c2clKlcex1EDU1KlyPiJn6+2RR4Jci43d1mxZ0qs5X2A4oYbM?=
 =?us-ascii?Q?v8W5bvL219SR5PQh5VRtjZF741BU2R8Vgy+5F3yURrKQOr+smR++HlP32aQ3?=
 =?us-ascii?Q?4cKqzg06gbIwRTl0Oq6PNkJYIgbn0tlM+xSPRwQMnIn24Y3iN/9DUQiDAVjj?=
 =?us-ascii?Q?8nmnmWavlCOU6zomFLMvKW83ticxPlort/MKxwLBAulcvcBEAAdMj+yyx+Qg?=
 =?us-ascii?Q?J1cj11HY1KbZr4PhOMdTzESanuKVQSP+vidz7M7vKMxxXn/q6xxWk6ku3IX2?=
 =?us-ascii?Q?XwKbuR2e2xmVU+dKJCZm61XfdFJWeBa/OnHOqqFvruuMzy/qi43VNA2tjIpf?=
 =?us-ascii?Q?GlBJ0MT7W83vpvFQRRCVKPdzhNc83K4cAbyCSDuPZmrxvplRg7olfRw46SkF?=
 =?us-ascii?Q?r5E+ipF+aFibxH3zKMjS+Lx54HkoMXfUncBaAH8X3sDj+3qFODjfNKKfEakt?=
 =?us-ascii?Q?V9gFimAioSBs8Z8V794qfWRxu8OpDIGAY1cdftGxWiBnzgNDZ+NQpVa8PzfL?=
 =?us-ascii?Q?YCqBhNxRGcmSE1TTlCBFtjC5xLXOb9PLlCE65BUTG28hRYPv7qbIl2djMoSF?=
 =?us-ascii?Q?DsN2czOPtuh4roiGax56dnIUi1EcEwwUgq0vsQRui3XoX2FgFUH3R0dezuIU?=
 =?us-ascii?Q?CrCTo13s8uli2cZXeDEbd3asfgIEiKdPtlxYVnCAzWcB1kYRDyxREPvtrLKT?=
 =?us-ascii?Q?DiqTDNxfmNYXjTjknhrqqPcKt0V/p3gQc+PEQLrYuu07+4g8Gpo9MOdk4EIr?=
 =?us-ascii?Q?//WlSBEKbBGddwbr54Nkmh3m0ifJadRddv7QF26GmfTq5Ncr/MTCvBhjI5an?=
 =?us-ascii?Q?XoA1VPqgpwns960MrgTJsy1OyG6Zk+cYvMp/NlfIrBQmTDKLx7ICf+jNY4nj?=
 =?us-ascii?Q?xnOrT19cdcaVGABOEKJ1kuaUHVsMjaCEJ7sNUF/G8zLrjUEvHXmck8SutUwB?=
 =?us-ascii?Q?KCwvO52Q5s7qpm5A4DwUC2PZVSgj8CBvpps64gjPJPm2wn49poqxpGvg8/ov?=
 =?us-ascii?Q?sVNbT6kohet91vIQ9KDQImZABel5fU0ZD+Y/NeFXYRFRjv4tFt+8cC68QkbN?=
 =?us-ascii?Q?ndlVQxAmnOEu8913DLzEK80B0pUBGGBVTW7pf15Dhu2jbM65GXSb8dODYFez?=
 =?us-ascii?Q?zNmrCeOmFmF0krk0g1WyHkUIPLPmbHwJoitCgk/2ObWUCS+ceeb1ACF4DjG0?=
 =?us-ascii?Q?bx/KYuSNpo/gtSS1FTAetboTqiZTxAZoUPU0hqsYO0D+NzdprCNYwu3LNlAi?=
 =?us-ascii?Q?vn7Q1TjVfmXo40cUhOOIRPXR8EECrCwlduRisNSuugXnNPVZ5oOiIcHK+CBi?=
 =?us-ascii?Q?a2MLZH+8M9t7u9kjEv2cFM3DA5PZJ8j5eiI4C5T5Z0hrPL8ur2HNQ3sHGUaY?=
 =?us-ascii?Q?pdHmikkPg5pSIsZAXfznZENv1aXpF7TE6p1lCpxtfw9jeTdmM8cCPF4cYCsZ?=
 =?us-ascii?Q?4RWNsdqwyQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51019c2a-068f-44c1-f56e-08de6f6b7475
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 04:00:43.8925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RuZ6qhAxKTVD5i2jwCv/6gU4bmqo5C/UBGbJ9LJpsHX7oW6k0NWEZ8JYQnFSsQpof5d8b6Wsn4Ns2EpJ2mVTGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4851
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7A33615BECE
X-Rspamd-Action: no action

> Subject: [PATCH 11/19] drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
>=20
> Add .get_hw_state hook to xe3plpd platform for dpll framework and update
> intel_lt_phy_pll_readout_hw_state() function accordingly to support dpll
> framework.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 11 ++++++-----
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 +--
>  4 files changed, 21 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f92323664162..57de15fe3446 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4249,7 +4249,7 @@ static void xe3plpd_ddi_get_config(struct
> intel_encoder *encoder,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state-
> >dpll_hw_state.ltpll);
> +	intel_lt_phy_pll_readout_hw_state(encoder,
> +&crtc_state->dpll_hw_state.ltpll);
>=20
>  	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
>  		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c1d7d9909544..6502916793f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4571,7 +4571,20 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D=
 {
>  	.compare_hw_state =3D mtl_compare_hw_state,  };
>=20
> +static bool xe3plpd_pll_get_hw_state(struct intel_display *display,
> +				     struct intel_dpll *pll,
> +				     struct intel_dpll_hw_state *dpll_hw_state)
> {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (!encoder)
> +		return false;
> +
> +	return intel_lt_phy_pll_readout_hw_state(encoder,
> +&dpll_hw_state->ltpll); }
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
> +	.get_hw_state =3D xe3plpd_pll_get_hw_state,
>  };
>=20
>  static const struct dpll_info xe3plpd_plls[] =3D { diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 2d6cbfa79b5c..b1d95eb897db 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2205,8 +2205,7 @@ static bool intel_lt_phy_pll_is_enabled(struct
> intel_encoder *encoder)
>  			     intel_lt_phy_get_pclk_pll_request(lane);
>  }
>=20
> -void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
> -				       const struct intel_crtc_state *crtc_state,
> +bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state)  {
>  	u8 owned_lane_mask;
> @@ -2215,11 +2214,11 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	int i, j, k;
>=20
>  	if (!intel_lt_phy_pll_is_enabled(encoder))
> -		return;
> +		return false;
>=20
>  	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
> -		return;
> +		return false;
>=20
>  	owned_lane_mask =3D intel_lt_phy_get_owned_lane_mask(encoder);
>  	lane =3D owned_lane_mask & INTEL_LT_PHY_LANE0 ? :
> INTEL_LT_PHY_LANE1; @@ -2240,6 +2239,8 @@ void
> intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  	}
>=20
>  	intel_lt_phy_transaction_end(encoder, wakeref);
> +
> +	return true;
>  }
>=20
>  void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state, @@ =
-
> 2265,7 +2266,7 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,
>  		return;
>=20
>  	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> -	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state,
> &pll_hw_state);
> +	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
>=20
>  	dig_port =3D enc_to_dig_port(encoder);
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 597b671bd39d..ff3896a2cebe 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -33,8 +33,7 @@ void intel_lt_phy_dump_hw_state(struct drm_printer
> *p,  bool  intel_lt_phy_pll_compare_hw_state(const struct
> intel_lt_phy_pll_state *a,
>  				  const struct intel_lt_phy_pll_state *b); -void
> intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
> -				       const struct intel_crtc_state *crtc_state,
> +bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state);
> void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc);
> --
> 2.43.0

