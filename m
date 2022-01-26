Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D1F49D319
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 21:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A617F10E542;
	Wed, 26 Jan 2022 20:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540DC10E542
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 20:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643227574; x=1674763574;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7itYWDqdvvwtruLP7uaBaAqLXaRqq27uelil5WqMib4=;
 b=KXZ/t+FoqSj8bMal+g6SqUx5azhjF5EVMl1W2+phWK6MFEqMh2DalDgA
 ROtwyR6Uza0kGTCq/5vTxDAHUbi/7VnnlvzLBDcMleShr36JStbjp+Xu4
 LuqfZP63Ty1ri+BM8R7prFMF8gxYLlp3m1qWVzHmHAtBii6ryFeLHfzw0
 eBlCMV8u8P/Frdhx6KqgXUKubVU7CtJKwOtT+HeY9/j1jn/ePwp3czM8k
 sgHONdGD3/olXmBnLoVMtqyFX7sCslx+P8Vosz8KBwZbLWAHeDSNeb54Z
 4kBLN+Bcb8syRqVVFZRMsDzfQSBkGk6Rs+gN+bB3b4Jqj90W/rFH47cNE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245475044"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="245475044"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 12:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="480006246"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2022 12:06:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 26 Jan 2022 12:06:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 26 Jan 2022 12:06:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 26 Jan 2022 12:06:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fkWfviaTowKG1B9MR2j5MQdVdkphajVonY3rdkDVg7P1AnnnjSHzquLCzgLWeiZuSOzH1alCxWs3G4vwCLtY4EoCpELghyyjrO6x0doKNTrVHH6oDk7fLvYiDzhSQeuLiT7/Oy01y3JS9Cg3iD/83DGRAdPoR9c81EyjVolLxBbOT9FAjmvJ9O+bROvj89YoqCac5Vbec+/ocEENjwghQzDUXelpPKobiS8lQ4gHS4zsdzRXZKruQfIWhMS16T7ZB3sYlv5P6ZqAb0AjQq0HI1B/AT8u/qfi86xRoIGUX9az5xQX8OSm08lfz4lrxnrgcNqOoCvbZ7U8slbtrVlrHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7itYWDqdvvwtruLP7uaBaAqLXaRqq27uelil5WqMib4=;
 b=NMdXMqYtutmkYY142QnuwS4g5do/Giiei8swGy2G4hZt4rkDySOE2rmIFmJDDrP/RhBK83YprCq6VJ1qYhFOEXL9KJJ8ceno31SbSZa7KZVMZp58uORhuhxore6dwv7di4zzUq5YfhfgMKanmQCLK2SL7tp8Kt78bgMFs9tKC7GsZnQUvsTp3Y79McpLiA1e8MbB2dEJAemklStJGq6BofAOl/XyNDgnHeGH5MUZ/rDvvPt8cR11oTVo9j5XMZ8MqgwpliiBIef2qv01YvNmmD1C9BexbmwuJz2tysF889kA8L7bf6m6PhJfih30000gfFLwDhPDNT2KzHSWpZLSkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by PH0PR11MB5158.namprd11.prod.outlook.com (2603:10b6:510:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Wed, 26 Jan
 2022 20:06:02 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.017; Wed, 26 Jan 2022
 20:06:02 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>, "Nerlige Ramappa, Umesh"
 <umesh.nerlige.ramappa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [2/2] drm/i915/pmu: Fix KMD and GuC race on accessing busyness
Thread-Index: AQHYEvAk1Xk3M4jcJEm5HmoX/2xuQQ==
Date: Wed, 26 Jan 2022 20:06:02 +0000
Message-ID: <b67b2d8ae4c5f653823c328e9041f74a08b66c28.camel@intel.com>
References: <20220125020124.788679-2-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220125020124.788679-2-umesh.nerlige.ramappa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77f0fe33-b45e-4c4f-abc9-08d9e1074717
x-ms-traffictypediagnostic: PH0PR11MB5158:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <PH0PR11MB51580A41D3CE6816BC102B978A209@PH0PR11MB5158.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wMGhrdZTLetJ0evVyL1xSPnhSwoW7+jLj5mzAPhaL1PjvTsNqEEjc4kRhuzrmtStdxkNfuk2/zNork8ZIvBy/Qzy7J78o7g3EUJk/AiH+nJrNUdvwn5wZSywKQ+RlishgRfRu+8QkDhO5+aGevVdEMp0cGlTddbCIty4adaKTJ990Q8BSMYYYjwqimXlC9/UaSd0e9sFgSsow/ARN4qxa0TyjO69ZUgqv42Ep95DbSGw1KZijVj17i5rTXhVTuIjzP67eix17hWKzxHfMNMTHzoz5st9kLHkK/XcjvrwfDm4lasrHLZF3Td1BcGLfsT06lJMWKW0DplJj7p7AGgusIEbcBjBusqLHrZwAMtp+Eyaf+KqRfPxtwlZF9ZIxXt7Ovdtc2lLdqrIvijjzzZM+5vumUnOzCWZtrRsWX+nwXfS6IZd49+RLB8unT4Z3WCQJET0YrLpIU2lC1rPo8PiSym7ILgdJJMAC37z5j7tjz5BnwRwvvBdijOrDyYUopL1h4ygtT7w3M3/MsN3C9JZYNtYHn42P4JOztMltHxXXjI0VMfkJN0tWxiakk0J267zeiHfyxpvhKcyDVuFxbDlSilHxXhYuHkNhpXfHqrsRkc+OK3/Lsx6qLVVrq3w5pmzWFZfDa2fnIDlH5fJH46eFQgrhAaXnYNm9rloUMngqf7hdVJ6JunSSzQUxn+ePvScCG4FDoh8BadAUM9h94ZAJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6512007)(6486002)(316002)(64756008)(6506007)(2616005)(2906002)(8936002)(26005)(110136005)(186003)(66556008)(66946007)(83380400001)(66476007)(5660300002)(8676002)(38070700005)(508600001)(66446008)(36756003)(76116006)(71200400001)(86362001)(122000001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFRlZEVQdG1NdzhHS1NoM3FPUGc0TXNta3o0QWZQOGVYR2R5b2Nwd2JKMGlv?=
 =?utf-8?B?eVFrMU04V2ZRZWxXVVQ2cE5zaW8wZ1p4ZVZDSkdZNUtvRUMzUUVUak9HN2VC?=
 =?utf-8?B?OXppclg0ang4YTZROW9KZHFxZGRUUWhwODhJVVZKbTZycjUra3A1L2pjNHly?=
 =?utf-8?B?Rm56SWY2bk9GSnFmVWZkZHZkdzVXU2xuVWFtWW1mUGRPaEtGd0dZZWYzZS9N?=
 =?utf-8?B?OFg5L1JoNzVQNjNlYmE4ZElYbW9DZ2U2aVJ0TzUzVGNoOFRrWVFnVldTeEtr?=
 =?utf-8?B?TGI0UWd0WldIRHpkQnJxUEYzMlIwUWZ5Zkl1SVp2RG5oeG52MGRrUXF0THl2?=
 =?utf-8?B?ZkJuc1RQU1hTM3pNK0FkOUpqekhlMU9VaHdYZXNsUWdwR2dsT0ZEZTU2aXYr?=
 =?utf-8?B?Y1RFYWJnY3dGNGl1VXI3ejVPWEtpZS9Gei9pb0xYSWJpb2FBNEQxSy9jOExv?=
 =?utf-8?B?Q1FIbDBkM3dobnNIMmpZUGQ0RGMzTmhDWENsK0g1Q2NpazNRVUV5aEVoSTdO?=
 =?utf-8?B?cTBtdEF1MjNaajZJSFdoOWRWeCtzcENEQUNRK25mamdxaTM4cUJ3cEZEZk45?=
 =?utf-8?B?Z2M5Z2ZZLzdBVVR1K2ZVakl5aVh5ZllqWXFzd0dBUXhFZi92SVN0VWExSHNP?=
 =?utf-8?B?emZiTWYrOFJadXQvcE95SjNoY2MxK1ZNVjE1R3VIMHk5RlJyVlFDRVhPdHll?=
 =?utf-8?B?UWZMT1N3K1RPQzQyTDhxaEwvZXhldEZVSGhxUGxseW5nckZKemJ3TGpYNHVk?=
 =?utf-8?B?ZjdFa253SE5KSGVuSXJsMnhEYkE1UkhuRzZ5UjM2T2MzMkpyUExkalptelBa?=
 =?utf-8?B?QWtQb1FrYXA4Q1k0bFFwSTRBclFOTnF4Y0RJcC9qSXBtYmFKRUlJUEZKNVZt?=
 =?utf-8?B?L1E1OTBoSytGQjIzcW1Ca1JoR2tmNXpMRXBRRk1FVWFqbHp2QU11ZzQrQW00?=
 =?utf-8?B?aUE5NlY4d2w2b2dITmtPUjRGMHBCK3h4Q3hDTm9pdUJIb0k4bTkzSGJyN1RF?=
 =?utf-8?B?L1Nocm96ZHJ0bmdJdExJOXlydXRObmI1ZXQxKzMvaU1XazkxQ05ZQWhaaFkw?=
 =?utf-8?B?NkdPamloVG1hNWl5S0crNzhDQytnS0lSSkxDalF1TXpORERCd1FTV1hsdDI0?=
 =?utf-8?B?c2liTEJtbnBGT2kweFkyVENUa2dpZkFTZ3ZRK0wrVHpQSit4a0hYV1JhamlI?=
 =?utf-8?B?QWtSczhaLzhxSStCRzRlVmhXckdLckp4dExQR3ZKNlg5ZG1IM09sVVBVS0NL?=
 =?utf-8?B?M3RuUmJ6eG9vZ1d2ckZDT0RxazcwNlR6V2t5UVVYTFpoaHkrTWltSWlyM2E4?=
 =?utf-8?B?RDFWNkNqNFpvSmpZOEFJbFlHV3lLV1lOL3JnOER1SStyekRzUHVPQnZzeEIv?=
 =?utf-8?B?UXRCUDNabFJONkhpbHUwQ1hyTDBGUndNRXFqWnhCNm1ITFhNTjd2YWxzbTNQ?=
 =?utf-8?B?NmsvWXRGVmt0V3BJTzZqdjVYZXRSdHpRVGw5UDdoMzRlYnVlbXc4eEJTSnpk?=
 =?utf-8?B?YU9HVlZKYWZUYmNra0VjRXZscVR6SlJCMGYydzQzcFJlSlF1dmFKNGIvWHhV?=
 =?utf-8?B?ZE02bWtJbWVRbHhLMGtyVXJDRUFPeUJvWW96R1JCaVlMU05LMzhVSTFLamR6?=
 =?utf-8?B?dk9icTRQNExabUlWRVF5cFBsUkJKSFFjYkxWZGl4OUl1YUlJZFRSNkJjcVUz?=
 =?utf-8?B?dTFoS29HZE1NSXhXMElscGlSOXVXaGRUVzF6TTFnU21rMnZ3dDNNL2xzWG05?=
 =?utf-8?B?S1dFV0VwcGRwd21NK2daWXFDUnBrRlV2MkxNVW14NHRjZyt3eHVheHd1TUhn?=
 =?utf-8?B?Q3NwR3JoRHFRTDI2VkVURnpNcDRJSDd2SmZtYVpjVEd1anUwcFhPRWkveEM5?=
 =?utf-8?B?UnU0bW4zWDh0REJNWjZBdUcrSmJWSTFjTHJqK05VRjVCWEFnOFhOTjFWQkc2?=
 =?utf-8?B?VWlickVFSThrQ2JiSHQxS0x0Z1BLMmd1S3NGSU03RUxYNnV0UnhqYjU3QVlu?=
 =?utf-8?B?NzZhR0xCSlZidWh4VmJ1KzFjRWV1V0NNYy9rZitwSDNRWXdzSmlRUUVXWUZz?=
 =?utf-8?B?YnU5aGwwenFzOTBNL0tHNkxJYjRoY1A1N0c3V21YNmNQMWdtckYveGo5eks1?=
 =?utf-8?B?bUlkMFAvei8xQUhuZFdzekdWTVFVRGEvMEdNWlZHTjNOa2xhZjBoelk0blEw?=
 =?utf-8?B?bXhVYlRVZUlVS0s1blhiN2IrTmpmbkxpSmRwVVgzTENyTDNLdUZtZnFXNWRq?=
 =?utf-8?B?UlVNSEQvSDBzenM2M2hIVk1Ba1YvbVp3cDVCWUtmb3VoUzZad2lrdVV6QWxt?=
 =?utf-8?B?L1RZVHRzMzlWRUE4eTZuSXo1U09ULzhzQzExQzNrdDY2WTRUMGo4UT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F5A761D31A8A4341A759A5F2437A83F3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f0fe33-b45e-4c4f-abc9-08d9e1074717
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2022 20:06:02.2608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tcAeZVFl0VqQhWw937SnYcQ+9elQsyUIAZDVTYRZCQwxdjxZdVK8OcLm4NhT+igcijUYgmBnkyCt+iVQhgXLwzf7tj4b2t+lszX2ffcHiRK7Hzi/4FHlMtVUMSogfI/j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5158
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [2/2] drm/i915/pmu: Fix KMD and GuC race on
 accessing busyness
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

VGhhbmtzIGZvciB0aGUgb2ZmbGluZSBydW4gdGhyb3VnaCBvZiBhbGwgdGhlIGNvcm5lcg0KY2Fz
ZXMgd2UgYXJlIHRyeWluZyB0byBoYW5kbGUgdGhyb3VnaCBiZWxvdyBjb2Rlcy4NCg0KUmV2aWV3
ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0K
DQouLi5hbGFuDQoNCg0KDQoNCg0KT24gTW9uLCAyMDIyLTAxLTI0IGF0IDE4OjAxIC0wODAwLCBV
bWVzaCBOZXJsaWdlIFJhbWFwcGEgd3JvdGU6DQo+IEd1QyB1cGRhdGVzIHNoYXJlZCBtZW1vcnkg
YW5kIEtNRCByZWFkcyBpdC4gU2luY2UgdGhpcyBpcyBub3QNCj4gc3luY2hyb25pemVkLCB3ZSBy
dW4gaW50byBhIHJhY2Ugd2hlcmUgdGhlIHZhbHVlIHJlYWQgaXMgaW5jb25zaXN0ZW50Lg0KPiBT
b21ldGltZXMgdGhlIGluY29uc2lzdGVuY3kgaXMgaW4gcmVhZGluZyB0aGUgdXBwZXIgTVNCIGJ5
dGVzIG9mIHRoZQ0KPiBsYXN0X3N3aXRjaF9pbiB2YWx1ZS4gMiB0eXBlcyBvZiBjYXNlcyBhcmUg
c2VlbiAtIHVwcGVyIDggYml0cyBhcmUgemVybw0KPiBhbmQgdXBwZXIgMjQgYml0cyBhcmUgemVy
by4gU2luY2UgdGhlc2UgYXJlIG5vbi16ZXJvIHZhbHVlcywgaXQgaXMNCj4gbm90IHRyaXZpYWwg
dG8gZGV0ZXJtaW5lIHZhbGlkaXR5IG9mIHRoZXNlIHZhbHVlcy4gSW5zdGVhZCB3ZSByZWFkIHRo
ZQ0KPiB2YWx1ZXMgbXVsdGlwbGUgdGltZXMgdW50aWwgdGhleSBhcmUgY29uc2lzdGVudC4gSW4g
dGVzdCBydW5zLCAzDQo+IGF0dGVtcHRzIHJlc3VsdHMgaW4gY29uc2lzdGVudCB2YWx1ZXMuIFRo
ZSB1cHBlciBib3VuZCBpcyBzZXQgdG8gNg0KPiBhdHRlbXB0cyBhbmQgbWF5IG5lZWQgdG8gYmUg
dHVuZWQgYXMgcGVyIGFueSBuZXcgb2NjdXJlbmNlcy4NCj4gDQo+IFNpbmNlIHRoZSBkdXJhdGlv
biB0aGF0IGd0IGlzIHBhcmtlZCBjYW4gdmFyeSwgdGhlIHBhdGNoIGFsc28gdXBkYXRlcw0KPiB0
aGUgZ3QgdGltZXN0YW1wIG9uIHVucGFyayBiZWZvcmUgc3RhcnRpbmcgdGhlIHdvcmtlci4NCj4g
DQo+IHYyOg0KPiAtIEluaXRpYWxpemUgaQ0KPiAtIFVzZSBSRUFEX09OQ0UgdG8gYWNjZXNzIGVu
Z2luZSByZWNvcmQNCj4gDQo+IEZpeGVzOiA3N2NkZDA1NGRkMmMgKCJkcm0vaTkxNS9wbXU6IENv
bm5lY3QgZW5naW5lIGJ1c3luZXNzIHN0YXRzIGZyb20gR3VDIHRvIHBtdSIpDQo+IFNpZ25lZC1v
ZmYtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBhQGludGVs
LmNvbT4NCj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNz
aW9uLmMgfCA1OCArKysrKysrKysrKysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNTQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYw0KPiBpbmRleCA2Njc2MGY1ZGYwYzEu
Ljc1MDc5ZTE3ZTViOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX3N1Ym1pc3Npb24uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+IEBAIC0xMTE0LDYgKzExMTQsMTkgQEAgX19leHRl
bmRfbGFzdF9zd2l0Y2goc3RydWN0IGludGVsX2d1YyAqZ3VjLCB1NjQgKnByZXZfc3RhcnQsIHUz
MiBuZXdfc3RhcnQpDQo+ICAJaWYgKG5ld19zdGFydCA9PSBsb3dlcl8zMl9iaXRzKCpwcmV2X3N0
YXJ0KSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICsJLyoNCj4gKwkgKiBXaGVuIGd0IGlzIHVucGFy
a2VkLCB3ZSB1cGRhdGUgdGhlIGd0IHRpbWVzdGFtcCBhbmQgc3RhcnQgdGhlIHBpbmcNCj4gKwkg
KiB3b3JrZXIgdGhhdCB1cGRhdGVzIHRoZSBndF9zdGFtcCBldmVyeSBQT0xMX1RJTUVfQ0xLUy4g
QXMgbG9uZyBhcyBndA0KPiArCSAqIGlzIHVucGFya2VkLCBhbGwgc3dpdGNoZWQgaW4gY29udGV4
dHMgd2lsbCBoYXZlIGEgc3RhcnQgdGltZSB0aGF0IGlzDQo+ICsJICogd2l0aGluICsvLSBQT0xM
X1RJTUVfQ0xLUyBvZiB0aGUgbW9zdCByZWNlbnQgZ3Rfc3RhbXAuDQo+ICsJICoNCj4gKwkgKiBJ
ZiBuZWl0aGVyIGd0X3N0YW1wIG5vciBuZXdfc3RhcnQgaGFzIHJvbGxlZCBvdmVyLCB0aGVuIHRo
ZQ0KPiArCSAqIGd0X3N0YW1wX2hpIGRvZXMgbm90IG5lZWQgdG8gYmUgYWRqdXN0ZWQsIGhvd2V2
ZXIgaWYgb25lIG9mIHRoZW0gaGFzDQo+ICsJICogcm9sbGVkIG92ZXIsIHdlIG5lZWQgdG8gYWRq
dXN0IGd0X3N0YW1wX2hpIGFjY29yZGluZ2x5Lg0KPiArCSAqDQo+ICsJICogVGhlIGJlbG93IGNv
bmRpdGlvbnMgYWRkcmVzcyB0aGUgY2FzZXMgb2YgbmV3X3N0YXJ0IHJvbGxvdmVyIGFuZA0KPiAr
CSAqIGd0X3N0YW1wX2xhc3Qgcm9sbG92ZXIgcmVzcGVjdGl2ZWx5Lg0KPiArCSAqLw0KPiAgCWlm
IChuZXdfc3RhcnQgPCBndF9zdGFtcF9sYXN0ICYmDQo+ICAJICAgIChuZXdfc3RhcnQgLSBndF9z
dGFtcF9sYXN0KSA8PSBQT0xMX1RJTUVfQ0xLUykNCj4gIAkJZ3Rfc3RhbXBfaGkrKzsNCj4gQEAg
LTExMjUsMTcgKzExMzgsNDUgQEAgX19leHRlbmRfbGFzdF9zd2l0Y2goc3RydWN0IGludGVsX2d1
YyAqZ3VjLCB1NjQgKnByZXZfc3RhcnQsIHUzMiBuZXdfc3RhcnQpDQo+ICAJKnByZXZfc3RhcnQg
PSAoKHU2NClndF9zdGFtcF9oaSA8PCAzMikgfCBuZXdfc3RhcnQ7DQo+ICB9DQo+ICANCj4gLXN0
YXRpYyB2b2lkIGd1Y191cGRhdGVfZW5naW5lX2d0X2Nsa3Moc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQ0KPiArLyoNCj4gKyAqIEd1QyB1cGRhdGVzIHNoYXJlZCBtZW1vcnkgYW5kIEtN
RCByZWFkcyBpdC4gU2luY2UgdGhpcyBpcyBub3Qgc3luY2hyb25pemVkLA0KPiArICogd2UgcnVu
IGludG8gYSByYWNlIHdoZXJlIHRoZSB2YWx1ZSByZWFkIGlzIGluY29uc2lzdGVudC4gU29tZXRp
bWVzIHRoZQ0KPiArICogaW5jb25zaXN0ZW5jeSBpcyBpbiByZWFkaW5nIHRoZSB1cHBlciBNU0Ig
Ynl0ZXMgb2YgdGhlIGxhc3RfaW4gdmFsdWUgd2hlbg0KPiArICogdGhpcyByYWNlIG9jY3Vycy4g
MiB0eXBlcyBvZiBjYXNlcyBhcmUgc2VlbiAtIHVwcGVyIDggYml0cyBhcmUgemVybyBhbmQgdXBw
ZXINCj4gKyAqIDI0IGJpdHMgYXJlIHplcm8uIFNpbmNlIHRoZXNlIGFyZSBub24temVybyB2YWx1
ZXMsIGl0IGlzIG5vbi10cml2aWFsIHRvDQo+ICsgKiBkZXRlcm1pbmUgdmFsaWRpdHkgb2YgdGhl
c2UgdmFsdWVzLiBJbnN0ZWFkIHdlIHJlYWQgdGhlIHZhbHVlcyBtdWx0aXBsZSB0aW1lcw0KPiAr
ICogdW50aWwgdGhleSBhcmUgY29uc2lzdGVudC4gSW4gdGVzdCBydW5zLCAzIGF0dGVtcHRzIHJl
c3VsdHMgaW4gY29uc2lzdGVudA0KPiArICogdmFsdWVzLiBUaGUgdXBwZXIgYm91bmQgaXMgc2V0
IHRvIDYgYXR0ZW1wdHMgYW5kIG1heSBuZWVkIHRvIGJlIHR1bmVkIGFzIHBlcg0KPiArICogYW55
IG5ldyBvY2N1cmVuY2VzLg0KPiArICovDQo+ICtzdGF0aWMgdm9pZCBfX2dldF9lbmdpbmVfdXNh
Z2VfcmVjb3JkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwNCj4gKwkJCQkgICAgICB1
MzIgKmxhc3RfaW4sIHUzMiAqaWQsIHUzMiAqdG90YWwpDQo+ICB7DQo+ICAJc3RydWN0IGd1Y19l
bmdpbmVfdXNhZ2VfcmVjb3JkICpyZWMgPSBpbnRlbF9ndWNfZW5naW5lX3VzYWdlKGVuZ2luZSk7
DQo+ICsJaW50IGkgPSAwOw0KPiArDQo+ICsJZG8gew0KPiArCQkqbGFzdF9pbiA9IFJFQURfT05D
RShyZWMtPmxhc3Rfc3dpdGNoX2luX3N0YW1wKTsNCj4gKwkJKmlkID0gUkVBRF9PTkNFKHJlYy0+
Y3VycmVudF9jb250ZXh0X2luZGV4KTsNCj4gKwkJKnRvdGFsID0gUkVBRF9PTkNFKHJlYy0+dG90
YWxfcnVudGltZSk7DQo+ICsNCj4gKwkJaWYgKFJFQURfT05DRShyZWMtPmxhc3Rfc3dpdGNoX2lu
X3N0YW1wKSA9PSAqbGFzdF9pbiAmJg0KPiArCQkgICAgUkVBRF9PTkNFKHJlYy0+Y3VycmVudF9j
b250ZXh0X2luZGV4KSA9PSAqaWQgJiYNCj4gKwkJICAgIFJFQURfT05DRShyZWMtPnRvdGFsX3J1
bnRpbWUpID09ICp0b3RhbCkNCj4gKwkJCWJyZWFrOw0KPiArCX0gd2hpbGUgKCsraSA8IDYpOw0K
PiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBndWNfdXBkYXRlX2VuZ2luZV9ndF9jbGtzKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4gK3sNCj4gIAlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2d1Y19zdGF0cyAqc3RhdHMgPSAmZW5naW5lLT5zdGF0cy5ndWM7DQo+ICAJc3RydWN0IGludGVs
X2d1YyAqZ3VjID0gJmVuZ2luZS0+Z3QtPnVjLmd1YzsNCj4gLQl1MzIgbGFzdF9zd2l0Y2ggPSBy
ZWMtPmxhc3Rfc3dpdGNoX2luX3N0YW1wOw0KPiAtCXUzMiBjdHhfaWQgPSByZWMtPmN1cnJlbnRf
Y29udGV4dF9pbmRleDsNCj4gLQl1MzIgdG90YWwgPSByZWMtPnRvdGFsX3J1bnRpbWU7DQo+ICsJ
dTMyIGxhc3Rfc3dpdGNoLCBjdHhfaWQsIHRvdGFsOw0KPiAgDQo+ICAJbG9ja2RlcF9hc3NlcnRf
aGVsZCgmZ3VjLT50aW1lc3RhbXAubG9jayk7DQo+ICANCj4gKwlfX2dldF9lbmdpbmVfdXNhZ2Vf
cmVjb3JkKGVuZ2luZSwgJmxhc3Rfc3dpdGNoLCAmY3R4X2lkLCAmdG90YWwpOw0KPiArDQo+ICAJ
c3RhdHMtPnJ1bm5pbmcgPSBjdHhfaWQgIT0gfjBVICYmIGxhc3Rfc3dpdGNoOw0KPiAgCWlmIChz
dGF0cy0+cnVubmluZykNCj4gIAkJX19leHRlbmRfbGFzdF9zd2l0Y2goZ3VjLCAmc3RhdHMtPnN0
YXJ0X2d0X2NsaywgbGFzdF9zd2l0Y2gpOw0KPiBAQCAtMTIzNyw2ICsxMjc4LDEwIEBAIHN0YXRp
YyBrdGltZV90IGd1Y19lbmdpbmVfYnVzeW5lc3Moc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLCBrdGltZV90ICpub3cpDQo+ICAJaWYgKCFpbl9yZXNldCAmJiBpbnRlbF9ndF9wbV9nZXRf
aWZfYXdha2UoZ3QpKSB7DQo+ICAJCXN0YXRzX3NhdmVkID0gKnN0YXRzOw0KPiAgCQlndF9zdGFt
cF9zYXZlZCA9IGd1Yy0+dGltZXN0YW1wLmd0X3N0YW1wOw0KPiArCQkvKg0KPiArCQkgKiBVcGRh
dGUgZ3RfY2xrcywgdGhlbiBndCB0aW1lc3RhbXAgdG8gc2ltcGxpZnkgdGhlICdndF9zdGFtcCAt
DQo+ICsJCSAqIHN0YXJ0X2d0X2NsaycgY2FsY3VsYXRpb24gYmVsb3cgZm9yIGFjdGl2ZSBlbmdp
bmVzLg0KPiArCQkgKi8NCj4gIAkJZ3VjX3VwZGF0ZV9lbmdpbmVfZ3RfY2xrcyhlbmdpbmUpOw0K
PiAgCQlndWNfdXBkYXRlX3BtX3RpbWVzdGFtcChndWMsIG5vdyk7DQo+ICAJCWludGVsX2d0X3Bt
X3B1dF9hc3luYyhndCk7DQo+IEBAIC0xMzY1LDEwICsxNDEwLDE1IEBAIHZvaWQgaW50ZWxfZ3Vj
X2J1c3luZXNzX3Bhcmsoc3RydWN0IGludGVsX2d0ICpndCkNCj4gIHZvaWQgaW50ZWxfZ3VjX2J1
c3luZXNzX3VucGFyayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRl
bF9ndWMgKmd1YyA9ICZndC0+dWMuZ3VjOw0KPiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+ICsJ
a3RpbWVfdCB1bnVzZWQ7DQo+ICANCj4gIAlpZiAoIWd1Y19zdWJtaXNzaW9uX2luaXRpYWxpemVk
KGd1YykpDQo+ICAJCXJldHVybjsNCj4gIA0KPiArCXNwaW5fbG9ja19pcnFzYXZlKCZndWMtPnRp
bWVzdGFtcC5sb2NrLCBmbGFncyk7DQo+ICsJZ3VjX3VwZGF0ZV9wbV90aW1lc3RhbXAoZ3VjLCAm
dW51c2VkKTsNCj4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZndWMtPnRpbWVzdGFtcC5sb2Nr
LCBmbGFncyk7DQo+ICAJbW9kX2RlbGF5ZWRfd29yayhzeXN0ZW1faGlnaHByaV93cSwgJmd1Yy0+
dGltZXN0YW1wLndvcmssDQo+ICAJCQkgZ3VjLT50aW1lc3RhbXAucGluZ19kZWxheSk7DQo+ICB9
DQoNCg==
