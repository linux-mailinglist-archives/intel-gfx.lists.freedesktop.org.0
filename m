Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BDB95AD6A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 08:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89AA510E73A;
	Thu, 22 Aug 2024 06:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fWc2jh+i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 642FD10E73A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 06:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724307957; x=1755843957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7RT4LcIlLq86xYw513F+xNbQBKagP+acG7/m3rlfmQE=;
 b=fWc2jh+icGLc2MrpKijCtSmEI32BPprUKoDd8OiJsN6qPfHapiFPSVyi
 9owcJ2UbAt1id/shj8AR36jbVr16Bk1rwKWFg1yh9oHTs7RzjBk1QLEaz
 7jxhwSStprdE0mgqhjkAzVRLby6jPqG0GBPc4fHd8qo5BwjoxWTIrkLcA
 vPknPlQf6jE3etJgBz/na0mtaxzdqAfxGW3bQ7He00DDqw8GFzaV3CeLV
 y9AFs0FvRGWDMxaIW/050Dhx8mJreFwOvKWT806ygDpD88EshXzB4AQ+O
 tMqQEv/XTjG+gwtOJ6f+L3VmFLva6wlKJW+nTy1HwvWiH+C2kIFa6PjdW A==;
X-CSE-ConnectionGUID: knU8CxQAR5KGs7aBo66+lg==
X-CSE-MsgGUID: XB8qzV6CRs68+MmqVawDng==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33269944"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="33269944"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 23:25:56 -0700
X-CSE-ConnectionGUID: OiWlE5k7QmSNKkltbtidHg==
X-CSE-MsgGUID: 3tcVIFYjQzCmZ3Aqyflyxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="84514210"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 23:25:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 23:25:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 23:25:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 23:25:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WygAZ4W2NHzh8vC/AKRl44SyYK5cHjaxJ6aukP5/l6aDdwutzBnMMkYnwTLPjWfHD0y4+NTigFGimyYDzBOqQ8po8uGBoGt5FEw3feYpAfQE4HNPepBnDIy8sZbmOefoQXhbMtkdtkafAP3cjPelP4IsrCsHHqOMZq+zIWtRYBPDWtHZboGrzBO9ueLoMyYiwcwwGlw13KUml3RNEXVpSo82yoYB9UKySCYcB9HAn532bk6m+HdBQTksQP83Tq0d1eSDpVZRbPAvrgfuCER3UaIgCcsDnAdPo1D4SxX4l0DQY5Qz9VvsOvLGss1DkfV0lMVPdkofz07g8koMW+Yx+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WUCJbYvkSKoERCjua8GLfxFpJbzUym7IYYkm0DRfs8I=;
 b=UWW+6n3HIg12eeTCECj2SKBbfLFzFJCOekW99WCfcFKGWsxEb1M0nN8VXVl6IGMEl3aHrMbUNtFNSz+KyVxTunm10AFgWX4SWzivSQKMca5cSpgN7gZPLTgAV3Q9QvePW5/DUwjHj5CZ9TJQFvc/+Vpn0QI1eVYLjWUKxyA/6KGpUiDNS2XyXDSn+q2DORlydOdVHlQtcDpdnaBC3CX85Qmzyt043pYzXdqKq5jw7bY0rbjKX2yjlGT6upf9MfXDD7NQinhdZmtCqAVw/lCBmAOVMAX3KrjJdcs41RFP93DXvhHQX05r5VS+tXRvQ4OodUlRqUZovGXXvicbMIS+Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by LV8PR11MB8510.namprd11.prod.outlook.com (2603:10b6:408:1e8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 06:25:52 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7875.016; Thu, 22 Aug 2024
 06:25:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHawgLiilrt1Cs0z02ObiLKtoAsc7IzIcKAgAAGTaA=
Date: Thu, 22 Aug 2024 06:25:52 +0000
Message-ID: <MW4PR11MB6761E0E0334E193860F1DB39E38F2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
 <20240619043756.2068376-3-suraj.kandpal@intel.com>
 <DM4PR11MB6360F27C7A98FAA3D367F6A1F48F2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360F27C7A98FAA3D367F6A1F48F2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|LV8PR11MB8510:EE_
x-ms-office365-filtering-correlation-id: f427cd0b-68a6-4fad-dd2d-08dcc27345c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kqEtmPx22e12SFNJleCus+Q/4zpFfsYz+XJoOuckBs4QfRQY80HB8Q93kKyE?=
 =?us-ascii?Q?bvXJinJOOgWtomYcAfZ5D9paEwdWGnpLUWJSDwFAnRtBYcROeatwkOxJxBsZ?=
 =?us-ascii?Q?1+cUO7dhqunWZnxhy93WBCbV7otwSelUIcwe8Mmw1KVRTCwdCEihN8MlhKo0?=
 =?us-ascii?Q?02sEwvSUVvXQX9YjXm/nLClz7Y0E1ArdDaelfn1Emm7fRVXHv9cKz6BMt2Ax?=
 =?us-ascii?Q?eeeJu4DWt+t3tV/T0/hEzEBuPh9AyupEDVAXlPMr4jQvEaTAf7y0OtckX8vG?=
 =?us-ascii?Q?5HUVcEIEg0TfOrBqTGiY7gkNIPfix2PO6GSmGJ4fXHtazpgv3PIVyg60MSFR?=
 =?us-ascii?Q?8NuPKnpOb6Ky0Wq95eJrX99npnaa+wh8jeypC1KFNLhiew2lBl1pPxmbsY7B?=
 =?us-ascii?Q?gg/JUjQV4pd4vWJhMkU8C2dpowjZwZl8uMNveDzYXQiayWM1IkU8F97Wmzsu?=
 =?us-ascii?Q?vbqdiDnu96bxGcR4Y9Cuy7YljF8PyVmDgnY4PsSsNNALzi3Xp5YeebfYP/iB?=
 =?us-ascii?Q?ySDVTrreaYZpWudaZugu7lChukDI4c5E6+Us0TwNFKrp8muSpZoQj4zViEhe?=
 =?us-ascii?Q?17R3V24EEVAvaBRvu6yp9/hS/5Co8Rk+o2t5BeYnNyRrGoAnUgXM/DDf5X0E?=
 =?us-ascii?Q?+De2cexVhf56hui/d0qph2TOcdIYXdAgbYcn8tevLAbiZknZSoeSo0WlymnP?=
 =?us-ascii?Q?xjZKfmZ8dCX2JrDVuGyz5cNLGTtTHKrbS5/DcPtargUoeKPXNzKTM6Kku/7H?=
 =?us-ascii?Q?h9Ge9fNI1ZTHUr1LrH2gbgS5dcp9ZAy30sVkowRFPwf+6ZtbAhqpkLcUN3QQ?=
 =?us-ascii?Q?s6p8wRDdKdpJYjNTviXsepSZ7QLyCnDdLtXtHYaR5beTqvF4p8BovnSNytt+?=
 =?us-ascii?Q?evGTzekKPFpK0WKxzGX5mfFc6Uw2nJYUzAYwNUTdGBDF81LVwUtsvoYJKUe8?=
 =?us-ascii?Q?Vxe7EoWhSv/3P471itA5gm6Ffi67P9IA0FnSYA6Huo51dJiGzAND9Nsd9hcH?=
 =?us-ascii?Q?FDGrxLnMG/vTO0cV0AABqkWUQ+bFweinyIU4MeS5v1glSNiJ/2nhmkWmwcG9?=
 =?us-ascii?Q?WSAxsWA0RjWYWJsx/+lgx54yKePQYmmuplJE2C5hekjNtXM9AW5vFRDNArMs?=
 =?us-ascii?Q?8DcXZRrGS6mflE8LMfsN/c5vehdruJo+DLWZ7t65qa/3OVRkDUuvfhZ+qqKD?=
 =?us-ascii?Q?VuYDB14Ce0Uys0fo6TD5hSOmNj0x0WRxiyik7BDppX4yCM9gSwPSb1LHzPvV?=
 =?us-ascii?Q?BV64vM0cSD//zNMkwDSzuu3klffD8DClabBP8nmJORqIaIWVVxFMyi604NcO?=
 =?us-ascii?Q?8xYk/S6EVDrIp3h7aE1zHhWK3g1TRE/eEPQ1iohqgls9UYZv7zO4kOupispq?=
 =?us-ascii?Q?TNn4qUg8ckxzKB+YhdiFnHKw+uy78HPnzDetk/7GoYiKh5pDJw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iJseEYpHLLh7sco5nBANuDXSeEh3mFEfw+KuDb6IMeli/W5hyTHzb689naHb?=
 =?us-ascii?Q?/i8N+N6npg7UzmpyLOqJfqZKMakRJlFowlMhPHb22enuQKmDUYsOy58AKWFY?=
 =?us-ascii?Q?6ar5WZGDB1rlGHh+j4ePINlA13ZK89eLQJKVhhRGF+t7qKb+DRYw5z8Re4ys?=
 =?us-ascii?Q?vrMhOLgrn7pS9oYAAoxf3jGzqLx0wFSYB8DSOrYpY9KxZ3XNQEmlhXEWpi64?=
 =?us-ascii?Q?EvDXiLPHoXM8jUIC5xhh6ffx5sAhV+a0fM26Z7Z1mTnN5vWHES/+UJm3qIxP?=
 =?us-ascii?Q?Gjo12cM0NWM+byULMaQvWbaFnbL79KQy6s9eaLbX6Pnrdd0dPRcxYNhhoLzG?=
 =?us-ascii?Q?zjF+F43nsHVTAm6CUp5RAbcedtGYxrxCyqAT7EgGEqOYAZWh8pU/j0XMFuoB?=
 =?us-ascii?Q?Wn0isnh2AGqvkVtRsl4kAIDpnfTpIPBf7ZQAIO36qzG7ZxUCrZPp2IbuxOuN?=
 =?us-ascii?Q?9sbfS9MMtCGqT+lgumq+PrpLP4TH8jpxk0RQx2QeA+a+/cFw0QnocCGA03z5?=
 =?us-ascii?Q?WXqPUnNOaxM2uxbY2qVk2W3yWuNpbMrwH4wKNGeihie4YlCo6ner6NdW/by3?=
 =?us-ascii?Q?QpVo2TcMF7yDg+kT2HAzEJ6OAuJPoW9Q8aOcZbzFfQvTGXSV1H3MsEY4/E9G?=
 =?us-ascii?Q?S3KMbYTvmd5iLzcJBOKCFDgj817NjzGrx7CPoGmfhS+eTbHXegyB0+x9DLxD?=
 =?us-ascii?Q?JNXklfgpMY64qwz9JLup9e4DWWz9jAOQtZuEYVexHMZp8A1PgdNezcKxbT+I?=
 =?us-ascii?Q?kn2czfiDuF+92S1bWMFUAi4dc4KF2RJ1/NzenCNzQKkdVt+4s0/4/nTAsU6I?=
 =?us-ascii?Q?1QK9OMt8IN9QnHV8YziN3El8r1H3fxlW1k4evaC8g0WJJDVtB5vvXLUlbWYW?=
 =?us-ascii?Q?y9TUUGHqaSOGZSmHHFiSzAwzUmqwPbmrHOA7R818uGdxaYG+A+28RCUtwlga?=
 =?us-ascii?Q?aB/ykp2EVViJelcfdVIqmKQ8KVDsp7ya9oKO56O0r/y4tQpP2Lc4/8Oz6lWo?=
 =?us-ascii?Q?xdgP6KGQcIMvBYNlRwVsJD6EU+5lHtj4ZDqqmrlfDyJuooKPiXxxudqsAwx1?=
 =?us-ascii?Q?ati7HoZHtKAPW8ukElm+hJcZu60LAz6kEX5FswWEIX35Lfm4J6c4vzdHzziP?=
 =?us-ascii?Q?d3SuDDrRKQpsgcY6DYPnIg4mlu5MhX3FgPgpsf8cCNrJjjAAIk+8rG4eC57q?=
 =?us-ascii?Q?zIZYyRjW5HOFf+GHT70nMSRha+WJCSz5DckURzj2iDt9Q53utqDrIITgmyR5?=
 =?us-ascii?Q?SfaZS62xZc9LS1LoTs3NbzcpohNZ0FZYFTQh725uEy0ezpYft2YGygjVRFil?=
 =?us-ascii?Q?XPNiyOSaOMn3PbBFbnzvhn0kdf9DcOdeL/+eFKWwgb6Ip9lHKw4OoGlUXh79?=
 =?us-ascii?Q?hlgfzHRux5qvWolWFAjwfjUwrDBGClxGQX+uCQktPhtJqLeI3Pv0WyxOzUO6?=
 =?us-ascii?Q?JpoDik9S/8jpSoxfCwnJF9NN73nx0LItfD4cnP87QsO2WghGp1ha2ukzah/0?=
 =?us-ascii?Q?XrVtrUHhUyKGit6+lnCn2rIJaA0u6Z8o3K/rjtaEG8CO/xHueRyedlQjCZDy?=
 =?us-ascii?Q?/cfFjeC4KgGxw7kteMxnwx4QqrafjPAJZMLJKouz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f427cd0b-68a6-4fad-dd2d-08dcc27345c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 06:25:52.6864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HNqo9HcQsnfcxG0ir26VvDOezW1nCXXjiHzpbwD2h0GHft79hGm7gOKI+c2CqZlKQlGZSv9x//4aacGWsT7FJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8510
X-OriginatorOrg: intel.com
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, August 22, 2024 10:50 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Hogander, Jouni <jouni.hogander@intel.com>;
> jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: RE: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Wednesday, June 19, 2024 10:08 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Manna, Animesh <animesh.manna@intel.com>; Murthy, Arun R
> > <arun.r.murthy@intel.com>; Hogander, Jouni
> <jouni.hogander@intel.com>;
> > jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
>=20
> Nit: Typo in Implement
>=20

Wil fix.
> > To reach PC10 when PKG_C_LATENCY is configure we must do the
> following
> > things
> > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
> > entered
> > 2) Allow PSR2 deep sleep when DC5 can be entered
> > 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are no=
t
> happening.
> >
> > --v2
> > -Switch condition and do an early return [Jani] -Do some checks in
> > compute_config [Jani] -Do not use register reads as a method of
> > checking states for DPKGC or delayed vblank [Jani] -Use another way to
> > see is vblank interrupts are disabled or not [Jani]
> >
> > WA: 16023497226
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 82 ++++++++++++++++++-
> >  2 files changed, 83 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 46b3cbeb4a82..031f8e889b65 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1708,6 +1708,8 @@ struct intel_psr {
> >  	bool sink_support;
> >  	bool source_support;
> >  	bool enabled;
> > +	bool delayed_vblank;
> > +	bool is_dpkgc_configured;
> >  	bool paused;
> >  	enum pipe pipe;
> >  	enum transcoder transcoder;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 080bf5e51148..4ddea6737386 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -808,6 +808,73 @@ static u8 psr_compute_idle_frames(struct
> intel_dp
> > *intel_dp)
> >  	return idle_frames;
> >  }
> >
> > +static bool intel_psr_check_delayed_vblank_limit(struct
> > +intel_crtc_state *crtc_state) {
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	return (adjusted_mode->crtc_vblank_start -
> > +adjusted_mode->crtc_vdisplay) >=3D 6; }
> > +
> > +/*
> > + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> > + * VRR is not enabled
> > + */
> > +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private
> > +*i915) {
> > +	struct intel_crtc *intel_crtc;
> > +
> > +	if (DISPLAY_VER(i915) < 20)
> > +		return false;
> > +
> > +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> > +		struct intel_crtc_state *crtc_state;
> > +
> > +		if (!intel_crtc->active)
> > +			continue;
> > +
> > +		crtc_state =3D intel_crtc->config;
> > +
> > +		if (crtc_state->vrr.enable)
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> > +/*
> > + * DC5 entry is only possible if vblank interrupt is disabled
> > + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> > + * enabled encoders.
> > + */
> > +static bool intel_psr_is_dc5_entry_possible(struct drm_i915_private
> > +*i915) {
> > +	struct intel_crtc *intel_crtc;
> > +
> > +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> > +		struct intel_encoder *encoder;
> > +		struct drm_crtc *crtc =3D &intel_crtc->base;
> > +		struct drm_vblank_crtc *vblank;
> > +
> > +		if (!intel_crtc->active)
> > +			continue;
> > +
> > +		vblank =3D drm_crtc_vblank_crtc(crtc);
> > +
> > +		if (vblank->enabled)
> > +			return false;
> > +
> > +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder) {
> > +			struct intel_dp *intel_dp =3D
> enc_to_intel_dp(encoder);
>=20
> All encoders on crtc may not be of type DP, need to be handled here.
>=20

Ahh ohkay will add a null check for intel_dp here and continue based on tha=
t

> > +			struct intel_psr *psr =3D &intel_dp->psr;
> > +
> > +			if (!psr->enabled)
> > +				return false;
> > +		}
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static bool hsw_activate_psr1(struct intel_dp *intel_dp)  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp); @@ -
> 815,6
> > +882,14 @@ static bool hsw_activate_psr1(struct intel_dp *intel_dp)
> >  	u32 max_sleep_time =3D 0x1f;
> >  	u32 val =3D EDP_PSR_ENABLE;
> >
> > +	/* WA: 16023497226*/
> > +	if (intel_dp->psr.is_dpkgc_configured &&
> > +	    (intel_dp->psr.delayed_vblank ||
> > intel_psr_is_dc5_entry_possible(dev_priv))) {
>=20
> In intel_psr_is_dc5_entry_possible function we use psr->enabled and based
> on that deciding to return from PSR1 activate, logic looks suspicious. Ca=
n
> you re-check once.

So this is so we can see if psr can be enabled on that encoder or not which=
 will indicate we
We can enter dc5 or not and if we can then not to activate psr1 incase dpkg=
c is configured
=20
Regards,
Suraj Kandpal

>=20
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "PSR1 not activated as it doesn't meet
> requirements
> > of WA:16023497226\n");
> > +		return false;
> > +	}
> > +
> >  	val |=3D EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >
> >  	if (DISPLAY_VER(dev_priv) < 20)
> > @@ -907,7 +982,10 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
> >  	u32 val =3D EDP_PSR2_ENABLE;
> >  	u32 psr_val =3D 0;
> >
> > -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > +	/* WA: 16023497226*/
> > +	if (intel_dp->psr.is_dpkgc_configured &&
> > +	    intel_psr_is_dc5_entry_possible(dev_priv))
> > +		val |=3D
> > EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >
> >  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
> >  		val |=3D EDP_SU_TRACK_ENABLE;
> > @@ -1502,6 +1580,8 @@ void intel_psr_compute_config(struct intel_dp
> > *intel_dp,
> >  		return;
> >
> >  	crtc_state->has_sel_update =3D intel_sel_update_config_valid(intel_dp=
,
> > crtc_state);
> > +	intel_dp->psr.delayed_vblank =3D
> > intel_psr_check_delayed_vblank_limit(crtc_state);
> > +	intel_dp->psr.is_dpkgc_configured =3D
> > +intel_psr_is_dpkgc_configured(dev_priv);
> >  }
> >
> >  void intel_psr_get_config(struct intel_encoder *encoder,
> > --
> > 2.43.2

