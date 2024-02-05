Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A508492FF
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 05:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56D111235A;
	Mon,  5 Feb 2024 04:43:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LHeG+Egy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0202711235A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 04:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707108223; x=1738644223;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5R5nNHDLbuSnhDpflwrS/Vt0oc5gffJ9C6RYC9hT6qs=;
 b=LHeG+EgyNUBwjG5oWpgEpnJ3B/frQxpyHGMew/zXEbS8YMWISxKSHp0y
 4SO3NSR5qG9sOEXwMIVZeTTVwu2jTWHDFjWbyNcbZ23jUbg1pU1Ix7La8
 two2qjSaa27k71zlTTB32NqrLJtgN0DB8R4yZZ8pOg1WyesgbkOweUz7q
 TVNDfkFoEbxvVKHhHA9p0qz27ZGO3madRtuz4cI4FfxG3vg7zFeVPlilP
 oIHlCB+pB6AvSMinJQDIy3Dodr0Y9yEC1UsAQPvYwScy+pPYXl6sLGYX9
 mxG54NGgloIplPkJeh5BDvxVll5oBW0zGEP+bNSfQNj8I+wKI2WsXAKJS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="17977054"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="17977054"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 20:43:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="943466"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2024 20:43:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 20:43:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 4 Feb 2024 20:43:41 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 4 Feb 2024 20:43:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGKjSXT1O5N7dJKiLM8db02Nz2X3dfHRRt6IcFIvqEIjsTiwYN2DTOacV0xrToOG6P71qVs14CBMGyUztIaXlCOVRY+8AG7oBZ+w4fR5H8PM1Xv2j1Dz/FxmtT0Bku156UzknqKWSxsMMMKCEsFaSJusEfu3zmsywScotH+Sl+Hh5iHe/5H39dvVjq95Q/eCj/cJd2gZ/fsWIXGiYzOVtgjEfYBmyH83rb0ENqo6ARNIHLylPa9OtBF4ls3Wh7eNpEsm2VtFEwBGd4tcN0Opn4onxVTORcrP8S0twkYOZPblmykZgsJpdQVB+dhjmORnuk2wdblE00YUMtW7tQP9pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5R5nNHDLbuSnhDpflwrS/Vt0oc5gffJ9C6RYC9hT6qs=;
 b=SnRhDx0XGKHmA3YPIEpPclZYGrIp+oKjExtAvEqlkcL6dz0pqP2/w99SFlU+oQfuuuOCH3+lFzbmTz6U7mZNnRMNtyCIOf9bz9NC8T3xckWhjpeP/QorgqGuAZIXMb90kcUeeUaWRBZHqbC4l88LhEZUJg+lwMHmWlRAiAUzHsnD3aVHJHPHa/IIRnXLodhh1lr4l7ywqhh6KF/s6qkLAJABWdwyYKS0yedd3No5oNgFrzoCb65PkL5+1/BP+AK8MHGLvuoZwa6xOV42lc8mM0rT94OKSLlOcAEgMnh0dwEnxGcF3J7bvSo8vxelbHMWc18Z9RjZ+9sZerHhKg/JLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by LV3PR11MB8741.namprd11.prod.outlook.com (2603:10b6:408:21d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 04:43:39 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 04:43:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 19/21] drm/i915/psr: Update PSR module parameter
 descriptions
Thread-Topic: [PATCH v3 19/21] drm/i915/psr: Update PSR module parameter
 descriptions
Thread-Index: AQHaSr/g+EDY8sCxC0yQdrf1WxDutLD7RgGg
Date: Mon, 5 Feb 2024 04:43:39 +0000
Message-ID: <PH7PR11MB59817424A663BFE56322E1ADF9472@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-20-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-20-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|LV3PR11MB8741:EE_
x-ms-office365-filtering-correlation-id: c1297cff-0959-4a87-717d-08dc260505a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1nHloJn6aVedakKPMADTdeuQTL5GMfggiEQ46HwbRyvGRQAy2Q1uTA4JJzb8CB9vhWfn8z0H2DmndVrlhvTJ9B640GZ1MLtEhJ3tTFyYyzm9Di9M5HOqFnasESw/thMLchO51o8LNER5P8g/+mOkuA9s4I40a3LnzItRB0ZzpT2bh2Ga8NOGl4urd1P5gm+oPZwZ2X1OfZK+aVPlNfdylJwl2/rnDvoRVRiza7qYNaV+84EMWhUFFRkGcgovZ6+MTimCRC2PZpKQzUDNWHpuc3jGUyPRtueuvj6hhBT8QdPDyzLOZPpqBob1kowSX90eC3XZZmv68z9HTsvYKp8ZukjlrWsLb5RQyEEKj3McoopFtKFrEzN0a5oPOqHCtRHchoq98Lh8OyDv4x8qQ4V3yKwYgk6tMW/Qg2Je0CFBJ+yhzrHkbkEf29aqwfglSkFb/KPY23K7es8aLPcyeGBJL/+h19/w79uq5Bs0wqo3rN8UiF618SIS+F6D2Beh5WcOfIqy9pf1oq3I2J7EUI5z3R9e2u+WWa/3wsPsip8bypjHrRHkx1oLBJECCmaQQc2SrhIZjefxuFswegxHIi18yM2Ika62thHxDuWLQAuPhZTtJfHsWhRNVZ1JaQG3oTc5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(396003)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(82960400001)(122000001)(55016003)(2906002)(52536014)(83380400001)(86362001)(66574015)(6506007)(71200400001)(33656002)(53546011)(478600001)(9686003)(7696005)(66946007)(66556008)(76116006)(66446008)(66476007)(110136005)(64756008)(316002)(38070700009)(41300700001)(8676002)(8936002)(5660300002)(15650500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTBBM1VsblUzSnpKTEJkWmR4QUpBL0xVZzROYzhxaTZsR09ER0dyOGpKV3FU?=
 =?utf-8?B?aExnWVRUWjBqWnBPYzBybnYva1VOZTFtUTNaQ1g3WStlZ08rZ3JhWVA5ejNP?=
 =?utf-8?B?WTJyYXVYTXRFK1Z3K3V6Wjl4d0ZSL1pXdkZPK0NJa0h2clEzTVlVMENISXVZ?=
 =?utf-8?B?SnQ2WUVTS21ubEdPbUxJcTVRajRGYVA0RWN5TW1pUW1DMC9tNjRuQzdMcXRr?=
 =?utf-8?B?UkVHaE1ZN1IvSTJDQjRiU2lGS1pqcEtzeTFnTVFBQU9yZU1xdjR5ZVpPaFV5?=
 =?utf-8?B?ZUFEV2lGbzBTbE1pTzZJcE16VUNVemdTUlJRcEZHVC93Vi9hT2xmTHgyNnM5?=
 =?utf-8?B?MTFzTkhhK2hLWjNwM0VIWXBST1I4VFNROVpVclNFVUo2TFFERmxRc21la2hh?=
 =?utf-8?B?YjUvNDNwVnJpNnM1V2JkZzFQcWNLcWJMT1FON0gvOCsxTjg2Q0RxcUgrbVg0?=
 =?utf-8?B?QzRGanl0UFlad2xqdHc4ZGRQMGNvUXBua25samtxK3RPTUJIK01ucUJ1ajRC?=
 =?utf-8?B?b1pHeE9sc1BFYlJZQnp4UWd0M1habVorUHpRcVg2UkxZK0QrVlYraEIwUlFn?=
 =?utf-8?B?NTlrTGtVUmp0QWQ0TzJSMTNJYkFVbVhHaDZNRU42b2MvVHFxRkViTmVVTFYy?=
 =?utf-8?B?ZStjQnVyc1VWbFpieG5KSk92Tk5oRTBSMm1nTHhjYTdjTSs3b01NcC81U0Z0?=
 =?utf-8?B?VU5kNXJ5NDlIM3AwcFJGVnpqUE9mbWpVc3czRVRHY0YvWVpwVEU1Z2ZwTm4r?=
 =?utf-8?B?V05vUVF6MlBpMSs4NGlrcW0vRVRmWWdYcUFOSTJlY0xPdzI5eTV3LzduT2lJ?=
 =?utf-8?B?b2Y4dzVGYzBvbGRlcHNyUUl2OHFKc0JhNklSYUVVOThnaldvWHQ5WG0zM2Q2?=
 =?utf-8?B?WXZiNUpKSTVTaXNOdWpzMG9YS1A5ZGFvUkVRS21GQk1XdUNVdk5COWRIMXRK?=
 =?utf-8?B?eG1uNVBvN0tMN3lWeVNCVy9sTzJGUzF0dlhXQmhYLzVSTndXak5KblZnYWh2?=
 =?utf-8?B?d3B3a0hqU1R3TllsandzZ1lEUnU4L3cxTzR0QzBld0RIUmFHV25RUWtWQ01X?=
 =?utf-8?B?amZOYk1TeXNua3duZEEydFFVVTA2cnlqQXVFbm16UmI4bFRzclNsTlBaVGN3?=
 =?utf-8?B?d1c3aTMyV3VsNUV4aUl5WTBBakROa3JoWEJPTkpZY2c2NlJidU1pVTEzTWVz?=
 =?utf-8?B?SzRZcURXWUpqbVlsYTcvTG5hdC94aC95YUNaWEQxS1Z6eXRrWXllRWpaZ2J0?=
 =?utf-8?B?N0g4SVA1Zk5CNzRncUZMeFcxK281cWdLNTRXdUxUcHFSbVlGOU94UnFOa1or?=
 =?utf-8?B?SUxnYmxIOGNwLzROd0NqQnZOV0k4Z1JwQ243MFY5cUNkN1ZGMkJHUVJQM3Nl?=
 =?utf-8?B?dU94c0Y2UXpDU3dKMTI4aG5sUE9BNFVlTEp0Y2JETzkvRmtoR3czK295d0xt?=
 =?utf-8?B?MDFDbWdOUENhZ09KSXNFY2lJRDE5Q2FzNk9BT2RFbGs1TnFxckZrQ3UwYUJm?=
 =?utf-8?B?WHozdmcwd2NJWEVDTmp4TEdMNUdseUp5T3JrVmZYKy9JdGpxT25sazcvN2Y0?=
 =?utf-8?B?U1JTM1lhaDFaUnhPVnJ5NFNYS3VpbElCOUxVSkJCdW53cGoxdUNTUmVqRjJN?=
 =?utf-8?B?VWo3MFhJYnZDeDRHZlRqSUlGMkliaFNtK2JkQTc0Yk9PclJSVU1KYjJFNjFN?=
 =?utf-8?B?RHpML2JHUVZ5amNCTG9OdFl3VVVqRnVVK1dqbmtsQU9XMm8wNStLendPQmJm?=
 =?utf-8?B?RXV2QUg0VTRvTm4walV1UTRvb0VzNXdvWVVVOUgxR0kwTFo0N3R1QXBLMGRh?=
 =?utf-8?B?K0x5RVJDeWprc3pESHducnBaR0lnSmZ4cUF4emF1dEoxYVBKYnNjNHNUWm5m?=
 =?utf-8?B?Z2lMcGFpZVkwMFladk0xSVd2Nkp3c1hsSHg0V2w5L3g3NG9PYnJzNklucTE5?=
 =?utf-8?B?Ri92Mk9nTlhTUWwwTCtiSTJEd2gxaEEycjFFWFJGcGpzZ1c5WVl0aE1JTm1n?=
 =?utf-8?B?emJLNjJzQ0puUnVwc1YvVmxJNUU2VC9lRHo4ZzhSc0VCWitxSGc2bTl6MHg2?=
 =?utf-8?B?RmZMSy9oQzVRQkJBMzYxWk1jOU56M2JOUmV0NFRBcndYUHRmZjBWUkJ3VUk4?=
 =?utf-8?B?MTJGRGtodTYvaWxPVUYrVGtlUUlFdFQ5ZGdPektjZCttNmNQdUZOUUZyWC9N?=
 =?utf-8?Q?D8QiG1IAxZHS969nILshqNAx9h5i4Sv2Nuy27iQeerJQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1297cff-0959-4a87-717d-08dc260505a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 04:43:39.0669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vdeeFUDNFCWXjZ1lz8eYlc0Gy0ip83nVakUpyfSuYw+KkS3PgMdRdN7g7A5WM0M5c+aq1Q3uXn2QkkMarWAayw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8741
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDE5
LzIxXSBkcm0vaTkxNS9wc3I6IFVwZGF0ZSBQU1IgbW9kdWxlIHBhcmFtZXRlcg0KPiBkZXNjcmlw
dGlvbnMNCj4gDQo+IFdlIGFyZSByZS11c2luZyBQU1IgbW9kdWxlIHBhcmFtZXRlcnMgZm9yIHBh
bmVsIHJlcGxheS4gVXBkYXRlIG1vZHVsZQ0KPiBwYXJhbWV0ZXIgZGVzY3JpcHRpb25zIHdpdGgg
cGFuZWwgcmVwbGF5IGluZm9ybWF0aW9uOg0KPiANCj4gZW5hYmxlX3BzcjoNCj4gDQo+IC0xIChk
ZWZhdWx0KSA9PSBmb2xsb3cgd2hhdCBpcyBpbiBWQlQNCj4gMCA9PSBkaXNhYmxlIFBTUi9QUg0K
PiAxID09IEFsbG93IFBTUjEgYW5kIFBSIGZ1bGwgZnJhbWUgdXBkYXRlDQo+IDIgPT0gYWxsb3cg
UFNSMS9QU1IyIGFuZCBQUiBTZWxlY3RpdmUgVXBkYXRlDQo+IA0KPiBlbmFibGVfcHNyMl9zZWxf
ZmV0Y2gNCj4gDQo+IDAgPT0gZGlzYWJsZSBzZWxlY3RpdmUgZmV0Y2ggZm9yIFBTUiBhbmQgUFIN
Cj4gMSAoZGVmYXVsdCkgPT0gYWxsb3cgc2VsZWN0aXZlIGZldGNoIGZvciBQU1IgUFINCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3BhcmFtcy5jIHwgNSArKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gaW5kZXggMTFlMDNjZmI3NzRk
Li4xYzVlMjBlYzdmMWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gQEAgLTEwMiw3ICsxMDIsOCBAQCBpbnRl
bF9kaXNwbGF5X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfZmJjLCBpbnQsDQo+IDA0MDAsDQo+
IA0KPiAgaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3BzciwgaW50LCAw
NDAwLA0KPiAgCSJFbmFibGUgUFNSICINCj4gLQkiKDA9ZGlzYWJsZWQsIDE9ZW5hYmxlIHVwIHRv
IFBTUjEsIDI9ZW5hYmxlIHVwIHRvIFBTUjIpICINCj4gKwkiKDA9ZGlzYWJsZWQsIDE9ZW5hYmxl
IHVwIHRvIFBTUjEgYW5kIFBhbmVsIFJlcGxheSBmdWxsIGZyYW1lDQo+IHVwZGF0ZSwgIg0KPiAr
CSIyPWVuYWJsZSB1cCB0byBQU1IyIGFuZCBQYW5lbCBSZXBsYXkgU2VsZWN0aXZlIFVwZGF0ZSkg
Ig0KPiAgCSJEZWZhdWx0OiAtMSAodXNlIHBlci1jaGlwIGRlZmF1bHQpIik7DQo+IA0KPiAgaW50
ZWxfZGlzcGxheV9wYXJhbV9uYW1lZChwc3Jfc2FmZXN0X3BhcmFtcywgYm9vbCwgMDQwMCwgQEAg
LTExMiw3DQo+ICsxMTMsNyBAQCBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkKHBzcl9zYWZlc3Rf
cGFyYW1zLCBib29sLCAwNDAwLA0KPiAgCSJEZWZhdWx0OiAwIik7DQo+IA0KPiAgaW50ZWxfZGlz
cGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3BzcjJfc2VsX2ZldGNoLCBib29sLCAwNDAw
LA0KPiAtCSJFbmFibGUgUFNSMiBzZWxlY3RpdmUgZmV0Y2ggIg0KPiArCSJFbmFibGUgUFNSMiBh
bmQgUGFuZWwgUmVwbGF5IHNlbGVjdGl2ZSBmZXRjaCAiDQo+ICAJIigwPWRpc2FibGVkLCAxPWVu
YWJsZWQpICINCj4gIAkiRGVmYXVsdDogMSIpOw0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
