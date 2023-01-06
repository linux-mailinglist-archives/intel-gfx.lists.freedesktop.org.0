Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F8D66072E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 20:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F55210E8BF;
	Fri,  6 Jan 2023 19:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19AE10E8BF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 19:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673033645; x=1704569645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n9RgVbLmVyhqcxGbQ9StOee8ioV9KMdzolXUBxpT0gg=;
 b=Ll1fDKmXQ19nyfkw8cvUFYLYmiMR3qMCqAGI+w64YC9He+xxDOtdHoXY
 DtEkA+H1yT+laETiUy6QqRCYjW6C/TP8iZtTGZVqWlgIogNDbteHjRXM0
 YVTU+tfyQeT6RNSyBrkPH9EMc0j8u5Xqpmy0w6ig446dTHf7HSNBSnmcq
 65N2zXkZ9MCsmoc315zDsBd8qKA/9beq+jtpA/GUkuAnuu4Uf1yJ45ASd
 oKrSX6/VpRqLJ72NZL4VdpT0wP96U+CKoXfNsmXRY3QL6VpTa8+J2rNun
 fyadwlcg5UHaR7CGbNiXLTJUGldlHZPuzUj51gVHFgU4hDi2Avo0pp8H8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="408796387"
X-IronPort-AV: E=Sophos;i="5.96,306,1665471600"; d="scan'208";a="408796387"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 11:33:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="633576192"
X-IronPort-AV: E=Sophos;i="5.96,306,1665471600"; d="scan'208";a="633576192"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 06 Jan 2023 11:33:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 11:33:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 11:33:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 11:33:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 11:33:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNmBGhJQIM5LQGbvpK8KcEqSxv+lYEBsRsZOLrnUBOCj1SBdj1zfpH3sRzozuc52MbeXJCLPeMf6MGfOUsm+KnZlU7hson1z64RUw8XxlfgBG1gB1z2cz84Eo37YnfUukhBikxD4sFI4OGSm2+VzecZ1stj9mtXD7dGblvnQmlpTeD6eV1hdf9WEYjobUNAFGA1bd1ROi5jrKPsjSwC2zUyvE20CwhSHiQnO7axMINV7BqFNIZxh24EhKajlzYBthPpKFboixbbXoiiyP2XyIm4xn+cRB+b8fEi2y1mLv0uvphEbPDWAowoEC2vaG/7A/1XiNBNRq0nH4IDgkAdm+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2PPDwy2BE53FkfrLIqRkxrjYmGTh5ePvTTL0iNePL1Y=;
 b=U8D1yOA3bDHy8A3qZXGKhe1O1fJtZo2wqW7NQ4detXMdpfqZpaQhF05YEGI74vmyt89o+/9bN/8Hwhggj4m9GUBmqTzFt7vXs66E25pkj0HuH1p73xTzrd/jdb54s0dkP6U0UiKkPcbPDDzGhbFFnjY8jkE5wp2M3Ca2AclpQl7LYP9y2clMv0vB2T4bF00OC8yVbpUYa9SPRPkU1rN2sqXvQdTgWNKnOs2nP1G7yFlin8seUuRyxNQ3Xnfbgh4bH+TLcYdqovUWRYV9Vxq2IdSYssfA7cbBAWjK0L3SlDjbMwnBCsbu5mZDB2eBZ0y/pq7p4vXVa1xi8b2kGW7I2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Fri, 6 Jan 2023 19:33:47 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::7c2b:3ee4:6e6e:9a05]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::7c2b:3ee4:6e6e:9a05%8]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 19:33:47 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add initial gt workarounds
Thread-Index: AQHZIV+2k4I16FCnx0qbGtD+CG04U66RXAUAgABsmlA=
Date: Fri, 6 Jan 2023 19:33:46 +0000
Message-ID: <DM4PR11MB597132948D83C8458E3FA97E87FB9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230105234408.277750-1-matthew.s.atwood@intel.com>
 <Y7gcUuYD3zzThPQi@intel.com>
In-Reply-To: <Y7gcUuYD3zzThPQi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BL3PR11MB6411:EE_
x-ms-office365-filtering-correlation-id: d385dd78-6a17-41b2-f763-08daf01cee08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ieahQ5o+9y/Tx9GUe73z+/c9P/hioGEUEx7v9+4muZlAOkNHlbWKJxzj/sf/DPfldm7XSgOF/N7HEfwvWKIzNzHIlqmPTAAXw/U6x6nDJOsc2INF05xeR9B3qdB0fyGPwUCl/dq7Tu3LM5toKWejx+4o3mRCXXeyfBVG8gIuPe6vJ0pywxLm4xXSA0ElkmxKkMdG7cwGLDa2ye9r+07yvUrft1YnPSzacFxudn/qNXF0WRCZ7TrnaiuoGkt3EKGe96TB1xaQ4K1Pe2cT2/s01u6KvtqMbBu4gVHQB4eTsvliKqEvz7ieEqe2Tnhy94YJhESwuUc3C2oGrkpy3qA1gt6yoEuz5SNLwyPVz6H7AHJu6N7bHIVz6unKLgjkrZ+rQP+Uq/4UaQ7I9FAlzAePdddswn2O2BC86b5oiqvGeH9hrSsDBEkd53vwaO6TY9B5Ie1d5ocO59GyFg+VJXWEXIZDO4/1zKXRIeChJayy4SZa4F9PfSOwFr9EqvlPdCNwsmfT5avrd48LvWw6GkqxeTckoGbqG28Hrds4qYhrz8kiyLZP0jmkfGs0MXGNVwr5nOmTq6whQiPl/jS+N64hb+Q9Jun5o/atvA6JRVcYJM2211o/oNbVmpD0n3qWWP+Mn/78d1gEmdhOW2UvTyl1Jk4Z4RyKIKpC6GNkvAeltczF4XU9Gjh2l8nknSO6BgfVPutWKmQlf5SKZMMRcwDp8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(136003)(396003)(366004)(451199015)(83380400001)(33656002)(38100700002)(186003)(26005)(82960400001)(38070700005)(86362001)(55016003)(122000001)(6636002)(110136005)(66556008)(64756008)(76116006)(107886003)(52536014)(66476007)(66946007)(8676002)(8936002)(4326008)(66446008)(30864003)(316002)(5660300002)(2906002)(53546011)(9686003)(54906003)(41300700001)(7696005)(6506007)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KKNTp5Q/oCMjEp+MJQFeR4Mf1WhxT6SKw/ErocEIbfFlI8TxS1cjDswFVysp?=
 =?us-ascii?Q?CA2EwBPSEw0HZGAMGR93LOa41ep7P+X5L062NcryRzQRPFNmve5yBQaJ+Rz6?=
 =?us-ascii?Q?kFOGTmCSTRKAnwew9zrfk1X7JSiQw7IKncWvF2nUJvF6EKaNUCS+oyYzhNDF?=
 =?us-ascii?Q?Pj+vywbCEqi6RwZSELeFYgvuwVKfizC7GG0X/rEyIDoyfvkPHVytTsFYZHwA?=
 =?us-ascii?Q?ux2JcDe0dwAraTa2Z2VcUmlHQd0zcXeoOrOFZkfRs0OlRJnbGrYADw5Ot4ed?=
 =?us-ascii?Q?cy2gOkQDekZ4hkXqr6OJLoa+0vfpmoKoiiaNAC9Y69VXGUZxRiRObU7ssQ/L?=
 =?us-ascii?Q?xr/PEMs3LZOHk4veDzsWFoo73WP9+vXlomVTEycHLi8vPONf71aUePkett8T?=
 =?us-ascii?Q?iDehzzGvym/2G22y89z0xx2KpPJW1gBvPdeZ+sRL6OeRbzbIMWXmYRhLYdum?=
 =?us-ascii?Q?ianiq2clBuYmxWDdxAPMLVa1nzrNt7+Ksqqfnri2cdHEofzVFwNBSESYxvk/?=
 =?us-ascii?Q?paKQPJst3S/K2M6XMy9fpHsW58WJDdPsq8YXFDapi4RRLjqYzjY9w4xxth0h?=
 =?us-ascii?Q?K69FGoRJ8ux7q4XOk2T7cwD6gghUR7S3X42lVs5OU3cm99lFx9obc+SYu2aX?=
 =?us-ascii?Q?Y1s+Vn7eFhIp6qnjvdsPcVKmXiHU/sYAQuW96jkL4WkvcX67q3J7unAt+/Oj?=
 =?us-ascii?Q?7u3gKJa6fQ+ujMpoILTWncHhbDDQ8JNFMmVScCmPjHYRFPlOEzb2cRwSQ3jS?=
 =?us-ascii?Q?o8Gbm5QkxyN/qyTCdKxpikT6R+xcmcAVO0Pm2wDakJ0+9sGZHeJ065XhuIHV?=
 =?us-ascii?Q?BU4zp3A2n8H6W2Ulo2864TEs9wlNhQibM+56dwCHeJEqzriDUPVFOOodgE80?=
 =?us-ascii?Q?ic0DyhpvOdv/RIttwRsJZcUV4UcKjFLs1WOIuJLOJ5EPkOqG3bKBTTjKe9hQ?=
 =?us-ascii?Q?viuaLC+8+gHalx+hwNjRtyXoaMuOXO1c9VYAOQ4DTOSkt3nFRPA8bua7YOji?=
 =?us-ascii?Q?i7l+P0Q7rnptsH1eACsel9Y3H1WGMg01roYjdNxbN03RJDW/OrkAnLHnh1oh?=
 =?us-ascii?Q?6xblu6dIrYdEHMaKarbzKZlX68foKt9F5/HNikQ5v6aKV/Bx189UtZJceZP7?=
 =?us-ascii?Q?Y0NG59CYoLpMnoU1fePfcKHfi7vJWi3Ywq42XVcldOFGnTFXsxcVdQcwAbY/?=
 =?us-ascii?Q?6DdDOSHgFFnsk0icDiSRGB9R26Ze1Em1fjR7iKy16LK2UDobUTuD9i39XyEk?=
 =?us-ascii?Q?Uncrht2eadLKbrlQBGh5+Eac9spQo5DNdLRbfixX6KAIajppDnl5iWFVr8Q1?=
 =?us-ascii?Q?dYFCNFmuyqpIYD/eWGru8u93hrgBZwatmDU2Lj97+wnz2diltO2bIwLvPwlK?=
 =?us-ascii?Q?Xv8MnUaMkYzVgrvf16hqZGdcW+0wMXnF5CaVcaeDRUEPI1plfSxJImdAsWvP?=
 =?us-ascii?Q?IbVmzCfuEZaJbF5EFv9aJWOyK6FRQg4k76cNFbsYerrB+y1kshLMSYw4o2E/?=
 =?us-ascii?Q?G4TLtIrW/Ei9SPx9+ix9HdRWOzJKsE/q+wONbNiqOPJ8CavPHtgLu1Hndk1w?=
 =?us-ascii?Q?pciUK2cQmVJpTM01ZVSzHUMp6Teyd9jt07ZGI/J1OZXnLoES9L8bPJRkMLxs?=
 =?us-ascii?Q?zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d385dd78-6a17-41b2-f763-08daf01cee08
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 19:33:46.9349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQYgKcPCfYSrtVf8vofIWT6mtl2/5pSg0tP6zz4fGNW0M1DZVJpZqtp+duyLKhKsXHVeKb+ocG2k4W2aLznJguxxZU85k5EpM1YLwqFNtf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add initial gt workarounds
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pushed with the nit's fixed. Thanks for the patch and review.

- Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ro=
drigo
> Vivi
> Sent: Friday, January 6, 2023 5:04 AM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add initial gt workarou=
nds
>=20
> On Thu, Jan 05, 2023 at 03:44:08PM -0800, Matt Atwood wrote:
> > From: Matt Roper <matthew.d.roper@intel.com>
> >
> > This patch introduces initial gt workarounds for the MTL platform.
> >
> > v2: drop redundant/stale comments specifying wa platforms affected
> > (Lucas).
> > v3: drop additional redundant stale comments (MattR)
> >
> > Bspec: 66622
> >
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
> >  .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 115 +++++++++++++-----
> >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 +-
> >  drivers/gpu/drm/i915/i915_drv.h               |   4 +
> >  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
> >  9 files changed, 128 insertions(+), 42 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 99c4b866addd..e3f30bdf7e61 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -1494,10 +1494,12 @@ static int __intel_engine_stop_cs(struct
> intel_engine_cs *engine,
> >  	intel_uncore_write_fw(uncore, mode,
> _MASKED_BIT_ENABLE(STOP_RING));
> >
> >  	/*
> > -	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS i=
s
> > +	 * Wa_22011802037 : Prior to doing a reset, ensure CS is
>=20
>                          ^ you could've had also removed the extra space
>=20
> >  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
> >  	 */
> > -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
> > +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>=20
> this is getting hard to read, but yeap, this is the only way...
>=20
> >  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine-
> >mmio_base),
> >
> _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 2daffa7c7dfd..18ffe55282e5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -2989,10 +2989,12 @@ static void execlists_reset_prepare(struct
> intel_engine_cs *engine)
> >  	intel_engine_stop_cs(engine);
> >
> >  	/*
> > -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we
> need
> > +	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> > -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
> > +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >  		intel_engine_wait_for_pending_mi_fw(engine);
> >
> >  	engine->execlists.reset_ccid =3D active_ccid(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 41a237509dcf..4127830c33ca 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >  	if (MEDIA_VER(i915) >=3D 13 && gt->type =3D=3D GT_MEDIA) {
> >  		gt->steering_table[OADDRM] =3D
> xelpmp_oaddrm_steering_table;
> >  	} else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70)) {
> > -		fuse =3D REG_FIELD_GET(GT_L3_EXC_MASK,
> > -				     intel_uncore_read(gt->uncore,
> XEHP_FUSE4));
> > +		/* Wa_14016747170 */
> > +		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +			fuse =3D REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> > +					     intel_uncore_read(gt->uncore,
> > +
> MTL_GT_ACTIVITY_FACTOR));
> > +		else
> > +			fuse =3D REG_FIELD_GET(GT_L3_EXC_MASK,
> > +					     intel_uncore_read(gt->uncore,
> XEHP_FUSE4));
> >
> >  		/*
> >  		 * Despite the register field being named "exclude mask" the
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index f8eb807b56f9..8ad084bd35d5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -414,6 +414,7 @@
> >  #define   TBIMR_FAST_CLIP			REG_BIT(5)
> >
> >  #define VFLSKPD					MCR_REG(0x62a8)
> > +#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
> >  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
> >  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
> >
> > @@ -1535,6 +1536,10 @@
> >
> >  #define MTL_MEDIA_MC6				_MMIO(0x138048)
> >
> > +/* Wa_14016747170 */
>=20
> no need for the wa identifier in here.
>=20
> > +#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
> > +#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
> > +
> >  #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
> >  #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index bf84efb3f15f..002ba7c2b1ed 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct
> intel_engine_cs *engine,
> >  	wa_masked_en(wal, CACHE_MODE_1,
> MSAA_OPTIMIZATION_REDUC_DISABLE);
> >  }
> >
> > +static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> > +				     struct i915_wa_list *wal)
> > +{
> > +	struct drm_i915_private *i915 =3D engine->i915;
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +		/* Wa_14014947963 */
> > +		wa_masked_field_set(wal, VF_PREEMPTION,
> > +				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > +
> > +		/* Wa_16013271637 */
> > +		wa_mcr_masked_en(wal,
> XEHP_SLICE_COMMON_ECO_CHICKEN1,
> > +				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
> > +
> > +		/* Wa_18019627453 */
> > +		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
> > +
> > +		/* Wa_18018764978 */
> > +		wa_masked_en(wal, PSS_MODE2,
> SCOREBOARD_STALL_FLUSH_CONTROL);
> > +	}
> > +
> > +	/* Wa_18019271663 */
> > +	wa_masked_en(wal, CACHE_MODE_1,
> MSAA_OPTIMIZATION_REDUC_DISABLE);
> > +}
> > +
> >  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engin=
e,
> >  					 struct i915_wa_list *wal)
> >  {
> > @@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs
> *engine,
> >  	if (engine->class !=3D RENDER_CLASS)
> >  		goto done;
> >
> > -	if (IS_PONTEVECCHIO(i915))
> > +	if (IS_METEORLAKE(i915))
> > +		mtl_ctx_workarounds_init(engine, wal);
> > +	else if (IS_PONTEVECCHIO(i915))
> >  		; /* noop; none at this time */
> >  	else if (IS_DG2(i915))
> >  		dg2_ctx_workarounds_init(engine, wal);
> > @@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt,
> struct i915_wa_list *wal)
> >  static void
> >  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wa=
l)
> >  {
> > -	/* FIXME: Actual workarounds will be added in future patch(es) */
> > +	/* Wa_14014830051 */
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
> > +		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> >
> >  	/*
> >  	 * Unlike older platforms, we no longer setup implicit steering here;
> > @@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct
> intel_engine_cs *engine)
> >
> >  	wa_init_start(w, engine->gt, "whitelist", engine->name);
> >
> > -	if (IS_PONTEVECCHIO(i915))
> > +	if (IS_METEORLAKE(i915))
> > +		; /* noop; none at this time */
> > +	else if (IS_PONTEVECCHIO(i915))
> >  		pvc_whitelist_build(engine);
> >  	else if (IS_DG2(i915))
> >  		dg2_whitelist_build(engine);
> > @@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
> >  {
> >  	struct drm_i915_private *i915 =3D engine->i915;
> >
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +		/* Wa_22014600077 */
> > +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> > +				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> > +	}
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > +		/* Wa_1509727124 */
> > +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > +				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > +
> > +		/* Wa_22013037850 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > +				DISABLE_128B_EVICTION_COMMAND_UDW);
> > +	}
> > +
> > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +		/* Wa_22012856258 */
> > +		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > +				 GEN12_DISABLE_READ_SUPPRESSION);
> > +	}
> > +
> >  	if (IS_DG2(i915)) {
> >  		/* Wa_1509235366:dg2 */
> >  		wa_write_or(wal, GEN12_GAMCNTRL_CTRL,
> INVALIDATION_BROADCAST_MODE_DIS |
> > @@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> GEN12_ENABLE_LARGE_GRF_MODE);
> >  	}
> >
> > -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > -		/* Wa_1509727124:dg2 */
> > -		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > -				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > -	}
> > -
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
> >  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> >  		/* Wa_14012419201:dg2 */
> > @@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
> >
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > -		/* Wa_22013037850:dg2 */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > -				DISABLE_128B_EVICTION_COMMAND_UDW);
> > -
> > -		/* Wa_22012856258:dg2 */
> > -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > -				 GEN12_DISABLE_READ_SUPPRESSION);
> > -
> >  		/*
> >  		 * Wa_22010960976:dg2
> >  		 * Wa_14013347512:dg2
> > @@ -2944,6 +2990,27 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
> >
> >  	add_render_compute_tuning_settings(i915, wal);
> >
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_PONTEVECCHIO(i915) ||
> > +	    IS_DG2(i915)) {
> > +		/* Wa_18018781329 */
> > +		wa_mcr_write_or(wal, RENDER_MOD_CTRL,
> FORCE_MISS_FTLB);
> > +		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> > +		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > +		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> > +
> > +		/* Wa_22014226127 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> DISABLE_D8_D16_COASLESCE);
> > +	}
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_DG2(i915)) {
> > +		/* Wa_18017747507 */
> > +		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
> POLYGON_TRIFAN_LINELOOP_DISABLE);
> > +	}
> > +
> >  	if (IS_PONTEVECCHIO(i915)) {
> >  		/* Wa_16016694945 */
> >  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0,
> XEHPC_OVRLSCCC);
> > @@ -2985,17 +3052,8 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
> >  		/* Wa_14015227452:dg2,pvc */
> >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4,
> XEHP_DIS_BBL_SYSPIPE);
> >
> > -		/* Wa_22014226127:dg2,pvc */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> DISABLE_D8_D16_COASLESCE);
> > -
> >  		/* Wa_16015675438:dg2,pvc */
> >  		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2,
> GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> > -
> > -		/* Wa_18018781329:dg2,pvc */
> > -		wa_mcr_write_or(wal, RENDER_MOD_CTRL,
> FORCE_MISS_FTLB);
> > -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> > -		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > -		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> >  	}
> >
> >  	if (IS_DG2(i915)) {
> > @@ -3004,9 +3062,6 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
> >  		 * Wa_22015475538:dg2
> >  		 */
> >  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> DIS_CHAIN_2XSIMD8);
> > -
> > -		/* Wa_18017747507:dg2 */
> > -		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
> POLYGON_TRIFAN_LINELOOP_DISABLE);
> >  	}
> >
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) ||
> IS_DG2_G11(i915))
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index c0b5aa6fde26..1bccc175f9e6 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> >  		flags |=3D GUC_WA_GAM_CREDITS;
> >
> > -	/* Wa_14014475959:dg2 */
> > -	if (IS_DG2(gt->i915))
> > +	/* Wa_14014475959 */
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_DG2(gt->i915))
> >  		flags |=3D GUC_WA_HOLD_CCS_SWITCHOUT;
> >
> >  	/*
> > @@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  		flags |=3D GUC_WA_DUAL_QUEUE;
> >
> >  	/* Wa_22011802037: graphics version 11/12 */
> > -	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(gt->i915) >=3D 11 &&
> > +	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
> >  		flags |=3D GUC_WA_PRE_PARSER;
> >
> >  	/* Wa_16011777198:dg2 */
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index fe06c93cf6e3..b436dd7f12e4 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1621,7 +1621,7 @@ static void guc_engine_reset_prepare(struct
> intel_engine_cs *engine)
> >  	intel_engine_stop_cs(engine);
> >
> >  	/*
> > -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we
> need
> > +	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> >  	intel_engine_wait_for_pending_mi_fw(engine);
> > @@ -4203,8 +4203,10 @@ static void guc_default_vfuncs(struct
> intel_engine_cs *engine)
> >  	engine->flags |=3D I915_ENGINE_HAS_TIMESLICES;
> >
> >  	/* Wa_14014475959:dg2 */
> > -	if (IS_DG2(engine->i915) && engine->class =3D=3D COMPUTE_CLASS)
> > -		engine->flags |=3D
> I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > +	if (engine->class =3D=3D COMPUTE_CLASS)
> > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
> > +		    IS_DG2(engine->i915))
> > +			engine->flags |=3D
> I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> >
> >  	/*
> >  	 * TODO: GuC supports timeslicing and semaphores as well, but they're
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> > index 48fd82722f12..f742328c4d95 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -735,6 +735,10 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	(IS_METEORLAKE(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> >
> > +#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > +	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE,
> INTEL_SUBPLATFORM_##variant) && \
> > +	 IS_GRAPHICS_STEP(__i915, since, until))
> > +
> >  /*
> >   * DG2 hardware steppings are a bit unusual.  The hardware design was =
forked
> to
> >   * create three variants (G10, G11, and G12) which each have distinct
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> b/drivers/gpu/drm/i915/intel_device_info.c
> > index 849baf6c3b3c..05e90d09b208 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct
> drm_i915_private *i915)
> >
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
> >  		    &runtime->graphics.ip);
> > +	/* Wa_22012778468 */
> > +	if (runtime->graphics.ip.ver =3D=3D 0x0 &&
> > +	    INTEL_INFO(i915)->platform =3D=3D INTEL_METEORLAKE) {
> > +		RUNTIME_INFO(i915)->graphics.ip.ver =3D 12;
> > +		RUNTIME_INFO(i915)->graphics.ip.rel =3D 70;
> > +	}
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> >  		    &runtime->display.ip);
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
> > --
> > 2.38.1
> >
>=20
> with the extra space and the comments removed:
>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
