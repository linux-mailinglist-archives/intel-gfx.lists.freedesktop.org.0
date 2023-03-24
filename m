Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DD86C796E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 09:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADAC510EBB1;
	Fri, 24 Mar 2023 08:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F2110EBA9
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 08:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679645682; x=1711181682;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bjM2NB268wqlpxLwnlp5y4WTmRFT8BVGbvgTT1suRS4=;
 b=kM8y9m5VGXU08OzcmopdAp3H3Ww4iizaFRpLTXBZ2VwuwPFZ2JLL/80/
 KZLfRZ6fxD7LPfpJvHhMRcGtw2/NvOS4+X+do4bj/JZFlrV8INcFkDtu+
 NSvh4F2k/a6SbjoPmEASot1unyJj4g/bHumNb505uAbu4y76ZbdPIJsEq
 GArtOmv0t4W7TVNhYH796xM32idHlSL2I1zXEYEzwbkFOxFm8aNHEbmY3
 ficxvBtjjUkqCwq2q6kf1hjW5FmcewNpb8G00wd1SSql4eHjk/E1Jzu5H
 iZkJKDa8Q8400aM6KQGM29GH31PVjCQAFliPWNhUEjY6STeI6EWD8jNR5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="367460459"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="367460459"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 01:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="856789483"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="856789483"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 24 Mar 2023 01:14:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 01:14:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 01:14:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 01:14:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 01:14:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCVU2Q8o6ypvHT5TQ0nMocd4MXi7Dv8pIbGI/fjoyKaEv/I44eZp8SoTnTjj+lH8gOjw2Rr53jdZvNOPzEgPMOicjuUbFv5zViYF/u24UL5DEnn4xPlLl/OY6+6x6PxAFGD/NK4FZ9X+gxbN9Bl/0OdO9YiUrhXBrz3DYTrR4mRG/2/kdTwHc7cobVVa7gr6BXgsYQufkYcwXmp/T+UCqbB86Vae5qbvzqq7qLXQLjfmdK5HPnZnga8TKL7pHMQ4r5YxfLtZP9Dob+ZLdO52mQtmHcCO4uSxsYH2/ga84lBKXwXa+27rjZGfd9M8REdUswRa28aLEE/kthA+nXobyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bjM2NB268wqlpxLwnlp5y4WTmRFT8BVGbvgTT1suRS4=;
 b=oQtcyX25DGq/epc/E8WOwsiCIGt3zFy8rylB5VtqvJl30fRudoYgeh4BI8+COYNkB/eO/ZekSbwoifzMhYOAV+Kj17bU0BKBm8p+UkLa75G/IaivtKAp8p0PxBsHIfGMjyn1KASujiM3kYvBiYJS99cTI4peLafNUt98jIqNQ1smB5vKZSRc3ZQD10THvYQ84aStPR+mZp9gJlkuWcPAGIeU5jka6r0rIui8WQdHl0VNS258cnq28LHW+VJL5i+WCib5u2eutnZIUJJZ+ygKDdmeYsBfLPLTrsdCH+s3+qCmZnsB0edqzA6kCnbwOk2wD49vgfxRSGDJxR3/u9tFiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 08:14:30 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 08:14:29 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/14] drm/i915/tc: Wait for IOM/FW PHY
 initialization of legacy TC ports
Thread-Index: AQHZWAz2uhaQXlrRaUiEKOeKVXhHua8Jn0Pg
Date: Fri, 24 Mar 2023 08:14:29 +0000
Message-ID: <MW4PR11MB70542A9C6F74C809FA6EE35BEF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-6-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB5279:EE_
x-ms-office365-filtering-correlation-id: cfebf75f-5732-4d0f-cf2d-08db2c3fca9e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ip00n5szSriCFXVcLO/9DLkhOSB/7ONy7fv5W5q9STEZdnGWiFdmicJs4nfOFF4h5uof5CdBJfRYYvYdSPN3EiqZ0dKpcytZeMuiIYeAfHCeIk14VZ4oSLIE//xdv/upONVmCu5MEMk6tj9IIk8MS3a+tXa/iyNLH6lRzO20xnq8eySWAZa8KAeNc8V0z/wCvNPY4Ese7Ikhto974ei6aHTJTbVwG+IFsZHbmePdOHbm7HQ/o+wq8bMoYfvWX5znAFIFg1tfCVUw9I7P8+aIEuhk4rCQs8HjBOOmPuh2z97KRe7ezK/Cbit0525pVgSRhnXzv7MnElK633SUxmzLVWTqSJxK/zPlG6eF4KM3kasSH7Hbf8Hld06iwm6AQwshrHRPtK2L6UA9jxlHXr0x7fU+NLOiXA6AemWdLm7GiltRyBItST80nuNpsyQ3UU1bbwpHfItuUI3DAWCOdsEkSKtsKtgq0iB4v3aOfFfznN0H3HCRbubbY/U+xhKIOXtiMyPbenqfukUVnOHvTyfOmdywXaYEpIcCfuDj/vNrLHPFtj41NujuhN7oHR+0aEcjqRmGBIViXLlmrqociePjaI4Dz4UpODVHNrrMWdJ9awMKklK3E6dFZaCISFpYBEFnnLEV7gow1cLFoTxbf8KZmFyPWICZIZhUAZCu0J9oUZ61/P0m6s+MRSkduKgj/LnimhVSKXlsC9m2FrsP8ocPvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199018)(66556008)(8936002)(66946007)(52536014)(64756008)(66446008)(41300700001)(66476007)(76116006)(86362001)(8676002)(33656002)(38100700002)(53546011)(122000001)(9686003)(6506007)(38070700005)(55016003)(26005)(83380400001)(186003)(478600001)(7696005)(110136005)(71200400001)(316002)(82960400001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDlZS2wybXplTXloZVJVdHFic0k0Ny9ydWNhQkVSSktOOGZUMXlsUWErUnlB?=
 =?utf-8?B?dGt6Y2ZsWXFBd2l3bXlyNm04Lys4OEhUazhKWEZkNmsyb0dJS1BwWFowOUJU?=
 =?utf-8?B?SjdLSW10bkxIWFcrM0Q2L3phdWhiMENzSkxvaGRhWVFjS0MrdDFjd0lGMndN?=
 =?utf-8?B?Z3R3WVZUajgvWStLemFXMDQ1dFU1UHlYLzRwMWtNWEl6R2dUR1R2eGQ2UWoy?=
 =?utf-8?B?VWh2SW4vSlkzdW5GN2hTeEZFZUdmUnZoYkxDMmh1azRtR1paNUFOdi9QMXZ6?=
 =?utf-8?B?bC96bHZyOEZkUWxnN0J6a2Q2ZnlQL2JnOXNRTVFOZldBQUt5SVkyWEtibzlH?=
 =?utf-8?B?bUJnbS90V0dSd041Z0lYYS9RVENPZ0xvL1dJRkNXRlJNcEorRDI3UHYwQU90?=
 =?utf-8?B?WVdseWN4dG9LZ0MyQXVLbXRBSU0yaXdGanVPbzVsdVlnOWZCdzB4K2x5MTRt?=
 =?utf-8?B?Slp6UlZ1b3U5Q2lMMU55MGo0TElJa0NnaFRrQm1tSXUwNlJydWhobUs1ZTkv?=
 =?utf-8?B?am52NVBQeWFZV0VueTR0bTg0MmhjQXAwcEFNNDZjNTJHcXJKZzRwY1lnSmI4?=
 =?utf-8?B?UDk5OEJ6N2M0c0liV3FmZTl1TTlCVGE3V2JteWJlb0lBYzlGMGR6ZXBhNFNM?=
 =?utf-8?B?MWlhVGpucjhKTUMydXlnelBwVjB1ckZSNVNKT3FlUjdraG11L1d5Q1RCWWtI?=
 =?utf-8?B?d2tyelpKczlCL1JzdVBQME9IZERrL25sYkhJOU54NmxiSXdGYjdNOUg3WFBn?=
 =?utf-8?B?S3VaRGR4ckhkNk9jYTVlc0RXSFcrSTlRSTdya3dLTDFXRHpYQ0RpNUxTSDNE?=
 =?utf-8?B?UytFRDZraTFyMENCWENCbUtERGZMemIrbEdyZ254OXB5UGw2YXBaK1ROeXBO?=
 =?utf-8?B?SGU3Vnh2eHJYZWc3MEdnVlR3UWdkTjJOeldMVjZTUnhqTkZIdytaRDBkOG9O?=
 =?utf-8?B?TW5yTmVWQ3R3NkhWTEpNOTFROTVNY2ZDZldNeEdhYjArY3dkbUE1OGxPNEYy?=
 =?utf-8?B?MmhsVkVaeUIxWDZQdE9EaldPRGRYanZHNE9ORlZZc1ZHc0ljNUErTVFvVVhE?=
 =?utf-8?B?UHZSNGUwakdXN1h6UkdZZG5pS20zUHNQVENRYnZBYlBTVy9HNlArdTRmVmhx?=
 =?utf-8?B?Tzg0REN2QUdMeVFVR1Vuemt6L1dVMWt2dkRkdTVwRENORlp4ZHUwUlQyZEhF?=
 =?utf-8?B?MmRCRnRKY2hGaFVKbDFiQ1YxWStGWG1qaWZ3eWRoM3h3NndCRGxUTEFMYnh3?=
 =?utf-8?B?bzVhQ044Wm1xbGg3anhnVVlnVmFFbnh0TFRaK2pYcUtLcUdodVhYSkYwcDVw?=
 =?utf-8?B?N2VsL29hWWNObzRrcllOa092ekphaTRFUzdvaTJQL3IrNE5JUUNLNWN1dEJz?=
 =?utf-8?B?TFZhQVpZQ0tpUFJlMWFQeUNPSFYzQk4wVVpTRFlnZm9NRTRrRVNnNDJBTTk4?=
 =?utf-8?B?eWcxK0NHSEpUdSt4YXIyZitUNzNmV3k5MjBURVpkYWR5RHk3Vy9qd1lRR2pI?=
 =?utf-8?B?RDdIQks4WURweTkzNHJVNml5K3hKVEhQbXhKOEZEcmxzYUZiN3haRFJReW9S?=
 =?utf-8?B?SVBwUS94WStOblZuajFQemQyeUVsNmc2L1lJcFBJeSs5bXVaR2I3SXkvTmg5?=
 =?utf-8?B?WHdBQWhBam5KK25FY3crSXlNSUlCMU93TVFTWTJVZXA4TzJjRXNySDk3anA2?=
 =?utf-8?B?czRmditiWHJacXBsMVNKVFFOemFxZXBLbkZ5UGxHL1ZHMGpveVNpd2N0aldh?=
 =?utf-8?B?ZkN0dU9xT1A0dHA0S3ZrWjB6cGlUV1gzbXhnZXNMMDhBQWJTbHB3b2lMaklo?=
 =?utf-8?B?SkRreU1PU1cvdjR5Tld3RWpwTE02QUIxZWp2eVNTMHR5YjRhT1dJQlQ3cU9N?=
 =?utf-8?B?U21LNVk1aTVQYjdZaHhnd3ZpRmFsRjNwdW9OcHFacGlOUWlyV0Z6ck1uMjRx?=
 =?utf-8?B?RzEzaEhmKzJNZ25CQTlXVkNVRTIrZERnQ21BaU4rR0ZCamN5d3R0TjlhK2ZZ?=
 =?utf-8?B?VXhSeUNpSmM5ejhrT2Q2Zy80dkErdUFiSzFJYVdnY2RjWGxQaWNibkRvKzEy?=
 =?utf-8?B?SXlDclJhMkxYOXc0ZVI4Tkc2THU1ZVdjbWxLRnNkS1BiNTJEeWYwbWJPZlQw?=
 =?utf-8?Q?pyemopcPMDZZw8vqi1W9Z0zcW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfebf75f-5732-4d0f-cf2d-08db2c3fca9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 08:14:29.6711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ffec6gLh9E1gINOd6kZ8x1RPcF+FFq7cEApxSlgpHZZp+/j4YKO9xuWGFNw5niENtH+M4FdGbJkk+EKVPRIBAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915/tc: Wait for IOM/FW PHY
 initialization of legacy TC ports
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMTYsIDIwMjMgMzoxNyBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDUvMTRdIGRybS9pOTE1L3RjOiBXYWl0IGZvciBJT00vRlcgUEhZDQo+IGluaXRpYWxpemF0aW9u
IG9mIGxlZ2FjeSBUQyBwb3J0cw0KPiANCj4gRHVyaW5nIGJvb3QtdXAvc3lzdGVtIHJlc3VtZSwg
dGhlIFRDIFBIWSBvbiBsZWdhY3kgcG9ydHMgd2lsbCBiZSBpbml0aWFsaXplZCBieQ0KPiB0aGUg
SU9NL1RDU1MgZmlybXdhcmUgcmVnYXJkbGVzcyBvZiBhIHNpbmsgYmVpbmcgY29ubmVjdGVkIG9y
IG5vdCAoYXMgb3Bwb3NlZA0KPiB0byBEUC1hbHQvVEJUIHBvcnRzLCB3aGljaCB0aGUgRlcgb25s
eSBpbml0cyBvbmNlIGEgc2luayBpcyBjb25uZWN0ZWQpLg0KPiANCj4gV2FpdCBmb3IgdGhlIGFi
b3ZlIGluaXRpYWxpemF0aW9uIHRvIGNvbXBsZXRlIGR1cmluZyBIVyByZWFkb3V0LCBzbyB0aGF0
DQo+IGNvbm5lY3RpbmcgdGhlIFBIWSBsYXRlciB3aWxsIGFscmVhZHkgc2VlIHRoZSBleHBlY3Rl
ZCBQSFkgcmVhZHkgc3RhdGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jIHwgMTcgKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+IGluZGV4IGU4Y2YzYjUwNmZiN2YuLjIxMTZjODI4MzFhNTMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTU4Miw2ICs1ODIsMTUgQEAg
c3RhdGljIGJvb2wgaWNsX3RjX3BoeV9pc19jb25uZWN0ZWQoc3RydWN0DQo+IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJICAgICAgIGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BP
UlRfTEVHQUNZOyAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIHRjX3BoeV93YWl0X2Zvcl9yZWFkeShz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0K
PiArDQo+ICsJaWYgKHdhaXRfZm9yKHRjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpLCAx
MDApKQ0KPiArCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJQb3J0ICVzOiB0aW1lb3V0IHdhaXRpbmcg
Zm9yIFBIWQ0KPiByZWFkeVxuIiwNCg0KVGhpcyB0aW1lb3V0IHZhbHVlIGlzIHByb2JhYmx5IGJh
c2VkIG9uIGV4cGVyaW1lbnRhdGlvbiBhcyBJIGNvdWxkbid0IGZpbmQgYW55IHNwZWNzIGZvciB0
aGlzLiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQoNCj4gKwkJCWRpZ19wb3J0LT50Y19wb3J0X25hbWUpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMg
ZW51bSB0Y19wb3J0X21vZGUNCj4gIGludGVsX3RjX3BvcnRfZ2V0X2N1cnJlbnRfbW9kZShzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgIHsgQEAgLQ0KPiA1ODksNiArNTk4LDE0
IEBAIGludGVsX3RjX3BvcnRfZ2V0X2N1cnJlbnRfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0DQo+ICpkaWdfcG9ydCkNCj4gIAl1MzIgbGl2ZV9zdGF0dXNfbWFzayA9IHRjX3BvcnRfbGl2
ZV9zdGF0dXNfbWFzayhkaWdfcG9ydCk7DQo+ICAJZW51bSB0Y19wb3J0X21vZGUgbW9kZTsNCj4g
DQo+ICsJLyoNCj4gKwkgKiBGb3IgbGVnYWN5IHBvcnRzIHRoZSBJT00gZmlybXdhcmUgaW5pdGlh
bGl6ZXMgdGhlIFBIWSBkdXJpbmcgYm9vdC11cA0KPiArCSAqIGFuZCBzeXN0ZW0gcmVzdW1lIHdo
ZXRoZXIgb3Igbm90IGEgc2luayBpcyBjb25uZWN0ZWQuIFdhaXQgaGVyZSBmb3INCj4gKwkgKiB0
aGUgaW5pdGlhbGl6YXRpb24gdG8gZ2V0IHJlYWR5Lg0KPiArCSAqLw0KPiArCWlmIChkaWdfcG9y
dC0+dGNfbGVnYWN5X3BvcnQpDQo+ICsJCXRjX3BoeV93YWl0X2Zvcl9yZWFkeShkaWdfcG9ydCk7
DQo+ICsNCj4gIAlpZiAoIXRjX3BoeV9pc19vd25lZChkaWdfcG9ydCkgfHwNCj4gIAkgICAgZHJt
X1dBUk5fT04oJmk5MTUtPmRybSwgIXRjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpKSkN
Cj4gIAkJcmV0dXJuIFRDX1BPUlRfVEJUX0FMVDsNCj4gLS0NCj4gMi4zNy4xDQoNCg==
