Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2397040F6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 00:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE84E10E2AD;
	Mon, 15 May 2023 22:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12AB10E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 22:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684189598; x=1715725598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+xjYKlepP8XVtiiTm+UvmWyBoQe+OvYVrL1CAHxiFmI=;
 b=BF/iDafavpC1v+vfN9HF0B7W45mUTcx2rLCZ9lS14DW6fn2HEiAGGOB1
 WLD/wBcxMV/9ieyFjRfhB8w4s66hsf+tvl8aKG6BL39OWT/Jsmp8n2rnh
 GLStvZP+SQcuwMtNwMl0m1b6QYn6Wc0OFw5TQWNSFrEV0apL8X9o2s9iO
 0syEOwrpPHnp8h0Xe74nhTbSLO6FkWEEb4JsSX7uq1yMfUPG0R/Kaz35c
 LhiW21tyO9jNzJpAWEiFWg/a8ZpWMyXuBn2bECzZj+IEixbMJV7FLTtJa
 PjmgK0Yj7B6V8VEu0svOt670pWjWU/HjbAU3jyKEgeekRvnmYQ0cJFvgI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="335867577"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="335867577"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="813152802"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="813152802"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 15 May 2023 15:26:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 15:26:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 15:26:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 15:26:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaMg+dEOipWSaeNSe2IDPHo6bpHPe7IOSeQEAqVqMFsvSfSZk3m1jzAcHaoI7BGqZITb68OT2HxQdEF4YcQTLOdnrBVUdAXvFeMPoE0YgTDFvD4nX+46Sz0n0KdMkGYNR36rTJdNZ6zigalWhju5jXlLrPlY502MVdzfpyx1uX3PkA5Ty/wn87q2rv5/6F75ATeFwMj/MOmVh1pfrhavjnopkTNu5v+xQA2FdfkxFb2mCTyhRNzujzcTUQccwO/BCZE4+fQlPo6lFiCGt8qS2lxlwo2zrkqZ5JPfSw/AtQlqm2aZfuwElXnjv+qEwclR+UDqTcPVxhs+0xDRcFpPtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tL3zb+xHuPIXqs9ZdfxjeREptS+sPmZPExXkpFK60J4=;
 b=TNUg2YAKGhJ0JhCA0OHcLbZcR6XiLqEnk77m4QH7+UGTOmRoqCml6/rYh2v9SDnmQdnU2lhtlzeskmkokokLBMEQouUU2pZQynbgV8crEGETK7mwcLSqORJDzXStmbv4UxtYRQGk/c59FGlkuXBdL4K/Q9qLydMRoXx3vPhWKZEhqa05YdRdIZdVkMb7fggWCfQP/k2qGDXb5n6CiT+14t/p6rBcaJtfwHFFd+w5/gGL9I2PpYAMY8YLy0oYNO4C4VCMX7F4ieK23zyAKsotZoCx3voev+L/Dqm0bK3aurLitzNXUjFnEfDBF2QnSDrCXyXpPPmcFWck6zkcEg3SKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS7PR11MB7931.namprd11.prod.outlook.com (2603:10b6:8:e5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.29; Mon, 15 May 2023 22:26:32 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 22:26:32 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111 to MTL A-step
Thread-Index: AQHZhUDeX9fx/xGh+US3XYGMgaQOaK9bbQUAgAANAwCAACDCgIAAA57w
Date: Mon, 15 May 2023 22:26:32 +0000
Message-ID: <DM4PR11MB5971F73320A722600EFFA54087789@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
 <168416187402.13184.12797174790557715354@gjsousa-mobl2>
 <DM4PR11MB597193BE801E39B1A1FDE4A887789@DM4PR11MB5971.namprd11.prod.outlook.com>
 <20230515172823.GJ10045@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230515172823.GJ10045@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS7PR11MB7931:EE_
x-ms-office365-filtering-correlation-id: 10fa0006-59d7-40d2-af92-08db55936f99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AeUdVb8pjQrSEzU/yEUBtAr7tKbsymZv7n/bWkF7A0g1o/a3ZANZsKFRVcetN8KmnONgVoNQqcbheDnILO7PTb71+Obm4FRd0R0WTABhIjELMpZsL8VERNy5FpgZQUK/iykpBkFewu9s9pXQH0YOoX9rgUUpP2ZccQy5ucHE5f3EJJ42neh3ZVKoTO+aYyxhrEzGyCf6EZiZ/AJpgq0qkwehKOCx7TJ3susUe83MOp6gd50PyeglZxEPOTn1eQTHokYO1z4c0EBfxdOg/WJyL1uty8XDGKm3FdbtzTDni0AKZe+lI9w3yeCxUKJnP6k4OTsT9SndcrdUHcZD6zrwKqAJoJFqdB6AFwwf+NLUd3l0Uvyo920h0K+18khSMhjLu+tQcQHN9SMjziLFnHO9/AoyUO+jlughn9rENxLdBzrDndCk3yMJaf4CNOqAeBE4DDMq1PmkLz3JyvTx8pzqpyVQ0icyvsuQXPD5iZme++Zpg0woCs9/P4O+g+QRo/9ZC99COuGmfmVLT77PFOwblzJbRmprVt53M+4Ys4Okq+nRCBgmWbaBLPED1Ug1KvOjZxjC6HQG49UOfNX8+KNxeb/dzFmlMNaQrlXXDMaorgMJhbXfKDN0CVkCFTgLRT3I
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(39860400002)(396003)(346002)(451199021)(71200400001)(82960400001)(122000001)(55016003)(38100700002)(107886003)(186003)(26005)(53546011)(83380400001)(9686003)(33656002)(41300700001)(6506007)(8936002)(5660300002)(52536014)(6862004)(8676002)(2906002)(478600001)(66476007)(38070700005)(66556008)(7696005)(64756008)(76116006)(66446008)(66946007)(54906003)(6636002)(316002)(4326008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?08H63CG0IkC9Vq8LH8a05weyb/unbdhd4mjh6dMfgg7pvzLDDpsGNsyPViCH?=
 =?us-ascii?Q?rEpDTinBC8SlNBL043GhaZ9TWybRJP2HONzj3eBx5mOiFPq8WGfUGywwRRMW?=
 =?us-ascii?Q?mB2azFqGaJg49+3JyBLd5sS/nW3sWwKZm6Jw3Jp1eLkSsCf59oInsCNnkMiJ?=
 =?us-ascii?Q?Sai+rgaxZxaf00HrY1ZTaYlNbV4MTH1B4IIb5TfcJzCeXFmUwJCyNucnPtxq?=
 =?us-ascii?Q?WdN+74snkLpvA5aVQcZzCdeFiMmD5wR+wB8rPXJuTKTvYieXitZiczPKKBAP?=
 =?us-ascii?Q?R2cGDBpSZ88GACjNLM7NpYLGdwY8Pu2duZedmNYXFBfiUb2Etd6cyma/zppw?=
 =?us-ascii?Q?VNcV5bOl/0/+jSJrzTO+fD+pBbBpHdGCXLQBrgONa4jQ3PiFsvzs1RkJ+WZh?=
 =?us-ascii?Q?/QTcUFGkcHTDRuDHBnvvoU1FY3vzKG7lj2i75GiKOnEHAhbV8IujE8aakIXR?=
 =?us-ascii?Q?ysWiYWQOLbNGCCqp5BeM5HdMQw1dtj91auUqeFb2CCrOlKi1Y/8bm0gM9kMr?=
 =?us-ascii?Q?ZDUtNONZbCd1tCeksvi/OWkAAD2UkQsONx4cg4nm2zKGUWmeqt3W10rzSh3u?=
 =?us-ascii?Q?EjLdFjaGLclpI/vbxCvrhFzpWpj/3PWcD2VDyYuop9guJzlww49yFp1Qj268?=
 =?us-ascii?Q?KgH6YcVAGcCHQYi4RNatztpKSpoP+/IuzCGmF3rBBNDiGeTI+dsyRTlGE3Y6?=
 =?us-ascii?Q?+dG5Tq5REWXG88g8Z6cIWoDF6AOTgvlM3+xyKXGQz8oH4rapQScynmVmPpME?=
 =?us-ascii?Q?FlKY+0fUq7Ue3SU/qxmF28w/g4Mpl7Su2D22ukTl+t+TG/GbKFtVZlAYkOgu?=
 =?us-ascii?Q?7wubg+BlyRsZMKBxKtQAFaNwUys73bxzuC4zfjZjDHTDnLuo4/o17BlfXcIr?=
 =?us-ascii?Q?2bjII+zVsm/Vj/lsDzNT/ckD9+lrYs4IkbS3/kUZPdBRdiUNtLx/K6MmVQpR?=
 =?us-ascii?Q?GakisCMxOByG0o68jyu4zFbV6ZQ/tuL4wSI3N3+CmNTMbJw9deJsidk8rzeO?=
 =?us-ascii?Q?dLfEYH8L9maSmp3jvcoNaHsGWxuHWFygrDk0QMyxoFVR+OWAH/ObL9rbQ/FD?=
 =?us-ascii?Q?XSBmPNU2swf6vjO9LL84OMgHXtj56ky6lAyLIH5ufKSwxzcR/nDPBgE0kpvX?=
 =?us-ascii?Q?TaDzuYxSnLAVSaIkeEGKmsw3RWIoGAVKb1itHp6VH+WlYv3W0V2NP4S3vf6V?=
 =?us-ascii?Q?nlq9NveMAeEUKgFwC1hdM2xcoJTWtbUygBy5rbpB/vcc4vTH3rEacZN9H4/n?=
 =?us-ascii?Q?nP64J2KHhr81tCKLtgzMcqnQvlAza3t+hytiwzaXnekc1F5i79XpDICz/ij9?=
 =?us-ascii?Q?jXl19lpMra/1SWC8Ig0ylkAfvqZwbdARKAwKERra/1Y6MdToeLQX0ZMw7Yal?=
 =?us-ascii?Q?16sf5mkO7680UHD9Ga5d5FPe2Rs2JeqrIZF5pkkQsm49s/48b+F/eOmzHVnS?=
 =?us-ascii?Q?s4N8FR2r+5kxAxoEJKSyKyHqUgjDisB96zwBQhzAsUPx1j/2lP7LQf48ApWk?=
 =?us-ascii?Q?cMIoTFaTbGdzutXH1JUlVH5ieT4HxYHqDZE6iUAhHZ9KT++Z3xvdygVj/nen?=
 =?us-ascii?Q?4sE+skO2YKQsENM34f/5M2rNs/D1RjcJpWQ2iQgn5WFnigLdI4ecoYRJe8Tb?=
 =?us-ascii?Q?0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10fa0006-59d7-40d2-af92-08db55936f99
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 22:26:32.3543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2DpmD+/qPLvWEtvy2imzf6fC0GGiAfb5LxX5u2zRdtLzxOjEqz8i0nDHKmZCuNDzeU3laxzFkaw61SZeGpBpfFZ7NgNSzQJaaY/hXS51TQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7931
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111
 to MTL A-step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, May 15, 2023 10:28 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: Sousa, Gustavo <gustavo.sousa@intel.com>; intel-
> gfx@lists.freedesktop.org; Justen, Jordan L <jordan.l.justen@intel.com>;
> Kalvala, Haridhar <haridhar.kalvala@intel.com>
> Subject: Re: [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111 to MTL A-
> step
>=20
> On Mon, May 15, 2023 at 08:42:25AM -0700, Sripada, Radhakrishna wrote:
> > Hi Gustavo,
> >
> > > -----Original Message-----
> > > From: Sousa, Gustavo <gustavo.sousa@intel.com>
> > > Sent: Monday, May 15, 2023 7:45 AM
> > > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Cc: Justen, Jordan L <jordan.l.justen@intel.com>; Sripada, Radhakrish=
na
> > > <radhakrishna.sripada@intel.com>; Kalvala, Haridhar
> > > <haridhar.kalvala@intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>
> > > Subject: Re: [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111 to MT=
L
> A-
> > > step
> > >
> > > Quoting Radhakrishna Sripada (2023-05-12 23:14:37)
> > > >The dg2 workaround which is used for performance tuning
> > > >is needed for Meteorlake A-step.
> > > >
> > > >v2: Limit the WA for A-step
> > >
> > > I think what Matt meant in the review for v1 was that this commit sho=
uld
> > > be rather about the tuning setting rather than the workaround itself.=
 As
> > > such, maybe we should change the commit message so that it focus on t=
he
> > > recommended tuning setting, i.e., instead of "Extend Wa_16014892111 t=
o
> > > MTL A-step" as subject, we should write something like "Apply
> > > recommended tuning setting for ..." and give details.
> > >
> > > That said, since we are focusing on the tuning settings here, I guess
> > > this could be squashed with the second patch and we could add a note
> > > about DRAW_WATERMARK needing Wa_16014892111 for A steps of MTL.
> >
> > There are 2 aspects wrt. DRAW_WATERMARK. One that is a workaround
> > which is applied on each context switch and is only applicable for DG2
> > and MTL-A step which is what this patch does.
>=20
> So just to be clear --- the workaround doesn't directly ask us to do
> anything specific with DRAW_WATERMARK.  What the workaround says is that
> *if* we wind up needing to change the value of DRAW_WATERMARK away from
> the hardware default, then we need to handle the save/restore on each
> context switch ourselves since the hardware doesn't process this
> register properly on context switch and will lose its value.
>=20
> It turns out that MTL has a tuning setting that suggests changing
> DRAW_WATERMARK to a non-default value.  Since the tuning setting is
> constant (i.e., it doesn't change at runtime based on other factors), we
> can ignore the "save" part of the workaround and just hardcode the
> "restore" part to the value specified by the tuning setting.  But what
> we're programming here is still the tuning setting, it's just that the
> way we implement the tuning is adjusted by the workaround's guidance.
>=20
> It might make sense to swap the order of these patches --- make the
> first patch add the tuning setting (in the normal manner) for all
> steppings not impacted by the workaround.  Then come back and apply the
> tuning setting in the special way on the A-step hardware to satisfy the
> guidance of Wa_16014892111.  Or maybe it's simpler to just ignore the
> tuning setting on A-step entirely; that's a pre-production stepping of
> the platform, so it's not really going to get used for performance work
> anyway.  If we don't bother programming the tuning on A-step, then we
> also don't need to worry about the workaround either.

Thank you for the explanation. I was inclined to drop the WA but we do have
B-step parts in CI which have A-step GT hence trying to keep this around.

I resend the patches swapping the order and adding better explanation.

- Radhakrishna Sripada
>=20
>=20
> Matt
>=20
> >
> > The other is the tuning parameter setting which is applicable for all
> > of MTL which is a onetime configuration Handled by the next patch
> > during ctx_workarounds_init.
> >
> > - Radhakrishna Sripada
> >
> >
> > >
> > > --
> > > Gustavo Sousa
> > >
> > > >
> > > >Bspec: 68331
> > > >Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
> > > >Cc: Matt Roper <matthew.d.roper@intel.com>
> > > >Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > > >Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > >---
> > > > drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
> > > > 1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > >diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > >index 81a96c52a92b..9c1007c44298 100644
> > > >--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > >+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > >@@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct
> > > intel_context *ce, u32 *cs)
> > > >                                               cs, GEN12_GFX_CCS_AUX=
_NV);
> > > >
> > > >         /* Wa_16014892111 */
> > > >-        if (IS_DG2(ce->engine->i915))
> > > >+        if (IS_DG2(ce->engine->i915) ||
> > > >+            IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP=
_B0)
> ||
> > > >+            IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP=
_B0))
> > > >                 cs =3D dg2_emit_draw_watermark_setting(cs);
> > > >
> > > >         return cs;
> > > >--
> > > >2.34.1
> > > >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
