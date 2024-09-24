Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E39E983C91
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 07:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB0610E4D1;
	Tue, 24 Sep 2024 05:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxCVGS0d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEAE10E4D1;
 Tue, 24 Sep 2024 05:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727157522; x=1758693522;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7heiPl8MVkLFMAA/a0W4ZItem4sWrwAmj8m0S/pEhL0=;
 b=GxCVGS0dlOyZfDnSQ/FghyMiMxvtrADdyVlnMXUWvhqnlyGNe9zOP9mV
 NizQb/e3FCpPu0XgZ/nQrvkkddB0jW8BSJ+TkWE3L3ou5YaO44zu4LqXN
 zvVmLFNdUbkst5VtQbFdC3eVZ4+2ZvadiVwMppdh1VlvCgaaQFheNo3tD
 p1luWhU8bhDTaEWTE5SVfPmb7Y+j26ZLDkQ+pdwvVZL/Nrocn+McyA/Sf
 5V3dDKo+Td4GEQSy+hrrfjkzhPK/uj8lQuBMqicQa7yrpt+FATsGcZvgO
 7yDp0IV6Dtfcb22gUeo0raUgEAMcBiDVUSt9PDs19f2raCcsL+K8mVEZf A==;
X-CSE-ConnectionGUID: 4g5Bsq33SV+LzVYFoE8pFA==
X-CSE-MsgGUID: RT0WN1alT5SD2dsiJpVeQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="30018107"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="30018107"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 22:58:41 -0700
X-CSE-ConnectionGUID: TabLuly3TPGfgmdI9ZVo2A==
X-CSE-MsgGUID: kiW79aCGThu7hqfWKnce0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="70900601"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 22:58:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 22:58:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 22:58:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 22:58:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 22:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c0aK5XpYSLHehhdBmLL2FpQrObrTxU2K7H7STRhMbqgcBc33F44G4lWgmBNovkulh2tE251HTF/VXJMtHflixC4MW69cb3pYBh8U2lvhH+s6VhYXyAV95Rkhjgd1uOvc0B+TRC7qwya5hmUAtoyaCgst62IGV/ge6KNTj2vxVIBvbxTEnCXPAsYsbSNrV3e/lETbGL1T4eChFw/JwNgUYCCpblrCPo0kKoEzd9gpD08v+rmfrZlohoMdsAZANIMnJh5k9gzg44U0GUZ7CsgPPzsupdECmLBIVK0fHIUYCbBd18E+QEjorLml+3NrTD7i7zAFbb/tIbZm3E7w/oA9wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Op19Ksl34XIFxmVqTw5BNiUvEEJXRbX5srQ5pXNEcek=;
 b=YVyNEJdWNXu1/lKeaPTGvjgVcAjJomKoyhEQkDd5U6Ii3xNHUf/ZKf1RdQGvSfjGqn3FHQBbOKhZwsM2qWGvFd1D2O3MczEtYZFNv5MLhT5W4cENlsh/DbrXDC9eT3wdqRkxZ9PERPRwHFuyC46gpqeFgKUF899RoPaQWaRb07ltwLXBAh5qhBaNZgFsZHjN7qLrwZIFWueVeoQYdVpvFgBPg10jeIzys/tDOr2W2yPER6yLUh27YmXByvq5xFsLztqwPhKSp8fYzoM5IogkyyH9Vpm7Sv8/usXsaYyMLwtOJb7KZuAHBjamSHFdDNKektmUpqaFC/RYRX31dPJX5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 05:58:37 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 05:58:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Srikanth V, NagaVenkata"
 <nagavenkata.srikanth.v@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLU5Ri4+n83s0GmJGbZ41cmorJk9/mAgAACBoCAAAfXgIABfo4g
Date: Tue, 24 Sep 2024 05:58:36 +0000
Message-ID: <IA0PR11MB7307877D8C76A63B7EF8FB2EBA682@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com>
 <SN7PR11MB67504B125D9B035F37D79420E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <CH0PR11MB550849D56A0906235C115F27C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
 <SN7PR11MB6750DA67D5E31FEE746E5C55E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750DA67D5E31FEE746E5C55E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: 05baed53-40b9-4892-4697-08dcdc5dee63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?D97G8Xvs1oUqlzOCAhw6gII4woizIwAsyJqGvX/ybZb5ZnN+Woc6vvmqmAlw?=
 =?us-ascii?Q?rF/P+pNPcnQE32RAHKGiV3N/FSHDn3cOdexv/iWCYVbEL5rC1+EAuBfbt+A6?=
 =?us-ascii?Q?1JwYB/xtG+bhcGrdEFd16IBh74S1uvVpNf5udB4CV9hC7whqsHy5z7slXlSo?=
 =?us-ascii?Q?VIPOnwBU7RFyR1HLKviLh1jXfvYapNRrgEVhFtIc9dOdQ6fTAoDVzlqQ5j53?=
 =?us-ascii?Q?z0iSDenuVZ/oijV0TDbvQZVbjYLm4jWa0q8Ajs2ncJhZHmBEqz1M7fer4e32?=
 =?us-ascii?Q?w8LkIhYDvVUlt8ubIAFoEPXEwkpOBLCL4fHmbr9Ond/P24GsAZbEymLp4bNT?=
 =?us-ascii?Q?+obsNdzORzJqI1EPJkq8w2lo47+TFDD1CuaEGY7++x5zYxanvq1Im8z6T7tM?=
 =?us-ascii?Q?BHseee5gEJqvm8fz/FfxDDMebfDsJZYTOkC2ir+u1OL/bOSDCBRaRYEVkRLO?=
 =?us-ascii?Q?OyAwhmBKhoAuJNceBmhaosCg2BG75Dz5JvutpVhRtDLg7crb192W5bAjTn6n?=
 =?us-ascii?Q?Hx4fPij5A6H/qFvjtmfyQTliuFSdG2cm9BX80cWOgWvn9skPet6pzPSiDHEA?=
 =?us-ascii?Q?GlsUbwmTYZtbt9/HgBKjQADAnj0vx8qjI/6AKUWxn9I2rzj1AvemAPWG/xBK?=
 =?us-ascii?Q?vZSzb711HEPN8Pm07LXemz7WhyByGQSvLGswwixfbPlkSDzyFQNCOlF49je3?=
 =?us-ascii?Q?jL2KmG6Jc9C6DOcQw1rYFPVBgzk0kFBsQ8/ttoUMqDVNRr5EZmfBpF76gMxQ?=
 =?us-ascii?Q?s7heBA/vIcf6HUdlaPhc/zm75HBPn0QkNNwl07e/EThFEHlQv1C+9ICd7pPK?=
 =?us-ascii?Q?rTfOMGgABRfkE2ZNYQaNTNPX/xxrXiScnpHEeQ7j/MMcm2Cd4lsMXBlY6kDh?=
 =?us-ascii?Q?G7v6sqhygYL/oWmJd2JkpcDvctZ5Q5CrXwt1dqb1OhMkFHjkNw3TEukFGEqS?=
 =?us-ascii?Q?EU6sorpIrNSZ4OQpoh827oYrBDeGVUWUJ+396VI4PcJ5T2TEpDsFXUHju8kI?=
 =?us-ascii?Q?ObGRnUeIJ9vFQlweBsrfG3iR6671iis8uXtvQSd1JxyUuVvDUpKk3pSiLIqn?=
 =?us-ascii?Q?IhyfZzFV1lK7/qgVfKGFlPCkw9AOx0qfu3a0mR+ETYPBAFzxbuVaR5Oqo1lj?=
 =?us-ascii?Q?Zdi1AxysNTtQnGdaXK0wAAv0A5Oj7GeAQpjnVuwL5zbVxYkyUMF4on2IBF+j?=
 =?us-ascii?Q?7aSfQX/YHBuZE53ImlrsTmSIkZgOTBjyYmDEgyn8qK/IAGh/2nu+zDnk6bdQ?=
 =?us-ascii?Q?b8kgxvHB0i4A8nyR4AtgXe7KDTcupCQCTUnwY1uRcpnO7l7mwMC00q18lw+v?=
 =?us-ascii?Q?Frklm1QUB1Gl2vfU/42PR1y0q8lsLil5pnDCzQDyG8w+PADUeRjpVyFbIVSk?=
 =?us-ascii?Q?YkCXfDGIAiiegm1ixdnCJvy5NbnC2W3k9FwJlK1HthDF0C+bJA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FWS5ca9khh5YOuUkC1PVN0/o/jrXeE/ihHqVdMA45KbpZkVpnRse/D6y58HF?=
 =?us-ascii?Q?jnDaQYLxBNxgvX43VJ/4ZQ8MJsq89II9VJzX1qEXltlPclnZh+7/p2DnDp0x?=
 =?us-ascii?Q?G0W/BR8177flUPKFHpuUKkQCZYwg7caTpEfAqjl5ZKEEWpNPj5qgVvXGPVG0?=
 =?us-ascii?Q?rV25lE7jZWLWlk1pFYOqeFlcbrOyHA/VOTrbcEtuHbKXG73/acuEn51f6FTA?=
 =?us-ascii?Q?07P0Nd/2Jdmi0Naj1lLDbq61DaLaWWfG36gbJk4SIYQsJ2jfgWuph6qg9SAA?=
 =?us-ascii?Q?1cd5y8fGs9OJreleLSlGsafgglRbgYV7U5zh2KYSIjJMGxK/bZFzvrW6v47b?=
 =?us-ascii?Q?hgaOI2noqGXxySI83eP5zUDis1ZZJZuCg3zmfpqdKpp4qEhmp1VNVTCxX1X4?=
 =?us-ascii?Q?QfX7eMXVn/k8MbZOl52alTRjimRUy/SZqmXr8BFehDm9zmKwQ8G/IcuahNYH?=
 =?us-ascii?Q?cpwuUAFeWG8xSXTjJbuZUyXBOlCK9xYDUnjgco0c72ZZSpB7AYAoApWpQfx2?=
 =?us-ascii?Q?w5NJvSzJDYC88VXHhVUDUIwXs9SaxrSWrESrQj676S3FA6S1EI+YXXXaqDPU?=
 =?us-ascii?Q?eCQ71ZyA6MvAT5oiCquYUuG7byTCDGxu4k0lpG743nJUFNViuYIPKnjqBGSa?=
 =?us-ascii?Q?waDUeFPiOnTE4FbdJ0fhBMVGMnFUZEOC2526lEypgggHsbVCMCQM2vdGdJRa?=
 =?us-ascii?Q?1tbzIwhwgsvGYR8mmDQd7zMjuBh2nSCKgiYXBIhpUG72jD1AhpCS1FaXhGKr?=
 =?us-ascii?Q?FBnJ/xb++nHGsptlMjpU/zpkErRcfd39KrTANDgAsD4Xo+xXbkgEfGh3ksqZ?=
 =?us-ascii?Q?11wejkQfZJOWnVC5eEzQVilO76cEd3OiB8RBghFtdWzxA6IK0tgfJLDQvVED?=
 =?us-ascii?Q?gE212X6b0g/j9Mgv7FkjqQ54PGrCVFNWquMtxhjMQzxR6c0YBVzNjXjB9CLp?=
 =?us-ascii?Q?nTjpMLSkltVCLrnGXAJjrIrEZgdwOgpH6cEUFjiMLHULVg5xp/GUZZsej/G8?=
 =?us-ascii?Q?Kd6fa67T3bu6B7rG7hWCtfkvzvC4ew1S4Masn7CGt6I1RRJCsUdkJg5sSdzs?=
 =?us-ascii?Q?rfRwqWrfZhrsP9JBFecJZBJbBiwUG9zr+xwwGPcjqgtcSBKGjcU08835NXcn?=
 =?us-ascii?Q?dN6Jgfc3mcN1T3c7jKm5nEVM9kPHS+AbAPqI8syejglLkjW81IUKp0JLRKWo?=
 =?us-ascii?Q?fbQMzqcHHjeAvHhYEbKHFpXOJChz2uZdn4frl8N9rd7EHJQ6MVTiCNK/HSdj?=
 =?us-ascii?Q?ORChyzcALTrfpxbkWMfkZ1M2jJLzXSSaJ/fsMyyVH77x6i1qT60XkrBKlm6X?=
 =?us-ascii?Q?wwC41NvRZqH/rexZzW/Q3QVMs+8G0hs9HGeuuQpZTxKhnxYnhRh01pyv9Vm1?=
 =?us-ascii?Q?m6uYuRWDDBeLhlN3go69z+KX17kCgbAKXSOz7ywyLgeHSimUyaGAt429JYhN?=
 =?us-ascii?Q?OKHRtxf7hZtutcugKlE4/9AGrdEyYtOn8/jz6bJ080BeONPCFj/0DgBHfR7K?=
 =?us-ascii?Q?A9Bk8PVBTCgVvALotgm0LgEvQZrS0ogCcVZBh5fEqSJ8kptQ1Yx6snBzNLVq?=
 =?us-ascii?Q?aUdCgIzJBbl/uXeSc9I+sgeMlIZlR563jrSjKHiV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05baed53-40b9-4892-4697-08dcdc5dee63
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 05:58:36.9086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c2xcwczWCXIt1v4Fk3sW5aLFkk3M7RagSf73W620etv/lnIsujkm1bqP7wq+c1uRsTnIk+cdRcVCT6zTohStlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
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

> > > > -		/*
> > > > -		 * The delay may get updated. The transmitter shall read the
> > > > -		 * delay before link status during link training.
> > > > -		 */
> > > > -		delay_us =3D
> > > > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > > > -
> > > >  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
> > > > link_status) < 0) {
> > > >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> > > status\n");
> > > >  			return false;
> > > > @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > > > *intel_dp,
> > > >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX
> > > FFE
> > > > settings\n");
> > > >  			return false;
> > > >  		}
> > > > +
> > > > +		/*
> > > > +		 * The delay may get updated. The transmitter shall read the
> > > > +		 * delay before link status during link training.
> > > > +		 */
> > >
> > > The comment needs to be updated as this is not being done before
> > > link status Also a question does this not conflict with the
> > > requirement we previously had (reading it before link status) ?
> > >
>=20
> Also  this whole delay us read should be called much below in the sequenc=
e
> from what I can see In the dp spec just before we adjust the ffe settings=
 at this
> point
>=20
> /* Update signal levels and training set as requested. */
>                 intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DP=
RX,
> link_status);
>                 if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_=
PHY_DPRX)) {
>                         lt_err(intel_dp, DP_PHY_DPRX, "Failed to update T=
X FFE
> settings\n");
>                         return false;
>                 }
>=20
Yes as per the spec,
" During LT, the transmitter shall read DPCD 02216h before DPCD 00202h thro=
ugh 00207h, and 0200Ch through 0200Fh."

Will change it accordingly.

Thanks and Regards,
Arun R Murthy
--------------------
