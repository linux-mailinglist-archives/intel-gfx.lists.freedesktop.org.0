Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B663A616B38
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577BE10E516;
	Wed,  2 Nov 2022 17:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A004510E516
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411524; x=1698947524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ng7sNbAxMyvrsipFpipBLzb9byN9o7u4sKXZ0JwrYu0=;
 b=Ta83ymLdGhNfcNnBf6JnTYlr/We7YT5ZjYv7fIwuJB/2BFIq9LPDKSnt
 eh8OngZLnX8hIpuQVtADHi1xFY/41yfPoWXPn0JpqA8G5u6sz91E4pEzC
 /HQ77D7mMQDSojQVXRryE6QinRCSYTM3pjhoJ02rjE7IqBgcv7hOULHWx
 /MbDAmTZ6zPWXzcYdbh/UpLE3be4TYD+E56nRNf1LOQb9yAF428tim0Kz
 NJSVBeH3ZBceAANIDb0diaF1Grbk9KWO8HqcoLCY+yCR/P6gUqmW6kua1
 T8epMqBDR9AZRBU2kwkuf7vjj6tOrhDHnzThebPKsKwo1i9z3Wfzua6FE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395789801"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="395789801"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:52:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636869113"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636869113"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 02 Nov 2022 10:52:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 10:52:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 10:52:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 10:52:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 10:52:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJ750/kTI+8GIXYH4kl8ldR4PMWPXsR2FLrVTcxFzQoXw8MV6TicJcQwsN/zdbPK4MbHFUk1RlwkiZrJwL2GxM0DQpdOfiQxWTgUK/ggrupqaqB1a3wVotqxLWBVLBoxI/0uEKw/uNcYzqmcewMbUuIR8Skbx8WP0C4ekzFjFbkRPFgFZgbRB9Hdf4RiLmPDy7sz+caK34cBtP2VTtdxCrjIZHP0TU5YyfLc1K5NVHeJ3Zu7MQ25TQtD/XqbrH5YHJRquynFkJY9aLSYsGimxh0J8bCrtGHhZDeG+HaPk7CyENxIZS3zRhkROzEv50/iwGDkacxqXg8y38FrQeGwyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ng7sNbAxMyvrsipFpipBLzb9byN9o7u4sKXZ0JwrYu0=;
 b=LEvNAmynnA+1DF2mC9glegx+/ukCr/nhALrZT+6/pAqIAkV0PVI0rXtR5ww2FU22zA19USka0qhfQshBKULRPwWoauWLVV5PpcRhIHDoZm7eNzauhVyThR6QH5t7v3UL4Z41Mknly7bBIMMB0OuQbNpmdl05+T3UQulIm9EvdlSVDEFoX/vn9dNFltML6sz1rJTiEdkrgfhOHqXNzROytjSA0RiilYtSCP58Tsz2RP8mHL4a+SutpaXXqKQfbjWHnXV4ZfCWZysQhDefpg4NqH1g7jRuNvj4y86AuwhvMpG37qjdSV2blCqifMNPG1feMW2+0H2JBoq2YZ7g9o+eRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Wed, 2 Nov
 2022 17:51:55 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba%4]) with mapi id 15.20.5791.020; Wed, 2 Nov 2022
 17:51:55 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/psr: Ensure panel granularity aligns with
 DSC slice height
Thread-Index: AQHY7uMR0H/1d0LiiUO+yDtJgrX8Z64r6cqA
Date: Wed, 2 Nov 2022 17:51:55 +0000
Message-ID: <94f7f27d0f2ba164787806557083f449c907428e.camel@intel.com>
References: <20221102174544.2288205-1-jouni.hogander@intel.com>
 <20221102174544.2288205-2-jouni.hogander@intel.com>
In-Reply-To: <20221102174544.2288205-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: 41092d61-92d1-4112-5fe9-08dabcfaee38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V3Ns/l4MY7t8xOJSYX36r4BlPJxckCFnXLs3kOpXoFjBaPzp50ntwZuZqkHVUyOOwH4jdbkQufuBqUilttH+nVdnuNKnh0DiZ9vrDGoqF4dlILfRJgtZxwQ13FAksW5fZ7ZHUTgbVUNNJ8NO3TyuWY5tDVhVqk2qQReHCrfw6223ROVNfecas9+x4DOYcf2od4q5df1DoOPeLFi4klWe4VF7ELXlqtUtWcnkpJLJzTic0nXsy4ua+DIlfkM9PVbo7CJkHwXERK4O+couygJsOQoqD6Ls6VRuiezs5ecao5/yhrnq53b/cGDOkOtEG0dJIWXqEYsipbFgJ2befknZki9iF8w49yjdF1j36tiM23y9pajgF7j11ltymgJtBmpsr8I1vV8kRlcxeV80dthI9Mec+jqlQuGXIaoxrWi29QVuDXhcDGUzxh2UYr177GorTl6vZldjyuQtGGJy6kMbtv3SguBzJ0icRFAV3Me6KujibPqas06zhPfMjS1mgv8Fjj2HKkyeJM6fCwOkqBtQKTEJPnbmOyzZrof2yb+TH/HaM1lNnWKNJS6PWhaksCwmx42rbZWYWHb5REqR44hN7VPwprvR2MoxFweVpqE2fNNnBq3iTnUiEHN9nD315BTFZEbF6JlGTBddO79aXEjHUT5NTfxVi9hh6j+oTXFCP9f96P895/hXpiD8U4g1HBDjbCvJ1KZd1p3ItQtIDhdTyVafT3iFUNOk6KP9KtAGB/YtA3neIxpidfu1GNJR6KhdBU74KHh4xQJ6z7B7bQKpUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(366004)(136003)(376002)(451199015)(36756003)(38100700002)(86362001)(41300700001)(2906002)(82960400001)(122000001)(186003)(38070700005)(2616005)(66476007)(66556008)(91956017)(66946007)(66446008)(4326008)(76116006)(8676002)(316002)(64756008)(26005)(6512007)(6506007)(6636002)(110136005)(71200400001)(8936002)(6486002)(5660300002)(107886003)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEx2TnlOM0RyRnBsZ05yVkZtNWNYeklwNVBFYjIweXIrbWhSTzdUTDRTaDhl?=
 =?utf-8?B?TG5EZ1dITStqMEdYU0pUMGIzNDJxQzhnN0ptQzlPR0g1bHFGSFk4bHE4Q01R?=
 =?utf-8?B?Zi82NGo4VVBuTGNvVzVPZTNhaHJRbmxKWWhDZ2JoYVBHL21yaGdIN1JsWm56?=
 =?utf-8?B?V1dmczJENEpJY01VbVFhLzUyTmVwRUkrYldVM1ZjVmxpQVdTRm5CanhSUHlM?=
 =?utf-8?B?QjhEYS9Xa2doZGpidkNhWWN4UHQ3ZlloK2xrbTFlMVRtL29UU2YwbnRXNWVP?=
 =?utf-8?B?RG1DNmhwc0lydVF3Uk1qUnhIQ2c3MWNRR0ZxMDZYMVNKWC8wSWU3Y2ZkN3pv?=
 =?utf-8?B?M0pGdmhkeXhrVHJjSC9pdEw4WmNJNWVmeHhSMlU2RVlvT1ZoclpTZkFlYlJr?=
 =?utf-8?B?cWoycno5YzZMc0tUVlFORWJhLzhzTmFYQmxDSXFNR3A2bzlBRUkzd1V1ZVdi?=
 =?utf-8?B?UzFkelhLYmZDb2l6K1QyUDdKSHhoYkJxek9LaGZ4MEtOeWdUTURFT1RnN2Ra?=
 =?utf-8?B?TjZjUmc0dENTb3VFWGJEQXg4ajc0cm1wamlrTWxadEhpY21KekZTa1BDOFZ3?=
 =?utf-8?B?YXJTM3licWpZQzMyOGRXU0NXMk9HVUpJNllsUEVRcklRUFZsMjRuUjhiWTkx?=
 =?utf-8?B?WTdoRFhEZE45WGRTdlhmK01VVW12MFNGQTdpZFZSa2J2SVM0OEsyN0JVZWcw?=
 =?utf-8?B?dlFvNGxBTTd5d3p3MHNrZ2ViRUxTRkNQUStTaWdzSmtMclE3UlRhYVQ3VWJW?=
 =?utf-8?B?V0VrR2pucEI1MllOWGtWMndadFJudllLY2J0bk5HaGh6YVVONnhWZmZueGVr?=
 =?utf-8?B?ZXNhblNkTTJGN1dZeWZTWTYzU0RnQzU3MmtaVzdWWFF2LzhZUWdhWHpyb09N?=
 =?utf-8?B?WWYxN2ZOZThqaFpnRUJiYUs5bDVtOFVPM2E3WHRsMzNNRkZrczI0ZUZwYzhs?=
 =?utf-8?B?QVhLdE5OdnhjMlhKeVFkdC9MOFZXSWhHSmFDK2ZkYjFzTHFObUl3cHAzdVNX?=
 =?utf-8?B?WFoxdlZZK01vQ1A4NEJEMlJqU0t6R0hRbVYvNUpnVDlKNEx0emhnYmJyazZi?=
 =?utf-8?B?TUNNamhxUi9NNk0yTjl6b2ZxdUlzUjRqaDg1RUFYK0NEL1M1MXRJQUJUSVM3?=
 =?utf-8?B?ZVZ6RUROMkJIbEJtRWtaaHBXcjFqK2RiczgxRUF5aGxWc0c3SDVSdjQ2NitK?=
 =?utf-8?B?OVlBNFp0T1dleVBYMGtUanc0TUpIR1hQWDBMcVRNTnQxSmVtUVVXcnBWNm9t?=
 =?utf-8?B?ZVoyVGJKUDZ3RG0wUVY3b0hJTUgrQlpnblNQT015WERRR1B2dkVWVWhPNEpi?=
 =?utf-8?B?Wk1PblZpTWRCSm92b20xTnh3U2l1aFR2cm1Gc0lMRXB0REp2bWtoTVdzT1Bh?=
 =?utf-8?B?VVBoRkM0OUhXMDhqdHR4eW90UmRsaWpZb0J3R016eWVOdHFsV1ROaGkxUmJE?=
 =?utf-8?B?ZktKV0hkdW1TVmtZeUJyV1FKeS8zRlpvclh3ZTlvV3hlNHc0OXRZWm5Yc2x6?=
 =?utf-8?B?WUxpeEY3RHV1aFBBTkMrOFF4TEpibFdTN01MclZhU2xZZnZuWUxMRnQxTVcv?=
 =?utf-8?B?bEFiRGNJLzRRK202aE9TVWs0TXNscno0V2RIbkRnNkFjODhnZ0FOcnB0bmtN?=
 =?utf-8?B?cEN2WDV0dmVZaTNOckJXRmQ0TWR4VExNUE1OSzM5Rk94UlZjTmpPL21JK0Q3?=
 =?utf-8?B?TXJLTlVpdTNMcS9BZTRWZjgvaUFydXVsZ3dJS1MwWjFJQ3RNSktoUDNpbTZR?=
 =?utf-8?B?MElYMGwvMklZajZrNkZ2MlNldi9JNEZtT0RoYXE1VDk4K2ZUcGhYamkxMnNs?=
 =?utf-8?B?alBtZjdUekU4c0VyWmc1SnV4YUpzMCtXYmMzKy8yVFBaWDQ4S09yRTFRTmhB?=
 =?utf-8?B?dy9nYmJOSGl1ZSs5MVJhd0g5cXlCQTB6dFVqcXlFQWdtRmNFU29wd1puVm84?=
 =?utf-8?B?K0VwYTE3V2JiWmYvZTN6cVBWZHFxZ3Y5RXBuMDB3ejk2R2lUTFFabkJCazZI?=
 =?utf-8?B?Y3FzLzRHY29YS2d5WnZUbTdvTmFQZWxnN1N1OHlJU05tRVNYSjJiWHlBTHNG?=
 =?utf-8?B?NHBzWGQvUUZWVHROWVRWMkE0YVZoNmdXSUx6VUZ4OEZWZ0FnajRXcGFkazdF?=
 =?utf-8?B?cVprK3FpSW90clI5SlZOU1FqV1V0SmdxbXdXeHRwN2RDVDUrWEoyVUhSOHFa?=
 =?utf-8?B?eFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A3305A89358EC04688EA22F1E00938DF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41092d61-92d1-4112-5fe9-08dabcfaee38
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 17:51:55.0395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uozACVbQu6sTq9JAEKKJQB4x5NJ+m8UO047lTD2eZfa+U8faxKkdnykVJd4I6sbo7zkBvMT80e5t0+FcUKJv2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Ensure panel granularity
 aligns with DSC slice height
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

T24gV2VkLCAyMDIyLTExLTAyIGF0IDE5OjQ1ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IERvIG5vdCBlbmFibGUgcHNyMiBpZiBwYW5lbCBnYW51bGFyaXR5IGlzIG5vdCBhbGlnbmVk
IHdpdGggRFNDIHNsaWNlDQo+IGhlaWdodCB3aGVuIERTQyBpcyBlbmFibGVkDQo+IA0KDQpSZXZp
ZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoN
Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBD
YzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsrKysrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggZTExYjA1OTIwNTVmLi41NzU3NWI1YzZkNDgg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAt
Nzc5LDYgKzc3OSw3IEBAIHN0YXRpYyBib29sIHBzcjJfZ3JhbnVsYXJpdHlfY2hlY2soc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX2RzY19jb25maWcg
KnZkc2NfY2ZnID0gJmNydGNfc3RhdGUtPmRzYy5jb25maWc7DQo+ICAJY29uc3QgaW50IGNydGNf
aGRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRpc3BsYXk7DQo+
ICAJY29uc3QgaW50IGNydGNfdmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2Rl
LmNydGNfdmRpc3BsYXk7DQo+ICAJdTE2IHlfZ3JhbnVsYXJpdHkgPSAwOw0KPiBAQCAtODA5LDYg
KzgxMCwxMCBAQCBzdGF0aWMgYm9vbCBwc3IyX2dyYW51bGFyaXR5X2NoZWNrKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ICAJaWYgKHlfZ3JhbnVsYXJpdHkgPT0gMCB8fCBjcnRjX3ZkaXNw
bGF5ICUgeV9ncmFudWxhcml0eSkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgDQo+ICsJaWYgKGNy
dGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUgJiYNCj4gKwkgICAgdmRzY19jZmctPnNs
aWNlX2hlaWdodCAlIHlfZ3JhbnVsYXJpdHkpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAg
CWNydGNfc3RhdGUtPnN1X3lfZ3JhbnVsYXJpdHkgPSB5X2dyYW51bGFyaXR5Ow0KPiAgCXJldHVy
biB0cnVlOw0KPiAgfQ0KDQo=
