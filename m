Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA54000B2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 15:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7B76E898;
	Fri,  3 Sep 2021 13:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282E96E898
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 13:41:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="219127438"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="219127438"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 06:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="500362773"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 03 Sep 2021 06:41:32 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 06:41:32 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 06:41:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 06:41:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 06:41:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nlydfDVpRwKyxHVqSATmWNAJG2tTONTf6FregkaEXTBUXkyRMRGL6gKbQMyPsD4OFlFE+voHfME1eG9mLDd5juhAYZz2KbjomPNQwmVpynSD8H+iN56K8noAHA0nZZsIby3GpHR0nOKoEpjLnyzE+L0KKz77uTDwJMc8mQikPZW4E5/ThMcxAhoBI58zR5Cl81PhcX2O7B4mpu9KbqooKze3SMOgr7i7xajzWlrIrKNbGuTro1x8IYW6mUbJKY6ufgS8mMzwZum1HcUgOC2VJe6b9Rdhpf/VRncnfg0xXpEBubKTvxUJp8tF+FXOybQoRkLR9bcUMpF3uKend+FXxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=rp/epopeBxD98T9cmw7YgS50V5k7tIUHiwfUCTjqulg=;
 b=Sf5oFqZcXVIuK+eIjgWE2cUqDds6c69T+Gni5U2YKM9gRCQ16HXEHAb8LJW+Rz/nbjOgHK8Hx6Rge3o68mEzfn1ET8d925NKwAn/SIcypKlYxvJQpsPix/fFOlm3XP8Xc/a7qSTjBOgbaQv2RWYYC8o163hCU3bj0lnANcc4yHNCSiip2nroCQ/JHY/+aeKghTdy3kcrE6GCIYXeou0wxRfKiKwCzSoRi/dJtf1edfDTylgx14ZS0Vhh6W2zTYWJPTBHfP3qgBeK+f2aKCIo4xh+C+dT2CIvmfO1EqnL5MwWtVGwvSmSpzTXDxfMQaJqGC55ddgyPq9wlKawGXaJ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rp/epopeBxD98T9cmw7YgS50V5k7tIUHiwfUCTjqulg=;
 b=PeyiR15JrqipZMnIfFwOGiEWRiVZyP28ddYvO0vkr61BUF9xy2OCpoxAZ94GrkdiwIfF8GOd4JPCMktuV3wwWODIQ+PquMU8oJuLJrs+QeCSF+9Ql/rqbhlqZZbJWe7adSL2gEm5UwBP3wH7x8AtcwolwnqZoMahv7W45amULPg=
Received: from DM6PR11MB3355.namprd11.prod.outlook.com (2603:10b6:5:5d::21) by
 DM6PR11MB4595.namprd11.prod.outlook.com (2603:10b6:5:2ac::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19; Fri, 3 Sep 2021 13:41:25 +0000
Received: from DM6PR11MB3355.namprd11.prod.outlook.com
 ([fe80::bc4a:ce60:d9c7:a8df]) by DM6PR11MB3355.namprd11.prod.outlook.com
 ([fe80::bc4a:ce60:d9c7:a8df%7]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 13:41:25 +0000
From: "Kattamanchi, JaswanthX" <jaswanthx.kattamanchi@intel.com>
To: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
CC: "Szwichtenberg, Radoslaw" <radoslaw.szwichtenberg@intel.com>, "Meena,
 Mahesh" <mahesh.meena@intel.com>, "C, Ramalingam" <ramalingam.c@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Illipilli, TejasreeX"
 <tejasreex.illipilli@intel.com>, "Naramasetti, LaxminarayanaX"
 <laxminarayanax.naramasetti@intel.com>
Thread-Topic: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to
 L3_WB
Thread-Index: AQHXoKWYLsHzymt/NUCsA9R4x4h8E6uSQ5TwgAANcxA=
Date: Fri, 3 Sep 2021 13:41:24 +0000
Message-ID: <DM6PR11MB3355DB44CD246075282CCBCAEECF9@DM6PR11MB3355.namprd11.prod.outlook.com>
References: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
 <BL3PR11MB57467282C70B5CC39AB75DA2FCCF9@BL3PR11MB5746.namprd11.prod.outlook.com>
In-Reply-To: <BL3PR11MB57467282C70B5CC39AB75DA2FCCF9@BL3PR11MB5746.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9ea47d0-83b7-4774-d86d-08d96ee0861f
x-ms-traffictypediagnostic: DM6PR11MB4595:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB45952FD1756DB711A67EA7D3EECF9@DM6PR11MB4595.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AL6gj7uC09N+5JesKNMlMxWipULE7E5m9s9l5KCrNRYsj73reMwNJF1QpwW1Bj1zhQcb7D5jkxqo8o4KgImPxc27UREIZCeE+i/SnGgjWCx0IEOx7fcjOYVeju4NmQg8VP0afT92N4Pe9NECkcvZc8iCEHgTh8wcP+LhW2Z07JVJO5ox9D6KPYQI3vvROtt1bbWfkrL18n/m5sE4ueG9DeUBZceqD1NjngLZg13dtQDHNPk3W4VuROhiahiq+wjlaC9QhT11sHSyz7sFjOQlPh07Vi0q37yk22am3SkyYjLboVwqFst055AD7R+PwxPBqu8jjDF18JozLU5QxR1GxtizPN+dsPYjnp//iPCSq1ckSK7R/c0ONt0H5poIKholRlqvMt8OjZx43DXbAlfd7D45hFTixHHuUJS2vkrogCnRnNxCDcJNkEAvr8xb1W9WIj4gVbPnYW/7jbpX8BNu4uyTxLNITA8OsRNdMa1Q92SDOfmABLz/B20qPlg/SOk4GeLWiWtYYZ7dTexH2FJfgD4qMRVYwCYBKZdUTS9d6pmRgZ+yEyevH7vLd/kUECvIC37x1EgAnBATX8pq52zYwMOOmGe/6briapz3fPfKGXPU2lhTyZv6Y6oQxldl8CbJDy4lb+i/NQqG75m3dVCPb8LU1TXi3fgJ6YaPeyGmjuuylWTn55wmxaHGdUVTYloil4f8/I5tIT6xhycbYOdNdQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3355.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(346002)(376002)(396003)(136003)(54906003)(38100700002)(6636002)(66446008)(5660300002)(83380400001)(86362001)(52536014)(55016002)(38070700005)(7696005)(966005)(186003)(316002)(26005)(66476007)(6506007)(122000001)(8676002)(53546011)(478600001)(33656002)(66556008)(71200400001)(107886003)(110136005)(76116006)(9686003)(8936002)(4326008)(2906002)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?658guTyoA//js+0EWql0c7/JkSaRhijszR2axHdz0oe5mvu8U/+ERe41iFVv?=
 =?us-ascii?Q?6zTh35fzFcOLrc1BJ4ydg+R4iAkb4XN+saYh4s196Wqu5c+zGvPCoY9ZBQ5+?=
 =?us-ascii?Q?5fqWBBcAr1m7NR9r9b5k9qznXVnzuiSVTjd0dZMSsIo7NatgRKmWrI0GCt/g?=
 =?us-ascii?Q?lGfnXGuW0eroqcGOnfGL0KOteDAbCZiN92tvXdNlm5xSHyn454d9f5a4GCUL?=
 =?us-ascii?Q?I631CHkISOuGP6gU3cmDN6WzlhnvXYFxxQtXx0PbuN8uiO8B6Jo2tOsClcQ7?=
 =?us-ascii?Q?j8KjKc5K514YGP6P0h0fcDbINRRnwcgcNuSm4TAyLD+eDA7hQRREqpuuLZyx?=
 =?us-ascii?Q?JzEi1R2Shdi1xcc8v5GWOXe09NVW3dzXvGm7zY/GSb9uNFpnTEmA8rH6vZiN?=
 =?us-ascii?Q?i8N227rsYWODLHo4Oz0bkeQZcZlbhGPYQl+fBHwfThvdoAvw1I8l4/tddwmE?=
 =?us-ascii?Q?T89lDM2CmI51vlw6lzSeJ/2O2XrRqKjTQipBKP0P0/v8fcvyVD2RWR61MTxv?=
 =?us-ascii?Q?tZW2uWvIoHctjiFqCRZhPGK8b8r9VpQ2CuwE/qliKhXU/8sghVoMpKNTLS07?=
 =?us-ascii?Q?N/zK56QVXLdT/oskYv20OhjGZedO74pjssfHMSFtcs3Q6x/LqDtyRmvxEhoZ?=
 =?us-ascii?Q?pne393y4Xdzcj3I3sbSnSzbHy5g/rNAckKhjsbwJSKwjyfQUr8cDXcb/s9Wk?=
 =?us-ascii?Q?ACWJeOPnECTcNQFJXjpe8yy+EUfCf8U7Pi4/Ngf/eoca2APOLfhx5JQu5aSA?=
 =?us-ascii?Q?xE/UauxgDI0eWmmR3G/jbOP5r6UmQe7ijbMk4p0MTxSxTaykGHBwuVNr+5tj?=
 =?us-ascii?Q?+RTkwY4nW+yz55Di4Dmj1bZesaLfS6gy4TfwcVyLrptj4pqoKK+/nzzLj/6L?=
 =?us-ascii?Q?LaYgeC9WZ51MFfGRKeRL8Oulko8wNQXhETJmaUMUK+91NFZuQX9a++l7nxii?=
 =?us-ascii?Q?CdfQp+4eXYFkm70KZI6FyWymc+X23IdKirayuOcUJcR5l+SxQwaDpoWIaty9?=
 =?us-ascii?Q?3bomJO8HRsDbAKKFlYvHSjWyOPDnMDeda/8nIXRKwspNMLJ0yQH+I8FHqf6C?=
 =?us-ascii?Q?DtFpxD5htUUbPwCBnUXDwt1mxQES6L5nkM5xotOxotmCFkfXiMh4x9/2Ob7Z?=
 =?us-ascii?Q?SHCReru+24GOac/+VBJQG+Or/YfMH6TTWERbC+scaw31bierKmjeAWn6V+bz?=
 =?us-ascii?Q?LytOXTg4AcKOIpcmZHZFMci/+lt4d/fBqtDSzf7Tli7wFSNCbri0TN4iuTIR?=
 =?us-ascii?Q?TyaGsP6Mare+BDNNPHkGnBbZWSJ+7KrUdrAh0Z7/MNnRDKzJTI9ptjOjjAdi?=
 =?us-ascii?Q?w3ar57Z4hZ0IMrbV5ZPjya0d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3355.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9ea47d0-83b7-4774-d86d-08d96ee0861f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 13:41:24.9590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yAd00hdsgKX3P8cFjZxa/RZyIGP6vYG+cGc5Gg3+36jxdWlrNyed+UO7ORmaWpynnrs2cSqsQt3yv0eId9EiO4HHmKyq/ssMCMuFI26F3T8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4595
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

Hi Ayaz,

Re-reported

Patch : https://patchwork.freedesktop.org/series/94315/

Regards,
Jaswanth Kattamanchi

-----Original Message-----
From: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>=20
Sent: Friday, September 3, 2021 6:29 PM
To: intel-gfx@lists.freedesktop.org; Vudum, Lakshminarayana <lakshminarayan=
a.vudum@intel.com>; Illipilli, TejasreeX <tejasreex.illipilli@intel.com>; K=
attamanchi, JaswanthX <jaswanthx.kattamanchi@intel.com>
Cc: Szwichtenberg, Radoslaw <radoslaw.szwichtenberg@intel.com>; Meena, Mahe=
sh <mahesh.meena@intel.com>; C, Ramalingam <ramalingam.c@intel.com>; De Mar=
chi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D <matthew.d.roper@in=
tel.com>
Subject: RE: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to =
L3_WB

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
> Subject: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to=20
> L3_WB
>=20
> Gen >=3D 12 onwards MOCS table doesn't have a setting for PTE so=20
> I915_MOCS_PTE is not a valid index and it will have different MOCS=20
> values are based on the platform.
>=20
> To detect these kinds of misprogramming, all the unspecified and=20
> reserved MOCS indexes are set to WB_L3. TGL/RKL unspecified MOCS=20
> indexes are pointing to L3 UC are kept intact to avoid API break.
>=20
> This series also contains patches to program BLIT_CCTL and CMD_CCTL=20
> registers to UC.
> Since we are quite late to update MOCS table for TGL so added a new=20
> MOCS table for ADL family.
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

