Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59DC391C99
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 18:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A406E17C;
	Wed, 26 May 2021 16:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6286E17C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 16:00:19 +0000 (UTC)
IronPort-SDR: 0DanHhfroWIwrtTa0x8b+SYujoICuFJuJ0xH/K83DYCJuyr/8doA+nVEj1LUk1kucZWSZkMqfI
 rjAiu9UVTnFA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="263704353"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="263704353"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 08:58:39 -0700
IronPort-SDR: adnXd8wBKaTqkeuOye+RqAg+qxZ7iWc5bQtr38MFOJpkPF+owP9+nGYnfHApm+0MoDBNdoJNxv
 LNv9udoMIpQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547242342"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 26 May 2021 08:58:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 08:58:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 26 May 2021 08:58:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 26 May 2021 08:58:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzgQ7hpkYLMMeAzxIm3B8AWYVHvU+1h8gplYm6xpUuOa8JY3HzrUkuF2+rdX5MG7gH5jSsKQiX/6tTopDdw94QcnQMolb2wg7X1r9aTkCkH6ZO12EoN0fByN0wTqV5HxP5LUBuoby9na6uxi9SACdtAcsIgcSSjdRZklHKUuMutTpHVCHe3L4qOivS50Phpkkyy/oThdtSKZDMoXmoS7RbH0taRJp2LbUDC7cVaOqdxjSMQCKP699TFMmPk6ACso06CryqvhZ2JsAHBTnRmnK2QZ9IQSvo2oifDlbNI+37K/+GS5NjecVvmFSu/py4NdJFm53M17gkhFuCj28DfeJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ca2xG0x1HBTXQqkXGnIdZZ+ZquV3q8DO7QRd0Lc/EA=;
 b=m9bpNqOBOhR5HUUOEtfUf/aThKG5UcA24xGq9w5WLF4996aPBJtBS7neG9B00iyuvYHcodOIUjZCCEZXjwO9AeiJxJAXaY3oPzy4NBGP5gkI5sizCj7CbLLgRksy7UFDKFb9onSiR9rMiyOAb0lZvX7fUYIOpX4Q7/UMOeej1zD1fe4gzdYayW0hstMEYlUziSkLX5PW3uL7uRhjY5n8S9tui80sVJiRNhZ2xSa5KuraC4epROatls8GJFT2WSFPvjnagD+F2yo+K4qnZKy3vvKuYDSBj/CRDL7MDUlNmeE8n77BjhaYgxi7xhnW6b+4OMH81lbfQbYjNck6QNWd+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ca2xG0x1HBTXQqkXGnIdZZ+ZquV3q8DO7QRd0Lc/EA=;
 b=KlFuatuSHO3A8elAjjJHrw88Wbdm1mOyvW96E5crH80dLKE91m52SIWYYeq9Ijy1jk1F26pBxuMgDHDmPBjr7fYBVGWi35NDKJbj/OWLerMZyG3fjg66bB8x387hucDrYaO1pLkUfSl5BN9wfpJCnDuwJpMwmwZvPWY6gEGkMAY=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Wed, 26 May
 2021 15:58:34 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514%7]) with mapi id 15.20.4173.022; Wed, 26 May 2021
 15:58:34 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Varide, 
 Nischal" <nischal.varide@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering after
 the CC1
Thread-Index: AQHXUhnnkOGrgqWR3USPQigm2nq5+Kr1y+KAgAAew3A=
Date: Wed, 26 May 2021 15:58:34 +0000
Message-ID: <CO6PR11MB5569B1A2A203BD64EEF631318D249@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
 <20210526181728.14817-2-bhanuprakash.modem@intel.com>
 <87o8cxbngy.fsf@intel.com>
In-Reply-To: <87o8cxbngy.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [157.47.93.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b816d874-3ee1-437c-d373-08d9205f1db1
x-ms-traffictypediagnostic: CO6PR11MB5603:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB56034B2FCE750E46DAB0739A8D249@CO6PR11MB5603.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H2InShlUfLBUth6ymEh9vrvNs5U12PdRAhIKG6LZKsmTdqKVIv7hXRyxYxoGRacnFrjmH9lcdJNw6hom/0sgLaL/V49ZBc9/7UZnumD8QMTbNWjmv2bw/5mriG+wS4nt/yV3bGoyYQC7C/f/RxaWQBWvGxF+TGxWvF9I0tbtaUzX05A9NE40QPn8n7h5d7yJk2lFNTc89b5p7ZbSMLowH8Yvs0sGsX3MqSnoFvbk4uFC/8/DwKXEWJoFBLtD7jOJeQDGX5xaXkuktWFFXHG5bF/jpKLtlQRhNeVaOvhhDs8FRoxrETqFqactaq7GOPJBYr7nV1HoHg8mQOVfKwv+bbm14MVvJxL9GL+dtgFSB7wPalJo6tx2u7j4UxO+JylCJQgrjMW4jtt7oyTFu6u+mFPHs3M8X4fLaP9DHvMgaQIhRMjePW5JqRy6YNWCOHZIpDMhELDbiDLL210//nk3UeDj5zQd955oV29rMnpkpKBG/n/990xjm8Ld9Jp+ZFfObY6jDsPK/IJk0KvbSKn2ghoKVDW8DcdL1Caz4l1q3+mZGv5+/+WjC0r590WdFj1CAVc18KYdgoHwkX0yIvDJePPnEKLBnarJFj41CvGko00=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(346002)(136003)(39860400002)(71200400001)(66476007)(5660300002)(2906002)(9686003)(66556008)(8936002)(55016002)(6636002)(76116006)(53546011)(64756008)(7696005)(6506007)(66946007)(83380400001)(8676002)(66446008)(52536014)(478600001)(33656002)(186003)(26005)(122000001)(110136005)(38100700002)(316002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?kr8zs5NCxckSxJwRUeox/stTQvvRlIGVMdNmXRzkYyfk+bWDRcDKybFdx21G?=
 =?us-ascii?Q?v//Goqie5yvyfg8qLTljffRILQkYukxGyJshqAAM159VNeLGTZsTxCB9UW9O?=
 =?us-ascii?Q?uK6GV1pvKRPI+lxDC7mRXON1bIFaUeE6ybzVb1O1AdF4Xo+9C4rOOIDfhaTa?=
 =?us-ascii?Q?dGLnhY7Yqjb8FJcp9okcAwSig/Gq+k56cFQkn60PmjemuuQ9eyME0CZZYl5Z?=
 =?us-ascii?Q?kK++GeEXgh9dID6vqyK1TrkzDvg6lDcEMEwseD8w2Cx+o+IAQBBJBdc9BsZe?=
 =?us-ascii?Q?EOR8P9CGgyPQiJ5hgsfJkyzioGozej7QhHGfhkQDKj4XFtLyHbemFd8Zh36L?=
 =?us-ascii?Q?k+F0nbhAw35zNRQqgzrJN4PzDd/d58PAcQ2uK2xA7faW40yIOhdfEWelCYFu?=
 =?us-ascii?Q?OsglsJA7Rzzh59fg4j3QXp/qtYPayi/u189mJu13nu9aM2C3zzf3yFMrXhwv?=
 =?us-ascii?Q?CZJ8v1w2qiQpiI+dMWIu7q5b7VJAZN5oBpqUzExmlN0UFB9F8quRzsbkDXGJ?=
 =?us-ascii?Q?nsL1OYVowzBqmaneL0RXFod9chVE6UAuL0UIVZAsxJ8bcA9iWFcUo/nJo3DL?=
 =?us-ascii?Q?2aukIFs0+4e0SaMmUflCBi6XZh+zRKVVIuj/AsZBXHSHpY6FHdUWVB+OULN7?=
 =?us-ascii?Q?Agl+pWT4Qbhd/+/MMMwWCrDjXnEKTu+AYbz15eg1G2KY3b6IydFnPVZxV8fC?=
 =?us-ascii?Q?W2eM2nDeJTeFF2u+ky1MwcFAK5C+4UlZ179Fo75CA/Q94Sql4m0Ra05UtPCV?=
 =?us-ascii?Q?t/QvWluCBC+l+7BsB+CRpsjmIX2ArHPG+t7ZSvkiPZg4pcHSsx3DrdMxrbVV?=
 =?us-ascii?Q?2KDKAOvtxoieZ77MrGbANBXeQFSXckubVqBzddzaOj39ysAWrzHFfP3HrnWQ?=
 =?us-ascii?Q?Q0Ht62tLK48grFFDPHjyXIwoCVDzRIuDC44i0wlQUeDTRORHZo3qc9/Khx3f?=
 =?us-ascii?Q?JxVr4ACxFWMS7oK/spsHDDek3RTOa1CQbIY8lBdvTiZ+2F+4Bw+iwvaZBCwG?=
 =?us-ascii?Q?7HUYWeNBViYEN7X6Aq6cXW6SAstkxCMj4oFMo8rb4CuFU8MY5ptVLICvSLXN?=
 =?us-ascii?Q?Qp+Ytu7mu9tCXjT0PvTgLjDrUBu6EXplZeh1Zq4OwLOlk05a6QZj0BkBhQQ0?=
 =?us-ascii?Q?LEo+NrvXlLm/vC1niKb0iaj1rMOazIRLK1Yqcb0nNrB+3e3qsrT58beBpz9A?=
 =?us-ascii?Q?YrMO2cvNgdUm1T0RR4f8O4VvkQBc0gZgpvUgQWrDz+8wBBnE4vUjxzjqtmCD?=
 =?us-ascii?Q?oXCn3DJLNd5fxkYt0nfptoSQYeJHSdYRWK5cMPyj1SpicZnmSTpI6RXRwoqV?=
 =?us-ascii?Q?eLE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b816d874-3ee1-437c-d373-08d9205f1db1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 15:58:34.0905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OAHMYsmwIAaLiObcafLHsxwtIXYlPM9jrQBStlP92XAtatKGcdTr36LjJH43QHAx0ddljhT47BCSBRzDkJ+Kmu/ZKYfjXAlqqLAUz95ZBIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering
 after the CC1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, May 26, 2021 7:34 PM
> To: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; intel-
> gfx@lists.freedesktop.org; Varide, Nischal <nischal.varide@intel.com>;
> Shankar, Uma <uma.shankar@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering after
> the CC1
> 
> On Wed, 26 May 2021, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> > From: Nischal Varide <nischal.varide@intel.com>
> >
> > If the panel is 12bpc then Dithering is not enabled in the Legacy
> > dithering block , instead its Enabled after the C1 CC1 pipe post
> > color space conversion.For a 6bpc pannel Dithering is enabled in
> > Legacy block.
> >
> > Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> 
> When you're sending someone else's patches, you need to add your own
> Signed-off-by here.

Patch 2/2 in this series has a dependency on this patch. And I haven't
made any changes in this patch, so not added my Signed-off-by :-)

- Bhanu

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c   | 15 +++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c |  7 ++++++-
> >  drivers/gpu/drm/i915/i915_reg.h              |  3 ++-
> >  3 files changed, 23 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> > index dab892d2251b..4ad5bd849695 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1605,6 +1605,20 @@ static u32 icl_csc_mode(const struct intel_crtc_state
> *crtc_state)
> >  	return csc_mode;
> >  }
> >
> > +static u32 dither_after_cc1_12bpc(const struct intel_crtc_state
> *crtc_state)
> > +{
> > +	u32 gamma_mode = crtc_state->gamma_mode;
> > +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > +
> > +	if (DISPLAY_VER(i915) >= 13) {
> > +		if (!crtc_state->dither_force_disable &&
> > +		    (crtc_state->pipe_bpp == 36))
> > +			gamma_mode |= GAMMA_MODE_DITHER_AFTER_CC1;
> > +	}
> > +
> > +	return gamma_mode;
> > +}
> > +
> >  static int icl_color_check(struct intel_crtc_state *crtc_state)
> >  {
> >  	int ret;
> > @@ -1615,6 +1629,7 @@ static int icl_color_check(struct intel_crtc_state
> *crtc_state)
> >
> >  	crtc_state->gamma_mode = icl_gamma_mode(crtc_state);
> >
> > +	crtc_state->gamma_mode = dither_after_cc1_12bpc(crtc_state);
> 
> We don't really do the kind of thing where you need a sequence of calls
> where one depends on the other, adding to the same state member. At a
> glance, this just looks wrong, superficially overwriting the previously
> set value. I'd just add the check at the end of icl_gamma_mode().
> 
> >  	crtc_state->csc_mode = icl_csc_mode(crtc_state);
> >
> >  	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0bb2e582c87f..1a658bdaeab6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5741,7 +5741,12 @@ static void bdw_set_pipemisc(const struct
> intel_crtc_state *crtc_state)
> >  		break;
> >  	}
> >
> > -	if (crtc_state->dither)
> > +	/*
> > +	 * If 12bpc panel then, Enables dithering after the CC1 pipe
> > +	 * post color space conversion and not here
> > +	 */
> > +
> > +	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))
> 
> This now duplicates the pipe_bpp condition in two places, which seems a
> bit fragile. Maybe the check should be on gamma_mode? It would remove
> the need for the whole comment above.
> 
> >  		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
> >
> >  	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> > index 4dbe79009c0e..5700097475c0 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6155,7 +6155,7 @@ enum {
> >  #define   PIPEMISC_DITHER_8_BPC		(0 << 5)
> >  #define   PIPEMISC_DITHER_10_BPC	(1 << 5)
> >  #define   PIPEMISC_DITHER_6_BPC		(2 << 5)
> > -#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
> > +#define   PIPEMISC_DITHER_12_BPC	(4 << 5)
> 
> We already use the macro. You can't just replace this like this without
> an explanation. Why would this not break existing stuff?
> 
> >  #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
> >  #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
> >  #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
> > @@ -7726,6 +7726,7 @@ enum {
> >  #define  GAMMA_MODE_MODE_12BIT	(2 << 0)
> >  #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
> >  #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
> > +#define  GAMMA_MODE_DITHER_AFTER_CC1 (1 << 26)
> 
> The bits are supposed to be defined in the order from highest to lowest
> bit. See the big comment at the beginning of the file.
> 
> It's confusing that this is named GAMMA_MODE_ while it's not included in
> GAMMA_MODE_MASK (and likely shouldn't be).
> 
> >
> >  /* DMC */
> >  #define DMC_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
