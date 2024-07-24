Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C7E93AE0B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 10:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5807410E4A0;
	Wed, 24 Jul 2024 08:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hgeNv2jO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254CB10E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 08:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721810919; x=1753346919;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WoNH8xGR2m+haxYPnT1pa2kIE77CGIT16YbcndwuKPs=;
 b=hgeNv2jOL5nLz/RM4XqCZSH/AfOCqhvUrOKRKPLY3f5KyAh4UeivnSBg
 jsnBB+FeQkQsA7cwHx1maiRU1VbJFmZEdVf02rawbfrxU6Cv5Ub6M3Zvf
 8r3dBA/moTTxUCuqCgbW/z0Nia5gjzGTVWr86YN+T9HOqzpM95r+Jgu8X
 vv6M1KxRhCGJ1S3JOJ72CGpWvLIp/UySz0LbUUASd/p742yOS6UKbX4bV
 Uta2lB/3SbcNYrxPG8wYZ5AkZNftkRGzNGWfu/96nCo3wYBzDWKW9XYjX
 gHLyA2Y5n1BW1Hrbz5hXh1hv0ESdPcB18DDHxQsyFZ5JwWZ78zx6l5rhM w==;
X-CSE-ConnectionGUID: PQ2gzG1WRLyfnchBxyWsJA==
X-CSE-MsgGUID: qiFUX3TMReOhpJNujfxSIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30096322"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="30096322"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 01:48:38 -0700
X-CSE-ConnectionGUID: ZYi7laICTFiG/fl3HJcYwg==
X-CSE-MsgGUID: LRtdU4MFR6WwD8vWACDLDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="56666444"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 01:48:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 01:48:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 01:48:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 01:48:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=msNcgSC+5kic+4dYBQiPGih+e2bGtgGgVhUweTAeETZRe4wG5M8Hqmtv4urJzTx+yP6T4LrdnDrYkhKodSWP95HLoDXB529wqB/kd5Ip+3rMLDOQKs7asfgVnhyWc49B7H3R1AKaDft2diJOUxXAdPhSSTRgMS0u/PErJULHig2LlpJQhjTX0CFS8nv2mULjwbBJLhYa7wTA0WF9WMT6gLbKdwZFKFg3Vc8BunLuk0Qw4I2XxG5GG68yLIgrXi1JiYv7pqKHSFlkx/REvpAEfIWUk+jeNG6Lls3Jw2zF97juELyzDZ/l6hAtkYK1L4dxx/LXpDGh05CakvXwftvT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2F5b/HElKclxCVlZfVW0paKCu2ftwFez02LVplSo4TI=;
 b=XmPs6bwhGPZG1eeG1UBQssKfzyhLs201aXVbvS+P5cc8ZS9dLR0AXgKH3ph6sfgf8waY6mQivkjIj6I9noNuKUoh5PW/bVMCHjn0IYBCWJ8V9Kap/4EAmRwE0Z9XoNyVDjiPqL5eVEUNU1b3ZO0kbYBdqPUAePps63p315E6fF3A43VEx055APy4aT8CcD+QelZl+ijxaGZHulujLgDyN7laUBhXhXpxws3E+51xouPJKQAYpnEcBq/HjOFLDOqs3RPGWRtJRaZltjXIaSufImBHJveD+7RA1ftxBGq2f0Ciehns8oJLTLf4cjwYyZn2BntyLy79qr5kZ7lOMA+lDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7670.namprd11.prod.outlook.com (2603:10b6:a03:4c3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Wed, 24 Jul
 2024 08:48:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 08:48:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 12/14] drm/i915/dp_mst: Reprobe the MST topology after a
 link parameter change
Thread-Topic: [PATCH 12/14] drm/i915/dp_mst: Reprobe the MST topology after a
 link parameter change
Thread-Index: AQHa3FgSBJ6jkrR/6UC7nINH9LmCa7IFkrPw
Date: Wed, 24 Jul 2024 08:48:34 +0000
Message-ID: <SN7PR11MB6750AAB7EFD0D122BE2299CCE3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-13-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7670:EE_
x-ms-office365-filtering-correlation-id: a852ec7d-618c-4ec1-301c-08dcabbd674c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?TYy2Iv9b0puz8iTLWnf/+HGpKfovp9gv5s1/6jcc/xuR7SR9iWGdnu4IaZJt?=
 =?us-ascii?Q?TEwXaJrOFCjkVE4WHsgpPMHoV+YC42DszYleMcI5jD6Q/CVZVMXMQtFG5IjZ?=
 =?us-ascii?Q?bM3YyVsUHOl7b9VlRde6pT8N4eJtbsEZcrAs73KZJXUu6YZ9L3PzZHU7ftC5?=
 =?us-ascii?Q?ZJqTRk0qQkAgcvC4EWjbQs5I7Z5ZUKgY2u76PsyTx+ycFC+l5jCtaG7yr5PK?=
 =?us-ascii?Q?NERjivfUhJVlCRmj/nSZNVM+a2Aq/kV4IeCbzOFvWE+e1XBytwLzYm/0RJMR?=
 =?us-ascii?Q?6gzsDaK/TXNWAHPKSvL73tA3kyKTn3+vMJG+7vN1ZLBBO+olyArPl6G+p0tq?=
 =?us-ascii?Q?yuOuXHmKOj81PHlnKu3oD2pGEeBoyIw4yWYjClQ5hr1z5dO36y03CuMpD07+?=
 =?us-ascii?Q?hXOMzTwRj9U5plsOC39xoGafk8RN4cPQfv4fqxSH8Ouai+utMCKaypJIYfsn?=
 =?us-ascii?Q?hTloZapQyyBcSsflVqhsvEDyuBEiGBlW4lXwpObDLY3StCtAsbio2+VkAKQG?=
 =?us-ascii?Q?L7Z82Wc3sn3NpTTUn6DRsO/V1djYvXMyCxvbvb38RcbI9tuAOJ5BGEV7zsSL?=
 =?us-ascii?Q?i/8HxnzJ+rmNBoh0TAkdi+1659UqdxcQ9iNQ/EkZs/p8iZ4iyZqrUZw/l4e8?=
 =?us-ascii?Q?3YNNQsytD+49zIof5TFVLwC3hWcC2zxPnUknmMi4cSv8Rd2M9zi6BTU+yi2o?=
 =?us-ascii?Q?zUEO4MPVfb7eqAVdCK5XTUlAFqWqFgw8fMXHXRJ9BIu0qPByOiYs5fNmhI1r?=
 =?us-ascii?Q?T3N/5pwtVB0savX/cSj/Na3cRVdnED1wr2/VFcKGle9sxX0eQ5JqDTzkz5WT?=
 =?us-ascii?Q?2AnM5EbKcgI+tcL8JW9hZAp+nhBZj/qFL3iKLEZ92E1njqIYZmt8mot9eS9U?=
 =?us-ascii?Q?RRYZNVtaUPzqxngNNGzmm2zLHOAcykUKP+tiHT76izCNqhF606jJg9NP9/Dg?=
 =?us-ascii?Q?2hj11v44nR28kngvhNXV1BORWVV69XjcEm+UOpVmMSjMY/d0PVqYfNlDZJkW?=
 =?us-ascii?Q?0kx++O8SwIYd3tHl/ZJui55N7WF9Y7F6pH4862oWjxTeUTPRVHtB3YlTii4F?=
 =?us-ascii?Q?wfkcvDyzgfvIaDOgOEFjhlU8qE/nO2xdICLUFuhDosHUP1QxY8kkBI5+8DBf?=
 =?us-ascii?Q?/yksVE02efDSz1Jdh9gpyUuIBqa70wcS7+FANUiLX8Q2GcYUvAk2vn2Uxnph?=
 =?us-ascii?Q?lBdohFsrmlcI6DhZOdgaubCekZGzwRTx0UnUkFz0OimFqLtZ2MJUcVjEZ2BF?=
 =?us-ascii?Q?E1fZlibftcsiAklVrfvZpjAdGf1l1M2sBJcEBejwremdYf4D49uQysP7FPL/?=
 =?us-ascii?Q?GqTZRl0LzQ8mdO05XmPaAxQ5kxT2QVbHVGqps9qdazcden0CDt4yNs7g05j8?=
 =?us-ascii?Q?FMafH/aT2Eb54v52YyGhUeNxSLrpX5eyqe5mjro4fe0HWUKxuw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wa3SJzVrS4ejuwk/ypmCt3PbOyUg3Qd2rFTG8UMQt5qzeAQIg5EqJrr17Z9w?=
 =?us-ascii?Q?FrwsYVdz4TuSYIZg2K/euKM9VllEdJCl/ExRX/Vhu3aa6X0b91jy9pzq3Qav?=
 =?us-ascii?Q?kZjTXpmEouMpPmOf4GmPezQ4NY/LTaZOT3bYEtA7py6JZkb1yEP17dG5HgPQ?=
 =?us-ascii?Q?2z+kCV2GijykyUNn2QfwGmSrdYkoSGr4GdKF1/gjU/iA4Uo/Aa6nLgTA6TZ4?=
 =?us-ascii?Q?EPxj6A9BM0IPI64I390+NoDL2CLjDi7+0+jkRyLwAHLtQeM0ettlithvb/LB?=
 =?us-ascii?Q?MPsCioUq+LdtB9ZtB5pZE3o0MHquUIIzgjTvAT0uCMZGcNw/pxPtMgjYGPa9?=
 =?us-ascii?Q?gF0ojkYSlEsWNlwqr7JNY3baHPXLYlFV2jweNbtEz5fMbTdLL1GPdYcAMphM?=
 =?us-ascii?Q?MGGDjxjvgdvHcv3MjghZpfV14lzfFprF44J75t6mmWku7rTsduWhLdHJ7cOd?=
 =?us-ascii?Q?0jsl3EPylih9oTzhJBLQMIMOuH9S4YH6iCObYbqD2snDhqoy+yIBjjFTJQ+m?=
 =?us-ascii?Q?3x97KezJUeB59ol49ZBFaTiNGWYPPqjahZLM4IFWJJgaJXqtOqbzCW7n/NzW?=
 =?us-ascii?Q?ZhUQQMf7V27um1H9H2NGP2o09igHjSv+6saO2XQ5uxLR111VwRhxfvro5woY?=
 =?us-ascii?Q?aH78DrF3j9JLGCVLS8nYzZ+TCU5VKNML7gul09hPwAgLJ59IMHcZsy+e7rzQ?=
 =?us-ascii?Q?64HZFXYDRzk6Vw96DbwZTANGAa+JWR4CKSSp9J5jcG6+IHrOhIfxQMhWPY3h?=
 =?us-ascii?Q?imkSkRuc9zpIyLRoMFDwoJ/4DY15NmxW1UMaXfv8509U1js1mBUhvWY0NBZB?=
 =?us-ascii?Q?VTeojhrPHZHIxNdog3oT3cnG6YHvgVdPx1rg9qAiVMO8I7RjkPSe9j2SsILO?=
 =?us-ascii?Q?8CnvlU0yUkk/IEp1UJvg/dGv7NyhNxt9lNBnkJIzgesJvL4dzl+aVHxHGf/E?=
 =?us-ascii?Q?/FmMkAPHgF3N+U8MRF0RkjuaTTV9Zdjcft5yLmpY1b1lPMCCTDb/wCxJKv6H?=
 =?us-ascii?Q?Vi+PqerehQlr9jyTyEqh831QSQR2SBvTk+rMSq1IYs8ds/+TI03wE4We7ecY?=
 =?us-ascii?Q?h6iH29dazJExuoj4juLv3KQWKCRh0hP8WGP5+g3LHtpURkFuGzGi1p9rykGa?=
 =?us-ascii?Q?WiEzCWlt2eqWl0CTBTzzuGFCdsqliC/uQkkpdNzgLCaM6bCUf2Cj+EVaB9XT?=
 =?us-ascii?Q?CiNVZMvZDQgtlYhP+iHf9jBSgDB+Um84bR5S8ks4VTHj6LC+6V70uy468HMp?=
 =?us-ascii?Q?IRHFynF0kKPBpYQux3PyIEkJQK5H57snNBJ/5o7JsYRmPCLl6bqZ/aJW2aY5?=
 =?us-ascii?Q?Ek6I58R1fMw0Z3a8IDKq+Amu54GksIr2436TcB9IQevemUdWTkni4ND4EXIK?=
 =?us-ascii?Q?ybT0GNkt7o7XMWdEWWlbhpsEcJmUZMUOfqES+VinfdRYrbTRR/okYyDPeYtO?=
 =?us-ascii?Q?29kfowLEWLBmgXy+Nvos4S/7c/S1VHs7rjV/7ZutpSM/HkoEGKM6F/BUcSS1?=
 =?us-ascii?Q?un2nUfIBsqBMwmKP74fi8xOBWp6Cjch4DmTLcJkZrbmHnRAjWmNxEipixYjp?=
 =?us-ascii?Q?XRXJtiEKQzzEK72NMcmHl4SHNsWLdenmjQ9Uu3ae?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a852ec7d-618c-4ec1-301c-08dcabbd674c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 08:48:34.9847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sq2gqF67UjOawb/K/c+1Qxqpvu3U4b6mDdf6YAPtTNlX9aNZPzAWYhzVwrpGKgQIw/eFAiiNSJFD0h/+umG3Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7670
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 12/14] drm/i915/dp_mst: Reprobe the MST topology after a
> link parameter change
>=20
> The MST link BW reported by branch devices via the
> ENUM_PATH_RESOURCES message depends on the channel coding and link
> rate/lane count parameters programmed to DPCD. This is the case at least
> for some branch devices, while for others the reported BW is independent
> of the link parameters. In any case the DP standard requires the branch
> device to adjust the returned value to both account for the different way
> the BW for FEC is accounted for (included in the returned value for non-
> UHBR and not included for UHBR rates) and to limit the returned value to
> the
> (trained) link BW between the source and first downstreaam branch device,
> see DP v2.0/v2.1 Figure 2-94, DP v2.1 5.9.7. Presumedly this is also the
> reason why the standard requires the DPCD link rate/lane count values
> being up-to-date before sending the ENUM_PATH_RESOURCES message, see
> DP v2.1 2.14.9.4.
>=20
> Based on the above reprobe the MST topology after the link is retrained
> with new link parameters to make sure that the MST link BW tracked in the
> MST topology state (via each topology port's full_pbn value) is up-to-dat=
e.
>=20
> The next patch will make sure that the MST link BW is also kept up-to-dat=
e if
> the link is disabled.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  8 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 32 ++++++++++++++++++-
>  3 files changed, 41 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 51e2151315977..afd8329e3ed6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1794,6 +1794,14 @@ struct intel_dp {
>  		int max_lane_count;
>  		/* Max rate for the current link */
>  		int max_rate;
> +		/*
> +		 * Link parameters for which the MST topology was probed.
> +		 * Tracking these ensures that the MST path resources are
> +		 * re-enumerated whenever the link is retrained with new
> link
> +		 * parameters, as required by the DP standard.
> +		 */
> +		int mst_probed_lane_count;
> +		int mst_probed_rate;
>  		int force_lane_count;
>  		int force_rate;
>  		bool retrain_disabled;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1c6d1db1d2690..0771e4c6357ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3134,6 +3134,8 @@ void intel_dp_reset_link_params(struct intel_dp
> *intel_dp)  {
>  	intel_dp->link.max_lane_count =3D
> intel_dp_max_common_lane_count(intel_dp);
>  	intel_dp->link.max_rate =3D intel_dp_max_common_rate(intel_dp);
> +	intel_dp->link.mst_probed_lane_count =3D 0;
> +	intel_dp->link.mst_probed_rate =3D 0;
>  	intel_dp->link.retrain_disabled =3D false;
>  	intel_dp->link.seq_train_failures =3D 0;  } diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 57f29906fa28f..19c8b6878b030 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1113,6 +1113,33 @@ static void intel_mst_pre_pll_enable_dp(struct
> intel_atomic_state *state,
>  					     to_intel_crtc(pipe_config-
> >uapi.crtc));
>  }
>=20
> +static bool intel_mst_probed_link_params_valid(struct intel_dp *intel_dp=
,
> +					       int link_rate, int lane_count) {
> +	return intel_dp->link.mst_probed_rate =3D=3D link_rate &&
> +		intel_dp->link.mst_probed_lane_count =3D=3D lane_count; }
> +
> +static void intel_mst_set_probed_link_params(struct intel_dp *intel_dp,
> +					     int link_rate, int lane_count) {
> +	intel_dp->link.mst_probed_rate =3D link_rate;
> +	intel_dp->link.mst_probed_lane_count =3D lane_count; }
> +
> +static void intel_mst_reprobe_topology(struct intel_dp *intel_dp,
> +				       const struct intel_crtc_state *crtc_state) {
> +	if (intel_mst_probed_link_params_valid(intel_dp,
> +					       crtc_state->port_clock, crtc_state-
> >lane_count))
> +		return;
> +
> +	drm_dp_mst_topology_queue_probe(&intel_dp->mst_mgr);
> +
> +	intel_mst_set_probed_link_params(intel_dp,
> +					 crtc_state->port_clock, crtc_state-
> >lane_count); }
> +
>  static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  				    struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *pipe_config,
> @@ -1149,10 +1176,13 @@ static void intel_mst_pre_enable_dp(struct
> intel_atomic_state *state,
>=20
>  	intel_dp_sink_enable_decompression(state, connector, pipe_config);
>=20
> -	if (first_mst_stream)
> +	if (first_mst_stream) {
>  		dig_port->base.pre_enable(state, &dig_port->base,
>  						pipe_config, NULL);
>=20
> +		intel_mst_reprobe_topology(intel_dp, pipe_config);
> +	}
> +
>  	intel_dp->active_mst_links++;
>=20
>  	ret =3D drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
> --
> 2.44.2

