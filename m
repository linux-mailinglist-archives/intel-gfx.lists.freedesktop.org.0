Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC0C9938B5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CE110E0FE;
	Mon,  7 Oct 2024 21:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLR3AQdO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351EF10E0FE;
 Mon,  7 Oct 2024 21:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728334936; x=1759870936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z98sYHssncucN/rEBZgAzMQC0MiW+A/6BUPphVSJ3HA=;
 b=SLR3AQdOZzimvyGd49KYF4rot/3p/iOssIEfQMpdH240ZPqTqQbH77NM
 2+tq7qU/qzyAGfyixcI4lBxtBvXDlrcz8bf5SS9EzeD2+XZcGYLgr6ZLB
 /1IORBKZ0wb4UNujtlNCR1eRQWxeZ8jGERsmKEf+wd2U4qf0OH097FW27
 V3gbcJCNF+n126GMnZ431n+k3szlkmNYqF239OCMTSQAYmWaZgjFzlwPa
 s9s1/2CD2oMIhmbaJxyX61SgrO+JKo+ShH69RbZcjs0Y4xi8f3v7KKxiM
 sRkqvyZO/Pvhli+0NksKLaw8f0WjIgIBeL2scAhBoQBAAjMyQx/bhSLfO w==;
X-CSE-ConnectionGUID: Qovxnfv8SPimqSUj/bqksQ==
X-CSE-MsgGUID: 0u8dJfJZTx6JKyumrU7pIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38159240"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38159240"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:02:15 -0700
X-CSE-ConnectionGUID: Cx2GIAgbSW2y04ti41w1Cw==
X-CSE-MsgGUID: t7Otq5t0Q/md9BgFMByZOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="106357254"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:02:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:02:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:02:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:02:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:02:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jIqA88D55HRWkKOFPgV2riSU0A8Ej9eAJZDxBSCz7Ye8OntpM64o5/tMihLVp7eeyMSOVs+k8RbxNG6SBX6LO+YIIR4Zs+NSKJtYCPcfoqzS92DfGQdM+lvyuez/ukXyVKHFYx+EVZqA/MmqgCDZqIx58jAMczhgBZnoOWvrFDap/UKVK980dVz/90Tm9IEqxJccR1dXSmtBOHGNMatfn4yz8OAf6S7tzrbbzWisdrrVE5vGwT//fIg20sio1NA3kdRc9QHEvbj35/2w6HykJ58+ojVERtHwGGflLGUn9XaZwD2Li0gUDomDba1Q2zUcXJnyCHnWe2e9YZvbpsyoCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EclB45i1ISKZVYVNrnJVhkCY5F6KFlSglE2dDjo8h14=;
 b=ttw9BvUWRpiU2CcJcQumQHHoZmqSugp8IMDCdGu7RHCWkfzexJtmrQH997HPeUiRDwBHx/PLGiQOrR4mloKwQYs5pJPH4OVfR7LQlDsP1dqe/XqH0rtfzlREb41niKgxewsvW19jVBbaukj8G5PZhvGU4tZIBXEKFbO046tJDXx82P9/1+DFLJT0jzqmpcDDepHPglXVu7ykRpEOfLCtKT99qU5wF8C2+LmDj3RdeNIJD4FkZRCloaxXiej5QPDekOT8kar2UPv+gshRp8JzQWwTDn0l/QqUGIgq6UjJ5QzkXr/rebwn6oh04pZ8yZb4b4FMwQOrLGIFwfY5A+OVjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SN7PR11MB7419.namprd11.prod.outlook.com (2603:10b6:806:34d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:02:04 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:02:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 11/31] drm/{i915, xe}: Consolidate display resume functions
Thread-Topic: [PATCH 11/31] drm/{i915,xe}: Consolidate display resume functions
Thread-Index: AQHbDsJ04rbjsBwsDEmIh/ZzGLd1ZrJ71Z8Q
Date: Mon, 7 Oct 2024 21:02:04 +0000
Message-ID: <BL1PR11MB544519DEE1B3EEB7E5A5158FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-12-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-12-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SN7PR11MB7419:EE_
x-ms-office365-filtering-correlation-id: add1cd14-2a16-45b0-7a5a-08dce7134bcd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?G9AJmmhKymqd/5bwWQxZPqXIde5bprFOxrFvbGbyjos1ag0RXi58flsFeV6R?=
 =?us-ascii?Q?Q/0UdPq+RMFcSaMpoXx6nGhQdgIpsT3qrlGvoS1DExlSehCH5ZUfFfCVTWRf?=
 =?us-ascii?Q?ickHZFq2yLTvIdtSxv/HZOziqj00blYJ34OU6ilZJfcwvV7XxKUu8GEiR3AJ?=
 =?us-ascii?Q?X/vDG851kySAsuHaBlCPwB76CkM+EvKOKykFDIAkXPnY3KSY/+hYF9GgeT0T?=
 =?us-ascii?Q?9dZ9LlrquAq/e1q3vrVDv1HmlvXgdqXDD/DTVoZDC+L/F/PFsKbIwFhUbjgT?=
 =?us-ascii?Q?f9GYgTd7qXbU/qMaD1/lKvAF2WUgWYLssk37vC2K1A95U8p1ZdaHRnZLFLoN?=
 =?us-ascii?Q?qhvaRpYLSaJ2/hNvqvQPqrX50KWP+EsLnSZcI47t6zi1SIWvj+W9MPk5Z1Is?=
 =?us-ascii?Q?uwEKzuRUDSEQEFKwSTJwerpQfPLhX13s4jo1sqkb/0l/VuPy/nRjcguriJgg?=
 =?us-ascii?Q?GpfBeqGx3/v/cvvIkNoMQox9S0Pk51YqSbVEH48ausE8qXs10RfffT1RC5jp?=
 =?us-ascii?Q?MkHsn6JwlmigmT4erjOEcx6yS5PN5LkNKoL8t/7rcys5FLDBnwvFTnxmMBiD?=
 =?us-ascii?Q?eKNuCT4h5G3nUritbOdUS6cHYEuQF4pblxbznGAgGWpcRX5jXP4wE3VnpsOB?=
 =?us-ascii?Q?+Qblh3TNUdrpGcnhCIe6yCQYdfVM96bZU+36JzxtWTRShkwEXchFSGtLcDwO?=
 =?us-ascii?Q?LDyrIFg4HgtEv0SgqR6LRehBHxPVf+c5+rXMrT+kAlUla88X3Oj4RiaTM76L?=
 =?us-ascii?Q?ra83DPeADTYPOsy5vv8vxrT0P8xB+csuAflN6pHjjzjMlx+3SNjVaOwlcDuK?=
 =?us-ascii?Q?pnoiPZdUbqy7Sj4T9ld54Q71TymwEsVj1LdwqBaIxeRx2jaNkmqZ6kr7ewmK?=
 =?us-ascii?Q?6vg0jxTgEc9jWsgCGgJ+5/U8zCrQtHLuqKbV0n6xVqeeSHPuoTu0rf60Ce/H?=
 =?us-ascii?Q?u8YLTHjZkLwXyGTG5pktDP5ASoi5fSUGHayGDtHfwuzNjRTSbA2X2yrfGhuy?=
 =?us-ascii?Q?Y62VJA0+CGaZcsgWpCBdHG/wdHmYv15x/6d/T/7m1mQeYxlB2uKA/EFGGG91?=
 =?us-ascii?Q?AweCJ4sVg1WnW+O/PLiEBOZmxW7NhMduGZWZ6yMdOXugV8/a1jTUuhPh/sif?=
 =?us-ascii?Q?89olyWdyRq/bDLHKvf5DvozLJMCIlTTRN8ALQcKqsG1tL9bIRRSqAXvbXYkX?=
 =?us-ascii?Q?rQJ3PnHtbZGqMCEZ2YZt/Tp1NcWPy/ai97f+GTm+BM9ke77J9aMHrNpJwx8I?=
 =?us-ascii?Q?4dN0c5VksvV97YN1yr8y0h8M7xE77W1ytubdYtcCMiItTmxiPjFdvIAvkG7C?=
 =?us-ascii?Q?GRhmX33yevFZITWWS3KP85XEXxUJN+pTh+CWZ8M+/gx4NA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u8T8rfxKPhhrbEYNk6+Cc+iIV/DyGSTcmPOaPTfc92w4sgWHLawaaDJyDcy0?=
 =?us-ascii?Q?kWOglEfwNECiIuErxxgfCsTy9Aqw35mUXKTru2YE034wBbkpBirCGecsZdUr?=
 =?us-ascii?Q?tYWihLCo1VgnXMMc58ZlgOsk3WT1lgwuWMLIG3rybG8yzl45hieuZzYQ8Jxb?=
 =?us-ascii?Q?D5scRaHbm1WZMtxLwQUUO8gCuON3kC2LDd9SSU6acSMnYoUDNVsTXck10uHP?=
 =?us-ascii?Q?g6UNOLBx6aEbLgIaKF5y7mGE59t46gIbFj+2brm/6O184qEQNGLu2jnpQcV9?=
 =?us-ascii?Q?RAKF266t81SZmp41dk1kOIuKCu+L7cXksymmDSFo1TjPW7WhC3RdZ0K/EFXT?=
 =?us-ascii?Q?n+CZ8/bLm9lCcHAFdDscOIsm6qyNSIsI4yOkDAXE4itsteW1L3dVNZ4LNKbV?=
 =?us-ascii?Q?f7d8svn4XVZNad8Ih0n31upgfZdZhFVUs7EPbTjww+hCIb94IkA1peWFVB0c?=
 =?us-ascii?Q?1yoZia6JKHZIc/45S3bH4qML3Kbu041EGraID8XKm4Kdcts6uHhIIpp4YcJU?=
 =?us-ascii?Q?KbNYNlFHxBBu/IC7xAtjA7SF8Q0WZCKufuuFw6HdeaKKTqMSsGGYxxlAstjJ?=
 =?us-ascii?Q?sSJOzk6RINuZw+nHUxQ1RlATTS92zSxvPk+RI217ALz3QFdsU0zgXSJmVsiV?=
 =?us-ascii?Q?jmEdBd6WRPBr1rgj5Fcr2yMQ9YxmU0E0qRmu79F6Ud16shzFrfcjN1rMA/wj?=
 =?us-ascii?Q?xLwe/Gh+vUPrKGv6OCbChEJe3tgyOdZQgr4TkGITdDfCdBDyG84E7Y8P8A/Q?=
 =?us-ascii?Q?WVjW+CNyEi08cxVzDZbqKon6JyRQ5PVVYb+3ihWqPfU+5QP+r47ehhoS8X8H?=
 =?us-ascii?Q?es6WpmHfnrgyzg7cg0Qw81maO8VcK7Izl9pynSu7XQx1Ec3rehvHMVEgQZuV?=
 =?us-ascii?Q?1nkunrvpyfJR1kzFP7DNJ1+Zy/zFsgyJeJLBbRYVCLpnOAvQXIt9WfY7nORF?=
 =?us-ascii?Q?EylkbtxEg41WRpaopYlaJsisTuyWkzjKIbwOvqybZ/cxXsDXRrAIAD+7s88C?=
 =?us-ascii?Q?sEy6f45hBAXNpK29YMjIQMx52k3u0FWcqiuHKjSTQWalIocQTtRa/5PHqc3b?=
 =?us-ascii?Q?F9EZFCTPlsXseHZIzIl40CrlK2iq1Ur3KdxGRJmR9i9yopxfbI0ajcELy6QK?=
 =?us-ascii?Q?Bif0CyyA5p/ruOqnnh77K3CK9EtLkFGCJEgFVmFrpM85144cJnsDU/KQfkLA?=
 =?us-ascii?Q?6HoCLZjwldzIzzRFzflUcMb1NR2KlR3E5qhPcfe4Pmi+RvL8gSPZ+X1qD3wk?=
 =?us-ascii?Q?CHaq2yu6D/PBrOEybO8ius80OBtCMXWXmUfsIhbPZjGv56YThdcBhRC9hIpA?=
 =?us-ascii?Q?EeA5PSiT1Kq6PSY3uuOtjzva9gR6FQIa+n0coybO0uZJzcoM4V2rgiBxPGzU?=
 =?us-ascii?Q?VxRojo6XPZnzGBpOPmfWF7wdYnRlHXj5k8WLZJEcGzref+Kr0FrlR1P0tPKX?=
 =?us-ascii?Q?ci1Kz/7NEDyXvfEio1CykW2Wmpeum/hmxqISijaO+xiKpEMchlbfH+8nLsw9?=
 =?us-ascii?Q?9Tfj+ZyckdO1rVPMj3g7jBr0vJKf78xBwT9wRiD4qrn6pk2Y5R7jH7pSIIAN?=
 =?us-ascii?Q?qphoZnQYMRdgzVcJjdOXyIZMUMjs05kn2G1YGR1Z/7tiQ1qFU3OhkcQmpNKR?=
 =?us-ascii?Q?Qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: add1cd14-2a16-45b0-7a5a-08dce7134bcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:02:04.1407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p/XL7Y3OTlhZFXCKizQcE6uTPaaTrLcU8RLpAP2fU96PmP8jy25vFF6j1Gtw6/8UrIRNqMwSiFls6vbs/u0T3I7a2mRCkfypP+zUzOtUcUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7419
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 11/31] drm/{i915,xe}: Consolidate display resume functions
>=20
> Same sequences are currently executed by i915 and xe during
> system resume. Consolidate them in the intel_display_driver
> side.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c    | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_driver.c             | 17 -----------------
>  drivers/gpu/drm/xe/display/xe_display.c        | 18 +-----------------
>  3 files changed, 17 insertions(+), 34 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 42624bf80f91..86d6ebf0c82f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -752,6 +752,10 @@ void intel_display_driver_resume(struct drm_i915_pri=
vate *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
> =20
> +	intel_display_driver_resume_access(i915);
> +
> +	intel_hpd_init(i915);
> +
>  	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(i915);
> =20
> @@ -781,6 +785,18 @@ void intel_display_driver_resume(struct drm_i915_pri=
vate *i915)
>  			"Restoring old state failed with %i\n", ret);
>  	if (state)
>  		drm_atomic_state_put(state);
> +
> +	intel_display_driver_enable_user_access(i915);
> +
> +	drm_kms_helper_poll_enable(&i915->drm);
> +
> +	intel_hpd_poll_disable(i915);
> +
> +	intel_opregion_resume(&i915->display);
> +
> +	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_RUNNING, false);
> +
> +	intel_power_domains_enable(i915);

Hmm... It looks like everything here is being gated by HAS_DISPLAY, when
it wasn't before in i915_drm_resume or xe_display_pm_resume.  Is this
correct behavior?

I'll trust your judgement on this.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>  }
> =20
>  void intel_display_driver_shutdown(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index ac8bf00458b5..ce2dd03136d3 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1165,25 +1165,8 @@ static int i915_drm_resume(struct drm_device *dev)
> =20
>  	intel_clock_gating_init(dev_priv);
> =20
> -	if (HAS_DISPLAY(dev_priv))
> -		intel_display_driver_resume_access(dev_priv);
> -
> -	intel_hpd_init(dev_priv);
> -
>  	intel_display_driver_resume(dev_priv);
> =20
> -	if (HAS_DISPLAY(dev_priv)) {
> -		intel_display_driver_enable_user_access(dev_priv);
> -		drm_kms_helper_poll_enable(dev);
> -	}
> -	intel_hpd_poll_disable(dev_priv);
> -
> -	intel_opregion_resume(display);
> -
> -	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
> -
> -	intel_power_domains_enable(dev_priv);
> -
>  	intel_gvt_resume(dev_priv);
> =20
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index a4705a452adb..98ff603a1f84 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -447,23 +447,7 @@ void xe_display_pm_resume(struct xe_device *xe)
> =20
>  	intel_display_driver_init_hw(xe);
> =20
> -	if (has_display(xe))
> -		intel_display_driver_resume_access(xe);
> -
> -	intel_hpd_init(xe);
> -
> -	if (has_display(xe)) {
> -		intel_display_driver_resume(xe);
> -		drm_kms_helper_poll_enable(&xe->drm);
> -		intel_display_driver_enable_user_access(xe);
> -		intel_hpd_poll_disable(xe);
> -	}
> -
> -	intel_opregion_resume(display);
> -
> -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> -
> -	intel_power_domains_enable(xe);
> +	intel_display_driver_resume(xe);
>  }
> =20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> --=20
> 2.46.0
>=20
>=20
