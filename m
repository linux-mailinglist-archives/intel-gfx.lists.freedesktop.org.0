Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7218D49DF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 12:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D6B10E5A8;
	Thu, 30 May 2024 10:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DJWTyBo3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88AA10E5A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 10:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717066113; x=1748602113;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QhX/XS01C3aXQTsefOQump3Potn2O3ed4uDxvkro5oU=;
 b=DJWTyBo3w8XRHGtEcR6TnO/A6BIZZZX0bKebl6I/fMVrEcrjMflhYp2C
 ol0BKcHrQBfrut/mJ9iJh3DU2ARa8sdg4+vFpPENQ78UvaRRDKFkM1wxx
 tQLIBm3vKH4LuC4taauI2zhoVIxaN8DmxfWkYi1p6LpIFgU1mMF2c2qap
 2gKn/Fs4ZoPp9FGQEjrye5MptdJCy+BCAD9eIGXeeiKbYCOF48lioJAGO
 NjfIz7K2Z0nmCez2n0vD2kPL7KDQiqXt+EYxhehWql8EPr6SN8RB8lA5V
 zB5a0MMU8u8MNbYDu4LGAQUE3uArPNgfwe+VGoaKstqY9cXGyZlPRyXHC Q==;
X-CSE-ConnectionGUID: zXkylaeGR9WDjz/dOS2Ctg==
X-CSE-MsgGUID: WrWwyjazSt2KBOc2wf/dcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="38928397"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="38928397"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:48:32 -0700
X-CSE-ConnectionGUID: egimHKSfQbyJwj9fJndjSg==
X-CSE-MsgGUID: SBUx/BxJRtuwCQweG4Z1zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="35848132"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 May 2024 03:48:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 30 May 2024 03:48:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 30 May 2024 03:48:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 30 May 2024 03:48:31 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 30 May 2024 03:48:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tw5xv8kW1Eb3cZ9sYidwr7cQ1BvzWIttmjyeKGbdEkPfJqCBz+oqoq9JAxzscfzoNRDyWYQ31LAnlcMTTfHV0vYV5L7ZoUCKmywKqcZVwUeHs52h7uUJLhMV/8OkjUraX6dH2JOvupI7Lrm/vIiMlqhlr2ZKeLAFosyCMuT2UheDt+MZtrChL//0/TAeNOBRdLGp8QJcXOtlpDR6szj8MWGDDpOVg7E+vJixriammB9w2DYLqdVGXPt/fojfK+dryB/COO7GqTDCbFc3ce8gXmq0M46/oGlZXJzXmIHalVbgFyotaI1JZytcCfSSqnj3Gr0+O15IIp6PbOsCCZLinA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5NnOGkJ8jaBExr/0uc1TBXhZGSrBktzx5tFVYPxJ3Q=;
 b=Hy6uTpa7/qRQwGJLXXEZDMjlqe6gTXPrYXpks7pIHRVFN0BTLt7i0UbyfbrBFNy5t+mKu9MZHJeiAxGGxJ1xNZ3rHoMnGg3xGwUC0Qb5ZFvc+Fa+Wy1lxSPaUTP3oZLqJOheacLrSg3FyT3gv3xWUj5O4mi8dK3JOPF/hWeT1oQUjqS5HBu0wLGabM1knOr/Lcrljpkahv+DVwVe4sQBbh/eFekv18e/MUm1gsNLDxq0qL5XCR3M0Wc+UgaNTMTF1bmB6o/KH0YCm7YXTO2MTnmfap9HP7g7gIh7IYKmD6jxwvqs6dYnXErABaJNEEf6D/YFbTrPz1OaLJE/kO8U6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN0PR11MB6302.namprd11.prod.outlook.com (2603:10b6:208:3c2::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Thu, 30 May
 2024 10:48:29 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%6]) with mapi id 15.20.7633.021; Thu, 30 May 2024
 10:48:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 0/2] drm/i915: prevent some static analyzer warnings
Thread-Topic: [PATCH 0/2] drm/i915: prevent some static analyzer warnings
Thread-Index: AQHasPJKEmTlYtg8zUuidmKaxMO6pLGvm67A
Date: Thu, 30 May 2024 10:48:28 +0000
Message-ID: <SN7PR11MB675053A130108240EE7FEDDEE3F32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240528112901.476068-1-luciano.coelho@intel.com>
In-Reply-To: <20240528112901.476068-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN0PR11MB6302:EE_
x-ms-office365-filtering-correlation-id: 53ab9e2b-66f2-4a70-5f42-08dc80960a86
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?dUwrbFjE9NDzEjf2ZFzb8kFbb2meKDrKRBBwpep5khabWpdGFsU1XSXE4Tg/?=
 =?us-ascii?Q?Luh7g4M/T04LxbQSOhibOH9dYGXn7hXPdJ8Q7HlsQImYmbGSCXGF5/vkmuYf?=
 =?us-ascii?Q?QNuvTwIB8Z6YdCaR+rrsut6otXP9Xo5wdfz90fUmDVeVJEBnkhmKGrtdp45B?=
 =?us-ascii?Q?E/pq5YEHddI7HbwzbDYMR0ChzkwTJyg4+WNhsRMzKvGZ7bqMB97XOf0NJ7tf?=
 =?us-ascii?Q?YPaaJI3B89QKcxSSVxCF+h+i9RrzNvpTm04bN/75n0DPjoSxABGM86dNlULb?=
 =?us-ascii?Q?E7AikKJ+ulh5/OWekw0rgb2gYz0vEDgFhYAZG17mPSsQfxoUndeUFOzt45JZ?=
 =?us-ascii?Q?U85s9I/5ge+4iN0mQLCI70xMbKriMz0ShSmc8OgLX3EhdXcdb8IcTxrSc/Aa?=
 =?us-ascii?Q?n40iOUvy9VDaMRekqi17n1AeuPZlha07Np0SQ/Nxm02lFacMWFuzdT7wHpQx?=
 =?us-ascii?Q?cWiTnRS98m5ErV+maOYfmZcH79Kage4exKOvAauoUw0LHFZkX12YMjgd4QXP?=
 =?us-ascii?Q?vpDNbM6cFKS2N4V/KNzgVvx+j5m/3yGSxbOdZAbAJ/m9OathAJlOSZWngmgq?=
 =?us-ascii?Q?HFHxdOBCypblCxZtb1sUHwEXxw5ZfEBY8i8cfR79attZ+sS+JdOaltTlWHeM?=
 =?us-ascii?Q?um2d7PlKwn/JQ2FPjPaDORzacESzUsRWC17wMx01tj1yQqzTPvX+BcRn3Yea?=
 =?us-ascii?Q?w+HZpDOkdEXYYQ6phwdcN9dfDWl2ICPOoGABvfJ1TEv6tIFEYY9AqPjHQxuk?=
 =?us-ascii?Q?TEcvg59rKZMgLoBOIJ+0EJSttf782z9Qp6T0cCtzjY9LsmubePXJGIFZxXTO?=
 =?us-ascii?Q?NrEv/uOWrg/PIiPZOKeY5/1kzXBl5bYX8bpTLeeDEg2QrZPQRcc94hbSh5mS?=
 =?us-ascii?Q?jjMYYBRvGnOYGHBS/acJXIBnr0yYcY3TkAE2F1+kiHhAVf6zuWx4eyybq4jj?=
 =?us-ascii?Q?Px5NLrz3xdW8uR+rdxlmwTL20oNbCR9vmTjelS/Gbb1oK0cGSX5+aUm83EvE?=
 =?us-ascii?Q?pK/7NU4YN41tp9uDFN07c0Fc9t/P6oYqcrYMuLl97m6iLstvrufo9R7SV4BP?=
 =?us-ascii?Q?AVsNpHka6P4kEbj1aQrcCk2lyfHgSS+B9YPrOPhzQczuph40xKx18YCWFyxT?=
 =?us-ascii?Q?RL+7I4i9N215hkNAyIcZcs4Z2vfH4/GJVxeij6RyPuMB4vPGNkU9znSER9W+?=
 =?us-ascii?Q?5p+1EDPCMwLcTH2PQ6bYTwGjiHulisQBoWG8tISOCGy3zbMKJl0J9gIZTS0c?=
 =?us-ascii?Q?bC4FFX4cvrGJrYVQyWmQr3orvEPl2AbsgspzKwx5051XxiAOveLnfjq6SsHC?=
 =?us-ascii?Q?gq1L/RGty/R+RSsRSAlpz/JXIWqDJfsJ35TgFFWwzEBdzg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sJIcC77GWH7bkBOgjXHCDMPV2Hq/64jijqy8IO1+QgDwPihOsZGnqXtqmzMI?=
 =?us-ascii?Q?rleH0VzEwqk8Myk4Kn1cWe/rpwIjKxIhOV0x/YpXSQhdsOdeFsjgmhjREwlz?=
 =?us-ascii?Q?9U6DWZ3RBbz5l46qDDsweVfsrLmeuyFeeqio92+bngZbvYBemcxqZPChQW/X?=
 =?us-ascii?Q?3EgyzpJXP7/xN8QxtUnvQ4I3HwEuReXwjGN8c8y7HnV5Xcft6lOSKs6ZB8Yz?=
 =?us-ascii?Q?rSeshdBPQJfuGzkUBS3FRTShgb+EnhMt7Fi0dgdjTml+vlRrO27mxN/EaPEu?=
 =?us-ascii?Q?n6qND7ZjbhduRd41Vw19qgvneORM8LZG2Sd5jQf20HhRiJmb6XK3yudfawzl?=
 =?us-ascii?Q?Ie6m0ua7N/rMibpz1e2ncT6ZgwAa7jbACzEgWO82JEh4wdx3NvF8txTT9+jU?=
 =?us-ascii?Q?c3VqwMCFMiWXdRdkHMHc29XcfoaK4HFW65Lpi0VQU75c2us4rdTb5dRoa/vO?=
 =?us-ascii?Q?Kv+7m2uwRYhrregDSkelmqri/2q+VJY1Gg9b3g9rHwrrOdP4rwXkcmCW9RNo?=
 =?us-ascii?Q?silOrV4OGQv2+P/OeFv5gLPouPcE+D8P+vj1BQovPPsEDt/EDhL9jQKhuOKK?=
 =?us-ascii?Q?2vfXjuPSIHwyj6z82IhBfCbbaJhEO98bfNhFHRXjCcDYhrxKXwRfJH7uAvZz?=
 =?us-ascii?Q?4dIkd2L/Bvx0YVnOIkc75WAqKziaayBlJqDqWzbyQkYrxWdA6jhIJ7mD6K+1?=
 =?us-ascii?Q?UZRlBlDfCMAJh8qH7Pn5rJi8v9PfIbD/RaPn2WLDIJSAU7WXmX9d4kZWeACJ?=
 =?us-ascii?Q?/vDcXbN2y/85k5vzJPm3MUBHRjkvqOCc+2KYA5tVyIPLybMLhOpRp0DnT0X5?=
 =?us-ascii?Q?ZNWH/sQmzh3jJuEK4ZrJ/QDUUyWCEe3wsKBn6JRJjZwRA/edAqXuFQNO28AI?=
 =?us-ascii?Q?Ysj14DyoVRmUmAbMewWkNZWDHlgPZ21y9yFM4eqUA32vuRvnJjOyADYJFFh4?=
 =?us-ascii?Q?u92KUyUGp/o2m+ab4EFe88NoDxO9TQRQC70Uj/rYKMojDCvmrfZjQYGEQ92j?=
 =?us-ascii?Q?vwGxuKPd3h0/zV7M/leWT445HrFPvg+NJpy3FhKMSZXnAowdHa2xikkTTHTC?=
 =?us-ascii?Q?IeJshpyfpmzdVLuqgeNeC9Xdf79GjpQk8TIjnqcy6HK8b4x+R3T0M64zMXhG?=
 =?us-ascii?Q?cn0Ar1K23JIpAixKLxah5amwf9t3E6ijf26Ttdmki+jVbEyYWJlP6s3xt68Q?=
 =?us-ascii?Q?TpUcwdad99b6DPTKOV7u2EEIK/ZLcN+hts2dJLapj9QNeD5q8pN8LqCkbZKl?=
 =?us-ascii?Q?gWExV5bH78fY389jjlTuhWjkStX4UnCBqzOR/XMSBLk+aJH7fPqh/UxnGuGO?=
 =?us-ascii?Q?c+LQKA55GUa1couxtegXgU9VJAbJxxCRZr/FbN/00BYT66dfkNjXylHqz3rH?=
 =?us-ascii?Q?EU4Z7Ubtu1CeuRf0jZMy7bsL09z20G1wbBPcAHiGapfYiDvr0bdr+Sm5CpGe?=
 =?us-ascii?Q?dLzoovS+RBPPaS9Eq4j/HHmObdHVDcXQvfMKOQ/eblag/82Zv2YZhXLX8c7S?=
 =?us-ascii?Q?xlkG5WnVxQPF4ZUP8ePKICLa8D8SD2Mf1luJmhecgZ5DRFuKHhPGit5j25+f?=
 =?us-ascii?Q?Bj+Y+X/AAaZeUBYaGlDqhh2BbZzIh9OJGmD+OD5u?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53ab9e2b-66f2-4a70-5f42-08dc80960a86
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2024 10:48:28.9374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yW2lPNQSEhSrJm8LDQFglG/gwg/kvNcWMPKKzvcDu/eqfckOrSdFf/PjPeP3eiNi2DxmVrOnxVpvJbUgiPbtIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6302
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
ca
> Coelho
> Sent: Tuesday, May 28, 2024 4:59 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: [PATCH 0/2] drm/i915: prevent some static analyzer warnings
>=20
> Hi,
>=20
> Here's a couple of patches to prevent some static analyzer warnings.
> They are not really an issue as is, but with these two patches the code w=
ill be
> cleaner and a bit safer, while at the same time silencing these warnings.
>=20
> Plese review.
>=20
> Cheers,
> Luca.
>=20

Thanks for patches and reviews
Pushed to drm-intel-next

Regards,
Suraj Kandpal

>=20
> Luca Coelho (2):
>   drm/i915/bios: double check array-boundary in parse_sdvo_lvds_data
>   drm/i915: move uapi.event outside spinlock in intel_crtc_vblank_work
>=20
>  drivers/gpu/drm/i915/display/intel_bios.c | 12 ++++++++++++
> drivers/gpu/drm/i915/display/intel_crtc.c |  2 +-
>  2 files changed, 13 insertions(+), 1 deletion(-)
>=20
> --
> 2.39.2

