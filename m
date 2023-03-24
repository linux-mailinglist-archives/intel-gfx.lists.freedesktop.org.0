Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C0A6C7BFE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 10:51:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDDA10E190;
	Fri, 24 Mar 2023 09:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903D110E190
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 09:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679651507; x=1711187507;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rEH9lL+er+VN1h8Zgik2mNpK20mrr4L6GU0LBTmXl5o=;
 b=Tjo1xD7QLsaTlp/XtvdHQ+ByGe/nakNeYqiN3W0Dzd0RbSWPf0jPtDka
 Xa2bSc9yefdOV2bFASZEmrnUCbFIfzrd4ulPZjQLLMi5CfWakN0vqt74i
 8sTIORG+ul+SXN9H0HnmrYIBLpsLNoxjrMbGlkH4QNaIGuB2x3dnErcpJ
 TC2g9AgjFhVyJeiTFS79E/jbnvCCJWFhLKziUKBo6VZpi6WuYmtFYzmQs
 Lvs6xF2O7qHxAZy3qN49A0Hu2IGGAUOdFgay3SbJWyf4Nogjk4wIcTkne
 jakS0+pZYnppERajj2eX9K925X/MowTVUPITbKTcMy0A1puA7kLyxUoBA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="404658664"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="404658664"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 02:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771823270"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="771823270"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Mar 2023 02:51:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 02:51:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 02:51:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 02:51:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 02:51:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3nRaR+uSwgt9zysvuB+XS9extYh6stZFqJ07KnpSkjg/j8QYTMjg+UlQfr2q0XG7RTvs9Um9JExZddLYftEjO1yC+zL8RKOvQqX7HQuzn0VTZfbNJ1l7LkewjWN0qu+O/ctMblrmWwh9NWocp0VGIIttrxIssT06YCbokku6bi7Fn5WPRuQhHlct+JLS66hv6qBKEQeKo9vUGGiWP5uMxxygaN2TF1f23zkmMiXqMcsAmVJNtZQWqby4fLDs+UM9I/Pcc5jLevO7j1ADgo2L6vxKDHYfkmyDQjim2tDbwtCc1wZpVQimHdn0wpVzHWmKwaJOTW8q+po5IFkspjanA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rEH9lL+er+VN1h8Zgik2mNpK20mrr4L6GU0LBTmXl5o=;
 b=ItB16Et1Kn+dbbHUEyA4YLK7qJAoTrBj1EHm7sCspHoDliUQGURUGF4K5hnuml8dQZAMCGVdsySKHwwZlVuOv9IqbONaamY4ByvrUcx7Tqh6mRX2pPq2Qr/4blIC2Y8ZZ9I++FNsX2dvQPgIg6YdtULu/e2keCnqPfc0izjGgKkBU3TQfsWfXgy/iB5FKn+J31oL0bKSapejt3EC5Zw7iHylkxsbzf6maZ3QzI22dmbq1agZjMSOiLtirH0qbDUd2I9bq7yTc0tMrpoD0h2iJ+mY3d6Jhd0Eu1JtoGAh7S5/Bx23XnYgJDLAwKrb8+BLIETE3BNV1RTOLu54GOLYBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 09:51:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 09:51:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/29] drm/i915/tc: Use the tc_phy prefix for
 all TC PHY functions
Thread-Index: AQHZXZK56Nig9lH+DkS75dYLBT/Lo68JsShw
Date: Fri, 24 Mar 2023 09:51:39 +0000
Message-ID: <MW4PR11MB7054A1106269C43EAF44FC4DEF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-5-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB8222:EE_
x-ms-office365-filtering-correlation-id: 28f53353-cfb5-4faf-bcd8-08db2c4d5d9f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yP7FVjFLwC1VfPuOtEvaY1wKG0tqvLw8fh2BmjKTev/w/kc7+YpGr02mNW/q2vxjzjeAeQl7BKr8m/ONaN1wFdMVC3e3cMugQ/UsD/j9BaEO1fbUSGjOfsrU6PGeMPKxGXzNfJtoNWiDwk953u94fewRdduojSLvyGzhZP4YjMHfXBNlIRvv8YwttWuadjQXoPKTOkAohHMGX83Ytwm7GxPq8AduqmiXsIREPpDq8PYdjXqARmsnfhpUOoNzFzS6HK34J9ol2WDHc/wH853PgJlOROEya+/aby1GCVuWeo9CEvWnrqfQhHPh+j340YZGyyG4mFiSX3PI0UdFZq1msaiwBI1asNm0nsUCQhNDqledBxuZfsX53MQcWpP9GDtFGnHHcUwZgfHVgcIDhc9syqibr4gP8U8we2weSbWgPbbI839+QphlNQ3nyq3juSY9dOKmRZrvVerv3EqMdMNqQjtMLxPotC/Jh3krfXBoV3HIhNE2Pjn9pv6Ql4qpMcMmyv6+59zpNDCqoRLg2+Ovd9xvzvI/t112MYhD2dwotp7nEyGfKEYIbXq9Mg8d18uRvumH0uLAMR9hsaa3o0EgwOlDNjFjzMUMi9oJc5tS+mrRinACGeonGCTWlpX4qgK4OvWV8VaJvLrM23z4+yo8eq/LI+h7fYP1QVEEpwT/F1/EvYYx7rN2ltUyIvpMdsaGoMWMmJcIgcOEuNYIGzardg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(41300700001)(52536014)(9686003)(186003)(8936002)(5660300002)(82960400001)(8676002)(64756008)(66446008)(66556008)(66476007)(66946007)(76116006)(122000001)(86362001)(83380400001)(7696005)(55016003)(316002)(2906002)(38100700002)(110136005)(38070700005)(26005)(6506007)(53546011)(71200400001)(33656002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEgrNjVLVG82VU1WMU5pRitQdUxJYzBnZ1lFZWg1YzR1RlJ2R2VYc1BjU0tG?=
 =?utf-8?B?eEFhb1lMeStsdjhMQ3p3MHV6eVkrS3VLNVV1YTRBMHd5MGxrOHVTV0F1Tk8v?=
 =?utf-8?B?Y1hzQzVkNDB1eTJzcHI1SDZtTlpEczlnUEJoM0pySkdTbm5rcFNFQjd1OGxq?=
 =?utf-8?B?TWRRRCtqbUpCNUZBVmEyRkVjMlcwUXpZMDhNQkpCZXhRQlFYVWVxbHAwWmtF?=
 =?utf-8?B?SGd0NHVVZ3BORXk2Z3lYYTRJQ01Ja3R1UDltUkVFNUVFY3ZOMm5VNDNOdHFW?=
 =?utf-8?B?WUtTU2xicEQ5UmZESHpLa3NIR3lyN2dnd0RIQ3BuVTZ4S0pzanpvOVA0Szc2?=
 =?utf-8?B?bTgxRmU3eFQxbHAvYTNnK1p6YlhWMUlWek9MTG5sek1hOWdXNFFrRWJyZkV2?=
 =?utf-8?B?TGtIeTZUVGZlVEhBL0toK1NPMlRBYUZzenFFd2NRckhkak4vVFlRZXh1UUQ1?=
 =?utf-8?B?bFBpNWExN1hESHF5MjF4NDEwWFhaRW00N3hBS25sRS81WnA2YUdEK25WaG44?=
 =?utf-8?B?bzVlUE5ZMFQ0V2lLN3AzaDBIekJINzB0dkU2VloweldFTFdjN2s3dUJRUE9L?=
 =?utf-8?B?RHcyZndRNDNkYXBQWTJpckl5U3hQNStIVFk0Vk1xMlZUaVViNVlLWGlWUHph?=
 =?utf-8?B?ZjM4QnRZVmJyYVRqWWVmekVzMGZ2UmNINDJFd2hqbG4xcUN4WTBmdmdhYlNi?=
 =?utf-8?B?aFRyc2NXa2QrRlJ4Z2Rab2drdGZxZ0xSZHBFTk9IeXlsSmRQNEVHNDM5VHRY?=
 =?utf-8?B?eC9RNFFPN252SXhPeTlyY3hMbmQrTTNKclZCRk54MnVvZXRUdUtqT3FueFVR?=
 =?utf-8?B?MjVPTUlvenpyWUlKN3ZSUktLREx0K1dsL3hab2Nla0pEODVEVE5sOEc4aTlO?=
 =?utf-8?B?N3NySDBseUhEUEw4THZSSlpiTHdqcWdsOGdoQzV0WWw3SGhvM1JYTFNzeWdP?=
 =?utf-8?B?Vm9XdjJJbWo4NkY4eTU5THBuRUViZGIzNjIxbm5BYzhTNU5PMEFEMmRyV3A0?=
 =?utf-8?B?eTA3eU01S0lNQUZ6ZWZjYjc1c1JZTDAxMmNYYlJMbzBCOUs1blVvNTN5SmpZ?=
 =?utf-8?B?QVkxaHhrOUtFc09FVWtzK1NnbFBiZ0lQNmFLVUZ3SGwwSDd2b2VpRXFTaUJH?=
 =?utf-8?B?TC9OSGx2TzZiR255bFhsSnp6S28wYmJVQ2dlWlJ4S29BLzZ5REJqeExxY240?=
 =?utf-8?B?WFRQN1NrclUvK0FiZ0JFVzljMlhxeWdXSGU2UVZNWlQzRUhZUG5kNkJpNHhp?=
 =?utf-8?B?QTFydWd0QTAxMGUrS3lrWVhEQUJVaHFvUU1MbFNmOTJWVHdSZHRmZmRtVHND?=
 =?utf-8?B?UGxja01rTmRlK2hsS1h6NWZudW0xcVdCbTIrMTNVOGtSZWNyUWxDOUV6aE9O?=
 =?utf-8?B?Ty95ZEp2R3p0WHhrdVlqL2ZjM3BPTkVJSFJIUmVOSXVvb2F6dHIyb25FeU5h?=
 =?utf-8?B?T1ByZHpJbkpuL01vNTZLK0w2VmlDenJGL0VRSStKbU85WmkrNnZjM0lTOWRN?=
 =?utf-8?B?K3hIelNBUEJCUVJ4V3hVWFV3cGZFUE5JYjJuZC95ZkZXTjhWRmpjM3JaL2J6?=
 =?utf-8?B?REVlQysvY0QzTFUrSTBwWlBkd09iSUV4THpBYjhtcUdPSVVhNStTajVMbGxL?=
 =?utf-8?B?VmFpMWQyOGRhQXVjUXZab0FqT2UxNnZTNHZvMjlmL3pIQUthU2ZoQzkrTEZx?=
 =?utf-8?B?VmJSS0x0QWVlRVlYeHl6dVdGUmpiWDdmeHVQQlJMU2RLejBTY2JvbSsrOWcv?=
 =?utf-8?B?Yzc2S2VlaWV5enMzWHR4bWhXanlxekUyQWhPYWZlc20yajhJc3FTMVMxNUlW?=
 =?utf-8?B?bVRJbHV1dm9kRVp6WE9pSno4S00xTnFVcWdNdEE5ZXZDSzFOQUE2OFEwK3hh?=
 =?utf-8?B?dkxHUWlNNU1KWEVhMnpsSHVpdkJrYk1iYmJQYUJJKzBWUkpGVjd0bjJIS1VG?=
 =?utf-8?B?QXFnZEhTU1NmWXhocVVud1RpT3ZFcWhvMUkrckdLWHA1TVZ6d1M2U1pTQit0?=
 =?utf-8?B?TXlzeU1xRXl3SENnUmFhRUoxMkJyL01JWi9sTlgvOUhUMm16UW1ya01GeU5m?=
 =?utf-8?B?UDA4SWVSK1pHSGJkeVBSQTBDbS9KUUQzS2lJeG55dk1kbVVaOXJlVjZRMEx1?=
 =?utf-8?Q?gs+QFW6I1PZG2BQUvqLThSwnS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f53353-cfb5-4faf-bcd8-08db2c4d5d9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 09:51:39.7440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c4CqyapMvHsplGOaNRLeRaze+IqSMZ+Lq7iRvwFliUGy6IYI97jorT8799hpflXHe9XLZPQ1tPJuPIzOPEUSwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/29] drm/i915/tc: Use the tc_phy prefix
 for all TC PHY functions
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
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDQvMjldIGRybS9pOTE1L3RjOiBVc2UgdGhlIHRjX3BoeSBwcmVmaXggZm9yIGFsbCBUQw0KPiBQ
SFkgZnVuY3Rpb25zDQo+IA0KPiBGb3IgY29uc2lzdGVuY3kgdXNlIHRoZSB0Y19waHkgcHJlZml4
IGZvciBhbGwgVEMgUEhZIGZ1bmN0aW9ucy4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMgfCAzMCArKysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDlmZWNmMjRiNjljMTYu
LmQyYWZlOGI2NWJlZWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gQEAgLTE1LDcgKzE1LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9tZ19waHlfcmVn
cy5oIg0KPiAgI2luY2x1ZGUgImludGVsX3RjLmgiDQo+IA0KPiAtc3RhdGljIHUzMiB0Y19wb3J0
X2xpdmVfc3RhdHVzX21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOw0K
PiArc3RhdGljIHUzMiB0Y19waHlfaHBkX2xpdmVfc3RhdHVzKHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0KTsNCj4gIHN0YXRpYyBib29sIHRjX3BoeV9pc19yZWFkeShzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7ICBzdGF0aWMgYm9vbA0KPiB0Y19waHlfdGFr
ZV9vd25lcnNoaXAoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgdGFr
ZSk7DQo+IA0KPiBAQCAtMjY0LDcgKzI2NCw3IEBAIHN0YXRpYyB2b2lkIHRjX3BvcnRfZml4dXBf
bGVnYWN5X2ZsYWcoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAg
KiBJQ0wgVEMgUEhZIGhhbmRsZXJzDQo+ICAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgKi8N
Cj4gLXN0YXRpYyB1MzIgaWNsX3RjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gK3N0YXRpYyB1MzIgaWNsX3RjX3BoeV9ocGRfbGl2
ZV9zdGF0dXMoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiArKmRpZ19wb3J0KQ0KPiAgew0K
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFz
ZS5iYXNlLmRldik7DQo+ICAJdTMyIGlzcl9iaXQgPSBpOTE1LT5kaXNwbGF5LmhvdHBsdWcucGNo
X2hwZFtkaWdfcG9ydC0+YmFzZS5ocGRfcGluXTsNCj4gQEAgLTM4NCw3ICszODQsNyBAQCBzdGF0
aWMgdm9pZCBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAq
ZGlnX3BvcnQsDQo+ICAJCWdvdG8gb3V0X3NldF90YnRfYWx0X21vZGU7DQo+ICAJfQ0KPiANCj4g
LQlsaXZlX3N0YXR1c19tYXNrID0gdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KTsN
Cj4gKwlsaXZlX3N0YXR1c19tYXNrID0gdGNfcGh5X2hwZF9saXZlX3N0YXR1cyhkaWdfcG9ydCk7
DQo+ICAJaWYgKCEobGl2ZV9zdGF0dXNfbWFzayAmIChCSVQoVENfUE9SVF9EUF9BTFQpIHwNCj4g
QklUKFRDX1BPUlRfTEVHQUNZKSkpICYmDQo+ICAJICAgICFkaWdfcG9ydC0+dGNfbGVnYWN5X3Bv
cnQpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBvcnQgJXM6IFBIWSBvd25lcnNo
aXAgbm90DQo+IHJlcXVpcmVkIChsaXZlIHN0YXR1cyAlMDJ4KVxuIiwgQEAgLTQwOCw3ICs0MDgs
NyBAQCBzdGF0aWMgdm9pZA0KPiBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAJICogTm93IHdlIGhhdmUgdG8gcmUtY2hlY2sgdGhlIGxp
dmUgc3RhdGUsIGluIGNhc2UgdGhlIHBvcnQgcmVjZW50bHkNCj4gIAkgKiBiZWNhbWUgZGlzY29u
bmVjdGVkLiBOb3QgbmVjZXNzYXJ5IGZvciBsZWdhY3kgbW9kZS4NCj4gIAkgKi8NCj4gLQlpZiAo
ISh0Y19wb3J0X2xpdmVfc3RhdHVzX21hc2soZGlnX3BvcnQpICYgQklUKFRDX1BPUlRfRFBfQUxU
KSkpIHsNCj4gKwlpZiAoISh0Y19waHlfaHBkX2xpdmVfc3RhdHVzKGRpZ19wb3J0KSAmIEJJVChU
Q19QT1JUX0RQX0FMVCkpKSB7DQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQb3J0ICVz
OiBQSFkgc3VkZGVuDQo+IGRpc2Nvbm5lY3RcbiIsDQo+ICAJCQkgICAgZGlnX3BvcnQtPnRjX3Bv
cnRfbmFtZSk7DQo+ICAJCWdvdG8gb3V0X3JlbGVhc2VfcGh5Ow0KPiBAQCAtNDU3LDcgKzQ1Nyw3
IEBAIHN0YXRpYyB2b2lkIGljbF90Y19waHlfZGlzY29ubmVjdChzdHJ1Y3QNCj4gaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gICAqIEFETFAgVEMgUEhZIGhhbmRsZXJzDQo+ICAgKiAt
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgICovDQo+IC1zdGF0aWMgdTMyIGFkbHBfdGNfcG9ydF9s
aXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAr
c3RhdGljIHUzMiBhZGxwX3RjX3BoeV9ocGRfbGl2ZV9zdGF0dXMoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydA0KPiArKmRpZ19wb3J0KQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7DQo+ICAJZW51bSB0Y19w
b3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIGRpZ19wb3J0LT5iYXNlLnBvcnQp
Ow0KPiBAQCAtNTM1LDE0ICs1MzUsMTQgQEAgc3RhdGljIGJvb2wgYWRscF90Y19waHlfaXNfb3du
ZWQoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAgKiBHZW5lcmlj
IFRDIFBIWSBoYW5kbGVycw0KPiAgICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAqLw0K
PiAtc3RhdGljIHUzMiB0Y19wb3J0X2xpdmVfc3RhdHVzX21hc2soc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICtzdGF0aWMgdTMyIHRjX3BoeV9ocGRfbGl2ZV9zdGF0dXMo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICB7DQo+ICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsN
Cj4gDQo+ICAJaWYgKElTX0FMREVSTEFLRV9QKGk5MTUpKQ0KPiAtCQlyZXR1cm4gYWRscF90Y19w
b3J0X2xpdmVfc3RhdHVzX21hc2soZGlnX3BvcnQpOw0KPiArCQlyZXR1cm4gYWRscF90Y19waHlf
aHBkX2xpdmVfc3RhdHVzKGRpZ19wb3J0KTsNCj4gDQo+IC0JcmV0dXJuIGljbF90Y19wb3J0X2xp
dmVfc3RhdHVzX21hc2soZGlnX3BvcnQpOw0KPiArCXJldHVybiBpY2xfdGNfcGh5X2hwZF9saXZl
X3N0YXR1cyhkaWdfcG9ydCk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wgdGNfcGh5X2lzX3Jl
YWR5KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KSBAQCAtNjMxLDcNCj4gKzYz
MSw3IEBAIGhwZF9tYXNrX3RvX3RjX21vZGUodTMyIGxpdmVfc3RhdHVzX21hc2spICBzdGF0aWMg
ZW51bQ0KPiB0Y19wb3J0X21vZGUgIHRjX3BoeV9ocGRfbGl2ZV9tb2RlKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KSAgew0KPiAtCXUzMiBsaXZlX3N0YXR1c19tYXNrID0gdGNf
cG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KTsNCj4gKwl1MzIgbGl2ZV9zdGF0dXNfbWFz
ayA9IHRjX3BoeV9ocGRfbGl2ZV9zdGF0dXMoZGlnX3BvcnQpOw0KPiANCj4gIAlyZXR1cm4gaHBk
X21hc2tfdG9fdGNfbW9kZShsaXZlX3N0YXR1c19tYXNrKTsNCj4gIH0NCj4gQEAgLTY3OCw3ICs2
NzgsNyBAQCBnZXRfdGNfbW9kZV9pbl9waHlfbm90X293bmVkX3N0YXRlKHN0cnVjdA0KPiBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LCAgfQ0KPiANCj4gIHN0YXRpYyBlbnVtIHRjX3BvcnRf
bW9kZQ0KPiAtaW50ZWxfdGNfcG9ydF9nZXRfY3VycmVudF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiArdGNfcGh5X2dldF9jdXJyZW50X21vZGUoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAllbnVt
IHRjX3BvcnRfbW9kZSBsaXZlX21vZGUgPSB0Y19waHlfaHBkX2xpdmVfbW9kZShkaWdfcG9ydCk7
DQo+IEBAIC03MzUsOSArNzM1LDkgQEAgaHBkX21hc2tfdG9fdGFyZ2V0X21vZGUoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQsIHUzMiBsaXZlX3N0YXR1c19tYXMgIH0NCj4g
DQo+ICBzdGF0aWMgZW51bSB0Y19wb3J0X21vZGUNCj4gLWludGVsX3RjX3BvcnRfZ2V0X3Rhcmdl
dF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiArdGNfcGh5X2dl
dF90YXJnZXRfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIHsN
Cj4gLQl1MzIgbGl2ZV9zdGF0dXNfbWFzayA9IHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhkaWdf
cG9ydCk7DQo+ICsJdTMyIGxpdmVfc3RhdHVzX21hc2sgPSB0Y19waHlfaHBkX2xpdmVfc3RhdHVz
KGRpZ19wb3J0KTsNCj4gDQo+ICAJcmV0dXJuIGhwZF9tYXNrX3RvX3RhcmdldF9tb2RlKGRpZ19w
b3J0LCBsaXZlX3N0YXR1c19tYXNrKTsgIH0gQEAgLQ0KPiA3NzAsNyArNzcwLDcgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfdGNfcG9ydF9yZXNldF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQN
Cj4gKmRpZ19wb3J0LA0KPiANCj4gIHN0YXRpYyBib29sIGludGVsX3RjX3BvcnRfbmVlZHNfcmVz
ZXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpICB7DQo+IC0JcmV0dXJuIGlu
dGVsX3RjX3BvcnRfZ2V0X3RhcmdldF9tb2RlKGRpZ19wb3J0KSAhPSBkaWdfcG9ydC0+dGNfbW9k
ZTsNCj4gKwlyZXR1cm4gdGNfcGh5X2dldF90YXJnZXRfbW9kZShkaWdfcG9ydCkgIT0gZGlnX3Bv
cnQtPnRjX21vZGU7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfdGNfcG9ydF91cGRh
dGVfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwgQEANCj4gLTg0Nyw3
ICs4NDcsNyBAQCB2b2lkIGludGVsX3RjX3BvcnRfaW5pdF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQNCj4gKmRpZ19wb3J0KQ0KPiANCj4gIAl0Y19jb2xkX3dyZWYgPSB0Y19jb2xkX2Js
b2NrKGRpZ19wb3J0LCAmZG9tYWluKTsNCj4gDQo+IC0JZGlnX3BvcnQtPnRjX21vZGUgPSBpbnRl
bF90Y19wb3J0X2dldF9jdXJyZW50X21vZGUoZGlnX3BvcnQpOw0KPiArCWRpZ19wb3J0LT50Y19t
b2RlID0gdGNfcGh5X2dldF9jdXJyZW50X21vZGUoZGlnX3BvcnQpOw0KPiAgCS8qDQo+ICAJICog
U2F2ZSB0aGUgaW5pdGlhbCBtb2RlIGZvciB0aGUgc3RhdGUgY2hlY2sgaW4NCj4gIAkgKiBpbnRl
bF90Y19wb3J0X3Nhbml0aXplX21vZGUoKS4NCj4gQEAgLTk3Niw3ICs5NzYsNyBAQCBib29sIGlu
dGVsX3RjX3BvcnRfY29ubmVjdGVkX2xvY2tlZChzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5j
b2RlcikNCj4gDQo+ICAJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIWludGVsX3RjX3BvcnRfcmVm
X2hlbGQoZGlnX3BvcnQpKTsNCj4gDQo+IC0JcmV0dXJuIHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFz
ayhkaWdfcG9ydCkgJiBCSVQoZGlnX3BvcnQtPnRjX21vZGUpOw0KPiArCXJldHVybiB0Y19waHlf
aHBkX2xpdmVfc3RhdHVzKGRpZ19wb3J0KSAmIEJJVChkaWdfcG9ydC0+dGNfbW9kZSk7DQo+ICB9
DQo+IA0KPiAgYm9vbCBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikNCj4gLS0NCj4gMi4zNy4xDQoNCg==
