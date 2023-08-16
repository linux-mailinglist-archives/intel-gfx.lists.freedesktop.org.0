Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D571C77DF4D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 12:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52FC10E347;
	Wed, 16 Aug 2023 10:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4844E10E33D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 10:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692182737; x=1723718737;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZV8DbBcvyPtu/nsHESqkoywPxvM870SsTdJp0+QNgKA=;
 b=a2/UPIDkto75JZ1xrQR5flBExUhiBqzykK4vtERzVskADbpF80TwLNvQ
 nx0y7DWj+hdybhTGUQc1+CoZd9j/wPgDnR/tsr1gpcCDioqUHf1hD0EeC
 smpwWNbsi10BYPMFAIc6NLEV5BrRrqSWfQqCOcsStbAerDFtZAdjk9xBF
 sd27qR0pFuFVz0716ZfjTSxEMu1rs9j6wi4DrMDuj012vdfEgGoiyz/tF
 Xpvd8WxJsZWgHt7w1NesiS0G9UfJ77azsGw6USzNR/cp9yuOIVZop7dtw
 ug7qSkCmDISCvfr1UzzL+GSXxIx1NAEWqoBlRUfRJYSWCxwxWXZM9Hp8l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375269758"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="375269758"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064790240"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="1064790240"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2023 03:45:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 03:45:36 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 03:45:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 03:45:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 03:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X77izxo+uqIsC5AHnOgLMqGyBi8+dreyCgfw6dJsSG+TYh+UyLMGKtm4vdsOogE/9zEbJEMD5sL3IFO9CER+lGCLrvQ5AROkXbzeh0uBP3TfhHS7a/FjmUNqTD26AL7jJF27nm4+C90HA57uIpIEVerCxQo4ggfYkwNH51QGGLog3v8kyaskYfp7s2RzKvXa3tyyDeUa1H/waHMfXPcRHcwuEdirfywHuCRKieeKjRJnWwzHkWAcIxDjIELSBoU8jaZCG8jLBvpApT4xlMjwHmE77llV+Nf0qC12+hxd/UsfjldDvfMwBvTkdbJx5iw3oLSyDJtnYH+ysxMUFId0rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CWqP18dAiy9alVSIIVdJqvc/zZeOkCv3A2aANUKCh6I=;
 b=LXci9FIhR9N9RvyxS4WtyyDGKvkYwW/umdLmFslM2dip/DO7CCqwkhVyKVnmppWbhe8q8rnhtnHzz0LJQpVrdBcqdFHpBU5OhzQh0tOiSV20uYomZmEU5hjyKCEeYwhe63Drd/mJaRwub49J0WLLPnZdy0wQApsv9mzsDMELOyCSWJ0dE7DjIGlkKEqbqXlrp6EyxBIDqO7qAFTZx2Oy1LGq6FhcuHlmH/qII1/E0ENe2hfw1G4OlqUpPpJtdAG6bgMLeCHf81v4f/P/oUCYdaXUNXD5x5eEFcT2b49SUxugtiFpUvcsjhdDzDSKYQQfM9NKswfjpMQbYRvRH+rMkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.30; Wed, 16 Aug
 2023 10:45:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 10:45:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset
 assignment for DSI
Thread-Index: AQHZyTuX88jRBTXNmE+A94pYAvDtHq/rzCwAgACr/7CAAEUOAIAACeOAgAAAYeCAAAMBIA==
Date: Wed, 16 Aug 2023 10:45:33 +0000
Message-ID: <SN7PR11MB6750962FDFE9E533FAFCF0CEE315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
 <877cpwayob.fsf@intel.com>
 <SN7PR11MB6750D24920061E5DDD3F2171E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87o7j79uqd.fsf@intel.com> <87fs4j9t3e.fsf@intel.com>
 <SN7PR11MB6750A2CE4750AB0760EEA4C4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750A2CE4750AB0760EEA4C4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6912:EE_
x-ms-office365-filtering-correlation-id: f329fb42-799f-4027-5596-08db9e45eae7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MYE/AlR4HCKZLNglUp5A2WzWsbslcokkiWGUgu8Tp4kE4HrA0SoxebRxKYhbDynBsm29DKW5wowMwTf7VdbpslgIhUIMUz4b1wRoIBz35cEFcdK//2EXTWut01QFxhEFyoHDA9pBB48lRPm/4+lygHh5obGhXzPoBXnnHjEBlSvXu5v7XOvn0fACyreW8CgY13/+folX+3GJWLJ9rMMyjAc7w19M7XpHkITbbdDWe6894NgZECxiRf2wm27090gVHM62RQowmzMpw/lMT7V1+8un71GWNk3BjUOO6SNuIFlfR7DAMOXiahwRdbG2TQDvZWY8WNvZFpPWsiMF5Pfyx5dr9ZjGuDB9Gyi6zVJM4VdB4v/jALg6jJO8za1ttPKgaYjTqq7GE4W+X8pjrm8paaOSUxRm6JaDgbarFhapCcfSjEwz+JauWST+cjQtIv93kjIjC8zZdtylxi81PXmHqjFQzc2+DULIUMYgHyuyjqLguJts8Hxjbr+Ffga6HrW3JyIyk8LvVS6LwIL/EXcTm50p7jUgLX4ka0PyhD8C6Yt34xZ5ONZ2IQY5wwrntmamAbYEpOHxXmgM4g27igY1t65/YDigxeCS7LQejMbyU2s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(346002)(376002)(1800799009)(451199024)(186009)(316002)(54906003)(76116006)(66946007)(110136005)(64756008)(66446008)(66476007)(66556008)(122000001)(966005)(41300700001)(52536014)(5660300002)(38070700005)(38100700002)(8676002)(4326008)(8936002)(82960400001)(2906002)(55016003)(478600001)(86362001)(2940100002)(9686003)(33656002)(7696005)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QVi3zJKVgAQJrdUe9/lboyEWjhEicFLxnU7jNiJIJTBm1FDJpnPsvQXHdQaP?=
 =?us-ascii?Q?a1ilfeaSzvczgcMTTxfCScppZ4VtIg9ts85Hr+J7ko6Gnq14GoTiJOGwMmQB?=
 =?us-ascii?Q?R6XTZS+BzEt2j0ojhMuUg0V5TCFEi0hEk9P/G0sDRUeDD9p7DiKKcrBLstr8?=
 =?us-ascii?Q?ULYmcSfUTAdIuDWQia3SttBUWr/f1HQ/RDipJkxLZVh+sf/5DjdirJcZm63x?=
 =?us-ascii?Q?wHzPmsbp3VugDaVv2/Ur6haobQ2UuaH9nhd5Ncg4TjMQyAMi6Lor7r7/1tj+?=
 =?us-ascii?Q?NXoKsY8HKsiEcisfzgVhfzitoCwdsfrzxIwHUqILnSkXYX9tIUjGx5v0LVnq?=
 =?us-ascii?Q?OMytmdhrfo1SgF7/rOEyIsG2M2QCTPvDaUa5AE41GGcR+PQ+5vBkuoKkKgN7?=
 =?us-ascii?Q?nCIPiLSwaZwDMxb+HAqGmN/RJDKTGcsq23/1eYCSio+xnSGwVo1MKfiWqfFu?=
 =?us-ascii?Q?cJccIZIpmnnhsaiM4hCL9PnhmDfP2cUvRh/BhVuD/d8jT9QF0FcLuLTdAhDh?=
 =?us-ascii?Q?E3BhO4SiI28p83UeJArxujoatTbVIp+KIiuG+k+Dv4Kij61C30FN/GQIuIik?=
 =?us-ascii?Q?5UtwhP48cVyuvVpeoG5P+fGNW9lx2xdhBWE1iPUASPdsKqriOcigQE0R1mwB?=
 =?us-ascii?Q?XSrLO1T1jD6ojK0mRpkF41lyK+E5LaaL5IRljBaCk5QljSx9wbuKf/rcAMOb?=
 =?us-ascii?Q?pyFMhKdJIwO8A6WnDwZQJPt5VJwGtV4KtdynhIPOElWqNPPIYePKNGaPxWBP?=
 =?us-ascii?Q?uOQq8p1XtVYH6db6OskA+3C2GWTF6ifxo6rW2NU4U9UGNTZ3537SMG+n4EYK?=
 =?us-ascii?Q?umTIBkHC4bIEVUjWYxGOK8d8djUIMSM3mp3L39POOCbDNQKPGHEBJA3+vnDA?=
 =?us-ascii?Q?ld9bbqRZ53RUE7G+R1kngjG3LucSw+kCGpP0IeKINeyLadZdHC7z0bSdTUQD?=
 =?us-ascii?Q?oXS+huonpzo/Jj4uDcPWKklmAMSmToKbmX859HWOZSwrTazHnyO4jeJGalLX?=
 =?us-ascii?Q?Iw6GdRSDmO3v5MFgQlPddZfWez4klK/n5GsTuyvu3cvL5N9cMsrd6kqHdpDE?=
 =?us-ascii?Q?yRTbiBPsQN4GAGIXdo+VhCYaHhjx9Z7ZztF0LXRTba3cH8il6cCxLS0jkPGN?=
 =?us-ascii?Q?4g2UC9NYSyHJBPvbLOGPHwpAF7GgcK7+H88xMKZC8OPliQfOznOgbgnhysIX?=
 =?us-ascii?Q?5TbfJM2FNoQ4Nj4WXpvUOXJ7TEPz0j8MNeg/i2RsF5Svuy7EN9mFWJT9cz+o?=
 =?us-ascii?Q?8CA2clu5mcEnpQzMLi/dSlqn6GDT3/WnJEa6XxMKfAHr5PIcYhezUsyi+DZ9?=
 =?us-ascii?Q?s3gS9JkW3z2QqKFNJFffQnOHItlmBWGcVepr/lt0zR1jeiETIoAqqziTCYgT?=
 =?us-ascii?Q?M5NYfQoN5jMnVU9UaUwMsmIfArgVgVyogxmOh3OkUXu2hvy/w1AVfptdHUTO?=
 =?us-ascii?Q?c3BjJO4jfwA8ynNAjrA0C/UTHlG1q3RRSl1ygbvgrn7th0LdxzRJB3vec09T?=
 =?us-ascii?Q?75/WIZEqlPjHrdxJ+FaSLUzE10VWNSzdbQIckE8EkaFXaSGvWBdkGmQafJ83?=
 =?us-ascii?Q?eS7ybPudSucTXhIEJ5Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f329fb42-799f-4027-5596-08db9e45eae7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 10:45:33.3837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V3JdwdGqXCk02JpguEeAmN6clxOqSFNXYDfc+gGXrUAxmRo8l7Kg8m5MpUBNLU66PTaeHnWd8qiI0TsxvQdIRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit
 first_line_bpg_offset assignment for DSI
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Also a small thing I needed to add is we found this patch series
https://patchwork.freedesktop.org/patch/549863/?series=3D121487&rev=3D2

where panel sets the slice height to 40 if a value around 30 is given it sh=
ould
work
not sure how relevant this is here but just an FYI

Regards,
Suraj Kandpal
> >
> > On Wed, 16 Aug 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > > On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com>
> wrote:
> > >>> On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com>
> wrote:
> > >>> > Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1
> > >>> > for DSI panels even though we already use calculations from
> > >>> > CModel for first_line_bpg_offset.
> > >>> > The reason being some DSI monitors may have not have added the
> > >>> > change in errata for the calculation of first_line_bpg_offset.
> > >
> > > We should be using DRM_DSC_1_1_PRE_SCR parameters for this, right?
> > Why
>=20
> Sorry I seemed to have missed this comment in my previous reply but from
> how the code is written if display_ver >=3D 13 we call on calculate_rc_pa=
rams
> which uses formulas to calculate the params and we don't rely on the dsc
> tables in drm_dsc_helpers so the DRM_DSC_1_1_PRE_SCR scenario does not
> come in picture.
>=20
> > > does the array have post-SCR values for first_line_bpg_offset?
> >
> > I'm asking for logs on the gitlab issue, and trying to get at the root
> > of this, because so many times in the past adding a specific fix like
> > this for a specific panel (albeit using generic conditions), it has
> > caused more troule for other panels in the future. What if other panels
> don't work with 12?
> >
>=20
> That is true which is why I too was unsure on the fix.
>=20
> Maybe Tseng can provide the logs them on the gitlab issue.
>=20
> Regards,
> Suraj Kandpal
>=20
> > BR,
> > Jani.
> >
> >
> > >
> > >
> > >>> >
> > >>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > >>> > ---
> > >>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
> > >>> >  1 file changed, 5 insertions(+)
> > >>> >
> > >>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > >>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > >>> > index f7ebc146f96d..2376d5000d78 100644
> > >>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > >>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > >>> > @@ -1585,6 +1585,11 @@ static int
> > >>> > gen11_dsi_dsc_compute_config(struct
> > >>> intel_encoder *encoder,
> > >>> >  	if (ret)
> > >>> >  		return ret;
> > >>> >
> > >>> > +	/* From Table E-2 in DSC 1.1*/
> > >>> > +	if (vdsc_cfg->dsc_version_minor =3D=3D 1 &&
> > >>> > +	    vdsc_cfg->bits_per_pixel =3D=3D 128)
> > >>>
> > >> Hi Jani,
> > >> Thanks for the review
> > >>
> > >>> So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8
> > >>> bpp compressed?
> > >>>
> > >>> Better describe it that way, instead of as 128.
> > >>>
> > >>
> > >> Yes would be better to right shift (vdsc_cfg->bits_per_pixel)  by 4
> > >> then compare with 8 to avoid confusion.
> > >>
> > >>> But... looking around, in intel_vdsc.c we set:
> > >>>
> > >>> 	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
> > >>>
> > >>> and we have:
> > >>>
> > >>> 	#define DSC_BPP(bpp)	((bpp) << 4)
> > >>>
> > >>> however, when reading it back in intel_dsc_get_config(), it's just
> > >>> directly:
> > >>>
> > >>> 	vdsc_cfg->bits_per_pixel =3D pps1;
> > >>>
> > >>> Are we always sending x16 bpp in PPS?
> > >>
> > >> Yes we are always sending bpp x16 considering the fractional bits
> > >> also in intel_vdsc_regs.h We have
> > >> #define  DSC_BPP(bpp)                           ((bpp) << 0)
> > >
> > > This is the part that confused me.
> > >
> > > BR,
> > > Jani.
> > >
> > >> Which in hindsight can be renamed as it has the same name as the
> > >> one in drm_dsc_helper.c But then again the DSC_BPP macro there is
> > >> more
> > local to that file.
> > >>
> > >> Moreover vdsc_cfg->bits_per_pixel is being set in
> > >> intel_dsc_compute_params(among other places but is still being set
> > >> x16
> > the value).
> > >>
> > >> vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> > >>
> > >> Regards,
> > >> Suraj Kandpal
> > >>>
> > >>>
> > >>> BR,
> > >>> Jani.
> > >>>
> > >>>
> > >>>
> > >>> > +		vdsc_cfg->first_line_bpg_offset =3D 12;
> > >>> > +
> > >>> >  	/* DSI specific sanity checks on the common code */
> > >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
> > >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
> > >>>
> > >>> --
> > >>> Jani Nikula, Intel Open Source Graphics Center
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
