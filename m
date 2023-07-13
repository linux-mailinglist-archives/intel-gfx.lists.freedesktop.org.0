Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D3375216D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF0410E681;
	Thu, 13 Jul 2023 12:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525A910E698
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689252236; x=1720788236;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kE/IF0GUJ3o9bf14Y2JvJxqC0QJnrdQwBrgylEiX7ls=;
 b=i+rv3wiIB8vBhu61Vm0n35qIM0vXJBihjLAW37giPYYrdNJ2AVVzMbH7
 uF+umlW/iFszGFVz6czMI5DoeHeEnMEIDQv30bCVV8bkPm51JQUi/Ima/
 fOTPJx68S0PXyoH++I6jI6Ohy3LOAA5Iu8dMtlJSplq0gaw7GSXST3hzV
 QJQW4bfJr01tgAGcmOXUrhMBIYI1K1y/8GNHT0Mwua8B4XkcfVqTmLTLQ
 XfDstuTCugcEBuWF1bwO8BGmKuZftbc9WxicpsOFQ+hpF/TYmDoFJwq9O
 MU4HeZwaPNi4QZa1d76lKt/KmSdplSUsl6MEy6NIgwOgbD/S9JSrbmjMy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="350026493"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="350026493"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="787433553"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="787433553"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2023 05:43:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 05:43:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 05:43:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 05:43:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 05:43:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPxPk+Q3SNN/Q4yN2XBQiLBzMX99i/PimCsrXw+MXqAWtE52pR3rI4TeVC+uXdmxKrbboFCedoJzj8h4LBfs18mUU0gzyWITPYhZokCalgBJXdr/+b9vv537BO/zl/whyyMwtL4mJv5TJb6rl9TkwECz9qrpsvwzPLdCjJ34+kOa3BN6fUJOVMPdlxl8ZhH8iBwKbR+h1nIWISpgWZgo0zDT9MXSHFDSlvI4eFjQmsQ8BJjkGres7zrE1CYxGj1HEd5nWNsxStEWQR3c58jfeLLLK4mipeWRKkg+XpB/+T5FJIRUcRjTemfY90B3pNUkZr9YwqeF1SGtZkXiSXEIdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kE/IF0GUJ3o9bf14Y2JvJxqC0QJnrdQwBrgylEiX7ls=;
 b=SXPJAMPxD0IPoyxjgkMdTXjQfGEpH4F6dcMDzS8iEO291QsPi7kS9UpkFiezDQ/9Y8TE6axgzj5ey50fcUtIC4rbut+RSxD+ImBRuajXnl2m2ZgRhJypt4W+VbFbxhalbxAXWzp63roprUkU7ZwxUb1sevkP7pnFYlPKAHH4GzLg4nmtAzLZ/qP1RCMHowEBCPMY35pHQcp0MrITtK/sEZbQfjJldrdIxclxu0c6y7I+uKd7ZU2NhqZ+Td69uU3lxA4AJE1sXfWcY7X4+eQOe9YQKD/hMO7Xc7o97La2es+26mx+gELh5Npuj4D5W1BqiFv4sCUL2sRM0tG80+S1tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA0PR11MB7741.namprd11.prod.outlook.com (2603:10b6:208:400::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Thu, 13 Jul
 2023 12:43:53 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::a548:a888:b9d0:fca1]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::a548:a888:b9d0:fca1%3]) with mapi id 15.20.6588.017; Thu, 13 Jul 2023
 12:43:53 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Ursulin, Tvrtko"
 <tvrtko.ursulin@intel.com>
Thread-Topic: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
Thread-Index: AQHZsx1zdcw3JnaUlkmCBTRdaWq/Na+zAgIwgARidQCAABEZgIAAJkmAgAAAy7CAAAcugIAAAO2Q
Date: Thu, 13 Jul 2023 12:43:53 +0000
Message-ID: <IA1PR11MB6266AE5FAB835A97C8C0349DE237A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
 <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <de17473e-09fa-9346-daf4-96bf12fa580c@linux.intel.com>
 <871qhcgng8.fsf@intel.com>
 <14a0d370-150b-f311-2a66-b8400163dd61@linux.intel.com>
 <IA1PR11MB6266A7A8009AC987E421EBBCE237A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <6e6ba3ec-5051-400c-b05d-98ced1ffb8f7@linux.intel.com>
In-Reply-To: <6e6ba3ec-5051-400c-b05d-98ced1ffb8f7@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA0PR11MB7741:EE_
x-ms-office365-filtering-correlation-id: fa223b76-384d-41c2-b22c-08db839ed0a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wtyN4JI/annDZRjX/G6kMZcl0zklzZV0WEN+0scwE/adr4IRzuaVwJmaaVbkCoyb//NmEYkQEfADkA62Su6Y8BV6nYt/fVHarlsRXoDi5qFeASy8tEiBxx+foZuZNEBUdIO+MlsEzPOpJCsaREqjOhGeLFrvWpCcNb0683QWBGhR9EUdQosWlKeQP3B3XumrF11KMFmjTB9JTJ7hCWalTv6jYMP2iE9TZ+8ZBeSq36TOmM03bgNaXaapxbXqewZm4AxxRCq/x4nZZXLNdbYkXSGsd7Z6TuNFf3j3CLUXFQ2D3zVTt7EyVFEzz6RFTSqGuoy3+5DaiNIdoStOKsa4pCeTkdwx39QCLO2fTSWg2bsbstF/IpluZdxrE8aZmF+Sk+lePUOW2fNT+zrhhjcNP4/A4kEpbpMv+OPLL4LoLEkA8EQV06ZYce7B98039Jiv1VwQXGB6+dxFYDVEjT1k7sKs+eN6OTrgXEYFhXzeOq5waL1s7l5Uy4Ro3qTzTJy7bD5olGLoUeztL5lkg4tFuQ9WYFvAPEkXGdvxlHs4FQoTPlCDB+2+ivA5OhJUlKpAJ0tg/aqbB2IskqPIgmQSswrJPPjzK6vZ2OvqjrUAojPznf1AxFtxuPM2Q/vBG6Is
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(396003)(39860400002)(346002)(376002)(451199021)(6636002)(4326008)(66476007)(64756008)(66446008)(76116006)(66556008)(66946007)(38100700002)(122000001)(86362001)(186003)(38070700005)(26005)(6506007)(53546011)(83380400001)(9686003)(82960400001)(33656002)(478600001)(55016003)(110136005)(7696005)(54906003)(41300700001)(8676002)(8936002)(71200400001)(2906002)(316002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0dwSWFpZWE0SjlpOGRvWk9OV1g3SVlnZjEwMnBLMWtxbHovUjRqNmV2Wmw4?=
 =?utf-8?B?K1hkVG85czhScnNURllxMHExNVQ4ajBJT3JRK1ErNTRJWDUzRmNBVEFOVE5M?=
 =?utf-8?B?Nm9UbVFIWWRaQkVsTGRxSVQxK01kbWpxWVczMnl1bjZqOTB2NXRnY3lHK1FR?=
 =?utf-8?B?dTZDWTJPcWg4MFdyVGYrWmRNaVR3Um02MEpmRDVwTVNaRWh3Q29Pa0lsaXVj?=
 =?utf-8?B?OSt0VjIxTHk5dkdpenVhR0dEVjlqaThHOUVxbVdxMFBEblZmS3QyMFF3eXl4?=
 =?utf-8?B?bWd0S0NuTk4rR1pwTGdqYUY3dERjRmtWc3VsbmowdFdEcW9KZitPT0RRRkJX?=
 =?utf-8?B?NkIwOHRiZ0dkbXY3dnFJOXBrOGQxS0NQenZ3UmpZRkZBMHI4YSs4NjZxTHlQ?=
 =?utf-8?B?YnFRZXpoYk94cEd6M0JWTkx6bExmOWNmdWpoV1JES09PV3E5Rk15Qk1acnMw?=
 =?utf-8?B?ZW9MTzdDeG5TUmdOZ1JlbERZQkUwQ2RyT0lBa05FRU9vKytzci9XWUNoMDRr?=
 =?utf-8?B?QTl2UHhNSC9WbFk5cGdOd3MyMlo5VVorSGFxOTcrQk9ETE1rNm8xMHN4eGJm?=
 =?utf-8?B?ZHl4RVFEb0svV3dSSGxGWUVQaDRnS2Vkb09yTTNsMkMrZGljVWJEMS91VnV5?=
 =?utf-8?B?YVMveUdRT0NqZmZKM2lsRVBmeFNtbktiZXpsZTBsY1JnT2I0ZlVielVKYzVs?=
 =?utf-8?B?V1FnbEhMMnhkZXFhTlF3Y2hwRitpdDQ3NXhBYlpGUGxvVy9SN3RpWEt6MXlD?=
 =?utf-8?B?L0FJaFNmYWFtUDNVLzMwK1VzQUlsd2g4aFRmWllweWpRM0RFdWV4K2dCd2o5?=
 =?utf-8?B?WVIxcy93TURHcVhRSzlUUlpxNWtEMXRVcGdkaUJyelo2dHRGVy9WWlNqUTRl?=
 =?utf-8?B?VkpYVkp2Q2ZNQ3JCSXlGTTNHcGdQbWR1MEliYjdJbm0xYWNPV21oT2dEZU5t?=
 =?utf-8?B?MXRYd3ZJZDdWaTZrUVhzQURhbUJUTEtyNHJnL2ZkL1ZqRERZR002Y0F3SkQv?=
 =?utf-8?B?bjNDTFk3eGtxeFlablJkUzNzMXV1MUVoQ200TE9lanNXcVR6QzBBRmhHaDRP?=
 =?utf-8?B?V3R4ZDFHUDRlZHZRQWVpN0kxY0JYUlJGSkJmcDVZREVLK3FkcEkwYysyUFBa?=
 =?utf-8?B?VW1sZjIycWlnWmo0ZDBmNUE4cDlNaWkvMng1OWppczZrckpSQ0VDUVE5cHY1?=
 =?utf-8?B?ZkxTZGdMQTNhTDVWQmpJK093aFdJQzhjR0JTUVR2Y2twVU1sSnBiZWVWeXFa?=
 =?utf-8?B?MmY5dVRpZzFtejNwNUZPR0pSb2NlcWY5VDJIdDh2OFpyWXpzMjNOb0FKdjNQ?=
 =?utf-8?B?aGhvZWcvZWp3L28rbWo5Q21YaVZ1emYwUFdnSlMvdnVZTk9jbDZNd1MvalVL?=
 =?utf-8?B?QStMNWk5cGxJbnpJSG9OZGpxN1laRDFMZTBrM2MxSjdWTzBsQStiVENwaXZi?=
 =?utf-8?B?dkljU1o3eFQ1am5FRk84R2pUQ2Uyc2JBL1NrUmRkNFZDRmJtOXM5V3Q4ck8w?=
 =?utf-8?B?VmpXajc1SDF2UzFhZkFXWkNRK0EyRlp0SWhuN2xESkNXNVpRRTNyWnVYNTZm?=
 =?utf-8?B?NHJtKzdiejZtS3dvNlJIOCtNR2o0bDN5RnRCb1dId1ZRdGxoZVRlUjZ4TUta?=
 =?utf-8?B?WjMyUXZiZ00rMHpvcm9hVnhQTytucHp6V0d4cDNsajg5MHFOQjdaMit2VjhF?=
 =?utf-8?B?eGFIbE1aNXY0K0FGN1BwZWxXYTJXYXpBL01EZ3pVcG16dWlSckpoWDNKVm05?=
 =?utf-8?B?RVVudTNBbHhmc2dnYlpFd1ltL3hPTnRuNmxCcGplM09DVnVZdW9YenZ1M0tG?=
 =?utf-8?B?eExiaWtMQ3lOREREK3RwNU9TYTRHN25hUGRMVjU2WFg3dEMyVWlpb09LdWRI?=
 =?utf-8?B?OGtYVE5ZUFFseUxvYTFVcFA2NUNUa1RMaHJDSjVvbkZ1akR4Q2ZqR0tqNFJE?=
 =?utf-8?B?QW1TQVJZYk5YVXdFWXZkZENxUXozUEY5SUZPZXhDLzNwRUM2cWpkcHNieGZK?=
 =?utf-8?B?VDQrTUdTcXl4NzdoRWFLUS9rOWJFdnNZcXlCbU02Yks1TS9DVUR3U0FkTU9J?=
 =?utf-8?B?d2VrdE12bU9kcDhtNnp2d0pHY3dBYkNNNWFKQXNRdW02bDArSHNWSWdhdW1W?=
 =?utf-8?B?Z2pCb1p3Ulc0Zm4zcTQ0bWFBRGhmSFVvcFk1cUIwVkVsVGhjY3dUcFZzeHdh?=
 =?utf-8?B?anc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa223b76-384d-41c2-b22c-08db839ed0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 12:43:53.1014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aBUBqMfIpp9oIBizU5UMe09ydvD0QZvLF6Vi8JPxuCtauYTMQkTyuHTaRB2GgBea5I3e1EB3tQwax4pNi+6lZFrEkC9UZnjbwg+Cjv345C4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEp1bHkg
MTMsIDIwMjMgNTo1NSBQTQ0KPiBUbzogQmhhZGFuZSwgRG55YW5lc2h3YXIgPGRueWFuZXNod2Fy
LmJoYWRhbmVAaW50ZWwuY29tPjsgSmFuaSBOaWt1bGENCj4gPGphbmkubmlrdWxhQGxpbnV4Lmlu
dGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFVyc3VsaW4sDQo+IFR2
cnRrbyA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPg0KPiBDYzogU3JpdmF0c2EsIEFudXNoYSA8
YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW3YzXSBkcm0vaTkxNS9tdGw6
IHMvTVRML01FVEVPUkxBS0UgZm9yDQo+IHBsYXRmb3JtL3N1YnBsYXRmb3JtIGRlZmluZXMNCj4g
DQo+IA0KPiBPbiAxMy8wNy8yMDIzIDEzOjEyLCBCaGFkYW5lLCBEbnlhbmVzaHdhciB3cm90ZToN
Cj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+ID4+IFNlbnQ6
IFRodXJzZGF5LCBKdWx5IDEzLCAyMDIzIDU6MjYgUE0NCj4gPj4gVG86IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+OyBCaGFkYW5lLCBEbnlhbmVzaHdhcg0KPiA+PiA8
ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOw0KPiA+PiBVcnN1bGluLCBUdnJ0a28gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4N
Cj4gPj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFt2M10gZHJtL2k5MTUvbXRsOiBzL01UTC9N
RVRFT1JMQUtFIGZvcg0KPiA+PiBwbGF0Zm9ybS9zdWJwbGF0Zm9ybSBkZWZpbmVzDQo+ID4+DQo+
ID4+DQo+ID4+IE9uIDEzLzA3LzIwMjMgMTA6MzksIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+Pj4g
T24gVGh1LCAxMyBKdWwgMjAyMywgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4NCj4gd3JvdGU6DQo+ID4+Pj4gT24gMTAvMDcvMjAyMyAxNDo0NCwgQmhhZGFu
ZSwgRG55YW5lc2h3YXIgd3JvdGU6DQo+ID4+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+Pj4+Pj4gRnJvbTogQmhhZGFuZSwgRG55YW5lc2h3YXIgPGRueWFuZXNod2FyLmJoYWRh
bmVAaW50ZWwuY29tPg0KPiA+Pj4+Pj4gU2VudDogTW9uZGF5LCBKdWx5IDEwLCAyMDIzIDQ6Mjgg
UE0NCj4gPj4+Pj4+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+Pj4+
PiBDYzogVXJzdWxpbiwgVHZydGtvIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ow0KPiA+Pj4+
Pj4gamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tOyBTcml2YXRzYSwgQW51c2hhDQo+ID4+Pj4+
PiA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT47IEJoYWRhbmUsIERueWFuZXNod2FyDQo+ID4+
Pj4+PiA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+ID4+Pj4+PiBTdWJqZWN0OiBb
djNdIGRybS9pOTE1L210bDogcy9NVEwvTUVURU9STEFLRSBmb3INCj4gPj4+Pj4+IHBsYXRmb3Jt
L3N1YnBsYXRmb3JtIGRlZmluZXMNCj4gPj4+Pj4+DQo+ID4+Pj4+PiBGb2xsb3cgY29uc2lzdGVu
dCBuYW1pbmcgY29udmVudGlvbi4gUmVwbGFjZSBNVEwgd2l0aA0KPiBNRVRFT1JMQUtFLg0KPiA+
Pj4+Pj4gQWRkZWQgZGVmaW5lcyB0aGF0IGFyZSByZXBsYWNpbmcgSVNfTVRMX0dSQVBISUNTX1NU
RVAgd2l0aA0KPiA+Pj4+Pj4gSVNfTUVURU9STEFLRV9QX0dSQVBISUNTX1NURVAgYW5kDQo+ID4+
IElTX01FVEVPUkxBS0VfTV9HUkFQSElDU19TVEVQLg0KPiA+Pj4+Pj4gQWxzbyByZXBsYWNlZCBJ
U19NRVRFT1JMQUtFX01FRElBX1NURVAgaW5zdGVhZCBvZg0KPiA+PiBJU19NVExfTUVESUFfU1RF
UA0KPiA+Pj4+Pj4gYW5kIElTX01FVEVPUkxBS0VfRElTUExBWV9TVEVQIGluc3RlYWQgb2YNCj4g
SVNfTVRMX0RJU1BMQVlfU1RFUC4NCj4gPj4+Pj4+DQo+ID4+Pj4+IEhpIFR2cnRrbywNCj4gPj4+
Pj4gQ291bGQgeW91IHBsZWFzZSBnaXZlIHRoZSBmZWVkYmFjayBvbiB0aGlzID8gb3Igc3VnZ2Vz
dGlvbg0KPiA+Pj4+PiByZWdhcmRpbmcgdGhlDQo+ID4+IGFwcHJvYWNoLg0KPiA+Pj4+DQo+ID4+
Pj4gSXQncyBhIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbiBJIGp1c3Qgd2lzaCB3ZSBjb3Vs
ZCBkbyBhbGwNCj4gPj4+PiBjaHVybmluZyBpbiBvbmUgZ28uDQo+ID4+Pj4NCj4gPj4+PiBIYXZl
IHlvdSBjYXB0dXJlZCBJU19DRkwgYW5kIElTX0NNTCBpbiB0aGUgc2VyaWVzPyBJQ0w/IEhTVz8g
QW55DQo+ID4+Pj4gb3RoZXIgSSBhbSBtaXNzaW5nPw0KPiA+Pj4+DQo+ID4+Pj4gV2hhdCBoYXZl
IHdlIGNvbmNsdWRlZCBvbiBKYW5pJ3Mgc3VnZ2VzdGlvbiB0byBzcGxpdCBpdCBhbGwgdG8NCj4g
Pj4+PiBJU188cGxhdGZvcm0+ICYmIElTXzxzdWJzeXM+Pw0KPiA+Pj4NCj4gPj4+IElTXzxwbGF0
Zm9ybT4gJiYgSVNfPHN0ZXA+IGlzIHdoYXQgSSB3YXMgYWZ0ZXIuDQo+ID4+DQo+ID4+IFllYWgg
SSBtaXN0eXBlZC4gSSBsaWtlZCB0aGF0IHRvIHNvIHdvdWxkIGdldCBteSBhY2suDQo+ID4+DQo+
ID4+Pj4gSWYgeW91IGhhdmUgYSkgY2FwdHVyZWQgYWxsIElTXzx0bGE+IGFuZCBiKSBKYW5pIGFj
a3MgdGhlIHNlcmllcw0KPiA+Pj4+IHRvbywgSSBndWVzcyBnbyBhaGVhZC4NCj4gPj4+Pg0KPiA+
Pj4+IEhtLi4gd2hhdCBoYXZlIHdlIGNvbmNsdWRlZCB0byBkbyB3aXRoIElTX0pBU1BFUkxBS0Vf
RUhMPw0KPiA+Pj4NCj4gPj4+IEZvciBzdXJlIGl0IGNhbid0IGJlICp0aGF0Ki4gSXQncyBKU0wg
Km9yKiBFSEwuIE5vdCBzdWJwbGF0Zm9ybS4NCj4gPj4NCj4gPj4gSVNfRUxLSEFSVExBS0Ugd291
bGQgaW5kZWVkIHdvcmsgYW5kIHBsYXRmb3JtL3N1YnBsYXRmb3JtIGNhbiBiZQ0KPiA+PiBoaWRk
ZW4gaW1wbGVtZW50YXRpb24gZGV0YWlsLg0KPiA+Pg0KPiA+Pj4+IFAuUy4NCj4gPj4+PiBJIHN0
aWxsIHRoaW5rIHRoZXNlIHN1Y2sgdGhvdWdoOg0KPiA+Pj4+DQo+ID4+Pj4gCWlmIChJU19NRVRF
T1JMQUtFX01fR1JBUEhJQ1NfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0IwKSB8fA0KPiA+Pj4+
IAkgICAgSVNfTUVURU9STEFLRV9QX0dSQVBISUNTX1NURVAoaTkxNSwgU1RFUF9BMCwgU1RFUF9C
MCkpDQo+ID4+Pg0KPiA+Pj4gSSBzdGlsbCBmaW5kIGl0IGFwcGVhbGluZyB0byBhKSBnbyB0b3dh
cmRzIHNob3J0ZXIgYWNyb255bXMgaW5zdGVhZA0KPiA+Pj4gb2YgbG9uZyBuYW1lcywgYW5kIGIp
IHRvIHNlcGFyYXRlIHBsYXRmb3JtIGFuZCBzdGVwcGluZyBjaGVja3MNCj4gPj4+IGJlY2F1c2Ug
dGhleSdyZSBvcnRob2dvbmFsLiBUaGV5J3JlIG9ubHkgYnVuZGxlZCB0b2dldGhlciBmb3INCj4g
Pj4+IGhpc3RvcmljYWwgcmVhc29ucywgYW5kIHRvIGtlZXAgdGhlIGNvbmRpdGlvbnMgc2hvcnRl
ci4NCj4gPj4+DQo+ID4+PiBUaGUgYWJvdmUgY291bGQgYmU6DQo+ID4+Pg0KPiA+Pj4gCWlmIChJ
U19NVEwoaTkxNSkgJiYgSVNfR1JBUEhJQ1NfU1RFUChpOTE1LCBTVEVQX0EwLCBTVEVQX0IwKSkN
Cj4gPj4NCj4gPj4gSSdkIGJlIHN1cGVyIHBsZWFzZWQgd2l0aCB0aGF0Lg0KPiA+DQo+ID4gQ291
bGQgd2UgdXNlIHRoZSBhYm92ZSBzdWdnZXN0aW9uIGZvciBNVEwgdmFyaWFudHMgZm9yIFAvTT8g
YWxzbw0KPiByZXBsYWNpbmcgTVRMIHdpdGggTUVURU9STEFLRS4NCj4gPg0KPiA+IFVzaW5nIHRo
ZSBmb3JtYXQ6ICBJU19GVUxMX1BMQVRGT1JNX05BTUUgJiYNCj4gSVNfR1JBUEhJQ1NfU1RFUChp
OTE1LCBTVEVQX0EwLCBTVEVQX0IwKS4NCj4gPg0KPiA+IEl0IHdpbGwgY2hhbmdlIHRvIDoNCj4g
PiAJRm9yIE06CUlTX01FVEVPUkxBS0VfTShpOTE1KSAmJiBJU19HUkFQSElDU19TVEVQKGk5MTUs
DQo+IFNURVBfQTAsIFNURVBfQjApDQo+ID4gCUZvciBQOglJU19NRVRFT1JMQUtFX1AoaTkxNSkg
JiYgSVNfR1JBUEhJQ1NfU1RFUChpOTE1LA0KPiBTVEVQX0EwLCBTVEVQX0IwKQ0KPiANCj4gWW91
IGNvdWxkLCBidXQgeW91J2Qgb25seSBnZXQgYSBtZWggZnJvbSBtZS4gOikgV2h5IHlvdSdkIGlu
c2lzdCB0byBrZWVwIHRoZQ0KPiB0d28gY2hlY2tzPyBBcmUgd2UgZXhwZWN0aW5nIElTX01FVEVS
T0xBS0VfPFg+IGF0IHNvbWUgcG9pbnQ/DQoNCkZvciBleGFtcGxlIEZJTEUgUEFUSDogIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCg0KTXVsdGlwbGUgb2NjdXJy
ZW5jZXMgb2YgSVNfTVRMX0dSQVBISUNTX1NURVAoaTkxNSwgTS9QLCBTVEVQX0IwLCBTVEVQX0ZP
UkVWRVIpDQpXaGVyZSBQIGFuZCBNIGFyZSBwYXNzZWQgZXhwbGljaXRseS4gVGhhdCB3aHkgd2Ug
Y2FuIG5vdCBjaGVjayBJU19NRVRFT1JMQUtFKCkNCmFzIHNpbmdsZSBjaGVjay4NCklTX01UTF9H
UkFQSElDU19TVEVQKGk5MTUsIE0sIFNURVBfQjAsIFNURVBfRk9SRVZFUikgfHwNCgkgICAgSVNf
TVRMX0dSQVBISUNTX1NURVAoaTkxNSwgUCwgU1RFUF9CMCwgU1RFUF9GT1JFVkVSKSkNCg0KVGhl
IElTX0dSQVBISUNTX1NURVAgaXMgZ2VuZXJpYyBtYWNybyBhbmQgdXNlZCBieSBvdGhlciBwbGF0
Zm9ybXMgYWxzby4gDQpPbiBjaGFuZ2luZyB0aGUgSVNfR1JBUEhJQ1NfU1RFUCAgb25seSAgZm9y
IE1UTCB2YXJpYW50cyBpcyBsZWFkIHRvIGFmZmVjdCB0aGUgb3RoZXIgDQpwbGF0Zm9ybS4gVGhl
IElTX01FVEVPUkxBS0VfUChpOTE1KSBvciBJU19NRVRFT1JMQUtFX00oaTkxNSkgc29sdmVzIHRo
ZSBwcm9ibGVtLiANCnRvIGRpZmZlcmVudGlhdGUgdGhlIE1UTCBwbGF0Zm9ybSB2YXJpYW50Lg0K
DQpSZWdhcmRzLCANCkRueWFuZXNod2FyLg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0K
