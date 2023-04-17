Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 763B86E479E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 14:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503F410E0ED;
	Mon, 17 Apr 2023 12:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2AD10E0ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 12:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681734360; x=1713270360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LVDNebwaEIdlpnoltJR7s1qfGWGeF9LqB/rGKzaUGgY=;
 b=JT/ZPFP7kt9DHER+y4F7PG8P6y88yMGB9mBAphfxMFNHtqdBts4WgTO9
 atZbP4vmZ0UF9P77IE7dNZ70JOyz0eKTrjMLfOeMGvn8dI1XE+inPAwmR
 f+xs4Yn8+zxx1puLBEwag3hMNm2JFeG3GH6EDeUjiNyWJ5AxyXbDJYQb3
 IMGrXfgaTMEE4PcEqaImEZ+uUZllHREmGFYYC8PAitsXXceQ4z2yyiS/Q
 F/qJUEnt6rtaD9+YWjg8PYVO6olWzb3KKxX5xJQTiEbGBmqNGkDO0HuXA
 nXz7XDSmko7wzOfR9wO665cnc+1hdRyJx1Tp6CVjRGdUHB+t1/61ksJqG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="342371958"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="342371958"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 05:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640941708"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="640941708"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 05:25:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 05:25:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 05:25:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 05:25:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 05:25:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cnhX2WHyD6/oab1PdyQv/65CtOzR3NDecPHn5O+PqWNbe2wpicm1cktjFsS9Jrhx1oc/Rz3hxSQ10WpLEbrPFaTZq6oI6XhhaicZmMn1B5vBcbAkbJQnMgiJQ5mEG36rB8Qc+lqv95IwFoUGrU3p0IQ+eGd24XsteGtOPAwt2BQTQa3JVenC1jGoj9Hv1+GBhcwBvx2gIiJYmYEIwDriljnszyMPtkA1+SKotXbDCEtBzHkdvsDA6Iymz3Z0F73OcfCOwy3mE7JnOeyxxQvgdCe1VysaGidZwxbGCd5WAPSrQ3hc7GIqF3cZEr8EB9d/m0WfkDCNHMxMoG+32JkLaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKJB2OCmKJk2xdiAGJa3yUW+ooEqlSxRNFQth/jwVb4=;
 b=ISyS7ROLjITlR5Jk1lukWcxaYsv6KgO8k1r+7ZK7i/J9APFsUcDa7/0yLEfsxgSWiZVf7KF5WQoQDgg8WQbYr//GmtxaJ+Sh1GkJWV2nT3R+i+pMGd9f3znH7O4STrb/I1rE4TQV2/pPESb5jX70vPoHYnTBhlYePVl0GjI0ZrQOj+aqzjmMZa04KOyZYm2htYmJxpu702NCaVoTpMQRPlLgaBYgQ8e7mguO0CAd1z5TxVIttkyjaIxgul8ndXFQW5tvrNTa2p4qsbz2n9+QGwB7BbXOj6MhcgOHfDquTlwgWaICqNOY32mCpJTYRKbu8iqHZbJLXmGluqFbINqP7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7846.namprd11.prod.outlook.com (2603:10b6:930:79::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 12:25:34 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 12:25:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivCAAATIAIAAA/oAgAACTwCAAAi/AIAAA9JAgAADboCAAAgewA==
Date: Mon, 17 Apr 2023 12:25:34 +0000
Message-ID: <SN7PR11MB6750DBE164843AAD7A037ABEE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com> <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com> <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
 <SN7PR11MB6750A7954E47CF19AA16DDD9E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZD0zN66ryN2HqqYV@ideak-desk.fi.intel.com>
In-Reply-To: <ZD0zN66ryN2HqqYV@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7846:EE_
x-ms-office365-filtering-correlation-id: 18d12b5d-886d-47ae-4133-08db3f3ed7ee
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gm5mXdipumi1YiQTVuvynQlEpsVEecn+ST9oMzsVRSwTBSFYlyhoGLbOZ3/vReLnH32GiIf1j1E8QWsCpoFsrRKjdzZP25CguRGzxgNiCw7OdkLyniLnJEv+v3Xs7frDA/kgPf0jII3p8P7pC2tPsszZQGHgXVBeOvU11cGdFKgJ1RIlQfEtDRUkSdX6/4QRUJL9Ha39OABKb1xV3uqgxoczopoPUpH9cvo+zL8pTnvk3Bvh/4Ke1AqmywezPOgSuNY/Iq6I3EggUDfLd1Pm2Lu7PSJB7Cig+In7UO2Z61ow4WwrkEilOPvOba9jcbHciabnL+T2r4pCJrsTzu35TFZJVxlmVKX2/lOrsVfVuBUNrdY2hL3loEblLvyGDKj5H5muYSXdRKBQtwQ0IxMRxx52Vfm4+O23YrczvTd/Aa4nTOJnUAFKHsZP350hyN0X0DbTu6Zq8xsQwDxxzWSxi0gTtkhBemS1TAYSgHh9xSPK56fvLfaPqgzwK7T4iugEidi07hO7L7egMw5vzUi+548dYGLT+sx4LTvN+iZncd/SzhjnSKptMb4xCDAg7vN/ihgZ6k5LR2iW50GORLP/Gl3UOwCUGOH5rgdvf5dvFhZHiDEwjye/tBrJvHKJS4Xn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199021)(478600001)(71200400001)(38100700002)(8936002)(6862004)(8676002)(316002)(82960400001)(41300700001)(55016003)(66476007)(4326008)(6636002)(76116006)(66946007)(66556008)(66446008)(122000001)(54906003)(186003)(2906002)(38070700005)(26005)(6506007)(64756008)(86362001)(9686003)(33656002)(52536014)(5660300002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KLpsyBokpiijhEri8BGV7EjlC3DsJrhMsjpjOejJXx9yQhzmz+uQXgjMo5r+?=
 =?us-ascii?Q?4yYgYahX5UEFnMkSosX7K0bjlFqUOO+nM7Xzsnz/nM1xSmIRDVxBQ6vrdxWp?=
 =?us-ascii?Q?LbUKZz/uA5MSL/KVgC1nHdphrn/S3PahcM7Yol26gw7T7zyYQhRLSe6DwaQd?=
 =?us-ascii?Q?eOtiEiGTcDsdpGj27sLBu7K8tmshhWYYTE7xKb8ihx2Neq3+VFlbFhIghsrr?=
 =?us-ascii?Q?WbmOXod8Icw2PEKMaChJ6j/YZQ23oPArshVkYxCBwwiUh5AjNYJ3N/fPuBB4?=
 =?us-ascii?Q?XqZC8iYLg0kgU26YPXmsXuSoNQ3X7y4Ly7KH/7pow5nhY4/JCFc8lYGE6UoF?=
 =?us-ascii?Q?lOX+ZxcTkYDfBHbvKiJMv7EqKwI8Q4S1u2gMZMm2VROjc2M/vIoCUOSNH0aX?=
 =?us-ascii?Q?09YdrOgOigmmJEHS6lsqCPk0z2hjAaqcAxPIZ0Z03xXewA89x1UukxEqCHeI?=
 =?us-ascii?Q?2rv08ufmn/U278YG5PeTVInw6391ImPnEKT2MHvaHDsY4i6hDSCWtb0pPz/I?=
 =?us-ascii?Q?CuVPcLw3Cn2gvwte7BprONY0NwFGpvnvMoU/lQmXzO3in/i7s4Nr5h6yy18D?=
 =?us-ascii?Q?7x09xPLW2qt78MPPSHZU6Sr1XJhc/RaJ97Zz5E7GIQdtsgVNJwLsYMs2nI5q?=
 =?us-ascii?Q?AbBlE5JzUA8iP+qBDuzdLaeQntbYzQlwDfgtUBM36npk8F+TDlg/EeNHbE6z?=
 =?us-ascii?Q?WdtcPxL0NV/98zFmWycmfEUtzcYvaQguEj295f2yc6Vks66y/rOKhS11/Z8i?=
 =?us-ascii?Q?1qdOOs335FVhATcc2WBuTTlvmIhpdUv9a0ka6XtJxbsvdiXu6I4LL0RtpsuN?=
 =?us-ascii?Q?Wd7//FGcPeHhTZI571zxa1uBN1Df+iZBzcQEC6LL3R99VDFrSCM3+CQhCaxt?=
 =?us-ascii?Q?SeH63YoPFTgL/mW2tKdo2xbV/0WuKFo9sDUdCi3PlBZcNJ7rvpk30ezLiKnN?=
 =?us-ascii?Q?1mEeysxfGcVYdFNzVdmPIZNdA/3SP2OeXHxYYlYRYZejp/+re6/GhxhZ6Ij8?=
 =?us-ascii?Q?BzaJ6VyjPVBHpc4J1e/zOpDo1uw7s04RAKIJE8sJwyHWfVSpP49LfFTLbE7E?=
 =?us-ascii?Q?i4ghthciqy+neEwIEoA5fHvNyUYvK3qOmKJ0fG2v2/Q6gBvzD5q0E2tjzg2/?=
 =?us-ascii?Q?dIDidB4K7bBjdbdS/J8mWwLGL8R/xEQDjgup8WIkjnrOxI71wxNb9A89ypdW?=
 =?us-ascii?Q?AGZTnhwdWPg2xuQzT1DOJHKSdbzgcQl9HYiEmPddvx/Vs8i0Cudd1bonTUWL?=
 =?us-ascii?Q?KREBAZzzkdUxL4IKiCMyJPGs5kQ843FC2FLlkg96GgZHEvXFaCG/4tpzam5r?=
 =?us-ascii?Q?qUAEXNEQzARnrsHNOWZRjj+ccDjbH9delnSptZNFs4VbRUEptLrbi4hPOj3v?=
 =?us-ascii?Q?USqTGP/vZo66Avt0qWDH3kfqLvic9bZZ5rZQTNyv71i30NUDyb5k359pfKbJ?=
 =?us-ascii?Q?JM3FlOixIQSuMwmK2UTH4ihRJk5yJljHiFPv3EQkoEbkvMoqnRzCoqqU4zgl?=
 =?us-ascii?Q?tYhCiV4f9rbysdHj/OR2q40mY0Ih9VqkkXqJ0PquldJ8qSS5Q6k9BYEcX7gK?=
 =?us-ascii?Q?6CVoP3hm+xYDLnV8uEAcPfD+8K6ZzOSNES8BWeYM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18d12b5d-886d-47ae-4133-08db3f3ed7ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 12:25:34.5679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9txAw9Haoc9bbtneE14FEfAUrGJMU0seQTGO/+8/rLtyN7M0/9mSsUx8F8RdXrYLKY0mlDuwY7qSUoQeQPWhDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7846
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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

>=20
> On Mon, Apr 17, 2023 at 02:43:25PM +0300, Kandpal, Suraj wrote:
> > > [...]
> > > Adding a non-default enable_timeout to the power well descriptor
> > > would avoid adding more platform checks:
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > index 6645eb1911d85..8ca1f34be14c2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > @@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc
> > > xelpd_power_wells_main[] =3D {
> > >                       I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx =
=3D
> ICL_PW_CTL_IDX_AUX_C),
> > >                       I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx =
=3D
> XELPD_PW_CTL_IDX_AUX_D),
> > >                       I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx =
=3D
> > > XELPD_PW_CTL_IDX_AUX_E),
> > > +             ),
> > > +             .ops =3D &icl_aux_power_well_ops,
> > > +             .fixed_enable_delay =3D true,
> > > +     }, {
> > > +             .instances =3D &I915_PW_INSTANCES(
> > >                       I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hs=
w.idx =3D
> TGL_PW_CTL_IDX_AUX_TC1),
> > >                       I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hs=
w.idx =3D
> TGL_PW_CTL_IDX_AUX_TC2),
> > >                       I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hs=
w.idx =3D
> TGL_PW_CTL_IDX_AUX_TC3),
> > >                       I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hs=
w.idx =3D
> TGL_PW_CTL_IDX_AUX_TC4),
> > >               ),
> > >               .ops =3D &icl_aux_power_well_ops,
> > > -             .fixed_enable_delay =3D true,
> > > +             .enable_timeout =3D 500,
> > >       }, {
> > >               .instances =3D &I915_PW_INSTANCES(
> > >                       I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
> > > .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT1), diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > index 62bafcbc7937c..930a42c825c36 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > @@ -253,6 +253,7 @@ static void
> > > hsw_wait_for_power_well_enable(struct
> > > drm_i915_private *dev_priv,  {
> > >       const struct i915_power_well_regs *regs =3D power_well->desc->o=
ps-
> >regs;
> > >       int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> > > +     int timeout =3D power_well->desc->enable_timeout ? : 1;
> > >
> > >       /*
> > >        * For some power wells we're not supposed to watch the status
> > > bit for @@ -266,7 +267,7 @@ static void
> > > hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> > >
> > >       /* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. *=
/
> > >       if (intel_de_wait_for_set(dev_priv, regs->driver,
> > > -                               HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > > +                               HSW_PWR_WELL_CTL_STATE(pw_idx),
> > > + timeout)) {
> > >               drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
> > >                           intel_power_well_name(power_well));
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > index ba7cb977e7c7f..fd5acf68503e1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > @@ -110,6 +110,8 @@ struct i915_power_well_desc {
> > >        * Thunderbolt mode.
> > >        */
> > >       u16 is_tc_tbt:1;
> > > +     /* Enable timeout if bigger than the default 1ms. */
> > > +     u16 enable_timeout;
> > >  };
> > >
> >
> > How would we make sure that this timeout only applies to ADLS in that
> > case as that's whom the workaround is for?
>=20
> The HSD is for display 13 ADL, that is ADL-P/M/N. The ADL-S power wells a=
re
> described separately in adls_power_wells.

Right sorry meant ADLP so how do we make sure this is enabled only for the =
required
Display version

Regards,
Suraj Kandpal
>=20
> --Imre
