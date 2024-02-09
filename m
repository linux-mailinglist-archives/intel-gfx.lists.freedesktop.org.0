Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4590184F513
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 13:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D77610F34D;
	Fri,  9 Feb 2024 12:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JqZccQP3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32C710F337
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 12:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707480793; x=1739016793;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l/554g4jjRGWe+vRVMADenHsAIDJTsF3UtmACtobJ78=;
 b=JqZccQP3UWNNDGRGyII5GCITQDmNn8qcKb2Gm+YdhRJAKZFagXVEV3qM
 B1WQgLpXkxedgU4BmVDl0XHTYydjZB6A0cA3K4KA5j0TphUIfj6WT3YUw
 SUFdpksk4M3DedvxEBrN/PdovsBVkKuGxu91uXFhpcVmBUt88LzXrpYP0
 tFUFulyBwGUdxvt5k2+DBkorzC4vzhTvgJeYf7RAGpWVDbxonHv5Q0+Xn
 6W7Np7SbOpgzyesGORRaBUyzqEu/f0XU5DP2NqvJqxfv8S1PiHW8Mb7uH
 LT54E+36+nQIwv5XlEs+lLOgutQwuR/rxCGzrdRmAcKV44uQVY6FCipU5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1551401"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1551401"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 04:13:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="39360586"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 04:13:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 04:13:11 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 04:13:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 04:13:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 04:13:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGFa5aCtuHckaXf/RUgO2wWt7+9Lgnyt/pCn3zQupvbDVhRSXhQ2aRPXzrlO4XXPKHMmYrz3+mFh6uTXZgQvIqaw6bYi9QV5upM81e9EavRhD4kplEZiRv/iN/pS4CErX7oDZ272dJPnfllim+F6q+7IST/VP1P5zcVNkL9u+zp14T/oaQVT/te0xtP5Hhpt53Fajee5ic51DW4atC2T8gSolerjXewvdI4QM0/RyEUNMPdKYwwUQPLGPliV52kUxQhJGjbhAPxTtEeIRU0e6FguRjPrLfJw+sIjApRbNND46f00IPu86csBYiGXZzgL9UqIblqwEyStmeBc2kaqXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/554g4jjRGWe+vRVMADenHsAIDJTsF3UtmACtobJ78=;
 b=fCG8nQ9Vfxf24BcLAFvI1UtpJIraXwJljEHSUfXBSoTcauIZ46RaLlX3gRDSAYpxNOU0se55RjSGCX6vcUTJZmenbHhb0L1aIsMKBvjky6ngzSzUi+oFPY+0flWgz4wVF3UBM+RwYSgepP9oWysdxseIUOmtl50i5VkoFppjd2sTM6vk/KQ6OEpiz8YWsfyqJGoNFrEfsfqcSyAEbvam6G14IITiXpxV/7DA+n8CMg9A4JeoHWxeq6Yh6V+1Uz+RzFTHaANxWC/d1orPRQiJ1IOIat6Y0Nfq4anxKMPZ+YE+CURc3UGvzVkpKjJ1MJmbsIY/Bm51O4Ni7q+I/rSZlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Fri, 9 Feb
 2024 12:13:03 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 12:13:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Topic: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Index: AQHaWMxp9m04XFnFyU2whKA1SeZXRrEBvO2AgAAtrDCAAASrgIAAALqA
Date: Fri, 9 Feb 2024 12:13:02 +0000
Message-ID: <MW4PR11MB7054E5C5391F47516CA1B31BEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com> <87a5oaatws.fsf@intel.com>
 <MW4PR11MB7054254B4B9C319878D99FCBEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYVTcvE4Z3mo88U@intel.com>
In-Reply-To: <ZcYVTcvE4Z3mo88U@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6795:EE_
x-ms-office365-filtering-correlation-id: 7a19c990-ac36-4694-1798-08dc296876fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6lg/s5YYaV2wQZ82a8A3ZFQ5cF7xAGzq4OQmXrsZyqj0XNfvHNT4CChIT/PsDJdbjWWhz5dI6Kpi26GcA20HRoc6/ggKDVkklfNhr3x+WGiAkgtFdDfYLLOqLTD6pSBJlK/lVyPXzSThnSmHcfh3wj+TwlyG9Tmh3GYGxGQgWtnc9eD/XQFOosPCmvh33zpJ9BAaCTvJ+PvWx97ukLsz9i4eSXAYZ1WL0mQpgsSONK1++WFWYWp8P9hgE8iEGBv9uaFp7czR9tDTREpHzO8qdjUd4NgUvtbrEz/noJXpjsy3EemAdsU1APfvmmKpW3m9wwyJZDDPb+RihwGr0P0zPxjJgneQgw5apLGFqnZ1jEV3T1PoVM5pQHWDYTpLCBPMFGdVZvE2wo34aNDohfNTkL/ue2rvkrYUo7tgUcUZ/szK6mnG3f0P+9l9RvnxYT539WrvX6+Y1zDmjInzltCkZ++xNPm6EWOd9w8Pi/CeWlz3YIMYsAIfqQr43VtbISd+F6ejKDMyBhoMIWCQKRDPBkt2FT+ow6NZqMLa+uSnuHG8Ms/IdUFfx9SpOQSVPASpzmSt1cMydUMr1X8J/uyqf0Y4ZFzwW+odlFWE9DzWJbxoesY2zUswooA0joSGUzJ1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(39860400002)(366004)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(66556008)(54906003)(52536014)(66476007)(64756008)(8676002)(4326008)(66946007)(76116006)(6916009)(8936002)(53546011)(26005)(316002)(9686003)(71200400001)(7696005)(478600001)(6506007)(66574015)(5660300002)(2906002)(66446008)(33656002)(86362001)(38070700009)(122000001)(38100700002)(83380400001)(82960400001)(55016003)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWZ6VWowbDhlYWMwL0NKQUQ0bnkyMzUwLzFVQVZPWWIwRVV4ZlhHbC9IdTRw?=
 =?utf-8?B?dUs2Y0d2cVNSQ2FSbDN5MlFvclpETmZlS1RXKzgxTmpMZ3N0L0tsREp4SDNL?=
 =?utf-8?B?eHZudkxEN0tDbHQwcFlyYVdSdmdzUUtMeFFjRmRvaG9uVlVwQjZJeGNjVEov?=
 =?utf-8?B?ZXU4UHMwU0ZuR3pTcDJrTUlGVlV5aHlNdGh0MTh2WDBlUFVFZkl6YlF2SUl2?=
 =?utf-8?B?YUpzNzhkYTlOT09EckhMRE9CSFhFZEsrQWdQZGtqaTBrY2s1bFdTejViNjF0?=
 =?utf-8?B?dlJZTFdmWTMwY1MvbVIrcDNwL2ZEbVFDQjZadjlxUmRyQkpSUHUveUVyM2tE?=
 =?utf-8?B?NGFvK09TQzRBaWlZd0ltU0ZWL0ZORldKL1VFdkR2N1loUEdkdWRvZVpQd1J5?=
 =?utf-8?B?enNmNFRJRk1UbFpzR0RoMnptTWdwSHdWOXFyMHJzL0owOHI4TVRDaDUwMkZq?=
 =?utf-8?B?aGQvM2thY2tYeHdEWVRFWG8wOXlsbVduV291SU5vcndaVi9WZElBZWNrU0tY?=
 =?utf-8?B?K0FkbmsvSVN6bnVGenkrcDFXb2x1TzBOZDZEbnozdnZuTGcwSkhVOGZGZHFD?=
 =?utf-8?B?cCtMelFSMHhyQnpJQ2dSUzVaZFl2M0FIRE9nQ2czSWJiLzlVM3ZjRXRYQ1hy?=
 =?utf-8?B?Z0ZOa2Q2S1RaenNlU2V0OUZIdWpqekI0cmdla1kvRUlQRVp1L3BJd3BVZEZv?=
 =?utf-8?B?ZW9Ua3RUTGVuMFZWb3Y5U1MrVi9DcmVVN2dYMWNvTzcrdHNMMlZoSlI5RFYw?=
 =?utf-8?B?aWE1cW5HdXMrdUZzTjF1WDBXRmFvN2hrZ0I5S0VSOEFBQ0YrY3JIeXArMkZm?=
 =?utf-8?B?VUN6WVV0RllSaEJ1VHQ4RnFkWnAyWXFrWjVNQWZoaEExRFY4R0NBWnMvbFdv?=
 =?utf-8?B?TVRvVW9BdHpXZ3hvcmRtc0d6QStkc3lCQTdXc3gxVFh0aWxmbnRrUzlENEpH?=
 =?utf-8?B?bFROK1ZCdElONEdjNC9YSzBWYWFqWk14Z09yeXZNYnF6NTU2RG5qdnhydkdK?=
 =?utf-8?B?c094U2FyL0p4ckJ2Q1RsWW1GUE0zVG1mckNRdnZzbkhWdTg0UndkK2xLazZ4?=
 =?utf-8?B?YkM0RHdVbDBwRkdiUk5QSWZrQTRXZ3VXdUtUa2E3enB0T0xydEZvT1JKdTBP?=
 =?utf-8?B?WE5QQ2hUWFIwY3ArVG1SeTRIaldwbkhmVzBNODRaenR2b3VZekwvQ2laZTJa?=
 =?utf-8?B?d2tBVEU4cEFsb0RRd0dqbFZOejBHODc5T3dzUy9pTkhPKzVYNXR4V09xTURw?=
 =?utf-8?B?ck9MTGQzcWR4Nkw2eHRmWW5QR0FOdE9TMzdrL3U0bnptdUhUcXNmZDl4RnRy?=
 =?utf-8?B?a2YzVDhRM3lsN0o0K21LazliY21qZGZINSs5V2p5RmlvVGgwYlF1eGVPeURn?=
 =?utf-8?B?M0I0N3UwU1hvNXRPZ29SUHBmTnk3aE1vT05RNHFQYStYWUpVa3hld2YzQk1j?=
 =?utf-8?B?d0pmZkVjQWNyalFLYXQveGJXM1dHVm8wc004dWJMMFhOMTNQLy9MVWhUSmc3?=
 =?utf-8?B?akFXKzd4Wmc1c29udEljT3o1N0VTa2FtR2pldFBkbmk3Y1hjLzhhSXFuOVhL?=
 =?utf-8?B?MVpBR2VuazdjL2Q1TnRCRjJveTZMT3VLdnBrRmRWK2xxSHNlY0UrRWtqZzhq?=
 =?utf-8?B?KzJ4Z0paTWgwZEhRRFEzMW1oODdBQlI5MHNhKzVLUDRCWSs4YXkyOXI3bWJV?=
 =?utf-8?B?OEZuN3I1STlBS1E3Vlhscm9SU0JkMDA0OE5sNC80ams5TS9heW9WNkUvUTYx?=
 =?utf-8?B?SStaYUc3c3ozYU5ZenkxT1hKSWNHQ2FZZjNHcEtlL29xS2k0U3IzTVBSWDhu?=
 =?utf-8?B?Ti9SZlJjV0tqSlN1T1F0QXE4ZEp5aHVhRXI1dUUzL21GOU9XWFdHOVpMWm9u?=
 =?utf-8?B?a0NIckFYdnpzemJKbFFpRUc4TlZYanpKVFZRQld6ZFdOVlFKTjVKek1TSDZU?=
 =?utf-8?B?ckhVa3hMSlBiRWpnZnJORlF3d2tnRHA1Vkt1aGFBaVlTTURlb0JkRjJmVUFp?=
 =?utf-8?B?Uy92bkZDZDdnU29BM0x0dG5iN1Q1MC9HUk8zODVkYlZtKzZqTG1vOUNKdi85?=
 =?utf-8?B?QXUrWTl4elNrSml2T0JLa01CQVJPRDNPMzk3Q3FtRkgvbCt4QTI1QVlhVWN0?=
 =?utf-8?Q?EswYgcwj/vTfJcojnMnMHJBjR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a19c990-ac36-4694-1798-08dc296876fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 12:13:02.9154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mVAibFnJK3fa99YaDNQru0dxjqOz2ui7wX9KHhbrBRnplxuiL0Kp95XAg8/R6UIzgsA1iQ3qA+9igN0xdT0qWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDks
IDIwMjQgMjowNyBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJt
L2k5MTUvZGlzcGxheTogRm9yY2UgZnVsbCBtb2Rlc2V0IGZvciBlRFANCj4gDQo+IE9uIEZyaSwg
RmViIDA5LCAyMDI0IGF0IDExOjU1OjU4QU0gKzAwMDAsIEthaG9sYSwgTWlrYSB3cm90ZToNCj4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBGZWJydWFy
eSA5LCAyMDI0IDExOjA2IEFNDQo+ID4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+Ow0KPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4g
Q2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCAyLzJdIGRybS9pOTE1L2Rpc3BsYXk6IEZvcmNlIGZ1bGwgbW9kZXNldCBmb3IN
Cj4gPiA+IGVEUA0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgMDYgRmViIDIwMjQsIE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gPiBGb3JjZSBmdWxsIG1vZGVz
ZXQgZm9yIGVEUCB3aGVuIGJvb3RpbmcgdXAuIEdPUCBwcm9ncmFtcyBQTEwNCj4gPiA+ID4gcGFy
YW1ldGVycyBhbmQgaGVuY2UsIHdlIHdvdWxkIGJlIGFibGUgdG8gdXNlIGZhc3RzZXQgZm9yIGVE
UC4NCj4gPiA+ID4gSG93ZXZlciwgd2l0aCBmYXN0c2V0IHdlIGFyZSBub3Qgc2V0dGluZyBQTEwg
dmFsdWVzIGZyb20gdGhlDQo+ID4gPiA+IGRyaXZlciBhbmQgcmVseSB0aGF0IEdPUCBhbmQgZHJp
dmVyIFBMTCB2YWx1ZXMgbWF0Y2guDQo+ID4gPiA+IFdlIGhhdmUgZGlzY292ZXJlZCB0aGF0IHdp
dGggc29tZSBvZiB0aGUgcGFuZWxzIHRoaXMgaXMgbm90IHRydWUNCj4gPiA+ID4gYW5kIGhlbmNl
IHdlIHdvdWxkIG5lZWQgdG8gcHJvZ3JhbSBQTEwgdmFsdWVzIGJ5IHRoZSBkcml2ZXIuIFRoZQ0K
PiA+ID4gPiBwYXRjaCBzdWdnZXN0cyBhIHdvcmthcm91bmQgYXMgZW5hYmxpbmcgZnVsbCBtb2Rl
c2V0IHdoZW4gYm9vdGluZw0KPiA+ID4gPiB1cC4gVGhpcyB3YXkgd2UgZm9yY2UgdGhlIGRyaXZl
ciB0byB3cml0ZSB0aGUgUExMIHZhbHVlcyB0byB0aGUgaHcuDQo+ID4gPg0KPiA+ID4gTm8uIFdl
IHdhbnQgdG8gYXZvaWQgZnVsbCBtb2Rlc2V0cyBpZiBwb3NzaWJsZSwgYm90aCBpbiBnZW5lcmFs
IGFuZCBhdCBwcm9iZS4NCj4gPiA+DQo+ID4gPiBBbmQgd2hlbiB3ZSBkbyBlbmQgdXAgd2l0aCBt
b2Rlc2V0cywgdGhlIGRlY2lzaW9uIG5lZWRzIHRvIGJlIGJhc2VkDQo+ID4gPiBvbiBjaGFuZ2Vz
IGluIHRoZSBzdGF0ZSB0aGF0IHdlIGNhbid0IHdyaXRlIHRvIHRoZSBoYXJkd2FyZSB3aXRob3V0
IGEgbW9kZXNldC4NCj4gPiA+DQo+ID4gPiBXZSBjYW4ndCB1bmNvbmRpdGlvbmFsbHkgZm9yY2Ug
YSBtb2Rlc2V0IG9uIGVEUCBwYW5lbHMgYXQgcHJvYmUuDQo+ID4NCj4gPiBUaGFua3MhIEp1c3Qg
d29uZGVyaW5nIHdoYXQgdGhlIG9wdGlvbnMgaGVyZSBtaWdodCBiZT8gV2l0aCBmYXN0ZXN0IHdl
IGVuZCB1cCBoYXZpbmcgYSBtaXNtYXRjaCB3aXRoIG9uZSBQTEwgdmFsdWUgd2l0aCBhDQo+IGZl
dyBwYW5lbHMuDQo+IA0KPiBZb3Ugc2VlbSB0byBiZSBzdHVjayBpbiBzb21lIGluZmluaXRlIGxv
b3AuIElmIHlvdXIgUExMIHBhcmFtZXRlcnMgYXJlIG1pc21hdGNoaW5nIHRoYXQgc2hvdWxkIHBy
ZXZlbnQgdGhlIGZhc3RzZXQsIGJ1dCB0aGVuIEkNCj4gZ3Vlc3MgeW91IGFkZGVkIHNvbWUgaGFj
ayB0byBhbGxvdyB0aGUgZmFzdHNldCBkZXNwaXRlIHRoZSBtaXNtYXRjaCwgYW5kIG5vdyB5b3Un
cmUgdHJ5aW5nIHRvIHVuZG8gdGhhdCBoYWNrIGJ5IGJsaW5kbHkgZm9yY2luZyBhDQo+IGZ1bGwg
bW9kZXNldD8NCg0KVGhhdCdzIHJpZ2h0LCBJIGZvdW5kIG15c2VsZiB0byBiZSBiZXR3ZWVuIGEg
cm9jayBhbmQgYSBoYXJkIHBsYWNlLiBJIGRpZCBkaXNjYXJkIHRoZSBmYXN0ZXN0IGJ1dCBmb3Vu
ZCBvdXQgdGhhdCB3ZSBjYW5ub3QgZG8gdGhhdC4gSGVyZSwgYW5vdGhlciBoYWNrIGlzIGludHJv
ZHVjZWQgdG8gZm9yY2UgdGhlIGZ1bGwgbW9kZXNldCB0byBlbnN1cmUgdGhhdCB0aGUgZHJpdmVy
IHByb2dyYW1zIHRoZXNlIFBMTCB2YWx1ZXMuIEFzIEphbmkgYWxyZWFkeSBtZW50aW9uZWQsICB0
aGlzIGlzIGEgbm8gZ28gb3B0aW9uIGFzIHdlbGwuDQoNCj4gDQo+ID4NCj4gPiBTaG91bGQgd2Ug
dHJ5IGlkZW50aWZ5IHRoZSBwYW5lbHMgYW5kIHNldHVwIHNvbWUgc29ydCBvZiBxdWlya3MgZm9y
IHRoZXNlIHByb2JsZW1hdGljIHBhbmVscyBvciB3aGF0IHdvdWxkIGJlIHRoZSBiZXN0IHNvbHV0
aW9uPw0KPiA+DQo+ID4gLU1pa2EtDQo+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4gQlIsDQo+ID4g
PiBKYW5pLg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMyArKysrKysrKysrKysrDQo+ID4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPg0KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IGlu
ZGV4IGFiNDE1ZjQxOTI0ZC4uOTY5OWRlZDFlYjVmIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IEBAIC0zMzE5LDYgKzMz
MTksNyBAQCBib29sIGludGVsX2RwX2luaXRpYWxfZmFzdHNldF9jaGVjayhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gIAkgKiBvZiBjcnRjX3N0YXRlLT5kc2MsIHdlIGhh
dmUgbm8gd2F5IHRvIGVuc3VyZSByZWxpYWJsZSBmYXN0c2V0Lg0KPiA+ID4gPiAgCSAqIFJlbW92
ZSBvbmNlIHdlIGhhdmUgcmVhZG91dCBmb3IgRFNDLg0KPiA+ID4gPiAgCSAqLw0KPiA+ID4gPiAr
DQo+ID4gPiA+ICAJaWYgKGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpIHsNCj4g
PiA+ID4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIltFTkNPREVSOiVkOiVzXSBGb3JjaW5n
IGZ1bGwgbW9kZXNldCBkdWUgdG8gRFNDIGJlaW5nIGVuYWJsZWRcbiIsDQo+ID4gPiA+ICAJCQkg
ICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUpOyBAQCAtMzMyNiw2
DQo+ID4gPiA+ICszMzI3LDE4IEBAIGJvb2wgaW50ZWxfZHBfaW5pdGlhbF9mYXN0c2V0X2NoZWNr
KHN0cnVjdA0KPiA+ID4gPiAraW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gIAkJZmFz
dHNldCA9IGZhbHNlOw0KPiA+ID4gPiAgCX0NCj4gPiA+ID4NCj4gPiA+ID4gKwkvKg0KPiA+ID4g
PiArCSAqIEZJWE1FIGhhY2sgdG8gZm9yY2UgZnVsbCBtb2Rlc2V0IGZvciBlRFAgYXMgbm90IGFs
d2F5cyBCSU9TIHdyaXR0ZW4gUExMDQo+ID4gPiA+ICsJICogdmFsdWVzIGRvZXMgbm90IG1hdGNo
IHdpdGggdGhlIG9uZXMgZGVmaW5lZCBpbiB0aGUgZHJpdmVyIGNvZGUNCj4gPiA+ID4gKwkgKi8N
Cj4gPiA+ID4gKwlpZiAoIWNydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkICYmDQo+ID4gPiA+
ICsJICAgIGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gPiA+ID4gKwkJZHJtX2RiZ19r
bXMoJmk5MTUtPmRybSwgIkZvcmNpbmcgZnVsbCBtb2Rlc2V0IGZvciBlRFBcbiIpOw0KPiA+ID4g
PiArCQljcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ID4gPiA+ICsJCWZh
c3RzZXQgPSBmYWxzZTsNCj4gPiA+ID4gKwl9DQo+ID4gPiA+ICsNCj4gPiA+ID4gKw0KPiA+ID4g
PiAgCXJldHVybiBmYXN0c2V0Ow0KPiA+ID4gPiAgfQ0KPiA+ID4NCj4gPiA+IC0tDQo+ID4gPiBK
YW5pIE5pa3VsYSwgSW50ZWwNCj4gDQo+IC0tDQo+IFZpbGxlIFN5cmrDpGzDpA0KPiBJbnRlbA0K
