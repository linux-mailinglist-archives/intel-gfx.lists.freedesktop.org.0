Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988D33FECA7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 13:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A94F89690;
	Thu,  2 Sep 2021 11:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5244689690
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 11:07:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="199302201"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="199302201"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:07:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="691337339"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 02 Sep 2021 04:07:17 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 04:07:17 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 04:07:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 04:07:16 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 04:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tlou/bQhbKA6T0WXYUSBzPXd5G5Zoae8D/U5J6Z5ixMJUZn9OXuffWPCW2Fumc1gcnkcrS98G86Sum7eM6WmIdESF9p9Xw57yrcpyjUb7528rS87g38JOCJ6ZGyGXUwzd9bLVCzAoTyDGBxTMDZxifBaJNK5IdRoUrmBABZ0cMzedEYDq7Jdn4qgKBrIkglS98XhszUxUbgswdYAwmZojTKDrX0Vb3ELj4lkO0sLpJVi0SvKu1wcIfIrqehOd60A0KSmTNce7i4G6eR50tMI2hqMclw+ge/B6tkED5yLHMs2ELdP43EcC7W/3Mijhei6g0O2H2hN8Yhkn8dtZyDkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=FVAiWO7zciroue9ZUTpwMfqHqRDATfrXL5Z0Qj9TfnM=;
 b=C0HQCoKV7T18s1rO+sjb0+R4y1AHWCsLFzile1xw/2cKspaKzLPrhrPk7Q5Y3AvpsEs4WeGB7FLl7bdyTifrmNOIJ3OR1VOHfKnuIBcjlen4KH/C73B10P6iYfMpymQMHJgOJl0mGFKEWAXZ0SSV2aEzT2jVoncjyv4RQTDOYb8wSAudIwWRd9EahO5gfX5lXfVE9yA/GghshSFbtjYum9tcZNEe5jM5sGbb54oNN0YIvILK4GGv/XmmsT6BnHQNwCQGKaYH93v5UY3X+o/cNScnpV3XWfYNyTaSYx/Hy73yTTH2/FI1r6NeHDBx6uty3FisFOZP9YNJxkkuV7e4zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FVAiWO7zciroue9ZUTpwMfqHqRDATfrXL5Z0Qj9TfnM=;
 b=d0lEPC337F43ZblBvZc1blbW7oZnpk1ohaW6c4lXtW0NttburAbhnj1sVSEHINlpZWSilL2Zv6FscF1wlWMi6pLeM++eyAxyvVIrPvffCVaj0c9famIxThU+sXbfWlueXFqLJZ3T3qixAl8rPQtoVNICq9GqB6KAqAVNjRBSvUI=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5161.namprd11.prod.outlook.com (2603:10b6:806:fa::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Thu, 2 Sep
 2021 11:07:06 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f%7]) with mapi id 15.20.4478.021; Thu, 2 Sep 2021
 11:07:06 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZ0sW59N9gqV+40m1IXOqKgMck6uPoZGAgAFkdeA=
Date: Thu, 2 Sep 2021 11:07:06 +0000
Message-ID: <SN6PR11MB3421B0900C9A9770B19367F5DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YS+EuzTIv5YWfzIL@intel.com>
In-Reply-To: <YS+EuzTIv5YWfzIL@intel.com>
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
x-ms-office365-filtering-correlation-id: ffbd8214-c926-46c6-db13-08d96e01cd54
x-ms-traffictypediagnostic: SA2PR11MB5161:
x-microsoft-antispam-prvs: <SA2PR11MB5161A0E33924761EDB9BB4DCDFCE9@SA2PR11MB5161.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zoVHG2iICxSUv7FvmFbWBD0HVu2uVlSn56wPvEgdlY5YC520ou0r2P1rh9NGUoL+cQQGQ5e8yIww/3sD74sn0G+79IlYIuRJbdQ4JfVv5RiVVRsFoc8IeG8OUqeU3Rbxaimei9zIxDVKse305qQthPXJiUsXrXRsYBipOeA9kb4ZijFFAiH/XvXRb5IlCPnBQZM2PmaxV4Fef5zg4TgyworT2j6kWyXPl7YPYUPWc6x34VaXsmnN2KfAGVWPq4SF+WJnOdhsq9bu1EDksxVGj2qp/tAxmjeBLT4kuYMfH2lkTH9HAzrQALh/2czlWVPRj4RQCU2zbq5RKgVwFob9ciII/fk5Sp3J6gUuqm6IiYtdezMFl4gxy6dewQjIlFcqpPzRgVmH1DzBSV0q9dQqRSZpy5A+0N+WA99SAgDP8fmkppLicEukK9Yc1g9wTJejs/MRCQeCPD6UmO7iAc9l2BnrDUjBELCh/QUcobflFj6EZSc2AySHDwmmponXLa7ToaOacfw8rx+NdlHuSiuYc5qj8J4/OIpu62Gsz8UEyvMRNVckHr2aJ28bGxHqRg7/I1UR1VODNF/MGGca31RHqcXi5MsjJSVAqhoxANbc3L7UCAgxCJyKUgLB750AjHJM/I1YH/T/SC8nTa4tEe/U5/nLVRIXDmLU9nTbXGSoinWPbqY52lZ+ngN0/ZvzBZX/EbtMMxGXJO4+m7WrjilnIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(6506007)(53546011)(38070700005)(76116006)(52536014)(7696005)(66946007)(86362001)(55016002)(64756008)(66446008)(66556008)(66476007)(9686003)(966005)(33656002)(83380400001)(2906002)(5660300002)(6916009)(316002)(38100700002)(8676002)(186003)(66574015)(122000001)(478600001)(26005)(71200400001)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?F1yFk+qoObqdpZV21iaDAfqJ1ZdWX6MlnPsbjNFbliH2lLjyPJvjvA7fui?=
 =?iso-8859-1?Q?7RPn0XNaTThd/sKWqKGy0fX4RbOgG53Zx3v8H+dfuO7mrslQNvCJaIIAdU?=
 =?iso-8859-1?Q?/NQYVRMbfklnlx/H0RNbUgXrWN77vltKbgeQPrUNjhFUltW084BbLP/jpY?=
 =?iso-8859-1?Q?qQOHN5oWw/qe6x4DXrcrcgLzi31TUxTBu1Xmj+H2LFcUv+ttMrBnhPczao?=
 =?iso-8859-1?Q?e97XEteDDNd2gBBwzPQrWvo7K3GTClXFm+vx5dnpXacK2TldSbPpkCoaPW?=
 =?iso-8859-1?Q?d2HdTMxDPfTcgwgTcayDfoDRBADBcVX80yfsPD3cIo6wtp/VIWPaNDrevr?=
 =?iso-8859-1?Q?nuyZ7Ar8aEgH0N2Ezd0dOM6NB/i/R9mOeegsqRXrST15qhQssz/b7ASwd7?=
 =?iso-8859-1?Q?si+IdLGpIoHGBwmq7ZWAI8mZ9P25J9ZIiM4pnzCw7l/SVnrWRErp53gL2m?=
 =?iso-8859-1?Q?Gu3jSiUbro/W59UaIgRG+1a26NUb7K6Y3HQ3+vO/0t+uVMwV8LupNcrpOZ?=
 =?iso-8859-1?Q?g/tspgTbV8CjPFAa7bbNFll3SuFTzU3eye6MMgMYb6aH8CDthD9IQYXJsw?=
 =?iso-8859-1?Q?pAePDPeS6Ny+FH/8yKIePSTPGjrbd6wJ7vVxKfujvMae1FuGaphkzAAwSn?=
 =?iso-8859-1?Q?Q9HH9CqPdf2K9yr1LzgTMoQwBvmwNDvcwXFf/LqTmh4jQWpDSVs2Mxnp/c?=
 =?iso-8859-1?Q?Psw1V/N9iC+VvbPZGC8JsS/AHQdomUjlfQnx6eDRuXKEVOqCoLuIFugxde?=
 =?iso-8859-1?Q?fQ6Msu1hpvlS/E+ai7yxEEdCz5d0JfeP+EHecaHVHaK/1dT+nHqfXp6c99?=
 =?iso-8859-1?Q?extP4/Qllh0PfPpBa1qRQDjJ4bOuLCp2t3ijF6DvWYNZ3wMBhqnC7ODlTU?=
 =?iso-8859-1?Q?DShW6/2LgccJ7EP94DtXCJ0NmIttdW8ysSYbly9FtxyUSoQ7sxklXTG6rj?=
 =?iso-8859-1?Q?EPF9eZtvnn0peEW3E2qvBxjb9piax78OJYItpftCLN9jActZaxsPYNro98?=
 =?iso-8859-1?Q?WKB9JslLacm/pKLBq8iUJ2eNazEA6VgYeA5l3RM4iN5scHWTMoaF9dBGOt?=
 =?iso-8859-1?Q?JAHokVaRRdw2TrNIc1qdBnbqfpwG9j3qjkKREZ5TO7x/16gocRt+zIjPR2?=
 =?iso-8859-1?Q?LnoxbCfMV+4opzcoX+1DPLlwYPhazPm3IQTNJ3IAHqW75UHnSZUiIIZ4n4?=
 =?iso-8859-1?Q?OrIhyGCznV2+nLVGTDHG+cnChDIsPv82YYlSFppH8IEmw7Tpx5ZjajEqOM?=
 =?iso-8859-1?Q?M0+vjCwM2SdLXUyWYpCX9rrz7hlgBOcDvOc+BzzZj69YHy4SLl7gpuzONM?=
 =?iso-8859-1?Q?dsPmBlpprIhZ+UBbYwnzTArjy1WoYtwKuwZACe5pIoXHIKsDNUQQFi7llg?=
 =?iso-8859-1?Q?8hCCJEEGhx?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffbd8214-c926-46c6-db13-08d96e01cd54
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 11:07:06.7226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cz7uuyHGbvmWpl7QzSOMKvoDRX1PfH3ntxLhG4Iadbf8bFi2m+boogwalD2qAqr6JrPlyrVqKBBV0IHEeu8EHEfj5eVL7HL1crSCHi+2kDzkTZivDZoG+Sy6WQwPnizb1V5TvW901e9W7TbSrAiKlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5161
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
> Sent: 01 September 2021 19:19
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
>=20
> On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrote:
> > Display underrun in HDR mode when cursor is enabled.
> > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> >
> > Bspec : 33451
> >
> > Changes since V3:
> > 	- Disable WA when not in HDR mode or cursor plane not active - Ville
> > 	- Extract required args from crtc_state - Ville
> > 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> > 	- Tested with HDR video as well full setmode, WA applies and
> disables
> > Changes since V2:
> >         - Made it general gen11 WA
> >         - Removed WA needed check
> >         - Added cursor plane active check
> >         - Once WA enable, software will not disable Changes since V1:
> >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> >
> > Cc: Souza Jose <jose.souza@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> >  2 files changed, 32 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6be1b31af07b..e1ea03b918df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -358,6 +358,13 @@ static void intel_update_czclk(struct
> drm_i915_private *dev_priv)
> >  		dev_priv->czclk_freq);
> >  }
> >
> > +static bool
> > +is_hdr_mode(const struct intel_crtc_state *crtc_state) {
> > +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
> > +		BIT(PLANE_CURSOR))) =3D=3D 0;
> > +}
>=20
> Please use this in bdw_set_pipemisc() as well. This could be a separate p=
rep
> patch actually.
>=20
> > +
> >  /* WA Display #0827: Gen9:all */
> >  static void
> >  skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool
> > enable) @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct
> drm_i915_private *dev_priv, enum pipe pipe,
> >  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) &
> > ~DPFR_GATING_DIS);  }
> >
> > +/* Wa_1604331009:icl,jsl,ehl */
> > +	static void
> > +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +
> > +	if (is_hdr_mode(crtc_state) &&
> > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> > +	    IS_GEN(dev_priv, 11))
> > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
> > +			     CURSOR_GATING_DIS, CURSOR_GATING_DIS);
> > +	else
> > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
> > +			     CURSOR_GATING_DIS, 0);
> > +}
> > +
> >  static bool
> >  is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
> > { @@ -2939,6 +2963,9 @@ static void intel_pre_plane_update(struct
> > intel_atomic_state *state,
> >  	    needs_scalerclk_wa(new_crtc_state))
> >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> >
> > +	/* Wa_1604331009:icl,jsl,ehl */
> > +	icl_wa_cursorclkgating(new_crtc_state);
>=20
> This looks a bit wrong. We shouldn't turn the clock gating back on until =
after
> HDR mode has been disabled.
>=20
> So please model this after skl_wa_827() and icl_wa_scalerclkgating() so t=
hat
> a) the ordering is correct, and b) the code between all three w/as looks
> consistent.

I did not get what you are suggesting here. Can you please put psudo? Curre=
ntly as far as I see icl_wa_cursorclkgating is already modelled  after skl_=
wa_827() and icl_wa_scalerclkgating(). Are referring same=20
Or something else?

Thanks,
Tejas
>=20
> > +
> >  	/*
> >  	 * Vblank time updates from the shadow to live plane control register
> >  	 * are blocked if the memory self-refresh mode is active at that
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index c857fafb8a30..703d708c773e
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4235,6 +4235,11 @@ enum {
> >  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
> >  #define   CGPSF_CLKGATE_DIS		(1 << 3)
> >
> > +/*
> > + * GEN11 clock gating regs
> > + */
> > +#define   CURSOR_GATING_DIS            BIT(28)
>=20
> This looks misplaced. It should be next to the other bits of whatever reg=
ister
> this is. Also pls use REG_BIT() instead of BIT().
>=20
> > +
> >  /*
> >   * Display engine regs
> >   */
> > --
> > 2.31.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>=20
> --
> Ville Syrj=E4l=E4
> Intel
