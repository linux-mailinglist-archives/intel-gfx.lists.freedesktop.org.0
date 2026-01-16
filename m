Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 887B0D2B712
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 05:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5739F10E7DF;
	Fri, 16 Jan 2026 04:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7qVUz+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33EB610E7DF;
 Fri, 16 Jan 2026 04:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768538078; x=1800074078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TeRKjPfUAZ+accsogNW8KmhObTtlyzYfQjq8BCMZH5Y=;
 b=d7qVUz+GgIjA0w9QpXL3zw/EeCOfZGFwyFPOPBSTYeVgrLZQfUoYCjqT
 FIX0iSZtBcxCFd/RLHrfIID+061m5qOkvS5pO1MSH4z0ofOkBxhjkJSmE
 WppwnU8evakeul8lF6ZGy8dUTMkmT30jokf97t2t3OVYnqbpqc2xNJgRw
 BZByIWq4CbzWgqv8RLG0ItaXBOc0ik3BLgd9HtNI8dhRUGD8HsShidGzt
 zkRkSXWhZILWPt9zgfmyDu5l+2k7noX8bdCd2L6qupwPNZ+uJYYk5UQyc
 JWuMRUlAIEkO2unLps05+F7vLipKzC2f5Yth5a81Q9HEgPg/7ZNlBNXL3 g==;
X-CSE-ConnectionGUID: nxvXBRgbT5Wc06/RRoKIXg==
X-CSE-MsgGUID: 44LVdz3yTNy7AFFLAvk0tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="80158592"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="80158592"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 20:34:38 -0800
X-CSE-ConnectionGUID: qRaBFGFoRX6CEb0oLEnxzQ==
X-CSE-MsgGUID: FlAysTuRSxiSJVO88eTYXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="205180141"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 20:34:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 20:34:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 20:34:37 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 20:34:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wa9vaKJ/8BxIzP9N+uzM8W21FWYosviETMtMifQida4N8GlIZmZP1mHc3hqK4mwOFHWLgAWi6yPSgA+LYedkKSZ9y1gGIP6nUr4Cw9H5W/tzxjcfbyoDkJxXLHnQmIk3ESuh43KOxhZ9UPVKm63kUkToLHbQ8K2LJ6Ng/zZamgXN3TXOnWXO8THZE4n6uG/vWrvySrWZQ4V2r9JZh47fIfVt4JBljeKI+Tx+6y3Kqmcj1kokrk95E6urrI35HWMaqPmFTJ5zJ2bHNtcfSPuC8Kg14Nq1gVRrEQ7FtweZDzZhkUYGvqbAB4c0sRPRYR9NGsNP3pzLhe2nCiX5ac/vQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+2Bh1DP9+S3vlJ5YzcvuSxoPti/vcBYl4ME4F4h6BZo=;
 b=DPPFw0Q2nSICYJ/kUNXhQKCzFsd6kZ93SjIZcJpJSN42y0U860gbP2QCKUwFaEzvTdUIQ5dEcSROSeXL0DoTYvWaNxQjd8QqE0kNFiK8HFwbaC5nD6XNpwefQ5RPszX7eAeShiIOfkozIStpAC2WSM5buSE9JPmOTJnc4wdQWFeNi9TeaGgD29otMpXKiN6qv7VtMF0qb030Cd4FubI8ViFRT54hbXHzFUc+GuuZjDyMCJrIY10b+Q1H6NaE5J6gq5Ow2fxZ3/crxyMyZv0i76gFBaIvrsHqCW/MgEfRgNDIf6bAVXSh4/zsh/ill4B3+zh/STvd6yEuV9OiDYqbqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB7569.namprd11.prod.outlook.com
 (2603:10b6:510:273::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Fri, 16 Jan
 2026 04:34:34 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 04:34:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Thread-Topic: [PATCH v3 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Thread-Index: AQHchfSWxk5bKWio9EWoyUCQeTc5aLVUNpLQ
Date: Fri, 16 Jan 2026 04:34:34 +0000
Message-ID: <DM3PPF208195D8D5E2CD14F841E8C95509EE38DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
 <20260115075101.2214842-9-mika.kahola@intel.com>
In-Reply-To: <20260115075101.2214842-9-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB7569:EE_
x-ms-office365-filtering-correlation-id: 423e5310-38a8-4d8f-c96e-08de54b88ca3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?wIbZl42DMi5V2KowZyR2iFN04dSFJMrLDl28+Gm/ARXeQxEWKYkaaGSyuMj6?=
 =?us-ascii?Q?9BX4n/B6zngN5a3zxOQqEFLWaSvALKkESIO33uB2jzLpIQMZAqRn68ZHU4RA?=
 =?us-ascii?Q?hRgcMbiYUggzVDv3Z36c1lPIcojr0HmM4tspgIeL6WP2cKzxgeW4m3/Cw1KF?=
 =?us-ascii?Q?bBJldRnXXR8eYgRmhDw6N+kUjYZuIdNsv4IvlLIwj9mpKD3YMKP4jj/vHsnd?=
 =?us-ascii?Q?vtdZi3V1SKnljm3pR0M52S0Psf9XjddTxfuEPpbHUoap9npEpo2L7NYaxwi5?=
 =?us-ascii?Q?qgbSZkcAPHJqzyeIgK0rqHxRPDnbSIwVzhjPBMQg0bw2abGMKwaGSbsM03WO?=
 =?us-ascii?Q?/bgJwT19q3X1xng4PGRVE0BkBQd22PQUZED6O/vg1bi9fMP6dQcFjBXbwbIs?=
 =?us-ascii?Q?tBJbeYjcr1LZGDB5MqX4t3jL4DdlPSTUF9CSxMxp7u3NP2KIfgiVW7BiJ16g?=
 =?us-ascii?Q?y4I9sIhRCO1ClOm3rETjisUVJYE7vh99hBSF1+NArXFzSqnpuKNp5VDTEFF7?=
 =?us-ascii?Q?raEvDabIqZqBBCw/cOY2/ep7mZji4bxOPHntU5/ZEUEutZ2lFO/SYBsQRykJ?=
 =?us-ascii?Q?gnNkMn1l8rlrU13mtUl1QSezV+nsv6ng97fGjLH4wmcTUAD46J65BiLYcqAq?=
 =?us-ascii?Q?ewqIuzy/XuDwkgU/BWaa3nt7qkYIiNY0kgw9Xmi0RYE7I1bygQw74mKSqpCR?=
 =?us-ascii?Q?13bhgpNa5pNwu9Hga1aTvZZ88lQCQWiX/QyL0RrqFPK7P++/+KJeQhyMQMNX?=
 =?us-ascii?Q?smzZEYEGNXRdgfu1bm/UmnPZlH+eSCiJZwMk08AgmkJv/UYWB9BwjIzeqfGK?=
 =?us-ascii?Q?ESXtGP2x+E+/dzrEaXsRHGkKrnl3dD+At2ikTZtVDvarM2G5v+fMCrsRZNIR?=
 =?us-ascii?Q?726Fe3fgfO2cQAa2FJFXFJu3jwSC9zfew6jkMFYhcJVIEXvRkaAfECg6coXd?=
 =?us-ascii?Q?hFNNrZ9RHphkiemQDBYsILdyTBtUrD/RtHQ/AdRkMYPWnPRT9WPXcHrPI5ko?=
 =?us-ascii?Q?3hhamF1FZ8vEz4VUe+VhwiX61qLl2bjE72umQ0ByR0/rKuY7tSS5kXxc3QfP?=
 =?us-ascii?Q?kdzsd/ctECpYVNFRThZFITi2iKTQ/0liAyTRS72QSgIG7negNRznrMUmOERw?=
 =?us-ascii?Q?1l72xttCZCVJ1QMm72ARhUwucnLR7t+FEIfu3bgTb7RnX2Gzt42Qmr1evlDa?=
 =?us-ascii?Q?6OAc7pUznQaWkQbhPid7hQSm0KODRrnQR1PTmyJCdweQ/wS3eeXyqvUT2Ikd?=
 =?us-ascii?Q?JIbv4jXF/p2+wAzhyu6pu/e/ojkJolOLKQ/PO7OOHbOhtlKbaRfo1YnAjlmA?=
 =?us-ascii?Q?Gzmuq+VlzcvXzQtnzUlO6Ad1USUDPpis/cTDrjpk6zuYMJtJx0+H6isIERvp?=
 =?us-ascii?Q?RLODUex2Y1kKpmTjRAF0tPe8wIcRJ6fHHdvQ/I8bIUu1EJCze7nDiOqb+Kbo?=
 =?us-ascii?Q?cLaScZTVKuQV1KA9bquSYSDfdQryFgL5IQsA/4s7BTfGVhhRaH3gOLHR5buj?=
 =?us-ascii?Q?Ks1XXBkQ56mU+Dy+y9BAt0OyH7SSrEVUTR/KSpMtySJh75vY9puflvguBebQ?=
 =?us-ascii?Q?2EA/Znxpjgpfz4cmtoy54bBwOa5fM9bn7xmFh7BBsT7cw2H5JtwNUHddeOZG?=
 =?us-ascii?Q?t+S5F9XN9vA3hmZqHyYq92g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EJHUsQtcParp3GLFtWpV6KCSNZ5i4TZJAI1c38pRXjaNw3P+5Y13v0KPDbo1?=
 =?us-ascii?Q?SRhgink76uG3uTZYMm35qq63p37Lvj6S//JtTAJu7vFyd9jwphVREgJZwo3Y?=
 =?us-ascii?Q?z9mMaffB1keVAXMrut+jUsv8wvqpN5O/+yolU9JsXZqeiszAm/zGw3jhzFCI?=
 =?us-ascii?Q?zKjNlvIsyCoERvsCxl9lR5YMd10oSTbGC9Dwjo4Nzns9S5WdtpsJsM7g6Z5V?=
 =?us-ascii?Q?Uz219sqylgfQvkSrHXMmdhNg74s6/QFJR/AVtX3GJBuY2xftTlP4C+xsHBXr?=
 =?us-ascii?Q?JY8Ubx2tz+QfR1IhuAvwiM4UeumLrQ/7TQs4ZCcE23nR0t+6osu6ejN6nTQC?=
 =?us-ascii?Q?y1yTae4PzF36gP0jDm81oTpHLncbAtD/DjNZzEBEdvS32EcicibjLf/UKfY0?=
 =?us-ascii?Q?hl+GIWxOGRXHGExr+maxJS6ddprSbP6WT1vN0+2jcSLxAdtYnKtW7EkqpSAF?=
 =?us-ascii?Q?vr0/dMSSNdRpOVfnRJBKMwndkzPancGqsZWzOdTBDs53HCrDL4IgNHrvhmhH?=
 =?us-ascii?Q?0txlEKFs+xGMRH7Oyncwb2GoxI3UluBpirWHpld0AmbmbJPHzGJL984W5Td6?=
 =?us-ascii?Q?ETgP2rmz9VI96yaC59Uuk8/omAUR7k6kfDy+J4nq0AGRKAuIB1w7fCsKRDFZ?=
 =?us-ascii?Q?BlqLmGVwUJiHx0OuYbkVD/PLBYRNjwpEVJWQFaDv+fBc86vGG8GI4ZfQ05LR?=
 =?us-ascii?Q?GSzJMMxSbH9b4nQjdnRUJPqCPbyJ3SPOAt4a7D0iEFzVuiq8l3txST5JT8Q6?=
 =?us-ascii?Q?o0DaRgfD2Y9907rPRju4watUpNoUZ6uhPi5PtNqqt3EsdqKXdhVuswJwhaYG?=
 =?us-ascii?Q?fS7ssA0qMX+btqacMQHAnSfIxGQDkR6CuD8ACMd+bNOrI1vHcZJcKUYTZAVS?=
 =?us-ascii?Q?qyfBkQ5y/cADHfKLyAYMS+hzHTJPsKSZSfgdw24vOOp2zg+fEa7vM5PMs3mf?=
 =?us-ascii?Q?g9aSPgwiTv3GlhnhHR7KxlQzHtf1WHN7ciNTZit0OwEUqTHsHKF8jnQackPI?=
 =?us-ascii?Q?Xo94uM//05SPy7/swlZlz9FHMjkM4HHASPFCyGSAv8neX7nQTl17VOG6RHVz?=
 =?us-ascii?Q?xjzA4xKnZpVMeCPU4rYAGTRQhW+qGrh7by+KVF8WUHgI5Q7mWInCVDILeycx?=
 =?us-ascii?Q?w8/PFJzPaoSHkKSDVk8QSLZo+GjoXgtf+b3CvmJDHxZ0Rpk7YO0O9xP/NNUt?=
 =?us-ascii?Q?RvWVXTeA5EfeW5k5mrloE8v0UJ21WZk+KnxFb6zCE4r+cr+Z8EHdlvLg3dDA?=
 =?us-ascii?Q?JPSowtHj0jM67nL25+2YGC6alaP3j2XikLK15gW6DeWuYqawPH9kggkmaN17?=
 =?us-ascii?Q?hl9UrGsFXXUAsTTu1KoKZnfNxHNw1GK7EPFbwkhjZ/862sb9G4Zt+8Zt8JG6?=
 =?us-ascii?Q?7rfnjAFILc4nt58sdf9Qh2pwijumnhUei0lMAXsMQBksTPYWiYCHsug4ZLfQ?=
 =?us-ascii?Q?ATEhZsbhV5eHg4cRiFR/Ll80IXRmRbUzjs835SiS9tPupKDsWJKr8xHn00vs?=
 =?us-ascii?Q?vyF8xctQuJNCkILf+8drXaN48skKa0e5LYtIplB3Ffomuff/8P9vV9blu/f9?=
 =?us-ascii?Q?TnmIGf/umKWJj3LyZzsWEKIUcZ4/ln1mHD0zaudHxAy7xeaGORKfzhX6yYtG?=
 =?us-ascii?Q?AWLQESkGXZuKvQghUyQJ6QMECN/IwErS4DKGlV3rybWHesQ9QDj9/XBiv39F?=
 =?us-ascii?Q?1+cT8kPulg+Co40UkdsHtE8iXrxVW8nRBbrJjU7I5oiuBOzZYdpBZREosjjw?=
 =?us-ascii?Q?U1Y15zxFHQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 423e5310-38a8-4d8f-c96e-08de54b88ca3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 04:34:34.3193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m26rCm3UAzu5bCvwETDpJU8kg2ncBtN177xDfE1GozRli9xWbYZdJ3zoUsZ8grboAtkwAGJPqtPh11VyRKbLIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7569
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

> Subject: [PATCH v3 08/15] drm/i915/display: Add helper function for fuzzy
> clock check
>=20
> The hard coded clock rate stored in the PLL state will be removed by a fo=
llow-
> up change. The clock is calculated instead of using clock from the PLL di=
vider
> values. Since this calculated clock may vary due to fixed point rounding =
issues,
> a +-1 kHz variation is allowed with the request clock rate against the
> calculated clock rate.
>=20
> v2:
> - Use the stricter +-1 kHz allowed difference.
> - Derive the clock from PLL dividers in intel_cx0pll_enable().
> - Move corresponding fuzzy check for LT PHY PLLs to this patch.
>=20
> v3: Reword commit message (Suraj)
>     Move clock check to intel_dpll and rename it (Suraj)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 22 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dpll.c    |  5 +++++
>  drivers/gpu/drm/i915/display/intel_dpll.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_lt_phy.c  |  7 ++++++-
>  4 files changed, 30 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8e780480f6c0..26d3d41d41a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -18,6 +18,7 @@
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_dp.h"
> +#include "intel_dpll.h"
>  #include "intel_hdmi.h"
>  #include "intel_lt_phy.h"
>  #include "intel_panel.h"
> @@ -2224,7 +2225,10 @@ static int
> intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
>  	int i;
>=20
>  	for (i =3D 0; tables[i].name; i++) {
> -		if (port_clock =3D=3D tables[i].clock_rate) {
> +		int clock =3D intel_c10pll_calc_port_clock(tables[i].c10);
> +
> +		drm_WARN_ON(display->drm,
> !intel_dpll_clock_matches(clock, tables[i].clock_rate));
> +		if (intel_dpll_clock_matches(port_clock, clock)) {
>  			pll_state->c10 =3D *tables[i].c10;
>  			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
>  			intel_c10pll_update_pll(encoder, pll_state); @@ -
> 2710,6 +2714,7 @@ static const struct intel_cx0pll_params *
> intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct intel_cx0pll_params *tables;
>  	int i;
>=20
> @@ -2717,9 +2722,13 @@ intel_c20_pll_find_table(const struct
> intel_crtc_state *crtc_state,
>  	if (!tables)
>  		return NULL;
>=20
> -	for (i =3D 0; tables[i].name; i++)
> -		if (crtc_state->port_clock =3D=3D tables[i].clock_rate)
> +	for (i =3D 0; tables[i].name; i++) {
> +		int clock =3D intel_c20pll_calc_port_clock(tables[i].c20);
> +
> +		drm_WARN_ON(display->drm,
> !intel_dpll_clock_matches(clock, tables[i].clock_rate));
> +		if (intel_dpll_clock_matches(crtc_state->port_clock, clock))
>  			return &tables[i];
> +	}
>=20
>  	return NULL;
>  }
> @@ -3255,7 +3264,6 @@ static u32 intel_cx0_get_pclk_pll_ack(u8
> lane_mask)  static void intel_cx0pll_enable(struct intel_encoder *encoder=
,
>  				const struct intel_cx0pll_state *pll_state)  {
> -	int port_clock =3D pll_state->use_c10 ? pll_state->c10.clock : pll_stat=
e-
> >c20.clock;
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder); @@ -
> 3263,6 +3271,12 @@ static void intel_cx0pll_enable(struct intel_encoder
> *encoder,
>  	u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
>  	struct ref_tracker *wakeref =3D
> intel_cx0_phy_transaction_begin(encoder);
> +	int port_clock;
> +
> +	if (pll_state->use_c10)
> +		port_clock =3D intel_c10pll_calc_port_clock(&pll_state->c10);
> +	else
> +		port_clock =3D intel_c20pll_calc_port_clock(&pll_state->c20);
>=20
>  	/*
>  	 * Lane reversal is never used in DP-alt mode, in that case the diff --=
git
> a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 1b5b18fa0a36..f55b51d5701e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -2334,3 +2334,8 @@ void assert_pll_disabled(struct intel_display
> *display, enum pipe pipe)  {
>  	assert_pll(display, pipe, false);
>  }
> +
> +bool intel_dpll_clock_matches(int clock1, int clock2) {
> +        return abs(clock1 - clock2) <=3D 1; }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h
> b/drivers/gpu/drm/i915/display/intel_dpll.h
> index 3444a2dd3166..8cd0d17e974e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.h
> @@ -48,5 +48,6 @@ void chv_crtc_clock_get(struct intel_crtc_state
> *crtc_state);
>=20
>  void assert_pll_enabled(struct intel_display *display, enum pipe pipe); =
 void
> assert_pll_disabled(struct intel_display *display, enum pipe pipe);
> +bool intel_dpll_clock_matches(int clock1, int clock2);
>=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index a86ae6139ff0..2790caba5457 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -14,6 +14,7 @@
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_hdmi.h"
>  #include "intel_lt_phy.h"
> @@ -1796,6 +1797,7 @@ int
>  intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct intel_lt_phy_pll_params *tables;
>  	int i;
>=20
> @@ -1804,7 +1806,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_stat=
e
> *crtc_state,
>  		return -EINVAL;
>=20
>  	for (i =3D 0; tables[i].name; i++) {
> -		if (crtc_state->port_clock =3D=3D tables[i].clock_rate) {
> +		int clock =3D intel_lt_phy_calc_port_clock(display,
> tables[i].state);
> +
> +		drm_WARN_ON(display->drm,
> !intel_dpll_clock_matches(clock, tables[i].clock_rate));
> +		if (intel_dpll_clock_matches(crtc_state->port_clock, clock)) {
>  			crtc_state->dpll_hw_state.ltpll =3D *tables[i].state;
>  			if (intel_crtc_has_dp_encoder(crtc_state)) {
>  				if (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_EDP))
> --
> 2.43.0

