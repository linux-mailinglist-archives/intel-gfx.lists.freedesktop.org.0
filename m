Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AF884B8D3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140C1112C76;
	Tue,  6 Feb 2024 15:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AgEbjMWB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC4D112C78
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707232080; x=1738768080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A2Zlk6KP0l2glhG+X+F1/9rYagYWR/Rs2Agp+MM8NkY=;
 b=AgEbjMWBZ86h93wyTG8LhJ8177//zRl9Wji3nsoLMuUBWmuYppRKW+aY
 Z5/1n0a7aJ5A4GdMlarkYdQ4Ogt1LQXWuzQa/Qa5QH+Fn5nVy9FK0eXUW
 ScLSZKTFx/ULjBExe8KOsqohn7s+zM+xKf/bQhu2twcTbu/Eo82KTlNRM
 lcrBYlLhg+0zDZmpwOkm4KEf9pR+1MkJ2XkQlEG643k00IBs08XZS7qag
 lDt2nfpvaqfxaInz1f1sIjXJJOeiSeliZ0RZNzq8k2oiSIyITzXgF75zq
 c+49zNWo3bS1J8qnOGz+3yuqgX4oeMcZQ5ahCKLcngBLY1kVcLwd2M3H1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="1036340"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1036340"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1360208"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 07:07:13 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 07:07:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 07:07:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 07:07:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 07:06:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tpyv9YrSu2oxjXMkWKJvhuPpnYwxwqifBszNlDvYEF1X90BZuyFq5Z9pkt63GodmiIWMCK7P3IQHaw24a+9ynGnBbBuFC5v43ALs1BhAUrXKbzFSI2ZYCVwamTVxFdq3Ur8nvZCfVlyGNtmx+HuSBQtG7bJqsm7wCoNBDPnaYi+kH014EKRoVYrBz1zTkGFYFdVOyYEGPsq+nTHBd5Z0FeDhgzg/4QdwnjXZf8GtS5EQI/NfOoYaQCEtoWYXozWx/K3mobgbt+NMah/yyk8zhZBaiQ671GZ3lllKJ0eVPelr50nciYaGzALC7Ay810dPvVPYn+4u5S2bHBk4KpWENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uVnKr+K8EZLQGiVJ9/jHReEGueEUyRLBDU5HmkdXRBI=;
 b=NtjkErKAKaJRIws+I9r4zl4Tc+FM28C0lGmF3bAMwK7j9mNYsZfXbDNRvV/p/sU+OGgWTy/1p/T63S37aTNnLgMdzAVki+EgAJJeS1iwvS0fM+KCFtYVgoNnwDir/SaaHd1rMzANAjWpAyIKF4tyYNuUI6LIg5VJMpORhh4P7rOp22R+MoWXI6VAQZ4mEsykvErvD17xrQ9zMnbjFQuCZ9phWq1B1LYQpO/m3jXRpMJU0lxhFbzJC71vl1x+cxxExtnGpDiMcO8Tm19APJy3XWeUuTeGJM5eEbIJF89cTqEyryHVvocn4PGJmqkyfY/wFtQ9Y/UVGV3bOBALWCxPFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7912.namprd11.prod.outlook.com (2603:10b6:208:3dd::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 15:06:02 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 15:06:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
Thread-Topic: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
Thread-Index: AQHaWOtqXCNYqQwHCUemvTMEbySyebD9MJUAgAA5MHA=
Date: Tue, 6 Feb 2024 15:06:02 +0000
Message-ID: <IA0PR11MB7307F175201A8AC01FE7EAB2BA462@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-3-arun.r.murthy@intel.com> <87ttmlddo1.fsf@intel.com>
In-Reply-To: <87ttmlddo1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB7912:EE_
x-ms-office365-filtering-correlation-id: 7373fad9-800a-40b7-9b89-08dc27252288
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BR9ak6iKNSHSixhdcz201gf7gl2wripfeK+QWdeqSxXf+wwKMDeL/QiF446/MYy61qhu53uZEcGmByzazkX8OLhaIiS67ZxFYYn+qi0KzVAMPRjEpgz/uFqnfq9OXShajGBR1Q235cqOwD/Nz3GN9X+xJSSmmT4cN5MQJIDUlzJ42oGlQuwkBQ71OP2woz5KAJHguBACMKAcOsbGUUsgyeRMdIWH1+aqGW+kRmzamwTvvQQQhyxIOEXgVXxeUZ/L/9KiXhJr4Tz5dJqXxlGpOnpDx+/4wLRYolhprjVndLe/+StRVdmOWtmWM98ITjkFnFIWkDV5oVXwet24C0MqbvlDItln621TGQbjIgBKzAcYm5RaMw86ynK5IFJKmJIca6JndfVUIu2T7cBDiB/hbC0m3zqmLxfCP5NosEprNQIHjxpQKCHi4JJd6iOczDOhNVaBbb8TRKEWPaPg2QWKuBFmbRZZoYC747/6YiHkQjrUQ/yvH7nS5a0cHEQ4T4j7R+GQyXgx3R0/+SY77NsaRkJrwekeT9cQ0btAV/fOUkrWFpiVB9hAPBDARKxJNQIzounZRo99wbwMG4hadRku0pJJNAQ6HS5aUhcBlCUaeS8rmwvWujMMaqS5kcBEWxfr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(346002)(376002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(83380400001)(38100700002)(122000001)(82960400001)(55016003)(41300700001)(38070700009)(110136005)(54906003)(66476007)(66946007)(64756008)(66446008)(66556008)(316002)(76116006)(52536014)(86362001)(4326008)(8676002)(8936002)(53546011)(7696005)(6506007)(9686003)(33656002)(71200400001)(5660300002)(107886003)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YGT9UFrTucOnp+muaYZT45TAwuMocduUNY6GiYDrG44UgG+CxDTj9IBmnGfe?=
 =?us-ascii?Q?7rh70VTFHUok3TXo06TbB7nevJnJaiVWjQgVk9NaEsimEmN7ZBmvb/jIAwdP?=
 =?us-ascii?Q?Kf5LzzaPsmECHvZ8V3J9/MciStMdSuuq/YojNe5TiguE0FpUsvAkm5vNEJ8Y?=
 =?us-ascii?Q?jzAqyg1pgDzK07xjysK25+ye7wdGvFb6KNOWiB+uuvWzAPypYtw7CqoCMCSK?=
 =?us-ascii?Q?wefloEKFCBsPsox+nH3zSIMY43bICOyxt/luDRtLNY4chtoSN1qiSzFBhb4+?=
 =?us-ascii?Q?GumTAFl5+3Zf+s5HIGYkJmqOPpQfAZ4TTYQlUgB9ssaZGzmtOkcnegkseLPI?=
 =?us-ascii?Q?LkI8SqcTJyUNbm8+axDMV10dD5+bdaQPuXgwJ9WGalVLqx3hAqHERJ7FmPuV?=
 =?us-ascii?Q?+57OWzoKzPrvuC/FVoi+GZBxPM5SQbxrzPfB8N3ktNtVhJB58fIFx/QGU4Bt?=
 =?us-ascii?Q?X9rAbi2DFtcmsxYXHNc9AhYaeylPpNbrpe/IcAbzUQLKKmdeKaWA0ZvqO5Rf?=
 =?us-ascii?Q?PIBv2T8PMSDt9nb08OMd8ZeeHB1SnXXM/o8WOymiBGXj6wfjYtG+RDzW780m?=
 =?us-ascii?Q?M4eTbqPpHcq+24JbTknk/ysnCZ7+Qs9bVIK45Fmqi/FKBLV6SHTPZY7BdQr4?=
 =?us-ascii?Q?uJlQ47rjrkqDJtSgC+CGU609OF4aYS3Ixepn67SSzEtDwY9vURJfgau3McO+?=
 =?us-ascii?Q?DQTBrCnZuj/rpyrvmtYG6t1IKR+8JcyieQsA2RJjH7sXNVjiMA2vwXwSiTkU?=
 =?us-ascii?Q?Ne6bsUXRlwY0hbBtwVjqOi/zVCOOzUGtsfnzaUdncRRZjK+Nb688Is8Q/gJB?=
 =?us-ascii?Q?IHsZr0NuNJqpMDlnwWm8QtDC9lwLMQbzP9Y1LzGlNLTWyiLNzrYmgCljRzqi?=
 =?us-ascii?Q?YhIC6P4BjtqOq2P4GBW8Vim/QPOgZnQlZ+3FL0UwLvEkvHrfuZWglKs5XbPR?=
 =?us-ascii?Q?+tMkFUocSPm+GFX6Qq6+CRssAdTmhZ1stXEIfYEmQ8SwxBLk5ZF4zt0nid/3?=
 =?us-ascii?Q?Fm12PQiMTOsNhtePskVaY7lHV+BAkQNkYStPQgrl3kqjxv0QaGy9XJ34Yfmx?=
 =?us-ascii?Q?2B6GaZjfj//2uNTttzMKmYo1LvP3Vw3HHq4avUj5uoeSn5wJ2v1wlpUXCyqy?=
 =?us-ascii?Q?4cZiefsYPidfg/i9u52LSpLZWBtfmcYitGgNOarD4jm8ovnKb42DU3pjQZgJ?=
 =?us-ascii?Q?lVgy6kmztOQldJ12KXTg+HLej+tjWm4YneQDWklrAzcatAxqJRygbY8r1RGP?=
 =?us-ascii?Q?xK6Fhayl3BpS/49TBCtuu1WypmnJgV+ho4pbAg2aWhCyVTEVTeI6JYSxGIMC?=
 =?us-ascii?Q?jlM4oC2vzN+t8bBm7VfOs7aBOZxB4TwBA/EkKS+T0GtKabkw25GtalPoebL3?=
 =?us-ascii?Q?LKG1SEKFXAQgHnTP6hH/BWrOpefA/2ZiOnI1VKOQVMR4J4kqA8YHT5b8wpvb?=
 =?us-ascii?Q?MNVVfveaBUqySfF/xY2GdEdzYzcoJ13OhmsPpKOb3GMIMOZWnmSIz1aH4yRA?=
 =?us-ascii?Q?3gKBtGUxnbzCgvsyG+19paQqzMPsQ1kVqVGQUTy6aJxOWIbrzMxV9fs84c9I?=
 =?us-ascii?Q?bfacbDGHDirBXvoQ3DU+Qrlh5QAqIDeHFV7zinoiQGrKJOjp5p6/NuD/3ydl?=
 =?us-ascii?Q?I9h52PZKPl5OM56HjSrArPLF/5TepCKjLGbK6ag9S4AZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7373fad9-800a-40b7-9b89-08dc27252288
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 15:06:02.5998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cD/3Rs5sdXb1e18UX6//OEL9fcb7KhqGjLtZSVa57lS92l5cmqSi+pcTu1nVjupwoCc5rkdlAWO3wO09sAxoZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7912
X-OriginatorOrg: intel.com
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
> Sent: Tuesday, February 6, 2024 5:10 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel=
.com>;
> Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
> failure
>=20
> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > On link training failure fallback sequence a hotpplu event was sent to
> > the user, but this is not requried as we are not changing the mode and
> > instead only changing the link rate and lane count. User has no
> > dependency with these parameters.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 1abfafbbfa75..242cb08e9fc4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1074,8 +1074,6 @@ intel_dp_link_train_phy(struct intel_dp
> > *intel_dp,  static void intel_dp_schedule_fallback_link_training(struct=
 intel_dp
> *intel_dp,
> >  						     const struct intel_crtc_state
> *crtc_state)  {
> > -	struct intel_connector *intel_connector =3D intel_dp-
> >attached_connector;
> > -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >
> >  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
> >  		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on
> disconnected
> > sink.\n"); @@ -1092,8 +1090,7 @@ static void
> intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
> >  		return;
> >  	}
> >
> > -	/* Schedule a Hotplug Uevent to userspace to start modeset */
> > -	queue_work(i915->unordered_wq, &intel_connector-
> >modeset_retry_work);
> > +	/* TODO: Re-visit, sending hotplug is not required. No need to
> > +notify user as we are not changing the mode */
>=20
> Yeah, we're not changing the mode, we're asking the userspace to change t=
he
> mode.
As far as I see mode change is not necessity. Link rate and lane count chan=
ge is internal to KMD.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
> >  }
> >
> >  /* Perform the link training on all LTTPRs and the DPRX on a link. */
>=20
> --
> Jani Nikula, Intel
