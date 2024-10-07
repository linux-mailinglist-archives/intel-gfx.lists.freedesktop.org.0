Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1ED993708
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D9110E409;
	Mon,  7 Oct 2024 19:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBQc5i+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867C810E091;
 Mon,  7 Oct 2024 19:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728328519; x=1759864519;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fFAzY412VKD0D2Z1fcTLNS97PnapA2tB7CJPiG7/rJk=;
 b=UBQc5i+8E9/MJILE8tYWUbalX7sNOi8Pxd8FlZmg/tYfUjrktT45BR7c
 QXZLYBgJvKHxiUfZlfjp5EFdpCSWpoqXFZxU4WgeYRZY/8y7G3MUj9uYq
 +Zm4RR3PU4lVYLHDmCR7SvrWqJovBpHCtCi2j4sfGMlwLFq2OGu2w4LrW
 IFlo1gaPtBRZHizp/Ty+rU4oHp2SGAWcf2082GZstr3sn6QIQ+cKTb3cq
 XsRy5W8ZFb+0U51kAOoRRM59wEPmFcE0EtLwmgboHOtDXfvEoYEkEDTjZ
 lbdvdOmRvIDLeCId3Q2mqxLDO0CWT+2EbXlfFtAqSO1zwcDs+Rtjwy9GB Q==;
X-CSE-ConnectionGUID: Ma7NpM2QQRyqvF20vBffDQ==
X-CSE-MsgGUID: 7DPa4iMBQnSW3l42lhjZLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="52896297"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="52896297"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:15:18 -0700
X-CSE-ConnectionGUID: Nksk7jL+Sem6TuGJ58lXfg==
X-CSE-MsgGUID: WCWCNnZRSBeYyEB9H61zVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="98902146"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:15:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:15:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:15:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:15:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:15:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x7wLIxc8iGjbDojDVRXLP4UR02NbHVtxwsKpluLoVQ4eU+jilYkCgzMMbK1MOA2Je74C3M1dIn7kE/C0i0+IOetvVipQ9j4vu/31gol9YO/+XVpnkKvDWngNdpwAcdCjhvkciKc6/naYtD8LhTZlMj9F6KmXn0NBVgtXIYWYWa9VaVzULgv113cnA3Ck46BTPaO9hgNly7Y5n2UOOJeqKnBe9fq4li+oYeDUdx49CkA9Q7eXKk3ot8e45hY7xkjq9phalDr/i5rx/yLy1FyMnz8ocX7QV7Gw+zRanTF9q9ph/QVY9we8f/0u6qXdEMcfAjkGhh3zd+ENZx0+um8WyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6dktguFNc3yLY+tSu6JNu11M8kip4zbZJrkifyt2R7w=;
 b=egR5s55leLRZ1xqh+/G3xNTcaMiHU6DIKLemgjPES1VZjxiLlXCzf+DJy2WklrJeQh2R+pbFBlPjRZ3unOpQAG3vqeB7bVfRZR79JhsU20vPS1712qgbN/58xy2qN4Zg6E2K2aWcpkoIO4jP+AduB0P017bf0tnw9uJnFxFClUTWY+HmuSPFC0fqmTEHxDTnHoeotHt4nJqrciEkYK6HACfodFWB3SkQReKcOQ+6TQgQNCZri/TE9uRHQF+S/CcbjXDVyzFHD6SZFZYUp79yOqjCqI5LM5qfrHAfDH3Oo6ZEuQTBL1dWN9KGAwmbarQ4Z36zQ5CHeOgvaY4nFQUNPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SA3PR11MB7612.namprd11.prod.outlook.com (2603:10b6:806:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 19:15:14 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:15:14 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 01/31] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
Thread-Topic: [PATCH 01/31] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
Thread-Index: AQHbDsJVu0aYV5YgV0GSE5YuaHco8rJ7vM/A
Date: Mon, 7 Oct 2024 19:15:14 +0000
Message-ID: <BL1PR11MB544566C0400499E06DC588BFE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-2-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-2-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SA3PR11MB7612:EE_
x-ms-office365-filtering-correlation-id: 926f0090-35f1-4d11-e661-08dce7045f7c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?o9DX2Svs+JPLTHQCy419WsGZiTa+bz3ZIIinC5ZeYfX28dKstHkf0v1uGv0s?=
 =?us-ascii?Q?xA252+oXCcdB+3O5rss1MNOSC3Hl6JhmF/9caYo4WTkf+o7fce4rldeOjVC6?=
 =?us-ascii?Q?DHh+pbX17Chl9OmMsWNf+RrHkAMMXMDGvgd/bnfP3mrkLKxNONp9pHG3BjA+?=
 =?us-ascii?Q?EAAc6Qo5UcWCgpS5UXyreKcKvGzfronuWiAqFoZ2VX9Wt37o7R1m5+T6U5NX?=
 =?us-ascii?Q?XilHhxJu1hyZAlW1iZ7noi49f6GRHPEWD9BpmiyUiBgdllV8ayaHIfMT6Nvd?=
 =?us-ascii?Q?HEGalfOe65MFr2isPqHB1rMhnFeJzNN+L/I7k7yIX7QQRbGHKMDIK1Ej+dMk?=
 =?us-ascii?Q?cAqpEwv4AS64Pz84c5xOcCoQ2lWEOMmUfarll1ha47TWuzd3UaioeIR2Af4Q?=
 =?us-ascii?Q?8dt1ONG5ywJGhh1D/gXQI4whY4W9WCC1RcSV/Ffq1mvaRwhdM+O3xcIFuhCC?=
 =?us-ascii?Q?PT8auDgjSWjixsZRLuZXkIhNxNfQOIeEwAnL0TbtaRduBtURmdJNheVq3Fv9?=
 =?us-ascii?Q?Bl4zsdqbWkHIh1L1sPFd/eYnbTRDgkMoKlJn3EsMp+sJBut8EELfiuC4AOu2?=
 =?us-ascii?Q?pNu0SaY/1ZShia8bnN1L6+0hBzr1jGCTYaCz1XI2ZZjEoN8QfQxrMOzSJEHf?=
 =?us-ascii?Q?Y38pEN6lamm7ZyTpoRKiX2hAnG8ZSxJbD0HxLtPCKl7kO5pnUQU7zQrSeI45?=
 =?us-ascii?Q?12fGw5+vQlxldy7S+ZAi1zXsza0sp/WD2lAc70Ql4r4179KpZe1RqiS+vp9i?=
 =?us-ascii?Q?M6FFrTt4SyN4GzAcon2FUq4adJ9jauK0cPZNET5Pc72vXsCk50KZ9GOtkil8?=
 =?us-ascii?Q?inB5Zr8vuXP9mdnpyc4CsnesYCBqIDBpZeAs/c+NoYy+JAydVr8Ntn1UVjQR?=
 =?us-ascii?Q?ApXlhZxubIbDEW1yEf82vHq3wyh/LxM5rQCwpxEr9T6i1RJ+6eL8CDIWKfhy?=
 =?us-ascii?Q?P8r2M2IwWEQH0+qvLxV1V25n1xrz9nFwq/VT4kl0D8srpsCNbYSmUsnNJfbe?=
 =?us-ascii?Q?arm5lR9LyWGE35Gc8wjO1eQjDbVZgdAwaic1hnW7bZ/YaprXCzw+F0YG7fs8?=
 =?us-ascii?Q?RV/DQ+z0D2rAFzLxs+sGBS7EelgxrTYwMKJrNJsdMsI8hCZ9QoeyTusVy9vQ?=
 =?us-ascii?Q?ZDwxIp5dgEwOFJKObc4yrnyTE9hm+QcW2sQEgcDuSUdjlFdAddc1IoMghrIi?=
 =?us-ascii?Q?pVTlPsCBv8m09wr4bHy0nItL8EashZf5rs5jEh8y43qBS0q+Kuf2njJbIH28?=
 =?us-ascii?Q?32mxbbxae4/w+Srg/Lsc1zik3jPPgvyotKt7Pv5F2vOh7ha24SRWTs+8JiIr?=
 =?us-ascii?Q?rMDL1wouW2JGOWE8gjMOHM5qJiUlgtJGkc/2kaxd5pbIXA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D28FSWsOHinnMnsYuOM51js/I0A9p47nX47zkw+mfCJ0QK8FmvIoNmagBS2U?=
 =?us-ascii?Q?tgsRhsGW258JU6dZXB+/G5brgw5h8MUzKuMJESJKFK1MhGq+mDzDTlg/vrZ5?=
 =?us-ascii?Q?t7RSl2ogAY9oWSnjLZUonTTmDN9I5ivTpxtmTToVssXknwinkTAl89dnHPj+?=
 =?us-ascii?Q?qMBD2s2HD76uVUfEbnuu1GU0PvcU11SHZGAbSY2UkylNwi0lp0o4zvBWLgeN?=
 =?us-ascii?Q?lUliab3uc/4wKbDTOIocJlbhs3dHwH2pkRVKQknTomyyt5IJfbAVZyhFa2cE?=
 =?us-ascii?Q?ecMBplCxAajnFlq+ppsiA8fDWCNxZOzl+1Dq72yGYpHJ2qxlVqJEeNaKHV4M?=
 =?us-ascii?Q?a7wQfTKcLqIV3F1nFz/89vQVCOvAeNPcGl+flzKjIutmrBZb+oYU0+zAGKir?=
 =?us-ascii?Q?q2DMoNe8T96V65WVxRhR+RPEbXf0G9dBZMj0Vnm4DKtBVxy+RV5gZdNTi498?=
 =?us-ascii?Q?qBoll19gL9kQKAxAw919D5fpyGOun8DdAZHhJKTIXYDQ1plFJzlC2evuXuzM?=
 =?us-ascii?Q?5W5w8j72Evq8FlxHTYb1mDyvu5dAQ1tN3ad1iYe3hlKRJtqM7/uDj6P8o86S?=
 =?us-ascii?Q?cVWYif+BnxXbJ7VQNWFaj7QALYDpcSZD6Xerf4IjLpUnifrSInw7O4kQ7wB8?=
 =?us-ascii?Q?Zd+1yYN/6l9uc1wJVujRvZt4nzG/LvLBezSgzU2V/fAajSRHmdDrdV9VgB4E?=
 =?us-ascii?Q?97c4q7wg95lcVrc7tIlFhFQsGdSQG+6hU+3FElZCZ6qWOVBGoMo4w/9apVE0?=
 =?us-ascii?Q?JabHeX1fqpw1PumRk4gl9rsKwCvfelKAFEgz4C+kiz6TOANM85L9hbcABvLI?=
 =?us-ascii?Q?o2Dd3efn962aD7772on6qNQxYjw7uh9pJ6WSoyv5RzvAKfG/Gqb46kppy9oQ?=
 =?us-ascii?Q?vN7lXtS2UZljlsSlBfW2kfnJyLuQ9FK5KyE5ayoTVhd+eBty2eA2hjLjJVkD?=
 =?us-ascii?Q?qFA7u/RgjO3MBkJqMyisdK67sEPX9tj6KvghXHKK9k7UEHbe19GxzHd+qwAY?=
 =?us-ascii?Q?gz+5noBBaIAMgzZS5LgN+4jXaqJ02W8NqpKlesuSK6JsXfFD38L4k8gnVpbp?=
 =?us-ascii?Q?pfIpdVzd3pVh/DnnvIZI6AsrX5WzBPAjv1vBQJqH3Z6r2uwcSmXJaYa+H0sL?=
 =?us-ascii?Q?SfpWDiukVSZJ0K6XUBGNTsSJFuW8Oawgpdu6Ru/gM0zTk3WaP7VJfzJ7GeJw?=
 =?us-ascii?Q?q2nka01jMv3TM5rI66iWL/f8b/8y5ER/92wjqn/yeQa/OmXOYO6yF6Hg96YG?=
 =?us-ascii?Q?tac083yJOSh2u/5mZhJkvJ/3xQxhL6wYiydJ/1lMM5QMH2kIYarevnNzpgNq?=
 =?us-ascii?Q?DGMFqKaSjNg+kST8ydCq8frBGcN0bwbcvK2579dDx7LZdBOLZ843Z9gSM/H9?=
 =?us-ascii?Q?9SsThDH7A16JxtzIPlXVpVtHRx+xop8etb1f9GVrkid+uF42LeLhgzrxssfi?=
 =?us-ascii?Q?tVXlIo3EzZfGVrNW275vjK04MGb99x8lCGDn/3aQD4e1Q/SHIU+8Wvqke3QE?=
 =?us-ascii?Q?0Vxq4ioT5WLNQ0nY1Bcq9srRho7yKZ0SqfQRRXII5B8ILwOh5nwFkkph2Oba?=
 =?us-ascii?Q?iiveuwgQ70mQILSh7S95XaQaNBMZdjrM0aCCG8b1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926f0090-35f1-4d11-e661-08dce7045f7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 19:15:14.7471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fdU4aRyOda5Ykl7F9Ss4e53026bfxMeDaZ6f4O+O15TqfgZZB62G8uaFmLRfPCpyoZVh7RtvSQH2dunYByOp+cwlq3/5yD98PkapNE7sTCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7612
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
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>; Nikula, Jani <jani.nikula@intel.com>
Subject: [PATCH 01/31] drm/i915: Remove vga and gmbus seq out of i915_resto=
re_display
>=20
> Restrict this function to only save and restore registers
> functionality. Then, that can be moved out later to under
> display with a proper name.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/i915_driver.c  | 6 ++++++
>  drivers/gpu/drm/i915/i915_suspend.c | 6 ------
>  2 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 6dc0104a3e36..c5ffcf229f42 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -60,6 +60,7 @@
>  #include "display/intel_pch_refclk.h"
>  #include "display/intel_pps.h"
>  #include "display/intel_sprite_uapi.h"
> +#include "display/intel_vga.h"
>  #include "display/skl_watermark.h"
> =20
>  #include "gem/i915_gem_context.h"
> @@ -1167,6 +1168,11 @@ static int i915_drm_resume(struct drm_device *dev)
>  	intel_dmc_resume(display);
> =20
>  	i915_restore_display(dev_priv);
> +
> +	intel_vga_redisable(display);
> +
> +	intel_gmbus_reset(dev_priv);
> +
>  	intel_pps_unlock_regs_wa(display);
> =20
>  	intel_init_pch_refclk(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i=
915_suspend.c
> index 9d3d9b983032..fb67b05cd864 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -26,7 +26,6 @@
> =20
>  #include "display/intel_de.h"
>  #include "display/intel_gmbus.h"
> -#include "display/intel_vga.h"
> =20
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -118,7 +117,6 @@ void i915_save_display(struct drm_i915_private *dev_p=
riv)
> =20
>  void i915_restore_display(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> =20
>  	if (!HAS_DISPLAY(dev_priv))
> @@ -134,8 +132,4 @@ void i915_restore_display(struct drm_i915_private *de=
v_priv)
>  	if (GRAPHICS_VER(dev_priv) <=3D 4)
>  		intel_de_write(dev_priv, DSPARB(dev_priv),
>  			       dev_priv->regfile.saveDSPARB);
> -
> -	intel_vga_redisable(display);
> -
> -	intel_gmbus_reset(dev_priv);
>  }
> --=20
> 2.46.0
>=20
>=20
