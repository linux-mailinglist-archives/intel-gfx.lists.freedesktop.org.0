Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B33178A48C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 04:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA9510E0A6;
	Mon, 28 Aug 2023 02:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8B010E0B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 02:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693188995; x=1724724995;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SKShen8HOgECdlELD0DemhgLdAHpslc+yxz2TxsldWs=;
 b=Pp8C9SUQJAWg0x5iBl5IxGcrR303vFVjDvLxO88wUQfxyxyD19lvSkiQ
 HHv8327htLFEeeRcqXf9zQXgEkGh9oyfygTCUj6erkIo4OwVmVWz60qdZ
 D4J61ozI7t/jAQk+KpramsBRqpHelI1t5DFsqFNzVWxWEnYwob8IlQbmK
 Za0RMhcqFWJWvv4FcCoCV9wgJmm0EcZsn9bp6KSUGok6VhF6NhkRTcayA
 mOdodXekSqpbAoiSjzouZnc3cbmDUvGHwzEtM6zMyTdTDnO4Hv2osHQAD
 sisYxWhG4whpxlv9ETqlb+WDvuYrdWBykqAORxvNqlrqzddNqiiI51M/j Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="372393662"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="372393662"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 19:16:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="767501755"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="767501755"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2023 19:16:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 27 Aug 2023 19:16:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 27 Aug 2023 19:16:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 27 Aug 2023 19:16:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=moJDZkonH2c4O8a0MB9tNlKlUsn+7xp4gkWWV00q6ORaptCm/noE0KLdIOCGn8vfRniYvz6aZH+8QzPUGoSZT9d7JouG0LE2ZgoaPvSFGwoSKvlGFxWHeBuzjerpvYH015MOSkd3CkjPmqK/N6/lHjkiRbP9uBs4pten1xEZLZUAYik+CJEneJYKRnEvzRhD8tmtumqhhNSJrtRjJvgxqyjEjcbo9CsXKbeqmnpBMd85W0eNFFBY/ENw6aGxs0fIhZrQhKjoiUv9oGakNJtnHYYjXTzH8XwSFWkt0t9isCGvkS27kSqhiQTzeux4AajhXWPoZuyUw/wUGw0IT1ilRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PT/t/CBGQONM/BIJIo/Zsxcnpo9FBZImTwYIrpc8itA=;
 b=ZczVmqMWQciwJdU98DMAcQw1zmpONPG5+1MCNUWAN+G1DjqU6PNOk/EkDNkzDiIINVCUTT4WuUfbHQZY1Fi9KBhcvfxSX7vc3qumGeeEl7INKKZFemKvrtC2cnOyGAu71qQzvuHpzX2gsJ3R3mc2QpVJIZXU3C5NpAK6Qcy06w7cum4amffbS3yOaaKsCrlfBhXAIqN8ZW5SnpCd5KwXOrtjZ5Px4WdgwArnPkKKeUhGAQyY+smy3LEUVNk/MwupbcpdFpphnyTjX7D7cTmh6g+Enhl7bjLlcqK/t7f3MIfgNNm+uplmkMpPVIxqRXfz4LbrHjF5IhdjeyhtBmhLlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 02:16:29 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 02:16:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for
 fractional bpp
Thread-Index: AQHZ1PIvly8x2ZIrzEuT+6SXcw6VV6/848eAgAIbi5A=
Date: Mon, 28 Aug 2023 02:16:28 +0000
Message-ID: <SN7PR11MB6750C00E3BD226AA128807FEE3E0A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-7-ankit.k.nautiyal@intel.com>
 <SN7PR11MB6750E957C7B87FEB5221D25EE3E2A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750E957C7B87FEB5221D25EE3E2A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW5PR11MB5788:EE_
x-ms-office365-filtering-correlation-id: 9485fcec-e8f7-4552-44d7-08dba76cc9b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UhadD3Pn1MhruYeWfqip7kJjAtKqy99T9qax+cul9/hMt/rZ29FzTz/6XP4XBXxSjI2e8iFG8ZcEcuZyg0m+p21RWuscyLBatc3H8GmZBZ0HsgPblwD0CfuhWPjk63Y4jt8MtBk789gEDk7T83qQg7zsckOkmIkRu6fCNCg4wfRamr0bzEOkYmUFWsxGvC2Bd4Gql6TlI+JUegHPTL9o9W3uW13NSv1ujK2DcNKdEfTJJtYIhdXSK8oTToP5M1bQWwNLAVvTxM25Ao+Kcy48DLlDjXzo5TkxBm51AdbxXRxpI05mAYDR0i4tOTHTyxRlZqABWAQsEX+2puOGqtuXv+shwGsQFS5PpKv2VYQMma3pFo+9Vk7f14hUwkuVDSlL6eCQHZ1/9PHnFBk/HKQnJN4sy2oRiniKT8obECJPT9FrIGGwY4NYzEcoGqTD4i1aqf+C7+kiCXq5xU2VgPbm2Ml9Ty5nut/Y0eFmw+sasCpR8fk9jjB8x5ciaTHEKR+Zb5fv7zFYO0UKluE39oi36TcHqoaOaHsVoVJvfSmEhfJQdMxUF5qoSw3k3MW8wJ34FNSTSLygHeGJQwzma/B0RAES9XoaWZVN/TWa5VDxCtmCuF92M1+3shWfv0Ud6H78
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(396003)(366004)(136003)(186009)(1800799009)(451199024)(6506007)(7696005)(71200400001)(9686003)(55016003)(33656002)(86362001)(82960400001)(38070700005)(38100700002)(122000001)(2906002)(26005)(478600001)(83380400001)(76116006)(41300700001)(52536014)(66556008)(110136005)(66946007)(8936002)(5660300002)(8676002)(64756008)(66446008)(316002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZBcT20+yR2L9N+ZX7Yn6Mtp95Xt3Nwvx6VMMmo2ZzeoPsRJxhjxfDGKeG9LO?=
 =?us-ascii?Q?kNdePlgF8kp2V6bCyZJ/HkYlzlqrCzdyb6wQnVziHXbrUQ7gfkJqojUkvyac?=
 =?us-ascii?Q?yN28Y52Kdzk8e7rNXdpb8X+Th44i/trFAyCQlqg3Ef6GBEyhHDSps7iY7qvP?=
 =?us-ascii?Q?NhIJyoJx6ORJCcuQImOXvC0/jSVi1zB71VYgmIEqn0j0lXNEKX/Lt3bV17xj?=
 =?us-ascii?Q?YrPZheMbxd49yYbzLAfk4PVknzj2Q/CeV6ps15cNhjb9hJfkbUUo1c3SSrde?=
 =?us-ascii?Q?mCDMWTDP1Butl1b9PRpwaUK3MBgnJeGYza7eAxb/v9BKblYFD9zTYDysgP8I?=
 =?us-ascii?Q?d/1hqYw+VgFr0YExw1D1RKrMd1R2XMf2MaNut+fk4WspV7TCO3YOFzIo2PtL?=
 =?us-ascii?Q?MQ9NmY2yEHpraiKwrPVEbjkNDafSS4YolQszSamU5Z175699Yy4JWNn3Ds06?=
 =?us-ascii?Q?CYtMCnZAPnUSLdC3elZGVz2g8qxGtN07FKrN8zgM4ba6jTXMy+CAyt1QMSu/?=
 =?us-ascii?Q?Ls820554IfYvkccvMDGqeKQQMlZikZyGOWiQ4l3GG0gG7M0Mi38uWQyFp0oz?=
 =?us-ascii?Q?2gWr1WXn6WfZZsY2PCFMVNIRjSru/Ptbgsnq/ddw5bl/ZAGSlsnp7aie8hfl?=
 =?us-ascii?Q?vAIRXZWEiExfaZbnQBeybBw9nMDizqaVGopUtba+kTuGF5do1fcbpZQL+M+v?=
 =?us-ascii?Q?VuA8Pb4riPOwLWn1nJ/EJM6znfDPPSbf9TzMLsvvD6tvqChY128l2Vle6dOi?=
 =?us-ascii?Q?dq2u/wcQb+dfiMtnfKY5mwthwOGuAv9A26Q+yH+mNk9qvb5HHfy1cXkJ6Mha?=
 =?us-ascii?Q?BwvOrDbeH30bzyULZ5jveQPvAnWt/FbhXKytWOu3m7C5jC7PU/xrVEj1Dl/S?=
 =?us-ascii?Q?gwoSbc2rmQb9VARuC0+bcNjlMrjmezT4K3UBzszwfBCjh2bNy1oU3UFg0clZ?=
 =?us-ascii?Q?5KQqzt4a93xhvu7o+RL5pFtnDpc41q6P9zQMRA0SvNB1W9ngLkwB0ZCSch5H?=
 =?us-ascii?Q?8yFDMY1n6/d0XOdb0Uqmc3uBtT2nmwSbZpFM0wEVDbwqkzHPShLK3SLPM5uI?=
 =?us-ascii?Q?45oKjykvy9zfF2lXZYngVRH8Fh251JYAhf8nQxgVBkgBJyPyUE/z79pl2BIU?=
 =?us-ascii?Q?bNYhlrrWhq3tebBgPsoSGl+y9ONjP0Lay1/9ZdhKivW1zGu763yAtlOeX9ts?=
 =?us-ascii?Q?6iYV4J3uyjsP7FYwBPf8pf6v7pldcJnJZJC3a1R80hixnDGWwutNllVlbQZX?=
 =?us-ascii?Q?W8dFctIOLH66R+qM9W6F4BjYWZ/h6P5eB0s6sBX3S0sOptUmQHTVdc0VhyQv?=
 =?us-ascii?Q?crA5i37IEagC2JugWV5pWc4cPdp1FtfQd1Xx5aQBjJm20iWNqUtqeB2kSnHm?=
 =?us-ascii?Q?7n/Ezp5fBLQ8ASxXmzsvDZXZb7Bnl0O+0MG6zbhMjAlzMErIgzLsbowfaqni?=
 =?us-ascii?Q?9sGrS5ou3SX6VhE2N47t2mDCfeeWrUsbdvEhjlPw1DoH1+D4KG0utwT/jB/4?=
 =?us-ascii?Q?BzRiTqzRsrv78B5LAQSG+BfqFQSBa1rlqAEUB+VoqT2Cw9uNk8+zGZJJ0e3f?=
 =?us-ascii?Q?bAww2LoV/SpNyfZQWZW9PFD2hjhinoO9AId/N1P8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9485fcec-e8f7-4552-44d7-08dba76cc9b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 02:16:28.4913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BMfldjbUbjK/8BLqzQxWy9l9bdfrI6dEMf0uoYJWfcbL2shebQlZ+MNg+fafIPLJHwgpP3KhH1gsz0epcqMe1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for
 fractional bpp
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

> Subject: RE: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for fr=
actional
> bpp
>=20
> > Subject: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for
> > fractional bpp
> >
> > From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >
> > Consider the fractional bpp while reading the qp values.
> >
> > v2: Use helpers for fractional, integral bits of bits_per_pixel.
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_qp_tables.c    |  3 ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 23 +++++++++++++++----
> >  2 files changed, 18 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> > b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> > index 543cdc46aa1d..600c815e37e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> > +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> > @@ -34,9 +34,6 @@
> >   * These qp tables are as per the C model
> >   * and it has the rows pointing to bpps which increment
> >   * in steps of 0.5
> > - * We do not support fractional bpps as of today,
> > - * hence we would skip the fractional bpps during
> > - * our references for qp calclulations.
> >   */
> >  static const u8
> >
> rc_range_minqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_8BPC
> > _MAX_NUM_BPP] =3D {
> >  	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
> > 0, diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 2dc6ea82c024..4bd570fb0ab2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -77,8 +77,9 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config
> > *vdsc_cfg, int buf,  static void  calculate_rc_params(struct
> > drm_dsc_config
> > *vdsc_cfg)  {
> > +	int fractional_bits =3D dsc_fractional_compressed_bpp(vdsc_cfg-
> > >bits_per_pixel);
> > +	int bpp =3D dsc_integral_compressed_bpp(vdsc_cfg->bits_per_pixel);
> >  	int bpc =3D vdsc_cfg->bits_per_component;
> > -	int bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> >  	int qp_bpc_modifier =3D (bpc - 8) * 2;
> >  	int uncompressed_bpg_rate;
> >  	int first_line_bpg_offset;
> > @@ -148,7 +149,13 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
> >  		static const s8 ofs_und8[] =3D {
> >  			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> >  		};
> > -
> > +	/*
> > +	 * For 420 format since bits_per_pixel (bpp) is set to target bpp * 2=
,
> > +	 * QP table values for target bpp 4.0 to 4.4375 (rounded to 4.0) are
> > +	 * actually for bpp 8 to 8.875 (rounded to 4.0 * 2 i.e 8).
> > +	 * Similarly values for target bpp 4.5 to 4.8375 (rounded to 4.5)
> > +	 * are for bpp 9 to 9.875 (rounded to 4.5 * 2 i.e 9), and so on.
> > +	 */
> >  		bpp_i  =3D bpp - 8;
> >  		for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> >  			u8 range_bpg_offset;
> > @@ -191,7 +198,14 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
> >  			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> >  		};
> >
> > -		bpp_i  =3D (2 * (bpp - 6));
> > +		/*
> > +		 * QP table rows have values in increment of 0.5.
> > +		 * So 6.0 bpp to 6.4375 will have index 0, 6.5 to 6.9375 will
> > have index 1,
> > +		 * and so on.
> > +		 * 0.5 represented as 0x8 in U6.4 format.
> > +		 */
> > +		bpp_i  =3D ((bpp - 6) + (fractional_bits < 0x8 ? 0 : 1));
>=20
> Can we have a the 0x8 as a #define rather than a direct comparison to 0x8
>=20

Also maybe we can have a function/macro which takes in the integral and fra=
ctional
part and spits out the closest integer
something like DIV_ROUND_CLOSEST but that won't directly work with this cas=
e
but I do think we can repurpose it for our use case.

> Also isn't what was previously present doing the same thing Sure fraction=
al bits
> weren't taken into consideration but they would still fall in the same In=
dex.
> Anyways the bpp taken is the integer part so I thing no change is require=
d to
> the formula.

Also scratch this comment I had another looks and seems logical to me what =
we are doing.

Regards,
Suraj Kandpal

>=20
> > +
> >  		for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> >  			u8 range_bpg_offset;
> >
> > @@ -279,8 +293,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	/* Gen 11 does not support VBR */
> >  	vdsc_cfg->vbr_enable =3D false;
> >
> > -	/* Gen 11 only supports integral values of bpp */
> > -	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> > +	vdsc_cfg->bits_per_pixel =3D pipe_config->dsc.compressed_bpp;
> >
> >  	/*
> >  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
> > --
> > 2.40.1

