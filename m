Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F4960146F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 19:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C2010EDD3;
	Mon, 17 Oct 2022 17:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B41510EDC2
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 17:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666026784; x=1697562784;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=v8sBbS9wbYIYoO0ZKr5mfMLqf86/Aashvnhgc5mLODQ=;
 b=Uv2jRHVmpiv7i80JesrpnOKgI3xjD+M/KAsD0cp4erOYhfkBlz4vfqzo
 FFoeoY5YB8IWkjPyQ4YKDd5vDWW6im59EiOC0fl6Fv6taLAuZZt8paAn+
 227FWn/kN9hqj2STFP6rByJ+eezmoAW1MBHc8ceXuVQ4xQ0y7cwIWhE9w
 L2+w3UMK7QbPtP+MoLdyo/6orJC/hsyDK5gTndqPEhAfs2QfsR5utIoAl
 N22kKcj/bPd9vHHRLDFE7d7JDLlF+1w6ELav8Q1rsrp7FCA4wqGpptPmH
 ifR8/ibmsWlSgFmiUGoEywWL2D1nhEWWMh3JeXudsePazLDCD7Kjcjas2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="293229936"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="293229936"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 10:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="628376672"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="628376672"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 17 Oct 2022 10:13:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:13:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:13:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 10:13:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 10:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SipjHfDR52PFA7yl8sYnDHVr99oHKFeuTwlCDFXM/wwZHGdIDhpta+CdlZFF246BwvHTqPbO+PAOIdZrb4ac9TbVwFxRB3xm4HO3mZg/PX9Q3gx8O7+/m4IYYkCZaJ6TTdHYJaKCR8oXlqzqMYuFIAsXKUWEUxt4ZxUib9U2LLQ8AMExBU99vpOCgmAJstQ9lasObddt89fa6FGbzTZeJ2L90Uxr2t9lwELUrfFaqQtcj23yt08uFaIczHO43deHsMmAG+bt2+o29YF/z9NirRllt7MO3Taww65UG6zXvOJ/Z3Uc5Y53VHCbwmPBwmoM65SW9kSOzutU/3VOOuVeFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8sBbS9wbYIYoO0ZKr5mfMLqf86/Aashvnhgc5mLODQ=;
 b=lrBMTtGstUa/UasiJkv0S6FuwGSmUXjzgB6RJZI5BSzi9+dSIYzO1ErpLDMq/DOZ0xT80J0+xVv5jrb/Dux4eDo2tOXKxk4srOKJFMp8He3G0v4QGBDqY6KpVsQIRXXJcEHjeGcRX0QXcgUPzDah6fW+7u+Woe/Sp2Rj16DNgpLjZiNaAVM/9iez5viTRHZSI7Uo0BF3UUuJpu+FinI5sxwxOXid/IxIEw1yqcMU/IxDbpSuWZARGZ1eR5FIeIHgdZ/K2oh66etkTxQ73byVPbLg5h4/4No33em1NUHzUXWDxnk/cPWg7Bh3w6ZUzFxp+/3zFTpAJT/o0X5C0hMMjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Mon, 17 Oct
 2022 17:13:00 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 17:12:59 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/7] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
Thread-Index: AQHY2T1EZV3lfNrUlk6xBIwSlef3ka4M3f6AgAYHiAA=
Date: Mon, 17 Oct 2022 17:12:59 +0000
Message-ID: <3d6f70454898c00845284e7647bf37260af97032.camel@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-3-alan.previn.teres.alexis@intel.com>
 <4328db6a-eb8a-1b17-5879-4d018bfb5cf6@intel.com>
In-Reply-To: <4328db6a-eb8a-1b17-5879-4d018bfb5cf6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|MN0PR11MB6279:EE_
x-ms-office365-filtering-correlation-id: 240dccc0-7b38-42be-8eba-08dab062d7bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WRWb8dv92KO3F+JZ+GUJr2Clb3NDBSUeS3rbAhTMDQuhnhCfVqNIAOlfFehabrQk+Qx2a7LgcEPCaLIwND6FOwkryFg1nOrc9cbmLgifU/8I2ljCnPmJCJNmg5c6kpmRXUNJp2ytooqCfIGZxqz/Yg8Js07VtaCbZZHKOnbXg1C47NcZ1oSl1MktsDKU6wRr9LheqJWMHiKKTlPRAdvh4JumYVJ+9frAY+ax13+qlbkBBtVuyZmHw6/GgxNsacgCXs0O6BK39Exdi9+gFj91LpCLOzJ5RLQxGU8PGCrYuOjqqYWHLSkuGnQqnl7WtW0wSnet/Qp/5rdVOyCrXLw0vuN4KpyqUP0N3q6djZg1zrp7UGmzQT6x9RPWJ8XcVAIKp7TCxjqc7KoKxpUt0UJyM68cYlVEEc4y2AekUQ07DpuJObS4QPgHOd4+RL/XEjRQyzRqY8ivdJX7XHQ33J/6zlysDjnzM+fbCeioH5xlofQQ4Q04QC/3W3VJkb9Xu50wkOzjATJ3rrwGU93E7rdDtpcs/vAuau46RhRsJC8Op6sfV6ZrZlCflrQI6gcZz0e+pI7ldFThJuTmiyE6ZJxcw5SkOuMhgJu8Z2b+GCwrOlZFAFkwq4tlHFYn1gIeehj65RxUMa4NGny50BdzfTYSkcuwVy5XgSztPRL27g63kjUS+V2Tfzx730IBj0KUXmKJDpvuguOzbCIgNrN+/UjcCTDjpC5lEsnrDRVEejwzvtObxUdVF4Hm838ViTvRNlaKaM8rupYNwu6t6q5p37nk9w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199015)(66446008)(110136005)(478600001)(316002)(6486002)(8676002)(66946007)(71200400001)(76116006)(66556008)(64756008)(91956017)(66476007)(38100700002)(8936002)(53546011)(26005)(41300700001)(5660300002)(6506007)(186003)(4001150100001)(2906002)(2616005)(83380400001)(122000001)(36756003)(6512007)(38070700005)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWI1c3VHY0J6Y3M3RFJDM1lMUGp6cm4rdVIxMmtxYkxWa1RhZ3NQRHdzd0Vk?=
 =?utf-8?B?L3dsYTFrMjhEUnFrVTNTS2FrQ1UzUWo2dFRHZGhnb1VLMW5NRUxjSTFZUGJa?=
 =?utf-8?B?V1lYK1dXVU1oQlN2S3hnZ0VtNW5mQldUUTFDdmdTVk9SZEtlZERLNkw5ek1i?=
 =?utf-8?B?YWFjMVovSXdvNk4xQm44Y2h5L05jRmtXN0kxMVd1akEvSXkvd3IxaXk1L0U5?=
 =?utf-8?B?a2lzSDg3djZoQUpmaTJmNEFuTU1nakF4Sjl3aDRhZjhjcmpXSVpweVpwQ21R?=
 =?utf-8?B?QnNkR0xFKzlmZUhqRm1MY2hoNmsvWkVza0lFWVhBcVZRcWhVcldsVE5uQjFp?=
 =?utf-8?B?Wm5qcHZLMGNXNnVxVktCaktqVWliWk8yQnorVnExZFlYenc5eEk5dzdEZGtN?=
 =?utf-8?B?WXgyQ0JFOWI1S1lyRXBjcExTaGdVU0duN3pHRHJOQTV0UVV5WjlrcFd0MURD?=
 =?utf-8?B?Qm1RYUZ2K1A2WXBxMGpsT1FFR3pheGEvUWlmcjY2N2ROSllzUFMvemlUWU9p?=
 =?utf-8?B?bVVaWjVUejNTUkxISExwREgzSnFsZ0JEeVNVclpGUm1zUEJQNkNQL2Rua2o2?=
 =?utf-8?B?ZE5aZGJ5RVJ2NDRBck1vUFZSQUw3VXpzT0dJdm1HcTM3RWZCSVBCNWNkSnVO?=
 =?utf-8?B?U2R2NXdUSFZ6OE1rMllobUsyK0p0S1I5amU3anpmVmdHZlFRQWdoVER4b04v?=
 =?utf-8?B?bEMxNEl3YmVteDYxOVNMbGxBMm1TNDFXdGhQMlpBTXlRWk1vY200VGN5MGVK?=
 =?utf-8?B?Y3p1eFByQ1pobjF6QWpkSFVXajJsc05BUVBDYUNLb2NBSEpBODRKM0hXTkpw?=
 =?utf-8?B?OFR0TzJuVXJNaU5wdno2MWtZbXh2RDQ4QmNxSFFGd0g2WEU0N3I3K0QyYzdm?=
 =?utf-8?B?OTA3ZFVMcExIOW95VlJITDM4WFdJK2JqV3ZyZkNEeGJaYmgxT3ptR2poOU1O?=
 =?utf-8?B?QUF1WFBDeHFyWTIxVS9KVHozVWw4K0x2MGxTbFg1a0xweXd4dlFXSy9wWGEz?=
 =?utf-8?B?ZFIwa1c3eXNnUGhVS2t6ckZ1L2haNlZBMDc4R2RRSWxOOTN0c2RsYXN0N0lz?=
 =?utf-8?B?TG9VRStNU0RSd3NudGhXNXlBMDdUZUVQdU9KMjB0L3B1TUNPNW12N1JLaHEx?=
 =?utf-8?B?QU5jNmZ2ZjFXQ25NSTd0Y3hPZW9TYlRqand3WktySWRQb3ppejVsNjRtMSs1?=
 =?utf-8?B?Rm9mY3JhaS9ENVRUTWUwNUEwODVlOHoraXErYk93MGpVUXZSeFptV1Fka3pY?=
 =?utf-8?B?U1E3OHhKYlJrU1BCczBtYVhXbGNFM0RMUVE1TUtPRTFkQU5VMUdGVTROMFJB?=
 =?utf-8?B?RURUWjB5TXp2cjVRWmxzZ0dyMkdPSW5zZ1hnVVN1bGwydEg5bitHNkdFRlhD?=
 =?utf-8?B?Wk96MDFHYTZCYWY2ZFJ1Rk5CMHpiVURzNXR5VFZmL2RtMU40SW91MjFYUlhi?=
 =?utf-8?B?YUdwVC82SnptdTMybmNKRnpiREpNWkFsS0F4TU1peTlOdGxLNVRyc0QyR2ZX?=
 =?utf-8?B?UzJ5ZXFLd3lUb3RUTEh3SUl4c3VQTzNHM1VMSU43K25DbUt6WGZ2YVVEa2N0?=
 =?utf-8?B?bnJmZXBXaE9QZDJNSWp6Sm50ZGl3UnQzQkx2TUhoSWdjS2ZLWDRCVHhvNlFH?=
 =?utf-8?B?YUdQWnFYcXJsQnE3V3drOHVCNzV6MTBFUnQ0L21sNFVnVDR6N0NwOUdSWlpw?=
 =?utf-8?B?M2VXazhNdVNkT1VBR2Yyc0RTYlBELzl5ZkxnRUtYR3pSbHNCUXNhUjlkWU5L?=
 =?utf-8?B?WHlvcDNlVUVGdGZrZTBFMWVBNHlUL0l6MHRmTFZwV2UvT3FWdWFSdERRR0tK?=
 =?utf-8?B?K0VVWTkxUWFJcVBUam5LR0loR2d0WTlXc2R1ZXpPMGJRNUMvK3dLRlpUaW9H?=
 =?utf-8?B?aXBvM1NnNzNDbTYxUE8rWnp5KzlxYS9Lait6eHBGa21nMWJ3UjNJQXZ2V2VM?=
 =?utf-8?B?Ymg3UWJhVFpEUE94L1gwZnJSaCtmTGRwOVhrd1lZSENWOGVDcFlFSHhLR3pC?=
 =?utf-8?B?aXRReFkrODZjdENLeFF3SzR1aG1IK0d6ZmIrclQ3S1pWMFEyVzJqeUdMbFNK?=
 =?utf-8?B?T1ZtbUZ4VXBPaThaSHFDcE1mQWwxL0l0RVNmTFNSTHQrTmhia0tkVXFWMUVy?=
 =?utf-8?B?LzNNbVhJSFd2WmJYWGVsTGJ4bFQxWUllK2JZcDJtRi9rM1lqZDVyYW4vZUVE?=
 =?utf-8?Q?F+BefQQ8zlh6rz8BdXTcATA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C2BEED77A79524781AC34529EC259B2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 240dccc0-7b38-42be-8eba-08dab062d7bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 17:12:59.8776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 66I2yYht1RTl838U6GS0UlUbIWIPe79uU68NZOXgXnQ83IZe+H2n1cDsYXT2WFV6xocGZykA2wUATcT52mRYhvdtEUybRFrL1et5/NjCAB5FZTLibOFmNJXQ+HEk3ko5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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

DQpPbiBUaHUsIDIwMjItMTAtMTMgYXQgMTQ6MTAgLTA3MDAsIENlcmFvbG8gU3B1cmlvLCBEYW5p
ZWxlIHdyb3RlOg0KPiANCj4gT24gMTAvNS8yMDIyIDk6MzggUE0sIEFsYW4gUHJldmluIHdyb3Rl
Og0KPiA+IE1ha2UgaW50ZWxfcHhwX2lzX2VuYWJsZWQgaW1wbGljaXRseSBmaW5kIHRoZSBQWFAt
b3duaW5nLUdULg0KPiA+IFBYUCBmZWF0dXJlIHN1cHBvcnQgaXMgYSBkZXZpY2UtY29uZmlnIGZs
YWcuIEluIHByZXBhcmF0aW9uIGZvciBNVEwNCj4gPiBQWFAgY29udHJvbC1jb250ZXh0IHNoYWxs
IHJlc2lkZSBvbiBvZiB0aGUgdHdvIEdUJ3MuDQo+ID4gVGhhdCBzYWlkLCB1cGRhdGUgaW50ZWxf
cHhwX2lzX2VuYWJsZWQgdG8gdGFrZSBpbiBpOTE1IGFzIGl0cyBpbnB1dA0KPiA+IGFuZCBpbnRl
cm5hbGx5IGZpbmQgdGhlIHJpZ2h0IGd0IHRvIGNoZWNrIGlmIFBYUCBpcyBlbmFibGVkIHNvDQo+
ID4gaXRzIHRyYW5zcGFyZW50IHRvIGNhbGxlcnMgb2YgdGhpcyBmdW5jdGlvbnMuDQo+ID4gDQpB
bGFuOltzbmlwXQ0KDQo+ID4gICANCj4gPiArc3RydWN0IGludGVsX2d0ICppbnRlbF9weHBfZ2V0
X293bmluZ19ndChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gDQo+IFRoaXMgc2Vl
bXMgdG8gb25seSBiZSB1c2VkIGluc2lkZSB0aGlzIGZpbGUsIHNvIGl0IHNob3VsZCBiZSBzdGF0
aWMuDQo+IA0Kd2lsbCBmaXggdGhpcy4NCg0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0ID0gTlVMTDsNCj4gPiArCWludCBpID0gMDsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9ndChn
dCwgaTkxNSwgaSkgew0KPiA+ICsJCWlmIChndCAmJiBndC0+cHhwdGVlX2lmYWNlX293bmVyKQ0K
PiA+ICsJCQlyZXR1cm4gZ3Q7DQo+ID4gKwl9DQo+ID4gKwlyZXR1cm4gTlVMTDsNCj4gPiArfQ0K
PiA+ICsNCj4gPiAgIHN0cnVjdCBpbnRlbF9ndCAqcHhwX3RvX2d0KGNvbnN0IHN0cnVjdCBpbnRl
bF9weHAgKnB4cCkNCj4gPiAgIHsNCj4gPiAgIAlyZXR1cm4gY29udGFpbmVyX29mKHB4cCwgc3Ry
dWN0IGludGVsX2d0LCBweHApOw0KPiA+ICAgfQ0KPiA+ICAgDQo+ID4gLWJvb2wgaW50ZWxfcHhw
X2lzX2VuYWJsZWQoY29uc3Qgc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ICtzdGF0aWMgYm9v
bCBfcHhwX2lzX2VuYWJsZWQoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiANCj4gSSBiZWxpZXZl
IHRoaXMgaXMgZ29pbmcgdG8gYmUgbmVlZGVkIG91dHNpZGUgdGhpcyBmaWxlIChtb3JlIGNvbW1l
bnRzIA0KPiBiZWxvdywgSSdtIGdvaW5nIHRvIHJlZmVyIHRvIHRoaXMgYXMgdGhlIHBlci1ndCBj
aGVja2VyKS4NCj4gDQo+ID4gICB7DQo+ID4gICAJcmV0dXJuIHB4cC0+Y2U7DQo+ID4gICB9DQo+
ID4gDQo+ID4gDQpBbGFuOltzbmlwXQ0KDQo+ID4gICANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9jbWQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3B4cC9pbnRlbF9weHBfY21kLmMNCj4gPiBpbmRleCBmNDFlNDU3NjNkMGQuLjFkNDA5MTQ5YzBl
OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2Nt
ZC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9jbWQuYw0K
PiA+IEBAIC05OSw3ICs5OSw3IEBAIGludCBpbnRlbF9weHBfdGVybWluYXRlX3Nlc3Npb24oc3Ry
dWN0IGludGVsX3B4cCAqcHhwLCB1MzIgaWQpDQo+ID4gICAJdTMyICpjczsNCj4gPiAgIAlpbnQg
ZXJyID0gMDsNCj4gPiAgIA0KPiA+IC0JaWYgKCFpbnRlbF9weHBfaXNfZW5hYmxlZChweHApKQ0K
PiA+ICsJaWYgKCFpbnRlbF9weHBfaXNfZW5hYmxlZChweHBfdG9fZ3QocHhwKS0+aTkxNSkpDQo+
IA0KPiBUaGlzIGlzIGEgZ3Qtc3BlY2lmaWMgZnVuY3Rpb24sIHNvIGl0IHNob3VsZCB1c2UgdGhl
IHBlci1ndCBjaGVja2VyLg0KPiANClVuZGVyc3Rvb2QgLSBhcyBwZXIgb2ZmbGluZSBjb252ZXJz
YXRpb24sIGl0IGxvb2tzIGxpa2Ugd2UgbmVlZCBib3RoIGEgZ3QtdmVyc2lvbiBhbmQgYSBnbG9i
YWwtdmVyc2lvbiBvZg0KaW50ZWxfcHhwX2VuYWJsZWQgZGVwZW5kaW5nIG9uIHRoZSBjYWxsZXIg
KGFuZCB3aGV0aGVyIGl0cyBiZWluZyBkcml2ZW4gb3V0IG9mIGEgY2FsbHN0YWNrL3N1YnN5c3Rl
bSB0aGF0IGlzIGd0IHNwZWNpZmljDQpvciBub3QpLg0KDQo+ID4gICAJCXJldHVybiAwOw0KPiA+
ICAgDQo+ID4gICAJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsNCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9kZWJ1Z2ZzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2RlYnVnZnMuYw0KPiA+IGluZGV4IDdiMzdmMDYx
MDQ0ZC4uOTA3ZDNhYmE3YTljIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3B4cC9pbnRlbF9weHBfZGVidWdmcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
cHhwL2ludGVsX3B4cF9kZWJ1Z2ZzLmMNCj4gPiBAQCAtMTgsNyArMTgsNyBAQCBzdGF0aWMgaW50
IHB4cF9pbmZvX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ICAgew0K
PiA+ICAgCXN0cnVjdCBpbnRlbF9weHAgKnB4cCA9IG0tPnByaXZhdGU7DQo+ID4gICAJc3RydWN0
IGRybV9wcmludGVyIHAgPSBkcm1fc2VxX2ZpbGVfcHJpbnRlcihtKTsNCj4gPiAtCWJvb2wgZW5h
YmxlZCA9IGludGVsX3B4cF9pc19lbmFibGVkKHB4cCk7DQo+ID4gKwlib29sIGVuYWJsZWQgPSBp
bnRlbF9weHBfaXNfZW5hYmxlZChweHBfdG9fZ3QocHhwKS0+aTkxNSk7DQo+IA0KPiBUaGlzIGlz
IGEgZ3Qtc3BlY2lmaWMgZnVuY3Rpb24sIHNvIGl0IHNob3VsZCB1c2UgdGhlIHBlci1ndCBjaGVj
a2VyLg0KYWdyZWVkIChzYW1lIGFzIGFib3ZlKQ0KPiANCj4gPiAgIA0KPiA+ICAgCWlmICghZW5h
YmxlZCkgew0KPiA+ICAgCQlkcm1fcHJpbnRmKCZwLCAicHhwIGRpc2FibGVkXG4iKTsNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9pcnEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfaXJxLmMNCj4gPiBpbmRleCBjMjhiZTQz
MDcxOGEuLjZmNTE1YzE2M2QyZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9weHAvaW50ZWxfcHhwX2lycS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhw
L2ludGVsX3B4cF9pcnEuYw0KPiA+IEBAIC0yMiw3ICsyMiwxMCBAQCB2b2lkIGludGVsX3B4cF9p
cnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfcHhwICpweHAsIHUxNiBpaXIpDQo+ID4gICB7DQo+ID4g
ICAJc3RydWN0IGludGVsX2d0ICpndCA9IHB4cF90b19ndChweHApOw0KPiA+ICAgDQo+ID4gLQlp
ZiAoR0VNX1dBUk5fT04oIWludGVsX3B4cF9pc19lbmFibGVkKHB4cCkpKQ0KPiA+ICsJaWYgKCFn
dC0+cHhwdGVlX2lmYWNlX293bmVyKQ0KPiA+ICsJCXJldHVybjsNCj4gDQo+IERvIHlvdSBuZWVk
IHRoaXM/IHRoZSBpZiBiZWxvdyBzaG91bGQgaW5jbHVkZSB0aGlzIGNhc2UuDQo+IA0KWW91IGFy
ZSByaWdodCBidXQgbGV0IG1lIGdldCBiYWNrIHRvIHlvdSBjb3ogb2YgZnV0dXJlIE1UTCBzdXBw
b3J0IHByZXBhcmF0aW9uIHdoZXJlIHdlIG1pZ2h0IG5lZWQgYm90aCB0aGVzZSBjaGVja3MNCihi
dXQgcGVyaGFwcyB3ZSB3b250IHRvIGRlYmF0ZSB0aGlzIG9uY2Ugd2Ugcm9sbCBvdXQgdGhlIHR3
byB2ZXJzaW9ucyBvZiAnZW5hYmxlZCcgKCBpbnRlbF9weHBfZW5hYmxlZCB2cw0KaW50ZWxfcHhw
X2d0X2VuYWJsZWQiIHRoZW4gdGhlIGlycSBoYW5kbGVyIHdvdWxkIGJlIGNhbGxpbmcgT05MWSB0
aGUgbGF0dGVyIG5ld2VyIGZ1bmN0aW9uIHRoYXQgd291bGQgYmUgZW5vdWdoLiANCg0KPiA+ICsN
Cj4gPiArCWlmIChHRU1fV0FSTl9PTighaW50ZWxfcHhwX2lzX2VuYWJsZWQoZ3QtPmk5MTUpKSkN
Cj4gPiAgIAkJcmV0dXJuOw0KPiA+ICAgDQo+ID4gICAJbG9ja2RlcF9hc3NlcnRfaGVsZChndC0+
aXJxX2xvY2spOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50
ZWxfcHhwX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3BtLmMNCj4g
PiBpbmRleCA2YTdkNGUyZWUxMzguLjVmNzEzYWM1YzNjZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3BtLmMNCj4gPiBAQCAtMTEsNyArMTEsNyBAQA0KPiA+
ICAgDQo+ID4gICB2b2lkIGludGVsX3B4cF9zdXNwZW5kX3ByZXBhcmUoc3RydWN0IGludGVsX3B4
cCAqcHhwKQ0KPiA+ICAgew0KPiA+IC0JaWYgKCFpbnRlbF9weHBfaXNfZW5hYmxlZChweHApKQ0K
PiA+ICsJaWYgKCFpbnRlbF9weHBfaXNfZW5hYmxlZChweHBfdG9fZ3QocHhwKS0+aTkxNSkpDQo+
ID4gICAJCXJldHVybjsNCj4gPiAgIA0KPiANCj4gVGhpcyBpcyBjYWxsZWQgZnJvbSBhIGd0LXNw
ZWNpZmljIGZ1bmN0aW9uLCBzbyBpdCBzaG91bGQgdXNlIHRoZSBwZXItZ3QgDQo+IGNoZWNrZXIu
IFNhbWUgZm9yIGFsbCB0aGUgb3RoZXIgc3VzcGVuZC9yZXN1bWUgY2FsbHMuDQp5ZWFoIC0gdW5k
ZXN0b29kDQo+IA0KPiA+ICAgCXB4cC0+YXJiX2lzX3ZhbGlkID0gZmFsc2U7DQo+ID4gQEAgLTIz
LDcgKzIzLDcgQEAgdm9pZCBpbnRlbF9weHBfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfcHhwICpweHAp
DQo+ID4gICB7DQo+ID4gICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ID4gICANCj4gPiAt
CWlmICghaW50ZWxfcHhwX2lzX2VuYWJsZWQocHhwKSkNCj4gPiArCWlmICghaW50ZWxfcHhwX2lz
X2VuYWJsZWQocHhwX3RvX2d0KHB4cCktPmk5MTUpKQ0KPiA+ICAgCQlyZXR1cm47DQo+ID4gICAN
Cj4gPiAgIAl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJnB4cF90b19ndChweHApLT5pOTE1LT5ydW50
aW1lX3BtLCB3YWtlcmVmKSB7DQo+ID4gQEAgLTM0LDcgKzM0LDcgQEAgdm9pZCBpbnRlbF9weHBf
c3VzcGVuZChzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gICANCj4gPiAgIHZvaWQgaW50ZWxf
cHhwX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gICB7DQo+ID4gLQlpZiAoIWlu
dGVsX3B4cF9pc19lbmFibGVkKHB4cCkpDQo+ID4gKwlpZiAoIWludGVsX3B4cF9pc19lbmFibGVk
KHB4cF90b19ndChweHApLT5pOTE1KSkNCj4gPiAgIAkJcmV0dXJuOw0KPiA+ICAgDQo+ID4gICAJ
LyoNCj4gPiBAQCAtNTAsNyArNTAsNyBAQCB2b2lkIGludGVsX3B4cF9yZXN1bWUoc3RydWN0IGlu
dGVsX3B4cCAqcHhwKQ0KPiA+ICAgDQo+ID4gICB2b2lkIGludGVsX3B4cF9ydW50aW1lX3N1c3Bl
bmQoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ICAgew0KPiA+IC0JaWYgKCFpbnRlbF9weHBf
aXNfZW5hYmxlZChweHApKQ0KPiA+ICsJaWYgKCFpbnRlbF9weHBfaXNfZW5hYmxlZChweHBfdG9f
Z3QocHhwKS0+aTkxNSkpDQo+ID4gICAJCXJldHVybjsNCj4gPiAgIA0KPiA+ICAgCXB4cC0+YXJi
X2lzX3ZhbGlkID0gZmFsc2U7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3B4cC9pbnRlbF9weHBfdGVlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
X3RlZS5jDQo+ID4gaW5kZXggMDUyZmQyZjlhNTgzLi43OTJhNTZlZGZkZTcgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMNCj4gPiBAQCAtMTUyLDcg
KzE1Miw3IEBAIHN0YXRpYyBpbnQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kKHN0cnVjdCBk
ZXZpY2UgKmk5MTVfa2RldiwNCj4gPiAgIAkJcmV0dXJuIDA7DQo+ID4gICANCj4gPiAgIAkvKiB0
aGUgY29tcG9uZW50IGlzIHJlcXVpcmVkIHRvIGZ1bGx5IHN0YXJ0IHRoZSBQWFAgSFcgKi8NCj4g
PiAtCWlmIChpbnRlbF9weHBfaXNfZW5hYmxlZChweHApKQ0KPiA+ICsJaWYgKGludGVsX3B4cF9p
c19lbmFibGVkKGk5MTUpKQ0KPiA+ICAgCQlpbnRlbF9weHBfaW5pdF9odyhweHApOw0KPiANCj4g
VGhpcyBpcyBub3cgdXNpbmcgdGhlIFBYUCBmcm9tIHRoZSByb290IEdULiBJJ2Qgc3VnZ2VzdCB0
byB1cGRhdGUgDQo+IGk5MTVfZGV2X3RvX3B4cDoNCj4gDQo+IHN0YXRpYyBpbmxpbmUgc3RydWN0
IGludGVsX3B4cCAqaTkxNV9kZXZfdG9fcHhwKHN0cnVjdCBkZXZpY2UgKmk5MTVfa2RldikNCj4g
ew0KPiAgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGtk
ZXZfdG9faTkxNShpOTE1X2tkZXYpOw0KPiAgwqAgwqDCoMKgIMKgwqAgc3RydWN0IGludGVsX2d0
ICpndCA9IGludGVsX3B4cF9nZXRfb3duaW5nX2d0KGk5MTUpOw0KPiAgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gJmd0LT5weHA7DQo+IH0NCj4gDQo+IGFuZCB0aGVuIHVzZSB0aGUgcGVyLWd0IGNo
ZWNrZXIgZm9yIHB4cF9lbmFibGVkKCkgd2l0aCB0aGUgcHhwIHN0cnVjdHVyZS4NCj4gU2FtZSBi
ZWxvdyB3aXRoIHRoZSB1bmJpbmQuDQo+IA0KPiBEYW5pZWxlDQo+IA0KPiA+ICAgDQo+ID4gICAJ
aW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOw0KPiA+IEBA
IC0xNjcsNyArMTY3LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF91bmJp
bmQoc3RydWN0IGRldmljZSAqaTkxNV9rZGV2LA0KPiA+ICAgCXN0cnVjdCBpbnRlbF9weHAgKnB4
cCA9IGk5MTVfZGV2X3RvX3B4cChpOTE1X2tkZXYpOw0KPiA+ICAgCWludGVsX3dha2VyZWZfdCB3
YWtlcmVmOw0KPiA+ICAgDQo+ID4gLQlpZiAoaW50ZWxfcHhwX2lzX2VuYWJsZWQocHhwKSkNCj4g
PiArCWlmIChpbnRlbF9weHBfaXNfZW5hYmxlZChpOTE1KSkNCj4gPiAgIAkJd2l0aF9pbnRlbF9y
dW50aW1lX3BtX2lmX2luX3VzZSgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZikNCj4gPiAgIAkJ
CWludGVsX3B4cF9maW5pX2h3KHB4cCk7DQo+ID4gICANCj4gDQoNCg==
