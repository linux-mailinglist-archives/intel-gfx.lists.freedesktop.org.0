Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A40CA4E0DB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F064E10E5D6;
	Tue,  4 Mar 2025 14:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAXXQsWP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C421410E5C9;
 Tue,  4 Mar 2025 14:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741097267; x=1772633267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+9G94LuQ8oiNRcdh1cfLpiHPdUqEYa8rHriuKpSYnkA=;
 b=IAXXQsWPIn1rc5xbBj87xiTgad8Tl8wPsPozEv07anzAyKKMhfj7d3/q
 GPLqadfn8+YgjF0wWwbttpJjOqDzwUeLC3IvSv5q03BK6+vlVEZ7RkPBE
 56s1xYU+g8sebSpJYGQ0lsuguFEKaPedsbmKnCHkO+4KIjZbA1FyYkrkv
 1L4/nCgtoSQJI6Vx25G9UXu9+Bcno6odkYlc0DMVw9t5JwSRLmf22veRD
 z6OwZMTRO4PmtcpNjkyuyqJ/n74nvH1wzekNHko4p4RtIS/076vMGLf3s
 qNL+BBBJCdJ3nC+T0S2O/IFXVPRGVGHZISz/yixAZaYp+9tpfQKZF+sd0 g==;
X-CSE-ConnectionGUID: IERoVZSeSnWMEHFBoTTXjQ==
X-CSE-MsgGUID: N40jfQluSD+FxymScv1/yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41193699"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="41193699"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:07:46 -0800
X-CSE-ConnectionGUID: HDWcaJkJR+y1PKV1FtJpSA==
X-CSE-MsgGUID: oZQx+xQ0RmWsziV/osIW2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122514096"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 06:07:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 06:07:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Mar 2025 06:07:45 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:07:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TpHLZtnvtZF8Ez9bSsA4wbeSzDTshEM4j7S+rFfc6IlvAA/p7zxYx2KcvwuFlH5n4ZAgP4Zs9141LJQJKtHc3NoZqs1+WXvh5fWo+gBtcnRezkd5dlwY4mY2MBkDF9B30dckzOSorjvRqFxCgOqZ+CFH6kUGQL4PcEDoRYgcNu3oCDBsnWaXrJ1f1gtqRCat3Bf2flsicvLGfBfE1UZw8qE8yWKiuL1ChewA4lpfX48ezrsX1fLK3F25lM4tfc+O4MnLAqjBSBecXEL7f4H4tV0MkALuPQO0+RtCR833DBdJ9MtulxbcnXavMnt5TmHyZSM0hFchBYCY0qeEtDh2+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZh90K1WfhjjTf0mxs5JUKEyDNMcJj9N63c0nJkooZQ=;
 b=aBXf66HT2ZTTm9/sst4b47e+LK6n7aXwoiXN+yg7Xz/xrt1AM0sQ1Lz063g4WiPGPmo21i7qP23Y0k9mr3gwbnV4K83ESfFqjVwYhJx1pr1HlmVh9c61MTLULM+nEnAcxDa/6UCglEPKBo9M2vCDXYJiJu0+mCuDZB5WVA1roROW7s5Hmrzgem0Y8Rw9yF+qPdgG4a6COhm9xsoxhvlKz5Qo57DnOOoyJ1vlosJMVLemi5d7LZDCO+QxgxFEmv/zkytEdbQIC3EaHgWE89cUY7LhEPNc8DeSumrFJwScEr+u41hifim+8+DMuOq9MocaIBpsOsyvE/A9Ld4OQnC0DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB6261.namprd11.prod.outlook.com (2603:10b6:8:a8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Tue, 4 Mar
 2025 14:07:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 14:07:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Thread-Topic: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Thread-Index: AQHbh7KQuXh93mOwdkOymrAx9GKN8rNbGi2AgAfyplA=
Date: Tue, 4 Mar 2025 14:07:04 +0000
Message-ID: <SJ1PR11MB6129F8F6D699FC2FA7BEF7ECB9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
 <87ldtr36io.fsf@intel.com>
In-Reply-To: <87ldtr36io.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB6261:EE_
x-ms-office365-filtering-correlation-id: 7931ede9-68ad-41ba-3c0c-08dd5b25d77e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?1meilx/NfBPH9EzJ3iWqUT3hysIbUaHWQ2Uk35a7j43pHZE5xxuo0QMbgl5/?=
 =?us-ascii?Q?XFcKHYSqMDvZvBXnYvpfK8YTeOyQUSlr4klsru3nO3b7VjZnqPx4WGtbrEXs?=
 =?us-ascii?Q?5+VWqGSRGb+ArDbP/b1a51OStRh4kgLjjbYrlFwaN3E5Kvh03UayLQ77dTDe?=
 =?us-ascii?Q?ABP4ItxZE0/KcFozeZMktKgW4R6lAtCeJM5Co5K9i0yY2YbZufU52IqnlhOx?=
 =?us-ascii?Q?tNWfhn1IP1CDXKFc6aw5WxbazUeYcl68C/d9Gbzowvl2LbAcABOk9LDNkQ8N?=
 =?us-ascii?Q?9VNFJjKcKxDZ+YsNa3wdvpyJs4/tSMIzsIL5QkeorXN8en1mpvidPcNX2+xo?=
 =?us-ascii?Q?3uI6blWs4Kmvc7BLeWPjG9OksuvMqBwTubR4ygq/E5QCt03MGp9iukdSL+2j?=
 =?us-ascii?Q?GPndDmZWlHCTQkHbLM3nVGpvPw8CDYT3pHlAk05DmaY+KtSmgq9DpjpOXZT8?=
 =?us-ascii?Q?LshGIlGc1tpushCQil53qosshsIlvN0XqWdpwav3xuzEJFRfeM7IDmmUFpzi?=
 =?us-ascii?Q?Sz7V6weNU8yzVm0MXYMJOHcgw+WMO0AWU80fuylotLgrElXH7Qi2KfzR+T9X?=
 =?us-ascii?Q?1tF+3OaH6PbEJCIe0NHNA/fmlj/VsWTGX5jdZLy2GemoWSsI42uRhR9857aq?=
 =?us-ascii?Q?BT3pshkWdz2CCegXpI0GHrPn3JFmkL8nK5rRCobe1dPi5yckDRqNsoRefvgq?=
 =?us-ascii?Q?RnhDBf5b3fr5PaqF1FRe/Rbmw2X0RV0grRMeaeZQKWKEdi3QNyNaYVk50OwK?=
 =?us-ascii?Q?cxlQlfAxIdiytYZQRWVkydmgdoVNZnx2T9YriSBuLj32Huh09gEBnvcnVL4l?=
 =?us-ascii?Q?CEmZ83wSraUEMS9Gn63q+q2NelT+2lk3eAVSlbNxyOR/cs+OArV4oRxGlOWS?=
 =?us-ascii?Q?buAvsQRtCXVuoVKR1WHIKgCEPCtZOBN1fi8zrYGCFnW691R9+0epcqbpXRCV?=
 =?us-ascii?Q?oQ63UdwCdWZ6JuVNJ3ZmssbF4bA8VnMooI++n2pBvIkHEdwxjOSsknOlyc4n?=
 =?us-ascii?Q?wS+GcJdt5Y3VCKmJtVQbBuvX/pfMAb4ev3iMhp9O9hlt7lBV4MEwL7Sz7SEm?=
 =?us-ascii?Q?kKU6t2uqi7XXpLP4mwTDN+wmOunxC/45p6KAQ8JBeF/vUeZhWtRLF1/BY5k+?=
 =?us-ascii?Q?flmAa5NkBgXWT4Ua5ZBtNdzWqsYILiLuUuJAvZWqY9ornyjK6GC1vEdNZwBF?=
 =?us-ascii?Q?xRzCe3LF17/YdlflP4to930xA1rH6QU2+AMvmLFFh+UhXhQVqqZ2zdPWbhR/?=
 =?us-ascii?Q?pGrjeuAR7pMulzcEnFiQ6xWzHMN+DXHO9U6E6qXMDd+FhA3jFP3LyohZBW3x?=
 =?us-ascii?Q?o3zWircqah9r6MUhxGfRGfFK+lBm3EPCb1exbihCPsv3AxPrIp7S3lkETpEM?=
 =?us-ascii?Q?uvn9dUvuqfYbZSVK/+SM0recbTxi8NGEyCAOB9k/b14323tsWmwfocAds/e1?=
 =?us-ascii?Q?JDyArHrBEhdsBMI9ADj6p2H+PiC0tK2t?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kfSI7wf9gKmeDkWIpVN2BqbwuRyTm86kaMrqCJbelasVWU+P/pnwcpVBwjuR?=
 =?us-ascii?Q?3K0nWlcv5XnbfJmYpSF/sXNlhQVJZDy8NVIBARb6T7t+Ja8ssJTIhdR5cLRl?=
 =?us-ascii?Q?QAws4F60XQVnQbrkP2xBMUfOQkEPnVZgYIWLL5sI1fFpRD9olHHDyjaR34NP?=
 =?us-ascii?Q?JAR+jBdrLt94HbU0LHbgTge21GtCjruN6HoAACX070yRW3n4okzJhF0uTJT4?=
 =?us-ascii?Q?dujx7ug82Rk41ax7beIhOMsTI8EArUrfMCA0BU3sGbt1AzoPiZgsfoEpN8G/?=
 =?us-ascii?Q?+pJ0alwhZWjrJ9XdScy/cw5JwNqb0Pllpl891u8KWpzGs8QEg0VS/azVZOKa?=
 =?us-ascii?Q?UBI9C2wxJR4fsomTTB1FfcGReWosBnn0VOxoLKUtuih4nbnnSZPJ7+7kY/Fq?=
 =?us-ascii?Q?26ir56InwEL2Mlg6IURQR1kEi5QHuLINvdQH7aliCOawAst8QY9PZ61qLctI?=
 =?us-ascii?Q?syEVNLSSxMLzKE+JYTmV7Mgb6fDM7x6pAIC73i9wpPbNG3bbluPauKt9qamZ?=
 =?us-ascii?Q?2Qinx8oXO1DM0DgSrvib1yr1xXZ+YYDKhAYjqnnQRs+bpunbDwFwQzYrBjNA?=
 =?us-ascii?Q?RtzVVkLcZizQBJyJE9xxjW8jpcJYDcEW5t2odZpYeEQtfBl9IstQmhhUMdjl?=
 =?us-ascii?Q?Xw9x2w3Z1lHmWv9ZZ66shMhzEthPXkBeS7R2sp6U6CqbP4rEfxZq5x4GW1x6?=
 =?us-ascii?Q?FEO44XX3uK6AHWCWj+TdZkSs0/D7CBywl8vuD9s195ycbxMDdxyH9Ek1Xx3J?=
 =?us-ascii?Q?dwH8GAO6qcbeiLKH/LTIGRTxJZPNNn68/TX/bbpBOveAHDene5oz2gj4gnb7?=
 =?us-ascii?Q?r6VT6QwTyfTppxB5M6EoZy4V0UkeAjGdBawcBlwdRPvRr3oj9ojHXa43PARD?=
 =?us-ascii?Q?jl/SCi9YFfa5ZH7VSBWo8jgSIDyEsYEevDZHIMySJPGxnCEptfvnMTvMLfqt?=
 =?us-ascii?Q?dYUGXTmg0L+rSAq4BGaA5eKy0QE+pdOJ6c4jam7exOUPmGdjsYhA9MCeF90c?=
 =?us-ascii?Q?g/dZdLraoeR/H5wOEs6B1ht2H2ycQoSbZ1Xb78uaorDAlA+p66FRXe82xIIH?=
 =?us-ascii?Q?2+MC6sntpWcTf49fjnrtXuEd3aK75x+vgEEn+Fi0iKHLAUtjMyB/pRss+gTG?=
 =?us-ascii?Q?RN2jK+zfQoqi8L6L35ZmagoNXkbQ6u5Yc5LlgIZ4Vltr/YjOsp5ECZM6J9CV?=
 =?us-ascii?Q?TQZc5NLaGNm00sA6/zasSw6kxMOKPwa6W2IEVevMc3ugd06AqzpOy32selL4?=
 =?us-ascii?Q?NsQdHjgXsNlWAnFVIh+7vgYwpmqFrKYKpl86SkNLn6jw9EalmnsPc5rTNa1t?=
 =?us-ascii?Q?h58bLjDBgmqO3Q2pDhrGbTHvx6HxWO6vtGF/MVOUikUi7hN1bX3+qFPQxPy0?=
 =?us-ascii?Q?G+sf37D6/oGDQQWu9T12j/QE87IiTBshYI5ZpBrqd0f3+uQ9xX9HPpMu6ZvI?=
 =?us-ascii?Q?ez/3aXiUivMIcDi4P7Yy1JXI8YDQopvUgffnUakN5dBPVxTCUUqrQDXmPpFw?=
 =?us-ascii?Q?hB949u+/gU0IqW8e7NIUtRkd2j9aaLG11WFEAtzpnzQWttTmp+Bq7yzSwAkr?=
 =?us-ascii?Q?B/jkxPWlMaMe1Uqp3HZ6+2+mGKCiZx716z+6Og8FnmFoHxnW7deQdS7BjjS8?=
 =?us-ascii?Q?pA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7931ede9-68ad-41ba-3c0c-08dd5b25d77e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:07:04.3307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JvD1FZRl7Dr69WMojubwz8PO+2xdPlGottH8NYwLg/+vA+aX8nTif6zp4cBhPHmTOib7bb7yOouMSAmAEjF/8hwaPqePArX5+4fUV9jgdwE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6261
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

Thank you, Jani, for the review.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, February 27, 2025 6:11 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT =
DSB
> programming
>=20
> On Tue, 25 Feb 2025, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > From PTL, LUT registers are made double buffered. With this change, we
> > don't need to wait for vblank to program them. Start DSB1 for
> > programming them without waiting for vblank.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 919e236a9650..9c3fdfcd6759 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7352,6 +7352,7 @@ static void intel_atomic_dsb_finish(struct
> > intel_atomic_state *state,  {
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_display *display =3D to_intel_display(state);
>=20
> Please always put display local variable first.
>=20

Ack.
What about the cases it is dependent on other local variables. Should we pu=
t it immediately after them?

> >
> >  	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
> >  		return;
> > @@ -7408,7 +7409,8 @@ static void intel_atomic_dsb_finish(struct
> > intel_atomic_state *state,
> >
> >  	if (new_crtc_state->dsb_color_vblank)
> >  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> > -				new_crtc_state->dsb_color_vblank, true);
> > +				new_crtc_state->dsb_color_vblank,
> > +				HAS_DOUBLE_BUFFERED_LUT(display) ? false
> : true);
>=20
> HAS_DOUBLE_BUFFERED_LUT(display) ? false : true
>=20
> =3D>
>=20
> !HAS_DOUBLE_BUFFERED_LUT(display)
>=20

Ack.

Regards

Chaitanya

>=20
> >
> >  	intel_dsb_finish(new_crtc_state->dsb_commit);
> >  }
>=20
> --
> Jani Nikula, Intel
