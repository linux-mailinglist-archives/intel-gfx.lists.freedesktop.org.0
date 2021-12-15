Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D194754D1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 10:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A34610EED0;
	Wed, 15 Dec 2021 09:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CDAB10EED0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 09:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639559107; x=1671095107;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xEexgdnM9m7O/zz8WhrgX6EOhnAzVS6PFVQ91btNGFE=;
 b=N0BIcV0k8B3CKxx8o+JT5qxHka3WTLGfthS6ttifvQ5G0A2t5IlXJnOW
 YDeLeLeDhcipYM0Y4/3tNCjpZWhtjOk252hrDpu1TrrLD0XZfwUIp+MLq
 ZLLaTnSy1xNsjs7HzzrEn32X/aNY2aSi1czcWCJERU//lnZTM5b6TbbB4
 9e4TgnarpcAPmFvtVdvuMnyOk+ZKqS2+3AtwSWheV+VKzv9XoSvhgp1+J
 3RpsUwU/c4rRWOjOyw8fBUJZ4p/DaU7A3rjavkX3D3MfBY/pMPEqpOPEP
 YPWVAN8OQIibGjZ86map++HceYSpUGKs8p6GwtgA+otKRu0YoqN/GJwUn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="302559989"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="302559989"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 01:05:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="465478368"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 15 Dec 2021 01:05:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 15 Dec 2021 01:05:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 15 Dec 2021 01:05:05 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 15 Dec 2021 01:05:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SvCK1vIQbQjmZl+Hg+H0XJw8y8ghc2fyuNGF0F5Zt7PHpt59yTC102p0YLBFkkfIQBPNAc5eg9jaL99HF71+3dACJaPVlxsW7/iUwK1+HqbVOKiDl4mhhJIy8nvu/GNMHBTB/Rd0YQJvB+e74Zz3aybyNBtFvjyE/GkKU8mA8i9+H/TD3beFWAPBQhJ+YNRG4AOPX7XH0kQKRwqqZOYb7OtzWNHqnpJafxQ8vX2TutWr08mgHDkzJKAPBOaSy2hHtnth9lO/aUlMZYEANWCkgbXi5f5BYQ6o/GbgjuHeQz3GTtTrW+216T37jnJ1Fjh6LVlBA0AI446kqM2kZqmB8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xEexgdnM9m7O/zz8WhrgX6EOhnAzVS6PFVQ91btNGFE=;
 b=Y5G++n8GguQmrdm/zMc0IrQ9RLs5NFgMtXAEueKDYg+VD9qeFioWs33KQWwon18JH0wCRhxre2C7vzBxbEmnzkswfCVcii8S8+GSIhqXOBbkAyGxBYcP8lVCjvv8eQ09Ds+NyuFAu2MWgEOld+GkCUBx52Mth44wpxZ3lim24zuvncaCpT24oUcILQ+CuqFiZMMUKLrrG7LUcS8inVzQbVypnghayOurlTTv2iUkQkwOiNW7MIhNaYg4r53p+mZ8gJCN1loLxEQwaFPXAjsK/mo8M95G5CfAfpI3Ockhj6Q3VTu4Yfew1C5oqfUkquQ25auYwxffDoIAf+t1jQ8g3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CO6PR11MB5668.namprd11.prod.outlook.com (2603:10b6:5:355::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Wed, 15 Dec
 2021 09:05:03 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6120:cc99:8b42:7ba3]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::6120:cc99:8b42:7ba3%5]) with mapi id 15.20.4778.018; Wed, 15 Dec 2021
 09:05:03 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
Thread-Index: AQHX8Q/cW7u5eE0Le0qyj9IJ+n5k/qwzQz9A
Date: Wed, 15 Dec 2021 09:05:03 +0000
Message-ID: <CO6PR11MB563679A612675BBBBAEBF307DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
 <871r2g702r.fsf@intel.com> <YbjFh6AnBtI729+V@intel.com>
 <YbjT/f9276cVmgDE@intel.com>
In-Reply-To: <YbjT/f9276cVmgDE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ff85beb-eef3-4e3b-75c4-08d9bfa9fb75
x-ms-traffictypediagnostic: CO6PR11MB5668:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO6PR11MB56688708075BC2E1A04782DDDE769@CO6PR11MB5668.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TPcyunihEx6XOUNrb2/IjPfSSzDZY9IGnpPawdS+VAkEPZnFjJWTQUDwvF6lAtw9Ea9qCg8tB8ptSk474ggMANrn026aWY55WxM+4pbZvVhTT8PHMoGwcZdAVX11Q3CdeaPafqhzZ+WllyXNIeiu6SlR6jfaf+qzIzXtgklYWzh3n8DmQP7IiLoE3Dt6bEqkJalKXm6ACgJ4xTGvOSRuoCfEKEqNlnyT3JZLhqTBzT7AFUZI8YEEPl5F7oZRj6F1XwX35qqTs4q0/bgL0jYt029tHw1dfUY8lV9TthmajNssOURTnZWbHprsS1/7BbQrVMbkyhJE7hfRT8JYLF2NEHUwtQfgcQhuFEnXo74IPsFE6Hwnk+mK7b8tLxvQpVoGHiJfVGBHf4jvUJGPGuX854YNqFbaIpZ2iP/JWu3vij4CQoCfvJQGMCMQk+JyFDzLSEwRq1/x1b9dl/PlbIAx32okfT2k+VvoTCKlIrNEyzKPTlsLoDqWmKUyJiAG0s3yrVEsNXPJMFqQqeQ4aW3KNo+YwN5CzMRNJZ72Gh91K5+CrPhZuPI8oKfe39LpVibbXJisxtY1kJiHfx/YJxmTIMU+sf48YdGmR/XJ6JfzRs0wONfRJPp5m15UFX6z4vsoQQqR3zBFMbMRdq6go3/NUlUmjOiFpTc1nzABBUsLKreCVzE05cHsWXKaXng94EGGMKqzeZaeVkd3lqGLWhU79Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(316002)(66946007)(71200400001)(38070700005)(9686003)(8936002)(33656002)(26005)(6636002)(186003)(52536014)(64756008)(2906002)(86362001)(110136005)(55016003)(38100700002)(122000001)(4744005)(66446008)(82960400001)(4326008)(8676002)(66556008)(76116006)(6506007)(66476007)(5660300002)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2AE4hDxz7aN16pEcqsS1kEkIko0hhl4W/oUjd+cE9bjL0CaJXMj1u2+G2k?=
 =?iso-8859-1?Q?lAiXvEp94Y2B9vREt/HTTExB9sf3AjKbzFQ4hgKrhrC5+n4wvFoudUPIQk?=
 =?iso-8859-1?Q?37MqLPi2XSnVQSHX+Yx7qzWbJ93Mwff2k0RTeN6q+uff0c/33trx3wxTqi?=
 =?iso-8859-1?Q?i2HTxhYt+XFc6gv+vExHst9kaTG5V6zOqkv4S4SlJOHJwZQ8wXOP4hYtta?=
 =?iso-8859-1?Q?1t89O5yjYKljCKLKef//BZ3COEs5Rc0+tbIdi8e/ZuaPZNuSkog89MfQHC?=
 =?iso-8859-1?Q?kSMv7FkVytTbwN6olRsdgZCql5YrCotilpeCubvpHbXEnVRFLaYCSob9oP?=
 =?iso-8859-1?Q?WOIUmU4LXXLsFyV5BLZ01fcxL2EbV0XNLoCGc9vdKVOYevatLsNkIjpihO?=
 =?iso-8859-1?Q?pnbbi95atIZLpmEJY12V3yy2RJoLdxx2Yk7OsyJsY/iZc8cRve7BjnJws1?=
 =?iso-8859-1?Q?Wts31AXayySwmWUJAVD6Ezk42dxxmn4fkc+1j9yuH+uO6mXAeOrgsM2ptr?=
 =?iso-8859-1?Q?xOF4N+C3PqDbsFjMFJhszAuIf/A2RFrYQ4sZ/vBlRv0GJAm1Itc5yGKAz2?=
 =?iso-8859-1?Q?r5l7RcizxqBvTlnnZIlxjRrJ/w3HHAvyKV4fOVEc6ugp/lfrp+qDQJO/uj?=
 =?iso-8859-1?Q?yGNyO42n557+yHjAMxFfQWzjhnv+7vzPORAvY5kq0yaWYwcu2KAXSDlRLA?=
 =?iso-8859-1?Q?HkP6EKey0sKnlbspZlij9jg06NIZ2d7fYd76iww6yfDIy6nkOmf44hOzBs?=
 =?iso-8859-1?Q?cSM9SOk2mVIx+78fUevh2NVir0ohNHL3LPb9OkldX2fD68EcginVOfQezc?=
 =?iso-8859-1?Q?6BOv/7IhVLrW58ipJBQ5LRjp3cuTRDoqkt14m7pSnFJbWeSdpMDnJulT7a?=
 =?iso-8859-1?Q?baPtjv7oaovt0BBzqletZ1s5w7k1ZwjhI3oRCgRLUtmBQk131z3gYYKm+i?=
 =?iso-8859-1?Q?+dDMjG/pAQaJQMVcd0f8EZeLVfZPNA5IxdeLPWnwKdxm8mNz4N0L0LZJ7U?=
 =?iso-8859-1?Q?FOpzUouMgTyrfY3N3BKoffxHIuce3RRq9GAFv+BMMWEeFtEl4cQ3LBdPy4?=
 =?iso-8859-1?Q?7yhpEBc8iF1FOrKzlpHcuFIVuzbcj9Da5AdF+4Nx2KoK2idlTbat7SNzJl?=
 =?iso-8859-1?Q?W/Id2hbvp3qNPMPgIfPPQp1/Y0ciW935/rDHq0rVANAhSChiiGxrpwZDQ0?=
 =?iso-8859-1?Q?mzA9xRp63sAkYzjUaKgnwUTXxq7fM92kDGCU/VTbkM/mr12c5SMmgzwf+D?=
 =?iso-8859-1?Q?2Hfd3fIKr9rW2sc7KvaapVfRNvd5FdOEAiZ9eKlhMINfauRVAMupYfVclh?=
 =?iso-8859-1?Q?Yyr95Pin/oeBKK5Y0AezeDIVDLjkX86/KxQ+ZwcJzJzTiEpMflNimbzTsE?=
 =?iso-8859-1?Q?gl6JDXWDDYzo53ct+5BaE46017FbB7W1p6GQn09AtYCXcShZmkC0oN2KmW?=
 =?iso-8859-1?Q?5hCaTtXplnJWrHQH1MZSm8M9tagw4t63vScd+cT8nbpFfIg68aashBz0sl?=
 =?iso-8859-1?Q?u66pecwcvaDC0kJbD+24YhnWPLibW8TychQVNnpzfvRjCvsOdFvIy+dUjZ?=
 =?iso-8859-1?Q?uOVcBwapEOpMr8QyQAfdJT0yeCtT4I7H9jx5I8u2a73GZT5QIGv2KBufm+?=
 =?iso-8859-1?Q?ZL8IjattZx+gTr/qgj3R8ql6rNkCmrKqcikW3OxvQMdycRgcK9kvWy1uDd?=
 =?iso-8859-1?Q?Yj5kKajXtT7MQVm8NIhvVznfrRLUvGQ42mWnRpcQcrBktqIIm1NisybxYu?=
 =?iso-8859-1?Q?d/TQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff85beb-eef3-4e3b-75c4-08d9bfa9fb75
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 09:05:03.7926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctMxK+pwgqoq+heSZMBnLBvUVu5i8V7dUR/6rMKtLD9mFrWH8U2hhyK0ZHbMPJoJCTqUUvVWpsXN2TeUXyPV2KM+yP5uFeVUh/W6RFTYtRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5668
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>=20
> On Tue, Dec 14, 2021 at 06:25:43PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Dec 13, 2021 at 09:54:04PM +0200, Jani Nikula wrote:
> > > On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wr=
ote:
> > >
> > > This one is only used in gvt, anyway. And that actually makes me wond=
er
> > > if this should be breaking the build. Does CI not have gvt enabled?
> >
> > Hmm. I thought it was enabled in CI, but maybe not. I've often broken
> > gvt with register define changes but I've always caught it before
> > pushing. I think I have gvt enabled in my "make sure all commits build
> > before I push" test config, so maybe that's where I caught most of them=
.
> >
> > Tomi, can we enable gvt in ci builds to make sure it at least still
> > builds?
>=20
> Actually cc Tomi..

GVT-d is enabled and tested by fi-bdw-gvtdvm.

Tomi
