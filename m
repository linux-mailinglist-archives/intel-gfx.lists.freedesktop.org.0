Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B643C8D190D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 12:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F253210E4E5;
	Tue, 28 May 2024 10:58:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elQsfyvR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA2D10E6F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 10:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716893914; x=1748429914;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=41dW1tZWOApj1Uz58w75Vh0xnOkBkfNagWxj5J1genk=;
 b=elQsfyvRNY5pczmK1XgnNW7X15bwUCLNYs91DSHxUZJIKhtAP3KLp17Q
 CuorZin4BYKH5OOjAy3hv+5KcMbHG6Xqtu3FE4YLH3lEgJtbSOc95Ahls
 mvGhgfvwSpqTSMEm0WJ4UVtRGpfpN+n8c6OVrIZKjXlVoDvO2ov4p0MYG
 2XiVb+yTmJai6VlT9R5f3n6RDnLC3ENDOaCVUkvd+8iDCmVfsgVTYSSBd
 7RCG3XWmieDETuHLWnLQJwDdbvVm+XyGRmODzmh4GsR18Q1JRFJk0MTUi
 qh+fgQ7Ov5sLo6MWj9qflo+3GXWv9+RqT23mQbTdbSzrpeA10Zftj6/yd A==;
X-CSE-ConnectionGUID: a4ASW7RiSI+BVTxqfuA2KQ==
X-CSE-MsgGUID: Odk1EZ97QG6Lzy+8UoOQ4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35746002"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35746002"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:58:33 -0700
X-CSE-ConnectionGUID: usuNL6yFQ2KICI54LlRlHg==
X-CSE-MsgGUID: vn+4gVwjTOO0qtf2cge4Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39854580"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 03:58:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 03:58:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 03:58:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 03:58:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOfGYBEo/ZxozUe0rgdJcDlRpS83K8ChkL0B8LiCSOsCid4bULYEK7GnWCrLEyuoAzQzDmYtv6lWV0zPd/e+nC7p+FXsSrwg6f/qhSJde5HW/Hb+WpolagTIb+1v1mlnIpD78Ku8Iv/U9+zyQGFsFZRn9vUGkqoKtpx56JieteItx7DEBcdrjpP5cNaw5JKaKxA3NKBkg3KAN7X4A5a6ctZ+Mh0BhIbYpf9Uiw7zIpDbeiHjjzZUeUMR82Squ/Jq8lUKF88XVW1M934rWRIKud7GuGe5aHlZPc67CrrdREIx2WDToMlRupr7FOxOcsWOiMsjk+QRVrLkCb0EwkiGkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gSj0awziRb4CRbCUmEIWfpGjx3OGNA0xfZiB8Etwd+A=;
 b=b3sEzi0ppn8SKH2Bh4HzkrcsG5hiT7oBnSp0bOBYvMPgWHc2zeuD9kzOk1L1CO0Gmu+Nmq8/+ZM8qYq23aoFDTwdzy1f9TkpheUI4VdN6FiFmw5nsxz13f2qeCTvA6SWaZzK4DoM1VJL8zwQh6fgqyY84rvaiRXfryBIh3VIp0Rzmm+xqn6lfWE5vXNh4v91vKMHYYX/CCy9HmGqyQeG3q6pyz9y3hSyTFb+XnNovRPrifkXIZ9XU9wOq3eUUrS7NLoWFeF4fW24I4UfAMFhCZg6l68kO72JWJVYIVTygsRVB6/3SwXIaowfRjW63BwUrfPL4O+6V19S7CVfLuPW2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Tue, 28 May
 2024 10:58:29 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%5]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 10:58:29 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize
 dispcnlunitt1 xosc clock
Thread-Topic: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize
 dispcnlunitt1 xosc clock
Thread-Index: AQHasNhyZRnWEh4YV0Kz1X9OmedZhbGsdOHAgAAFGnA=
Date: Tue, 28 May 2024 10:58:29 +0000
Message-ID: <IA1PR11MB6467AF339F5841A9053EF422E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240528081821.2809508-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240528081821.2809508-2-mitulkumar.ajitkumar.golani@intel.com>
 <IA1PR11MB64677AC74B42B3DD06FA84A1E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64677AC74B42B3DD06FA84A1E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|IA0PR11MB7955:EE_
x-ms-office365-filtering-correlation-id: dbd12b70-da2b-484d-7477-08dc7f051b9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?El+VBhZZ9WZ+yRVHzJlSOvuEiBK5ksvWp+AmCFuLoohUL2JPoFAcLoF8yOGU?=
 =?us-ascii?Q?d8Am3W2WLPMPpUEIyAZKlajLaoxjJqyEZB0+5djLViUYWFt0Usw0/rvTSspX?=
 =?us-ascii?Q?pPR3VM57ohIxMKb6BxKYeere6pu7QGpgZcNBH5VFDx7OgR4KMzL8WKMk0ekT?=
 =?us-ascii?Q?65OObgYshh98dVNFj/UcDNIjDre0+kayqehCVpbAvqx7JVAEX25OKIHMLUcH?=
 =?us-ascii?Q?qz0cPs7jRxIiDUnE3cFc6/OE/kATIJpH3o7MUVqrbTFtEeexLsfiDuOJvNPO?=
 =?us-ascii?Q?Eks+BsY5cOsYVXqcsFdVThznU6xhnYN5oYp2jaOyFcILj1e45rq7rB+E4sev?=
 =?us-ascii?Q?eA1ukBYBL1U4KBcZql/eNx4qsnvbcC1mjsoG1bsX5vkVOQumfsJg52i4/TWF?=
 =?us-ascii?Q?JqvaL94cwt2as9s7UHvCOkJo+0D3LgTq1KulMvx7dOXh8lSx5MuIG1mSfEnu?=
 =?us-ascii?Q?ksbcgvWQ48DDAjiDmFOkiaxXiyEJrrge3GQfhvWnGsP7WUZQVKh5hN2N6fpz?=
 =?us-ascii?Q?dYR7AnNbyUNGUPdXO/ZaeP8gFzR7iMDYlfpt8mMFSuCbPAKUF17+j3EYL5I2?=
 =?us-ascii?Q?0784K+FvIYp2qO1NJLhUHW4IInrbSRBE83+Psuh7rCXc624EIpAtYD7sczah?=
 =?us-ascii?Q?IKZE5GDmHwdLgm8gARnr279ntMRlytrDVHbj05AcI9OJcm5kuDpalhLjUsd5?=
 =?us-ascii?Q?OsM8sYMFkDsupzt7BWZ+IgXlr4KcnrWTaXoEhqbhPURtVYBM4sHo+j1C+z18?=
 =?us-ascii?Q?eRMcmzEbQus/7K1sbEdzXGs4YlKcQT2YP36vvbJVeacDE/0cqcXz5bKyGNAX?=
 =?us-ascii?Q?5SEdIigZjpexrnKmNJ0hFXhLfjcWHKFNoeJM+11p+gn3ZmqyCyHSfxTH4kNY?=
 =?us-ascii?Q?DczEGnKP12IR2TbvlZ8hZKoydYGE3DBwSp/pj/R2tlK2IS/EHKY1BwhTGpZG?=
 =?us-ascii?Q?MWhKggonx56OqnzJvf/GbmRjUbhYdM3swJRuSToUJJ8W4xB/l869VIyrMJdh?=
 =?us-ascii?Q?RaOxYmycgllcoYoUZidO51H3pPerZjfN4co2noMQ0JeJiXxxVaJ4rBAIhgad?=
 =?us-ascii?Q?G5WMCXrNZNQtYuRPdsIwJ9f3xCNypPBRtXEvJ5L322owv2Z5bxSgplKTP9I0?=
 =?us-ascii?Q?Dxu5ST8OTCCq8sNiXLbJODhjcVCkuVkUEbvgmrOJHrrN0okQRh3IOn6q0PUq?=
 =?us-ascii?Q?8ZyawWBt1PVEErGKqMf5fsxYMxZgaxYeLl16iyNx/vAz3zJvCKUo/Dvw9Qla?=
 =?us-ascii?Q?5GH/FNE0SSEmsP5GSgvFz28vlogVXVtbMfpv3Qe94GnhNaBrId5RU4ZUb+/O?=
 =?us-ascii?Q?/p+YxmZnKU1wj6HHmaYBGffpRVRyWFWOgACOcQTZbyqJkw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ffG0lM21BNVfb10Af8AIhL5Hz85mqJnmdjFLhSZ4e+WbKwJsSc7ZWRB4MplJ?=
 =?us-ascii?Q?S/pwZ5+VoRnIw+1Wrj9xRhZ1SsIYzQUXlayGoCmWyJao5RxgkOVLIHVW/mUG?=
 =?us-ascii?Q?O0hIRBmeLZIRB20sYWYwxAJNkNS7c0PooMB1VMao12WkFojLgax55yCgXFED?=
 =?us-ascii?Q?mmyy84ZoKndhOEALaM+y001QhGEusEtB+vQGGAwMlZQ9J7Del5k2fKj4yOip?=
 =?us-ascii?Q?NqUUKk2MZPqztPl213wNXT9NCZxotEoBHCxhok8NK2pSllfazM63+tKzsH6H?=
 =?us-ascii?Q?SQLXyKHsf1qdStz77aGD6eRAnwUtEtT1Y5DPgwN1OzQ9pNcDvrgl5pSi8FXF?=
 =?us-ascii?Q?m8Mh6xtoSIwJc12/raR50LU7lmYX0iITZkt8Qv9Eydf2K+S//yuSYlSp2Sgw?=
 =?us-ascii?Q?nLF0Gz1LsInzmTQ7dl0maOv2VggHF4kwzMC2nsPBXd4jWnmxw386zokmVEmv?=
 =?us-ascii?Q?pdzVOUI5vMA1EPfrNVwezFHiZSr/ElNm48kz54ITo+E1CSoEJR9uKWmrSTb0?=
 =?us-ascii?Q?CcSNasqHukuTyY8x+Kkc5+dJFO7XITu/ZPB44lax0jP63OovwKYJGjoZv9jf?=
 =?us-ascii?Q?GZkdTGmj5b2mjUNgp59cykB1lSbas/x/KxGhvIylNyy+i3OtlHm43IHt8y5D?=
 =?us-ascii?Q?p/HMB5WjoCBK0sT6o3wsfsXrejjRVNKCq1b7UzRGvu9UdrdLkpXGmXH6FDS0?=
 =?us-ascii?Q?98FhmVZSPIaKzhLUITDeqTPEM1W4Pie1DbI8OoGFtto1PhnsgwrvPxgl9ANc?=
 =?us-ascii?Q?hpEYGVDwFPOZacs4tifY9Hyo+L6/cB6LElAXtXAU/CbO1E9KmwdhMCNMzmyJ?=
 =?us-ascii?Q?iI0Vaj/MjD45AneVPYQxDJwUmZHbis/of0c/hiKd+75M4npRkFCed93p1Flq?=
 =?us-ascii?Q?nm/EgXofHAKIqwcqhsdYA6UKUt6AtJxXCWA7FfxJSQ9qAm++DbSauWV1Oq0Y?=
 =?us-ascii?Q?/gTUc086sRYKw0TZeMEb2CuOoEQ4dJ6H8MtUQV0cFPMuLYHQxn8MM5SMILFz?=
 =?us-ascii?Q?Sc1+vDkJKcEOlP6SEphrESH5jOrP5aWN1dm/Jt1FZxxcKvwyZ2GSCD0hYcLm?=
 =?us-ascii?Q?71EDytkZy4/AWc0oe+JV64GMZxqZoHJkJIiPQi7ouQwQAjiOcR9F5tW0ENo5?=
 =?us-ascii?Q?Da6e0HQxD9LnItYoPDFXzh/jxl8XzuUH6wiNQfYntcV2WfKm0NXXeVeUe3Jp?=
 =?us-ascii?Q?l+pmHd2VhwKKCe8VopIMgxLioVsGbrsBZ4n78MbCwNXplgYK0ryJpufWHOPN?=
 =?us-ascii?Q?1I3pRR0Qa3ctQjLreobNgw3vFZZPuRqdf6uoDWeqzRJzwjzC47zymvNR8HgC?=
 =?us-ascii?Q?1DAPa0Dl3P+nC5SomdqZrDdAr9JkU7Fgkfu10Ffs5qh7DEcPT1artTix9TbX?=
 =?us-ascii?Q?tO4dfXqnelduG76Uv+LLxQWxOZ04LBWr5n0WF946hlUR2bn9SZrpR+4ZmxES?=
 =?us-ascii?Q?zWhiJLR5zy9nnJt52WoLTVjXqbVc87cLeK4b0u43SAtdpPgIMFzwH7vxmV4R?=
 =?us-ascii?Q?XsUFJ6mIvF7MnFhl4eOQrVh2ugcaRdsF6ddjG/WeimK+AccuaKr4SOFYGDxE?=
 =?us-ascii?Q?FBh7pXTfl7O/LIcPawgw/K+NgnOMs1kAY4CeM7Jb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbd12b70-da2b-484d-7477-08dc7f051b9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 10:58:29.4135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s8EHgIOf7w5oJ1A03dC+zYE841tKCHd3K0DyhqkPtlCvmwr00b6PpQb3YdlSvYZjO8ANFWDzdYVv4JJ+oEx51A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7955
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
> From: Garg, Nemesa
> Sent: Tuesday, May 28, 2024 4:23 PM
> To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize dispcn=
lunitt1
> xosc clock
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Mitul Golani
> > Sent: Tuesday, May 28, 2024 1:48 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize
> > dispcnlunitt1 xosc clock
> >
> > The dispcnlunit1_cp_xosc_clk should be de-asserted in display off and
> > only asserted in display on. But during observation it found clk
> > remains active in display OFF. As workaround, Display driver shall
> > execute set-reset sequence at the end of the Initialize Sequence.
> >
> > Wa_15013987218
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index a860d88a65da..af2960c7e5b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct
> > drm_i915_private *dev_priv,
> >  	/* Wa_14011503030:xelpd */
> >  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
> >  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK,
> ~0);
> > +
> > +	/* Wa_14020225554 */
> Hi Mitul,
>=20
> Here also you mention this number Wa_15013987218.
>=20
> Thanks,
> Nemesa
> > +	if (DISPLAY_VER(dev_priv) =3D=3D 20) {
> > +		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
> > +			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
> > +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> > +			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
> > +	}
> >  }
> >
> >  static void icl_display_core_uninit(struct drm_i915_private
> > *dev_priv)
> > --
> > 2.25.1

