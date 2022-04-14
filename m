Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D0500BE8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 13:13:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F9D10FF54;
	Thu, 14 Apr 2022 11:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA42310FF54
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 11:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649934826; x=1681470826;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=K94qyexCYjTUl8rqpK9KgEmyLx1djE9gWRaYOexYIJc=;
 b=KhGkswJiqVW51rfqCF36Kd1k4WvpdBQK1hfVoD2V8R53NuSm5fWGBxh6
 mBV9pirL1cayRZL2qigwwwwNadoHzgrl/xk+CHYJVcyLG9gcQegi1TBPf
 UPrJM4HUHAEmwaGoqp5wxLLNT+xP0cYZOBl7M2B44n1SzvTy7L7wv0ne2
 XGL9RL4d0Amk51Qa0KC/gOf3Bj/wKsOVFsOAWOJxB2FSeWRdVFYWrPdfX
 nePsbUR/u/VlH0yYdYjWmBqkJ7n0C6H41LZ7+4ydzcgRd0BfvQBKdU0jr
 JaDBXuLqNbkw+BIZKY4yLEYSkCWLGLszpP0aL4RCcptPyYaOKAG86LOUT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="262659328"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="262659328"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 04:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="661337906"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 14 Apr 2022 04:13:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 04:13:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 04:13:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 04:13:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFdjXqSMkLwPxnJfPHDwtCv0hOiSKUOQfntYc2OqqDO+BUGBABbesQC7e1wYMuMf5nMPRLutru5lLIGtbR+Y3SbwMqzzwEg6aK1AVUe1QXldeqr8RiQ6FRPlSCrvUZBQZfP0I8v2Vh401z46MWJSKfO1RTq1MpVcF3rxM+Y66HpZOIzfgXvQVCyTV/uj2uby9Ot4yN+g1jreEDOe5y//Fz+l/+mJPRk5hnRmp0q4tbdtavBPXl1iARYubdnzq2DxzAynl/efKhLYGzyKvErhVAqqqNJ1iCuQ8qJ0Dx6eBG4vhTncaP/ZRlQrLYlpa1bYLeAnZfQ3DKlyxGBALkZHbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K94qyexCYjTUl8rqpK9KgEmyLx1djE9gWRaYOexYIJc=;
 b=cDet5fU7mrg6vzj+gdwMkDftRwDk/tV0n3oug5fl5Fysqd2dXTY0Kr+WDu4NJmz+ZL7uOEPQwueKK6LlBvEJirM/XXcfcyOxL9F51iAj1ewHC4S0vYIcee7a17mdErvv5sLT5hEEqxMcXzN4Mr+oFxuGfSyHa8K980Zsp1yAGUEQA5C8iCErIX0IwkFyfWelubdLNRptrtUOHJSpP0FXFi1X+xf5lVDx3mJi3M15LuNUE5eEeqfhXr84PUAkobVZu5k0I5MbxjyTm+BDwJyqpYFL424u9ZFA6SeNEUeTS8X75/UpvpWeDcuhBVb5Y4ATRZ+ybRJzATt5d8iwBkyjBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 11:13:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%7]) with mapi id 15.20.5144.029; Thu, 14 Apr 2022
 11:13:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2 2/2] drm/i915/display/psr: Do not check for
 PSR2_MAN_TRK_CTL_ENABLE on alderlake-P
Thread-Index: AQHYT1V9WsIxcIaBXUCNkfshHeltcazvQrgA
Date: Thu, 14 Apr 2022 11:13:41 +0000
Message-ID: <c9a1694b0587f7682e674bcad639825d2c042629.camel@intel.com>
References: <20220413164351.48986-1-jose.souza@intel.com>
 <20220413164351.48986-2-jose.souza@intel.com>
In-Reply-To: <20220413164351.48986-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea35f963-13d8-422e-52a3-08da1e07d501
x-ms-traffictypediagnostic: SJ0PR11MB5085:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SJ0PR11MB5085750F233F01E9132FC73A8AEF9@SJ0PR11MB5085.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YRnNrQvviQJz+iSZqFIa1XnKvZwaWoYkvkQA8+yE7grSPZN4wphG3QAa2zA5rIrJmBSKwJWXmll8vZFUje3IwQuEsZny4OBu7YbrmwSuFj3tnq84mnFmdN9FU6zSAOjQWGq84BZOz8Eo3/44QcI2L4HWGWcVMTmDi3V/4N7Bl8NQRskSVvZPsau/HD6wDpV5WBndFQvwg7eSQomG2yxCExsiJoMvOvvU1HdLoS5yU7acM78+SFoR6zhHfo33OJdhq9wGRlkX9Zfx08htDTr8mTtXIF4k3pWckrNIi4aqdPL0oZTDp4T6aVieG32eAKQ9TGEeWImnII6q9APdm5M1p3yZzWMHZOoyFxsSXmr9TfnJQxjiuKK0qAt+vy0MOLjDWr/iC9nckRIPS/ozq3B0Q6ZM5OGr9TeY2zAG+4GJA5EPxr7GK+BvEyjWH4EOlFGteQ61PWkEdll138kdVaYw9zqIUK1U0Cfv+egvzyGI4p9tP4E/SigFM1jUpD33xwu/vrjHmd+bk+6kN1kPsONaX6Wc+75nXtd8AJfohFXtcXPhFocutVKG+svK+35OKdN0UH/61W12iadGsy6wSXrbPBu+8jJcFPsEut13p+IkggrGi0GtrK23+3U2ydOpDsRnNPrQKZDg4OtIB3vQCMEJ/3BoykDg3gMgETscnq/pAAZPkF9q+6QtmjV2REV7wEfZsu6rnd/fXr2/xFcg3v0gXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(8676002)(66556008)(64756008)(8936002)(91956017)(122000001)(86362001)(66476007)(5660300002)(6512007)(6506007)(38100700002)(71200400001)(508600001)(82960400001)(110136005)(6636002)(316002)(66946007)(66446008)(76116006)(83380400001)(66574015)(36756003)(2906002)(26005)(186003)(2616005)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXkrNFpTNys2ZEs3Q2RPWlVxTmFXc3ZORkltR2d2azZ3WWtCeVNVM3VBcHRk?=
 =?utf-8?B?eDYwdFhaQkwxRDdYZm1UUUZJazgxWG8vMStCbVA1U093N29jbEo4NDJpUFh1?=
 =?utf-8?B?Ymt5dko0ay9UcDdOKzB0NGduL2tkc3U1Z3h1MlVkbVV6N0hLYTNtdVVZSmdk?=
 =?utf-8?B?Qkhjam4yK3BHaTR6TVdZdHVaQU9KbEhPcmhlR1J6N3NldjRtQ1d6WlVCQVRt?=
 =?utf-8?B?cE1hV3BCS2dTMDF6OFptWnFEOTN2ZElWUWk5Sjk5RTZNQjNUQytuMTdPTXlX?=
 =?utf-8?B?OXBsMHFvUzhLZ2JpbDNVeFlCcmw3NlJlY0pmMHgzNU5CZ1o5Umc5c3BIV3Jx?=
 =?utf-8?B?UlhjUjBoaFJ0ZWJxWndNSTVKcmtFTUlJMlRNMzZpN0NHVWFRSmJNNUFXV1Jl?=
 =?utf-8?B?TmJGSHJqWXBYSW80WHJZMVQzc1FEc2dsR2pDblhEdXVZRnpOSm5VZDFCSVIy?=
 =?utf-8?B?YzRRQTQ3NXo0Q1R5c3NDbTFKdkNkU2pYV3JidGExT3FhNnFzeHNacVhFcTl5?=
 =?utf-8?B?MmVGQzA2aDJ4ZGRFSjNGRXBGN0g3eVp1UFIzbVhHUGlCYzFoamNNN1JLL2Y1?=
 =?utf-8?B?Q2hTMyt5WHh2TUZ5T3M5UGZNRnUrT0FZM3dLYUtBVmltS0NFUGhGS3pWa1Fk?=
 =?utf-8?B?UGFZbWxzM3BoTzVXZmxna2pjYXBhTnNhOVRDTGpCSVIzNGpVWS83bWplYTB4?=
 =?utf-8?B?RVBXNURrZzJZMjdxdUdUWnFQRDBjOHNsY2M0cXAzaktnRlg4Ymo3VUl4Umdr?=
 =?utf-8?B?WWRSdFQrMlJGaU15MWhoU29SMUFoVm5LZ2ZHU2NSRkNjci9henV4Qk1Kd1hy?=
 =?utf-8?B?QnBldnRxTlBHbk9QbnJNUTBGcVBxSnVhMElZdE4xd2Y5QXZ6SmYvb0dSUHA4?=
 =?utf-8?B?eW5HWmRmYTlkVE5hZHFUZG9QNC9TTkxWUjRTSW5NMEU4SU5YRUk3dzFIL1Vu?=
 =?utf-8?B?bzIxREkwRU1ua05wVldqL3NUWFNndXZuRkhLMDlnaXBTM09mWTdiclI2MUc0?=
 =?utf-8?B?MEd5ZjF2S3g5TGp3NGNoN2lLN1VzNFQ0ZU5sUzRtQ2VyRXdHMVk2bk1nTkw0?=
 =?utf-8?B?NjBlOENJM0x5anY3bkU3aGowcFhDNTUrMmFmMkhGTFFtcFdlV1N5eW9hV1o2?=
 =?utf-8?B?a2hQQWhrUXRZTExKOFZaaG9BUWNhazBvTG8wTGlicFJrVW9meVBIcmkvQWgw?=
 =?utf-8?B?RWZKcUo0ZGF3ajlOZnMwZG9vWXpubXViTTcvNHJiNkwyT1dJbWF5RS83U2hW?=
 =?utf-8?B?NEQ4RXZzQjF4Q2hoMEJZOGNyWkNPcmF4ZHMxb1NEcGFuNlpKblE5WjVMdjM2?=
 =?utf-8?B?VSs5UDhoZzhRV1VPUkRKZXNLcGlCOU1UZEs5MUZoZ3I3N2psc2tvQTVaSlNV?=
 =?utf-8?B?UmFUTWhVYk5yeGVXZWlqOWw4Z0dBRVZrUGZmcHdEZTZLSEkzWVZXNndLazVT?=
 =?utf-8?B?RnJVYkc1a1hZczRQY21RMjNWNmhIM2pjVHRPaVZ3OGJZYzg2MC9uMzhEWUZW?=
 =?utf-8?B?ZDVZVE8zZ2V2UVVVcmkvTkcyUlNqTzFjTG85YTJRUjFzSnJrK00zMStIVG9Q?=
 =?utf-8?B?cTF4QnJvLzUrY3grYTVDcmNSUkg1TFRsWFk3UWZBZWtKWkpCS205Z0xRMWVs?=
 =?utf-8?B?dzJ0NTMycmJHeHM0b0U1Q0VIcytWL2ZzMnQ1ZWZkb0lJNlcrSHkzZUd4cEF3?=
 =?utf-8?B?ZEd4bVQ5K0xUV29yM1lRMDFGSVNoK2p3aXBpV0Z3WHZLOHE5Y2FqbE9OZUpM?=
 =?utf-8?B?bHpUQ3QrUFRUTEJROUg4ZnRwNFlFdW9ad2h4NmtCQmJkMWtDOUxNRVJKMDlQ?=
 =?utf-8?B?ZzV3SWZsNW10aXBjQUppc08wQ0lidG82THlGWGwwVDU4bzNoMmZrNVdFRVF6?=
 =?utf-8?B?UmFDRjQ0cjV4QktvN0dpUk9LUGhGdUJtZTRjUVpob3lteE8wOXBxY2RiRjBa?=
 =?utf-8?B?bVE2VTNKd0FSWGNNSUdSYVBCajI3cnZteTVBa3RiVHh4TTJXMlowK0Rpc1FZ?=
 =?utf-8?B?VHRJMWljenBPQTAvT0NuMk9mQlpKazg4eDdKc1dObWI4bzJtMGhPQURId3po?=
 =?utf-8?B?MHZhNzg5K1NFOE5sMFhXMldrM1IrUzJsa3lIMXdMZVBCY3Zwc1BHQXdwUUx3?=
 =?utf-8?B?Y3Y3QnlNTXpYNGxaL1paVEU1ZUt3NjQ0UlJUWkhNaHp1WkRRWTBZbEg5VE5i?=
 =?utf-8?B?dVE3NlROY2l3ckV2YklXbjdMTVErZGpIeUtWdFl3S2RpdjhZeVdPdVJ0d0pn?=
 =?utf-8?B?b0pqVjREZmpPOXRMOU8xYWQwbHNPZUJ1c3gzWGd3VHZwSGVPMy9BQjJFZ1c1?=
 =?utf-8?B?QXBnTG5OZk1UL3ZhZHFRNTZ4bVJGOHBkbGhHS1dJSDIzcW5tY0c5dGROV28y?=
 =?utf-8?Q?5ekWQUA7fgTdFuczbMzbSGJGpsC8m1hLksfm7?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7434C41558E7264A84D9C8587F2EA724@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea35f963-13d8-422e-52a3-08da1e07d501
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 11:13:41.2803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F1v0OvFvtfdsEspd6qgeabhsFmpmihYjpNfWzx1rRy93YYs0AHxoCVcSMt8cBWRrECUNdqcunyCRIGIwqz7SDQ7oSWy6r1aRCs4mJxfH7vE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display/psr: Do not check
 for PSR2_MAN_TRK_CTL_ENABLE on alderlake-P
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

T24gV2VkLCAyMDIyLTA0LTEzIGF0IDA5OjQzIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBBbGRlcmxha2UtUCBkb24ndCBoYXZlIFBTUjJfTUFOX1RSS19DVExfRU5BQkxF
IGJpdCwgaW5zdGVhZCBpdCBoYXZlDQo+IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9QQVJUSUFM
X0ZSQU1FX1VQREFURSBpbiB0aGUgc2FtZSBiaXQgYnV0DQo+IHRoaXMNCj4gYml0IGlzIGNsZWFy
ZWFkIGFmdGVyIGVhY2ggdmJsYW5rIHNvIHdlIGNhbid0IGNvdW50IG9uIGhhdmluZyBpdA0KPiBz
ZXQgYWZ0ZXIgcGxhbmVzIGFyZSBwcm9ncmFtbWVkLg0KPiANCj4gQ2M6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBGaXhlczogNzMyNjJkYjY4YzI3ICgiZHJt
L2k5MTUvZGlzcGxheTogTWF0Y2ggUFNSMiBzZWxlY3RpdmUgZmV0Y2gNCj4gc2VxdWVuY2VzIHdp
dGggc3BlY2lmaWNhdGlvbiIpDQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMSArKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4ZWM3YzE2MTI4NGJlLi44NGFlZWU2
M2EzZTgwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gQEAgLTU2NSwxNiArNTY1LDE5IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0
cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ICAJCXZhbCB8PSBFRFBfUFNSMl9TVV9TRFBf
U0NBTkxJTkU7DQo+ICANCj4gIAlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFi
bGVkKSB7DQo+IC0JCXUzMiB0bXA7DQo+IC0NCj4gIAkJLyogV2FfMTQwODMzMDg0NyAqLw0KPiAg
CQlpZiAoSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+
ICAJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIENISUNLRU5fUEFSMV8xLA0KPiAgCQkJCSAgICAg
RElTX1JBTV9CWVBBU1NfUFNSMl9NQU5fVFJBQ0ssDQo+ICAJCQkJICAgICBESVNfUkFNX0JZUEFT
U19QU1IyX01BTl9UUkFDSyk7DQo+ICANCj4gLQkJdG1wID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwNCj4gUFNSMl9NQU5fVFJLX0NUTChpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpKTsNCj4gLQkJ
ZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICEodG1wICYNCj4gUFNSMl9NQU5fVFJLX0NUTF9F
TkFCTEUpKTsNCj4gKwkJaWYgKCFJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gKwkJCXUz
MiB0bXA7DQo+ICsNCj4gKwkJCXRtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+ICsJCQkJ
CSAgICBQU1IyX01BTl9UUktfQ1RMKGludGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpKTsNCj4g
KwkJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhKHRtcCAmDQo+IFBTUjJfTUFOX1RSS19D
VExfRU5BQkxFKSk7DQo+ICsJCX0NCg0KSSB0aGluayBwcm9wZXIgZml4IGZvciB0aGlzIHdhcm5p
bmcgaXMgdG8gY2hhbmdlDQpQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSB0byBtYW5fdHJrX2N0bF9w
YXJ0aWFsX2ZyYW1lX2JpdF9nZXQoKT8gVGhlbiB3ZQ0Kc3RpbGwgbmVlZCB0byBmaWd1cmUgb3V0
IGhvdyB0byBmaXggdGhlIG9yaWdpbmFsIGlzc3VlIGhhdmluZyB0aGlzDQp3YXJuaW5nIHRyaWdn
ZXJlZC4NCg0KDQo+ICAJfSBlbHNlIGlmIChIQVNfUFNSMl9TRUxfRkVUQ0goZGV2X3ByaXYpKSB7
DQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LA0KPiAgCQkJICAgICAgIFBTUjJfTUFOX1RS
S19DVEwoaW50ZWxfZHAtDQo+ID5wc3IudHJhbnNjb2RlciksIDApOw0KDQpCUiwNCg0KSm91bmkg
SMO2Z2FuZGVyDQo=
