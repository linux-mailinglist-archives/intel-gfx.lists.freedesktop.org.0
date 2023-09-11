Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0425F79AACE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 20:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8A210E34A;
	Mon, 11 Sep 2023 18:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F0B10E34A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 18:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694456685; x=1725992685;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=45sNQInD0Bzflult9kBoIXP+XnE04KuAD7E5Qw7QCnE=;
 b=Lu6BUDMX5zwPONQ7lOqfelSQdq3474hiK/yrph5W2bGNUe6//CMekv6W
 adZRrS+1ojXqT8hA9/pwcf5deytqzd/3AyOFru7jun3t5DmKMX/Wa7RQz
 c+3P4me6JQSJvUulu82lAQ9nd202YwTCyK9n+TaUDPtzbnvcMQsg5VUXC
 9ERCVpT5SpJGFVTlO2ZJk9LNHVO/Zul0RSbu0Satwyl5h57bmmTAKxVc9
 tu7I2kM/CMKSXFvPnAYO38abQOrJJB0nOWML/6KbHzOKoc8qztqQVNS48
 fHsWVjIfqeolwQGOokIRmpzjlEXTitvbQqQupk3ZzFzvTb3g0qfWkksLz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="363201914"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="363201914"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 11:24:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="746531475"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="746531475"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 11:24:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 11:24:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 11:24:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 11:24:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 11:24:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBqj1CAFjayGO5OtkTYIHtmoQHc/Ain/5+D08ppjqG9iy9LXSnA5b/FR3J/EE9YrFmr2AZ9ol6lgJoCzolc1bM9rk74q5cGkM2hRUDEyAp8JSuB6YYOLj6Q/B5/bydpKER8rFCx3dSKBUzLmpVk9tgcqFuBKfT9ZWOW0CjlouJe7sYlDdyAIoW1NMkDCsK5BkWerJczXJjR2tVs0iCn5PXRyHb0PLSkhDJV8KNIEVktmWS1AdRjiRfQ55KV4jCX5DcSlEkjCfbI21Ozsfe9nUcEHuftM3d2jiBz2s9GlnxYxsyRYf2GJTR5/Wks8SRWNqcy5A+Sq/YlzomLgjbVVHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45sNQInD0Bzflult9kBoIXP+XnE04KuAD7E5Qw7QCnE=;
 b=i7EBpGaiav+4IuRuctpc6O1Cj4EdaTvWu7yQxFgQZJRtFim+6ydiOU+0pGEVKc6Aq3/NoFaOMQEr1qIdCW8OQee9bvGaein45dKgB09g2571JelEsWz4MWJnqd2f1PBOkgkKGsybIkq/OotkuyH38ZsiumsqZY7FgiHxC8nWUkhWZKTwkKOwxasLO22RYYLRoYlhVI7sXD6d4wnJ0r9JR1SryqpwDD/qEwkFFtBfzP1IZRsQpG6Rp41M6re/OjrMm8bqxFOJXZfpHp9w9QLY8y0yayvkBaiscd8ceT1DN3bo7OIed1ox1TLz3LlFlEcZmRiafcle+wB/rafsiYTwCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SJ0PR11MB7702.namprd11.prod.outlook.com (2603:10b6:a03:4e2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Mon, 11 Sep
 2023 18:24:36 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 18:24:35 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/12] drm/i915: Enable VRR later during
 fastsets
Thread-Index: AQHZ3NUCsguZZOQ8hUmbURzM2Bf0L7AWAHdQ
Date: Mon, 11 Sep 2023 18:24:35 +0000
Message-ID: <IA1PR11MB63489E60A539429CF489296BB2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SJ0PR11MB7702:EE_
x-ms-office365-filtering-correlation-id: 988b5a9a-9f5d-4be2-b561-08dbb2f45a45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kJOrswaSS57Hc41TLmGuC2tjEsOXaqa/kN5pr/6b2BeoRDjPW2K8zxgChHkYKMt4PF9gYoogVGCJ9qevjBBpkqkrpu7HQxjMO//GR6u++1NR2xH6VXC4alIfq+xhomRFIZRTxlQiFzy/txLvE8SDwkwovkb1Nfr2s0XR59Y/UUvY+02C0bIbUXqa1g8lqflDc+wtWLqDXDGj31zntzrop0LeScCucTlq0Yq0fy0mDEF4TZxeB6CGtKO1iT3/iB2tQ7cYUkUuGLKMdd18z+XG05usIQxCydHrfm2/yanHWNBqSMkpD/7llDwlWQnFx3MwZpQ7EJZRfNuZ0oDq2C47hqzvvnsF2Vjzkf0haq4WiQ2a7hPuebjt5kzY4e0MwxNwBBzK8lrgROsaeQ01trtqWoCAARi18p9+B1Ykup8MbGeSQYmqnpliFDIFUEd5kKitu6hlU9PQCVG5pIbjxbswCbmBuyO/Vhjl3GswbSbQdXo7cAIbYGM0SCpJ2wuEwzo+fhtmxnoefz9Oc+SKWd5pOPMK7yXyP4APiFx1CC7GwmucXU8ZpzQgwmjFL+k6BOUUM9SlPvC6E7bT2nY0BzjnImzxKz2veOU+c2SMGLtu4qQE/E0nVYGtTKdZauCRwCXX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(39860400002)(366004)(396003)(451199024)(186009)(1800799009)(5660300002)(66574015)(122000001)(82960400001)(38070700005)(38100700002)(6506007)(7696005)(71200400001)(55236004)(9686003)(53546011)(478600001)(2906002)(83380400001)(26005)(66476007)(316002)(66556008)(66446008)(86362001)(41300700001)(64756008)(66946007)(33656002)(76116006)(110136005)(55016003)(52536014)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eE1yL3FyVnlXTkVWNmFRWFhYZTRIQXNSSzY5cTdGekhGekM0ZFNScWQxc1Bx?=
 =?utf-8?B?eTQwR1JTN1dsTVpGcm5TeXhzSmhkM2o2Wks5ZW1QRUZjYk5jVXYySHl5WG01?=
 =?utf-8?B?Nm50Tk9hdHJxOE1ORjhCZUJicTVxendlRHZVelVyajlpQ1BDMlZid3ZRUzVY?=
 =?utf-8?B?Q3hxVUZHNEc4QWtQYmY2azViRDQwM2dKMExzV2Fzd3J4dTY0c0QySk1sQWlK?=
 =?utf-8?B?YTFodmNkREtyNFFGSytJZjRVU1hSQzgwdVY3MEFXdFNIaHFqNEJWMzZUdjA2?=
 =?utf-8?B?R3RNSjdLWXgyM01QNWQ0NDN5UWpZeURNWDZTdVpVUDB6K2g1d29ydUp2MC9z?=
 =?utf-8?B?ak1EOFdTNEhBelYrUDJaeWlMMS84OGVBT1VQVkNEdmY3V0Z5NE1yVm8rUlhW?=
 =?utf-8?B?bkNSaHRTRS9wenB4cGNnOG9teWM5cmNOUmJhVWpVS25GMFBNekdNU1Yrbnlq?=
 =?utf-8?B?bUtkQWJXbkVxVWRKVmN3SFJuOE80Q3dWMW10ZkdpOHhmbGJMSloxM2l2OGhR?=
 =?utf-8?B?YzNmaStERGNYb3lEQlY2Rnl3Qm5hODZkTFgvazdwYWVoVTM1S1VDUHlsTzdo?=
 =?utf-8?B?RWoyL0ljNW0yVVpmZWtpUFJVK09vSWd6UlA5bGNJWGg2RUZOZW5FNTE5ZXFY?=
 =?utf-8?B?aFJXR0t5Y1kyREJnRk5Cb0I3TXJuaCszbTRDYkUzNVM1K0kxQVFQaEw2eGdV?=
 =?utf-8?B?OTUxbU9keDAzbmpEK05SSmprZkgyMWxlL0J3SWdnRmJGT1R6dk1kTlViSUl0?=
 =?utf-8?B?TlhXTjM0elI1aC9DUGgrVm52SFRvazZoeHhqSTh2TnZDT0VFZHZxVFRBT0s0?=
 =?utf-8?B?amo4Q2VJNEtYZEpXQ3dzTHR1STZJMlhWaVpCOFpZUU9zZ3RyZ3huSkFKNjhn?=
 =?utf-8?B?RzJJbzFnMWZQVm9uOTRJQTZpcUZVQTBMeGJoRjAxS3FNYkYrMjFqcHVNaGtx?=
 =?utf-8?B?SzExc2REaFlUWFJ6QkZHL3g3ektXU24xZ1g3TjY5NFR0bitWYWI2ejVrNGlU?=
 =?utf-8?B?REpRTlowWVRZQ2lCcDV6TlRvakE5ak9XZ01VdTRVdjczSUFOVllZeUVoczRT?=
 =?utf-8?B?eVRsR1ZHVWpuUHZYQ2FvMkkvVHpFVEFzQVlUTWg4SmFXZHlidERlOTZHeFlM?=
 =?utf-8?B?eVVkaGdWOUgxL1FVTzNYdFBaOTg0UnVyelVSV0JUMXVhMFpJR2xSVUJuL3dm?=
 =?utf-8?B?ZFRiTTYyTUxPR3llRlhtSXd6MmNvTkhrZkN6VjlKRnhqVkRBMHIrMkZZMXNI?=
 =?utf-8?B?aFVqOVViOGh2aE9OUmExSlZnUVp0NkJ5RWdRQklEL0xVb1JxbDNBZTY2Ti94?=
 =?utf-8?B?elR0em5ZWFUyVkRGd0RPSEh1enJtbWxIeGJrcGNxS2pwTUZHRWdmMlI0WTh3?=
 =?utf-8?B?dm15OEVLM3NlYStvQzkwOHR0cHV4Vmh6Vno2U0ZJYjNiWHR1VjZtcTd3MlR6?=
 =?utf-8?B?UlRzZU9zQjRZNFIxNHRkTGRVUU5wcGh4bkNYQ2tURXBreEpjaVhmdEhXUGI4?=
 =?utf-8?B?QklVWXFOclJNdUsybi9wTExVdXU1ZCt4WFRucnBsMENnb0doa1ZNL0NWc3Ix?=
 =?utf-8?B?NDFpcnNEUklwVk1vWjNvZ3FFKythUFNqY0tFdFg2S3M4YUJsWFdUN2xEWXNt?=
 =?utf-8?B?V0Q4cEpnTTR1NXRjb0NLRTY2djRwZWFodDJmbWRBaGZNV295WmhieUFaRnE1?=
 =?utf-8?B?TS9BNFVBM1g2cCtXdGFIcmRMN1g5eEhBdXN3bHhOVlR3Wm1WcEpRMUtkZGNG?=
 =?utf-8?B?YTFESEpUNTNESzc3QlM2MkNSYWVRL280UHB6ZnZkVFRpUmdEa0xXVENEb1dy?=
 =?utf-8?B?aEVGTFhWR3Y3bEJLbjZPQkk4K2NsMW8yWFE5YlVTVDhPSWRsU3c0aVB6WmRD?=
 =?utf-8?B?cTMvTk1EUHZEaVVsSGxtdVVtN3B2andmVktYWXhObEVWSXBNQjRpbm9XR1B5?=
 =?utf-8?B?NHZoYW9UOU9uamtidTFsd0RhS3lFWEUxMFExMWE2MktBRzFnbG1vdlYzTVZI?=
 =?utf-8?B?MXcvb1pmQ1JCYVJGRFFQQld2VDQ5RXhrOFdvdC9BeE5PNTRDdWRwNWFNNkhs?=
 =?utf-8?B?b0psN3ZZQUhPZGVFV1YycHl0ZXM5eDAvNEFMYmZHLzdHQUNtZUdDZFRXNUVu?=
 =?utf-8?B?NWg5eTYzU0VYMFY4UVhlOUR4c1ZEZWN2dDNCUitKSGhaSmxHQTVZSitIYzB0?=
 =?utf-8?Q?cBRHm/s4UcwxoU6ySILsL+k=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 988b5a9a-9f5d-4be2-b561-08dbb2f45a45
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 18:24:35.9085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7SP8rtya5704+gQ8MBXtBFZS7SmKb7Sw0QOex9ImuMwiFwBxSOwbpJiMXxJA2XSZEIaUhw7qFAz3oA/M4vPapvyUQIB9BJnkV4XyQwcGlGAnNkhuAiD8g5MhXtWVXpMZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: Enable VRR later during
 fastsets
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
NC8xMl0gZHJtL2k5MTU6IEVuYWJsZSBWUlIgbGF0ZXIgZHVyaW5nIGZhc3RzZXRzDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gSW4gb3JkZXIgdG8gcmVjb25jaWxlIHNlYW1sZXNzIE0vTiB1cGRhdGVzIHdpdGggVlJSIHdl
J2xsIG5lZWQgdG8gZGVmZXIgdGhlDQo+IGZhc3RzZXQgVlJSIGVuYWJsZSB0byBoYXBwZW4gYWZ0
ZXIgdGhlIHNlYW1sZXNzIE0vTiB1cGRhdGUgKHdoaWNoDQo+IGhhcHBlbnMgZHVyaW5nIHRoZSB2
YmxhbmsgZXZhZGUgY3JpdGljYWwgc2VjdGlvbikuIFNvIGp1c3QgcHVzaCB0aGUgVlJSDQo+IGVu
YWJsZSB0byBiZSB0aGUgbGFzdCB0aGluZyBkdXJpbmcgdGhlIHVwZGF0ZS4NCj4gDQo+IFRoaXMg
d2lsbCBhbHNvIGFmZmVjdCB0aGUgdmJsYW5rIGV2YXNpb24gYXMgdGhlIHRyYW5zY29kZXIgd2ls
bCBub3cgc3RpbGwgYmUNCj4gcnVubmluZyB3aXRoIHRoZSBvbGQgVlJSIHN0YXRlIGR1cmluZyB0
aGUgdmJsYW5rIGV2YXNpb24uIFNvIGp1c3QgZ3JhYiB0aGUNCj4gdGltaW5ncyBhbHdheXMgZnJv
bSB0aGUgb2xkIGNydGMgc3RhdGUgZHVyaW5nIGFueSBub24tbW9kZXNldCBjb21taXQsIGFuZA0K
PiBhbHNvIGdyYWIgdGhlIGN1cnJlbnQgc3RhdGUgb2YgVlJSIGZyb20gdGhlIGFjdGl2ZSB0aW1p
bmdzIChhcyB3ZSBkaXNhYmxlIFZSUg0KPiBiZWZvcmUgdmJsYW5rIGV2YXNpb24gZHVyaW5nIGZh
c3RzZXRzKS4NCj4gDQo+IFRoaXMgYWxzbyBmaXhlcyB2YmxhbmsgZXZhc2lvbiBmb3Igc2VhbWxl
c3MgTS9OIHVwZGF0ZXMgYXMgd2Ugbm93IHByb3Blcmx5DQo+IGFjY291bnQgZm9yIHRoZSBmYWN0
IHRoYXQgdGhlIE0vTiB1cGRhdGUgaGFwcGVucyBhZnRlciB2YmxhbmsgZXZhc2lvbi4NCj4gDQo+
IENjOiBNYW5hc2kgTmF2YXJlIDxuYXZhcmVtYW5hc2lAY2hyb21pdW0ub3JnPg0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jICAgIHwg
MzUgKysrKysrKysrKysrLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgMjEgKysrKysrKystLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDM2
IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gaW5kZXggZTQ2YTE1ZDU5ZDc5Li4xOTkyZTcw
NjAyNjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5j
DQo+IEBAIC00NzIsMTUgKzQ3MiwzMSBAQCBzdGF0aWMgdm9pZA0KPiBpbnRlbF9jcnRjX3ZibGFu
a19ldmFkZV9zY2FubGluZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJ
CQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJCQkgICAgICBpbnQgKm1p
biwgaW50ICptYXgsIGludA0KPiAqdmJsYW5rX3N0YXJ0KSAgew0KPiArCWNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19nZXRf
b2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9DQo+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNf
c3RhdGUoc3RhdGUsIGNydGMpOw0KPiAtCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICph
ZGp1c3RlZF9tb2RlID0gJm5ld19jcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4g
Kwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gKwljb25zdCBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZTsNCj4gDQo+IC0JaWYgKG5ld19j
cnRjX3N0YXRlLT52cnIuZW5hYmxlKSB7DQo+IC0JCWlmIChpbnRlbF92cnJfaXNfcHVzaF9zZW50
KG5ld19jcnRjX3N0YXRlKSkNCj4gLQkJCSp2Ymxhbmtfc3RhcnQgPQ0KPiBpbnRlbF92cnJfdm1p
bl92Ymxhbmtfc3RhcnQobmV3X2NydGNfc3RhdGUpOw0KPiArCS8qDQo+ICsJICogRHVyaW5nIGZh
c3RzZXRzL2V0Yy4gdGhlIHRyYW5zY29kZXIgaXMgc3RpbGwNCj4gKwkgKiBydW5uaW5nIHdpdGgg
dGhlIG9sZCB0aW1pbmdzIGF0IHRoaXMgcG9pbnQuDQo+ICsJICoNCj4gKwkgKiBUT0RPOiBtYXli
ZSBqdXN0IHVzZSB0aGUgYWN0aXZlIHRpbWluZ3MgaGVyZT8NCj4gKwkgKi8NCj4gKwlpZiAoaW50
ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gKwkJY3J0Y19zdGF0ZSA9
IG5ld19jcnRjX3N0YXRlOw0KPiArCWVsc2UNCj4gKwkJY3J0Y19zdGF0ZSA9IG9sZF9jcnRjX3N0
YXRlOw0KPiArDQo+ICsJYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9t
b2RlOw0KPiArDQo+ICsJaWYgKGNydGMtPm1vZGVfZmxhZ3MgJiBJOTE1X01PREVfRkxBR19WUlIp
IHsNCj4gKwkJaWYgKGludGVsX3Zycl9pc19wdXNoX3NlbnQoY3J0Y19zdGF0ZSkpDQo+ICsJCQkq
dmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfdnJyX3ZtaW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUp
Ow0KPiAgCQllbHNlDQo+IC0JCQkqdmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfdnJyX3ZtYXhfdmJs
YW5rX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsNCj4gKwkJCSp2Ymxhbmtfc3RhcnQgPQ0KPiBpbnRl
bF92cnJfdm1heF92Ymxhbmtfc3RhcnQoY3J0Y19zdGF0ZSk7DQo+ICAJfSBlbHNlIHsNCj4gIAkJ
KnZibGFua19zdGFydCA9IGludGVsX21vZGVfdmJsYW5rX3N0YXJ0KGFkanVzdGVkX21vZGUpOw0K
PiAgCX0NCj4gQEAgLTcxMCwxNSArNzI2LDYgQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQo
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJICovDQo+ICAJaW50ZWxf
dnJyX3NlbmRfcHVzaChuZXdfY3J0Y19zdGF0ZSk7DQo+IA0KPiAtCS8qDQo+IC0JICogU2VhbWxl
c3MgTS9OIHVwZGF0ZSBtYXkgbmVlZCB0byB1cGRhdGUgZnJhbWUgdGltaW5ncy4NCj4gLQkgKg0K
PiAtCSAqIEZJWE1FIFNob3VsZCBiZSBzeW5jaHJvbml6ZWQgd2l0aCB0aGUgc3RhcnQgb2YgdmJs
YW5rIHNvbWVob3cuLi4NCj4gLQkgKi8NCj4gLQlpZiAobmV3X2NydGNfc3RhdGUtPnNlYW1sZXNz
X21fbiAmJg0KPiBpbnRlbF9jcnRjX25lZWRzX2Zhc3RzZXQobmV3X2NydGNfc3RhdGUpKQ0KPiAt
CQlpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhuZXdfY3J0Y19zdGF0ZSwNCj4gLQkJ
CQkJCSBuZXdfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSk7DQo+IC0NCj4gIAlsb2NhbF9pcnFfZW5h
YmxlKCk7DQo+IA0KPiAgCWlmIChpbnRlbF92Z3B1X2FjdGl2ZShkZXZfcHJpdikpDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGNm
YWQ5NjdiNTY4NC4uNjMyZjFmNThkZjllIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNjQ3Niw2ICs2NDc2LDggQEAgc3RhdGlj
IHZvaWQgY29tbWl0X3BpcGVfcG9zdF9wbGFuZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2Uu
ZGV2KTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUg
PQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4g
IAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiAgCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gDQo+IEBAIC02
NDg3LDYgKzY0ODksOSBAQCBzdGF0aWMgdm9pZCBjb21taXRfcGlwZV9wb3N0X3BsYW5lcyhzdHJ1
Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDkgJiYNCj4gIAkgICAgIWludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0
Y19zdGF0ZSkpDQo+ICAJCXNrbF9kZXRhY2hfc2NhbGVycyhuZXdfY3J0Y19zdGF0ZSk7DQo+ICsN
Cj4gKwlpZiAodnJyX2VuYWJsaW5nKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSkpDQo+
ICsJCWludGVsX3Zycl9lbmFibGUobmV3X2NydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRp
YyB2b2lkIGludGVsX2VuYWJsZV9jcnRjKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LCBAQCAtNjUyNywxMg0KPiArNjUzMiw2IEBAIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9jcnRj
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJaW50ZWxfZHB0X2NvbmZp
Z3VyZShjcnRjKTsNCj4gIAl9DQo+IA0KPiAtCWlmICh2cnJfZW5hYmxpbmcob2xkX2NydGNfc3Rh
dGUsIG5ld19jcnRjX3N0YXRlKSkgew0KPiAtCQlpbnRlbF92cnJfZW5hYmxlKG5ld19jcnRjX3N0
YXRlKTsNCj4gLQkJaW50ZWxfY3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MobmV3X2NydGNfc3Rh
dGUsDQo+IC0JCQkJCQkgbmV3X2NydGNfc3RhdGUtPnZyci5lbmFibGUpOw0KPiAtCX0NCj4gLQ0K
PiAgCWlmICghbW9kZXNldCkgew0KPiAgCQlpZiAobmV3X2NydGNfc3RhdGUtPnByZWxvYWRfbHV0
cyAmJg0KPiAgCQkgICAgaW50ZWxfY3J0Y19uZWVkc19jb2xvcl91cGRhdGUobmV3X2NydGNfc3Rh
dGUpKQ0KPiBAQCAtNjU2OSw2ICs2NTY4LDE2IEBAIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9j
cnRjKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4gIAlpbnRlbF9w
aXBlX3VwZGF0ZV9lbmQoc3RhdGUsIGNydGMpOw0KPiANCj4gKwkvKg0KPiArCSAqIFZSUi9TZWFt
bGVzcyBNL04gdXBkYXRlIG1heSBuZWVkIHRvIHVwZGF0ZSBmcmFtZSB0aW1pbmdzLg0KPiArCSAq
DQo+ICsJICogRklYTUUgU2hvdWxkIGJlIHN5bmNocm9uaXplZCB3aXRoIHRoZSBzdGFydCBvZiB2
Ymxhbmsgc29tZWhvdy4uLg0KPiArCSAqLw0KPiArCWlmICh2cnJfZW5hYmxpbmcob2xkX2NydGNf
c3RhdGUsIG5ld19jcnRjX3N0YXRlKSB8fA0KPiArCSAgICAobmV3X2NydGNfc3RhdGUtPnNlYW1s
ZXNzX21fbiAmJg0KPiBpbnRlbF9jcnRjX25lZWRzX2Zhc3RzZXQobmV3X2NydGNfc3RhdGUpKSkN
Cj4gKwkJaW50ZWxfY3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MobmV3X2NydGNfc3RhdGUsDQo+
ICsJCQkJCQkgbmV3X2NydGNfc3RhdGUtPnZyci5lbmFibGUpOw0KPiArDQoNCmNoYW5nZXMgbG9v
a3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3VtYXIuYWpp
dGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQoNCj4gIAkvKg0KPiAgCSAqIFdlIHVzdWFsbHkgZW5h
YmxlIEZJRk8gdW5kZXJydW4gaW50ZXJydXB0cyBhcyBwYXJ0IG9mIHRoZQ0KPiAgCSAqIENSVEMg
ZW5hYmxlIHNlcXVlbmNlIGR1cmluZyBtb2Rlc2V0cy4gIEJ1dCB3aGVuIHdlIGluaGVyaXQgYQ0K
PiAtLQ0KPiAyLjQxLjANCg0K
