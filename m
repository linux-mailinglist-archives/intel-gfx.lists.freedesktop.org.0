Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2970397C99B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE18410E6DD;
	Thu, 19 Sep 2024 12:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jvMGGLUE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCC910E6DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726750763; x=1758286763;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g3VU9EdollMmjDMTHH7efWHpq39jdhIjgM04hW2jlZw=;
 b=jvMGGLUEuMS7ZD2Xd7znc62Fgx3OIGe6rzgoYnHfqyejAH0+hcutDC16
 M9G3QLEqsBjkRHJP9WH7FNiE1lTEN37HCKLqbL3ntmgZl5UANITYgombK
 GVrMxPDICl6MxNnIgyjJbXDeeJbO2IHmAxTL7jh5jmfnCkJ7kk4UgwJTy
 VyKy60KtnoP302yGEslehRpWJjgV/gee+0EobZSLQpNWUGUM+BwLqa9ik
 zO68bcGIO+4wKmESBsnkIIQB2mLHjHzJ4ctgxzR7UKOTcx16QhhditK++
 2ra88yiYBdrGhe/112UG3nva0cZ5dOL8QfSZLZ03ISh5a0FumBJXJ5l// Q==;
X-CSE-ConnectionGUID: tTlT+2vhSPehZQTxgLb5Jw==
X-CSE-MsgGUID: Fwt5qk7HQ9yQbSsXu8A0zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="37076578"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="37076578"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:59:23 -0700
X-CSE-ConnectionGUID: BKYSaq7FQ7eKuQPb2dFMsw==
X-CSE-MsgGUID: pPv2sWRGQ8S4WFY3wkmr1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="70383292"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 05:59:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:59:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:59:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 05:59:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 05:59:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i288l5FEbb7ADteQ6p0O2BWFwZN/sX6MTdEEOj7nbhY0/4Tt3oQfcJOp5G/EzgwkHIBcYK1hDIiXnd5PUsl/hrlLEpF66LXMkQ4U59AyNrfahCb5CSiaQv3jCdxiFsl00EAMpaTI6Q5bDe/ajCQb6knUPp3rkE0xAkRekogCpvdyR9HCvKYL1ierTmxnMqgd/XiSWFN5AE5bHEhc3CtLfUDvOtVoaPJllt/xLfiU6gMiAirLsgvVECaHE6slgFv/J/zOrb0ZALm3AlHCk5hJ7JCBX6ZLx5psAK++Ge1UrUrrfsFj3QOCiYR/0hLMCByXGSrN2DuV4zDV4pNArPbDRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NangiBgy1da3mFJc5IAM/SWjx4hag93kiqO4W+gPqes=;
 b=FwWsac1zouWCfQ+jboymzmsBJ8T3KVrbqOo6Kunl10l6OVvE7KTu8EuAt2EAvVnQQLULT+uhCK17ATtoV72mo4BwE/t6EzlCOzqd8mcAmIq3fdtAcbk0Nvp4oPv2KGQ4gSYakP8hiqbVr366Xwd4MZ6AgNxbGw2Jl7HT+OXBNWRX5awepEWDp9NJPZXN/b0Pbo7GzFo3bVJ4uJue1cPbDztQH1pqRLfq9/2sC86hETa8YnMe1AJTobzskvYoJF4sU4w9G8rWMD3Oqwqrbx7GzqJgdpgKm3OvfRG8OLCmBKRrhRXQlyig8AIAtowf2cfGzf8loXJr5GWhojcgzaqjyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB4799.namprd11.prod.outlook.com (2603:10b6:a03:2ae::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.22; Thu, 19 Sep
 2024 12:59:19 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.012; Thu, 19 Sep 2024
 12:59:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Topic: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Index: AQHa87WeoENNIiVmtEeLGnYRHmEF3rJSiWeAgAyydVA=
Date: Thu, 19 Sep 2024 12:59:19 +0000
Message-ID: <IA0PR11MB7307C16C61F62B6A539A6EACBA632@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-6-arun.r.murthy@intel.com>
 <SN7PR11MB675039D12D34AF0A87E796AEE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB675039D12D34AF0A87E796AEE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB4799:EE_
x-ms-office365-filtering-correlation-id: 539e2044-b5d3-4012-b133-08dcd8aae01f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wgt1v2q4JIuc3BocD34NJPErMb6bFuWIFVqgAe8EP7Y7nFO7i4QrCmeEcdJc?=
 =?us-ascii?Q?hKHSyF+BhD/mQ17tQKHlIn0S5kYkG/p8539L03rxv4guyu4SVgMd4vg3kvjI?=
 =?us-ascii?Q?rtVsS41eX8hYjTNE8CmhHnPFpc8zvQ5HE46BZJGFyNakT6fSclv9pst+SGUw?=
 =?us-ascii?Q?jG+e0S4CymZB+jPL1B6hW6Wj4IU1Y+/3KrAt50Qgq21cPUE9qoP/wkunwINL?=
 =?us-ascii?Q?w6li4+MBg7LUfxjnE77gNz6oFU5J7+dGH8QVH/uqDO2J7tQkQTTnq+rGTYQ0?=
 =?us-ascii?Q?biI9lEI4T8w38Zsn1gCMN1JUk9R6ET6txD+tq5szLOit2Cy3oG0BVFxngASX?=
 =?us-ascii?Q?1774JGF7+zxvAfHjvcX+uCycDRNEF8V5IV0r3grQ5AOfPCzUiiMoMmEv1sga?=
 =?us-ascii?Q?Ru5i53A++uqO5RXIrTwHrY/vM1lTKm0lwRR3+XS50x5p0GtNE1SX0ednmVEW?=
 =?us-ascii?Q?LOqA2U5CaSY5bAZ57pz3+qF+uu1KZZOydkyGpE87Nz9Cnxpg97ABWJKWqu0t?=
 =?us-ascii?Q?k8PFJ4m/ke+PFjfFOjkCXW3nkfjHS5ODIIuSpqGgBWhkpqmwVrFeKs7wLl6Q?=
 =?us-ascii?Q?sMc7Z6krWKRtaKtMNDK312IpsQb1UgvJ8ki6jM3hPGqB4NoziFLk5JtUuWD8?=
 =?us-ascii?Q?wpOse3ukL39HkbmSxUDhQzGGCaiUkfJu3mHbue3FvlTYqN/NAUIOwJUvXMR9?=
 =?us-ascii?Q?TPGfyx8zuSXgAwYyygmetJXgkNI1AAF93POW/f4a634qWXLdWQGnUm29dkka?=
 =?us-ascii?Q?jH761CUeLMA91YpqomfbdwOQvnOBG9G6m3euhfzuwUj2XMFKA/lvoR02ClzJ?=
 =?us-ascii?Q?fbAkj2enbh3Nv2poVLhUrrZu3X9gg2oioT7HS8ii3KMj033rshqjsnKgGuOi?=
 =?us-ascii?Q?zje0A/U/zk9obXUN2a+zqsyrbji4JCuSRWVvScgl/ksOjwIZmY578otaZvpf?=
 =?us-ascii?Q?9zMvQ5vpiAwZfOq9/9eZGt7wNeytriViFtpPCPZFzvgitA7F4HCTYhabO4ga?=
 =?us-ascii?Q?hmmM6UJ72iWoiaEoOjHvVlfaZJTQvytMp01tSCgc2txVjKgFeO/cc7Ua9Uvb?=
 =?us-ascii?Q?vFYVs+k3CYkrHGMTc6qF40mBKh9j6T+YBZaq70x6Rsu7EI8xpEVY3d1HhP4d?=
 =?us-ascii?Q?qwXxI9uWZD0TJZhg3PnY128IvBhLGTD953zXPfv2pYmQqbRfgJdVUuu2vCve?=
 =?us-ascii?Q?CK3BwSLeTlmuqqzE5L58XbOen4dAXWOMVPHXxxjv1AiLESVsmGu+djv8ARX8?=
 =?us-ascii?Q?bNLXzqBSOOybsNswiHX/wYHKdoE7YT9gS2p9sj2r2h5Wqgtpka9CJROT6BS3?=
 =?us-ascii?Q?y74wMik5QPmwo0nvy86EjMZ9vL0EVMSMRlLyE8ZZOAeVEbCKYUxjdmEqHIFh?=
 =?us-ascii?Q?pGDq8Mlfr7DzjUEktnb5f+x+h2K3p1bRAcIys/UFitP/FMLBrQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mUN3x4zzhOVy5Hqs+iMKKqZnR6DbfmZ1A0K2tsTezMFxPd8YyScW+o9lvNsu?=
 =?us-ascii?Q?ZfE8kpNe7TUEQNZp2EPyXR8QFomIvFYs8SQ22Wa0ljSiLfsXwv6BvFOnxtWC?=
 =?us-ascii?Q?CwuNSisUgXaWs7qeqR5hF3f6u3uhvq09qyWsOcConGDsw/EUkwqOeyzLoFmT?=
 =?us-ascii?Q?QHPcO4JIViZCNqidsc+EC6sd/o2ceDFnBhViDVfohkZnjIJDIeAsUNb5p/vV?=
 =?us-ascii?Q?1ETWg7rx67lIUnHUM2EcO1gIYv+OU5tpUJAmRsl6X2bKc5idHeO/LSHksvSJ?=
 =?us-ascii?Q?9/ifdr7nD67+0iu2D4euqOGatcjTTOEKeYOHQBL0vpkOQ2Y0/bM8Zdr5RaEM?=
 =?us-ascii?Q?xo+nF3lJ+/PwcmdshySxRK2yg7EUJySo+6VetUoZsEqZ7dcdcwQwdNOKLl4z?=
 =?us-ascii?Q?vcvtVWYwUxcyaZM04dU605cJlqIY8WOSV2uGiqqwBPR4xNDlrrrCaFOVVzX+?=
 =?us-ascii?Q?9m16Tss77UHHk3eITV31p8hKiH+NOxZ0pMm5vyZYyFkA/DcGGg8OCu8LSXKu?=
 =?us-ascii?Q?bLtWZnpUheXx6BewAH6pNJbEtrtVAKHFEBlP+VgVecpCnfvv6+MtXzIThuaq?=
 =?us-ascii?Q?8+kyVkJI3m8me/XOlWlLbMkIekgsSWVGqSW6ccwRIWeEkFbAP1FkXByEb5ar?=
 =?us-ascii?Q?vQAbKif33wwjiA+do52lQIQh3w8v6tESt/byp7PFjZhBNuAJTKs43lBuKLao?=
 =?us-ascii?Q?qOWaFTIOE9I6ya2PiUwpW/Z8bln7gPVVrY+O2XSbv+mYCfhRaia0QNrT2dLB?=
 =?us-ascii?Q?i/kEleD/ZgJoFwiHLLWwiu/I6V3X5OsdF+a5+tKpOm84i1E2ARJ+RTGeO2Lu?=
 =?us-ascii?Q?kf4Xd7rbDjEpax5W2b72k5BDvS2M5FENbRHZNcq1QA7NVcozYb6hh9igMgUR?=
 =?us-ascii?Q?hedfylhnEyr54aJwC6GUu/7NatjQY5DB3Ib6xHG0w2yY7Uph4GDpj8X/PGxE?=
 =?us-ascii?Q?4xI8Qe1GnqFQm+vTnC+cBaKY9bhRPHgBZYrl5aJfdA+dXV7iuMXLovoB6IGg?=
 =?us-ascii?Q?mU3bSu92XWRICxGup0as5ZnJNH3KxpOK0xTVToPbzDTQJXaehNJK1wFUrl9Q?=
 =?us-ascii?Q?vcGXrXTHqKCsnwu4xhOFyREo2rWIBD9imUxWAnlWv342Di93TuFvbxbLsPpQ?=
 =?us-ascii?Q?Ex7cT4cbEBBggE8fFj1CmthkKxuHTgAxPZmPUlbAreWE1XC4Oz8QPIwdux92?=
 =?us-ascii?Q?sAf0lnt3XnzuviipqCtZWItd8BjFj8CYKAO2d2Bktuxn+1UwZ/7Ts43KY/2P?=
 =?us-ascii?Q?ettJ3QSjuXuK55YsH15/whzvoMYOKKvpiyGjHWCxNAYW7IPCcda5CqG9owvf?=
 =?us-ascii?Q?Xklc23dqYlobKMn1JrSdugrM0UicEKul8eCuFVgNIT0hMOBB+U+EDJG5icus?=
 =?us-ascii?Q?0u7u4Fb+cGKv3hbnV9TqZWfgh4ZkMe5VehekaHev9lZW7U6SMse4wsiQIk+A?=
 =?us-ascii?Q?1g62navxS5r5/nbKBSiq/EuMOPdtFQ6CAT7nB2Ju+pjRekdP0y+o8+lv5CQZ?=
 =?us-ascii?Q?aheOpmzj3MMv0PLdwRYqaxKbQM+A04elrY+KJX6Qze3aGDHPHyfQd8JrF6dH?=
 =?us-ascii?Q?b7OR+4qM7PQGyd2j6EJMeD+R5jaBGW9YPuclK0xPav75UqwF9WeSsMvnHDyV?=
 =?us-ascii?Q?vyFOoX+DPLvT7HDjR1Coor7IxWN8uZq9yb8vEMaYDPuy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 539e2044-b5d3-4012-b133-08dcd8aae01f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 12:59:19.5592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ykYYbCMjjatGY4pyd2wGPmuNshTdlGtsGhGPEQfU93ZmWrg6t4uleqdCmpPXhYgkbfonANcXwCHq/5q/3BDlhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4799
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
> Sent: Wednesday, September 11, 2024 4:20 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes =
for
> Display LNL+
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Wednesday, August 21, 2024 3:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes
> > for Display LNL+
>=20
> Drm/i915/histogram should suffice
> Lets not use LNL+ use Display 20+
>=20
Done

> >
> > In LNL+, histogram/IE data and index registers are added which was
> > included in
>=20
> Same here
Done

>=20
> > the control registers in the legacy platforms. The new registers are
> > used for reading histogram and writing the IET LUT data.
> >
> > v2: Removed duplicate code (Jani)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_histogram.c    | 138 ++++++++++++------
> >  .../gpu/drm/i915/display/intel_histogram.h    |  25 ++++
> >  2 files changed, 122 insertions(+), 41 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > index 189f7ccd6df8..9c31a7d83362 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -26,38 +26,41 @@ struct intel_histogram {
> >  	u32 bindata[HISTOGRAM_BIN_COUNT];
> >  };
> >
> > -static void intel_histogram_handle_int_work(struct work_struct *work)
> > +static void intel_histogram_read_data(struct intel_histogram
> > +*histogram)
> >  {
> > -	struct intel_histogram *histogram =3D container_of(work,
> > -		struct intel_histogram, handle_histogram_int_work.work);
> >  	struct drm_i915_private *i915 =3D histogram->i915;
> >  	struct intel_crtc *intel_crtc =3D histogram->crtc;
> > -	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> >  	u32 dpstbin;
> >  	int i, try =3D 0;
> >
> > -	/* Wa: 14014889975 */
> > -	if (IS_DISPLAY_VER(i915, 12, 13))
>=20
> Looks messy will be cleaner when you move WA to 1 function as mentioned i=
n
> previous patch review
>=20
> > +retry:
> > +	if (DISPLAY_VER(i915) >=3D 20) {
> > +		/* Set index to zero */
> > +		intel_de_rmw(i915, DPST_HIST_INDEX(intel_crtc->pipe),
> > +			     DPST_HIST_BIN_INDEX_MASK,
> > DPST_HIST_BIN_INDEX(0));
> > +	} else {
> >  		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> > -			     DPST_CTL_RESTORE, 0);
> > +			     DPST_CTL_BIN_REG_FUNC_SEL |
> > DPST_CTL_BIN_REG_MASK, 0);
> > +	}
> >
> > -	/*
> > -	 * TODO: PSR to be exited while reading the Histogram data
> > -	 * Set DPST_CTL Bin Reg function select to TC
> > -	 * Set DPST_CTL Bin Register Index to 0
> > -	 */
> > -retry:
> > -	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> > -		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> > 0);
> >  	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> > -		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> > +		dpstbin =3D intel_de_read(i915, DPST_HIST_BIN(intel_crtc-
> >pipe));
> >  		if (dpstbin & DPST_BIN_BUSY) {
> >  			/*
> >  			 * If DPST_BIN busy bit is set, then set the
> >  			 * DPST_CTL bin reg index to 0 and proceed
> >  			 * from beginning.
> >  			 */
> > -			if (try++ >=3D 5) {
> > +			if (DISPLAY_VER(i915) >=3D 20) {
> > +				intel_de_rmw(i915,
> > DPST_HIST_INDEX(intel_crtc->pipe),
> > +					     DPST_HIST_BIN_INDEX_MASK,
> > +					     DPST_HIST_BIN_INDEX(0));
> > +			} else {
> > +				intel_de_rmw(i915, DPST_CTL(intel_crtc-
> >pipe),
> > +					     DPST_CTL_BIN_REG_MASK, 0);
> > +			}
> > +
> > +			if (try++ =3D=3D 5) {
> >  				drm_err(&i915->drm,
> >  					"Histogram block is busy, failed to
> read\n");
> >  				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> > >pipe), @@ -66,10 +69,37 @@ static void
> > intel_histogram_handle_int_work(struct work_struct *work)
> >  			}
> >  			goto retry;
> >  		}
> > -		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> > +		histogram->bindata[i] =3D dpstbin &
> DPST_HIST_BIN_DATA_MASK;
> >  		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
> >  			       i, histogram->bindata[i]);
> >  	}
> > +}
> > +
> > +static void intel_histogram_get_data(struct intel_histogram
> > +*histogram) {
> > +
> > +	/*
> > +	 * TODO: PSR to be exited while reading the Histogram data
> > +	 * Set DPST_CTL Bin Reg function select to TC
> > +	 * Set DPST_CTL Bin Register Index to 0
> > +	 */
> > +	intel_histogram_read_data(histogram);
> > +}
>=20
> Maybe add read data and get data at the first patch will make this patch =
much
> more Cleaner and pleasing shouldn't really have any effect on build or
> functionality.
>=20
Done

> > +
> > +static void intel_histogram_handle_int_work(struct work_struct *work) =
{
> > +	struct intel_histogram *histogram =3D container_of(work,
> > +		struct intel_histogram, handle_histogram_int_work.work);
> > +	struct drm_i915_private *i915 =3D histogram->i915;
> > +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> > +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> > +
> > +	/* Wa: 14014889975 */
> > +	if (IS_DISPLAY_VER(i915, 12, 13))
> > +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> > +			     DPST_CTL_RESTORE, 0);
> > +
> > +	intel_histogram_get_data(histogram);
> >
> >  	drm_property_replace_global_blob(&i915->drm,
> >  			&intel_crtc->config->histogram,
> > @@ -161,12 +191,19 @@ static int intel_histogram_enable(struct
> > intel_crtc
> > *intel_crtc)
> >  	 * enable DPST_CTL Histogram mode
> >  	 * Clear DPST_CTL Bin Reg function select to TC
> >  	 */
> > -	intel_de_rmw(i915, DPST_CTL(pipe),
> > -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> > -		     DPST_CTL_HIST_MODE |
> > DPST_CTL_IE_TABLE_VALUE_FORMAT,
> > -		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> > -		     DPST_CTL_HIST_MODE_HSV |
> > -		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> > +	if (DISPLAY_VER(i915) >=3D 20)
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE,
> > +			     DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE_HSV);
> > +	else
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_BIN_REG_FUNC_SEL |
> > DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE |
> > DPST_CTL_IE_TABLE_VALUE_FORMAT,
> > +			     DPST_CTL_BIN_REG_FUNC_TC |
> > DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE_HSV |
> > +
> DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> >
> >  	/* Re-Visit: check if wait for one vblank is required */
> >  	drm_crtc_wait_one_vblank(&intel_crtc->base);
> > @@ -252,24 +289,43 @@ int intel_histogram_set_iet_lut(struct
> > intel_crtc *intel_crtc, u32 *data)
> >  	 * Set DPST_CTL Bin Reg function select to IE
> >  	 * Set DPST_CTL Bin Register Index to 0
> >  	 */
> > -	intel_de_rmw(i915, DPST_CTL(pipe),
> > -		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> > -		     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> > -
> > -	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> > -		intel_de_rmw(i915, DPST_BIN(pipe),
> > -			     DPST_BIN_DATA_MASK, data[i]);
> > -		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> > +	if (DISPLAY_VER(i915) >=3D 20) {
> > +		/* Set index to zero */
> > +		intel_de_rmw(i915, DPST_IE_INDEX(pipe),
> > +			     DPST_IE_BIN_INDEX_MASK,
> DPST_IE_BIN_INDEX(0));
> > +		for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> > +			intel_de_rmw(i915, DPST_IE_BIN(pipe),
> > +				     DPST_IE_BIN_DATA_MASK,
> > +				     DPST_IE_BIN_DATA(data[i]));
> > +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n",
> > +				       i, data[i]);
> > +		}
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> > +			     DPST_CTL_IE_MODI_TABLE_EN,
> > +			     DPST_CTL_EN_MULTIPLICATIVE |
> > +			     DPST_CTL_IE_MODI_TABLE_EN);
> > +	} else {
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_BIN_REG_FUNC_SEL |
> > DPST_CTL_BIN_REG_MASK,
> > +			     DPST_CTL_BIN_REG_FUNC_IE |
> > DPST_CTL_BIN_REG_CLEAR);
> > +		for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> > +			intel_de_rmw(i915, DPST_BIN(pipe),
> > +				     DPST_BIN_DATA_MASK, data[i]);
> > +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n",
> > +				       i, data[i]);
> > +		}
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> > +			     DPST_CTL_IE_MODI_TABLE_EN,
> > +			     DPST_CTL_EN_MULTIPLICATIVE |
> > +			     DPST_CTL_IE_MODI_TABLE_EN);
> > +
> > +		/* Once IE is applied, change DPST CTL to TC */
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_BIN_REG_FUNC_SEL,
> > +			     DPST_CTL_BIN_REG_FUNC_TC);
> >  	}
> > -
> > -	intel_de_rmw(i915, DPST_CTL(pipe),
> > -		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> > DPST_CTL_IE_MODI_TABLE_EN,
> > -		     DPST_CTL_EN_MULTIPLICATIVE |
> > DPST_CTL_IE_MODI_TABLE_EN);
> > -
> > -	/* Once IE is applied, change DPST CTL to TC */
> > -	intel_de_rmw(i915, DPST_CTL(pipe),
> > -		     DPST_CTL_BIN_REG_FUNC_SEL,
> > DPST_CTL_BIN_REG_FUNC_TC);
> > -
> >  	return 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> > b/drivers/gpu/drm/i915/display/intel_histogram.h
> > index 5e24d3c5c28b..436e0b8e9ffd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> > @@ -48,8 +48,33 @@ enum pipe;
> >  #define _DPST_BIN_B					0x491C4
> >  #define DPST_BIN(pipe)
> 	_MMIO_PIPE(pipe,
> > _DPST_BIN_A, _DPST_BIN_B)
> >  #define DPST_BIN_DATA_MASK
> 	REG_GENMASK(23, 0)
> > +#define DPST_BIN_DATA
> > 	REG_FIELD_PREP(DPST_BIN_DATA_MASK, val)
> >  #define DPST_BIN_BUSY					REG_BIT(31)
> >
> > +#define _DPST_HIST_INDEX_A				0x490D8
> > +#define _DPST_HIST_INDEX_B				0x491D8
> > +#define DPST_HIST_INDEX(pipe)
> > 	_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)
> > +#define DPST_HIST_BIN_INDEX_MASK
> 	REG_GENMASK(4, 0)
> > +#define DPST_HIST_BIN_INDEX(val)
> > 	REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)
> > +
> > +#define _DPST_HIST_BIN_A				0x490C4
> > +#define _DPST_HIST_BIN_B				0x491C4
> > +#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe,
> > _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)
> > +#define DPST_HIST_BIN_BUSY				REG_BIT(31)
> > +#define DPST_HIST_BIN_DATA_MASK
> > 	REG_GENMASK(30, 0)
> > +
> > +#define _DPST_IE_BIN_A					0x490CC
> > +#define _DPST_IE_BIN_B					0x491CC
> > +#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe,
> > _DPST_IE_BIN_A, _DPST_IE_BIN_B)
> > +#define	DPST_IE_BIN_DATA_MASK
> > 	REG_GENMASK(9, 0)
> > +#define DPST_IE_BIN_DATA(val)
> > 	REG_FIELD_PREP(DPST_IE_BIN_DATA_MASK, val)
> > +
> > +#define _DPST_IE_INDEX_A				0x490DC
> > +#define _DPST_IE_INDEX_B				0x491DC
> > +#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe,
> > _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)
> > +#define DPST_IE_BIN_INDEX_MASK
> > 	REG_GENMASK(6, 0)
> > +#define DPST_IE_BIN_INDEX(val)
> > 	REG_FIELD_PREP(DPST_IE_BIN_INDEX_MASK, val)
> > +
>=20
> One more reason registers should have its own file
>=20
Done

Thanks and Regards,
Arun R Murthy
--------------------
