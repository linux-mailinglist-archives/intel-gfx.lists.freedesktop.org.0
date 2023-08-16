Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEE477E597
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 17:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF80010E384;
	Wed, 16 Aug 2023 15:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B0310E381
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 15:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692201010; x=1723737010;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EVA7RvKFyjriOWXxvhQ8Ou4+E4jThhm/24eTyJKz+GE=;
 b=Yd1jq0EAisD/sJmgmWKHDz4ozt99pkAKZGrjXaeiP/eWL2vf8A5Nzikm
 yDaQ9I8IGfflhm5NIVq9NaTYtIF+ykCTFjWwb9145ht2mbP8pORAP4Il6
 +utLlXuMB+0yYcCNQI294lDvgwuEu7WUoDM+OPDvpn5IATW50P8xgGRwQ
 s+RCgsYc/f6ts7dOYsUfzZeenCbzFFbv+431tscdVKkRX4ifE6SOuXZPu
 9Clj50MwC6EVIXMEGdZyIlAYmqPwNvUYkRkCA1vfMiv1ii4FAhCTEMDN3
 N5veMmaxD5rsdCMfbTnMSaPqFuUjSrjw9CKUDASOztyU2LRwDZ1M6wK6M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375335048"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="375335048"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 08:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763682671"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="763682671"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2023 08:50:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 08:50:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 08:50:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 08:50:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 08:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aTPdzDa37y7J2GfAa8Fbzsy/KvHrt3O4PGHSznYlMtN3/jqhPo0tBOpprEvJHU1+ZGXVGhNXUdiFgazIlwkCaveAC515dGteDx/6QM+rJK8HL+r1OkJAFBke7Cg7ZZncgg7fu8oNtF8NR497nS5K1qarhcJ4tyUgVkwlWNMZN/yeqYEu3ywnWthi4iPZ/ZK5ffg8zq36m8l0P06gGYR8PtmNETl13HzCfHRNMsYkQ3EuJyirWzeJKdDsGE/mltut7vF8Mfbw4OIUtFIjxs1HTn5ofrApOqPvoZq/pDh9xeBrTLD61ZVWNWjLvO6F6Qw37dYhGVsVUzxGQSU0IsgBlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NtS5Ghn1EzGZXusQXZGoxrFHHNc25cHR1ctrNNK7djQ=;
 b=BM94gd7UaU9j+ibjzZdrySAAqsKtC651AciqA6UGa9QuZAykI/xvYUD8v84EyTlDRZpgMbPUWpupVD9gtx7WOYnVxC8IXOOEAvdLN+3M8td5iv2l4QVnQlKM+g1OxSqIZzNCWP6+DATylF3W+ircvTysZBfHcUxf6OYhKN2XuVDMLR9+fhD+6nWkYymcrmOuikvWtufyN78EGZN4E53lraXWXvYfvxPG0bqXKSoVgQESjkZWSoCituPt8ZuLK+e27JSk/sNwrZ6KBF3hz6PSrCTVJxF5ZT9F3qNf9rSzuQ6I5crcd03Pt6wusdAw08tuRHJx9i35qd40A3NHe+81aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.30; Wed, 16 Aug
 2023 15:50:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 15:50:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset
 assignment for DSI
Thread-Index: AQHZyTuX88jRBTXNmE+A94pYAvDtHq/rzCwAgACr/7CAAEUOAIAACeOAgAAAYeCAABgegIAAPcFA
Date: Wed, 16 Aug 2023 15:50:06 +0000
Message-ID: <SN7PR11MB675024FBF360888757034EF7E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
 <877cpwayob.fsf@intel.com>
 <SN7PR11MB6750D24920061E5DDD3F2171E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87o7j79uqd.fsf@intel.com> <87fs4j9t3e.fsf@intel.com>
 <SN7PR11MB6750A2CE4750AB0760EEA4C4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <878rab9p1a.fsf@intel.com>
In-Reply-To: <878rab9p1a.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW3PR11MB4684:EE_
x-ms-office365-filtering-correlation-id: 7f027e16-8738-45af-5203-08db9e707681
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xJvUx6oQHgnieX/1Q+xWGBslPApQ0KPVF1QacUtTzdKJfXwu74Uxj6dypFYgWMv6916Dsx9he1etxV8x6LkPeA+pYxHDvla2ayIOG+pYzm77hudXxMuFsXJHcUXl/D1N58cKB95TsQdTNWQippNeOVzPWmfWVNXwFX/6xqJiWABP2oWzTNri64GmaryPrW0jpvDjKXmedAxwfVKuLfCex7f9df6I/YmLOGbTl45lgOIj5wbEikC/v+O20QJTvWo9xTDAOUqG/wT+1QgZzmd3T0SszX3fSfNulTJP/6wrqNf+ybKXhUojfIkhhbpBE2Et5V7neLtgDUi5lfo7lI4HF6femGCXMejmkVZDuRVYsq2lcap3+4l/s18c8vxGluA+fqwnCPClD20t7GSEi3cOhhaAFj2U+wQmL1UfzL8+sbWWNR2swq+a/ZDyakkTfaUhzkriGNEC34fjKLNJV+N+y7HLrQpOmteEO8yts5JyDXF/yUrKh8/0AWWThripa9pU/XMnXC/1PXtuXC1bsKlMBUKKKI7d2IyXZa/6B6tAJNlYYmFV7pkK14TIDS+cxofnS9TzX+9POgaE67tSiOBRq/NZ30yDowYzt+UgAsQ45xkBoHzYk2KSqw97QYpPWEZu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(54906003)(76116006)(66946007)(64756008)(110136005)(66476007)(66556008)(66446008)(122000001)(41300700001)(52536014)(5660300002)(38070700005)(38100700002)(8676002)(4326008)(8936002)(82960400001)(2906002)(26005)(55016003)(478600001)(86362001)(9686003)(33656002)(7696005)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?51uJ+IExuhZS2yEyaHFxDUCY/01yi/Sw65GkQCdyV+Vu/F8sCGiHjAN5/5Ul?=
 =?us-ascii?Q?9dKgyBgDDIvVs2ckY0Wbd1rvjHruzywHDqI9VlKzldTqmoJblV8n7U9WcscT?=
 =?us-ascii?Q?/snZRFDZ47mWee/Magv6J8iXRe5M6Py3FHDYQwKxvBuO/zjuNHwj7GsvDNT2?=
 =?us-ascii?Q?e7JVn0quq9UItChMkxclkxI4+vfouQqIt8GhalM4lCH8BfgZYx0pfluq9AkJ?=
 =?us-ascii?Q?/lhwh3BWdiN+/L+HfgJ5Bh/RehKG0wXeATVS3IMHXD+05nIY+gtC0MkV9LlJ?=
 =?us-ascii?Q?r+YYxC5ic2Gw+CjB4Gpv1b8qcB6F5P8spHrt7+MzoxjGu/Oh/xubgqLkcZJb?=
 =?us-ascii?Q?5WJiZJFaItSyEurxMBdCdwu6h1uCbNBXMe7M9WoQQg39HcGeP10ZTejosJ/Q?=
 =?us-ascii?Q?ZIktau/bPsYqsmFGIdKsNeX6QPXu9Zjb6h1aI4jxjA/MtV4BkxsH/nO3xKuF?=
 =?us-ascii?Q?tiOFvGBBIuBo7U2KlyOQk1kdyoF3xHiK8D8XwuXZzt0VuCNwKOvqvn/Zfncp?=
 =?us-ascii?Q?YLD55VJkfYU7Dv6e0GVQxtXx+BFvI+6azxMBxhsL46br3utPQy4epNcveoJg?=
 =?us-ascii?Q?5A1MXKT+VtVUqItKI3Uh1HQ/j1hSvC6blhhgoEFv/VSvfFbT4cMy/JNzrHgP?=
 =?us-ascii?Q?zzSTCpiqKVR7TMd2OgcLSzimzDKjUeysEv4GCr4IU+j8oEu1VFhEH2pGjem8?=
 =?us-ascii?Q?C0Pfl2fswHGzPcxP18QLCPYTcHe6A0lvRTNEPlXM+tl3EeJ9WkSQjYccNfxW?=
 =?us-ascii?Q?T9hzFaD7sSqUS43CLfS/f744AvbH7duRGsTeLCe0q80i4ZhG6W5UMhXr9D3z?=
 =?us-ascii?Q?7jWkqSWnYUyXA/nDnpE4o2LmZNAjgv2pa2xXqoEr813HEC6MJmObvIkrhQUe?=
 =?us-ascii?Q?A8Xkff5xpIzN0dg4pycOQhrsaxhHrbpygPJi0r1Vl5qfbLWHMlMPXu0amLu/?=
 =?us-ascii?Q?XDAlBBCt/6WQvvNSiCdiKQTiKKrnOSPVsMhtJPzdJGhL/HzSrsbldsVj1kxO?=
 =?us-ascii?Q?b1Z9B8bt4JU7roX91vP5bWSVs9pgSKfQucWk6Llh67nO32easvHDkPTdzrGb?=
 =?us-ascii?Q?SYmaFDdwHw0RIyZeVYHGyXEKOTzS5gH5EWIybdY2tkvkLTdiNDypaXz13N9v?=
 =?us-ascii?Q?pKdAOOJpzoaxG2SGf89dxBTaBX0D50dVVKnMPqOgUBrOPeWzo8S3z8hHYtZa?=
 =?us-ascii?Q?jI2uPXZSqzu9+AxODxGV/mjY1/1de2Vqxiqfg5d10t16jgMQ6D94bKglCs04?=
 =?us-ascii?Q?Wt1+mulBMqRRxIbmlQ0ddKQrq5Pis+0nO/Tm5g0jVpBowKcubJ9wIqhR92P8?=
 =?us-ascii?Q?Om+i8mqQSblVYA0FmL0XjJ01P0EP6u0PwReejyj30G91T4UfcaO4+DX8Bp6u?=
 =?us-ascii?Q?fgQ1qcAzxNGa38FGWSIUO8R2BnqJ47VYytJYaDsYW236HKrjav03OrzUYOGG?=
 =?us-ascii?Q?AKezrCB+ZNA9icErrjyLapevVJGCej+JiiNBkWZ60tF7baPghV2ZxD70sMwm?=
 =?us-ascii?Q?6tmCuJ5QiAXJ6pVlwSEu3lrXYHAq5KBxgeMZdSt/MoHuBnYC+umGAKJOnpKD?=
 =?us-ascii?Q?FtavFZmtces8U6vREt3DMicVmbPojCyXa+0ZjG5o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f027e16-8738-45af-5203-08db9e707681
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 15:50:06.4272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: boTHksWTAycQM5VRJUDa822vS5FH5bxyMN9nOnr71WmON//FNwE/6Xwd6Nq6IqkNl2mO+A2iisf0mnmOcJ3q6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
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

] [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset
> assignment for DSI
>=20
> On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >>
> >> On Wed, 16 Aug 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >> > On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com>
> wrote:
> >> >>> On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com>
> wrote:
> >> >>> > Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1
> >> >>> > for DSI panels even though we already use calculations from
> >> >>> > CModel for first_line_bpg_offset.
> >> >>> > The reason being some DSI monitors may have not have added the
> >> >>> > change in errata for the calculation of first_line_bpg_offset.
> >> >
> >> > We should be using DRM_DSC_1_1_PRE_SCR parameters for this, right?
> >> Why
> >
> > Sorry I seemed to have missed this comment in my previous reply but
> > from how the code is written if display_ver >=3D 13 we call on
> > calculate_rc_params which uses formulas to calculate the params and we
> > don't rely on the dsc tables in drm_dsc_helpers so the
> DRM_DSC_1_1_PRE_SCR scenario does not come in picture.
>=20
> Ah, right. Thought it was display 12 in question. But why do we make that
> decision purely on source capability, also for DSC 1.1 sinks

So the decision was made base on our capability to send or use bpp other th=
an the standard
6,8,10,12 bpp  and here the normal tables that gives the best static value =
don't work requiring us
To use the formulas
To answer you second question yes the change was made with DSC 1.1 sinks in=
 mind and it show support it
Have a look at the commit below gives a better picture

db514cac08fd4861a3b221bed5f21b441a1242c3 drm/i915/xelpd: Calculate VDSC RC =
parameters

Regards,=20
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> >
> >> > does the array have post-SCR values for first_line_bpg_offset?
> >>
> >> I'm asking for logs on the gitlab issue, and trying to get at the
> >> root of this, because so many times in the past adding a specific fix
> >> like this for a specific panel (albeit using generic conditions), it
> >> has caused more troule for other panels in the future. What if other
> panels don't work with 12?
> >>
> >
> > That is true which is why I too was unsure on the fix.
> >
> > Maybe Tseng can provide the logs them on the gitlab issue.
> >
> > Regards,
> > Suraj Kandpal
> >
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> >
> >> >>> >
> >> >>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >>> > ---
> >> >>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
> >> >>> >  1 file changed, 5 insertions(+)
> >> >>> >
> >> >>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >>> > index f7ebc146f96d..2376d5000d78 100644
> >> >>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >>> > @@ -1585,6 +1585,11 @@ static int
> >> >>> > gen11_dsi_dsc_compute_config(struct
> >> >>> intel_encoder *encoder,
> >> >>> >  	if (ret)
> >> >>> >  		return ret;
> >> >>> >
> >> >>> > +	/* From Table E-2 in DSC 1.1*/
> >> >>> > +	if (vdsc_cfg->dsc_version_minor =3D=3D 1 &&
> >> >>> > +	    vdsc_cfg->bits_per_pixel =3D=3D 128)
> >> >>>
> >> >> Hi Jani,
> >> >> Thanks for the review
> >> >>
> >> >>> So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8
> >> >>> bpp compressed?
> >> >>>
> >> >>> Better describe it that way, instead of as 128.
> >> >>>
> >> >>
> >> >> Yes would be better to right shift (vdsc_cfg->bits_per_pixel)  by
> >> >> 4 then compare with 8 to avoid confusion.
> >> >>
> >> >>> But... looking around, in intel_vdsc.c we set:
> >> >>>
> >> >>> 	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
> >> >>>
> >> >>> and we have:
> >> >>>
> >> >>> 	#define DSC_BPP(bpp)	((bpp) << 4)
> >> >>>
> >> >>> however, when reading it back in intel_dsc_get_config(), it's
> >> >>> just
> >> >>> directly:
> >> >>>
> >> >>> 	vdsc_cfg->bits_per_pixel =3D pps1;
> >> >>>
> >> >>> Are we always sending x16 bpp in PPS?
> >> >>
> >> >> Yes we are always sending bpp x16 considering the fractional bits
> >> >> also in intel_vdsc_regs.h We have
> >> >> #define  DSC_BPP(bpp)                           ((bpp) << 0)
> >> >
> >> > This is the part that confused me.
> >> >
> >> > BR,
> >> > Jani.
> >> >
> >> >> Which in hindsight can be renamed as it has the same name as the
> >> >> one in drm_dsc_helper.c But then again the DSC_BPP macro there is
> >> >> more
> >> local to that file.
> >> >>
> >> >> Moreover vdsc_cfg->bits_per_pixel is being set in
> >> >> intel_dsc_compute_params(among other places but is still being set
> >> >> x16
> >> the value).
> >> >>
> >> >> vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> >> >>
> >> >> Regards,
> >> >> Suraj Kandpal
> >> >>>
> >> >>>
> >> >>> BR,
> >> >>> Jani.
> >> >>>
> >> >>>
> >> >>>
> >> >>> > +		vdsc_cfg->first_line_bpg_offset =3D 12;
> >> >>> > +
> >> >>> >  	/* DSI specific sanity checks on the common code */
> >> >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
> >> >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
> >> >>>
> >> >>> --
> >> >>> Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
