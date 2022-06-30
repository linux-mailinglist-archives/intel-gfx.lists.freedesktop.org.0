Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 780A6561A89
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 14:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01E911A889;
	Thu, 30 Jun 2022 12:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D2411A891
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 12:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656592912; x=1688128912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/L64GvxDLN9m7fdWB9NNGLYfjjGjPMrXcHaisp6QSbc=;
 b=DY33W8h8lT3orjuLm9Gf0JmSu23/nmwEDPeQmKBaZRMg+CrJaObK18ms
 PONAr+UO1k2SrOjUi9PRZaZQ0XB8YyyP6RyKPTALK6UAmzUO00uNG1iev
 0+qvnYdesfhmLzeNRJzLyjCwTNXl+93okdMvbJ7GpUC8MkM3bEFzQ/oQg
 ulnAVcyGjSqBVgWppRQiGAx4rgu0bMT6lwH66om8gfFipXHmfRxZZmp3E
 upLcL9mc/y4v/b1vQj38pJhlO4fQ4Q15a6+h3Lg5iB1+9jWt5/A8wvZ8f
 iH0LW1tBLPHUYzBnb9YHe4FYnhXIXG7XFSLrkAIysDLG3v4Vnltu+0NK7 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368651466"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="368651466"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="768108232"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2022 05:41:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 05:41:51 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 05:41:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 05:41:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 05:41:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QjNhcHfwFnM5bpODgJxHQyE3w0mu0k8jzySNtnY9qPiuJC8sqK5oH6cFAO2cc9+XEu6W3+L75gsAZl5OAqfXzXl7XiYPmoDt6T5EpnY9IB5iACWdsQDNV5vz5ossRfv71HaxeeYXXacOHMR92LGJrJ1kolzv4tB+qi277FAlgJPjFPZ8uyH07hIpxxTGIZi3+pNoYcrDGXLb9/56KaStVWzTM9SGe1m88zRzoYygobyY+CV1W+Y8haq5JY/L42yAfXZv38kDwC0p7RylB3iiBny580vVtd079ylUkeKf1VBoClARsngNU4vZPUFAk8dmJfd2gxGQAFkuljDVeU0M7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/L64GvxDLN9m7fdWB9NNGLYfjjGjPMrXcHaisp6QSbc=;
 b=gtAaircyetKAGRgfPYk42AmUx3w/URnSzLLKpGjgR7kmJZw7HNvrs6hCvChzbn7ggXvICRl073H7RBQi85791K5GV99p3QDOMOhrzrYV9azPT+WNsdQu0q27jPIry4Fc5rQqwwSkVSG+FDtLt03JK/0D1dOQaGlCDDqR+JKnh5aeJ7jLWEq+hBcbfmvUHhKfldhmg8xsBnIvej/hlV4FC6zJK+0Js59zXh0jrDLAV496AbQ49v1/bahmZPKo+KEtTsEgqZvnD5T7gxGaRwHthCPrDHNsIYYmLHjAC1Z8/am3zESqAYBSZ/FLvqlwz2S82AIXUGZ1PhrsPVhZ7t3l0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Thu, 30 Jun
 2022 12:41:49 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 12:41:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYdW+H7anuRYhycESY77YMZjZ+IK1oDgYAgAADj2A=
Date: Thu, 30 Jun 2022 12:41:49 +0000
Message-ID: <DM6PR11MB3177701B41D8268713920E18BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220601042411.3299122-1-arun.r.murthy@intel.com>
 <Yr2WKgTSUH4/PHKS@intel.com>
In-Reply-To: <Yr2WKgTSUH4/PHKS@intel.com>
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
x-ms-office365-filtering-correlation-id: 03356199-089b-4f3a-c9a9-08da5a95e6be
x-ms-traffictypediagnostic: SA2PR11MB5114:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bVbUzGRqkCk2FyxvxccMy2l65MsJIzBLnP6wUqNUpA69Q337NPXd3CnpmYQGtHFXZFJASdVLunhl4Glxc2i9uqXuHMjMqgB7ByD0Ys31iEE/LDWKfOAvWJ7NXCQ8+QXdvgh9WD/e49EhJ0apOv52eNsOeFd/HJFTcDmoEvNVpPnChvHe1noIeFFkZHJ++nWEQ/4kysUPLW6hVXDdPMsQ2ztWhOwugErPtMGBUGPHqmc0FasG0db1cY7EXIsX87KmQdNdv9wTChGWYCWRf3rMLZu9zoS6iUwZq7IveCcrwt7k82qmPTg3ZHfcUqZNsifOuiVckt33+/AL4IyiIJCMfHyjAkMXsN4AK0xkjTQCmczYZ+zngkqT6hd5O1/7HdNFNdRDW3dehZw/3L1RQpcP4C007NxdeRmpGgloTxOAAWlsE1vp5kXc4LVukeeazZn0ABTWSqORuzRn0DUljMsBYQXCiPq+NaTtHKtXn9+ZbTWDpvX+ftiPIAgdFuYxL7PLIyIeZlxNZYzXzN50RLHCv/0yt6YROewpr0bRZu3wCBKJVoMqka5NL6Emh2GHQmyH9CWSamQtNo1Hh5zvES3zy17Js0XAwk/nD98EHM4c3GF2im3XK7YUtcHADG5If9O0qazDf8LRCNCs4v3vBcfKjpRcU3qw5PLrBjb8Io+HFpnFEqJL4Jw7PqU/kyQQJA8cZWFZymj7S98SmomAx1KTpnqmJpXRAaVVCWxuO+Q/JO+o5lzOI/Y0/0Ix+irV8F27aR/bGbejq96ivaThFp/X1bCHs94tQW1OsgG3wmqAYvN4Zl5ioZXGVlQQxREtGzzR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(376002)(396003)(366004)(346002)(54906003)(6916009)(186003)(38100700002)(55016003)(33656002)(71200400001)(478600001)(2906002)(66946007)(66556008)(64756008)(66446008)(4326008)(86362001)(26005)(41300700001)(122000001)(82960400001)(38070700005)(316002)(8936002)(9686003)(5660300002)(55236004)(4744005)(7696005)(6506007)(52536014)(76116006)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?6ddaHM3envtji2cr89IW9hyByjpM7otK7pfMMveH5u9v5l95O4pN3F7/WK?=
 =?iso-8859-1?Q?RNH/yx7WFbHsDC0qV3OZUQQbQCRvKgiFHi+DR9iDCMhsaddsMIwHsxPITs?=
 =?iso-8859-1?Q?3y/7XtaxIt96DObz8CvYQsdAb9MhfKEhX4HJOzr0K8Fv6xEE1Q+RIsznGV?=
 =?iso-8859-1?Q?OoRCqY4X1dkhckCZm05LdNxVBJSXtoLk+d6torCuCaBQEEV0eZWoBH7wX7?=
 =?iso-8859-1?Q?zB0xZwFCAWGiWZKyg9yevKqx/ZDUNJwzexjOkuxqFSCtysCNc5Mss5I3wZ?=
 =?iso-8859-1?Q?tRfFyv4FnS/FzE/iUqaKvs2NRTP5pnXam342WDSh4uOH1RqKDvn3k46Qgq?=
 =?iso-8859-1?Q?Eh8h8QM5o7XaGXuRiwX8ZFqOq69prVpmuUsUe6LcHTSH1BriV1PoJqsf6M?=
 =?iso-8859-1?Q?J8AuL/IemGCXOHrKiNHz/BxZi8P4yW0Wu7zGZn96U7wGz4edHXbWp9C/wo?=
 =?iso-8859-1?Q?3zl4prWLppMZr2KJK9HyRxKsxM9baZy8j94dRcX3tLC2WlObl02AUYrjPM?=
 =?iso-8859-1?Q?MrOa+n/Y0y1l+UbEACB5Dd5ChxuYpDulUZt3DsWCda+/IoE15y8jNYaWHM?=
 =?iso-8859-1?Q?ejLfke0ZWarz/Do+wyeh9fqm0FI9Myxc3QbjV1M8Mkc6BSmU6hjHmV7Y0t?=
 =?iso-8859-1?Q?7Le75UiQW5fKNhWXkJrJoP94fdKuwqQjzAICIjPBydMwiH0dfAZGrAAs0f?=
 =?iso-8859-1?Q?PG5TpBJ75RqighaDO1R44jIg06IxuuLgniN3FdpAS9AU/q0OjerHjVWg1M?=
 =?iso-8859-1?Q?zJeSqkRDEPEJhVEp2fD3QZvSinPvzOE6br3yFbbYQPmrSZaXiulJwhpTlP?=
 =?iso-8859-1?Q?lZdCO9XiyJXZmjob8vU7u29NewAIiZHX5yngZEG8h/u49yHOR/bWMajj+2?=
 =?iso-8859-1?Q?RxnyIrFD8Y4XqzjOqc5HRtmsdBZYJzsRVckSAt53E6AjC5xrtwnY1rkzMD?=
 =?iso-8859-1?Q?XN7lJblb6gu8B/40opVEcQl2vSJO+FJ3vK5Zig/rX8F9AS1RJUgKgYmiY8?=
 =?iso-8859-1?Q?lDzurtMbfOaSNH1E86UI9DYnkR+Ng0Ye8tFe67hxCIplQbJ3/qxXQmc3Sa?=
 =?iso-8859-1?Q?XQpcH5wDGR9aAB+0eEOZAYeZxeBoJPgRc9VZDnwblJRdEg7Nbm1hrad0I5?=
 =?iso-8859-1?Q?lDF8KduP5FUzWxcFopQMle36b0kAM4TW8l84Qt5TgN3wZk/ZfX89MQOTkf?=
 =?iso-8859-1?Q?Rpkezy9jHo/TbVbt94iuFZK5JAMOxQ6nBVEqSIqTv9CERaD46bN8DP5Soz?=
 =?iso-8859-1?Q?PkRJI0obtim7Fd2fhVuevKZ2WTy5NTQmvsvu/e50+WeD2ZUTb6UQ2VlZML?=
 =?iso-8859-1?Q?UWdAOzMSUpHhDYEq/I0aoORu7hNZVV7wy4y+/d49c9fK/pBh6FGvgHsURr?=
 =?iso-8859-1?Q?OQEjAe/B9rVScDNYEIRkpEX/3/NxvxK8rFfRoY7hjGEu9A9CtGa73JOOPD?=
 =?iso-8859-1?Q?mf7SPxubDX929d3zAmVnJVsEj8nv0PLBrGYB9yyLKCLq9j5mtV3x5TOJ7T?=
 =?iso-8859-1?Q?ucSwFJot4Lb2I0uerY1hAFoaOWFrThKjxd2gzePyEaVWNDW28aP24p3ZzG?=
 =?iso-8859-1?Q?490xk1/m88it4J8YYcdadYOvV7l77qJ0k3S1Zxjzi1tZDBfmwM0rAwtKRx?=
 =?iso-8859-1?Q?gemr4jf8hAAruQQgq2i/IoR3h5iZ9AFBSi?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03356199-089b-4f3a-c9a9-08da5a95e6be
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 12:41:49.4080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /MxN5aHRhCpAQsoByiOO9WUyd9P7R6dl/ozkkJ/k6CG+ROYgQTKF9qrOG57vcsRjPMxLZNqrPetr07zjlY7dkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support Async Flip on Linear
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

> On Wed, Jun 01, 2022 at 09:54:11AM +0530, Arun R Murthy wrote:
> > Starting from Gen12 Async Flip is supported on linear buffers.
>=20
> I was asking for justification for the gen12+ approach. Why not expose it=
 on
> earlier platforms?
>=20
Even Gen12- platforms do support async on linear, but the requirement for
this is on Gen12+ platforms.
I can modify the patch as to enable in pre Gen12 as well since hardware sup=
ports.

Thanks and Regards,
Arun R Murthy
--------------------
