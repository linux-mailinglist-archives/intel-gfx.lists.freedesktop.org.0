Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2C2951E77
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 17:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A228E10E4CD;
	Wed, 14 Aug 2024 15:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n+9/ZWg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76CA110E4CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 15:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723649019; x=1755185019;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gjRELiPm41yTvgjM2MLscY1jl3PZRx1VCDaQhnwslo0=;
 b=n+9/ZWg4zv62hnz+R567/L5OyIYoPsQUjTA8m9FTgkQb7hGREdfjfSHn
 Knm9h6SfOIj+s875Z/yLMitsXOpgEvLFdlChzEw/hsByFPu5wfiKXM4tc
 yx0EO2lEcIyA/xnJn9PV/yUImK6PkvksGvZdMKga/t+plcIDom6TDqUAi
 NtgdSKWAOl+6xwynm/qI+2ndOQ3TYYpvaK/Abzqe4dpOsyj+7Ig0hUBHQ
 YwNJYFv1DcuaLkql/HUd5WYcUjDEv6kGH0ED/ihmefXrPvFHezabK9V8u
 vT5hJQzpD+rzK1nhXjFnKxA60HtKbLNWbNloH/EoaX1ndVs0zCOVg9m4u A==;
X-CSE-ConnectionGUID: E+cCbgacQYCYnxmCCWlcRw==
X-CSE-MsgGUID: TxpU8tJoS8yV++x9tY8JSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="44396490"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="44396490"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 08:23:38 -0700
X-CSE-ConnectionGUID: a6TK+Yu0TVuyUNogYEGpYg==
X-CSE-MsgGUID: wmV0SVNtR9aVIv8W9OxqDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="59330494"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Aug 2024 08:23:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 08:23:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 08:23:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 14 Aug 2024 08:23:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 14 Aug 2024 08:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yzvXYqUCddLjtcHeneFv2eb8af93RGA7+Uo81sXQrgFjxY+/JO+E0BM9WJqTxg63aW2swh+8iLQGYFhdWPbFy1G/Awl3ICMXkyMAxUVOnGk2ytYUbBVj8fXJ9TL5rFQt0m013Sm9pIRJdQ5qU4+CTc/Rc84ZK/iPflemYH2zvTsAWQ0srXx6X7vNDe30OPET5agj0p4ToHcjck7U0tB3ScLc546MIzpAFHAP/WKvLnWSeCq52bhKmTggWIm4CO/6PKG8Qt/1eLfO6N1L1jETiMwLlu8Jw8MeJzLYYVYI2zsiilHJNlQyXVpmFF/Vow1AA7MFn8aT5EuZdzb/8NhFvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+ZluuPX+gsX0dykZ8kkyuFul1C+wfNuyt8rR5LQXKc=;
 b=aZ0nF4j+B1FHAeGVG3KeJ2wZuxuI7MyeA57CB55SEugEpwmhoGGzyIs9teG2+GYM1iVXnYKojjdM0ARdWEBOS+h3iZX06v9LMFXaLXwFMFdT8NyvU8kiNN5Knaa6+OWM0di+EnVnZ/J4Ou1KYvEIGptd60iAIjwyPKumeTvxYPjcGwQdpQk0xYd8ymf8Nx2+m6Ayg7i4cewohTTvu+tGGk7HMuFDtU37PU/i741aEYizkLTKno2EGNExRZOQ1ZUJhBpYrNcTBskOcTuIsUfRGDQTJlu6KlNKrDussj1QiD+nfr2j7h3UQaaMEwM/ASG/LoiXJGF/EBSmI62WorU1hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DM4PR11MB6383.namprd11.prod.outlook.com (2603:10b6:8:bf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Wed, 14 Aug
 2024 15:23:34 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7828.031; Wed, 14 Aug 2024
 15:23:34 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
 definations
Thread-Topic: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
 definations
Thread-Index: AQHa7LzxzCQHcyaQskqXs8E5noun6rIjrh0AgAD4/fCAAjrRAA==
Date: Wed, 14 Aug 2024 15:23:34 +0000
Message-ID: <IA1PR11MB626635C0DC29ED9C07166864E2872@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240812134047.4042341-1-dnyaneshwar.bhadane@intel.com>
 <87jzgl24v3.fsf@intel.com>
 <IA1PR11MB62667FD800F6D0AB00FD5788E2862@IA1PR11MB6266.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB62667FD800F6D0AB00FD5788E2862@IA1PR11MB6266.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|DM4PR11MB6383:EE_
x-ms-office365-filtering-correlation-id: bc092c8d-1176-46eb-64bc-08dcbc750fd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FgLcVzeJXCglDqp3ova0C914g+UqnwxH0PZVdp6bOkbvYGvsQFJupY+MN2Ae?=
 =?us-ascii?Q?wcl+v6YlmvV8dCx3UuMFrr9D47y29Ks0FiNodLmGErqHKgFbNC9N9k/T8sO1?=
 =?us-ascii?Q?4GwSHufIHgo8P7WC5zJNr5g71M3N4893dOWRo/eNHIPOQthtXe+xFiln88em?=
 =?us-ascii?Q?oblj7sAIpwAJ53jPyPymcpyH6MSy5GCNys6U//a/Li15TSK9oJ8qKGFBJwca?=
 =?us-ascii?Q?x6isOqCQvexYQgab5KftjmRji0u40xQOWc9blo0MciNnEL7ZhDcFfbX2MaoM?=
 =?us-ascii?Q?48csT2zlBFY6qILNJf5C31AskRhx88rb1AsGoy75iTNLM7Uw8vTyEAIv00Uh?=
 =?us-ascii?Q?Qdqp3vdTicWO8yQXQ+OERf12jljtAb5AtsJf6Y7DXlFApYkDk/DjxZ8DUl7d?=
 =?us-ascii?Q?CjsGvjGNWppvMQPYKas6nhdcprhXMfLx4oqmNlMigY4SERiAW65WaxnCU+K9?=
 =?us-ascii?Q?mWk03zqc0mSCrs0kcqNIn2gYeyJHmlvhCJydPPRAzFxzyZtq2LZGYKeEnkfA?=
 =?us-ascii?Q?xUuFnF7zms2aWfohqI6hw3xg1LdRXWQbeAmHdCDk7QvsvvhFoLnXa/mCYM7m?=
 =?us-ascii?Q?oGRsrV9jCuN+KaDUwMnFOG2cid0l2cbHz/lq5vpbOtUnWOsDBry9QM/vkHvK?=
 =?us-ascii?Q?W5RoM2f1Z2CScv0vq6fK+0tkQld8sI5KDAxcV9HiJ8iJSav5XbTFpB3pqso5?=
 =?us-ascii?Q?FPL3M2gBa9Xu6kUC7h2+FOmQ9vRXzQd3jFSXS++M9OfjXUFpnqoXO8lgAGAJ?=
 =?us-ascii?Q?f+9f/Ld5SvwDRjAO7TnDAhgAx9+qQMCdhdcAbaWYcVapRmpYe68TyET5o0M5?=
 =?us-ascii?Q?6V/di0vvwDk6tg0J2J6/OEN/ntPyBvw2Ryf3bB08N85pWNVLmzVFx+aOXx3S?=
 =?us-ascii?Q?H/w74znpErYH/6+Fz/WCtUA+mnwLAtOXOdfog5628lp3O52grnAZ8YptyWO3?=
 =?us-ascii?Q?iSsJ1fydTp4SI9s++u/WgM1MIb6GbzQ1sOglxZfFJAxVhZGNIGxZPWI33E1v?=
 =?us-ascii?Q?0Yk7dDlsgY4FKWH1psAjuBtXdMNPF9SR9D6vL203Se52QjWmm/UgJBno32u1?=
 =?us-ascii?Q?KP4nf1DRCAFwwl+0U6yVxLSXnJ63X2k/BHaNGfz/3GhZScu6zWKynEZzf3Sl?=
 =?us-ascii?Q?EfaM9IOELe3Ppz8kW77j1UF2GVYZLpM83qO/gWGowRlEJY8JEMh2IkddmdoB?=
 =?us-ascii?Q?1n6lvW/X85Ag1SnGi8vjjCk0oxAaZOshwXaqp5GpJaEBLuzXdeRfYwFIv7jv?=
 =?us-ascii?Q?FGXMuezVHCaqFdLMw3iHA9IOogxI+IXSt7+qJlwSf8w87wfgNC5JZTtNBOHL?=
 =?us-ascii?Q?5jgdtvcYgZc8O8kosFnQMH2nvgrrcT2x043VoEzGVgzwQfkyQuZa1rRJQ0X5?=
 =?us-ascii?Q?ermFaTI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WJlkcdzRBcfY7iEocqd/dzL7O9mD5JmuIlrxmMSHG6cC4dV5dI2/AZHm6uCm?=
 =?us-ascii?Q?LB7YCzhLMSjJ3eP1SgFLJxsZin3v9+fVzZWUi6ClzOZ8CvUTh40f4vscsf4z?=
 =?us-ascii?Q?d7YPfHe/MMQix54s90Ny6Lwh+dmyWaQscOfHpE961pUMmGWtBy6Qx0am6Zzq?=
 =?us-ascii?Q?y3xZ9ry+Sf0D7vdNvEixDDaWMtpylp5QIkFj37+/fjKhRStul7m1t2t5puAO?=
 =?us-ascii?Q?8GczCrfJGKiUMuMAsUz3bbyDxzh+D4fc0XNfaUxhupHjaT5AMsPiYFem7XoA?=
 =?us-ascii?Q?PAwjIDJRwsDYI3QYVQWjDJWvFtM6BSVIf4d7puu8V1D03pEeLHIviPhIRegR?=
 =?us-ascii?Q?YM4k2soQEkDxuPtQWAbvVDLroBu8NSJi7to7dxXdjShkkKG7pjOBy/j/RJz5?=
 =?us-ascii?Q?ItGwiFC5VSi62GMrErz20LuMJXEk0IoKcFN955hF24a9S8tqj3Wjde2zAeOh?=
 =?us-ascii?Q?8aKAB1CkqmEB5bCUpBlUsc+eXSk0PVNJGY55DRpVd1Azf3VCtaWjCpMgEFak?=
 =?us-ascii?Q?KOaZOjf0szaXNBQErO1zx+i3iilV4rJL0gDFVSMUISBibROG/uD3wE8cjuOo?=
 =?us-ascii?Q?oHOeXTHe7XyGN13Lks6bgxd86UdVmMBHhfmoFs+0jnThU5a/znekOwyM7H9y?=
 =?us-ascii?Q?BkKFGrE2GLdn8WTzwG0ew8B7xWGhCwKwJKNdjhrI5iQj+OUGzAYuptzN/DFi?=
 =?us-ascii?Q?srtGSkFEcwhUiTvlJ4zkkyV9PpwoKX1dUP4BRfE2XB+4P6hQWMJpb+YUNktw?=
 =?us-ascii?Q?FVvkRdQEPvU3EyHWdo9ACtscFuFW6vSuSBvOUJYPSWe2bDqHWCn4U7dWTKny?=
 =?us-ascii?Q?jLN5RUANLilNerIYmFjdAhKbqxY+tU/ADm4omSgMYv2cqUoKhZcRuhkgyEbR?=
 =?us-ascii?Q?uzTabheNfgY1Z+NtESZ8XewEjqTCaWu+1zKxK912Lc9+40eNmaZ0WS6MhABZ?=
 =?us-ascii?Q?FzqUcDXZJ3C8BYqBdHo5/TMGhyyUyoZQRHdBubUU5LAcTPuJm74MnJqwK8H7?=
 =?us-ascii?Q?7c7gVIsMcL8LPEjZotvbjFIb/w+bBytp9vy2xPAG+oazdVgFpixaBpa2bRuh?=
 =?us-ascii?Q?FhuqHut7JcaXwXGi4Bk4rRtZevpNtRG+Odi8L/14109VaPZPa7+BmTcCYVb7?=
 =?us-ascii?Q?/9sxm22/0KdZW1l1NY/sQ1CsHCa5JC75E6MPExuhBs81Aj+YzfIkBLXQRKjw?=
 =?us-ascii?Q?Z/oFNnEAiSmMk6vKQxsSkRfv73aa4FeqkW3H2AqIJnZQCyCpDu5yQdVa6FbS?=
 =?us-ascii?Q?B2ga3wzXx+/uiUz6dkJGwzUMx1Y3IbjlJBLL6KQJ6Og9mwMpAa9u7nlKN0wn?=
 =?us-ascii?Q?mBnljGeJGiVtRbjbFGSZ/3TX6+d8L30Lr89KubiRUCBp4BMpFd6XVajHH5Ju?=
 =?us-ascii?Q?vfgBzw36dRd91yuBocWXzKjkW2VTOwIG8oUVskHk6dHMNHL73G2MSmdS02LC?=
 =?us-ascii?Q?T1nLsSfCiwjgtf9b73wzv1DMKS18FQAJeYAhjZ9ZRWVbWvcFbqvRW7lxJL4q?=
 =?us-ascii?Q?HzLBspHUU1mrezQk+QiFg4D04gUylP04O5XSkd4eg3cLN20KgHdYFnPPqRW1?=
 =?us-ascii?Q?Y33wEfVJ63UuJOMKWUPBV9JnVT5lAZ20fmO2eB9WuLU4GzwFhvq0lNOIxBBz?=
 =?us-ascii?Q?Ag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc092c8d-1176-46eb-64bc-08dcbc750fd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 15:23:34.2112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b7Hj4DJc3zHGrW7ZAkVRF5XSDkf+Y53i1wma8QvyTAPyG+m67txCsF9ZpDgSnp1rn6LDxHYMK1HQtbZTSxKTbITnLflW9TjaM3ONX6pPsl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6383
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Bhadane, Dnyaneshwar
> Sent: Tuesday, August 13, 2024 10:58 AM
> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org
> Subject: RE: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
> definations
>=20
>=20
>=20
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Monday, August 12, 2024 7:58 PM
> > To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > Subject: Re: [PATCH] drm/i915/bios: Update new entries in VBT BDB
> > block definitions

Please find the rev v2  here: https://patchwork.freedesktop.org/patch/60826=
7/.

> >
> > On Mon, 12 Aug 2024, Dnyaneshwar Bhadane
> > <dnyaneshwar.bhadane@intel.com> wrote:
> > > New entries updated in BDB defination from VBT v257- v260.
> >
> > *definition
> >
> > Please explain what you're adding.
>=20
> Thank you, Jani for the feedback,
>=20
> I will address all the suggestion above and below in the next revision.
> >
> > Also, the spec never ceases to amaze me. Like here, adding stuff for a
> > few revisions, obsoleting and starting over. Ugh.
> >
> > > Signed-off-by: Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 35
> > > ++++++++++++++++---
> > >  1 file changed, 30 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > > b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > > index e613288937e4..65342f347bba 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > > @@ -1080,6 +1080,8 @@ struct bdb_edp {
> > >  	u16 edp_fast_link_training_rate[16];			/* 224+ */
> > >  	u16 edp_max_port_link_rate[16];				/*
> > 244+ */
> > >  	u16 edp_dsc_disable;					/* 251+ */
> > > +	u16 t16_delay;						/* 260+ */
> >
> > Please let's follow the spec in member naming where feasible.
> Noted, Thanks.
> >
> > This would be t6_delay_support.
> >
> > > +	u16 t16_link_idle_time;					/* 260+ */
> >
> > And this would be u16 link_idle_time[16]. The size is 32 bytes, not 2.
>=20
> Noted, I missed to add as an array of [16]. Thank you.
>=20
> >
> > (Where does t16 come from?)
> Noted,  Renaming needed.
> >
> > >  } __packed;
> > >
> > >  /*
> > > @@ -1330,12 +1332,27 @@ struct aggressiveness_profile2_entry {
> > >  	u8 elp_aggressiveness : 4;
> > >  } __packed;
> > >
> > > +struct aggressiveness_profile3_entry {
> > > +	u8 adp_aggressiveness:4;
> >
> > apd_aggressiveness
> >
> > > +	u8 po_aggressiveness:4;
> >
> > pixoptix_aggressiveness
> Noted. Thank you.
> >
> > > +} __packed;
> > > +
> > > +struct aggressiveness_profile4_entry {
> > > +	u8 xpst_aggressiveness:4;
> > > +	u8 tcon_aggressiveness:4;
> > > +} __packed;
> > > +
> > > +struct panel_identification {
> > > +	u8 panel_type:4;
> >
> > panel_type is a loaded word in VBT. Let's avoid it. Maybe
> > panel_technology or something.
> Noted. Thank you.
> >
> > > +	u8 reserved:4;
> > > +} __packed;
> > > +
> > >  struct bdb_lfp_power {
> > >  	struct lfp_power_features features;				/*
> > ???-227 */
> > >  	struct als_data_entry als[5];
> > >  	u8 lace_aggressiveness_profile:3;				/*
> > 210-227 */
> > >  	u8 reserved1:5;
> > > -	u16 dpst;							/*
> > 228+ */
> > > +	u16 dpst;							/*
> > 228-256 */
> > >  	u16 psr;							/*
> 228+ */
> > >  	u16 drrs;							/*
> > 228+ */
> > >  	u16 lace_support;						/*
> > 228+ */
> > > @@ -1343,12 +1360,20 @@ struct bdb_lfp_power {
> > >  	u16 dmrrs;							/*
> > 228+ */
> > >  	u16 adb;							/*
> > 228+ */
> > >  	u16 lace_enabled_status;					/*
> > 228+ */
> > > -	struct aggressiveness_profile_entry aggressiveness[16];		/*
> > 228+ */
> > > +	struct aggressiveness_profile_entry aggressiveness[16];		/*
> > 228-256 */
> >
> > The LACE agressiveness is still valid. Please add the comment to
> > struct aggressiveness_profile dpst_aggressiveness member.
> Noted. Thank you.
> >
> > >  	u16 hobl;							/*
> > 232+ */
> > >  	u16 vrr_feature_enabled;					/*
> > 233+ */
> > > -	u16 elp;							/*
> 247+ */
> > > -	u16 opst;							/*
> > 247+ */
> > > -	struct aggressiveness_profile2_entry aggressiveness2[16];	/*
> > 247+ */
> > > +	u16 elp;							/*
> 247-256 */
> > > +	u16 opst;							/*
> > 247-256 */
> > > +	struct aggressiveness_profile2_entry aggressiveness2[16];	/*
> > 247-256 */
> > > +	u16 adp;							/*
> > 253-256 */
> >
> > apd
> >
> > > +	u16 po;								/*
> > 253-256 */
> >
> > pixoptix
> >
> > > +	struct aggressiveness_profile3_entry aggressiveness3[16];	/*
> > 253-256 */
> > > +	struct panel_identification panel_identity[16];			/*
> > 257+ */
> >
> > panel_identification
> Noted. Thank you.
> >
> > > +	u16 xpst;							/*
> > 257+ */
> >
> > xpst_support
> >
> > > +	u16 tcon;							/*
> > 257+ */
> >
> > tcon_based_backlight_optimization
> >
> > > +	struct aggressiveness_profile4_entry aggressiveness4[16];	/*
> > 257+ */
> > > +	u16 tcon_coexist_xpst;						/*
> > 257+ */
> >
> > Hrmh, this is where the member naming in spec is not feasible. Maybe
> > tcon_xpst_coexistence.
> Renaming needed. Noted. Thank you.
>=20
> Dnyaneshwar
>=20
> >
> > >  } __packed;
> > >
> > >  /*
> >
> > --
> > Jani Nikula, Intel
