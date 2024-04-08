Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B8E89B7D5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 08:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5390011214C;
	Mon,  8 Apr 2024 06:45:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WN7wJ2AM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A0311214C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 06:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712558745; x=1744094745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eup771bQJtxOArH3sG/uL7S0hmy+LsTxXSN2Qi+aTHc=;
 b=WN7wJ2AMDIUfJUxMS0aHAdNw49loHsmHeOBYNiFQwdo+mIliPIWwLM/G
 /koiVgZKeOeEuVQaVa4APF6ys0M0sOqkeZKyTOZIF5x0JVJ1taIRDc8Gw
 nkHL7j5/Xd8mDWevQliOJQoRivnaQ90TJS8pl29GA1k2+TyaqNbVUS8Gz
 +Z/PJ5g4WbABgy9UcHCKwXy5y4QY1JAK0id86DNgyUy0GRuPrMBqeWiRi
 GJoaSV32eFHfFq84oAMybAMCytehOC2WjoO/fxiRMhTblQe0SASMqTV4d
 Zu2X78TixRG//CFYfTlUrp7o+FoAAfggGITBHA6M9J6vfkDnEWdh4yq76 A==;
X-CSE-ConnectionGUID: P2in4IOfR1mI2lze4/bXJw==
X-CSE-MsgGUID: nq0UaU4sS5mvlbdhKD5gQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7695294"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7695294"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 23:45:44 -0700
X-CSE-ConnectionGUID: QAVwkS/1Ql+gPru2/+g9XQ==
X-CSE-MsgGUID: j2mnGf9WQEGUJ4n6z/uEbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="50765983"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 23:45:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 23:45:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 23:45:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 23:45:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzpaTyW7WK3Z4MUlfPgVz0gM5lQoMiggRY3tVJC7o95RUeantkIXswVculbt3RWQaqcyzbdtNB0KQfDdXZAmERPSxcKJLXTPpwc5gC0VzfLLftvpNfymsfbb4dbJB+a65OnpWKEEmoeFqPLZyUfmGQ2VIbiSpyTrkOVG+I0k6YqmZzTBqgTLUu3CZpREvqNEYxgXpwE2C4LKK7ESmCuhs/kJ/dZ9ACfRIWMbxI8FgFvQyWu4+kgsc0sFawG5SQU8kkUyfH2Nx0dDStqgnjEDOgl51NenGz9gDpSShjRjH4N0r1VItZLHedzRC4/qdKrN3oEq0zHGZHp/jqpl5h3YEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lDijp83V+oiyvyoEmXwgmTu9EFf0tsEEPxmfrROt4jk=;
 b=fJnZjnQWO2mWRRv64VaVu5Po/06LqrdUDpiqiq3Lxy/gACrg4x1paISz8YzsjCcOceP06H9/yhbXgw5yQ1uCXb8arifui7dbrFPfbXkOs7wsX9/el4r69E/I9pJyRphG1Bior8nJq2fn2ZnfiWx2/t2F3VHc+qqT8QWOB+JMaVKJCrukSL/mQvOqewDOZsIjsKm64FVzInNVwJlUJ608w2SFC/jPUEiMt/yFXFSePsF9UeidhLRhgkR2+iImqnNd+XtWcKBhjes/LS/xhpmQbRjlmpZmkGiDaZhpX3BHgSPYFypsqulzDDgGFyvwvgwqHXuvdg3etWtXmgp7RxKLhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6829.namprd11.prod.outlook.com (2603:10b6:510:22f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Mon, 8 Apr
 2024 06:45:41 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Mon, 8 Apr 2024
 06:45:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [5/7] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [5/7] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHah4YBL4AmsMp7AES+yJD5hI4LY7Fd8X4g
Date: Mon, 8 Apr 2024 06:45:41 +0000
Message-ID: <SN7PR11MB67503C742FD00BE29F57A3D7E3002@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240404032931.380887-7-suraj.kandpal@intel.com>
 <20240405182026.GA935433@toolbox>
In-Reply-To: <20240405182026.GA935433@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6829:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PlKxL8cLyUzG8BNLZewNuxJkr48SruRpapeno1Lbm3auKUyRY0gvUkvk3nyz6u28ITUSOAISvDOipkJIIhjF+5HUAgR70DckwG/nPi8FG4cOmGk1n0XlMw4sxzZxdbKfgVIegQSCguLfit+pWWcSnsSg364iKPIYgXcFQh6KwFzC+kZFrsg1ruZm+IEnQhkE6fwVFfZVWxRmQ3yBxUq2NXrm191ALBjos8wSKwHsllLQdFHptpMKgi540Hnt6N3GrKeDqI48o4cuFH15mxjPkUXHj8NZ4bfP6/APdPXlRhCR43l4606aY0J1NGQtlGzABCOtXZaUiXyutYvnNRVDych6t3QBnQ1IbJW7FxD3RpDRV0ywsxHq8bhr8EkUFir201yMGpDdFqps9abwQgcvpplSMSHiRzKZsud+KM+emTn8vPUENdGBR4UnJJ3kHlJodDZTRNlFHDbp+v/n4RXfs46er9NtmXV7grP89q/PJDzqlGCsxDF2KfHob4IquflLyMEDV631PDvvXkMm4R3lZImYIc3cWC2Gs5NNzUx3QtauPYu9f0tUw55fErPnd1ZdgbIqZrnsVjWJXrrD3QNx8DGz5u9CW5gnxVlKCBF1iGJvTmC6xCoeYRnuPkdddwlUHxN55Ikakno+dqxEIzcXWONoGjRmbrON552dzvyEN/Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X7J/N1vsIemWaHxjZqHdhWurYisX8dKBDDR0OhJBQoc9Aoae8v5m9sqDFOoU?=
 =?us-ascii?Q?KrJt/w77LulpXY3ob9glLejjyOH7FNkeeglQV3fj7A4gxdIdDXwtay3ydew0?=
 =?us-ascii?Q?wkOnCMNn/x5GnJjEmi+djnD57RZ/w8jBsBTYUHUhgYZnWmqe0bpAGb1MnrvB?=
 =?us-ascii?Q?CryaSfKjpnMdAIhnIXurIdJflEfwbp6GTuFiDQfiH83rDp+JfQIE9sivzzt3?=
 =?us-ascii?Q?nZVHDV2gIYtuBZ4958IT2jUkbLvLW3Qr/qjWafAHxWjJTyo/DICNX+bf2Sq4?=
 =?us-ascii?Q?BFL3cSRCQyimbhf26tiMKNDIC8MWN49KqtY6Te4kFUs64vOTyDrcUU6YntDq?=
 =?us-ascii?Q?M734kUysuxpKXPzM21c8/ZcMPFKKoem/B7Q7SI9zsMecyOXCbWwaE4tjbTGU?=
 =?us-ascii?Q?eBcO7Lk9tQR0FuXIj7ZS52d3dTPm/COoPGSdocTdZPesPZMrG/0NuF8+A5xO?=
 =?us-ascii?Q?qh6Qj68QH4hj3+F7Ylj/ReA3R1ViKOczNJrM4sK2HkD+K2UGh6ynm5U9vu+O?=
 =?us-ascii?Q?a9y3yTnap5PZThgEYW4g50j5Jtiq8aAEruvEeyKEesBOTckspdQwGybUUX/P?=
 =?us-ascii?Q?WYwPOtZhj7v7g/tcyyAxvrQKAaxS4YrICgksDR6KTWeziJVh+11gzOLLvIQ/?=
 =?us-ascii?Q?HEaCo/DtGYuiGuGsDPfpRTUuWtkAjSWfmZw4LC4W3HAqcaSeVvOLB7d6nU/M?=
 =?us-ascii?Q?QZvsJMD3HDlRC1WAoFtkfGytvAmHuV6a1xKaIdoXm07r9lzriIaPgKfmeaZy?=
 =?us-ascii?Q?2szJcP00adnapWDmYIXtcU5BcYNFekc9Xjiy4DdYe3FC/srNZwVPVvqh22Y2?=
 =?us-ascii?Q?lmMFgA0oQiAdg15zH4pFOYXiSu+cuug4B/WPLYW8ELX/HBx9uGYLv+K3Ppxv?=
 =?us-ascii?Q?uunc5sCR3CoS1HUJ24U6Fz4QssaD+orLQKdBtw0ZhSC8DZ7RTl/fDWuyeIic?=
 =?us-ascii?Q?9BGBhm3NshnppVlXMdpdL+NfviVeLpA4z/6EaLdDAEUHAe8C8Ycp6Zd8i6By?=
 =?us-ascii?Q?hzmoUINjOUcuxELKzeQHhxm+3GBDWeO93+JfHKdDLxFrLGcp8KZfyOoOquMt?=
 =?us-ascii?Q?NrVicShc7VvQ1i72U1Zap6lcpmqdUvxrxzBG+/i08vVe+4kCYpfizVHqSngC?=
 =?us-ascii?Q?+8GmznqDs4sVnlRE+LegeQMS4T3NXgDzsen9uN17mkLpTGVLwYFXNWdSJtAY?=
 =?us-ascii?Q?9n6puozI9aoMeHXyBILAuhZ07iOsUxtmUoiP0hYWeRJJ5d6xLgQEy/x5BorD?=
 =?us-ascii?Q?FM+UdOHMU/volZaHaEMrl64w4c8fkKdqA1d3bqct6n7tL+R2TRqZfeYvPHvs?=
 =?us-ascii?Q?G0iTEuM+Lg1KM384MQ6x9ItHZwmMAQQKxJN9/ZxU1aIz5imjkus8ZoSI5Oc3?=
 =?us-ascii?Q?l74eiXdD4rjd48vuuhYqW+8kkzDVqJzDffjX4z+/mlDnJ6Pa7/fzE+b4yOM3?=
 =?us-ascii?Q?McMj1XCvm71pBlL51udp1CBct5Ts6nQU6YzNsBDdv/qWlEJxVpJceQXqZLUz?=
 =?us-ascii?Q?AuhjQM8ep75ZJqWY8JJCkAFr7dgxB4tzx7N0zaTqme9SMdLWszGIK9NWpPjv?=
 =?us-ascii?Q?C07zwwBCkLt2rc7eRU6YIbBjClwHHGZO5gznA4MV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 570be244-7f57-4788-846b-08dc57978263
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 06:45:41.8839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sENkOAX87hAVDn8ipxVtzz9CDyNF2MCt/pGCYL1dyucTEYNL1uNRHR5jTjTYUTZ8SFjifg+FAhTSJyIQlykOaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6829
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
> This line worries me a bit. The TCON only supports PQ HDR mode so when
> the metadata request HLG or traditional gamma HDR then only the
> segmented backlight is enable in intel_dp_aux_fill_hdr_tcon_params but it
> uses HDR backlight.
>=20
> Did you test that this doesn't result in a black screen? Maybe change thi=
s to
> `eotf =3D=3D HDMI_EOTF_SMPTE_ST2084` instead?

Just tested it will update this change=20

Regards,
Suraj Kandpal
>=20
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
> > level); @@ -240,6 +249,70 @@ intel_dp_aux_hdr_set_backlight(const struc=
t
> drm_connector_state *conn_state, u32
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
> >  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state
> *crtc_state,
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

