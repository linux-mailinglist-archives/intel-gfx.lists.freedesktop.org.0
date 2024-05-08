Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CF38BF4DF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 05:15:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E75911243C;
	Wed,  8 May 2024 03:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ks1t+Wro";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F72611243C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715138133; x=1746674133;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dej7mpdbh+TeysZLiV9PTskEgPGtDBndOtYJCHLCfzE=;
 b=ks1t+WrofaoNbzzi61vv5nGx6n7DwmuOFwDr380lmaF+5Zp93QD4YYpe
 xmMVK2tQLnibTJWCZqso0bJNW9XovUpEk81zAeMZfdgbuV2/Zwm6mAOAh
 frvVt6IR06pKoyKxognrOVaMGanS+U1Xy7tR8k2szFMkNMvDNmL89TkMU
 /s+NPN47v4tao9KbEQwY7UpmH1OKEaG2gz8ylakyNplS9cImEDZ8JZj0r
 z5ZbLOW+pK92c1YyC1hTW6XjPoZiMCqwPjrQtdAXPCWWdTVpeJQwPjGXV
 vzAkkpvd68fIli16lFSB8c/FyclOKq9SK+WG/pHC7MhS1ASk8y/pXfPPT w==;
X-CSE-ConnectionGUID: mvXnGErjSfWAq+O5qBQEJA==
X-CSE-MsgGUID: CeBWDKa4RoucaLChDaO10g==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="11420688"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="11420688"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 20:15:32 -0700
X-CSE-ConnectionGUID: pJz7tFG/SoiVNwR6547OVA==
X-CSE-MsgGUID: RuDdZMp2T/ari9ycgde7pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="66163222"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 20:15:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 20:15:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 20:15:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 20:15:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCDzIbS+LC1ETHJd6Z5c1HGuuyRHWIm7FjhSf2dQKNYTlfx5IW2cBQGYkyd9gL3YBZwDwzq5zeUAMRT8kGTQH678ON/flZHtO0jfYCrCmnZswUFwfGD7sItCz/AexCzvsqdGfWOdN0penrWn93ttdOkJnu19imWEGsWEsEBNUlXNqyt9qAdvg7Nnd5fOZS6wNOy0S+FYjtdsROZySVPtCpv6uEYSMV5FyBwcu7urZK3NapLKnGlm464AR9uXYk3l+Uvy1PsCwpO+pZQXksw+i+UFZhzT5MWowwHta8WXVrfs1pkjIJO6ixpfuNcHgFo9w6ATEjqDPpDEGj6h4EPfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJzGy63aqWo5vTpLmDehaB83NVHu7I3rvAoL9gyFAW0=;
 b=jcjp1zMg1CRUvi3B2Ult8TKT9iEjg94XQLemG78lt2tmR4w1Ij7IL0xqdGs+K8HRwYmluWc3RnCXTdLSFEkfVDKKBOPq31MjKC5B1pnq5hM+IkQryQxoNDIkVsAuXd2SqmavmYsnPqZ0OABIPQToM1Mj40WrGiIj2NrHBnJogjG7aUnd/Cy3bWcdHltcfTtS1OZKvxmwl/jPgvft67OCnlEgTLMnv0qhsJqBAhsWkj+ZcnKXJK7puMneLc0N8Ex7bV8th/wKxYppHpD1ypdtZ1zezIzLtPbL7lSrlXi+34nt45l7Oym8+SEDHcfVWGGoZnsGTnaxBp5Y3LlFCynEYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB6838.namprd11.prod.outlook.com (2603:10b6:303:213::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 8 May
 2024 03:15:29 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 03:15:29 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Topic: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Index: AQHan5YSD3Ayhk4uokappAeuaODKUrGKHESAgAAAclCAAAPJAIACjBPQ
Date: Wed, 8 May 2024 03:15:29 +0000
Message-ID: <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
In-Reply-To: <ZjjLJEyQJDddXcaq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MW4PR11MB6838:EE_
x-ms-office365-filtering-correlation-id: 6d066bfb-dcc5-460f-313b-08dc6f0d1d30
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?iQ1ZMYfNaUTuVDCX8o5GuAyarS2ybBd2qHgWHbWu2J8GgLfI4y4PkKx7uB?=
 =?iso-8859-1?Q?a1vdFpj9YSfIUjAysIm7PXJu38ENWBKgpvh41fjBVIGjFHC8FlTb8jRgPE?=
 =?iso-8859-1?Q?mtDcekOl3V7Mt4r6SReES8++zpkpms3haNOO05LzXRUfUt+p4HlFHZcmFK?=
 =?iso-8859-1?Q?fOEl91MRSuuHcrm105F3uypNxHvfZkZlLoe+hFKC74Rl10BU0iBaen+pBd?=
 =?iso-8859-1?Q?sAnGQTaKbEKF2OOn7Z7EUcd4rkXImMIQ8Njc/7FM8plSJylqpypokvJJLF?=
 =?iso-8859-1?Q?7lUVfnqemJQMhE/SfFFJpwvLJWLRfYKt98isW+fi7Otc4kL/bhRNWnY51V?=
 =?iso-8859-1?Q?dHpiU6LVvtQfqPCpOg05vcUKhdWI47s06HV+uQ8mHhSUELDQ1rHX/kLWmJ?=
 =?iso-8859-1?Q?xNbWqAdQDgpAEaVrkB7o9ASAHrZFyYzrDWcNviTp3+cdt5qHkSAxhS6BQO?=
 =?iso-8859-1?Q?AxWDWVpbrbneXy6AP9nZODTEhX6dmrEtFNY8i+/QDnhRRsNNVT0Zv2hGJ6?=
 =?iso-8859-1?Q?v37HYjFAzIQ1eltpQ1p5U5Ps6l8ZqiJ0ptjwjfZuKvOco+slOrWUF4Qgag?=
 =?iso-8859-1?Q?tlUj8BAG8c3JIeLojhWJcX47E2dOWhA+063OfUpA15FlwjRQbik9keNLVm?=
 =?iso-8859-1?Q?p7tKgr026dUwWq7Gl28XPtjH4EMsokLmiMQ+azM9h0En4tRkiGMTq1Xz+u?=
 =?iso-8859-1?Q?lkr09oWpU0I0rbpgCALTIZB6IHWkbtes3UI4SK+6k6az6pRoWXKIhrmGZC?=
 =?iso-8859-1?Q?yN4kFVpvM1ilbT6Xa5cSTti3w69Lx/7iMsPfNWhVqproLTCLoDUimLz2ow?=
 =?iso-8859-1?Q?2IC0jbnB2ILf4axV/q7Z3himfVT54CUKCKmkEjW4ShoevQpMkQplQ5k1WX?=
 =?iso-8859-1?Q?M3z7WYboMnbA7NWWAwWno7ndc/PH7WdmtJbhP/RmvQJpEmeqT8PXH5oYZT?=
 =?iso-8859-1?Q?lyFnG63+of69mksz/v+5McYe2sK0/y3xVIyy5X2qBitRnIaeH5ydfD5Atq?=
 =?iso-8859-1?Q?K9ubM47BcNKfJet90iqpnnJ9C8N7Oe9SlG0IKtlzHeiCL3RljTc2/EbRtt?=
 =?iso-8859-1?Q?qjgng6C6jwnkPMNzqn8M8v2RZiHHJr/iLjV6sgyMNZD9MCCJd/0yhLVrH0?=
 =?iso-8859-1?Q?k3WSI/epq0em/RzdKm9y3wi1ScXQCNAMLaUfUmNGhfk7z6HN69shS8ie4L?=
 =?iso-8859-1?Q?+G1YDrT93THWxTKS0pgg+9OGgOIHW8Xoau7eRUzPX/k/1YhewjTo50JYr8?=
 =?iso-8859-1?Q?MC90fljd8hQJFO11cHynUicsrAOfmb6TlvBhqn8Ld/SpbCV5NTy82EeovT?=
 =?iso-8859-1?Q?E/YObv+bJY2q5YFbeN5LXdmkJXglPYkGlmuMWcgkaqXDUixhBEXn++MuUY?=
 =?iso-8859-1?Q?O9fhiYgZ4qG/3EtNrcRQZhUJEAF39npg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?VPu2SNf7crNvGfTYcmNBgQUzM/hJTsT4pzE/h0aQAk8xZ9yUcxui9TgFxl?=
 =?iso-8859-1?Q?SmRtrkdTT4rRVnXhuNEe8akZZiRHPB7rU26CWyYnhsJkOqXwzpJArpM9A5?=
 =?iso-8859-1?Q?a9ajvgtSgX4l8qtiHcWkqBaNrwsR8gjHPrxeg5QqYlLj4IfwFEql7md91C?=
 =?iso-8859-1?Q?WfE5LywAjFDhrOXvuFbC824MSCJcOo6Z+a5CFAunOgRVkPzN7LxPtWc6jB?=
 =?iso-8859-1?Q?rDCw8WCVqloRK6PpA4Q8fRT/td8JhY+kbL/bxrmti42r99O5Tgjs0m+tfl?=
 =?iso-8859-1?Q?gJwhGarjoXQ41QWvErXY+9uEWp/9d6gpAoOSYUVqOV0NX8zKkPmqEAC/Wq?=
 =?iso-8859-1?Q?o1On8CmvmTs5moL9rWRSDe1gdQBXyVy9p9VpERnM5vW9Xh8jDdzAV+cuFz?=
 =?iso-8859-1?Q?sG8XEdaACXX1SHgggoCgsHU0t/MDHwMr+h40MSJ2KhJ1G54ajO15rRn1K9?=
 =?iso-8859-1?Q?hTfSyq4ckNd/ZcCxdogydUNEXYBBblTwhS2m3OMxl6zyMGT62s2+3OJeX2?=
 =?iso-8859-1?Q?oXAnxQOJWxfoQGxFE9sH0/ElRcnZaDk2u3zd8Bh1lUwo0f9/01ocu3sxUq?=
 =?iso-8859-1?Q?Vd0XdyLzUOaAJNqba3E3JORKoscRdDdWppUdsP2xMwShDvJOzJEXM/Qgei?=
 =?iso-8859-1?Q?6vxWeE+tMagsERjit8EqfCj3mQVOPbYdbUly1CxHAZeQ+yyDHfaBWQuTY0?=
 =?iso-8859-1?Q?c5wj0BP53dSXTH+nhScBCTOxU07YoSjIUjUjudbRHZ3nFGJUGJRS+W9WOy?=
 =?iso-8859-1?Q?PcIrxQ8MhunLlNQK7vtQL5PLAOlRpPJ/SrEgOggXzAxXuLUhNS49epzRp5?=
 =?iso-8859-1?Q?75cS22ryvTmgQ4K6DmA73YnQUsh3d1c4e1nWKRcyLBzLsjwOxmnBTtJ7k2?=
 =?iso-8859-1?Q?JnPzLBQRwCUWrvcgCpLpmYNka4uB5heq198Aq0R+VDmqtFyKnd4jQQ0zjw?=
 =?iso-8859-1?Q?BhJuhQKHMJhhLBePSbIa7dLYMkgsZYayGTen9qlou4KBIK/dxEAEVC7A65?=
 =?iso-8859-1?Q?L1SsaQI7XhXTCH1rvKBYwrjmqhNFNXwnKx2lj40+Ys5km0HEGMmhd4zvPg?=
 =?iso-8859-1?Q?+hyzl8DNq76r/ufKd/58Yt9hZnmCt9q2HdtSrSfBNGvn3Yh9QEfr8Pjo8S?=
 =?iso-8859-1?Q?kwmtNHAXsXm3a4byC6mCryHxfhqPY7URFQSuhI9MWcl4dI6ta/NsBdIn0r?=
 =?iso-8859-1?Q?Tm1XqTPJ8g94AbZCKOOUrh+nX1Fy5lVnz0BfBN9KQrUtK4t+8JJ3gp7/8w?=
 =?iso-8859-1?Q?TqH8FoBikvmcD9uGwFB9dwX4TaWXSCWYAd6W/kRxMZTgBp/HkZxEMuc8OB?=
 =?iso-8859-1?Q?h8wuw5OgqJEQyNJ4xAG6gKn5pDU4k+qRBeXJOpvzSKPMTRioZxXloBuH/p?=
 =?iso-8859-1?Q?yFuONuTtub7mOhKzKjfY2ZNOkVRVcyaMomm1YL/4R138YBDWc6CbC1iJHf?=
 =?iso-8859-1?Q?C88gZSxpuwIKu2DwQy/ZgFPyDKy2xyuzKlYCjaOpseRzocNgEiFpO3OSko?=
 =?iso-8859-1?Q?DD3xzQPgTyBxPwtAUeTWCq3yFRWIUEn0vIYTFZZhc8LVrIDWPiUAJoe5sj?=
 =?iso-8859-1?Q?Q1Z9P9ckN+vS/lGa1VcUKqvOn/TZDjpXJXggPlJkTizC6C8cQZxcy+YLvt?=
 =?iso-8859-1?Q?NndgtBEsqnYLlVmUIVykCZ5W3vU+Ma56yj?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d066bfb-dcc5-460f-313b-08dc6f0d1d30
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 03:15:29.4142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k4KHkISHB4wV3iSKAkUF++EBxexQ2c0LhkRL+3TCI0TdCLcx0E6KGyyyoe8a0nnym+bd0SM4ByD2sd1L0hkdKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6838
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, May 6, 2024 5:51 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
>=20
> On Mon, May 06, 2024 at 12:15:13PM +0000, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Monday, May 6, 2024 5:36 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > <jani.nikula@intel.com>
> > > Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
> > >
> > > On Mon, May 06, 2024 at 02:36:25PM +0530, Arun R Murthy wrote:
> > > > UHBR13.5 is not supported in icl+ as well. This has been removed
> > > > for mtl by the commit caf3d748f646 ("drm/i915/dp: Remove support
> > > > for
> > > > UHBR13.5")
> > >
> > > icl/tgl/adl don't support UHBR at all. The numbers are there for dg2
> > > presumably, which I think does support this.
> > As per the recommendation from hardware team this is not supported on
> DG2 and MTL.
>=20
> That is not what bspec says.
>=20
This is the limitation from the retimer hardware.

Thanks and Regards,
Arun R Murthy
-------------------
> >
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> > >
> > > >
> > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 163da48bc406..7098ca65701f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -507,7 +507,7 @@ intel_dp_set_source_rates(struct intel_dp
> *intel_dp)
> > > >  	};
> > > >  	static const int icl_rates[] =3D {
> > > >  		162000, 216000, 270000, 324000, 432000, 540000, 648000,
> > > 810000,
> > > > -		1000000, 1350000,
> > > > +		1000000,
> > > >  	};
> > > >  	static const int bxt_rates[] =3D {
> > > >  		162000, 216000, 243000, 270000, 324000, 432000, 540000
> > > > --
> > > > 2.25.1
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
