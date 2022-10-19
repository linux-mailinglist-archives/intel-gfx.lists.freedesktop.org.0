Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7CD603AF1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B4A10F177;
	Wed, 19 Oct 2022 07:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5761910E9C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666165847; x=1697701847;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PNWtfBQ1LnsyNp5hBFkvw0gUMbyyMEvocmvvMtmiiOI=;
 b=iYGZB6kxLvb+gOW5QHgsS2+UwutGZXFF/U1tZV/VOwiEIKqLavQcWgIM
 evxYcpGUrzE59SDR7WQYroQtkmJTqKsXSP7tgil7Wv6ANa9oxh0ZF8ByE
 Ps5ip2xTW7ug+tzf6cqnlr9LUHCPdq+umj3ZJKMlmUBYA8j9OHLK4+5YY
 rHKPFTP8LjfaltPGAaQaJ2K27MxIf+YDdVXU6Mb0QsrocxhOY5aaUoWWl
 HzY2fpqw8BtiUK0NfVXsckqn7UZuVHUyQ4xql9oaMkI2B6yHSkZ5hPo0D
 Dk2kP3/rGCACKgEPxYo754oJxQDgWK7bP5aA4gE1oAMaol3uESRRv18ZT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="306324173"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="306324173"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="754453482"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="754453482"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2022 00:50:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 00:50:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 00:50:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 00:50:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BL/LKillpNtUf17aK5FRF6Bfvwxir2PZjAUae0ab41fQreIOPXRwtBCaQI+RphCptxemLtr/k4+CVzciiZANmffI7azms2XsppgEEpv9GGtZzLBd/Hn4lQWuBWjGFHEh6LfnmU50VC/hPEScRLtYk9eR+5EtP15eKUl2/7+IRZtNKf9Y2cD5ERlC8Mxv3adGWFoSUKSfob9w0hcs6QMX13yTXi+CURTbrF6bb+IjquYo3+e/SRquZ2UTw0N09GoswB2wdQSpc0x7LOCLDTm0nuIoPZDF0N3pbFLGhHLBzlWlJ5ZgJm+dl+SVbmsPS1eMmBvgugsZxEAQq4jNP8LXfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ogNllpL0KODsLmMQwJWGYdSI4aaZd13gTeEYmw2u4fc=;
 b=kFz6ncyZAo5hZvXe/m7gPGFWywg9xLD1jRMRLBZZ+8fehYxKWDFcHwbgZVexFO/HzXoZ/7iiZhochLMCqGzWcNFWGTjkszkp9y9lbOTDqJ5pr/68mxeltikxpJ81HW5QfmJDA9tbxJ1fvKhQJ7OEAerq6lSVB8IIjhlmcxrLWy+aFWp6waBD75tWVmqf3L7//bnfhHmPLYVeiMl5VbsWcrn/NcFWHaovjTI1kMr53hj1cMm60Ui3NqSLRPpypXsUDKo9Ai7I/JocZMxU4o5Iil5e5pqMRNruBMzvgaPI4HVw/q0MM2l8na5kKWLf87YsmwLfQxrphBGnL3KLx5gK0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7476.namprd11.prod.outlook.com (2603:10b6:a03:4c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Wed, 19 Oct
 2022 07:49:36 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::4cea:aa19:edca:db6c]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::4cea:aa19:edca:db6c%2]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 07:49:36 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
 glk_load_degamma_lut_linear()
Thread-Index: AQHY09N3MLSLzryVyU2JO13IIM505K4Vbj5AgAADPICAAAU+kA==
Date: Wed, 19 Oct 2022 07:49:36 +0000
Message-ID: <DM4PR11MB6360EFC872FCC8F09460709AF42B9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-10-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360D74E4C70C8D53892C2EAF42B9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y0+na3ypxfNCjS90@intel.com>
In-Reply-To: <Y0+na3ypxfNCjS90@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7476:EE_
x-ms-office365-filtering-correlation-id: c6c1ff94-a4b0-459b-665d-08dab1a677e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WtFAPFvab1k7qVE7I5LKTTKhTCTRnrS4Z9c3+jyJFWyEEepuuuXv97VR7Jx0j0CXT4C97vfYE/lpo8e2sUzhdlQCMEH/+ApWqOx9dSXtxEk808Tiv/7vLs3t4hZup86hHnMOijXqfeSYGeeftQlfZkiiaoR8vd0f+/5fZ4of2vUiCuqEmX0t7CXC6c76i3PF8lsdnhi0Ouy5HttZvLJizDafoqQvDjMan2heLbclHXfeiMmRpQH9Wn8k0Ehj3Nue4s1pscvepPK0AuEAPbu7hRLCl0+tz9x/dhDfbXNpqCgRwXcpv0yEBDpE6Y7T7xxzIxuQjVCRcDz64zIbBhN3yJFpPxOStoi72aHSv3FGVCCeN44ue92M8t2GTVs3ZjbhSu7rk/4F4ZYvXw10uc6biCPJfgFVLR6aDW5nAGB35QLr0+txypc9F0nCT25OxeQJae1UXCBGovAcFo3Np7Ii0g1LXWZ0LNyHlcSZKyt9t00jTGaG7N8HZn7qp+h7qDyFycCoMgqZAiM9AdRzQ6UudgwB/vF5F4MEyoBx5VxN3joJXvfej8hyu/bxLRL3Ot8co/h8My4d2MUj4XKilaXaOgEfX1aWS/NZ2IzOmT4JAmCY3TpwIf2eCklZDtDKXLnAIZ0fPt4kXvTNIF5b7f1VmzgbG3IU1jQz7kCxqzPSM/2rUKLRcSzdS1K2Bx5pCIqklPgMY9e/RsR/I/rCa71HZAKuFWk+MDG+cqW7C8bYuDZhewVFsV/Bs1Z1qegjlecsTY4W4lmEco6A1tsCacohQR/kTcPDempUo+VekBusvEQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(39860400002)(136003)(376002)(451199015)(33656002)(71200400001)(9686003)(478600001)(52536014)(8936002)(316002)(66556008)(66446008)(64756008)(8676002)(41300700001)(53546011)(66476007)(6916009)(76116006)(122000001)(7696005)(38070700005)(66946007)(4326008)(55016003)(82960400001)(38100700002)(186003)(86362001)(26005)(66574015)(6506007)(83380400001)(2906002)(5660300002)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?6MV0KEAy2gEbqMKLzAokXMtSfpPYz5oktVo+H1f9QbRb/QvW+p9sh1vTPF?=
 =?iso-8859-1?Q?I9TgeqqGfBAPQlNRRNukt1VICpFoDLDEdxTHoZ/zAgZL8KAcKesupLpWHF?=
 =?iso-8859-1?Q?/3pC3cFX4hm3+WKXXWwyzAcSvcB2QZfr0A0t3fAbYK50iE4EKs2V1Iox5k?=
 =?iso-8859-1?Q?Uk0VmCnPdhSPrlND4ehWUV5o2Oab9DAQQDOZbfOyFXMJyxQ/ONQ0OZcf0e?=
 =?iso-8859-1?Q?5Pe3ZkgzeklWe032zWrPhJFZTeumhI+/r6CvTgUqII2UmWKqThZSQ0H1sP?=
 =?iso-8859-1?Q?LSp/+egzga1BJDAYKCOct9xVEKSES8o334Rb8YFa2HHKLIOI+eyAWCMeur?=
 =?iso-8859-1?Q?5xlytySnBDxkMaEC0OXl0FGDl8yD7IabdxOwVu5WKb1q/3aeIkVuElslmd?=
 =?iso-8859-1?Q?RKNxdOjasQTnpM2iixTv/UDP8buu9f8T3MvK3RgX3xuVtGOstq0DKPfTzW?=
 =?iso-8859-1?Q?i3HHOS2XeSmrxrK7PvpEu4PAxfaUv2ZGrRS9J3NqRpfkX9aup7tkqrIxMP?=
 =?iso-8859-1?Q?tKoeFe3RLYWr4+I70M9Ohbh2tdmo1qUON/zAuiFGcv8adAwfHbUUSHpbiq?=
 =?iso-8859-1?Q?CRITjYj32C6RdQaE8XREH51fE8KhpmsCOb4mzXQzZ7h6f7nLSfeQCA1oUA?=
 =?iso-8859-1?Q?fBtMnVCa4ib74oo8rZdWugp+Ds6MEF3RhUeUR+VYqrPUPYshagNFpc4HRm?=
 =?iso-8859-1?Q?pqY6yKzC8fgMJeSfYpHZQnF+NBcmeHRNkE+G5f1sMg4YTwNKTWV6usKFTR?=
 =?iso-8859-1?Q?OSgbxTrN4nSuU4fjAoZLQe726P/J8AwOekNYq6rEpEMC7S9JX5Z0V8Leql?=
 =?iso-8859-1?Q?6cDSROlMiCzSyKZkHQ6s1aUBCLlLzTnG3xjblkJGS27pLjbpNlfo+J7XTS?=
 =?iso-8859-1?Q?nETByyzVR5lnPIf08V1w9kEGgeDFTcdUs4khHfETDU2VfcESQSrwOSKoY4?=
 =?iso-8859-1?Q?dwhIPrqzvnOCJBPz7gQqheOtVZoLAtt3h8Mh+zfO22khjbCsGPlF9F55wI?=
 =?iso-8859-1?Q?SH6h3ArPryXpjtjjX5rP6FrMjfIJ+erwKExsDbWyy+L5E/Hk2URRgTzLq2?=
 =?iso-8859-1?Q?S1og4g2AK7KA799GA8mnmE09vsCj7ePzkUN9j8YFw2BLHC3vOD8JlkWF6p?=
 =?iso-8859-1?Q?OPphJIDkCwcAyLAdpV/VPIEX2P+xeBtl6c2hFRqJ4UMAN4xprdnWzir9wT?=
 =?iso-8859-1?Q?MTjSo/Yu8x2hR0inpWXUz6siiTI2//M74ZJdAeAS7Rz/IuTSKSYfnV5ELz?=
 =?iso-8859-1?Q?c1MpEDdE8HYYU4FeD3UgFUWAIGtx5qa9eSAET14sIUt52cnjMApuo4vkSi?=
 =?iso-8859-1?Q?aLoW5jXbhELGNfonZJS0veD1rREkrO2tsKKTJYEtLkZRk8onguAoXR3TH3?=
 =?iso-8859-1?Q?Iz9xppbUnABiXXkS4vq3v6NLaaQcf69cfG2miwhDcb4NYWHdRiYQ5zy7KM?=
 =?iso-8859-1?Q?CpRTD3TJw2rqRVkedyXn4FjmiHUW5KUxgmuhBElIs+wAx9tk0sGR/rbDnR?=
 =?iso-8859-1?Q?7RuFeCA1y/GbF6IqfWiU4TgqrVg9d5k93J0UW0fAR5UpOhuL3YnqMVi6AP?=
 =?iso-8859-1?Q?+7rZNHEWQUU23gq2WC0K5ztVlU3+nGH4+vKCS2fj+1VLb+lxip8C6C/kdr?=
 =?iso-8859-1?Q?bVKBYVC6fB5SEnBnGvb64KxHtMoyhTcQEy?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6c1ff94-a4b0-459b-665d-08dab1a677e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 07:49:36.0350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ZNnjpfkk07g+hZwcjScMAgfisEgACxD1pNfGMz/gKcjwRoepXcoAcelYIbKEX2z81PXPiVHhaDWQsU0tPUUpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
 glk_load_degamma_lut_linear()
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
> Sent: Wednesday, October 19, 2022 1:00 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
> glk_load_degamma_lut_linear()
>=20
> On Wed, Oct 19, 2022 at 07:20:13AM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Thursday, September 29, 2022 12:45 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
> > > glk_load_degamma_lut_linear()
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Since we now have a place (pre_csc_lut) to stuff a purely internal
> > > LUT we can replace glk_load_degamma_lut_linear() with such a thing
> > > and just rely on the normal
> > > glk_load_degamma_lut() to load it as well.
> > >
> > > drm_mode_config_cleanup() will clean this up for us.
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_color.c    | 110 +++++++++++-----=
--
> > >  drivers/gpu/drm/i915/display/intel_color.h    |   1 +
> > >  drivers/gpu/drm/i915/display/intel_display.c  |   4 +
> > >  .../gpu/drm/i915/display/intel_display_core.h |   5 +
> > >  4 files changed, 79 insertions(+), 41 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > > b/drivers/gpu/drm/i915/display/intel_color.c
> > > index 575d2a23682a..de530bf1aba1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > @@ -557,6 +557,32 @@ static void skl_color_commit_arm(const struct
> > > intel_crtc_state *crtc_state)
> > >  			  crtc_state->csc_mode);
> > >  }
> > >
> > > +static struct drm_property_blob *
> > > +create_linear_lut(struct drm_i915_private *i915, int lut_size) {
> > > +	struct drm_property_blob *blob;
> > > +	struct drm_color_lut *lut;
> > > +	int i;
> > > +
> > > +	blob =3D drm_property_create_blob(&i915->drm,
> > > +					sizeof(struct drm_color_lut) * lut_size,
> > > +					NULL);
> > > +	if (IS_ERR(blob))
> > > +		return NULL;
> > > +
> > > +	lut =3D blob->data;
> > > +
> > > +	for (i =3D 0; i < lut_size; i++) {
> > > +		u16 val =3D 0xffff * i / (lut_size - 1);
> > > +
> > > +		lut[i].red =3D val;
> > > +		lut[i].green =3D val;
> > > +		lut[i].blue =3D val;
> > > +	}
> > > +
> > > +	return blob;
> > > +}
> > > +
> > >  static void i9xx_load_lut_8(struct intel_crtc *crtc,
> > >  			    const struct drm_property_blob *blob)  { @@ -871,53
> > > +897,14 @@ static void glk_load_degamma_lut(const struct
> > > +intel_crtc_state
> > > *crtc_state,
> > >  	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);  }
> > >
> > > -static void glk_load_degamma_lut_linear(const struct
> > > intel_crtc_state *crtc_state) - {
> > > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > -	enum pipe pipe =3D crtc->pipe;
> > > -	int i, lut_size =3D INTEL_INFO(dev_priv)->display.color.degamma_lut=
_size;
> > > -
> > > -	/*
> > > -	 * When setting the auto-increment bit, the hardware seems to
> > > -	 * ignore the index bits, so we need to reset it to index 0
> > > -	 * separately.
> > > -	 */
> > > -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> > > -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
> > > -			  PRE_CSC_GAMC_AUTO_INCREMENT);
> > > -
> > > -	for (i =3D 0; i < lut_size; i++) {
> > > -		u32 v =3D (i << 16) / (lut_size - 1);
> > > -
> > > -		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), v);
> > > -	}
> > > -
> > > -	/* Clamp values > 1.0. */
> > > -	while (i++ < 35)
> > > -		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
> > > -
> > > -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> > > -}
> > > -
> > >  static void glk_load_luts(const struct intel_crtc_state *crtc_state)=
  {
> > >  	const struct drm_property_blob *pre_csc_lut =3D crtc_state->pre_csc=
_lut;
> > >  	const struct drm_property_blob *post_csc_lut =3D crtc_state->post_c=
sc_lut;
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >
> > > -	/*
> > > -	 * On GLK+ both pipe CSC and degamma LUT are controlled
> > > -	 * by csc_enable. Hence for the cases where the CSC is
> > > -	 * needed but degamma LUT is not we need to load a
> > > -	 * linear degamma LUT. In fact we'll just always load
> > > -	 * the degama LUT so that we don't have to reload
> > > -	 * it every time the pipe CSC is being enabled.
> > > -	 */
> > >  	if (pre_csc_lut)
> > >  		glk_load_degamma_lut(crtc_state, pre_csc_lut);
> > > -	else
> > > -		glk_load_degamma_lut_linear(crtc_state);
> > >
> > >  	switch (crtc_state->gamma_mode) {
> > >  	case GAMMA_MODE_MODE_8BIT:
> > > @@ -1360,11 +1347,17 @@ void intel_color_assert_luts(const struct
> > > intel_crtc_state *crtc_state)
> > >  	struct drm_i915_private *i915 =3D
> > > to_i915(crtc_state->uapi.crtc->dev);
> > >
> > >  	/* make sure {pre,post}_csc_lut were correctly assigned */
> > > -	if (DISPLAY_VER(i915) >=3D 10 || HAS_GMCH(i915)) {
> > > +	if (DISPLAY_VER(i915) >=3D 11 || HAS_GMCH(i915)) {
> > >  		drm_WARN_ON(&i915->drm,
> > >  			    crtc_state->pre_csc_lut !=3D crtc_state->hw.degamma_lut);
> > >  		drm_WARN_ON(&i915->drm,
> > >  			    crtc_state->post_csc_lut !=3D crtc_state->hw.gamma_lut);
> > > +	} else if (DISPLAY_VER(i915) =3D=3D 10) {
> > > +		drm_WARN_ON(&i915->drm,
> > > +			    crtc_state->pre_csc_lut !=3D crtc_state->hw.degamma_lut
> > > &&
> > > +			    crtc_state->pre_csc_lut !=3D i915-
> > > >display.color.glk_linear_degamma_lut);
> > > +		drm_WARN_ON(&i915->drm,
> > > +			    crtc_state->post_csc_lut !=3D crtc_state->hw.gamma_lut);
> > >  	} else {
> > >  		drm_WARN_ON(&i915->drm,
> > >  			    crtc_state->pre_csc_lut !=3D crtc_state->hw.degamma_lut
> && @@
> > > -1619,6 +1612,25 @@ static u32 glk_gamma_mode(const struct
> > > intel_crtc_state *crtc_state)
> > >  		return GAMMA_MODE_MODE_10BIT;
> > >  }
> > >
> > > +static void glk_assign_luts(struct intel_crtc_state *crtc_state) {
> > > +	struct drm_i915_private *i915 =3D
> > > +to_i915(crtc_state->uapi.crtc->dev);
> > > +
> > > +	intel_assign_luts(crtc_state);
> > > +
> > > +	/*
> > > +	 * On GLK+ both pipe CSC and degamma LUT are controlled
> > > +	 * by csc_enable. Hence for the cases where the CSC is
> > > +	 * needed but degamma LUT is not we need to load a
> > > +	 * linear degamma LUT. In fact we'll just always load
> > > +	 * the degama LUT so that we don't have to reload
> > > +	 * it every time the pipe CSC is being enabled.
> > > +	 */
> > > +	if (!crtc_state->pre_csc_lut)
> > > +		drm_property_replace_blob(&crtc_state->pre_csc_lut,
> > > +					  i915-
> > > >display.color.glk_linear_degamma_lut);
> > > +}
> > > +
> > >  static int glk_color_check(struct intel_crtc_state *crtc_state)  {
> > >  	struct drm_i915_private *dev_priv =3D
> > > to_i915(crtc_state->uapi.crtc->dev);
> > > @@ -1653,7 +1665,7 @@ static int glk_color_check(struct
> > > intel_crtc_state
> > > *crtc_state)
> > >  	if (ret)
> > >  		return ret;
> > >
> > > -	intel_assign_luts(crtc_state);
> > > +	glk_assign_luts(crtc_state);
> > >
> > >  	crtc_state->preload_luts =3D glk_can_preload_luts(crtc_state);
> > >
> > > @@ -2283,6 +2295,22 @@ void intel_crtc_color_init(struct intel_crtc *=
crtc)
> > >  				   INTEL_INFO(dev_priv)-
> > > >display.color.gamma_lut_size);
> > >  }
> > >
> > > +int intel_color_init(struct drm_i915_private *i915) {
> > > +	struct drm_property_blob *blob;
> > > +
> > > +	if (DISPLAY_VER(i915) !=3D 10)
> > > +		return 0;
> >
> > This is very specific to Gen10. Should we rename intel_color_init
> > which sounds more global to a gen10 specific name.
>=20
> I guess I could have added a glk specific function for this and call it f=
rom
> intel_color_init(), but should be easy enough to do that refcatoring if/w=
hen
> someone needs to add more stuff to intel_color_init().

Yeah, fair enough.

Regards,
Uma Shankar
> >
> > Will leave that to your discretion, don't see any issues logically
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Thanks.
>=20
> --
> Ville Syrj=E4l=E4
> Intel
