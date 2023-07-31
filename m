Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2593768B6A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 07:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F0310E1A6;
	Mon, 31 Jul 2023 05:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9348F10E1A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690782922; x=1722318922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sda2VCZgNfh5y8vTzF1u25s+tPMa5F25iS/E4TH1WSc=;
 b=hOGT3f59SYrRw3RlbCKOg9wDzin4IlAg5ipet+hbm8NZ+wJZ0l4Y3o3i
 EP9dwiXifjFc4AFKrp5KPrBVEZPd9MOA3Bt8BJVDZhKRvyOA2wnt/Pgf3
 fcbihBmlAXtokk2EnsscRWT569xBx+zGCTWRpDAbJ0yKuu25xXYYqqS7z
 S4BQ96Qq/LVIwcpPaGZS4B5nFBUY0qdlZmDL7COu//DtElLEQXdKPXhGI
 JHx6wVh1UXcF26VrTy0u2LrEMKbvvRPKDktuqqvrq/3xSiPQbsQRh+uE1
 jfMyz9dTtBIeq5/Tk4sxVKav+T/nUUeFoAylWIywPxcB/6DHSrYO65TJr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="372555751"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="372555751"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 22:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="728179277"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="728179277"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2023 22:55:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 22:55:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 22:55:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 30 Jul 2023 22:55:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 30 Jul 2023 22:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=abij3S7f00H5sXEeqGN0KGOvnUE1qxeLn11J/TMwr1VhQhYV5qIbqDXDQ/Iz0FfZfgNSt3PUF36tw2iFGkzXGy0whNQRinloX88GNUawre0jjasOAJInUnLOzYyZJzUIYSw8kwRE+djkqt/2tF12GBy4U3S3kqwPbIb/n1mYp1peJy7U9iEDnZAX0LJTp5/pCPbu6p20W0q3Io3l9i232y7h6tOrQ1May0jGI8LfvsMYPlvGMmyjLiAt1KWakqk512p1Ijp91Ed5LHFsJg7hFWypP60uIX/8cD1gWcMZfZNbh0zwl4Jv8eeA0kOYInQ87Gohm9fPEdch4fdKbvvFuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hi91pMTbO2EtJZeV3b9V8NwUB968Rhq4sbSGeCEHe9E=;
 b=gDtGagnAZwfev8l/TLJ74tPsrfxpPhSYjXKm19zqM+j4v0EAOgFTk8XJLo+IYmla2ZZewtmJFjrHnW5tCzgR3pcsSzyHDx+lPxoftQqDw6QaQxE/Hug6qskF7zsBC86hOrkpZWh5vdXDn3dcSBScLrbbazTFfqwciJ/b5xJJ4lB9DAIJe6vZRLx4xsJmGLd5PaJJAjqB9HRzkkWp9VvjiOT2I/9NNPaYRg7x3x/VQvGWmSLSIeyj+4rccpwzu5ZuB1VregU18549A6BFrofE5k97m/mr4dkQOIp2B+L5+cwyc0K7lvXLGieIQ4mBK2AaYcMPywtTwY1Pjl1ytWLI1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SJ0PR11MB6742.namprd11.prod.outlook.com (2603:10b6:a03:47b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Mon, 31 Jul
 2023 05:55:17 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 05:55:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
Thread-Index: AQHZthZXXIyDAUTIJkyTaqNVHujv8q/O/K+AgAR9eIA=
Date: Mon, 31 Jul 2023 05:55:16 +0000
Message-ID: <DM6PR11MB317751DCD7C0B1B87EA94F69BA05A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230714053733.2117730-1-arun.r.murthy@intel.com>
 <SJ1PR11MB61292C56230D5D4C493D9FE1B906A@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61292C56230D5D4C493D9FE1B906A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SJ0PR11MB6742:EE_
x-ms-office365-filtering-correlation-id: 31d7cad3-a43b-4bd1-f864-08db918ab740
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nqlOps5HLqtp8ASEKp9p4mUJxzPL2TOTOoZVRgcFQh/U4Dn8OUNXdGBtL726Cxs6JgNaDS1arwq3G2m1dOiY+IN6Gr23rFWubV+AMt+Ay8ejYxPI067rkNKemCTypA5w3bfZ10TJdhwi0PWCjxhXNkdABqAn8tMK4POtGzNI+8NEUTBb0Z8WV8pn4ckP6nTIy5CpRJLjSOR7Wtgs5EnAOLQRJrJWOddl041ObvO+FRJHCtaj+DdvrAhTizwG11JQkodCLoSYQUJT0pa+Oh82qN6ER4B39EvX35yDP161mcO4kDKW4lImFZCPDOLJQmComoym0ntqUnlOSjPF5pDcGLNor01P5jBMiDap6kuNz17HXzT0EzZXsRyYps29PMD8bc3pTfxK4oSQAyRw3zUL6m8gBY5IS1UUp5rgSjKFHDgZrTuroPv3dU9ByEK3wNS38RZ4SnCzvFxN8KLuBL8wqWbG7e0AzvSu227/L7GyzE2UZMDfMf9nRqoc5n9rGHnQBZ981jnnho+QGP14cURH/vg0gboHOG+6t1jyHqF9f3AS0VvHAB+jZEveD9uao/IzuX1QkXD8E31arr+Z9rICJbS+2t9waXXZuRT/d8DQsuvKekzEWOydhC9IqXc/ZYW7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(376002)(39860400002)(136003)(451199021)(53546011)(6506007)(26005)(82960400001)(478600001)(186003)(55236004)(71200400001)(122000001)(7696005)(66476007)(66556008)(4326008)(6636002)(66446008)(64756008)(83380400001)(9686003)(66946007)(38100700002)(76116006)(5660300002)(52536014)(33656002)(41300700001)(38070700005)(2906002)(316002)(8676002)(8936002)(6862004)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t3GCGquX/HqX4gYZzAxDcmMa8dvFQK4Q2jeqtK9J/IjkbtQ/ppVhHo8aKzbC?=
 =?us-ascii?Q?cQNR6Q+g4LsxkggDDVdo+KSzNJ1uj12chgWZXaXaIGGNhw7P6UpG8ChN2LQb?=
 =?us-ascii?Q?OhSayIPmexgfLekzKvnRiXjn6RSydhdZtjQBOi5pHTcRFVjbMnf+A0rfgclR?=
 =?us-ascii?Q?DizyG3s15ceHPDe+eZxtJR7w5WC9BmTmTBpHNzHwPSl4ysydHogiIWa10jYW?=
 =?us-ascii?Q?Erc9BXFY14h49pZ9IYTnww8KF6bHgy45mv2Gs5R5bbx6+ffYikWvxPASyZfb?=
 =?us-ascii?Q?Lz96fCkNqAgZlby9/7jc5fdIBXt225F/Qp262SwcqqcrS/NUo0ZU1KYjypLz?=
 =?us-ascii?Q?XWQ+5Ljn/NezYPHzkWa6D5+JeOBKNny8ZYt/g8/EhgmBv1O9nb5lh1cWIqVA?=
 =?us-ascii?Q?/YotlndAtxRCPm1t6S4XWxE2WewGQQW/s16puI3vr/JX/Adt7Z+S4eJ7NeUl?=
 =?us-ascii?Q?f3hoeqZFS7N0vhckI8dF4DL8YapnrSNFSqcsS4ijdAttM5TStDIMmEjpEgfl?=
 =?us-ascii?Q?jhA2D8T5Bd7eLVXi4vTM+UDNaZ34J8vN9sO9yiLTtAN0/B7m9x+/iujvzK1U?=
 =?us-ascii?Q?Ir/QxBFRouVcHDw1Vdfoqu0wQpGrTTZfAsHL9T2tKvUfmjmSz/WzmqD5rjfc?=
 =?us-ascii?Q?25t6QH8qkjgnxw+2fyXUD45RETRrrlW70wwRBn/2bfOMs+kEqANHOJnAHRoy?=
 =?us-ascii?Q?ADFsp3YV1kS2yGRdjTECEJnBEB6VhAgErdZPA/6qmQFu5X6zQYi3pGtZ7DWd?=
 =?us-ascii?Q?w9Fi4ZXBKc6eI0C9p5qJOIrlIQTYPZsrSafOO25H8beULhX5VmrSt3mlBTgX?=
 =?us-ascii?Q?2apKd5xYvoxPq/z1Wj4nQk2e09PM49/cYqk/tReuxszoOKXGa+4vuX/sKrT5?=
 =?us-ascii?Q?ffInMyQ5hZmm5uvZWv0x92YlGOaz8D81aVbuXcVUH7duf4dkfXfmCqpUeUNM?=
 =?us-ascii?Q?/v1aqYh3uQ9r4hnlMeUZEI0d274TukNfLiBaEkEWZx/fo6kwCLRLagYOnZ09?=
 =?us-ascii?Q?HFKORUsyT+y8LR7lL+GiXZSzKDCGee8uhMlINwak9TSy6qvbFA7XD3hTSqHy?=
 =?us-ascii?Q?78ysZxiTK8oK0irWlRcwOMl+k0xcIEq8uXIFnbkaDHdfCblkEcX0tHh8+PTy?=
 =?us-ascii?Q?2jB4ah6KW3HDckt3gBKf1qnJsNTiuNhSyWQkIWmniaMEWUHcokTj9MmvA+8Y?=
 =?us-ascii?Q?W2250S18axTEitndsl0az0eWHfAT7cCbtHiw25x20nGTKsJRyL92KQoo1JlN?=
 =?us-ascii?Q?hpg0LgjqQ20zT5+balC8gn0Wu4fMrtaET8hrrfZ7QOQcPEYw90Af/42NhoSQ?=
 =?us-ascii?Q?A9+utv2RGh76dazrOZB7iTMi7Oj7/LEmllH9Y/HJTQtwknQ0ZD2njUnEGmVS?=
 =?us-ascii?Q?fMqQr69KNTLjZk15ClcY1Rsa/omBusaRvhNbS1VCnFcqCE50XjV62pbUoJxx?=
 =?us-ascii?Q?nuJl8w4JRIdVLHzC06EXFVDMpJt6kh2lfkZAikkRgv1qtmWaI7ZmiCUFwLUl?=
 =?us-ascii?Q?bCz+/Y9qxSIZKf8i6EJnl0Qh6LWCnTGhzEyRadgGvj2Nf1En8Zoi0pzdvuFy?=
 =?us-ascii?Q?c1i0OkFWaz1hAbLUMOrZdDqUG+BW+TNWAmSsfYdG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d7cad3-a43b-4bd1-f864-08db918ab740
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 05:55:16.8783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wOyuGFEsi0DhBOgdtti2Zv+uUXuX4eXzAKzNMq0sLhgXOmh9yuWFxDnrnY5UfvJhbVG1/ryvfwVeMDoYLhS3zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Friday, July 28, 2023 2:48 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP C=
RC
> enable
>=20
> Hello Arun,
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Friday, July 14, 2023 11:08 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP
> > CRC enable
> >
> > The debug print for enabling SDP CRC16 is applicable only for DP2.0,
>=20
> DP2.0 and UHBR?

This is a DP2.0 feature that can be enabled on UHBR rates.

>=20
> >but this
> > debug print was not within the uhbr check and was always printed.
> > Fis this by adding proper checks and returning.
>=20
> Typo.
>=20
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index a263773f4d68..4485ef4f8ec6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1390,11 +1390,13 @@ void intel_dp_128b132b_sdp_crc16(struct
> > intel_dp *intel_dp,
> >  	 * Default value of bit 31 is '0' hence discarding the write
> >  	 * TODO: Corrective actions on SDP corruption yet to be defined
> >  	 */
> > -	if (intel_dp_is_uhbr(crtc_state))
> > -		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> > -		drm_dp_dpcd_writeb(&intel_dp->aux,
> > -
> > DP_SDP_ERROR_DETECTION_CONFIGURATION,
> > -				   DP_SDP_CRC16_128B132B_EN);
> > +	if (!intel_dp_is_uhbr(crtc_state))
> > +		return;
>=20
> I see that while calling this function in intel_ddi_pre_enable_dp(), we d=
o
> have a check for for DP2.0
>=20
> if (HAS_DP20(dev_priv))
> 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
> 					    crtc_state);
>=20
> Should this check be added within the function too for the sake of
> completion?
>=20

HAS DP20 just checked for the display version number and not UHBR rates.
We need to check for UHBR rates and then enable this CRC.

Thanks and Regards,
Arun R Murthy
-------------------

> Regards
>=20
> Chaitanya
>=20
> > +
> > +	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> > +	drm_dp_dpcd_writeb(&intel_dp->aux,
> > +			   DP_SDP_ERROR_DETECTION_CONFIGURATION,
> > +			   DP_SDP_CRC16_128B132B_EN);
> >
> >  	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b
> > enabled\n");  }
> > --
> > 2.25.1

