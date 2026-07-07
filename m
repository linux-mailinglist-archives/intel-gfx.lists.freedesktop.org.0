Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V0pCNbZ8TGrOlAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 06:12:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B6C7172F3
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 06:12:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iKuCQPFM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A586E10EB53;
	Tue,  7 Jul 2026 04:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2B610EB53;
 Tue,  7 Jul 2026 04:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783397557; x=1814933557;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QgZh9pv11jeBwm/iVYFmocGO9DwOm+ZzwTh+XMBogq0=;
 b=iKuCQPFMSZsrL+4rxXSOZ6mj0JO/WAhKs63aIf4OcdniSIqm5P/MMdIc
 ZDyyKWxwQ1SbFAqaCHMfSISLJNfN0cv0HH7NX5NUx4A9NuAoYFkHlWi8t
 2zIsn6fsSTJAEFn9jCalR9psPkrEAaMGg2fdlFpYr61UWqjRog3LIj61s
 d0e0C3YSjoO+vhc06mVPFmKBIBfaaII+hq84izdEnhWntpP1GFIcCsyhW
 ZzVmw9mxcQzv44xVrWnNRWX3W+Cq24WHsUHWhvsON9OWa4uWOXiFQ1sd2
 8AqEKmnKmR70R606smGLdozFIv3CWSWYLGVdWWoD/PDAEqY/coPopumzB Q==;
X-CSE-ConnectionGUID: jWI3sZv4R5u3iYfpDLhfQA==
X-CSE-MsgGUID: tsz+clNbSFGswEc/ZGekWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="101460996"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="101460996"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP; 06 Jul 2026 21:06:53 -0700
X-CSE-ConnectionGUID: ljnA53mcTaWiS2Ml82kOgQ==
X-CSE-MsgGUID: yUQ/ECUTTuGDk5hUhoX24A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="283987986"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 21:06:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 21:06:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 21:06:50 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 21:06:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=APO+/ILwfBEkwBkyfWnaObALiXX/4YVv7amJqmVRJTCVAsuwIb2BGVIH3Krh9fSEu1ChajV+ipOrdvu25f1xkO4SYuOrgpV2BEqBzYowMXqPZ36de7ByOntSRo7fIaGLYSIJhL8uCAvd80eZP9194UvTnpzFAJC+M2tyxczChEd8bOaCYTBZeZHaaImbNZaEARuMJ2iCz0NOLnqb62z17y/+5FSL6wWdDfxR9nXOonKqygTopIvyP7opuB6GtMDF7taQkPKr0mwH7FW0lMrzgwkrVtz7ZraNxgJLGf0dkAV+XQGFhJxWQkvPHZTlmL1nSpWGgagHz1dgrPKWZkQzdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3/6XauRqW6Otn5dhdlKr4JMYi3WvLgL3qsQ2kYl8DTU=;
 b=UYFPuPNUlsl0vAKIPQgbOds02EMt8MPT4tqDeQJt3TL/C7g+XlPI3/M0XCKt0gM/PSSaBiu9t9/hNmpBEUrECAcBqYgc/YgSouzLTHX4P/DLXEcueKQkM1PR3jHGN3NEasYaDCoGQNdKvMuWiyTDxDiwn79XSEFPz7GDas3G7mC4q18gbihtfLBXy1D1smFg+x+EiN6DWdjxagBMDGM0s6dSPti7l3pa4OpO7PRbA9x3vPxATp6+S4vkN81YnLYTy2eEmPY5MsNJpD0rTvVG6urw8JWWZpCsXX1mWrTE9jNDObsmgeD1LhvnJYCTYciIfn/9Q/eB80ofEA3aLK/d3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DM6PR11MB4628.namprd11.prod.outlook.com
 (2603:10b6:5:28f::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 04:06:48 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Tue, 7 Jul 2026
 04:06:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 03/34] drm/i915/dp_link_caps: Add support for link
 rate, lane count iteration orders
Thread-Topic: [PATCH v2 03/34] drm/i915/dp_link_caps: Add support for link
 rate, lane count iteration orders
Thread-Index: AQHdCW72MGGvZsvsgkG3ea3/SRz45rZheJQg
Date: Tue, 7 Jul 2026 04:06:48 +0000
Message-ID: <DS4PPFE901A304FF9D17868D993859317A2E3F02@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-4-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DM6PR11MB4628:EE_
x-ms-office365-filtering-correlation-id: 6032223e-792b-4023-24a8-08dedbdd2a84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|38070700021|22082099003|18002099003|4143699003|11063799006|56012099006|6133799003|3023799007;
x-microsoft-antispam-message-info: A//DewMlD8UIGX5osJgv3sgx2KBIgarS5c4SZmXifa51+3l7hwj5ud56lq69tjg69oQC942s+VqPpExDT+E77bmscPX7/+R74vCBZ7VjvMjBwCti6NuAMoSCi1iSKhvsuI3QDw2H2vMaBF8ise5H2rRs7wsQLWo4LgRlY4JTnTxYhgN4/iKnZfSqInBazn3MLUSsaNwg1Q7UALn9ypc5g6hmNrihNytQfdeVid0iIzevpyU/HQ/0IDJHmdmmK5ePJgzs3HN8UEzPO3683umCRNPQQxm1GYh2cPp3JBKItkQBeAhYxhQohRq1vkPtbEKVtqgu2uRPZTor7dAOORuz1aybbpo89pWqw7UPxqSDlq6Ej1F/sNlkSn1VxlBWdJnbDMSU9ZaAe/c1r8fvdIm64F00jZzB3VakaOLTGA4I0xsUy/4c9ntlnJVp9Af2mJCnAL5jB5uuBvgQDVPZPKy/LbL4r6mxSE3KhNHCNdHYzxPca3wBajmExbWGokwOhvLBWf1ELsVTOdABzM8mrOC2lmS+GPJLHnG2perghPfoiIS5ewjtQSlQwa1xUw0r7x52TgzFfztkj/RaqII5+fnqviG9+wf5EklcGwVEPA+Hzouqw1wO6DRswCglyTnOUnen9v5bb9q9KocHIG3lQ9NWvhSXFn/kt7cmHXZrE5wVzbO2aP/D/PN/vxXOyjl84Kz/xGt4LFLbBk7tCLYIZzZkgtnviovyTHW4ksdGGUNGdnU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006)(6133799003)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MIkd4eh5sXQTwsSlLJQI4rUqciivsjBZowX6A9Q1OR680v3D79UWm7xAJVgn?=
 =?us-ascii?Q?qkhk+MGli7h5Txv6gQr9wLKWyMeoNeputd+9scDfs5+J13G12puRC8uyXqNt?=
 =?us-ascii?Q?P0RwEoLuTquh7RIMGKqV3BPxBV68jNRsZPPe88RAa6JzAueb0wT9VXlEzE+f?=
 =?us-ascii?Q?DWF8lMQyuNAdNE7TJRgbIxbVAvTEacSH3C79Lh4POXStBw/c2Cel+Ycw43Yx?=
 =?us-ascii?Q?5sLXEJgrRZqwR++ufScXtdp5k90tESTkYEOzjtYeDJf6j+KYMJNOjQUCEIpy?=
 =?us-ascii?Q?vnoOXFnz2ILW5t3siqZT3wMJF8GODnArYAbISw6TDDWMvp/Fy3UyMKO8Cj/w?=
 =?us-ascii?Q?Zt8i1uKXDDM+mRUXLkwf6peu4VC2WkqUw4tvqgVhX0PlVIDi1uRCaiQgKewO?=
 =?us-ascii?Q?UzNMwyd9PSHHnnDTv1qWvveeDRiOPFx3P53HveTPoPTDkTngGvYP1FsNGETe?=
 =?us-ascii?Q?XEY0uLjWuvhMcCn7WXTktVYChLNI0i7n3HZxLogjHK2k89pRC6SkRZMAoOXv?=
 =?us-ascii?Q?WRDTdNJ4yBQbZsaNPa8+TLeOBKei1Z4ldFakgIIMYZ/odpcFKR2v3haF30HS?=
 =?us-ascii?Q?XzOxdfA/GmBuOi7eo9bXhHssNlAo20nYUTM8qnkP93HHfck5aLX1XGnJswHA?=
 =?us-ascii?Q?N6WM0j8GDyV4/YsR/xNy7gnBthB4/0LcOctPSBAWWd+XzWDxZjvkPkudXcMw?=
 =?us-ascii?Q?FcLYkm3OZ5YWadHZMf+/nkUWBsUXuIQtvsW9tvbUpPlHr0yv20pVLSRf1Z7q?=
 =?us-ascii?Q?UxiqDcmq4bQWYdrJ/7lD7BKrqRIDZjDOGQ7OqffS3p1Kt+q0Y4dQsND1d4VD?=
 =?us-ascii?Q?GMGDk3NuwN1Rw8ng6NCZPbPIbAx/vT7dQEeke+HsCSvFEQXF7IF+FO6gMo6Y?=
 =?us-ascii?Q?h/R6LDizPcR9oMi1nqO8GP5w8gshjkZJUq0rKdexK79+w8qCnWDApxigcxqF?=
 =?us-ascii?Q?hlNpLAnPbF6OSKMNqWtBxEr9ETr7Kak0xIpU83W7J3hVdTPB5nPq1EUzDHjg?=
 =?us-ascii?Q?676AjgEGQdPIQZLmHb95CXe3Eju8wK72tL7WjI5COzlyr2l3Ximvr1U4h4MC?=
 =?us-ascii?Q?AkpZV+DFTAzhuceE0HclHd/QwXRV7wfO09TNV3TTFbr8U/DsVnZFgGVQudix?=
 =?us-ascii?Q?E6mdxdJ+yof7Pf0AkCguxwQHCnEpaUTvI1D0CQujOoBD+A5MocYkcbKN2jGl?=
 =?us-ascii?Q?Smqo2G358d6yJ26gJPh/qSo/jcquqt09ZQL7/WgIignqqzeVPsS4eC37gygn?=
 =?us-ascii?Q?jMIqi24RkJVG3e7uZBI0/8YnTvl+IynBkWzHVAUzyBWpiG/i1zghPnFuifBI?=
 =?us-ascii?Q?FWkxIuQ5nK/8kngGpELJmsy+kfeg9y7YCTbIpa+FmmdptQDVxkCnjTUp3FC5?=
 =?us-ascii?Q?xQK1x0N1JZLO3swWLQMOCcgZFWtLpOyExY7DHXyC8PpDOY7p72F2EZCENYx7?=
 =?us-ascii?Q?oqbwVyGAwHH/Vnck2PQEPhQQzlETnGTFZ5m5qm1inOHZlm75yC+idgYixyOK?=
 =?us-ascii?Q?GKnOEwMyqN5Eu6AW6q+oNo0UM/dXADd+4ENT4242Cv38jYHj+KsfC762+sUP?=
 =?us-ascii?Q?PE5SeYzDY4ORtUDc4s+fLRG1tA3K7N3c+EPz9t+dy4sD5LSMRy5GPZYBV5z8?=
 =?us-ascii?Q?AJNE1Rs3GlFnouCWftFOYWpuialDaIcO6ZFce8T8+zutbQhgDfdhOOFtAATF?=
 =?us-ascii?Q?rjytS/Fb9GgJElBbcZAt/OFpF9wDzDtx+3meCjv4Z988FxfFP6s2+GKJptup?=
 =?us-ascii?Q?SeqhHlpSsg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KIJ1i3kZsFFOeaGDmsDx2AhNd7CRNjFXF8VxRUkjAR6XBOHKx1Y7+ikUlU778CRJikkW/MqHNu23CRsz1+bub8dI5lKLdkklWSBBIMCtwu8KVd9d+Zco9ynKvSkqLi66x2BG+FmzZzBR6X23bsRKcZLnbNpmaJFxJGptwV94zgCl6RFcNBmAtBW8WBE9IcEL68ASZ6Ave3dkprVR1tTro3W3gdMCSqL5mqT+Qd1rswNlN4Msbqu+AXWBfbIEVe5Hs0+MdA0mOn4Jl2cNppbD59pE5tRncSpz11j4mLsfVKcEAEE5U4yor28CLsVF03SXWevrXY8UHu5G0eiRjOdqJQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6032223e-792b-4023-24a8-08dedbdd2a84
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 04:06:48.0651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wrFXTWKsl7hZGX9pKYkJecHeHaU5aKZb5M9qYqmgjyEH8BnRfiZbsBavQJqO1WJRBay/CxAN2POWBAwkqiu1yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13B6C7172F3

> Subject: [PATCH v2 03/34] drm/i915/dp_link_caps: Add support for link rat=
e,
> lane count iteration orders
>=20
> Add support for iterating configurations in either link rate/lane count o=
r lane
> count/link rate order. Both orders are required for DP SST connector type=
s: the
> former for computing the connector state during a modeset, and the latter=
 for
> selecting a fallback configuration after a link training failure.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index d0a863b00b458..fe5a11efbe67b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -122,6 +122,13 @@ struct intel_dp_link_caps {
>  		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
>  	} configs[INTEL_DP_MAX_LINK_CONFIGS];
>=20
> +	/*
> +	 * Indices to intel_dp_link_caps::configs[] in rate/lane count,
> +	 * lane_count/rate order.
> +	 */
> +	u8 rate_lane_map[INTEL_DP_MAX_LINK_CONFIGS];
> +	u8 lane_rate_map[INTEL_DP_MAX_LINK_CONFIGS];
> +
>  	/*
>  	 * Forced parameters requested via debugfs. Remains set across sink
>  	 * disconnects.
> @@ -350,6 +357,34 @@ static int link_config_cmp_by_bw(const void *a, cons=
t
> void *b, const void *p)
>  	       intel_dp_link_config_rate(link_caps, lce_b);  }
>=20
> +static int link_config_cmp_by_rate_lane(const void *a, const void *b,
> +const void *p) {
> +	const struct intel_dp_link_caps *link_caps =3D p;
> +	u8 *lce_a_idx =3D (u8 *)a;
> +	u8 *lce_b_idx =3D (u8 *)b;
> +	const struct intel_dp_link_config_entry *lce_a =3D &link_caps-
> >configs[*lce_a_idx];
> +	const struct intel_dp_link_config_entry *lce_b =3D
> +&link_caps->configs[*lce_b_idx];
> +
> +	if (lce_a->link_rate_idx !=3D lce_b->link_rate_idx)
> +		return lce_a->link_rate_idx - lce_b->link_rate_idx;
> +
> +	return lce_a->lane_count_exp - lce_b->lane_count_exp; }
> +
> +static int link_config_cmp_by_lane_rate(const void *a, const void *b,
> +const void *p) {
> +	const struct intel_dp_link_caps *link_caps =3D p;
> +	u8 *lce_a_idx =3D (u8 *)a;
> +	u8 *lce_b_idx =3D (u8 *)b;
> +	const struct intel_dp_link_config_entry *lce_a =3D &link_caps-
> >configs[*lce_a_idx];
> +	const struct intel_dp_link_config_entry *lce_b =3D
> +&link_caps->configs[*lce_b_idx];
> +
> +	if (lce_a->lane_count_exp !=3D lce_b->lane_count_exp)
> +		return lce_a->lane_count_exp - lce_b->lane_count_exp;
> +
> +	return lce_a->link_rate_idx - lce_b->link_rate_idx; }
> +
>  /* Return %true if the supported link parameters have changed. */  bool
> intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
>  			       const int *rates, int num_rates, int
> max_lane_count) @@ -404,6 +439,21 @@ bool
> intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
>  	       link_config_cmp_by_bw, NULL,
>  	       intel_dp);
>=20
> +	for (i =3D 0; i < link_caps->num_configs; i++) {
> +		link_caps->rate_lane_map[i] =3D i;
> +		link_caps->lane_rate_map[i] =3D i;
> +	}
> +
> +	sort_r(link_caps->rate_lane_map, link_caps->num_configs,
> +	       sizeof(link_caps->rate_lane_map[0]),
> +	       link_config_cmp_by_rate_lane, NULL,
> +	       link_caps);
> +
> +	sort_r(link_caps->lane_rate_map, link_caps->num_configs,
> +	       sizeof(link_caps->lane_rate_map[0]),
> +	       link_config_cmp_by_lane_rate, NULL,
> +	       link_caps);
> +
>  	return link_params_changed;
>  }
>=20
> --
> 2.49.1

