Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E89D93B52E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 18:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E30610E6DA;
	Wed, 24 Jul 2024 16:41:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0u6OPJ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C376D10E752
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721839287; x=1753375287;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ikqtipkZ/xyAdmrza6za3J8ejOLfmrauHxIpcxVP6D0=;
 b=T0u6OPJ8wzF+2fliYpCz/z0/4Gt4gOFOQHHZbkm9m5IN/lTPbZ7M+u6d
 s/MQ6q8VUKJyb84Y2bCOn0hnXeziymjKRUWl8/D1wVRljFfhUcsW7bAZh
 lUuM0YzBB44WyT4firFyccNX4duuHuH+zfzr0fskJDwHUWUyTNDghE6J1
 ikPpqTfB/O1hlNguZK7u3voliEDqataI6VQRFQL0lPP7SS5hknmNJgCQA
 gi4B9D/ekWK7xhMeO0ut/1o9QjeCoqBTVYp5SVkYXqLdSByODFG9j9xlW
 NybF25vDe8HxRSTQeQBpvsAzLd8VQefuJX5nv+cYa16Vs+V0aj9ZesbJX A==;
X-CSE-ConnectionGUID: qGAGq59oS7SZGagusOT2lg==
X-CSE-MsgGUID: On8E+PQtSNipTi80H9PCmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30153490"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30153490"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:41:27 -0700
X-CSE-ConnectionGUID: R1HYI3gATGipzV+9yCBDtw==
X-CSE-MsgGUID: 8AZloyuMTqajSIoV+k7StA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="83649641"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 09:41:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 09:41:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 09:41:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 09:41:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 09:41:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XA3DjlS/le8e55et3AFdJveYXjy0EATMM2vxMV685aK2byhXzbLM961nVm512oiToSgAEBQLQYw20Yaz/LjdSrgsLr6Nb6LhFqWSCtay8nXIzhxU66aCm54ciNjk7OUv+o8hVMs1l3l+D1sy+MbqrqhN5cuQT4vwvhtYozf2E7dkt2GvvvN20RYufsgy44cBDSwVbL1gnqJ7ffQ+gHwV3HPHRRwK70DtlaDUqyVh0oXMpFRQJAum3UrQJULH0JPWgcDJkDCUgMXPlOaOgtLsED8t4jW25HlGf3A0M0e8onCzG7LCIUG3KOsHv9pljyUq7n2MnHvNMepuvUG+MZ/h2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4w2tMZpxTbubeM4NwkczkvkVGOiG2X7XzcR6kZTfL+w=;
 b=GCYj1NINS2vdSCaGqLxkpp/MBs9l3mDsh0WVBkwwpNPQBOO2G9Qbw43Jxc4UdGpPx32NYZdTaxNblfctTmEMCip4+u6P+BYIyWxDVyL4HqMt/dUQV/SOWBT50FIHXB/fZJJ7iXzOOWOh+semLjeK4EJnibeP9/jKVAYLUSRrk3Zn2OJu0qamCr5H6grIZSfrSHiNBpKliBCyhcHuLbUG6yHrv4MLUAiC6nM+x0iLzv9gGpg74H1nhG3jyxPZ+bKIbTVD6BX348m2rDWPzocuOdg48xb1s6JQH+jK0watN/PMhW6fwR0mxwKsRtJpO6TAKpI6tR25nqFb8JKxpnONRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB8202.namprd11.prod.outlook.com (2603:10b6:8:18b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 16:41:24 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 16:41:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
 UHBR/non-UHBR link rates
Thread-Topic: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
 UHBR/non-UHBR link rates
Thread-Index: AQHa3FgC5JWDD/urJE6ysBxNzvV2X7IFk9zAgAAt7QCAAFXxQA==
Date: Wed, 24 Jul 2024 16:41:23 +0000
Message-ID: <SN7PR11MB6750FFF6FFBED4443F801CE3E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-15-imre.deak@intel.com>
 <SN7PR11MB6750527EE7E48291BE184B6BE3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZqDmbHRnmjHhXwDb@ideak-desk.fi.intel.com>
In-Reply-To: <ZqDmbHRnmjHhXwDb@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB8202:EE_
x-ms-office365-filtering-correlation-id: 1f889286-6ca1-41bd-2ffa-08dcabff7480
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?w1t19HxKcwzDxo3Y9DcMnvIPUXWdXg/pKPPFbEehGwxJ4q89MePVAYjVQWeU?=
 =?us-ascii?Q?XhiZsU363rS5xUeVq+PJ9A5WX+nEtXdyo+2f/aCmw3ZhUDGtq3QGXk0WN19X?=
 =?us-ascii?Q?XZf2r0fXzlEdAXurL0TEeT0y9lkn0UZo/UKglen6MkjrxDJdKs++gw5IlvAg?=
 =?us-ascii?Q?welTpdekGnDnFqqMy97XndWYRX63zOhkDgJ+Clx5X9BRYiYY9I0US342biz2?=
 =?us-ascii?Q?NNli08TBmcQNHRjfJ5KIi03ZSnAMdwPvYRCBo+YogfpMFngMVxkKYgaPAZDs?=
 =?us-ascii?Q?Jzbz1KYgk0jUr4lGCw27yL5VtNYirUCJ0daEm9Ap7EQrf6o9fzWpXRj+omDR?=
 =?us-ascii?Q?J3mGJNXupacfHjzlSNyVP6dNlykgs9pX3D+lLTjBcMl87iiHIY0Ic3QynMVT?=
 =?us-ascii?Q?AEyaxhFvVeKqnatmaaDgbWCtxD2V1zfegChGux8CT9xtJcWI2IlnXj6CD5Ak?=
 =?us-ascii?Q?FRps+ckP887kyQ7b+lJWpp7wVeGfJ/dxeu/ySQrI46/FVwHx5ctQ+FDh+w7n?=
 =?us-ascii?Q?lREpHbs9qdlg7N8oq9j+V6lfDvgNlafgOolmSreSxX3IO0bBzybEzmAJQ4Zu?=
 =?us-ascii?Q?JL3DuKRbxjrjohm3zLJEtAjzJRncFg3B/UI1A/tKF2gjZalWbSw3H4f1oupu?=
 =?us-ascii?Q?OOn6ullNRxBtfkazCrlHChgY8tEEUb1jYiwLvAaoDiGQpAoAXju+KycLp/hw?=
 =?us-ascii?Q?0TQ4dX2jXbe+vYd320XTPcyTyfT2FLi8Bg6ce1XoBOSUnpJmaNn+ZPSIZEzA?=
 =?us-ascii?Q?JfOsRJS8R2bcFOvbb8Tzu8CVwYOvGInCn8kqg7h7YKzpeuGU4xNcy6FtbI64?=
 =?us-ascii?Q?61qIJD2vyY8wnKnvdFkcAaiSX95BxjuZQ/b/dVy8sNYQEoZ0v610KoOYZSK8?=
 =?us-ascii?Q?Dq3Mw81Qfuh2Q7spAPTRC3N0DLPtpRJqO5GgdaUW4Af9uaGJfCkwf9m1vj9J?=
 =?us-ascii?Q?nL/4GlStlXmkEkfriV3mjk7CxZk30EBrb7TLCOpzAAPJ7Pyl+P43+lazMAL4?=
 =?us-ascii?Q?SvIzVu3CuiI9ujuG1rfBT6p2eNDSi7K9SgZyiLIVsrmhvcI++7kRtSZBVKkL?=
 =?us-ascii?Q?Iccvk9zjH65abOSI2qXmeeLK/OMC5Gzfd9FG95rvRFrkXG81nNOQkTOVOXeM?=
 =?us-ascii?Q?lJTxyzM0MIAun6rGWvLDd8qtIraXKuNtgN/UoQEjmHO7fwSKjI0X/WDKGbcc?=
 =?us-ascii?Q?AxWt+krKtm/XZlz5F42J/4q2fl3VzasFlMhAzc2lF1OUHQd+8Y7hd4ZxSaJU?=
 =?us-ascii?Q?lugw/dF1fT5iAaCLRI++mIuBM6igKgY5TA3uD5/4BE+mCRBN15lk58lub9GB?=
 =?us-ascii?Q?45XpaHoXKyjq+wBrjGu3grYOW8LpkgvTN7LeMASb4blZXkefHlhGS0fhyNkg?=
 =?us-ascii?Q?LcccKc31CagkgdHBMBHnvqXWmdmYGdVOoFYCsRNcHbwsN0lY4w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B5dDr8hRaFAyepfSR+IpNp505BlZsdKEQ6XILOpMxnT0+aG+5XlCip7vqOvx?=
 =?us-ascii?Q?kVQSPyLWu0P2S4Z5S7xkkkR7nZZCgHmEhjDxQqbLO09X+QQ4FLjWwbda6F3D?=
 =?us-ascii?Q?BtpbiFUM/uIiedIFZAEixWxFeFvU7FhcYaKM1YX+Br8TrcnRy4cxYzeDQUUM?=
 =?us-ascii?Q?0q3WUiawGCVgzV/pHjuWnQ31gjJBRNYYWHfLyRSySWbHmQAEoLyyJfFa5GYV?=
 =?us-ascii?Q?9mNvAl9LTb50p51tJX4ZtB7RgWpgKAeUCZoW82M/4qCu57E7/N9AQYwcFizE?=
 =?us-ascii?Q?f4rT6X4yDRWEizQhNSSLkzB+CRcUpjEoerYhFhx61nVjUOqdOk9FktxKaxQg?=
 =?us-ascii?Q?96o5R1jDdQP+YHTViyAt824vGOW6guAbd8Jiy1juGorNQIrS7YVnBz6LbeNo?=
 =?us-ascii?Q?mWpWgQgBWOvkJ9k0EwIfUBx/eZa9H9Nxb7LCFxkOw3+FHkCPUfWHMgVQGwb4?=
 =?us-ascii?Q?iaC0K5p4ae6KLiR7OnVwfeaFRCDhHVnPI/wA0o7+dM9fRh0OLrDjz8d6K5eX?=
 =?us-ascii?Q?BLyLPK7qMjs24fo6sooKyQPY8rNiQzoWY49EREuCFJmvdBF0P1bAkOqGZxR3?=
 =?us-ascii?Q?5TuwQY8WawiTHuVE5KxQQiHXCB8ostCZxKLU2Ui1gMFXUTCwxeOI8buFiL/z?=
 =?us-ascii?Q?KTbtxLW2Joq4YLF3aZN0EegLLR+c1Sf052fOvSOJeXhdUBo23GcCiZ+lcgy/?=
 =?us-ascii?Q?pdQOJy56uHWMwV7U0UcZE+1dThEFhij3gYQktraRyzKMFPdy2IcmSnXslad3?=
 =?us-ascii?Q?WQRaaQsA4SN7IZlJ5XszHcWhRSbakC6yxG7AuG5t4KeU8Xk0mUjMwWDvr5vX?=
 =?us-ascii?Q?0371LOOEnErhkdpcAx1/ZCdTd7rqlcIgsYa96gJDPdvUrBI44ZUsaka1LFsa?=
 =?us-ascii?Q?x0mpbn3oM9NjLZoVL2sbsZqjP2HWPZx8k1Sx5ZYjcgvuuOl7wJOZvE3gfw+H?=
 =?us-ascii?Q?67+kHvVrkf/bykMKjQAP1PNkfYEoOEQbcwHOJnZsgeOalFYkZTr53rsf9xzw?=
 =?us-ascii?Q?t7avxBJytiHD/LlaTXWgAnku27BcKFL2oCXyrvUb9V/eTbyN7zT8z3JYR5pi?=
 =?us-ascii?Q?r8sct5ceHWEKVWxJufnCr7aSb1MhePLJXHBWZr56GMSq5adR7XfNe4nL+CPV?=
 =?us-ascii?Q?RIyFCY/37dFdskT0zjtgPV1uefEc7t7MFTOAnLakdNCf59hdp3F7ty0KXBxa?=
 =?us-ascii?Q?93E1K+XNfIpgnJWyK1Da6ZtKtS/UCZW4oQYlOYBqh4CQV45EZHTMg2IIOXzZ?=
 =?us-ascii?Q?BqbcbiyAQMTXS4HYFXe5pU/B7NJo9okQqI4tj9DjZ7LYM3yxjB1Iz6/yf39y?=
 =?us-ascii?Q?kpzTSJ7K8ZxXkofF0FuY36qpZOThTgBNu/zMtqs3pFbIQzey4qlEEa5oNrGV?=
 =?us-ascii?Q?xTGhgRVvIGhzqn0xwV0dfU8+K5xMUvWycInv3L1wTSpWzjsrNpOozp8orr+Q?=
 =?us-ascii?Q?1bDhbrT2q6X+pHM99iDN3vRYzS/4nV8rSdWhCaJPAOSeglGt+kCdPJViipRE?=
 =?us-ascii?Q?WD3y+kHQZOu/4C2ivMPNku46hek8ICHJuMAs9hPYEclw05yQA698wFV9dYks?=
 =?us-ascii?Q?c6EO1aWUiqgnAce3EGwneatMpUeqX54eCIYhwgJn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f889286-6ca1-41bd-2ffa-08dcabff7480
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 16:41:23.9237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MNpbsFv28lDtoPZ068cL43BHM/nIRP/IloF6WXdqx0p6vxKRM9S3XI2XFGeZNqMPJ24xWjCtdDDzGdWEHJ1Q3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8202
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, July 24, 2024 5:03 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
> UHBR/non-UHBR link rates
>=20
> On Wed, Jul 24, 2024 at 11:52:14AM +0300, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Monday, July 22, 2024 10:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
> > > UHBR/non-UHBR link rates
> > >
> > > Enable switching between UHBR and non-UHBR link rates on MST links
> > > when reducing the link parameters after an LT failure.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 -----
> > >  1 file changed, 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 0c8e0d6437b5b..270080b2735f2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1188,11 +1188,6 @@ static bool
> > > reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
> > >                    intel_dp->link.force_lane_count !=3D lane_count))
> > >                       continue;
> > >
> > > -             /* TODO: Make switching from UHBR to non-UHBR rates
> > > work. */
> > > -             if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=3D
> > > -                 drm_dp_is_uhbr_rate(link_rate))
> > > -                     continue;
> > > -
> >
> > Do we need to remove this here, I mean why introduce this piece of
> > todo code to begin with specially in this function as
> > reduce_link_params_in_bw_order is being defined in this series in one
> > of the previous patches.
>=20
> That's basically the rule of containing only one change in one patch.
> That rule is for different reasons, one is to help with bisecting an issu=
e. In
> the earlier patch you refer to the change is to switch the fallback logic=
 to
> happen in BW order, but keeping the behavior not to switch between UHBR
> <-> non-UHBR rates as it was before. Here at the end of the patchset is a=
lso
> the point to enable this rate switching, after addressing all the
> dependencies for that.
>=20

In that case=20
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > Just omit this condition while defining it
> >
> > Regards,
> > Suraj Kandpal
> >
> > >       }
> > >
> > > --
> > > 2.44.2
> >
