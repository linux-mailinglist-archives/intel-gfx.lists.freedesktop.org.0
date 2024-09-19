Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C39D297C8E8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FEE10E2AF;
	Thu, 19 Sep 2024 12:14:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RtkGKg9K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B8B10E2AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726748065; x=1758284065;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iIaAeut35cSGoOQCHu/DO2yB09Lui7kddg8gSc2I1uE=;
 b=RtkGKg9KxDWt4dLIwZc26JxeqklrMm1Ny3h+h7kaXfVsNYdc6hDzKHDS
 ca2rKF72viqN0g3VqlMa7Gm2Hy+uFbRa+R8gcoBUylhKp4+CSfCVKqCiu
 lUDYByEk4Vg8rp7CU28p33zexFpI/DCnwMKM6mI8ZT8Z3BlHGIUo3wy3c
 JUhwkFtw9TDt55b3+XFymnWk84eXFfv4PZYqbQR9cx3m3pysyBuuczqT5
 gCceCYqnStaFlZSw7yZzkzR+Tz+2IbFqGhQim9M8m/PDCOLftGmXMUdxo
 xfAINStecScR+rMNvS2EIJIKTtHvK1yB2TmefEdCxOam9Xt+s1UlfAgNv g==;
X-CSE-ConnectionGUID: JK4L1d6jR3+GN2Ozw/8dIw==
X-CSE-MsgGUID: uemGO65GRTmBFjaTdwVpfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25648392"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25648392"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:14:25 -0700
X-CSE-ConnectionGUID: ya9b/odbS6+zBi3C7aUvrA==
X-CSE-MsgGUID: jgbtWCw8RhujlRK6ZWwzpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="70753507"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 05:14:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:14:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:14:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 05:14:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 05:14:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TWxbFZKyJw1FAT+TPwt4/ber+Lzzd10ZVz0tAVEUodudDKE61CBc1pq6oMrwTNrx+WNWaUSCn7/P4qkzGDBaTZuAa5+ihd+dtwPg5p9iVCMqtJk09wU0Bp+8f9mkjP6KBJqs6gWG/a7+SGa2JhQBX7lMze5U39OWtGvcR6Q62b2psTEocXpbFG5R8n+HiCUww6Pu2QvM4Ramc6CqwQJdmbC8KSzlWn52KRFyD+BR/Mpgv342xbfampSKzKO2+Msasqx/ixcOwclbJB5419cDOGrVRdxlk5qqCPOSysoDJzLMsAHIcpzqbYoGaeBdFR4mIgkF6c0a9w+sr6pItSJUbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jic1u/vnXDJvodS8QKtb0hqxiGacQJX23kvJMCJr8Ck=;
 b=Vvaft3bmed+ljiVSH2AYJFCtdEIwPevvQGBfY5AZG/8jbKLg0ExIcY6nWGTcKZsDX/x3kk0Vkutb+5q4WolreSZNoBPyraFiarzmSgTBSLleUaucIz/rDm3bASAs2lrLoRUAacMinPCtAorYAp2naKr3PogD1m7glRfXdx4eXbDisMZ0f8A0l2vFxhMdFYFbtKNXnFhvXK9imgbotUivSstE8ifce6QUUCxAaLpRnI3Tpo1feR/u1JNvPajCg1N4dJrDg0r5K4Fc2wG8kjRE+JJSHYPuiCb/PQ/BfxiKevveKjEIBo2EhEcrlTQnqWHg8RnL+hQV1fq3/XcgAF0zgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.17; Thu, 19 Sep 2024 12:14:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.7982.012; Thu, 19 Sep 2024
 12:14:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWpbIY1zkCwnkSZ99sh+xfUWbJFu5EAgALmIYCABk00AIAAGzcAgBASEgA=
Date: Thu, 19 Sep 2024 12:14:20 +0000
Message-ID: <DM4PR11MB6360E85B9BAE1924EFC27A9EF4632@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240909045454.412110-1-suraj.kandpal@intel.com>
 <20240909063218.447934-1-suraj.kandpal@intel.com>
In-Reply-To: <20240909063218.447934-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jouni.hogander@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4883:EE_
x-ms-office365-filtering-correlation-id: 5409e1f6-819d-443a-a2e4-08dcd8a49736
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zIr6mamOfdAY2KItUuNh6+0KwnFhSjvUD34d2qbHU69rQsi328tNqJw1zxo5?=
 =?us-ascii?Q?IdcQM8p8yZeimulbbzOTtFU7b43TOnNha6TYV564P+Gc8NQwdwr12T/Dg+bH?=
 =?us-ascii?Q?JY4PL0uaVq0ev+diRicCcBqrYo/QT/sST8E3jcvDNEhYteIgdncJVCJsB2M+?=
 =?us-ascii?Q?JprFuir3PPHH+6lRK8CE2nSo9hsdZQIgeZVMEsABIcmrU+kMaJu9DuMomB9S?=
 =?us-ascii?Q?FrBRSUZQ9IfiYfCCf16hHaHhODMQYfjoEJP0FPnm6rkiwFPZcmuu6rdP3Rjo?=
 =?us-ascii?Q?vORNEfrX87Qk8S9t/x+tG4sVJZS+D5S4uAU+7aiXvjzVS8rPuy07z3rX/lPo?=
 =?us-ascii?Q?/SA4uTgS+PQSmGCl7L3OjF1obn/2bO6HzwAQrym58jhKj1oiLKo6C6OmwMET?=
 =?us-ascii?Q?RTKN3LSudI+vwAlS1cg27hSqqCvws9684HSkEZ4TLQgMKVRKQd+wMxHJVhow?=
 =?us-ascii?Q?WMNcWairkJNFvgaXMo82BZykp1TpM1XP3CyxjPJA/a7ebqT3StOjcAuv2r00?=
 =?us-ascii?Q?JLKFZDrvG08OITci3Tg5jFmFBXm5O1PZMAhjO4qhzyL2/N6wYNytlUvISFU/?=
 =?us-ascii?Q?vHxEZQkFzyqBeDnrI/p1KdmptXjZVD2gN4+42T+YYxBG1mVIBBjRXicwGXPZ?=
 =?us-ascii?Q?99mqyGTQ+zbdwrfMXETVOwlu6ehJZVeZieiW++SbLt05/sf1CG42qS5ospcF?=
 =?us-ascii?Q?Vcf4e7sbzBqubHuJIEMMXFWmYvR865fYG/qTPWiMPdyEKO/q1wX6bQmQQqTg?=
 =?us-ascii?Q?yVpYD0ZoJwP581emMaVCBGt4BY2ZRgh/Z0KxGNSw6EfdYU7c+Y0D6ElYXU3w?=
 =?us-ascii?Q?hEfwMnJ+pf4aDs3DbtlU6k9gWqlLo/biV9w5j07r/VpCKXpX8/xZPKiTf89N?=
 =?us-ascii?Q?AhWzMKbE0i/vIseyhzIngEKZYptJb/PxVFwEihb0SZhrlyt4byVRjDflUYIW?=
 =?us-ascii?Q?qtnqqH2MO/pWbG3QFjmWLZJWwp5PNDPXAGAmS1ASQlAmqPPqnegc4aRuis50?=
 =?us-ascii?Q?1+EkYEwlZSwNQWELimE0lfWMIjdHHgKkgazgtFLpjyXybQb9ED+8CFI7Ap9D?=
 =?us-ascii?Q?saOBFIRttIAEeNgTFRcjHoECg4GfWDPBFHHsqb8S+5T4SAuWpXyf2XOUysOB?=
 =?us-ascii?Q?2msCQDlFWNf0BaU1m8jgF9kCbZOuEbpT2KfIxV9INGdwmAPyu/eCBXPG6TDD?=
 =?us-ascii?Q?DZ1TB3pkVR3i2zMfjiQ68BcFimG8jqm7W1ny/fVOuBGj6AAGHiCIvxdTlXhw?=
 =?us-ascii?Q?9pf7f2mlaYJcOnV7ccps77c+Z8xCm6tsXIqswrC1dnSQ8AMtpv9oZYku6TmN?=
 =?us-ascii?Q?kcqE7CzGZsgmCEXMFmcCXucpMmcYG07HJnaWnjqgMp3oIb+EaLGxvj8/njtL?=
 =?us-ascii?Q?DM7SOlKSP0C9rQTqLf2XHhjwjbsFz6pR9JzTQS2di6LLzSjVYA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CORc5etWvaoc1VQ92L06czncM5EByjqp+WCB5Yv0ViUXbFZgzsHMMQArx8pf?=
 =?us-ascii?Q?pZLHs/FXp6lk8YdQUL2KWg/YyVqpd5MrCGep9JCtegZH1saUQt/Ysv9Oml5F?=
 =?us-ascii?Q?1XJJKfqLcFI4eawCM31v++peg3VJxA5Pn8LjJvsuvIDpcRLmNErN3cPDoLqS?=
 =?us-ascii?Q?sV6BmC49ZKCTzeBKCuNMsK3TN1JTLOXLBo9Xjk+wGfizyrOIY37/3r8xPXvN?=
 =?us-ascii?Q?1EtPRvcplZ5gpOtEdwwT8BkN5UQNvS1EKzkqjg79Dohjz9JVoS88PaRvrcmG?=
 =?us-ascii?Q?XWXRXd2wVbTXBRzFHKXe1dvuI6XfPp144EO3MBN9ROsAUB1bbLKLo6H9QMGb?=
 =?us-ascii?Q?4zUWVifV5rxhsKA7I7mt2CeYLa25TkjVzSi3F5WljtXH3UrIeO7vM8QjSKkY?=
 =?us-ascii?Q?zlwSFqIiLXRxAp9hhi98QY+f+4OfO9MhUVZDQc8MPnnbFOSwUNw7MUVWJXEn?=
 =?us-ascii?Q?bALA2BAyVZ/ImHqrsDV+UZM7UwMb3MNCfCSne/n6eron1TPgSBlLX526VbYj?=
 =?us-ascii?Q?oYtnS5PaJM86y1jhcg1OGBHEGgWK9RZwWRq+4eFKy0qmidm8TfRUxLAfQNI1?=
 =?us-ascii?Q?KZ1AEHs7ux5OCkkvWm7YhCgIUtYMRWT4ctfaaxqM1NKvkz8O24W97DynbSbO?=
 =?us-ascii?Q?58qGSje1tIvDj/qWIUOsicKqOQkeAPUjLc0o+bL3HFoygeWHAaPUC9onwB/T?=
 =?us-ascii?Q?adVpoM18AHLsQK+02w2ff0WUfXasxaRhmFdOUvBmgRGMq52hmi4gwl7heFRP?=
 =?us-ascii?Q?wYigPokXcdudCdEJExUt6bbJVhPJiDI6te47VmCCTpEILTtXskIZgH7zyDSp?=
 =?us-ascii?Q?OyfidlLKgzDLD7UgxHMQkv3bl2lQNgMU2jmvu0wNu3OFk0Tvyd27MA4EXYNo?=
 =?us-ascii?Q?v/QkPv3WEpElqfF01wDisQ0L7V4mosxDSTmtiyMhmDH+Ed1AgxJoHG1wAeQo?=
 =?us-ascii?Q?KMlQPYHFAo/e7CgdQ4a91bx7MBGkA30/eU5w8D4/w26Km5bcCjYaZhDzQsS7?=
 =?us-ascii?Q?caoFskffoArrkeJQHIe+ACiPJ81/yguTGg8f62SDRh4USj04Ca0qlVWj+/Kd?=
 =?us-ascii?Q?u4emiixqy+8BXEw9D9aertXVb5UtSjfWNuEqeC/GE3cBATi33Cq8t26lihqR?=
 =?us-ascii?Q?51jY9wuBLBHQB4M2ZPpUEfWmo5rbAPO/YmLRJhHQgbUNx0/k9UtBtwSmL1Dj?=
 =?us-ascii?Q?Yz0VZV4498teAPGPxX0leu9xYpm69Umexm+yHV1YPkL/rAeVH3LWqCxFYWqn?=
 =?us-ascii?Q?vXgRee2hZfGDZuKHZAlc+I+WCOJHq1MvUpbcU1bE+Wo0QavOboHynVswf0fD?=
 =?us-ascii?Q?VlsUthfV/+OjYYkk1fX6cdRJdM/hMxgWyOE/I+T8E7DsNlyOQv+Dmp0MHk7n?=
 =?us-ascii?Q?GddAu4GeZVFZJQpAX7lKJsMeD806s1mdGWBvWTEQ5HgzWvvdhUx81YGx2T6W?=
 =?us-ascii?Q?NoJrChCWIJm/VVLgJ68QEn0AJJ7iTy7dvZg/NOKkXA3E4Sprs4SvGja994DZ?=
 =?us-ascii?Q?4NejYnJkXX+0hJ/d7VqddUJkzySQhnu9lq9C7tdTiXGyKVPB4vlSM+eLBoPH?=
 =?us-ascii?Q?pH7Pr3L06NT0brrxS5JQvAboTleJsUQ8vrc9tbbE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5409e1f6-819d-443a-a2e4-08dcd8a49736
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 12:14:20.2486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sIHTMgKQsxJLo0k+KMiQsaNqIqP2NJRsOsUyPR3Zihdj5n3JOQwDgP4nEoWyFs+4ALMZARKOWUZrTj0v18sbiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, September 9, 2024 12:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Hogander, Jouni
> <jouni.hogander@intel.com>; Deak, Imre <imre.deak@intel.com>; Kandpal, Su=
raj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/psr: Implment WA to help reach PC10

Not: Typo in implement

> To reach PC10 when PKG_C_LATENCY is configure we must do the following
> things
> 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
> 2) Allow PSR2 deep sleep when DC5 can be entered
> 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or eDP =
1.5 PR
> ALPM enabled and VBI is disabled and flips and pushes are not happening.
>=20
> --v2
> -Switch condition and do an early return [Jani] -Do some checks in
> compute_config [Jani] -Do not use register reads as a method of checking =
states
> for DPKGC or delayed vblank [Jani] -Use another way to see is vblank inte=
rrupts
> are disabled or not [Jani]
>=20
> --v3
> -Use has_psr to check if psr can be enabled or not for dc5_entry cond [Um=
a] -
> Move the dc5 entry computation to psr_compute_config [Jouni] -No need to
> change sequence of enabled and activate, so dont make hsw_psr1_activate
> return anything [Jouni] -Use has_psr to stop psr1 activation [Jouni] -Use=
 lineage
> no. in WA -Add the display ver restrictions for WA
>=20
> --v4
> -use more appropriate name for check_vblank_limit() [Jouni] -Cover the ca=
se for
> idle frames when dpkgc is not configured [Jouni] -Check psr only for edp =
[Jouni]
>=20
> --v5
> -move psr1 handling to plane update [Jouni] -add todo for cases when vbla=
nk is
> enabled when psr enabled [Jouni] -use intel_display instead of drm_i915_p=
rivate
>=20
> --v6
> -check target_dc_state [Jouni]
> -fix condition in pre/post plane update [Jouni]
>=20
> WA: 22019444797
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 112 +++++++++++++++++-
>  2 files changed, 114 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 733de5edcfdb..59c81f0a3abd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1577,6 +1577,9 @@ struct intel_psr {
>  #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
>=20
>  	u32 debug;
> +	bool is_dpkgc_configured;
> +	bool is_dc5_entry_possible;
> +	bool is_wa_delayed_vblank_limit;
>  	bool sink_support;
>  	bool source_support;
>  	bool enabled;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index b30fa067ce6e..e50b476494a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -26,6 +26,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_debugfs.h>
> +#include <drm/drm_vblank.h>
>=20
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -874,6 +875,78 @@ static u8 psr_compute_idle_frames(struct intel_dp
> *intel_dp)
>  	return idle_frames;
>  }
>=20
> +static bool
> +intel_psr_check_wa_delayed_vblank(const struct drm_display_mode
> +*adjusted_mode) {
> +	return (adjusted_mode->crtc_vblank_start -
> +adjusted_mode->crtc_vdisplay) >=3D 6; }
> +
> +/*
> + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> + * VRR is not enabled
> + */
> +static bool intel_psr_is_dpkgc_configured(struct intel_display *display,
> +					  struct intel_atomic_state *state) {
> +	struct intel_crtc *intel_crtc;
> +	struct intel_crtc_state *crtc_state;
> +	int i;
> +
> +	if (DISPLAY_VER(display) < 20)
> +		return false;
> +
> +	for_each_new_intel_crtc_in_state(state, intel_crtc, crtc_state, i) {
> +		if (!intel_crtc->active)
> +			continue;
> +
> +		if (crtc_state->vrr.enable)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +/*
> + * DC5 entry is only possible if vblank interrupt is disabled
> + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> + * enabled encoders.
> + */
> +static bool
> +intel_psr_is_dc5_entry_possible(struct intel_display *display,
> +				struct intel_atomic_state *state)
> +{
> +	struct intel_crtc *intel_crtc;
> +	struct intel_crtc_state *crtc_state;
> +	int i;
> +
> +	if ((display->power.domains.target_dc_state &
> +	     DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0)
> +		return false;
> +
> +	for_each_new_intel_crtc_in_state(state, intel_crtc, crtc_state, i) {
> +		struct drm_crtc *crtc =3D &intel_crtc->base;
> +		struct drm_vblank_crtc *vblank;
> +		struct intel_encoder *encoder;
> +
> +		if (!intel_crtc->active)
> +			continue;
> +
> +		vblank =3D drm_crtc_vblank_crtc(crtc);
> +
> +		if (vblank->enabled)
> +			return false;
> +
> +		if (crtc_state->has_psr)
> +			return false;

It should be !has_psr=20

> +
> +		for_each_encoder_on_crtc(display->drm, crtc, encoder)
> +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +				return false;
> +	}
> +
> +	return true;
> +}
> +
>  static void hsw_activate_psr1(struct intel_dp *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp); @@ -986,7
> +1059,15 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	u32 val =3D EDP_PSR2_ENABLE;
>  	u32 psr_val =3D 0;
>=20
> -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> +	/*
> +	 * Wa_22019444797
> +	 * TODO: Disable idle frames when vblank gets enabled while
> +	 * PSR2 is enabled
> +	 */
> +	if (DISPLAY_VER(dev_priv) !=3D 20 ||
> +	    !intel_dp->psr.is_dpkgc_configured ||

Why ! for dpkgc, Here this can be enabled if dpkgc_configured right ?

> +	    intel_dp->psr.is_dc5_entry_possible)
> +		val |=3D
> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>=20
>  	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
>  		val |=3D EDP_SU_TRACK_ENABLE;
> @@ -2667,10 +2748,20 @@ void intel_psr_pre_plane_update(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
> +	bool dpkgc_configured =3D false, dc5_entry_possible =3D false;
> +	bool wa_delayed_vblank_limit =3D false;
>=20
>  	if (!HAS_PSR(display))
>  		return;
>=20
> +	if (DISPLAY_VER(display) =3D=3D 20) {
> +		dpkgc_configured =3D intel_psr_is_dpkgc_configured(display,
> state);
> +		dc5_entry_possible =3D
> +			intel_psr_is_dc5_entry_possible(display, state);
> +		wa_delayed_vblank_limit =3D
> +			intel_psr_check_wa_delayed_vblank(&new_crtc_state-
> >hw.adjusted_mode);
> +	}
> +
>  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
>  					     old_crtc_state->uapi.encoder_mask)
> {
>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder); @@ -
> 2679,6 +2770,12 @@ void intel_psr_pre_plane_update(struct intel_atomic_st=
ate
> *state,
>=20
>  		mutex_lock(&psr->lock);
>=20
> +		if (DISPLAY_VER(i915) =3D=3D 20) {
> +			psr->is_dpkgc_configured =3D dpkgc_configured;
> +			psr->is_dc5_entry_possible =3D dc5_entry_possible;
> +			psr->is_wa_delayed_vblank_limit =3D
> wa_delayed_vblank_limit;

We can drop the variables and directly assign this to psr->... and use it s=
ubsequently.
Also it would be good to have this done in compute and than just use it her=
e.

> +		}
> +
>  		/*
>  		 * Reasons to disable:
>  		 * - PSR disabled in new state
> @@ -2686,6 +2783,7 @@ void intel_psr_pre_plane_update(struct
> intel_atomic_state *state,
>  		 * - Changing between PSR versions
>  		 * - Region Early Transport changing
>  		 * - Display WA #1136: skl, bxt
> +		 * - Display WA_22019444797
>  		 */
>  		needs_to_disable |=3D
> intel_crtc_needs_modeset(new_crtc_state);
>  		needs_to_disable |=3D !new_crtc_state->has_psr; @@ -2695,6
> +2793,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *st=
ate,
>  			psr->su_region_et_enabled;
>  		needs_to_disable |=3D DISPLAY_VER(i915) < 11 &&
>  			new_crtc_state->wm_level_disabled;
> +		/* TODO: Disable PSR1 when vblank gets enabled while PSR1 is
> enabled */
> +		needs_to_disable |=3D DISPLAY_VER(display) =3D=3D 20 &&
> dpkgc_configured &&
> +			(wa_delayed_vblank_limit || dc5_entry_possible) &&
> +			!new_crtc_state->has_sel_update &&
> +!new_crtc_state->has_panel_replay;

Good to move this to a small helper function which can be extended if requi=
red as well.
Also seems used in post_plane as well.

@Hogander, Jouni Can you also ack if this handling for PSR is ok.

>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
> @@ -2735,6 +2837,14 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  		keep_disabled |=3D DISPLAY_VER(display) < 11 &&
>  			crtc_state->wm_level_disabled;
>=20
> +		/*
> +		 * Wa_22019444797
> +		 * TODO: Disable PSR1 when vblank gets enabled while PSR1 is
> enabled
> +		 */
> +		keep_disabled |=3D DISPLAY_VER(display) =3D=3D 20 && psr-
> >is_dpkgc_configured &&
> +			(psr->is_wa_delayed_vblank_limit || psr-
> >is_dc5_entry_possible) &&
> +			!crtc_state->has_sel_update && !crtc_state-
> >has_panel_replay;
> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  		else if (psr->enabled && !crtc_state->wm_level_disabled)
> --
> 2.43.2

