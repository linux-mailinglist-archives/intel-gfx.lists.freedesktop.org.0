Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE3E65EF1E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 15:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2993989322;
	Thu,  5 Jan 2023 14:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C161989322
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 14:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672930023; x=1704466023;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YsEcq0r3B204nxXvnCqRt+gUwzCgf/0chfvnkUBvVVg=;
 b=lJaewJPwvQlajFEa24M+hZdaK2oopqZ4EUaF+Fc06FzUrkHIVq9x646U
 La9AT/9Lm5NnXyLwa6cb42+PRouZNppVWRHHxiiUDuBY8Kes7WQHbJ8ga
 OzwEt9JX7FdTL8kSrmO5XOANVRKGJc4hOpZ6y4mJSextVdWTFUD131pZP
 BleIuxJfRiiKb5IuDia0Qu1WJiJ8pIfBeymuqkhgTHtznhSM8dBtZ0THR
 +seIAIchC6q54ws/3NzsogK9B7s4JxLfJneo5rvvXP0dbq4s5up67IizJ
 YBH1PEen0Dovo5b5CzBfAk6dZbkl1kBT137YXsEusgz4ZMrZ7aX5wpdvA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="301914364"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="301914364"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 06:47:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="655600194"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="655600194"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 05 Jan 2023 06:47:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 06:47:02 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 06:47:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 06:47:02 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 06:47:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMsgj6acBNb8o587Z68rzR25Xv/nghZ/3q9oLCLY2OYe55RVWAjEQiK8aI7ZF03yk1uKQAbSDcD3ypPpOCWxt0txofF5YmO0VAKyzfcJpBGCAq+HF8+bi6fg1hsQ3/ffo5/eO+MJ1HaHC86L8QJleyN8pZBXpgm53DAGzrY26vTdX5pQpLVvbcsYNHTjdInspYEX0HRT3g3a7f3lcPs3+5PYneOx5jyXyI4EbGjKeZ25AvWzZ0wDdX1HbTuwUJGecC3eeKm3HAHtM2OXS7aw5aybmkIWcvQTd3UZ49jqRnX+gPHi/Kkhqko3YNQhcPV1S77IpO9Iuxt6a4HCoWV+1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YsEcq0r3B204nxXvnCqRt+gUwzCgf/0chfvnkUBvVVg=;
 b=P7AsJoIIAKnPqK38Q7ed4xTXPKDNQgLG3OJ3QM53QTXeAN1MG83jjZOMTjctBjdd6GCJeYAeVkSHy4xhUq4PSiaczNY3zcbUdulFX4CyvCfHPrkws2Qc++xqgZgCpccc0c7rhuAy8WR8ygi6nNKg2YguF4YCfrQVhd3JNJGcj7Dm/bVBjO2IRJIoP8L/HtujztaIdD2rFeJmn4li7vCVoapL73I0zH5ZzhXlw6/LFzhrbXsDRbZc4YiubSDmTapU+ilWTKBaPQE+oYfYZR70sLnr4zrHQ2mMnpmU3U1VXHPbQ02Z9kKRLYZ8LqAhgnvwelNC83Il28jsEq4dNjok4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB5647.namprd11.prod.outlook.com (2603:10b6:a03:3af::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 14:46:59 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 14:46:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Introduce
 intel_dsb_align_tail()
Thread-Index: AQHZEObZqMp+moBfNkyB8kqe62K7pq6QBwMA
Date: Thu, 5 Jan 2023 14:46:58 +0000
Message-ID: <PH7PR11MB598102CBCB2CF0CD70F75CDAF9FA9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB5647:EE_
x-ms-office365-filtering-correlation-id: f3c15349-1025-4404-c778-08daef2bb2da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jniMc7l3Jo3DD536hwxqkYtAtl41vJuLCqo0mBpzlB9tnAsvcefQRuMNQzwEa1lbBX36SP7nQZVP7Pl9x/x1ain2x/xXwv3JFHrqIBH/Q3mRnQBWa20qWZ3a0+LexwUEu5SrajBeIJKIvs33UGgl8gtO4Yd2B55SgewcD63JzPeXkbxmKK5MHsnM3FzrW7sCdJeIRMJmPvAQd+V3fYXLEIIKaqq1GkwHCSRwF523P0/UR87sFvaZmN6m0uwE5ItXYfCfNw1bBLFn8UO6fJrreiPuC8ru3AmVp2QDXUX4AS8Q7uhwLa8Yhs3zdEmA8ZPF03IikWNePTETaFza+u4LqTj71D7qROzuupamzpqAsUFAUXfyfeduMDmAYK2BaWoh4DRtPchv3vtmG2KjhOO8ehutdUuxHURDaaCx84dF+ZoyFUnKbiKShsTLT2tPX2wMnOsd5ADPS41VzdcKUydussed3pL4dH2ZOyS5EO+p1v9N2GGLknV9pNQYsfRuqdSSU3n/yszs+T8M9+ejCk7l+UHlafrzTFL8AuvSCSwefTg3ytDueyWthap+4kW5Bqn+euTOzHvn93p1i4+QUiJlC0dQs48O+Ll1Yj5HL01CAR+UFgmtK1eOcXiDOOem+ACsB6G1kR/NILZEvlnA7PY+PkS8D2Z0G7oNvcWHWZY4buWwuUVCI6lkE2Wyx4N8DWOTaTG7oCJphd/DRk6u1/aZlA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(396003)(136003)(346002)(451199015)(64756008)(66476007)(66946007)(8676002)(66446008)(76116006)(41300700001)(38070700005)(66556008)(82960400001)(33656002)(316002)(2906002)(86362001)(5660300002)(122000001)(110136005)(38100700002)(83380400001)(55016003)(8936002)(6506007)(55236004)(7696005)(478600001)(53546011)(26005)(9686003)(186003)(52536014)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cThQYXdjWmJucUhQa3Fzd25Vb2lUTnhLZkNOZ2NwdFNhakkvd1hyUHVCazVD?=
 =?utf-8?B?eVNqeHpNbTVOSnVzU2hrMExnK2tTZ2ZVYWdaWGVsQWRNYTBIblYxUU5jVUdq?=
 =?utf-8?B?NTBpNC9HWEhMcmlLTEV1OGpVQ1UzZFB5NGZ2SWthYzRQdWxRYUpYb0NNYnl4?=
 =?utf-8?B?Nk4zVlBHaFFlb1JobmtzN3pXUjE5N0pxUWJpelM5UVI1NFVXYm01Y1JYNUhX?=
 =?utf-8?B?VU1Bb2RkN0JlQ2dsY0RrUmdmNmZLWkw3eXVDZ0FDb05xNVJQM1oyVmtVcmgw?=
 =?utf-8?B?SmExQVFkQStTUG54T1pPTVBMZDd6RzJKSmU2ZmpaM202dS9XZEtPWmFkdFRQ?=
 =?utf-8?B?ZFFPU3RvdmxNdGluQ2lVcHltQnhJY2xFalhhSDZ0eFA3UUZpZU02RW5vbFl1?=
 =?utf-8?B?VFFHc0piQkZZaDBmekdVazZmc1U1U1VBUTkwVEtRSkt6bkFhalNyLzdpeDhF?=
 =?utf-8?B?cStock1iMktoaFlGd2JoekY5WEhVRGpDL0YzZFdKbHJ2dUJSbTliS3RnQjZ4?=
 =?utf-8?B?WUJqV3pzSEp2aWNUemR0M1dLYk9RNXl4UUsyS2MvVHVwc3M0S3JrK3BNNnZy?=
 =?utf-8?B?SlBnMlVya0RraVhMdFl0cDhhc1pSTllYQk4vTGV5OGI5SG9sMTVXem10SmFt?=
 =?utf-8?B?Y1ZGc0ZYNG1DQlR6RnJ2b0ZwN2JtMVAvaGYzWEZYbTJoRDNNOVdrR3o2MjVX?=
 =?utf-8?B?VmxMSUQ2ck9EbFJ5UmVUUUpGeVN2cWF2UjFuM0x1bW5UZFRsMHpmbHRmaWlV?=
 =?utf-8?B?aXBFdVh1aExUVVdxSHhpL2dnajBZMzNSZHB1bkpMSm5lcSt4a2hna0VSek9Y?=
 =?utf-8?B?SlJqM1AwaktUVnhqMjJjOGNTdVQyV3VRaWkya0kvUGNoM29pcDl3ZEFSWTBQ?=
 =?utf-8?B?dEt3STd6RGdLZFkyY3pDQkZEdHFIc0w3M3lRZk5RUjllaVFDU0NnTU52eXhY?=
 =?utf-8?B?alA3S1dkVEg0WFpldWdBNjFSNkhiT0swRkc2cU5xV0dUN0VuRTZkbkJmN0R4?=
 =?utf-8?B?dCs5eGdiQlVHS0ZDNzNURzBPalJsaVJwRmYzUXFjVFNtYStuS1RFWFBJLzNO?=
 =?utf-8?B?L2lRTy95OTB1N0k1bHhhc2JPSEJyZGhwbDNQWjJBUC80SUtNQWZDNWxBTkp2?=
 =?utf-8?B?c1R4QzdENzI0eTFXTzIwVHFhKzIvRkhUVElERkpIMzhQUi84cVNJRFdDcG9O?=
 =?utf-8?B?Tk0xODZkNzVJcUgvd1ByWC8wemRVbmRwOWNhSW0wWnozRC9NSHlRRHZ6Q3pV?=
 =?utf-8?B?cFV4Tm9iTHVRMklKaDlJYnBaY3BXVEg4SEt4andVWkpLMmNPM0pxd0RISXdN?=
 =?utf-8?B?MDhENWQ1cUNlbTlyQnZXdVAxWFZEVkV3UXFVRlp4RkhZRWtHRmd6d3liYnox?=
 =?utf-8?B?WmRCRXJZSXM1L21aWFZBaGhFM0lSRStzZ2JCdXR6ZEx6TDgvVW9NdEY0RzQ0?=
 =?utf-8?B?NjhlVDRjUHQ4V3BkbTY5eXptMUVHNU9xYk1tMmRMT3I3cy8yRHJhYlJFbElP?=
 =?utf-8?B?dkNBUDJ5WU9mMkNFU1Z5ZTNnUG5kQ2VIWEdQeUtKQWw0WW5ES1pJYlBWTGFP?=
 =?utf-8?B?UEtxUEp6M3NNY1pGQjdnTGIzTUZ3YWlTV2ZqMHovbFZoMEFVZGc0L0pMSDB1?=
 =?utf-8?B?THBuRXBjWnh0VGtZdkZOa1VoZzltYzVwcDBtbC90TnBMVFBXQUtqNWJTekt1?=
 =?utf-8?B?MG9IZFhnYkRtTUV2S1ZUM2Z5c1JHZFVZckhUcGNEUWg5a3h1OG15VURIcVZ1?=
 =?utf-8?B?N1JUZVEzUHhwYkJYMzFJUXlXbVJyWU1STW82dFlkQy8rVU9TV1gxbnVkTlF3?=
 =?utf-8?B?M0R2MTk5QjhKWlhsWDQwc3FvNTJDY1JZY0tiMjdNUjEzZXJoRDhZWXVrWHZy?=
 =?utf-8?B?UGg0SWFyd2FsQ0NraGpkRHY3ckpyNkJyMHNrMHRhcXZBR0l4dmtyWkMvbmZS?=
 =?utf-8?B?RFI1REtpUWh0d0ExLzVTc1dabmZYYUV0b25ELzFDY0ZjMU5BRDFlYkwwa3M5?=
 =?utf-8?B?T3lhOXJkOXRtc0hrWmxZR202eklZSDhQYlEzZk16UW1POHllZmppcms1a1Rv?=
 =?utf-8?B?RHlyWHU0MWVDYWRZQ3hHb3V5bjg2TTg1RGxIVWJJd1hQYk03VFladzNiNXZN?=
 =?utf-8?Q?I3K14IpvvqsY4Lh/AI+iX43SD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3c15349-1025-4404-c778-08daef2bb2da
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 14:46:58.9504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6LwopZWRfYQHekUKTaB74z3WIzECAYUOHesehHQH5fkD6Sxb8q0lT57znco2ojoSXs4ImPn1rD4adiNQGXmGOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5647
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Introduce
 intel_dsb_align_tail()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDkvMTNdIGRybS9pOTE1L2RzYjogSW50cm9kdWNlDQo+IGludGVsX2RzYl9hbGln
bl90YWlsKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBNb3ZlIHRoZSBEU0IgdGFpbCBjYWNoZWxpbmUgYWxpZ25tZW50
IHRvIGEgaGVscGVyLiBObyBuZWVkIHRvIHBvbGx1dGUgdGhlDQo+IGNhbGxlciB3aXRoIG11bmRh
bmUgZGV0YWlscyBsaWtlIHRoaXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDI0ICsrKysrKysrKysrKysr
KysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMN
Cj4gaW5kZXggZmE0YjgwOGE4MTM0Li42MzZjNTc3NjdmOTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMTg3LDYgKzE4NywyMiBAQCB2b2lk
IGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCX0NCj4gIH0N
Cj4gDQo+ICtzdGF0aWMgdTMyIGludGVsX2RzYl9hbGlnbl90YWlsKHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYikgew0KPiArCXUzMiBhbGlnbmVkX3RhaWwsIHRhaWw7DQo+ICsNCj4gKwl0YWlsID0gZHNi
LT5mcmVlX3BvcyAqIDQ7DQo+ICsJYWxpZ25lZF90YWlsID0gQUxJR04odGFpbCwgQ0FDSEVMSU5F
X0JZVEVTKTsNCj4gKw0KPiArCWlmIChhbGlnbmVkX3RhaWwgPiB0YWlsKQ0KPiArCQltZW1zZXQo
JmRzYi0+Y21kX2J1Zltkc2ItPmZyZWVfcG9zXSwgMCwNCj4gKwkJICAgICAgIGFsaWduZWRfdGFp
bCAtIHRhaWwpOw0KPiArDQo+ICsJZHNiLT5mcmVlX3BvcyA9IGFsaWduZWRfdGFpbCAvIDQ7DQo+
ICsNCj4gKwlyZXR1cm4gYWxpZ25lZF90YWlsOw0KPiArfQ0KPiArDQo+ICAvKioNCj4gICAqIGlu
dGVsX2RzYl9jb21taXQoKSAtIFRyaWdnZXIgd29ya2xvYWQgZXhlY3V0aW9uIG9mIERTQi4NCj4g
ICAqIEBkc2I6IERTQiBjb250ZXh0DQo+IEBAIC0yMDAsMTQgKzIxNiwxMCBAQCB2b2lkIGludGVs
X2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiAgCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsNCj4gIAl1MzIgdGFpbDsNCj4gDQo+IC0JaWYgKCEoZHNiICYmIGRzYi0+ZnJl
ZV9wb3MpKQ0KPiArCXRhaWwgPSBpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOw0KPiArCWlmICh0
YWlsID09IDApDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JdGFpbCA9IEFMSUdOKGRzYi0+ZnJlZV9w
b3MgKiA0LCBDQUNIRUxJTkVfQllURVMpOw0KPiAtCWlmICh0YWlsID4gZHNiLT5mcmVlX3BvcyAq
IDQpDQo+IC0JCW1lbXNldCgmZHNiLT5jbWRfYnVmW2RzYi0+ZnJlZV9wb3NdLCAwLA0KPiAtCQkg
ICAgICAgKHRhaWwgLSBkc2ItPmZyZWVfcG9zICogNCkpOw0KPiAtDQo+ICAJaWYgKGlzX2RzYl9i
dXN5KGRldl9wcml2LCBwaXBlLCBkc2ItPmlkKSkgew0KPiAgCQlkcm1fZXJyKCZkZXZfcHJpdi0+
ZHJtLCAiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7DQo+ICAJCWdvdG8gcmVzZXQ7DQo+IC0tDQo+
IDIuMzcuNA0KDQo=
