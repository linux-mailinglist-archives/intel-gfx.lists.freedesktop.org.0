Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978FD63CC50
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 01:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A72A010E3F3;
	Wed, 30 Nov 2022 00:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E4D10E3F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 00:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669767041; x=1701303041;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YfMIV1lfwZiFKJpLsaCOd0qKTqcmsXKE1DwyTa7iNuk=;
 b=YcLw2YHr47ied7xEqL/rdqp+dAgRi9bNXRBP85Mrdj4TMFwZ/X55Lbty
 1XBaceaxnlfl12uZCem10e+ZdxnAF5rVXTJ8UMsNOsUXw75i1NOqfuO8e
 nmPRb69YcrUklWutyMc4ptdGyDP9M8tKyIAhPWbGzYYPZhp3N20uSt05f
 uv0ToN8ifJcl673Vdh39OAqTw+2bPQ/ht3LRh5K4gOJCE44uqDoEvmWJ0
 Jtg+rX7Cm5tmYgqld0ijfzCalxnafSznv+gUHPv2duP5i3AzkYK6aHS3w
 5Dc1n80NYLdyWSdl34qPpvPp51Rz7/7Tk/Tv6kYYQIEBKQ/Vj1+MSGH4E A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="379547031"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="379547031"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 16:10:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="712594016"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="712594016"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 29 Nov 2022 16:10:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 16:10:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 16:10:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 16:10:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 16:10:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AUr25HF8d2WXbjjxfNvyOWkRgY1vf6AcqxAdoNbH1Ow+BUF264bZoVh58jW3L+UOiMsa8LyIBJMZtGdHrUMIjwIzS7e5pziir6zrGWBiVmSy6m2GG2VI2nRx3DFEdKw0b0UCN8gwxVqRAT1/MzhpNrlkkJGxFoyF0y+LePoyTqgF3zqWWBhZfqJ1+Z+MocTlpM5Bg4/EC8Tow84yZs602UCTjoy83XkIbQgQ9NGwNyRcEn0ClUzlnadCvzWxtMB2hjvvLKwXPr+wsLSC9GJp0xqUn2Y07e1s6PAR75ExupotVz6haC4r2RXlpeMX5+8DxIOUoyR3pkhcTNSQDvnUNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YfMIV1lfwZiFKJpLsaCOd0qKTqcmsXKE1DwyTa7iNuk=;
 b=LMTZIcgTfwQH2MFnTNKw4uV+emsSlqiNvfsA5O5JN/BUVdTjbzPjDT6InQDj3eMD6LJyzPVMi40Iz2+UgiQZ776jAionuA0G/lvuFHJ+/T8EzW42bsJ0BZZJvYd0hb1I7zRqEJS4Rw4fxNS7trgi73us2wZyVRHaWwUz0klLIlfYj9eMLUkCyIUAHRih8n+Ns9D1kPwsBBflKDMjyslZHqGUmmWbNKfgqFtUAjufimAQ8oDa+6Gm9US4yyA/vcR5l/gbOoG+9U8zn3198+DxFy9XaLxfEAY3ui1pJKhjMxe06np0l4GN/c9sLz3tetQBUvrov0YzTxSah6AqRFkSEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MN0PR11MB6182.namprd11.prod.outlook.com (2603:10b6:208:3c6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 00:10:36 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 00:10:36 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZA4nHZz/omAjLo0WDAgip6sYJSa5Wa+EAgAAuEwA=
Date: Wed, 30 Nov 2022 00:10:36 +0000
Message-ID: <f7eeaed53842bdcae62e3fec9dc3fc879189afd5.camel@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
 <Y4Z5ajHrt3hllvUZ@intel.com>
In-Reply-To: <Y4Z5ajHrt3hllvUZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|MN0PR11MB6182:EE_
x-ms-office365-filtering-correlation-id: 67ebc478-6383-455c-9420-08dad2674e43
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5YkTm469jQuuTa+f8l6ijfVXOS5tG13Me5oKQAbTqT/yGfkecEvktI9VVKDs6Hov9sxuSebrwxHPK7E6P0H7FtZMQUzgZHJile3fRDK8/TinWnCTVlcaj4uqklAaDMl1eIcn5KpaA/gka77EPSPv3pgzT+56HVu+xGcN24q5AqPbhv8G8jPfQB8YvCLw5LaZNlAfQ4nIS6vb2IcuM3OSsbxzx2XGntWa4A9/1zQJ8GqLHGi07P53PMi4bFdDYC1eMa1EHfe6fbhEJ64NXSPKJdkcryUk79I3Ng9AQFTK31ZUWk7YUywhNxxs1BWfKgCT8XDv5ry1Vw3mdS17IYM9B+Rk+e72rOkPbrgk9qjNfH8vUoF3pu6bDmxoanw3wqgiCefMpYk7KVkUOvfOOawu0juGjX1fmL2iSiPTrTokMILaU8nRAyPZPDgpnouVF1vEp+LEKxG9UO6Eii9L+foO2gek27SN2w7WD5nR6X8VkLW7riI71JCxtKG3wP4OqvarKaABk7Js6WgHEu9xCtMqsAMINcQML5HTlOorlx2GOzMqMFOdv4A+7QgoUQR+zs0KhK2tqZ6MW80nHmdmOOzkE+D2dd4qUersJ1R+HAetBEEAw88AOfz3ACskbP4T+sYBc+ZOh0aNWikNtO0AhOUuca5MIal/dZH3Fqb6U3/ERHUpfRMB2Zn6t29gvNEqlIMniQj5Sb9lMmIfFp8dIOaPZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199015)(122000001)(83380400001)(38070700005)(86362001)(38100700002)(37006003)(91956017)(82960400001)(4326008)(76116006)(66556008)(66946007)(8676002)(64756008)(66476007)(66446008)(54906003)(6636002)(4001150100001)(6862004)(2906002)(8936002)(5660300002)(41300700001)(6506007)(6512007)(2616005)(186003)(6486002)(478600001)(26005)(71200400001)(316002)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmM0R0p1NzNqM3lxaDRUam9XSU9SZlNqWHMwc0hmZDJUcnVvL3BKMExmbVZh?=
 =?utf-8?B?V1pMakRHZ3FIdDVpRzgvTUM0YmxoVXRlSGg2bDhyQ3dpSVBLYTREUWhxSGho?=
 =?utf-8?B?SUl2VHp6Y1N1eFIzalJObDFoUld5UzcyK0EzbnFOTnVxaWhwd1FCME5GZnV4?=
 =?utf-8?B?Yy9oWW9DZ0FGRTAwaU81aWl5dHNhMk81aHVWR3R5cFFETGNza25nZXMrSEJJ?=
 =?utf-8?B?TVdUcWNBL2p2Y1F4WVJOelc0QkdYdStHLzAwb3JJMmpxdExBRWFzQnlUVll6?=
 =?utf-8?B?RC9JbC9ZYXVEOCtaRnZqcWg1NEUzdEtib1Y5bUcvVEc4N1gzNE9tSnZDT3dI?=
 =?utf-8?B?bnE1MnZycUhBNGhaejZ3aFp2S1dZb3RsVlNjcDQ3cSsvWjJCdEhKNm9sRmNY?=
 =?utf-8?B?OG52Vysvd0Q3N2Z0cW0yaWxaY2ptMlB6YitoS0pFYmJaZlRmZHdxQnNTaUpJ?=
 =?utf-8?B?R0NGTlhJcC9Hb1Z6Y0dWQzY2T3lEZGlBV1RHcUR1aTVtelNmSXFqenljUFpF?=
 =?utf-8?B?czE3SGJpUUpjc3lkaTk5NVhicGRaSWhDMlQ3T0xXdFN0WXJlVysxWGpKbzIv?=
 =?utf-8?B?UVo0bkVsSWRNOWVZSTh6OWZjRnVuczBGNklxaHN1eUk1WDRSM2tSMWRuem9k?=
 =?utf-8?B?aGowVFZDU0VVZm5tVDcxZ0JvMWVTVlhPdFJBb2hBZ1ZwUXdoTW4rdmx3d242?=
 =?utf-8?B?YXJJOFVkU05iKzRadldLd0ROVEU4SUJqd0tHVmpEYU56bHA1UFZlYWpmQWNz?=
 =?utf-8?B?QmZLNXp6Ly90TXRQSXdxYllNSlU1Njl4TWl6YkZHWlg4Q3V0NXoyb0czU09E?=
 =?utf-8?B?VWc0dldDQzVyOFlNY0hvcVp3L2dNVDZkVVpDNFlGa0txYmI5YTBEUWJZWnlQ?=
 =?utf-8?B?VjViQ3c4RDJEdnJnclpnbWx1RFV2aWtSYjdKWkNtTUNpTWxGb0lPOVFXZ28y?=
 =?utf-8?B?SFkvQ0ZnNlBhdmsxakMwU1JleTVMUUpkRkRyeENUVU9VNnFSQVVqejRrV0FT?=
 =?utf-8?B?Y2gyVmVBc0p2YkNIVi8rRGxNUWwySW5lWjZUVWRUZTRZVllGNzk4S2d5QmR4?=
 =?utf-8?B?ZGFPanQyRFRiSHNlb2prakMzcDl6QjU5WUdFSHdQUDFrUnloYjJLc3pOMml2?=
 =?utf-8?B?YzJHUUNURTBoUERIOUJvdHY1Vk5hMm9lUy9sOFhUVzBTMnhmK2JRMmorUEQx?=
 =?utf-8?B?R3RYV3NFRjE3ZFRvbkduVlhyamx3NExRZWhQTlVDbktLRHJmNlUzbFlJZFZs?=
 =?utf-8?B?WnQ2Z050dndjQXp1Y0xFRE9JQ0dJNUwzWTZTOXFhcFJXcCtJQ0x4MjVIUWdD?=
 =?utf-8?B?elhZd202U1RTVG5MRXIvM21QRW42TWFVTHgxVFE1THBoWXUyWFhFdHNVRWp3?=
 =?utf-8?B?R1o5ZXkwdUxlMVZpSC9xYmZyYWJhYlgrOVRVaS9ncUNQVTJZQW1uMUJQQ0JV?=
 =?utf-8?B?eWxFWm4yb0dTQXI5cmV1dHZNL25tVWVpbW5MZVZUMERTbnAzc3d4RXdiU3ll?=
 =?utf-8?B?dXQrdklIUk9vTjgxc2NkSDVnVXJPYTA0NFFZOFRtdC90Z1RseHhnN085YWVa?=
 =?utf-8?B?dnh2WUllaUtZNjF1RWtZb2p5UGthYjlwTjdMc0lIUzFGanJicnZPUGl5N1o1?=
 =?utf-8?B?MmdaN201QWNCbVI1MDFmMTdqSjJwSkMyVFo4R0RTRUk1WnBNZHBhK2VNK0xs?=
 =?utf-8?B?WWdtZHZiaUdhSldZaGlSb1RmOWRvdUpacTIyVHVHbGpVZ0xoZjJCcW15L3N3?=
 =?utf-8?B?WnlEUzFSczVRZWpZa1ZqZks2RUpEMGp2SDhyVEwra1Z3eEd0S0crOGxaeXBo?=
 =?utf-8?B?UDQ0dkFaWmJXaVhISllkODZKL0xxQUZXcEZ1eDQxd0Z6d0FZSHdqb1prclRi?=
 =?utf-8?B?aC9FcGtaQWJidUovRU1XZTFmTXNPSmdaMlV4YVR2QkdxVG0yMCtWUUVuTDl4?=
 =?utf-8?B?RmlFZE5KV1Z3MGx0TFBva1UzR2ZMbUxGdklKZW91VWpORDYyTkV5VXhmaG9S?=
 =?utf-8?B?QkpxUHduUnZEK3l2QVArWFBwTTg0WVRTT243YzNPaVM4QnZmU3FWcGR0OHQv?=
 =?utf-8?B?TzRuOHVmU2dNQmdGM3VsWHFTNzIvTU5xbWxMaDd4eld2UjV1WHJ1VGpVd1VN?=
 =?utf-8?B?a3IyOEllbXpJZ0s4a0MzT0NYOVMyaUl5MW5vVDJLMlBTNW4rWm9HdjUrU2x2?=
 =?utf-8?Q?qlSMkRscnBm8+0rSGIJql84=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F7C6D2A723E0C64BB849934C5902C16E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ebc478-6383-455c-9420-08dad2674e43
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 00:10:36.2550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ju1cH2vRgf85sYJ3axQ/mlf4k/4TxU2yK+47o7A9FlVLHYiZFI6tDBWM/eDVAcOOlTNPsZqqTJtmFaBDOCbybfxfxvM8b6koHkZPAHvjxI5bmXCWkOVtbwkwV//Gh2AD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6182
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

KytOaWt1bGEgaWYgaGUgaGFzIHN1Z2dlc3Rpb25zIG9uIHRoZSBib3R0b20gbW9zdCBjb21tZW50
Lg0KDQpPbiBUdWUsIDIwMjItMTEtMjkgYXQgMTY6MjggLTA1MDAsIFZpdmksIFJvZHJpZ28gd3Jv
dGU6DQo+IE9uIE1vbiwgTm92IDI4LCAyMDIyIGF0IDA0OjMxOjUyUE0gLTA4MDAsIEFsYW4gUHJl
dmluIHdyb3RlOg0KPiA+IFN0YXJ0aW5nIHdpdGggTVRMLCB0aGVyZSB3aWxsIGJlIHR3byBHVC10
aWxlcywgYSByZW5kZXIgYW5kIG1lZGlhDQo+ID4gdGlsZS4gUFhQIGFzIGEgc2VydmljZSBmb3Ig
c3VwcG9ydGluZyB3b3JrbG9hZHMgd2l0aCBwcm90ZWN0ZWQNCj4gPiBjb250ZXh0cyBhbmQgcHJv
dGVjdGVkIGJ1ZmZlcnMgY2FuIGJlIHN1YnNjcmliZWQgYnkgcHJvY2Vzcw0KPiA+IHdvcmtsb2Fk
cyBvbiBhbnkgdGlsZS4gSG93ZXZlciwgZGVwZW5kaW5nIG9uIHRoZSBwbGF0Zm9ybSwNCj4gPiBv
bmx5IG9uZSBvZiB0aGUgdGlsZXMgaXMgdXNlZCBmb3IgY29udHJvbCBldmVudHMgcGVydGFpbmlu
ZyB0byBQWFANCj4gPiBvcGVyYXRpb24gKHN1Y2ggYXMgY3JlYXRpbmcgdGhlIGFyYml0cmF0aW9u
IHNlc3Npb24gYW5kIHNlc3Npb24NCj4gPiB0ZWFyLWRvd24pLiBJbiB0aGUgY2FzZSBvZiBNVEws
IHRoaXMgaXMgdGhlIG1lZGlhLXRpbGUuDQo+IA0KPiBJbWhvIHRoaXMgcGF0Y2ggc2hvd3MgdGhh
dCBoYXZpbmcgdGhlIHB4cCB1bmRlciBpOTE1IGluc3RlYWQgb2YgZ3QNCj4gaXMgdGhlIHJpZ2h0
IHdheSB0byBnby4NCj4gDQpBbGFuOiB5ZXMsIGFncmVlZC4gDQoNCj4gYnV0IEkgaGF2ZSBhIGZl
dyBjb21tZW50cyBhbmQgZG91YnRzIGJlbG93Li4uDQo+IA0KPiA+IA0KPiA+IA0KQWxhbjogW3Nu
aXBdDQoNCj4gPiBAQCAtMTM4LDMxICsxNDQsNjMgQEAgc3RhdGljIHZvaWQgcHhwX2luaXRfZnVs
bChzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gIAlkZXN0cm95X3Zjc19jb250ZXh0KHB4cCk7
DQo+ID4gIH0NCj4gPiAgDQo+ID4gLXZvaWQgaW50ZWxfcHhwX2luaXQoc3RydWN0IGludGVsX3B4
cCAqcHhwKQ0KPiA+ICtzdGF0aWMgc3RydWN0IGludGVsX2d0ICpweHBfZ2V0X2tjcl9vd25lcl9n
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gDQo+IHB4cF9nZXRfY3RybF9ndCBv
ciBweHBfZ2V0X3NlcnZpbmdfZ3Qgc291bmRzIGJldHRlciBpbiBteSBvcGluaW9uLi4uDQo+IHdo
YXQncyAib3duZXIiPw0KPiANCkFsYW46IFN1cmUtIHdpbGwgY2hhbmdlIHRvIHB4cF9nZXRfY3Ry
bF9ndCAoYXMgcGVyIHRoZSBuYW1lIGluIHRoZSBoZWFkZXIgZmlsZSkuDQoNCj4gPiAgew0KPiA+
IC0Jc3RydWN0IGludGVsX2d0ICpndCA9IHB4cF90b19ndChweHApOw0KPiA+ICsJc3RydWN0IGlu
dGVsX2d0ICpndCA9IE5VTEw7DQo+ID4gKwlpbnQgaSA9IDA7DQo+ID4gKw0KPiA+ICsJZm9yX2Vh
Y2hfZ3QoZ3QsIGk5MTUsIGkpIHsNCj4gPiArCQkvKiBUaGVyZSBjYW4gYmUgb25seSBvbmUgR1Qg
dGhhdCBzdXBwb3J0cyBQWFAgKi8NCj4gPiArCQlpZiAoSEFTX0VOR0lORShndCwgR1NDMCkpDQo+
ID4gKwkJCXJldHVybiBndDsNCj4gPiArCX0NCj4gPiAgDQo+ID4gIAkvKiB3ZSByZWx5IG9uIHRo
ZSBtZWkgUFhQIG1vZHVsZSAqLw0KPiA+IC0JaWYgKCFJU19FTkFCTEVEKENPTkZJR19JTlRFTF9N
RUlfUFhQKSkNCj4gPiAtCQlyZXR1cm47DQo+ID4gKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfSU5U
RUxfTUVJX1BYUCkpDQo+ID4gKwkJcmV0dXJuICZpOTE1LT5ndDA7DQo+ID4gKw0KPiA+ICsJcmV0
dXJuIE5VTEw7DQo+ID4gK30NCj4gPiArDQo+ID4gK2ludCBpbnRlbF9weHBfaW5pdChzdHJ1Y3Qg
aW50ZWxfcHhwICoqcHhwX3N0b3JlX3B0cikNCj4gDQo+IFBsZWFzZSBsZXQncyBhdm9pZCB0aGUg
KiogaGVyZSBhbmQgZXZlcnl3aGVyZS4NCj4gDQpBbGFuOiBJbiBvcmRlciB0byB0byBhdm9pZCBj
YXVzaW5nIHRoZSBlbnRpcmUgZHJpdmVyIGludG8gYSByZWJ1aWxkIGJlY2F1c2Ugb2YgYW55IGNo
YW5nZSBpbiB0aGUgaW50ZWxfcHhwIHN0cnVjdHVyZSwNCnRoZSBvbmx5IHdheSB0byBhY2NvbXBs
aXNoIHRoYXQgaXMgdG8gdXNlIGEgcHRyIGluIGk5MTUuIEJ1dCB1c2luZyBhIHB0ciBtZWFucyB3
ZSBhbGxvY2F0ZSB0aGUgbWVtb3J5IGF0IGluaXQgdGltZSBhbmQNCmZyZWUgaXQgYXQgZmluaSB0
aW1lIGFuZCB0aG9zZSAyIGNhc2VzIHdvdWxkIHJlcXVpcmUgdGhlIHB0ci10by1wdHIgdG8gZW5z
dXJlIHdlIGdldCB0aGUgY29ycmVjdCBzdG9yZS4gVGhlIG9ubHkgd2F5IGkNCmNhbiBhdm9pZCB0
aGUgKiogaXMgYmUgcGFzc2luZyBpOTE1IGFzIHRoZSBwYXJhbSBhbmQgdGhlbiBwb3B1bGF0aW5n
IHRoZSBwdHIgdmlhIGk5MTUtPnB4cC4gV291bGQgdGhpcyB3b3JrPw0KDQo+ID4gDQo+ID4gDQpB
bGFuOltzbmlwXQ0KDQo+ID4gQEAgLTEyLDEyICsxMiwyMyBAQA0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvd29ya3F1ZXVlLmg+DQo+ID4gIA0KPiA+ICBzdHJ1Y3QgaW50ZWxfY29udGV4dDsNCj4gPiAr
c3RydWN0IGludGVsX2d0Ow0KPiA+ICBzdHJ1Y3QgaTkxNV9weHBfY29tcG9uZW50Ow0KPiA+ICtz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gPiAgDQo+ID4gIC8qKg0KPiA+ICAgKiBzdHJ1Y3Qg
aW50ZWxfcHhwIC0gcHhwIHN0YXRlDQo+ID4gICAqLw0KPiA+ICBzdHJ1Y3QgaW50ZWxfcHhwIHsN
Cj4gPiArCS8qKiBAaTkxNTogYmFjayBwb2luZXIgdG8gaTkxNSovDQo+ID4gKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNTsNCj4gDQo+IGRvIHlvdSByZWFsbHkgbmVlZCB0aGlzIHBvaW50
ZXIgYmFjayBoZXJlPw0KPiBvciB1c2luZyBhIGNvbnRhaW5lcl9vZiBzaG91bGQgYmUgZW5vdWdo
Pw0KPiANCkFsYW46IHRoaXMgaXMgdGhlIHNhbWUgdGhpbmcgZm9yIGFib3ZlLiBXZSBjYW4gdXNl
IGNvbnRhaW5lcl9vZiBpZiB0aGUgY2FsbGVyIHBhc3NlcyB0aGUgcHRyLXRvLXB0ciAuLi4gaWYg
Y2FsbGVyIG9ubHkNCnBhc3NlcyB0aGUgcHhwIHB0ciwgaXQgd2lsbCBiZSBwYXNzaW5nLCBieSBy
ZWZlcmVuY2UsIGFuIGFsbG9jYXRlZCBhZGRyZXNzLiBUaGUgb25seSB3YXkgSSBjYW4gdGhpbmsg
b2YgdG8gYXZvaWQgdGhpcw0KaXMgYnkgZHJvcHBpbmcgdGhlIHB0ci10by1wdHIgbWV0aG9kIGFu
ZCB0aGVyZWZvcmUgcHVsbGluZyBpbiB0aGUgcHhwIHR5cGUgaGVhZGVyIGludG8gZHJtX2k5MTVf
cHJpdmF0ZSBoZWFkZXIgZmlsZSAtDQp3aGljaCBpcyBhZ2FpbnRzIHRoZSBkaXJlY3Rpb24gd2Ug
YXJlIHRyeWluZyB0byBoZWFkIHRvd2FyZHMuIChjYy1pbmcgTmlrdWxhIGlzIGhlIGhhcyBzb21l
IGlkZWFzIG9uIHRoaXMpDQo+IA0K
