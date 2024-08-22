Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E478C95ACC2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 07:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2256E10E6AC;
	Thu, 22 Aug 2024 05:09:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzjN428j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D7310E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 05:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724303391; x=1755839391;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6059IXfdRXFA01bffQJo2NAExt9mhroIQ9CVc7FWrcs=;
 b=dzjN428j1R2098hKTNLESbJ7FM/oHmSBxWF/IyVmGH8QY8YRs29phzkN
 IWNu7booADZJ81A8Nmu5aOxelNBhG42LVZypbvTMHLOVOKuJdldWz0AnR
 O7lQKgGB7QyvMPCc2CAil9Y+Xq7MLUXMLyjeiYl40OOel8lrGO7qli5kk
 L6SjXHGeqU4tmvIv69QfMoY7lSNwXsL1sxBU6NTa0eI2UOdP7z5XnrWHD
 Hl0WWUg1cP9ptFIdpXhwWR/9lZl2ZowFZSPzfhbxfDWpvpC9YM9I0kxuq
 FzCLsJcEc7xh1rGw/YxaEAzD02UyzsmWwAuKlN8ibITSPgtOWOikhM4UU A==;
X-CSE-ConnectionGUID: 1Fxt4tnFQT+a7Gy/Jc3EHg==
X-CSE-MsgGUID: RD1LtYXNSZWVA2t6jZ2SzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33360105"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="33360105"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 22:09:51 -0700
X-CSE-ConnectionGUID: l00YAL6QR8SVIQHhcyyxNg==
X-CSE-MsgGUID: brMhCo0sQriuEcKYqDylPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="61310853"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 22:09:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 22:09:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 22:09:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 22:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g74dazQArRa3uNNTed+I9Ftt+pLy61KP4k2xIFFEo40LyGPtNwutNHD4C9hAgd9UL07DRr4cCuXUf9COoH9/9x+XraFXXyturgSHpMI/KWleCxcp1/WU16RQ9Vs9w1Css38XAQcZTPp0re5ZiMm/ckAs8B/SBgF8qWFIdfNZF47JfpzKGzhDsKVAxcJHw1TAnfjuJwT6Hd/ZKr1GieU6faynM8qXhwGej9mCH5WZ+7KL+soNSAshSdy5WtuUSFKlj6YsDuIzcoNmARalUzdHU8pqHAvddH05P0aY22gPluzSGBJQRhoDauHJk8EOqNjZzQxCWCCUKRA+au+XGV30Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eFhnWGHSHqSWBCl4WC4brMXrYIU6w3jG0ONF/CEIyMs=;
 b=mk0cokt91I5RnYohnUX7N9YhyD/+Yhc5anDf0/OW7B8jB+fFu7KyCmtK5UelF3m07uLEMwlKg7Wxb/dIltx5aF4t1FYESNVZigaxRvpffE/Uli1SghF69OQ6xPd0Lf4/zo5KlmoVphMOfQ0gqZq/IfYodGbU+DMG4IEgPNjgfvDjuZbIuKIGk9FOaajmsuR4lmelgW9xRniKPymTYkAaQXNTacwJIGZnUCT5MTVjUFRW2ntCz17SVabMBXCSfwt5gkqZIwuoqh9pKcmb9txg3AKECY3iEJDM3FNGOaBC6hdmdrVzN+q1xcZbl7BTL6Zhf5RO16a7Se63FDaYncqJKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW3PR11MB4715.namprd11.prod.outlook.com (2603:10b6:303:57::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.19; Thu, 22 Aug 2024 05:09:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 05:09:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/psr: Add return bool value for
 hsw_activate_psr1
Thread-Topic: [PATCH 1/2] drm/i915/psr: Add return bool value for
 hsw_activate_psr1
Thread-Index: AQHawgLnlhYNaUl4Uke0UK78Kiy3SbIzHtGw
Date: Thu, 22 Aug 2024 05:09:48 +0000
Message-ID: <DM4PR11MB63600ED8D540E99AB7AC7E3BF48F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
 <20240619043756.2068376-2-suraj.kandpal@intel.com>
In-Reply-To: <20240619043756.2068376-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW3PR11MB4715:EE_
x-ms-office365-filtering-correlation-id: c41e1b6c-f61a-40c0-fc6b-08dcc268a54b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6hTx7p4LFjxkmkMsHXVdXtb6JLif6Xe3zphhyINaPkCldXy5kpYfeRvcEbDT?=
 =?us-ascii?Q?IeHifwtOtZOXpUpoojBtPFn1XI6DdJVTRo4gnQppBhyRMEjqh8FjgcLa7yiw?=
 =?us-ascii?Q?8AWw9NaFpP03lCwAH9ARxoxuoAn1WWHE3t9ZvPRRs+/sKtdkTDK8d6xPPGG+?=
 =?us-ascii?Q?YQZ4ihAiXACTJ23i2V5GZJSzi5LjvgpQw/S6g4Bbjw5saMGGJ536qL+5CM3+?=
 =?us-ascii?Q?am8psaNiCzcRc+UTcNVMz8LjxXItruLRYM9fEqUZe2NdJQHqM+3v5xJckmjT?=
 =?us-ascii?Q?sN0bZHPBIxYxXvZoSucU0OPGu+Z899Dr4+TXEHSPTJ4lYDC+ie6cdHagUX1h?=
 =?us-ascii?Q?nTmYW+Z+cbZQ1XfY4JR6+PrqxX7bv9eX7mBeRklZkAoYj1zuaR5cAlailPvA?=
 =?us-ascii?Q?2uS8B1aImObEMmZtdYvklkDPD+8vRxoh+xxx3j1zVrCVdlQNel4oUurpfJR5?=
 =?us-ascii?Q?0hN4YJMsdW/O+hf/pR8t522+08lHuqrxQaERfwfILY4DnoqUgGAdpS9YQYnK?=
 =?us-ascii?Q?A0a6oJGHD7XzkEr3HZOKzVwGAzBzcmYoJ87u34v5xYfMrGs4R2PWO3E6EeJ3?=
 =?us-ascii?Q?esbyf5SWGoXAcm27OYfLM9JriirV2E7VRS9n5LTAoa/O/Qp/8YaD8nSmX19o?=
 =?us-ascii?Q?CIUGgeB1btmodcZ2ZTNtGQvbX3CwFnDkTUryAYDwLCMOqfpV7fZ+Xd11apOS?=
 =?us-ascii?Q?NmepqQiNGsSOxmrcwQxt5altWYMHfg36fyu6bPxLFpCPK3NyfAsGCJBb3VzU?=
 =?us-ascii?Q?0PqVpO/t9+xn7SD3kEoUYzb99iMyR1b6XWm8/BsQjOL5pGWpgD8wDOh1Q/ei?=
 =?us-ascii?Q?+DJoKU+ucCt+MPxzSm/1XNqdirm4m7lzx3NkKEasdf4yBwl3nI4csXToRDZ+?=
 =?us-ascii?Q?PkJfqrpYnGJb6yEiRn8GWDGvTR586kcPJpHpI5r1gg1k32rGCmYxVZcJjQkt?=
 =?us-ascii?Q?uvUHAyJgcrbmoq0zp8EipwOCY/vOIm//Z+bZF4pfEBCUlu2KeJ0iCcAkKWRW?=
 =?us-ascii?Q?F5zjq/LuIgR5q8n9uaSUJl04/QAiDjGDHrf2clG7khmYUWWw0YUGEcOXNZYZ?=
 =?us-ascii?Q?oB8tBDyc5/9NOD0RAJq2gdLSmNV1F9AQ4bJLH6uKvgiYEppikNV81QsCb9cU?=
 =?us-ascii?Q?jNEcsOxpITZHH8DxHHPl1rvIfcm54rJrl31Zn6qNyOPu7bx4qXaAujM7K5me?=
 =?us-ascii?Q?PINMMUY/In2lzNhNEx3Y3jDcszoSzd1Jkzm+0NcuK5wbDfXHwywW3fn7COmG?=
 =?us-ascii?Q?2pn6vTOUDq1kL6gRqd3CmCanbRRyUZFCw6FE2vFLJwb+v/ZMAzFsZqNkRuj9?=
 =?us-ascii?Q?l7XryWC0sWjoQV4STwlodQa5cxFBFPm/KiRqWp5iUWpPXUKksmhZOvxH7emP?=
 =?us-ascii?Q?9t7K0PlQOXFTH5x7n03e5bqWRXvgJ1llVgwrxb/W1K0KkHG8sw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mAuunTGKeQRsmCZnWvAYEYEqBvWOFeYF2HhJa3woZPYBD8D/K1QebWYJaIsT?=
 =?us-ascii?Q?GxHn/Ed7lp9dJ5AqGAfBS7Af7J1TZvu0RH8b1fiScGJsk2ssGSOWV7E3JdYf?=
 =?us-ascii?Q?eZfH3NXAi84NeKColwLtvLj/7G4zFV2S3XQNHxOsEyUGuujMXzVQF5fdzXeN?=
 =?us-ascii?Q?srHmESR3qLjgn5qh+S7m1oSz5GjMSgyhRr0x+RQbQAZttLhH3xN+az2qV1+O?=
 =?us-ascii?Q?NOkktYP7r+ZyMurbUjUQBvZxstvO5QyiPvkkECPd8e53i+Dh9Zwvopg85HVJ?=
 =?us-ascii?Q?J+yuEPYzvKWTHtjRC/VCL1Irga0qUIMlBUxibgDRnBXqjDIyhIJ/rrUkf4+l?=
 =?us-ascii?Q?ksbArvCVmYYP0SXa4aUsynwpozcCHkqVaiqGv4XtnHYU1dhCSA7LthFfelYq?=
 =?us-ascii?Q?X0AsaMCLEqwYO60kiit8xg7UfL1sckBrPJk3uWgrlP/sx/P11TtrEhhiUYR8?=
 =?us-ascii?Q?QLSUPtixCcA4raFiRhZqYt/SlqPGTyBn7s6toNF5b/u3A4N0FG3vs6Eaa9V8?=
 =?us-ascii?Q?Sz+MukTX5c/6JT7Z7q1t5fflkFwrLaN2PKYP0iYaKpSqU0wR7sFBW+GOsktP?=
 =?us-ascii?Q?kbpab7pGZ5iLwJgKrFi/qTSvsSU3D1wZtZkfJbZzBT2Bo0ClT7lBioUL7PDq?=
 =?us-ascii?Q?uTV6tg1/cdza4jR3UReDzFXlu7hyuA2U0/X/RGqMNChgIcmzWbvyKPQi5Mf6?=
 =?us-ascii?Q?uW/uppOSChUPTbopMPJhYDucx381Or0KDEZzNFPHZSKKrrDrJG8qmZHcPKdX?=
 =?us-ascii?Q?MC2ynplPN+5HtLGp0Pr8L4mK/ZC3A6eySuzI2dxFDGnZKXUOEXkRnWEB4f5m?=
 =?us-ascii?Q?cnVEyxfaItIKR3mtp/1XHIYNdI+xjTRPORVpe/ThddlGRHCpTvkqmP1Kj4MY?=
 =?us-ascii?Q?Vh1jnkw4rWBt1jEeZrDhYOBSqu9Eqr/4zcIrw8TTluRVBFqO2E5byvmEytRS?=
 =?us-ascii?Q?H3uRiNRWbem1jvNtxoPSTie4/5W/oN4epSSkJkWT8pakwI0WDU37p9xhQN1l?=
 =?us-ascii?Q?b/4tjldSvsCek/tt5BTYFN5/o/liW4o9KBtf69HQB1LQa0KJOU/PUVxs9p7X?=
 =?us-ascii?Q?7hKMy+SLWLzalLziPIvElbs9rjrNMbPHVTy7JNZraxBeQ018dYiHMwjpYbUp?=
 =?us-ascii?Q?uf1OnA670dJgdXkJVR7BSLnZ5ciQlC/m6B13b0ZenCgpiR0H7qzTQ+G0P2Kg?=
 =?us-ascii?Q?pFnN5TdXXwAT8ocCbywv5L3ihbUvW8g9FwS2J4qAWXRJpIyVDE88CGLAabbw?=
 =?us-ascii?Q?a+ArR+NTZyif+rcaM0PBMYSKqgducSGdEzsClMYO02V5WcNWE5CNRfPuY7PM?=
 =?us-ascii?Q?flzZ3FpW+SyG0JMR6LpHlrJjgMhr2pL9f+AiwdaKIzPBIvCWkSnFhmFlnzz/?=
 =?us-ascii?Q?pqFwg5uMgv0w63Mwu6dehO4agEDFIz4939bw5FXqqyxJrbkhO8hbOhZbs3qw?=
 =?us-ascii?Q?Cj6XSdSjuBbxw0TdDL+JBQFDC8goBoA4QJhiinra74K1dATdwR9Omijinulv?=
 =?us-ascii?Q?UUYpyCnyfly47IAFJKxuud4KKINh6qotMNNTg72qpbY4kM0AJFvcZCrHjE2d?=
 =?us-ascii?Q?QVGfwIBdckD3X/p7TSgRFXT8TuAgH86DVnVE9821?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c41e1b6c-f61a-40c0-fc6b-08dcc268a54b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 05:09:48.5349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bbMoku5A4IA03MFFwv7AU69cOvisNHXAheGcVC2ASNRCeUrBqoELscIz27JSQB/xykK9OWfmS7lHozTQGtZD4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4715
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Wednesday, June 19, 2024 10:08 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Hogander, Jouni <jouni.hogander@intel.com>;
> jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/2] drm/i915/psr: Add return bool value for hsw_activate=
_psr1
>=20
> Convert hsw_activate_psr1 from void to bool as going forward there is a c=
hance
> psr1 is not enabled.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 920186c2264d..080bf5e51148 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -808,7 +808,7 @@ static u8 psr_compute_idle_frames(struct intel_dp
> *intel_dp)
>  	return idle_frames;
>  }
>=20
> -static void hsw_activate_psr1(struct intel_dp *intel_dp)
> +static bool hsw_activate_psr1(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder; @@ -836,6
> +836,8 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
>=20
>  	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
>  		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
> +
> +	return true;
>  }
>=20
>  static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp) @@ -1560,6
> +1562,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder;
> +	bool ret =3D true;
>=20
>  	drm_WARN_ON(&dev_priv->drm,
>  		    transcoder_has_psr2(dev_priv, cpu_transcoder) && @@ -
> 1578,9 +1581,9 @@ static void intel_psr_activate(struct intel_dp *intel_d=
p)
>  	else if (intel_dp->psr.sel_update_enabled)
>  		hsw_activate_psr2(intel_dp);
>  	else
> -		hsw_activate_psr1(intel_dp);
> +		ret =3D hsw_activate_psr1(intel_dp);
>=20
> -	intel_dp->psr.active =3D true;
> +	intel_dp->psr.active =3D ret;
>  }
>=20
>  static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
> --
> 2.43.2

