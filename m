Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C390289A3A8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BE410E22B;
	Fri,  5 Apr 2024 17:43:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iomLMsGN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032A610E22B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712339010; x=1743875010;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H5/QtrR9LHJb6aX2J5ZWkzVagpATR5HdjTJMsE5P9pU=;
 b=iomLMsGN4AubZfyX8yOu+py7kH9Nb/KdZXEI72cW0tzq3k7oosl8PJAv
 Thfmz9aNNBuqDyypBaRmp8pXgwwE9PNldF/vQQ6iV+vjP55tNUNcUjdE5
 6qfQEWA8zmImkG6Cp0bPE147sHkxIDakxU/62G187EFxErEp8WXK5fu8+
 25+e5y4lsyrA36ZaeW+OYYfwCyyJla/dF9didSmzUytQddVN1rQnxYRdK
 DG3aOmZLHyxQv3QvLunwtHKdxrVwz18yIcGNNnLlNA2KoGWLVcmtNhHUH
 6D4ISPIIT+h8VtQuhDGKbzmYu5AlFPweMHdiMJ/BVbYs7RKvO25RVS4Vo Q==;
X-CSE-ConnectionGUID: T8wPB+sZRgKfeW0SxxL4tw==
X-CSE-MsgGUID: NCJ9Qs7gQH+s2beWj/Dafg==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="18820452"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="18820452"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 10:43:30 -0700
X-CSE-ConnectionGUID: FdmlRxEtT4mESiFb2+fF8A==
X-CSE-MsgGUID: ZMZm9/KgRIy7Bq6q+uySNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19147506"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 10:43:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 10:43:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 10:43:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 10:43:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 10:43:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9Wk74yLtGcE99Sm1nbkrQdSCjKa+zVyIyEEnQqnKYKAKHp2r983nt36jAsf39124FxayoKmB3/BBOL1H6agzmVG+09c1ZX2ss4G9hNHxqCkVM0kLLararNOKPhk4yrw+4srf14FsQwN0qp6QRZTyG0RVJmoQv0qGlQCehpzT6BZ4G3Z68P/Wdmr7qMIMYnLJeJkWTeOurHnwDbSqz+AkQl5I+M4ydSgmCR73GhbFUllOluPdZbgIXlAhkYcK7C7qX4S2JoHx5l/qQmddI3i80KuPZClOqe8TlJ6tydt70Ye7qqAcVfCjhCeNlGM8pi+A25OhO12FfFFLhIsXePI1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wZoZ8YZLZbzUY7NWLvvpdNzKy96Q2kti//FlCFobHMs=;
 b=K1ttuTSmzbA3HfLDD+FRs5TFfeSLHZZ2BWIcUqsNkbk1vr+Y5CNsw0mscxEZsEJvLGn1dbbNwSH0ad2q1fkWNxTj4mptyo5nrNHXHPj52d2GVoPEHZsOiXQ6BfxPtU1IdK0ZiSHh7ItmhIcpw4qtvf4lz0tKKDHoiclg90iyUfPDdQRQffcuvKbvTP6ESXOMcBkjSn8X+fh9HgvHTOFvqwqZ/DOn/TBZrR1kiGptfn7gzdK+X2cp1Q2j49ry1cNfW0+/sol9tM2RXxtXBEVXiGvxFJgXW/JaSgGhNqn1EiioJcHescYOlmsMFcdAv4XKYED55WsBlDXZ+MllHxiYbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Fri, 5 Apr
 2024 17:43:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Fri, 5 Apr 2024
 17:43:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [6/7] drm/i915/dp: Write panel override luminance values
Thread-Topic: [6/7] drm/i915/dp: Write panel override luminance values
Thread-Index: AQHah38zSuDyEhjIQki0EOjVtEveMbFZ8b/Q
Date: Fri, 5 Apr 2024 17:43:26 +0000
Message-ID: <SN7PR11MB6750FE1C163ECD72BDECF431E3032@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240404032931.380887-8-suraj.kandpal@intel.com>
 <20240405173150.GA933110@toolbox>
In-Reply-To: <20240405173150.GA933110@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB5325:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XwQXZXzTqB0XCbMAgPGv/5JyBRUmxG3i6CwwvRjNpo2LiyezzFVslpmRrGVanVgFLiYsycyILGuC08Qtr1LruZhpInDglOfGaijGp9GYe6ZMkecZGlchXAeCypEg0jfE2kPGd7jXKluqnAPVCx/NKogh7Ou4N4y8vuVa5FW496a0PCWqg7PL2eIVJsGbp3ppmsrOa8Dq9+LG2f0n0c5KdmXwj5HWC45G8rOOmUCnjV6xNjVSYV4nO7C8dOpylJZnIUJ6hJ8V5Uho0d4E8I9k4Vmr62yNj/vvakK1+CTosgJ0EMYFj+ivTOfiDZO3hel3TUoI1lHfSCgKvKkrgdwjDGLIVNvHvWR52avqErHpN8K/JH2EcJHlW+7tuYlnKfkWZNxcwboSkHcGXPiDDoAAwx0Mtb0t5vy8o2pjjLXczIcYgqYsjkPKX2nasERQHHL5mpe9FwYg4n1nXzZe2jnuTK3N0sB8ewJjhJ6PrN+0OmIQmVj3yTcqNZdhiy4Z1guHg7cOHcCGv/9V3XOG7dTsxaxL6WZKB1qSnAQwJzapIJO1tuQDNerfZ6gmp1VzDc6mufuSRxLMm8BRDjzjBS+CX9NscJUMcUGhJrZ+aDyGVFM7RKb5YpylPHw0UKwHwwuZLjWCkCLt527v91/zQMcRrAsjHP61nNRWz4EEX6hjlPE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sDVlgjF0sS+r3kXdKeYIfCSHgidMaImUjTN9S+eVWf1cC6RPKIHaEK9q0dgP?=
 =?us-ascii?Q?/U8sWEXqlFqOSt9AdTAkIhUG3i//klJ6a1eLbsENKwIrZ1NwHiNtQ3EE3JDM?=
 =?us-ascii?Q?CL7Yh02i/bD/LANXG2kNRwurxX8VcCf72njR6U4h0w1icGGZsZ+I42XKAlbL?=
 =?us-ascii?Q?QfDCQEhN66SkFgwX7XgFEu9Srz55voPN1K5EGVSJwQEDJs9Ce8jBTCz1Wbyt?=
 =?us-ascii?Q?TwMSgG3Klo4IN+grfc66AslZxXEjfNvXsN4z38r8Tjd6TTuAfRXU90lH1fQT?=
 =?us-ascii?Q?M5x0RCfcxt5Tp6eY9eK9ziU10Nqk4WUnkNKokDRrX3hzE5rk+WZg8jAyEDyC?=
 =?us-ascii?Q?zynm0aYJg1h0TiZPwHYy8/sdNnSx5T7F3gFgMguThISNIIhxE5WY3jbeAiOp?=
 =?us-ascii?Q?ez6rerTK+z5kfTO1M15A8busrNwUJsG2ZXwO3gs8OQp6aoXn6p91d3ERXGUX?=
 =?us-ascii?Q?kWRmZjaC5Ff3F6V7Bxy+ob9GHhzk8udrvdHyTOhFKvUvKVsaWlpq8036RwB8?=
 =?us-ascii?Q?ZEvrSyAtS2t9qngoBprsg5PyDARYqDOBkOKLYfHRZCVvoIJ+P2VChmycljwF?=
 =?us-ascii?Q?KH3MS07WQdeqZgvnmgd1IUSW7pCkyuRYOE3wuH1Uk6ukxVAq/chWxFuAeSmn?=
 =?us-ascii?Q?DyekJXYv+d46AdsfX5zZeuZByWbbxUm8igeb2F6Wzpum3Vrd/oI3fpT7/5sl?=
 =?us-ascii?Q?omrCOumsbKZ2GZfrmPM4KDCxkzRjDiMuC9LfhYS5Qv0VrHr/jnnTrZHFCM69?=
 =?us-ascii?Q?xF7Rk7nL43RehCBLyc+NRwh2RUOSzQ3cZ5L+GvxstUgrUUIlJr9YOHQb7Xvd?=
 =?us-ascii?Q?hWQWdH3nMwa/5KA24Z/zbHaY3Ec9RaCgsZ37y72kcDEsCE5Mr9L/wJRl6PSu?=
 =?us-ascii?Q?xTh6BF4CPoRLcbOVmLeyqpAfjlN7ehTooWdHGbvt84jXnjebg4SrUNw3Farb?=
 =?us-ascii?Q?YNTlEOgzUuyz171SG69TGPYmYoBkPoiP7G7TvkGXEr6/qpxlHwiCnXwCLyVB?=
 =?us-ascii?Q?yiGs6IYBTv/NaJ5x3XmD4cN25Hk3IkK1Y9rv6wRjzQRmS4aMr4yc+5V/oqjB?=
 =?us-ascii?Q?lDBiRdkYQSN7PTf8LLq8f4pi5C47ZcxyqxaUL37PYX5jHcCGrF+6hi+488rc?=
 =?us-ascii?Q?21Ojd3ISORKJ2M4t4Us4TF4J9lHj4G3BTGiOlh0OVj7jbSt9lSARi2Em0k3B?=
 =?us-ascii?Q?t33aoFdFCe9CpdYxdwqc+OjDYzyWxfornkPHe6achYZ7Dne1Od6s9vK8HvIP?=
 =?us-ascii?Q?jS1JLycxbe8iS61cs/Ph6SEs4hHFyNcqF6ltE2nSdy1kSTeSwtHput/SbsI0?=
 =?us-ascii?Q?cMhtrPUlF479fYBuhGCVzdJ4S28/pPEphWGVe+2VY85rAjJGsRzqJUat5nwv?=
 =?us-ascii?Q?Xh0GDia/n/aO0PICTeoqwzbdTovyFbt1po/mbztACkqaug71wUR2rLhZP6Qu?=
 =?us-ascii?Q?7Y+taipnOos7PWVDAEUOv0nIDKyL0i9Ol5OnGAvw8WKCnSn3HV1pjlncd9jW?=
 =?us-ascii?Q?qftRP1LlI5DLea3KyBIktK78noCsG6pmXGufzCCPIK+6uwgrIBKRctPv8j85?=
 =?us-ascii?Q?ValyOfoZybqm5uiTTXxtouJqnE1TZkdvhB+beIcQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38d1965f-b535-4ee3-4665-08dc5597e5da
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 17:43:26.4455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jsSYgKDoVA83/S3g1n9bf4p5O3yj8++2qJlEHJ8EimCdubLJ+9rgSBS7wHHYRufaZn88bej3iOTpyUr2xvCODA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
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
> Sent: Friday, April 5, 2024 11:02 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [6/7] drm/i915/dp: Write panel override luminance values
>=20
> On Thu, Apr 04, 2024 at 08:59:30AM +0530, Suraj Kandpal wrote:
> > Write panel override luminance values which helps the TCON decide if
> > tone mapping needs to be enabled or not.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 25
> > +++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 7af876e2d210..20dd5a6a0f3f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -381,6 +381,29 @@ static const char *dpcd_vs_pwm_str(bool aux)
> >  	return aux ? "DPCD" : "PWM";
> >  }
> >
> > +static void
> > +intel_dp_aux_write_panel_luminance_override(struct intel_connector
> > +*connector) {
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +	struct intel_panel *panel =3D &connector->panel;
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	int ret;
> > +	u8 buf[4] =3D {};
> > +
> > +	buf[0] =3D panel->backlight.min & 0xFF;
> > +	buf[1] =3D (panel->backlight.min & 0xFF00) >> 8;
> > +	buf[2] =3D panel->backlight.max & 0xFF;
> > +	buf[3] =3D (panel->backlight.max & 0xFF00) >> 8;
> > +
> > +	ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > +
> 	INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE,
> > +				buf, sizeof(buf));
> > +	if (ret < 0)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Panel Luminance DPCD reg write failed, err:-
> %d\n",
> > +			    ret);
> > +}
> > +
> >  static int
> >  intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector,
> > enum pipe pipe)  { @@ -412,6 +435,8 @@
> > intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enu=
m
> pipe pi
> >  		panel->backlight.min =3D 0;
> >  	}
> >
> > +	intel_dp_aux_write_panel_luminance_override(connector);
> > +
>=20
> Should this really always be set? It says override. Doesn't the TCON have
> some values already that we're overriding?

Yes we calculate our own min and max panel luminance these values always ne=
ed to be sent to the TCON as it takes these values into account before it t=
akes the decision to enable or disable tone mapping.
Note: TM is enablement is a TCON decision ICL onwards and before that its a=
lways disable (According to internal specs)

Regards,
Suraj Kandpal
>=20
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR
> interface for backlight control (range %d..%d)\n",
> >  		    connector->base.base.id, connector->base.name,
> >  		    panel->backlight.min, panel->backlight.max);

