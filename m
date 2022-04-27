Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C06510F11
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 04:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE9410F3A3;
	Wed, 27 Apr 2022 02:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED55410F3A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 02:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651028292; x=1682564292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uoW8CXbrLS4e4ViI98DCAjhmMXxSlh3oq7jOOm39Arg=;
 b=BjNXnPq+ag0lkv4HjCuEmn5QMtnpfFm+fixG7ZWNRormMiE4T5UH7NG+
 KXaTWc01pet1wnrPwSZoVnnR0tCO5giykrv5DhpghT7KNOiJCaBRId9sl
 VXCcDvypvXXI/KOYVMBbPsxXhzEPArozWzckYGMYUVmEbKD8vLM1bihkT
 qA56wiE3XxcQ7qZW5EPqHoc1J6kQybC4ahFtvwqypEnDFk1piU/4i9K9F
 E1IDw8xDWVbs5LcHYm27ryH6+sRRn2paH+qBxKRqkqbbmvoFx5aPf6McX
 8DEO+8bWOSbxRQAdsH5DyrpdaW8WrJeT9jjXQ9UmiVItw0tACvhnX0qZZ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="352232231"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="352232231"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 19:58:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="617306442"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 26 Apr 2022 19:58:12 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 19:58:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 26 Apr 2022 19:58:12 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 26 Apr 2022 19:58:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lRN30x72FjXnvG5kyP1ek7mJ+azN8yDnQuGsS8C/IG7aiZYSHR+Q2QrVPTZ+tI/8PtIZAaDuWQlNAwSuOhNO9brLvDcdwFwcv6RLb1zvFfDhxA+29VGhkv73+ZuZ7KpyB0xdt1w4DjEKsKkfpUhLZv1ws1O8rxz7VyJ/iGSHyUkKtMc5N8Hsd/V5qATyu6V+AATw1zOPZfIp/hzPeYQZQFsnakAFJUIauFh+jUpahS2UtcFT8QdYSJKKILNh3ZGIrm3xIG/MRt9CjAVOYqSqKEjTOlGXk8TeXEaY9zKXjJDL/zr0P0V9UKrhwUWynO4hlAplxt4m/nTdpkiTXkCaYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uoW8CXbrLS4e4ViI98DCAjhmMXxSlh3oq7jOOm39Arg=;
 b=PM+Hueq9u5RtN18SewjzTst6w8oeVW/jQsLVL7wUq6TCr1kOOaq7mxE8H3R8nrsSNPksF519vr2QVQ9+HhPZety42y2bvKje2wmDlx43zjBZmE3POiUYczQkWnUlkWtB+zAfgY/FBtWZVpiiLorqJEZUP/nXdMzRjSWvMuyTfA1IEHPdw6w/gHXxMWLv+EJ/dnPsj3ZnD6+FP8oP/n12APmf7mgnV6vhBoIchXrHrcYML7dEnnZzSLGZXb9tJjv2nU7t1Z7q4DhfsU58mmkcDlxBBqcmcq6PtthW8w8N3MeJJE7SAXZ3ZNQHtUX4Lw604nykTQ/60DsHjAJe5E4XXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM5PR11MB0010.namprd11.prod.outlook.com (2603:10b6:4:6c::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.15; Wed, 27 Apr 2022 02:58:10 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d%7]) with mapi id 15.20.5186.021; Wed, 27 Apr 2022
 02:58:10 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYWWXWrvMGjms3kEmwnEgqBlBTi60CgGEAgACO2+A=
Date: Wed, 27 Apr 2022 02:58:09 +0000
Message-ID: <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
In-Reply-To: <Ymg2uBjovjgVAyC5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d14b7dd-96d5-4fc9-5dde-08da27f9c317
x-ms-traffictypediagnostic: DM5PR11MB0010:EE_
x-microsoft-antispam-prvs: <DM5PR11MB0010D99BF56E0122AEC12330BAFA9@DM5PR11MB0010.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K1cQQNvFqGg8IArd0bS5cJ6WpoYIG3TuxZBgFuSSc5es/u9cOeMy25WIC40dE+T9YGSFgjfOoqtLubXWAlboJUqL9u0Eq59LNh6UFDfCTnIO9ZrQ6+JszExBYwatoLbDlJIRQmZXzQou83yV8uBq0a15MTL2YysEEJ4Txtpc5EF9Cdism5H9nVcTbyb7wTe4+AY5bV8SFgp6mhkbOUM/VZ7xqhX11ScBZcs5KHae2f2aoIAHsw4m3ZmJ5ScOmq1Aj08kODOLVtaObPSrWlzimc8otDShATDMkOE+qIlFNLIVsuqB7MJTgumthlSE2W2W3lRpPNr1r6Bl7kWuBt9nqnUG71Sv8shsq8DfUpyZHBvgMjh3upTYcvNxaLhMdi1NDzcgGLHAOnhyhL98pn2gkHfvfi+7Y7yw19kFIK1DfX/twC5Nxk4JeOlMw8vWdxvU2+ttmP3Lmf3qViUYf0o0+fcsvU2ITZew+ruNE8z93ys2MWQSztSOx+kddvrE4FYb/vX80DcdjHbxiLftJRM+qbf++XTG4QQg1KgUnTaAg7hbM06ekCvRGSQBhBx0WLbbUoe/0ot9rOZ25jbbMP6vfDrekGFhe0CuBu9uy2b/07LjuCWOsTjmZKCAn9WGj06Z3FpfiwTCRyJDLn1kKjtR5Rtp8cVpazjEdb623s62wcWgXX8ipfA2sOqTo5xu7NYSt75BTOhuWF3fOyRWmVrGPA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(8936002)(5660300002)(33656002)(6506007)(2906002)(26005)(54906003)(186003)(86362001)(55236004)(7696005)(4744005)(52536014)(122000001)(38070700005)(66476007)(66556008)(6916009)(66446008)(76116006)(8676002)(9686003)(66946007)(38100700002)(4326008)(64756008)(82960400001)(316002)(55016003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Zqdh6lgP1yNYWfV20fJUv+cKmIYQ2BHCs056mBhMd0fZCmAaR4cRYydL62?=
 =?iso-8859-1?Q?cLI3BG4gairoxo5S1NlJAyLhmg4z25xcvdUDxxnkNBzYTJLIwFlX06m2q/?=
 =?iso-8859-1?Q?p+VcX+qrISnz3yIsq5eCG8KnoEbEcbuGbqlwZrm0muJbUmLh+ip0MggJkB?=
 =?iso-8859-1?Q?9eIcyzOaoOg5h3SUYYczdu5l7bV/ftzZ8vqlqlCOVATH+MQcPMZkNMN4sJ?=
 =?iso-8859-1?Q?V04Wz7nX8ebiltNr665+nzOrbtEJ5IecLI9UF/sGnS7W1Q5cK+4ieCZ1/M?=
 =?iso-8859-1?Q?26Da1wSIZ+gajT84K0UR40ypioFcOowGqKuIE3AacyMsYaIrriTPxEN+Ry?=
 =?iso-8859-1?Q?IW8fRgNzMAyz6t8t3dTV+ze/jFT5Ed2l46OLRZk/uOIAV0dimEybq9yPhy?=
 =?iso-8859-1?Q?pvfMuXzl97uT8+FTqtgn+lwihz9i8AKvxw4zFPvXH+vGoiIqNpBSQSR0GP?=
 =?iso-8859-1?Q?3NfoqD9iw36dnltcG91c0B974fJKwp49VZer00ugYbXJr1peC49hJLca/s?=
 =?iso-8859-1?Q?A0dJuBHwmE7Mr5NjCCyoMw4xvxjOwG1JI6GZA5dF29SlHB1vyh8DZFpwp1?=
 =?iso-8859-1?Q?mI4roCWQ1up5csqGQn9EwFNLWVSa9XJHnqIPm4GMxYj0hUmYfeemYKiF81?=
 =?iso-8859-1?Q?rs0TSxMEpfFz3hpvejQyBd+Ypy01iUVcPsQThHlW35VU3LzYQm9aLOKHi1?=
 =?iso-8859-1?Q?umHm484Sg2N7DMQu91AdhhRH5kgGtMeBuPQtlcmMo+M3e5LOvftaJfntw7?=
 =?iso-8859-1?Q?60YquM36Rhojg2Ru8eBnh4Io/XntcDh/k3ryby6+EJ7iGqUIUcAhH39D3C?=
 =?iso-8859-1?Q?uSTIulhVKNsLVhdHdWw5xhglDSWH2HKWBWt0QWgGur2oJ8Mmk6IoB+GUzv?=
 =?iso-8859-1?Q?VG7PmOa80DK8KTg2TzK6hBQokesLWYgm1HfJdDKlp+dAmSj+sDpgD35Vzb?=
 =?iso-8859-1?Q?lltn/iMopd863//iC96U04bLBQwFhOYgDTMC30aBQlZc8AupLDxXqADrcc?=
 =?iso-8859-1?Q?nDrKdbH4h5lPBLCOVlQddCHFrXn1wQBFYGmbZzC4Dp3MKddvGiW7zDkthV?=
 =?iso-8859-1?Q?iIkd6H7y3WbQeCNFkN/w9kJLiARlxqJG5m1LS4HesXLevY4I7XfAutpOtI?=
 =?iso-8859-1?Q?bQ/61pUGX8+8yyFE/7AP+ZQooxQ96Tku3ZbgHmoA6LFAT7YIfHM8rTkCKy?=
 =?iso-8859-1?Q?t6/WVYSSfPsCTOziPzkHZ+jr72P1v6xyVLvVI0r0lW/QjHoZZzykOyd8vt?=
 =?iso-8859-1?Q?6FRoDB9+ExRSCdRXenI0/j/zb7eKGbVmKE5NlCwzZPkp7WvBhYKBSkdTZA?=
 =?iso-8859-1?Q?1/r0VRC8HIVvmMFVSG8nu/2Id9F/F6H+MidmC6KBc5pppSPvVEZuUHE/Bi?=
 =?iso-8859-1?Q?QIGmPKRyKURLX7UcMQJ1siJDaMBcN9jeMSzXlNieWVQhPi3c0v8hQUUXBW?=
 =?iso-8859-1?Q?nWbxqFbAg+YEKb+gJ0xMlN+F8nJYRUpG/FNfIsLvv33FiLPbP+dKSoFkkI?=
 =?iso-8859-1?Q?Vsp4KRwxBGxT1Te+Qo2J2pLoxGDRMBRmvNzfphn9ttxhYoGBV+M4Q5VMFx?=
 =?iso-8859-1?Q?aTGjs88+SkiLhCwblk4ADHnQ68pe+CqreYOYn935XpCJHE1iUMSB9o9u/U?=
 =?iso-8859-1?Q?Sx9oJdCZq+8i2vnsWGPmCBUJKW6ASxkISuCyLewrLXTvJhilgSAZ5mfXPQ?=
 =?iso-8859-1?Q?TlaEbWQ3WcsyxOmT08VcZYuieu9b/wHL1YF/nVnr4WBjzSEmFCtA3p2Rdv?=
 =?iso-8859-1?Q?9sg/WIiyokSvBkwX0oS4PFS6/hj8CEbE/78mylixMHb/Te7sikygN6UEo+?=
 =?iso-8859-1?Q?3fKHxSn2Wg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d14b7dd-96d5-4fc9-5dde-08da27f9c317
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2022 02:58:09.9149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CvnJZkvBQI3YTHRuHRTdL7w3ulK8+tiCGN2txlAZNjRzTB7eI5G0r6hO1hG1+m9aQg4f1CnWPv161IV5h1lYwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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

> On Tue, Apr 26, 2022 at 05:34:07PM +0530, Arun R Murthy wrote:
> > Starting from Gen12 Async Flip is supported on linear buffers.
>=20
> It's supported earlier than that. But IIRC there was some kind of GTT
> alignment vs. async flip vs. FBC restriction that we weren't handling.
>=20
Should I enable it for earlier Gen also, or is it fine to keep it with star=
ting Gen 12.
The only restriction that I see in Bspec is that during async flip changes
to stride, pixel format, compression, FBC etc is not allowed and I see
this is already taken care of. Am I missing anything?

Thanks and Regards,
Arun R Murthy
--------------------
