Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF118A2C43
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 12:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6755710F582;
	Fri, 12 Apr 2024 10:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="neIE6up0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D49310F582;
 Fri, 12 Apr 2024 10:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712917528; x=1744453528;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n+zYZMs00IcJnWjkngNlxjiwijDx0cuOZPca0cP5nV0=;
 b=neIE6up0LUrgUbmg1u4S/bve4P1JQwjdkKzaRwe1l/QLZbOW8R7fnovz
 WpVr1pRsFm6z0ovbilpsqza0kFVqnLYfsKjX5NxMNElc7PWTCeom4UC0V
 a54+HCH9drSWYg5tWoe+4HLwBUk1WdjO4xzey76xhctIXQU2XGE9Hqc4j
 6N6Zy66NK9VedEjHU/mHUvkCv8v0msv/BYvxz8oCfLQlwRrSvj7lANVBQ
 CKbjocgxSmaQpuGN6C/41U78IrEOf+QRVZQ0/PZo8rxKTyEdX8oV4+4tW
 uSXnKA9F4hiPzj8pZefcWH9oeCuW0Q2rjTuU/k5B7psdZZkkN7Ch45gG2 w==;
X-CSE-ConnectionGUID: NfjOMlUTRf6jZc7ZpInVXQ==
X-CSE-MsgGUID: PDui1MyxQ9SzwWlW9qJ0/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="30849310"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="30849310"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 03:25:27 -0700
X-CSE-ConnectionGUID: uaKcSMb2RE+03uTOk4J3FQ==
X-CSE-MsgGUID: esdZXvE3RKmAny5cYRicdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25871386"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 03:25:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 03:25:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 03:25:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 03:25:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUoggtDsyZzzUeeUTCjU+cMLJweKMkW4B8gNdzVP1PJ+YRhJjniap5wy+1llguANcjOwnf8aRPBF1BF0nRfrid/66iWi3VsTMIOHjL695mDFOK3DM1RBeeDZ0bNHPy75BKZEV364xT5YD35/IDdPXNT0ojiHJMvcnFYFdYaBxcodfZoQeM0OAT3Fv3US50JT55sTNda1ucpWun1Vl5AFfda9jp+JcRWjQimA2Jt5MfGA71ahFw5DTDVIwXfNTcnwypyj1B5ALE1GTwB0+01rTzFWeBmLw1RoAJKvj25+J5MbJU5uD7BKVwipBlMGCsSwojM0RnCXlQDYugvILoq+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nYM2SM4pyYMqkwcFB5AWNDtEoCZKWAKbupZ6EaiiCss=;
 b=mR94zcLc8HkeqDh7aWGE2UWMhGv6C9P/nd+Lp8IfE0hjdTUHthBUwJTrc6LNni6cXKc7pS08tZ6fHLZ+7qmDfjVGjveXTADf+6bXbtb2aqWNhc9ruv9XiViQIcJSwW6/BCRUvwpsjfD1iSWM5Gz46ALmkbVqwqo3oCtCObGaa08lWP+DkKNyK5xyUrEIiBitDRGIWI3J+hOQhyV57f0/lcbMNs3EWdT07HuGlaKdSUKMacWeTXk3VtNZhcEAOHVgeHtslIX33ZP53vLV9K8jJ/01zerk2l2dhtLrklCcGuqtNmmcpDlnkXt3Mdm0x1EJ82MavY8XLdbF74+0vWM36Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6159.namprd11.prod.outlook.com (2603:10b6:208:3c9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 12 Apr
 2024 10:25:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 10:25:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [v2] drm/i915: Implement Audio WA_14020863754
Thread-Topic: [v2] drm/i915: Implement Audio WA_14020863754
Thread-Index: AQHai00A9fCHmr8EPEOJ72bVTmgmmrFjqtCAgADE/hA=
Date: Fri, 12 Apr 2024 10:25:23 +0000
Message-ID: <DM4PR11MB6360A0C3ADA45F47E088D0AEF4042@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240410135046.933254-1-uma.shankar@intel.com>
 <20240411223635.GE6571@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20240411223635.GE6571@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6159:EE_
x-ms-office365-filtering-correlation-id: 0f5aee1d-8792-423e-72d8-08dc5adadce5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DQvdOHQUi/ttgigFBsj4D1v7x2iIAkYB0oERlv2bpiKB811hypLKaCbfrfBnC7S+pcMYCyaJvGkve5qNnGP2sWBu7g4ejAXV3tOvEUEO3ZMl0PQsWkT/5H9SrY9oF00cPKYLU+66LGE4ooPNZGPyXCh6OvsRulzbcy9MhvMVE8r3MqyVXXEyVeMr844AyjZHUqOcRAVr+tksUiY1mhNMZpqOm1fjKRIpb3f/Z39IPPH+qGYTRNlGvXlduPnPVrN7/8bPbtvi97TgTntPUuF60rhatk7mmjequ8uqsGot5B5SF5UD4+zfLyxObFeAC0b6hYu2OgVGDagfEH9jzsWR/HumKLxtIMfjSINOTaYoEyvOBU0SGKejLIqetWK5EtX7yjUObHSBk3DFR0yETMknG0ndF5F/eVkLv7hI5+qZNH/WCtUqCFGRkbefca4HE1OAaav2ivrt8OpAKst7bPwSIxfhAbT/X2rFr51TT+7KYw+nSquSkSLKgDNAtyEOLon5GhYhSU3Xefeb2p9I1A73PpYMpDgtwjhWi+iit4qNtzzpoGNXjyruKAb+ZwDVLboatV3B/M4WUJSL14lmSO41kHqVrRC4p2LAhVnZ/o10Nqq+83nA/vmlIGDNut5SzqKxh2FJAXA3YmH2e+cqta1Cy/sbBx4U21Og7uEsxWiVGMyuGrQ05ZuIgP2ahePtjaAYSybnlFOzapzzvjmBI/PFFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3xJN8iZ6tRO9G8enS4mFaVF5bb92esNQ2OjxiC6a41jeOjN/icUjxd79dnwT?=
 =?us-ascii?Q?BqG9ATcxmxiMxcWJ5CpXdjehD0XNQfT+vgrfzCeFcLGtaq2Hb0UGWnRtHowT?=
 =?us-ascii?Q?LB2mE/fsvVMQkCWfR0rPLlU3QpapODyE5NFDNGrX7V2CpWWCOpWDrczlABbV?=
 =?us-ascii?Q?HsF8npISsPGK/CGZbNk6xxy+FJJw3PDrSyF80xBhACaFxL3Ey4Z/YtbQWb8D?=
 =?us-ascii?Q?O1bOCzyWNACzrfkg4HYQbaOlGAK9RoMV3RMeu1RbKn0b/a11WGIXj2Gh8qzR?=
 =?us-ascii?Q?Ma20TA9uu2inZGHBnBVQAHfgsOiqmIoMh/CcnxvWXbi20GoDhCJ8At59+9au?=
 =?us-ascii?Q?FZGKYxK2ZZu76HGa/Z9sS1WPi31VzjnWGxf8lnO6EJKIL9IQUu0VerLz+RT+?=
 =?us-ascii?Q?tBSf+jbgJoviDe6ejDH3dioIPfdjlwceN8EWZ0Y8fIojz0y46+Gu7O+doZma?=
 =?us-ascii?Q?f/HBShL5YQVaq+mnulnnB4Z3jBbT76eVQKIbiGikRXVIc5Cqi6GlI2pQ/KJg?=
 =?us-ascii?Q?zn5PPORCkIiXVbpV0+8z3kVJ2z0m1yeFMBMl480L2gJf2f9mi3KQM4ROF7ws?=
 =?us-ascii?Q?vWBtXsX9ezMzL6+kBw7gV8f63tw38nwkDH90Tpq14GspPRrzSf4HnGfXQ6dK?=
 =?us-ascii?Q?tFVwQKHUD+st9grdD8J/kaaUolTRnsxYNarXn1oL/z8ajaecOgVAqcdqUlSr?=
 =?us-ascii?Q?4kAuwMlArG0V8IDBNtF6+PB2UYxEY2ZzjPbqnL2lXy8UI22Ek8gNDttibt+q?=
 =?us-ascii?Q?Vs4hr3aBCoTxAmpTi1qprDnceFRjP6w1il3WKnzXwlxTbwQFFbPeDJxtodKk?=
 =?us-ascii?Q?jPJKoYVuk5NZ/KWuAdUSfgVC09LIZ/ZTwMSTZpIUivSzbGddOlWRrHIUAJ9b?=
 =?us-ascii?Q?Veh1LUwV3CI6CiHfjYR/ft/gJYz29a+eD1vJvdFqk24z6R6TAsxhcyU5a9bG?=
 =?us-ascii?Q?xcbjVw+GCagu00DhSp+J7iFQ6pT2PxFyZHARC/9//Cu2cB6bZ4EAUOAwU9uY?=
 =?us-ascii?Q?r6hULk2fWMiH2eV+9kD1P9duMoDbb9fnhVL4xibSR6+DWYJXXxZGjK9yoFO2?=
 =?us-ascii?Q?7lURoCiw31pX58jP0fLhy2ss5C3E8Qy8eGPkYNj0hIwOt8kIdDzNoyMEQJkw?=
 =?us-ascii?Q?TtYJz9a03bNTheUwJY8pXHYle6tot0E2qAdQ3Q9rJx1hHojp14hZGAYS/9Lh?=
 =?us-ascii?Q?9FudChes2pASs2B1ORaK6I6zKsGRBmpfIN5AeDHu4asXnyVOw1Q6/Kz6vwpF?=
 =?us-ascii?Q?diUMA2rOew5+OnzBu5ytBNpPQAbeFrML6nNho5EipkwoeqBO6fsOErY5OmFI?=
 =?us-ascii?Q?kt3lt7l0njMR6G9r44aA2gPB7yYsaIqPL/J/wnldm1zIGZBZ9et1X3FXx04+?=
 =?us-ascii?Q?7v1Wn/6WWVIiC2WBF3auJDdkpCV0K9U5KIPHr+NII6AeA6HwYxqkgzBuNjYQ?=
 =?us-ascii?Q?HnymmpM0tImHsYJ8bmHmlzxBkhZ6KJrvpVV9O3RKNPTy7/FpQxCXNAogFaKZ?=
 =?us-ascii?Q?nm5MLaDghC4WH2F45SU2MzLcb2ItSArDcF1FFhaC1/AxrmI2Zwt/+w15FFCD?=
 =?us-ascii?Q?Ho4D6ecf4r2z4XC3DvlTePggg8esU5LCvCqcdKmQp8/LeRTloOolUGr2edtb?=
 =?us-ascii?Q?RuUtv+Cr6brd8wWmNc+6KffVYzi6cUz8EG8/DoQsyiQC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f5aee1d-8792-423e-72d8-08dc5adadce5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 10:25:23.4976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dIrlg3FWATEk3F8xNtAZaGcRatcg6u03ynsGhbwaz0UQsLbkQgU639mRs6OfpOWyvKadlK6s6Iug7odJ7lRc3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6159
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, April 12, 2024 4:07 AM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Bora=
h,
> Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> jani.nikula@linux.intel.com
> Subject: Re: [v2] drm/i915: Implement Audio WA_14020863754
>=20
> On Wed, Apr 10, 2024 at 07:20:46PM +0530, Uma Shankar wrote:
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
> >
> > v2: Update the platform checks (Jani Nikula)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c      | 14 ++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
> >  2 files changed, 17 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 07e0c73204f3..61df5115c970 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -512,6 +512,13 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> >
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	 */
> > +	if (DISPLAY_VER(i915) >=3D 20)
>=20
> The workaround is currently listed as applying to both Xe2_LPD (20.00) an=
d
> Xe2_HPD (14.01).  So we should match on those precise IP versions for now=
.
> Future platforms and/or refreshes may or may not need this workaround and=
 we
> don't want to just assume the workaround will carry forward forever, so t=
he
> condition may get updated further as new platforms/IP versions are added =
to the
> driver.

Hi Matt,
Yes, agree to limit till platforms where we have visibility.

Should I just keep it for LNL and add BMG later once the PE changes get mer=
ged and the
macros become available?
Also, will add the helper as you suggested.

Regards,
Uma Shankar

>=20
> Matt
>=20
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3,
> CHICKEN3_SPARE18, 0);
> > +
> >  	mutex_unlock(&i915->display.audio.mutex);
> >  }
> >
> > @@ -637,6 +644,13 @@ static void hsw_audio_codec_enable(struct
> intel_encoder *encoder,
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> >  		enable_audio_dsc_wa(encoder, crtc_state);
> >
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	 */
> > +	if (DISPLAY_VER(i915) >=3D 20)
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0,
> CHICKEN3_SPARE18);
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
> > --
> > 2.42.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
