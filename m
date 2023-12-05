Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E86A8049E4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 07:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC0510E0CA;
	Tue,  5 Dec 2023 06:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD8510E0CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 06:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701756881; x=1733292881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ILlXudm4S81zIyeaXngus1Py9LTM6x7IJdAjNkBeK0Q=;
 b=ETnb627V3EPgWyzDVtk40lWk6xUXkUy8Kco5VKoNW4zaXjgnf1ZuTBeM
 2c7JgBJY0SzoZHCfmGO94GrR8XzD1mbG/XQhy/+CYmeCnlBa8k0Yo/SbV
 i1bm/KpI5n8oCuTTXLwORbZonhnaLgDtPsBye7PDq91jMB1PZ939x5/Tu
 USrMCUbYVVW0x5bi7E5ooEImbpyOs1LYScQSlkm4vXJOM1Pvx6Qz6ituY
 E6O2l9+gwQu8iqlU4KmYwUg9KVfqx0o0jnjymXQDTRcGqz5JIuPxexPZm
 mfHYxQiCUi4kXFKW6aJBjCWUigGCXMDjTkc2HbLMRN/RwQqKlBNlgtWxd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="425010006"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="425010006"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 22:14:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="841334299"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="841334299"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 22:14:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 22:14:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 22:14:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 22:14:26 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 22:14:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xe4VvzuJ+f9oHeGnBW0FG725TCwAzlmqiMZz51kkeUTqdGFWXttzOrtnLNCBsR72h6uxu4JMNIy0TraJu1OMngRkdpVluEvbiQfjqaU1jK1/mkdjsk4OhJhBz+voIL+DhvxdKvmyQ1NvEVvYeSRIn3UvfRj73ckuADg0fyaraHDQ8PezuDhbAWvogZ0PRZh/JamzkHmHAZey6xJ24N/4D3HCHNtbc5IvqKle5PQxoPvyX35krs4c1Xl3L5UwoYxTFfSHD244s7x8QaV328+YdRZZKIh3cLz45j1ir6acKIxEfimtYVhq4lFxLNLcwaKzjYW3htuXwSq0znIiiOCf3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ILlXudm4S81zIyeaXngus1Py9LTM6x7IJdAjNkBeK0Q=;
 b=mdn6hq5A5i/OS3e8WV3lS9FxKcDhdOYa5a0Kpczp/c7ige65sXCs7g0Gb6xx9Y3vyNfMwLKZyxy5B4TB7NRheG2wSyY6VTB3JR5mFBpB8ym4E6m2mQSCPiw7EefhO17nIRKRCBRd8K7f9KH9QcXQcWNSrdUncx5qx8FMqtz4U1gQu7VglUD4VE9jHZ+PdIHBsWRsGinsD92VCrq+AE6uAUqj1LatvJXv6XK6o781DJSW6AYXWuSmTqcnTKggzz4mihhYtz1YRYJy6t1mA/+x5TkZZaAiJ54GA94mzy8V9atX9J4B8RRnlrHKeNlOSKKZazVCgB/sgnE2J5BSLsmmkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 06:14:23 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::b5bf:a968:5f25:945]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::b5bf:a968:5f25:945%6]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 06:14:23 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Berg, Johannes" <johannes.berg@intel.com>
Thread-Topic: Regression on linux-next (next-20231130)
Thread-Index: AQHaJtXA9DQre41uVkaEi0pZ7cXRU7CZazYAgADKE9A=
Date: Tue, 5 Dec 2023 06:14:23 +0000
Message-ID: <SJ1PR11MB612974B93A68EAF65830F997B985A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B0FAD6E18FD3FA56C981B986A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <DM4PR11MB5359C076D594C66671150952E986A@DM4PR11MB5359.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB5359C076D594C66671150952E986A@DM4PR11MB5359.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: 21bddd6a-e2d8-4939-fbbb-08dbf5596d50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eUVz3dE36rkbb8DropeAJXrvjDNujef5A9jEc/VItBtDqSqhLxUp5I/MwJb6ldFUdy4OcOF5TIdNyLfDSl3Uu28G86l9Ytj8jYiE6jinWc647zLU5DVtw+hcddCzNwYpi1c4I6RFXT2R810tRieGL4VtiUbzJxilcak1dXEarVat2W0JnaS+OFs/Yp8BMONzif7drJHC4YOuHJDtTpv2C1sv1YgZufk7CpZK7rIYRqvmlAh1Dwn1pS74LXpXwj1Gi/Dh+QGq33D7p6rI7sgJ1p8Qz9DvisCz2u7rp89eq1wpXgABnOHqkfub48GW2ziSjC2ixYZSjy1EYd8qgXtMmxE5w3eZF+pePqQUSGHAPaBOP7AcYYG6xMFS6Z6ZTlpZud193OowZnwgCDrrDqXlPaM/SmeO6P0U5MxChXdm1yyPq/4CKVa1nxQavL5NuNk1GUEV+9BzapEw55FtbWK5QWzJide4wtfNlbw3pchyLfmkMoacrpvCte4hFQIYi8DElab5MhNf/I4QZCDaAO6FSjdhuSxzYjxFhfSTQsGjMu4GGrmeryiMj6UuIh9Lleqt9ihZOZ46Mc/cbX5xv79MeuW/ZfVFiO4AN6ixVCve1tdysDqtueH8QV09LWJDXTQH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(136003)(376002)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(55016003)(26005)(107886003)(82960400001)(122000001)(33656002)(38100700002)(86362001)(38070700009)(83380400001)(52536014)(5660300002)(9686003)(53546011)(7696005)(71200400001)(6506007)(8936002)(8676002)(6862004)(4326008)(66476007)(76116006)(66946007)(66556008)(6636002)(316002)(64756008)(66446008)(54906003)(41300700001)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmFISmZHRnZsVS9pMnJ5UDByVVM5bmhjVDNGVjAwaFMvTXhacW1TZVYwbUcx?=
 =?utf-8?B?WUptTThoU3dSTW9TSlZRa29rMDBiWUxFQzZBcVFKVG9VWEhYb3hhSjJjczQr?=
 =?utf-8?B?MTBSbytsbjZWVWJnTFE4QXRVODRsUHRJMXJFbjlDNFBxZEdhUnRzZkQ3Q2d2?=
 =?utf-8?B?eVlSTTJWZVBWejNNR3NPdFRDRzVQNm1oWkpVemt2TWR1czRQeXpGRzN6RzFU?=
 =?utf-8?B?UzlXN3VJNXFrc040WFJrRW4wYzFYeFFKbFUxV0lIWndpVVd3TWFBSUlRMkZL?=
 =?utf-8?B?OWRPMlplVjJSVlhXTmw4dzY4bnU0ZjVlS3IvdmxudzhFem5JMVJLY0ZkYk1N?=
 =?utf-8?B?dUMzdHFaaERZWHNYTGxpMDMrbFFXNUk0anN4TlFOcUNHV1NtMDNqVU05c3Bu?=
 =?utf-8?B?T3kzeXZHVWp1aFdiTUdGNFkzR2JOWlJ6NmNhbDFKTThEeEtueGptNFAyTGFS?=
 =?utf-8?B?SHo0ZExjYVpJa1Bhb0ZwWG9JcVZjV3ZsWU5UbWFzQTFBY0liWU9tdDZrMkVE?=
 =?utf-8?B?YWtNWmZQaXU0MUpTVWJKMEF1WnpJQ3JFUUNvRU40VVREYnp2YUQyY1R0MTV1?=
 =?utf-8?B?U3FSelNiMkMzZndGdDB0VWJkeGtud2huNHRPN29VK25OcmRnL1ZYZkpCSmJE?=
 =?utf-8?B?dC9VTHQxQnVMTldhUDlkTG9VNytwWTg0dmtadDdNTHNsd05JVXJTYjBDTzc0?=
 =?utf-8?B?bHpYU09YOGxwRGIrOTFMODMrSm91TlhTVG1iMG03L1R4QTk1TE9zVzhPMWVk?=
 =?utf-8?B?NnRqRjd3Ykx1cU5VdnAwSzdhOUtraUpMOFRJOWk0WThQdXN4ZEREVXRYR3p1?=
 =?utf-8?B?Uk9Qc010MUFiaGlhY1dOMUk0bEVvMGtQMVNBbW1QeEV1cUZVMmNTUlA5N2cx?=
 =?utf-8?B?OG03TFhGcjQzMTFNcFdrQjdpQW51QVVkMWVuYmlQVkpnZzBGclNVSFFrdG56?=
 =?utf-8?B?YUpwQ2E1aXNUci9XRm1odW85a0NxV25MWHNjZVpPN3VxdnNrMEpEWkkvRFc5?=
 =?utf-8?B?TUNxOVZ6SklwTS9oM0twTVBYTHo3WTZXR09RUTRYcDRkMWFpVXNrYnF3bmFh?=
 =?utf-8?B?UTNpSnFUdUpqRlpWUmtPMktrTnkrZjVzMExrL0pocmVTS09KYVFvWUphMVhy?=
 =?utf-8?B?d0hIV3RqOENGSmxGbjlXTE5kNi9vRWgzVHZMY0pTYm1Lb3FsWUg3eTJMWGZV?=
 =?utf-8?B?NzNqVnhmbmN0YW5WYS9hVzZES3RvaVAwOGFGK2xhL2lPOGNPU0lpbURHblFS?=
 =?utf-8?B?Z25BKzAxUE9pWXVXa2szWithQmg0dExJVHNTTWVZd0owUXlPVVByUHZSUm5Y?=
 =?utf-8?B?aDdtR0o5NzZ3ZmdTdXJ2bGZFNUYvR0sxZEZpZDNhbE52c0FISlFjUEx6eUdQ?=
 =?utf-8?B?cDRNcDFwamZzZ2N6aStJcDVMSEcwaXFZMzAwQkhuSXhsQ0JMd3BTcnM0akp0?=
 =?utf-8?B?NGhMcDY5TnhEaVFyMkxTaXNWdHhJS2c0aHFRb2d0NG82elRGOTNwM04xb2Fz?=
 =?utf-8?B?STZWeEhxRGo1WnZuRVR2bjVmU1ZPeDQ3YjVKZTJyNDRRYU0xTkRSWCttQy9S?=
 =?utf-8?B?eTA5MUVaMmZrZEpyWjM2TWRzUmlDclIxR0VvdW90NUNxKy9hTEdjUlZudEo2?=
 =?utf-8?B?ellib2ZLWlVoZlcyNjRnZkpBVXJKeDl4VDNSVlVISEJzU1BiRWJIUGpLYmVJ?=
 =?utf-8?B?R2ZiOVJBdWkxQ0docHBwN2FnMFkvZnp4SGJHWFdHVUdNbDhDaVRaaW9sYitL?=
 =?utf-8?B?TktyczJwNFl4OERKOXFOYkdJaFFUOGNMWWFsR0I5YTlCZXpma2dhRlRQcDhY?=
 =?utf-8?B?cXJZVHNWTlNSNy9KaVpZZHpiVXhLdDk2WHhIZUtObWxMMUgvWWpFWlRNbm84?=
 =?utf-8?B?SVRpQlZmcmlabk8rOFUvK2RYVGlFNnVqUTcrb01yMVM1K3F1bTBCa3Ztd2Mw?=
 =?utf-8?B?TU9JcEFpUzB5TDNlNTVqSVJyUHRCZlBYQXBZNExUMFZOOUdEMVBMam5lMGtz?=
 =?utf-8?B?aUNpU3h5d0RqVVM4NTU3emR1T0RMMG55ZHE1WUNLdEJWcnZCMkQ5d0owQ0pQ?=
 =?utf-8?B?MG9OOTM3bk5QSG5GYU92N2l1UzRKNmo0OTJLZDFaZDVIRWJmdmExVmJvUGdl?=
 =?utf-8?B?NlFtQzVTZ0J4QnI2UnFwaDlGaFF2QXM0L3FSSWI5bFBDc1l1cmtaNGhtWlJ3?=
 =?utf-8?B?eXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21bddd6a-e2d8-4939-fbbb-08dbf5596d50
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 06:14:23.7392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: clXXv3BoR4LqiZmUAzPzyo1s2EOmfdjOR/VpfLJDMBRzkWFof5EPEUJ+h/6vtep0j5oELeGiwduDOHH7uXYNY/NakaX0trtuiT5VJAhSFn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231130)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gSm9oYW5uZXMsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
QmVyZywgSm9oYW5uZXMgPGpvaGFubmVzLmJlcmdAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXks
IERlY2VtYmVyIDQsIDIwMjMgMTE6NDEgUE0NCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIg
PGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBLdXJtaSwgU3VyZXNoIEt1bWFyDQo+IDxzdXJlc2gua3VtYXIua3Vy
bWlAaW50ZWwuY29tPjsgU2FhcmluZW4sIEphbmkgPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSRTogUmVncmVzc2lvbiBvbiBsaW51eC1uZXh0IChuZXh0LTIwMjMxMTMwKQ0K
PiANCj4gSGksDQo+IA0KPiA+IFtzbmlwIGxvY2tkZXAgcmVwb3J0XQ0KPiANCj4gPiBjb21taXQg
ZjRhY2ZjZDRkZWIxNThiOTY1OTUyNTBjYzMzMjkwMWIyODJkMTViMA0KPiA+IEF1dGhvcjogSm9o
YW5uZXMgQmVyZyBqb2hhbm5lcy5iZXJnQGludGVsLmNvbQ0KPiA+IERhdGU6ICAgRnJpIE5vdiAy
NCAxNzoyNToyNSAyMDIzICswMTAwDQo+ID4NCj4gPiAgICAgZGVidWdmczogYW5ub3RhdGUgZGVi
dWdmcyBoYW5kbGVycyB2cy4gcmVtb3ZhbCB3aXRoIGxvY2tkZXANCj4gDQo+IFllcywgb2J2aW91
c2x5LCBzaW5jZSBiZWZvcmUgdGhhdCB0aGVyZSB3YXMgbm8gbG9ja2RlcCBjbGFzcw0KPiAiZGVi
dWdmczppOTE1X3BpcGUiIPCfmIoNCj4gDQo+ID4gV2UgYWxzbyB2ZXJpZmllZCB0aGF0IGlmIHdl
IHJldmVydCB0aGUgcGF0Y2ggdGhlIGlzc3VlIGlzIG5vdCBzZWVuLg0KPiA+DQo+ID4gQ291bGQg
eW91IHBsZWFzZSBjaGVjayB3aHkgdGhlIHBhdGNoIGNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24gYW5k
DQo+ID4gcHJvdmlkZSBhIGZpeCBpZiBuZWNlc3Nhcnk/DQo+IA0KPiBGaXJzdCBvZmYsIEkgYWxy
ZWFkeSBzZW50IGEgcmV2ZXJ0LCB3aGljaCBzaG91bGQgYmUgaW5jbHVkZWQgaW4gdGhlIG5leHQg
LXJjLg0KPiBBbnl3YXkgdGhpcyBwYXRjaCBzaG91bGRuJ3QgaGF2ZSBiZWVuIGluY2x1ZGVkIGlu
IHRoZSAtcmMgY3ljbGUsIEkganVzdA0KPiBlcnJvbmVvdXNseSBpbmNsdWRlZCBpdCB3aXRoIHNv
bWUgYnVnZml4ZXMgKHRoYXQgcGF0Y2gtd2lzZSBoYWQgYQ0KPiBkZXBlbmRlbmN5KS4NCj4gDQo+
IFNlY29uZGx5LCB3ZSBkaWQgZmluZCBhIGZhbHNlIHBvc2l0aXZlIGluIGFub3RoZXIgY2FzZSwg
YW5kIHlvdXJzIHNlZW1zIHRvIGJlDQo+IHRoZSBzYW1lIG9yIHNpbWlsYXIsIGR1ZSB0byBzZXFf
ZmlsZSBub3QgZGlmZmVyZW50aWF0aW5nIGJldHdlZW4gdGhlIGZpbGUNCj4gaW5zdGFuY2VzLg0K
PiANCj4gVGhhdCdzIGEgYml0IHVuZm9ydHVuYXRlLCBiZWNhdXNlIHdlIF9kaWRfIGhhdmUgYWN0
dWFsIGRlYWRsb2NrcyBpbiB3aXJlbGVzcw0KPiB3aXRoIGRlYnVnZnNfcmVtb3ZlKCkgYmVpbmcg
Y2FsbGVkIG9uIGEgZmlsZSB3aGlsZSBob2xkaW5nIGEgbG9jayB0aGF0IHRoZSBmaWxlDQo+IGFs
c28gYWNxdWlyZXMsIHdoaWNoIGNhbiBsZWFkIHRvIGEgZGVhZGxvY2suIFVubGVzcyB3ZSBkaWZm
ZXJlbnRpYXRlIHNlcV9maWxlDQo+IGluc3RhbmNlcyB0aG91Z2gsIHRoZXJlIGRvZXNuJ3Qgc2Vl
bSB0byBiZSBhIGdvb2Qgd2F5IHRvIGFubm90YXRlIHRoYXQgaW4NCj4gZGVidWdmcywgYXMgdGhp
cyByZXBvcnQgYW5kIG90aGVycyBzaG93Lg0KDQpUaGFuayB5b3UgZm9yIHRoZSBjb25maXJtYXRp
b24uIFdlIHdpbGwgd2FpdCBmb3IgdGhlIHJldmVydCB0byBiZSBpbmNsdWRlZCBpbiBsaW51eC1u
ZXh0Lg0KU291bmRzIGxpa2UgYSB1c2VmdWwgYWRkaXRpb24uIEhvcGVmdWxseSwgd2UgY2FuIGZp
bmQgYSB3YXkgZm9yIGJvdGggb2YgdGhlbSB0byBjby1leGlzdC4NCg0KUmVnYXJkcw0KDQpDaGFp
dGFueWENCg0KPiANCj4gam9oYW5uZXMNCj4gLS0NCg0K
