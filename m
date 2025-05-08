Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09598AAF728
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 11:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4703110E1FF;
	Thu,  8 May 2025 09:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LfrOAaAB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6148A10E1FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 May 2025 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746697855; x=1778233855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=mhGDWjZszeDrfbK+P+gy/I29dsLSuN6JMA9v3ObTa4I=;
 b=LfrOAaABE5xkYSVmeQC1B6vbXvNfNtiZFsg/3X+Kl9w2odtJAmBvw8ZZ
 ZQSntPg7/P6ctTwUEKqimTU3ofbjSvdxySf5NNyQO8fQS+z/5SFJyi4eF
 grKswHkGp61xWwOZWv4pigReeBh0mYOuSUVbgtJl/I59ERjfF7CwmMTYf
 pi8478FFFP9/YhXNTCH+qwA8sXMtSKku/qLQjostKGIMDX9ivvbd67zrM
 tUY78K/pCd3tu9H7CAlwa2nKLKIW1APDr585SCtGHawRdO7/xJvEweK5h
 yyl2ZQwTllvHvCSFNA/cmlbie2pLdbShmm/Q9v1BRMeaGAljau/7ols5i w==;
X-CSE-ConnectionGUID: 1DZjJJ3BQHS8wdAJWiBXSQ==
X-CSE-MsgGUID: 25yJtpRAR2GEY5kthDUAZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="47728987"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="47728987"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 02:50:54 -0700
X-CSE-ConnectionGUID: cCcXASYQR/mykqMFHLwDiA==
X-CSE-MsgGUID: HIgG25akQuGstOPw++pY4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="140281915"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 02:50:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 02:50:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 02:50:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 02:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h5uwEmPKQnk/Hv4oT8UJBzIwBxnAYDYiimf/x0vkXIAAQbiF6ckNX3ONztT+j2cUWsATA1C0iNsFrVHbXZ5U70VmGG50174619ZRkJOwAruyOJFjJL3F9VqZMmW77uVBUFq3GQTYi4PajmR9v5X6r+wa1dpKYe2fRlETKSi8L/AFuBjtNjihk056m/NKjnU50scFqbqkGYwDUsC2SVEREAqZvxg2O9L9zMG77CMSUM7mWBlDH65tFLk89ZAcMY7sNpprtajxS0vbUxNjahcP1abzr4pYh+bs0pwayE69gJHD2WxKNQKPjD2avFhXHEcKdJp5O4qehrn331G4N0ofgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rB3C8ECUKwYzUWM7MNpAFF7OwiXR8427kUBrgZ5EMqI=;
 b=aimitGwDC019+UK4HnrdPo2Rwm0A/B3HT4FFUdf1N2XaBVolj9YDYZ3quDmPsQnmU2TNuoRoORPbjjgw8P//+Gw782iL9H8zfMVewtsa/S9N8OOZsK5A6luPaodXHrUyLZBFMphW0Efos+hc1xNaXCMwpOE+M0GE1Z+QXO38hNgzjg78cwILcjFh5QC9R58yOGQf477lXxW3U1Ad1KqZc8EW8ZaxxbxoklQDggU+sREaVUGQdz4ye6XrT5PEg4/RxlbM7glmS4M9RCvAO3mH5RgYT5E94LTe0LIqkXbLz7Ek/nX5awGJcLmWLGX+u2Up7nkBH0Z2ZkyU0YTUAnRJow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18)
 by MW4PR11MB5912.namprd11.prod.outlook.com (2603:10b6:303:18a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Thu, 8 May
 2025 09:50:07 +0000
Received: from SJ0PR11MB5072.namprd11.prod.outlook.com
 ([fe80::a14a:e00c:58fc:e4f8]) by SJ0PR11MB5072.namprd11.prod.outlook.com
 ([fe80::a14a:e00c:58fc:e4f8%4]) with mapi id 15.20.8699.026; Thu, 8 May 2025
 09:50:07 +0000
From: "Grzelak, Michal" <michal.grzelak@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/irq: stop using HAS_GMCH()
Thread-Topic: [PATCH] drm/i915/irq: stop using HAS_GMCH()
Thread-Index: AQHbu1rTAP5Jhxy5lUipHWDUcAGM6LPIfJRQ
Date: Thu, 8 May 2025 09:50:06 +0000
Message-ID: <SJ0PR11MB5072EBF3E1FD471F0C82C6A88F8BA@SJ0PR11MB5072.namprd11.prod.outlook.com>
References: <20250502120725.439800-1-jani.nikula@intel.com>
In-Reply-To: <20250502120725.439800-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5072:EE_|MW4PR11MB5912:EE_
x-ms-office365-filtering-correlation-id: cee9bd5f-df8a-436c-3ea8-08dd8e15b6ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?R22LoE7jqnNoy0pg3Jm4jyt8njMh2a3/+/Qiob5TtxfkSwNOHSx/uSjJtF?=
 =?iso-8859-2?Q?p6cd7qNYNFUXxkVdwjQF2WLPMS8uXg5mDXudjQUlWl4hPiS1fd0UdikgIX?=
 =?iso-8859-2?Q?2a3DiNOIpWvx/G5SMKHvMdtjB1o+UCkdvLu2o5KDvn83qgNIp3ksv/ENRU?=
 =?iso-8859-2?Q?a7VL+LEti+czVuB4TWLLaGqtEBId8KCQmUJmvMTUQtgdOplxT7fKW4Vafk?=
 =?iso-8859-2?Q?6ovuRcna43VuIS0IYWHyz2CP/LCbBpjb8yZVshdU/UhC7bADhqq+ULjC2I?=
 =?iso-8859-2?Q?6jUAMyeDN2y0+zLRBhQuqmY3OdH6LVpSwUSl+PR7pHoZ5os2LDnvZ1jquT?=
 =?iso-8859-2?Q?52Dx2wGYWkfgfm5GltmP9Mn/d3CmD/2gdFEMe6ypi4jGVRxtsbDR37LFwT?=
 =?iso-8859-2?Q?UFuvMaytlQe/uxY0Cka4aYv6jUq41cKkPP2kqcUYrJUfkUaXC42wpNTOM5?=
 =?iso-8859-2?Q?AM9R1CzrQDxoOQDpjl80aDeVgk6xyJCdd2dNqor/n/lp9+JYpCXJPG4n9v?=
 =?iso-8859-2?Q?Ny89Rw4STOurnJ3Xh4yzReBn7bJHxfyBpQ0CO6yMeaEA/+T78ennSYq0LU?=
 =?iso-8859-2?Q?P+pQxTb/f0fuChswvWLcc7kEoDGq9X7M5kKvHWRwxmXTo+Y62foI8tEFIk?=
 =?iso-8859-2?Q?nCgkO6KLJxWenUCXW6UshfVdD6XRn81AuZ0c0I6OWNzTKauNo2E7i0gGFP?=
 =?iso-8859-2?Q?jX0SjLbXKu/logrFHgxAJ1jrXWHf6xOUPmgm5Z5qA2qms/mRpAMekAyf8E?=
 =?iso-8859-2?Q?3PfF7yMALYfnhN5H0LmOWiY8JTs86JonAgRH9xqUYaF6fhXy6wZqjkt4Dv?=
 =?iso-8859-2?Q?sS7L4gHPt+YeJv2lmNNUmK/HvrSShVBN+hTtYjtda6gLV/381qDX3vHOPB?=
 =?iso-8859-2?Q?akajXiCS0wck49ONu+PgoGYBbN5nJrdZ8DWq6NmvI1nwlAzO/LOEWPaFMv?=
 =?iso-8859-2?Q?Wub7/Djfzbj8nTLSuKs4PRWCfCFPOzvi5idw7vl8Kn25Uk2fZxmDzy4eTN?=
 =?iso-8859-2?Q?9eGuZbgbZI5M8g4+FXJbILFdisXK+UiTaXqmvq6huwbpt0gKzjIuAHYBxY?=
 =?iso-8859-2?Q?xYkdRcgGdsJD7Bnmfdh4PNi88xZWe845Lx+7CbCcGl2o0HWewkjFA8C9ut?=
 =?iso-8859-2?Q?yHNEoBkg47RHWdTTSY/80eyouhJYdWXMcJGcd/REG38EIfte7VYNngvxcn?=
 =?iso-8859-2?Q?UrZkoUhcq8LZyN8/W+kGHDNc3d7SV/XFhB2u8WU6PD3MnU4jTyvAWjMr9A?=
 =?iso-8859-2?Q?R4eXyIn3QLrXwWlCR/pgTYIAPlIIGq7i9TZmE3WVIbtR4G7i7GbnD4YV65?=
 =?iso-8859-2?Q?P/I+w0QkxZlCne9KUZ5a3jQbX7C+sU6MdskPO+RHcZs5vp/SP3ui7bkIc2?=
 =?iso-8859-2?Q?w5w0vecLmc0XK5YEFhV/HnUK6erQyVkrVgI3eMhTweMU51GoA/OyZ6QW3A?=
 =?iso-8859-2?Q?3XKDMi7S+znshrU8NF0Uf0ZvFi6Q1SNA7IXZJ8yjJspuByv5GNcgQGIxN9?=
 =?iso-8859-2?Q?SKHSF8gJRl3/91/zK47xeNGkD7AVq6+KGyKvaXazH0dg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5072.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?ULaLRRe52r6NiZzo278dqBJOJMxAJeLgtrPLNH7imHgy02ngi/4a3isOGI?=
 =?iso-8859-2?Q?mExuIuTCt/+5W7/oMn/Iwppq2B/g8L8EG3CbJV/WQD2TvMZD31xX7+qxeN?=
 =?iso-8859-2?Q?M8/HQJMMN0wbvIA1XcrIvoS8oYe6rflrSSfqume0PE/Z+RcLvu8FFUj7SD?=
 =?iso-8859-2?Q?QX+fSTg1wmq/F1WObuqIijgTBOKoOMH0TL3zXFUWMF4dFA5g/K+cH/ycO4?=
 =?iso-8859-2?Q?i+1LG0Ihkk4fmRvXliMnveBxXVsz44NsS/U/bln68kSSESx8DHGZUrtBsY?=
 =?iso-8859-2?Q?HZWLm8Kwr58FldnkxdJmyS5s2Xs8IO5dD6bQKlv6/SNgDA03e9cWYMuUAL?=
 =?iso-8859-2?Q?MIAI7Jtt84upx27ETEuR+1gzH1IG5tn6v5DhTzUK3J6BNO/cVuRIr+6nRQ?=
 =?iso-8859-2?Q?ImqU5fttm5Mw1VW5maOXtRk12bzcg26Fglxv0LhOpB907awImnE7XCW37y?=
 =?iso-8859-2?Q?g1/76/rd779LpJW8bPWpslwEGepSvub6m5VoL7zUKIPSxqNXeiKly144Np?=
 =?iso-8859-2?Q?vUOIiCdNsE4+gygCU0L8q0G183DqUrGX3JO0W6hgLbU9kdo9sFa3vxp+AV?=
 =?iso-8859-2?Q?qEWBgkEM28Xsyp3O65GOw1GrhDBdHToBOViCQdVMMOP65v90swZ3eRHh9l?=
 =?iso-8859-2?Q?a0TjCrDh61/n6dgB7plrGgwPATmlrzn79WXR/3x0X7pcUYw+mWQZ+Ewxh0?=
 =?iso-8859-2?Q?Klq+h2/9t/acuMMtoKvfVqmDdm7AHJ/Te1mQM7wGHvVAOEfEdCWmae6wE6?=
 =?iso-8859-2?Q?OiKDRtVrDO5hqbao4A1Qct3qk30ehwmb2vpklA8M0d9wduU5VuIal+Bba5?=
 =?iso-8859-2?Q?Xm3qCq3wH9Blx8fM47rMof8cI7PwuLtVYjiZXZDnHJVmOmXT/Hzr5u/ALO?=
 =?iso-8859-2?Q?ItuaNBASiACVVE7e3bSA6i625k6ERtHgPiElEgSI+gJcE3iWdfKOpyauxQ?=
 =?iso-8859-2?Q?SuRKLSaMOrbOGHp+9Lhyy/F31j1gDjOQFmDvbszxz5SSN52BpM4h2AS30j?=
 =?iso-8859-2?Q?ZI4NbRMhjrI0FwJ1mTAmjpJq15kPcRRULCDGLSEeSMuYVyzeCSjsbEwgL3?=
 =?iso-8859-2?Q?U+r+eBmeAlxN9qVa4KKjqBzbE2WN0fXdtN/czTMqQZs8nSZqYVDQWycWRB?=
 =?iso-8859-2?Q?ENirOT0AurARlhEQPXPH68kHY4UmbzMrgsRcTHyu/OqfGWhT0G3n2AFjkv?=
 =?iso-8859-2?Q?GYfnWRyZt481SEZYJO2iKzo4C47Pi+8qCVvvKMr98M7wfk7VbSclY33tj5?=
 =?iso-8859-2?Q?SLaV1GKgsuCiC+IDEXE79RZCm9hL/sF72FLC3rcpOCJ4k9WGZ1CfB652cZ?=
 =?iso-8859-2?Q?8zPFT9Iyk2tASfxlZSXn086KQNZ5Cqm6I6Tbd8PV9QR1I47PsOx1uWhRYu?=
 =?iso-8859-2?Q?0sYFbXOstvjo0A4jAHWPN8xk7K7NcXLiDH5cGqbFXxBS6tL6gs3nd6wBFz?=
 =?iso-8859-2?Q?hpMBQLlUmmoi5EMGkEJ53n9Vw6NI6w4HD0Mt7DNliNjg5tgAKrOkqB99nS?=
 =?iso-8859-2?Q?0Vvzi3XjHBYU9LJQomuR2PADqMkhDotIsHugiScjTzJ+2MUKymmwISIaw2?=
 =?iso-8859-2?Q?23L7NQYzDsSZMfZsSQt9wi9uT6MXUpXcGCxb0hnYgc1cFIgZZYDZhR7ruQ?=
 =?iso-8859-2?Q?C79vPXl906KEHuKy31WOBKjEO1jmLBdXPpqa/+bBy6zogv2g9if8pkaq4D?=
 =?iso-8859-2?Q?3Ep5zm4rN4Evm4YJlkvyzeMXqIjdzXllN6SX4JHe?=
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5072.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cee9bd5f-df8a-436c-3ea8-08dd8e15b6ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2025 09:50:06.8623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: whn//Ljm5fyJiJZHzpUXn51A9XlMkVIX/JnKPR802VRN6hn9EmNJr1Ek8gBhr5m5wJh0G6h9N7QrDDb5e8StyE4TQjD4tu1iaoxiNaLAmns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5912
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: quoted-printable
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

Hi Jani,

-----Original Message-----
> Right or wrong, HAS_GMCH() has become a display only thing. The last thre=
e users outside of display are in irq code. Reorder the if ladders to stop =
> using HAS_GMCH().
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha=B3 Grzelak <michal.grzelak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 105 +++++++++++++++-----------------
>  1 file changed, 48 insertions(+), 57 deletions(-)

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c index d06694d6531e..1a3b504252c7 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1175,71 +1175,62 @@ void intel_irq_fini(struct drm_i915_private *i915)
>  =

>  static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv=
)  {
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_CHERRYVIEW(dev_priv))
> -			return cherryview_irq_handler;
> -		else if (IS_VALLEYVIEW(dev_priv))
> -			return valleyview_irq_handler;
> -		else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> -			return i965_irq_handler;
> -		else
> -			return i915_irq_handler;
> -	} else {
> -		if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
> -			return dg1_irq_handler;
> -		else if (GRAPHICS_VER(dev_priv) >=3D 11)
> -			return gen11_irq_handler;
> -		else if (GRAPHICS_VER(dev_priv) >=3D 8)
> -			return gen8_irq_handler;
> -		else
> -			return ilk_irq_handler;
> -	}
> +	if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
> +		return dg1_irq_handler;
> +	else if (GRAPHICS_VER(dev_priv) >=3D 11)
> +		return gen11_irq_handler;
> +	else if (IS_CHERRYVIEW(dev_priv))
> +		return cherryview_irq_handler;
> +	else if (GRAPHICS_VER(dev_priv) >=3D 8)
> +		return gen8_irq_handler;
> +	else if (IS_VALLEYVIEW(dev_priv))
> +		return valleyview_irq_handler;
> +	else if (GRAPHICS_VER(dev_priv) >=3D 5)
> +		return ilk_irq_handler;
> +	else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> +		return i965_irq_handler;
> +	else
> +		return i915_irq_handler;
>  }
>  =

>  static void intel_irq_reset(struct drm_i915_private *dev_priv)  {
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_CHERRYVIEW(dev_priv))
> -			cherryview_irq_reset(dev_priv);
> -		else if (IS_VALLEYVIEW(dev_priv))
> -			valleyview_irq_reset(dev_priv);
> -		else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> -			i965_irq_reset(dev_priv);
> -		else
> -			i915_irq_reset(dev_priv);
> -	} else {
> -		if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
> -			dg1_irq_reset(dev_priv);
> -		else if (GRAPHICS_VER(dev_priv) >=3D 11)
> -			gen11_irq_reset(dev_priv);
> -		else if (GRAPHICS_VER(dev_priv) >=3D 8)
> -			gen8_irq_reset(dev_priv);
> -		else
> -			ilk_irq_reset(dev_priv);
> -	}
> +	if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
> +		dg1_irq_reset(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) >=3D 11)
> +		gen11_irq_reset(dev_priv);
> +	else if (IS_CHERRYVIEW(dev_priv))
> +		cherryview_irq_reset(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) >=3D 8)
> +		gen8_irq_reset(dev_priv);
> +	else if (IS_VALLEYVIEW(dev_priv))
> +		valleyview_irq_reset(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) >=3D 5)
> +		ilk_irq_reset(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> +		i965_irq_reset(dev_priv);
> +	else
> +		i915_irq_reset(dev_priv);
>  }
>  =

>  static void intel_irq_postinstall(struct drm_i915_private *dev_priv)  {
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_CHERRYVIEW(dev_priv))
> -			cherryview_irq_postinstall(dev_priv);
> -		else if (IS_VALLEYVIEW(dev_priv))
> -			valleyview_irq_postinstall(dev_priv);
> -		else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> -			i965_irq_postinstall(dev_priv);
> -		else
> -			i915_irq_postinstall(dev_priv);
> -	} else {
> -		if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
> -			dg1_irq_postinstall(dev_priv);
> -		else if (GRAPHICS_VER(dev_priv) >=3D 11)
> -			gen11_irq_postinstall(dev_priv);
> -		else if (GRAPHICS_VER(dev_priv) >=3D 8)
> -			gen8_irq_postinstall(dev_priv);
> -		else
> -			ilk_irq_postinstall(dev_priv);
> -	}
> +	if (GRAPHICS_VER_FULL(dev_priv) >=3D IP_VER(12, 10))
> +		dg1_irq_postinstall(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) >=3D 11)
> +		gen11_irq_postinstall(dev_priv);
> +	else if (IS_CHERRYVIEW(dev_priv))
> +		cherryview_irq_postinstall(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) >=3D 8)
> +		gen8_irq_postinstall(dev_priv);
> +	else if (IS_VALLEYVIEW(dev_priv))
> +		valleyview_irq_postinstall(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) >=3D 5)
> +		ilk_irq_postinstall(dev_priv);
> +	else if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> +		i965_irq_postinstall(dev_priv);
> +	else
> +		i915_irq_postinstall(dev_priv);
>  }

Best regards,
Micha=B3
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

