Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3B24206C7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 09:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B506E93C;
	Mon,  4 Oct 2021 07:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645C46E93C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 07:44:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="205457339"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="205457339"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 00:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="712311593"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2021 00:44:21 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 00:44:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 4 Oct 2021 00:44:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 4 Oct 2021 00:44:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AuuEUYL+ZpM5Nv2On/GdJASr2/HMep+WwoMCiSriT350cVDi12QB1XnTzJ4/+VpPTo7d6QcaT0H6EDBIuaE01YbMulrRvEHBtHc9K/D3vagXLCwAMUyveOT43UzqNnffnVVjMremyqPHN1HeD1V2dpYkhhICqlbszsNGRzRx7TpiXYFbDJoA9a4pi5tnfu+xbhbkKTXxynJAOQHcAoS0SdohPDF87KnMfvmjkAF4vi4AYqDgfpZ0Xaqm5FXYn24dI8R5X6dmmPjblgM7OMtGIBb/uP+TM+OCMYrlfqgBoAD0gCHho3PTA4gO1/eI8kvTNbXX9mnxsDw65xsqGChmAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KpPkAgF1w0PKfoCz/josF7JWc/CDSgmq0prOAFQ+FGo=;
 b=OAQIwhB8fQGpS1z1nKD6XvuyMH6MxAJmRHvwAIYQYOBAV3ozzTd0mjTjFkcWK7dzgyXkO73PtqLpGsUk4A6ZdAqOvCysJk/uawM7lLQVT38h6+Ds/PGXlnb02wMSJkGzQ2WJoWHHQU5aIZ17tUaGR+YZpp7fY+lvJC+UjbUX9nz9E5XnhSvJlB7IU/eLwVTucUt42l2W1icV/YiXVWS9VhBm5OpCg46jh0d5JJLL6EbYafACa+/34PvHbDlm2f1Ez/OyVHtTsN3MbRKX2sv1DJCv4RXo4V4F2sOpifLOOVHmdtdm2DcmeWAYh0A9LEzvZPWjMfHyJp+yrRAtIteOsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KpPkAgF1w0PKfoCz/josF7JWc/CDSgmq0prOAFQ+FGo=;
 b=HqdMFG4CFoBPtC7p+czxgko3RCmx/WBnLzH/RD86rO3nlMNHVSV6Ahml4ooWkTWMDSB7cqXpwzBBRoZJ2RftDw8UqeZn4IeGDsV28S9TLShjgqac/NXW94izWyunc6gaGDOO05I3rOhRHBDZ/U7Rru7BfHk9jfbT8EKB080JK1M=
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CO6PR11MB5570.namprd11.prod.outlook.com (2603:10b6:303:138::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.16; Mon, 4 Oct
 2021 07:44:14 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::a109:3e72:51b5:3e56]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::a109:3e72:51b5:3e56%6]) with mapi id 15.20.4566.022; Mon, 4 Oct 2021
 07:44:14 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Dave
 Airlie" <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>
Thread-Topic: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
Thread-Index: AQHXt8OIXSruDZ8jCEqZSGMn4Hs3/qvCdASw
Date: Mon, 4 Oct 2021 07:44:14 +0000
Message-ID: <CO6PR11MB5636B8A3992151BEE4448178DEAE9@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
 <41c3e1896162fc08e22e40b00642791365a8c00e.1632869550.git.jani.nikula@intel.com>
 <YViykYGH9KG1B2f/@intel.com>
In-Reply-To: <YViykYGH9KG1B2f/@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61a9afa3-1b2a-46e2-6e63-08d9870ac37f
x-ms-traffictypediagnostic: CO6PR11MB5570:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5570FFB52A072BBB2DCF8D96DEAE9@CO6PR11MB5570.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BPB7jRJlhACmyYrxSoDBFJf9kdKm+csNOHQoUhuaXrYDJX6pVmuYXdJIqkdiPWtJ55It4rQ5+6xVTfExvI/GX03ypEgWV3rNxNHg8IGqN/3aAI4nYkT6YrJZ7x9tXcc5xB+afDk2NU03CNxE7ASedMzne9+YL6ZJM9Uz7vVyL6NEfPdKcGqiE+MwfouFAH4qJz3+5Hhjz+IuFwm0YQ01dkaWDLb2GXs/NfuxSgHQLkqkROWf+Hchd51AZf2gQawEjk78kxK2nE4jUSS7MGei8INcx28msatsdb3JAxiK7vlKCAaPEs3tBfGGVQ4Q+suQUja+sVJKPHxdqFv+jX8aJD09GoqHy5fC78Txy150FF4+4XlAUVSx8PKfV2+nEGOHyCIvduwMHCFVfJSg/Acvps/XQQWsVA5ZrAwpz1hr7/TbNVv9s3g+/6ujvpEwCtFY5fJovwZhPeqRwBKfRZrRaYQAPPj5zewpv82L5U4tjZPh/y8rGsuwjQbfuPrQ5D6RdI/8ciCDb/c4kRmVmbgVwau1BhkAeibZ45sdoXqxnNpEZBLTj8oRGla6aetVEcep7VukYZqSZtrkqQ8HMynmjv+eNLoTrjVTbj3FZx8AO/B6wB9sL0tliUPyNKEnRRx1yzQ/o7fXYUVsFPV9173TNYDcDDQBG2LR8no+dj0cKqiwDt1dBGB9YOzpzRsEuN9ElLpQzToL5CXCb6Bm/pTBBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(4326008)(508600001)(6506007)(316002)(8676002)(26005)(33656002)(122000001)(52536014)(38100700002)(110136005)(54906003)(9686003)(66946007)(76116006)(6636002)(5660300002)(55016002)(2906002)(71200400001)(66556008)(66476007)(66446008)(38070700005)(7696005)(8936002)(64756008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kBc/COeYw9LHJrtBcG/2jIVlukYADzcWcmaJegcLG0M71h8hpNK8g8eIIM?=
 =?iso-8859-1?Q?XvaxM0AtGCdSQ76oW0+NiJyI2RJiW4PGCNXWg/a+IPVQ7+399i3jyK5Cd+?=
 =?iso-8859-1?Q?D/aYQpl0d7czQS7OYhsvy7GdaoIUNYAPEeq9efvvkySqNiB92ycQCUwN1r?=
 =?iso-8859-1?Q?dGPQm7pTNJgRzxy1J8M1PoKce0FTFVsNVCwT94XmnNac7nL0AFwLw+5MN4?=
 =?iso-8859-1?Q?nQWUXM6zAjnuJJhzWy5L2APbjNrJzVAq42AeRxxiRcHKhzWBe8Gkhwvf7X?=
 =?iso-8859-1?Q?gyANZ5NSgaNaaqq2FTplleNCq2varv8Ed3Sn7JCieE8tDVG+m97+ZI3gJS?=
 =?iso-8859-1?Q?xdxlmnQBO8HTFho8HThAoUIh7w7LORdvtXqFJvBwOp4Y8t82nVXA7OEY++?=
 =?iso-8859-1?Q?9MKX67d74XenVmYcYQnH+UqtvBjo3qolKHYpd+3NrzMOYC1zLnVHE9P2AJ?=
 =?iso-8859-1?Q?dSY+SPgCnc8Dl40K7nxrF473UWBcHhuQ+oolNOKHA4cKo1pmgg2NrPtZzc?=
 =?iso-8859-1?Q?GEJG6Pq2iJLR2CnYPQhmQes+u9a0VeXceVLdJxQIc6IgG8RzTHtLCA64MQ?=
 =?iso-8859-1?Q?/zcB+o/1za0cUwRtp5WZnwih2e5P5/YFTtbPomEop+R1ECHzWzoL8HF7u4?=
 =?iso-8859-1?Q?8qpywf3uaHTzakHyW3otMy0eZoo0PwhIIaSNV7PlxMYebEKyBzBiFPGvv+?=
 =?iso-8859-1?Q?RX6yDjlADN1hqywwF4xQd9t+dIAvYJOmMlw8WXvCm3T8X1M6d6mBRH+vcD?=
 =?iso-8859-1?Q?mBH+kv7psaHyZt4ioueDac6U1FudfEFKMItXuCjvsQID4e1mu+d8zaoogM?=
 =?iso-8859-1?Q?A9M9ndD946UYBjNJSwU1OXgfKdnN0eszDuJL3JfyeyEOto6eH85GXdJspN?=
 =?iso-8859-1?Q?C/WvkeMLKakrh94pjHQ/LlghJftfucpvXqttzLgMRrOVAhTAfcBj5Fc4ON?=
 =?iso-8859-1?Q?yTNzDcx/BoRaAvOt1vfYYHJvPp/KS9oCwWsD7SB+AWnxQGgo11JVjxpVJv?=
 =?iso-8859-1?Q?zpBXY6gJgNrX5U4wF1gr6djZMs+BcB8IOBPH08eF6WhuER/veHCaBNz2K0?=
 =?iso-8859-1?Q?xSTJepY3QiKo0qZgNgzg8ToNCQvfB7OWvmrzkj+v84hsZFb+gEmd9k01jP?=
 =?iso-8859-1?Q?6wIVDKRIN6nBtG0HUwMGNzPv00O8HxX3IqxI9OzI1t2uoe6AHDgciQpMBv?=
 =?iso-8859-1?Q?lgaNTSPpgRCOwXM6360yA7ASQ2IlX84GdKKVecjPjgkiiZNzfFvcATDWUR?=
 =?iso-8859-1?Q?fgcuIcm1uczC9TctVTUW5RxuwyIBkzpDW/rBDAqaqdetBAb/eiaLo6dilj?=
 =?iso-8859-1?Q?ah24jAyNmmY6cpzToZf3vqr/2+7c4YkmXxFFmYxwz00XrATxrQRi4oPyO4?=
 =?iso-8859-1?Q?MBHJ7JuV8b?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a9afa3-1b2a-46e2-6e63-08d9870ac37f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2021 07:44:14.8479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U7YDUf2SWipJ6Knisoe+KQR40jCdCMSrcqZ6i9wR8WOvXsE2Fge4X+d8ju/fAx+/23XTq8cc6Ppkpv3mOFiz30bg9ztkh0wgdhlUfzT2nlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5570
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
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

> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> On Wed, Sep 29, 2021 at 01:57:45AM +0300, Jani Nikula wrote:
> > From: Dave Airlie <airlied@redhat.com>
> >
> > constify it while here. drop the put function since it was never
> > overloaded and always has done the same thing, no point in
> > indirecting it for show.
> >
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Dave Airlie <airlied@redhat.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>=20
> This has totally broken snb and ivb machines. Total death
> ensues somewhere in uncore init after some backtraces fly by.
> Didn't get any logs out to disk unfortunately. Please revert.
>=20
> Sadly CI is still afraid to report when machines disappear.
> For the bat report you at least get a list of machines that
> were awol, but the shard run seems to not even mention that
> all snbs suddenly vanished.
>=20
> I've said it before and I'll say it again. We really should
> *not* be loading i915 when the machine boots. That way we'd
> at least get the machine up and running and can report that
> loading i915 is the thing that killed it...

Added Petri Latvala

The best way to handle i915 loading in BAT would be to blacklist
i915 in boot and have igt@i915_module_load@load as the first
thing in fast-feedback.testlist. This would catch any i915 issue
to a test and we wouldn't need to do tricks with ci@boot
pseudotest.

Most of the CI parts are already in place. The IGT commit to
change fast-feedback needs to be coordinated.

Tomi
