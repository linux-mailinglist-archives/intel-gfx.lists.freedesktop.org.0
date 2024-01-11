Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5F182B73C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 23:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CF510E356;
	Thu, 11 Jan 2024 22:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E563810E356
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 22:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705013200; x=1736549200;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+9kcA4ADC65VYy7ZP2PmF4cuPK2Mb5r4Z2Pn8J+IjeA=;
 b=Ua70uhSHsefACFZzM0wVrWVOF3ts12fWzoDJXzAcO3jUBXf+qMjqJfII
 OJbnvXi0nBb5JCcQGg37PBd9+8xVgHOKnPVEMftM75HXUsJGL/QS2PqkR
 ZTbWXGeBAawVhXwjZrZd3itbsiOowrf3LdxUQrK5BYiW+hW4FMOhD0gbu
 5VT+qDJCi2V+SiK5q2UmQthvfS/EuyDVCCnPYEFI+o4y/HuBATjB2jrKu
 OAsypngYRcJwP00wy5FXQCIm14kcGVVIZkljY9tdYLD1FQ5GrN4qp+Y1z
 29VOXnJVlsylkCie3PnVHV72E6ZnqihYw0d9w/ODDvBMqS9W9yHewspMQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="397894734"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="397894734"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 14:46:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="782807795"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="782807795"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 14:46:06 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 14:46:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 14:46:05 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 14:46:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VWwlzbF6r29B37zRQkCxkwIz18ChquNBMWZ/fEJDENLWBTUiFR93B1pNmWpO+i1F1Mdywjs9bPfKTkbLPpBrbpFZshu28xZUGigoaXE2m6Sae+cP42HrryJWCSKdOYOggjiJx3uQVhcNd4mIGV9vyqMN/wueNkGWWCImr511AmM1OVtL5YhCTuBTnKhaJP+M9yUxcCidQQVEmCw48rQVufDoyVsNhhVFKUyfKSIrfomuiDvw6ntmTu4SrrWUvjFlHdn9tLq2KYAey8TEHa/mSoKAk8B5UPvsGnUEzsb0WjlWLexq/P1kt9SE1UIcZYs5BZ1HrnK2h7Uz/Y85jfdhxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XwWjwQ0h7QVt2e8mTXHVYoJNUhCRBMdBWBG25WWXXTA=;
 b=dD6nszqUwYIy7usUnfCOeiOkWYjulirp0lm3LCIz7YHofixOzmHRNuP7CByFWhctpyihL8vNcqBCCHo14CjHvsytOS+Ac/RxamOQdBbb3aRu31wxYpw/RLZOYAIe4zzpno4NMaKS7jgKZPor84fIXZ9OuY4zSb1VPx9SfS+iH8acB2UXuAbfx71DrY1bTumjh6bWobChk2FLnnXOnTjeSEMZG7sl1Oh+d6JP29awaC7Lh/WA9fQLORcmiwKIurJf7o8Y/n9Nmq9UJPaczX9zWcBFWZs97kc4KzEkIBSuwWf0TIN36dArd1ez4OapMbVdPAc87GZ4QKStXxoldfsYGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA1PR11MB8447.namprd11.prod.outlook.com (2603:10b6:806:3ac::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Thu, 11 Jan
 2024 22:46:03 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 22:46:03 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RFC 00/15] VBT read Cleanup
Thread-Topic: [RFC 00/15] VBT read Cleanup
Thread-Index: AQHaQodkhZqLF8gLxU6x75J2i6Q30bDS/XuAgABQ72A=
Date: Thu, 11 Jan 2024 22:46:03 +0000
Message-ID: <DM4PR11MB59718C8747CBE6AA1381C05E87682@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
 <87wmshv03y.fsf@intel.com>
In-Reply-To: <87wmshv03y.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA1PR11MB8447:EE_
x-ms-office365-filtering-correlation-id: 41daadae-8e6c-4f13-d579-08dc12f71761
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KyBkKAgAFhajyiOtDBpDKtHP40FMfM7i/D96Ddv7u1dmdKXZBVjvWFxl85Y8FDJkc/qwsHymsrmT5N4TGYw7cdULU27ogggkizrlKnqC4cRU/8O7W7Xogen2f8wz3Br+orxNEhP8P2E/zwukXddY8tC13zfW4Qf3QdJDDLSVYGQDWgWh2pXeD1PaQtEzp8Zt69kob5B6MYLkywLvbPaq+JtcVzYh463GB8QaUXAN481vS7tqjxlhMBncYIBtiTXbhci7OymJvc/aOrvmBxBFyYH21fuVCbZr0PzE9pyvw3vjqS0I81lvdOJNdZ9hVrtgzDq3ajqAhfZqK6mjUY76NwjWeOlLyCTvZGArMZfP9K/U5aTP0xj+hiBsSFKsGp5IVWVEYIpSlgpiuSVx3c3CJo+pCuXucwITIxeP2+JbQwr0ZbebnBD2SuSXRglB0dxfOoYJIS6n66qAyP9njBaXR7ylNO3NTEaz6KF35py8TBJbpXzInGTKeLOAzOSCeFEVNzqLPZdm44nyIeO1osNyH5eGf2mX6Flxozqf7/UPrtlrBX0HYZ3n4QH4Fjh+DkIcUf6CYX1h2UQe6L3L2zfY9box6DChvbg+ewSOUs9UhscseUTmx92Fq1QKAGyW2Ci/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(136003)(376002)(396003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(2906002)(26005)(66446008)(64756008)(38070700009)(66476007)(66946007)(41300700001)(76116006)(122000001)(33656002)(55016003)(86362001)(66556008)(82960400001)(110136005)(71200400001)(9686003)(53546011)(7696005)(52536014)(6506007)(5660300002)(478600001)(83380400001)(316002)(8936002)(38100700002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DUvtk6A8l/elho6BC8Tt6118Tthqlj9rlp8DYVDQUibEYq5+caKI9roW0Spn?=
 =?us-ascii?Q?BQS5BVOkb0PgNh7Dn1d2DnqljTq59g4fPPj8N9DGo6HA9MXXmnlK19lFHMNz?=
 =?us-ascii?Q?ggWVGhKd7igXXjTR0BKOl8jk+pl19k20giFABknIL6AZgz+/dmgns7XVPvQu?=
 =?us-ascii?Q?mSMVWeMQe9X1VZCNANejRotDCW32P7AowcQUI3A4gvBpSPCtrkDwWpvdf0gp?=
 =?us-ascii?Q?Cq8wLyHcygOzGWTDycQtC1WUcDXqrzTPwn6GWvYHuUKAMUN6pmVPwRPlB/jP?=
 =?us-ascii?Q?IxHNzxjO40SERdjOMuZTeLrAWcq4h+cJWOfL+eR7dWy27w0sGJ2fpyUzpEy7?=
 =?us-ascii?Q?ATJWu6qxBJVJ4vR9OTyDMgdt9CPJft9vrmoxgznDVquuxHxO6r8RgdOQvXSB?=
 =?us-ascii?Q?JJMj6m2zKDYhNDCfnZ8kVUvLwXu2DTUMxfoxqK0bdLQEEuO/zIf+/SW3nhqs?=
 =?us-ascii?Q?M5vkFaux+QQGGItxMDBQWPr1Xy6RbCdrtCAviaTfyogY0uxoJd1gOHzJBN2v?=
 =?us-ascii?Q?EcXdL2ISxguuu7q2uIoJ6sn1m9xjkE9YELcpWFbLVKbXwOA94mLpVD79tjuN?=
 =?us-ascii?Q?BaBpbdjzENyrQk8BuC2teEwXDhT46USvT1EPrNNZ7br9Ca3OPxo0BmE57QtE?=
 =?us-ascii?Q?DRpLKp8w9/7+NPHMl+D2N85Z5EP0qcyIg2C38IQPYZLF9ZmUWSrdO0DvMlk5?=
 =?us-ascii?Q?gQdl6STooHwwyKaJ9wi4mLe84ffLATOPblNoR87bzE1XTkS0HYDbHK1RrPl7?=
 =?us-ascii?Q?Ocpy25kLUHMuG5bBAfj6aaktFKznthAcSllrQJlG49bPWvHQw9y2RD8PRpq6?=
 =?us-ascii?Q?MgkuUYmn+mjh16LAj8qlM2dZVxsDMuC9PJITMybvF9rYEVhMJi6fEoHNL5KY?=
 =?us-ascii?Q?/FmrvNDs4eSdiPPf0VvL/92fppJ5oWSmPY6QpP43GYo5HQEXjtn9+3pvfm/x?=
 =?us-ascii?Q?x2d+OCJos89+GqPjtxQ0ZAD24Ru+VatvEK0ni2Our7+tsM1GdO54rYW/MSbc?=
 =?us-ascii?Q?f0tzyHHK4E4YYWI/B2qdRtMRqhAfT8SsjElzhkVPunudpszaaITlEfMAVjWl?=
 =?us-ascii?Q?PEH6vfGAFYKLbgvRH/yi/ELnZDS5G/QD62K8GnRNV4SFtsJtms+vTLqDE88r?=
 =?us-ascii?Q?IpIo+EwHzkjNmakVxOlVTsaLEh0Em/RlFoNFYE983VnSdudr9/z52o+PSEP3?=
 =?us-ascii?Q?rCsMgo7AGYpDTdckviDGs7uJ5d1QXjz80NmAycGIqEG9vpYmWpYrPO4Fnz/A?=
 =?us-ascii?Q?QbGFpQ+9pWrzrAQC0WVRrGTwE/FOepQVCEFz2iGvHa44QLCNbRUQBeZCjERb?=
 =?us-ascii?Q?72Sgy1AV4JpW6P6Rre9c4UJ7mhZThhOcmMZq1f4Jl8Lt/4xE/9GvfZcGWHyi?=
 =?us-ascii?Q?eq6P2kQDFsJEHCY6UjoomNyAyf08HOAY1ASclLu6Q1S0AoaWTFfVDlldU62q?=
 =?us-ascii?Q?j3gRhbqHV7hrTjvUTaz8/Ny4i8zoIoxFj3N+tIbTyxC2a15eB6cx1LoxC1LO?=
 =?us-ascii?Q?pLesC+OK6CBlE6CubF96ZdDw5dksKlGEDex3gj6v6ThPj93CO7LpS3ZkeCf4?=
 =?us-ascii?Q?OtMXn+SXN++YUL5W8PUZ7Zt1e3lhLnEK5csmJ+ovMmf9ZFZ5KO/Bz21TxRfe?=
 =?us-ascii?Q?xQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41daadae-8e6c-4f13-d579-08dc12f71761
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 22:46:03.7671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /bytfcnMkPNHY+rDTo7QodMQGHrgHzbHTmkeiyqOPGQfDxAqLN98kKmL9OBKM8lJizGHlr4G2VzpR1a1F7WWjERW1wlFLTPjedITuXy4Oyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8447
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

Hi Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, January 10, 2024 4:34 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [RFC 00/15] VBT read Cleanup
>=20
> On Mon, 08 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com=
>
> wrote:
> > This series does the VBT read cleanup. The series introduces new
> > intel_vbt structure to cache and collate vbt related info. Vbt
> > read from different sources viz. firmware/opregion/spi/oprom
> > needs to be cached for debug purposes and handled accordingly
> > during cleanup.
>=20
> Mixed feelings. I think the goal is good, not convinced by the
> implementation.
>=20
> First, i915->display.vbt.data.foo is just too much depth. It was
> borderline too much before, but now it definitely is.
Sure. I will cache and store the parsed fields under the same structure.

>=20
> Second, whichever place allocates some stuff should also be responsible
> for freeing it. I don't like the idea that you have different places
> allocating and then you have a combined cleanup to take care of the
> alternatives.
Previously, allocations were happening under spi_get_oprom_vbt and
oprom_get_vbt but the de-allocation was happening immediately in
intel_bios_init. Because we need to cache vbt we will have to free the memo=
ry
only during driver remove phase.

I understand what you are suggesting here, the problem that I was thinking =
is
how to determine the sizes without extra reads, your series does it in a cl=
ean way.
 Will use that way to peek into the presence of vbt's in spi and oprom.

>=20
> Possibly the first thing to do would be to put intel_bios_init() in
> charge of picking the VBT. Stop looking at opregion directly in
> intel_bios.c, and instead abstract that away. Also move firmware EDID
> loading there. Move debugfs there. Etc.
I think you meant firmware vbt here. I will rebase my work on top of your w=
ork
of opregion cleanup and come with a new series.

Thanks,
Radhakrishna(RK) Sripada
>=20
> The opregion code could still figure out what its idea of VBT is, but
> intel_bios_init() would the place to ask opregion code about it only if
> needed.
>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
>=20
>=20
> >
> > Radhakrishna Sripada (15):
> >   drm/i915: Extract display->vbt_data to a new vbt structure
> >   drm/i915: Move vbt fields from opregion to its own structure
> >   drm/i915: Cache opregion asls pointer
> >   drm/i915: Extract opregion vbt capture to its own function
> >   drm/i915: Init vbt fields when read from oprom/spi
> >   drm/i915: Classify vbt type based on its residence
> >   drm/i915: Collate vbt cleanup for different types
> >   drm/i915: Make intel_bios_init operate on intel_vbt
> >   drm/i915: Move vbt load from opregion to bios init
> >   drm/i915: Move vbt firmware load into intel_bios_init
> >   drm/i915: Make oprom_get_vbt operate on intel_vbt
> >   drm/i915: Make spi_oprom_get_vbt operate on intel_vbt
> >   drm/i915: Make intel_load_vbt_firmware operate on intel_vbt
> >   drm/i915: Kill reduntant vbt_firmware from intel_vbt
> >   drm/i915: Use vbt type to determine its validity
> >
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 348 +++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_crt.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
> >  .../gpu/drm/i915/display/intel_display_core.h |  16 +-
> >  .../drm/i915/display/intel_display_debugfs.c  |   6 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |  16 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  19 +-
> >  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
> >  drivers/gpu/drm/i915/display/intel_opregion.c | 165 ++++-----
> >  drivers/gpu/drm/i915/display/intel_opregion.h |  13 +-
> >  drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
> >  drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
> >  16 files changed, 348 insertions(+), 279 deletions(-)
>=20
> --
> Jani Nikula, Intel
