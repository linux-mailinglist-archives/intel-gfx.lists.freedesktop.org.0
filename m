Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D804C6EFC42
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 23:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A1910E329;
	Wed, 26 Apr 2023 21:14:57 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A92610E329
 for <Intel-GFX@lists.freedesktop.org>; Wed, 26 Apr 2023 21:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682543696; x=1714079696;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m/BkKmi7txLCyawL9k/UcguW6nxhoWFuoXVIhxHe2Xs=;
 b=LDTyqxXxD/P2B6NS5buWaykG3Juab5sdL/ARgf6VbGUsiIZsEMNT+mqC
 B1WW7OTQmvCORouMU1BXsGKCJFx8ohQtvVpHgBrpNgRRHCzMUSubbHk9G
 t8J8Ghbw1/SJ03Bq1YNMpPUj9+V3Mij/jYbBalVeNar0zGcbUBhfghzOg
 kc0nFDME7ov+kCzy5j7pZl19hoK8UNQdPY+hJ5ntT1hR1tKMHn50hMXHd
 F9L8GMlhCBGasIVRlJVCe0YFXo9vtyFGNrfxcvCn3x84r1B7t2A2prNnz
 tVUdz9z5+Qrumr5NRs7XUmyE2/gN1a6JaOZe0CtIno6VQDhsqSc5O1pX0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="345996001"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="345996001"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 14:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="940405390"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="940405390"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 26 Apr 2023 14:14:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 14:14:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 14:14:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 14:14:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXdsn7dQ0XzsQ9RBnOktbQHPG4DLUiT4jnxA2+j4g+C3Lo+WXmIxZ4YOkS5eijLrBy8ui13ti9Mtmt3LGoi4u41YcakFw31D3z5XiG4r560ClGkW8rrV7xIxPvS9BWoNn/0gIh8UrtjYl47SYhxmtLEKbzkgvmKm/tidX9qXoX+0IH1wCnXXT1ygBFwdpCty1mrjn7TZW8hrZi6Mskl24rAEC39OOn7uhinBBXNVn86O1xnXJ0vBGsPpSX3eUG9jPblO53x/AmE1Zob502DyJirc+28nOPeXZLUqS1LDhriJVFzbfPBAQ5E7np8FcNJITXP8leXSwE2b4pkOr/H+RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/BkKmi7txLCyawL9k/UcguW6nxhoWFuoXVIhxHe2Xs=;
 b=RJVQ5+ksUmUbw6BmZvjWXTHUpJ9Z1XlelqIWAZj3V2X7wpqRiOcDoIFsrSR1oCtr2BT9is+JcVFW7BtegM+pwLnOTpRg1xzj2d1mCeElk201yBdm8wdrUiRvHBuINqnjMob9rZs+6gGW1IU1ibLKFFq6u87zklIYGwtRXuf/DktRAhuYmq2UaaTShHYy1JTvKnFKIx/w9h1kdbPdP7OMYNN7nw9vpn1l7f2itMbSqaKAsXvOY+EEhcSjl6Sco5UafZWgFRk1tZJLJV+tmaSpMtwdto6NcV9k2oJcGHnp7bb2ggVl7iJF6Ad9O17s9iD9M05eey42l/EVeE58KaG8Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5273.namprd11.prod.outlook.com (2603:10b6:408:132::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Wed, 26 Apr 2023 21:14:52 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%6]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 21:14:52 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
Thread-Topic: [PATCH 1/5] drm/i915/guc: Don't capture Gen8 regs on Xe devices
Thread-Index: AQHZaNbhVLyJb4iKc0OO37ghQOKjoq88bK+AgAGJMoCAAEC2AA==
Date: Wed, 26 Apr 2023 21:14:52 +0000
Message-ID: <3013e1db18859c39cc94aae771ba64993f5c637c.camel@intel.com>
References: <20230406222617.790484-1-John.C.Harrison@Intel.com>
 <20230406222617.790484-2-John.C.Harrison@Intel.com>
 <97546a0ca475345fd18f8d80fafa5f7a11e34101.camel@intel.com>
 <0f23e701-8d7d-2fc4-192d-4c0497587a24@intel.com>
In-Reply-To: <0f23e701-8d7d-2fc4-192d-4c0497587a24@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN9PR11MB5273:EE_
x-ms-office365-filtering-correlation-id: fe18e575-2c00-4a4e-406f-08db469b46da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C31pGGRJYHW5jdFfcw+MnRjjTaik5eDEIoe+3h8fNXpILVeWscQFVJklyWbKSb4itXWtPYnaSzIrbhh7nR1q4yosOxsjO93cWV9jl+xpyZ2v+BsnDMYyWn06adDAwzNi2+JgZlUP7PRT8h5hb0FnYaUFMWLZ7cgzSmbAKZUdKLlPmrVOvgjEQYreAeJpQMsjLkInNmHb9F91NTkCkBEyvr3Sd0vwzS7q69vjCoMTxeJBCTUT6SW8cRcoRtZD7W0qDOVFaDlRfC64lwo9oJ69ZgChGGI2L2ZN1CMIyLcpT3if3ig9ZNGOByT+o5+IXIn93X5PlByOtHkPLozLO/nno7lnnpv06ZoIFCjQ6ug6aesgZkBXF5fLIohXzht4BtbyCfyo9i4cnmtPbqnCyzw4KZeoISyDW0KZJtmLnaoFCzDwdOhW4z4akkCFGcQGwFWXahFbgkRs5tvHsSJ3xQpA1lX8w0MNv7kxJPjviNmqCNTYAx9eE7DxV83XA0VMq4q2vBk5AndFHGyWajUJu+VzE+eL3pNopL5xb7EA+cVzLdE/AiwhTiLBfCOdmc8+tO2SriYloF9gnv8C4oHhjr4Z4ZGuzv8wnOkb2QL3WbUdAFrh0IgJI+1+wu81eJe+BWH6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199021)(26005)(6512007)(6506007)(186003)(66556008)(478600001)(110136005)(36756003)(71200400001)(6486002)(5660300002)(8676002)(8936002)(38070700005)(2906002)(38100700002)(86362001)(316002)(76116006)(66446008)(66946007)(91956017)(66476007)(122000001)(53546011)(82960400001)(41300700001)(64756008)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RG4xZmFHK3ZvZ0ZSUEtNSXNmOTd1OEEvMXphakxzY0c2bDdpQW5ZbXFMd2Mr?=
 =?utf-8?B?VnVIelU3Y0FSeFJ6c08wekEyZHJZcEZQQy9uQ2ZtelJhb0d3WGs4cU5DWWIw?=
 =?utf-8?B?bUhpZ0FISTRWZzZva0czdzV3TzIyaDlwcWtNci9mOEg1VGgwL2JrVjZQUEtp?=
 =?utf-8?B?djVNcDJsdDAxVThoRHFtRUhETlRsTmV1ai94anRDbnJLUkVVS3QwMDFlWTN2?=
 =?utf-8?B?bXlVbmFXZ0ZPN1kvQ1p2emdZV3pBTnc3dUo4RkZiNVQ0N284WjZDQVI3dk91?=
 =?utf-8?B?YTZiWFVSUUN4STNDNE9mWm04MThXc2t6MnFUT3ZPQWFDVS8zRStHUzY5c2N6?=
 =?utf-8?B?K3c1cktScWZVRHdSaXp2aDdEeE14c3c4bDRlOU5BQU9iLys2SDVsRmEzNFF3?=
 =?utf-8?B?b2toa3E0d1pIM3JTZUpKZS9zZ003RTRrbzNtTnJFck5hdjF0aWErdTZOUGNk?=
 =?utf-8?B?M1hIci9ja1VIekpvWXRIMHFnTDN0ZCszYmlXY3JITlA3TDBXdFRXMzdYQmdv?=
 =?utf-8?B?Rm9iUkZTN1lqbUpoQldiaG1uVzU5clNxOWJmUUtEZVBGUC8wMU1mQUI3cUJB?=
 =?utf-8?B?WUdOeWM0eVpSUW0wOU15RjBSZjZWRnYwVVNXTEdjaXZ0SjY5bTl3V1Nya3Rq?=
 =?utf-8?B?dU5JYUFGbHhySFRseWJwYi80WWJxUkdqZUZzUG1KbCtyZ2FyREZ2ekh2MkYv?=
 =?utf-8?B?ZysxZnF1YUpwNnBZSnZDcjZQZEEyemdjSGV0aVhDQ3JkellzOHh1ODRlK2tt?=
 =?utf-8?B?RWduV20wb29rVkN5RGxRV05aOHh4UkQvVjJYYVVydGxCU21hcFViNk5JdFB1?=
 =?utf-8?B?QTJhcHJnVHd1Z3JkNTJEbEdIanlmUG9pK2VWcnVzSGR1NEo1dllXaDAvL1E3?=
 =?utf-8?B?bXJSL0pDcnUrQ2VmcHJjeElaeDN0UkVrUEI1WWZlZHlkNDRMQnBLV3VuUW9W?=
 =?utf-8?B?RzFmNVR0V2RjRlh0WGJ2cWd5ZG1ZN2k4MlBlV1hzaFlwRU9NRzJ1bkFidTV3?=
 =?utf-8?B?cmozczdtM1hYMW55blg1cDVJSE5YMWxkTXdPM0pSVnUyaURGb1hQR0RZSEIy?=
 =?utf-8?B?WXRQaGZGUjhjUk5BSmNRVkQ1K1E5bDlzaUNKc21vQ0lXYXM1MU9CK0FJeDNi?=
 =?utf-8?B?REVZMmpNbXBPa1RwcE9EcjZOS3g3NlVwdDArSnpQVWpPSlY0eTZsdEk5Z3Jw?=
 =?utf-8?B?K1NaRHcvK1B2SVl2QjhPRGNRdjRtZGs3SzBmUDZsKzlsOUJ6bm9peUNmZGdD?=
 =?utf-8?B?RkdqdkFxOWFaMWw2bXRNVU5qMjJ5Qy9oRWpmeEhDeSt4UkI5K1JsOTFzcjI2?=
 =?utf-8?B?NHkrN08vMmdnRkJrcGFwcE5SbDAzSHBBaHJyOXdWUzlUc1ZZSUNhN3B1WHgr?=
 =?utf-8?B?VC9tWFdTNEcxOFRBbXRETUpwNk1GZCs2QWp3Tml5b0E3V1dmYm8yY1NRL2JX?=
 =?utf-8?B?cVd6YXF6b1dadS91Z0V6ZTM1QWd6WDlPMm9Ob2IyVHpBSlFqZTc2Z3Bsb1Vn?=
 =?utf-8?B?UG11QTQ1RFo4WHc1ZzdmWWlqUkl1a3VNUlFzUS9LL3ZldE1KSnk5Nm9iRHkv?=
 =?utf-8?B?OUVaSEMxY2drYWlzN1psb0dxaUJZcnlJdmx1bTBHUkJSS3NueEZKSFZSVkZk?=
 =?utf-8?B?UmlYQVFPRHZ6NGZ0Y3d3TGpJL1U5KzFBa3FidzZwUzVsby9ucEJkRXNHMHVT?=
 =?utf-8?B?YzBjWFE3UURncS96eG1Bc3U0YzZIRjdzZEcxN09hZTJwd3hqMHB2TXh6aGNH?=
 =?utf-8?B?SHZpYWNIV21xSTlXSWpMRmFWQUg0YmxVOGVjcW9iNlZjbE1YTnJ4czFzYTlZ?=
 =?utf-8?B?dnlXazdsWHE3NkJYVXNxaFlRM2daUjFZWHRDNVBpM3NQL2NZUTR1eHJmWXNj?=
 =?utf-8?B?UzBhYTB3YWFMV0dnZ0pqd1pFTkVKeGJFSG5YOUxoVjlLempCemdBNjgzTW1W?=
 =?utf-8?B?a09GK3hKTTlOS2sybk5pZzdUYUZ6S05Iek1rWW5EQmg0TGNrQlArNVNCd3J3?=
 =?utf-8?B?WG5XUHg3SllmYUJjRXYzb1p2TVMrODNPcmdVM1BWRGh3TlMvN2xnVGhKQjd2?=
 =?utf-8?B?Q0NjYjE1RUVoUmpTQ3BJbGtneDVLTmM1NDVxRHlKY3VGc01MOFRXNXVaQUg2?=
 =?utf-8?B?VjBsaStUemZHcUJ2RUxJNWVmSUF5aG9EWUJrN0x4SE9vSTZUaEFpWkNPQzVa?=
 =?utf-8?Q?bi/7mvEwv21pVnhGVyMRmBQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CD6B3943C76BCB4B8936DACC3F9D22B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe18e575-2c00-4a4e-406f-08db469b46da
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2023 21:14:52.5532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ioQSXOkvKdOtqTgs/Rqz9z/hylKhFmkiDLhzKRXYoCogyf1rxdUzaXtTW152GDJVwRb/4Bz6uvjL4lUL5KoGgn60N0KiEUQSWS2gm+j0kVyZF9sI16F57FUbon6dBXfp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5273
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Don't capture Gen8 regs
 on Xe devices
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

T24gV2VkLCAyMDIzLTA0LTI2IGF0IDEwOjIzIC0wNzAwLCBIYXJyaXNvbiwgSm9obiBDIHdyb3Rl
Og0KPiBPbiA0LzI1LzIwMjMgMTA6NTUsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6
DQo+ID4gT24gVGh1LCAyMDIzLTA0LTA2IGF0IDE1OjI2IC0wNzAwLCBIYXJyaXNvbiwgSm9obiBD
IHdyb3RlOg0KPiA+ID4gRnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVs
LmNvbT4NCj4gPiA+IA0KPiA+ID4gQSBwYWlyIG9mIHByZS1YZSByZWdpc3RlcnMgd2VyZSBiZWlu
ZyBpbmNsdWRlZCBpbiB0aGUgWGUgY2FwdHVyZSBsaXN0Lg0KPiA+ID4gR3VDIHdhcyByZWplY3Rp
bmcgdGhvc2UgYXMgYmVpbmcgaW52YWxpZCBhbmQgbG9nZ2luZyBlcnJvcnMgYWJvdXQNCj4gPiA+
IHRoZW0uIFNvLCBzdG9wIGRvaW5nIGl0Lg0KPiA+ID4gDQo+ID4gYWxhbjpzbmlwDQo+ID4gPiAg
ICNkZWZpbmUgQ09NTU9OX0dFTjlCQVNFX0dMT0JBTCBcDQo+ID4gPiAtCXsgR0VOOF9GQVVMVF9U
TEJfREFUQTAsICAgICAwLCAgICAgIDAsICJHRU44X0ZBVUxUX1RMQl9EQVRBMCIgfSwgXA0KPiA+
ID4gLQl7IEdFTjhfRkFVTFRfVExCX0RBVEExLCAgICAgMCwgICAgICAwLCAiR0VOOF9GQVVMVF9U
TEJfREFUQTEiIH0sIFwNCj4gPiA+ICAgCXsgRVJST1JfR0VONiwgICAgICAgICAgICAgICAwLCAg
ICAgIDAsICJFUlJPUl9HRU42IiB9LCBcDQo+ID4gPiAgIAl7IERPTkVfUkVHLCAgICAgICAgICAg
ICAgICAgMCwgICAgICAwLCAiRE9ORV9SRUciIH0sIFwNCj4gPiA+ICAgCXsgSFNXX0dUVF9DQUNI
RV9FTiwgICAgICAgICAwLCAgICAgIDAsICJIU1dfR1RUX0NBQ0hFX0VOIiB9DQo+ID4gPiAgIA0K
PiA+ID4gKyNkZWZpbmUgR0VOOV9HTE9CQUwgXA0KPiA+ID4gKwl7IEdFTjhfRkFVTFRfVExCX0RB
VEEwLCAgICAgMCwgICAgICAwLCAiR0VOOF9GQVVMVF9UTEJfREFUQTAiIH0sIFwNCj4gPiA+ICsJ
eyBHRU44X0ZBVUxUX1RMQl9EQVRBMSwgICAgIDAsICAgICAgMCwgIkdFTjhfRkFVTFRfVExCX0RB
VEExIiB9DQo+ID4gPiArDQo+ID4gPiAgICNkZWZpbmUgQ09NTU9OX0dFTjEyQkFTRV9HTE9CQUwg
XA0KPiA+ID4gICAJeyBHRU4xMl9GQVVMVF9UTEJfREFUQTAsICAgIDAsICAgICAgMCwgIkdFTjEy
X0ZBVUxUX1RMQl9EQVRBMCIgfSwgXA0KPiA+ID4gICAJeyBHRU4xMl9GQVVMVF9UTEJfREFUQTEs
ICAgIDAsICAgICAgMCwgIkdFTjEyX0ZBVUxUX1RMQl9EQVRBMSIgfSwgXA0KPiA+ID4gQEAgLTE0
Miw2ICsxNDQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyIHhl
X2xwZF9nc2NfaW5zdF9yZWdzW10gPSB7DQo+ID4gPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgX19n
dWNfbW1pb19yZWdfZGVzY3IgZGVmYXVsdF9nbG9iYWxfcmVnc1tdID0gew0KPiA+ID4gICAJQ09N
TU9OX0JBU0VfR0xPQkFMLA0KPiA+ID4gICAJQ09NTU9OX0dFTjlCQVNFX0dMT0JBTCwNCj4gPiA+
ICsJR0VOOV9HTE9CQUwsDQo+ID4gPiAgIH07DQo+ID4gPiAgIA0KPiA+IGFsYW46IHNwbGl0dGlu
ZyBvdXQgYSBjb3VwbGUgcmVnaXN0ZXJzIGZyb20gQ09NTU9OX0dFTjlCQVNFX0dMT0JBTCBpbnRv
IEdFTjlfR0xPQkFMDQo+ID4gZG9lc24ndCBzZWVtIHRvIGNvbW11bmljYXRlIHRoZSBpbnRlbnQg
b2YgZml4IGZvciB0aGlzIHBhdGNoLiBUaGlzIGlzIG1vcmUgb2YgYSBuYW1pbmcsDQo+ID4gdGhp
bmcgYW5kIGkgYW0gbm90IHN1cmUgd2hhdCBjb3VudGVyLXByb3Bvc2FsIHdpbGwgd29yayB3ZWxs
IGluIHRlcm1zIG9mIHJlYWRpYmlsaXR5Lg0KPiA+IE9uZSBpZGVhOiBwZXJoYXBzIHdlIHJlbmFt
ZSAiQ09NTU9OX0dFTjlCQVNFX0dMT0JBTCIgdG8gIkNPTU1PTl9HRU45UExVU19CQVNFX0dMT0JB
TCINCj4gPiBhbmQgcmVuYW1lIEdFTjlfR0xPQkFMIHRvIENPTU1PTl9HRU45TEVHQUNZX0dMT0JB
TC4gc28gd2Ugd291bGQgaGF2ZSB0d28gZ2VuOS1nbG9iYWwNCj4gPiB3aXRoIGEgY2xlYXIgZGlz
dGluY3Rpb24gaW4gbmFtaW5nIHdoZXJlIG9uZSBpcyAiR0VOOVBMVVMiIGFuZCB0aGUgb3RoZXIg
aXMgIkdFTjlMRUdBQ1kiLg0KPiA+IA0KPiA+IEJ1dCBzaW5jZSB0aGlzIGlzIGEgbGlzdC1uYW1p
bmcgdGhpbmcsIGkgYW0gb2theSBlaXRoZXIgYWJvdmUgY2hhbmdlLi4uIE9SLi4uDQo+ID4ga2Vl
cGluZyB0aGUgc2FtZSBidXQgd2l0aCB0aGUgY29uZGl0aW9uIG9mIGFkZGluZyBhIGNvbW1lbnQg
dW5kZXINCj4gPiBDT01NT05fR0VOOUJBU0VfR0xPQkFMIGFuZCBHRU45X0dMT0JBTCBuYW1lcyB0
aGF0IGV4cGxhaW4gdGhlIGRpZmZlcmVuY2VzIHdoZXJlIG9uZQ0KPiA+IGlzIGdlbjktbGVnYWN5
IGFuZCB0aGUgb3RoZXIgaXMgZ2VuOS1hbmQtZnV0dXJlIHRoYXQgY2FycmllcyBvdmVyIHRvIGJl
eW9uZCBHZW45Lg0KPiA+IChzaWRlIG5vdGU6IGNvZGluZyBzdHlsZSB3aXNlLCBpcyBpdCBwb3Nz
aWJsZSB0byBhZGQgdGhlIGNvbW1lbnQgcmlnaHQgdW5kZXIgdGhlICNkZWZpbmUNCj4gPiBsaW5l
IGFzIG9wcG9zZWQgdG8gdW5kZXIgdGhlIGVudGlyZSBsaXN0PykNCj4gPiANCj4gPiAoY29uZGl0
aW9uYWwpIFJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlz
QGludGVsLmNvbT4NCj4gPiANCj4gSSdtIG5vdCBlbnRpcmVseSBzdXJlIHdoYXQgeW91IGFyZSBh
cmd1aW5nIGhlcmUuDQo+IA0KPiBNeSByZWFkaW5nIG9mIHRoZSBvcmlnaW5hbCBjb2RlIGlzIHRo
YXQgQ09NTU9OX0dFTlhfIG1lYW5zIHRoZSByZWdpc3RlcnMgDQo+IHdlcmUgaW50cm9kdWNlZCBv
biB0aGUgbmFtZWQgZGV2aWNlIGJ1dCBhIGFyZSBjb21tb24gdG8gbGF0ZXIgZGV2aWNlcy4gDQo+
IFdoZXJlYXMgR0VOWF8gbWVhbnMgdGhlIHJlZ2lzdGVycyBhcmUgc3BlY2lmaWMgdG8gdGhhdCBk
ZXZpY2UgYWxvbmUuIA0KPiBUaGF0IHNlZW1zIGEgcHJldHR5IHN0cmFpZ2h0IGZvcndhcmQgYW5k
IHNpbXBsZSBuYW1pbmcgc2NoZW1lIHRvIG1lLg0KPiANCj4gSm9obi4NCj4gDQphbGFuOiB5b3Ug
c2FpZCAicmVhZGluZyBvZiB0aGUgb3JpZ2luYWwgY29kZSBpcyB0aGF0IENPTU1PTl9HRU5YXw0K
bWVhbnMgdGhlIHJlZ2lzdGVycyB3ZXJlIGludHJvZHVjZWQgb24gdGhlIG5hbWVkIGRldmljZSBi
dXQgYSBhcmUNCmNvbW1vbiB0byBsYXRlciBkZXZpY2VzIi4NClRoYXQgd2FzbnQgdGhlIG9yaWdp
bmFsIGludGVudCB3aGVuIGF1dGhvcmVkLiBUaGUgb3JpZ2luYWwgaW50ZW50DQp3YXMgbGlzdCBu
YW1lcyBhbmQgaXRzIGNvbW1lbnRzIHRvIGNvcnJlc3BvbmRlZCB0byB3aGF0IHBsYXRmb3JtcyB3
ZQ0Kc3VwcG9ydGVkICh0aGF0cyB3aHkgdGhlIGZpcnN0IHBhdGNoIHdhcyBhbGwgb2YgR2VuMTIg
cmVnaXN0ZXJzIGluIGENCnNpbmdsZSBsaXN0IHRoYXQgaW5jbHVkZWQgR2VuOC85IHJlZ2lzdGVy
IGRlZmluaXRpb25zIGFuZCBHZW45IHN1Ymxpc3RzDQpnb3QgYWJzdHJhY3RlZCBvdXQgbGF0ZXIp
Lg0KDQpJJ20gb2theSB3aXRoIGNoYW5naW5nIHRoZSBpbnRlbnQgb2YgdGhlIGxpc3QgbmFtaW5n
IC0gYnV0IHlvdXIgY29kZSBzdGlsbA0KbG9va3MgYSBiaXQgb2ZmIGNvbnNpZGVyaW5nIHlvdSBo
YXZlIGF0IGxlYXN0IG9uZSBsaXN0IHdpdGggdHdvIHN1Ymxpc3RzDQp0aGF0IGNhcnJ5IHRoZSB0
ZXJtICJHRU45IjoNCiAgc3RhdGljIGNvbnN0IHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjciBk
ZWZhdWx0X2dsb2JhbF9yZWdzW10gPSB7DQoJQ09NTU9OX0JBU0VfR0xPQkFMLA0KCUNPTU1PTl9H
RU45QkFTRV9HTE9CQUwsDQoJR0VOOV9HTE9CQUwsDQoNCkFnYWluLCBpIGZlZWwgdGhlIG5hbWUg
b2YgdGhlc2UgdHdvIHN1Ymxpc3RzICgiQ09NTU9OX0dFTjlCQVNFX0dMT0JBTCIgdnMNCiJHRU45
X0dMT0JBTCIpIGRvbnQgZWFzaWx5IHBvcnRyYXkgZGlmZmVyZW5jZXMgYW5kIHdoeSB0aGV5IHdl
cmUgc2VwYXJhdGVkDQpvdXQuIElmIHRoZXkgYm90aCByZWZsZWN0ICJ3aGVuIHRoZSBuYW1lZCBy
ZWdpc3RlciBnb3QgaW50cm9kdWNlZCIsIHRoZW4NCndoeSBub3QganVzdCBoYXZlIHRoZW0gaW4g
dGhlIHNhbWUgbGlzdD8gU2luY2UgdGhpcyBwYXRjaCBpcyBub3QNCmFib3V0ICJ3aGVuIGEgcmVn
aXN0ZXIgZ290IGludHJvZHVjZWQiIGJ1dCAicHJlLVhlIHJlZ2lzdGVycyBhcmUgbm90DQpyZWNv
Z25pemVkIGJ5IEd1QyBvbiBYZSIsIHRoZW4gcGVyaGFwcyB3ZSBjYW4gY2hhbmdlIHRoZSBuYW1l
cyB0bzoNCglDT01NT05fR0VOOUJBU0VfR0xPQkFMIC0+IFtzYW1lXQ0KCUdFTjlfR0xPQkFMIC0+
IFBSRVhFX0dFTjlfR0xPQkFMDQoNCkVpdGhlciB3YXksIGkgcmF0aGVyIG5vdCBhcmd1ZSBhYm91
dCB2YXJpYWJsZSBuYW1lcyAtIHNvIGhlcmUgaXMgdGhlIFJiDQooc2luY2UgcGF0Y2ggY29tbWVu
dCBkZXNjcmliZXMgdGhlIGlzc3VlIGFuZCBmdW5jdGlvbmFsaXR5IHNlZW1zIGNvcnJlY3QpOg0K
UmV2aWV3ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwu
Y29tPg0KDQo=
