Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F6F976697
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3640D10EB41;
	Thu, 12 Sep 2024 10:17:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iIC+Ik7q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FB810EB41
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726136229; x=1757672229;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aqQ5820oyKFAQz+bxMEFW4Zs5sz51gr66iQunp8TvcQ=;
 b=iIC+Ik7qaYPCpKqguFcHNcEFp4MpjohhTC/dXbRy1HzSGDeyLPVcEz82
 OObWJ4K0UVQhngMslofrLYdsznga0fShF7zT4PIHZoZfjN6+S6Gt23MR7
 Hdl6PXV1VrWV/W+hqHKEHczbBNVXXg1Ro6t7rSgscPLsnWUK3IXp19FCV
 REAY8XtTGMFCW3oQWyUx0FWyw6SmuI7x2F1Df0iUZ1dCTc7sCZK9uvbPa
 1i12Bhu24UGOAx4WwYYCOKmprYWhu5TUPj17dMmpSOyLtslBkjIsm0SiT
 P1ymiKnLEdgHAlzWspywgTp3hVVDcMAs5k9Z16nuD5GUwpgda8B5/FdKy g==;
X-CSE-ConnectionGUID: qlVwLnFmT0KlPYNPye3YxQ==
X-CSE-MsgGUID: roZJjDWTT76GFR7APjdQlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24916258"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24916258"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:17:08 -0700
X-CSE-ConnectionGUID: 0ZbvDvfUSxqZW/bc4ehHUw==
X-CSE-MsgGUID: 6H0ecp8NSzajnGmSH5WTCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98484808"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:17:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:17:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:17:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:17:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:17:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AbaGCrdV0O2IfT3S4Riw2CeN9HYehoK6nz28suweyql7/CMmf3nJJ3STarMhCSlXm1NQOKTl+NS33rMoDSy3w57CzJIwaixxGYVO5SFkNVJ2XCUD8d1qVMLS12XGLZ9slGM1G7Xm28N2Hb5e0l+zKu9fXLS1nyHkcBCoZQ8fPx5rJtJMaW04qQ7HMXrrcm+/4JgZ5vMt5NAPhvl5/NignSb59BUwpqMSbTfcFcTynOBeba9gUN5BJpXHpUMVr/XQ+bkn2Hv8ZBKH+bXW3FC5/OsP8t+a9MNUJmgopxxabLhPGwClRVXPe16mxzK508Qa4RGqVpOokfKcC/ymuqOdbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7sUCMcTRCp23BVBfXjoUMxYI8rF8hllrGqL74c4rJMg=;
 b=T+EIa8LHNT64t0VfU9F22gJYItvt5geftlyvUTSGd1eaIUJH17csUDOqEzy5OOJO1LKgLt55f8gP1DgVryaeb78a48WvOqgq7XGV9tgVTdAVTo0iFZSdZ6CoPRe7xC8Jo0FYYAx/j55WVkivdQSBfGpeBJ1bOi7ghUVv3LWUKBz3I1t3kNfOAFGVTWMAr/9JrsGg4wJWrVHip+ku20Sq1in+oBefy2neINd9bjU0Jbj2sccrncvbV2TyZ8NdSRCK09I+O4W2goSnAVx2+YBEhaFLLlR3jnj4O7f6pUwTkBRaRWEv4s53VfuxMYMBoF/ddMUO3C+e20ZQD9eFtPEdKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.23; Thu, 12 Sep
 2024 10:17:04 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 10:17:04 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87Wn67wWJCU4mka9WcZyzagep7JHCK1wgAz2s4CAABJogA==
Date: Thu, 12 Sep 2024 10:17:04 +0000
Message-ID: <SJ0PR11MB6789AB927195DF90064D29C38D642@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
 <SJ0PR11MB67893EF32300D1B26127066F8D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <IA0PR11MB7307D98AF48A0177B9AADFD8BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307D98AF48A0177B9AADFD8BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|PH8PR11MB6950:EE_
x-ms-office365-filtering-correlation-id: 6a7cdf44-8589-4955-8146-08dcd3140c6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?a6pMpV9TaiydRvX1ikToTRVKwKiyb11oItdzeCnCp/B+9ZiybDc6dOiUHw?=
 =?iso-8859-1?Q?JXdbsNsb0kOUtSDkJow2+OFRaCzpne21deJ5liRGWORQECBoUIm8ZhSq3o?=
 =?iso-8859-1?Q?jSvGEYQQbz4MzHxHUUDE4qZsBPrUpyp/YQ5BrnLqzNSFwM3HU9R6sROuLR?=
 =?iso-8859-1?Q?KfhHYDR23GN+ve7Iuvt5hS3xHwLf2uJnRfAKymFmDH0qOcM+bgwk3yUD3u?=
 =?iso-8859-1?Q?WEoRqAd2M9a+QRZc0NtN0zkOV1NOe4tnkJjSkKGq9IMu+ZirfzxieIm1Zj?=
 =?iso-8859-1?Q?eH1mrYJ4xNMMrmk5hF480FLOSWgwbXop/f09jO2gNytV7ty0ITToKIlFmf?=
 =?iso-8859-1?Q?ouB1nAiuwNQabpYwXNRRRTDooDISJh7TI7Ti/lxReDF1ofBo4T2rjFfZII?=
 =?iso-8859-1?Q?7SNo8W4MHBHEM6yigo5pe+l73vYNAs0zNzFzaUrBG6O9n8EA4XIf+knPIC?=
 =?iso-8859-1?Q?XEXsskiiOVTX2Yp550816hs3H3RNXCfUMMWUAgQWhQPQB7FRVOS0BAoc5X?=
 =?iso-8859-1?Q?a6d0wVHBZNnyhXZAPmer42e0rU7+oDATq8ZiTKpBQ8+pdomTfHwWv/Gkat?=
 =?iso-8859-1?Q?JpgvOUqR1qe8DwbHbzp3tmd0mF10eRYFUinGkpaNh2NJG9t/AfaF7y7G9Z?=
 =?iso-8859-1?Q?7tuDZ6Z4VnslWoloMoq3grcw1U3hczn4YuyqnejmSrOxyN4TiaIPE1DNHR?=
 =?iso-8859-1?Q?/VYEZQocNdeClInJkF/LedgtcpuODMKX6bII4s2lippg3f+iSz6qL1Umf8?=
 =?iso-8859-1?Q?EzXruK2bzb4dimoIAkSPEpYdex+YJ7DJBmIn0+YELOcIUjspFEqoJbY1AU?=
 =?iso-8859-1?Q?Yt81/edwuzEe9CdUAqfQKaQhJWDG39OSTKGk5HidqsnhIdpp6MAZraRMGn?=
 =?iso-8859-1?Q?mTPMg9IlZs81/HKkQ7mCz288p3L6dw4xgURPVfV23g1NzQ+YKQAgFlBz8P?=
 =?iso-8859-1?Q?p2iulUHY4E5ZEPQJgaAwywhXbo/vc0IJnQKLUQOEbFr5gOl2WEusFnRZgr?=
 =?iso-8859-1?Q?TMAmA807q2MoG8UPgyc2m639H0PFSIvc7iePKFr/MO5gnjgxUmp3hZtG5h?=
 =?iso-8859-1?Q?l2T5w0DwsDw3kaiLM3KAxBr87fdQcV2DYb6ArtVWy8F694p3ssD4lR3cex?=
 =?iso-8859-1?Q?PT6IuCNP5oXSYUjuJSZ9CqWgbeivKYf3DQE/JDvTiPKlwl6idDxFr9dkkw?=
 =?iso-8859-1?Q?tz105AXoFeqmYZN6hDEUzPWMYBBNrHCjVSVXzKJkMVL8HrLAt9DyzzaeK/?=
 =?iso-8859-1?Q?MPtXjPFltT0mYpZ57YVQ8Kk0ZdFu/1mUgRQaxPknQzVk3kpFy+hRs+5sxQ?=
 =?iso-8859-1?Q?3+mO8tRXJjybA/og0fYPwmLs1ee3K+atqjI2GNSxuoGFWjJQ8ESgcGriOc?=
 =?iso-8859-1?Q?PZreHwTPfzD7TocYmcL5ydb9D/sxBOpWee0pVThnJi/jyZ9Cx0dtTm1jcn?=
 =?iso-8859-1?Q?xMy0bY9QEoIn6Cc3UowQI4j49OhIx8XsoFjMxQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1fFQ4R5F26IYa1dhVRMUEEeGpiXiyPCuVXx3PMFD2YRhlgjsrryyLl8pAE?=
 =?iso-8859-1?Q?cWtLNQA9AYylwFHqk1ojeRKDzPqNcaqpKb5S367CEyIyIMDLLkSPAIoYRU?=
 =?iso-8859-1?Q?tiFb9xuaOBAWlgDbLA8xWWUw9L1X7MGwvpCipFH9repd3nhyP5lrwurG2L?=
 =?iso-8859-1?Q?Yu3e4+MbJ8unY4xSI0OItt5JhL3Im9eGV4+4Xj5qDQtBPqY+aw20IoVfIE?=
 =?iso-8859-1?Q?Q6scyVzN6nnK8iew+YOpgqMmrcC4f/1wne9CpKKEVRyLWh+7UdUpwrppgV?=
 =?iso-8859-1?Q?l3YiOVBB7c5gJa/GYKT0NxAYcd77gsFurtoq10KxdDRGc+g8Nwu3Tz4v8A?=
 =?iso-8859-1?Q?Ajbl+j9TEz1cfIlSd/rO5a8SMkzKKFiXBZe1YDy64YnWbnqWTO4UGX+L7C?=
 =?iso-8859-1?Q?sV7rUZ94yd5lpSgP4wIcq6wDR+ZHKwOxoNB/4AlxEapsEfwOdnVcwPdY4o?=
 =?iso-8859-1?Q?VYcDUWuwoNO/E9XWgP1ySUwmo7rwrLs+AgKL7sB+2L7CmEvfXyvFJzR6VA?=
 =?iso-8859-1?Q?h7KYcyhGXv4DBXG9QU9q7gCuB4akOym6pJSojn95p9n/0ZIhb2oViTmM1w?=
 =?iso-8859-1?Q?PZ9RcFSsETk12W6q2fmcvoFtnNqKyxnfXWIx2S8PYtzIbO5y1cm90wkHE+?=
 =?iso-8859-1?Q?HZXOuN5M371PCWnCsMSXaoiZQ3Of52u3EvShNoPF9geGeC3LEdtrEoYrA2?=
 =?iso-8859-1?Q?mEIBEUDA0M3LrVaaMyeRFrDCwg9ZvwoP+IhZOgCZes8T9K6l2AnOg3zoUK?=
 =?iso-8859-1?Q?6J5VWOntERVkEEOEbb+DmcEETQSO35LkUkzFmR6esg5uIJIkj8jWBvGBsw?=
 =?iso-8859-1?Q?u/QAFlzGFLzTjM60mYlIIzLxRm+sOINS+g7EM4fadeGK/O+kJVlEyUZ9Ig?=
 =?iso-8859-1?Q?+noFYmUXuZQgwsTBKrl2ZJF6oL1bk9qYdjMpuadf/MqTA+B8XTepC8AQJy?=
 =?iso-8859-1?Q?TLs6xqZsMiA9p8PIvKDCcKZt2+i7qdCym4t/50ipPtwZ/wEAlmwDELARCz?=
 =?iso-8859-1?Q?RHoptrtG3q2mOQyeyF8x7dJM4kOf8eUWRPWO/XO/CU/0wXbrwjIqzzwkpk?=
 =?iso-8859-1?Q?Sr74kcpTp8jDM/QQu4Sm2VFww/FquCr/HvRX1nqoA9RiANuBkcVyiMAvmM?=
 =?iso-8859-1?Q?kQu9jEAHzVzEhc1gPJjBDk/G2DiopJAoPTPWpNyNL1oj5X/yqh2+uHqjdm?=
 =?iso-8859-1?Q?iOYywP6IPzZjjBtsvzfqXr7MfyW0xJsYL/oSHvIjS6RvUvCmf6bLODPDjI?=
 =?iso-8859-1?Q?gVnWRsEdrsz6EA10nRdT9f/8aEp1uMZZbFuZAAowfLmc0qSsnZ8io1qVVC?=
 =?iso-8859-1?Q?E/T3/MoMnid/7tiOfH13+EGtB65BmePxCXZW7cJ3jeqnHoh5gra92gchh+?=
 =?iso-8859-1?Q?kk4jdF8B/7ensSWlPU21srca+yqpNGRKwiy3wZdteg/aeEHYUmkox4eMPc?=
 =?iso-8859-1?Q?sI5U4QL+BWJC2vKLKMQGgLJ4uBUPymSgrRtVK5OpgivNpNDO76PDWP4JvK?=
 =?iso-8859-1?Q?p6F+8OQXtpCr0n2FPN/DmHWNXJ0HFqf2EGJ8HiSnvypoHPtOHUITZh3efg?=
 =?iso-8859-1?Q?7TdPbnNOt5cq1Y+ElY2nlRlZPfsqBTtnqyq57c4GScNo0I+psrk0PIBFdc?=
 =?iso-8859-1?Q?5U1QGbfWUoEstS/VlVgfT5rFdelTV4h8/shr3cFbdDW090m25IpoE9XQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a7cdf44-8589-4955-8146-08dcd3140c6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 10:17:04.0439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CSUVhydORS6VPO4w0mPKsuvwmK8Ok9im3vBwLA7x43En0O856xztS5yRqMlDFYSeY+3UVV56RHKKH2mCuszdTE2YtlaI5pXtIdUopEeql6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
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
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Thursday, September 12, 2024 2:39 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
>=20
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Arun R Murthy
> > > Sent: Wednesday, August 21, 2024 3:54 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Subject: [PATCHv2 1/5] drm/i915/display: Add support for histogram
> > >
> > > Statistics is generated from the image frame that is coming to
> > > display and an event is sent to user after reading this histogram dat=
a.
> > > This statistics/histogram is then shared with the user upon getting
> > > a request from user. User can then use this histogram and generate
> > > an enhancement factor. This enhancement factor can be
> > > multiplied/added with the incoming pixel data frame.
> > >
> > > v2: forward declaration in header file along with error handling
> > > (Jani)
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile                 |   1 +
> > >  .../drm/i915/display/intel_display_types.h    |   2 +
> > >  .../gpu/drm/i915/display/intel_histogram.c    | 205
> ++++++++++++++++++
> > >  .../gpu/drm/i915/display/intel_histogram.h    |  78 +++++++
> > >  drivers/gpu/drm/xe/Makefile                   |   1 +
> > >  5 files changed, 287 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h
> > >
> > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > b/drivers/gpu/drm/i915/Makefile index c63fa2133ccb..03caf3a24966
> > > 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -264,6 +264,7 @@ i915-y +=3D \
> > >  	display/intel_hdcp.o \
> > >  	display/intel_hdcp_gsc.o \
> > >  	display/intel_hdcp_gsc_message.o \
> > > +	display/intel_histogram.o \
> > >  	display/intel_hotplug.o \
> > >  	display/intel_hotplug_irq.o \
> > >  	display/intel_hti.o \
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index bd290536a1b7..79d34d6d537d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1537,6 +1537,8 @@ struct intel_crtc {
> > >  	/* for loading single buffered registers during vblank */
> > >  	struct pm_qos_request vblank_pm_qos;
> > >
> > > +	struct intel_histogram *histogram;
> > > +
> > >  #ifdef CONFIG_DEBUG_FS
> > >  	struct intel_pipe_crc pipe_crc;
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > > new file mode 100644
> > > index 000000000000..45e968e00af6
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > > @@ -0,0 +1,205 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright =C2=A9 2024 Intel Corporation  */
> > > +
> > > +#include <drm/drm_device.h>
> > > +#include <drm/drm_file.h>
> > > +
> > > +#include "i915_reg.h"
> > > +#include "i915_drv.h"
> > > +#include "intel_display.h"
> > > +#include "intel_histogram.h"
> > > +#include "intel_display_types.h"
> > > +#include "intel_de.h"
> > > +
> > > +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    //
> 3.0% of
> > > the pipe's current pixel count.
> > > +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   //
> Precision
> > > factor for threshold guardband.
> > > +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> > > +
> > > +struct intel_histogram {
> > > +	struct drm_i915_private *i915;
> > > +	bool enable;
> > > +	bool can_enable;
> > > +	enum pipe pipe;
> > > +	u32 bindata[HISTOGRAM_BIN_COUNT];
> > > +};
> > > +
> > > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> > > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > > +
> > > +	/* TODO: Restrictions for enabling histogram */
> > > +	histogram->can_enable =3D true;
> > > +
> > > +	return 0;
> > > +}
> > > +
> > Looks like we are totally bypassing crtc_state->dither.
> > Also I see some comments on dither not being enabled on anything which
> > is not 6bpc. Is that constraint resolved now?
> >
>=20
> Crtc_state->dither is used for enabling dithering during the crtc_enable =
and
> at this point we are far ahead of that.
> That restriction is for older platforms(ironlake) and we don't have any s=
uch
> for ADLP+

My first point was why do you need to enable it again separately, if it has=
 been already taken care by crtc_state->dither
And second point was, can you please share the bsepc link where we have thi=
s requirement of enabling it again, even it it was enabled.

Thanks
Vandita
>=20
> > > +static void intel_histogram_enable_dithering(struct
> > > +drm_i915_private
> > > *dev_priv,
> > > +					     enum pipe pipe)
> > > +{
> > > +	intel_de_rmw(dev_priv, PIPE_MISC(pipe),
> > > PIPE_MISC_DITHER_ENABLE,
> > > +		     PIPE_MISC_DITHER_ENABLE);
> > > +}
> > > +
> > > +static int intel_histogram_enable(struct intel_crtc *intel_crtc) {
> > > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > > +	int pipe =3D intel_crtc->pipe;
> > > +	u64 res;
> > > +	u32 gbandthreshold;
> > > +
> > > +	if (!histogram)
> > > +		return -EINVAL;
> > > +
> > > +	if (!histogram->can_enable) {
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (histogram->enable)
> > > +		return 0;
> > > +
> > I don't see in the spec that dither should be enabled, any quick bspec
> > references?
> Dithering should be enabled by default for ADL+ for DPST. This is an
> enhancement to avoid artifacts.
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
