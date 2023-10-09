Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DF47BD5D0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 10:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9DA10E0E8;
	Mon,  9 Oct 2023 08:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A09A10E0E1
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 08:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696841548; x=1728377548;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DzOBl0stqBE7YwriGgv5+3pklVUPDz0k4/p/xtiCQ9Q=;
 b=fKgrmxAAkUVdDm5GBu6DE1CCo9aymWycg3qwjF95uaFeUixas8aJNduT
 mV3Bo5V13/jxynPLfmzabTYQ5nk/EwmtyUbEPpVi0CKZyP3iAbVTgUwOl
 KCNVhrzKgc4bYyUvWYcH4USddB6vxmD8isQy0r86sXVzt/+M5zu3g5iQt
 2xShJzn0OZL7mY4zqRZK2LZ+M5cOUZZ+51V28J3LuNmCAJQiPhq+yQDXO
 Jk7hFzFThPnOBGJmlHyfBAZi7ZX/31U1mmPjd/5nrc0S/eIm+d5yObAca
 jDMpg5jLUTieHmZ582q1DOqD1TCTKIjf1kmFdgzziautS/F+QTVoCyMAE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="382975489"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="382975489"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 01:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="756644722"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="756644722"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 01:52:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 01:52:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 01:52:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 01:52:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZusBsOzY9YSIfVauxkKjYo5xXS/bTvIMADnvGIiPT1B/sU3ozvDf+bO4k98xcoi0rtXO0ZgsixCsdwG8gmS+40kTsKdeCNOHkqOIdowD5C4woY5y3nMtLmjfHdTvtbO51Akm9pbVEvRA1ELZFp4bVVZYnPVki5bWEd5f+FcS2r8lAPY7Ses6JN1USBzEx6oj/AByDwmfYCcxdBCFDoBHFvSSr8jk3MzjuCrDy2vMs8oKihYg6i4QQOozKQRrolhw/+tSxCWs5y1ibcDnH4k21C8lQhk26cy7VovAYqe7RBHueGwJtbSEgOuB+TYFDDi8oGM4P0GDSh3UjWgJcPAZDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DzOBl0stqBE7YwriGgv5+3pklVUPDz0k4/p/xtiCQ9Q=;
 b=fx6fEyIRSYyxWrJ7jg3o8+zjNiAaoeJm0Vdh+p2fJ9Tsog3iA8GPyKTfsj+27O2WHB8jbgCXO+p3Qo0gND1V8htk4hpV5x1bP7GxmcaTThF4TeOW5o5rhKd2BRNzoQCmN+NRgi0vaTOiz/ukSc/AgzsP6I324ohmXINd2Ryx8D112INymZkNnblJNoMJ28iexLtw/lDpjm+y8FcLv0A2/2xbObQ5WJzrWvTvcACg3qZ+z7H4bZIdnTHZ6TAUFITZoeG+m6Ixhn7WRd3fuSO2wBnI/Gsh5Jtv/GS+jBnNhNCDOWlD+zuhamXvOUdLsmYm3/BAl53y4zLssIXxGA+iJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.43; Mon, 9 Oct
 2023 08:52:23 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf%6]) with mapi id 15.20.6838.039; Mon, 9 Oct 2023
 08:52:23 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
Thread-Index: AQHZ+EsCyL8kKScQTUW1pyoB3+rnkbA8rAmAgAR+eTA=
Date: Mon, 9 Oct 2023 08:52:23 +0000
Message-ID: <MW4PR11MB705469316D1A06F68B310ECAEFCEA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231006114210.535229-1-mika.kahola@intel.com>
 <0c7faa7bb04bedbd05255600c7897a86c7cc3103.camel@intel.com>
In-Reply-To: <0c7faa7bb04bedbd05255600c7897a86c7cc3103.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB6685:EE_
x-ms-office365-filtering-correlation-id: 8b586df9-9850-4513-90ee-08dbc8a50e44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7N83odVUjlrT1ILRj1t02dFVnDmdRX17V/JX2zPz6VGVVU2dBm2aPkaBDZXU6xYFQ465vlNhvIcWvo8r4rbfBl3PbHgWU2bQOe3EUCDuuAtsXeXWTorfTIoJGsyrDnTJareeJ/L+5k5uKki/BcZgy13pVtvW67wZ+kI94DELz4hTx39uBb9Da5fDX8tN16lwi3fz/EAFrN4M1dQxoNA4boG8RvXwIL4dfQM9i8yhbkq/Ou1nHpCcvpKImN7jtW3bbM6em0Cw9UWhgSttmTUseGJgIIefCLkDJTzh7f+r5veV7+jdDf0uxPenSAxYXQkMwYLObVgUFtRb0gtVB0egjX78nm/RiO551EadOQJ2cUaCC5H8UPIqH49j5BkOOtAe9qSI8P/qxCgWBWrU++HOb9fMsFvSklCZF7rLM5C2VU/D5SDdsMhGAMFjtFtKzTWXLoHpZYsWSqrYUfrCmfH6IDaoAIUWLMP+rYREQ3tA7erm2w/QIRoMBNWRs4WVR6bC28F4FBTmgJKnklc4XKsSwJfGOiIlO3b67aJvVSjby1tnm2cH3kP/7TOL5gQWhLNJHXqYBrBzzupJ9ZDcTVhevirJh0rX0DmEJ/pEqZrUJ2o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(396003)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(33656002)(55016003)(2906002)(9686003)(478600001)(41300700001)(52536014)(8936002)(5660300002)(8676002)(7696005)(71200400001)(53546011)(6506007)(83380400001)(66946007)(66556008)(66476007)(316002)(64756008)(76116006)(66446008)(110136005)(26005)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDl0NTRpVjlXV3I0R2srZG5lWlRhdjdSTVlGRjRDSyt0UFNpc3ZsUmgvSHpr?=
 =?utf-8?B?Wkp1RTRTQno4NnJXWTRuV2ZMOVNFb3RvVGdabWd6Q3FleVQvM0g1WGgvZkta?=
 =?utf-8?B?d2lOV0NUUTg3aFVHQ0phYnlCa2dJZ0VnU2owRWF2aFlEZjU1UnhpaEZvemtt?=
 =?utf-8?B?eUNDeUd1STJ3eHZLV3VnL0x6dDRpNjdVYmVUeDV6SHVDVmtBVHh1UnFzcjNL?=
 =?utf-8?B?M3BjSUxnaW9QcG1RaGNSZXBsY0FzNnNLWVBuREt5a2tLSUhuaEJaZDhUb2ln?=
 =?utf-8?B?di9DL2ZlWTdjbG5aZUFJYllSeUpOaTJ2RUlNODZ0M0dRbVpPbnVoMktwVm1N?=
 =?utf-8?B?SUxsRE1kTjdoZ1BxOFZEcWh0c2xkZnBiUE0vVUdSaEMvMWpKQ2l6L1ZCMThU?=
 =?utf-8?B?cUt2SXpPOVNvZE5yd2VsRlRJd0JtcmpIR0hwY0RUdmNORXNONGp3M2dTclg5?=
 =?utf-8?B?L2xMR3ZnbXRjb1FOSXc0OVlKWTFscUNMMUNFaGJyYzhuaXYzb2pDTVg0MG9p?=
 =?utf-8?B?S0RJZUJSWjBia0dta01lam5mQzZ2cThWSWpZQjNRYVcwRzE4dXRISkpQS0dk?=
 =?utf-8?B?RHlTQXN3TTBJTkRpWFhTV2pHUmFNNTJmNnIzcjlsN3lPTzZQOElLbkg4MWg5?=
 =?utf-8?B?UnVBS3hubysrTE5xVjVkdWlYWkg4YUNZd1BHSXE2QmJtTlovNUpmSGppSjBB?=
 =?utf-8?B?STBxY2FMWjkrVnA3N2NwT0pGZ0p2U0hNaXptUS9mTUthcnJsLzdQR0dYREpR?=
 =?utf-8?B?TXlwOGhkTFhFQTc4VTZGaC9scmhBTmdkRlJCdzVwMjlCbGZCT1VWMkZ5YmZ0?=
 =?utf-8?B?bG0xTmpxQVUrMjdubkIzRGdtdWpMeGx1RzJsazRnMFlpb2V4aitvaDFFREpY?=
 =?utf-8?B?SU4veVU2ZEhsS2NaV1REeUV1eFhyTE1VRXhoalJ2dVhINWZVcERjZU11RXJq?=
 =?utf-8?B?Y1A3VE1HVHM0Z3RQSVM2ajJPTFAzcnV3S3FCdExKdS9SOERodU1nQWFaMGpU?=
 =?utf-8?B?NjNPWHZqcUlkSjdhbmgvMW5Ia3M2UXNOSjBjdm1aK2tTaHhHZ2xKci8xQ05E?=
 =?utf-8?B?bHd6UnU4NzAxRHlUdW1yMzNhTHdYNHlvMXhVWkRDNzZ2M2FQL1NRYVFPWjZm?=
 =?utf-8?B?STNaMC9hYXpkMWJVN3k5dWdEM3dvZUs0SVMwL3EreE80amRFY014eVN4S0JH?=
 =?utf-8?B?QVpUSW1IRUhSdi90NzR1VHNOOVBhcDI4RFZKSlhsZEJoMDRqUTlqZWpHWmU4?=
 =?utf-8?B?U1JHYjVOcWZmcEFqdHEyT2V2d0JRVURJdnNISFdPUFlBRVplZWFHUXNNZVA2?=
 =?utf-8?B?OTRPNnFLQnBVVHM1bnJBK0JqZ3FOcWxmVmxxNU5wTHVkVC9saTNjeUdHbzRy?=
 =?utf-8?B?TTUyd09md29LKzFKcWxUTTFRTlFJazdVaXRDRm5aMGFUL3R6cWIxTVdyb1JO?=
 =?utf-8?B?T1VIdldiZkNWTzBIQTNqSnhSQ1ZuazBxbDh0eUJOdzJza3FITmgvdFRQWTk4?=
 =?utf-8?B?R1FNZWU1bGQ5SjFTbVJPYzNLZUVNL1NsVm9qUWx2NWg2MWROdU51MHlPblEw?=
 =?utf-8?B?UlozUDE5RkRnaXM4ZkRDa3NTS3VkaEUrZ3I5bjVCblNyTjhhOVV6VVlYOTVu?=
 =?utf-8?B?ZklSSTB5NjN1OW5NeXArc0QyZDdYcGtoR21uUTlSN3NUU3FsMlZhaHBMczUy?=
 =?utf-8?B?NUNNcW90Wjc2ZVJheUtveVluaDVWTnl4U3FrZDJYdE1nbU1GM09Zem9sN1pF?=
 =?utf-8?B?UEl3amdXeEFtTDJvWUp4TG9FSlhHbTlCMlVFd3c0WHR2Z0FYTXNFVjFjaXMy?=
 =?utf-8?B?L21IcTlsbTRXTEh4SlF1SUROUFZRQUFpS1ZTOEhXdmREMk5oMzcvZTZVSkI1?=
 =?utf-8?B?bGtQLzRodDc4a3RPL0ZoNGs0di9IVkw3MGllQUk2TVZCUzFwVnhCZmlLZE8x?=
 =?utf-8?B?RFdDem5qdkVJN1VhclRsQUI4ZWdNR2xGcWlBOHVJWGU0UGdOYklOSmhDMTNK?=
 =?utf-8?B?U095d2dsYmlUTDR4VCt4cjB3OUZ4RlowSFVJSzNEWUdiL3c2NmFxUDNDS0F6?=
 =?utf-8?B?MlYxOFJuREhHR0x2SlIvbk1DME1wczdmaFJ5VEd6bHpTNERHVUpoeDQ3OUE0?=
 =?utf-8?Q?BiKnD+Ev6CvvZUPhBvDjP57w5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b586df9-9850-4513-90ee-08dbc8a50e44
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 08:52:23.7355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yQ2e+QDAWqLowvXDsnG7t+0oG85ghFZRCSXatBj0tQw223nj5KcR9SukUFCAGV2yY2zAIGt/riNOFpwm/0iSeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDYsIDIwMjMg
MzoxMiBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9p
OTE1L2xubDogUmVtb3ZlIHdhdGNoZG9nIHRpbWVycyBmb3IgUFNSDQo+IA0KPiBPbiBGcmksIDIw
MjMtMTAtMDYgYXQgMTQ6NDIgKzAzMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+IEN1cnJlbnRs
eSB3ZSBhcmUgbm90IHVzaW5nIHdhdGNoZG9nIHRpbWVycyBmb3IgUFNSL1BTUjIuDQo+ID4gVGhl
IHBhdGNoIGRpc2FibGVzIHRoZXNlIHRpbWVycyBzbyB0aGV5IGFyZSBub3QgaW4gdXNlLg0KPiA+
DQo+ID4gQlNwZWM6IDY5ODk1DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDI0ICsrKysrKysrKysrKysrKysrLS0tLS0NCj4gPiAt
LQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+IGluZGV4IDg1MGIxMWYyMDI4NS4uMTNiNThkY2ViMmJmIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTY3MiwxMSArNjcyLDE1
IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IxKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICpp
bnRlbF9kcCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGVudW0g
dHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgdTMyIG1heF9zbGVlcF90aW1lID0gMHgxZjsNCj4gPiAtwqDCoMKg
wqDCoMKgwqB1MzIgdmFsID0gRURQX1BTUl9FTkFCTEU7DQo+ID4gK8KgwqDCoMKgwqDCoMKgdTMy
IHZhbCA9IDA7DQo+IA0KPiBUaGlzIGlzIG5vdCByZWxhdGVkIHRvIHRoZSBjb21taXQgbWVzc2Fn
ZS4gSS5lLiBQU1IxIGlzIGxlZnQgZGlzYWJsZWQgY29tcGxldGVseSBmb3IgRElTUExBWV9WRVIg
Pj0gMjAuDQogQWgsIG9rLiBKdXN0IHNwb3R0ZWQgdGhlc2UgZnJvbSB0aGUgc3BlYyB0aGF0IHRo
ZXNlIGFyZSBub3QgaW4gdXNlIGZvciBESVNQTEFZX1ZFUiA+PSAyMC4gQnV0IHNpbmNlIFBTUjEN
CmlzIGRpc2FibGVkIGNvbXBsZXRlbHksIEkgd2lsbCBkcm9wIHRoZXNlLg0KDQo+ID4NCj4gPiAt
wqDCoMKgwqDCoMKgwqB2YWwgfD0NCj4gPiBFRFBfUFNSX0lETEVfRlJBTUVTKHBzcl9jb21wdXRl
X2lkbGVfZnJhbWVzKGludGVsX2RwKSk7DQo+ID4NCj4gPiAtwqDCoMKgwqDCoMKgwqB2YWwgfD0g
RURQX1BTUl9NQVhfU0xFRVBfVElNRShtYXhfc2xlZXBfdGltZSk7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDIwKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHZhbCA9wqAgRURQX1BTUl9FTkFCTEU7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSX01BWF9TTEVFUF9USU1FKG1heF9zbGVl
cF90aW1lKTsNCj4gPiArwqDCoMKgwqDCoMKgwqB9DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDC
oHZhbCB8PQ0KPiA+IEVEUF9QU1JfSURMRV9GUkFNRVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMo
aW50ZWxfZHApKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYp
KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9IEVEUF9QU1JfTUlO
X0xJTktfRU5UUllfVElNRV84X0xJTkVTOw0KPiA+DQo+ID4gQEAgLTEzOTgsMTAgKzE0MDIsMTYg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0DQo+ID4gaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBydW50aW1lX3BtIGJlc2lkZXMg
cHJldmVudGluZ8KgIG90aGVyIGh3IHRyYWNraW5nIGlzc3VlcyBub3cNCj4gPiB3ZQ0KPiA+IMKg
wqDCoMKgwqDCoMKgwqAgKiBjYW4gcmVseSBvbiBmcm9udGJ1ZmZlciB0cmFja2luZy4NCj4gPiDC
oMKgwqDCoMKgwqDCoMKgICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgbWFzayA9IEVEUF9QU1JfREVC
VUdfTUFTS19NRU1VUCB8DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9QU1Jf
REVCVUdfTUFTS19IUEQgfA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNS
X0RFQlVHX01BU0tfTFBTUCB8DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9Q
U1JfREVCVUdfTUFTS19NQVhfU0xFRVA7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAyMCkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
bWFzayA9IEVEUF9QU1JfREVCVUdfTUFTS19NRU1VUCB8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNSX0RFQlVHX01BU0tfSFBEIHwNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9QU1JfREVCVUdf
TUFTS19MUFNQOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbWFzayA9IEVEUF9QU1JfREVCVUdfTUFTS19NRU1VUCB8DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNSX0RFQlVHX01B
U0tfSFBEIHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IEVEUF9QU1JfREVCVUdfTUFTS19MUFNQIHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9QU1JfREVCVUdfTUFTS19NQVhfU0xFRVA7DQo+IA0KPiBJ
IHdvdWxkIGNob29zZSB0aGlzOg0KPiANCj4gICAgICAgIG1hc2sgPSBFRFBfUFNSX0RFQlVHX01B
U0tfTUVNVVAgfA0KPiAgICAgICAgICAgICAgIEVEUF9QU1JfREVCVUdfTUFTS19IUEQgfA0KPiAg
ICAgICAgICAgICAgIEVEUF9QU1JfREVCVUdfTUFTS19MUFNQOw0KPiANCj4gICAgICAgIGlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkNCj4gICAgICAgICAgICAgICAgbWFzayB8PSBFRFBf
UFNSX0RFQlVHX01BU0tfTUFYX1NMRUVQOw0KUmlnaHQuIFRoaXMgbG9va3MgYSBiaXQgY2xlYW5l
ciBzb2x1dGlvbi4gSSB3aWxsIHVwZGF0ZQ0KDQpUaGFua3MgZm9yIHRoZSBjb21tZW50cyBhbmQg
cmV2aWV3IQ0KDQotTWlrYS0NCg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4g
DQo+ID4gKw0KPiA+DQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oCAqIE5vIHNlcGFyYXRlIHBpcGUgcmVnIHdyaXRlIG1hc2sgb24gaHN3L2Jkdywgc28gaGF2ZSB0
bw0KPiA+IHVubWFzayBhbGwNCg0K
