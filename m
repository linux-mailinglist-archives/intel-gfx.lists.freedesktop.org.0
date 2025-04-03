Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBF6A7A601
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 17:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5189010EA1F;
	Thu,  3 Apr 2025 15:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMLetoJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D70910EA08;
 Thu,  3 Apr 2025 15:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743693077; x=1775229077;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CcWaLioXO/QBgj8StziNhQxz0YhTpU8XPnhaxq1HhJ8=;
 b=BMLetoJ6hjr4fVuhKxM9JMva9NE8qToUKmkL4H/074HZQL+BIKy9z05a
 wrYlXqSLIHt5ClriruaGC7iRk+NSKWgRygzW5Ig7S72lSTlmCRB6Ri36g
 WKQmwu7FhcZRRPGkvfmErabmdPwzEgv7aSfGewdVQ2Hn5VuId1UQJDlBJ
 GulauKi1EbibcuHpDi4siDzZj5ZstK62hjG/M2wK36JfZ7GkNEc1xElyV
 B21ipPTSPwEz3+QKPCVTnPc/wigaiElJfJGH9OI+GW3yONQlEZyJGB9/b
 uzDkCZKopVCLnnDfrQpX3PkGifF7pNqmz3b8Uf0GDiy5MAe51qUPuCbTE g==;
X-CSE-ConnectionGUID: 8QkdGiPQScmNsMNIFZChug==
X-CSE-MsgGUID: h4hlDUy4Sm+MXI3/SeojnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="55738610"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="55738610"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 08:11:17 -0700
X-CSE-ConnectionGUID: 5QzOdCPRSjK4ZvHb65lGoA==
X-CSE-MsgGUID: 4/IRUoaBTSOyBrxS90gqzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="131893792"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 08:11:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 3 Apr 2025 08:11:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 3 Apr 2025 08:11:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 08:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XihQLuNWG2KBRXxK0WzeeTPfSrBmAgW6BtaoI64+fXUZhcSkIMmF5uY8GZMmWw1AIEp+8tG+2zTW9MeMV+8rcDO3tJVyfOVz3rYSJP1OBgM8hgJAKfADsmhQbJT6tlXUaLrHEbdRgPHdtdo8TyYC/MNhzFwu/RxgEIiOiajQbGyDMfS8//bE4r0QNe4Lzj9GHeMd2cXlsatKUYmp6oym8CyTIGJ8FulFVWr8B6Yxe3PqBqGr4vSKFvasG6QKHtbDBMBWfiSX4wOTnxiOJK3JEcZ5obuCEz8OpMl3bfDww5IUTjh0YFSy1BV9RccL1FLPOIvkg/sEXtdpyqXW4BeAow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2eKzAfCgQUMsN6fQwz6L7smTzNznRQwBzPeq+j79cT4=;
 b=wY+Y5G8xQMP3vBTVwvvUh49/Tf6bP95Ldzb74P1fTYJe1eB+5eYF2asa+hB94XTh1JRz4clY+uL1pYdF9BEJQDJx2VO/7YiKfIH6hPGWNRC69hyusJiv/q6sq806Pc4NORSOYOc8iNLvNFsf9ofyyjraHHsRFZNE4qV+nbxbyQ/il7vY6ODB+O0GJvpL/dYx99kwXKK9LB4q/aaS4DZr711r8+X1GRCKDtjs5tsa/5XL3hVPHJysqVm783L9Lh18DAqQdG3GVqACGIgwZiLrXrZ+MjwvVvOgUPQejCulySRtnCw32aOLkAhrMsak0Hk/GxJvex/mQnhhVXAe+FINzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8383.namprd11.prod.outlook.com (2603:10b6:610:171::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Thu, 3 Apr
 2025 15:11:11 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8534.043; Thu, 3 Apr 2025
 15:11:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 03/16] drm/i915/dpll: Rename intel_shared_dpll_funcs
Thread-Topic: [PATCH 03/16] drm/i915/dpll: Rename intel_shared_dpll_funcs
Thread-Index: AQHbo6m624EbEXrNvkaNGXi9Qx7xObOSCo+AgAADKJA=
Date: Thu, 3 Apr 2025 15:11:11 +0000
Message-ID: <SN7PR11MB6750D87DA71F805C3F4C28B8E3AE2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
 <20250402083204.1523470-4-suraj.kandpal@intel.com> <87bjtd1ebq.fsf@intel.com>
In-Reply-To: <87bjtd1ebq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8383:EE_
x-ms-office365-filtering-correlation-id: 61120515-8f93-4a3c-522f-08dd72c1c50c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EGxEfLz58Q6sLkppIM+bxTnzm3TcxYpAMsaxXtcF1YOsnWTYzdgMN7XsadAx?=
 =?us-ascii?Q?DSlL7Y3eSYu/bZw3H6RWw7GpdZXBxAicjWUuCdnFG6O00rrI8M37s3SGgdkV?=
 =?us-ascii?Q?HHOmOEqC7fA4dAn3YlWOT3FWN/58Bbbhf91PPHmVx7tTmMSUYjGpnmz9G0mI?=
 =?us-ascii?Q?PqID9/fHOi+D92HT+/gWEeCW0peGWzpCtoGIyqNWASvuJZD0KZSuvltBE7SL?=
 =?us-ascii?Q?A59sJppxbX7bIFFdgiXT/U4M27PtGxUe1V4/s1HKj5QRMM2iYfshyovqJTGL?=
 =?us-ascii?Q?Nk/waIo334YXjIe84RLBJhOUkWkVosXC7kHwGsUCtU04Ao+gpd/q3bPDCapf?=
 =?us-ascii?Q?7/4KuF1UubaVtAdxCOxiwhSvGkHYwhkAOX0NlhA7vH1rWqBlT5saRNc6uIjQ?=
 =?us-ascii?Q?5SlcWMz8MT4hSIA1wWjnOcV+ccBxd8Xquuz+qtTz5CxAv59akDSZuNST8jG5?=
 =?us-ascii?Q?b6T6UZRFdq5lp3yAkOy88ZlvOFuNR3X/IoeiMaPdIsDbmjq4ctajihCuKGIq?=
 =?us-ascii?Q?oJFh37243Gha/HVEsZZQiukflRHRQT5SaNmS4DX1l66e5+BfyxenIEUoyUGG?=
 =?us-ascii?Q?uuRnyXqZTpHP5BtR2c13c7QcIvfSTZxoPVfLNVwZTR45MOi4QAkZ8KW6QKS+?=
 =?us-ascii?Q?OAsPaQKYzwvh6HLSERSqF4yegA2rJtiiQeb/Vp44NNr5BF8g5BZmS1nZfYqG?=
 =?us-ascii?Q?KgaZQm01SsXRNxSaP249QxLI6/1O5ZDHCe3wPURfp2fjLxHZ/3fHIQ+uGL9Y?=
 =?us-ascii?Q?O5FseG3OQkZkD/SO1+lpQ2CtJfU1dUOO4mH/oYmLgtZBzEzO5X2LT9wpMz0L?=
 =?us-ascii?Q?Uz+LoC+CV4hboSVeDoOmP2tP7CWr3k2oRjRfbEAQvmOkw04H1UZD+KURKzkB?=
 =?us-ascii?Q?JfmMyardsC1eNRqs7I4pyuGOIyNtF9TsdX6Z/BVf1UjlUlf/SXHCfVQOK6LE?=
 =?us-ascii?Q?fG0kE8GxhEDhEGYOl5ce64gJT5/85AH0izN5rexD5R7Z6e4UvLrWUkVFGfTy?=
 =?us-ascii?Q?z7gvGapG5IJ9aBIhCbaGGPt6BsEKpH+IJSXrpa/0zrwLtkdG4AXuElWbph2C?=
 =?us-ascii?Q?czRzme5aVqHNMyMxu/11aLezLQr80WuxdL9AWXTVSL3chiCFCHWMsPAyRE+X?=
 =?us-ascii?Q?Imv/nOb9a1FBkcbKoZ+f0sydySpd3hOwO9OosFxXYsmvE1eXvzOV9Hdasrkj?=
 =?us-ascii?Q?j/n3TX5DdtDtl3ny+i7Vtuk/IplQ2dqB2UPkRdwwG6wuBDNxyYBLtoifDTqU?=
 =?us-ascii?Q?6NETbKEBKBPupyTrIwDzDZ091v2KBK1PRb7Pikn5LJEaywP1vsNwx3qLmVZY?=
 =?us-ascii?Q?W4z8DJWa74W4YzXgehOcEndv6L1OgwsMMaK5Gc5rT5d2M1kkLkugOYRpU3/N?=
 =?us-ascii?Q?djBFjAI+0BallarDupN0o/Xdvn8ZN1qNnaE6IBqcrS50amMohPIb0sqP/8gJ?=
 =?us-ascii?Q?8cXqQsk+kzE7763hrJeyyZUQluX3RNZH8v66SJmk6PDrIR5VQwgdg9Jwp9QM?=
 =?us-ascii?Q?yfBjOAnkLtFFqJg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TUxpZbrGFsuEjmzQ+OJBL/LqFe6KWHK9LCud5KKvzWozvBf0s/i6H2vPW79U?=
 =?us-ascii?Q?E54w5INdG+arIBwCBe2denJxx9TIAILI5wICPe/rvZbNK4o/sLOaezdG5QCs?=
 =?us-ascii?Q?Ja4oKBuKrP2MaWlDbgE2r+66PcVfP+NJLAoG9FR8zSH9hEPfiXaviyitlQvx?=
 =?us-ascii?Q?QR/AhjUfZKRYFUWm/dh9hRoleuN3Q/dhYsehtlLr8nxooYsGB2hWR2W2bIa8?=
 =?us-ascii?Q?0yVjdK+uVM4B0Wd9C6BzsI0DPMxsk/oe4r5R6Q+nxRlrzRLgTmfAplJREKY6?=
 =?us-ascii?Q?h+mBRXNdglSV5gX2h4FGfLhmqmmetHBv1GoWVADsQMf1psUKwsZxCV6fhoHK?=
 =?us-ascii?Q?PBNPjn6HbRN8EjAZl8UFKB/qUXeuSMFOguRlsORJSPkAap7nzX4f7Efkx90P?=
 =?us-ascii?Q?jsQX7eDF8XxJaVbySWqKNILE4WURchcbX1mnPGT5//eykQtcteUNxDMian2U?=
 =?us-ascii?Q?jdqfeEgQbEJWjcwQeC04Qx8Hc7Ctu+WXbf7344d1R+902TuRSBHbGvYfMCTg?=
 =?us-ascii?Q?F2sVX+frgCJiT61XR+3tNMGKSjhpOrEtBV7dhxUzJ4lOtvCag4vMlirwKNjT?=
 =?us-ascii?Q?k3xECDaTbV4PuZEFVNQHdgAyD1Eqfc0X5TPV7Im+EI0tUvzNnVU1n0RZZt9F?=
 =?us-ascii?Q?GOBfH7dTi6y6/PXj7NnuWJwp8asxUIjHqPLtLSNF1MDHIAhIBaxKON5ytj8W?=
 =?us-ascii?Q?i+S0fusVi35NFPtRrbQtn3qIsvRkbGp8LBRXF0vPazmxZbvzTwe1LNDbRXtU?=
 =?us-ascii?Q?Kn4ZF6D1LRYGeEq8of73PEGWPUZcr9mi2ja+TRpdQNXjD68xmHXRPbsDyhMO?=
 =?us-ascii?Q?vbil+E6of/ZDk/C2s5Q7Q6TepPp2Vz7ujXCYMP/C6ROBbb4KS/+haXQndKPB?=
 =?us-ascii?Q?IiEQrerllx8tt2SRLQSLvZPmm9XvGuDAn/ob5P8a6KE3laAC2m27B4topAov?=
 =?us-ascii?Q?ZvGIeZ1DadmE3w9r1em5cF2xhTRFShIuOc2Cyv4AHFrPitoL9S0iq1234if1?=
 =?us-ascii?Q?40saj6tJFspKM8k1iEgnLdrGkxrt09XgHUQCZX4ZxHshsbEgt/NSBmDRGNIU?=
 =?us-ascii?Q?vDk/jzvkD+ZYJNOqwso5b+gXMK8jfwFjHDpkgiWwzN6ddAy86ehEWx8U3C0V?=
 =?us-ascii?Q?0jELIC8bD3YfhyjsQPTVN1kar80dyF448EAfOmgYJ1O9BjRoinSxls9WWfak?=
 =?us-ascii?Q?xjLsWWHMUuTz0z01gKoQd0J1cWhtFKIoooU+RLpIPdcwTEw0yQId9wY/f0Rz?=
 =?us-ascii?Q?bI5RBoIIzVuQRtMReoxxf3EnY8yi15A4gxvqzgT2ShqstqI+yJhJjKsDXObi?=
 =?us-ascii?Q?Yo22kg8L3+DcwG8DN6CgoDw/IwbpBZDrWwh3O2+yHfH4E1t+TrrveN9uEwNY?=
 =?us-ascii?Q?imMSVpttGL3qGk3M4N8LgVENIDg6lUG5aanEgZFSvNYUyIcqZ5/Zj9MDxQGS?=
 =?us-ascii?Q?eEvC2BQ7XnqIVifpyVy/2XHOeAYT4LNVIeIH/h5lP1vXgjKro9MOIwKGDbMt?=
 =?us-ascii?Q?d4OxBaSuxJJc6V1+ItNuHFGelBUANsGPZUfVeaALBe93XBrkGKaaVZ1zMf0R?=
 =?us-ascii?Q?GgiEd1+jbO1Ct5zlaF7lgI8EViHPLqt5JDpnnfAn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61120515-8f93-4a3c-522f-08dd72c1c50c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2025 15:11:11.6382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cp7MSr77+/aViXKshQ1m6R0nWdC8PVObBaWHkZArcXIe7/Bs+okiYq6Hjo0BnpIZP20BeUpgnwgRrjIdNXU5RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8383
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, April 3, 2025 8:29 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Syrjala,
> Ville <ville.syrjala@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 03/16] drm/i915/dpll: Rename intel_shared_dpll_funcs
>=20
> On Wed, 02 Apr 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename intel_shared_dpll_funcs to intel_global_dpll_funcs since it
> > needs to represent both shared and individual dplls.
> >
> > --v2
> > -Change intel_global_dpll to intel_dpll_global to be more in line with
> > the naming standard where the name should start with the file name
> > [Jani]
>=20
> Though I'm not sure what we need the "global" for. Just intel_dpll_funcs?

Reason being intel_dpll_funcs already exist

Regards,
Suraj Kandpal

>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24
> > +++++++++----------  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |
> > 4 ++--
> >  2 files changed, 14 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index bbb51119ef5b..92ca2a544e2f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -61,7 +61,7 @@
> >   */
> >
> >  /* platform specific hooks for managing DPLLs */ -struct
> > intel_shared_dpll_funcs {
> > +struct intel_dpll_global_funcs {
> >  	/*
> >  	 * Hook for enabling the pll, called from intel_enable_shared_dpll() =
if
> >  	 * the pll is not already enabled.
> > @@ -668,7 +668,7 @@ static bool ibx_compare_hw_state(const struct
> intel_dpll_hw_state *_a,
> >  		a->fp1 =3D=3D b->fp1;
> >  }
> >
> > -static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs =3D {
> > +static const struct intel_dpll_global_funcs ibx_pch_dpll_funcs =3D {
> >  	.enable =3D ibx_pch_dpll_enable,
> >  	.disable =3D ibx_pch_dpll_disable,
> >  	.get_hw_state =3D ibx_pch_dpll_get_hw_state, @@ -1268,14 +1268,14
> @@
> > static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
> >  		a->spll =3D=3D b->spll;
> >  }
> >
> > -static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs =3D {
> > +static const struct intel_dpll_global_funcs hsw_ddi_wrpll_funcs =3D {
> >  	.enable =3D hsw_ddi_wrpll_enable,
> >  	.disable =3D hsw_ddi_wrpll_disable,
> >  	.get_hw_state =3D hsw_ddi_wrpll_get_hw_state,
> >  	.get_freq =3D hsw_ddi_wrpll_get_freq,
> >  };
> >
> > -static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs =3D {
> > +static const struct intel_dpll_global_funcs hsw_ddi_spll_funcs =3D {
> >  	.enable =3D hsw_ddi_spll_enable,
> >  	.disable =3D hsw_ddi_spll_disable,
> >  	.get_hw_state =3D hsw_ddi_spll_get_hw_state, @@ -1300,7 +1300,7 @@
> > static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
> >  	return true;
> >  }
> >
> > -static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs =3D {
> > +static const struct intel_dpll_global_funcs hsw_ddi_lcpll_funcs =3D {
> >  	.enable =3D hsw_ddi_lcpll_enable,
> >  	.disable =3D hsw_ddi_lcpll_disable,
> >  	.get_hw_state =3D hsw_ddi_lcpll_get_hw_state, @@ -2002,14 +2002,14
> @@
> > static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
> >  		a->cfgcr2 =3D=3D b->cfgcr2;
> >  }
> >
> > -static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs =3D {
> > +static const struct intel_dpll_global_funcs skl_ddi_pll_funcs =3D {
> >  	.enable =3D skl_ddi_pll_enable,
> >  	.disable =3D skl_ddi_pll_disable,
> >  	.get_hw_state =3D skl_ddi_pll_get_hw_state,
> >  	.get_freq =3D skl_ddi_pll_get_freq,
> >  };
> >
> > -static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs =3D {
> > +static const struct intel_dpll_global_funcs skl_ddi_dpll0_funcs =3D {
> >  	.enable =3D skl_ddi_dpll0_enable,
> >  	.disable =3D skl_ddi_dpll0_disable,
> >  	.get_hw_state =3D skl_ddi_dpll0_get_hw_state, @@ -2484,7 +2484,7
> @@
> > static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
> >  		a->pcsdw12 =3D=3D b->pcsdw12;
> >  }
> >
> > -static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs =3D {
> > +static const struct intel_dpll_global_funcs bxt_ddi_pll_funcs =3D {
> >  	.enable =3D bxt_ddi_pll_enable,
> >  	.disable =3D bxt_ddi_pll_disable,
> >  	.get_hw_state =3D bxt_ddi_pll_get_hw_state, @@ -4129,21 +4129,21
> @@
> > static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
> >  		a->mg_pll_tdc_coldst_bias =3D=3D b->mg_pll_tdc_coldst_bias;  }
> >
> > -static const struct intel_shared_dpll_funcs combo_pll_funcs =3D {
> > +static const struct intel_dpll_global_funcs combo_pll_funcs =3D {
> >  	.enable =3D combo_pll_enable,
> >  	.disable =3D combo_pll_disable,
> >  	.get_hw_state =3D combo_pll_get_hw_state,
> >  	.get_freq =3D icl_ddi_combo_pll_get_freq,  };
> >
> > -static const struct intel_shared_dpll_funcs tbt_pll_funcs =3D {
> > +static const struct intel_dpll_global_funcs tbt_pll_funcs =3D {
> >  	.enable =3D tbt_pll_enable,
> >  	.disable =3D tbt_pll_disable,
> >  	.get_hw_state =3D tbt_pll_get_hw_state,
> >  	.get_freq =3D icl_ddi_tbt_pll_get_freq,  };
> >
> > -static const struct intel_shared_dpll_funcs mg_pll_funcs =3D {
> > +static const struct intel_dpll_global_funcs mg_pll_funcs =3D {
> >  	.enable =3D mg_pll_enable,
> >  	.disable =3D mg_pll_disable,
> >  	.get_hw_state =3D mg_pll_get_hw_state, @@ -4191,7 +4191,7 @@ static
> > const struct intel_dpll_mgr ehl_pll_mgr =3D {
> >  	.compare_hw_state =3D icl_compare_hw_state,  };
> >
> > -static const struct intel_shared_dpll_funcs dkl_pll_funcs =3D {
> > +static const struct intel_dpll_global_funcs dkl_pll_funcs =3D {
> >  	.enable =3D mg_pll_enable,
> >  	.disable =3D mg_pll_disable,
> >  	.get_hw_state =3D dkl_pll_get_hw_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index d93072486831..2080118be523 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -41,7 +41,7 @@ struct intel_crtc;
> >  struct intel_crtc_state;
> >  struct intel_encoder;
> >  struct intel_shared_dpll;
> > -struct intel_shared_dpll_funcs;
> > +struct intel_dpll_global_funcs;
> >
> >  /**
> >   * enum intel_dpll_id - possible DPLL ids @@ -314,7 +314,7 @@ struct
> > dpll_info {
> >  	/**
> >  	 * @funcs: platform specific hooks
> >  	 */
> > -	const struct intel_shared_dpll_funcs *funcs;
> > +	const struct intel_dpll_global_funcs *funcs;
> >
> >  	/**
> >  	 * @id: unique identifier for this DPLL
>=20
> --
> Jani Nikula, Intel
