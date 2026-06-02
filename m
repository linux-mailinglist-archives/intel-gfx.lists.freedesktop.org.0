Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LXKL/tQHmpYigkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 05:41:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C94627DB2
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 05:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BDA10E5A8;
	Tue,  2 Jun 2026 03:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDjJOnJm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B6210E5A8;
 Tue,  2 Jun 2026 03:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780371704; x=1811907704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3/wrx4POt+KjVp40wwViOCv5lifPsPliE4d48A374OQ=;
 b=dDjJOnJmoafwHyHjBonb014Mw7Fqoj/dmeMKQyIMq8im5BsaOl95jskj
 OjAkDFqA8OayZQpyBpH7lLVVAfN6MRaira98j74Ycj12rYT5068GF5LrF
 1Jt3VugRAbDQtrLU7HJLoC3rO/wW+aG9t1owKe0jDP51kWpg7oLSqNaec
 UKYImM2pmeyRiGNuxGCcVV5iQZqwSeMruH+/ivnGKm8x+vcIoR5gkCSX2
 TTuXZWqsM3RMi3Bw9xnqWKq/jfRrC65AAjAh+q9oqf+ll+t7u0TU+eg7O
 e7G05BcYRDshRpZzFIxJbciD/Csl7nVLdORaymNloRrFxFwFtxqbrm6gH w==;
X-CSE-ConnectionGUID: j1mi5pFNTNGNK5w6K2MMdA==
X-CSE-MsgGUID: ZWqImbNeRoi3MZYc38ZXQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91835066"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="91835066"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 20:41:44 -0700
X-CSE-ConnectionGUID: Aqv4GAJORSCQ/eqoBrrQ0g==
X-CSE-MsgGUID: rbYVzxZFSDKg8MbtfHU66w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="239346346"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 20:41:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 20:41:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 20:41:42 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 20:41:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TYoqg02lAYx6vSOUK/Wgfq38HXi8NLIp5LN1FqbR8lOHmmDCWJ5/g5Ivxp0/a4t3VouHbpdVlPA0mC0huCjMzV9+UQFsfDU4i/s7ZBaaRZ7mXzEEDJAkZ6Ijn/oFKty2gaOTMbWyScWPu/D6XW+xRwIEaoIbE7Wi0GNZWglMiSD0iCjGD49DmM2uijjWDjam0AE5+dMomCU2P04zIMyOz2IhYZg55Px0vFCpyw2cF3jPpfbtwScZrcmQQSbTrF7iYMqmhwLuD8zlQjuLvwJK7JFbfGuSSQ1lEfS26z5l21chqAoLGD7nD6FDqjyskddQ0YgW/RekME2VCbI38Eg0fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=br1kQ59Pr+5wmaY15DlV6plnTSbs8rEXZy7kbSMeWeY=;
 b=Cuf0krZpT5fDATIJIFjBCpZoEoQknGDq8c6I253cS0MUbuj5rHiBAltdI0aj9sxR0zRJHGWsvKqlkakycn0BVIRvteLkKpn5T1G+WTJKKaMtdw4UXTfaM2IudbksxNfWbMWNWTIugGj1yE5U6l0NZgy2Y8cm7oivZTsih3oBtWxIXAFVkGpN8lTWMzWOk512iQlZdclrnvvOoc3N2Bg9WKXBPghdKK1QH7xjjTL+kvent39/hb1rBVwlSrbrYi69c77KjUHf2T8mEiZ1JDmxuX7Eh2CyvOOJMtfZyicDLVvpjylFYytw6ZD8yJNpqz439mUsfsjFXnD1KvS66p/fZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by BY1PR11MB8080.namprd11.prod.outlook.com (2603:10b6:a03:528::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 03:41:34 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%3]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 03:41:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access and
 index computation
Thread-Topic: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access and
 index computation
Thread-Index: AQHc76F6Rf6mgfL5LUKdjWjL+yfLeLYpCMmQgAE3AYCAAGIgcA==
Date: Tue, 2 Jun 2026 03:41:34 +0000
Message-ID: <IA3PR11MB8937709AB020B57BDCB928FBE3122@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-7-michal.grzelak@intel.com>
 <DM3PPF208195D8D087EB21BFEED67636E7FE3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <b8c17f36-9bcb-e634-2386-491a4d08efab@intel.com>
In-Reply-To: <b8c17f36-9bcb-e634-2386-491a4d08efab@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|BY1PR11MB8080:EE_
x-ms-office365-filtering-correlation-id: fc5c8cfb-db46-463b-b363-08dec058d7ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|4143699003|3023799007|11063799006|56012099006;
x-microsoft-antispam-message-info: ZgYFNkxEbo8OwA40I6akAVsmLXGc3do7W+O8f6GkUrgMBOGqCcdsoub4qW/IzyW3YmXIXxMPgLURtfJqVDQYKCmO1hXaIYOEkFfl+sznstXbZ11CtcRQjKgBpRCF+3OweI5Ve/NM3LTb2y9yIF2t65oRKVezcBEEpIW/GDU+aVZghm6Py9JR4o4oVj2R5BgzuNIetS1w7q9N9xApZW0xSYX+S8qnjeBN2vbxH9u+AFJmeS0Vbv/Fo2xYLhQweiqv3Fl0G8Gm/stTQ0Xo/2PRl6CpvbfRtnqKWnDVUAY51qwh9wHHbLYAd++ou91i6RuPEPeA+dEk1jwqLYfUG0bINU8nu5GImiAqBCRYZWFE8fA8OhYpEkeQPQeS/d/OE6xXJbxrBcF5ldJz/19WVuh4IGePSBbrL6P477QeWKxFfyaj2nkrTsREzh7bY24KPAPwMp4uazXryHxeS8caFfHNfDeFBi3Magvzf1r3WTebTvTl38iAtI7nXt1CRZi68RyqRnw9w1uA9mICqRUVUlqUAGb4hfsn86tFet6yI0Z30AyXDTMAKHDZbM4WY7dbEwZ83aRgqvW3ZUaRcyUIfdPd2PWyzYMoom7M3RuyODvWVo8/RK6cKT+tHY/GbuFbOnO/riJO72pj6jt8YLhL6IXNrHs+2P8G5sFGhSoHbZbD+sNkja5bEtLsDozN6eVyhKXO9EVa4FcRPOz4htgGhPHtQm4lcDvIwXmk0IMBvpuoCyv8QSP0stE0h6a81CdcKckB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(4143699003)(3023799007)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?AYIdQPD4sghxH9vS01PNTJzkbeeltrK5InVFAfAMyNty0ja7/qfo41oRKF?=
 =?iso-8859-2?Q?R8V6zH8qJtvIPQf3L+X0LaRVcci3KPl+uuIH8xGEDAVQym16cXjP1o8+HO?=
 =?iso-8859-2?Q?m4KtFWrmnIcpvXotIoOxPnmHqJj1/y0HhCOIX/SSL31GRp0OQRmdeUDBzo?=
 =?iso-8859-2?Q?ZI+Nls4RDi/FCuv7ZyryACCygYEvtpjNUgi5F/4w7/1JWhr/BVCwYEJTH8?=
 =?iso-8859-2?Q?OcAHawHZMGmCqz9fIk37o9tbtFJOwY5xJE7Hg8BGEOBF61NiORw4ELESK3?=
 =?iso-8859-2?Q?v5LLdbEDOgT+HjH5VmvQyDeXlbfSGHion4MQg+D8gTnTaWaY/ixL0O9wFP?=
 =?iso-8859-2?Q?4XB2qj6acnKuTqpE4Jqs6IgCBGbA5FxtZN40t0Ya6yPGqlnqGLXHw5o97n?=
 =?iso-8859-2?Q?BuelnWT0KtL1CkWdvmNLXKrOtTKwMcWwRh8Lu6TZ7hGLvqRs7FEv3VHIQJ?=
 =?iso-8859-2?Q?zuGjFPWgCRY/rjVsd+QHDdV2iMl1BCcBbKCStkgYgf4lS+uq13UR/wczYj?=
 =?iso-8859-2?Q?hNaDjckqwdKpeprxzKWO41NwBCIjWAor0Ue48OJwe6zYTU9H/PWUXpcTQo?=
 =?iso-8859-2?Q?w/4KQEuc+ivTwdny9Z6R1W7TC3Ik/W4rgyFNKhHiWD3qnIm/X1T35FfdOL?=
 =?iso-8859-2?Q?QojouE2syA4lab9GNpsxVqhcX8u5ntbvSVUR5pckeQA5ccOkXkL1IFDz80?=
 =?iso-8859-2?Q?FMeV6QHPlCLd3vWBrZHDuLeaQ/WiA5u0GCHjohhAZbMarZwqf5p4Yqsfb4?=
 =?iso-8859-2?Q?+IbUfrY7Cj3a5J4Bn2bDbnaIponSDEfyzut7G0GuI7pBMetFOhtUFyMwCn?=
 =?iso-8859-2?Q?pF/l9bPQFOUuRLMDz084Ddj0nPcHLpceq83MsMbw0HDmCK/tFKlIZU/JLA?=
 =?iso-8859-2?Q?1aP4SjI1MZ5oRo9ue7LnUhkdUT5OdSzxi1Q/p0YE6TiXc5bna/hDuoDVRj?=
 =?iso-8859-2?Q?/FzPkz3VkAnqRjgIAezxZsooW75blUhUiE3Qv3hnbRQtajxF5nY8MS1oEN?=
 =?iso-8859-2?Q?XbUCdII0gU4X65GiiMpmDZfQeodZTIs00QwnHtWjR7eZ4r7ji6gJRksrQR?=
 =?iso-8859-2?Q?0ZycGrOqx6MjKA0a6x82FXdURrpyDlNYE69NRP48gEPNA8aocgDYFH+AvG?=
 =?iso-8859-2?Q?liQTM3k6SyWRD3BVeUXdj9DAN6dqWQcHZ9wziCfUb1m2hGnblhYGxAnl1h?=
 =?iso-8859-2?Q?PLfS6pQ/r4G5gTPMro+Iymq5bj9qhin68f5GTunImtfVFOoDezuT6DcnZw?=
 =?iso-8859-2?Q?FOF18vl0n+lBTWvqfvd7yfW2JWwQ/QAwwM0/SKw867V7Saxwmuqd35Mlcj?=
 =?iso-8859-2?Q?1xOdgakaX4fVJbEdLiY23P3nVDvjfi56Qjril3pGd0uC/7FH7ps5ZTO4qi?=
 =?iso-8859-2?Q?X+41DzkZgHQyz6ez9kDH8E3hFttQC4Q8qFXGIupONYlJPmYqABReJO7s9a?=
 =?iso-8859-2?Q?OCbCw0ihwZnRYT7vg7PGxc35yh4fffyCgi1w3Q2wX1juNV6v+c2jf20msP?=
 =?iso-8859-2?Q?uU2PpaQblWEgRWuQNAyaNMpRgkPKaJ6tNkBB3a3FR/V4I6g/WxoiMbbyny?=
 =?iso-8859-2?Q?R89hGb5ZsLjPObG6qgHA4wCe7HHZ5oz/0ZvPLjHprLjA+UVS+FBjZ1Ga3I?=
 =?iso-8859-2?Q?OuvAA7FcKy+2n4sdPLv81y9uy9G1S3Yr6W1VTu2r/MPMQ+LNWPTBQHjD3w?=
 =?iso-8859-2?Q?wCplXc+uoJuHdQhn+C1qPmvUw759xEijyos5Dwqpnwui9ORAc8aifCMMeh?=
 =?iso-8859-2?Q?Tvy01lCgs8sNGlc/TnGXJa9T/hnxzRIN4fX0Mg+X8X8RJbex38YmrcXPNd?=
 =?iso-8859-2?Q?lKHiMSIMOA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kXwR+3s5T+7FxFNwdrI/CaY2eVvqDm2svjblnXY0jSLuJG2bBM0Cv+4F5gJwjuQKoXiUs34Rvhtg72Z1Zi4ynN3NR3d7qzCqvxv9BGFrTG0+zYYgNMc4M8dLnKJT6pAU1IRD0wcrZtNoj4+4Z30APU9EqtLxEVjoLueE6dU72nesUtCpPplI1d8XY50/bOI9JKAnohgMGscBVz34KXOWMKNUyza4jzKC3Clp6/Swxmhv5/TYTwV9uuT5MFLSG+I/yA/1fSNXMr7InvbjCZmhFuvb8uuKCj+v3bWUXgzw14VREq6SJEi+sawf6KGu0heoQ0F+TKgtog4tMeMffHiaYw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5c8cfb-db46-463b-b363-08dec058d7ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 03:41:34.1929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5SqVAMyupRHhDruJZkWIgZ0Ve/4kc0mr6a+mmZlKlpxlszFuLYsXIoSjSFNOxNT5jg+nDLqwZE16N2ZNf4DLkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8080
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,outlook.com:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D5C94627DB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: RE: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access=
 and
> index computation
>=20
> On Mon, 1 Jun 2026, Kandpal, Suraj wrote:
> >> Subject: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access
> >> and index computation
> >>
> >> Lay into intel_ddi_buf_trans_get() infrastructure for VS/PE-O.
> >>
> >> Add (*get_phy_vspeo_index)() function hook into struct intel_encoder.
> >> This function pointer is responsible for computing index of requested
> >> table from VBT #57.
> >>
> >> Add also (*get_phy_vspeo)() function hook into struct intel_encoder.
> >> This function pointer will be the accessor which parses and sets
> >> port's buffer basing on VBT #57's data.
> >>
> >> Note that these two pointer need to be separate since they are taking
> >> place during two different abstraction layers:
> >> (*get_phy_vspeo_index()) operates on crtc_state, while (*get_phy_vspeo=
)()
> consumes devdata.
> >>
> >> Add generic function pointer indicating lack of VS/PE-O's support.
> >>
> >> Signed-off-by: Micha=B3 Grzelak <michal.grzelak@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_ddi_buf_trans.c    | 30 ++++++++++++++++++=
-
> >>  .../drm/i915/display/intel_display_types.h    |  5 ++++
> >>  2 files changed, 34 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> >> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> >> index 4cd1e4d76c7a..fbd5efc5ca6c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> >> @@ -1784,10 +1784,20 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder
> >> *encoder,
> >>  		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14,
> >> n_entries);  }
> >>
> >> +static int
> >> +_get_phy_vspeo_index(struct intel_encoder *encoder,
> >> +		     const struct intel_crtc_state *crtc_state) {
> >> +	return -EOPNOTSUPP;
> >> +}

This can be removed.

> >> +
> >>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)  {
> >>  	struct intel_display *display =3D to_intel_display(encoder);
> >>
> >> +	encoder->get_phy_vspeo_index =3D _get_phy_vspeo_index;
> >> +	encoder->get_phy_vspeo =3D NULL;
> >> +

Skip defining this for all platforms by default. Will help later.

> >>  	if (HAS_LT_PHY(display)) {
> >>  		encoder->get_buf_trans =3D xe3plpd_get_lt_buf_trans;
> >>  	} else if (DISPLAY_VER(display) >=3D 14) { @@ -1857,5 +1867,23 @@
> >> const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct
> >> intel_encoder *
> >>  							  const struct
> >> intel_crtc_state *crtc_state,
> >>  							  int *n_entries)
> >>  {
> >> -	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
> >> +	struct intel_display *display =3D to_intel_display(encoder);
> >> +	const struct intel_ddi_buf_trans *buf_trans;
> >> +	bool vspeo;
> >> +	int table;
> >> +
> >> +	vspeo =3D intel_bios_encoder_requests_vspeo(encoder->devdata);
> >> +	if (!vspeo)
> >> +		return encoder->get_buf_trans(encoder, crtc_state,
> >> n_entries);
> >> +
> >> +	table =3D encoder->get_phy_vspeo_index(encoder, crtc_state);
> >> +	if (table < 0) {
> >> +		drm_WARN_ONCE(display->drm, 1,
> >> +			      "platform does not support VS/PE-O, setting
> >> default\n");


Now with the above two comments implemented what you can do here is=20
vspeo =3D intel_bios_encoder_requests_vspeo(encoder->devdata);

if (!vspeo)
	goto out;

If (encoder->get_phy_vspeo_index) {
	table =3D encoder->get_phy_vspeo_index(encoder, crtc_state);
	buf_trans =3D encoder->get_phy_vspeo(encoder->devdata, table);
	return intel_get_buf_trans(buf_trans, n_entries);
}

Out :
	return encoder->get_buf_trans(encoder, crtc_state, n_entries);

Also after looking at the code this function is a get which I dont needs to=
 have in its job description what platform does/does not
Support VS/pe-o

Regards,
Suraj Kandpal

> >> +
> >
> > WARN does not belong here maybe a drm_dbg_kms() saying "VBT requests
> vspeo but does not provide index table"
> > The reason being panel vendors may have broken VBT requesting for VS/PE
> but not providing a table.
> > This will just cause Alarms to go off in CI, where you will be
> > debugging broken VBTs which wont be fixed specially for the older
> Generations.
>=20
> I agree that drm_dbg_kms() would suffice. I'm not sure on the phrasing
> though. Current patch series does not support DKL nor MG PHY, and this
> message was targeted to be shown when eg. TGL's DKL requests Override whe=
n
> there is no code to handle it.
>=20
> Now I think that probably it would be better to do what you have already =
said
> [1], that the debug message should be issued only when VS/PE-O would
> successfully take place, instead of spamming it all along the way.
>=20
> BR,
> Micha=B3
>=20
> [1] https://lore.kernel.org/intel-
> gfx/DM3PPF208195D8D13E4ABB86F46CCE9999BE3002@DM3PPF208195D8D.n
> amprd11.prod.outlook.com/
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >> +		return encoder->get_buf_trans(encoder, crtc_state,
> >> n_entries);
> >> +	}
> >> +
> >> +	buf_trans =3D encoder->get_phy_vspeo(encoder->devdata, table);
> >> +	return intel_get_buf_trans(buf_trans, n_entries);
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index c21e0c0ef0b1..829e17fbfb0a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -292,6 +292,11 @@ struct intel_encoder {
> >>  	void (*set_signal_levels)(struct intel_encoder *encoder,
> >>  				  const struct intel_crtc_state *crtc_state);
> >>
> >> +	int (*get_phy_vspeo_index)(struct intel_encoder *encoder,
> >> +				   const struct intel_crtc_state *crtc_state);
> >> +	const struct intel_ddi_buf_trans *(*get_phy_vspeo)(const struct
> >> intel_bios_encoder_data *devdata,
> >> +							   int idx);
> >> +
> >>  	enum hpd_pin hpd_pin;
> >>  	enum intel_display_power_domain power_domain;
> >>
> >> --
> >> 2.45.2
> >
> >
