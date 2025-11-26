Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EE0C8BC14
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 21:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC8E10E675;
	Wed, 26 Nov 2025 20:03:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UaPCXgk5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B7C10E675;
 Wed, 26 Nov 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764187433; x=1795723433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0ryM6I77VOfsFazK2q2WRcK+Z69Mp0Ka5nXMapxMOzU=;
 b=UaPCXgk5v3AYMx2YYNgT6Kg5D97wOrzNaUzzpribDzeDQHtRC1eF3Svp
 Mf70ZhJpsNw/mLn7cz34T+gb1s1oC7SLQMkcXqJkPVZLJ/M972XG+CwQM
 XMid5a4eAB2DU9Diqm+Bb0lpyY0GcsAgSvUXPZqv8XqcICTjWZsTWRaM9
 lFvOERxPJvw6b9cD31hWkiu5fMgR8w67AteOxrVWhkDm9+LnCL2802pPN
 GmnFtXSyM6jHbMS5erxiqC8QG1JG3g3Y6Xt11D5F+qlrLbpoO3aHssrxZ
 6mmPS+fZyQ86aszfZ33M1t+tmKt1QA2+6XIPtSKJd4s+YFWWbEiho1lvm g==;
X-CSE-ConnectionGUID: BU83aM7OTX+e6WXXA4C5YQ==
X-CSE-MsgGUID: OmQ5QZaoQdmUYjFGll95XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="68827915"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="68827915"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 12:03:53 -0800
X-CSE-ConnectionGUID: wvJ1YNMyTT6WxMnQ7OwkBQ==
X-CSE-MsgGUID: B5cM1KOkTb2PABKHZrBCmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="193056790"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 12:03:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 12:03:51 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 12:03:51 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 12:03:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K8vKrdW+0D+VHimin0kmiiCBMttEF2jdqnqLGI2yN0Jvnjfhvr4caOAtK8f6764l7uHeBDJhAk9zWleMR9URbpvwexL7V/20BMr+Lsjl+BM8yQtLvpGYIP54AyVxotpVeKhGFZIx00RWwrdJrqveTOUiVVr3NDZXSQ/D/Mvc0/ks+YuPLRoW2zPjBb5c19COp9hI576UyfEC2zZPL7AAIx9zjSPJguz/AT4W5/Av3TbzWvRwiAyT4d240yeTHFoNdTXn+JG/vE45ZMuS1m9GkjB8DfoacvRPK2W+OXXltQH0EZU8Mm5STNmH/aVr6NvqEequIrCujF10g90VNDcgTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vi3UBWfXn+1X+KefEmPxTSYHUn7it8gbKOBvbgUDN2Q=;
 b=KeqKsDuOky7y7kd3KS/NPj/7B56Yb6KByUGXFwMdATr98Gdd+vnNNmDtVZlJwuew596c/DsZfP66q3LKZLCRGPfbGifNZZEQ4ycSk91aOtg5I8DoXbv4ziNWb4PIkX8CU+oY6q1h3l91fSmfIXVWB7ycU3LS83yIV4W2ltcZaXYxwluYcswElPnx0p4i1YUHXQ5kfFB9JbIykttQvmZz/y+dksRBZJzHU9xNLbd3i54Rpw4M97FAMfFu4yDrx52tthVhbXLN2vpBm1WWosr7RfpwEfR7U9CxArc8hDhUsUnXgmzCjTLIv77wX+3yP8fA5dSt7+AoSrpUO+805+aXVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB8489.namprd11.prod.outlook.com (2603:10b6:806:3a9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 20:03:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 20:03:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>, "Mario
 Kleiner" <mario.kleiner.de@gmail.com>, Mike Galbraith
 <umgwanakikbuti@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: RE: [PATCH v2 4/7] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Thread-Topic: [PATCH v2 4/7] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Thread-Index: AQHcTWY10nz1b1Cw7kizcYMyCEg4YLUFgvJA
Date: Wed, 26 Nov 2025 20:03:46 +0000
Message-ID: <DM4PR11MB63604FC52C88FCDE1176FA25F4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-5-dev@lankhorst.se>
In-Reply-To: <20251104083634.670753-5-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB8489:EE_
x-ms-office365-filtering-correlation-id: 5ed37bcf-67f7-47a1-f622-08de2d26e8b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4bTLLJYuOiXD1bGG/sjt9DNcG1kd2WCF7vkQORvpjfa3oOcebwmz6RBCuuGK?=
 =?us-ascii?Q?OlZRwwITN2K6fbFKxpD1oPlRc2iqLW+27TyjgKH04I3Srp01MzFLs+YlLl6k?=
 =?us-ascii?Q?lY8bexY7YTUvXFO0i5AMYWpTgNXBnMkoXnXLdJBUT+vl0VozYZqaNoM/aNSu?=
 =?us-ascii?Q?Z10Q2mhuz7xuCn6hGEnqsH6q5qNiEdI0dbTU7Wmg6fpEPG8V8Jrv3sMlkX3z?=
 =?us-ascii?Q?AE2goO+T8oKH+fIBNwj7+B7wM8/ZgeAUSotrROLJx6F0o57dNlKGs918K+LM?=
 =?us-ascii?Q?cj9CKpG3fkEBQx+8n3RRHqQUHL2GHLAgc2RDkpxzEzn+OPBcwjukyFeYqt7A?=
 =?us-ascii?Q?Y6xLkbeo7agS4su4zWK62rWkmcxkCGMEtZHS2Fr0oUAZnKykBJ0lg7kEsntg?=
 =?us-ascii?Q?4JUlnV5qHynd36xIlB/sxsXDSKj5lski4sRSOwEa5P4JpakOtrNQdYPZUEIW?=
 =?us-ascii?Q?fwVVzuf8sVCjCvfEwHsq5ArbRA9m7Pj8GXse9kkpFjuSG3+XFhgNyj7IoRbe?=
 =?us-ascii?Q?zhL7f7HAh0uK0g6wPXlnTRVW+Kz+tjETp0/7wh/nz1ug8mqBw3+XSwyig7ym?=
 =?us-ascii?Q?uz9oTyNuPDG6bNcstAkWa/MLhwbihkDR107TstETmdzyquZ69A9pX8Gu0J9c?=
 =?us-ascii?Q?0PbDncJLEo5c6GNXAGhdwGTbhn8zGdmB13Cyg0uAC73NuzA204nW8KWHbiBR?=
 =?us-ascii?Q?y7+rvhiyoqiEPMzax0Ay+J7wBuNZVf8eMUpbYEms/f52B8ogeLroOtR+ijOB?=
 =?us-ascii?Q?yvRE4kPOq53R0Q4JzWIkaXpfIHjW4KoOQJ8liZ/84ZX3iDy6zNSFdjohXbmZ?=
 =?us-ascii?Q?zYZUuUX75jyxaAqLqim9Etkr0BKaCK72pAFsnhQRSeDQVTXU4s4dhrN/BIgl?=
 =?us-ascii?Q?fF+9/UuQfBOA1V/hILaIDgzHLsIYzoO4AqjDoeXDiNuYqGx6tiworrR3G3K7?=
 =?us-ascii?Q?fmHpxJxZdvL2zH/z/XDnVOBCSnleeQg0LGFaTG49BuICgDjTU5VCvpmbsojw?=
 =?us-ascii?Q?jHMEb76uSAvyvI1CVz9val6oQACaQqIJjoWy3fYyRtSqPG71bVso0EFWpWiK?=
 =?us-ascii?Q?aF+ZAAQBKQ/vlPjeWAaea/hSwFr6jufcEp4hfzcLTtRnfYnho83t00swYkHl?=
 =?us-ascii?Q?5kKUnsztvywaChGZhuPjbK24u0J3vP+UyOeHpkjrCAYfCW75tpsicZLUByNH?=
 =?us-ascii?Q?R+fqAcqGIxkluGG2jb4R6h72Yd9bT5R+ctVzAqBLJwlE4H/ivDr3VoR57qyW?=
 =?us-ascii?Q?tpwDLfQY8xSXo1cOqpeeWZ182MXnu4xgmZHy+V6wEgMhOBmyHB4uIbeFaVbg?=
 =?us-ascii?Q?K/4MnCTV/omrK6xzX4FNKy64xQTHLUZVrcQgNtaNME08GH134CV8naZSOncu?=
 =?us-ascii?Q?YReousYfDvSN4ZTgT+ibMNQ2CP/+JEj7ogt8oBOXRHLs4MZ+V20A5609NmxF?=
 =?us-ascii?Q?L7db7r2eddDhkqwoA8yu6Nzt91rAYgXvTw/ao1E9S4mKQ6tCgWUnpmKURMi7?=
 =?us-ascii?Q?DuY0NrmFQ7GppAAtIEocP2wYxl8IvBl+YRg9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?624eR3LebtMYwCKH6eM3QK1Jpzm1+oi7ji5ODYiMg3zx+NfVtfpSPSFfjda4?=
 =?us-ascii?Q?PdJoEaSYi4DoO60jaiX0vV+1540nrSdIePGLKgE4HhOl9LxG7MiF23BrMHyj?=
 =?us-ascii?Q?oTrhG6h9MlTqEmtJCK6Vwi+pNXViMNuuNe6Dn3MotH1hiG5umnLmkDns608T?=
 =?us-ascii?Q?YOByXEbHsRtTh4Htj5TjFV0G5mvKzMJ1JFDpIk2U75ukPC6vFzagyQxxjfQ/?=
 =?us-ascii?Q?BYf+VXMNfl9iI6KMt1UICwux8zBwQu2OnRKDUIVMrDppD7Q8lKrqeU5wrlvf?=
 =?us-ascii?Q?NPoGkF5SfpFHRorVru9fM538Z2a9hPtZucovRUN9lI7j3KcWw6bAHwlEXkjA?=
 =?us-ascii?Q?i5ob2Ugamro3Ia4iFb6QyxAm8zIXhy2mT4JlHRwYh0qrlYmpe7Fym8YJdm1u?=
 =?us-ascii?Q?NFacM8LheUBXHEwhdKA/IOPczmWsKP+7SefKJ6+zW9YGo+xbDijYlZS7ZYOF?=
 =?us-ascii?Q?WYVVk3yfeR+gMuhsdmf170+1FzqHK1MwQ22uPeV+LoIhvlmertyG0YvbDAkT?=
 =?us-ascii?Q?mcdVmzFE/3C+6YCf/OCAAv9oeDAJn0C46f8tBq0BrSCI8Vs0PK8SetH6nlh+?=
 =?us-ascii?Q?R2WxiR1z/QBreWOd/M1+7xRZpg5OCnua02r37UBZnQq2qFiLCJfkY6OWNwmo?=
 =?us-ascii?Q?DrFhtKr7aHl9nbkRe6msTmdi/mCICSbf/dO104TCJh3tyEFwrENdf2fsWu2H?=
 =?us-ascii?Q?cmqp++s3c9WzFS9ZB3SMqVjpwb8ahEEuVF/FLoHbqnC1tPZr6SgTgwpbfWuu?=
 =?us-ascii?Q?CZc5fslVlRO5++W7T+eZe2vUApeDGuCdJS+lNfoGzaRBYEXCfHFVeOyQeS41?=
 =?us-ascii?Q?fcFpjafCXDj7FkjqsdugK63QAHZXmWbuvDqmi0j2jom/+OIqIktDjzg76QeY?=
 =?us-ascii?Q?chMUyCpff63ROsEaVVRkELFPBJ6NYcc4zBfaE3zQ28H1MYdsEmB6pMnu6giI?=
 =?us-ascii?Q?8ntNxsmwT/qJdKekKfLM0Hw5Qm2QUDUO+prj9HqcSJ95bTx9jMB8XcJD1hTa?=
 =?us-ascii?Q?4kJypHdjCGaPSr1Qwj9JH6R6kRReZI/4VR+H5m5Dhma41E5Bc7abzZW00fnD?=
 =?us-ascii?Q?nxbVVymQg+nQ/0rL6T+9zpEPXGZxhWUOhoOgNYG4ulo98h+hXQdwZ/NgJmV6?=
 =?us-ascii?Q?vMT0J4iI/a4n5KQ7/0jXqMtkObsaQ5A2o9IYvJ20fSO5S7Ez6jaWpjc8Dye9?=
 =?us-ascii?Q?FvH2WLGM5PVvFv3Y6UhCAUcUVHhVpBBOex7lh+q42okrijIAwePQ/NsET/Th?=
 =?us-ascii?Q?os4V9gwmC2+bSo6576sdz9r55LqPmDMobx76lcESMp0EtUmtn82MEGJLBSR7?=
 =?us-ascii?Q?vvetFtDFGjhvtp1m9zPUY7JeyoTatMJbdQl6a2RohwbDpriBat4qCkG/L3pu?=
 =?us-ascii?Q?JfSMWt4A/lMOaCL1yUcbT/tN+C+WAnq2koBJWZE8cWJGA8TIhvu2Qvf8eTin?=
 =?us-ascii?Q?VEv0tMcvgYqwuX82DhuaI2KkB0owow2pZL0gJnSULPOgXU9TJsO4rreYQ+Jb?=
 =?us-ascii?Q?KxMb92QwGjoPLHP7Cy5NHDrRYkif0GhOwPYC7wICDEm0nrRZjjooqQXoDMPW?=
 =?us-ascii?Q?k/tJ+3rXpWPKzU5Ej5v3fTwtq3neWfUCpiMFp7mO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed37bcf-67f7-47a1-f622-08de2d26e8b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 20:03:46.9057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TDSMC2Ug4veg5hGmef4Q9SqKYlZnjP0uWXy+VvWqMEyBsUL82/yvLje7pBPSInqFlxdtwMCxfWWjcvS9Xrtj1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8489
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Tuesday, November 4, 2025 2:06 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>;=
 Mario
> Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
> <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebasti=
an
> Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
> <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
> Subject: [PATCH v2 4/7] drm/i915/display: Remove locking from
> intel_vblank_evade critical section
>=20
> finish_wait() may take a lock, which means that it can take any amount of=
 time.
> On PREEMPT-RT we should not be taking any lock after disabling preemption=
, so
> ensure that the completion is done before disabling interrupts.
>=20
> This also has the benefit of making vblank evasion more deterministic, by
> performing the final vblank check after all locking is done.
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 35 ++++++++++-----------
>  1 file changed, 17 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2b106ffa3f5f5..3628d2a1b8f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -708,6 +708,13 @@ void intel_vblank_evade_init(const struct
> intel_crtc_state *old_crtc_state,
>  		evade->min -=3D vblank_delay;
>  }
>=20
> +static inline int vblank_evadable(struct intel_vblank_evade_ctx *evade,
> +int *scanline) {
> +	*scanline =3D intel_get_crtc_scanline(evade->crtc);
> +
> +	return *scanline < evade->min || *scanline > evade->max; }
> +
>  /* must be called with vblank interrupt already enabled! */  int
> intel_vblank_evade(struct intel_vblank_evade_ctx *evade)  { @@ -715,23 +7=
22,22
> @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	long timeout =3D msecs_to_jiffies_timeout(1);
>  	wait_queue_head_t *wq =3D drm_crtc_vblank_waitqueue(&crtc->base);
> -	DEFINE_WAIT(wait);
>  	int scanline;
>=20
>  	if (evade->min <=3D 0 || evade->max <=3D 0)
>  		return 0;
>=20
> -	for (;;) {
> -		/*
> -		 * prepare_to_wait() has a memory barrier, which guarantees
> -		 * other CPUs can see the task state update by the time we
> -		 * read the scanline.
> -		 */
> -		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
> +	while (!vblank_evadable(evade, &scanline)) {
> +		local_irq_enable();
>=20
> -		scanline =3D intel_get_crtc_scanline(crtc);
> -		if (scanline < evade->min || scanline > evade->max)
> -			break;
> +		DEFINE_WAIT(wait);
> +		while (!vblank_evadable(evade, &scanline) && timeout > 0) {

Not sure if doing the scanline check with interrupts on is ok. The scanline=
s can move
if we get interrupted or what happens if we get a vblank interrupt. Looks v=
ulnerable to race.

I will try to check this further and get back.

Regards,
Uma Shankar

> +			prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
> +			timeout =3D schedule_timeout(timeout);
> +		}
> +		finish_wait(wq, &wait);
> +
> +		local_irq_disable();
>=20
>  		if (!timeout) {
>  			drm_dbg_kms(display->drm,
> @@ -740,15 +746,8 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx
> *evade)
>  			break;
>  		}
>=20
> -		local_irq_enable();
> -
> -		timeout =3D schedule_timeout(timeout);
> -
> -		local_irq_disable();
>  	}
>=20
> -	finish_wait(wq, &wait);
> -
>  	/*
>  	 * On VLV/CHV DSI the scanline counter would appear to
>  	 * increment approx. 1/3 of a scanline before start of vblank.
> --
> 2.51.0

