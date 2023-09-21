Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0697A929B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 10:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7B910E0D2;
	Thu, 21 Sep 2023 08:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4160410E0D2;
 Thu, 21 Sep 2023 08:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695285280; x=1726821280;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ihBd4IEbu2bsnH5S7bYcNeYtIDYIgVbyQa2LGUSsUNQ=;
 b=N1n61/VjS/fCfVzq3qTa1AYFSy+nGtrYkHj/yeyaWh9t6Vq5vkUnhaUK
 xbO/OF3p2KjEItqntiTrxArlRKziEkBHMU2aSAC+B9XgprhkU+UWm/Zch
 5UqVYofvvmglLvVm8JH621EIsDIU1vtU1QIYs2lxFb6ImlM+ww1h9exPl
 AB8llsRY2ymBNGtQzm3PPRgEC8OTotUWoSOp0jWrOTjRBsu/YOxdabYoY
 sCgMTNnkiRjDoIJkwymfjYYIbEn/UtPvF+3fhh3AA5G7E5T3DRI7ah1O5
 wPd1RH2N89GPSQxkXYWFyf947NTPqCEX/ISYUXiXvXq6/CnKL9AEB9w72 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="370773537"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="370773537"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="890286323"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="890286323"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 01:33:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 01:34:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 01:34:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 01:34:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 01:34:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aWZ8x9yVWjGOcp119lxCMZb1ce37/6LKgkrGIAKOFlOJ/gHpYUm9BGuS4n32bIo9AUFIDjHU0y5Ki2pOzmv62B9TnBJlZdZrMByo/bYTiRdrlsni9B1Ir/YSIKX7fh5iNfQu5kEiYMBThwkjo7fDcD1EvizdukeB0BXsyu4A8zlleaWXE44wmn1PbWnXECuxcwll0Cp2hdgKbFFFktjEe7gVbL5vWvfYRmYdfdVn0mhdENdtIrMEbhv708xRSrTD87uHZAw9D1l1Atb6YnVBjh8nCwQcKPG38W2/WP+VPDd0j6x+yb/2rTnOyLx3OZgvnF05hgNN083z/6Dxku+dWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ihBd4IEbu2bsnH5S7bYcNeYtIDYIgVbyQa2LGUSsUNQ=;
 b=T/andNszum9mAb7OlyfhNxAW0dF0gPdPlpGnXmvfeSVRq+0TLpgt5ix0OcNtZ4jU/q2iFFKCxtuSXcL3kOY+UDyk3kGLOEj8S6Z5OHa1VYAC11BL7rX0jxGz34Q0ROzhZiwkpyiXxKhOvE3V5YuonBuIAX0ZUXLDJ5Z/EM3wKW4VSn4dJzD5RMxIJutYxLlmytI4SbSDePX7Veyn0Sik4qzDmuhn3Dy/RY5kVwiMFJQHjx4z3e9R6SCdoSkrJC62DKW64iFICTBzciKgFrju1STtut6MiZY9s/M1xL5ZWDqbXcrLwGBaa0wf2iIkr4yRQNWBzE8U5WI08x+65pYAdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA2PR11MB5067.namprd11.prod.outlook.com (2603:10b6:806:111::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.19; Thu, 21 Sep
 2023 08:34:35 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6813.018; Thu, 21 Sep 2023
 08:34:35 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with
 per pixel alpha
Thread-Index: AQHZ3ybNAPtAmY0m1UGv9F9ezqxjnLAYnomAgAxwDgA=
Date: Thu, 21 Sep 2023 08:34:35 +0000
Message-ID: <61df0ad61e419d4c59bfe6052a564e1a5e8a3f21.camel@intel.com>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
 <20230904115517.458662-3-vinod.govindapillai@intel.com>
 <ZQGRH4aWpp078lBl@intel.com>
In-Reply-To: <ZQGRH4aWpp078lBl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA2PR11MB5067:EE_
x-ms-office365-filtering-correlation-id: b9084856-894f-4cb9-8e5a-08dbba7d963d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JDcg9LU/XiEA6Vagj5CcBmfGP+cMCLPh6HgPVgZCyStw7GiXHNs3AM1jV0kP9YHrLbn7fSkpbg0xoSdSkHGqmFbX7X5wtHwpCXwq655cp4qq8doic0BwT0W4/tXaTJ+/ElQTmIIpm/S7o2eV1vsGRyIs6AubPRBodn3WntAdx72XS2avMcmAbRBqmH8Tjl1O0CBC77yEvtHKrGVmwcNqAWZnDEolworPNYweXhow6dIL8O0j78p+PSyCm2O1uQLerccD5khwP7acyClJJ0nt8lukpuJgUzKkzARp6mz8qfL9LQGDFC7VgknbFo50wNlQCp8tI4BiajJWeDqbpOxO2MBVpO2oRQwSBdCFeNL80LtgKIR43mq+TtRxW/yLu+HKBfZTYx8WSbW8mizn+WPe4XYRdotHJxaKYwBZt21Dra8Ga2CgSUL+atKY+h7+ZqK+5kbwNDq0RSAoOGk9ZhqlylvcMUDNDl9xc+6NE8fBaadaVaKmgpbeV8x3TzM2bHpqGX67Crqn9OeYb4LV6gpo1K4Bchy3Jbi03rVqctmit+1hfQPQicpHSKkSwqLjpmT6T4ww211MB9E91GLQWg/ex90uhV49qZCI/Jp402UaQyeWRGG+pEmgx1MKPDLMJA1z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(136003)(346002)(366004)(1800799009)(186009)(451199024)(6512007)(6486002)(6506007)(71200400001)(66574015)(122000001)(83380400001)(82960400001)(86362001)(38100700002)(38070700005)(36756003)(2616005)(26005)(91956017)(66476007)(76116006)(54906003)(316002)(66446008)(66556008)(6916009)(64756008)(66946007)(41300700001)(2906002)(5660300002)(8936002)(8676002)(4326008)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3k5NjFRZE8veHNiY2xNMkdtc0ZDYnduRzVzb1IvOWdRKzVhZXk3WkxQWWs1?=
 =?utf-8?B?L21tNE9PQVNYZUlEdTdZK1BuZ1VrZ09lTmNsSVdNaHRWeGZBb2JVZmpuL2xx?=
 =?utf-8?B?cnpMblA3cE8xUkltN3RtbmI0Q3M2NFdSTnd2aFkyS3NwYUpIR2E5a1plN29w?=
 =?utf-8?B?UWkzNlVkc0lRemx0ZWMya0JTb053Z2l4UjFhRGRwemh1Vy9qajVUV0NJcWFs?=
 =?utf-8?B?bWFRMzcvUjdGZDl0QkVBVmV4SXBGRDZLdC9BU2gwUGh1MG55ZEl4R0ttcVBN?=
 =?utf-8?B?L3A2REdOeEFHbUhhTzdFUkRUZ3F1Vlg5MTZaU05meVpwK2NmZVNOTUMrV0lm?=
 =?utf-8?B?bHJLUXhTTjlqeXBlNkM5dXNkQVFQVjF0OU54K3BaazExOVJ4c2ZJZk4xeDh3?=
 =?utf-8?B?cDFjL0pjSTdDUGlrMWVtTUtuMmZFNHFGUnp3Q3BrUHhVUzluT1d6N1B5eEpF?=
 =?utf-8?B?ek9QRHNqNi9MQ1MwWmhuWW9zeUFTRDV4YisvVHdvM2hGa0pqRHhnMDl5Ym02?=
 =?utf-8?B?M3hyUDBaOGl3aExZNFROU1NhQVNWTFIwSHlpb3ZZbTdyaGtEc0J4a1VBRUd6?=
 =?utf-8?B?SmhOemNrU2I1N2Q4RVBNcmNjemhVRzBaL0w2WHlmMUVLSktjZjNyVlpMaXlN?=
 =?utf-8?B?NXBMUHpjT2JGSmpJSHNYS2RYcmZma3N2ZEk5VEZuVFdqeFhWdnN0RlJnUXNH?=
 =?utf-8?B?KzdWMGZTWmJxcUhSWml0Q2N1M3ZaUmE5dzBVdm1iRmRQeGozNWwvK3ZDVnpE?=
 =?utf-8?B?b3BScCs5MndydUpvdmM2RVlUYXRKTGRwVHQ2R0dIVnRNY1lDaG8zdVFwQ1Jm?=
 =?utf-8?B?ZFJZWmRJdXFDcmtVVVZJZ2Rwd3JlUkI4NjhBUlR4ZjFKdiszK0JvTjJiTFg5?=
 =?utf-8?B?bUtwWlVreUhBKys5Rm43ZDk2MEV5YXJVMTlPdDNoZGRwZmQxOC9LbHBCbk9Y?=
 =?utf-8?B?bi8zSVNQK3Z0VVIrY1BmQzFtc1ZXUG9DTGxTbVZ4cUlHMDhkeEQwQUoyY3N2?=
 =?utf-8?B?R1VGT2VPQmN6aGlNaFZQbUV5VWkrZzZQYk80YU95Ukwra0ZoTmJDcURoWkZ4?=
 =?utf-8?B?NkNzdHl1blk2R3ZCYkZPUkY4YzJPbEZCbVpzcjZQNEFKbk45UmE4WXM3V3kw?=
 =?utf-8?B?QmgzVSthVWlPTWpHM2xQZEJFbW9selM0WFVSdzV1UFE3TG5yaS9sZjJrZXVK?=
 =?utf-8?B?UmJXMkVGbVRKL2lPMVk0Tk1Lck5yd292UlFoMnhWK3h2WVYrSXZabm82eU52?=
 =?utf-8?B?a0txZVJ6THAvSjd3eHEvQU5GK3NpaTd0MVpQaDFvUHJVUkZDVmlobXpwT291?=
 =?utf-8?B?K2RQaWJHQmlEYlVkVWpTdWtCZHBSQUNHVE1mdE5OeEVaTHNQdXhBSnhaaURj?=
 =?utf-8?B?SnJUeG42cm5qYTJHUE9xTVhkN2pHTTBUZFdZTG5SYzFMaS9OVVU5c21zQ2c2?=
 =?utf-8?B?bk1yME5ZUlQ2bjVOZTBWczYyWU9zdWRsbE5UeC9ic0hrV1g1a2RHaUc1V2Ft?=
 =?utf-8?B?OXVQdjlxdDM2cThWeWlkcFNtYjl5OW5WS1oxcjRRQ0pTTWJicFVkeFdPQ3VZ?=
 =?utf-8?B?azdvNEdKcXBCWFRKUjRkSEIrblZSaUpzWTJWdSttRXdmcDkxeHRpQktWTFRQ?=
 =?utf-8?B?czRBbTJZdmhtek9vZmYrQmJyWXVVWDAvZlVkV2wwbTg3M2kzUGE5RGovZXFJ?=
 =?utf-8?B?VzVVRTVXbENtUkJkRnU2L0ZXRnhBRmhmUFRtdXRGZ25VcGl3bmU3Ny8zcEZO?=
 =?utf-8?B?eG1yOG1aQlRyUUVFb1lkUW9NMjVYZXQxY0RUVlpKeFZSWnU1bkpyOFhyVXY4?=
 =?utf-8?B?NUdOYWZEZ3c1am55VUlvakNObFZPcHVYT0RoUXJ1UlhEVnRFMU9pN1l4Zmpl?=
 =?utf-8?B?bkluT2hjMHBTQ2VIdFNiWkt4bDJHVzVORDZkb29NTzdGSnQwbSt3Y2JQQ2F2?=
 =?utf-8?B?RCtYSEFkRFBTWjhtdU5sZmZ6T3VVSVBDZWs5Nyt3eFFxUHhLY21IZlE3MW56?=
 =?utf-8?B?ZUNlWk8xR05uRVFJRkhDYjM2VzdOa0UwTzVHZ1g3SHpKeVVVUUxudzl4SU5K?=
 =?utf-8?B?d3cwdGNEeFdHN0JjcUpsL01zWjdGOXgzakErOC90SW5TZWJOOU82UGxTYUdV?=
 =?utf-8?B?aHNEU2FVZHpqSW85MW1VbWY2UGNla1AzYmUyKy9lTXExUTVPaENUZlpGajNS?=
 =?utf-8?Q?WLT5WdS6j7486dzDuwNtQVw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8273169D88690642840E853D0695F4DB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9084856-894f-4cb9-8e5a-08dbba7d963d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2023 08:34:35.7243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2zVzbSJQmDcOPiLGv9aad+AkhtKNlVL1zKaTly+ENeSsNITIcAxXTl4NSpCcBM7z6dKdttohQ3NGErZonrJPeqobgd5dDU99C5exJiXBI4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with
 per pixel alpha
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper, 
 Matthew D" <matthew.d.roper@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA5LTEzIGF0IDEzOjM4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgU2VwIDA0LCAyMDIzIGF0IDAyOjU1OjE3UE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gRm9yIExOTCBvbndhcmRzLCBGQkMgY2FuIGJlIHN1cHBvcnRl
ZCBvbiBwbGFuZXMgd2l0aCBwZXINCj4gPiBwaXhlbCBhbHBoYQ0KPiA+IA0KPiA+IEJzcGVjOiA2
OTU2MA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmlu
ZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYyB8IDMgKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggYTM5OTlhZDk1YTE5Li5jMGU0Y2FlYzAzZWEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
PiBAQCAtMTIwOSw3ICsxMjA5LDggQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+IMKgDQo+
ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHBsYW5lX3N0YXRlLT5ody5waXhlbF9ibGVuZF9tb2RlICE9
IERSTV9NT0RFX0JMRU5EX1BJWEVMX05PTkUgJiYNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoRElT
UExBWV9WRVIoaTkxNSkgPCAyMCAmJg0KPiANCj4gQnNwZWMgc3RpbGwgc2F5cyAxNS4gU29tZW9u
ZSBuZWVkcyB0byBmaWd1cmUgdGhpcyBtZXNzIG91dCBmb3INCj4gYWxsIExOTCBwYXRjaGVzLg0K
PiANCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGxhbmVfc3RhdGUtPmh3LnBpeGVsX2JsZW5k
X21vZGUgIT0gRFJNX01PREVfQkxFTkRfUElYRUxfTk9ORSAmJg0KPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZmItPmZvcm1hdC0+aGFzX2FscGhhKSB7DQo+IA0KPiBXZSB3b3VsZCBoYXZlIGFs
cmVhZHkgcmVqZWN0ZWQgdGhlIHBpeGVsIGZvcm1hdCBlYXJsaWVyLCBzbyBhdG0gdGhpcw0KPiBj
aGVjayBpcyByZWR1bmRhbnQuDQoNCkhpLA0KDQpDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnkgdGhp
cy4NCg0KVGhpcyBpcyBhbiBleGlzdGluZyBjaGVjayBhbmQgSSBqdXN0IGFkZGVkIHRvIGxpbWl0
IHRoaXMgdmVyc2lvbnMgYmVmb3JlIDIwLg0KQXMgd2UgaGF2ZSB0aGlzIEZCQyBwb3NzaWJpbGl0
eSB0byBwbGFuZSAwLzEvMiwgaXNuJ3QgdGhpcyByZXN0cmljdGlvbiBub3QgYXBwbGllZCB0byBh
bnkgb2YgdGhvc2UNCnBsYW5lcyBhcyB3ZWxsLiANCg0KVGhvdWdoIGF0IHRoZSBtb21lbnQgdGhl
cmUgaXMgbm8gcG9zc2liaWxpdHkgdG8gc2V0IEZCQyBhbnkgb25lIG9mIHRoaXMgcG9zc2liaWxp
dHkgZXhwbGljaXRseSwgd2UNCnBsYW4gdG8gaGF2ZSBzb21lIElHVCBjYXNlcyB3aGVyZSB3ZSB3
b3VsZCBsaWtlIHRvIHZhbGlkYXRlIHRoaXMgZmVhdHVyZSBieSBoYXZpbmcgY2FzZXMgd2l0aCBv
bmx5IDANCm9yIDEgb3IgMiBwbGFuZSBhbmQgY2hlY2sgRkJDIGlzIGVuYWJsZW1lbnQgaXMgb2th
eS4NCg0KQlINClZpbm9kDQoNCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBwbGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJwZXItcGl4ZWwgYWxwaGEgbm90IHN1cHBv
cnRlZCI7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4g
PiAtLSANCj4gPiAyLjM0LjENCj4gDQoNCg==
