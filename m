Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF039BB130
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 11:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3718210E3CF;
	Mon,  4 Nov 2024 10:33:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKIzs9S7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B25C10E3C8;
 Mon,  4 Nov 2024 10:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730716411; x=1762252411;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yae2NAp9LyMIdsxvZ73Qpdh71BZZrb+xUeVK9fjakj8=;
 b=jKIzs9S7DSsiw04xIYoNKGm2OK5oomBOHXfFWgxEA30GwVw+ap+utMwo
 tncWCh0lOUCqFS5NdRPRbUdMb5vB0lP7iesn52APJz+vNnIk53AIcVqZB
 Npon18UawiJMvn9ujVZcWxkqSnr/eKkUpr5RGe+CruczWYDB+mzxvmpw5
 VjGQufPpPmpH3xm9TkdeF0BFE0cuYPBEPc9YTof4T34YpzdH5c8CpwFRT
 xSgr2M3a/n90nRrUY+VGxlBsr0KQDyI78tkjQOnT7QyPb540AcZW1Ae+A
 MFQa6wf3TXRjdAOenAfc0KPnM0++vQTI2TxigVzfXky6mQUUJGEgBx+98 Q==;
X-CSE-ConnectionGUID: 7Sv0IrI4RtqARRnAl5xvTQ==
X-CSE-MsgGUID: bQcrPIqtS8enZmwkmB7wcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41511690"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41511690"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:33:31 -0800
X-CSE-ConnectionGUID: 1REjIuLHRO+zy9MiVto0mA==
X-CSE-MsgGUID: m1ZFyCUMRgm8VxPGkaOWJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="88188450"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:33:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:33:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:33:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:33:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KOjAGOcbyG3fKMjtSTeQbcgsaFCDAVj4bYSXwytBe8uFxIz5M5ljrbodJAYx5YK8gXhTP+ml7XB835w0rivv1CcVGgmCxT/QompXPwd77CIW7mmF4Kk8jLFd0pfcdmEKPXAh17Hl58TDk9CrBUdyYaRu3+4jycp9luNG2X20g7xd3HEv7SHNXNaUQtJkBdyfZn9uOphLmmYGw5Oplj4aW8jTWx3zdGqCYkTXpzfvI8klWOPTUY/fRQKOh7MiQR4/syTSMwrZ7W0F3rfwL3bHoPFx0oM/D1lJh/dfFeGeCoaYMZSXIVlaP9x602El4Anv3YmosZW5yDxz5QF2lLVl8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtYsDIPiVILpRJ4JDID+pPwAEdcqLqTU12uHirESJ7w=;
 b=pT5tbvItjqyI5e0snldUjxojG9PBM8dLFJJVynMTqtKbI9N2oiwdNoYpDDGAVxPbo7BfUFBcHSMVUCe/kMTvq2zgHxlWuUW9lr2v7+pyFuw8bhdDj7Y96sfj5iQbfuJGqv5RkNeL9qM+JFS6o6W8h7X+jgrbFNTsbdpaSHYs7h9RL0fnVAXizbDYPP1mlqvN5pOoRysD88QOriN0ZueMldvXJ8B6jV4x33TUbVYBgqrx15hZ1k/3rrxwlvygfFG9VPLly04CNwLqnBqlTRDU3Dl2HWKkosQX4K0naPYdBWM94Q7HRXHe1gG28/9sJkwCMzf2e1fiZ93fAxPBKxMHUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6576.namprd11.prod.outlook.com (2603:10b6:a03:478::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.28; Mon, 4 Nov
 2024 10:33:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:33:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/7] drm/i915/display: Prepare for dsc 3 stream splitter
Thread-Topic: [PATCH 2/7] drm/i915/display: Prepare for dsc 3 stream splitter
Thread-Index: AQHbKoFiKujs9gxCZEqazRj5R+ci6rKm9MdQ
Date: Mon, 4 Nov 2024 10:33:26 +0000
Message-ID: <SN7PR11MB67506D9B01D9D2548F8CC751E3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
 <20241030041036.1238006-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241030041036.1238006-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6576:EE_
x-ms-office365-filtering-correlation-id: edea733e-76d3-494e-ae24-08dcfcbc1e1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?eRin+J5sV+TmnUNrwUhTSVVptMeGl19GbPuKRYQgOCQhzJ/3J8UT0Ctsh/wT?=
 =?us-ascii?Q?ZY3bKmxgYChA6GTvslVQ/oCr+qv78ETW5WeNUTdLkPyGQhbzS8SwTmFh6lJm?=
 =?us-ascii?Q?MD7zLYfppbj+9GdCvkYNNTThkSDJuUHoLyC0ICYL8jZcwEDxzmdAut//vZud?=
 =?us-ascii?Q?xuzI7Lqt9P3Rmb+j/eP+nBF+51EmWdAE6Oipiyfjn1ixKvALUsvlKrtMmKhh?=
 =?us-ascii?Q?I7QvCw/j5KB4QrAQVN+Xm0EbfuH2gqhKGh576V35IQo11a9dOY9Ba//ba+nM?=
 =?us-ascii?Q?qlixVK9Uitq9cj2xzyWEcI82La4VTQBgAbWkwRkLXx4sa4ixcBIwrNnIe6q8?=
 =?us-ascii?Q?VoG5pcAlMYVQ1OVG+L7MWMUQAhUkctl/tia2aX83eTwYPMDFmKlvAGvw3ZsH?=
 =?us-ascii?Q?IlMTSCAWGLtXjk8mS07zbrfKPtVCjlL0TUFzl0DKyyZ8JCnkw0/FoKxGFmKU?=
 =?us-ascii?Q?PAwGhc1l63rcCSw++igpy6afKKZqwSdyKhHEtHLJK05MUip75uxZHrimII6x?=
 =?us-ascii?Q?SlRvgrwbXaRp/cHVC9NPhs5HoJySTQXA1gNNSO5EA0AzN8O8bqeFKgJcWRFW?=
 =?us-ascii?Q?+SrmdE7Zx9+WjP61aBnMtdmgIlhoTNUtHVndW2NJJhelvjFomVWwEbvNKO62?=
 =?us-ascii?Q?MDrjok6UhJ+inaKFngw0n5lcHIyXA/YypaAs11qOBuy0OPiOdcw7LTedt53E?=
 =?us-ascii?Q?fcI6r761MBSrMOjJ3vyoGOoENMI7LrfAElay2mznLdypynBo8hbNFq6Kqkwx?=
 =?us-ascii?Q?KHTq9YitkJ4r0+w7531vTaAmWeVEl7vA9nly/ctaHbT5xbAClqtlLiHgNIE+?=
 =?us-ascii?Q?WGHeVSgg7uTRHgfFotItcPhfEhOeS1tjUUXn224UcdRXL26MExibLp0gaWuo?=
 =?us-ascii?Q?pRcOQvG0KrotG6EwBOvQqeLIB0qhCiwY0z4xhhBjdyWqB7dPQTZWF+JBH8NR?=
 =?us-ascii?Q?xtGe+rEVYpNLrNiTyE/n5Q1wMPXknaFftg08xu4Sr3S36NgTRjpsleNUvDj7?=
 =?us-ascii?Q?bvhKNt4ZgPCf0xLbXLNKcBIs8AqHsajc9C1cpd+MPu3TFHeEC0G4svt+x4/F?=
 =?us-ascii?Q?Tx7ViiXbUAdfM/XOZKUoZGzPpiWI50EunOCafWTp2f32X1FsTr/cE8uieQp4?=
 =?us-ascii?Q?rl/8/WnzcO/LnEi+flkEi3Gd+BAcaqpw1IJpGU1Aa/U/QB1vGPU1W4HQ/P6f?=
 =?us-ascii?Q?T93mbEg/p511CpGxrEMmmCgTqAR4ANGPhlmyWZHsH8dSp4xI1Qo1HZmqQGzt?=
 =?us-ascii?Q?Hrp40OuRnplxtnMyDTOdIWen/pAcRJObiryB3gHRPyWvP/TGXrmanPvVhwJK?=
 =?us-ascii?Q?lILXI/8ggR9gjAYWEJvqNoWhk7WLHHVgBdbcS2jJaAA+R0RQ+KNzPDi4iEzA?=
 =?us-ascii?Q?eWSgt6A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F5gFz6grCcuJnQtY6mDC9UgbD+oI9kP8Ye3GYdu2PSHqiNsBopNnBvNH5Wky?=
 =?us-ascii?Q?Tkrnnyen3RAyTS3krCqxJj1M40+ISEtBWx3hAth5Cc6AUDS1o5+atXxFvHGy?=
 =?us-ascii?Q?AUsF/VjG5LgLqwVlINTtX++frTZpoHzdqma7zLtwWoC4XE/b64TyeqKViksu?=
 =?us-ascii?Q?NEA2ncR8NmXfpLDxNPVfuG65moV+7RaFaS2EWLsjjxLxF4jhVxpsyXnCrGyB?=
 =?us-ascii?Q?9vphMkyA8PtrznFe9VbboiRfvIjj2ep9bdo4CxXg4o1FczA/xm9tSQhhy5QG?=
 =?us-ascii?Q?LvYAlg4msg7X4yxnY059/A6o+cFO3n+q2AuDUsNGhyGy5UN5/LH4pvYfCVVI?=
 =?us-ascii?Q?jNugacNrJfqNiMVd7WqU0va+tPlC2xKCF4OhYNqNIxzutFfD/LFUJTp3Z5rd?=
 =?us-ascii?Q?dIc9jQXOlyVU8ZlB14uDPPt+S+uDfLWwVzLBnvwnJXTk/oRNJlSIgrO0UFjy?=
 =?us-ascii?Q?Xph8rFfXheRP6bVRZpDtLZwToXf1IrARAnUnki9K0PpqgwZ9fJuKg7BrdBRt?=
 =?us-ascii?Q?uk9NBex6j/P6/tlsONjOxx1MTRvPpwJK+S1IrLT6rTNz72AaBGJzoCcXB4cU?=
 =?us-ascii?Q?jhKldC7kx3moAtSMOvOkWmhV0p1oZl5L0qczK0M7cp2AGSwexfjn7egUt5LH?=
 =?us-ascii?Q?L93lM8QQFaZb6I22jirNCmWc7f0ttzKHKx1xA9zVLkPJntqb/pH+C5w5mLGw?=
 =?us-ascii?Q?n05qe09FTe18oNRKvkIvC78Zpmhh+0g4lCzEiQtK0wqisCg58PCvRaj2FdUe?=
 =?us-ascii?Q?4szP4nr7Ljv0E2EoPA3KubFgot7qfJ+sFNYSAXBC0DZ78IzJU1/6v+PtxQuX?=
 =?us-ascii?Q?Hjpae6HVN/66vdcWvZqMIEyg3S+7gdDl7wBQw+B7UI3EBXl7KNboax+R7krv?=
 =?us-ascii?Q?WYWus2CWVcTPnaV2xaBoNmKDDLDA3iVRJ/ILR89POaNNQVMDyFdvz/K/g5JG?=
 =?us-ascii?Q?a0Z8gCP/ILaLXUaUHN3TgFIIGYMPS5SIyHIRf+fykR3D5HbNEHxd+TPFhWsL?=
 =?us-ascii?Q?H/H5adNZKou9Ro4wGUxzBlr5vZHZ88fqbZRuc7D9nMlcqPv5Xcaajre6ZNF/?=
 =?us-ascii?Q?Pe59hqFSw5VBVf3pDp6t4AD1JiwQCNLh30kCMYEVwaD5i5tpTZ2Fu91xafZ7?=
 =?us-ascii?Q?PFPTv/4UtrVDiQzuOgBpaEpg4/QGcNUOJ5qJbzeuVDYuD8K67m6v9NPiqiQk?=
 =?us-ascii?Q?zGfCyPIfHPthdg4Rv6DGHNjmeHRg+IIv1N/oqv/Xva+2c/Bh6mKFtdat0V4F?=
 =?us-ascii?Q?JiUWq9rysUPg8TbuKhW8QoaERAWXLxf03ZLj7P55t6mKY5y480J1uqWcP/Dv?=
 =?us-ascii?Q?a34fqy0Y4+tJe/6pZbpJpsCLlRrx5pLlGRz7qUtQot08Zrm3NwybfkZKub5v?=
 =?us-ascii?Q?7t2EyIXZjc/MHvQW4s+ezPx400mUye7NRRqwYRHomtjmBf8ISuaLCnCXqK6+?=
 =?us-ascii?Q?CrAjFrKaApOlLkCv84gSDUd73XIQSYUuuBsCiHxbSz9/AOTvzPUwTYtnM7UA?=
 =?us-ascii?Q?uY1PmLoKXq0394wZi9k5FQIW2kguDa0IBbcX6SShXWAa0XCIWyuk6VLBdufg?=
 =?us-ascii?Q?z78AcG4Wi37wUQ7lnlqxwRc7fIWdRiD1nbk8q63K?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edea733e-76d3-494e-ae24-08dcfcbc1e1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:33:26.8761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q9c7OGAuv2nDDJ/9S5I4sF5txUDxZcqBCAGqqQM3zQOclsArOlRcIFhkaI0roEkZK9CGJeu9W7w0bGlljSr+vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6576
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, October 30, 2024 9:41 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>
> Subject: [PATCH 2/7] drm/i915/display: Prepare for dsc 3 stream splitter
>=20
> At the moment dsc_split represents whether the dsc splitter is used or no=
t.
> With 3 DSC engines, the splitter can split into two streams or three stre=
ams.
>=20
> Instead of representing the splitter's state, it is more effective to rep=
resent the
> number of DSC streams per pipe.
>=20
> Replace the `dsc.dsc_split` member with `dsc.num_streams` to indicate the
> number of DSC streams used per pipe. This change will implicitly convey t=
he
> splitter's operation mode.
>=20
> v2: Avoid new enum for dsc split. (Suraj)
> v3:
> -Replace dsc_split with num_stream. (Suraj) -Avoid extra parentheses. (Ja=
ni)
> v4: Set num_streams to 1, if VDSC_JOINER not set while readout.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c             |  4 +++-
>  drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c            |  4 +++-
>  drivers/gpu/drm/i915/display/intel_vdsc.c          | 12 +++++++-----
>  5 files changed, 15 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 115d79c80b9a..b01dfbeb314b 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1596,7 +1596,9 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
>=20
>  	/* FIXME: split only when necessary */
>  	if (crtc_state->dsc.slice_count > 1)
> -		crtc_state->dsc.dsc_split =3D true;
> +		crtc_state->dsc.num_streams =3D 2;
> +	else
> +		crtc_state->dsc.num_streams =3D 1;
>=20
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST; diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..3dfff0a8c386 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>=20
>  	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
> +	PIPE_CONF_CHECK_I(dsc.num_streams);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>=20
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..5611a4dd6a6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>  	/* Display Stream compression state */
>  	struct {
>  		bool compression_enable;
> -		bool dsc_split;
> +		int num_streams;
>  		/* Compressed Bpp in U6.4 format (first 4 bits for fractional
> part) */
>  		u16 compressed_bpp_x16;
>  		u8 slice_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index bd9f37e1a13f..dbb1d75c0576 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2410,7 +2410,9 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	 * then we need to use 2 VDSC instances.
>  	 */
>  	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
> -		pipe_config->dsc.dsc_split =3D true;
> +		pipe_config->dsc.num_streams =3D 2;
> +	else
> +		pipe_config->dsc.num_streams =3D 1;
>=20
>  	ret =3D intel_dp_dsc_compute_params(connector, pipe_config);
>  	if (ret < 0) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 40525f5c4c42..168f39499c66 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -379,7 +379,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum
> transcoder cpu_transcoder)
>=20
>  static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state
> *crtc_state)  {
> -	return crtc_state->dsc.dsc_split ? 2 : 1;
> +	return crtc_state->dsc.num_streams;
>  }
>=20
>  int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state
> *crtc_state) @@ -976,8 +976,10 @@ void intel_dsc_get_config(struct
> intel_crtc_state *crtc_state)
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
>=20
> -	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> RIGHT_BRANCH_VDSC_ENABLE) &&
> -		(dss_ctl1 & JOINER_ENABLE);
> +	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 &
> RIGHT_BRANCH_VDSC_ENABLE)
> +		crtc_state->dsc.num_streams =3D 2;
> +	else
> +		crtc_state->dsc.num_streams =3D 1;
>=20
>  	intel_dsc_get_pps_config(crtc_state);
>  out:
> @@ -988,10 +990,10 @@ static void intel_vdsc_dump_state(struct
> drm_printer *p, int indent,
>  				  const struct intel_crtc_state *crtc_state)  {
>  	drm_printf_indent(p, indent,
> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d, split: %s\n",
> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d,
> +num_streams: %d\n",
>  			  FXP_Q4_ARGS(crtc_state-
> >dsc.compressed_bpp_x16),
>  			  crtc_state->dsc.slice_count,
> -			  str_yes_no(crtc_state->dsc.dsc_split));
> +			  crtc_state->dsc.num_streams);
>  }
>=20
>  void intel_vdsc_state_dump(struct drm_printer *p, int indent,
> --
> 2.45.2

