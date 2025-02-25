Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8471A43765
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BEAF10E5A9;
	Tue, 25 Feb 2025 08:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJJxrfbd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67ABA10E5A9;
 Tue, 25 Feb 2025 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740471687; x=1772007687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iEF2kCQxzoX3ARJWqzwGeCSc72/g/B/NFf8AGrpBuT4=;
 b=nJJxrfbddhDGaHXeLSUCN4b8ovBkQeNuWymMxiWnabdIWygmHimk5XkX
 CHvkh8pIhuqmNy2la/qZaGTonjQiNiyE5+T5DwZ6uM7Tqs05qB08c5L/V
 q7qS3s3Y9cpjehY2yEFFKYZPvb0vm4HVYKcxs2FNkgj7YJ/OrQBfttBge
 9XOAmAjBmgOZwIFonwzQAARvZM3/2kaS+iK9HV4U9Ma/6wfOOxgWLh8bF
 4B3QfuxLvMhBEABgTc21/SpDcUG9aqtti+JyFpOA3J/jONRMxhWMxP1Km
 DP2tFEHURwHnyK6T5e0L9QVGWgBd8zkFXXBr1QJvuybNCY9hDx2nbb5XU w==;
X-CSE-ConnectionGUID: MyciSqZ2RTumyKl2Jtb4hA==
X-CSE-MsgGUID: zSujGO0TScy+vE9bz7vUxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41180561"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="41180561"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:21:27 -0800
X-CSE-ConnectionGUID: D0mUAJq/Sw61nURvfWZ3Yw==
X-CSE-MsgGUID: rzXglguJSH6mE/YezuFNQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116943349"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:21:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 00:21:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 00:21:25 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 00:21:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P1nOPfmfx2tS0EAxIopRKXKS2urrbtCqhSv82iRww4Nn6UODvOxtO+BDTMRl3c5qzW7ozDVyOXBWcMs+FZlefS8sn4UAw2vP0eRVXyOSFZ7bCGnoifDNZU2X0w1NELA3d/FvVW5W85Mr4BgFxNsWe/pCN7B8UsK++uszuT0InPYNgEDcH57mFFDpkcJNsAXYtB9UUmV+C+kgLopgKV+1w1tBHJFNMqLBHn6VlQAVgXnfmdiKjwrVCzHxmDkhSDxI+m65l4PEqq5QajK1E0/EUHNavNrXgzPlOuLTNr/uztBobSXVDVKw9pbZEqQWULILBemCsg5F2/gpWCvS9S/RJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ksxPEzYeW8B7OWPjG8h+gRNVSyf9l+NIOBA+vS6P54=;
 b=UmxYZM8YhXQjDa7r60OXNKTanCuhgwU/x4X4xSPqq3RyacJhkbk6dHBhACORzykMNIufSDGB9zW9kIcbjH6wZF4Uns3MCZrPxtt5034w8R2q3bcfOlahpJ+jKHCbrKo7qck3iqry8Sft38YwdJwAq0suBHct0vdDfhuICpRweBgwdw9n21Ldrj2x7RE8A9mrSrTculikqi9ZUKjByC4xszR3ghNoJMaluIJZ+2yFGFutkX6h/rDianKRFcYEQ4wP+fpozf+KcQvMa4EHwEGMxryw2vN7DUQFofZWUnCrDWnheyvnySrS5ZtkzKfwsa8ZvdTAzis27LEjlTbuqYDP8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Tue, 25 Feb
 2025 08:21:04 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 08:21:04 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v4 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbhpZ3FH65tSPYzkiJzYFQzTY4hLNWSCAAgAFhwxA=
Date: Tue, 25 Feb 2025 08:21:04 +0000
Message-ID: <PH7PR11MB5981C1F2229A4736E441FE11F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-6-animesh.manna@intel.com> <87jz9f7gsv.fsf@intel.com>
In-Reply-To: <87jz9f7gsv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4835:EE_
x-ms-office365-filtering-correlation-id: 4ac74ad8-edca-4fad-db2e-08dd5575588e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?olnIGfckjyLgo1GkvGKtsQ9tFtPavYJU3mkN635qoZvpqEJMDPBZ+YUJqEh5?=
 =?us-ascii?Q?DhsT6rFj++DCMOQLjH22YOCxfI9/n6vgqs8nW/J30u3ukZg152j3UyMSUsLo?=
 =?us-ascii?Q?wJEEa9deby0jVTLJzixqdbFlpS+0Pvre3zuAy7kM9Hby4bcLVi1TGHOL/gLw?=
 =?us-ascii?Q?OFNP9n9UBGKC20/5Yfhhu1hm3vklYi/vaGb5kPSapvO0Sb6/Vmq1heO+V8Ip?=
 =?us-ascii?Q?B8gW6JPXGf0fFaREPqQ42TW7RkP+LUbUNT47sgJOFavpTPjNq0SVFbpXGOXL?=
 =?us-ascii?Q?YPUN2u3KvBl6Po9C2xQ4jCtjrfFcGR/VB3Dok2UAfCucrPnHqbbW9AwC/842?=
 =?us-ascii?Q?nnsPTODH64U2RPJ0SVw1p8r58S4IQlVhYO6vaFeRdhMytOQw5bOgRQ16R40w?=
 =?us-ascii?Q?2Td2T3HkGE0r/54UN3XX5FQlUkKhUhhXR7nW+aJp3PZbJt700UqLwJs0ytIe?=
 =?us-ascii?Q?CN+qDtyrEXHWE+BMT03ObR9Z8G9Yjq+icKL+5EuxUq03KmKeqoKFzFQUmhDV?=
 =?us-ascii?Q?IURAuw98wj45+H3uxXRXLyx+P4Cvnetlouy5c+vqT24ywbLnY2enIdQexB1A?=
 =?us-ascii?Q?FJTXLaXXizU0FogH16ltoF8Vsl57lwvAt3AoVn2zDoj7a69qezFIUZW/5BIS?=
 =?us-ascii?Q?O7Oz02jcz9IDMSP91+0Qam2KtiAOEBvnFB+mdP0vDghHG/a/GHsENv32zwnM?=
 =?us-ascii?Q?0LlJMIcISwOUAVQoF4mUsYiZHKyfmdFnBR/2V/qKVM1TCKKZFQizSSGLhgCT?=
 =?us-ascii?Q?RKJ7dPtkAuBovZ1JYqeq0RM1BYlZS+jiy/+9yZ3ZDpOPXY85M1D6xAxYxRth?=
 =?us-ascii?Q?XZ1PqTKBaV9p2wifLZVYIOBPW57DVhEOhjAOdpmPE8SrXRXQyRFE/JVnETPY?=
 =?us-ascii?Q?8gTjQ+zdfuGoG1jS9G2k6NwtDdUHQjMzZxvZdZWHu5eEEh5ewgG+/5WMhF/8?=
 =?us-ascii?Q?i6/kck5BVUqV3pI8S8zHV1iqEFnEGPqmAHWzSUzo3cPMHpZArLYW0DYVgn9+?=
 =?us-ascii?Q?p57YlfyUspUMvWDVQU0LWIRBu3dqsqA0TJjprG45yeedyusOyMJnvqy603fR?=
 =?us-ascii?Q?J5zqY7jJ7GZhrGONjcd6bPZuSyZJytJJ/upNduI5kzdlGhoG93okPqF8Nm60?=
 =?us-ascii?Q?ZeDRotW2/s5VyPBss2Sz9XyhytN5aH5CJvKMAP59u3mMrFahrEFv4VinNc5B?=
 =?us-ascii?Q?+kNuuc8GqZ6qArDQwpaFNAVkAhueRzv99+XhaxelRJzDEg7ii9yV9pVeX55g?=
 =?us-ascii?Q?XglfnsNE/kIMNfNUnl4BisR1bZbSaMoWbRpe/ERGAdkTQfX9vBSXTkT2nh5B?=
 =?us-ascii?Q?eGHtCS43VNVJH/8z7QUP9D2mXYflCoutluTBw4ymHykD/kLZ9plzqd17bfr9?=
 =?us-ascii?Q?3/fBhpTh+CHv/aGwL5C8fUhohcqgGsjvbB691AGtXYi9ecWOy8y9j4x+LSEm?=
 =?us-ascii?Q?V1w8a7gMu8Qu613xcNzpYe8Ll72Mb6HP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VTpKvMjCMOpNVRE2I0oIaFg37OQh6Dcn9N3pn6uyGaedqSZfvILEQ3Tnzzt2?=
 =?us-ascii?Q?nSOSpAoxF6OhDYuU9O3snMsrktqbX8N9z/6ReH8nd+6ZQmWkhE31aM4Yygc4?=
 =?us-ascii?Q?0OtN9L8uTZRYrrEe2Gp1tSziaXQGOMBKlmFtK/nqlrPFLMyR0b5Dyj6smn0a?=
 =?us-ascii?Q?WIYTJvpqJjFfD1m+JQIO+VFopcJBjwEgL5zHHydZ+rQ3roeTVc90pQ8bOHip?=
 =?us-ascii?Q?gtLfDmrubIr5OFKXpFcT4ZUqCtv6BeEZF9m6rx1LrsvgPc0iZNzMwe3LPoKO?=
 =?us-ascii?Q?/wXIXz5e4wS15rU+Y4JWMuqvCnxmdyjjDMYPrkjzGPmK9YNN1e5jNtPMsNhh?=
 =?us-ascii?Q?W8Tm2VvBjch0LNIjGmiim7bhTQz7bdS3nPWfsepBJVszi2fSOnbnwFYIbni+?=
 =?us-ascii?Q?2VkjMj3YBNolgh54Xd0fwgcJxpcE8bUmptjokfbeuYKULrUefzYT/Khyg+En?=
 =?us-ascii?Q?CwPjrMHRZlfULDWSfx7ENFhv7Eqbsg47DOTfqn+nijq7HOkVpBEGFVexGygW?=
 =?us-ascii?Q?A5y8BqCQSDBZ0KL/SNpJWgNspZU5l1B+2pr6S/ne/QnRbKcpYW9upxKHTKFc?=
 =?us-ascii?Q?Es9IHgA8kYayZHET/+/mlG7SPVDd+LQwu09fFYIq+JY8SAszGauGHAwz7BHP?=
 =?us-ascii?Q?Z9Rg0TcyUuDyjE39vrZZ8jEZvAlmi/DkxibVAvpeCSssPONaW3cX1rtNXPLA?=
 =?us-ascii?Q?rqCJub6fFmMlIW6PjosiZeR7mYCQbDacnuQAe90G2pPMIi6oQ9szgd+oxN50?=
 =?us-ascii?Q?HZFg5V/DgNpzuqQzgrZbBKnudv4stolXckQ0fZ8d6H3jQwG8EPAxffUdz4Ln?=
 =?us-ascii?Q?gSLoV/3iBdsXSsnwGhq9TaJdygvB3dp9yggj8Q3YZ63saSWhNnfqWHbqAuJg?=
 =?us-ascii?Q?FdUR+SNzx21ytM12UQqIpIeolqzJYt5H1x/oYTYINPO/XoTBDg4ttYv+QLmP?=
 =?us-ascii?Q?Bo4LQj+EZmxc14ncONq2GgmanKY/0CosQAP9A5nVlV2dAhBtA67hHzaPryAb?=
 =?us-ascii?Q?oelyxYzPpC8D5atF872kBM6r27sxbRo3Ctg1oFWCBSsRtkUpM2je2njZGIcM?=
 =?us-ascii?Q?ycJ6Dt9AitqYVqFLcYanGXaZDHcOgyx/tq0tirq2dPpi7JLyh376sRPn9W+W?=
 =?us-ascii?Q?IclzYhy/Glfd/2IoBelwe0dk5tMmyTF7rt+Om7Pw8oqqJEPBCscyhIv/NelZ?=
 =?us-ascii?Q?ru7s4aJofE7cIloA0JI6wxnRDp38vBd896zT3xqG/MEKhw8u7glKcaWhd6kx?=
 =?us-ascii?Q?b7vQq5hDdU3/b6BMz/AKFApAAq+5NckNTE/BMTl720XzJtnelHOwYaeWHYbK?=
 =?us-ascii?Q?6apJP0MpFxp6tkeO+7YOKmUu9mRMvfRsTb6By8oemnxsKg8XwYYoCzhUGITX?=
 =?us-ascii?Q?PfpsAdF2KJhoglRZVZoFKKKBDOTBuVMlY6STWHq6hPrj4vsGWxIl7LQKCQBa?=
 =?us-ascii?Q?rlJWZTmO+gF5jpJw8NSfeeu+JF045zufEuZCZUTrzY/RLB2Phq/yMayJCiq+?=
 =?us-ascii?Q?yEikQmjHw7OKORlQYbEO9shbwr0wZ1y8czs46uHSBrJgEey+LMKs+OxJQMhy?=
 =?us-ascii?Q?Qmc1YEUlMg6/w5Sq9UesqD9TKDi7vccLtXQuMSPp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ac74ad8-edca-4fad-db2e-08dd5575588e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 08:21:04.1405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hUTaZm0YRwqlkQ+oc9YkEfD/dVGsfl0kYvjQs9M3d93OC1fGGdSLkkZHxyDqJ8xnW+ag4Bl1MtATXNWb4Du/cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4835
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
> Sent: Monday, February 24, 2025 4:26 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v4 5/8] drm/i915/lobf: Add debug interface for lobf
>=20
> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Add an interface in debugfs which will help in debugging LOBF feature.
> >
> > v1: Initial version.
> > v2:
> > - Remove FORCE_EN flag. [Jouni]
> > - Change prefix from I915 to INTEL. [Jani]
> > - Use u8 instead of bool for lobf-debug flag. [Jani]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c     | 51 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  5 ++
> >  2 files changed, 56 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 83719ee1721c..5c70677ac3c0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct
> intel_dp *intel_dp,
> >  	int waketime_in_lines, first_sdp_position;
> >  	int context_latency, guardband;
> >
> > +	if (intel_dp->alpm_parameters.lobf_debug &
> INTEL_LOBF_DEBUG_DISABLE)
> > +		return;
> > +
> >  	if (!intel_dp_is_edp(intel_dp))
> >  		return;
> >
> > @@ -449,6 +452,51 @@ static int i915_edp_lobf_info_show(struct
> > seq_file *m, void *data)
> >
> >  DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
> >
> > +static int
> > +i915_edp_lobf_debug_get(void *data, u64 *val) {
> > +	struct intel_display *display =3D data;
>=20
> Where do you pass display as data? It's connector?

I should pass display, thanks for catching.

>=20
> > +	struct intel_encoder *encoder;
> > +	int ret =3D -ENODEV;
> > +
> > +	for_each_intel_dp(display->drm, encoder) {
> > +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +		if (!intel_dp_is_edp(intel_dp))
> > +			return ret;
>=20
> What is this supposed to do?

Other than EDP connector lobg_debug is not available, so will remove the ab=
ove condition check.
>=20
> > +
> > +		// TODO: split to each edp transcoder.
>=20
> What does this mean?

Currently lobf debug option only supported with one EDP, TODO added to supp=
ort second EDP.

>=20
> > +		*val =3D READ_ONCE(intel_dp->alpm_parameters.lobf_debug);
>=20
> You read this from all intel_dp and combine into one? What?

Will return from here, will take care in next version.

> > +		ret =3D 0;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int
> > +i915_edp_lobf_debug_set(void *data, u64 val) {
> > +	struct intel_display *display =3D data;
> > +	struct intel_encoder *encoder;
> > +	int ret =3D -ENODEV;
> > +
> > +	for_each_intel_dp(display->drm, encoder) {
> > +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +		if (!intel_dp_is_edp(intel_dp))
> > +			return ret;
> > +
> > +		// TODO: split to each edp transcoder.
> > +		intel_dp->alpm_parameters.lobf_debug =3D val;
> > +	}
> > +
> > +	return ret;
>=20
> So this always returns failure?

Missed to set the ret variable, will take care in next version.
Thanks for review.

Regards,
Animesh
>=20
> > +}
> > +
> > +DEFINE_SIMPLE_ATTRIBUTE(i915_edp_lobf_debug_fops,
> > +			i915_edp_lobf_debug_get,
> i915_edp_lobf_debug_set,
> > +			"%llu\n");
> > +
> >  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
> > {
> >  	struct intel_display *display =3D to_intel_display(connector); @@
> > -458,6 +506,9 @@ void intel_alpm_lobf_debugfs_add(struct
> intel_connector *connector)
> >  	    connector->base.connector_type !=3D
> DRM_MODE_CONNECTOR_eDP)
> >  		return;
> >
> > +	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
> > +			    connector, &i915_edp_lobf_debug_fops);
> > +
> >  	debugfs_create_file("i915_edp_lobf_info", 0444, root,
> >  			    connector, &i915_edp_lobf_info_fops);  } diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index b78721c451b8..b6ec9a8fadd9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1808,6 +1808,11 @@ struct intel_dp {
> >  		u8 aux_less_wake_lines;
> >  		u8 silence_period_sym_clocks;
> >  		u8 lfps_half_cycle_num_of_syms;
> > +
> > +#define INTEL_LOBF_DEBUG_MODE_MASK		0x0f
> > +#define INTEL_LOBF_DEBUG_DEFAULT		0x00
> > +#define INTEL_LOBF_DEBUG_DISABLE		0x01
> > +		u8 lobf_debug;
>=20
> Just overly complex still.
>=20
> >  	} alpm_parameters;
> >
> >  	u8 alpm_dpcd;
>=20
> --
> Jani Nikula, Intel
