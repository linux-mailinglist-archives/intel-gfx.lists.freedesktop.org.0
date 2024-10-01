Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E2B98BF27
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 16:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6AA10E62C;
	Tue,  1 Oct 2024 14:10:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bb9574yb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F50510E62C
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 14:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727791822; x=1759327822;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Q/K5/MUaweUU1utk+yA7Aw2AJOQVYdWX2b/EStySEc=;
 b=bb9574ybGyL329iy0PSEmJO8b9eRCCEmMgeExPYmBYT5RaKpYfkz/u7w
 flvToBG3NQYTrKigJgsLKyMUnziV90lz7BVi7fbzDF6GQhSfkWvQp5LQx
 BLLXBoS5gkOGrckC9nPg7U294jnTFjSkOTyVbm6jimMnaKCi21IiDI1P5
 gCpvPvF68/PX5eVDNY6NdsoEDB0KDWf4n1+bBBQ2hHYhh3V6KMTOGfbMJ
 oHKjhKXQo9aKYexR/IEu7i6X3BSBS5DdX+3zJhAfTj2OD6uQbJC3HqZGT
 qzDbrvmQiXS1hLK0uiuThGGsrO5S35xU3aklHV3+B8yFRJbpv9frDbAr+ A==;
X-CSE-ConnectionGUID: LxGiCiiGQgGnm34D1Fy1tQ==
X-CSE-MsgGUID: oyv4J8wPRI65T580aWjrNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26805818"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="26805818"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 07:10:21 -0700
X-CSE-ConnectionGUID: Fu1Td7LhRtWnIwcF0Et09Q==
X-CSE-MsgGUID: u4N4HBeERXCcC60AvvTrAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73293893"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 07:10:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 07:10:20 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 07:10:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 07:10:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 07:10:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L42wA0ZvWHnz79OJfUNoXaFZ6a0GTfyN8/wUH7Q8aC4KwBO/f9rZYJ/mhBMD8WOuuz2+IEjtsgA/sMJNyt2xAhktHr9W8/BarUG07tJ+HOUVgJUskkcLyDt3iTHTPYdIeyRR9UJrp6rWfpoP4BnZyhuMXJFW8pGhjptUSu/C4Z+S8FBvCYQKg2t2/CcEsmaZ66uc4wXg0rxnEnJpplkb8+rAidiAMQvZl7qI8Z3tILQ5KOvzquQHvdsNaLLGjKmvXfKANsmwY7qqJTCJQWwg9jaWQ2Di4uuItl2gTMMq2fBtkE4ULDkYAcVDtl85FD1ZQwYI3VJvyV8TwANEIiz6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yq5OijaLMHsKm8TmbQJ/G+4JSDBRyBiyWCqIevCTFyQ=;
 b=M9JPDMFgkQn9jwr3kkqe6jsnwLTaPCn3/f1UkEvkFcT9ZfcmIGHtYtPR48n2X+WMl9sU9VLFcvUoNG5ExLTS5u8C3TLUROQctl1mtXopCU+DTKJnjPoSykpYh1SqNUgmZ1FIVgi35LXD8m+w6T/jJwvhmab6BrAIlsrubEr9Nmh0PRLK1u7vPCiOSJAPMXhJay4QEYUtXUGRveCfRxPgHw6aJtdtXzz0S+9jf3c1VD7m8QbWLlZo8D6dKo2h94xTgVUBXrhp9Su6JBB5nOriRzWRXZhjNQJ3c5SM8nntZJ8lYzyZJ85IgmvoAMSNZXkr0Cz8N89b+d4/U2a8Bw8jLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY5PR11MB6535.namprd11.prod.outlook.com (2603:10b6:930:41::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 14:10:04 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 14:10:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Topic: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Index: AQHbFAg7z5mIUVuLxE2bC8+lFa46i7Jx7jEA
Date: Tue, 1 Oct 2024 14:10:04 +0000
Message-ID: <CH0PR11MB544406EF3033E87D334A8FE4E5772@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-3-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241001134703.1128487-3-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY5PR11MB6535:EE_
x-ms-office365-filtering-correlation-id: 7efa95d0-a2e9-4fb3-ce92-08dce222bf02
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bWKXfy/eMHSd7Bk9diJy+IKTmCNyYPikgHQ/JgCRrrHKdhGzeRfSZjpq97mY?=
 =?us-ascii?Q?4nCZ8tGlCpgG2jUiHg+pQY+7UH0JYQTP8VJ/R/re3lYcCceZFcL+6QNi4o6x?=
 =?us-ascii?Q?fcNGVZ24cxBtZEuHSrdhTdM+92D0w4nNeEg8bOggpiBzwQFgUISO1Xxvh412?=
 =?us-ascii?Q?drpvFg7vMKrq9E4NHxCs+CMdW6pRE1N+8LOVZObrcbS9/JXNwAJ3f6tDe+yt?=
 =?us-ascii?Q?BY0yc2Z0iDN55iARrZI4rGG3ZBre7+Rf4ItwQk7ddoMwRJiOAB/1X6lnbxBv?=
 =?us-ascii?Q?Q6a49UU0b72ZepJsVjs5QgFoH4l3dbzJpiirABJBqE1CAQsXQHHvE1HAYpr+?=
 =?us-ascii?Q?JeX2Cq9Y/7GFFU4uaCdtz5+NK0d+XAj4LlwQvtSMXYyD6U5SgqaQsoGBgSVT?=
 =?us-ascii?Q?U78RQNzuuyDILEiTXRh3uDoy1gOL9a4898Jz2bor4ft/KGFb+vgKpfTxUh9l?=
 =?us-ascii?Q?LxZgfO14XWrmLgZRlwH2XQjQbRWg2OMnE4G8BjuM1/CXFfU8rdiEZaCw2gKN?=
 =?us-ascii?Q?8DNiC62HzDs2qnUaPUyydKEmgppU13kpNdLUSS7nahMYq2axmhlhMW4cFm2X?=
 =?us-ascii?Q?dShdq1RW9NH5w/EcMu3bLDJgEcPORZrK1sR1FH596lETCE5lCNXuPKSTzUBz?=
 =?us-ascii?Q?hQYa7KDnj+TZy+75m9ygMFgY4fWYcgbIipzzEEIPkwYcFA3vEkFCdpGL6oV5?=
 =?us-ascii?Q?sHfGGQfwefcUx1Pu/1fDROC1SjoQIxSfH1h3Keb79E579YhHmz1oxof+ry6+?=
 =?us-ascii?Q?oyCZA4sKZ97CHbikjyxYC86dOCnuaZcolPRtSlaHhE6rXfNZUqWmfVFyHIJ3?=
 =?us-ascii?Q?XWclaACQRASLwO0XhFCZEidgY+SPr+ViZlvEtQYZkRfSWrDE0WsqVkVvYXJY?=
 =?us-ascii?Q?luaxkqgwOyvwjzz9oOHw8jHuI+lzmZTBtkar4qwb/Qn5kg8h/2lpym4pxNsP?=
 =?us-ascii?Q?g1ScphgXlklY79qJb1NbHlSiX3b2wyI1+1RQ8+qI74sk+2qqi5w+VPwsVi1J?=
 =?us-ascii?Q?/pV3Q/A64Byh3IMRjN8uDqelzlGiz/bqg2egBxyqJ3u7HNPKvOz3oNPPmt/R?=
 =?us-ascii?Q?UPP7b7gVF7b3azx0CgK5cX6r9IdeHuzWWeagMwt3KKRa7WVApLm/lruE+ena?=
 =?us-ascii?Q?nU1Gf8xXgvcqV2UJxaDMYZMT/C3/JsWrrOMb8XZwFK5lzQoYjWsY4C6ooxoZ?=
 =?us-ascii?Q?QJ90qYozldQj21cR6mgM1ypbHTgn/Z1LWO2xtT9riXgTdB17pqiH5TLLxtWW?=
 =?us-ascii?Q?5oW73G8s6hS6DPh5us4URFR+bGR5lwdHn3oGf5z1uDYVsFS8MjOlhDOhNe6X?=
 =?us-ascii?Q?YyhEL5i41rp2BDOLs0EqIsdRwaFdES7lv/Wj6+SHfYCv8Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yx60qYfE5wG1AjPMpGM5LsDrxwTkpSDn97fFwICPQR894K/VTo4g1TeUuAWm?=
 =?us-ascii?Q?8vR+2MjU4TZAPH5AQIW3/aBixHxC7TBQuxHeG+KU8ooTk25t6DhrfTB5dbWE?=
 =?us-ascii?Q?MD6BTuywVmljMuLoPuG21yO+7NKPhZNYkrsQhEI+8fnIetBiBgW7eoAGvxEp?=
 =?us-ascii?Q?DpTWvhdWohxAzYOZNfqcSq6Na2vsSgVsCby1J3A2yBfk56fPS3gF5vWqgITB?=
 =?us-ascii?Q?JhwWb6V6oh4pyw+qr0ks10kkw9ZBrwsDidybZw0BLsjk38uL2+BA2/ZsQ4fx?=
 =?us-ascii?Q?eT9I8HvJ/8e4Fr3ZUoaibSsRItA9/Xf8q2sDVwF9Rd0Ks13tPY09Je+aWtJR?=
 =?us-ascii?Q?EuYgnceVMY8ef49X7En31GeaO9P9d83CKLE/e2BkHKD/m1k/h0MBwP5x86mj?=
 =?us-ascii?Q?s+Vlhwrs1IEG5ffhIFAXov6wMVEXNhtofHtE7VDB1N5utrB6OKZ3UwULJsLP?=
 =?us-ascii?Q?BOGEjBOG2u9SGdBSNdQjc0sz4Lc42k8ilBB5ekJiF53VKZdVOg6nj6fWbSTZ?=
 =?us-ascii?Q?d7QFAyKAwRLfCq84QRPXyfSiLjx4UKzkmchInTbeOjBgdp9CbLLfQjwZGKnx?=
 =?us-ascii?Q?DEOhBkf9z+UTdL5x59MvkuHnj4eXvRsVPth5IFCMJcgsgLdfPDoHKWkyDt+8?=
 =?us-ascii?Q?g9KrNPWdlMlywnUW4M6YFUQU8IFpLXEyuz62ASEM3VDt7xUXwvHFrZ4NZk/0?=
 =?us-ascii?Q?QKBKKAAx7js7qEcA266ZDeNM5jCTBcPOYjpHinkJNMbcNk3fxyyfSfmXiHu5?=
 =?us-ascii?Q?/55xmaP38uw6q6HjrTrjbp5CugOWarPm6CCEK/AC1Tjqi2watMSSKaceu+w+?=
 =?us-ascii?Q?jA5gpe88lFcubhckGiOLlayoR46aaC2wqBZvwxOrGknY6o5e0EtDbZN9/Zcu?=
 =?us-ascii?Q?+oaiR1JAPh71rJTmMHbYK2cajvD2RaWH5K6D6diu2HnYd/8tCd4dBeOI+A23?=
 =?us-ascii?Q?jHuOP1694E0yRWbzD4Ebc+VUcPrspiGlYBMKzAwOPgj2BmnIgH/k7ZWLGw1X?=
 =?us-ascii?Q?rkTTp9eQrsy5V0dnHjEpUEth7bD6FCA26Il6c0AaF7VmEBurlohWgDWkPWAV?=
 =?us-ascii?Q?hy3aIuHA7DvmAP3v+piVZpipsms45TwPbRNR9Zte5Hx6wZmEcpQED3Uhokil?=
 =?us-ascii?Q?FEgNMw9MDyGt4bcrk+8ZVRrOOTfdgQgmo2nO5TrlzaVuUdz1P6Vtu2m7UE+1?=
 =?us-ascii?Q?X1663qr2/qZXfgo6o4WxUHr2nvkiEx58v1vF1BClxCPDBwUZsbvZAJndONDV?=
 =?us-ascii?Q?OxwHVyxAg+YBEhD+D7UwSsF7Thq9kPwojnbu+btj2BRAJ6chW5sp5TGkYoaA?=
 =?us-ascii?Q?DrwqU670TeL21YEfkVeXx9hI9gCCxH/XkqBfXuyG0sbpLS3zKNrfKqO1/Hsz?=
 =?us-ascii?Q?NkV1DOmK8cHb+I/qUDaV8FNnVLgIcPPuE2rYfBlParXDM3U4l3GlTzhBdzTa?=
 =?us-ascii?Q?T6941DWGoVPM/0ENLtDshxiZSr6li4TNhPdJCTxQZmH4D5uybHIE/Lyr6dbe?=
 =?us-ascii?Q?2IirpwERsPmESCw5MFA6G1GaZ1whu6cVINbB54IPbT3fUzRWt7SFzHW9zl/5?=
 =?us-ascii?Q?un0PQ9eDas10yuhXe6xUR8KxpJ1DyaTXfqcty8VJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7efa95d0-a2e9-4fb3-ce92-08dce222bf02
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2024 14:10:04.0992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EMEeWeNDUe5aVHsw3REpLST56Kt4cXJi/KuQOJ2XaXourIyW1wW8krgMU2B05iJARya5GzhqUjGzhqHei0GH+D4avdz5yXKEUK6tA/GHvJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6535
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mitu=
l Golani
Sent: Tuesday, October 1, 2024 6:47 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@int=
el.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma <uma.=
shankar@intel.com>
Subject: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two phas=
es
>=20
> From: Animesh Manna <animesh.manna@intel.com>
>=20
> As vrr guardband calculation is dependent on modified
> vblank start so better to compute late after all
> vblank adjustement.
>=20
> v1: Initial version.
> v2: Split in a separate patch from panel-replay workaround. [Ankit]
> v3: Add a function for late vrr related computation. [Ville]
> v4: Use flipline instead of vrr.enable and some cosmetic changes. [Ville]
> v5: Use intel_vrr_possible helper.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++----
>  drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
>  3 files changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f7667931f9d9..c59d7bffbf57 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4836,6 +4836,8 @@ intel_modeset_pipe_config_late(struct intel_atomic_=
state *state,
>  	struct drm_connector *connector;
>  	int i;
> =20
> +	intel_vrr_compute_config_late(crtc_state);
> +
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
>  		struct intel_encoder *encoder =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 79db30e31324..734db543b90c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -244,11 +244,16 @@ intel_vrr_compute_config(struct intel_crtc_state *c=
rtc_state,
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_end);
>  	}
> +}
> +
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
> +
> +	if (!intel_vrr_possible(crtc_state))
> +		return;
> =20
> -	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> -	 */

Not sure why this comment is being deleted, but I won't block on it.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>  	if (DISPLAY_VER(display) >=3D 13) {
>  		crtc_state->vrr.guardband =3D
>  			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> index af921dda4619..b3b45c675020 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -19,6 +19,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *=
crtc_state);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crt=
c_state);
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
> --=20
> 2.46.0
>=20
>=20
