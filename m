Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591DE940FF0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 12:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9428F10E0B8;
	Tue, 30 Jul 2024 10:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZVkJXau";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2621410E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722336653; x=1753872653;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+r9RRAXfEWmB5K1HVhr7g1KD5z0pIW17uNGKwoC5cJU=;
 b=MZVkJXaucr9f4JPVwFaO227s33tZPk6P6nyGR7cgCoqMyPD8atkubu9L
 ScVLkUkLfOxrxg48snTBN/m9Ofgd1qC0GJRf/wj2Y8uEWZnYglVmJ88lc
 Lth9smZCqj8UQ3j6vekyzGruEQY3BMhR7v2G4XkiKmu7Oq3cjCWcfr1Og
 Leb85PHQ+YlPY6HhzeA+C65im47a3U9rviJWbJt2GvQ4xYuCF2j97JhWo
 JfvIay6aW7Mhuym0nFKmrQ55GHuzM8i4ewlkh7VGHamiyY00xO3N1276P
 UFTFmlF/BE/nLlLffWA44GdxDCFqu+9T0q0cTDE5BXtei4asbWxC4O6C2 A==;
X-CSE-ConnectionGUID: GsBGeFztR46PJ6UiFUGoUA==
X-CSE-MsgGUID: asEFFurQStS2hPIGaH/jXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19985844"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="19985844"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 03:50:53 -0700
X-CSE-ConnectionGUID: eavtX140QM6fL/ZBfuVlsw==
X-CSE-MsgGUID: MaT+rObjQhW5P1mE/Lz85g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="59092204"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 03:50:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 03:50:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 03:50:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 03:50:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 03:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mob1R/cvuECrG7wgt8sMpHwfmtHCMgaQWcKoxC5xtAJoUvtXfZGp/xWTIA9RW4fd/khmpSC0MQCsQsbeU+U2UL31+NB5ARHeoW7eorcU4eYozAMy0uJUk8WDif1fExxBnQKDyUSxxn1PwM3XPDPaAaNs4oOVwmM6AxtKzjsjZxxT+bUAmYxZU5t5+zvsOhWSS7FzUQH5Olr5zJvfn8cb+M9lNQVw3wFzjw7cncUqKbzJK4GKAhhT9mZ7Ve+S8cMyXWVrBzsR6gtKvv7stKQtfFNGN2y3ws6gjfve4vPv3S1fcuxxUsdhVi2HhcEF5F0DKlUeKQOY253vlHYCAu/eyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KYY1WYF6y1qKL8dqOVMKKBImRGnQg2FqpFTbpcuzwQ=;
 b=EUbvDrqAeYOera8tqI3ofsxRitXndRi01lR0r35b7O2mIBtsJoDm0IUqUS3RYzPMpsqZXNsJ0pQ1ID2E7bvrZDppxYgwo/Gj+BA/Vm52CK+ezaQLSkh+LOAfT6K2c14OGMVCYxXRFEh01OmZMnZCBkeTgHGPaw0+9naB4dJ7NLqyh75S2CFiLTMgH3p3kK6Mlf0pV7UcOxGQR58hUQcQQrJXFkWjWcfFSFuPjoCiVlMJS+tousnYDg/Y+mnKN7aXY59vnZU+Fj2c7MRz+S/0Yey1v0f9Omz72lJA4XZOlqxGlOKAlhNErbGixFVBuzNzpRmK5Ktv/YQM6REU/NWL1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by BL3PR11MB6434.namprd11.prod.outlook.com (2603:10b6:208:3ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 10:50:49 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.7828.016; Tue, 30 Jul 2024
 10:50:49 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
CC: "Shyti, Andi" <andi.shyti@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Subject: RE: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Topic: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Index: AQHa4lMD0iVENQwAUU+iqf+PmdzBq7IPFzHw
Date: Tue, 30 Jul 2024 10:50:48 +0000
Message-ID: <SJ1PR11MB62044BBB0843CC9D1984EEFF81B02@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20240730075220.3087411-1-nitin.r.gote@intel.com>
In-Reply-To: <20240730075220.3087411-1-nitin.r.gote@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|BL3PR11MB6434:EE_
x-ms-office365-filtering-correlation-id: 2b453685-1337-4a76-4fe0-08dcb0857929
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OVdCQ8kZ0SrIDvanZnP1Qvr5WLYBYXYM7mLTA5lTJEU0t1Ghk6mo5Yvh0gkA?=
 =?us-ascii?Q?aAtZK+uZwB+H2u4/rS7FOcuPbzf+QynIWnR0LLmYuXUpBa76n7tIk3YMYuvn?=
 =?us-ascii?Q?yGhZtExrB6sQosTolo4ap8WJflE7yCX0Sw7HP0aph6svnXS6qUjwrcrVAoCW?=
 =?us-ascii?Q?DWGgymO1HodoSfJLnovBcepKuGUJximC9Gxf0jXRE8AhNwukSfscZL8bORwn?=
 =?us-ascii?Q?p4lQJPR175ynVq+iNPDFSCuuHozQVWC8Ej+SxrRxf1/0jv2aWxioRPYhmdA/?=
 =?us-ascii?Q?Vyfy6NTP+bL70gf0HIfRqLs/PROzQ4u3Ba54c0IdQebjWUOio2OVpoRbeUh6?=
 =?us-ascii?Q?mEw3KnpNfrz1cRiWA3BNRWCHlY5/fCp1ZauJcWUGJsmuA9UiZCL1zKM6KarO?=
 =?us-ascii?Q?UohFHE8C3MoD1XyV8vdZr/Yx7BPD0enJ+iPqtZouMJvKDWrjGyra4qe3/ogM?=
 =?us-ascii?Q?F93qxQh1/VW0XPM2lgogfgDA0hAKvafs60U8CWSMTER+6G9ebo1pA6cVefmt?=
 =?us-ascii?Q?bW3Rafc1odFL5i68NOAPMgiKyu3IjjOthrZclXZEhyqU1OLfJ8UdVh++NE5y?=
 =?us-ascii?Q?3ekwouO+ycte7wTfw8/4rbNazbvjLPIOjgcbp8kKqwOAVEG2sJywL/9d1EtH?=
 =?us-ascii?Q?x0b4NN3cVwKknMKvSTFaBZkNpz8H2xNPsREUESUqsh1wJOr0qlHphj+Yw9br?=
 =?us-ascii?Q?8bTcwaoPGEJsno46pUs96cCWMd3QV1tWYsWhTL0bH777ri1yzWlSWtEuNZA5?=
 =?us-ascii?Q?d6SYRZ/eGCjs97WIw4Tiqk5jNePOYrfANyfuSv1QlxxrLWx91+kaP+IRq5Ua?=
 =?us-ascii?Q?67CLIgW3of5tStQn4m+BTDm5X31IuIWLbGvaQPeCqc9IiERGKQ+/W29hIwaC?=
 =?us-ascii?Q?IZoUANp2LFQhbZfTwyWVFzopSe4ZgArTxN/AA+zEHPvAuDMqshFa6kP8wiUu?=
 =?us-ascii?Q?+/dbB4LssKg3t/7Z/vTv7fDBbhE2N5HQffxmIt/0HPInlQ7Eso4YTMMRFFXo?=
 =?us-ascii?Q?tVzoqh0O1oLnYfTnlN/gWML6L3BQNotIEKvWphdpu426zXf7ssCe4zCHnxBI?=
 =?us-ascii?Q?vXKp4QSX4IHmlC/63nEi/EUOFBEs0r7qJcBxhcH5D/I4F6Tr7w38/pHcZZWi?=
 =?us-ascii?Q?TIfKihVTQIX2Yh29Q9U0PFuSA8x7hkTHYU3ndnnIit6CwxAVOcuo8lH+ucz1?=
 =?us-ascii?Q?qk5BWL5mzW0R8Kb6H/aKxLkbaadNu78Qm1T59WWFecQ8YsUjsRHVNw36PhBj?=
 =?us-ascii?Q?jAeWq8BQkuez5M16ERIcGBesRUFnEYJqgfbzVIbhMU12dWYtKGrO3YABftnf?=
 =?us-ascii?Q?x+C+bS+WNIQYJo9/XfieGdGHqm+i6TKlQHsigoxp2IBBQgMt0exazDmciLbF?=
 =?us-ascii?Q?2VU+1tAL+sNdXO0VbospS7NTFtQClabsShrOXzg6tfpnMPYmSQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Sq0976hqa/vOA333t9DXXhyO9KDiwfpmB4LyQPneNSs02WPrvrAmnuTaqY5J?=
 =?us-ascii?Q?JMag4r5jp238VitMPZOzsmaQ3zVHzgj2lw6YUnijR1SRf1bQFhui1FcSufOX?=
 =?us-ascii?Q?neeJi5cxqarXZicBkEwOxNtMK8eA6p/kbPJI8yiTc2ugLUHQo5yADwWLpPLv?=
 =?us-ascii?Q?YqG9TL/k6/HDQkEwViwjyYSsHFPqYaWkxn6tFZjdnA7tomDdM16uTULiLC8T?=
 =?us-ascii?Q?9exdMkEW+zQejA7MJGMTXUWyOJUM67lvkejYLzljXZty1g5N/rlaVx9tb2oF?=
 =?us-ascii?Q?C5GIw+dWmEmsYkPg3iDdI2qmKAATmV9Jrm90n5faKomRsSR1LWrigOI4qg4u?=
 =?us-ascii?Q?vtDCO9fNr4oCRxULdH+as5pLiLVCiSaq3OfquluS1f4dHBQa0quWxSd4HoD/?=
 =?us-ascii?Q?d8TIGEyUHLv5XDbQwuXL68GqGHy32UMNxNqWlf6r+wqR31lbPutTmFaKvP88?=
 =?us-ascii?Q?MIxdY7JKcAFTjILaI/pBiZJDjFD0q/rvObTYSw8Aem44nUeJGswx9UY8ESSb?=
 =?us-ascii?Q?7uYvZ9SJHYUKw/sIaizyBJFkez/of3TDi0YoeUC6BKmer5uCJDu+SPiKtG5D?=
 =?us-ascii?Q?ZNKDrRCE340MlHhKholectsnFl0aE0XnEhIXPj0EmeTAlfGGCmfw/0jKNu6z?=
 =?us-ascii?Q?AT8rCWMTXxADiLXsxt2I/rIgPSrLmHx8/FL7SIBHX3NNUBBPiSCO3Qvea61J?=
 =?us-ascii?Q?OIi9Dx26FbjBhwz3y6568je2/shiPvWYoFJryX4MEDezGT1NN3jpBIsfdEi+?=
 =?us-ascii?Q?OOQgemozjbLWMN8h/eTf1ZXi36dChB7VUzZwKcngIJEG7h96vNrNPVIM2sN7?=
 =?us-ascii?Q?kOAtrC4adeqyX/mwldjw0AauuCpJmI9vSRKlIAwyb3b/Ld7hEa5ChXxlMR1A?=
 =?us-ascii?Q?ynbSexQGLtI9WLTKqazd71NaUdsIhYrSxVFJWTGwVbyjLQTuj8TjrsGyqNFL?=
 =?us-ascii?Q?yJwncrse0u3d8sCb7kP7PfdvilaGabMmiJPv6anrhUfn6yTZ5i1rMYAhKuKs?=
 =?us-ascii?Q?/hzW1vnNtzprcterbE6uPY4oRKKRKTbZDLcCt8bgBXuWGWd3G/1V6jQPcBWw?=
 =?us-ascii?Q?m0XjsQAoEOr6SoWkvn1UOLhxu4MtLNkFuLkf7vQK1OYM2vPhLNhu5hoNRXwO?=
 =?us-ascii?Q?La6IDxTGhR7+vMbtFKOMpkOF94ED+4odjeea/Vl9I4BQsnT2XySBKSbZ6HDz?=
 =?us-ascii?Q?uWWRaw0VJzdMPJDoZ1U/eawXIkr/g5N13fWDPb5NRVSm/smA1viRZ3OzgxTE?=
 =?us-ascii?Q?P2YeY/H8hZ/+EdsrChD3bO779usP2/oTh/6XXrn25Uq7iJ4fqs+Aof0oTmta?=
 =?us-ascii?Q?uk98XE5YApx2cslGp3MPPxGemBIcFQtytLxFTgIu/TaOk7VR/c+2j1Bzd+c+?=
 =?us-ascii?Q?DLjPPWjbG2C60U66NjWhFfFQ8VVOOGE0hzii+v9yWJHdhdCVqkm31YwAoZd+?=
 =?us-ascii?Q?QUFvnzH/8ADjYo6oF92YphyBR8oRDaxDprh5CNk1IK0lcmqugBGRGLKi62lJ?=
 =?us-ascii?Q?BI2TvvTtKPNzm/i4N6h2YWFR7tismdyqqlBnR2IAIwVrdu4yVo4ZYWCmb3eR?=
 =?us-ascii?Q?nxXbGp9JKIj7L5BhPfpBjdyHBpGrhIkx3+AgIUL3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b453685-1337-4a76-4fe0-08dcb0857929
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 10:50:48.9587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: crZCS+vpdrfTyAgtIRA+M4S6KdipdaG1anxzNfyXmSgocIfRurQmNbivuMx7vOIBSZrhleW3Bm1fhmC8Gq/xRbAEmcrktf5cDR803yVFcu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6434
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
> From: Gote, Nitin R <nitin.r.gote@intel.com>
> Sent: Tuesday, July 30, 2024 1:22 PM
> To: intel-gfx@lists.freedesktop.org; Upadhyay, Tejas
> <tejas.upadhyay@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Gote, Nitin R <nitin.r.gote@intel.com>
> Subject: [PATCH v2] drm/i915: Add Wa_14019789679
>=20
> Wa_14019789679 implementation for MTL, ARL and DG2.
>=20
> v2: Corrected condition
>=20
> Bspec: 47083
>=20
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..c143d8133a28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO
> ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO
> ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL
> +((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x77<<16)|(0x3))

I think number of dword should be 0x1!

>=20
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..cbc2003886d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	if (ret)
>  		return ret;
>=20
> -	cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> IS_DG2(rq->i915))
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 4));
> +	else
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>=20
> @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	}
>  	*cs++ =3D MI_NOOP;
>=20
> +	/* Wa_14019789679 */
> +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> IS_DG2(rq->i915)) {
> +		*cs++ =3D CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ =3D MI_NOOP;

I think write dword 0 as asked by WA description. So it will be *cs++ =3D 0=
; in place of *cs++ =3D MI_NOOP;

Tejas
> +	}
> +
>  	intel_uncore_forcewake_put__locked(uncore, fw);
>  	spin_unlock(&uncore->lock);
>  	intel_gt_mcr_unlock(wal->gt, flags);
> --
> 2.25.1

