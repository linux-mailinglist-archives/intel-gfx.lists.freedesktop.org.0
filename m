Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC6D938905
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 08:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEDA10E374;
	Mon, 22 Jul 2024 06:46:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ghnA3IrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953BF10E374
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 06:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721630776; x=1753166776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qa5OY+viPmkph/qxeDxhmjrySvBd+2r4sLWL9gRzVEs=;
 b=ghnA3IrOCsar5+PIIQqNU6qA8WnIf2whe7ZeN2hkhHH7LgW7R23A7cXY
 DPOE3hY1q4IlGxdnAOAxGLW+5a0qxOxMxkxNW7wBENVVFtKLDkpYvDph3
 hGfA8QM2gEjGpu5Qq+st3iAEgTv0wl5Z2oC0G1I7tQEVer7W1kjY3bW2Y
 eUDKkfC6a/F1IulCXuMoYMm73OjTgcJ640P5+uC3UloB2o1DIA6wdZ3Yn
 bj1pVKEtVN1LeRJoW0OJGRa1LLLwdbO/+KWAz0dw4Kr9elVSJiZs9z0/k
 P74KQV/baRQtScrirnWVXO5EG6fYUvBnOBz/O/iPS40gtLCtOjd37bPB6 w==;
X-CSE-ConnectionGUID: axpmbigbQZiXTkOs7/gvFg==
X-CSE-MsgGUID: PWEVbwnxQ8qOKQop4pUi9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="18798047"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="18798047"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 23:46:15 -0700
X-CSE-ConnectionGUID: 8wiZEXcyRY+HxQ6hx3zDSA==
X-CSE-MsgGUID: ab9T5mIUQxmZJcZUdXZyPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51669991"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jul 2024 23:46:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 21 Jul 2024 23:46:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 21 Jul 2024 23:46:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 21 Jul 2024 23:46:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=npIrfPxUOSW+YtnIJEfwGBY8jAqY1kV9WTEbNPSVEYdTxUqMlOsI2wNnJdMBfqj4iw3qMhNLxjkuQW8QWGbfi8GJ72cqHgo5cQby3gq2+05YSUZB5zc0J0SVfEL9nL9+EgXwV20rmQhnjoVyV4TC9XuT2X/lMCSwkhwSnXE3Mixu+iyq2gH6Ux9jyQHTf8xdOEZeyHT8OEdFr/1EJIs4LKsBHXgrbSL0sAGqBiifYlokbr2yl1RYmo3NE9uD4FRrIInd+l3xOTQS1b1indKpcSSKUORCxumpBQAvTzvVH0OTrUxGd4sM2ujAt1PizTFR8PmPNPJ3axRa1eARyy99kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s98sWBodoODDrFp5DNgf/+IxXJo6LZcHLqCW8I3PaA4=;
 b=v+f/fbNFxjTpRqh65VUUd5XKEH5C+/Ii9w9iy9jh2ri4OzNZqXDVkcgNCs7x/Sbk9/f3XGwpFDMg41sfSbBIg+4NiWDUZDZq3ke9D6tHkDmXKzOfAsHtIgldf6Rii6akKGrvMQqhX0y5FXivbdMwKKd2uSHkmRJSPXTxMSlRF+5ZC9ZEYcjS4JHrkKXhaJkYdvUT1q+FNOFcWwyoERDW3f9bonOPCF4P8vMphozwMjVPY15g9i+i08jddoCiIQgvVlfG0P81H6aABU15EDNQenStNkRXlEN0XXdkhyGvJO3MkK9jOW8RTDzFQIlFNeDMSF16FUjC68LrHN9niLoZIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.17; Mon, 22 Jul
 2024 06:46:11 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Mon, 22 Jul 2024
 06:46:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>, "Naladala, Ramanaidu" <ramanaidu.naladala@intel.com>
Subject: RE: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Thread-Topic: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Thread-Index: AQHa004EH0X9KyQa/kSG2Ucmqv/eGbH8scAAgAWseBA=
Date: Mon, 22 Jul 2024 06:46:11 +0000
Message-ID: <SN7PR11MB6750FDD24918BF1D32E31E8EE3A82@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240711044905.3306882-1-suraj.kandpal@intel.com>
 <IA1PR11MB634802B01D2FDF366062BEC4B2AC2@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB634802B01D2FDF366062BEC4B2AC2@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB6375:EE_
x-ms-office365-filtering-correlation-id: 9fcd877d-3286-4e7d-784e-08dcaa19f960
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zbNX/aqiDwPwlDXeefJM1PcYFlr7JNF2wUAVltQWMVKignpjXzfdQ89wyxFg?=
 =?us-ascii?Q?VxEoMaoJkyzxp7fjAflN9bolQdWNoYrBeEe9IPPyIKbF4bm81BZ8bkdbJC8i?=
 =?us-ascii?Q?J1XsvbffRZM1P98ElJLBvUsDtwDN4G/4HTBZ0zCwuHu930CWzL648fHibOY+?=
 =?us-ascii?Q?REuFrmMtXrOFy/Cl6aM/bJYzzbJXuz8XhYiHBebRnUal90LX870JOIj7V6/g?=
 =?us-ascii?Q?fLC8GYmzpsEzYY6Cm8r7vTaQz26Eok3VjdWPI+79dgKEz96M4FslJaLv7rv1?=
 =?us-ascii?Q?KYIa3lr653EiliLP8a1sYrEfd/oe5mQKKa5muRKYCe0BE+e73fTa88q9nf/a?=
 =?us-ascii?Q?uBn2+IuAaogEgkr8i35wP45wdJuXiRfUBBF7Ua/MZkCz/MziQFJFeu04fgP5?=
 =?us-ascii?Q?u4kppEYwzjhbyX2ISGVV9XptiQ5f7MmpS/zfxlxJtesAF9ClgKsFUIIe/N6d?=
 =?us-ascii?Q?dWtSHz1hoFeEjrd38XAVO3v75CE425nzjo+ypBqb/lBJCoNb+rgK7qQVw/u6?=
 =?us-ascii?Q?XICNtcYIINuElz2f8RppwvCAObMgSiiFhfGyvqu0f/vuRd95X/7xEBHmANMl?=
 =?us-ascii?Q?9P5txyjNSv2owct8up5N9VH5FELRm+BQ/I7CF1D+tOG6sDCuD9Gw30nfagnD?=
 =?us-ascii?Q?BXF8X/ywn/pSPsAsOsmTl5Vx2PSg1tIbjsEc2BXP8TmIpb1WSd4gP/A8ontl?=
 =?us-ascii?Q?/tZv66KwxsGGHS9E8FVxpoilsRXLdMWCy5TM64epzxyyeN3KNREQoyCg0wdQ?=
 =?us-ascii?Q?9gpgU4emkInMmH9sFxR+mFhTAhZVgPyKWxLm/pKU7p6LWC9Vb+6dlcj9rBD+?=
 =?us-ascii?Q?wdXNwVBmDusDl5o3Sa9ZAze8aRiymV9OKhhjGKbkHiFM1cv2jm69VpvPGecO?=
 =?us-ascii?Q?o4pDbyttcZCZw+GZdQDEtJXpTbPQLGNv0nWYz2UAtuWBSHhPC3pF3hxKSY+D?=
 =?us-ascii?Q?k1kgYneT+g4H2ZaBEFnB2QBCEd2htiiac+b1Hj33Hg+wBgEzPQfVG4rqUD4h?=
 =?us-ascii?Q?sSQ/D8HdZSsPOBcloEdsS2yiHai5roX5jB/E/PY+m6kM6rQBY13nVJDaEbID?=
 =?us-ascii?Q?9xZEzlYFAlb953apj/+I0a0nBshidOgJDBM2AglreRgPqrtJCPZiHFiOYs1j?=
 =?us-ascii?Q?haAWc8WTaL9maPmzlfCq2ONUahRAmJOU+E+NZpZMfWbfQkpDiuNUnsPQgRej?=
 =?us-ascii?Q?8dVg4ULPGvq1gjZnFGnB3WZCYrqaSj7/pJWO7/WMp4B334GiUJqhMpt5r09l?=
 =?us-ascii?Q?BzFhcDX1IwFgOF+QdVl++7fe2YvtlqE4ugZTPXgGHFlK7Z3o+RYFloAeHh1J?=
 =?us-ascii?Q?rnsO4/iWfinpLxNkVUH9ayweUwxotD/GHYPvGREOWXXVquAdL8l6pMb4uAr2?=
 =?us-ascii?Q?DtYhZpOSDWA1NHH7Q8pZgOAuWtIRkrI673zcDe7Yd9rx6rIasw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1Zt0rMNQSBc9YPZH5de4o6XNnBuX1sHV0EC0YuURAn/Lr9ja/sGV94JtQ1Ta?=
 =?us-ascii?Q?qpE08s/WDyqU96oIWPvKimxADwuawu14QD7oZAhmrEELx5rEuPpSQi1Bqxy6?=
 =?us-ascii?Q?ErgEvHH0Ki0u93tGgtzO7d5dfvhaIbLOwmk8RGoYYYS5LafjYKFa3tYoFenJ?=
 =?us-ascii?Q?az1xRkNPQTk4wVjWeaSM29mDeZhLDQ1Lg3PP80BXkfSS7X82klGq3yz5XKgF?=
 =?us-ascii?Q?Y0IBoqlNn1EZsCJ+quLrSo3LJzxNp6qbMW1nPRJAPtJWRXhO9be74yZ+Iylu?=
 =?us-ascii?Q?wL2oiAu/TehnQavsrW6PgIJjUkitG6xoqP/s0HebyJfodH0h+gmcrw+FsSM5?=
 =?us-ascii?Q?msJWGj6Ea3lvJV7vxSNjiCDDBup6Abyvd9eAE9AhDQ08V5uZ0j52Ca0d+ipx?=
 =?us-ascii?Q?onfm0hcZUpENyWKyJzWbLV2KJE0mZK8svgddkjqzISqDH2PD45hBLK7qFXwB?=
 =?us-ascii?Q?vJUjIGR9lw+/BEAe3LB/8dkuMR9lq00f1QgCfpXrmgx2I0Wjxq3X+gaPYzaG?=
 =?us-ascii?Q?WtMyi9C+rbLm9BkryXVXfmLc8+7lL3rtMuGqI8Su16rSBYqBw8puVjrXrA5X?=
 =?us-ascii?Q?1iJWAYzaV2FHf0uYCKhZvWDEI81JFSOAE5PaNNjDaogd+myvxGgX/4OuVaca?=
 =?us-ascii?Q?Vl4OwW0AZIvSCNEqgaPYro4Q+J+ronxV7G6UgTQlz72Uxhuai32mHNi+6776?=
 =?us-ascii?Q?BDbyc1sHR28t9WcZd9mo/2u8cDg1KaDky7Fstk7nEjIPDR3LQlTUK0OBdDFh?=
 =?us-ascii?Q?2lhPqCTRLjd29bZIk5d4wfmUqlAmGfzNLA7khg+oLJ8VjdcG0UYJF/Hgn5bk?=
 =?us-ascii?Q?nC2zAxbFSAcc1CtuFNnl3cILlOJQ9DWD4R55iNGOAqjvsf9YNtpjqQQsa9Kp?=
 =?us-ascii?Q?MT9gDZU95536FmbvG/2Hq6hnQIGNi6XOU8CwzeLNZ+nszMCI0CpipmHJc6xz?=
 =?us-ascii?Q?iPV/8bqX0duZlC6V8wiigowzdjsZk0dfFeXFjIpLl+gwrlAbLYq4Wl1aX2se?=
 =?us-ascii?Q?31sVJkbrLuRSY4f4BHZPcoeu4SYcjl9gOCTtduBI4NyJZLgSdkOaqSVgDKC8?=
 =?us-ascii?Q?mkE6HPl2fgzh6pV6X4qXL63HKZ2DUuPVi9gUl8RHEWaSWNn8EV1MAjYZjLIr?=
 =?us-ascii?Q?495MskIhQe2gqoxrR2todwcgUEAnbo8J26p+QxC3Tarp4Vy3g6rHqYM9bT91?=
 =?us-ascii?Q?fmKWMVS73+os84R3AFBLG73YIPXTMzAJTDbWHBXDRijmCXuYFQxTkKKhRUBM?=
 =?us-ascii?Q?SeL7mWPT+gUf4ovJWPRx9GbqbqaR1iIXuoj3xQnX7I9Wsk8ww+SOqhyLZxYh?=
 =?us-ascii?Q?x5pihatAhLguV2d+Xscvd0lKAaTnkjkP5Z17e3fKQKBGIIS1aQELFg5Grhcb?=
 =?us-ascii?Q?MGw3pORGG+yPIB+PcRQccabXoP5ytf40EL3pdDYnggtettUviA1D/BUGoY6/?=
 =?us-ascii?Q?hZNNagFgoQ9AkGMb5ISMcxF0ww68p8I5OfMtgr/ZqbxlW09QYnvbG65MYBmK?=
 =?us-ascii?Q?r8fd46zB1LYguOeAqFptmsLXbKq5PV8riOk9LVt49Z9MF+lndNyAFwLKu2nL?=
 =?us-ascii?Q?uZp/FVlmFBnJ8pZel9pSsc6Ux2yTC3DvLJ2lIVG/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fcd877d-3286-4e7d-784e-08dcaa19f960
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2024 06:46:11.4191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BF1POvUWdjGaD510nkJb5LP6DygiBYuC5kdetqwQcOwrnnB+YmEPzgTdhxF/QIW2N9XR9jb5WYB/X++ZuFxF8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Thursday, July 18, 2024 9:35 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Naladala, Ramanaidu
> <ramanaidu.naladala@intel.com>
> Subject: RE: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC
> Enablement
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Thursday, July 11, 2024 10:19 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Manna, Animesh <animesh.manna@intel.com>; B, Jeevan
> > <jeevan.b@intel.com>; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>; Naladala, Ramanaidu
> > <ramanaidu.naladala@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC
> > Enablement
> >
> > DPKGC can now be enabled with VRR enabled if Vmin =3D Vmax =3D Flipline=
 is
> met.
> >
> > Bspec: 68986
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 24
> > +++++++++++---------
> >  1 file changed, 13 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index a2726364b34d..045c7cac166b 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2830,17 +2830,17 @@ static int skl_wm_add_affected_planes(struct
> > intel_atomic_state *state,  }
> >
> >  /*
> > - * If Fixed Refresh Rate:
> > + * If Fixed Refresh Rate or For VRR case Vmin =3D Vmax =3D Flipline:
> >   * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
> >   * watermark level1 and up and above. If watermark level 1 is
> >   * invalid program it with all 1's.
> >   * Program PKG_C_LATENCY Added Wake Time =3D DSB execution time
> > - * If Variable Refresh Rate:
> > + * If Variable Refresh Rate where Vmin !=3D Vmax !=3D Flipline:
> >   * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
> >   * Program PKG_C_LATENCY Added Wake Time =3D 0
> >   */
> >  static void
> > -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > vrr_enabled)
> > +skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > +enable_dpkgc)
> >  {
> >  	u32 max_latency =3D 0;
> >  	u32 clear =3D 0, val =3D 0;
> > @@ -2849,15 +2849,15 @@ skl_program_dpkgc_latency(struct
> > drm_i915_private *i915, bool vrr_enabled)
> >  	if (DISPLAY_VER(i915) < 20)
> >  		return;
> >
> > -	if (vrr_enabled) {
> > -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > -		added_wake_time =3D 0;
> > -	} else {
> > +	if (enable_dpkgc) {
> >  		max_latency =3D skl_watermark_max_latency(i915, 1);
> >  		if (max_latency =3D=3D 0)
> >  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> >  		added_wake_time =3D DSB_EXE_TIME +
> >  			i915->display.sagv.block_time_us;
> > +	} else {
> > +		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > +		added_wake_time =3D 0;
> >  	}
> >
> >  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK; @@ -2873,7 +2873,7 @@
> skl_compute_wm(struct
> > intel_atomic_state *state)
> >  	struct intel_crtc *crtc;
> >  	struct intel_crtc_state __maybe_unused *new_crtc_state;
> >  	int ret, i;
> > -	bool vrr_enabled =3D false;
> > +	bool enable_dpkgc =3D false;
> >
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2899,11 +2899,13
> @@
> > skl_compute_wm(struct intel_atomic_state *state)
> >  		if (ret)
> >  			return ret;
> >
> > -		if (new_crtc_state->vrr.enable)
> > -			vrr_enabled =3D true;
> > +		if ((new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax &&
> > +		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline)
> ||
>=20
> 	In current implementation this target to CMRR it seems.

Yes I saw Ankit's patch series which introduces vrr.is_fixed but I understa=
nd its not always set even if cmrr is in picture.
Seems like this condition is the best as it best represents the condition m=
entioned in bspec.

>=20
> > +		    !new_crtc_state->vrr.enable)
> 	But in CMRR as well, vrr.enable is set along with vrr.enable. Any
> specific case you are targeting to ?

So either we have vmax=3Dvmin=3Dflipline or vrr is disabled these are the t=
wo conditions in which
Dpkgc can be enabled

Regards,
Suraj Kandpal
>=20
> > +			enable_dpkgc =3D true;
> >  	}
> >
> > -	skl_program_dpkgc_latency(to_i915(state->base.dev), vrr_enabled);
> > +	skl_program_dpkgc_latency(to_i915(state->base.dev),
> enable_dpkgc);
>=20
> >
> >  	skl_print_wm_changes(state);
> >
> > --
> > 2.43.2

