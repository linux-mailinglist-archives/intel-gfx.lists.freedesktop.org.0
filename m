Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 686A15A4364
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 08:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9103610F0C2;
	Mon, 29 Aug 2022 06:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B29410F0C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 06:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661755818; x=1693291818;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=izqNXliMnS6d5E49xpvPornAypyIfIOfD0YWTl5MXNg=;
 b=lfpfS5qotwVzcdfd+UmttvaqAfePHN/Hx/xDjgdUpvKpDkgv/5GE0o3f
 55e0jKpYTqtQfGP5pEESIcrbADKA43Yz6NIR3VrUjwSlpgP8LVg9GDHsR
 Qzm+WW6KaGU58fwoI+3Ajs7C/XTVAUExrinyGCaxdXwSwU47D7EsOEZYM
 Ii0XjIlzRodRSzUVKLL3F1NiG8t8pnopL+AE+oYgPN6+mFa19cDXuRA1o
 1eLCSoAzSuhIRneGzOThpn9c41Z//y+o5C3GQUmRdgllz/0v6Q7QDYczu
 Mzdu1dGHZDcd+JyBpJnoWQ6/r54WbyAHS9Mc31T6VRywHD/5j4pI4iH4W g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="274573547"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="274573547"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2022 23:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="644317788"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2022 23:50:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 28 Aug 2022 23:50:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 28 Aug 2022 23:50:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 28 Aug 2022 23:50:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 28 Aug 2022 23:50:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnOnGMJn9esgbjQelnZbp9iFs1E2JJ6gjFsJEWCqO5ux9prqk0kNBdewmqXyF5HoXMbGFhaUIiKjMwQdbq7yCiExA5LcEhVN8jYY0pAxwXu+1ZLutKcuXxenWmY1qGIsmIV+fKdavRvUG1ovlnRKpiAptiR/Yp/Lvx/C3HeFeHdMy49xqsyBK/6LRg/gOiylFHkDUW9MccqlkA8IedcWWsBlH3pG6p1HJG2T3OlTNaVPz9O6/JEdHgrvQHOOmoo2WFypRo6A7+IUGWFDbMCMcfiYhfM8CorxrSaqFhYRkmGUzzV41SOA4AGIKn8gMF/jniC0a5lF7Ofequ+yPSpWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/lAQZ9B+vXENNnuaCKjFvagvk1YWoKGuF80Bf/J3ys=;
 b=bUiz00y+vdkp7VwATlGsczzoq8iTgCDV1IVcucNu1GxIKDSvm60DyGR2nu/Pt+xVBYYNn3eR8q9mPICqRHNz8LaFhBxA/c5t2PNN+asLeAnpPTHuP4LptUlQX1BUVs4HIvQCRne7g8U9p3xKwmxMAW55b9YefmsNcFYKEvjLxpHtShH+8tVV8MDkkaLlhhpZPe8rCe+RDS7Y3xL6ZleBRKfEl+LnFERpeiMLnr14uAEfA+Te13qoPbkMS51khdrJ78Igxcpu2CmfF5fFit58+92/GYTIyAlzEGNjt9Ps6MSDw5C2vEiDOAcZPNGQQf879PbDMY9qmQu/pr3FhkAInA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM6PR11MB3931.namprd11.prod.outlook.com (2603:10b6:5:6::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.21; Mon, 29 Aug 2022 06:50:06 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::1d17:ef28:d51d:6003]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::1d17:ef28:d51d:6003%4]) with mapi id 15.20.5566.019; Mon, 29 Aug 2022
 06:50:06 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915/pps: added get_pps_idx() hook as part of
 pps_get_register() cleanup
Thread-Index: AQHYpvp37+QmrbvCmEqrTXgvEl4PPq2c0+kAgB/GagCACPlGgA==
Date: Mon, 29 Aug 2022 06:50:06 +0000
Message-ID: <PH7PR11MB5981DB5A704F01E415C65CBAF9769@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20220803052944.28069-1-animesh.manna@intel.com>
 <87les5eoct.fsf@intel.com> <YwTV1oc0FK/RBsQ6@intel.com>
In-Reply-To: <YwTV1oc0FK/RBsQ6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aba1ddc5-225e-40a5-931c-08da898ab51b
x-ms-traffictypediagnostic: DM6PR11MB3931:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QXh6hPULvPVrUq8vx1tiBrL/vL1DRK636MFIunKcIUC3a1b7mvpTMt158CICdYDGuDxONJetxdVKpwowHBteNspYdCy22dNGI5UX0dzltuAaQ5qF3LxntjXBrkN/ACpK/nZDMxCVDlrcut7HYEPFH0HK6r4agGI7LRsX5lW542x7v5MvLHOsGtkol0u37oIEu65CNc/d/hJ2Xn4sNJHzaJNwdXZBVikLhStv38T8ZExUpZoQYCGM8WHSw1lQ52Qow8LrLSdmUsZAcL5WA3yxsh2VUmD57yHfn7e1jWclyNOqNrzU/raV4FmIlP4n5rO0U36evUqc4K2sXvCVyJUcLjTMaY3ierGG8gnjT3lJoB0NPI/Dm4jQOnysH8Iu3Z4+t7POiTPjLhEyKRholmbaOnVW3oDVGTG0AC9Tyx/0UHAKVWiRRhAIHFN8AzynIyE7bfN7SU1XeFD7dshMrfhe+Gvf1D0LrFgzps1aKR8g0erK8ajYWabPqu0rFKx+k4fhshEmbt8v5EILxL55Pii8binry/wUrX5WUs5Zw5ADbzpDRvxvScPoRdi6p3BwLwj7XTtmVLu4PDpukptj5ruIhf5XpyTSQAXVEYJiKWdCxX6zxt+GKiRS+FOuFfabAL72Je/R6Tdv97tWkm6rhNnJPHlFizZ4WWvCLD/zxXd98JQU4tHrTiW2AIFImYRtbHf6KO7N58qTcORpZGLTDJbaiOCMnlmLTH7KHMcRSEbQHmW4NmlEAG0s1k1Ju+r2M1/PkTQabn7D+5ixEb9wsTEKTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(396003)(39860400002)(376002)(366004)(83380400001)(38100700002)(66574015)(186003)(82960400001)(33656002)(110136005)(316002)(54906003)(66446008)(66476007)(64756008)(4326008)(66946007)(55016003)(66556008)(6636002)(52536014)(76116006)(2906002)(5660300002)(8936002)(8676002)(41300700001)(86362001)(9686003)(55236004)(7696005)(38070700005)(26005)(53546011)(6506007)(478600001)(71200400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2TlXtgBSt1XKRQiMeV6QjD/dGigcq04ZMSHfTMGrk2QN4LOpeU1B2QfQAx?=
 =?iso-8859-1?Q?iGEAliZqwpQmzMLwFQRtvDG1qxMDgMCBxCiwKfEcNjUYn/VAiZ8H5OQmk4?=
 =?iso-8859-1?Q?tnT0ld17UI4hivL4v+zVVvh/Gd8AiUBhJq84cSM5PgnTFCFZWQxEDXe5NA?=
 =?iso-8859-1?Q?lqFyDQChBGZiiMlKtWLFjNMkg3XDgIFClWunAFlT59b8X6LQKVpzPi53i5?=
 =?iso-8859-1?Q?EYhE3wXKKkoji2ISmyVvQvijJ+c/UT6XaDJOQfF3KqbBjggvcofLmxjaLl?=
 =?iso-8859-1?Q?Q3TjkmQ9uPYcviSmG6kt4hxXQ/UPAoeWAQ39iVPogtUizf1vI/13U3XEOJ?=
 =?iso-8859-1?Q?hRLfbFr5IYrYv0w0obRBRFen2DlSrcyN+nANIR7/rn5cD0i3wbW6dejRRD?=
 =?iso-8859-1?Q?HX295s4eF3zZNP7tqTrJFiCYFXWoNvGK3n36wIJUKonaTfMf8D7c7xvaXD?=
 =?iso-8859-1?Q?66GNbHCHFr1i6/wchIvemf1bbo13QqOob/M37LErJQ+g3XYsjSzkFoBmas?=
 =?iso-8859-1?Q?pMBaKqN3OueD2v2AcZZi3p9CETOHE6HGSAlfdYUi6yjDjSnn7zUmGaSNBt?=
 =?iso-8859-1?Q?xnrdhdNUrQC3oVInzwF4KYkJi2Fj59PekrSB0XFfsh+5q5H3bTT3KRR4uj?=
 =?iso-8859-1?Q?KsBJiX7EORcm7gpkJ6iJJfB6sViP1rlQUmRO1sE738lI/ojy9mu3a6Sh1x?=
 =?iso-8859-1?Q?7/KCrqoi1mOCTvrs1vurHzgMypS2kvyq4ZMXuwAj7m0+NbVvgwkXH01UJm?=
 =?iso-8859-1?Q?f3TnZiTehb5WKa3M11Gjx5QonPnTiv9T89dhIQzPcgVzBA8/tPh1dsYUOO?=
 =?iso-8859-1?Q?QTeiMKlgJOefqaVU+3wBoK1TwPB1oKS8GsMnt0eiMAuIJFKsyJ/T9snZQS?=
 =?iso-8859-1?Q?EnQg4NsLjEoVsx0vakvDXJd0LcF9rsdav4qJQneH8twsp0IukM62wLIvEv?=
 =?iso-8859-1?Q?QS4HoLaJFbVTgWPvzEMrqbTgg42MjODMvvp7OZ42y/zM5zxkxmKaoHgKkJ?=
 =?iso-8859-1?Q?b8zM5HHQGPobudwWHkv2qSs5QreDKQa0pa0lxe/ul6ZcI/tTLkzu5H3u3I?=
 =?iso-8859-1?Q?95FjhTQi5yjuJj7id3F7tTr0kEE0WPLwCQ2eh+G+Rdz9lsPnkcYsXJ37ed?=
 =?iso-8859-1?Q?ed2DDWkWjUpLuo6E6mFchnXn1gkrk5DSrL3HWR5gvtr1qQ3Fy2rFg/7dZq?=
 =?iso-8859-1?Q?HsLzdlZj+cJ8hJ1PVsYATLb580EKnQgTrqRwAgJ+x9zuIygb9yY7259HGu?=
 =?iso-8859-1?Q?zXZHrjYvZf2Y4JFk1Jxf8pHfcOacpya977Si1PLKvfLVoJzcizEx5U+pUT?=
 =?iso-8859-1?Q?lWVkbh8uI3Etkq1gAROlHmR3Vm+zXNsAEMBpbdyyRHlEiXdwitI4+AuaK3?=
 =?iso-8859-1?Q?gqgDWJFUMHTCKre7J2tbHk75XcKR0xxghMdw0hbH2AWwkpdGOdbInMQjS5?=
 =?iso-8859-1?Q?ZPMoGS3IUWAF9h/0Zo4pXhKvGBSPIWGWSRAPKOnd3MJuGD1jpjrh2NSdY9?=
 =?iso-8859-1?Q?3JYW5Xy3cHpG1cfuhkMF/NTislYcvSTr2aKcEmZH4jFCfY2QaZHsRMspCv?=
 =?iso-8859-1?Q?U9vpdSFCbyNps3OSgWARKW/JQfurhB/52ornh4txNaoDEtVYgiSJeaTXDM?=
 =?iso-8859-1?Q?3ZcCnT1NOpcg76ayFQg1vKC6EvQ9uJBYtS?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aba1ddc5-225e-40a5-931c-08da898ab51b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 06:50:06.3008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M2qYx21VdHUQEkCN6hUcu5+iTFe9laMBqOWwRseWsn7Rym2JaZL7qInBH0XkERE1YqXzrvBKtsR6KCCsiNw4XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3931
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: added get_pps_idx() hook as
 part of pps_get_register() cleanup
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, August 23, 2022 6:58 PM
> To: Nikula, Jani <jani.nikula@intel.com>
> Cc: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH] drm/i915/pps: added get_pps_idx() hook as part of
> pps_get_register() cleanup
>=20
> On Wed, Aug 03, 2022 at 11:13:38AM +0300, Jani Nikula wrote:
> > On Wed, 03 Aug 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > > To support dual LFP two instances of pps added from display gen12 onw=
ards.
> > > Few older platform like VLV also has dual pps support but handling
> > > is different. So added separate hook get_pps_idx() to formulate
> > > which pps instance to used for a soecific LFP on a specific platform.
> > >
> > > Simplified pps_get_register() which use get_pps_idx() hook to derive
> > > the pps instance and get_pps_idx() will be initialized at pps_init().
> > >
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bios.c     |  5 ++++
> > >  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
> > >  .../drm/i915/display/intel_display_types.h    |  2 ++
> > >  drivers/gpu/drm/i915/display/intel_pps.c      | 25 ++++++++++++++---=
--
> > >  4 files changed, 27 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > > b/drivers/gpu/drm/i915/display/intel_bios.c
> > > index 51dde5bfd956..42315615a728 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > @@ -611,6 +611,11 @@ static int opregion_get_panel_type(struct
> drm_i915_private *i915,
> > >  	return intel_opregion_get_panel_type(i915);
> > >  }
> > >
> > > +bool intel_bios_is_lfp2(struct intel_encoder *encoder) {
> > > +	return encoder->devdata && encoder->devdata->child.handle =3D=3D
> > > +DEVICE_HANDLE_LFP2; }
> >
> > AFAICS the encoder never really needs to know whether it's "lfp1" or
> > "lfp2". It needs to know the pps controller number.
> >
> > > +
> > >  static int vbt_get_panel_type(struct drm_i915_private *i915,
> > >  			      const struct intel_bios_encoder_data *devdata,
> > >  			      const struct edid *edid)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > > b/drivers/gpu/drm/i915/display/intel_bios.h
> > > index e47582b0de0a..aea72a87ea2c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > > @@ -251,6 +251,7 @@ bool intel_bios_is_lspcon_present(const struct
> drm_i915_private *i915,
> > >  				  enum port port);
> > >  bool intel_bios_is_lane_reversal_needed(const struct drm_i915_privat=
e
> *i915,
> > >  					enum port port);
> > > +bool intel_bios_is_lfp2(struct intel_encoder *encoder);
> > >  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private
> > > *dev_priv, enum port port);  bool intel_bios_get_dsc_params(struct
> intel_encoder *encoder,
> > >  			       struct intel_crtc_state *crtc_state, diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 0da9b208d56e..95f71a572b07 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1723,6 +1723,8 @@ struct intel_dp {
> > >
> > >  	/* When we last wrote the OUI for eDP */
> > >  	unsigned long last_oui_write;
> > > +
> > > +	int (*get_pps_idx)(struct intel_dp *intel_dp);
> >
> > Making this a function pointer should be a separate step. Please don't
> > try to do too many things at once. Rule of thumb, one change per patch.
> >
> > Also, this should be placed near the other function pointer members in
> > struct intel_dp.
> >
> > >  };
> > >
> > >  enum lspcon_vendor {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > > b/drivers/gpu/drm/i915/display/intel_pps.c
> > > index 1b21a341962f..c9cdb302d318 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > > @@ -231,6 +231,17 @@ bxt_power_sequencer_idx(struct intel_dp
> *intel_dp)
> > >  	return backlight_controller;
> > >  }
> > >
> > > +static int
> > > +gen12_power_sequencer_idx(struct intel_dp *intel_dp) {
> > > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > > +
> > > +	if (intel_bios_is_lfp2(encoder))
> > > +		return 1;
> >
> > This is actually not how this works. The bxt_power_sequencer_idx()
> > matches bspec 20149: "PWM and PPS are assumed to be aligned to be from
> > same block and not mismatch" i.e. the backlight controller id and the
> > pps id are the same. There are no requirements to map lfp# and pps
> > controller like this, even if it might be true in the common case.
> >
> > The problem is we need the information *before* we call
> > intel_bios_init_panel().
> >
> > It's a catch-22. We need the pps id to read the panel EDID, and we
> > need the panel EDID to choose the correct panel type in VBT, which we
> > need to get the pps id from the VBT.
> >
> > This is highlighted in [1]. The 2nd eDP (which is not even physically
> > present, only in the VBT, *sigh*) screws up the PPS for the 1st during
> > init.
> >
> > I think Ville had some ideas here.
>=20
> What a mess.
>=20
> I guess for the panel_type!=3D255 cases we could just initialize the pane=
l specific
> stuff earlier.
>=20
> The hardest case to solve would be dual panel with panel_type=3D=3D255. F=
or that
> not sure we can much more than to read out the state of each PPS from the
> hardware and try to guess if one of the enabled ones corresponds to our c=
urrent
> panel, and then try to do the EDID read(s).
>=20
> Or maybe we could just take a shortcut and reject dual panel + panel_type=
=3D255
> combos entirely. Or did we already run into such cases?

Hi Jani/Ville,

For enabling dual EDP scenario I can see vbt_get_panel_type() is getting ca=
lled for panel type calculation and getting panel type between 0 to 0xf.
Not sure in dual edp enable scenario will there be PANEL_TYPE_PNPID type pa=
nel.

Regards,
Animesh
>=20
> --
> Ville Syrj=E4l=E4
> Intel
