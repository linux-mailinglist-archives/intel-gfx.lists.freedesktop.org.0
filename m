Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BA8400016
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 14:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2296E88D;
	Fri,  3 Sep 2021 12:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987926E88D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 12:58:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="217554848"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="217554848"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 05:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="578672976"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 03 Sep 2021 05:58:40 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 05:58:40 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 05:58:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 05:58:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 05:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIMkY6+dSk/uIulZJbkfp0PKuoPxBtnTOJqbjCJe3VcPxONoSUL5f/8dcRbJ5t1gtyBjYtpdgK1Ndsc0zc7Mdc4xgeh+fYJt3viq0AhUnuV5pnUj2rRbeLS94d8XDdWPfQxT7y+xdfzNEU1EO2A2nhSYjRXsMV5lxV1bc/bWARIgU5LDeePLOe2KmtlbM61P6zdTkm7TWLr5awoqaWstlSWOD4v1xVIEIU5FzhagsxpR0LPUQXc5vshezDrLyKKp1x0ODn6fCb7Tq8L6L9GprM+oVpjfVAx0hjugBIfW1ITOzl/W3IgljUSYV777SRA2WO6fvje8TD581oUApDawhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=xuwCSnc6w+MOyr59iS2mS9sOAo5fAZDaYF+Eai2CJy0=;
 b=WyDenmf+ypaT0Agw3DWRDowQWtKZUYpNiW6d6VAisS3fCRDkdB7fHt/bAK31ucxnbMiZBGBPGc2Do7HcRkGniBafhlEOPh7jFQ/ve919FSkj+dSw+9yNIVU3X0QHgAcXiPD7KFJCQNWzJbHGcpzcQMEXkmxSQlE8yRoQ8M4aOhoKk4SFRyqdOVmIUWx9mtFP136JEAq8XoswLtL2BcNPkqerJOB56jlLLe+jcNZhm8wM2c83bz4jKub/GQ7tcONnqaZ+PW33gRL4EstHyp/XBQwu41rTI2+n1THkiMzMq75Eqyk4ruVXB2JVMr/LDQpICwTK3wyyDmd1dCzcsSVlAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xuwCSnc6w+MOyr59iS2mS9sOAo5fAZDaYF+Eai2CJy0=;
 b=w07cN6tMnZjhCFV+2GGzDGaGKT4/bIQCt8oFDE5pgcsrvRfhqbX8FtrTds68g9nIRpmx8nSRuOf5YJ05oLU32codcc9+li88GKTrlFKhXbZoP2MdwMS9LyM0ih1glO5Qq9Euj0ljh5Cdj4g+aQYP035T5dC77am0MgQ9No+L8Ew=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3901.namprd11.prod.outlook.com (2603:10b6:208:138::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.20; Fri, 3 Sep
 2021 12:58:37 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558%7]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 12:58:37 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>, "Illipilli,
 TejasreeX" <tejasreex.illipilli@intel.com>, "Kattamanchi, JaswanthX"
 <jaswanthx.kattamanchi@intel.com>
CC: "Szwichtenberg, Radoslaw" <radoslaw.szwichtenberg@intel.com>, "Meena,
 Mahesh" <mahesh.meena@intel.com>, "C, Ramalingam" <ramalingam.c@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to
 L3_WB
Thread-Index: AQHXoKWYLsHzymt/NUCsA9R4x4h8E6uSQ5Tw
Date: Fri, 3 Sep 2021 12:58:36 +0000
Message-ID: <BL3PR11MB57467282C70B5CC39AB75DA2FCCF9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eed45ec1-62fc-4d9f-6220-08d96eda8b76
x-ms-traffictypediagnostic: MN2PR11MB3901:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3901298472055940EAE767FAFCCF9@MN2PR11MB3901.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EFgCJbn3p1w3wi06YuVdHv7VTkzFb/gtYFZLtd9eGQREe0osBZaDOMKUl2mwK33ZLdpJGKPoY798qDoVtb+qCdb52B0J+6Ow27vfR9gJ5gS50zCbFh9qlS3vs8Vs287X88J6wKGJWbpRyv98x03F5oxpIAceB2vdknCGE/ZZfs758W1ORMHoe/3fR+xOeKHr2TIcLm01s7hkK/blC7tf8V7MdUF3hiz1ylLa5ZtZga/etHbCWpB2ap9r8DMlOJvY60uKcvGhiTRgoWB9RBZN2euhLqX0PqWy+eS2BK3/xzDp13TD2zYE00aO6SfBKYrBch+bQNNMHjh1LCYQpIWw1QO4oKV5Ymjrqbfh6fodcBDy+vYmT7DqQ7l4YF1VFYs2taGTuA0YGgGY4B1FvtktOU6Jf+b+Y9FyoauEJtA6AHn2nw4NdgRgdLgFk+yyr5s06yQSmvI2TlPZKn4RfuoXBfoEq1w4SN5xFbBU6o6zyh2svjZi978BQfuQTAt+p/OWqNuJLIweBAch8YuFc63dboq48LumR2cZb5NrYyBpIKqz4dj1gnCQoVlupAihsayvLt09c1J+RCzWirbmZHzb+pFmY2RQmxNFuFsSgAEUKrnbg+OH6ADf2tj8PQwBkkgf0um5m3H8wIYNWMIx8JLC2bVym5P5JaI2YCb3mWQLoOmb1Nwb0t9jDOGkRVt5qx2H+1c6MGmNQXes9MG5SxZ2dw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(110136005)(54906003)(55016002)(52536014)(86362001)(53546011)(122000001)(71200400001)(6506007)(8676002)(38100700002)(316002)(7696005)(2906002)(38070700005)(6636002)(66556008)(8936002)(5660300002)(83380400001)(66446008)(64756008)(186003)(66946007)(478600001)(66476007)(33656002)(9686003)(76116006)(26005)(107886003)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4hzhyQKyR8t6rhjyWOjZqb1AAtomUAvx0NvI7uMQm8X4CemuCPXAMYM4Sk3q?=
 =?us-ascii?Q?KyPmD29o75w8V6cbRgnRGo3J0VKOQqYR5vj4yQYj04Av711pvzAob4Ais9Ia?=
 =?us-ascii?Q?fJazTt2ZaZqDQxjDW0e0wbhnXLqeI4fSxRbbOA/3tUz7VP3k9UXe6WrPshnt?=
 =?us-ascii?Q?ehWu2n+40ZN1FkNjvGFX340DgM/Ywa96hqWZDuTH/bE5Ebe/Kzevd4lnt6Sy?=
 =?us-ascii?Q?rf60lP/9Qo0gCDtpySSKEpqSVvVW7lDGf7ciEGrKPEq+q621aNokkOW+Ih1Q?=
 =?us-ascii?Q?DXznE/qjCQmJbovxEx/IVimcboLLkrifzrnG+MRdypPZl/1sYYwxalbHHbSK?=
 =?us-ascii?Q?STMgolDbsSSm/bnV2fb9lwyfXz8/xLy4ftp/fE6SfipBA0ild1BCiwGHdpkX?=
 =?us-ascii?Q?rjX3AkJsx90sqopsmAqu68gXxH/J9wGJCwf4tZo2zL+MFQ5t50MCf2BK7Kxy?=
 =?us-ascii?Q?w3LePGsVzpHSX+wf0yvDS4LJ1D72pH02o2SSbjSVTdu338colKbMJTH8Or+k?=
 =?us-ascii?Q?ybBH2lkzzJQZpqVHTgRMM1HU2d3fhJlOLWkHvaYma50YDF7RM8JVT6WW9wwB?=
 =?us-ascii?Q?c6DsZHAaJrNbb+t/EQ48/sgl6huahQ/Nsodt6EB0KdlzPEYfUGxw50NNIYFu?=
 =?us-ascii?Q?UP5lMZ3CngkTrT7hNkAVy6GUyy/hcGDX45BXMoXqjcNom3iskCECai9mP70Z?=
 =?us-ascii?Q?RXDQwUp/h9I74MVA8uO98MsB4li3ybeHdAJUsKAi0gwbnzkzWMw4FphSLtmq?=
 =?us-ascii?Q?b9Gj/SYSolYOOLJICB185W+hfYilY0FBNUPH3ct7C4WdSG0cSW1ricwiobqT?=
 =?us-ascii?Q?XhI98XFFLuQoh/N+MGeQkCvoqpI3+1ZAMkv/pcPdJpWv+E3Nw0EGqstins27?=
 =?us-ascii?Q?CY3PqpsZ6NAnyC+Q37iwyXRJAiCR2PLpzxAewAAA4+LMcCXysZXteVRAeDWb?=
 =?us-ascii?Q?FEkVOUqJqnXc7xAnnCzhp+onFcyvQ1sKH5ekxu38Jt6cxB4oIEBNcq2ZrTDz?=
 =?us-ascii?Q?FMrWjHcXOw0jev1xN5hO2YN3O5wVI6wpO7rs/ej/7gWrFaOGoSAXYfpyiMRf?=
 =?us-ascii?Q?gqGK88EhoE/r1hGtPSue9MtsPAGi5im016tkFne6PWyyUVfQZmuA5SoFJc0f?=
 =?us-ascii?Q?O3ocvm4JuGz0AzPysnD6ZoAA4xxWfsaerHJlo+hb+YRykNl2buowmIq5j6Nq?=
 =?us-ascii?Q?Ssugrj9c9rNZBoY3v0nHYTrnMXQjAqM8UiWlCdxxvjd8Icc+35D1rthxIXhL?=
 =?us-ascii?Q?ZhlFh50Waf/iY+8DJ6CeAhWnrIHtEPbshmJaKID6T35UcXUVMUQ85DhABpTa?=
 =?us-ascii?Q?mC2AI/fk88VzIMoAQwwiqEE8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eed45ec1-62fc-4d9f-6220-08d96eda8b76
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 12:58:36.8903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mOlMDIc+hd65jzmhdTadG4yIUui5sgkDLwf03dkc/q8aW4Ox1PQpnUwYjT2wwuU44cEUF6atrQz4/NCYfsseHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS
 entries to L3_WB
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

Hi,
 I see a failure reported on IGT-CI for this series for SKL,

 igt@gem_ctx_isolation@preservation-s3@rcs0:
shard-skl: PASS -> DMESG-WARN

Changes set in this series are applicable for gen12 onward platforms except=
 TGL/RKL.

So above failure look like a false alarm to me.

Regards
-Ayaz

> -----Original Message-----
> From: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Sent: Friday, September 3, 2021 2:52 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Subject: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to
> L3_WB
>=20
> Gen >=3D 12 onwards MOCS table doesn't have a setting for PTE so
> I915_MOCS_PTE is not a valid index and it will have different MOCS values
> are based on the platform.
>=20
> To detect these kinds of misprogramming, all the unspecified and reserved
> MOCS indexes are set to WB_L3. TGL/RKL unspecified MOCS indexes are
> pointing to L3 UC are kept intact to avoid API break.
>=20
> This series also contains patches to program BLIT_CCTL and CMD_CCTL
> registers to UC.
> Since we are quite late to update MOCS table for TGL so added a new MOCS
> table for ADL family.
>=20
> V2:
>  1. Added CMD_CCTL to GUC regset list so that it can be restored
>     after engine reset.
>  2. Checkpatch warning removal.
>=20
> V3:
>  1. Changed implementation to have a framework only.
>  2. Added register type for proper application.
>  3. moved CMD_CCTL programming to a separate patch.
>  4. Added L3CC initialization during gt reset so that MOCS indexes are
>     set before GuC initialization.
>  5. Removed Renderer check for L3CC verification in selftest.
>=20
> V4:
>  1. Moved register programming in Workaorund section as fake workaround.
>  2. Removed seperate ADL mocs table, new logic is to set unused index as
>     L3_WB for gen12 platform except TGL/RKL.
>=20
> V5:
>  1. Final version reviewed by Matt Roper  2. Removed "drm/i915/selftest:
> Remove Renderer class check for l3cc table read" form series,
>     this patch will be taken care of in different series.
>=20
> Ayaz A Siddiqui (4):
>   drm/i915/gt: Add support of mocs propagation
>   drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward
>   drm/i915/gt: Set BLIT_CCTL reg to un-cached
>   drm/i915/gt: Initialize unused MOCS entries with device specific
>     values
>=20
> Sreedhar Telukuntla (1):
>   drm/i915/gt: Initialize L3CC table in mocs init
>=20
>  drivers/gpu/drm/i915/gt/intel_gt.c          |  2 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h    |  4 ++
>  drivers/gpu/drm/i915/gt/intel_mocs.c        | 72 ++++++++++++++-------
>  drivers/gpu/drm/i915/gt/intel_mocs.h        |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 70
> +++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h             | 26 ++++++++
>  6 files changed, 151 insertions(+), 24 deletions(-)
>=20
> --
> 2.26.2

