Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EAA5EDE3F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 15:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6900B10E834;
	Wed, 28 Sep 2022 13:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6185D10E834
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 13:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664373338; x=1695909338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RfiLyVW4RbJrAdh5pD+5QR17A24tp+DI2rYNP2CS0AI=;
 b=ZpA+RJ4IUR/76unqUujtkL0/HTCsGTgk0YiUn7yhyHO9m+Bj2NZL6yEq
 Gy0Y465rPJdC+kWXOLtzXzaq9+moiWFhB+B1ko9WCHKJy7jE3Zki/Lihw
 GOKmYGs3JpRGxGfEgc9+hfdkZCPfOoQwKB8jD91/wN5XpKWndC9Rwnolq
 OFdvPv73HZ3Te/KqLVUzmXs5WuEcWZVkHNPyCoemUu+zP6NwoKwpaqsaL
 41PrTjkuFHou+ZDHkYt4Nc9I01+ijfNRHyyl4fAQSQWxSdI5D6JXqd7Kc
 ngByQziUE81iS82xsGHhvx7/BoHCh8zwaaSWKnDETPECUUCR9kj5rZPqd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="284738816"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="284738816"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 06:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="599585191"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="599585191"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 28 Sep 2022 06:55:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 06:55:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 06:55:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 06:55:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 06:55:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZ4v4YOR3eD8qIzEAomUwfKl7P5+6ICHd0m22g6+LcyI8hqiJ3J4F6KZb2mN4Mf74VLULVg6GmCvQrNPRS9Ek4pUa7lCxpBgTNdh5knPkk4ZKr/UMkELwUFOACPxXOK+znMqggikqBnUPeUjie1kWLuwEDl07n5jcl4raolGnj0VBN0txu60zfvPxIN15Xz+qvipdcsiojDVsQqkdtHa6S6noaHqS8M6448fV4ifwxAX0x/SnqQWi0rOuyQj0m2GrThOgDpL/kEpcbbysgT1Pzws/g6u88QXeioNtt2qmDXEBrUrgc01WBHHQcHDFbPUC80K5koS+YHyS96yYyjtLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RfiLyVW4RbJrAdh5pD+5QR17A24tp+DI2rYNP2CS0AI=;
 b=A5jGURb5r+ZqNaQ1ImFUMRc/YDejLpJZqnQRdD4FWXA0xTrpjWDnIp0gsqqcaxEwE2kzHU8/bpqrj1cPQV4wME3jbFz+SjVVS9qTb1sZH4DAlsL5DxM0LLctIuEUsKZuDf2kYRlh/eyqo9meayOPnXXrTenfWd4hNWgA8sFOF11q+JInwiQGdOsxv5RqZyeb+eD/epMm34w37lei1keDLIbEo/OnZsH23cvVVMYSqiseb7fPQm7FHVrN/JVhZGBnYbsPT5h67RfnQjpwha2uSiaGBLQajCvyVK/LckB6dSf+wyzPblLVqmyM7hBcs0WVp1NbFgVSkGothRup0nZ82A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Wed, 28 Sep
 2022 13:55:33 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::9538:caf:9e4e:b67c]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::9538:caf:9e4e:b67c%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 13:55:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v6 0/3] Enable Pipewriteback
Thread-Index: AQHYzCic6xnSqFKLqUyz4TQRBw36Ha302G6AgAAQUxA=
Date: Wed, 28 Sep 2022 13:55:33 +0000
Message-ID: <MWHPR11MB17417AAAC2095F60C3C223ACE3549@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
 <d690c52f-edd1-fb19-aad4-ec32ed928dcf@intel.com>
In-Reply-To: <d690c52f-edd1-fb19-aad4-ec32ed928dcf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|IA0PR11MB7185:EE_
x-ms-office365-filtering-correlation-id: ee063c75-2b71-46b4-1952-08daa1591cd1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /YhxVtM3gUTCX6ESSLA08QJiztIDl+VKEpiUxOgMLwiCZAj/ax31ogfOp5PIIBHeeoPiRvoN02yX9KTACmLIOzRfaSVTFBvq5RlVJtwlGb0FOerJ9ZEw4Vmp1E6+fvtzsaXSXCpCruN2ecNXkmXRamMcP8KWN5j5x0kfYxwjOgCby1gK0YZntVtA4C/JKM7CjS5ByMN4gY3pHLDEHr9BCSlaHt1/R4I1ILmPcpX5IwptsKSzAzC9oJQjP8RyTrbWPLqaaCqKyqIGe6D3txa0glygRjcZYXSAsp2nibtsSszTYp5crwnVK6f/HJ3mg1JCOUREQ20Qv69m281aDddlUn3Bk3+eG/UccpjCB6fUjBZPCjKHoj9BYBU9hQoqW3OPCn8tmp0QI/TwLDvvl4w+lPDQlZQ24soyUjqYnDiafR8gSz0nXfZW/9+opnz5rZqTCXwj8L1A4e7wmXgou3JQv7RDxrVA8tJ9Yt7T21SL+WWC0CGHVO6PK1KqSpk4D1fS7eJHezuUQxJ6L1FUnwEH1D4Gp4AiwGZGg2tCRKIqHQ57xO4DqPQXBGLIz39DlxqFCvB36tJBnRoHj0SB1nqEV0kcW8KRq4o3oNhYHCm3/c36upYAeMEN7PYeCjLcz92j3wHC7H9bMjrRSzQa2dNrjNZXhO3OLALWfe62Gm2GT4oTK0JkpJeeGxVTr6qTtBo/9ekrT6N3O7g0T0xWGg9uMqHCdwyqnKkib3v2M73/kie4BwUdNLtQ45D+Jjk4BTc49hD7LDBwUL9LPQS/d4tdzLcEN9/K/800QntaqRbCuwFSsgCxEakCE7k3eZULd3FBzmwBPh/RXcLNWBDdbsJJuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199015)(82960400001)(54906003)(316002)(110136005)(38070700005)(55016003)(5660300002)(52536014)(8936002)(64756008)(66476007)(33656002)(86362001)(66556008)(66946007)(76116006)(8676002)(4326008)(41300700001)(2906002)(66446008)(9686003)(26005)(71200400001)(186003)(478600001)(107886003)(6506007)(7696005)(53546011)(966005)(122000001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTNkcnp4VEFCZDhVNUVxa0tVU3RHT0JhYW9aS0pEeUlSQ3gxTDNCMmdHclJt?=
 =?utf-8?B?L1BKOFNMemhFZklQV2N5VlZVNDVYakUrTHcwYis4WDdObGY1Tk1LZndDM0lp?=
 =?utf-8?B?MDZuWFkyVzB6OWJQVzhBSjJYUFM4MU1jV2twTExmaFN5Sjhxd1hXWE1UOHEz?=
 =?utf-8?B?TVdYdGJwWndhU2E3czdOK1ZnN1JiQitUNHFNM0VQbkxBRHAxSzNPeXNpZ1NV?=
 =?utf-8?B?QVVScGFFVEhWOXpUTE5XLzVwck9sNEFrOWJoTGZ6UmNhUnpjVDZDak1ZNmFq?=
 =?utf-8?B?NU9SdkpINWp2NWZ1ME55Z2RodVBDNGo1bEFRd0RXcStzM3dtcWhJaWxUNXV2?=
 =?utf-8?B?alpweTN4cHBoZGprQlF1ZDcyaUNBK0VlblVhK2N4VUVPRnVaMmtEWjdkVFFV?=
 =?utf-8?B?a0psY1dQOUc5b2pzL241b1Y2Mk9DTnJHQ1NGSDBXVTFjYytZNTlWUDFpYWVw?=
 =?utf-8?B?Mmg1cVA5UnlYMkdzTGtiemwySG1UWjhNcGdHZDY4cEs1N3I3bkRia3lQU3lt?=
 =?utf-8?B?S2pidXNnUTQwRy9xeHQ1ZzN2VjdyV3ErdWEvdlE4L3UyaTlNUE1oNEp4dkpN?=
 =?utf-8?B?RE5DZWFzUmkyaW8vemRwKzBPdUx4UjFHSEUyeWc1OWVObFpOWGhabWFLVlpI?=
 =?utf-8?B?dE54bUgwSi9aeERuMVhteGFnVnpUNUxZdVN5OVpZNmZjVFEyemRiT1lHaTNW?=
 =?utf-8?B?TmZzd1J0OGtreE9tb3QvSll3cEk0eFh5YXdrZElUNHVaWHlNV0NneDBPSmRV?=
 =?utf-8?B?ZHh6SWFDQ0ttL1hNTnNwRitKWE12OHBZOUxZK1FCMENWM0JjTGE2ZEhVSWk5?=
 =?utf-8?B?T0Y3djRVcFgzRU9MUTczYjNaNkhZc1UySDRUZ010RUc1Tnk2aHRqSzVxdW5q?=
 =?utf-8?B?Mm92bDdWUUFUU0FLMDdaUk9hS3ZtSkhJVjNzalpGTVFiSHJuZERWTldFWnVo?=
 =?utf-8?B?S0tQdUVGMTFFNmUzZVpqdlhVMkYzZDZGaXQvUkV3UVZNZE9ocDMrek44Ky9l?=
 =?utf-8?B?YnI0dXN0ckVidDlJQi9VWWxObnNGOGVKOTRuYUViakFnb3F6RkxUMWx4MGZT?=
 =?utf-8?B?azZzQXQvV0RxNUZFRjFKN2J4YmRpZHdWOEdJZEY1VHpCUTlldy9OcVZPR3FM?=
 =?utf-8?B?NmlmNWEzZUhFUjNBWkZrVW1YVS9SOHoxcExmMXo5dEYwZXRGWTNnb0swTW1T?=
 =?utf-8?B?UlFSVExXN2JlTE91cE9zeEpvOWFSbEtzWmx5TTNzTFdKcmxDOUw5TERnbnBU?=
 =?utf-8?B?SUNHTDlwSVdGdkN0SE8ybDNJL3l1M2xVTjhmdGJXLzMvdE5JSDhrOWJZZXI2?=
 =?utf-8?B?UnhYdmQ2dk04QVpjV29VRUhGc1FUSW1JRkJMN0NtQnNtbXNxYVFrY3BFTE90?=
 =?utf-8?B?SUVSWDVuVHozUnlOTVRnNGRJenVtQ01xYjQ4ajdNTDhSbFp6M2QxeGRNNmow?=
 =?utf-8?B?QXJDL3BaZURTMFN2Tk02aGpyZEhzUzgweWErejNBTFpkbWNBY2xBUWd5NmV4?=
 =?utf-8?B?WDNESkhVaG9aakxuenVBU2Q1UlIwVnNRbDdydkppTUl3Qm9MSWFJUS9SUVlV?=
 =?utf-8?B?LytvSjl2LzNSL2Z1Q1JXNmRxTGJWaDhNWmkrWncwRmxWb21uZktIVDFYOC9Q?=
 =?utf-8?B?ZDRqWFhHNEQ5MUpzZVZGS2dMV1h3SGFPODhZeXBhdCtmdDJSbGJmMS80NEJF?=
 =?utf-8?B?SFZFSlNhNWFPa2hxN2IrRlhUNjZ2QlJYKzRsTVZPbUZyVysvUW04K0ZzQzJx?=
 =?utf-8?B?YkxtRmR5U2R1akNIMzczQzZRVXFLNmQ0VC9hU1Q4ZitqUUUwbWxFZUNUMzFv?=
 =?utf-8?B?ajl6c0NJK2UyYWN6a1JIWDFBTHB0UTUrdERRZ3R4M2V5Zk96WktIU01JSXdG?=
 =?utf-8?B?SUg3TkRxMGJVRSt1LzByd3k5UGhHQW0xeDcrbG1MaERCV0g2UHNVcll2VGVR?=
 =?utf-8?B?bkoxeTg0eGdMWFI1aGlwSHoyeGtFVmk3MGovcDFvUEkxM2xjQ2Q0bzgzRnh3?=
 =?utf-8?B?emRsaVlxR0xwdkNOV0hwT2FCTTJ4Y1ZwUTJUWktSazh4NUVHWmgvNEJCUXk4?=
 =?utf-8?B?OFpEYWpqZGFzQXNoOGZhTUpTaTMwSVhKVGxldHRONXI1WGN1bDBlejhuRzZx?=
 =?utf-8?Q?RI21xQ1o5z6ggLvv17fEx29S0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee063c75-2b71-46b4-1952-08daa1591cd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2022 13:55:33.3660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UC6HsWdrCs75gKgIX3iIDJbnw2NPJvuGPy/ylkLCQfZp6dEbAMZOgIkT0BaA9LdY2b+MxJ+JDiMeDeOe4jl8jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7185
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 0/3] Enable Pipewriteback
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3dhdGksDQo+IEhpIFN1cmFqLA0KPiANCj4gQ0kgaXMgbm90IGdyZWVuDQo+IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNzQ0MHY5L3NoYXJk
cy0NCj4gYWxsLmh0bWw/dGVzdGZpbHRlcj1rbXNfd3JpdGViYWNrDQo+IA0KPiAyLzQgc3VidGVz
dHMgYXJlIHBhc3NpbmcNCj4gd3JpdGViYWNrLWZiLWlkIHN1YnRlc3QgY2FuIGJlIGZpeGVkIGJ5
IGFzc2VydGluZyBFSU5WQUwgZm9yIGk5MTUgd2UgbmVlZCB0bw0KQWxzbyB3ZSB3aWxsIGJlIHNl
bmRpbmcgbmV3IHBhdGNoZXMgZm9sbG93aW5nIHRoaXMgc2VyaWVzIHRoYXQgc2VuZHMgYSBmYWtl
IHZibGFuayB3aGVuDQphIHdyaXRlYmFjayBqb2Igb24gdGhlIHBpcGUgd2l0aCB3YiBjb25uZWN0
b3IgYXR0YWNoZWQgaW5zdGVhZCBvZiBmYWlsaW5nIGl0IGF0b21pYyBjaGVjay4NClNvIG5vIGNo
YW5nZSBpbiB0aGlzIHRlc3Qgd2lsbCBiZSByZXF1aXJlZCANCg0KPiBmaXggd3JpdGViYWNrLWNo
ZWNrLW91dHB1dCBmaXJzdCBPbiBsb2NhbCB2YWxpZGF0aW9uLCB3ZSB3ZXJlIGdldHRpbmcgQ1JD
DQo+IG1pc21hdGNoIGhvd2V2ZXIgQ0kgcmVzdWx0cyBzaG93IGRpZmZlcmVudCBpc3N1ZQ0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDc0NDB2
OS9zaGFyZC10Z2x1LQ0KPiA0L2lndEBrbXNfd3JpdGViYWNrQHdyaXRlYmFjay1jaGVjay1vdXRw
dXQuaHRtbCNkbWVzZy13YXJuaW5nczU3NQ0KPiBQbGVhc2UgY2hlY2sgdGhlIHNhbWUgaWYgaXRz
IHJlbGV2YW50Lg0KVGhpcyBpcyBzdGlsbCBhIENSQyBtaXNtYXRjaCB3aGljaCBpcyBoYXBwZW5p
bmcNCg0Ka21zX3dyaXRlYmFjazoxNDMyKSBpZ3Rfa21zLURFQlVHOiBkaXNwbGF5OiB9DQooa21z
X3dyaXRlYmFjazoxNDMyKSBpZ3RfZGVidWdmcy1ERUJVRzogT3BlbmluZyBkZWJ1Z2ZzIGRpcmVj
dG9yeSAnL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAnDQooa21zX3dyaXRlYmFjazoxNDMyKSBpZ3Rf
ZGVidWdmcy1ERUJVRzogQ1JDIG1pc21hdGNoIGF0IGluZGV4IDA6IDB4Y2NjYjFkYzUgIT0gMHgz
NGFiOWRjNQ0KKGttc193cml0ZWJhY2s6MTQzMikgaWd0X2RlYnVnZnMtQ1JJVElDQUw6IFRlc3Qg
YXNzZXJ0aW9uIGZhaWx1cmUgZnVuY3Rpb24gaWd0X2Fzc2VydF9jcmNfZXF1YWwsIGZpbGUgLi4v
bGliL2lndF9kZWJ1Z2ZzLmM6NDkxOg0KKGttc193cml0ZWJhY2s6MTQzMikgaWd0X2RlYnVnZnMt
Q1JJVElDQUw6IEZhaWxlZCBhc3NlcnRpb246ICFtaXNtYXRjaCB8fCBpZ3Rfc2tpcF9jcmNfY29t
cGFyZQ0KKGttc193cml0ZWJhY2s6MTQzMikgaWd0X2NvcmUtSU5GTzogU3RhY2sgdHJhY2U6DQoo
a21zX3dyaXRlYmFjazoxNDMyKSBpZ3RfY29yZS1JTkZPOiAgICMwIC4uL2xpYi9pZ3RfY29yZS5j
OjE4MTkgX19pZ3RfZmFpbF9hc3NlcnQoKQ0KKGttc193cml0ZWJhY2s6MTQzMikgaWd0X2NvcmUt
SU5GTzogICAjMSAuLi9saWIvaWd0X2RlYnVnZnMuYzo0OTIgaWd0X2Fzc2VydF9jcmNfZXF1YWwo
KQ0KKGttc193cml0ZWJhY2s6MTQzMikgaWd0X2NvcmUtSU5GTzogICAjMiAuLi90ZXN0cy9rbXNf
d3JpdGViYWNrLmM6MzQzIHdyaXRlYmFja19zZXF1ZW5jZSgpDQooa21zX3dyaXRlYmFjazoxNDMy
KSBpZ3RfY29yZS1JTkZPOiAgICMzIC4uL3Rlc3RzL2ttc193cml0ZWJhY2suYzozNjAgX19pZ3Rf
dW5pcXVlX19fX3JlYWxfbWFpbjQ4MCgpDQooa21zX3dyaXRlYmFjazoxNDMyKSBpZ3RfY29yZS1J
TkZPOiAgICM0IC4uL3Rlc3RzL2ttc193cml0ZWJhY2suYzo0ODAgbWFpbigpDQooa21zX3dyaXRl
YmFjazoxNDMyKSBpZ3RfY29yZS1JTkZPOiAgICM1IC4uL2NzdS9saWJjLXN0YXJ0LmM6MzQ0IF9f
bGliY19zdGFydF9tYWluKCkNCihrbXNfd3JpdGViYWNrOjE0MzIpIGlndF9jb3JlLUlORk86ICAg
IzYgW19zdGFydCsweDJhXQ0KKioqKiAgRU5EICAqKioqDQpTdWJ0ZXN0IHdyaXRlYmFjay1jaGVj
ay1vdXRwdXQ6IEZBSUwgKDAuMTM3cykNCndoaWNoIGlzIGR1ZSB0byBjb2xvciBmb3JtYXRzIGZv
ciB3aGljaCB0aGUgY2hhbmdlcyBhcmUgZ29pbmcgdG8gYmUgc2VudCBpbiBzdWJzZXF1ZW50IHBh
dGNoDQpUaGUgZG1lc2cgZmFpbHVyZSB0aGF0IGlzIHNlZW4gaGVyZSBpcyBiZWNhdXNlIG9mIG5v
IHZibGFuayBldmVudCBiZWluZyBwcmVzZW50IHdoZW4gcGlwZSBpcyBnZXR0aW5nIGRldGFjaGVk
IGFuZCBzaG91bGQNCkJlIGZpeGVkIHdpdGggdGhlIG5leHQgcGF0Y2ggc2VyaWVzIHRoYXQgYWxz
byBzb2x2ZXMgdGhlIHdyaXRlYmFja19mYl9pZCBpc3N1ZQ0KDQpSZWdhcmRzLA0KU3VyYWogS2Fu
ZHBhbA0KPiANCj4gT24gMTktU2VwLTIyIDY6MzUgUE0sIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0K
PiA+IEEgcGF0Y2ggc2VyaWVzIHdhcyBmbG9hdGVkIGluIHRoZSBkcm0gbWFpbGluZyBsaXN0IHdo
aWNoIGFpbWVkIHRvDQo+ID4gY2hhbmdlIHRoZSBkcm1fY29ubmVjdG9yIGFuZCBkcm1fZW5jb2Rl
ciBmaWVsZHMgdG8gcG9pbnRlciBpbiB0aGUNCj4gPiBkcm1fY29ubmVjdG9yX3dyaXRlYmFjayBz
dHJ1Y3R1cmUsIHRoaXMgcmVjZWl2ZWQgYSBodWdlIHB1c2hiYWNrIGZyb20NCj4gPiB0aGUgY29t
bXVuaXR5IGJ1dCBzaW5jZSBpOTE1IGV4cGVjdHMgZWFjaCBjb25uZWN0b3IgcHJlc2VudCBpbiB0
aGUNCj4gPiBkcm1fZGV2aWNlIGxpc3QgdG8gYmUgYSBpbnRlbF9jb25uZWN0b3IgYnV0IGRybV93
cml0ZWJhY2sgZnJhbWV3b3JrDQo+ID4gbWFrZXMgdXMgaGF2ZSBhIGNvbm5lY3RvciB3aGljaCBj
YW5ub3QgYmUgZW1iZWRkZWQgaW4gYW4NCj4gPiBpbnRlbF9jb25uZWN0b3Igc3RydWN0dXJlLg0K
PiA+IFsxXQ0KPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9kcmktZGV2
ZWwvcGF0Y2gvMjAyMjAyMDIwODE3MDIuMjINCj4gPiAxMTktMS1zdXJhai5rYW5kcGFsQGludGVs
LmNvbS8NCj4gPiBbMl0NCj4gPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3Qv
ZHJpLWRldmVsL3BhdGNoLzIwMjIwMjAyMDg1NDI5LjIyDQo+ID4gMjYxLTYtc3VyYWoua2FuZHBh
bEBpbnRlbC5jb20vIFNpbmNlIG5vIG9uZSBoYWQgYW4gaXNzdWUgd2l0aCBlbmNvZGVyDQo+ID4g
ZmllbGQgYmVpbmcgY2hhbmdlZCBpbnRvIGEgcG9pbnRlciBpdCB3YXMgZGVjaWRlZCB0byBicmVh
ayB0aGUNCj4gPiBjb25uZWN0b3IgYW5kIGVuY29kZXIgcG9pbnRlciBjaGFuZ2VzIGludG8gdHdv
IGRpZmZlcmVudCBzZXJpZXMuVGhlDQo+ID4gZW5jb2RlciBmaWVsZCBjaGFuZ2VzIGlzIGN1cnJl
bnRseSBiZWluZyB3b3JrZWQgdXBvbiBieSBBYmhpbmF2IEt1bWFyDQo+ID4gYW5kIHRoZSBjaGFu
Z2VzIGhhdmUgYmVlbiBtZXJnZWQuDQo+ID4gWzNdaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2RyaS1kZXZlbC9saXN0Lz9zZXJpZXM9NjMzNTY1DQo+ID4gR29pbmcgZm9yd2Fy
ZCB3ZSB1c2UgYSBkcm1fY29ubmVjdG9yIHdoaWNoIGlzIG5vdCBlbWJlZGRlZCBpbg0KPiA+IGlu
dGVsX2Nvbm5lY3Rvci4NCj4gPiBXZSBhbHNvIGNyZWF0ZSBhIGludGVsX2VuY29kZXIgdG8gYXZv
aWQgY2hhbmdlcyB0byBtYW55IGl0ZXJhdG9ycyBidXQNCj4gPiBubyBpbnRlbF9jb25uZWN0b3Iu
IFdlIGFsc28gY2hhbmdlZCBhbGwgaXRlcmF0b3JzIHRoYXQNCj4gPg0KPiA+IC0tLXYyDQo+ID4g
c29sdmluZyBCQVQgaXNzdWVzDQo+ID4NCj4gPiAtLS12Mw0KPiA+IC1yZW1vdmluZyB1bmVjZXNz
YXJ5IGNvbW1lbnRzIGZyb20gaTkxNV9yZWcuaCBbQXJ1bl0gLW1vdmluZyB3ZF9pbml0DQo+ID4g
aW50byBpdHMgb3duIGlmIGNvbmRpdGlvbiBbQXJ1bl0gLWZpeGluZyBjb21tZW50IHN0eWxpbmcg
YW5kIGFsaWdubWVudA0KPiA+IGluIGludGVsX3dkLmMgW0FydW5dIC1yZW1vdmluZyBjb250aW51
ZSBmcm9tIGxvb3AgYW5kIGNhbGxpbmcgZnVuY3Rpb24NCj4gPiBpZiBjb25kaXRpb24gaXMgbWV0
IFtBcnVuXSAtcmVtb3ZpbmcgdXNlbGVzcyBhcmd1bWVudHMgZnJvbQ0KPiA+IGludGVsX3F1ZXVl
X3dyaXRlYmFja19qb2IgYW5kIGludGVsX2VuYWJsaW5nX2NhcHR1cmUgW0FydW5dDQo+ID4NCj4g
PiAtLXY0DQo+ID4gQWRkaW5nIFJldmlld2VkLWJ5IHRvIHBhdGNoZXMgd2hpY2ggd2VyZSBwcmV2
aW91c2x5IHJldmlld2QNCj4gPg0KPiA+IC0tdjUNCj4gPiBBZGRpbmcgUmV2aWV3ZWQtYnkgZm9y
IHBhdGNoIDMNCj4gPg0KPiA+IC0tdjYNCj4gPiBTb2x2aW5nIEJBVCBpc3N1ZQ0KPiA+IGNoYW5n
ZXMgZm9yIGNoZWNrcGF0Y2ggdG8gcGFzcw0KPiA+DQo+ID4gU3VyYWogS2FuZHBhbCAoMyk6DQo+
ID4gICAgZHJtL2k5MTU6IERlZmluZSBXRCB0cmFuY29kZXIgZm9yIGk5MTUNCj4gPiAgICBkcm0v
aTkxNSA6IENoYW5naW5nIGludGVsX2Nvbm5lY3RvciBpdGVyYXRvcnMNCj4gPiAgICBkcm0vaTkx
NTogRW5hYmxpbmcgV0QgVHJhbnNjb2Rlcg0KPiA+DQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hY3BpLmMgICAgIHwgICA4ICstDQo+ID4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyAgICAgfCAgIDYgKw0KPiA+ICAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMgIHwgICAxICsNCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICAgNiArDQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNjggKy0N
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICB8ICAx
OCArLQ0KPiA+ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMg
IHwgIDEzICstDQo+ID4gICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmggICAgfCAgMzIgKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbC5jICAgICB8ICAgNiArDQo+ID4gICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rl
c2V0X3NldHVwLmMgICAgfCAxMTkgKystDQo+ID4gICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9tb2Rlc2V0X3ZlcmlmeS5jICAgfCAgMTcgKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYyB8ICAgMyArDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3dkLmMgICAgICAgfCA2OTQgKysrKysrKysrKysrKysrKysrDQo+
ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dkLmggICAgICAgfCAgNDgg
KysNCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8
ICAgMSArDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAg
ICAgfCAgIDggKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAg
ICAgICAgICB8ICAgNyArLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICAgIHwgMTM3ICsrKysNCj4gPiAgIDE5IGZpbGVzIGNoYW5nZWQsIDExMzcgaW5z
ZXJ0aW9ucygrKSwgNTYgZGVsZXRpb25zKC0pDQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93ZC5jDQo+ID4gICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93ZC5oDQo+ID4NCj4gDQo+
IC0tDQo+IH5Td2F0aSBTaGFybWENCg==
