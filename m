Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C278F84C4FD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 07:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257AF10E620;
	Wed,  7 Feb 2024 06:29:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NRFv0jeY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E17610E620
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 06:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707287354; x=1738823354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=j07LktgDm4YUNepVMVEf9PycwbS2KT7UKjV2XC9yZtU=;
 b=NRFv0jeYsn/aEeX+S4CXpDISIs2OerJalu3J0MUL7+rc8RrmEtNp/pBC
 eVARjtcD6gw/C2+Boz/qAu6lnFfBf16eiW7flqnGvxzKyDhZeByiKOE4G
 0d8Pg1cN6jnja5Bo9jCLS1mZ3FzNOK8P3kVPCQFDraDJJLAJGqcCXTQc6
 7O5E1lAPAMUoKK7gSXPoaFpGZ8KOF65D5NeZNghyc7VbNxcvSUMFfO73b
 S5TfO7XYJP4cLXLAQO6m/CtRysBG0P0oyz9kfBRoMNq44SYLAIJSgkx3L
 V9G5X23zLBtD1h2gcA1pXFofyH19yhuvOn4i9ZZA2mivsM85xFf9b8UPe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="827854"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="827854"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:29:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="32318420"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 22:29:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 22:28:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 22:28:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 22:28:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFgi3WKi2dPL9WhmGXFz46F0zPgx7ODTqHIGCceXrChUCgO8/ZbCnuIQR1MkkNjL1yEPrgeTwOJx9bLTMrWEZuCnx2PrD3+zpw+vfyFcfYCWg1aYuT0505YmsFLQC5SKh0xyf1r9EZaW5n9dwOmqxqll3CGnsMy9JAxADMMCoh93LRxP0QUWRIYW9RJlSawUtNoGeQ3MkTcEqZQkM39Yn1gRmfezura9RbEzwso98eNlU2yOAw9hZ99qB0po5WTcPo63eH+FUBbxMY1BwOurTsFoK5qsMxveui1KvzUAHkvNO6VNo6V9q63BbFkDPMxFdNtAEmi04Gq1Miag5hPX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3E28/SjmZx9++jpx3gQt5udL6+CQfemNfACOA+cekkc=;
 b=LkI4+M8P2ZRk74jAP2MWYi46HY9zsLP1T/ou5dBOQGTHzYIgEq7tvDn2PmoBcJhLaFfk8QZuR8kKsYJnu9sebLJQniety/W8fcR84IRGQshRwtmsgTrpyI3mkjxMQEDr+w0OMenR3wiDjoxUKNZ9NolXOWEo0J9TSJtn4BcJy/Z7doLh2MGjFHer1BTRV9KLtrAlZEh5ygOXPKmu8IhhaJBX6mzEpby/1/x+3sPguUvYfqkAMatA9wQo2YHUGMMRrzA4NM90tHJTnPSJNCnR4LHlly+BPd1UMh5naw+41gYA7YK3PRDMGpkjcgFDdwtASxQtPyb1+sPyeGO56xon5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by SA2PR11MB5020.namprd11.prod.outlook.com (2603:10b6:806:11f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 06:28:29 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7b7c:b25e:c600:a7]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7b7c:b25e:c600:a7%3]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 06:28:28 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
Thread-Topic: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
Thread-Index: AQHaWOtwHjcl6ltogES34B52GvBEP7D9MJUAgAA5kwCAAQG4gA==
Date: Wed, 7 Feb 2024 06:28:28 +0000
Message-ID: <d6820247b64c63a230f105dd25ee78fd955e0c23.camel@intel.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-3-arun.r.murthy@intel.com>
 <87ttmlddo1.fsf@intel.com>
 <IA0PR11MB7307F175201A8AC01FE7EAB2BA462@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307F175201A8AC01FE7EAB2BA462@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|SA2PR11MB5020:EE_
x-ms-office365-filtering-correlation-id: 0cd4f5e1-4fa2-4fe6-de57-08dc27a5ff4f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6onvELuU7AfseeEsK8KcVJrh+TR9q1iLXL/3tPlVUa6zGHMr0rAiU974G7jE9iDy+oDyWe/NnVDrsdgF/Hk9wxKkNklZzh/mY8gF+LUXHyjLDaqbBSmKhC4Nvc+Lq+/JyIe9G7pEqU4x0IAqCrJHhwa+UEIZAycPagh+flV/GlFPjK/Xwd+aLeVvTxSmFwJZc6aY8J9ti6sgJ+qufS509XCx/gMqLD1DzpUI/a3pTguYTFhRteI5dX7uXvWB+eoJs5L1jd5V9pVrf5FaDCnbMY4kVXJN4v08A2pwZDfNAf7aqWJxZD3+uIy1T17qWhUcZ1p5Vd+XE54mW8WA6GPY+zF2duN8B3Nz9jO77c9YaudOB5Lvvd2l+5+EZYeJXe94ZLzGMYG4gVfSf73wua1PawC4/+lSaZ/cdmLHNgorYXxsLKoBUSTJZaHI+Fqn+Yse8t2dElfdO9liACTyY060VhWVEywk6w4t6MtUAwomehSy3v2rn/lmTsLN866R5C9jsltps/jdBGj3I5jjnyYBHL9ui8VDWHNoIRnl1O0zYmyIbCtF34X/5GNWmoyTGNsLXZH2mIYdOy7sGE2w8S0V2sjG2YDzuCENnmeruOoyX4e059/BeBLJ0g+t9Pkz6b5J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(39860400002)(366004)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(2906002)(83380400001)(122000001)(82960400001)(38100700002)(76116006)(41300700001)(66476007)(66946007)(110136005)(64756008)(66446008)(54906003)(66556008)(316002)(38070700009)(86362001)(8676002)(4326008)(8936002)(6512007)(36756003)(478600001)(71200400001)(53546011)(2616005)(5660300002)(6506007)(6486002)(107886003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?rdJYE/1v2wEcZtiSTKFGvQRfmGRPykFWjHZ6kXefK1J0ptr72JXvqXNJi?=
 =?iso-8859-15?Q?N3n9fPUhzTJ757SQQ0VXrp/vRaD0ilcxpZhfimsQ73loMrynLZ4lqrJOE?=
 =?iso-8859-15?Q?GKif+TLu05rtF+PLY5IuGP1Jmxo8UmHhUwhetFFtv0zOQlloy93T+dJz+?=
 =?iso-8859-15?Q?6tzpV+Gj4/eGzcH/QE9lf2wHWwcrnS2EYgBN3QMukF1ztJMkEckBXJnYc?=
 =?iso-8859-15?Q?gQtAMDVjO9Lmg/AViKaLFhDL2SJ5ymMWS5S/a7qSvNe95ovTvEj+gAroJ?=
 =?iso-8859-15?Q?vyH73em2K4RLIA3desLKRUF1R7rAGRIN5zgWm21XwkopK2HbxlkLW/xCk?=
 =?iso-8859-15?Q?9iwGIr02aihufJsaLRbRnYMhGwerI9eB5C+H+AOk3zAm++tYSxjV32r/m?=
 =?iso-8859-15?Q?CQMFxrgtpBu8uf2PTv8PVUe1rqTxL44DsSisdXPw51HwoiraLw8Ie/m9Y?=
 =?iso-8859-15?Q?RxPA2xmID6yFx+gcAMCiFGOPZnvBQhhmfts+nqeZRpP1h/geKXB6+paBH?=
 =?iso-8859-15?Q?22bDicUBxD7FYt2i9rVbatD5XFjuG0GjIahCB9Ru6CoUE/ByfSFLFkDdO?=
 =?iso-8859-15?Q?4F9ahy/h3+l1wZWKlosOBjaIxjT83HjYaPHczQmzwmnolHQd8y5VK4A7o?=
 =?iso-8859-15?Q?FccmYuvIGX0UARd0TK4nW5CxOpqXhSlWKLQj5dpN9ImkltX+a9S2I88iz?=
 =?iso-8859-15?Q?uOjubJNzDORc8XJszIXuDQSm1vPu0SajKCbkr2hS3OkfR9ZOokMoxWV7O?=
 =?iso-8859-15?Q?hv+Mx1A3pokrMBuNoImKqVZraKgRHJKYzuSbTdrFZNlaMVCjOFFZXosC8?=
 =?iso-8859-15?Q?A6FMEmmPJyxHN/nYcuzIPVfLSeZFkrwjUYWDHYPh4sxiEJt8S5kK4C3B9?=
 =?iso-8859-15?Q?CbT71RUGV9m57R9mQzWZngsUwQXdFz/uXUlmSGdJMTqtDi+2xg6VNz/RY?=
 =?iso-8859-15?Q?Nq+dXHECn9fNVhFYpIRhKE+oWG+vVDl67a7SY9dvzNlAj8H0cBvznmN2P?=
 =?iso-8859-15?Q?16O9VaOfE99P1BcvBq2IXa/7J6T8uA+8lZNupcWwJpeLQ9dMaYQqfbMCt?=
 =?iso-8859-15?Q?8nPrBx53cfNT/svXg93j6H1X2lY3tgZUe+FwmrmvJp0t9EsPfYrqBszxk?=
 =?iso-8859-15?Q?xX1IUIxvDN9DXoZ6cljTwGPHBuGRuArcUld3fNs0P1cB6u5Yg54WuccKw?=
 =?iso-8859-15?Q?vf7i1rXZcP6BdquIx1/ksDy4cuLA0KTb53W00KWCsjVHD8M/t7jPZ+yU6?=
 =?iso-8859-15?Q?jlmqjn67WHt3SOH+0DfBQVk2qxP9Oc2QnRPMyAuZ8r9ItbHN4PvGgdliv?=
 =?iso-8859-15?Q?uu2rjTd4lbsR9P32E0L+41wxZ+swE2ROSgkh/YzNpiM/BrhDHuC7V+7qp?=
 =?iso-8859-15?Q?BjXbt7jUflKgk5KIpFm0Vm7RSPNBGWtPrPOkSPF4MJNh0OG9qlEaB79JJ?=
 =?iso-8859-15?Q?BpOkcARatmDxbTdKhj860h3NqPUo0uooFr3+ZD4KVlF4qoPLbgGznBQx2?=
 =?iso-8859-15?Q?k1GCfAVpvDOCu0YB/rG3W4WxjyENhdKAwvIrjWIdjZsz29jpFUiKUxRaK?=
 =?iso-8859-15?Q?IWyjmQEvYqwWGOHd0DqUkoZrVTHgd6hW6vfKIoT0vOduA7wHygVcSLkXG?=
 =?iso-8859-15?Q?sp0bcaSCAe0eVYcyqLP6RhJIq1I4jx7kI/KxCpwM322wRX2PV1ZRTd2HK?=
 =?iso-8859-15?Q?c3P97oGBPTqX3w8Hy+Ag2ryctJZlL6AuWVrkzbe+AC5AL3/pc8u3xdL2I?=
 =?iso-8859-15?Q?yNCyXF5fYssMKqxJEDMfuSUTkEo3X+nNZID/huPM0RsRdiWiLu6aYc=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <2105E4701AD1F24496741BBF7BF6FE50@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd4f5e1-4fa2-4fe6-de57-08dc27a5ff4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 06:28:28.5851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +D0ptTaOiU/sOlBY35x5Tb/g6rrfzMAaG4GaUibItaDFcpJIzcwKjCzrupmds35C0QFTjozey7QycT3bEARk0e51GE9wDe1DQqmmyMsmbwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5020
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

On Tue, 2024-02-06 at 15:06 +0000, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Tuesday, February 6, 2024 5:10 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>;=20
> > intel-gfx@lists.freedesktop.org
> > Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <
> > ville.syrjala@intel.com>;
> > Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> > <arun.r.murthy@intel.com>
> > Subject: Re: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event
> > on LT
> > failure
> >=20
> > On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > > On link training failure fallback sequence a hotpplu event was
> > > sent to
> > > the user, but this is not requried as we are not changing the
> > > mode and
> > > instead only changing the link rate and lane count. User has no
> > > dependency with these parameters.
> > >=20
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > >=20
> > > diff --git
> > > a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 1abfafbbfa75..242cb08e9fc4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1074,8 +1074,6 @@ intel_dp_link_train_phy(struct intel_dp
> > > *intel_dp,  static void
> > > intel_dp_schedule_fallback_link_training(struct intel_dp
> > *intel_dp,
> > >  						     const struct
> > > intel_crtc_state
> > *crtc_state)  {
> > > -	struct intel_connector *intel_connector =3D intel_dp-
> > > attached_connector;
> > > -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > >=20
> > >  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)-
> > > >base)) {
> > >  		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on
> > disconnected
> > > sink.\n"); @@ -1092,8 +1090,7 @@ static void
> > intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
> > >  		return;
> > >  	}
> > >=20
> > > -	/* Schedule a Hotplug Uevent to userspace to start modeset */
> > > -	queue_work(i915->unordered_wq, &intel_connector-
> > > modeset_retry_work);
> > > +	/* TODO: Re-visit, sending hotplug is not required. No need to
> > > +notify user as we are not changing the mode */
> >=20
> > Yeah, we're not changing the mode, we're asking the userspace to
> > change the
> > mode.
> As far as I see mode change is not necessity. Link rate and lane
> count change is internal to KMD.

Userspace may need to reprobe again in order to ensure that the resolution/=
refresh rate still fits within the bandwidth provided by LR/LC.
Also I believe this part works with DP1.4 LT fallback when we tested
recently.

Thanks
Khaled
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
> > BR,
> > Jani.
> >=20
> > >  }
> > >=20
> > >  /* Perform the link training on all LTTPRs and the DPRX on a
> > > link. */
> >=20
> > --
> > Jani Nikula, Intel
