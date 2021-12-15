Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF54D4759AC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 14:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91EC10E27B;
	Wed, 15 Dec 2021 13:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8414E10E27B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 13:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639575064; x=1671111064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V7H5zMXUzqM1k5XFW2VZXJtSs4IZb7/t/EQZDyxYxQk=;
 b=Rxyn41BCXNkDQ6SJsdsIx1LsNf++UE2mRvnQcy5I/TSpPlwS8Y2Lq1rf
 EuvJj41jOvg8RlrBu1rfsYfDB8g3jKp6emxlTz2W8dc5F0suts1c5pjUO
 FSLNpi7HEBqsNVRKPbIPFmv86Y/Xe7y4WaBWg7Fqmqe5jqYQoQhFgC7Qi
 mjXLL8lhFBt/6sAuq3pD+2bWDxJMcxbokmClguBCuWqx1h/3tRA4uecoT
 ii3/OP2oR42S/y+SlZrIgQ5jn42cWA66bItdsNp1xRn9s+G5R7jOwfL+s
 r0eLn3EycuF02o4DD5MJvOuogR8t3DQqYwMKip72M1/z8aJFtG6YyqiAu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="219909630"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="219909630"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 05:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="545576842"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 15 Dec 2021 05:31:02 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 15 Dec 2021 05:31:02 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 15 Dec 2021 05:31:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 15 Dec 2021 05:31:01 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 15 Dec 2021 05:31:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jt3vLeEaFQPRYZOLVxoBgTc1pLILEXgB4CZLymJjyDH5xgs/ad+6647RUVoncXloX5EVS9u7GqReKJ19RST0InO67pWbtYkkomzx53bFzyJ8dgGOYEjETu6Zlg3Zf0TWvCpA2UC9pUwWJZJu217m/fS2qy4IRb1OuOXBfKqubfzok/XcGBE7a/4fkWCg31E6U1pp9V/MG5rg2N6mw5XbWYNY7TOUuF0WLcymI+FWE6aQpiYznSFlsQ6g5sSgPTRTI0w9Bn6FLLptlaPEABTDRFc+pq3P8cQYAiAFGIxJOZQq2D3+rvCjiF/5BknafaYFo9w2Xxp/Sfu2KS24/BGv3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V7H5zMXUzqM1k5XFW2VZXJtSs4IZb7/t/EQZDyxYxQk=;
 b=WEZEqw+QBOXGjkRvfVubdBj/5QG6ghcCKyrhPhRHEWjJNdGDU3NnwG+mVcGUkYNtoHtnLbiljwRmyAXjGlDXPXpBhFeFpms6EYKx/qhUg98I2F311rDq1TOwQSP04yNDC58xbFgXLCETeV+U+VdERhXIhCoVRii1oBJoiANzphuqEX7yQ2AcGyGUkNW97OaUgKddgwEJmHlBVutrz4nrviDhui7ZnLz3MsL6R55CGurNQ2hEdXu3nLp3gPX3uHIMIjnARMjN586NOW5IhiyYOP7ibL24vr793h0ivD3tsiMFv18FotFbgSQlL9zsd7XGGLlLbe9cQMdaxMMJ/iZ+YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CO6PR11MB5633.namprd11.prod.outlook.com (2603:10b6:303:13c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Wed, 15 Dec
 2021 13:30:58 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6120:cc99:8b42:7ba3]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6120:cc99:8b42:7ba3%5]) with mapi id 15.20.4778.018; Wed, 15 Dec 2021
 13:30:58 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
Thread-Index: AQHX8Q/cW7u5eE0Le0qyj9IJ+n5k/qwzQz9AgABJCYCAAACrUA==
Date: Wed, 15 Dec 2021 13:30:58 +0000
Message-ID: <CO6PR11MB56361101743E350D2ACBA747DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
 <871r2g702r.fsf@intel.com> <YbjFh6AnBtI729+V@intel.com>
 <YbjT/f9276cVmgDE@intel.com>
 <CO6PR11MB563679A612675BBBBAEBF307DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
 <YbnsvyfxjnqBIPA0@intel.com>
In-Reply-To: <YbnsvyfxjnqBIPA0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59912c27-1dca-4380-b3b5-08d9bfcf2127
x-ms-traffictypediagnostic: CO6PR11MB5633:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO6PR11MB56333CDEE2BBF073204DD6B6DE769@CO6PR11MB5633.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a4mAT+MirdNY/spgcbhVBHLJxe9k/os2jLQ81vYYgjXhIlMQvi5GMhM9jTaVEh1oMtXZDf/Np4TQnCgC50wj3d7gC/sr5X3SajyRV36eeA4oRtWBcR/uPLHupHUPV4U6z06CZMTm18AbNU76D0IiHgRMmi7QmpIshZqTI/NGM94dHqpgcG1awdj0XNPsEjr4ja7YksZKL8U3bVtanzlSUdtRJ2OO4rvmvHhQph9VUget57xFFCaIUAgz918BkUZXm2qGfHOPRU+JOWwcgakEhSrlBf16+iMxmBIQYtM4UgiBJNlH80FnH9uLWeKs++wed65WJGKpXd/y9HHne3mYrv7DQlSD/gkjQsH5JTnrlvBbXPOeIf7NqZFcmlQBAi4uasAZpvNwZtifat9jKAIqH2TkqE0FSKf4rXlPn9Cr8MXMGZOtMxRr8Fxjvi7rrTYPGNlgmWBBAjsoLggA5oU9ItJXGhKZQSUbz1jWhYadYAqRpHYY59DAqkdEzVV9gyO5SyMPk2GuxYuGnNGOzukMVDaOYEl4IZVmdFk30UNzFnpvzfZVzwyPaRAbT35ZB1B9iwPwYrUiHYQNcNKzMRlbRzX/psIxn96Pgo30cIeTnWCTvpcgs2lTCdicmIVJtBk6PVwce1E/eVKb9AKjO67co5LKHhccei26nRRxaNdH5JH3sO/qUowc5BiqPF2Hru+yYK4gTGFUGV9V0/aCzNljcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(5660300002)(4326008)(52536014)(9686003)(7696005)(8676002)(508600001)(66946007)(66556008)(64756008)(66446008)(66476007)(26005)(316002)(186003)(54906003)(76116006)(71200400001)(6916009)(966005)(2906002)(83380400001)(38070700005)(6506007)(86362001)(38100700002)(122000001)(33656002)(82960400001)(66574015)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?z76gljBdHvHRvNXMtpDJoRg8zGR75VYeyJ25vrlmf7u2uEmaoGNF+1DB4U?=
 =?iso-8859-1?Q?Aqf4oGXfLlKjBsA/8kfrZmhNaTVK63OosZXnMz6KNwX+PkiiCjAVAe1rdB?=
 =?iso-8859-1?Q?OwOYpBAjMu28EKKogqyjW37O06SI3ei13hFGCNdAnqUI36Yvd8NQFTzVv9?=
 =?iso-8859-1?Q?cdRqJmiX4jEFYdhXePc1CzdCQzQ9WOzDx7hJDNPi59gpvA8sHiudwoV/St?=
 =?iso-8859-1?Q?44CGVarpDjiQCm2ZCzAuz4zoWuR+OPKgVOdiVJD4ioNirAgbiWpJWq3+6+?=
 =?iso-8859-1?Q?NMEwJCTIwTl+cRmKHQSnYTZGHM2T/yiIGD24jFFAKZCGWvZjohNO+sxPQS?=
 =?iso-8859-1?Q?UfePcBaij8yJ1296AmwKNPOpdzJX5Ie/lSgXJPR6q40Ce7XbthC1akpx7D?=
 =?iso-8859-1?Q?WpFfAmxk8pYd+loNlLolQ2HbtzqRinK/zmtDQKYE+vFoibR0wkmPq2bnyR?=
 =?iso-8859-1?Q?qr9biMxLOk8WWcnURgP8TuADTpSti81AbeB0+sbcUqWCm8Mgj5DYz160vP?=
 =?iso-8859-1?Q?uelF/JhyuMlnd8YBL0HfykmE4OYceWKWXbicw/zNu3Rji43JhH4SsiOrQ8?=
 =?iso-8859-1?Q?mj3iEc9wA4yuVr61VtU5dzmteldouHsdWme2ywLHiV07FBvVxXouXEi8lb?=
 =?iso-8859-1?Q?kfVNk8q0/28uzIsnUYADfvzteJlZfVkuh0LuayaJJFI8X2z4BvO9tOMX/1?=
 =?iso-8859-1?Q?FEf4y/RnCCYoVJ25KZYvO96lHJR+G3yYRrKlzVOjaGDdfhNbXAe3LBNY/t?=
 =?iso-8859-1?Q?8P0NDzhi1Z60RiC88u/SfwZmmZyeciJpkrZ6b8cvBp3RNwgmzS2vSpTLsp?=
 =?iso-8859-1?Q?wqh9D0u/Z+w9FY9BM/avEI7tXyT7Y5TSEX5gxPyd3puMLjijKgzqg4VQGK?=
 =?iso-8859-1?Q?Dg3U+gdPRlScnYzOpwZdk3n2QNv5hhPT1fLAUn6N3A3tvPvmnN7XurFzcj?=
 =?iso-8859-1?Q?QhaFgtcKNoDWTj/8r/k0WNw/9+OdtDKk8ZYcBu1ktsU/I7lAQtnKn1pzk/?=
 =?iso-8859-1?Q?a+1mNvSkJof232pRX9hroadXtqSLGCKJNoNOrviiJPHRJgRKKJrKZmgE2V?=
 =?iso-8859-1?Q?9naytlnxPpvTIzDdvXWQrXB4Sbn4For27Cea8tQsf76JEHRD9bs7MmAUkn?=
 =?iso-8859-1?Q?iF3/c4dNEBJxs4MZjt17EPko1zlbsUDpwlHjez06y4gDfJxkL3wTtAsBl1?=
 =?iso-8859-1?Q?2jzF7iaaJRRW9Ng+XtFfF9pCVdKgY1jazvcWUJYKOMZ4ve61pqSz0iq+eV?=
 =?iso-8859-1?Q?nPWenFg1rf8MXa9jHjRRtqra6zuLYE+zyKonk1i/lj+us3G4L6XhV3MxNo?=
 =?iso-8859-1?Q?bEn5r2hP1hXxlkWjEONbHMd7bgOXFqG5jNagR7yWSUyQk7i/WeiuWaOlIA?=
 =?iso-8859-1?Q?MgU2T/kodMh8VL9w4n0WXG3+aArx9jbRmU6C1VJivt7MbTRP/4OgoHvAHt?=
 =?iso-8859-1?Q?4+fiuxYD+GqT4sNscssOzeEjw6pvwUolrGFPU4kPivwaJmoFbqzgDJWeYA?=
 =?iso-8859-1?Q?lWD4t744SGJyjmdU/zcwob+fY7qixGoEieCaLg0XDhnfWL+jevwRQn2Uv4?=
 =?iso-8859-1?Q?4uxoltgT9AXtCEmC8jWMEVHYC1IARGDIqrSoaaLOzSADed/WM97qfFDYXc?=
 =?iso-8859-1?Q?YCeKLr8b1CQSb7EZHmASxUZP2iCz0xSGbd6Y+AX+36jYoKMQXs/aiE2cXO?=
 =?iso-8859-1?Q?MWqAlkmLpTtZz1dvurnaK9XApA898nHvg70+wFUstnPt4R14w16uDFCg3Z?=
 =?iso-8859-1?Q?PnJg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59912c27-1dca-4380-b3b5-08d9bfcf2127
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 13:30:58.3677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dEXoQmhb+LrC1Zoo0SBINAIL2rtizHoPwfE1xyst3SXbOJcgkVrXLhhi54vm9XctGpLwHUjXGecC/kinAFFQB+Q6UQIe9iZqRTaIYfxBNrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5633
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> On Wed, Dec 15, 2021 at 09:05:03AM +0000, Sarvela, Tomi P wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > On Tue, Dec 14, 2021 at 06:25:43PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Dec 13, 2021 at 09:54:04PM +0200, Jani Nikula wrote:
> > > > > On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com=
>
> wrote:
> > > > >
> > > > > This one is only used in gvt, anyway. And that actually makes me
> wonder
> > > > > if this should be breaking the build. Does CI not have gvt enable=
d?
> > > >
> > > > Hmm. I thought it was enabled in CI, but maybe not. I've often brok=
en
> > > > gvt with register define changes but I've always caught it before
> > > > pushing. I think I have gvt enabled in my "make sure all commits bu=
ild
> > > > before I push" test config, so maybe that's where I caught most of
> them.
> > > >
> > > > Tomi, can we enable gvt in ci builds to make sure it at least still
> > > > builds?
> > >
> > > Actually cc Tomi..
> >
> > GVT-d is enabled and tested by fi-bdw-gvtdvm.
>=20
> We're talking about the other gvt (whatever it was called), ie.
> CONFIG_DRM_I915_GVT.

This kconfig entry doesn't exist in default CI kconfig, even as 'is not set=
'
placeholder:
https://gitlab.freedesktop.org/gfx-ci/i915-infra/-/blob/master/kconfig/debu=
g

If the config entry is exact, I'll probably need to upgrade the default con=
fig
from 5.13 and add it with requirements. Not today, but maybe soon.

Tomi
