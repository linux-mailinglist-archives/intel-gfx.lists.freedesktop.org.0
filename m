Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1241389F3FC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 15:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB1C113387;
	Wed, 10 Apr 2024 13:21:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZSDYLgb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3AD6113386;
 Wed, 10 Apr 2024 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712755266; x=1744291266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dCsnVnhgoYi7Dt13lMm4VtzF412uXMRgU60xe3g+VJg=;
 b=VZSDYLgbYnyTIivL6xh5rA0mQwiYVWUvbaox36WOJmDOJFuPm2lT0TdR
 45QPOqPdkLovdJngLKIPZLQ09xfY08fwrfOTI58l9EYlfmJvxs3Gxm04b
 bSgigi7pK+hzvZ8IWiCDLg3POIzD5QM26F3Y1E34g9bVptjBXnJxhEtQm
 N9UNR+H39Sos47TBXk2KISb5HPP/ZFjiswi0DGTu20akMMlgjKaSZO+Yz
 KpsChUD6rV/iJ49U68VZ9Meidke9+/Swd+u5D/0JDo4YX9T3T9QF+4wFE
 uPqqGZ7O/ZhlQPOMaa5451rkBIoOmB4OJPEZw7jUxKN8iArizIAJoQ+fl g==;
X-CSE-ConnectionGUID: NY03Vuy3SAG9hCg6QFlfxg==
X-CSE-MsgGUID: QGMxMBeUSRuCUip8RL4Z+A==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19264527"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19264527"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:21:05 -0700
X-CSE-ConnectionGUID: wEjc6Q23QiC2VIYCZUd/gg==
X-CSE-MsgGUID: T6rYS131SEGX1DlzDTYdmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="21135508"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 06:21:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 06:21:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 06:21:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 06:21:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 06:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnIutZokc/cm//W6RUQn1R1gkcQD95GH3N1t0JriN+n2f9Gp8/qeVoPDzkjH9p5cZW+p0tpvIIpk9i5jSA5JaHSdq2YUek+KexMWnCi8RFJn489waJZArawmlRmwDKcILG5Hw5Ws8USfJnNq7SpizqnnuT6Kug9n0EWQWlhK60CNy+8WN8XQNpkfFpUQ+HIco/9pzxv8uWpTEwjRYVTpQxWJSHUQCfM+/ewFBGQwKOxvGkcaoyPrBP0LkZ9B5WcBoA31M45cSkWtBDLbcx5uv5YbQK18ibRNdgAuAlDlcTxo5ffQiDN133ZV/LcRAEk2dk++eNp2nGVu4XiRQRwP/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xQcLv5B8YtV5dYCTvNbDmoYQKmnaT+rbOjHdCaOyFTI=;
 b=nQHsDuz/5XijKp0qKw/uo+6foC7TlUhUmvr/ryVCdxiwjylie36CmYj01wXb8ABpLNQy++BLC5AftiYeozoUjMQX0aytX+Gn3VP5AeVqQZQB8N++nZt3JpC/oMWsWXmTw5us9EbAie6Wguliju1b1Bk2nGyjEbz5o9hv6s5SHsPyZcZkYMkwwLjIl65u7WtOv0N1XPE+DMbSdGrIcuwr2SKiWgLjFP+ANF+H67Z4+lVoSlD/ZKM9NPo560ZFL3pm7wRe2B6ADhm1VYzF/KheOJjY8mgaoxip8W2oTWN9rABV1R4GIWh+mCyR4sSM4kjeCFXsJLfSOeP6fwvH4sCJ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Wed, 10 Apr
 2024 13:21:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 13:21:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915: Implement Audio WA_14020863754
Thread-Topic: [PATCH] drm/i915: Implement Audio WA_14020863754
Thread-Index: AQHaix2lTVaBeCIeyUK96O8Sqoa8G7FhSkgAgAAyRVA=
Date: Wed, 10 Apr 2024 13:21:02 +0000
Message-ID: <DM4PR11MB6360FEFEDC75E8E0BD583B07F4062@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240410081159.915205-1-uma.shankar@intel.com>
 <875xwp8qtx.fsf@intel.com>
In-Reply-To: <875xwp8qtx.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB8036:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WpXHP0wV4ppLcNzoozSN+pu1hODZ9QEI3mQXh9KCfYeL5sQG2yrO+5giQ8L2sgTlBPzNYeb0H1Der0J1R4p8k4WpzwByp+LLIpSXaRh0vCkZxF8Kd5bkPos2r3KqC+F4caIZcUh875ydak1/lejwGjoElZRx9pTtp/rl8BxU4HZh6Uq+8V09rwACmu0UsjTfiImP9kTO9RzSC3GZwE0ST/Rkem9wqXteYG3FVK94K3gWe6eEyWGZ1+vRkryhBuXCvYhI9mOaz1D887n7nQuv8KRLBVMJqjZF/WbZgfnBtt0d3opIzOe7QiuK9LKKeD1sch5cae+UhS9lvFPbkNnEDq2t6X2uBqKNvQ4ysut1Rsx3ZKBtdFtNZRCOPrixHBmJ6R7Wzlhzamh8AktBYhy9G+s2GR3yh+kifK14K30cFZ9jXeyRadRaawYFeyvZHRZWs0vfwjGx2mk9f6E7sO1aCfNVjNTyYUPq7T2MjHNq8t5f9v3nQDDwSaqvPySoiFwYQNFYPyakdD4Zr8UTEJFD/2UiuWQuLQQr8tqc2A3X39xSTO9EPp6YDikkc7jLiG84j/rmJjOLTcKiIEYWLPpQCZOQly434RE41Uey11LJNHBbwJn47xqHSxBFB98kd2RMfGoD4dSiK4I4awwDcape2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WxbQsC/kVHf3NVUwJ/i20exlGCX8B/PGT2wTA55C/YupFDjv4U1qrbO6OnKS?=
 =?us-ascii?Q?PGfMShWVVdYZl7sJ/Oi6oJMNeEFSYgEJifyiqd1otiTVN3BesS0zJtqpchx3?=
 =?us-ascii?Q?3Ll9Rjs/k8kgX2iDG79eKEshz2HrdCmrL/TTdO6e7GxMa4rgPWA4ZRwLhZE2?=
 =?us-ascii?Q?2MIueIHHgzGplw87phAoTAl6Ro6qhicX1pk7+B2Qh5A/Kt0VMwLc6LtFLgsj?=
 =?us-ascii?Q?b0wAh0CY0Oj2FRw9YHrWusfLq7yw1hgVB7OGE5zrZwZ09B7/V7LTlUshPr2+?=
 =?us-ascii?Q?0kYcnGCubpzxIixB175N0+iR7hZUQvx9ccgHHe/xRt6knjda4S8T8NGjmMTv?=
 =?us-ascii?Q?HBLh6VQ6SNTEtyrvPSIbWT0dlHzOQUwwPCa9jcFbxiarD9l8OkOKSVql+HT2?=
 =?us-ascii?Q?tuJz+xYLkINV/rFlyazWfV0K7mUPbdM4qxIYSz8AU3iYefk2BFsJP3OOns+F?=
 =?us-ascii?Q?a62SI769BZt+/HoASn+UZrcEXCakf3FyHa/qtbViF+20GPhxlvaKlUIl3z3D?=
 =?us-ascii?Q?a+etxx9Rudk5ajaLPZhF7AvLG4od8/T/xLxrqlilIK7Ssxy/eL3e7izXScTE?=
 =?us-ascii?Q?13mjmSgMaT/LRX2v2I5I0JccALCzi2AEWZt3vNEU3VtgBFo1NQbMhP+/ExIa?=
 =?us-ascii?Q?9x7gHS2chtHzwHOFfuTreuI1WUfjT6pmaIezXtM55606+Jk2Y/NlnB0Ol3Py?=
 =?us-ascii?Q?8aL8/bbzYW2+P72AdqIdDywDjqDGvRLOxegfNW+7pNXVm1iy3oVGOY9bg+YF?=
 =?us-ascii?Q?Wzl03/O9M8YRbvQGbPcviVN8//6Je7GlcxicHSXbCkYqB5XOI4n+ztW06q/Q?=
 =?us-ascii?Q?QBxfZiq7fW7Z1SY+Wew1Y+r/B3DBQd/7oWmYr7RmfvHddJHbByIrwEiihp+8?=
 =?us-ascii?Q?/oHCFwluM1sf6sDyqWxQaU/h5s4I9yd3U2tE3DonvRejqrFcLTNza9UUukDk?=
 =?us-ascii?Q?X1/sJpYAimxiuDRI6Httz3fAw+kR31HSHSBeqFW9RVRy/Vn2CWGxiTCFMVke?=
 =?us-ascii?Q?thexz78gE7z+x84r41NG5s8KgxvvFgAETktmr84X5kqXinkj1f0e4nSHBH73?=
 =?us-ascii?Q?8I14gf429P3Uq4TZUovyU7nApBh8o/uF2al5TQ/mKNlmJ9loqPI5gEHWiGiF?=
 =?us-ascii?Q?MRH6Wj82yMGQektyeuJjWvrwOd47bVblB7AyM4Bem41EhqzAOnVthxOMjZK5?=
 =?us-ascii?Q?s0bFg3JPmh2jzzFxoivyEtBM947p0RHuTqNwCt5IOSFJg/nxU2jvqDusocVx?=
 =?us-ascii?Q?oQGO90DjDgkfNxaHcF7D3vEfahyGWDj5ctnYL7KHtG8Vd8b+oG2V1GcAesKL?=
 =?us-ascii?Q?VFT3/axBdlLyqJ9TdkI0hEg9lTUIY4lBWh2043EdQk0t6GqhN3FCXvVK90Nq?=
 =?us-ascii?Q?xdyIof/0WhUpAQPbA5SL6dQLzFKlCAbKFnS1eOBk7eI0orxYfBvzVwxKmzoJ?=
 =?us-ascii?Q?6ZSI7EWkryvEyWWq0dwEcsnXyBJRZBg9qJ73XxHBjMNu6aQPl7yY8pE/XDgY?=
 =?us-ascii?Q?vNvxEBCLyirc9ATux+VfDAM1y9XXYpgBpbZEurWh0Q8o7rjAdw/m8G3W2oMs?=
 =?us-ascii?Q?Kruv3+a8FUOyUeoQNGEKyRdgCGXNjeN/EfSRHh3BN92IUhxOhi+NjgBZAUW6?=
 =?us-ascii?Q?r0Pnby3O/t8Uz5gKSulnC7X/Exvv9YAXMOlYguvHrlAT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51932355-56b9-4afa-5c80-08dc596111ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 13:21:02.4761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jTR40h3aWjzmMeiYEepDMliIpzwAdT0Nck20gD+s0LajJZi8Cpm9cm1BBIdCfMs0iIRj4JyMvZlCxl5+KG89dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, April 10, 2024 3:47 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar, Um=
a
> <uma.shankar@intel.com>
> Subject: Re: [PATCH] drm/i915: Implement Audio WA_14020863754
>=20
> On Wed, 10 Apr 2024, Uma Shankar <uma.shankar@intel.com> wrote:
> > WA_14020863754: Corner case with Min Hblank Fix can cause audio hang
> >
> > Issue: Previously a fix was made to avoid issues with extremely small
> > hblanks, called the "Min Hblank Fix". However, this can potentially
> > cause an audio hang.
> >
> > Workaround :
> > During "Audio Programming Sequence" Audio Enabling - When DP mode is
> > enabled Set mmio offset 0x65F1C bit 18 =3D 1b, before step #1 "Enable
> > audio Presence Detect"
> >
> > During "Audio Programming Sequence" Audio Disabling - When DP mode is
> > enabled Clear mmio offset 0x65F1C bit 18 =3D 0b, after step #6 "Disable
> > Audio PD (Presence Detect)"
> > If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave =3D
> > 1b)
>=20
> hsw_audio_codec_disable/enable get called on hsw and display ver >=3D 8, =
but a lot
> of those platforms have the bit reserved MBZ. I didn't go through all the=
 platforms
> in bspec, but enough to notice this needs some platform check.

Yes Jani, realized it after sending. Will update and re-float.
Thanks for spotting it.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c      | 12 ++++++++++++
> >  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
> >  2 files changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 07e0c73204f3..a8e3e515aaa0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -512,6 +512,12 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> >
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	 */
> > +	intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
> > +
> >  	mutex_unlock(&i915->display.audio.mutex);
> >  }
> >
> > @@ -637,6 +643,12 @@ static void hsw_audio_codec_enable(struct
> intel_encoder *encoder,
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> >  		enable_audio_dsc_wa(encoder, crtc_state);
> >
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	 */
> > +	intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
> > +
> >  	/* Enable audio presence detect */
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > index 616e7b1275c4..6f8d33299ecd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > @@ -148,4 +148,7 @@
> >  #define HBLANK_START_COUNT_96	4
> >  #define HBLANK_START_COUNT_128	5
> >
> > +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> > +#define  CHICKEN3_SPARE18		REG_BIT(18)
> > +
> >  #endif /* __INTEL_AUDIO_REGS_H__ */
>=20
> --
> Jani Nikula, Intel
