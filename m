Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4D289B691
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 05:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7E710F099;
	Mon,  8 Apr 2024 03:47:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/u/VKl8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CA210F099
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 03:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712548070; x=1744084070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x+Txo+pN1aeoXqqjiB2OQv6tvuhY6VEtTHjxefv+1hM=;
 b=e/u/VKl8sK+kFQVzR9NPnVqXfNqnBkY+5//ItA2zox7EGM3NLBejFyO7
 5ezfllqtXbu3vPSi8E1pFlRfN9B7qG8gBFJx/BjG41N0XMOa/CXNDpX5z
 aobAPPuvwv+/XqFb4XJ8E3BkauWbT6sl/b1EfWftKbx3BlXHgSCpjjEAO
 I93LfnmZ5gDe6aPK8gDFhLtpqbCNptW+yKvm+vXwjC5lui4ZGWiRYwqdp
 l39pdLIi788IUY9o6jgJsNJv+3Cxg73MTKV5dTvYNjl/0QLmnBKafTNX/
 8ols+llB13kcwTvqq2Cworo1G92dcFO35Bc4R2hBevfiw0XTAgicsRBhj A==;
X-CSE-ConnectionGUID: NUVOJEFMTlKcTkoCyhGC5w==
X-CSE-MsgGUID: Ouay7lJESR+L4wl5kM1IrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="11598185"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="11598185"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 20:47:43 -0700
X-CSE-ConnectionGUID: C8We2P+NR/GWc5z2R2cnYg==
X-CSE-MsgGUID: wf7etsZJScaE1j924tDafA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="57211116"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 20:47:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 20:47:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 20:47:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 20:47:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 20:47:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXhBS9NPrDYi+pdW8HG0D+mRgxjQlwnpUVbgKit0I5IeJKI8tEmwK1R+XjQ4s/hlqZBOUaWz03CU7G0OKLe17YleKR3QhZoj8/c5TD6xGPDDp7cVaiMan/vHcywUVQUpYa/YGg6SsVTXZeFWjDCIKJnX0vHl4XbsuUWpO1w4VsWl89oPTgtt01UBXdfdQEWPHyoGnEkg3P6oeR2gpskBXnWsOA+daSEIcWS5K8Aaf+5KX+Qyp/QpCFQujAzrFkV10yYEaTEJvm5cvSgRtRfypCYqR2BWX08jvgH1QwrP1FH9hZyy5fA1bzK1dJtFZpGvPQ8rUk/nfv/f7m9hiGn0gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q1d6LDA6vJbEAw7x0UxdDJdo2HrLw1boLCEya8wVpes=;
 b=QuoSsDHZhszbvR+VyWqvPRn6GKg/IC4dXVN3tVry6gz8jxyggdFg0JjDauL6tV4Q4s9osRfKmcNvB+fFXpdIpiJDVJiMivjo+AYrl0wao2wVPhLiOInaYS0gP3YkiKXuCDCDSggH0PaRPa/Rf5gWV81YHbItPEK0a5Ye8919YZvQtaGBVmxyt0Crjh+alnTYQSOU1aS/2SgpOOOTODNsa4U5hpqscT2RshUed849A88iRhfEQr6qMwa3OlQjib5dTkRM4jqYMuFbVyrBtusapDVf8EiCzYnKcxUU9er15DZI4yy3BTSzsIBRGs5uUnXaVE7dJSxEdo2neTtnYazMYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4545.namprd11.prod.outlook.com (2603:10b6:5:2ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Mon, 8 Apr
 2024 03:47:37 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Mon, 8 Apr 2024
 03:47:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [5/7] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [5/7] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHah4YBL4AmsMp7AES+yJD5hI4LY7FdvN+A
Date: Mon, 8 Apr 2024 03:47:36 +0000
Message-ID: <SN7PR11MB6750E46DEEA8FBB62418765FE3002@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240404032931.380887-7-suraj.kandpal@intel.com>
 <20240405182026.GA935433@toolbox>
In-Reply-To: <20240405182026.GA935433@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4545:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QEhdkmMKHmq/i1Z33gW63eXDki0wn9/6j+fsiCDZvatWBSMbAzURad3JCAzQmuFiVXTF48NEH1MOkABxBdTZEEbFafz8eqa0K2WH+ld4OUKDC4isAx/5CLyEJ2/2U8ZZLOJQs6VjHjEFAR1qMZ3LSn+B6coBlTBYZyjMAMg1ebZcAx6QEvxL3ffcCFGrrZcDEa6csWXx3YGOAjbyFnrrLe1i+y6w4qDbS4uly7GDS4IkCR6BJSZlbjgXTgXR4VuYBKQ9i+WDDne8Vs/55JfEgu7fnnkYm7exvfyFlnwv623oe0TK0aSjjzYOOC4FOgYcRir1cJjEkCbXz28n/5WgmhXARE/xYDcQZ1GFY7mjkc45xfm+w8R2jCUYCor2LMVU17Rz5IJ8uUsFhOdPCaDydZ9nmi4hXBoJYy4H51LOim0ocfolYbrC5gbcyDRO1nEredutijeM9I/ONFEfwT+x2Ku9Xj5uLw0xpR1TJQasaOYbMKAqfD0ylBG/3dgUSNvBcOVVoYuTmnWih+ROlWIdbDXq7Ty0BnxI5c+5KENGGHCQLyK9O1xHreQ+dNDKjQHc5YlQ0H00S8yNyomWuVTJuUFLZj3/WGxsKbANscMUMw7ZHR4RPr03yVlB9DOqwg5s6BsakJi/5gw5QPiqj7Hz+lqdwFVJ4XWAvO8IqjdIRGY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jFKgb7UbvqaVj1Faer9EAkIimxIKDqlwmLKodY4wO3Wn1eZsxEuBUHweE1gD?=
 =?us-ascii?Q?j/OTw5IOCfF2ap7sWbq+6nPn1/EOEW0P/Ib3sRl4KRXjSpHugnpg/NaGVqwS?=
 =?us-ascii?Q?xiCQeNYGtTVcb9dbB8Q/b0J/3pBNAw6myV7a7rDDxBzSc2vDX1dcwAHia/cr?=
 =?us-ascii?Q?Ph77d2/m3k7xQiGQ/IbO6yVMwcirVV1aQvAyeGX64v8LvXsKN7O6XdzDxWJ7?=
 =?us-ascii?Q?OxUT3+x0x0hd04kzktvzzC8pmpMQmOING4/P4A2m1Lu+x/bdL7nuFFQrV62d?=
 =?us-ascii?Q?FaPHNPrI3hsNJffLntYWv7gdye/qUzUQq18gZQ/6kj1YpeB4Knw82TCJWtiJ?=
 =?us-ascii?Q?2zF6IeyO5bbuKZJGuE3/4FQGNhQ6askhne/VogdSFf5Qw0FwyYO8w01oTl+5?=
 =?us-ascii?Q?29BV3OueU0F5WStHG6Ed0L3OMpJ4LCSjtbWknwnr3To5kqFoR1yr0SwPEIRA?=
 =?us-ascii?Q?b7fgONs/ZrgHMPBFglTmVyqsBunjJmfcBwcqsfhvu7ksZBLlOO6m6+lc5eMm?=
 =?us-ascii?Q?qScIwvpoTBBQrguAQPD9zpiEVsWXTIAzyhF+X0ehZmlXqe1kJdLCAE7E+cA2?=
 =?us-ascii?Q?v/gmS7TJQlX0jvqPtUVVZUrMJ2cDktk1yUUmQTyHfKl11+D6stz2pU7t14vT?=
 =?us-ascii?Q?OZfHHOfwMOkrOmCkUdWQ7DOLxZRyqSUkQRwEMqmGUVh+3DBIHp0KW+onNAUo?=
 =?us-ascii?Q?DQhLfCGljj88cM3Rb8idkdyGsar/k9nUkWZxRA5le4YjxdaXpcWhpjx3egXH?=
 =?us-ascii?Q?n3qGRWX3ph3/e0s5DBH53ZoD6QudodTdfI+ZKlVmofHwifudWCA+Wus1+Wdk?=
 =?us-ascii?Q?mbLPHSv21j7seUFF6M84ONpGcRRRwA8ECJxSPc6ZQ1Dqn3uVlXcfxTM+nddW?=
 =?us-ascii?Q?saRcKlfLJPyt1skkNxWHe4y9UQHM6xlzKXhzpHpOLjhWAjUlnjhiQ9oVjkjU?=
 =?us-ascii?Q?0ZjYspDXipFjn9gHztIN6HNSRKKXRx3jMJtPp5TfDLE0jeRxgNJtD3HlQ68p?=
 =?us-ascii?Q?AzfIzRHBzHh96MTGpCUV1AcZPA8Q2mM+U6Rq4aPRNueUrfIoTreH/qqPxclK?=
 =?us-ascii?Q?qE+zV8gxulmcfByFVp85OkLvN2N7hQ2BYdon/FvEd6Ef4VZqk6rAvH5o3zS1?=
 =?us-ascii?Q?m/RQAJWIL6ArE7tfoQREJ70xU9nAaavxLYgKAq4xE9yxXmQ74XPAr8Jhgpv6?=
 =?us-ascii?Q?I7RrS1avIvHPwjdl8vPN/Ovbms4KIP4l09KLsqH6WHb3AqM0A+gIoyPIi2AK?=
 =?us-ascii?Q?PfX6e8j9U26PAOvSuFCCpIvzB53gkflofEu4xh0AnuzN6g0s9WjyNWoxZKRt?=
 =?us-ascii?Q?1C92P6gQ5bFsBJJHqFE97JzbbP2GzuSrlamMQ3X7pAg20SM2jMUH9cDat46f?=
 =?us-ascii?Q?pdYXyYKmcrch3LvYp6A5uvkv+cLXGnL5JCvJgfJAmjmXAHquQWmnHkP66lik?=
 =?us-ascii?Q?xJgbGGSV7boLx5AzXbXvt7d+RAQNUPjtkOnnbV+HQmeFYXqgMIVtov5E7VCU?=
 =?us-ascii?Q?RjvysWXDNzcrOp9PMSxwWAqfI7OZ9RvBJlqfJ8Pv0Dw8/UTF1I0l+lg9gs8d?=
 =?us-ascii?Q?OELetnzoXVV+Xt233lXuPBH55ObRdZl2g42mRELU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c57a7803-cfaa-4fd4-3ee1-08dc577ea154
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 03:47:36.3532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NPNOGDUrh8D1Pv6L6SWkXDD/5jmdSYG1OWn/5ITegLsQCvKMpbrQRkToYmj5lUk1qWOZqtsP+KHpJEtUm5ysAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4545
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
> From: Sebastian Wick <sebastian.wick@redhat.com>
> Sent: Friday, April 5, 2024 11:50 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [5/7] drm/i915/dp: Enable AUX based backlight for HDR
>=20
> On Thu, Apr 04, 2024 at 08:59:29AM +0530, Suraj Kandpal wrote:
> > As of now whenerver HDR is switched on we use the PWM to change the
> > backlight as opposed to AUX based backlight changes in terms of nits.
> > This patch writes to the appropriate DPCD registers to enable aux
> > based backlight using values in nits.
> >
> > --v2
> > -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> > drm_dpcd_write [Jani]
> >
> > --v3
> > -Content Luminance needs to be sent only for pre-ICL after that it is
> > directly picked up from hdr metadata [Ville]
> >
> > --v4
> > -Add checks for HDR TCON cap bits [Ville] -Check eotf of
> > hdr_output_data and sets bits base of that value.
> >
> > --v5
> > -Fix capability check bits.
> > -Check colorspace before setting BT2020
> >
> > --v6
> > -Use intel_dp_has_gamut_dip to check if we have capability to send sdp
> > [Ville] -Seprate filling of all hdr tcon related bits into it's own
> > function.
> > -Check eotf data to make sure we are in HDR mode [Sebastian]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 105
> > ++++++++++++++++--
> >  1 file changed, 94 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 2d50a4734823..7af876e2d210 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -40,11 +40,6 @@
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux_backlight.h"
> >
> > -/* TODO:
> > - * Implement HDR, right now we just implement the bare minimum to
> > bring us back into SDR mode so we
> > - * can make people's backlights work in the mean time
> > - */
> > -
> >  /*
> >   * DP AUX registers for Intel's proprietary HDR backlight interface. W=
e define
> >   * them here since we'll likely be the only driver to ever use these.
> > @@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct
> intel_connector *connector)
> >  	if (ret !=3D sizeof(tcon_cap))
> >  		return false;
> >
> > -	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > -		return false;
> > -
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR
> backlight interface version %d\n",
> >  		    connector->base.base.id, connector->base.name,
> >  		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported",
> > tcon_cap[0]); @@ -137,6 +129,9 @@
> intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> >  	if (!is_intel_tcon_cap(tcon_cap))
> >  		return false;
> >
> > +	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > +		return false;
> > +
> >  	/*
> >  	 * If we don't have HDR static metadata there is no way to
> >  	 * runtime detect used range for nits based control. For now @@
> > -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> drm_connector_state *conn_state,
> >  			connector->base.base.id, connector->base.name);  }
> >
> > +static bool
> > +intel_dp_aux_in_hdr_mode(const struct drm_connector_state
> > +*conn_state) {
> > +	struct hdr_output_metadata *hdr_metadata;
> > +
> > +	if (!conn_state->hdr_output_metadata)
> > +		return false;
> > +
> > +	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > +
> > +	return hdr_metadata->hdmi_metadata_type1.eotf !=3D
> > +HDMI_EOTF_TRADITIONAL_GAMMA_SDR;
>=20
> This line worries me a bit. The TCON only supports PQ HDR mode so when th=
e
> metadata request HLG or traditional gamma HDR then only the segmented
> backlight is enable in intel_dp_aux_fill_hdr_tcon_params but it uses HDR
> backlight.
>=20
> Did you test that this doesn't result in a black screen? Maybe change thi=
s to
> `eotf =3D=3D HDMI_EOTF_SMPTE_ST2084` instead?
>=20

I can test it to see if we do see a blank screen if so I can add this chang=
e in otherwise
Ill stick with this.

> > +}
> > +
> >  static void
> >  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
> > *conn_state, u32 level)  {
> >  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> >  	struct intel_panel *panel =3D &connector->panel;
> >
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (intel_dp_aux_in_hdr_mode(conn_state) ||
> > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		const u32 pwm_level =3D
> intel_backlight_level_to_pwm(connector,
> > level); @@ -240,6 +249,70 @@ intel_dp_aux_hdr_set_backlight(const
> struct drm_connector_state *conn_state, u32
> >  	}
> >  }
> >
> > +static void
> > +intel_dp_aux_write_content_luminance(struct intel_connector *connector=
,
> > +				     struct hdr_output_metadata
> *hdr_metadata) {
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +	int ret;
> > +	u8 buf[4];
> > +
> > +	if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
> > +		return;
>=20
> I don't entirely understand intel_dp_has_gamut_metadata_dip, but I assume
> it is true when the SDP HDR stuff can be send?
>=20
> Either way, you only enable the HDR_OUTPUT_METADATA property if
> intel_dp_has_gamut_metadata_dip returns true, so you will only ever have
> intel_dp_aux_in_hdr_mode return true if the dip exists. So, this doesn't =
do
> anything.
>=20
> I think what you need is
>=20
> * attach the HDR_OUTPUT_METADATA property if you can send the SDP thing
>   and the TCON supports the SDP override (>ICL) OR you can control HDR
>   via AUX (>=3DICL).
> * always set the content luminance via AUX

Content luminance DPCD register does not need to be written from gen > ICL
It would just add an unnecessary DPCD write since specs state these values =
are
directly to be extracted from static_metadata_header.
Yes intel_dp_has_gamut_metadata_dip check is won't alone do the work and
an extra H/w restriction check needs to be added here.

Regards,
Suraj Kandpal=20

>=20
> > +
> > +	buf[0] =3D hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
> > +	buf[1] =3D (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00)
> >> 8;
> > +	buf[2] =3D hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
> > +	buf[3] =3D (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00)
> >> 8;
> > +
> > +	ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > +				INTEL_EDP_HDR_CONTENT_LUMINANCE,
> > +				buf, sizeof(buf));
> > +	if (ret < 0)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Content Luminance DPCD reg write failed, err:-
> %d\n",
> > +			    ret);
> > +}
> > +
> > +static void
> > +intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state
> > +*conn_state, u8 *ctrl) {
> > +	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> > +	struct intel_panel *panel =3D &connector->panel;
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +	struct hdr_output_metadata *hdr_metadata =3D
> > +conn_state->hdr_output_metadata->data;
> > +
> > +	/* According to spec segmented backlight needs to be set whenever
> panel is in
> > +	 * HDR mode.
> > +	 */
> > +	*ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > +
> > +	/* 2084 decode needs to set if eotf suggests so or in case of pre-ICL
> we disable
> > +	 * tone mapping and set 2084 decode.
> > +	 */
> > +	if (hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > +	    HDMI_EOTF_SMPTE_ST2084 || DISPLAY_VER(i915) < 11) {
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > +	} else {
> > +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] TCON:
> Cannot decode requested EOTF\n",
> > +			    connector->base.base.id, connector->base.name);
> > +	}
> > +
> > +	if (panel->backlight.edp.intel.supports_2020_gamut &&
> > +	    (conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_RGB ||
> > +	     conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_YCC ||
> > +	     conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_CYCC))
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> > +
> > +	if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
> > +	    intel_dp_has_gamut_metadata_dip(connector->encoder))
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > +	else
> > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > +}
> > +
> >  static void
> >  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_=
state,
> >  				  const struct drm_connector_state
> *conn_state, u32 level) @@
> > -248,6 +321,7 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	struct hdr_output_metadata *hdr_metadata;
> >  	int ret;
> >  	u8 old_ctrl, ctrl;
> >
> > @@ -261,8 +335,10 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	}
> >
> >  	ctrl =3D old_ctrl;
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (intel_dp_aux_in_hdr_mode(conn_state) ||
> > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> >  		ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > +
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> level); @@
> > -272,10 +348,18 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  		ctrl &=3D ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> >  	}
> >
> > +	if (intel_dp_aux_in_hdr_mode(conn_state))
> > +		intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
> > +
> >  	if (ctrl !=3D old_ctrl &&
> >  	    drm_dp_dpcd_writeb(&intel_dp->aux,
> INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) !=3D 1)
> >  		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to
> configure DPCD brightness controls\n",
> >  			connector->base.base.id, connector->base.name);
> > +
> > +	if (intel_dp_aux_in_hdr_mode(conn_state)) {
> > +		hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > +		intel_dp_aux_write_content_luminance(connector,
> hdr_metadata);
> > +	}
> >  }
> >
> >  static void
> > @@ -332,7 +416,6 @@ intel_dp_aux_hdr_setup_backlight(struct
> intel_connector *connector, enum pipe pi
> >  		    connector->base.base.id, connector->base.name,
> >  		    panel->backlight.min, panel->backlight.max);
> >
> > -
> >  	panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connector,
> pipe);
> >  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >

