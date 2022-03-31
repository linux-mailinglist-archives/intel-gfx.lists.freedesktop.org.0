Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5774ED599
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 10:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8250310F69C;
	Thu, 31 Mar 2022 08:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2CA710F69C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 08:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648715294; x=1680251294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=arCj+uRxKeCrf3xELs9Fgw81XaYt4Ahu7fnaL6ffpII=;
 b=Csajj/xEuL1mLTzAr0UptuV14tTpdsHakI9SeT4otFV3h8gcsro7Fc79
 ETvlu0EgG4gZN33qeXGk/HqAGB54sanQEmFfi1mSuNl+sjXMvGtO3c+8z
 hzutuzeMDgQW1S9I1u1QQjj5RDb6JuG9JfvLtopLFuBFBjw6IyQIZh1Gx
 7Fx5mKfePyesLMGHIew65hCFZmNpfy3ppyJVlqgrbjqXi5/KnPdK0PkJz
 O9OQlMWTPB8vkwD6b9Swp6qqaHnO+wdIWirSYCq1qOKZFfzDEieGI0HNf
 vXBKAhBcSRX7/kmReJYELdeYpFMW9taIRRIjpOJkqzpS/K349aKRV7sQf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259732419"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="259732419"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:28:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="554987973"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 31 Mar 2022 01:28:13 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 01:28:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 01:28:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 31 Mar 2022 01:28:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 31 Mar 2022 01:28:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdE2YnrE7kV38Wva0loOmzktpycweBlKqvtnBeTCPKJChPpcFOwT0Lw2NiSHC2Z2IRiBrIzLljeL9rSB3vsTUuM09W5eV6pmu0HhuqvxQN2q0H37ZRhVy/f7nacyPkRLc3J+si2sHUwE9aWoA3qizRU9cK9JwyKKaZqEupxpQYQtaLquiUrvueyzC16vkCR0ZLF8xxNvdZCm1nCz+Cw7vV+plw8VWrVmdt+YBBv8nL1BpLHzIDvS6m7ozy/aUdJSqplvVIkBCJ2WBqPbjqfPBp6gzi/BvIUpwDIa5IydjrVUnPTaN1ycSkQTUHVvAZda/zFVxysSlT30fvFGDYL2fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arCj+uRxKeCrf3xELs9Fgw81XaYt4Ahu7fnaL6ffpII=;
 b=AV/QrirWEWEFKDRmLOjMMeGqb8ds5X+oMIRcphB2qSF9SWCkN8NWp1Dz9ci3GN8O/0yk7xs8M1fu9MBmVLR3D1jErjzAeYMd0DhqRq7xTa6tx07aH0z58IrHubzzBZdAAJzaO+pMfDXI+XkFSsAkY/zfIk8Qnx/Q56no1mS3UZq6OfMGp9mMlV4OseYYSpK8xos3KWuvgtKCiueYpi+Q4T5TCC1tRGsp7W1FudUnUBwLSlHOI9wrVsp/E9AqU4ozwG1IqO7bmHoIRJwVrmLs9arRbxDLV8pZYjmytxuxYO8cRknVsqbXLlWdLySQu85qWfjyvkmYH5IHMUFnFuCmZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by BN6PR1101MB2242.namprd11.prod.outlook.com (2603:10b6:405:58::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.19; Thu, 31 Mar
 2022 08:28:09 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::a96e:2092:a300:ef2]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::a96e:2092:a300:ef2%7]) with mapi id 15.20.5123.021; Thu, 31 Mar 2022
 08:28:09 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, Patchwork
 <patchwork@emeril.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBzZXJpZXMgc3RhcnRpbmcg?=
 =?utf-8?B?d2l0aCBbUkVTRU5ELDEvM10gZHJtL2k5MTUvZG1jOiBhYnN0cmFjdCBHUFUg?=
 =?utf-8?Q?error_state_dump?=
Thread-Index: AQHYREn4Wx38+mBOtEirrF10sOa4/azZKMfQ
Date: Thu, 31 Mar 2022 08:28:09 +0000
Message-ID: <CO6PR11MB563617D3D6FA4472A9FB66A4DEE19@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20220330124119.224966-1-jani.nikula@intel.com>
 <164864512219.8653.2654209743690297581@emeril.freedesktop.org>
 <87o81nbh3p.fsf@intel.com>
In-Reply-To: <87o81nbh3p.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bedd729-a53d-41be-ee34-08da12f06366
x-ms-traffictypediagnostic: BN6PR1101MB2242:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR1101MB2242E1EB65258E51D2F01592DEE19@BN6PR1101MB2242.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vMwYw7W6AL+jK6I3wTKquJ9901K4YOLZjp47HCr5oy3jJ91ftnlH7/aXIHlOYGRWLc2EI5c9V1kVKibKg95HshKO4LW13bhuXnB/4bscIyknWuqyU6evh5SRtkDS5beKlwV7Qz2aOgUm3M5Ge2EhKhfz5r2RyCOjpm7l7Qxb7AlcT1e/CxebRYmGPn4SQGAkbFE9AXtX7fI8rCuXPW0hOhBtP4y76c8yPbkn9vVJcjvy1KjuZ80ducbesizNeIufTmBuoUH5oFtKQh7xdQNnN1YV0DOzk8T23cJwNMq66elOq/s9omcuacY9MtYHkhL9v4wMUJdWWVMVx+cMWy0IA78SXZcWig0xuJ9UyKTTgWb6EVI+ljWXvjbZi5fW8N964cg7OdrSpefh+03IzbZvlWRD6ba1f+sWta2m7sVKEOLlGnBNY5A5lOiuQ3vMc/AHWh8LCewxhrp9VgIzFSYXt9uvRJDIO2w06hsxzp4U3fevotagcZZdnA4NzZ9brANaCZrrHnhJBW6acu8bc4EOZqxByPLBtWOYdXrqurPseCunLDI+IsK7kW5BKxux65xnpQ2Ra5FQc5TOy0/DG6KBNYqHHS4exdNKZSEAPGeOk34ROUCBuq3jsxN9el3UWXzHNtNrLL9f73svEOEfNZwzJoE7wcWNxZP3H3sAPweUfPRTh0fOcI+3i9EYeqlAt0ItyvUyC4kh4m2KSceoTSaGMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(38070700005)(316002)(9686003)(26005)(6506007)(110136005)(82960400001)(38100700002)(33656002)(86362001)(966005)(186003)(55016003)(64756008)(66556008)(5660300002)(4326008)(66476007)(66946007)(2906002)(122000001)(508600001)(71200400001)(76116006)(66446008)(83380400001)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEdqZTF3bXljS1ZyR2RRUGR1Vkt0M2I1U01QYXFVaVBybWVFa3lha00xL2hu?=
 =?utf-8?B?ZjZFR05RNWYzNmRMdWNxVGxuejkxMzEyenhvcGxmM09oWVlJUEdNUVBtMkFy?=
 =?utf-8?B?SlJpbWw2SFFncUR4UXpPcVZpOVlIK29jRVFkTU1MRll2Z1BLS2lsVlV5QjZG?=
 =?utf-8?B?eG9uUFVPL3p3UURZOVl0Q0VZVmtINWd2dHhRR1czK1d0MVY4WUJWWkFEblhw?=
 =?utf-8?B?S1BsMjJYNWh3M25pb0hYblNJNDN2ejRQcU1ncENCSC81cEJBUG9BMWNFOGZo?=
 =?utf-8?B?R1BXOFBqQzJOcEtNaDVUaG5uQi9YTkZjZ0tmVFpLcU4vckhMZm14STN1R0NX?=
 =?utf-8?B?S0dpK05GOVVpK0tHTVlIK1YrdGVVOVRVQ1MvMWhGWDhRa29OSFFUZlp1OWlN?=
 =?utf-8?B?NHVqQ0F4dHEvQzZMUWZiMEpWZU1FN21CNGNlamxZWitYcGx4dEdkdjB6VVIw?=
 =?utf-8?B?aXJldU5vaC84YnJUd2FJYWhJWkxWaDBHdk1IeG9WWGlURzVtWU5wMm8zSGNQ?=
 =?utf-8?B?Y0dLZDlkN3YzbW1CdjNWcFBqTEkrUGZ5VWhUMElSckd6a3BYNThaQWNCbTVI?=
 =?utf-8?B?eDdHc0hkRktEekIzUE8ydTJkaFNZVmk4RHowdk5pWXM2K1ZlS0hUOXVhWVk2?=
 =?utf-8?B?QnpwcjNqUEF0MkZLc1VDQkFzU2djcmxSaEhOTnZBb2pOZkZLVFdRMFh1eHJ3?=
 =?utf-8?B?NUdoRHJydEZFZndnUFM1NEkrZ1hlbVhRbDVmY2VIOHBjdnFmUnhuN05iYVVk?=
 =?utf-8?B?TzFCcVRWNG5MWGxNWkFieE02OFpTVFdtSFNSV05nVFI3UWVLa3V2YnFqSExi?=
 =?utf-8?B?d0Y0djErcWZscEJlZ3BSK3NYemducTB6Y2RuY053M1RTRnd1L2JNMjRCNzBr?=
 =?utf-8?B?c2pyZS9XK0krYmRLK282bzhEZFVRQlVMY2gyZEtJQ0VIYzFVanhMWUJiN0pE?=
 =?utf-8?B?aGhzR3dZSGNaTFN1UWZoZjdTeDg4bUJYNGxtZnFuY3dvWHFBTUh4MmlZTWdX?=
 =?utf-8?B?dUx3V0trc0dROFVsQ25NWGYvaFV4bGVZcVFjT0xSRFdqai9BWDNjdnJUMjdB?=
 =?utf-8?B?a0lzb0k4dlFoSEorZWdxVVJLeVB4Z25TaGM0Ukw4dTRIR05OcThRZjZ4Z09z?=
 =?utf-8?B?VnNEdEpvZUQycVM4M1Q0S29rbVRJV2tMSndQQ2ZveC8rZUM2ZXMvSFJpN3Vv?=
 =?utf-8?B?VVl6bE5yNUZnbkFiNWEyK2ZEQ3RsazF0MjJYQ1cyMUZGeHpRYkZ6TXBZeGc4?=
 =?utf-8?B?aUYxcXE2d1NLZFdOSU10UTRXR3NxYXIzS2hBcEVmWmU1VjZmd0RZbTJNOExp?=
 =?utf-8?B?SktLMDNCdFJpRGtieHljR1VKY2hFMXB0RzgvTXJwZzVRam0zR3NEWUp4SUpq?=
 =?utf-8?B?dHM5RHg1bkJWR2tRNDJlai8xdVh1alNhNkRhY3Z2R0ttbXdadlkvTXpyLzFh?=
 =?utf-8?B?bTRyMHBqMUU0eG1jckJBakU1V25semYrSFdIYmkyd3J2dXlqWFFlWDFKQjV0?=
 =?utf-8?B?ZTBDa0gzbEhISXNmTUNvMzhlNlR0SmFlb2FuZng1VnpkdUh4VnZ5ZGM4RlNk?=
 =?utf-8?B?TmpGdEhPMk9XN09BbDU3MnE2SFd1NGF0d3lvZkplc1FGeDArdzJZMmVlZUlX?=
 =?utf-8?B?bzRtY0JrUWdrbkZSa2VIU2ZQeXRacXhFTmg4OGZkZnNQVU1Ddnk5SGZZWHRB?=
 =?utf-8?B?VVIwZHBvOU1VM3ZHTzFNaHlvd1lPb21QK0RLbHJRczN0alZWWS9BcU5Rb3lY?=
 =?utf-8?B?ZnMwZ0xEQ05ha0I1QSt6QTBGTE4reUtYOU45WEFHSzAwQXNmMFVrbnR6RW9z?=
 =?utf-8?B?OXJxQlc5NEtTUnhLUEw3cWJSa1ZuNmthWG1NR3BqWnJnUk1jTHhpTWlESFRE?=
 =?utf-8?B?Sld0RTVlaENiZG8zSkdwbDNIUFVKeWZKNXM5OFhnbVIzMmlvUUR3MDk5SzNK?=
 =?utf-8?B?RWRZbnlteElhQng0VVVoRFh4b1FQa2NuN1R4ZmY4NDRaTC8rY1FJcVhyNlpT?=
 =?utf-8?B?QWJQSWFJQ29Mb0hNY2RjdVRjWjg5cHhvd2JSa3ROZVBLa3R4cXNrS3Y5cERo?=
 =?utf-8?B?Z3dUMHVGbGlLb0ErOC9SaWlJSi9Vbm5SNmY3VkhGVkF5T0NNZElUQnlmMCtB?=
 =?utf-8?B?WEJBSTlESkRHNjNEQ3lSYnRVazhwaGgyMEtTeFd4MmJ4RlZXWkpzNXNOZlZl?=
 =?utf-8?B?OUJ5Z0sxZ3R5cGF4QVc3TnVUejNZbXhvK3ZEa0VYTitDVU5td1lrbWNJeDN2?=
 =?utf-8?B?VlZpNXArRTZ6UHVkR3FKRW1KazRUQkJqRG82ZG5aSTJrcUZlRUhZbWpwcElh?=
 =?utf-8?B?cnNEK1AwZDlFbDNzYTYyVk5udkVuWnVqOTFWQlhmd0ZJNFBGZ1pZTENva1di?=
 =?utf-8?Q?MSYprkYWjDH70kv0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bedd729-a53d-41be-ee34-08da12f06366
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 08:28:09.5018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QsYsVFC7aeQTdYC9ahOir8A7DvDhHk1D4xe57/KgKq7HJNiWiuR765GnGUYV2pQdiagDmOUAegs6mU4KWBihD2K4eaanNtVwKKTBe7CBSXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BRESEND=2C1/3=5D_drm/i915/dmc=3A_abstract?=
 =?utf-8?q?_GPU_error_state_dump?=
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

VGhlIGxhdGVzdCBDSV9EUk0gYnVpbHQgaXMgMTE0MTY7IGFmdGVyIHRoYXQsIHRoZXJlIGlzIGJ1
aWxkIGVycm9yOg0KZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2d0dF9tZ3IuYzog
SW4gZnVuY3Rpb24gJ2FtZGdwdV9ndHRfbWdyX3JlY292ZXInOg0KZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2d0dF9tZ3IuYzoyMDA6MzE6IGVycm9yOiAnc3RydWN0IHR0bV9yYW5n
ZV9tZ3Jfbm9kZScgaGFzIG5vIG1lbWJlciBuYW1lZCAndGJvJw0KICAgYW1kZ3B1X3R0bV9yZWNv
dmVyX2dhcnQobm9kZS0+dGJvKTsNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefg0K
ICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9lMTAwMF9tYngubw0Kc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDoyODg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZ3R0X21nci5vJyBmYWlsZWQNCg0KVGhlIHBhdGNoIGlzIGFw
cGxpZWQgYWdhaW5zdCBsYXRlc3Qgd29ya2luZyBidWlsZCBjb21taXQuIENhbiB5b3UgdHJ5IHlv
dXIgcGF0Y2ggYWdhaW5zdA0KIENJX0RSTV8xMTQxNiAxZGMyYzY5NTNlMjY4OWEwZTViN2NjYTg0
NTBkYTE0MDU5ZDM1ZjAzDQphbmQgc2VlIGlmIHlvdSBnZXQgdGhlIHNhbWUgZXJyb3I/DQoNClRv
bWkNCg0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gDQo+
IE9uIFdlZCwgMzAgTWFyIDIwMjIsIFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVz
a3RvcC5vcmc+DQo+IHdyb3RlOg0KPiA+ID09IFNlcmllcyBEZXRhaWxzID09DQo+ID4NCj4gPiBT
ZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFtSRVNFTkQsMS8zXSBkcm0vaTkxNS9kbWM6IGFi
c3RyYWN0IEdQVSBlcnJvcg0KPiBzdGF0ZSBkdW1wDQo+ID4gVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEwMTk1Ny8NCj4gPiBTdGF0ZSA6IGZhaWx1cmUN
Cj4gDQo+IEkgZG9uJ3QgZ2V0IHdoeSB0aGlzIGRvZXNuJ3QgYXBwbHkuDQo+IA0KPiBJdCBhcHBs
aWVzIGZvciBtZS4NCj4gDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+DQo+ID4gPT0g
U3VtbWFyeSA9PQ0KPiA+DQo+ID4gQXBwbHlpbmc6IGRybS9pOTE1L2RtYzogYWJzdHJhY3QgR1BV
IGVycm9yIHN0YXRlIGR1bXANCj4gPiBVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEg
YmFzZSB0cmVlLi4uDQo+ID4gTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jDQo+ID4gTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+ID4g
TQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jDQo+ID4gRmFsbGluZyBiYWNr
IHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uDQo+ID4gQXV0by1tZXJnaW5nIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMNCj4gPiBBdXRvLW1lcmdpbmcgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiA+IENPTkZMSUNUIChjb250
ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kbWMuaA0KPiA+IEF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RtYy5jDQo+ID4gQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBpbg0K
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gZXJyb3I6IEZh
aWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4NCj4gPiBoaW50OiBVc2UgJ2dpdCBhbSAtLXNo
b3ctY3VycmVudC1wYXRjaD1kaWZmJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaA0KPiA+IFBhdGNo
IGZhaWxlZCBhdCAwMDAxIGRybS9pOTE1L2RtYzogYWJzdHJhY3QgR1BVIGVycm9yIHN0YXRlIGR1
bXANCj4gPiBXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0g
LS1jb250aW51ZSIuDQo+ID4gSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAi
Z2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4NCj4gPiBUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFu
Y2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLg0KPiA+DQo+ID4NCj4g
DQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIN
Cg==
