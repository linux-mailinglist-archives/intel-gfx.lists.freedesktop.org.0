Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F11640D3A0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 09:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0C26EABF;
	Thu, 16 Sep 2021 07:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B804D6EABF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 07:13:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286189660"
X-IronPort-AV: E=Sophos;i="5.85,297,1624345200"; d="scan'208";a="286189660"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 00:13:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,297,1624345200"; d="scan'208";a="651465413"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 16 Sep 2021 00:13:15 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 00:13:15 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 00:13:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 16 Sep 2021 00:13:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 16 Sep 2021 00:13:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jN3pYiJ4iF4CwQrBTZ88Zqqii2wbU2dIx8b1uSzg4Szpl8KLZHkP4htfl4DeAgFsPFaATnfbmazzGFndRguXFu98IefAoCwdTAcrxlTpPR0p4U9Qrq0ylv8ioepni2UqAeDbYLzS8nBH3lA9pmO26E7TWn1Xl8HANvCrMoqFiWwCYBF2UHBKPmp4kr0GTNrEJe9gS7XZ2LTpl2+x6kQyrxW/xW32T5+GWoaGRkzXTsV+4pTErQNX6nxo3kk9uPaj8a2G5N6xpH2Q4rDu6mj5PUntn5CROl1Fni+gKeplp+dMS+InVG+jg+puYuHhytv64i9bGHX1OJ9HGWNwgJSVRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=f740CmYS74McT96zKsXkQ1MTKMl/JpQCPekzjrhz1yo=;
 b=Bj0u/ASTh6XOfgIsTVwIWeu/Del44T8tGLjxXI4e7oodWvbEQVbxSDdq3c8GG3SpgvrkxRuaqF9x7UfeOykd4h/rlzz4KAIaQLyqPqn4VP9aIGqqMY2hbKnPE6+AxC0DPPhGX6CXbuwEkwtiNRElW2K79K8s/5DLZusveFwvcM/dhlV0oQhwuxQsyfYaUhpvxIsniYoIiCcwIpU94Rs/ckzaM9MksCk9Az/YBuCustXjbOjbpiYh1TC5V00u48zKbSQzToAmchEcaJNcyccgn6pH0ktec+O461Np9xuvMNE7sfC+KUqjqhADew4IQltftnq/JNniE3y2dQes7d5jVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f740CmYS74McT96zKsXkQ1MTKMl/JpQCPekzjrhz1yo=;
 b=nURBBHiIuRKuvOFNjNWtdWG4111v+rgemjeoda5evK6t8NRyAAXo4/yVmXwDBM6CvHFFDb+Cmn4qjFFi9BzglCVk5Wxoyl0cZFw9O3UiMmC/tyFM3i8jkZbFZVAKfK403e6fgNZi3GSQ4gsal1Hwnr/h2JHZpq5zJdghH/1fORk=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3791.namprd11.prod.outlook.com (2603:10b6:208:f9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Thu, 16 Sep
 2021 07:13:12 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558%6]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 07:13:12 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Tang, CQ" <cq.tang@intel.com>
Thread-Topic: [PATCH V5 1/5] drm/i915/gt: Add support of mocs propagation
Thread-Index: AQHXoKWZSDykXwECNEyTaIkScgeWuKukhSgAgAHNofA=
Date: Thu, 16 Sep 2021 07:13:12 +0000
Message-ID: <BL3PR11MB5746C15238097B64D29FE5FAFCDC9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
 <20210903092153.535736-2-ayaz.siddiqui@intel.com>
 <20210915033902.GF3389343@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210915033902.GF3389343@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62ffbc6d-7049-4fe4-058d-08d978e1722b
x-ms-traffictypediagnostic: MN2PR11MB3791:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37915F70F3A56ABB782D2A70FCDC9@MN2PR11MB3791.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uOy6Mc3CL7CMUWm04+JbrO5ImGyNWpwYUhdeRsql6+jeaP/tJ2kC26WAaAa3UGLpdxRFibH8l2hO6fjtzKMRc1cd39diVtD9JcqjN3a5ez6cZs1ztzby+x2+9CUmYmwZvYBtNZxI5v+pV5c/+OL1XKaiq6bC9nrbf9rFGyKZMy1gYZxDRn3d5ApQM6laGV23ztweP0NB1gyzkOisXc+g9oFi2chNLnH7qMi1bEmaiedS/3uUeRcgGaroJqnFWT5I4Q0vYEqQcrKC0qZgN/GhOfWpnJqE5shkQ0UnafwekIEMuyz5pfXNLaz2TfzI2lzlQaZExR8GspQIdEpCqUi1xw1ZRbd2IJoN7y+VRggHA29uNc0aKdAoa6CK5ITb7CV4NsjNRUQ7pQzSG5S279w6eZuTnpIjr5vdVFGgpe1u4cZjBwuZbyxUVor2zpcp6l8XtJ3zuLBLMyp3K3v0vNFJF5RcnPjTxYN3t5IsBaUXnGZcKCEFyKzpd4fS0hHvF4mYHKq90ZVxnInhVMLnNv94Jm2zaDnJAXEJJiBtxAtEfGkTuDbyl7mHQyTUXFJvAm4mlrvOMBhOcrg8tKy2Y+ZlfU8335urb9DcnM5amsxMhMixKIdLlsw9JdI+41Zk6NFuepYjwbws0D3+5nOAIY5lTXU0cgFWEeu9sExdk0oFHTm/63ZzY987lAljAVugS8tTo2EBmLW4zV/rNhHPWwcS60gKDK1PVjUuG11iF3ml8GI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39850400004)(346002)(376002)(396003)(83380400001)(6862004)(5660300002)(107886003)(26005)(478600001)(8936002)(186003)(52536014)(40140700001)(7696005)(6636002)(54906003)(38100700002)(122000001)(66476007)(66446008)(71200400001)(33656002)(66946007)(76116006)(64756008)(66556008)(53546011)(8676002)(38070700005)(55016002)(9686003)(316002)(2906002)(6506007)(86362001)(4326008)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H8wz+z79CtYnP9hYQVPERVukLpRIeXisxcD2vf1C45HXcruo329fAQ5dy3cT?=
 =?us-ascii?Q?ustmL8PAScweBBpHlklTk51s9C6DlGC4QnDxLrJmhUibrZfimIr4rd8RCRbi?=
 =?us-ascii?Q?7LJ5B5uCljWnGlzgDtZy8e3coMMOOd1M9MIWHEif+oXXqa1lGllgrNO5ZEqH?=
 =?us-ascii?Q?NwtBpOH4eL0TI6iiMy/M/w4/pjAYaRiTAiOYCVd6gu97G9xfnSNwZbMWOppz?=
 =?us-ascii?Q?5IzZq6IZOnt9W7mRWk3b6RR+cWybiuMWpO3eybb4suO6Yf7/+dsfzxXo2VSE?=
 =?us-ascii?Q?JaEBB/2C484Pk9bwyRcxLxvcyB6ij36tNV+2K2X7z4oc8ljv0UnNzpqGwAaY?=
 =?us-ascii?Q?JpoKuqXP9s6/uGDqfYrA+zSilmVqKgXMKZ097AJllm4Yy2kQ4bY+98osfro8?=
 =?us-ascii?Q?Azw7NV7O6o6WgyGdX1P7pu8gOmskjP5qhF9Iq7Z7RoNDGewQy0ktVTZ11GE0?=
 =?us-ascii?Q?GFJLcAfXmccSHZ260iXolDnZPVpP7dxo+oZWcjtTHtHQ7LCi40i0KENfjSVp?=
 =?us-ascii?Q?jU7iMgliYfYsC9P6VM1vxXp7/HaIqBxmRBpNaqRjcEGQIehqlPR9TR6fT2d8?=
 =?us-ascii?Q?qhbOF2yNIcslpohSlurFp1fHDPkqnPgqT3siUlSNp5kYTHXK2mePybVk3+aI?=
 =?us-ascii?Q?t9PYt1m1npog5Y5REZtRC7IvRSeQDzW2xlZyCcMKw46dXYKivB1/VT8fV9ho?=
 =?us-ascii?Q?HexzdVpFs8UiT0pCLFeQwDfbKvwbwrrWKapWRMYuNRiWq3218b7BuQvWmTn2?=
 =?us-ascii?Q?26fBTB9j1F+5KaAh9PEzSVPxQyPwHbJ+E4Nnw58qMu+T1chfSBfgYfNEnIL5?=
 =?us-ascii?Q?ASGYaromkRVM65j70jyz9NCs5PzPyKPx4RqdU63wFApuiuag8+7yBO7zNffR?=
 =?us-ascii?Q?wtECzJJDxobs3ukXfsGZ4rqjwMQbC0a4D8xb7dtzBX2H8Y6uzg+BFfdcJQCF?=
 =?us-ascii?Q?runIJc4O1Lqjs3I/4b3wRm6ltcoL5Nmh99l+zLVwSIvq0L8C3o7Atw87hxZL?=
 =?us-ascii?Q?2PcYSyU1NhqXYWhEMra8RpLtfjth0VOa3zwqjsXULLkF4oEWJZBlITDZMSmT?=
 =?us-ascii?Q?A4fHglwTjRP3wwQxux2HY6qxJq96fzkcfhLoiUHUBkiUSAgmgSDaOw3wtoFE?=
 =?us-ascii?Q?+DZdSU8vQXpr0GT55Xnr/zjs+tdX6458+VQ/EUQyy5WTy9qTWxtTjn76M8Jx?=
 =?us-ascii?Q?xCJqqkQFMSoaS/t8WNIo+/ROapqOzkO6+iKYsHTSTSvbpZMtiKpbJ+0f/nNI?=
 =?us-ascii?Q?bK8xyPb+tCpwRN90+HejyZf3BPZ1RyHoh6Y/70LNqB5PWFN6c1qUpars6cTt?=
 =?us-ascii?Q?eaamEbl25C+2xPh53oXRQWd7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ffbc6d-7049-4fe4-058d-08d978e1722b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2021 07:13:12.6250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bu9G15UL+NN4UrNZZ7BULkm2I3Kn3VuMq/iMIHttrc9tna9rSdbGXigxIkTWYg5LCTnFNadZDgmFl5+Qw8hjtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V5 1/5] drm/i915/gt: Add support of mocs
 propagation
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, September 15, 2021 9:09 AM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Tang, CQ <cq.tang@intel.com>
> Subject: Re: [PATCH V5 1/5] drm/i915/gt: Add support of mocs propagation
>=20
> On Fri, Sep 03, 2021 at 02:51:49PM +0530, Ayaz A Siddiqui wrote:
> > Now there are lots of Command and registers that require mocs index
> > programming.
> > So propagating mocs_index from mocs to gt so that it can be used
> > directly without having platform-specific checks.
> >
> > V2:
> > Changed 'i915_mocs_index_gt' to anonymous structure.
> >
> > Cc: CQ Tang<cq.tang@intel.com>
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt.c       |  2 ++
> >  drivers/gpu/drm/i915/gt/intel_gt_types.h |  4 ++++
> >  drivers/gpu/drm/i915/gt/intel_mocs.c     | 13 +++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_mocs.h     |  1 +
> >  4 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 62d40c9866427..2aeaae036a6f8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -682,6 +682,8 @@ int intel_gt_init(struct intel_gt *gt)
> >  		goto err_pm;
> >  	}
> >
> > +	set_mocs_index(gt);
> > +
> >  	err =3D intel_engines_init(gt);
> >  	if (err)
> >  		goto err_engines;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > index a81e21bf1bd1a..6fdcde64c1800 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > @@ -192,6 +192,10 @@ struct intel_gt {
> >
> >  		unsigned long mslice_mask;
> >  	} info;
> > +
> > +	struct {
> > +		u8 uc_index;
> > +	} mocs;
> >  };
> >
> >  enum intel_gt_scratch_field {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 582c4423b95d6..7ccac15d9a331 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -22,6 +22,7 @@ struct drm_i915_mocs_table {
> >  	unsigned int size;
> >  	unsigned int n_entries;
> >  	const struct drm_i915_mocs_entry *table;
> > +	u8 uc_index;
> >  };
> >
> >  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */ @@ -340,14
> > +341,18 @@ static unsigned int get_mocs_settings(const struct
> > drm_i915_private *i915,  {
> >  	unsigned int flags;
> >
> > +	memset(table, 0, sizeof(struct drm_i915_mocs_table));
> > +
> >  	if (IS_DG1(i915)) {
> >  		table->size =3D ARRAY_SIZE(dg1_mocs_table);
> >  		table->table =3D dg1_mocs_table;
> > +		table->uc_index =3D 1;
> >  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> >  	} else if (GRAPHICS_VER(i915) >=3D 12) {
> >  		table->size  =3D ARRAY_SIZE(tgl_mocs_table);
> >  		table->table =3D tgl_mocs_table;
> >  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> > +		table->uc_index =3D 3;
> >  	} else if (GRAPHICS_VER(i915) =3D=3D 11) {
> >  		table->size  =3D ARRAY_SIZE(icl_mocs_table);
> >  		table->table =3D icl_mocs_table;
> > @@ -504,6 +509,14 @@ static u32 global_mocs_offset(void)
> >  	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
> >  }
> >
> > +void set_mocs_index(struct intel_gt *gt)
>=20
> Hi Ayaz,
>=20
> I overlooked it when doing my review before, but for non-static functions=
 like
> this we should have a proper function name prefix
> (intel_* in this case).
>=20
> Would you mind writing a small patch to rename this?
>=20
> Thanks.
>=20
>=20
> Matt
HI Matt,
 I have send a patch with above change in ML.
 Do we have some guideline link?
 It will be good to be
aware with all the guide to avoid such mistake in future.
-Ayaz
=20
>=20
> > +{
> > +	struct drm_i915_mocs_table table;
> > +
> > +	get_mocs_settings(gt->i915, &table);
> > +	gt->mocs.uc_index =3D table.uc_index;
> > +}
> > +
> >  void intel_mocs_init(struct intel_gt *gt)  {
> >  	struct drm_i915_mocs_table table;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h
> > b/drivers/gpu/drm/i915/gt/intel_mocs.h
> > index d83274f5163bd..8a09d64b115f7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
> > @@ -36,5 +36,6 @@ struct intel_gt;
> >
> >  void intel_mocs_init(struct intel_gt *gt);  void
> > intel_mocs_init_engine(struct intel_engine_cs *engine);
> > +void set_mocs_index(struct intel_gt *gt);
> >
> >  #endif
> > --
> > 2.26.2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
