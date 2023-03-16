Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8506BC983
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 09:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C0B10EC80;
	Thu, 16 Mar 2023 08:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD92010EC81
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 08:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678956195; x=1710492195;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Bv42kY2nB4hl0HZ5mclIB+gAqOgE1eU/biC2anupDa4=;
 b=GtlJFx+byAtJq10FODKBZZAEFjaC5N8Dq1ATrCSOYhBNycieW0jGIPuu
 +8aBT9t4AnWa7T5Qgcd2s/NYDjYq9fnjmMhdkiAsmRrIj2/FhnXDKIvwD
 7VH4toioIRvXpV4UTCHju97QUaLnf7C5dR3YmCplzrcuYUNBdi8/JatFf
 XTYHVw52Qel9Izo/f3zv4Ta5MQXU2uC81cuGMZOFXgtbQKc6DmKsmTRmy
 7qEXFtEd/BM95aL3NaoofaJitoGqSLGzNitRUr5aUXonahMUhHv8QPB+R
 ScZen4ZNC4jaMybSIALhvXDByhRyjIKBDvcSIAy6Frlim6Sj1R1DZsDjY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="424201100"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="424201100"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 01:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="1009140349"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="1009140349"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 16 Mar 2023 01:43:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 01:43:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 01:43:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 01:43:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 01:43:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MztH9AgUlMmJVVhQJ/R2P8XcmDKZUVaETxHRnmxW+KPgubdD/dBFrwvWTkAV+I8pddCfGgH7lCvwlbUoCTKeirR9zVQqlHNujVePZ5Pm7P2VWCasaFR9QKzjSRPDkLfbjGIZHHxxV1DkZi7he5b4DJrEMJ2eAsTMb0RJomM7QFL74vN1gr2SVQ2Rzm8Ab3Xz41VJOG6iQSPj0lt3Luzqsb/1FmtBJcXGYmDWpZ99OE0kC9egUj8AlzWuVCH8lT6vfK5obAKpGwIv2hTJS+tyIGYwyrBxfO1iqoHlSEn/90p886yalNg1lCIJHdZPhyH+mqLe5wN7F8WkQ6sHBz/IHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bv42kY2nB4hl0HZ5mclIB+gAqOgE1eU/biC2anupDa4=;
 b=ZZyxBndlPqlX8sOltSmbJm2qv2FfEqm7o8foDTMsEbaPHMdMm5YS4vqL7fBFjJiuNeVfFWTd2ACsHl774i+ZFpfiJcMEu2QnBG/j/PAzOOWk0VJJkA4gXfg4iMl5Hry8xlypNbK7glTv6EmJcmJl36vJ5NzVv4uv4gipnEl313e9wRm2mriI6p5R5Ufz++ivhQKgA7nOwpiU7t4kxKrVbbM/psmLt9qwUV6Y63BL4ruPEqikXPNGU7uvF9JfzLecz46qAIHj2F6J3NGBGIk8STZ3Ca8fflYB4uswQ0nYcfywYH7R5kFX4jA9acqNWo3hgNA7mia1Lwq13+sP8Dp9hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5032.namprd11.prod.outlook.com (2603:10b6:510:3a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.31; Thu, 16 Mar 2023 08:43:12 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 08:43:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/9] drm/i915: Define more pipe timestamp
 registers
Thread-Index: AQHZVnVwFF3+4UStmUykjlcN8aRGUa79GcKA
Date: Thu, 16 Mar 2023 08:43:12 +0000
Message-ID: <e69701372c2527fbfb67011a08b0322e4933f3c3.camel@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
 <20230314130255.23273-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230314130255.23273-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5032:EE_
x-ms-office365-filtering-correlation-id: 5ee30c22-d70d-44ee-238f-08db25fa7a14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pHDKWzX1VWZCTIEAHfYcG7MwFPYzemMuw9c0JvBK3ejc1DSGlq20h5A1MZwixzou8ORhlWcRVOM+RIbv9fLLnEdubS3mzcFooYFH15U/bXhWQozxM1TIrqvU1+PXwroDrC3FjJuZl8LN1j8RVL+nGgiTpjO1BpL89jnXtgzBPOaabK5ZALtP9XU9Xv/wDFbs7azJdoZSS9N6yweDIGsPBZkIlSux1dJFw5oR154xW6C1h405JW+3RxssQFOe8yRAlKeD+IHaYtGmzX+rW2OzCRGNk+CX72h9Xq1EXCjonVSuM9UXJG52Eyn+r0hA7cFT0OZdtrdgGTG3TGk4IR0GsT+uYhmRKwTa6XxQcjyjUh3AkuPO65D3suu/s4Qcc2WPWLGE158chGCbWWMnfSGYelataHmAOrqwi8+xtOOdKF4MlrO07zAIhdz/aXkGlNkPWuCklXY1Qb6w60kq1VPUVsteQBUoaekWSKRctue/ELufJOvC9jGBTGJxzQ3qQzDnDBfQprgdpU7NWBrJ++44FxD6ZT8U61MtFYEeVIkcwMoTx1KsMixNkvzKjV+otzxZAImnSNBRKQR6AhnrOFljIeZjPAzBQekV0wGk9U94q/ilPgrpEVq8farVOcXqi0ZZci9oDuIJMprE43nS6su3t55Cf5SZIak0yIGqUnH8atsf8FyBQFBFnOLZ1+XIgEGTApwcDG4k7iqc2MWoPhNdrA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(396003)(346002)(136003)(39860400002)(451199018)(36756003)(41300700001)(5660300002)(8936002)(2906002)(38100700002)(86362001)(38070700005)(82960400001)(122000001)(71200400001)(76116006)(91956017)(478600001)(6486002)(66556008)(64756008)(66446008)(66476007)(8676002)(66946007)(110136005)(66574015)(83380400001)(316002)(186003)(6512007)(6506007)(26005)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEVtalRmQllTWWtCWmdWMHlBKzllcjI2anBmREp0dmFkLzFBbnZIMmp3ZERk?=
 =?utf-8?B?c1p0SHYwbjNlNjRNdTFhRXc3ZWFLL3NHVDdzU1dVMWE0Y0hxakRUWVJKU3Nk?=
 =?utf-8?B?VU1RbnZsQk8vc2tGeGFZcWxadVA0NEl5WUhQYlpKc0FXamkwQnhLL2oxZXlk?=
 =?utf-8?B?UDI5MEdzOEp1ZzB3QnMzY1ltOU9wcGZORFF1YWx4R3FORE5STnkvZHR3bHpn?=
 =?utf-8?B?WjhvTElEVFRXMkNDTS9ta3A5S0VKQnVBeUw0TlY0dU9CL1ZuRnJwak83c0w2?=
 =?utf-8?B?T3F5ZWRBRlFQZlA5SUs1RDBiYkRLT2Z2cVBuVlB3bEdreUw3cHdvZVRxSTYz?=
 =?utf-8?B?dW5wSnFLcDFaSW5wZk5VNlZrOGw1M0lzOUQ4QW4vUEFYOE5PWEJFYXdzdW1L?=
 =?utf-8?B?aUJqaTJEVnAwNEoraDhiQUh2YWI3aVVQRWFsbjZrcVUvUTRsMVQvU3dHUU9Y?=
 =?utf-8?B?R1JmL2lLWDI4K2ZwZzdjTWRTejREcFFlWWJVSjkxZVZwMURkZ3ZTVjlmR1Ay?=
 =?utf-8?B?S2RSUisvS1hvUUdVT3pDaVMwOG1zUDk1OXR0MENCYjlhaCthVHU3QXdRenRL?=
 =?utf-8?B?ajFCWm4rOEdtaW51VUdQTnczODdYK2tXcVlCVlBlQjZwNjJBWElWdzArV3Zh?=
 =?utf-8?B?ejB3aGdaMG5PS3N2c3RzemxvMnoxME9zRnBHYzB1MkJhRmMyamtBT1kvallD?=
 =?utf-8?B?Yyt0dERFeFdiRU53NkhKYW5XNVQ5VnFmaXVNdUZFSjJLYS8wcmNGVzNkbS9X?=
 =?utf-8?B?enNyK1FaaHczYW0xMDRaYkJQOHNVWFdTQ3hmV2xUWjZoaUU5R0xYQitDOXhs?=
 =?utf-8?B?UFRDdS9IWFNiZE1yQUpUSnpoRHU1YTFzdHFCdGd0RXRBYk5kc29hMElscS9O?=
 =?utf-8?B?cU5aTTE1N0VYQXBqWWRLTHMwLzVJSVdCUEltYXU3MEJ1eEVnbVZLaENZQ0NF?=
 =?utf-8?B?Vzg4ekVVTEdsbXYzRzRGVUFCTDdvRWEvOUFPaCtqaUl5Zm9yS2Mvbi9lNDRY?=
 =?utf-8?B?NmUvRWVjc0xmdUlZeUNIOGhRNmoxMXB0dThHaFJ1dEF4ZVlaWHl4djVuS0x5?=
 =?utf-8?B?a3k5UUxIa2psQ2E0TEorcllMRWxzK0lHK3EvNHl5L0tvbnlPWWVCT3Jxa3VM?=
 =?utf-8?B?NnRoVldKQno0a1dmT3lqVkhjMURxV3BCWmZCbTFqRHViczBUaWhVRExnbVVk?=
 =?utf-8?B?aWZjSmtTV2IwREtBT1lzRXhkVFhKYzI1Sk1DUmxsWVMxYlZ3NUpXM3E1d2lO?=
 =?utf-8?B?TXhLR0U0WGgxQWk3OUlVTXlVWDNRVVZaeEhOY2NNUVI3Wi9FWlZtbmo4RnNi?=
 =?utf-8?B?bkcvR2xEMGhHTk1oQVFFU2xtcDk5T0pZajI2YjVVTkc4MnRUTkx6TXp2ZzNU?=
 =?utf-8?B?RElSd3p5S0p1MFM3ckd1YVBka2F4a1MrWjFGTi91SldwRUREcE1nOElEOXUx?=
 =?utf-8?B?OTJITTBXdlpjeG01aGpTNElaWlFTZUo5Nm9TMDNIUkF5Z2xaT2xselErUGZE?=
 =?utf-8?B?UGlCdjdwVVBLK1Q4Ym83V21YVmpFc0dlZFYrWmlKRUZTM2dWMFRiQnhBcDkr?=
 =?utf-8?B?T3BhblA2Q1F3aDUrQnVTeWRYbU5TV3BEY0RzeHFuWmRtNGpIMURZRjk5cHd2?=
 =?utf-8?B?SUx6WndVTzBUKzdsM2xkdjNuTVJ5VnBJQ0tzM3k0cUllYkw1TTVCU1h4YUpk?=
 =?utf-8?B?cEJMeEVwTFJWMEZoM2VJUFBNU1hRbmtXNVQvNUxuU3FLYUFXeVRKSTN1YmIz?=
 =?utf-8?B?RU1NcHVuLzZ2WjdrQ0I4em9QWEJ3QjFPbEZLYkFhTm1xdEIwdldRczNJdUJv?=
 =?utf-8?B?SENraGs5WkpmS2xHOUQ0YWZBK1BNT3d5b2hWTmJZdTJ4NWtPNXl3ckt1V0lr?=
 =?utf-8?B?QmlEZlg5ck04RFY0SlViMy9RR29HMEl3QnlGS0xYSnNqd09WZEVWMDdndXdi?=
 =?utf-8?B?Q2J0cUQxM3plMVlhdXpaRGVqQ0NnYmVSVmlnaHozdzhQcnJsNng0bUFLQkVZ?=
 =?utf-8?B?bzdCTE1sT2RmYWdDWHhUVlBUWVd4eThteG9yV3JBNjNMSTB0b2phdERKWkF0?=
 =?utf-8?B?Rmc2VTU2WFRJbEE4ZTFYVHEwVWIxODRwY0d0enp5dVNsc2Nwb1ZUdXZhbXB1?=
 =?utf-8?B?dHpMYm9KRDBmUlBFbkJFcEFWeFc3NHlnb2dYeWJpV2Rmcmw2WVY5a3E5N2J5?=
 =?utf-8?B?ZUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AA6771432EE49146A9259EE58F7441D2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ee30c22-d70d-44ee-238f-08db25fa7a14
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 08:43:12.2624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: THDqihbq7jKkrT+K6KDCvyZlfFC9Z62ULqkqoNYaCdUEUlXf8VCUWP0MmhVpNlgZj2N3huK6MIteZPFWI4vWOIJqrMqiEEHIM7UpWxhhISQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Define more pipe timestamp
 registers
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

T24gVHVlLCAyMDIzLTAzLTE0IGF0IDE1OjAyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWRkIGRlZmluaXRpb25zIGZvciB2YXJpb3VzIHBpcGUgdGltZXN0YW1wIHJlZ2lzdGVy
czoNCj4gLSBmcmFtZSB0aW1lc3RhbXAgKGxhc3Qgc3RhcnQgb2YgdmJsYW5rKSAoZzR4KyksIGFs
cmVhZHkgaGFkIHRoaXMNCj4gZGVmaW5lZA0KPiAtIGZsaXAgdGltZXN0YW1wICh3aGVuIFNVUkYg
d2FzIGxhc3Qgd3JpdHRlbikgKGc0eCspDQo+IC0gZmxpcGRvbmUgdGltZXN0YW1wICh3aGVuIGxh
c3QgZmxpcGRvbmUgd2FzIHNpZ25hbGxlZCkgKHRnbCspDQo+IA0KPiBOb3RlIHRoYXQgb24gcHJl
LXRnbCB0aGUgZmxpcCByZWxhdGVkIHRpbWVzdGFtcHMgYXJlIG9ubHkgdXBkYXRlZA0KPiBmb3Ig
cHJpbWFyeSBwbGFuZSBmbGlwcywgYnV0IG9uIHRnbCsgd2UgY2FuIHNlbGVjdCB3aGljaCBwbGFu
ZQ0KPiB1cGRhdGVzIHRoZW0gKHZpYSBQSVBFX01JU0MyKS4gTGV0J3MgZGVmaW5lIHRob3NlIHJl
bGF0ZWQgYml0cw0KPiBhcyB3ZWxsLg0KPiANCj4gQ3VyaW91c2x5IFZMVi9DSFYgZG8gbm90IGhh
dmUgdGhlIGZyYW1lL2ZsaXAgdGltZXN0YW1wIHJlZ2lzdGVycywNCj4gZGVzcGl0ZSBhbGwgdGhl
IG90aGVyIHJlbGF0ZWQgcmVnaXN0ZXJzIGJlaW5nIGluaGVyaXRlZCBmcm9tIGc0eC4NCj4gVGhp
cyBtZWFucyB3ZSBjYW4gZ2V0IHJpZCBvZiB0aGUgcGlwZV9vZmZzZXRzW10gdXNhZ2UgZm9yIHRo
ZXNlLA0KPiBhbmQgdGh1cyB0aGUgaW1wbGljaXQgZGV2X3ByaXYgaXMgZ29uZSBhcyB3ZWxsLg0K
DQpBY2NvcmRpbmcgdG8gYnNwZWMgdGhlc2UgZXhpc3QgaW4gVkxWIChCc3BlYzogODI2NCwgODI2
MSkgPw0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIHwgMTggKysrKysrKysrKysrKysrKystDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aA0KPiBpbmRleCBhMzgzMzk3ZWJlY2EuLjY2YjZmNDUxYjgwYSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+IEBAIC0zNTI2LDYgKzM1MjYsOCBAQA0KPiDCoCNkZWZpbmXCoMKgIFBJ
UEVfTUlTQzJfQlVCQkxFX0NPVU5URVJfTUFTS8KgwqDCoMKgwqDCoMKgUkVHX0dFTk1BU0soMzEs
IDI0KQ0KPiDCoCNkZWZpbmXCoMKgDQo+IFBJUEVfTUlTQzJfQlVCQkxFX0NPVU5URVJfU0NBTEVS
X0VOwqDCoFJFR19GSUVMRF9QUkVQKFBJUEVfTUlTQzJfQlVCQkxFDQo+IF9DT1VOVEVSX01BU0ss
IDgwKQ0KPiDCoCNkZWZpbmXCoMKgDQo+IFBJUEVfTUlTQzJfQlVCQkxFX0NPVU5URVJfU0NBTEVS
X0RJU8KgUkVHX0ZJRUxEX1BSRVAoUElQRV9NSVNDMl9CVUJCTEUNCj4gX0NPVU5URVJfTUFTSywg
MjApDQo+ICsjZGVmaW5lwqDCoA0KPiBQSVBFX01JU0MyX0ZMSVBfSU5GT19QTEFORV9TRUxfTUFT
S8KgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0dFTk1BU0soMiwgMCkgLyoNCj4gdGdsKyAqLw0KPiAr
I2RlZmluZcKgwqANCj4gUElQRV9NSVNDMl9GTElQX0lORk9fUExBTkVfU0VMKHBsYW5lX2lkKcKg
wqDCoMKgwqBSRUdfRklFTERfUFJFUChQSVBFX01JU0MNCj4gMl9GTElQX0lORk9fUExBTkVfU0VM
X01BU0ssIChwbGFuZV9pZCkpDQo+IMKgI2RlZmluZSBQSVBFX01JU0MyKHBpcGUpwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgX01NSU9fUElQRShwaXBlLA0KPiBfUElQRV9NSVNDMl9BLCBf
UElQRV9NSVNDMl9CKQ0KPiDCoA0KPiDCoC8qIFNreWxha2UrIHBpcGUgYm90dG9tIChiYWNrZ3Jv
dW5kKSBjb2xvciAqLw0KPiBAQCAtNzU0NSw5ICs3NTQ3LDIzIEBAIGVudW0gc2tsX3Bvd2VyX2dh
dGUgew0KPiDCoCNkZWZpbmXCoCBHRU45X1RJTUVTVEFNUF9PVkVSUklERV9VU19DT1VOVEVSX0RF
Tk9NSU5BVE9SX1NISUZUwqDCoDEyDQo+IMKgI2RlZmluZcKgIEdFTjlfVElNRVNUQU1QX09WRVJS
SURFX1VTX0NPVU5URVJfREVOT01JTkFUT1JfTUFTS8KgwqDCoCgweGYNCj4gPDwgMTIpDQo+IMKg
DQo+ICsvKiBnNHgrLCBleGNlcHQgdmx2L2NodiEgKi8NCj4gwqAjZGVmaW5lIF9QSVBFX0ZSTVRN
U1RNUF9BwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4NzAwNDgNCj4gKyNkZWZpbmUgX1BJ
UEVfRlJNVE1TVE1QX0LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgMHg3MTA0OA0KPiDCoCNk
ZWZpbmUgUElQRV9GUk1UTVNUTVAocGlwZSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgXA0KPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9NTUlPX1BJUEUyKHBp
cGUsIF9QSVBFX0ZSTVRNU1RNUF9BKQ0KPiArwqDCoMKgwqDCoMKgwqBfTU1JT19QSVBFKHBpcGUs
IF9QSVBFX0ZSTVRNU1RNUF9BLCBfUElQRV9GUk1UTVNUTVBfQikNCj4gKw0KPiArLyogZzR4Kywg
ZXhjZXB0IHZsdi9jaHYhICovDQo+ICsjZGVmaW5lIF9QSVBFX0ZMSVBUTVNUTVBfQcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgMHg3MDA0Qw0KPiArI2RlZmluZSBfUElQRV9GTElQVE1TVE1QX0LC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4NzEwNEMNCj4gKyNkZWZpbmUgUElQRV9GTElQVE1T
VE1QKHBpcGUpwqDCoMKgwqDCoMKgwqDCoMKgwqBcDQo+ICvCoMKgwqDCoMKgwqDCoF9NTUlPX1BJ
UEUocGlwZSwgX1BJUEVfRkxJUFRNU1RNUF9BLCBfUElQRV9GTElQVE1TVE1QX0IpDQo+ICsNCj4g
Ky8qIHRnbCsgKi8NCg0KVGhpcyBpcyBtZW50aW9uZWQgaW4gcHJlIHRnbCBkb2N1bWVudGF0aW9u
IGFzIHdlbGw/IChCc3BlYzogMjk1OTEpDQoNCj4gKyNkZWZpbmUgX1BJUEVfRkxJUERPTkVUTVNU
TVBfQcKgwqDCoMKgwqDCoMKgwqDCoDB4NzAwNTQNCj4gKyNkZWZpbmUgX1BJUEVfRkxJUERPTkVU
TVNUTVBfQsKgwqDCoMKgwqDCoMKgwqDCoDB4NzEwNTQNCj4gKyNkZWZpbmUgUElQRV9GTElQRE9O
RVRJTVNUTVAocGlwZSnCoMKgwqDCoMKgXA0KPiArwqDCoMKgwqDCoMKgwqBfTU1JT19QSVBFKHBp
cGUsIF9QSVBFX0ZMSVBET05FVE1TVE1QX0EsDQo+IF9QSVBFX0ZMSVBET05FVE1TVE1QX0IpDQo+
IMKgDQo+IMKgI2RlZmluZSBHR0PCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoF9NTUlPKDB4MTA4MDQwKQ0KPiDCoCNkZWZpbmXCoMKgIEdNU19N
QVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0dFTk1BU0so
MTUsIDgpDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg==
