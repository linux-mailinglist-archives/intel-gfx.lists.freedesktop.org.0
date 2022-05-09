Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCCE51F53C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 09:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBD910F7E2;
	Mon,  9 May 2022 07:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7821410F7E2
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 07:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652081118; x=1683617118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KkcM/7wSaBK/amXS6ZLG4+RElTAUFtavnfxAmLP/5Ag=;
 b=murc9eC2fy03vs0RaSRsBil4nGEaRvGHHIQmEBToliJ4oQs0g/bLp8HY
 5BUqmtSQgoKmH7ektk/fAp4KzmfYCMIRxo8pwMD+bvDqTunu3QgmbT7ak
 XafkWZQVSoAd5tXw3Wc1G/Z7P6QgeDhjsKjM9OXgG+nWeZ8IKkucmHHlC
 sin/4cZ05FrkgAG+2A3q8RtcqhqRwH8A8I+rQVZbTgZWvuKlQmJ9bV2ou
 8XF7rbgCJrQzaRsR5fQNxD4fEHOoBbo+PrUQnx9a+90Z6HQFd6gkvCU9K
 A3GOgMraryhVZTpbPeYUnYd1pfyMByChEzKMDbs29DxzPypYRIsn1eZJ0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="256497607"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="256497607"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="738036715"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2022 00:25:17 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 00:25:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 9 May 2022 00:25:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 9 May 2022 00:25:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmNX3Wcbh8CVyQYSExnvKQxXMnjiMGyhU2emgmHsAv/YDnWaI4gSubyakEk1KaXgKc+N1aU9PmbhEO2KFoTABYs+2p/+9UDLaEYzK/9/5IxB9ipw197SwfMmmh1Nvjs42HuuzG1mcJ8J7G9kBcDg4xqDNDlJJr7L0Dv6uCx2Ts+w11Aei0/gArwdl/F58CiAQPbsh1BQE8qXzom8TN10GLSX/wT1Y6pq9izR/69oB6kVQ5hq2Mgw2yilMhhiHn6wIAmMLUYMsLoR1+anolItV9dceJqW49bFvsROdqsy5v/Bsu8KEjvZrSqkJZ3e9L5nLlWfcbFwzSFT1j82wUS4jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KkcM/7wSaBK/amXS6ZLG4+RElTAUFtavnfxAmLP/5Ag=;
 b=i9ARAVSq8XQdawuKbuFxksQiY4rcKHuYZd9hTR9wTRaDiDQKtoeEcYP1u5K0l/XjxE7vIkeW9lu2enW1u8VhuX2F12R6/c48on4idkP8mIgfeuB5y5NbrbCNEdVESuNefXIeRWF4prQHdfjhllau5vQC7W6tvefMXcjDyZbyDFowDhUSBe1RyYqmNPueBTZZB5+YDHTUVRl+g121BV9GRQNP7UNxh5dOEm04oiCeRnKPUBvhPA+sqbeXBLkGdyxl9RIXrTUbgZV4unb/6P76SrARcnCXv/5Ayl68tJEPvV4R1iUHfI8s1ijvzWhP8qGRz3qzdBLF77MQ5GD1xBkUxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM5PR1101MB2075.namprd11.prod.outlook.com (2603:10b6:4:5a::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.22; Mon, 9 May 2022 07:25:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9c98:da7:1e8a:ef82]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9c98:da7:1e8a:ef82%5]) with mapi id 15.20.5227.021; Mon, 9 May 2022
 07:25:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915: Ensure damage clip area is within pipe area
Thread-Index: AQHYYQ1VCAg44l8dIk+23HoLyNAIKK0R/gwAgAQrsgA=
Date: Mon, 9 May 2022 07:25:15 +0000
Message-ID: <fcbffc3da3fe381ceacaaff6a002a324d2798617.camel@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
 <20220506054834.2822650-3-jouni.hogander@intel.com>
 <c79692eb687ba3ebfa0470f07d381607b2825fbf.camel@intel.com>
In-Reply-To: <c79692eb687ba3ebfa0470f07d381607b2825fbf.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49414d0d-a023-4cb5-547b-08da318d1007
x-ms-traffictypediagnostic: DM5PR1101MB2075:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR1101MB2075834AD2EA9C9295539AB68AC69@DM5PR1101MB2075.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sqpk7KL077lcBJI1CYvi1EqHRryTmcJ75o1AvWlLje/gcFe0oVgcmoPv4miHx0F4sY2a0NfdD//4b1bHgzCW3e93ymrvFlCuL/rXYtpeaw4KyUFnJn3rRNkwHDhsLAfbXaKhgHwioFCP2ModPbmlPQRX6jl4rVUmrzIy/u7qLM8IEY6PR7cMzwfkp0u5bOEBlPNCRvCufixEYso5HF0hgor67TOHvIc13IJEaBs55hov4oleqyoy4ojgbOrePH7Ynw+yK3yjTOyjgnOknskQtay0Hbuwd6Dl6EEOvWF5yfY20X5oAAG+W3Jw+1RIWq4DeMzdg437J/VMf2eZqA4ZcKBxLJOOaZHgjIBaDTZmWtQGcNmRZhTkmhtqicEu/+0PbIFlKnDFTG4U8spCooc0Q2TgpConXW7JqAEyOFqY7u3yOOjZ05o4DubSr/yy/m7dkd7ESgB7E3pXXjuDXhH0Izj2rhiypdXNAVe95nrkku3ISoC7msDE/gGNZC/fkuLSPVmQwjFWHNDXyEXhwAZOmhJ2TqpDVDd2lDytPRxhEnYbdZaRGCV6tEMzbYVaolESmRI1MMqKwg9PrYzYaJx2vpUrLx+GcPl7Eysw6jfPW+fP254WpiIJ54Xip9xuFLIsye2YDW6BwZ8BNZMXZqw+6o7O/MsbsG7QsFHDOpY+X0v3dg6rPuS5NB03Wn5VB3HS0NH+DazivcAmogyzsmHOvA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(2906002)(8936002)(5660300002)(91956017)(66446008)(66556008)(66476007)(64756008)(66946007)(8676002)(76116006)(4326008)(110136005)(38070700005)(86362001)(83380400001)(54906003)(6486002)(38100700002)(186003)(966005)(6636002)(2616005)(6506007)(26005)(316002)(122000001)(66574015)(71200400001)(82960400001)(6512007)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDBuaFF4Uk9DVEpBNDlQQTBrYXQ2RlZQbndnZS9iR0Jzd2krczNibitiQm9n?=
 =?utf-8?B?Ly9xQ29DaGlvZkpWZkZlZ2c2akpJdFRrajN4RGc0bk5hOFdMcjRQL2JuTEkw?=
 =?utf-8?B?STNYMkxTM0JyU0xtZ2kxaU92MVkzdHBhZVE3NTFHRGs2c09YS0JYRzMxSDBQ?=
 =?utf-8?B?ak5wNUtDVDhubGxIWXQvcVd2bG0vRWhpeDhKR3FlM1NqSnRGMmMrK28xN3dn?=
 =?utf-8?B?eXd3WTdhTER4TkFKVWdCd0Vjak9wZFNjM2g1VmdFWHMzUTBwVG9UMUVIVks4?=
 =?utf-8?B?eW5yRUJSQzE2RWFJblpMaGQwMDgwbDMzZHhZb2ljQXVYSXcwZXkwMUdQRXVQ?=
 =?utf-8?B?ZTFrZlRBNk5XK1VxaXFFMkUzSzZOMVlDUkJuRVVFVUtYWjJRQWRWSGVCTHJi?=
 =?utf-8?B?LzdkS1JoYWJQTE1zalJobHZCaGNsRTFLSkpUZFM4dld4ZXNVeUVNWXVWZDZw?=
 =?utf-8?B?YkZId2Z3amhyU2crSkt6VkpjSHdXWTZDaWQ4QkR6b215Q0d0WTNzaE15S2Ju?=
 =?utf-8?B?ZmJoV0JmOEIxMVByUVJUT2d5MFc2MVc4OTJCeXpIWmpKeSt3Y09CS1E5NVhx?=
 =?utf-8?B?L3lmVlhibFM1WUZjdWgxaG5yUm5GK3h1eW5ERG9KQTdPeUtIWU1ZeSt1Y3c0?=
 =?utf-8?B?UXJVSjBrSGg1TzhQRkpFd0VQcWlRSkhpTitEdDFwQm8yaWJJVGxjYUhpMVhI?=
 =?utf-8?B?Zm5rMmJ0b1FhV3lVZGo2bGdBZS9ZZ0lteXpsWkpXZTVyR29OYk5EWUhGZTRC?=
 =?utf-8?B?SUFNQjUxVGZEWTAzYkxka1JCak9HSE9mcXBreEF1MHl1UkkwaE9keXk2TjlO?=
 =?utf-8?B?UGI1MUs3ZHRkZEhkVGFnaHlZQWJ6dE5XMU9WZkVVTFM5eXZlN1VxS3p3VzZZ?=
 =?utf-8?B?ZkI2eU5Lc0c1VU1oTlJZSTJnL1RvRURJSlpGUEUvWTdoTVNTekk4OW43RWM4?=
 =?utf-8?B?N0N3aXdhckJiV25pSlVZeHc2MUlvK3lLSUxWV1M2NEUzZDErMEhZRlNTS1Nw?=
 =?utf-8?B?YUVlSjRhMTB1Zm1FWnJvVytIaW9ZV1QzU2ZMYkNuc3Bwdm5sU1NjKzVxK0s3?=
 =?utf-8?B?eU9ZU25Rd1lXbGxBYzBwNGcweHVuaEVIL013NVpOWE5YVDF0bnFtNUtNTDd6?=
 =?utf-8?B?dTVFcThsSlh5MUVJL21UNHlVN3lLbWRCT3NoMzdUdEh5UTFTT1N4UG96VE5N?=
 =?utf-8?B?L3gzdUVhaUR3bHJ0SlFRNC9lamlEYlo3RXdUdVM5TS9xVm40RVozcDc2blhQ?=
 =?utf-8?B?aXJqQXp5dkxkaFgyY1ZNVjRsalhWTm5xYUNCWGFVNlA0bForUE9RRkl4eFhy?=
 =?utf-8?B?b2FnR0MrWFZiNEZJaTQ3c3ZMbVdTRTZCOXlLU3Q5cVJ1UVNVZUNQVjNKTzgw?=
 =?utf-8?B?TU4wZUJSYXMrRGd1WDdRNTQzMlV6MEl6SUpBZDZtT0NoWjdYUzhZZ25WbDBw?=
 =?utf-8?B?NCs3aXErWEd6RXRtMTROMDM0Njl6ZlN2VDV2bnlvaDJzUDM4eURRNm1naVRX?=
 =?utf-8?B?MHhFaWhBWktXZnpFUFBYUm05VzJTeWo0aUVwMElZTDNLTkdHenY4MDRyOTVI?=
 =?utf-8?B?cXJuS29oZVZvWEQ4V1U5UmFSU0xEMExmcnFTTm9XM2Rja0o2azV1VDZWOHUv?=
 =?utf-8?B?bHNnWCt4N0ZzS2EyRlk5QmdFRzRJeFlYa0FtRFZBVzYwc3hTQ3NlOVJBcjdN?=
 =?utf-8?B?Z0w1b2F4SlRoSjQyZ2FrcjJUaXZSRDVwMjNNdXFZalFEeUIwM3ZnZHlxSXpo?=
 =?utf-8?B?eTdMUnkrSmwrTWhMeWg3QXZrK3phTHNsV0gzVGQ1eXgycWZEYWJGcy9VMFpM?=
 =?utf-8?B?ZkNmVnMxZkF0MWw4NUIvSFFoaXZYVmNmaTlxRDcxM3ZyU2RRd3hHWU1lVjNo?=
 =?utf-8?B?UW5pU3I2ZzY2SUM2Ny90dDJpMno4Y2xPMFJMejFUSXhqMHVsZTJ2N3l2UTE5?=
 =?utf-8?B?dWFONkV1RkRkZGFRZzNGZ1BBak5QcTkwcUFsL1c5aXhYVVdxM1NyWS9UZ0lU?=
 =?utf-8?B?dkN6L09XRVBsdUR3L2t2cmNkczVwbmsxL2txdTkzNWpBMnJ5cXBpNGlBdGV5?=
 =?utf-8?B?OGhGLzN2eW5WcFFLdWdyL3ZNNWpKYUQwMkJlUEN5aVpsaUMvVllZeGw3Uytu?=
 =?utf-8?B?YmZEc09veUppa2p1VDN1dDRZaHNmMUhSNVFSM0NQNEJBQlArQ0hXd1BUUlVV?=
 =?utf-8?B?V01pMm1pdkY4d2VGTWc5N0FOVU9mYzlmd0hnREFESk5ESmt1b1ViUTV5akN6?=
 =?utf-8?B?dG5iZEtkMmdveDdFN3NDajZZMDFkZWkrSkRGaHIwSmhiSVdHQjFKdHFjV2R0?=
 =?utf-8?B?bCtWOXd6UUo2RWRDNmdjMmFuS0txdUlvUzZwSWtReUlEd2tXc3hpMSt2RVVW?=
 =?utf-8?Q?BAphS/XEVn72ymc0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5D4A019ACAB564BB8487C57994965DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49414d0d-a023-4cb5-547b-08da318d1007
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2022 07:25:15.5255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YA49HVFbECDLRr7uHnY8E777Z2tdAE05zDa9rq85QrQzZ7XNZmN7e1HDaN7w2QalcVLocTZKo6QCEYBwu9CKSQ2kEfkfvpETGf+fvTdQwhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2075
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Ensure damage clip area is
 within pipe area
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA1LTA2IGF0IDE1OjQzICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTA1LTA2IGF0IDA4OjQ4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gQ3VycmVudCB1cGRhdGUgYXJlYSBjYWxjdWxhdGlvbiBpcyBub3QgaGFuZGxpbmcgc2l0
dWF0aW9uIHdoZXJlDQo+ID4gZS5nLiBjdXJzb3IgcGxhbmUgaXMgZnVsbHkgb3IgcGFydGlhbGx5
IG91dHNpZGUgcGlwZSBhcmVhLg0KPiA+IA0KPiA+IEZpeCB0aGlzIGJ5IGNoZWNraW5nIGRhbWFn
ZSBhcmVhIGFnYWluc3QgcGlwZV9zcmMgYXJlYSB1c2luZw0KPiA+IGRybV9yZWN0X2ludGVyc2Vj
dC4NCj4gPiANCj4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvLS9pc3N1ZXMvNTQ0MA0KPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCj4gPiBUZXN0ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVub3ZvLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDE3ICsrKysrKysrKysrKystLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggOGMwOTlkMjRkZTg2Li41MjI5
YmE4OWEwNzkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBAQCAtMTcyNCw2ICsxNzI0LDEwIEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRj
aF91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgYnJl
YWs7DQo+ID4gIH0NCj4gPiANCj4gPiArLyogU2V0IHgxIGFuZCB4MiBmb3IgZHJtX3JlY3RfaW50
ZXJzZWN0IHVzYWdlICovDQo+ID4gK2RhbWFnZWRfYXJlYS54MSA9IDA7DQo+ID4gK2RhbWFnZWRf
YXJlYS54MiA9IElOVF9NQVg7DQo+IA0KPiBNb3ZlIHRoZSBhYm92ZSB0byB0aGUgdmFyaWFibGUg
ZGVmaW5pdGlvbiBhbmQgaW5pdGlhbGl6YXRpb24uDQo+IA0KDQpGaXhlZCwgcGxlYXNlIGNoZWNr
IG5ldyB2ZXJzaW9uLg0KDQo+ID4gKw0KPiA+ICAvKg0KPiA+ICAgKiBJZiB2aXNpYmlsaXR5IG9y
IHBsYW5lIG1vdmVkLCBtYXJrIHRoZSB3aG9sZSBwbGFuZSBhcmVhIGFzDQo+ID4gICAqIGRhbWFn
ZWQgYXMgaXQgbmVlZHMgdG8gYmUgY29tcGxldGUgcmVkcmF3IGluIHRoZSBuZXcgYW5kIG9sZA0K
PiA+IEBAIC0xNzM1LDIwICsxNzM5LDIzIEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRh
dGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgaWYgKG9sZF9w
bGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKSB7DQo+ID4gIGRhbWFnZWRfYXJlYS55MSA9IG9sZF9w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ID4gIGRhbWFnZWRfYXJlYS55MiA9IG9sZF9wbGFu
ZV9zdGF0ZS0+dWFwaS5kc3QueTI7DQo+ID4gLWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwg
JmRhbWFnZWRfYXJlYSk7DQo+ID4gK2lmIChkcm1fcmVjdF9pbnRlcnNlY3QoJmRhbWFnZWRfYXJl
YSwgJmNydGNfc3RhdGUtPnBpcGVfc3JjKSkNCj4gPiArY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9j
bGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gPiAgfQ0KPiA+IA0KPiA+ICBpZiAobmV3X3BsYW5lX3N0
YXRlLT51YXBpLnZpc2libGUpIHsNCj4gPiAgZGFtYWdlZF9hcmVhLnkxID0gbmV3X3BsYW5lX3N0
YXRlLT51YXBpLmRzdC55MTsNCj4gPiAgZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRl
LT51YXBpLmRzdC55MjsNCj4gPiAtY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdl
ZF9hcmVhKTsNCj4gPiAraWYgKGRybV9yZWN0X2ludGVyc2VjdCgmZGFtYWdlZF9hcmVhLCAmY3J0
Y19zdGF0ZS0+cGlwZV9zcmMpKQ0KPiA+ICtjbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZk
YW1hZ2VkX2FyZWEpOw0KPiA+ICB9DQo+ID4gIGNvbnRpbnVlOw0KPiA+ICB9IGVsc2UgaWYgKG5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5hbHBoYSAhPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID4gPnVhcGku
YWxwaGEpIHsNCj4gPiAgLyogSWYgYWxwaGEgY2hhbmdlZCBtYXJrIHRoZSB3aG9sZSBwbGFuZSBh
cmVhIGFzIGRhbWFnZWQgKi8NCj4gPiAgZGFtYWdlZF9hcmVhLnkxID0gbmV3X3BsYW5lX3N0YXRl
LT51YXBpLmRzdC55MTsNCj4gPiAgZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51
YXBpLmRzdC55MjsNCj4gPiAtY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9h
cmVhKTsNCj4gPiAraWYgKGRybV9yZWN0X2ludGVyc2VjdCgmZGFtYWdlZF9hcmVhLCAmY3J0Y19z
dGF0ZS0+cGlwZV9zcmMpKQ0KPiA+ICtjbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1h
Z2VkX2FyZWEpOw0KPiA+ICBjb250aW51ZTsNCj4gPiAgfQ0KPiA+IA0KPiA+IEBAIC0xNzY3LDcg
KzE3NzQsOSBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gDQo+ID4gIGRhbWFnZWRfYXJlYS55MSArPSBu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxIC0gc3JjLnkxOw0KPiA+ICBkYW1hZ2VkX2FyZWEu
eTIgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MSAtIHNyYy55MTsNCj4gPiAtY2xpcF9h
cmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gPiArDQo+ID4gK2lmIChk
cm1fcmVjdF9pbnRlcnNlY3QoJmRhbWFnZWRfYXJlYSwgJmNydGNfc3RhdGUtPnBpcGVfc3JjKSkN
Cj4gPiArY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gDQo+
IEFzIGl0IGlzIHJlcGVhdGluZyBtb3ZlIHRoZSBkcm1fcmVjdF9pbnRlcnNlY3QoKSBjYWxsIHRv
DQo+IGNsaXBfYXJlYV91cGRhdGUoKSwgYWRkaW5nIGEgY3J0Y19zdGF0ZSBwYXJhbWV0ZXIgb3Ig
cGlwZV9zcmMsIHlvdXINCj4gY2FsbC4NCj4gDQo+IEFsc28gcGxlYXNlIGluY2x1ZGUgYSBGaXhl
cyB0YWcgdG8gc29tZSBjb21taXQgdGhhdCBtYWtlcyBzZW5zZSBzbw0KPiB0aGlzIHBhdGNoIGlz
IGJhY2twb3J0ZWQgdG8gb2xkZXIga2VybmVscyB3aXRoIHNlbGVjdGl2ZSBmZXRjaA0KPiBlbmFi
bGVkLg0KPiANCj4gPiAgfQ0KPiA+IA0KPiA+ICBpZiAocGlwZV9jbGlwLnkxID09IC0xKQ0KDQo=
