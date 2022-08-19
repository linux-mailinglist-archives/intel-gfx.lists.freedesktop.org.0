Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C885998DB
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 11:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AB810E304;
	Fri, 19 Aug 2022 09:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE3010E7D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 09:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660902379; x=1692438379;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Im6ZSVCnz1S+SrIxa1p+VpNVYSIREE1QiUcg7dbz/58=;
 b=jKYbYzfYZENcfY2Uehf803sL9V8gY6+SChPVtzVcLdZJhjun8pAVbEXo
 HLkXrCet0dxHNHIL6rSRzN1x3+qAY4nQ+wugQ/2JIEFy5B+d0SVKdJuhL
 QTaL3kcIgHYhWtAMGLDtn1uvpDiyqyvtqVbhb+qoY+Z3pLw55mrmmtB5M
 YJC42445fs4lvkYja2FOW1c+MH+cNitczxTAL+kIZ4d9mfLSYOpKsZyFL
 em8yiB75JgG9e/CP6UrVX0mhhJ/dAzm3VR3xS6hn0GWTHn91i8SBcVwQ1
 BWrV6SE/KA6AcaRC5ILgDKAOVOxbCVEA0qd6b+Ftcr9zXW+zBom4ycaxW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="379273301"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="379273301"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="697508571"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Aug 2022 02:46:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 02:46:18 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 02:46:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 02:46:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 02:46:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Evr+D0Ug4QgS+TAf8AM8aOV7w1H2MXAnoDWSnSkjv64YKzJnnWL/+Gf2xmwFoY8/nxYUGV+VILYGct/V2Ds4ygvwGlgXmA7HMKZybFD7/jxkfaQIKqp65+TvI5gWrB3RmAYxogzujNfUURmvhHL2oRr11Rgpi0pytqd1QLEHnlovxhVukVhvIOFEIx3LojKZC8iFOK15XpXataTowTkB3XvDoVH36tnCQlfvFIrk8GI/XtvQw+WXr5I9bBq5a8CRNhiPPJ2JABXudCZO670gYxIdN/+oYDxiSvROGd8IKAFvkXTCDqae0+aZWKQox88/OQPXwTgbJxhLCk+ir2jynw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSivS7xky3Mbj1SC/Zwxfm3CY/8lMms4n+4r6MajbE0=;
 b=auAkMzZdL+G2qoYau4LLEuASnJGH7gR2Hv8FeaG1FQd33TAsDlMmQ7yZn0aWU2pO+ZkVri1IoBoVmKouhWyUl/x7He0jVyNKQqVU/RKjhEKpCq12DvRLDY/hIRXClioioe6VFJDf9I8mJxRhF2ic/FCVnAnNa6b8zI1MSVOpSkEGgUkQnctYVT4982ixI+wt66QUKbx/+a8eKgLppQPevKWZk/6RqjctQDJzvlirGLwXsNf3iybbicjmYMatIaEI+SBmbfbGaQUG5/HiDrvkoS6ObfofVYdfvTvTmqwdVYcIHWPWaxRLn/0BTlos8ndEir9fYMwN2rTyXvMGHtTj7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MN2PR11MB4446.namprd11.prod.outlook.com (2603:10b6:208:17a::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Fri, 19 Aug
 2022 09:46:15 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::343f:1253:5ee7:228c]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::343f:1253:5ee7:228c%9]) with mapi id 15.20.5525.011; Fri, 19 Aug 2022
 09:46:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/pps: added get_pps_idx() hook as part of
 pps_get_register() cleanup
Thread-Index: AQHYpvp37+QmrbvCmEqrTXgvEl4PPq2c0+kAgBk+a9A=
Date: Fri, 19 Aug 2022 09:46:15 +0000
Message-ID: <PH7PR11MB5981D370E539EAABCD7D3A9FF96C9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20220803052944.28069-1-animesh.manna@intel.com>
 <87les5eoct.fsf@intel.com>
In-Reply-To: <87les5eoct.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 21036a2e-b99d-4772-e708-08da81c7a8a0
x-ms-traffictypediagnostic: MN2PR11MB4446:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QO2flyqw258gzXtr7KwYy0S7ccMsfRNVrhaOneEK4qyTSzQDFYMA8UsHVZBGgygqTrOzvnzg3MFqJOfGfMuXyEly+RGTXCboCfGfN8XGSmWZmARLXoVcF0ABU/EqWWJvOHy0DiVk/VKEY2T1sWtx+WPhev2zqkCnJR9EBlqrI5HzojeCwLJcOwQKC3aaxpaAoWXqnl3EI2NW5VmLeZ4H1S224HjIgkfaQ/BoVTQfbkCkObvZg7gR/PuCu2aCyXKSoamIEOaMl9N/pm5NtYLmdsggTU3SmzSQfp3DXY9ZUCfXB+karQopQhARj81MLhM+EkXW7/kym23u5OlWwLu0k9yzkd/lAj6Sb2wj9GU+LbjAzApi9m0gNtFy7CYXDS8P0C4vAumM2uGoGCKDT6ngrRvunOJRAK+wahlS2YpXyVgzawSjLFqMaa3S2mHEzu9uAhMQ/OeXGtQqeZmbvST81A/RfGLm4yQ/JvbvyrlQJKmDhgToxbIttIJ4wv0wTgvsHXPxGT04mkIHUCFGy3AD2MyVS/mOrBu0ebhEpskEQVdMqje2qu9HnqN5Qfyb+zTuOf0xhrmRkdoU7ShVUU1ZLzQs7Xfoy1vYAQU3YNgb+BaU48DEUL3ph7Nv0ti9uzRMIrwJnV6CMRbB8jd+kBXBRZFQ5ozRsM8omRLV8gxoADpN0ox0huz8sgEk3PeIrDdkrJ+sKqB1zI8U75FR/SuS/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(136003)(39860400002)(366004)(83380400001)(38070700005)(82960400001)(122000001)(38100700002)(316002)(478600001)(6916009)(966005)(41300700001)(54906003)(8936002)(52536014)(5660300002)(71200400001)(186003)(2906002)(7696005)(6506007)(53546011)(26005)(9686003)(8676002)(76116006)(55016003)(4326008)(66476007)(66446008)(66556008)(33656002)(86362001)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tpDGpkouNlL/FLHNUuwCMmzqWhWLaOLS0E/X8nFkObi8qeuHDgSuObJTw8tf?=
 =?us-ascii?Q?fhfo2almhEPMiUrEF+5X0yy44gALiFubyQ9r4ZmGCT8AELwBhJmveZ4N8ZG/?=
 =?us-ascii?Q?/kuZVs3cV4JWT3VN4iUg1hZdliJsIprj3ZyJDd/pod/T21nAKa1D6EExemVY?=
 =?us-ascii?Q?KQ66JR0qV6qJxf9ld9L5xUTd8eIm3ntO5MyAA5D5x7BSNkjGLP3rms73UYSn?=
 =?us-ascii?Q?3spP4LwpPfuKHUJbMqsh7KoIJ/vGLOYaIfgLXRwey5Gdpl/FoDYAegLeHP5W?=
 =?us-ascii?Q?ULJQvh7ZJV712jTn2rr1WFlR618rgWKu5Qcd731p8qO97lCS304MGClXYsjH?=
 =?us-ascii?Q?8t3ayPrLeLeP+Pak+XbmQP6q6NZlizNeQC5K23/Yi6G3fFV31oAbArPiJD7T?=
 =?us-ascii?Q?hcwMdYRZAhMRQH7iAn1bfN9WeVyullcwKqKklOhw12vZZPemq0IEfL99n9W+?=
 =?us-ascii?Q?zQ29xDlTBeBmNP5zKLBXtzCnQ851DT67qmiZundvOK8rs5/NX6xoPTzzKLu/?=
 =?us-ascii?Q?50WtqYLUjE//oaJPTfVA+JOrJbbG1R9GdPpLkvozgcWQVHa0KKN8qksGUiXk?=
 =?us-ascii?Q?d8hLnBGdpy3Y9sg9gxebc58KthGA/wsapGt6BCTMZ80UBLiMdouDmGt/XVxH?=
 =?us-ascii?Q?eOciDBctTMe4iJkT03PmzojfDk2GOIzJlYAVRLjKX1i8OVUKfrz3Y93wzesH?=
 =?us-ascii?Q?2Lw9jS5YGKkaDgFt7KJMXwOKAwuncdLZ90p/h8RQxGkHCaH40UX6mKdrhVx5?=
 =?us-ascii?Q?V66TcD5lXGYcgqTgwidI2E/6H+HoHwL2NWqf3BpPuN51gVg7kiOtzkGXq/M+?=
 =?us-ascii?Q?I8K1sR2kPAn8tv8NugMBXafNPP9oyeB/dvDHR7c4tu6wnc0o432aVPbQj1wt?=
 =?us-ascii?Q?OT6zr0g/REc5F+C0t4Id3B5lAqEmvZFABjxeazcEBmg1rmunl17OVRsZ0kqe?=
 =?us-ascii?Q?GzX50eAYVukQfUj0InODF/Hqi7sM9lbuH7huQrFurJSY0wg49BJhC22ivBxC?=
 =?us-ascii?Q?jWrrb5P5E+Z//iShR5sm4TgyPpcDtqf6u+Z0VfOeIqo9IYdwdQ5tGJ51XXgx?=
 =?us-ascii?Q?eqtqcGwcNWpB8C8VTYczHGViyG/JaV8SzPGDZ0+qwN51H6n+QYhAlIuutyMU?=
 =?us-ascii?Q?mrfd79Py+CRVyC4DZMtLd74GYksUiZ2FUYBSlxshSrQ9LWJw1ePhYkOql3x6?=
 =?us-ascii?Q?9jz55JohtB5SYqYDzaFAjJGFgFpNLUJqXruYWfrrOM7SmffK/P0fyHW0rRCY?=
 =?us-ascii?Q?+yXK3acygNcPMNWJWxGlRu+hBgt5Sf080Oei0KpTBmW1rvp574OhrqXFgzDz?=
 =?us-ascii?Q?fpdVHUxMCYgS3d9hMN30m+8O3Q/DCADqRwzIATpANKUGffKDTQTeeIeHs/Tb?=
 =?us-ascii?Q?LoVDnbfCXr0uLwYivWNDP/dgVpdr7XE3lxwa+h021vFacQhD5tQV5FsDnjNw?=
 =?us-ascii?Q?diOIulbWyJJqy4NhAGBG2Ryu0cEzC0YVzJ18LhtEVR8dfaFLSYYkuQuJ+BWx?=
 =?us-ascii?Q?gDdcHVmMUBdyD1PfVGmzxKJr3aJNv15xt7sG9Os87ER2yB9vR0BmnJuXV+6l?=
 =?us-ascii?Q?hf3x2j6muhcrDqt/AM8OcTu+WSR3TQIUgcORVmU7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21036a2e-b99d-4772-e708-08da81c7a8a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 09:46:15.3626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5dflS9YEpkKnOOG9nWM7XaCI73zRgR7JyqwjcWPjUvmGAcYKF2fxf28tXK3rN7m86adF8KKkidWfE8Oh8XvqXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4446
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, August 3, 2022 1:44 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/pps: added get_pps_idx() hook as part of
> pps_get_register() cleanup
>=20
> On Wed, 03 Aug 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > To support dual LFP two instances of pps added from display gen12 onwar=
ds.
> > Few older platform like VLV also has dual pps support but handling is
> > different. So added separate hook get_pps_idx() to formulate which pps
> > instance to used for a soecific LFP on a specific platform.
> >
> > Simplified pps_get_register() which use get_pps_idx() hook to derive
> > the pps instance and get_pps_idx() will be initialized at pps_init().
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  2 ++
> >  drivers/gpu/drm/i915/display/intel_pps.c      | 25 ++++++++++++++-----
> >  4 files changed, 27 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 51dde5bfd956..42315615a728 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -611,6 +611,11 @@ static int opregion_get_panel_type(struct
> drm_i915_private *i915,
> >  	return intel_opregion_get_panel_type(i915);
> >  }
> >
> > +bool intel_bios_is_lfp2(struct intel_encoder *encoder) {
> > +	return encoder->devdata && encoder->devdata->child.handle =3D=3D
> > +DEVICE_HANDLE_LFP2; }
>=20
> AFAICS the encoder never really needs to know whether it's "lfp1" or "lfp=
2". It
> needs to know the pps controller number.
>=20
> > +
> >  static int vbt_get_panel_type(struct drm_i915_private *i915,
> >  			      const struct intel_bios_encoder_data *devdata,
> >  			      const struct edid *edid)
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > b/drivers/gpu/drm/i915/display/intel_bios.h
> > index e47582b0de0a..aea72a87ea2c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -251,6 +251,7 @@ bool intel_bios_is_lspcon_present(const struct
> drm_i915_private *i915,
> >  				  enum port port);
> >  bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private =
*i915,
> >  					enum port port);
> > +bool intel_bios_is_lfp2(struct intel_encoder *encoder);
> >  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
> > enum port port);  bool intel_bios_get_dsc_params(struct intel_encoder
> *encoder,
> >  			       struct intel_crtc_state *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 0da9b208d56e..95f71a572b07 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1723,6 +1723,8 @@ struct intel_dp {
> >
> >  	/* When we last wrote the OUI for eDP */
> >  	unsigned long last_oui_write;
> > +
> > +	int (*get_pps_idx)(struct intel_dp *intel_dp);
>=20
> Making this a function pointer should be a separate step. Please don't tr=
y to do
> too many things at once. Rule of thumb, one change per patch.
>=20
> Also, this should be placed near the other function pointer members in st=
ruct
> intel_dp.
>=20
> >  };
> >
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 1b21a341962f..c9cdb302d318 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -231,6 +231,17 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
> >  	return backlight_controller;
> >  }
> >
> > +static int
> > +gen12_power_sequencer_idx(struct intel_dp *intel_dp) {
> > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > +
> > +	if (intel_bios_is_lfp2(encoder))
> > +		return 1;
>=20
> This is actually not how this works. The bxt_power_sequencer_idx() matche=
s
> bspec 20149: "PWM and PPS are assumed to be aligned to be from same block
> and not mismatch" i.e. the backlight controller id and the pps id are the=
 same.
> There are no requirements to map lfp# and pps controller like this, even =
if it
> might be true in the common case.
>=20
> The problem is we need the information *before* we call
> intel_bios_init_panel().
>=20
> It's a catch-22. We need the pps id to read the panel EDID, and we need t=
he
> panel EDID to choose the correct panel type in VBT, which we need to get =
the
> pps id from the VBT.
>=20
> This is highlighted in [1]. The 2nd eDP (which is not even physically pre=
sent, only
> in the VBT, *sigh*) screws up the PPS for the 1st during init.
>=20
> I think Ville had some ideas here.

Hi Ville,

Can you please share your thoughts on the above?=20

Regards,
Animesh

>=20
>=20
> BR,
> Jani.
>=20
>=20
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/5531
>=20
>=20
> > +
> > +	return 0;
> > +}
> > +
> >  typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
> >  			       enum pipe pipe);
> >
> > @@ -361,15 +372,10 @@ static void intel_pps_get_registers(struct intel_=
dp
> *intel_dp,
> >  				    struct pps_registers *regs)
> >  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > -	int pps_idx =3D 0;
> > +	int pps_idx =3D intel_dp->get_pps_idx(intel_dp);
> >
> >  	memset(regs, 0, sizeof(*regs));
> >
> > -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > -		pps_idx =3D bxt_power_sequencer_idx(intel_dp);
> > -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> > -		pps_idx =3D vlv_power_sequencer_pipe(intel_dp);
> > -
> >  	regs->pp_ctrl =3D PP_CONTROL(pps_idx);
> >  	regs->pp_stat =3D PP_STATUS(pps_idx);
> >  	regs->pp_on =3D PP_ON_DELAYS(pps_idx); @@ -1431,6 +1437,13 @@
> void
> > intel_pps_init(struct intel_dp *intel_dp)
> >  	intel_dp->pps.initializing =3D true;
> >  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work,
> > edp_panel_vdd_work);
> >
> > +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> > +		intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
> > +	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> > +		intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
> > +	else if (DISPLAY_VER(i915) >=3D 12)
> > +		intel_dp->get_pps_idx =3D gen12_power_sequencer_idx;
> > +
> >  	pps_init_timestamps(intel_dp);
> >
> >  	with_intel_pps_lock(intel_dp, wakeref) {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
