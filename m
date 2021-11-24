Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F110345CB0D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 18:30:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9EA26E902;
	Wed, 24 Nov 2021 17:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682F46E903
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 17:30:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="215356771"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="215356771"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 09:17:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="457107620"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 24 Nov 2021 09:17:08 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:17:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:17:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 09:17:07 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 09:16:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KO/pnauSqx63YWKwIMi7xEmdpQKxMhHIwrthLlJkQs3xR3B63MALhcq6e8XcF8EytCFg1VisKAMUtHl8HqtJtx7+otLuRbfnvidmwr1BeYQZoHbOb4JIJHq7LvM+h00WyXUv3tBpYVufYVDEt3UUjnIxB6vfpqO46x8072kZSSkwTB/copX5/g8g2e7sBhabbQdKR+Enz0UxvLw6VuQC1dWL7UXBnOuCqYNpgjIj4o7PzC+z9JM6qOfn4M5VDrhrnQyNhqQVmS0/LTAP7K7SDKGn/atS2j6Az93Q9QZICSJX8Tf5RgrAULdZ49pkxKreGeyTk91z8cLTB0ooCyfdqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9PQSUVcUx6nw6OvM2iBWMJYvgzsPg52q7yJDl78X2Gk=;
 b=kvlcmklzyv3tiaWjLjRHekE/rjYUwmuY9G9vgCJerYEDf3zSCOkLNkOdUypc3Tgfh45YkTRSCzjWg9uz3VYMXKLfxh8mjFNzw9Jd4ymr9c3dSclGgcrJyVjbpNTzB2eWWxkSMyJQ5QCaiNrgTux1NXNAHCF9iVN4kxLwcTU8X3ESKyE0H9RH4f6qGx15ZZ0pwIxTePaNIxPJ0thHEJScnERef8dfT8/hkeggfrOL2OCsP9P2iwUavwlSm2PI5BaOQlOLQJSGehlY/XtvV7MckAMWiG25vo5jfL+zwdlfhtOvz11DWwXGreONfuqqIn+EtneQO5FyPN6R5Y6woR8E5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PQSUVcUx6nw6OvM2iBWMJYvgzsPg52q7yJDl78X2Gk=;
 b=XlMcna4L5ktkRpkWsCO/rfrf0sIBcK+ors6gBXlf2yLrV9CuLdwZsnKyL+3FJ1v+gRYsmZizOuBKTkt/SCTV3BE/lk7IMmbS7pgg/ybGP5+eEwZEmtnVRSShAgodI7anaUGYjG3s4Wk9P3OO83NxnD82cBAVPFBfTSgjXrmS5B8=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4210.namprd11.prod.outlook.com (2603:10b6:a03:1bd::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Wed, 24 Nov
 2021 17:16:28 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 17:16:28 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>
Thread-Topic: [Intel-gfx] [RFC 3/7] drm/i915/guc: Populate XE_LP register
 lists for GuC error state capture.
Thread-Index: AQHX3/UdggHI3/Srp0eOLL6JqbubVqwRqeAAgAFElYA=
Date: Wed, 24 Nov 2021 17:16:28 +0000
Message-ID: <c5903f6c9c83b02701b23179921cb70bbf9b204e.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-4-alan.previn.teres.alexis@intel.com>
 <e3ef71c3-5801-32b2-3722-4c8661d43189@intel.com>
In-Reply-To: <e3ef71c3-5801-32b2-3722-4c8661d43189@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1e02ebc-847d-4044-bef4-08d9af6e2729
x-ms-traffictypediagnostic: BY5PR11MB4210:
x-microsoft-antispam-prvs: <BY5PR11MB42109D4D8FC58541958EE0CB8A619@BY5PR11MB4210.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q54U3MzZ9UvNARUzc3++ccI3esC2ScX10KLgOla99Haq9QI1iqdWyQRe46YXJCO33NbMOFAVJXeVT/AemFEaNr5FLETdlpYmUncEKdlP0Ajw5L2VsdJXalPPcA/4iuS5MR+S0zbS6DQnO1mpHI8xXIz+NTp0YelEC3BD9ilSZZKHAtbHi+oa7rg1Uj5qCTQZYAxN3NihN0nER/MhU9DyVflZu3UVl/L82cVrLbmJ7/OLahfrut5jPAI6ta+59au9dTXjATMPEKPEw4tSl3K7pQYToIL6kD6mOF+rJHjeZzdJwYWJpRgYFqfIHd4zhZMPOW4uhplP9fehDekzhXVfxHpIJI5iA83EfmL1IZKyM60jNEO2KCzbkcHiGRa2ac1TfMj/3TxfpcygiWlgWc5KpEq8GEbBR6sBMWL23GAqwxYB8zmOsgDUFFrQKcpEEJ5cf5qVrs2C0XVES3SdepBiBI6vTEApP7v9MUmh8TdC5kaHVoOu6vB7PlLGaYOXkgSI3ocW3OtvOpmW3jhnWszKx1CcbaIrMad/lTzg5fUvpr7pulosAalL7UuIclcyFsA7eQQNrxoRzaF7gX28OMtnZ6TvbS/3qry58b4zUNQeMT4kNp1GWN++kGr0j+MCBFmYGTQZakrI4TrEFIxW6iVugwA1vXh7faLfAH8Vptqhy7CjXy8ksmC14KKgBFdnN8Ksxnmer65tvw8NSPs+lFIBrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(86362001)(6512007)(76116006)(6636002)(2906002)(26005)(71200400001)(186003)(8676002)(36756003)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(8936002)(508600001)(38100700002)(82960400001)(122000001)(2616005)(5660300002)(6506007)(4001150100001)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0lDWEM3M0ViRWxCRXlmb0JmZ0d6NDBYYXd3Q2xZcEN5YjV3Q3RKSk92bmhG?=
 =?utf-8?B?NVVWZFdrOHoyUVJSdkkyR1IyWVFKVE5waUJORWlTS2dKTkJpcGI4LzJFZHUr?=
 =?utf-8?B?LzNuRlNobFFSc2Y1S3k4SHlaYVdGWTdmWjB2NTI3OUYvajJzdTQyKy9KWlRG?=
 =?utf-8?B?VnJsTGxhK2R1OERtNW13Z0J3QVY5RFdXQzB5L0tWZFdlTG1BZVdlUUhoVkpC?=
 =?utf-8?B?RUNNV0JqTDdEenRXTE5aOGhuMHJ4aXA4WDhGeXcwcW8yNjdyRzZVOFc3ZkFW?=
 =?utf-8?B?NFdzUUVueGNlODlGVUpnNWdhdHY3d3NBVWUyQU5lSHNvTXZyeFB5L1RDaTRG?=
 =?utf-8?B?cE5QVEZmOUFLOWtjYnVVdUEyZGx0YStKM2Z5ZGtNR3J4SWgydW8wTk5UV05k?=
 =?utf-8?B?MXRjRWRCMk1sYmV1SnJmVStyRmVLL1pKUUhwY2Fmdzk5SlpMTkh6UmIvaG9U?=
 =?utf-8?B?dTlmRFFsQUVacXJicnNKMVZqZ1hsMXFmWlIwTUVrS3RtcDRjcW5CSTk2MXU2?=
 =?utf-8?B?eW53dysrbGJXTWUwL1cyNjYzQnBYVkNJTmZ6RmNseTBKREx6SnNYSkRxRTRU?=
 =?utf-8?B?eWpzSTdjVEJ1V1ZKNWN5V0QwNmtQMXFKQi8wMW9pemwyc3gxSVN3YkdqTHll?=
 =?utf-8?B?cWgyT1Z2dFNjUWZCSWNOMXVlZ0s0QmJOMmpPdjRWNkgzOVg5NkdEQ2EvYnZv?=
 =?utf-8?B?WVN5V2tYMGFuU09ZcElxOXMyQTZHMHNNUnJQLzhOZW5EYzZFckhGVXJ0dDFo?=
 =?utf-8?B?OFFCMEFFWnVQeDJFSFIwSnovVHdHajFyaCtycXdpU2FDR3owam1rbDFJb1cy?=
 =?utf-8?B?TDVTQ1N0TlEvcUx6QzNOZFB2QzQ0MmVTMUw2TCsrcVFaNUJMWWtKRnp3V29w?=
 =?utf-8?B?d1BPZXNRSGplemoxendNUTcxdklrSmhOVGZhdENjYXVOUXp5c1V5czY2czZh?=
 =?utf-8?B?U0FYZkgrdlBuOFQ4am0rT3puK2lOcjJ3M2IvRmVjYzFCdFhRWkhncWZjQi9O?=
 =?utf-8?B?R2hwZ09DaUFaTXBJQmxtalV3T1ZmWWJDOFgxU3RhbTRTWTh5Q0xQRDA0ZkYx?=
 =?utf-8?B?a3BYb0w0T09hZENBaWd0ZytzbThMUFpJZE9mUXBKWGdyby9zUGt2WEtCR1Rq?=
 =?utf-8?B?MCt4VTFuR3AwbUdpRnZleU5hcm9BZnFURitTTnpncDMrakl1SmVQWUdxaEZ3?=
 =?utf-8?B?SUV0aHc1SnZLTzdUYlEwUWJRSzE2aWxvbHFaV0pxcGZKbU5XbFkvRmlyaGkz?=
 =?utf-8?B?czBtUHZ3ZTBIWWFQMUlEZGhVdnFaUUwwU2Mzckk0enZoZHFKS2MvcVRZWUFh?=
 =?utf-8?B?bzNHQWUyK2ZzRGwxc0hnQ1JwMExPQmk3STlIN2MwSU15WVNpNzFWbW0rZ2lV?=
 =?utf-8?B?T2tIam9WaVJFbTMvUlcrNVJicU9lZG9OMTNUa3Q4dDJVaUthNUgyQm5scG1J?=
 =?utf-8?B?S25jSEJjazZYcGpwaVRUSUhRK0I4VWJNc1V2NDdjV2VlUHpMMmc4RERHYUVW?=
 =?utf-8?B?alpiWUdMY3VXeUNER1lvcG5ZYlNrMXNHVVhuTy9nZ2V1eGpqVm8wdTVJMk10?=
 =?utf-8?B?NDJVNmdWRlh6eG5UOFVLZEhnYTB1aHYyVXlBTGRRK2pqb1NmTHJmdTNBdGZv?=
 =?utf-8?B?Q2hkOFpocTNvTHl1ZWVVZUNpUHhVbVkrZW0zODN3VnREQ1d6SzdnM09sMWVy?=
 =?utf-8?B?QzJlYzRMMW5sSlkwcURyK3dHRFFzdkx6dzdneHh2VjBZaW9DVTlUdWU5RzV1?=
 =?utf-8?B?SnhZZDNQWjdURXcwSWF5czc5QTliL2ZPbEY5ay9aNFcyMnMrV2ZmRkZ2R29Q?=
 =?utf-8?B?QkJKMlhrUi9XbWRTOHp2d1VtWXZCZ0RSa2huWmc4Y3dmOWZTQVoycUNwTUVG?=
 =?utf-8?B?UmdXZ2xBN2J5WWlmT3NkRFBRVHdHUGdQaHBtdEg4bksybkprUVQ3UWxJVys0?=
 =?utf-8?B?STFjS2pVbXBGb2NEbGJ0RytzOEY0QmZpKzhuV1JIZUV4MVRYdEdacEpSMjdi?=
 =?utf-8?B?TkloMXRpRGRIYWNzck1YaWxUZEVOc1VKNTdmRTRna2w4UnVRQTR0c2JmZmVL?=
 =?utf-8?B?QXZTOVduK3NPUjNtcnEwOGlaV2tzTER3ZDRFWlZmaFpHbkt6NDJ1c212Njla?=
 =?utf-8?B?dS92N0lVL0VQTGN2Z2x1U2o0UnVFMUhTeVN0a1AzRnVqcUhSMlZyaWFzKzZx?=
 =?utf-8?B?RHBQU28yQ3YyZmFXMnMwL2xIV0NwWjRpaHNjY3d4OHJnMS9JN3RWU0x2d1ll?=
 =?utf-8?B?WXFkWG1vaDBSaW9rNkhVNmhJZ2VoZjB6T3UxSmF2VzJkVWhFNzI3K2tsNzk1?=
 =?utf-8?B?endZUmRHVWtLSzZFb09oNHRkeUVyUlR6WTlPc0xhM1hWRW5SeDFEQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C4BA1694E94BEF449DC52C793BFA3D45@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1e02ebc-847d-4044-bef4-08d9af6e2729
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 17:16:28.6707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uKoBEh99pBIjikysBQrDrnzz/3G+PHjolyoqMSRuFXZj6BFpRhs8JIhVEc/dExO/w/5L5evLDPgokurLK9gGW6Wo3M/4ICaHpCeYG9aMwDmYa4qneJhNKchzFYw6jokp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4210
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 3/7] drm/i915/guc: Populate XE_LP register
 lists for GuC error state capture.
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

VGhhbmtzIE1pY2hhbCBmb3IgcmV2aWV3aW5nIHRoZSBjb2RlLiBJIHdpbGwgZ2V0IGFsbCBvZiB0
aGVzZSBmaXhlZC4NCg0KSSBzdGlsbCB3b3VsZCBsaWtlIGNvbnRpbnVlIHRvIGhhdmUgYSBmaXJz
dCBwYXRjaCB3aXRoIGEgc2tlbGV0b24gdGFibGUgb2YgcmVnaXN0ZXJzDQphcyB0aGUgcGF0Y2gg
dGhhdCBmb2N1c2VzIG9uIHRoZSBpbmZyYXN0cnVjdHVyZSBhbmQgYW5vdGhlciBwYXRjaCBqdXN0
IGZvciB0aGUgcmVnaXN0ZXJzLg0KDQpUaGF0IHNhZCwgdG8gYWxpZ24gd2l0aCB5b3VyIHJldmll
dyBjb21tZW50cywgaSBzaGFsbCBlbnN1cmUgdGhlIGZpcnN0IHBhdGNoIHN0YXJ0cw0Kd2l0aCBv
bmUgdmFsaWQgcmVnaXN0ZXIgdGhhdCBkb2VzbnQgZ2V0IHJlbW92ZWQgYW5kIGFsc28gbW92ZSB0
aGUgZXh0LWxpc3QNCmZ1bmN0aW9ucyBhbmQgbWFjcm9zIGludG8gdGhhdCBmaXJzdCBwYXRjaC4g
QnV0IGtlZXAgZnVsbCByZWdpc3RlciB0YWJsZSBwb3B1bGF0aW9uDQppbiB0aGUgMm5kIHBhdGNo
Li4NCg0KLi4uYWxhbg0KDQoNCg0KT24gVHVlLCAyMDIxLTExLTIzIGF0IDIyOjU1ICswMTAwLCBN
aWNoYWwgV2FqZGVjemtvIHdyb3RlOg0KPiAgDQo+ID4gIC8qKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKiogR2VuMTIgTFAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8N
Cj4gPiAgLyoqKioqKioqKioqKioqIEdMT0JBTCAqKioqKioqKioqKioqLw0KPiA+ICBzdHJ1Y3Qg
X19ndWNfbW1pb19yZWdfZGVzY3IgZ2VuMTJscF9nbG9iYWxfcmVnc1tdID0gew0KPiA+IC0Je1NX
Rl9JTEsoMCksICAgICAgICAgICAgICAgMCwgICAgICAwLCAiU1dGX0lMSzAifSwNCj4gDQo+IHdl
IHNob3VsZCBhdm9pZCBhZGRpbmcvcmVtb3ZpbmcgY29kZSBpbiBzYW1lIHNlcmllcw0KPiANCj4g
PiArc3RydWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyX2dyb3VwIHhlX2xwZF9saXN0c1tdID0gew0K
PiA+ICsJTUFLRV9HQ0FQX1JFR0xJU1RfREVTQ1IoZ2VuMTJscF9nbG9iYWxfcmVncywgSU5ERVhf
UEYsIFRZUEVfR0xPQkFMLCAwKSwNCj4gPiArCU1BS0VfR0NBUF9SRUdMSVNUX0RFU0NSKGdlbjEy
bHBfcmNfY2xhc3NfcmVncywgSU5ERVhfUEYsIFRZUEVfRU5HSU5FX0NMQVNTLCBHVUNfUkVOREVS
X0NMQVNTKSwNCj4gPiArCU1BS0VfR0NBUF9SRUdMSVNUX0RFU0NSKGdlbjEybHBfcmNfaW5zdF9y
ZWdzLCBJTkRFWF9QRiwgVFlQRV9FTkdJTkVfSU5TVEFOQ0UsIEdVQ19SRU5ERVJfQ0xBU1MpLA0K
PiA+ICsJTUFLRV9HQ0FQX1JFR0xJU1RfREVTQ1IoZ2VuMTJscF92ZF9jbGFzc19yZWdzLCBJTkRF
WF9QRiwgVFlQRV9FTkdJTkVfQ0xBU1MsIEdVQ19WSURFT19DTEFTUyksDQo+ID4gKwlNQUtFX0dD
QVBfUkVHTElTVF9ERVNDUihnZW4xMmxwX3ZkX2luc3RfcmVncywgSU5ERVhfUEYsIFRZUEVfRU5H
SU5FX0lOU1RBTkNFLCBHVUNfVklERU9fQ0xBU1MpLA0KPiA+ICsJTUFLRV9HQ0FQX1JFR0xJU1Rf
REVTQ1IoZ2VuMTJscF92ZWNfY2xhc3NfcmVncywgSU5ERVhfUEYsIFRZUEVfRU5HSU5FX0NMQVNT
LCBHVUNfVklERU9FTkhBTkNFX0NMQVNTKSwNCj4gPiArCU1BS0VfR0NBUF9SRUdMSVNUX0RFU0NS
KGdlbjEybHBfdmVjX2luc3RfcmVncywgSU5ERVhfUEYsIFRZUEVfRU5HSU5FX0lOU1RBTkNFLCBH
VUNfVklERU9FTkhBTkNFX0NMQVNTKSwNCj4gPiArCU1BS0VfR0NBUF9SRUdMSVNUX0RFU0NSKGdl
bjEybHBfYmx0X2NsYXNzX3JlZ3MsIElOREVYX1BGLCBUWVBFX0VOR0lORV9DTEFTUywgR1VDX0JM
SVRURVJfQ0xBU1MpLA0KPiA+ICsJTUFLRV9HQ0FQX1JFR0xJU1RfREVTQ1IoZ2VuMTJscF9ibHRf
aW5zdF9yZWdzLCBJTkRFWF9QRiwgVFlQRV9FTkdJTkVfSU5TVEFOQ0UsIEdVQ19CTElUVEVSX0NM
QVNTKSwNCj4gDQo+IGlmIHlvdSBrbmV3IHRoYXQgeW91IHdhbnQgdG8gdXNlIG1hY3Jvcywgd2h5
IG5vdCBzdGFydCB3aXRoIHRoZW0gaW4NCj4gcHJldmlvdXMgcGF0Y2ggPw0KPiANCj4gPiAgCXtO
VUxMLCAwLCAwLCAwLCAwfQ0KPiA+ICB9Ow0KPiA+ICANCj4gPiAtLyoqKioqKioqKioqKiBGSVhN
RTogUG9wdWxhdGUgdGFibGVzIGZvciBvdGhlciBkZXZpY2VzIGluIHN1YnNlcXVlbnQgcGF0Y2gg
KioqKioqKioqKioqLw0KPiA+ICsvKioqKioqKioqKioqKiBQb3B1bGF0ZSBhZGRpdGlvbmFsIHJl
Z2lzdGVycyAvIGRldmljZSB0YWJsZXMgKioqKioqKioqKioqKi8NCj4gPiArDQo+ID4gK3N0YXRp
YyBpbmxpbmUgc3RydWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyICoqDQo+ID4gK2d1Y19jYXB0dXJl
X2dldF9leHRfbGlzdF9wdHIoc3RydWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyX2dyb3VwICogbGlz
dHMsIHUzMiBvd25lciwgdTMyIHR5cGUsIHUzMiBjbGFzcykNCj4gPiArew0KPiA+ICsJd2hpbGUo
bGlzdHMtPmxpc3Qpew0KPiANCj4gcGxlYXNlIHJ1biBjaGVja3BhdGNoLnBsDQo+IA0KPiA+ICsN
Cj4gPiArCXNzZXUgPSAmZ3QtPmluZm8uc3NldTsNCj4gPiArCWZvcl9lYWNoX2luc3Rkb25lX3Ns
aWNlX3N1YnNsaWNlKGk5MTUsIHNzZXUsIHNsaWNlLCBzdWJzbGljZSkgew0KPiA+ICsJCW51bV90
b3RfcmVncyArPSAyOyAvKiB0d28gcmVnaXN0ZXJzIG9mIGludGVyZXN0IGZvciBub3cgKi8NCj4g
PiArCX0NCj4gPiArCWlmICghbnVtX3RvdF9yZWdzKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+
ID4gKwkqZXh0ID0ga3phbGxvYygyICogbnVtX3RvdF9yZWdzICogc2l6ZW9mKHN0cnVjdCBfX2d1
Y19tbWlvX3JlZ19kZXNjciksIEdGUF9LRVJORUwpOw0KPiANCj4ga2NhbGxvYyA/DQo+IA0KPiA+
ICANCj4gPiAgc3RhdGljIHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCAqDQo+ID4g
IGd1Y19jYXB0dXJlX2dldF9kZXZpY2VfcmVnbGlzdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpDQo+ID4gIHsNCj4gPiAgCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpIHx8IElT
X1JPQ0tFVExBS0UoZGV2X3ByaXYpIHx8DQo+ID4gIAkgICAgSVNfQUxERVJMQUtFX1MoZGV2X3By
aXYpIHx8IElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiA+IC0JCXJldHVybiBnZW4xMmxw
X2xpc3RzOw0KPiANCj4gcGF0Y2gyOiBnZW4xMmxwX2xpc3RzDQo+IHBhdGNoMzogeGVfbHBkX2xp
c3RzDQo+IA0KPiBwbGVhc2UgYmUgY29uc2lzdGVudCBhY3Jvc3Mgc2VyaWVzDQo+IA0KPiA+ICsJ
CS8qDQo+ID4gKwkJKiBGb3IgY2VydGFpbiBlbmdpbmUgY2xhc3NlcywgdGhlcmUgYXJlIHNsaWNl
IGFuZCBzdWJzbGljZQ0KPiA+ICsJCSogbGV2ZWwgcmVnaXN0ZXJzIHJlcXVpcmluZyBzdGVlcmlu
Zy4gV2UgYWxsb2NhdGUgYW5kIHBvcHVsYXRlDQo+ID4gKwkJKiB0aGVzZSBhdCBpbml0IHRpbWUg
YmFzZWQgb24gaHcgY29uZmlnIGFkZCBpdCBhcyBhbiBleHRlbnNpb24NCj4gPiArCQkqIGxpc3Qg
YXQgdGhlIGVuZCBvZiB0aGUgcHJlLXBvcHVsYXRlZCByZW5kZXIgbGlzdC4NCj4gPiArCQkqLw0K
PiA+ICsJCXhlbHBkX2FsbG9jX3N0ZWVyZWRfZXh0X2xpc3QoZGV2X3ByaXYsIHhlX2xwZF9saXN0
cyk7DQo+ID4gKwkJcmV0dXJuIHhlX2xwZF9saXN0czsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gIAly
ZXR1cm4gTlVMTDsNCj4gPiBAQCAtMjIxLDYgKzM0Niw3IEBAIGludCBpbnRlbF9ndWNfY2FwdHVy
ZV9saXN0X2luaXQoc3RydWN0IGludGVsX2d1YyAqZ3VjLCB1MzIgb3duZXIsIHUzMiB0eXBlLCB1
MzINCj4gPiAgDQo+ID4gIHZvaWQgaW50ZWxfZ3VjX2NhcHR1cmVfZGVzdHJveShzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpDQo+ID4gIHsNCj4gPiArCWd1Y19jYXB0dXJlX2NsZWFyX2V4dF9yZWdzKGd1
Yy0+Y2FwdHVyZS5yZWdsaXN0cyk7DQo+ID4gIH0NCj4gDQo+IG1heWJlIHdob2xlIGZ1bmN0aW9u
IHNoYWxsIGJlIGludHJvZHVjZWQgaW4gdGhpcyBwYXRjaCA/DQo+IA0KPiAtTWljaGFsDQo+IA0K
PiA+ICANCg==
