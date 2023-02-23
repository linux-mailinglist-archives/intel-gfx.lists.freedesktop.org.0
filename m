Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FF66A0E49
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 18:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500E710E508;
	Thu, 23 Feb 2023 17:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F336010E504
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 17:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677171681; x=1708707681;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+QWpAzRvtBKtN8Sik+PzBvTn/rcRNvdqPuCltI7BL7I=;
 b=h7OYlkSY8/VcAGJoS1CmH3fgySTEjaWSWlbtA3b+H4P9/uzbBx7Xh1xy
 MyETnncuz43k8IWjeAQ3ijJlSQ6EraCFVDV/RN15dZhD/ALscK2NIqwMo
 Khy7tvMG4CxLCNJsR9efvr0it7A46uoipNc4COdfC58by6WdJYEeV2I23
 OfXIsoUVjPsrQmxmOHebIXGAdNeKTklK3/V9zarT8x80Mdui+0p6sUjc1
 qY6BtKsYp0kluvGJ/qP3bjQjJhjtl2LMZUCb6h5uiPVpHomEnuzQr6KwY
 ebWgOqmmPa/yEr1xSYNWzVvf73d/Gdfi+jwaurfsEQsFBRpOzYTciCuGT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="395768273"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="395768273"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 09:01:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="815415299"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="815415299"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2023 09:01:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 09:01:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 09:01:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 23 Feb 2023 09:01:14 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 23 Feb 2023 09:01:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5rLw7JipRR4TCLju7qF0EvTzqYPsAWOzL+fQA9GWnezreyaTJwuS7eRXae/gttcfmbba7FwZsPtVr9+NHkn5/5c2+oKQG9t8d51KmH2z1yPzIcIzqQ0t3gIPSlvvvaB28GG7L4YIM+uiBR9YXXjXoyqXO5ubourg97t4KXBmNn5F2icrs0We5USWwbEds1sJaL5Tf7fe8zga3Wf0PUGZT4+/CvdwNuRA6b11IcJ0R04R76Ly60IeLaZqkoNt+3Cxs9F5PaKDEuuIdRRmb12XCEi1nFM4vJOn0VmNJqfXP7+srmQDEhvxNnIsEnYkaivbs+63xhfiBmrUgUrbI8E4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gmyCjdcHbYrQJgnWN1UP7GZOBegrMqR/NTCVkzZrz4M=;
 b=EHyRO9fbuWFimIPjpnc7B2X8ZBmmFGfStnMtb1atN7l92owwawAj+xrPRjVIV4rXA0F5P0IomBw0T87hIGtvSrihbAplUu3VFdxzM9RQk0sxNMpObt+SnRORc7VrYJXH6Kv/Aefx8lkMOGP0z5NIEM9aUgKt/naHehbONbGGrR1GEuYCb9LiJERa0/waOAZd2Pvb8HlBZXgPi3wLBCrco5FBHMbDE3pvncRNEEm/aVO/R3366CpUcjmwzpxjm68KjdDsf/xm3TTvLqZNJd8egRgMX8W7zSAF9YDhK0FlsrATiJ27xN2M7Z0gsqg8cDqjuTZ22hC+7R/2tk4hpTGdkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7251.namprd11.prod.outlook.com (2603:10b6:610:147::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Thu, 23 Feb
 2023 17:01:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%4]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 17:01:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
Thread-Index: AQHZRT6GmpVcIpIFDUmPF89t9jCyGa7bRADQgAFiiACAAB6mUA==
Date: Thu, 23 Feb 2023 17:01:11 +0000
Message-ID: <DM4PR11MB6360910F45E5832C8DDAAA47F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y/eBIshF4EiSS4rT@intel.com>
In-Reply-To: <Y/eBIshF4EiSS4rT@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7251:EE_
x-ms-office365-filtering-correlation-id: c5e9ad00-d2f3-4bc0-c877-08db15bf9116
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zt8PJYpHvzXNUwV33c09etS0n9QrZveZpU6ZlH6Dl1CLK1HdzhUV3pN8DH6DDDNJLThuJP82bIZTIjXgABVpk3cGCBpkeBsH3nzmfsA8BWLycNgKiv79ghH3sxfnqjwgCNYHwH7LEYfR6KPn/unr11PcIBLYPOPXyRurOltVXe0jDOS8uORU+dATu8zzHK6vzOYQFtY+Pus0MwM/KI+e0BMtwvNv2Wp/V/2ayNGwH1iI/qaZNm2j7uG0TFaJeV9rt3PtxTNHsnj8ZjREiWLrXjBPYJGvkeH8rRK7JYi+IbKpe20N+NHCMyXvAdKGzFiW8JkUxYCFjUOzJJ1OOXrmaaPcgwTUB3wLcjdOhIKIK3hMFYg0NfGNT1tlSF8OGw0ATFA0iBRkwReuI8YHrpaqyJcKGqjLeEHnhNCf1v3ugiVCLi4kiwZeicab31XkOH07A9LxUwqyorBT1kziEPpCsfrJducaqfCipKmr3HCIfbYitWrvdvEyEPBQZBv3jXiZy9x49qZCSVojhBW3h5IF5MW56sJ0qN2OpKvuKHr8h48zblqPJ366hKLpXme/kjuc+mrlLZ2gZNEWDxVFcHLvPPvyhNYWqihBkXyW7JB8cM4E1Srb7DtF3imGyZ4WtUGrPQPM3JFSg0crEWvId0Up/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199018)(41300700001)(83380400001)(5660300002)(478600001)(9686003)(186003)(8936002)(26005)(86362001)(52536014)(38100700002)(8676002)(4326008)(38070700005)(6916009)(55016003)(53546011)(76116006)(66946007)(6506007)(66574015)(82960400001)(316002)(33656002)(122000001)(966005)(66556008)(71200400001)(66446008)(64756008)(66476007)(2906002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FWFi5h7n0xUSAFpvwpJpjKQfL9Q/+OprKvbCBJDv7qUMv5fYKK30Wx+Bh+?=
 =?iso-8859-1?Q?llWvIFeNC6+ChQEyh0AJeojQvqijI+CxdzF7meBgzzcsdNfboYaECcQ655?=
 =?iso-8859-1?Q?TVY1l7MqjbvA0wuWlKOjKQw1Vi/0TspMhz4YAcKR4S5jHognWM39xQu5y3?=
 =?iso-8859-1?Q?OZVyOyUcg0WCBdjgkZOA+QYDpdG5ieDMkWleAMwt/+pgbqbf1xaFmN5uC0?=
 =?iso-8859-1?Q?rLYDUTuIDDk2HNNos02Zp+X/FYHu172oXzCjxvPpWZ9BJjDWFgVY39Q5ur?=
 =?iso-8859-1?Q?LeO8+5acBEaAjrZ7uNzIAJxXv4POydnj/tBXzzsg+KqFY+IhXGMGPhCF/F?=
 =?iso-8859-1?Q?h87/4vR66+DBVtkjZBA5OEH5oKyZTJI4PH1K2321MwO5SMbKz4C66X52gF?=
 =?iso-8859-1?Q?LSnmpIXxusaHO0SkymIH81o9ku8IRepIxnMwtV7dktXFqTVTD9OxnY4kZm?=
 =?iso-8859-1?Q?ji7aL3OT9kbujWr+huNPigA2gRGXzKFG2K+WukTmnOpGB97FnVsgJsJJ+F?=
 =?iso-8859-1?Q?ZiVwxGtTP8yg92Ad9o/ayEhLIgROaVvmNZxSKgDcZXHD4MUOpgiL1s3YH/?=
 =?iso-8859-1?Q?htkZYsRO3OKZDLGoZKPCymv5HGQ9YqzivL/i0/BZyoDy9DseDDr9B3gsQ0?=
 =?iso-8859-1?Q?+LvWSdjLQP6K4V4ehHGyFnTStRsvMi331xma0C5g3v19MTqo5GN42+1IHw?=
 =?iso-8859-1?Q?SL32PSic0SzVmYVbQlGAULYTEYdxipRxKW43kcVh5Dkk5WX3F9yYbuezUf?=
 =?iso-8859-1?Q?WeAXigNPJDaRoP0kznBFNxcJ5P5+ZWoJr9fy7H93pK76ob5ZkvH0f56Lz3?=
 =?iso-8859-1?Q?WQGNu24ElBc3XTo0GemdMTO7vstavdSsrsMTkQmfjHaz3U4bCpJtGk9qmf?=
 =?iso-8859-1?Q?BHFhMVhufmGh3F3eTdd2wnvjNRjFJPMkML+WfHTf/IItAHnL7SpvLnB7Jt?=
 =?iso-8859-1?Q?ISfn8LPZUc12ChJOVEWA+HjZYx7Ydkz+1vxARe5FpmJgEZFVbxFjVAb8Y6?=
 =?iso-8859-1?Q?0Oas+/ZQtZcmIj4JhT2H5KzTvzf51Hz4MUyzhvjuKx4/NWi47f6gknxlo6?=
 =?iso-8859-1?Q?MYkoFqUyBO4RXe/0hh1kw+n1vpRlNDlyR608McPpbtpinyPdZIWb5Xl9Rh?=
 =?iso-8859-1?Q?AGzDNYBZgqCfFD7adpSQaiqNMJV305ooUNC7CYgYdzRFvzd3/XoX6IbFRG?=
 =?iso-8859-1?Q?t1h9OCnoiVtpxgMMwTRo2XjQZrHMPGJn5Jl9I71rP7PMce0z7cHbesKeWm?=
 =?iso-8859-1?Q?v6KL5hPzs93/u95dK9KCPwT3ltQ/FhNhkLuraCsKVoz8NUmkv5uU+a/3Ve?=
 =?iso-8859-1?Q?RX9qRGF/B+Eafwtvp3jcrwsHxq7bnj2mFbkECIF4ZY5otk1R55sbmJ705p?=
 =?iso-8859-1?Q?HD+8Pm7schHomnhx31O9jswodz3rhtTmEKXY808pJ4cbs97ZZ8bFneuoIT?=
 =?iso-8859-1?Q?bUytjK4MMxcJmO9wi4t7pg3x2gcuKq1ytISxCDC0smlqhx0bZ+wIbgl85H?=
 =?iso-8859-1?Q?Yuh6CqUubPNlbnuhB5RC1M8TartUDUtkXOlWWDC78atxYtoCoVp2+HQUtz?=
 =?iso-8859-1?Q?VgSnhsogDHBG+CVIaAUNTdXrvzwRx2oPRkDUa9MpFqunUuAD4SRSjYHcNN?=
 =?iso-8859-1?Q?dvc2y6Xq9CPeElYGPQgunCSgk2vQhPobzy?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5e9ad00-d2f3-4bc0-c877-08db15bf9116
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 17:01:12.0027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UE59hCIs8H9/1KNPya3AazSKU+luKSRBU3hXAq6rYTpFJYOLwBj4COpMrPahsU+fh1zpC4LmOG4WLe1/Snc9tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7251
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
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
> Sent: Thursday, February 23, 2023 8:37 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for=
 DP MST
>=20
> On Wed, Feb 22, 2023 at 05:59:45PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Monday, February 20, 2023 8:48 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling
> > > for DP MST
> >
> > Nit: May be append "display" to drm/i915.
>=20
> Don't think I've ever used that one. Seems a bit too generic to provide a=
ny real
> additional information to the table that wouldn't usually be obvious from=
 the subject
> anyway.
> Do other people find /display useful?
>=20
> I guess I could have used a more specific /mst in this case, but then aga=
in I already
> mention MST in the subject anyway so seems a bit redundant.

I think there are mixed declarations in our tree, no clear rule as such.
Will leave it you, maybe a general guideline would be good to make it
all consistent.

Regards,
Uma Shankar

> >
> > Change looks good to me.
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > I forgot to call intel_audio_compute_config() on DP MST, which means
> > > ELD doesn't get populated and passed to the audio driver.
> > >
> > > References: https://gitlab.freedesktop.org/drm/intel/-/issues/8097
> > > Fixes: 5d986635e296 ("drm/i915/audio: Precompute the ELD")
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 25
> > > +++++++++++++--------
> > >  1 file changed, 16 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index de856f4375fb..a860cbc5dbea 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -265,6 +265,19 @@ static int intel_dp_mst_update_slots(struct
> > > intel_encoder *encoder,
> > >  	return 0;
> > >  }
> > >
> > > +static bool intel_dp_mst_has_audio(const struct drm_connector_state
> > > +*conn_state) {
> > > +	const struct intel_digital_connector_state *intel_conn_state =3D
> > > +		to_intel_digital_connector_state(conn_state);
> > > +	struct intel_connector *connector =3D
> > > +		to_intel_connector(conn_state->connector);
> > > +
> > > +	if (intel_conn_state->force_audio =3D=3D HDMI_AUDIO_AUTO)
> > > +		return connector->port->has_audio;
> > > +	else
> > > +		return intel_conn_state->force_audio =3D=3D HDMI_AUDIO_ON; }
> > > +
> > >  static int intel_dp_mst_compute_config(struct intel_encoder *encoder=
,
> > >  				       struct intel_crtc_state *pipe_config,
> > >  				       struct drm_connector_state *conn_state) @@ -
> > > 272,10 +285,6 @@ static int intel_dp_mst_compute_config(struct
> > > intel_encoder *encoder,
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > >  	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> > >  	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> > > -	struct intel_connector *connector =3D
> > > -		to_intel_connector(conn_state->connector);
> > > -	struct intel_digital_connector_state *intel_conn_state =3D
> > > -		to_intel_digital_connector_state(conn_state);
> > >  	const struct drm_display_mode *adjusted_mode =3D
> > >  		&pipe_config->hw.adjusted_mode;
> > >  	struct link_config_limits limits;
> > > @@ -287,11 +296,9 @@ static int intel_dp_mst_compute_config(struct
> > > intel_encoder *encoder,
> > >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > >  	pipe_config->has_pch_encoder =3D false;
> > >
> > > -	if (intel_conn_state->force_audio =3D=3D HDMI_AUDIO_AUTO)
> > > -		pipe_config->has_audio =3D connector->port->has_audio;
> > > -	else
> > > -		pipe_config->has_audio =3D
> > > -			intel_conn_state->force_audio =3D=3D HDMI_AUDIO_ON;
> > > +	pipe_config->has_audio =3D
> > > +		intel_dp_mst_has_audio(conn_state) &&
> > > +		intel_audio_compute_config(encoder, pipe_config, conn_state);
> > >
> > >  	/*
> > >  	 * for MST we always configure max link bw - the spec doesn't
> > > --
> > > 2.39.2
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
