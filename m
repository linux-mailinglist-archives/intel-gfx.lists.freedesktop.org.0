Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8578FCF6BAF
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F36110E47E;
	Tue,  6 Jan 2026 05:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dnJU3h0R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1196110E47B;
 Tue,  6 Jan 2026 05:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767676050; x=1799212050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4dixeMlf/+bQadNFDrxVTZQklB9cNYs6UIWQNW+PrTo=;
 b=dnJU3h0RkYvnsrIrDuHh9LXO2TdQO/hQjC2pZQqR6Jx8f2SRaW6dOK45
 TCJlgHhIaOiO9A6ZjeOzxyLNSekYR5FZFdlXfvZfey2MbjQkE3VqOPG7O
 Rl2VgV1FgClq1RmMH/fS499pVK1Rkirxp0l2QDXqikRJieZu7n/o1FHu5
 x++Xk9oYLPeKGw2nkHqEFwXJbykd1Aqbr1B2K5UjVHMgE7hEIF0atGZw2
 ai6ew/57ZxiQgDMvFYpKnVPwaZfa6NSdaekXXQLSlZu9XbKxDHqBEMnb+
 aDi+1URtT9sqDLrF14er0+40Kqi8w/BnD35GrFz4BcX8LMXof+qGAn1uW w==;
X-CSE-ConnectionGUID: FIhJGuG2SFqcHfSpHIHR9Q==
X-CSE-MsgGUID: Lx8QLilfQEqvHDyihU/OjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68975687"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68975687"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:07:29 -0800
X-CSE-ConnectionGUID: Rvih/dZQTEewRGAKw/fIRQ==
X-CSE-MsgGUID: ayHeqRYuQ06qFZgLVfn5xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207614328"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:07:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:07:28 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:07:28 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:07:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rS+YnJURc6tmI3VN3M/eoCAxtKSmfx7OHI/C687MLz53e8vEZ2ye6M3x1hSiBG32o+sbUodp53hurUWJxBocKgjEMR/0+oXNxZ55EeB1R2gPLCj1PEgbObT/gGYbcdN1pYaQIScPGh461cE7BdYdHZuXZGQJJqaT0vxKu6ZARAXqy93ZM9gfneVzr4OiBDJxleezmw7vRtvMAaeCdMcbQyXVCMtg2zigKWH6ybUi7RDlZPeeOIJOlgvVckX/+v0tQTBEHrCl1TIDylDfqk5Rtyjr0t2339CNPzsIroMmEW/7in/ureMy/seZ6nl2IJ6SSoY/9JHwmOFQ6u0Gd6okIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WHRxIRTPt02NUmAan38wbCH97XIWx9iXQVhsC+HGlmw=;
 b=F2KtNXZbDfniERQYbKJMTtpcLKx1fI8npHG2WXu1Eu0iqTZm/ke8XqVeDgrf/BiOOL8L6WgFmZvrCiKudmRwpWBmv1dry6UIDeym+G74x58lrxGOBUJArBWIcrJwwxG6oSjEjZXKtNTq21xkpuCXFcp6FBEq2Ta8n8KamP56/+GlwCdmWB+tBx+y1gqckf5vNLn5kCUx1Z1V3/W9snh4bnuS4c7ejlLk5zuEOvBltZzThNGClsWLLdBN1ULgztRbzR7AmNtcfxtqWG2cysjXEGCq7xX3pSwfrEt8bwbKUD5fo23KYnnipK0Dc6AJhy4pH/koiOxXO1vmX90K3VqWeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA3PR11MB8967.namprd11.prod.outlook.com (2603:10b6:208:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:07:25 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:07:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy pll
 dividers
Thread-Topic: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy
 pll dividers
Thread-Index: AQHcb2npM9retNVBAEqB1CUm8Ov/Q7VEtTvw
Date: Tue, 6 Jan 2026 05:07:25 +0000
Message-ID: <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-13-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-13-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA3PR11MB8967:EE_
x-ms-office365-filtering-correlation-id: 7de24b28-7650-4f4f-2752-08de4ce17ba0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SWkMKpbHCt2fHH4XTt2LbThfl87w61MJpVcaZGCOsNDHpgpRFO6j5AInY5Ri?=
 =?us-ascii?Q?yM/r+RAF3ht4cXrfI8hVRmRl5EM3Cka7h310q9OlpAo0OvPshrd7XmIFCAO/?=
 =?us-ascii?Q?wEhAKgJU0mLVu/NM44FVjdcamMWWR1Yj54yNgHcVgVZ8y2j3fAKG39ZztU6I?=
 =?us-ascii?Q?O3h8+BxBZNIZp7mpJ8CxS1UPzh0+dgMS9elUkRhVFSMSJOyYvhvd4VHLy3QM?=
 =?us-ascii?Q?xnfjgGYyRGCiC/l3ZV9nKcC7yguNmEUuxt/KkKhndR9EdcqnaYFV1F4sR54X?=
 =?us-ascii?Q?iC7TQM3CpuyLoxNLgbdhye2/gP9h5gLHTuLI4oX0LJisF0v8cn1qBqPZI2hk?=
 =?us-ascii?Q?EwjhDufM7TMzwkxN2PSFLDCOT7cPnqd3pQxxU/ZWJ5J/O/cJYhmTW07dEg4Z?=
 =?us-ascii?Q?VErINISGIuNftl1nhgi0opqFff/IAiPHgDHvU4vUfXVaB5Qtz3yKJ1bo3uCz?=
 =?us-ascii?Q?MY/hr4XAEHqUNX3miax3PclGh1+0KMDC5lKAN61ffCuuvjDTG58aOIOPYzxK?=
 =?us-ascii?Q?hTkNzVfF+dw0VUqlwLY665+A1H0/uQNJp9XYdc9la4/BtZyti3VIFPmE1BZQ?=
 =?us-ascii?Q?aHROwi9MQ558HUkYfp3oTurh2E0e4X1T1uZqmQedQg5A6l2HJCugEWXF+/LS?=
 =?us-ascii?Q?T+3Qj1w6M2NpcKYR1FOK7ols09FjuqGpGM/xh+qSehB41pq85VCSfR0dLp35?=
 =?us-ascii?Q?gJaKw/MGdcqGz+7/ShLOIuW2zHj0GQf/u2n1dR2hUa2Jm88AhpvkwJI2EtT1?=
 =?us-ascii?Q?dtS5AKJlKOWXIQI/gW6PO/rKhsvWKntP1KHWCaVs//DD3ZE9mFeYMyssk22A?=
 =?us-ascii?Q?5d48pJ6GTLkKwUvV2xochik0enFcgQHgZj8ZoBz5pXNXIUed8EnUPU3XLuEX?=
 =?us-ascii?Q?B9KM3e2wEbLq1zkxIe1x5DSCFVLzE4LOHQGCqvRa2nNG94I/XY1vtF4Hyhma?=
 =?us-ascii?Q?ncKhpx+/VSuLYnlNX77iPtTkTiTimP4rWns/EQhctgOhbcUx/lz/tvDAYwCd?=
 =?us-ascii?Q?EQu9r+pukq0kUklgn/fyM5fTv8/S7mOuvgoKOI0amjNQh7dn/jP42ffQC5Q/?=
 =?us-ascii?Q?MrXJGR1BNBhHiPlE/zxEkHBFbAeLN3FH7ccJhjdQr3u3vNXelU7EL1Pa5Ezb?=
 =?us-ascii?Q?NN1OB8v82mYLRjaQ5NWO8K495NLNKe5qRWLLJgP6L939gYvgE2rL4ejaNAvd?=
 =?us-ascii?Q?0IUKVqlbZe3HP48cu/CZDl5lNiiR8unSwVEfHUt0/QsnP++j4FC5wQkBNZ2Q?=
 =?us-ascii?Q?bj/rwRD7Rsx1bgwj7qWkHecDyWxBBcYQutnHmDD7mAV1nufX7oVlQ4KpjFGE?=
 =?us-ascii?Q?inP6MZvNnGAIFIfLaEOqj/QErRhtTghk7F17aBp8cwZFGIZio3g0akH+rVUH?=
 =?us-ascii?Q?zRds3ncfZfRMNGKfzDKyPfEykZHk32l8H+XCbwokLs1Gz0zbuvqWlvS6Oyns?=
 =?us-ascii?Q?XXcHNHS548KXI+COwKYHCke8r34xROOrjQRo0dl7hYNsMI+p7F4AHom1Xmle?=
 =?us-ascii?Q?Bwm9QqvrXsb2+yuT33RqOQvvjPP1jFVijFP5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GH+MwFjPO5vNiUsG5xGjPVZo5y22llHD8GssbrOS0NKE2xRvCIHj1uazf/5L?=
 =?us-ascii?Q?DAUem2W02moZrbphCLQKXQMfsI7/LXAAwvh4Nr0OPccgNIakaWqK1IhRbctW?=
 =?us-ascii?Q?+tvjc7I1rtRwNlRGMdoMhPTxBj6D55ysMAQlUL0iswuJvWExvBaF4MEsAuWM?=
 =?us-ascii?Q?cXkBdM5na8N69tbqWYUkRPDvJwXGS+0x2YbJmEclL4igmZT2fT3wL+wIS/Kl?=
 =?us-ascii?Q?bnabzpu4aW2MQnfMjJl8/6NNiwGpgM7uNcib/U5rpMTAgrtX5O83caoSKJLO?=
 =?us-ascii?Q?XziGEz7qmw3Mydr3YvFnfrt4mcX35U/+wFKboJ6zUAKpzzr8sD5eSTtonSII?=
 =?us-ascii?Q?ZzViOORXpNuVvi1TAcCTyGKIoLY0xMV83+jo0f20CkK4jiBdZUpw3Uq5grLG?=
 =?us-ascii?Q?4dCh6Pzfbx1XEzo/xGrZYEX91m8JT1ypaROMmrG1sJEZtXsFI+EWAKpdxs7K?=
 =?us-ascii?Q?0gEf/R4pZlo5L0VL1nSL3PjezrbocX4TA7AjsV9YIF/e63T8i1Ex8Ki1Ykoe?=
 =?us-ascii?Q?7D1xaBy+2FSNhAt4A9FD9ojPqrPUXvIpn9Ym1UMUKrcDbPSJLqE9Qn6+DNF3?=
 =?us-ascii?Q?tFsen46fCsfnv703DoeFAgdr5++LGzl2F1YQIj47PXXedNJcn0UXHIUNnH7T?=
 =?us-ascii?Q?A/BqzOcHKrWUA+JISe9XjuHq+ZglM9GjMlpPES4SE1bAr18pvOtv7OcKhZet?=
 =?us-ascii?Q?TGb7R9aHfrDDNGTcntSng7PR4Ea30oz2Qgp1QsPonYaaa+cGSiUOsbI3BrzZ?=
 =?us-ascii?Q?9nRYG2CknCv4tJk4dnckXynYwCFn4aGqbB1c8+fkFPLJ3t9gegC/950qMRHw?=
 =?us-ascii?Q?AjRigZmI3iObGY02iHDczobKs+jrazpf2/qmplbw7ONrZq3XmEaeYCJ0x0Xi?=
 =?us-ascii?Q?vMKAGQSJQmeZwSL2kDCdWodUh0c/OAHdVLInKVqwwTUv6nGd5GFClrDa5Jd7?=
 =?us-ascii?Q?9ZRH10K9zurRnQ/kEX4QXDnw5lURGQ6Ex/oQjalRukBnjtzr8UNc/u9Lvmux?=
 =?us-ascii?Q?NcnlpZVFLqX8gQ69TvV2eczDqbo4sCEIEF3kdiF3Ph3orXKWfduMUapwCvbC?=
 =?us-ascii?Q?bn+k8+JZHge/MWpTDrZdbSlgbygUl2crOzKHRrwJUhvosKJ+Kzb7tCIKARDn?=
 =?us-ascii?Q?tUm/+gZHvpDuO1c8VMsEpccV55ii3ncvEQ5P1/lMZhDWiKJDvQVtP4O5dTna?=
 =?us-ascii?Q?nC4LuZD6W3NEQaAgHm7kMzCPQyDI7H/tCwFp8UrymJzaEUJBzudrh0SSRX8S?=
 =?us-ascii?Q?Hb7a/ivK2kQqerz3VtzxNvKmA2hmKsVprJmFffRpPVkfZCjylT0XdzcvmYvq?=
 =?us-ascii?Q?lVubLr/OGiHImN0Pgw3buyiTf8qTtkvlHnagI/WfqqU+Vx477w02frTEE9NL?=
 =?us-ascii?Q?g4JuwggYNsxuMEzJ0IuP2Q195DlaWKPtNHwZTGNC56/SD8gR+NQ2HRem64jq?=
 =?us-ascii?Q?ifJ2QbJNWDAEAjUz5Gu5JGSeeK9oXjeNcTrKTfE9v0C2bJsA1fCxDOTjusMu?=
 =?us-ascii?Q?KBxsv3cqYC4NN+fySrQY92WyWqGUgFOBi9/hQrM1Ui7yJQc8TwcQY+X7Tiqa?=
 =?us-ascii?Q?lkCddUKVWgBeCMk1DRF67gb4lYtJmzmVLc2vmoHsyb9qZCEO3/L/xLqT1ZDz?=
 =?us-ascii?Q?YI+FZNx1pxmsyt6BWidk9nrAJogtolp93SZC0kB8Lb1+e6UMi6xsqkj/FKOb?=
 =?us-ascii?Q?uZUbS1k4Ho8dmTuxMDSQ2WekKs7t4qqZiHF1dtXyzKpmkZRn7AkKaFDd+b2r?=
 =?us-ascii?Q?ZsKswtl+5g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7de24b28-7650-4f4f-2752-08de4ce17ba0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:07:25.8141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3tJenxQJT/ZZyHiiB3u85CkgCHO8hyVHJiPsV3PqW146d+US8x4AMUB3jOUDHRwvbIDPM7u2nhLGm/A6cDHevQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8967
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Wednesday, December 17, 2025 8:50 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>
> Subject: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy pl=
l
> dividers
>=20
> Add verification for lt phy pll dividers during boot. The port clock is c=
alculated
> from pll dividers and compared against the requested port clock value. If=
 there
> are a difference exceeding +-1 kHz an
> drm_warn() is thrown out to indicate possible pll divider mismatch.
>=20
> v2:
> - Move the LT_PHY_PLL_PARAMS -> LT_PHY_PLL_DP/HDMI_PARAMS change
>   earlier.
> - Use tables[i].name !=3D NULL as a terminating condition.
> - Use state vs. params term consistently in intel_c10pll_verify_clock()
>   and intel_c20pll_verify_clock().
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 63 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  1 +
>  3 files changed, 66 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 7127bc2a0898..f35a9252f4e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -38,6 +38,7 @@
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_hti.h"
> +#include "intel_lt_phy.h"
>  #include "intel_mg_phy_regs.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_step.h"
> @@ -4639,6 +4640,7 @@ void intel_dpll_init(struct intel_display *display)
>  	 * debug option.
>  	 */
>  	intel_cx0pll_verify_plls(display);
> +	intel_lt_phy_verify_plls(display);
>  }
>=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index e33f6f48a6ce..13acfc7c0469 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2343,3 +2343,66 @@ void intel_xe3plpd_pll_disable(struct
> intel_encoder *encoder)
>  		intel_lt_phy_pll_disable(encoder);
>=20
>  }
> +
> +static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
> +					  int precomputed_clock,
> +					  const char *pll_state_name,
> +					  const struct intel_lt_phy_pll_state
> *pll_state,
> +					  bool is_precomputed_state)
> +{
> +	struct drm_printer p;
> +	int clock;
> +
> +	clock =3D intel_lt_phy_calc_port_clock(display, pll_state);
> +
> +	if (intel_cx0pll_clock_matches(clock, precomputed_clock))
> +		return;
> +
> +	drm_warn(display->drm,
> +		 "PLL state %s (%s): clock difference too high: computed %d,
> pre-computed %d\n",
> +		 pll_state_name,
> +		 is_precomputed_state ? "precomputed" : "computed",
> +		 clock, precomputed_clock);
> +
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
> +	p =3D drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> +
> +	drm_printf(&p, "PLL state %s (%s):\n",
> +		   pll_state_name,
> +		   is_precomputed_state ? "precomputed" : "computed");
> +	intel_lt_phy_dump_hw_state(display, pll_state); }
> +
> +static void intel_lt_phy_pll_verify_params(struct intel_display *display=
,
> +					   const struct
> intel_lt_phy_pll_params *pll_params) {
> +	struct intel_lt_phy_pll_state pll_state;
> +
> +	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate,
> +pll_params->name, pll_params->state, true);
> +
> +	if (!pll_params->is_hdmi)
> +		return;
> +
> +	if (intel_lt_phy_calculate_hdmi_state(&pll_state, pll_params-
> >clock_rate) !=3D 0)
> +		return;
> +
> +	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate,
> +pll_params->name, &pll_state, false); }
> +
> +static void intel_lt_phy_pll_verify_tables(struct intel_display *display=
,
> +					   const struct
> intel_lt_phy_pll_params *tables) {
> +	int i;
> +
> +	for (i =3D 0; tables[i].name; i++)
> +		intel_lt_phy_pll_verify_params(display, &tables[i]); }
> +
> +void intel_lt_phy_verify_plls(struct intel_display *display) {
> +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables);
> +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables);
> +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_hdmi_tables); }

Same thing as the previous patch this is not needed.
Moreover we do not go through any algorithm for edp and dp tables for LT PH=
Y hence the
Rate always matches. This patch should be dropped.

Regards,
Suraj Kandpal

> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index c4999a55473e..56c5a875d93b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -41,5 +41,6 @@ intel_lt_phy_calculate_hdmi_state(struct
> intel_lt_phy_pll_state *lt_state,  void intel_xe3plpd_pll_enable(struct
> intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state);  void
> intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
> +void intel_lt_phy_verify_plls(struct intel_display *display);
>=20
>  #endif /* __INTEL_LT_PHY_H__ */
> --
> 2.34.1

