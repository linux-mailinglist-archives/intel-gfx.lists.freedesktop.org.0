Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16D973D73B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 07:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91EAB10E05F;
	Mon, 26 Jun 2023 05:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D0910E05F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 05:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687758120; x=1719294120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xdfSXOnbOHTwVdd7XWhQGrAL7Ju3E9QRvw9Kqc7Iui8=;
 b=ViNfGbkRHHbp0LwezE3ZaBmTz6XYxSvCZPGiPkcrHr5Cte45G7aX6J4u
 P0t9nV5OrSa85J7GB8p8ZD0zou9u1PHRF3p+S7aiCVbA4dEuQMa+wynfi
 YYkKo9NIkGM0G6NEOFYAj1jbQW440g5ZK+ZSSDwAKuQsQdvD6WtsO+96H
 LneF6yR4rXrml2fqzInUjM+550TH2j0pTELXlGwEbfGkjNbgAD/WMuH4x
 q4OyHMmDVBgqWyJzzM0r5spTWMqfUAaE4s//FiV/3n01kLSEQmHR9OqDX
 83vQ9gKNECxWF7dz9y9YV4jYRVxPBxdKC1Evmd/7CxNuFoptLiOmQidJW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="358670965"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="358670965"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 22:41:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="786015849"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="786015849"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2023 22:41:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 25 Jun 2023 22:41:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 25 Jun 2023 22:41:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 25 Jun 2023 22:41:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 25 Jun 2023 22:41:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzuUq1/SybJbhO8yaulC56VU3bM9a0opUBb/INDZc5fmhZXN4Lft6SJ0fJMCz/S6ztEFlj9RaUZ7fumFSx5E8VFMb9Rk7q7QdAzNDqliFjrUn9XbJZiqg0AmbOqkZawbeR1gHBp5EaTV9K36KvQmmBq1ggZpkj/+GmSOc86WQhpw1oxjFvRC7PgxUwTzLDub609IjvxcokHWacv1Stpckm02oT14L1j4ymRfN2JnZhRO8WB8OFqoeVITUTdkQUWsUPWEdTmnuTy5BvA2f5VaZmu1tIdKSdt2cSeOWVR8oV1KTwuRJigkVRTPlMbboIaVacSpHCOQnP/Gp3Dd+n/asA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K25ax4g8VcnHobHHU2bcjoKIBkQxbqsa6P96XhCbGLo=;
 b=S+atdTmGnHsmXtpQzSAzj0QUQhWmQdDgN55bn5g72b3vScHjHe7qQ+5jI2ggxSeMDypOcB1851HY58RvDMa1yVnsvUz334tCgtiAPJizvxNA3K11YpDSO/qX2Wfyo53e5Lkyp8nBvUISAXHnetpZLbrDOWiL8JF8H6u8aKbdxA2i05M/KXc9GpFLdKSkU9sEWndeFrByVf8pxYDZbHvlTadTFmUNKjYSMk4piXRdvS1q5Q2quYukNnNEN2sBW/uwKIzT2b5xbfBV/4wxKgJhmjWQh9vxozUtedtM0HieAjZB6HqNNxyudTda6ktFseDhHAtXoWvYRQ+QmBxFhwfetw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY8PR11MB6868.namprd11.prod.outlook.com (2603:10b6:930:5c::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.47; Mon, 26 Jun 2023 05:41:56 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 05:41:56 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
Thread-Index: AQHZo0wI2waQYUafAE+ivFixeZsKd6+TtzUAgAjjcnA=
Date: Mon, 26 Jun 2023 05:41:56 +0000
Message-ID: <DM6PR11MB3177D29D177C855DADD05F62BA26A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230620074400.1054530-1-arun.r.murthy@intel.com>
 <878rcegrvl.fsf@intel.com>
In-Reply-To: <878rcegrvl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CY8PR11MB6868:EE_
x-ms-office365-filtering-correlation-id: 05c25ad2-bebe-42ec-3421-08db76080d81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6dQWGvLN8hKqTXiklqkeOSfLOkLaAx9JSEvBUxXdS1QA9di4jfiIFvkUVNGo4B5W6HJZjHtzNcVwCLAvGvNYdaxVWnu7pRPMkv7gySqbiojm34ISeUpCj+bnynsP2EVOI5dAtVPte3SXfBHbgj7Sj5U/BeKGCPPvsKrHpfNPnkvaRcxpd79HrOIB+IOVazeSQotKT3DmmDUXojbvnRVuiV0qoph/d70vCWFgZOww7AJDwodOrXhgZqrtt0Ggwud0h4KLH5erbrdi6XR+wEbs7UUXYTgr5jlCNSfmXXZa46qEC2DV27t/LAXdfV0gAngPAR3yn7jF4w8M6jYYjS7nELArGghL5t2sPuqUpl3Jqy/4JLyV8BJxef6gulHYSFdUyqqFZXHNlNdQc8FNYzqbrCqSaZCwRSnbgMN2SWzS+ENWrnfHPjB+rB3olpXVlbvVkWewYJSOiBn+qwiT8bHMdYTClrNzQDCL/zifESIooSqYFB8RAJYmugcluzXPVZGF9Y6OTrPlICoKrqnf923GvB1EKK0aupY3tSo0dqPUadUUCHf/awpGNoYdyMIN7qE+wrCtGeuc2OD/9ZssHUsQzqh3VWE55NgjDGpRg9MkwdnhNZQJEh0rj660lfSyuhGN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199021)(33656002)(55016003)(66556008)(66476007)(66446008)(64756008)(4326008)(76116006)(66946007)(316002)(38100700002)(82960400001)(122000001)(186003)(110136005)(8676002)(8936002)(41300700001)(55236004)(53546011)(9686003)(26005)(6506007)(71200400001)(7696005)(478600001)(86362001)(5660300002)(52536014)(38070700005)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K+9unNF95MpR3hc3WpJf9TlGf26oeHW7y8Q1h3nSohHw+WCqcqCCyAVzpvkN?=
 =?us-ascii?Q?SrZMcIXh3PhOzjQ6GhI5YxO24u/qmIOKWsIPrzExSVRcayXvY5IxJDTCzwIm?=
 =?us-ascii?Q?+QRZa646zv8Xsk09vukN6dLBfABUF9iHm+Ej/+wxQi0ulki+Keu8ziMILOXm?=
 =?us-ascii?Q?cXsvJ12HTF7zCSKUhDFN3f6GDent2JDBwAffmIVZ+XvEEYf9eVStHh6UBWkr?=
 =?us-ascii?Q?Jmgyluaa/Bu4hcVwMtekDoIcrlSOMYMT7A5apB9loCrp4V+ljpsv5JUvfYW6?=
 =?us-ascii?Q?OTH+J12zxZEKC9QYqCmnkaWZE5XRgj6tXVNUG0dxN6oyoloFyl9VwSyFIG37?=
 =?us-ascii?Q?U8qGPEn9KexA3Yelpb1elJPhHP6FXBvG2YxIdZErYuCKfbowzFR1lN1vxUuS?=
 =?us-ascii?Q?7iaMeDMCJR5tS9uc0aS4VnQycOzTcx2wj4t2b3pZJdNLs941PfJ5kdpTmEN0?=
 =?us-ascii?Q?n3aI/ZS5VHqXplSp+gfDZXUxqCO7aNcAdQEttF40T7u/6JgWI2dhwTWbo0ZP?=
 =?us-ascii?Q?al0IeX8M+gR31mOM++7bMJmf5hLiw3hMB/CbikO3zVLOhlsipYKH9pYmIESI?=
 =?us-ascii?Q?dLMZA0Y5jfZuYS9iihVDg+rAU9wRlh5Dc0GrzfwKSmOOUyvdK2rybA7GoVgW?=
 =?us-ascii?Q?E+vdvirtOaKB8ZNC0gnssmzJevlRbXV+QeDJ+JIezygIz3qigjQ2JPHv+Q2J?=
 =?us-ascii?Q?lDp8BBf3HHLIlnDZtgnfwfBNLtqyNl00Q+UhPnleOp9d1VenX2g+C5D88AWt?=
 =?us-ascii?Q?/SeIk5FYqxde8mgf2hPbggMG37XRjh+faWck/Aldbv5sABl38r2nKHP7y8M+?=
 =?us-ascii?Q?RUJIuh1eTQktOKF+NrsDu/MmXqOLuYKbuIc61tv36pY4FfS2bdWDQPkCHDsC?=
 =?us-ascii?Q?+vCOh+SSuC45PVUPoBI+SQIhXFA03IwZjp+kO8ah0Suuj6bcF86JC7Nt1Tw8?=
 =?us-ascii?Q?RSZfbt8Rs8Ue0W0p3jn1mY6C9vpafHY2v3m1iqqpPuzM5fTdUAC7+wERjE+x?=
 =?us-ascii?Q?2xsMxwBZGbeGouwwsgL2Nx3wUayFHPAbmGhapoQGTnU9jrQ3OQgpW4YuZePQ?=
 =?us-ascii?Q?ZtMpi4DVmpEcNQrLF0T3jHvj5VESI3DfmJ9gPqLEt3p0uSvS9dIWC8giJYqp?=
 =?us-ascii?Q?zazM/55kbpHDA5AaP/jTjgWjyYn+qh3+TaBJpWYq3KtFhzxWtwwHQKzq2NpG?=
 =?us-ascii?Q?A8FjfnRWUeZMwLwKhwzrBWIHeUv5Y2XFK0GypUzB8hYD6MUQTPOoUAhrSsmL?=
 =?us-ascii?Q?06sV8inRLdS1mSdK9my8qD+eoRgtD4Yu2jbbfmtTJbrmgvBht3vGiaUclyt1?=
 =?us-ascii?Q?s4zU4EXhpXG8/YfL4u1avf+R/rEBu1F3TVokKdjwXcxV6CIIdViWc9XvFUBa?=
 =?us-ascii?Q?0ECMCMij3av9lHd6tee/hDab/T2pruPjIwCIrNc6t9wZ/JqofQjByIMu0OEg?=
 =?us-ascii?Q?86dNoLfvXhYjTvjBodTLvo+s9alViKhHS3H8Rtxf9PC1bTL23U0RvkrwEyo/?=
 =?us-ascii?Q?g59a8xvhRiZSVgbS6usytCt7rViya03McUGBe184ics2gF69Fd2C7EbW2H80?=
 =?us-ascii?Q?yZpgOtXsl7il8m53TgSsnNBHH37Emn9yNCRINt8n?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05c25ad2-bebe-42ec-3421-08db76080d81
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 05:41:56.0948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ryzFlpVJ2LpNmgmoyAUoz4JHCvp8HDDly8v4UPJSQR+PiczlMAZwNzhtyJxqQQlGjjqlzoSuhggc53SWANhHAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
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
> Sent: Tuesday, June 20, 2023 7:26 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
> failure for DP2.0
>=20
> On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > For DP2.0 as per the Spec on LT failure we need to reduce the lane
> > count if the lane count is not equal to 1. If lane count is 1 then
> > need to retry with reducing the link rate.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 54ddc953e5bc..2b12ca45596d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -657,8 +657,20 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
> >  				    "Retrying Link training for eDP with same
> parameters\n");
> >  			return 0;
> >  		}
> > -		intel_dp->max_link_rate =3D intel_dp_common_rate(intel_dp,
> index - 1);
> > -		intel_dp->max_link_lane_count =3D lane_count;
> > +		if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> > +DP_CAP_ANSI_128B132B) {
>=20
> This doesn't mean we're actually using UHBR. And we don't get here for
> UHBR because it's always mst. And this doesn't handle mst (it should). Th=
ere
> are a lot of gaps here.

Agree, this patch is not trying to fill the entire gaps and instead trying =
to have a fallback within the UHBR range.

>=20
> The whole thing has been discussed before, and my previous idea was that
> we'd generate a list of {link rate, link lane count} pairs up front, in t=
he correct
> order, and just have one an index to that list for the fallback. Because =
the
> logic here is complicated to follow.
>=20
> Eventually we'd need to be able to switch between UHBR and non-UHBR in
> the fallback too, which we aren't capable of doing at the moment.
>=20
Yes agree on this.
Will drop this patch over here for now!

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
>=20
> > +			if (lane_count > 1) {
> > +				/* Reduce the lane count */
> > +				intel_dp->max_link_lane_count =3D lane_count
> >> 1;
> > +				intel_dp->max_link_rate =3D
> intel_dp_common_rate(intel_dp, index);
> > +			} else {
> > +				/* Reduce the link rate */
> > +				intel_dp->max_link_rate =3D
> intel_dp_common_rate(intel_dp, index - 1);
> > +				intel_dp->max_link_lane_count =3D
> intel_dp_max_common_lane_count(intel_dp);
> > +			}
> > +		} else {
> > +			intel_dp->max_link_rate =3D
> intel_dp_common_rate(intel_dp, index - 1);
> > +			intel_dp->max_link_lane_count =3D lane_count;
> > +		}
> >  	} else if (lane_count > 1) {
> >  		if (intel_dp_is_edp(intel_dp) &&
> >  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > @@ -675,6 +687,10 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
> >  		return -1;
> >  	}
> >
> > +	drm_dbg_kms(&i915->drm,
> > +		    "Retrying Link training with link rate %d and lane count
> %d\n",
> > +		    intel_dp->max_link_rate, intel_dp->max_link_lane_count);
> > +
> >  	return 0;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
