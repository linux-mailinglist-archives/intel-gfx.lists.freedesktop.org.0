Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE47A7A612
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 17:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438FB10E250;
	Thu,  3 Apr 2025 15:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7rx2Yo7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7499410E250;
 Thu,  3 Apr 2025 15:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743693412; x=1775229412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HI+ncu8jKHKL0SjbdoG3BC6HyKyGS50hd7rm//T8tC8=;
 b=V7rx2Yo7f3wned/1RlWKEs43Ihc1Hx4TOGp70FVqvIUw7LHv6FYEODon
 DPDEwbWkyS2De6pY0CEPe39PVXeKCDvIKCIsWNXiLcTQZvSPdHr6CtLS3
 vCwGkSVXf3goR3hoyDGBUtzftB0wvT5olEkR/aFJ+eSrNlFOmjmoHPq7a
 R/3uh/jV6yM5Xgx7LHNHkU/T6DK11jCRyLtpVNknA+Ojrq9qR5PfU38Pm
 CJZsxFRFi5rRhSrFqEI9e5meEr8SAxWcBT8QoVKYSoIO4E4hBVY5jLKku
 LVDZ2meIUEhS8ZUq+IEbgC/viQ27ZRE94plUfldv6+1b6Ilh8IaRnpFDm g==;
X-CSE-ConnectionGUID: 0KMNgmi5Qt29huPKxMptdA==
X-CSE-MsgGUID: 0Y35pWXWRz2fVA/1Htnp8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="45253116"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45253116"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 08:15:54 -0700
X-CSE-ConnectionGUID: /ud8XtcSRym28b2FetD52w==
X-CSE-MsgGUID: WDyB2K9VTl6mgK2qLvvNPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="126815802"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 08:15:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 3 Apr 2025 08:15:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 3 Apr 2025 08:15:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 08:15:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bgD2wq60QxdlUWKkioQ2TpgdMW6RvDoc9hxs77d1VUKaBPD18IYIz97mno5EOUWGLMjAD/S+sgztv1LN7bPPPQw01EFyxBrDPOp2UlPuDTsSaN2Guh7oafr47rJAvQmNSOoOegxLo/2NgM3bMbBAOtySvjLer4+HuwkYqd+yBfOY8uv4xwLiG8bmPTCNjer5k40HXPe9fDPeEZyl19r52xGiqgCWh1VG5oSVzvoM+dFmZDRWTVq/qqKa5P9Zf3nkbpO03UGXrFRSErORcurw4lRv/pgyKz8x/Sz4EpazN+JqT4E2bNPi5QHYkGVXACb/vqw9QUmD/vmhVWHIMCiNGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AlIUSsuftQvLU5NzzJ5Z+VxQ0NBxBDGs2BavcdgumSQ=;
 b=dkd+LUOMcjSIF44uaiaJB+Shvk3niP1rgpduA8A1hAKOjHyLY5Ex4i/AefjVWqsGYb7yQObq5oDRP9AMDt3P09UYWpWkSkT8vFJ8yNgN7EzhsbwEwafnR25VkUqw6o0PpYq7hUyATyBpa8cmsGcZC8K1u2PAwvzrpzvduAHHd52pqhDIWFEMsc+00XpZftovGOEFmJtsgocQX8VzHtAr75LoVZUWi6ZXWmr3FMDPXF7WOdmMWlznRQPHltSSqzo+r7h+/ixU2GeI4cyDMfRup4bXRNwaTDxh18kDZE0MpKmpvFZv63kGGhbJoZZBxfZNXooLatjUhwT8WvuwIW6t4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 3 Apr
 2025 15:15:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8534.043; Thu, 3 Apr 2025
 15:15:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 04/16] drm/i915/dpll: Rename intel_shared_dpll
Thread-Topic: [PATCH 04/16] drm/i915/dpll: Rename intel_shared_dpll
Thread-Index: AQHbo6m/E+udzAEgk0iLHXKJCKa4YrOSC0EAgAADabA=
Date: Thu, 3 Apr 2025 15:15:46 +0000
Message-ID: <SN7PR11MB6750401ECCE0DF3AD3E4E2E8E3AE2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
 <20250402083204.1523470-5-suraj.kandpal@intel.com> <878qoh1e7l.fsf@intel.com>
In-Reply-To: <878qoh1e7l.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6825:EE_
x-ms-office365-filtering-correlation-id: e67b08e7-72cd-40d7-33ce-08dd72c268e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HV8AbpuSFGXfWS5Bk1ha3VsljsueeiEOOia0RrAGUd1JDw6LSGu6l6GZAjRq?=
 =?us-ascii?Q?v75zHRiwyDaouacN+O11mvSOXfolF6qQqse++/grex0K6cqTj5BTHF0ABCCA?=
 =?us-ascii?Q?cuBRt1sf0yFjZjmVFiTmSqJGdDmQYU944iIFJI+kHvIMajMsV84TIIC0O9qb?=
 =?us-ascii?Q?XhjR5sjDwGhAR3x4IyaNPw0XHgqckCRpSSXW78S/GcezvJ3gxpJ/htc0Wbw8?=
 =?us-ascii?Q?+hp00YLb0U0Jtx7DvTt5E2/o6N5myQiklPOscbX2WYJipLlwI7FiAIE/b/2p?=
 =?us-ascii?Q?j7of+2LA2JNw3GTbfij6mk6XeQMhqx9wLy+6gUclFgV5/bfOf9whPCK0t86v?=
 =?us-ascii?Q?PdInwHrYQ07VUBdZthXe5vPfOzypKGvVKNwBWVeGAgLCEUPwaqRzuHdvlzFU?=
 =?us-ascii?Q?hGUx2RigbSJebTVFKlDA46tD22q4CnJzKUNvHRIVmoq4Uctfq41sckm/wCUU?=
 =?us-ascii?Q?XURNyUmt2WM0Y07m7tPRCoAbDS7GWS/ygMVicHYTpfZ6ZxbCVSCRVd+VpsX0?=
 =?us-ascii?Q?e0F2cIa9dmvKhgefON0tSh7gtZnh4WrQTxt5sCZwM9dQOZDIvZR0R6VADM2q?=
 =?us-ascii?Q?IUlhIEcMDxYyBfK1IqjBj9+HSWvJH+pF4qXGhJS04M/VYh0GY61Rnv+dGtv9?=
 =?us-ascii?Q?m1dtkzPQcMUfAtsqOiKWFka7QVLgUiEko3TCe/WOQ9r2C8MMV0dmjpl4i09S?=
 =?us-ascii?Q?cdpTqkbon3yMUIbqu5/IDpK3H75dVqlKneoNrauf7PCo+j1qRikm2I7w1zMr?=
 =?us-ascii?Q?PfqV9bydmm/jayNMmjXjTemQ+spbud9ReWPMjND5n5wKDTRPwXg8rf1sD05Z?=
 =?us-ascii?Q?Km5VbYyGRpXbnwoZOxAvpOIEXu0Nj3bbNg8Co+NY9kUKdguUeYC9aHm7Cg2v?=
 =?us-ascii?Q?sI9pcguoOVx5VKmfy4rJZy9dAF/q7u3mYUpHS4OvHk4ddQCso0dZ02eza8io?=
 =?us-ascii?Q?hueAi5wvMAyTTzEXdfwr/eY4sV1i6nZ4YoiVAh5G7did29+ezBOSN2qQAkOf?=
 =?us-ascii?Q?mDhQzG8Ybq9TZ0slPAXcM6CNfQAefrNHruQ1ZvotdLMSLxizdfUO9QMnQBQ7?=
 =?us-ascii?Q?4LWGAelWe2e1R5gDC5MCrrA4XsBEpwYGfS25z27VwPpIjEWhZ5FugQGstfUf?=
 =?us-ascii?Q?yTr38eE6BfgIkKIWD8kLfldrEe/HROlsdjWoRphPcccXgeJAZAI7Q2PlO7Rr?=
 =?us-ascii?Q?PYpYbK+uGLatfFJvHtm6JwJDjady2x3QaSV6J3Cfv4s6SgcaH0nmSKhuVd22?=
 =?us-ascii?Q?FdG9BUA6uZIphle7+1SM3fWNDZ5JLpKMgiZkuUtva1zUlikejCIgdRcVFYwQ?=
 =?us-ascii?Q?czz+sOIZnpS9luZ1F+/eB+FhqdCCoTNC7XHZX5FL4grcvPsoC/PpkGr80tEd?=
 =?us-ascii?Q?gUpmqfMGNMEEo8vSXQiVHD806TU265RcyHCnubVczKINkvmuHMSFS7ViLSB+?=
 =?us-ascii?Q?jDMALa1iN8ZGZXCH+YV4JjqUXZPPs3oY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BVWoSXal/bX2+30iqbn2Ie5icvKfSgSWwBMVxUI2lHaFkKlQ95bmEYkgs8l9?=
 =?us-ascii?Q?HErNNXR7l3NQ0ixK9ZISEkvKhCSexmjuqq8j4uVPkGmK9M5mniHdC4aZe3TU?=
 =?us-ascii?Q?hJovyfohMRNnGTPZeRd+j9utk9OVe4nU5LtMYGDwfnvyHfD1GlNAgirx0mMQ?=
 =?us-ascii?Q?gvJn9pFmbLdf8+WHtFh5dl84gIcrRkPIjqzjbyc6nFBWcAx/t8QcONwz3cj7?=
 =?us-ascii?Q?naZl0NNyPkyMih3TpwgJ4W65zz9Ef/xhIk9cvz6F+Onw7nhx/zG9u8y2oJGq?=
 =?us-ascii?Q?hgcrtdI23N41sUOwgK0ZNEIHuxJjD4+RsF4QM7dlxj9SCnfK20izKnlgJQOL?=
 =?us-ascii?Q?nsi35hRlUWR2UnBMXpzKGlkax79ybg3G20NItmzZMu1coGK1cGG3ObEf1Ako?=
 =?us-ascii?Q?CMPEpLn16pltvc4Tn9i7cj3TaJA9KatsIpKfaYrefcyFXUcEw2i6JYMiQTk2?=
 =?us-ascii?Q?ofWkw0K/kE3RXvryocv9kGZtWmeN0phpDWQwo7mQfGloMngjls0N6TxPek7Z?=
 =?us-ascii?Q?kV+jgz/uxTMdqiwftmwk29LhCYNdLhf1xrjznsIdGvkOXT/URuqt2A/2u+L2?=
 =?us-ascii?Q?nGO/qFG7AtKqjYaL2P+r792zm4OW7y02u/WP/MPg9vRygRVvYYe5ni8PMhZA?=
 =?us-ascii?Q?Xbt+Ggj4KBYHrjB1ZGAQmVc1kdcixccQoAtY4FNNdHJw3BpskVZsQROFf1Y3?=
 =?us-ascii?Q?0ABeD62IHYMGk2AEfZmIq41s08EFEuhnhE0p7z5/v/Xj3XHH4iQGfIJqPVz7?=
 =?us-ascii?Q?mAR60Vhm/+07MKaGHK9B6TOb+i/ULsdhRVMS3Cy2BBt2TMUi6tRyabd9uohe?=
 =?us-ascii?Q?7yAV81Gg5QdKLu7Y6mZZEikzt4gsjaUW5w2GSrSVXlCDiUfNPa3EB2EkRLM/?=
 =?us-ascii?Q?i6YMiEfyz546eTEmY4vnup3fTVnXm7emoxTDpxvo3NpOj0vmkbIBRvo292FV?=
 =?us-ascii?Q?V8Azngfl+jSezEHan/C8ACH396RZlwcTvlWkshqpgJ+ieTDPB2+gOgioAJMy?=
 =?us-ascii?Q?DvCghEH2cUUxU9Z1JcrxabSa68SmpmsQSJAb+GZEaDULGlXHZ9U2kALrfg03?=
 =?us-ascii?Q?1NqIk2xQY7DaChxbkD2vIw6xwVeComUHxh+t/40ZIWMZvmCvhEdP2g3NZxZG?=
 =?us-ascii?Q?Nf2y6HykwBtv6xLB6vnoDMkAEj1k+jye7z1ItPAXLzr8UcXr6a+WpxTCdxqy?=
 =?us-ascii?Q?KI7B0RbcCQpm5cwhIujQOpbbBCJdGpojxFWAntTqEVHw0lAtDGY0+Py8Snld?=
 =?us-ascii?Q?pm5Hxh7OLcHYo7DCjyJyvk26B2o4OWV2p8sn8agjJI7OjgJbOLfrtijSHgGX?=
 =?us-ascii?Q?+pR+LsuNkEOS7+hOKlUlF75wPVsXofRz0i2h3W0dxAlKr2p1U/JXEPH1IUOY?=
 =?us-ascii?Q?GkY44pNACHPL/oyS0wB0EgmSOFs5n9FkkwZALIMUSceNdDe27ZQoe1EYaBYy?=
 =?us-ascii?Q?EvFXT49ebzi/WoMDK7Q9QUl1UxSZewnM1D/fSJvXr1HYKnefAftudbclaTPv?=
 =?us-ascii?Q?IiypMiXGfb1BbyiA9rWxhJ4wH9pK6sAteLiPzhx8L4hyETd2dp+2hoiwuqBf?=
 =?us-ascii?Q?wZ79MknfA5OaFuYlaMGil5NH63DXqY0MjmTFfD+e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e67b08e7-72cd-40d7-33ce-08dd72c268e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2025 15:15:46.5644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HuWBprZPltxHqzpiFVUtklC00XS9d4GUxvM7qgTduBO0TdiKP1k72FWtwjLu3Qw9wJ3I9hUORvaiTd8oNShQJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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
> Sent: Thursday, April 3, 2025 8:32 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Syrjala,
> Ville <ville.syrjala@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 04/16] drm/i915/dpll: Rename intel_shared_dpll
>=20
> On Wed, 02 Apr 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename intel_shared_dpll to intel_dpll_global to represent both
> > shared and individual dplls. Since from MTL each PHY has it's
> > own PLL making the shared PLL naming a little outdated. In an
> > effort to make this framework accepting of future changes this
> > needs to be done.
> >
> > --v2
> > -Use intel_dpll_global to make sure names start with the filename
> > [Jani/Ville]
> > -Explain the need of this rename [Jani]
>=20
> Here too, why not just struct intel_dpll?
>=20
> I get that it's used in intel_display_core.h but it's a single user
> that's less important and could be renamed there.

So make intel_shared_dpll to intel_dpll and maybe intel_dpll to intel_dpll_=
global sounds better than
Also seeing the comment intel_dpll has it does seem like it tracks a global=
 state of intel dpll

"
/*
 * dpll and cdclk state is protected by connection_mutex dpll.lock serializ=
es
 * intel_{prepare,enable,disable}_shared_dpll.  Must be global rather than =
per
 * dpll, because on some platforms plls share registers.
 */
"

Regards,
Suraj Kandpal

>=20
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  52 ++--
> >  drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
> >  .../gpu/drm/i915/display/intel_display_core.h |   4 +-
> >  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
> >  .../drm/i915/display/intel_display_types.h    |   6 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 228 +++++++++---------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  18 +-
> >  drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    |   8 +-
> >  .../gpu/drm/i915/display/intel_pch_display.c  |  10 +-
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
> >  15 files changed, 179 insertions(+), 179 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index b69c713fb79a..97c20c493e4d 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -658,7 +658,7 @@ static void gen11_dsi_map_pll(struct intel_encoder
> *encoder,
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> > -	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum phy phy;
> >  	u32 val;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 56068b2ef964..a8934ea5077d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -234,7 +234,7 @@ static void intel_wait_ddi_buf_active(struct
> intel_encoder *encoder)
> >  			port_name(port));
> >  }
> >
> > -static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> > +static u32 hsw_pll_to_ddi_pll_sel(const struct intel_dpll_global *pll)
> >  {
> >  	switch (pll->info->id) {
> >  	case DPLL_ID_WRPLL1:
> > @@ -258,7 +258,7 @@ static u32 hsw_pll_to_ddi_pll_sel(const struct
> intel_shared_dpll *pll)
> >  static u32 icl_pll_to_ddi_clk_sel(struct intel_encoder *encoder,
> >  				  const struct intel_crtc_state *crtc_state)
> >  {
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	int clock =3D crtc_state->port_clock;
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -1559,7 +1559,7 @@ static bool _icl_ddi_is_clock_enabled(struct
> intel_display *display, i915_reg_t
> >  	return !(intel_de_read(display, reg) & clk_off);
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll_global *
> >  _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
> >  		 u32 clk_sel_mask, u32 clk_sel_shift)
> >  {
> > @@ -1574,7 +1574,7 @@ static void adls_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				  const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1604,7 +1604,7 @@ static bool adls_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll_global *adls_ddi_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1618,7 +1618,7 @@ static void rkl_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1648,7 +1648,7 @@ static bool rkl_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll_global *rkl_ddi_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1662,7 +1662,7 @@ static void dg1_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1701,7 +1701,7 @@ static bool dg1_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll_global *dg1_ddi_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1728,7 +1728,7 @@ static void icl_ddi_combo_enable_clock(struct
> intel_encoder *encoder,
> >  				       const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1758,7 +1758,7 @@ static bool icl_ddi_combo_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder
> *encoder)
> > +struct intel_dpll_global *icl_ddi_combo_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1772,7 +1772,7 @@ static void jsl_ddi_tc_enable_clock(struct
> intel_encoder *encoder,
> >  				    const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum port port =3D encoder->port;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1815,7 +1815,7 @@ static void icl_ddi_tc_enable_clock(struct
> intel_encoder *encoder,
> >  				    const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum tc_port tc_port =3D intel_encoder_to_tc(encoder);
> >  	enum port port =3D encoder->port;
> >
> > @@ -1866,7 +1866,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct
> intel_encoder *encoder)
> >  	return !(tmp & ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
> >  }
> >
> > -static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encod=
er
> *encoder)
> > +static struct intel_dpll_global *icl_ddi_tc_get_pll(struct intel_encod=
er
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum tc_port tc_port =3D intel_encoder_to_tc(encoder);
> > @@ -1896,7 +1896,7 @@ static struct intel_shared_dpll
> *icl_ddi_tc_get_pll(struct intel_encoder *encode
> >  	return intel_get_shared_dpll_by_id(display, id);
> >  }
> >
> > -static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll_global *bxt_ddi_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder->base.dev)=
;
> >  	enum intel_dpll_id id;
> > @@ -1923,7 +1923,7 @@ static void skl_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum port port =3D encoder->port;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1965,7 +1965,7 @@ static bool skl_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >  	return !(intel_de_read(display, DPLL_CTRL2) &
> DPLL_CTRL2_DDI_CLK_OFF(port));
> >  }
> >
> > -static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll_global *skl_ddi_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum port port =3D encoder->port;
> > @@ -1991,7 +1991,7 @@ void hsw_ddi_enable_clock(struct intel_encoder
> *encoder,
> >  			  const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	enum port port =3D encoder->port;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -2016,7 +2016,7 @@ bool hsw_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >  	return intel_de_read(display, PORT_CLK_SEL(port)) !=3D
> PORT_CLK_SEL_NONE;
> >  }
> >
> > -static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll_global *hsw_ddi_get_pll(struct intel_encoder
> *encoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum port port =3D encoder->port;
> > @@ -4184,7 +4184,7 @@ static void intel_ddi_get_config(struct
> intel_encoder *encoder,
> >
> >  void intel_ddi_get_clock(struct intel_encoder *encoder,
> >  			 struct intel_crtc_state *crtc_state,
> > -			 struct intel_shared_dpll *pll)
> > +			 struct intel_dpll_global *pll)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> > @@ -4200,7 +4200,7 @@ void intel_ddi_get_clock(struct intel_encoder
> *encoder,
> >
> >  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
> >
> > -	crtc_state->port_clock =3D intel_dpll_get_freq(display, crtc_state-
> >shared_dpll,
> > +	crtc_state->port_clock =3D intel_dpll_get_freq(display, crtc_state-
> >dpll_global,
> >  						     &crtc_state-
> >dpll_hw_state);
> >  }
> >
> > @@ -4254,7 +4254,7 @@ static void icl_ddi_combo_get_config(struct
> intel_encoder *encoder,
> >  	intel_ddi_get_config(encoder, crtc_state);
> >  }
> >
> > -static bool icl_ddi_tc_pll_is_tbt(const struct intel_shared_dpll *pll)
> > +static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll_global *pll)
> >  {
> >  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL;
> >  }
> > @@ -4264,7 +4264,7 @@ icl_ddi_tc_port_pll_type(struct intel_encoder
> *encoder,
> >  			 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> >  		return ICL_PORT_DPLL_DEFAULT;
> > @@ -4287,7 +4287,7 @@ intel_ddi_port_pll_type(struct intel_encoder
> *encoder,
> >
> >  static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
> >  				 struct intel_crtc_state *crtc_state,
> > -				 struct intel_shared_dpll *pll)
> > +				 struct intel_dpll_global *pll)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum icl_port_dpll_id port_dpll_id;
> > @@ -4310,10 +4310,10 @@ static void icl_ddi_tc_get_clock(struct
> intel_encoder *encoder,
> >
> >  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
> >
> > -	if (icl_ddi_tc_pll_is_tbt(crtc_state->shared_dpll))
> > +	if (icl_ddi_tc_pll_is_tbt(crtc_state->dpll_global))
> >  		crtc_state->port_clock =3D icl_calc_tbt_pll_link(display, encoder-
> >port);
> >  	else
> > -		crtc_state->port_clock =3D intel_dpll_get_freq(display,
> crtc_state->shared_dpll,
> > +		crtc_state->port_clock =3D intel_dpll_get_freq(display,
> crtc_state->dpll_global,
> >  							     &crtc_state-
> >dpll_hw_state);
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 353eb04079e9..c41341b7e5cf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -18,7 +18,7 @@ struct intel_display;
> >  struct intel_dp;
> >  struct intel_dpll_hw_state;
> >  struct intel_encoder;
> > -struct intel_shared_dpll;
> > +struct intel_dpll_global;
> >  enum pipe;
> >  enum port;
> >  enum transcoder;
> > @@ -40,7 +40,7 @@ void intel_ddi_enable_clock(struct intel_encoder
> *encoder,
> >  void intel_ddi_disable_clock(struct intel_encoder *encoder);
> >  void intel_ddi_get_clock(struct intel_encoder *encoder,
> >  			 struct intel_crtc_state *crtc_state,
> > -			 struct intel_shared_dpll *pll);
> > +			 struct intel_dpll_global *pll);
> >  void hsw_ddi_enable_clock(struct intel_encoder *encoder,
> >  			  const struct intel_crtc_state *crtc_state);
> >  void hsw_ddi_disable_clock(struct intel_encoder *encoder);
> > @@ -50,7 +50,7 @@ intel_ddi_port_pll_type(struct intel_encoder *encoder=
,
> >  			const struct intel_crtc_state *crtc_state);
> >  void hsw_ddi_get_config(struct intel_encoder *encoder,
> >  			struct intel_crtc_state *crtc_state);
> > -struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder
> *encoder);
> > +struct intel_dpll_global *icl_ddi_combo_get_pll(struct intel_encoder
> *encoder);
> >  void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> >  				const struct intel_crtc_state *crtc_state);
> >  void intel_wait_ddi_buf_idle(struct intel_display *display, enum port =
port);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > index c540e2cae1f0..5b808bad61e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1322,7 +1322,7 @@ static void intel_encoders_update_prepare(struct
> intel_atomic_state *state)
> >  			if (intel_crtc_needs_modeset(new_crtc_state))
> >  				continue;
> >
> > -			new_crtc_state->shared_dpll =3D old_crtc_state-
> >shared_dpll;
> > +			new_crtc_state->dpll_global =3D old_crtc_state-
> >dpll_global;
> >  			new_crtc_state->dpll_hw_state =3D old_crtc_state-
> >dpll_hw_state;
> >  		}
> >  	}
> > @@ -1661,7 +1661,7 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> >
> >  	intel_encoders_pre_pll_enable(state, crtc);
> >
> > -	if (new_crtc_state->shared_dpll)
> > +	if (new_crtc_state->dpll_global)
> >  		intel_enable_shared_dpll(new_crtc_state);
> >
> >  	intel_encoders_pre_enable(state, crtc);
> > @@ -1957,7 +1957,7 @@ static void get_crtc_power_domains(struct
> intel_crtc_state *crtc_state,
> >  	if (HAS_DDI(display) && crtc_state->has_audio)
> >  		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
> >
> > -	if (crtc_state->shared_dpll)
> > +	if (crtc_state->dpll_global)
> >  		set_bit(POWER_DOMAIN_DISPLAY_CORE, mask->bits);
> >
> >  	if (crtc_state->dsc.compression_enable)
> > @@ -4498,7 +4498,7 @@ copy_joiner_crtc_state_modeset(struct
> intel_atomic_state *state,
> >  	/* preserve some things from the slave's original crtc state */
> >  	saved_state->uapi =3D secondary_crtc_state->uapi;
> >  	saved_state->scaler_state =3D secondary_crtc_state->scaler_state;
> > -	saved_state->shared_dpll =3D secondary_crtc_state->shared_dpll;
> > +	saved_state->dpll_global =3D secondary_crtc_state->dpll_global;
> >  	saved_state->crc_enabled =3D secondary_crtc_state->crc_enabled;
> >
> >  	intel_crtc_free_hw_state(secondary_crtc_state);
> > @@ -4561,7 +4561,7 @@ intel_crtc_prepare_cleared_state(struct
> intel_atomic_state *state,
> >  	saved_state->uapi =3D crtc_state->uapi;
> >  	saved_state->inherited =3D crtc_state->inherited;
> >  	saved_state->scaler_state =3D crtc_state->scaler_state;
> > -	saved_state->shared_dpll =3D crtc_state->shared_dpll;
> > +	saved_state->dpll_global =3D crtc_state->dpll_global;
> >  	saved_state->dpll_hw_state =3D crtc_state->dpll_hw_state;
> >  	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
> >  	       sizeof(saved_state->icl_port_dplls));
> > @@ -5313,7 +5313,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_BOOL(double_wide);
> >
> >  	if (display->dpll.mgr)
> > -		PIPE_CONF_CHECK_P(shared_dpll);
> > +		PIPE_CONF_CHECK_P(dpll_global);
> >
> >  	/* FIXME convert everything over the dpll_mgr */
> >  	if (display->dpll.mgr || HAS_GMCH(display))
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 3673275f9061..b23ff1c34bdf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -126,8 +126,8 @@ struct intel_audio {
> >  struct intel_dpll {
> >  	struct mutex lock;
> >
> > -	int num_shared_dpll;
> > -	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
> > +	int num_dpll_global;
> > +	struct intel_dpll_global dpll_globals[I915_NUM_PLLS];
> >  	const struct intel_dpll_mgr *mgr;
> >
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index a317c6646382..db26998e0baa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -625,7 +625,7 @@ static int i915_shared_dplls_info(struct seq_file *=
m,
> void *unused)
> >  {
> >  	struct intel_display *display =3D node_to_intel_display(m->private);
> >  	struct drm_printer p =3D drm_seq_file_printer(m);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	drm_modeset_lock_all(display->drm);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 7d1c64f7b405..e080ffb32546 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1075,8 +1075,8 @@ struct intel_crtc_state {
> >  	 * haswell. */
> >  	struct dpll dpll;
> >
> > -	/* Selected dpll when shared or NULL. */
> > -	struct intel_shared_dpll *shared_dpll;
> > +	/* Selected dpll. */
> > +	struct intel_dpll_global *dpll_global;
> >
> >  	/* Actual register state of the dpll, for shared dpll cross-checking.=
 */
> >  	struct intel_dpll_hw_state dpll_hw_state;
> > @@ -1086,7 +1086,7 @@ struct intel_crtc_state {
> >  	 * setting shared_dpll and dpll_hw_state to one of these reserved
> ones.
> >  	 */
> >  	struct icl_port_dpll {
> > -		struct intel_shared_dpll *pll;
> > +		struct intel_dpll_global *pll;
> >  		struct intel_dpll_hw_state hw_state;
> >  	} icl_port_dplls[ICL_PORT_DPLL_COUNT];
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index 0481b1365b85..c6d29382378b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -1770,9 +1770,9 @@ int intel_dpll_crtc_get_shared_dpll(struct
> intel_atomic_state *state,
> >  	int ret;
> >
> >  	drm_WARN_ON(display->drm, !intel_crtc_needs_modeset(crtc_state));
> > -	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state-
> >shared_dpll);
> > +	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state-
> >dpll_global);
> >
> > -	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
> > +	if (!crtc_state->hw.enable || crtc_state->dpll_global)
> >  		return 0;
> >
> >  	if (!display->funcs.dpll->crtc_get_shared_dpll)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 92ca2a544e2f..833c90f3f0f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -67,7 +67,7 @@ struct intel_dpll_global_funcs {
> >  	 * the pll is not already enabled.
> >  	 */
> >  	void (*enable)(struct intel_display *display,
> > -		       struct intel_shared_dpll *pll,
> > +		       struct intel_dpll_global *pll,
> >  		       const struct intel_dpll_hw_state *dpll_hw_state);
> >
> >  	/*
> > @@ -76,7 +76,7 @@ struct intel_dpll_global_funcs {
> >  	 * tracked users for it.
> >  	 */
> >  	void (*disable)(struct intel_display *display,
> > -			struct intel_shared_dpll *pll);
> > +			struct intel_dpll_global *pll);
> >
> >  	/*
> >  	 * Hook for reading the values currently programmed to the DPLL
> > @@ -84,7 +84,7 @@ struct intel_dpll_global_funcs {
> >  	 * verification after a mode set.
> >  	 */
> >  	bool (*get_hw_state)(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_global *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state);
> >
> >  	/*
> > @@ -92,7 +92,7 @@ struct intel_dpll_global_funcs {
> >  	 * in state.
> >  	 */
> >  	int (*get_freq)(struct intel_display *i915,
> > -			const struct intel_shared_dpll *pll,
> > +			const struct intel_dpll_global *pll,
> >  			const struct intel_dpll_hw_state *dpll_hw_state);
> >  };
> >
> > @@ -121,7 +121,7 @@ static void
> >  intel_atomic_duplicate_dpll_state(struct intel_display *display,
> >  				  struct intel_dpll_state *dpll_state)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	/* Copy dpll state */
> > @@ -155,11 +155,11 @@ intel_atomic_get_shared_dpll_state(struct
> drm_atomic_state *s)
> >   * Returns:
> >   * A pointer to the DPLL with @id
> >   */
> > -struct intel_shared_dpll *
> > +struct intel_dpll_global *
> >  intel_get_shared_dpll_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	for_each_dpll(display, pll, i) {
> > @@ -173,7 +173,7 @@ intel_get_shared_dpll_by_id(struct intel_display
> *display,
> >
> >  /* For ILK+ */
> >  void assert_shared_dpll(struct intel_display *display,
> > -			struct intel_shared_dpll *pll,
> > +			struct intel_dpll_global *pll,
> >  			bool state)
> >  {
> >  	bool cur_state;
> > @@ -202,7 +202,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum
> tc_port tc_port)
> >
> >  static i915_reg_t
> >  intel_combo_pll_enable_reg(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll)
> > +			   struct intel_dpll_global *pll)
> >  {
> >  	if (display->platform.dg1)
> >  		return DG1_DPLL_ENABLE(pll->info->id);
> > @@ -215,7 +215,7 @@ intel_combo_pll_enable_reg(struct intel_display
> *display,
> >
> >  static i915_reg_t
> >  intel_tc_pll_enable_reg(struct intel_display *display,
> > -			struct intel_shared_dpll *pll)
> > +			struct intel_dpll_global *pll)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(id);
> > @@ -227,7 +227,7 @@ intel_tc_pll_enable_reg(struct intel_display *displ=
ay,
> >  }
> >
> >  static void _intel_enable_shared_dpll(struct intel_display *display,
> > -				      struct intel_shared_dpll *pll)
> > +				      struct intel_dpll_global *pll)
> >  {
> >  	if (pll->info->power_domain)
> >  		pll->wakeref =3D intel_display_power_get(display, pll->info-
> >power_domain);
> > @@ -237,7 +237,7 @@ static void _intel_enable_shared_dpll(struct
> intel_display *display,
> >  }
> >
> >  static void _intel_disable_shared_dpll(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll)
> > +				       struct intel_dpll_global *pll)
> >  {
> >  	pll->info->funcs->disable(display, pll);
> >  	pll->on =3D false;
> > @@ -256,7 +256,7 @@ void intel_enable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	unsigned int pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
> >  	unsigned int old_mask;
> >
> > @@ -302,7 +302,7 @@ void intel_disable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	struct intel_dpll_global *pll =3D crtc_state->dpll_global;
> >  	unsigned int pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
> >
> >  	/* PCH only available on ILK+ */
> > @@ -341,7 +341,7 @@ void intel_disable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  static unsigned long
> >  intel_dpll_mask_all(struct intel_display *display)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	unsigned long dpll_mask =3D 0;
> >  	int i;
> >
> > @@ -354,7 +354,7 @@ intel_dpll_mask_all(struct intel_display *display)
> >  	return dpll_mask;
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll_global *
> >  intel_find_shared_dpll(struct intel_atomic_state *state,
> >  		       const struct intel_crtc *crtc,
> >  		       const struct intel_dpll_hw_state *dpll_hw_state,
> > @@ -363,7 +363,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_display *display =3D to_intel_display(crtc);
> >  	unsigned long dpll_mask_all =3D intel_dpll_mask_all(display);
> >  	struct intel_dpll_state *dpll_state;
> > -	struct intel_shared_dpll *unused_pll =3D NULL;
> > +	struct intel_dpll_global *unused_pll =3D NULL;
> >  	enum intel_dpll_id id;
> >
> >  	dpll_state =3D intel_atomic_get_shared_dpll_state(&state->base);
> > @@ -371,7 +371,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >  	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
> >
> >  	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
> > -		struct intel_shared_dpll *pll;
> > +		struct intel_dpll_global *pll;
> >
> >  		pll =3D intel_get_shared_dpll_by_id(display, id);
> >  		if (!pll)
> > @@ -418,7 +418,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >   */
> >  static void
> >  intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > -				 const struct intel_shared_dpll *pll,
> > +				 const struct intel_dpll_global *pll,
> >  				 struct intel_dpll_state *dpll_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc);
> > @@ -434,7 +434,7 @@ intel_reference_shared_dpll_crtc(const struct
> intel_crtc *crtc,
> >  static void
> >  intel_reference_shared_dpll(struct intel_atomic_state *state,
> >  			    const struct intel_crtc *crtc,
> > -			    const struct intel_shared_dpll *pll,
> > +			    const struct intel_dpll_global *pll,
> >  			    const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct intel_dpll_state *dpll_state;
> > @@ -457,7 +457,7 @@ intel_reference_shared_dpll(struct
> intel_atomic_state *state,
> >   */
> >  void
> >  intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > -				   const struct intel_shared_dpll *pll,
> > +				   const struct intel_dpll_global *pll,
> >  				   struct intel_dpll_state *dpll_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc);
> > @@ -472,7 +472,7 @@ intel_unreference_shared_dpll_crtc(const struct
> intel_crtc *crtc,
> >
> >  static void intel_unreference_shared_dpll(struct intel_atomic_state *s=
tate,
> >  					  const struct intel_crtc *crtc,
> > -					  const struct intel_shared_dpll *pll)
> > +					  const struct intel_dpll_global *pll)
> >  {
> >  	struct intel_dpll_state *dpll_state;
> >
> > @@ -489,12 +489,12 @@ static void intel_put_dpll(struct intel_atomic_st=
ate
> *state,
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >
> > -	new_crtc_state->shared_dpll =3D NULL;
> > +	new_crtc_state->dpll_global =3D NULL;
> >
> > -	if (!old_crtc_state->shared_dpll)
> > +	if (!old_crtc_state->dpll_global)
> >  		return;
> >
> > -	intel_unreference_shared_dpll(state, crtc, old_crtc_state-
> >shared_dpll);
> > +	intel_unreference_shared_dpll(state, crtc, old_crtc_state-
> >dpll_global);
> >  }
> >
> >  /**
> > @@ -512,7 +512,7 @@ void intel_shared_dpll_swap_state(struct
> intel_atomic_state *state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_dpll_state *dpll_state =3D state->dpll_state;
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	if (!state->dpll_set)
> > @@ -523,7 +523,7 @@ void intel_shared_dpll_swap_state(struct
> intel_atomic_state *state)
> >  }
> >
> >  static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
> > -				      struct intel_shared_dpll *pll,
> > +				      struct intel_dpll_global *pll,
> >  				      struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct i9xx_dpll_hw_state *hw_state =3D &dpll_hw_state->i9xx;
> > @@ -559,7 +559,7 @@ static void ibx_assert_pch_refclk_enabled(struct
> intel_display *display)
> >  }
> >
> >  static void ibx_pch_dpll_enable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll,
> > +				struct intel_dpll_global *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct i9xx_dpll_hw_state *hw_state =3D &dpll_hw_state->i9xx;
> > @@ -588,7 +588,7 @@ static void ibx_pch_dpll_enable(struct intel_displa=
y
> *display,
> >  }
> >
> >  static void ibx_pch_dpll_disable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll)
> > +				 struct intel_dpll_global *pll)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -612,7 +612,7 @@ static int ibx_get_dpll(struct intel_atomic_state
> *state,
> >  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	enum intel_dpll_id id;
> >
> >  	if (HAS_PCH_IBX(i915)) {
> > @@ -638,7 +638,7 @@ static int ibx_get_dpll(struct intel_atomic_state
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->dpll_global =3D pll;
> >
> >  	return 0;
> >  }
> > @@ -690,7 +690,7 @@ static const struct intel_dpll_mgr pch_pll_mgr =3D =
{
> >  };
> >
> >  static void hsw_ddi_wrpll_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -702,7 +702,7 @@ static void hsw_ddi_wrpll_enable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static void hsw_ddi_spll_enable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll,
> > +				struct intel_dpll_global *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -713,7 +713,7 @@ static void hsw_ddi_spll_enable(struct intel_displa=
y
> *display,
> >  }
> >
> >  static void hsw_ddi_wrpll_disable(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll_global *pll)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -729,7 +729,7 @@ static void hsw_ddi_wrpll_disable(struct intel_disp=
lay
> *display,
> >  }
> >
> >  static void hsw_ddi_spll_disable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll)
> > +				 struct intel_dpll_global *pll)
> >  {
> >  	enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -745,7 +745,7 @@ static void hsw_ddi_spll_disable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll,
> > +				       struct intel_dpll_global *pll,
> >  				       struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -767,7 +767,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
> > -				      struct intel_shared_dpll *pll,
> > +				      struct intel_dpll_global *pll,
> >  				      struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -994,7 +994,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
> >  }
> >
> >  static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll_global *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -1057,7 +1057,7 @@ hsw_ddi_wrpll_compute_dpll(struct
> intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll_global *
> >  hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
> >  		       struct intel_crtc *crtc)
> >  {
> > @@ -1088,11 +1088,11 @@ hsw_ddi_lcpll_compute_dpll(struct
> intel_crtc_state *crtc_state)
> >  	}
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll_global *
> >  hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	enum intel_dpll_id pll_id;
> >  	int clock =3D crtc_state->port_clock;
> >
> > @@ -1120,7 +1120,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state
> *crtc_state)
> >  }
> >
> >  static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll_global *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	int link_clock =3D 0;
> > @@ -1160,7 +1160,7 @@ hsw_ddi_spll_compute_dpll(struct
> intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll_global *
> >  hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
> >  		      struct intel_crtc *crtc)
> >  {
> > @@ -1172,7 +1172,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state
> *state,
> >  }
> >
> >  static int hsw_ddi_spll_get_freq(struct intel_display *display,
> > -				 const struct intel_shared_dpll *pll,
> > +				 const struct intel_dpll_global *pll,
> >  				 const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -1219,7 +1219,7 @@ static int hsw_get_dpll(struct intel_atomic_state
> *state,
> >  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll =3D NULL;
> > +	struct intel_dpll_global *pll =3D NULL;
> >
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> >  		pll =3D hsw_ddi_wrpll_get_dpll(state, crtc);
> > @@ -1234,7 +1234,7 @@ static int hsw_get_dpll(struct intel_atomic_state
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->dpll_global =3D pll;
> >
> >  	return 0;
> >  }
> > @@ -1283,18 +1283,18 @@ static const struct intel_dpll_global_funcs
> hsw_ddi_spll_funcs =3D {
> >  };
> >
> >  static void hsw_ddi_lcpll_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 const struct intel_dpll_hw_state *hw_state)
> >  {
> >  }
> >
> >  static void hsw_ddi_lcpll_disable(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll_global *pll)
> >  {
> >  }
> >
> >  static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll,
> > +				       struct intel_dpll_global *pll,
> >  				       struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	return true;
> > @@ -1362,7 +1362,7 @@ static const struct skl_dpll_regs skl_dpll_regs[4=
] =3D {
> >  };
> >
> >  static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
> > -				    struct intel_shared_dpll *pll,
> > +				    struct intel_dpll_global *pll,
> >  				    const struct skl_dpll_hw_state *hw_state)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> > @@ -1376,7 +1376,7 @@ static void skl_ddi_pll_write_ctrl1(struct
> intel_display *display,
> >  }
> >
> >  static void skl_ddi_pll_enable(struct intel_display *display,
> > -			       struct intel_shared_dpll *pll,
> > +			       struct intel_dpll_global *pll,
> >  			       const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1398,7 +1398,7 @@ static void skl_ddi_pll_enable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static void skl_ddi_dpll0_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1407,7 +1407,7 @@ static void skl_ddi_dpll0_enable(struct
> intel_display *display,
> >  }
> >
> >  static void skl_ddi_pll_disable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll)
> > +				struct intel_dpll_global *pll)
> >  {
> >  	const struct skl_dpll_regs *regs =3D skl_dpll_regs;
> >  	const enum intel_dpll_id id =3D pll->info->id;
> > @@ -1418,12 +1418,12 @@ static void skl_ddi_pll_disable(struct
> intel_display *display,
> >  }
> >
> >  static void skl_ddi_dpll0_disable(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll_global *pll)
> >  {
> >  }
> >
> >  static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
> > -				     struct intel_shared_dpll *pll,
> > +				     struct intel_dpll_global *pll,
> >  				     struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1461,7 +1461,7 @@ static bool skl_ddi_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll,
> > +				       struct intel_dpll_global *pll,
> >  				       struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1734,7 +1734,7 @@ skl_ddi_calculate_wrpll(int clock,
> >  }
> >
> >  static int skl_ddi_wrpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll_global *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1882,7 +1882,7 @@ skl_ddi_dp_set_dpll_hw_state(struct
> intel_crtc_state *crtc_state)
> >  }
> >
> >  static int skl_ddi_lcpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll_global *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1937,7 +1937,7 @@ static int skl_get_dpll(struct intel_atomic_state
> *state,
> >  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> >  		pll =3D intel_find_shared_dpll(state, crtc,
> > @@ -1955,13 +1955,13 @@ static int skl_get_dpll(struct intel_atomic_sta=
te
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->dpll_global =3D pll;
> >
> >  	return 0;
> >  }
> >
> >  static int skl_ddi_pll_get_freq(struct intel_display *display,
> > -				const struct intel_shared_dpll *pll,
> > +				const struct intel_dpll_global *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -2036,7 +2036,7 @@ static const struct intel_dpll_mgr skl_pll_mgr =
=3D {
> >  };
> >
> >  static void bxt_ddi_pll_enable(struct intel_display *display,
> > -			       struct intel_shared_dpll *pll,
> > +			       struct intel_dpll_global *pll,
> >  			       const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> > @@ -2139,7 +2139,7 @@ static void bxt_ddi_pll_enable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static void bxt_ddi_pll_disable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll)
> > +				struct intel_dpll_global *pll)
> >  {
> >  	enum port port =3D (enum port)pll->info->id; /* 1:1 port->PLL mapping=
 */
> >
> > @@ -2158,7 +2158,7 @@ static void bxt_ddi_pll_disable(struct intel_disp=
lay
> *display,
> >  }
> >
> >  static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
> > -				     struct intel_shared_dpll *pll,
> > +				     struct intel_dpll_global *pll,
> >  				     struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> > @@ -2358,7 +2358,7 @@ static int bxt_ddi_set_dpll_hw_state(struct
> intel_crtc_state *crtc_state,
> >  }
> >
> >  static int bxt_ddi_pll_get_freq(struct intel_display *display,
> > -				const struct intel_shared_dpll *pll,
> > +				const struct intel_dpll_global *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> > @@ -2427,7 +2427,7 @@ static int bxt_get_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	enum intel_dpll_id id;
> >
> >  	/* 1:1 mapping between ports and PLLs */
> > @@ -2440,7 +2440,7 @@ static int bxt_get_dpll(struct intel_atomic_state
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->dpll_global =3D pll;
> >
> >  	return 0;
> >  }
> > @@ -2755,7 +2755,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_sta=
te
> *crtc_state,
> >  }
> >
> >  static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
> > -				    const struct intel_shared_dpll *pll,
> > +				    const struct intel_dpll_global *pll,
> >  				    const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	/*
> > @@ -2826,7 +2826,7 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_stat=
e,
> >  }
> >
> >  static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
> > -				      const struct intel_shared_dpll *pll,
> > +				      const struct intel_dpll_global *pll,
> >  				      const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3199,7 +3199,7 @@ static int icl_calc_mg_pll_state(struct
> intel_crtc_state *crtc_state,
> >  }
> >
> >  static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
> > -				   const struct intel_shared_dpll *pll,
> > +				   const struct intel_dpll_global *pll,
> >  				   const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3285,7 +3285,7 @@ void icl_set_active_port_dpll(struct
> intel_crtc_state *crtc_state,
> >  	struct icl_port_dpll *port_dpll =3D
> >  		&crtc_state->icl_port_dplls[port_dpll_id];
> >
> > -	crtc_state->shared_dpll =3D port_dpll->pll;
> > +	crtc_state->dpll_global =3D port_dpll->pll;
> >  	crtc_state->dpll_hw_state =3D port_dpll->hw_state;
> >  }
> >
> > @@ -3428,8 +3428,8 @@ static int icl_compute_tc_phy_dplls(struct
> intel_atomic_state *state,
> >  		return ret;
> >
> >  	/* this is mainly for the fastset check */
> > -	if (old_crtc_state->shared_dpll &&
> > -	    old_crtc_state->shared_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> > +	if (old_crtc_state->dpll_global &&
> > +	    old_crtc_state->dpll_global->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> >  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> >  	else
> >  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> > @@ -3521,7 +3521,7 @@ static void icl_put_dplls(struct intel_atomic_sta=
te
> *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum icl_port_dpll_id id;
> >
> > -	new_crtc_state->shared_dpll =3D NULL;
> > +	new_crtc_state->dpll_global =3D NULL;
> >
> >  	for (id =3D ICL_PORT_DPLL_DEFAULT; id < ICL_PORT_DPLL_COUNT; id++) {
> >  		const struct icl_port_dpll *old_port_dpll =3D
> > @@ -3539,7 +3539,7 @@ static void icl_put_dplls(struct intel_atomic_sta=
te
> *state,
> >  }
> >
> >  static bool mg_pll_get_hw_state(struct intel_display *display,
> > -				struct intel_shared_dpll *pll,
> > +				struct intel_dpll_global *pll,
> >  				struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3606,7 +3606,7 @@ static bool mg_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool dkl_pll_get_hw_state(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3678,7 +3678,7 @@ static bool dkl_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool icl_pll_get_hw_state(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 struct intel_dpll_hw_state *dpll_hw_state,
> >  				 i915_reg_t enable_reg)
> >  {
> > @@ -3739,7 +3739,7 @@ static bool icl_pll_get_hw_state(struct intel_dis=
play
> *display,
> >  }
> >
> >  static bool combo_pll_get_hw_state(struct intel_display *display,
> > -				   struct intel_shared_dpll *pll,
> > +				   struct intel_dpll_global *pll,
> >  				   struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(display, pll);
> > @@ -3748,14 +3748,14 @@ static bool combo_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool tbt_pll_get_hw_state(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	return icl_pll_get_hw_state(display, pll, dpll_hw_state,
> TBT_PLL_ENABLE);
> >  }
> >
> >  static void icl_dpll_write(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll,
> > +			   struct intel_dpll_global *pll,
> >  			   const struct icl_dpll_hw_state *hw_state)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> > @@ -3797,7 +3797,7 @@ static void icl_dpll_write(struct intel_display
> *display,
> >  }
> >
> >  static void icl_mg_pll_write(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_global *pll,
> >  			     const struct icl_dpll_hw_state *hw_state)
> >  {
> >  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(pll->info->id);
> > @@ -3840,7 +3840,7 @@ static void icl_mg_pll_write(struct intel_display
> *display,
> >  }
> >
> >  static void dkl_pll_write(struct intel_display *display,
> > -			  struct intel_shared_dpll *pll,
> > +			  struct intel_dpll_global *pll,
> >  			  const struct icl_dpll_hw_state *hw_state)
> >  {
> >  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(pll->info->id);
> > @@ -3905,7 +3905,7 @@ static void dkl_pll_write(struct intel_display
> *display,
> >  }
> >
> >  static void icl_pll_power_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll_global *pll,
> >  				 i915_reg_t enable_reg)
> >  {
> >  	intel_de_rmw(display, enable_reg, 0, PLL_POWER_ENABLE);
> > @@ -3920,7 +3920,7 @@ static void icl_pll_power_enable(struct
> intel_display *display,
> >  }
> >
> >  static void icl_pll_enable(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll,
> > +			   struct intel_dpll_global *pll,
> >  			   i915_reg_t enable_reg)
> >  {
> >  	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
> > @@ -3930,7 +3930,7 @@ static void icl_pll_enable(struct intel_display
> *display,
> >  		drm_err(display->drm, "PLL %d not locked\n", pll->info->id);
> >  }
> >
> > -static void adlp_cmtg_clock_gating_wa(struct intel_display *display, s=
truct
> intel_shared_dpll *pll)
> > +static void adlp_cmtg_clock_gating_wa(struct intel_display *display, s=
truct
> intel_dpll_global *pll)
> >  {
> >  	u32 val;
> >
> > @@ -3955,7 +3955,7 @@ static void adlp_cmtg_clock_gating_wa(struct
> intel_display *display, struct inte
> >  }
> >
> >  static void combo_pll_enable(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_global *pll,
> >  			     const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3979,7 +3979,7 @@ static void combo_pll_enable(struct intel_display
> *display,
> >  }
> >
> >  static void tbt_pll_enable(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll,
> > +			   struct intel_dpll_global *pll,
> >  			   const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -4000,7 +4000,7 @@ static void tbt_pll_enable(struct intel_display
> *display,
> >  }
> >
> >  static void mg_pll_enable(struct intel_display *display,
> > -			  struct intel_shared_dpll *pll,
> > +			  struct intel_dpll_global *pll,
> >  			  const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -4025,7 +4025,7 @@ static void mg_pll_enable(struct intel_display
> *display,
> >  }
> >
> >  static void icl_pll_disable(struct intel_display *display,
> > -			    struct intel_shared_dpll *pll,
> > +			    struct intel_dpll_global *pll,
> >  			    i915_reg_t enable_reg)
> >  {
> >  	/* The first steps are done by intel_ddi_post_disable(). */
> > @@ -4056,7 +4056,7 @@ static void icl_pll_disable(struct intel_display
> *display,
> >  }
> >
> >  static void combo_pll_disable(struct intel_display *display,
> > -			      struct intel_shared_dpll *pll)
> > +			      struct intel_dpll_global *pll)
> >  {
> >  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(display, pll);
> >
> > @@ -4064,13 +4064,13 @@ static void combo_pll_disable(struct
> intel_display *display,
> >  }
> >
> >  static void tbt_pll_disable(struct intel_display *display,
> > -			    struct intel_shared_dpll *pll)
> > +			    struct intel_dpll_global *pll)
> >  {
> >  	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
> >  }
> >
> >  static void mg_pll_disable(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll)
> > +			   struct intel_dpll_global *pll)
> >  {
> >  	i915_reg_t enable_reg =3D intel_tc_pll_enable_reg(display, pll);
> >
> > @@ -4347,19 +4347,19 @@ void intel_shared_dpll_init(struct intel_displa=
y
> *display)
> >
> >  	for (i =3D 0; dpll_info[i].name; i++) {
> >  		if (drm_WARN_ON(display->drm,
> > -				i >=3D ARRAY_SIZE(display->dpll.shared_dplls)))
> > +				i >=3D ARRAY_SIZE(display->dpll.dpll_globals)))
> >  			break;
> >
> >  		/* must fit into unsigned long bitmask on 32bit */
> >  		if (drm_WARN_ON(display->drm, dpll_info[i].id >=3D 32))
> >  			break;
> >
> > -		display->dpll.shared_dplls[i].info =3D &dpll_info[i];
> > -		display->dpll.shared_dplls[i].index =3D i;
> > +		display->dpll.dpll_globals[i].info =3D &dpll_info[i];
> > +		display->dpll.dpll_globals[i].index =3D i;
> >  	}
> >
> >  	display->dpll.mgr =3D dpll_mgr;
> > -	display->dpll.num_shared_dpll =3D i;
> > +	display->dpll.num_dpll_global =3D i;
> >  }
> >
> >  /**
> > @@ -4483,7 +4483,7 @@ void intel_update_active_dpll(struct
> intel_atomic_state *state,
> >   * Return the output frequency corresponding to @pll's passed in
> @dpll_hw_state.
> >   */
> >  int intel_dpll_get_freq(struct intel_display *display,
> > -			const struct intel_shared_dpll *pll,
> > +			const struct intel_dpll_global *pll,
> >  			const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
> > @@ -4501,14 +4501,14 @@ int intel_dpll_get_freq(struct intel_display
> *display,
> >   * Read out @pll's hardware state into @dpll_hw_state.
> >   */
> >  bool intel_dpll_get_hw_state(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_global *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
> >  }
> >
> >  static void readout_dpll_hw_state(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll_global *pll)
> >  {
> >  	struct intel_crtc *crtc;
> >
> > @@ -4522,7 +4522,7 @@ static void readout_dpll_hw_state(struct
> intel_display *display,
> >  		struct intel_crtc_state *crtc_state =3D
> >  			to_intel_crtc_state(crtc->base.state);
> >
> > -		if (crtc_state->hw.active && crtc_state->shared_dpll =3D=3D pll)
> > +		if (crtc_state->hw.active && crtc_state->dpll_global =3D=3D pll)
> >  			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
> >  	}
> >  	pll->active_mask =3D pll->state.pipe_mask;
> > @@ -4540,7 +4540,7 @@ void intel_dpll_update_ref_clks(struct
> intel_display *display)
> >
> >  void intel_dpll_readout_hw_state(struct intel_display *display)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	for_each_dpll(display, pll, i)
> > @@ -4548,7 +4548,7 @@ void intel_dpll_readout_hw_state(struct
> intel_display *display)
> >  }
> >
> >  static void sanitize_dpll_state(struct intel_display *display,
> > -				struct intel_shared_dpll *pll)
> > +				struct intel_dpll_global *pll)
> >  {
> >  	if (!pll->on)
> >  		return;
> > @@ -4567,7 +4567,7 @@ static void sanitize_dpll_state(struct intel_disp=
lay
> *display,
> >
> >  void intel_dpll_sanitize_state(struct intel_display *display)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	intel_cx0_pll_power_save_wa(display);
> > @@ -4624,7 +4624,7 @@ bool intel_dpll_compare_hw_state(struct
> intel_display *display,
> >
> >  static void
> >  verify_single_dpll_state(struct intel_display *display,
> > -			 struct intel_shared_dpll *pll,
> > +			 struct intel_dpll_global *pll,
> >  			 struct intel_crtc *crtc,
> >  			 const struct intel_crtc_state *new_crtc_state)
> >  {
> > @@ -4677,8 +4677,8 @@ verify_single_dpll_state(struct intel_display
> *display,
> >  				 pll->info->name);
> >  }
> >
> > -static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
> > -			      const struct intel_shared_dpll *new_pll)
> > +static bool has_alt_port_dpll(const struct intel_dpll_global *old_pll,
> > +			      const struct intel_dpll_global *new_pll)
> >  {
> >  	return old_pll && new_pll && old_pll !=3D new_pll &&
> >  		(old_pll->info->is_alt_port_dpll || new_pll->info-
> >is_alt_port_dpll);
> > @@ -4693,22 +4693,22 @@ void intel_shared_dpll_state_verify(struct
> intel_atomic_state *state,
> >  	const struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >
> > -	if (new_crtc_state->shared_dpll)
> > -		verify_single_dpll_state(display, new_crtc_state->shared_dpll,
> > +	if (new_crtc_state->dpll_global)
> > +		verify_single_dpll_state(display, new_crtc_state->dpll_global,
> >  					 crtc, new_crtc_state);
> >
> > -	if (old_crtc_state->shared_dpll &&
> > -	    old_crtc_state->shared_dpll !=3D new_crtc_state->shared_dpll) {
> > +	if (old_crtc_state->dpll_global &&
> > +	    old_crtc_state->dpll_global !=3D new_crtc_state->dpll_global) {
> >  		u8 pipe_mask =3D BIT(crtc->pipe);
> > -		struct intel_shared_dpll *pll =3D old_crtc_state->shared_dpll;
> > +		struct intel_dpll_global *pll =3D old_crtc_state->dpll_global;
> >
> >  		INTEL_DISPLAY_STATE_WARN(display, pll->active_mask &
> pipe_mask,
> >  					 "%s: pll active mismatch (didn't expect
> pipe %c in active mask (0x%x))\n",
> >  					 pll->info->name, pipe_name(crtc-
> >pipe), pll->active_mask);
> >
> >  		/* TC ports have both MG/TC and TBT PLL referenced
> simultaneously */
> > -		INTEL_DISPLAY_STATE_WARN(display,
> !has_alt_port_dpll(old_crtc_state->shared_dpll,
> > -
> new_crtc_state->shared_dpll) &&
> > +		INTEL_DISPLAY_STATE_WARN(display,
> !has_alt_port_dpll(old_crtc_state->dpll_global,
> > +
> new_crtc_state->dpll_global) &&
> >  					 pll->state.pipe_mask & pipe_mask,
> >  					 "%s: pll enabled crtcs mismatch
> (found pipe %c in enabled mask (0x%x))\n",
> >  					 pll->info->name, pipe_name(crtc-
> >pipe), pll->state.pipe_mask);
> > @@ -4718,7 +4718,7 @@ void intel_shared_dpll_state_verify(struct
> intel_atomic_state *state,
> >  void intel_shared_dpll_verify_disabled(struct intel_atomic_state *stat=
e)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >
> >  	for_each_dpll(display, pll, i)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 2080118be523..bd52e30d83bd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -31,8 +31,8 @@
> >  #include "intel_wakeref.h"
> >
> >  #define for_each_dpll(__display, __pll, __i) \
> > -	for ((__i) =3D 0; (__i) < (__display)->dpll.num_shared_dpll && \
> > -		     ((__pll) =3D &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
> > +	for ((__i) =3D 0; (__i) < (__display)->dpll.num_dpll_global && \
> > +		     ((__pll) =3D &(__display)->dpll.dpll_globals[(__i)]) ; (__i)++)
> >
> >  enum tc_port;
> >  struct drm_printer;
> > @@ -344,9 +344,9 @@ struct dpll_info {
> >  };
> >
> >  /**
> > - * struct intel_shared_dpll - display PLL with tracked state and users
> > + * struct intel_dpll_global - display PLL with tracked state and users
> >   */
> > -struct intel_shared_dpll {
> > +struct intel_dpll_global {
> >  	/**
> >  	 * @state:
> >  	 *
> > @@ -388,11 +388,11 @@ struct intel_shared_dpll {
> >  #define SKL_DPLL3 3
> >
> >  /* shared dpll functions */
> > -struct intel_shared_dpll *
> > +struct intel_dpll_global *
> >  intel_get_shared_dpll_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id);
> >  void assert_shared_dpll(struct intel_display *display,
> > -			struct intel_shared_dpll *pll,
> > +			struct intel_dpll_global *pll,
> >  			bool state);
> >  #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true=
)
> >  #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, fal=
se)
> > @@ -405,7 +405,7 @@ int intel_reserve_shared_dplls(struct
> intel_atomic_state *state,
> >  void intel_release_shared_dplls(struct intel_atomic_state *state,
> >  				struct intel_crtc *crtc);
> >  void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > -					const struct intel_shared_dpll *pll,
> > +					const struct intel_dpll_global *pll,
> >  					struct intel_dpll_state
> *shared_dpll_state);
> >  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
> >  			      enum icl_port_dpll_id port_dpll_id);
> > @@ -413,10 +413,10 @@ void intel_update_active_dpll(struct
> intel_atomic_state *state,
> >  			      struct intel_crtc *crtc,
> >  			      struct intel_encoder *encoder);
> >  int intel_dpll_get_freq(struct intel_display *display,
> > -			const struct intel_shared_dpll *pll,
> > +			const struct intel_dpll_global *pll,
> >  			const struct intel_dpll_hw_state *dpll_hw_state);
> >  bool intel_dpll_get_hw_state(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_global *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state);
> >  void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_stat=
e);
> >  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_sta=
te);
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> b/drivers/gpu/drm/i915/display/intel_fdi.c
> > index 40deee0769ae..acc0b45eced0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> > @@ -911,7 +911,7 @@ void hsw_fdi_link_train(struct intel_encoder
> *encoder,
> >  	intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> >
> >  	/* Configure Port Clock Select */
> > -	drm_WARN_ON(display->drm, crtc_state->shared_dpll->info->id !=3D
> DPLL_ID_SPLL);
> > +	drm_WARN_ON(display->drm, crtc_state->dpll_global->info->id !=3D
> DPLL_ID_SPLL);
> >  	intel_ddi_enable_clock(encoder, crtc_state);
> >
> >  	/* Start the training iterating through available voltages and emphas=
is,
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index 89d26913e253..bc8725aa99da 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -251,7 +251,7 @@ static void intel_pre_enable_lvds(struct
> intel_atomic_state *state,
> >
> >  	if (HAS_PCH_SPLIT(i915)) {
> >  		assert_fdi_rx_pll_disabled(display, pipe);
> > -		assert_shared_dpll_disabled(display, crtc_state->shared_dpll);
> > +		assert_shared_dpll_disabled(display, crtc_state->dpll_global);
> >  	} else {
> >  		assert_pll_disabled(display, pipe);
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 3cc915739677..427eff400b53 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -91,10 +91,10 @@ static void intel_crtc_disable_noatomic_begin(struc=
t
> intel_crtc *crtc,
> >  	crtc->active =3D false;
> >  	crtc->base.enabled =3D false;
> >
> > -	if (crtc_state->shared_dpll)
> > +	if (crtc_state->dpll_global)
> >  		intel_unreference_shared_dpll_crtc(crtc,
> > -						   crtc_state->shared_dpll,
> > -						   &crtc_state->shared_dpll-
> >state);
> > +						   crtc_state->dpll_global,
> > +						   &crtc_state->dpll_global-
> >state);
> >  }
> >
> >  static void set_encoder_for_connector(struct intel_connector *connecto=
r,
> > @@ -568,7 +568,7 @@ static bool has_bogus_dpll_config(const struct
> intel_crtc_state *crtc_state)
> >  	 */
> >  	return IS_SANDYBRIDGE(i915) &&
> >  		crtc_state->hw.active &&
> > -		crtc_state->shared_dpll &&
> > +		crtc_state->dpll_global &&
> >  		crtc_state->port_clock =3D=3D 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > index b909ed18a5b2..57303ecb77ad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > @@ -255,7 +255,7 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
> >  	u32 val, pipeconf_val;
> >
> >  	/* Make sure PCH DPLL is enabled */
> > -	assert_shared_dpll_enabled(display, crtc_state->shared_dpll);
> > +	assert_shared_dpll_enabled(display, crtc_state->dpll_global);
> >
> >  	/* FDI must be feeding us bits for PCH ports */
> >  	assert_fdi_tx_enabled(display, pipe);
> > @@ -387,7 +387,7 @@ void ilk_pch_enable(struct intel_atomic_state *stat=
e,
> >  		temp =3D intel_de_read(display, PCH_DPLL_SEL);
> >  		temp |=3D TRANS_DPLL_ENABLE(pipe);
> >  		sel =3D TRANS_DPLLB_SEL(pipe);
> > -		if (crtc_state->shared_dpll =3D=3D
> > +		if (crtc_state->dpll_global =3D=3D
> >  		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
> >  			temp |=3D sel;
> >  		else
> > @@ -504,7 +504,7 @@ void ilk_pch_get_config(struct intel_crtc_state
> *crtc_state)
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	enum pipe pipe =3D crtc->pipe;
> >  	enum intel_dpll_id pll_id;
> >  	bool pll_active;
> > @@ -536,8 +536,8 @@ void ilk_pch_get_config(struct intel_crtc_state
> *crtc_state)
> >  			pll_id =3D DPLL_ID_PCH_PLL_A;
> >  	}
> >
> > -	crtc_state->shared_dpll =3D intel_get_shared_dpll_by_id(display, pll_=
id);
> > -	pll =3D crtc_state->shared_dpll;
> > +	crtc_state->dpll_global =3D intel_get_shared_dpll_by_id(display, pll_=
id);
> > +	pll =3D crtc_state->dpll_global;
> >
> >  	pll_active =3D intel_dpll_get_hw_state(display, pll,
> >  					     &crtc_state->dpll_hw_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > index 611f3b8dffef..24e050d00db9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > @@ -500,7 +500,7 @@ static void ilk_init_pch_refclk(struct intel_displa=
y
> *display)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> >  	struct intel_encoder *encoder;
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll_global *pll;
> >  	int i;
> >  	u32 val, final;
> >  	bool has_lvds =3D false;
>=20
> --
> Jani Nikula, Intel
