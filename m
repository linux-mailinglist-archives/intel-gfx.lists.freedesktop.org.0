Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66122715A2B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 11:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E155E10E374;
	Tue, 30 May 2023 09:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B2310E398
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 09:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685439022; x=1716975022;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GGEYjhtHCCfcgSQSbA+TIBtwcjg0jnwyzPFfA5vBzuI=;
 b=in8J51ado6Io4Z5+Wk0hy7n21pRAuoCvafRvhNVjm8GKtCMgx0EsS2XP
 vew2/JWABWYMfM2sZEBlpHuM2PnIr0UATU9iCb1htXaAI4yGtffrroxMD
 +mlK7Np7U2XleSvkdOBuvWlygxbP4hGFY/GgxWCEBzCiDLc8r/2f7bTEx
 cfsVyAXlyJh/SgBOszOE2q4IWBvVWiAqXdZ+qz2B4naVOfZscbfNwrC1i
 ej9Pzd8gfzgAsyCee5TN/2lahoisLNmUlGbg7yjuhEoha/yAdfcRiaoal
 LaSLm3HfEc2Q4AnObLkKBqqhQsqPYUjyZZpoVx/qSNAt4DwyHfC6lcQ6A g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="352365337"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="352365337"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 02:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="706359133"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="706359133"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 30 May 2023 02:30:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 02:30:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 02:30:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 02:30:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 02:30:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hHDy8HinmuKxOMOYeqO6zoTzM2saHpTVKBRqyXAs9/P4hAvVAhBTalMwCRydFZK5uJFd36QeEcKQ8mSZ3Yi9O6LWJikoM7lIBfwYu1zrlrzPv2BzXxyInzDSe2dYQfjE6M4ATUvNR8HU1RN5ryobwPmrJP51Dk/aGJxnxeRL7Wov8bBsvw67Gs8gCySvia2GoCWWxPkojkkJaLv3Z7RPB0jdMwmTRjj4ZXYNk6iKBeM0C+37IJfaQwlseNtDjLseN/Z3jo+9o0cc8XyB38Zl80EzqfHuazgJoQeNMArzvvZ3m5QOCdXo2YpgFp7omwBEKcJXlwGxn/n3i0S6Rt7HaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GGEYjhtHCCfcgSQSbA+TIBtwcjg0jnwyzPFfA5vBzuI=;
 b=DDNTG6jPZ1J6Lg9rxofMBA/74oDX+huRd7DD/EDaVnONdjED7zW91BwNBnZF4jjuLeKVdkkplG9Dpx6n+6Ykk26zFiFdtVXa8stJifXo6hnROT9kmbvfvXhpioz+iT/Odqs7esozhnnaBQ40PBiuYZ7HTc4+rNXKHYGAm9FYeAVvkwC1g9vEw3hsismYjQRyIIYNN8rFc6f0UtxgAVwzZMV/kv6Mze21ZnuaK8VLLlJKOEGsvHkHXt8bGG3ErK5RXTqlovny3DdleYBS1RozG2mBb33OMNS4FRaeQSKbIrTvNOqQdwlTAig4fsafqwxvBBwCB6hFqLAZ66vGeu5oUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 09:30:07 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:30:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case of
 MFD
Thread-Index: AQHZjlGAUkCkzuAsiU6gXdH1TrR34K9yh4iAgAAJ/pA=
Date: Tue, 30 May 2023 09:30:07 +0000
Message-ID: <MW4PR11MB705407904B6084AC3657A97CEF4B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230524150152.136371-1-mika.kahola@intel.com>
 <5fbdf7f3e973cafbe6ca1228612493fa06a5d464.camel@coelho.fi>
In-Reply-To: <5fbdf7f3e973cafbe6ca1228612493fa06a5d464.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW3PR11MB4539:EE_
x-ms-office365-filtering-correlation-id: fe247965-3d30-4d0a-0093-08db60f074f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tuhtUPvPYqmQdWRezqla1IB7pPuIju+Jk2VZu6AXSgIOB1gYYicVUHIvS87+Kv9Dw6xazJjC3Sagcf8RTFxDpbXo2qctB5Xm66/G/RZY6FynrgIDJDLP5kuAyVndbZJaBZGpmqw3i4wwBIbNsKZ6vPGoXFvECZQzVoEN3OvGq6RGVtbhgmrweuHgJsrCMHB/38QJsyaICmqkqIvl/gZ1x7Wlv2kFUEVOb0RuUbmSxuY8wTFHd9Ysagb1yAT75m5qg2QTR53jAEHX1wuLO9oYb0NMWt5AtNkLEIjHG13BpjnGCrMm3SHfzFQR+kSHEu5vSMsGZC6TWYMsOEVaUzQknEvTvnz15Q+KebXxeN/EQTokarpkc0HdXKz2atz+/DKRYUrKS85x54frtUM6IYtqHpFT7bKfY/8tDteYknihpOzEmVb46/jp1cKrFmxY/p3bgae0+W3mpf7oAyf8ZFRAao3WED4/2andhBTW4WKAxOPGQ7p+2jxS4NQYyFNAJJKB9lznMf+/pHFKkBysACZdS3qRPbnMOXIlNZRwfomdzRmXFMrAtva7nwkLFET76fJasaWk80ozdR1d5RXLLz4z8skTRLp2ji2xbF8TkqdkZc2tfWf90Y7AQKYNvfb20OL9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199021)(71200400001)(478600001)(110136005)(8936002)(8676002)(52536014)(5660300002)(38070700005)(2906002)(33656002)(86362001)(82960400001)(64756008)(122000001)(66556008)(66476007)(66946007)(66446008)(76116006)(316002)(55016003)(38100700002)(41300700001)(186003)(6506007)(53546011)(9686003)(26005)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXc5YnI1cDNIeloxRWNwN09vbFpMenpFK2psQ0gzL0VFc0wvRFJGQWhWdytX?=
 =?utf-8?B?bElkVGxSVDZRM2U1OWpJSjdFdUtUcm1kN0ZFdVRwUUwweWlhQzdHQnY3aEs5?=
 =?utf-8?B?aVpqOEFVcTFjK2Q5NXJXQklGYU54aVBraHdTMEl5cEFtQkVZQVh4OVhzeDRq?=
 =?utf-8?B?d2c0WUQzSHZmclZBdnJZdCt3RHBobGc0ODdvSVF6QmNES05CNjRHN245b2FR?=
 =?utf-8?B?TnNhTWVJVkF2a3dzQ1p4S1hDTHpURzFuTXlXS1Nma3FGSDBRbk9RVVpBQnpu?=
 =?utf-8?B?UHlKVUNtcXdDK0NrTkJxVXdqWjdxOEYwUFVWT2VnYVNjaGZnMzRpUWVhSWdL?=
 =?utf-8?B?SmFBR2NGeWh0M3hoL2tjLzhsSStkMmFFQUZLL012YzdZSjdsSktYMXRtcEZs?=
 =?utf-8?B?citRY2NWTjJoRUhwSGRVdlBlM3BqRGJQbC9rOEhQWHVkV285blBNOGcwaFE3?=
 =?utf-8?B?Z09WTTJRSEk2SUs3UXdGM1ZKWW8ya2xDaW56NjNtT2xzclNLUStFNXJZUzNy?=
 =?utf-8?B?L05ra2NEK1RwZnduL2NyUlpmcGRTcDI0YmllcFFmSXkwM01SL2N6c1dIM3Qx?=
 =?utf-8?B?V3UzNTdmajVxMUxhZjRGNTVqQ1Qva2tYUTU5ZTNBdHVWcmowUTY0STRWYzRt?=
 =?utf-8?B?NlhOMzM2RVo4MXpWbWFrb2t4R29WQ1ZUbkdEdERnMTNZeVp2ekRMN1N2d1Nj?=
 =?utf-8?B?MnRZSVZ5bmpUeTJxVE1nYi9iNWJvN2JPWE4wbTQ1TEVzcnE4M0pXSjhOc1Nn?=
 =?utf-8?B?OGN0YUt6MjI5K0tHUXlJRDVadDRUclludnllbndRYWljeGg4Ym0yYkd1ZjFE?=
 =?utf-8?B?VWM1bzdzaFh5alNEYmJJdFN1amtXcUNLbTBLWDZ5UEF0SDYxaXJoZ1I0N3RJ?=
 =?utf-8?B?cDNDZDkrd2VxcGloaHBZUml2Q2twT0RrUWROWVhhb0lxYlhWc2sreitLOWhz?=
 =?utf-8?B?U2ZkZGdhcUR1TmM1U0kxQk9LZ3JDa3RDR2lYamJsZTZyajAwUExPZ2c0bHA0?=
 =?utf-8?B?RVFLbkRkcFhYZW52RWZmTkZCSFNNbHBLb0dmQXdiUnhvVmtSTExpRmJUSjl2?=
 =?utf-8?B?ajZYRFBuV1BJY2pwQWo1OHpoYm1YZVlpbFh2VHpZdThsL20wcUIvazNrVHdF?=
 =?utf-8?B?TjdFeXN5cUZVVzJ0bS8xSFRGRldFak1salpVTUpTZHQ1K2VqOGFLRlpmRXdT?=
 =?utf-8?B?NTRYMi9wUG9WUE13dnYwUDVSbzU0NTNCL3EwYTcrcTVpVjhjeUJGTnM5Y2hw?=
 =?utf-8?B?WFRnMEJpTHcwMjZjSEdqTkhZWk9IOE03azBuQjVkSUtmVHBXaDZ3bXUwSHg5?=
 =?utf-8?B?djFHRkVWM1c4TnA0ejZmdjJRNkdrakZ6Q3JnWnVpUjc5dFJGREJad2dzZWcw?=
 =?utf-8?B?YThkcXhBUy9LRHV5Y2M4UXk2UHNtd2lOQjlqTjlkdmFUSDgzWFd3L25YdUQr?=
 =?utf-8?B?b0pCNi9oamEyaXd1TVh2aVVkMUVLZGNWK2p2RlU5cVd1WGxTN2JlOUo2Vnph?=
 =?utf-8?B?dzMvMkE1OGxoNGNScXBwcWF6UDRGaUtrbXBLVWxpeTQ5MHNLTGlFcisrdklR?=
 =?utf-8?B?SXhCQTZ0QXExbjRkdkVNbkc0VzU5QzVKamNEK2xNSVVyUEMrMTAxSVcreEVX?=
 =?utf-8?B?VlpkS0RPbjcwbUxVdWkwRWJxdWs1RlI1UElSWU9OSGEzOGRha1o0UFUvbjJW?=
 =?utf-8?B?TVVYNnFiUXFOc2Y4VlUzS1JwSFBpMldjanhBbE5VS05ETmdsNGc3d1RFNWE2?=
 =?utf-8?B?bmN3U2pNS3Z2bGgxeUtpMHdIY2NxdEtDVXNwVEtiUWZSNnc5a3oyaEVRUFAx?=
 =?utf-8?B?MDUyZUlFZkkxaTBPRDdnUkVWbGx5RUY0VDBpNTNTVURiT2t2ZXZRVGZ2c09R?=
 =?utf-8?B?bGd1VjZPNlBuNHNtOGFoU1Q5OWV5NERFNDlrdFFOUG14aW1iYmJLYTlmQU1k?=
 =?utf-8?B?cVVzWmV1a1hjR0t5dFJEWTAvRTBEbllVNVNnUkZXb1RTd1lJL1RlVVZYdGI5?=
 =?utf-8?B?WFFhWW9hVUI0NlpiSlJCdU0wUEdEdGdHSXd4R3VjZ3J3NWxjSlk4QUJPNTJP?=
 =?utf-8?B?Rm50QU1FZG5QbEtjUHlhRDFvdjZnR0ZtNXQ4U04zcWtpOTBKeFdTR1kvNlhY?=
 =?utf-8?Q?Z6c5if7yu0rHy331t3rQJ3ebj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe247965-3d30-4d0a-0093-08db60f074f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 09:30:07.3016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eJ1xFVDbdK+23UTMHfifjwrr5YRpa+4Z3sad+//3AOPbhKqkI+XRWhRj0nkjbTCc3jj9UkBMlmsF72Y7PQv9IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case
 of MFD
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMdWNhIENvZWxobyA8bHVjYUBj
b2VsaG8uZmk+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAzMCwgMjAyMyAxMTozOCBBTQ0KPiBUbzog
S2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1
L210bDogUmVzZXQgb25seSBvbmUgbGFuZSBpbiBjYXNlIG9mIE1GRA0KPiANCj4gTG9va3MgZ29v
ZCwgSSBvbmx5IGhhdmUgc29tZSBuaXRwaWNrcy4NCj4gDQo+IE9uIFdlZCwgMjAyMy0wNS0yNCBh
dCAxODowMSArMDMwMCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+ID4gSW4gY2FzZSB3aGVuIG9ubHkg
dHdvIG9yIGxlc3MgbGFuZXMgYXJlIG93bmVkIHN1Y2ggYXMgTUZEIChEUC1hbHQgd2l0aA0KPiA+
IHgyIGxhbmVzKSB3ZSBuZWVkIHRvIHJlc2V0IG9ubHkgb25lIGxhbmUgKGxhbmUwKS4gV2l0aCBv
bmx5IHgyIGxhbmVzDQo+ID4gd2UgZG9uJ3QgbmVlZCB0byBwb2xsIGZvciB0aGUgcGh5IGN1cnJl
bnQgc3RhdHVzIG9uIGJvdGggbGFuZXMgc2luY2UNCj4gPiBvbmx5IHRoZSBvd25lZCBsYW5lIHdp
bGwgcmVzcG9uZC4NCj4gDQo+IEl0IHdvdWxkIGJlIG5pY2UgdG8gZXhwbGFpbiB3aHkgaXQgaXMg
c28uDQo+IA0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N4MF9waHkuYyB8IDM5DQo+ID4gKysrKysrKysrKysrLS0tLS0tLS0NCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGlu
ZGV4IGVlNjkwMjExODg2MC4uYjhjODEyYzViMzNmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBAQCAtMjUyOCwxMyArMjUy
OCwyMyBAQCBzdGF0aWMgdTMyIGludGVsX2N4MF9nZXRfcGNsa19yZWZjbGtfYWNrKHU4IGxhbmVf
bWFzaykNCj4gPiAgCXJldHVybiB2YWw7DQo+ID4gIH0NCj4gPg0KPiA+IC0vKiBGSVhNRTogU29t
ZSBUeXBlLUMgY2FzZXMgbmVlZCBub3QgcmVzZXQgYm90aCB0aGUgbGFuZXMuIEhhbmRsZQ0KPiA+
IHRob3NlIGNhc2VzLiAqLyAtc3RhdGljIHZvaWQgaW50ZWxfY3gwX3BoeV9sYW5lX3Jlc2V0KHN0
cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LA0KPiA+ICtz
dGF0aWMgdm9pZCBpbnRlbF9jeDBfcGh5X2xhbmVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsDQo+ID4gKwkJCQkgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiA+ICAJCQkJICAgICBib29sIGxhbmVfcmV2ZXJzYWwpDQo+ID4gIHsNCj4gPiArCWVudW0gcG9y
dCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsNCj4gPiAgCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRf
dG9fcGh5KGk5MTUsIHBvcnQpOw0KPiA+ICsJdTggZmlhX21heCA9DQo+ID4gK2ludGVsX3RjX3Bv
cnRfZmlhX21heF9sYW5lX2NvdW50KGVuY190b19kaWdfcG9ydChlbmNvZGVyKSk7DQo+IA0KPiBM
b2dpY2FsbHksIHdlIGRvbid0IGNhcmUgYWJvdXQgImZpYV9tYXgiIGluIHRoaXMgZnVuY3Rpb24s
IHdlIG9ubHkgY2FyZSB3aGV0aGVyIG9uZSBvciB0d28gbGFuZXMgc2hvdWxkIGJlIGhhbmRsZWQu
ICBJbiBhbGwgcGxhY2VzDQo+IHdlIHVzZSBmaWFfbWF4LCB3ZSBvbmx5IGNoZWNrIGlmIGl0IGlz
ID4gMi4gIFNvIEkgdGhpbmsgaXQgd291bGQgYmUgY2xlYXJlciB0byBoYXZlIHRoZSA+IDIgaGVy
ZSBhbHJlYWR5IGFuZCBjYWxsIHRoZSB2YXJpYWJsZQ0KPiBzb21ldGhpbmcgZWxzZS4NCj4gDQo+
IEFkZGl0aW9uYWxseSwgIj4gMiIgbG9va3Mgc2xpZ2h0bHkgbWFnaWMgKHdpdGhvdXQga25vd2lu
ZyB0aGUgcmVhc29uLCBhcyBzdGF0ZWQgaW4gbXkgZmlyc3QgY29tbWVudCkuICBJcyB0aGVyZSBh
bnkgbW9yZSBzZWxmLQ0KPiBleHBsYW5hdG9yeSBzeW1ib2wgd2UgY291bGQgdXNlZD8NCkkgYWRt
aXQsIGl0J3Mgbm90IHRoYXQgY2xlYXIgd2hlbiB5b3UgbG9vayBhdCBpdCBmaXJzdCB0aW1lLiBJ
dCBvbmx5IG1lYW5zIHRoYXQgYWxsIGxhbmVzIGFyZSBpbiB1c2UgYW5kIHdlIHNob3VsZCBpbiB0
aGF0IGNhc2UgcmVzZXQgYWxsIGxhbmVzLiBNYXliZSBzd2l0Y2hpbmcgdG8gQm9vbGVhbiBpbnN0
ZWFkIHNvbWV0aGluZyBsaWtlIHRoaXMNCg0KYm9vbCBhbGxfbGFuZXMgPSBpbnRlbF90Y19wb3J0
X2ZpYV9tYXhfbGFuZV9jb3VudChlbmNfdG9fZGlnX3BvcnQoZW5jb2RlcikpID4gMjsNCg0KQW5k
IGRvIHRoZSByZXNldCByb3V0aW5lcyBiYXNlZCBvbiB0aGlzPyANCg0KPiANCj4gPiAgCXU4IGxh
bmVfbWFzayA9IGxhbmVfcmV2ZXJzYWwgPyBJTlRFTF9DWDBfTEFORTEgOg0KPiA+ICAJCQkJICBJ
TlRFTF9DWDBfTEFORTA7DQo+ID4gKwl1MzIgbGFuZV9waXBlX3Jlc2V0ID0gZmlhX21heCA+IDIg
Pw0KPiA+ICsJCQkgICAgICBYRUxQRFBfTEFORV9QSVBFX1JFU0VUKDApIHwNCj4gPiArCQkJICAg
ICAgWEVMUERQX0xBTkVfUElQRV9SRVNFVCgxKSA6DQo+ID4gKwkJCSAgICAgIFhFTFBEUF9MQU5F
X1BJUEVfUkVTRVQoMCk7DQo+ID4gKwl1MzIgbGFuZV9waHlfY3VycmVudF9zdGF0dXMgPSBmaWFf
bWF4ID4gMiA/DQo+ID4gKwkJCQkgICAgICBYRUxQRFBfTEFORV9QSFlfQ1VSUkVOVF9TVEFUVVMo
MCkgfA0KPiA+ICsJCQkJICAgICAgWEVMUERQX0xBTkVfUEhZX0NVUlJFTlRfU1RBVFVTKDEpIDoN
Cj4gPiArCQkJCSAgICAgIFhFTFBEUF9MQU5FX1BIWV9DVVJSRU5UX1NUQVRVUygwKTsNCj4gDQo+
IEl0IHdhcyBhbHJlYWR5IGxvZ2ljYWxseSBsaWtlIHRoaXMgaW4gdGhlIGNvZGUsIHNvIG5vdCBk
aXJlY3RseSByZWxhdGVkIHRvIHRoaXMgcGF0Y2gsIGJ1dCBpcyB0aGVyZSBhbnkgcmVhc29uIHdo
eSB3ZSBkb24ndCBuZWVkIHRvDQo+IGluY2x1ZGUgbW9yZSBsYW5lcyBpbiB0aGUgcmVzZXQ/IEkg
bWVhbiwgd2UncmUgb25seSBoYW5kbGluZyBsYW5lcyAwIGFuZCAxLiAgSWYgd2UgaGF2ZSA0IGxh
bmVzLCB0aGUgb3RoZXIgdHdvIG5ldmVyIG5lZWQgdG8gYmUNCj4gcmVzZXQ/DQpUaGVyZSBhcmUg
bGFuZXMgYW5kIHRoZW4gdGhlcmUgYXJlIGxhbmVzLiBGSUEgaGFzIDQgbWFpbiBsYW5lcyB3aXRo
IGFyZSBtdXhlZCBpbnRvIDIgZGF0YSBsYW5lcyBhbmQgaGVyZSB3ZSBvbmx5IHJlc2V0IHRoZXNl
IGRhdGEgbGFuZXMuIEl0J3MgY29uZnVzaW5nIGFzIHdlIGhhdmUgbGFuZXMgZGVmaW5lZCBmb3Ig
dHdvIGRpZmZlcmVudCBtZWFuaW5ncy4NCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IGFuZCBjb21t
ZW50cyENCg0KLU1pa2EtDQoNCj4gDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg==
