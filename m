Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3221A6E7493
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 10:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C830D10E04F;
	Wed, 19 Apr 2023 08:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC6710E04F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 08:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681891393; x=1713427393;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kuFSKufUClgB5e9JNWLOR/+uD9//7lnQz+XsCo7Ss1E=;
 b=mUmhQLXuXGNyms23omGIZhsRooNjF3jaHjKtvXl1+JL2CEPSSbr5nROl
 0UD5lnda3nMH9MXC2baj9uOSx/ZFLsn6ivgOKKBC9hZt83Spk8I7lYb8N
 4/QVVPqoKlYPII/JsIsVvNInalSeK2z8igraFRmnIPW9rnGeI2euU/Umt
 kc3hrkVv14CeN1m4YRXavZN87YVIAR4FcXCyA8hHQ4c2pOaVnw9XZt5FD
 OvhaEtBchqQXst6ALeBoBJ//tPRsdOMxZRUQtYuLxf3Id+YbW87aenH17
 7/qkt+Eb4eGnfB01ohAsdZZQD+Y20z/R994qqXzAK2Gly9Zk1K9hVWjgK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="373265180"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="373265180"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:03:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="802844338"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="802844338"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2023 01:03:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 01:03:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 01:03:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 01:03:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 01:03:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GZ3stGukxcXlFpW8CTvRooZ6zdduOM9WHUQnWqnRyBuLBiuyyPB0NwP7rMJ0IIXOBv2XYOiLPztEzplfh1UPWEWrf9jDxggB9OEUb4Bm3We91m7iVL3GGTHMFz51fSXdfBGTf7V5qqlC7W/3AEqjdPmpZ4VYnZYjNMRM/0gU+BCH48efp5iCMLK5wCsT0aw73dWtx0e1xCIE/Yys/orOPoUMuOnMQIaen5q2EwxcP24eZTGRLZMQt0Xtw6RlXQ3xlQ55CK+4yY+rsQeT0SvuQ7/Tv0h47c5w0WTMPMrY/V+sQgGunPn4EUg1UDLpEDQ+U5a+zH9Nd6H6uWwJrBvGMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GithqwFtFfYk1y+tA/JAINVYEsFVVoIPa8zg/uo9Gv4=;
 b=Cr0hxFVLUkicQE6jJZp6egpDumySIsbozL8F7n9ejrmuQdqJH2y3a+mLQ4aNhA/Jm3HNh//kXceYPi6rFe7eIUgQZckf2HtJ6vo+DuWmK4XVU0CxHH5x3vOjC+TtOib8n1VQFEIIHHqODwvZtMqKy/7Gq4Wp8D/T2teevGZdFbsLCR32EU5qlyav5Noa7ApN5jNRRKsHuvkLa+ekifyrNnIs08R23PaY7o44Fv7D93ZBIPVoiTC+U2raVekQFzqAhaNANpdHMoboDPW8xa5qp3icTUJ21wdPKmk81xgYiQPHHfKDYr2O33q9npVIIrynMEjcanwFJpE8L2wfScyiJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH8PR11MB6731.namprd11.prod.outlook.com (2603:10b6:510:1c7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Wed, 19 Apr
 2023 08:03:04 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%6]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 08:03:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT requirement
Thread-Index: AQHZcmb0dbUWwi+4rEiFONwr1liLnq8yOWwAgAAMAjA=
Date: Wed, 19 Apr 2023 08:03:03 +0000
Message-ID: <DM6PR11MB31774133756416CC0B8D0F75BA629@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
 <20230419022522.3457924-1-arun.r.murthy@intel.com> <875y9s1gsl.fsf@intel.com>
In-Reply-To: <875y9s1gsl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH8PR11MB6731:EE_
x-ms-office365-filtering-correlation-id: e468134e-d47d-4300-c16d-08db40ac807e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ydE7CcVKA1g42dwzIOadUU9nSL9rWSP7Z9QM6UuRZqKMMli3qPeKvi86EsP/n80UQqfleeNR4x3yZSRkF1kzF/PaMJvgRshOYZ65wN4+UrRn2omarnB1LeBFRostI3+BCXwRS8rC4i/cSJo+ynWdVqum2oQtquZ+SIE+ucNEB+x5l0Jn0uRuIQwpLPh6wSGDzWumG4VkoMQba7SQzxXW1/uvOpc6XCLCEYcGRj335jKXC3WOJX0rdv186MJASW7wZJoXSx3HMgsvjpU5Ki1lIMdcQe+8U5LXPiSv9iQglZa4JuiWa/en/AKLVv/u2K7A4MMPJB9rTM2/buoh9wYOYyLMdFKoll/n0VGRZJ0S7jhzQ+VNwK1EcyALxoVYO1c87Z1pzlu1q+38M/dN6ELEfbbPOsQtNUlNTrGFDHrk31sIwEtSpbWMNbgt4iSlyxDpEr4oX03OHwUxNittkkhpATlw/zvgRaFdNn1NOnq142RLqbGRJITYEwwHnTaiX84/CtOHH++uT+1to6zFKMjNyslVkvjSw6h7vbC2c45RhG1bhK7Ynp87+NR4xkPFpXwoKUf5fuEjqH298UA/KbojwzHMd53veV0VKR34la4u1f7l69Nv30bXldL3fgRgy29L7V/zYJ6pMRvAJjb9wiyvEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(396003)(366004)(136003)(346002)(451199021)(186003)(110136005)(316002)(66556008)(76116006)(66446008)(966005)(64756008)(66946007)(66476007)(55016003)(478600001)(71200400001)(7696005)(8936002)(41300700001)(8676002)(5660300002)(52536014)(82960400001)(2906002)(86362001)(38070700005)(33656002)(38100700002)(122000001)(26005)(53546011)(9686003)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H0NSuEESDyUwoLeCs3PabzPXnJGi61f9lGDrJJOtEitPigyHKHXepPQorhRf?=
 =?us-ascii?Q?lzy1dw4T1kLrnTyrsT+L1KFGNwcscBT2U9fsw4OQWqfDd7oeyLbVhKKMPhoR?=
 =?us-ascii?Q?O/TFzqdg06RtDSXbLjK722PrzweWLPtw+BS1bwWrnt8RQA+RXNDRLmB4pprd?=
 =?us-ascii?Q?hjARzHKD5QMaTq2RHzuIMeWKiruWHG+svD+F7PX0gCT2n8Fk+HFWMcY5s8i0?=
 =?us-ascii?Q?o7dWNx5c8ivohf5nTFXCswzBqCy0pTPWNAMeo42oOQOfYk5v8usIFjwQ0leg?=
 =?us-ascii?Q?q0RoTrlHuWH2/ZwUOR0FcCaljKgWjrFzbWDz2ItL+G3hPKqQyLe8m4WCB/AJ?=
 =?us-ascii?Q?Xe2EFIBMcyfw/Ff81byoVpfAh/xhhe9b9YneTMyJ2qhFiSevzhFTd0ii+AuA?=
 =?us-ascii?Q?wPjihtHNeeCFmnOCKEeegQiH62tyFhUx2g3d924BmfjBkBODS9R5fD1WISXJ?=
 =?us-ascii?Q?+41T06WkDPmbY5n9JvamqxYbpobRK2uKfSkoH18mX/EIwpbF4UWb6AtNykoe?=
 =?us-ascii?Q?EBze4Rpppw//30ykZ14vK5Du+IVv8l1S34PbRjh5cRj1vp5Fm5nRWVfzZR16?=
 =?us-ascii?Q?iL0fL32iyvHXhaTqUPYRlWtFJ/Xm+747Glv9eEX/8WnwBGJHLJ8qoIERAXcb?=
 =?us-ascii?Q?ak8dPOYErgtCD0+RoeeynGWBazTc022d4iCtMqOwlPgYdiblFpXV3ZFO/lby?=
 =?us-ascii?Q?//aubIUA9LuIOrsxku9sEo7QcHOWQqvtRcK2/YM6fM1EA2oYTI4LyZ4sfsvz?=
 =?us-ascii?Q?gv6MhminEHNFafeVxqTagBwPh3xDNclMKAbIgMtI/zLIJz3iBYxkOB2OAS45?=
 =?us-ascii?Q?7Cbl0QJrUTWlbydHfdo2KcNHAg89M7lun/zjtaecg4zT/qPl3x1sVHLqFG4l?=
 =?us-ascii?Q?SPJCJSFPILWdsAQrvrTlKlCKp20b4kQRJg5NP0+AxAge+nwfSyeFQCueniV9?=
 =?us-ascii?Q?DOv3ve750KNhHNqEtRfXu6H8FIFIn9hCg/neCXcG6fgG41HUTKtKjXd/2C6n?=
 =?us-ascii?Q?ji1D1AlqM/zxcAd+PAlp7TjVjSPMacLixxIGbWPUq+BZO8FKZrrM9tro1esD?=
 =?us-ascii?Q?dOd0Uxh0oSrgxf1G+TGyxsIBhzpoATaqHeyvRDA6PdOOvka7gigvIenPtHz9?=
 =?us-ascii?Q?ODwtxMVWnVnHoNl7LDJgpixzX5JjFG/0bGmaFG7+/y1nZMsQwo7BrZbLKSHI?=
 =?us-ascii?Q?2SFLLhWd0iGn6SVPU2oma1BUoDWW4NydGTyzLU4d+KM3kVkDnDDlXoJRdxOi?=
 =?us-ascii?Q?rkZkYQp611ZVKresyHsUxBEjppwrR4rU8fRGaQnmd+fD3nkErkWhks51Lm/d?=
 =?us-ascii?Q?xl7QdZNY/wjmVyvVKOefczHdgE2GQyV7dyUWr3mZOmSLTrd/KQ1ZEXrhFL27?=
 =?us-ascii?Q?qvB0VAcxnq5Lj/K3EeHmY4+TuOx8cRgriThb0o4Tsi3wWc1K0q72bthYo7vy?=
 =?us-ascii?Q?6W4VWNZu7aAj04EsD6PjnuTXN1WH6DuzYfoNLDQ7Nrh/TT6l2KPXriRqxmgk?=
 =?us-ascii?Q?JxBjc/o3ba0LK8Hw9s6Tanym5oJuGYyO+XE6uIzmFOel2+kXIieMa5+zLB10?=
 =?us-ascii?Q?hEZuxNECGfP5Vdfp8zzPKqC/YF4PeFKoU/xwpJ0e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e468134e-d47d-4300-c16d-08db40ac807e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2023 08:03:03.7104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NwA2j2uOE1zGZv1+bbVT59yUJWoSLuthXs/f0g0nZ0ZxeHqYCILMv91hqVvOkA0Jm5ew6ynyj3HssyBHpFwXsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6731
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
 requirement
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, April 19, 2023 12:48 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
> requirement
>=20
> On Wed, 19 Apr 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > For 128b/132b LT prior to LT DPTX should set power state, DP channel
> > coding and then link rate.
> >
> > v2: added separate function to avoid code duplication(Jani N)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> RESEND for what reason?
Typo is sending V2 patch hence corrected and sent it again.

>=20
> Two v2 and neither fixes
> https://lore.kernel.org/r/87o7nmergw.fsf@intel.com
This is pointing to the v1 patch.
V2 patch addressing review comments can be located @ https://lore.kernel.or=
g/all/20230419022522.3457924-1-arun.r.murthy@intel.com/

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
>=20
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 62
> > +++++++++++++------
> >  1 file changed, 44 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 6aa4ae5e7ebe..e5809cf7d0c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -637,6 +637,37 @@ static bool
> intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
> >  	return true;
> >  }
> >
> > +static void
> > +intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
> > +				const struct intel_crtc_state *crtc_state) {
> > +	u8 link_config[2];
> > +
> > +	link_config[0] =3D crtc_state->vrr.flipline ?
> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> > +	link_config[1] =3D intel_dp_is_uhbr(crtc_state) ?
> > +			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> > +	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> link_config,
> > +2); }
> > +
> > +static void
> > +intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
> > +			    const struct intel_crtc_state *crtc_state,
> > +			    u8 link_bw, u8 rate_select)
> > +{
> > +	u8 link_config[2];
> > +
> > +	/* Write the link configuration data */
> > +	link_config[0] =3D link_bw;
> > +	link_config[1] =3D crtc_state->lane_count;
> > +	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> > +		link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
> > +	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> 2);
> > +	/* eDP 1.4 rate select method. */
> > +	if (!link_bw)
> > +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> > +				  &rate_select, 1);
> > +}
> > +
> >  /*
> >   * Prepare link training by configuring the link parameters. On DDI
> platforms
> >   * also enable the port here.
> > @@ -647,7 +678,6 @@ intel_dp_prepare_link_train(struct intel_dp
> > *intel_dp,  {
> >  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > -	u8 link_config[2];
> >  	u8 link_bw, rate_select;
> >
> >  	if (intel_dp->prepare_link_retrain)
> > @@ -686,23 +716,19 @@ intel_dp_prepare_link_train(struct intel_dp
> *intel_dp,
> >  		drm_dbg_kms(&i915->drm,
> >  			    "[ENCODER:%d:%s] Using LINK_RATE_SET value
> %02x\n",
> >  			    encoder->base.base.id, encoder->base.name,
> rate_select);
> > -
> > -	/* Write the link configuration data */
> > -	link_config[0] =3D link_bw;
> > -	link_config[1] =3D crtc_state->lane_count;
> > -	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> > -		link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
> > -	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> 2);
> > -
> > -	/* eDP 1.4 rate select method. */
> > -	if (!link_bw)
> > -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> > -				  &rate_select, 1);
> > -
> > -	link_config[0] =3D crtc_state->vrr.flipline ?
> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> > -	link_config[1] =3D intel_dp_is_uhbr(crtc_state) ?
> > -		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> > -	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> link_config, 2);
> > +	if (intel_dp_is_uhbr(crtc_state)) {
> > +		/*
> > +		 * Spec DP2.1 Section 3.5.2.16
> > +		 * Prior to LT DPTX should set 128b/132b DP Channel coding
> and then set link rate
> > +		 */
> > +		intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> > +		intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
> > +					    rate_select);
> > +	} else {
> > +		intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
> > +					    rate_select);
> > +		intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> > +	}
> >
> >  	return true;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
