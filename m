Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EF28804FC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 19:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FC510FC6B;
	Tue, 19 Mar 2024 18:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XMriFC6U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F3310E8B5;
 Tue, 19 Mar 2024 18:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710873559; x=1742409559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z3VAaFFGkVtMsZZqwdNsXhWcuN1Vz98tMUYE4+7UxVo=;
 b=XMriFC6UZ4LxAypj6DW+ZBosv25JmATCl/txNg6k9Kph9NmC2B4VoEN5
 fMOhW7MbEMYexRIj7bb7xupEqcPu5cFUTu2MuFWE53MW9WYC9ixECuYe0
 duoSIx5W0MuieJ++4FJjyCGA1kEbfwtWjZ98pPHe/Y929zmKstylbe8aE
 P19KYFLU2XlU+7BD5pB+H+Xgt2bjKv/h8LCbGg2tM8I61MhhjsfeMBpRt
 fcZo7WTWnG+c+/d892ciqI4NUzcDgSB5NSrMxAypvZZwd4EimNSUEvlyF
 ppRyB2oq2BC9Ax9ocsLLPbDpugPU8oyQ4hDD7ial9GuNHM8fpOTrGwQQx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="6373715"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="6373715"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:39:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="14298626"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 11:39:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 11:39:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 11:39:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 11:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nC98TxW1IE+l6eTLp77wDUbIOz0nrM85hNFP5saDaMPuPck5sS08VL82JJpI4zYOnTzgGTlwjKp0I/D03sPzK9tJ6/Q5jbDLdW6/p2nWqHtvQ7mXSxPMSnPsHBHZwWv8maPvlzV1oMjkMbKnbtmz5yAGAB3QXPaVHbwmnN4U8lsHzU6jaqqvc+rEvXgJKVr395se+FV9YBrnwxJSjd+24q9FgglQ2CuLnWoJ+ATkSCTYasuI6IVR36sbT1RgUVWT6xfWqNJAAm6ofm++ftPzWPP/Txf4rUx9LdLNusITYxW/xOH3GAnV6EGo1CTP/rxILcIwq7kxajkq7bk+60mvWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4wXuYa5+hJW0jELpGKs9LlBIuMx8CVXzdp5otpK/Bw=;
 b=FfChDz2HiLLtoc+LOz7QfNynlF2vIiVYbSAlq4o/hxNkxznG1kT+SWzW115TVHU+8jRW4o8+H5By/kSjYVjJhKISb7mwlnSuEk56imN2jJ37j6V4xICDYAgNo+bsdnwSyDy1MeusuGWSxjZCgfNRiRCx4ILLKI7P29QVbxvYmDm11Y6jZEt0VLRGBvMBF03B8Gn1QnyEAs4HOFEONHnMgdlf8BibF9ERuuJlloNCboCNmw1gKs4C8rh28g4DiN6DcZUEB6R+br/ZzvWgqyn5gSXN2Y0j0yCd5pXs5obuSgUO1pFFXeLFxPjifqx/5Somw9dfDAV3lUSAVJ+52hlB+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA0PR11MB8379.namprd11.prod.outlook.com (2603:10b6:208:488::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Tue, 19 Mar
 2024 18:39:15 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c%7]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 18:39:15 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Cavitt, 
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH i-g-t v3 0/5] lib/kunit: Execute test cases synchronously
Thread-Topic: [PATCH i-g-t v3 0/5] lib/kunit: Execute test cases synchronously
Thread-Index: AQHaeSAgU5r0kuef1U6flSEX3QrpVbE/ZjOA
Date: Tue, 19 Mar 2024 18:39:15 +0000
Message-ID: <CH0PR11MB54441FC4936DAF483ED6E676E52C2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA0PR11MB8379:EE_
x-ms-office365-filtering-correlation-id: 58ae33ce-a5fd-4e43-ee30-08dc4843e114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JWCAs7v1FWLOFLW8+0dcJz4Opo7A1yZAkDRXt74z/g9SOszNIKFGtmK4se+FdUQKvBCAaRCkmkvK248ZX7q12tJt9b2F7Xjn1nlYfTKvPejTzCebXc41mhhJ1nix/UOAZKhYjRr3NxxviVPXczBTAS6JM7gwuSTZbpEwHdySsOWJFzZIRvjrJ2ygTuMYfPunC35IWElX3A0u+oX8fXlRnEV1pHBFTqYowzEeDeV/9kkgpiXz1H0W+rnCzSh5iPAjN0B0yp3A8rdq+opjDn3aPxe6j54sNxsaKW8lBTyEkC+t4oSbf1ClkLSa5B44Qh7BX8ehTYq6wU1crycdFpcPO9Ph90u1LpSXWpMJzDmzGWJvPtVlC1FZXogIddAViwbgggYxNvlW1uRFBPohv+G+amAo6YutBXX15O4mOZXW0pvVxdGt12iKnOr5mQVF9jkHTL0KnpNU3eaKQU7I/AzxOvB9wNmwH7KcReqKKGuJNyAfNbNFSt2L+yX5XuEKWnSXuQNl4jxLkWIW8MuzGC/+EHQYhRyVrGvwmaHhIDjCiHVU9fOLkjoVRmNOLoMAe39dwqHfTyzAiTQytdx0vvu5AwzDcJQt0ehHvcEILYrmm+5emwMfOe+IthOdyidUscFTMr6N6GYR/1lB52t+Mh8FOcnswFXPTjGczZQrbeIgc8hXvizkApK+kdR5+uC3bMr3Wo5bDzNgX3f4TCZCtDr3vO+XoK9gmSPUvgBu3y8o/jA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3iXPzPQ/imd8GqTRkTOJ6Wks7xg/KdpdUUJOt4vUwrWvMDl2fCH7WuJ/5i0T?=
 =?us-ascii?Q?ykcI2gDZ1UmjIjhdfknh9NH3lgxfdxy1RD+utGvr0wlQwz01yvP9z2xTOui4?=
 =?us-ascii?Q?vVsC77glN847UzKvRNMaXhJY5D7pdQ5H/EDPvusjcFM5xLtloqX2ef7X0t7b?=
 =?us-ascii?Q?hqK9c0FrYZ5DKP0czfxDqNnh3hpOfLoLzkNN4ZiEjxLi0KxvMXe8OHNl0YEk?=
 =?us-ascii?Q?DUhCkzbUdWodw9e1LL8ljvpZEH/bwPCeRXSWpdWQlroRg8ELwR8t1GLI7efZ?=
 =?us-ascii?Q?Pn69vXxg8usk4+Veq69XXYE9HVV1Usv3WsgugU+ETSOzke/ks7ARSz5SNu0/?=
 =?us-ascii?Q?XSoQKbuvAKEzRNeOXwyLpHcWebuOg1tBP1wIHPkwdPBmmCAg2SxZLZGbYchJ?=
 =?us-ascii?Q?qxUG8c8QDIDYS8gGzi3VP5qOfjYeCM90tycBoFaFmTuUu89eRooevwPoFxQT?=
 =?us-ascii?Q?A4Da608l620QoAN5JPPT4Ws/F12+nqxwewjHvZa35WCaXpsOai+MbSW/oggB?=
 =?us-ascii?Q?i+IHjr52dC5wgWQOlxZxI9XinFvegwS9d8p3ud05R7j5tD8SwD4SyulF+xPu?=
 =?us-ascii?Q?SvBs/Z99Yyr6cwnoqhSOseGCFlHEyGyf+NXgJp4Bli9/ZQRQIzhd7GC/Gc6J?=
 =?us-ascii?Q?opvSCmVGMOTztYRjIv5FNQrA7yWnHjWuZP7tCX876RbTkB2DoJQckX353N2o?=
 =?us-ascii?Q?xQKkrQib8T4mkQNYvaGlM9QSFwAyqi/id7dhAAsa/XH25DmQdd324tFNjfiO?=
 =?us-ascii?Q?VVARBsu32YaqklJnIq2sv/Oyns873otBcnnjQMY4wSQfbuvdf8VvFEbzZUEb?=
 =?us-ascii?Q?AMLwCwYcz86INtUQbeEWOiIxlBlG9QrqlSBasTkulPiyd+h5lQM1Y2X3QeOe?=
 =?us-ascii?Q?vIpnUVNVQmBHzr0ncI+U3ARwD6pSnaGQIbz86UbPcWZ6FJIZg8Q8xz+KjvvY?=
 =?us-ascii?Q?NdL95Jul4hMjjxfZ4ER3AVu319wQB0NTOxp2IDos7yqwoP3MU3DWXoDhMDaH?=
 =?us-ascii?Q?7YMAa8LhGj6YwExd9exfAUN4cy4rDIvVcX/6uqJ8DgFHAh7fa1zGys78wuYy?=
 =?us-ascii?Q?EA/PuXkyIYnwt0v61zm6S55QQHicv9W2Ts4D38fXPjoXylbzwzZHxnF2SIP4?=
 =?us-ascii?Q?HXAoRPk+md2xSmf/62OBItxMBWUAzozS26/e7sgxcbqqxDOHozf6uY1OGRHt?=
 =?us-ascii?Q?RTp+hwT/zvwSaBEvW+dPNBmWoROnCHX0z37OSrHsqu0YLlnhjXALberJkt/+?=
 =?us-ascii?Q?HYt562/vQLnWnZW87NKqJ6Ko0HkZ3XcHjD7QEm+V+iD2G7VPXFv8Fui+YtPr?=
 =?us-ascii?Q?GHl8qZqSJIYwbJCBFk2AY4QdXiSI+YsO1hTpSm/GleKQnbRMcHZ54VZ5q63a?=
 =?us-ascii?Q?j8FamoG/VTo+e6hxhxR3s923+HBtEU//9mtqFR3f2nxtjIo6+IqH4lgAZ4ad?=
 =?us-ascii?Q?rJjWYkkbNRN4ItgXsv0VVI43JjAlrSVcby7UKpJER4tUancARCnWANvssBbp?=
 =?us-ascii?Q?xaMnLHIwR+iqKjhPhfPIOEEbV8r9etE8W0cI2TKy3E6dbYzW2ht3Mc4JujFF?=
 =?us-ascii?Q?ZqLGKmoHN3j5YnZqGbmwdDxTriuTk7HpXTTtunGf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58ae33ce-a5fd-4e43-ee30-08dc4843e114
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2024 18:39:15.5430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jRJ4txV4TAZLQfytmIk3coMXtxEXfS9xDw+pWPmLf2cAOMO1J7OveTfQdBO7iiRhnE6TWACggOgIMdB5x78CuteNMshfZ1k5c+xUSde0PYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8379
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
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>=20
Sent: Monday, March 18, 2024 3:13 AM
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Kamil =
Konieczny <kamil.konieczny@linux.intel.com>; Mauro Carvalho Chehab <mchehab=
@kernel.org>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; De Marchi, Luca=
s <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v3 0/5] lib/kunit: Execute test cases synchronously
>=20
> Up to now we were loading a KUnit test module in test execution mode only
> once per subtest, in background, and then, in parallel with execution of
> test cases while the module was loading, we were looking through dmesg fo=
r
> KTAP results from each expected test case.  As a consequence, our IGT
> messages were more or less delayed, never in full sync with kernel
> messages.  Moreover, parsing of KTAP results from already completed test
> cases could be abandoned on a failure from loading the test module or
> kernel taint caused by a subsequent test case.  Also, parsing of KTAP
> results from all subsequent test cases could be abandoned on a failure of
> the parser caused by any test case.  Other than that, if a user requested
> a single dynamic sub-subtest, all test cases were executed anyway while
> results from only one of them that corresponded to the selected dynamic
> sub-subtest were reported.  That way, kernel messages from unrelated test
> cases, not only the selected one, could contribute to dmesg-fail or dmesg=
-
> warn CI results from that sub-subtest.
>=20
> Since recent KUnit implementation is capable of executing only those test
> cases that match a user filter, stop executing all of them asynchronously
> and parsing their KTAP results as they appear.  Instead, reload the test
> module once per each dynamic sub-subtest with a filter that selects a
> specific test case and wait for its completion.  If successful and no
> kernel taint has occurred then parse the whole KTAP report from a single
> test case it has produced and translate it to IGT result of that single
> corresponding sub-subtest.
>=20
> v3: Insert new patches 1-3 that fix an infinite loop when we try to get a
>     list of test cases from an unexpectedly missing KTAP report.
> v2: Refresh the series on top of changes to KUnit filters handling,
>   - move the code of a new helper from a previous patch 1 to a previous
>     patch 2 which now becomes patch 1,
>   - actually limit the scope of the helper to fetching a KTAP report from
>     a file descriptor, and let the callers decide on how other steps, lik=
e
>     setting up filters or loading a test module, and errors they return
>     are handled,
>   - update commit description with a more detailed justification of why w=
e
>     need these changes,
>   - rebase the former patch 1 on top of the new patch 1, update its commi=
t
>     message and description and provide it as patch 2.
>=20
> Janusz Krzysztofik (5):
>   lib/kunit: Store igt_ktap_results pointer in a central location
>   lib/kunit: Let igt_ktap_free() take care of pointer reset
>   lib/kunit: Time out promptly on missing KTAP report
>   lib/kunit: Execute test cases synchronously
>   lib/kunit: Minimize code duplication
>=20


Acked-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Ack applies to all patches in series.
It seems that Kamil is giving a proper review to all the individual patches=
,
so I'd wait until that's done before moving forward.
-Jonathan Cavitt


>  lib/igt_kmod.c              | 193 ++++++++++++++----------------------
>  lib/igt_ktap.c              |   5 +-
>  lib/igt_ktap.h              |   2 +-
>  lib/tests/igt_ktap_parser.c |  24 ++---
>  4 files changed, 93 insertions(+), 131 deletions(-)
>=20
> --=20
> 2.43.0
>=20
>=20
