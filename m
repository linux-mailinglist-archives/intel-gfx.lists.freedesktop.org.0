Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B36C23FEE49
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 15:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838A36E52A;
	Thu,  2 Sep 2021 13:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D2C6E52A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 13:04:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="282815206"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="282815206"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 06:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="542648459"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 02 Sep 2021 06:04:21 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 06:04:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 06:04:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 06:04:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qjon3ZCGCeLcgUv8YHHHulWoYiEwJqwpF+m4HzSjBb/L+CZ1O5oPIzgWmUIxHRzi9pbi7Z8jO4OWjMLTFJYFEpDvpiMcJSvDIBGcppfnUAEyMQZSflvuVpHaUaUmiUcGIKHL7b3w6PvU69oGfqIQZPanOAkf2yR3RoB9Y4T0+WTwtRzilcXk5J/b7KiuRjGm7I/wlb5cIVkmzxCNLV/w/Ju4VJq9MmP/hzGewcwTsw9Jysm7yBGmOC4QKrrXDahU74ce0uNTFySRLQkcqa5Q9T2/nZ0VmNZzoVzPn7TaPs/fggxHNtShHTDsIgUDXGCdbswvY4T8MQlB9sZzMf7Ymw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gKy0bZezIY/r6Ah2QtNrfE8Q8o4itebtddpCOrZXWA=;
 b=Jla1x0k0Jkr8gJDQnu9hh6D6xZH+njH1Cqj/QBA8d4B1m5q30opJeB+blKuBMB86OAPpklMguGadChFOsjsYN9+EOowD5kMOHway/Q6I0iHXu4Jy4a/RMMWuK7xsWbv8DB4BSCH5Xsy+W9Cry5Kd3fYhWlCT88po/hMw1KF8cNrY5t1Vun25nMkBEcbVKmKEufhsFSkhj1Mpr9LtoV23pnQ2aAdxCydwGuR+EVczhdtWLkIm5IJKDQX1EgHnhmTl9OrOG7KVy8yI+KM5FWl4saF2REtFzOwBKT0EuJ5QL84maqn6B1/sDAfmR8mX3lXxNYyGz8v4knHZQJD1A2QGlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gKy0bZezIY/r6Ah2QtNrfE8Q8o4itebtddpCOrZXWA=;
 b=DNv2qhNMXeZnU4esTYMxoCjvhJwl6S49DJb7LWrpb8V7Ww6r4fg4yppKhzhoBEVqQExX0qMnkJmWqONAkGJL9GhLptZOtHd0a8d/qjWuFUx5YEiFZBo3QAajkTWqaTitZERY908srcdgVBoUPKDqtxtxExSKpcnJgs4PkUE4G70=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3101.namprd11.prod.outlook.com (2603:10b6:805:d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.24; Thu, 2 Sep
 2021 13:04:18 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f%7]) with mapi id 15.20.4478.021; Thu, 2 Sep 2021
 13:04:18 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZ0sW59N9gqV+40m1IXOqKgMck6uPoZGAgAFkdeCAACAYAIAAAGkw
Date: Thu, 2 Sep 2021 13:04:18 +0000
Message-ID: <SN6PR11MB3421DB31729DE8DA0458D175DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YS+EuzTIv5YWfzIL@intel.com>
 <SN6PR11MB3421B0900C9A9770B19367F5DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YTDKrJTd6VnV+08K@intel.com>
In-Reply-To: <YTDKrJTd6VnV+08K@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7d48ef0-ef2b-44ba-2b1a-08d96e122c9a
x-ms-traffictypediagnostic: SN6PR11MB3101:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3101B0156227E2AB44B79E3CDFCE9@SN6PR11MB3101.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iMk1wV0JysrFEI77Nus2WiCmWkXoTeksIaiJYJI0D4WPv9ingdQ1w/0VLr+jzqv5Ie0Gbfm3i/ZogV9di3s/ZlCCYdSjT1oQA2g70NiNhp6bHmRHiCxv1NV7ck/Nur+WtGa2rig9QmMjeAuNLUX1ENvdnpTw+HopIsWgHFdzc6y7QhUhpkTP89B5cY5+IaE33Z/bLA90I9y70ytsjGy/5HWuNawhX4e93TvFGv/ne0SUDXjkqtU3jqUAUGvbw16vAodXRdJz59Ne99wRUtBBc6o+d0Sn3Bl6MqtLfC8ujcjRtfXEm3CpNevdAH5fmqSPA5s0axB/bxxM3b4hIPbY1JhxADVQXRnemsZXGY/7Bb+chelK7n0EljiWGNS3moOjhjSpLTMi+NNx16hGRtu4jOtm9jGs1EY8gfgqjr9XeBRcu4I4mfBX6EZUXQdmGEZv2Mxw0kklGrtrkHfkCjFYxUo1hUAJhzWB/IFyIkdKZDd+TjuPTKL51isQjbaXLptlt7p8UOqGTnO7PFNh7yUhVTRSeJ53wJSFrACZfbnXpen1yYcH4Zx7wWxN4dFMEUqQM85QeKXoq65omSCI7npWeZDqVFsXWTZdFixW+6RANlbx1VzfKJY8xVsHsFUfzyxU2RS5kueagoeOjNCO6mZxT8KdfS6lKaTlCnYwZn8BrckBEcFfVP45iW5h63jffNDSilmAE4D04ZSm+/x6dHG3ig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(38070700005)(7696005)(186003)(33656002)(9686003)(53546011)(83380400001)(55016002)(6506007)(66574015)(76116006)(2906002)(66476007)(122000001)(64756008)(508600001)(8936002)(26005)(52536014)(5660300002)(86362001)(8676002)(38100700002)(71200400001)(316002)(66556008)(54906003)(66446008)(6916009)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?f4cY5RVExS/iMA4RbSgmQk1Q6nPET7pKGGfvXSvwDvySpywZTOnyLMZSQY?=
 =?iso-8859-1?Q?lNjUiKvAgOqQwnqP4Bk39sGZ+KI9Gmipc5SF5nEf29KLINQLpu5coU65qQ?=
 =?iso-8859-1?Q?UM1oSLhoR2bs7tCFjorqHBvrvSEDOc4uKK6iQeFium1g8Gg0dTirULxa1S?=
 =?iso-8859-1?Q?xUHENQ3GvOULQ3wIVkTL61uA9uNuo8cyO3rkv/t3WzQyfu9OF7XAlobfXh?=
 =?iso-8859-1?Q?yW8ntcY5PQTbDV8DQperwp1uZQDyiuGrFwgCdKRIr037k4gV2JADat7ji0?=
 =?iso-8859-1?Q?YKWUmZDL1uPX8Z+WaxXY3OdeVfGuZUhieI0qKVvWKKhwXU1rLOvobkVyVF?=
 =?iso-8859-1?Q?uL0868GsYnLlpqpsYcig8udpct1KIVsguoA4cvxTVBfHj3/SOhfJIE7mRi?=
 =?iso-8859-1?Q?WncLcxoRHPgmzKKUGnNekOPr6eWkR387+tb7i74Po7hEyYavj4wj+9fmx3?=
 =?iso-8859-1?Q?xpO5QyPFNkv1qvfbR3iDfarHA5wlm3yE+yN4ZJQsqi8oM7bMXIwKQKArux?=
 =?iso-8859-1?Q?8SSJNFxkgRt6cnnU6pubKtjpIHXdtVBBubRbnAN0fFZK39nRT6IypOGAi+?=
 =?iso-8859-1?Q?3fgcEPaTGNeLWD7cGAHXPXUQsn3X/E91QaPHoVYhpTRC5xieFYDfWq7wJW?=
 =?iso-8859-1?Q?xG4FLoM2EHIuzx80OuEQ1mTqsVFR7sbkHtzDHjyfZ9PwCGhsevxw6B2r3Q?=
 =?iso-8859-1?Q?BJECmohZeDqi9C7zTOBvONBgSgtK6QsPc700pbkNJsmEQRo5NLMLnf6jwI?=
 =?iso-8859-1?Q?CH5Bdj7ocURigxghRjVipJJZxb8GfJXzxcf617GP+r4i/47ARtdrweeTQl?=
 =?iso-8859-1?Q?tKvC0hzxQr61lYgs41yA9o0szqe3eOWGD10dzGDqSH2iugVPmm6UkL7g6m?=
 =?iso-8859-1?Q?aM7R5ZeY0monVJSMvqomVnG5wyiIG0XsFmevwUYtn0t8DOLeFT5JXMYLo5?=
 =?iso-8859-1?Q?PcAMhuKbk41Vb3z82MkzfjDWmrKQkm5W4Gho+gXNyWCeJGy5Xn/X/tOrXq?=
 =?iso-8859-1?Q?BE6PNlQbGbWdLBZjz8xeeG3D0nOGUHDm65LpsfLTjbneDSJ6oZk8nZsQ+i?=
 =?iso-8859-1?Q?szw43jFoX2FkuOWmM9v5pE7Q+Wzjfn15BBYqt1R/942tyPIEGrl/YPLFos?=
 =?iso-8859-1?Q?tPnihm1aicarYK2Mb3HkrNrZDIZ1NA/uhA9iA8tk1TOUaeDSWBcusxpjOz?=
 =?iso-8859-1?Q?e3n/kaoEgU5t60tVf/Q84pfeXbDIZ/fTSx6v5UMOL3TcNn7SfGE3HqIQ0J?=
 =?iso-8859-1?Q?LJCD0GKFe6exPVc/gRAenBDby1Xi5zHnxRSe4xMqKTdBD0dE2MnF50AECG?=
 =?iso-8859-1?Q?aNbgjJ4rm5wai0kOgAZLqsIZ5FyIVYsQjmCCaQZzUBMiiUr5KoI3Fz41+O?=
 =?iso-8859-1?Q?Gwvw0Aszz8?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d48ef0-ef2b-44ba-2b1a-08d96e122c9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 13:04:18.4876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U+dO0m9b/HNe4bf5MUUywC0jN/KRB2aleRpDlnXeSIszp9mhEqa3ZcC9F6uvH29m/2U8eV5ZqFLaza+S1J/JsSd+HTLkizJWa70dHZVz4H/8N6yj9b0t7/OHPi0EFG5gQmt74mgTiVjtf4I7miEEjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3101
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 02 September 2021 18:29
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
>=20
> On Thu, Sep 02, 2021 at 11:07:06AM +0000, Surendrakumar Upadhyay,
> TejaskumarX wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: 01 September 2021 19:19
> > > To: Surendrakumar Upadhyay, TejaskumarX
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > clock gating in HDR mode
> > >
> > > On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrote:
> > > > Display underrun in HDR mode when cursor is enabled.
> > > > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > > > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> > > >
> > > > Bspec : 33451
> > > >
> > > > Changes since V3:
> > > > 	- Disable WA when not in HDR mode or cursor plane not active - Vil=
le
> > > > 	- Extract required args from crtc_state - Ville
> > > > 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> > > > 	- Tested with HDR video as well full setmode, WA applies and
> > > disables
> > > > Changes since V2:
> > > >         - Made it general gen11 WA
> > > >         - Removed WA needed check
> > > >         - Added cursor plane active check
> > > >         - Once WA enable, software will not disable Changes since V=
1:
> > > >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> > > >
> > > > Cc: Souza Jose <jose.souza@intel.com>
> > > > Signed-off-by: Tejas Upadhyay
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 27
> ++++++++++++++++++++
> > > >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> > > >  2 files changed, 32 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 6be1b31af07b..e1ea03b918df 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -358,6 +358,13 @@ static void intel_update_czclk(struct
> > > drm_i915_private *dev_priv)
> > > >  		dev_priv->czclk_freq);
> > > >  }
> > > >
> > > > +static bool
> > > > +is_hdr_mode(const struct intel_crtc_state *crtc_state) {
> > > > +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
> > > > +		BIT(PLANE_CURSOR))) =3D=3D 0;
> > > > +}
> > >
> > > Please use this in bdw_set_pipemisc() as well. This could be a
> > > separate prep patch actually.
> > >
> > > > +
> > > >  /* WA Display #0827: Gen9:all */
> > > >  static void
> > > >  skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe,
> > > > bool
> > > > enable) @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct
> > > drm_i915_private *dev_priv, enum pipe pipe,
> > > >  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) &
> > > > ~DPFR_GATING_DIS);  }
> > > >
> > > > +/* Wa_1604331009:icl,jsl,ehl */
> > > > +	static void
> > > > +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_state) =
{
> > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > +
> > > > +	if (is_hdr_mode(crtc_state) &&
> > > > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> > > > +	    IS_GEN(dev_priv, 11))
> > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
> > > > +			     CURSOR_GATING_DIS, CURSOR_GATING_DIS);
> > > > +	else
> > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
> > > > +			     CURSOR_GATING_DIS, 0);
> > > > +}
> > > > +
> > > >  static bool
> > > >  is_trans_port_sync_slave(const struct intel_crtc_state
> > > > *crtc_state) { @@ -2939,6 +2963,9 @@ static void
> > > > intel_pre_plane_update(struct intel_atomic_state *state,
> > > >  	    needs_scalerclk_wa(new_crtc_state))
> > > >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> > > >
> > > > +	/* Wa_1604331009:icl,jsl,ehl */
> > > > +	icl_wa_cursorclkgating(new_crtc_state);
> > >
> > > This looks a bit wrong. We shouldn't turn the clock gating back on
> > > until after HDR mode has been disabled.
> > >
> > > So please model this after skl_wa_827() and icl_wa_scalerclkgating()
> > > so that
> > > a) the ordering is correct, and b) the code between all three w/as
> > > looks consistent.
> >
> > I did not get what you are suggesting here. Can you please put psudo?
> > Currently as far as I see icl_wa_cursorclkgating is already modelled  a=
fter
> skl_wa_827() and icl_wa_scalerclkgating(). Are referring same Or somethin=
g
> else?
>=20
> It should look something like:
>=20
> intel_pre_plane_update()
> {
> 	if (!needs_cursorclk_wa(old_crtc_state) &&
> 	    needs_cursorclk_wa(new_crtc_state))
> 		icl_wa_cursorclkgating(..., true);
> }
>=20
> intel_post_plane_update()
> {
> 	if (needs_cursorclk_wa(old_crtc_state) &&
> 	    !needs_cursorclk_wa(new_crtc_state))
> 		icl_wa_cursorclkgating(..., false);
> }
>=20

Tejas : In the previous version it was done this way only. But after review=
 comments from Jose I had to change it. See "Changes since V2" section. Als=
o you can check in previous versions of patch.

>=20
> --
> Ville Syrj=E4l=E4
> Intel
