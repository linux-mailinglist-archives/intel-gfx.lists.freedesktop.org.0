Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC2B738D18
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 19:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2EB510E2EC;
	Wed, 21 Jun 2023 17:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17AFC10E2EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 17:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687368632; x=1718904632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jRNcmh6IappOzPv17CWnGojQJE65Lfp7jexzdmIGZfw=;
 b=n0+xHllVhcoG6IvJgLpQMFjVTgxueTwVnT3a5tMT3y+MH1OaCq9No4Xc
 NVzbTMY/7nvaNxssV5lniwb55Qa+gIEL8ziBTgBVJXZIf4O2zi2jXggy1
 cERtzcrlwe5ONHI6qWzzfggih1SvwESqiyPriuDotuVSgonDKvDQc1NFE
 PaBsWrovFThC+HS+Wx5uq0Ka9qDnQV2AwuMzQBdoG4rKgEeIuqYNbVt0m
 ewrzFKLeImTqwVjYaUFaN0GcHltwFUjznGsEOAjFBCF7PpCcCtUb6SsHD
 3G2YjuVWImqqfUMrHSIB2rdRvVRa2DaF7QPGE7cRj0tpp1cguVDsmTA0w w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="340594556"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="340594556"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 10:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="827545898"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="827545898"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2023 10:30:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:30:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:30:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 10:30:29 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 10:30:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3p/nFJkRG6uc4xRw2bdXNSYTI3Y/msfiwTtv2gtecF/8XIC0T7F7FXV3Z0sjpOw4h8evYI6LnQSVgCTqQLlMZWNT6Z7+Asdt5LB9vovEAAcdIhIjEwqoMZVYc2d2CXKUjQXz0HUj0JtKQZgjIm0tVPIfA9QfYWvsWncI3rYgR44T7/ZO/qy1ovV0v71RGa8RTvQrNgXZNulMN8TTRCjqgYC3Xy9MkS+Uf79a4Yi9w0/pH5M8ST+yI1MbGZAQ1LP5najRgQmbIIdpn75r/sjuDMDggbc1MNiLyom0+K3VD7olofyNDowDCx+VUBiJaDFADR4ymxswrpfFcNxkPj34w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ptWREYVZYzZqM1JjJdkMagzQInLEbHnqZw8EFT/WTc=;
 b=MRo/gLTPXvH2cjlrqeB7bWQadNnyf5Iz5+Ac/fXgO656TbgkyF62NGvThnZt3t7UE0xn7YZCSx/EZP/81bZ51bKL8CU/CS48oUKqo+6YOhuCHszaTIyuiJ6zrvlvSztRzqcqo0omzoGPyTScdyJbDdQ16fyJ2O/6rsQTWM5TK32xzm5BZykpeNhipQWBYk22r8R3d73gM9bmGnclXdr22kL5slEAur7L0VccYIu7DxjUVUKeks+WUAXNWLfQ6nItQsTdSqte8bBVr7MOON73OI7QsMlA02KlCohyOFnEHEM8H8u9hx53P6gjxPeW5Nv4b0T/pO8ajJ4RZAXlqzJi3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by BL1PR11MB5414.namprd11.prod.outlook.com (2603:10b6:208:31e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 17:30:25 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%6]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 17:30:25 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform
 name in defines.
Thread-Index: AQHZn2903o1FZKvH2EK/Crk3Sq1l+K+T6kIAgAGhTmA=
Date: Wed, 21 Jun 2023 17:30:24 +0000
Message-ID: <SJ2PR11MB7715B91E2D4A276604C47CA8F85DA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <87y1kef64p.fsf@intel.com>
In-Reply-To: <87y1kef64p.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|BL1PR11MB5414:EE_
x-ms-office365-filtering-correlation-id: 2fcf007e-2c4a-44c0-c216-08db727d32b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yPsiOEejFO+FxyQbjJ/q2rjPXVE6EZcO8AON+R3GWqKycU6VGlcShdY3YYjzoTVTW7qTDI6kYFGDI3KQyqpSxYQMJsxfUe3bwN+8wxwjhbCyFmA4FRBrfqU8OOFrRRWvtzBhNbz+ot29dDDgwRdOjDE0QvMeCnZaGSI9iYyd9Gd5xDOi2DuX/rI96Cqi/RdC/kQ8/sNCCtMWux8AWF1oL7p8gx8WRYaFkzV+5ATcRc+DUq/48M+1cy7SJu3oTVu3LMa8B4um8A01H9IpQ2Pwyrnt2MiUwbHQ5KaAzY2YRNebtdZmu5oYraGuT1A4DwFpSXqR1xyI3RjSMlJeRDBhoW03xVBPsxz+ydHXW5AUHhYGfTgb/2s+HnhNreFl1AIBQWI+KyKsqi77731ohwKwNXmo+y98Sej0+tmT8RRdsR1ycxI8+C2IegwuwESZ3oZYzHn2nkstBoGf/ikZ7rhQFTllkE3GaQQSFhz9bv5xxugGMlca2oaUbXEQiC9jb3rCN0Fq/eJ6oAEHc4D5IWMvH3XlgkBFC3TciaOIb5Toh9uibolOeq/onbJ5q2LYEIvBd2Bzm/umgugvoZDA2W/iPs5/oyGVQpvL+FO+5fLzPadVY2Knbg6pOoFq5dsZv/0Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(376002)(396003)(366004)(451199021)(54906003)(82960400001)(110136005)(33656002)(55016003)(52536014)(38070700005)(122000001)(8936002)(41300700001)(5660300002)(66476007)(86362001)(66946007)(4326008)(38100700002)(76116006)(66556008)(64756008)(66446008)(316002)(8676002)(7696005)(478600001)(2906002)(71200400001)(186003)(9686003)(26005)(53546011)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hic7eJZ84BFnuWYrA0i+oMvjQVxWNUubCJUY2fuAiDFgzJpQtNKu12yOI3nf?=
 =?us-ascii?Q?TpFW3T/YXbD7teyVzA0IXvt/ACKbF+2xEREvqrdf1/hqPrGUyHDmCKDu7/F/?=
 =?us-ascii?Q?3oerhmZI1pocDXnZYu+6pUBVVAK8rIa2GKh810ZWOte5KHUfxNAMn56ZSdVW?=
 =?us-ascii?Q?y33z0SH6s7/wy099dcpZOrG7JAAWjxXbT/gAQSzrxODMQbnlrvuWz7xhnlAu?=
 =?us-ascii?Q?rDcVZjZYWscW73VxNYPoV54YVewS+kqCAPvnzLLGS/OUj5pZMuTUPfKFUf8D?=
 =?us-ascii?Q?jmAvXb0WX3RIyYfIQitwZM8HnjFkpRzEbKLW80H8k3Xcax/XjMIDfBa7fI6y?=
 =?us-ascii?Q?HXseT0ZEdxZ1ltwCOFxZBr8occ+iaqWT+2hIpnPZrAvyMhjtmKa1cCZzLVF6?=
 =?us-ascii?Q?spz9GdJYxTphgyrlezkMeSk7nHi9s4Vup5cxzLT/emM3PWeSPiE7g+B6oGbZ?=
 =?us-ascii?Q?xPfIC2UM5mU0jyitOCgV6WrRVnce07ikvlFy+PXgvduFr0thUXzMa1RR+nlu?=
 =?us-ascii?Q?4Zst04CvhujbveMC4dwGbLBEk6O9eSPYO6Ew5n69tKNbfd1SQql0Nd/rr3gG?=
 =?us-ascii?Q?nMSze7pEHSLtePGP3pKRWz/8VXP5tDRQEe/zHizylrShB3HfUAEVTzpvaHE2?=
 =?us-ascii?Q?HXm5K2XZOzQ5sc4yf+QJi+syroINLxwXI1tqaJRhnnWsmACZW+Q+Gb9GrjEt?=
 =?us-ascii?Q?qgXU+CSd9BM+MdOl+O8dFtr//g0iVA0hfxUgY7Deq9ARi6YLrwuz4r2D9+QA?=
 =?us-ascii?Q?dgW/g0nDwYmNPlv/a1Tauf8f3+CauY8MGthfAi0+LyKvB6ehDA+1M8Hq1RuE?=
 =?us-ascii?Q?ulgsUcsd9+cgrfDQivsi2wlBBKfd+SFTPaZ/6Nyz4ZqlayB4O94V3ROwzBhv?=
 =?us-ascii?Q?bbaRw3Nj9HqzA+li/OYbROknWXarQV/HKktiToFoJJUCtXNCAFBMOxDEvhZk?=
 =?us-ascii?Q?IxKMNJuahYl5u55n8/GF+nI/A+Il2QtQ7Zpss9xwioKJcdiyAG4ztlB+3wUq?=
 =?us-ascii?Q?FvAFeE1nZHdLR+6ak4Q78xTh59R3LZ4D0f6JIj2ofutCXJ8ffcw/w7feVkjg?=
 =?us-ascii?Q?QV/EzyYV7q7d1Bs5+kqtgLqNOhy8Vvq0WaPtgDbM1rdxrfykguX3DUx/xwrW?=
 =?us-ascii?Q?dBDh/mV8+WFKWsbwzZ/Bg2qspCOJSCS9/hoBiLby5vLd5BH/hiE20tshMklr?=
 =?us-ascii?Q?bJmMk/CEuzU9DUAEcmIzBqsVMdLHG+9cRqirfz7ySeYVgmnq4Mg32xjDECV9?=
 =?us-ascii?Q?6g4m4yaAG0hNje6vfZab8dpZMiC5Ja/IErvb7L8v0qnZ+SVneYqf87BBDcxm?=
 =?us-ascii?Q?1Io8fa5RiqMHDPzZVMq87ZSRrpXWA6HI4fuhXZ6qjIzv7SVgDGFykn1HIqTT?=
 =?us-ascii?Q?dXLEO3oYhcZXqI4Lxprf+JTXqMfuXV2YN4IaOpTjtI/urcvySPYYMIhcyS4d?=
 =?us-ascii?Q?dN+JFOpItA3RYSotd9DzPZs9Br7GzDen/0jumSlW+clw6R/z4Pra32XwCaQ1?=
 =?us-ascii?Q?u4ZPt4t1VH33rs/Dn/Zyyeg60+oiyrpFlUZTEW9RP73vkqyWc8+a1xgAk1Ir?=
 =?us-ascii?Q?aDPBQ1mubLcbE7um0kRuclYwCs7/7lR05RBrF9pt9m3Akz1sQOexsn3sVzl9?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fcf007e-2c4a-44c0-c216-08db727d32b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 17:30:24.9849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJZB1VUmQt26WKlI4o0GO8G9ifjF2CpYP8FF+abkIp96jewoHWsMMrl1i+V0NwaZpw87p5XDStHU6lCHbTKquxaRobxlAgEVhoW9N9v6Jwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5414
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform
 name in defines.
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
Cc: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 20, 2023 9:31 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Srivatsa,
> Anusha <anusha.srivatsa@intel.com>; Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform=
 name
> in defines.
>=20
> On Thu, 15 Jun 2023, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > Replace all occurences of ADL with ALDERLAKE, TGL with TIGERLAKE, MTL
> > with METEORLAKE, RKL with ROCKETLAKE, JSL with JASPERLAKE, KBL with
> > KABYLAKE and SKL with SKYLAKE in platform and subplatform defines.
> > This way there is a consistent pattern to how platforms are referred.
> > While the change is minor and could be combined to have lesser
> > patches, splitting to per subpaltform for easier cherrypicks, if
> > needed.
>=20
> First of all, I'll note that changes like these need maintainer acks befo=
re merging.
> Simple review for correctness is not enough!
>=20
> While discussing this, there was perhaps a slight preference for moving t=
owards
> acronyms for brevity instead of expanding all of them to full names. It c=
an get a
> bit unwieldy.

Yes there was. The main reason being the acronym was more brief/compact. Ha=
ving said that, thinking out loud it felt having platform defines have full=
 name would make it more clear and readable?  For anyone new wanting to con=
tribute, there will be less confusion.

>=20
> For background, the reasons for having IS_<TLA>_DISPLAY_STEP() are
> two-fold: the steppings used to be platform specific, so it made sense to=
 tie
> platform and stepping together, and IS_<LONG_NAME>_DISPLAY_STEP() was
> considered too long combined.
>=20
> Nowadays, we've abstracted steppings in code to be independent of platfor=
ms,
> so we could use IS_<LONG_NAME>() && IS_DISPLAY_STEP(), and throw out all
> the IS_<TLA>_DISPLAY_STEP() macros. They're orthogonal things, and it act=
ually
> bugs me to have so many platform specific wrappers for the combos.
>=20
> If in addition we moved to acronyms, we could have IS_<TLA>() &&
> IS_DISPLAY_STEP(), and it would be pretty short and nice.
>=20
> That said, all of these changes are a lot of churn, so I'd rather not mak=
e them
> lightly.
Agreed.

Anusha
>=20
> BR,
> Jani.
>=20
>=20
>=20
>=20
> >
> > v2:
> >  - Fix the checkpatch warning.
> >
> > Anusha Srivatsa (5):
> >   drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
> >   drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
> >   drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
> >   drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines
> >   drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
> >
> > Dnyaneshwar Bhadane (6):
> >   drm/i915/TGL: s/TGL/TIGERLAKE for platform/subplatform defines
> >   drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
> >   drm/i915/TGL: s/RKL/ROCKETLAKE for platform/subplatform defines
> >   drm/i915/JSL: s/JSL/JASPERLAKE for platform/subplatform defines
> >   drm/i915/KBL: s/KBL/KABYLAKE for platform/subplatform defines
> >   drm/i915/SKL: s/SKL/SKYLAKE for platform/subplatform defines
> >
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    |  8 +--
> >  .../gpu/drm/i915/display/intel_combo_phy.c    |  6 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
> >  .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +--
> >  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
> >  .../drm/i915/display/intel_display_device.c   |  2 +-
> >  .../drm/i915/display/intel_display_power.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 +++---
> >  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
> >  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
> >  .../drm/i915/display/skl_universal_plane.c    | 10 +--
> >  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
> >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 10 +--
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
> >  .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
> >  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> >  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 54 ++++++++--------
> >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
> >  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
> >  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
> >  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
> >  drivers/gpu/drm/i915/i915_drv.h               | 64 +++++++++----------
> >  drivers/gpu/drm/i915/i915_perf.c              |  4 +-
> >  drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
> >  drivers/gpu/drm/i915/intel_step.c             | 10 +--
> >  drivers/gpu/drm/i915/soc/intel_pch.c          |  6 +-
> >  34 files changed, 143 insertions(+), 143 deletions(-)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
