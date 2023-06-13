Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5472772E30B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 14:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D8410E22E;
	Tue, 13 Jun 2023 12:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E5C10E22E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 12:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686659503; x=1718195503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/djfHqsJ/UtAVoLNzPqjzfBTyXRrmc3nTrLK7uZLUGo=;
 b=dGNwBS+ZqYd7KdZiFmXsctrRmaRI4oUXyCn5y6AJbxUaeueLI+eCqQEE
 ypYgsrtbhQuo8DEQwoiKSsPs8fRQd1VwBn6GXP4kn+jx/hkIeRqEM+l12
 dkRLgxgJDKmKzbSQr5AsU+RnUZgkbPqzyENnb6pvyyQx1LglD9r/VMfrE
 MO2QSI23NfaOq1osb4qr8yBFGblfiurmmsI2VzU9rmIdJl1zFaNyGjoVU
 GCM29sDL7vIWF5iuvzY7z20W+AZOl3zkFuBL7Ci2nqkHzQs6SiGVaQH5U
 pP8UXyHq9/QLZ0TE5eE/mMH9abQMzvunhOcPXtlp06qudjbF7xfIo13el A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="444688337"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="444688337"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="801461186"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="801461186"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2023 05:31:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 05:31:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 05:31:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 05:31:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Twl990j73MMuEzEvjAe32WcH2SK663vJcQiG0RPm2q+BOyJz1iM+XEdPF7x6eRf2+XDRflC/YzqhI34Uoj2WB3F3AfL9KfC1M5vOWnkO3SXTW/nxCUChSQbEsY/IlKOiPWeDvehgDPrdLnjhIHRkKq+Zzw7X5rtGVHRXvgc8D4DiR1uXv0D+cnKWiqxjvJXhdGPOJyDt6OzHxOIgfi5LD+Kc+Zq/gGhNd42ojRDywDHA2OjJ0xPVZPI0zUCWX4q09pmix6Hd6rlkZA9OsFghFdW8bh7jqa5LSVZuvyo8tcPKul90jCH2PYwpNsI4BnNdy6DuDq7SNaeZi8lKnBPtRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/djfHqsJ/UtAVoLNzPqjzfBTyXRrmc3nTrLK7uZLUGo=;
 b=Ohdmb4V1YL/kPYYNraFHW+Rq/3UoSeblq9dRLBdW4Ygr6cpKNVuHUzKHqwXO1iGNc4/iZVtvPPGj/kKV0cUksCyKNfWDn3HyWz0ICH1o3TFnjlBvjW9Gv/dIAYKyALS5wpvMd+gKelcBEUJAVBEo1f27ZJywdWskmljYWyXktZAhtcWlm0I6YT0QESutmM85ocWDMJyGlmse+02vmh+D1vv7WWXcVOs7nHUaM8oRAZgj4DGCZAe3pV3R+sLa2TnG5Tx3LY9nUqfnxglVZMoynhjjJkhJM9sPiN1Oyu90ctSc55pXSeI8d6a3svGRLXdPTZKgzBjx4N4z2AniyOMTtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by DS0PR11MB6494.namprd11.prod.outlook.com (2603:10b6:8:c2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 13 Jun
 2023 12:31:33 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::2fe4:f49e:42b4:267c]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::2fe4:f49e:42b4:267c%6]) with mapi id 15.20.6455.034; Tue, 13 Jun 2023
 12:31:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
Thread-Index: AQHZnbKbdRZCJh1+qU+F8jwy+li5Kq+IqesQ
Date: Tue, 13 Jun 2023 12:31:32 +0000
Message-ID: <SN7PR11MB70410FE5EB5B8B1D38924C49EF55A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20230613044239.691706-1-arun.r.murthy@intel.com>
In-Reply-To: <20230613044239.691706-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|DS0PR11MB6494:EE_
x-ms-office365-filtering-correlation-id: ba27e71c-4b51-4965-20e4-08db6c0a1e9b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K4Un9QH8p2o0iK9agdfzQ7s0AqwxNWLCbpcsTLK/2q7PPvvvjImgsUjSabDb7oEH2dUzK6dF3FCtG2PWHdIUCEht7vKFcwYseGg79iLrRjKrXr9YF0qV+XghD5UrY1D/7ud2HIuxe5dtvSbYV6Q4yoUADQz8nVhEzAKkkbuy4koohV7HKqd5qk1div8kFPjM8IqprUGngKX4eq+E8JAGm5nP1RqgJyt3C4vktanU3XUvkq3d3TbAQqVZXVmSHo/3+y35xJn/bUXDac3t9k+9ABITU9RfR0+gAejN1Uov9RHBtutNYvxJYV64F0U1CLze95twjh/2mMa8nnSQKQuSHZFvaoWZmFtvbLnHBT3fENumT6y1Pe/b6ZdJIXB79WdxI3hNTfDeoRCIYhi6meSteVhc7hYp0vuLqVYo8f6kw8igFg6r1Fzj8sfX4nLTufDMngjbQ9Ur4/PjUGlWMTO+zhVl5FOeeG9v/SjZrvMCHejGS9vqjjawzNiZpjt9AYgZrYsB/r5Uob3stbkkmlrqgF4BN1xU44cBA4lRexS+0Q8xhQtwKKiiG1/zWK3YrUCj/YPJl+ePjLQDMmxyVWeGU2EsjzNZFbzr3e0FqiIe1ZQcGN5OgF9azuPrNa++3Qfc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(396003)(346002)(376002)(451199021)(82960400001)(71200400001)(7696005)(478600001)(33656002)(9686003)(107886003)(186003)(83380400001)(38070700005)(38100700002)(86362001)(6506007)(26005)(53546011)(122000001)(55016003)(66556008)(66476007)(66446008)(4326008)(76116006)(66946007)(64756008)(316002)(8676002)(8936002)(52536014)(5660300002)(41300700001)(2906002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk9iNUZORG1kODgxczErd2p4V3BnSlkySkluUmVVTjZkYnRaZHhINDI3Z3VI?=
 =?utf-8?B?UE5aazErV1M4bWdTMlZWbW4xTnNhWXlPamJFTWhKYUJMNVQ1dm10RWtRUGZS?=
 =?utf-8?B?RXZ2V005Y1pOdkhDQml1cFFBRVNMQWQ0NFIwKzRVMWtwRXpvYnREZHhtcFJY?=
 =?utf-8?B?alZWcHpnMFJIQ25PRlpOb1RvRnJQV0FaUm5JSFBHQUVXQ3ZHWWMvNHBrNmRT?=
 =?utf-8?B?T1pBeVlLTkhGM2Z1L1d0WXkybE9MTUowMEMzVUNtL2NwUWZReE9FN0ZKbTBD?=
 =?utf-8?B?RFYrM3FwYTVZVWl3U0JJY2FJWmY1Nk9rbUJSNks5cVBLd1NHQ1FIcng1N1dO?=
 =?utf-8?B?dDNQa1Q0K0xEQ2ozNzkxN29iSEtkYzMyOEZ3azU3UUNIdTVrbkg2R1lyNTha?=
 =?utf-8?B?Zy9iL3paVUZpaTlXVzdpWWNUWnhDd1JsVWI4a0xOSm9KaVdWWGZObXE2ZW5M?=
 =?utf-8?B?NitFT3Z4emFQZjdUdXc1THovMFBlSVJ5ZmcrRWFSRWEzMThxaFFjVE9RanRF?=
 =?utf-8?B?bWJCcGkzaTlPWE8yUVJxV2NTb0xyckJJNkRhQ3pmQWFjNlNHRzdSME1Ncksv?=
 =?utf-8?B?S3lPL2pJTnBtd3Nwd1JQMnVBc0ZEbWlkTGF1cDBJMTlSRlQ2SFI1S05GaDVm?=
 =?utf-8?B?aGNrRE1WYlgwWlFrbUYxNHUrU3ZRS3RYYXVnWkZ2REZXbHpBNmt6UXAvZHpF?=
 =?utf-8?B?dHVJVmFKYkVZclBxRzgxang1MGMrOGQ1MXlSWUJ5ZllzQlFVcXhRektsaVZ3?=
 =?utf-8?B?eWF0L0pZNGpzakkvOGc5T3ZjM0JPYklhZ1gybXhRQ2xnMks1Q3NZY0d4UHFC?=
 =?utf-8?B?R3NPZkdTbkp0UWdTaHJoMlFYRWVDc1BCOHNDYW1KT2xBYTJlTnhVWjRTSnRN?=
 =?utf-8?B?Ly8zK1pMNUhkZGUrZmVzcEhHWTJCa2V4cFJMb01xZU1pVTZwRHdRMUVXZmFH?=
 =?utf-8?B?SzZmYkZYLzRqRTRKMkt6WTBjNFRyVnVhNVFLelFLR0hLK3RLVFo0OXRLUytj?=
 =?utf-8?B?ZlBaK0ptMHBUOEN0aXQzdy9YVTRRVWlxUFpnaHZiL2QyNEN0amU3cDJHeHFl?=
 =?utf-8?B?eVBta1RXUVVPRjRkMlNDZWpXUUpFZW5sMU5MTm1aV0pHRHNkM2UrUHg2aWNW?=
 =?utf-8?B?MjRxaTFaYS9DanBoMExSTlNKZjBJbnJzWFdoS0syVFFKNVJMaThncitVYnRi?=
 =?utf-8?B?YktLa09vU2xPVVUvZ1Y3MkZYcW95am1JRm9jR0tyV00zeU9QRzJvaS8vU3la?=
 =?utf-8?B?d1NuU2tqbE5hKzlFL2FMbDdqQVkrWVlIejUxRyszeGUrTVZmVWVoNXRZbnVQ?=
 =?utf-8?B?ZWl5Mjl3Q3BPOVpvN0VHbW1STW9WQ1BacEEyS3AzcDlGamlpYStkaFlFWmVS?=
 =?utf-8?B?aXBqYkhyWlVkMklsNGk2UGdYTXFIVTlzR3B0UDhwTFRBbUdjbWZTN25wY3kr?=
 =?utf-8?B?NEs2eHUwRnJXSTZEbnZ2ZnBpYlhhR09IY2pKN0VBSGNhVy91UFdzSVkrbTA4?=
 =?utf-8?B?MlRZM01aMzlhRWtsRngwQjFyWWxVQ3UwUWpSUkd3R1lmRktueEpEL01jVG1v?=
 =?utf-8?B?aE0wYTJxa241ZWJaSGRTZFVSaGJqS215TU9aL0RNWVRNdThKM3hxU296a0ZI?=
 =?utf-8?B?cXRYL3V5K1pnbWFYdFdseUhwR3A4SFZNKysrdVViNUZTNDBsT0MyZGl0K2hZ?=
 =?utf-8?B?SjU3ajBYLzA5MTZPYXR5TTQ0NXo5VDV2clRZSW14d2ovZlRPT0xBbmYyYUZl?=
 =?utf-8?B?VFFkcE1LR2RNcjJWVFdFMVlQUHpLMnVWNUg2WnAzR0l6U1BZMzExMURTdFZG?=
 =?utf-8?B?RHBoYVYxdGcvZEx5TTkzajhjenpGT2d2RlJySDFFNzNBdnRLeTVHUUg0WEdz?=
 =?utf-8?B?Q0xYVEx1WTc0Y1hxSjZGc00wVC9JQ3VXL0hxUUJsQmMyZ0NienRmcTdudjAv?=
 =?utf-8?B?bjFEdzhnaWpJbXVzb1ZGOTFzRWUwbG42WkZEbmlvNFg1dXBGenRrWEhncm13?=
 =?utf-8?B?MEVWSW10TC9yOXBSd1BPKy9mcnMxL1VQOFh0TEU5N3oxeVdoWHpuVm1FZkth?=
 =?utf-8?B?SmRVUGk5eEJsZGQ4aUdEZUZnWXIvSlEzb2MvOVdIZUl3cjlTY0IzaHRRV2xO?=
 =?utf-8?Q?aayNXz098+WMke+1g6C5NIYZY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba27e71c-4b51-4965-20e4-08db6c0a1e9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 12:31:32.1885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w2I03CEd2kaX0ljfnrq6wgbO/Q1AEkzgzGuzOcY/vPgVGBQSqKGRUvk20Ehgxe3YkeuHTpEOwH+/3ousR4QtMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6494
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEFydW4gUiBNdXJ0
aHkNCj4gU2VudDogVHVlc2RheSwgSnVuZSAxMywgMjAyMyA3OjQzIEFNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxh
QGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIdjNdIGRybS9pOTE1L2Rp
c3BsYXkvZHA6IE9uIEFVWCB4ZmVyIHRpbWVvdXQgcmVzdGFydCBmcmVzaGx5DQo+IA0KPiBPbiBB
VVggdHJhbnNmZXIgdGltZW91dCwgYXMgcGVyIERQIHNwZWMgbmVlZCB0byByZXRyeSBmb3IgMyB0
aW1lcyBhbmQgaGFzIHRvIGJlIHJlc3RhcnRlZCBmcmVzaGx5Lg0KPiANCj4gdjM6IGhhbmRsZSB0
aW1lb3V0IGFuZCBkb250IHJlbHkgb24gcmVnaXN0ZXIgdmFsdWUgb24gdGltZW91dCAoSW1yZSkN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCAgICB8ICAxIC0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
LmMgICB8IDcyICsrKysrKysrKy0tLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzQgaW5z
ZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCAyZDgyOTdmOGQw
ODguLjA5NDJiMTA5YjRjYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE3NDEsNyArMTc0MSw2IEBAIHN0
cnVjdCBpbnRlbF9kcCB7DQo+ICAJLyogc2luayBvciBicmFuY2ggZGVzY3JpcHRvciAqLw0KPiAg
CXN0cnVjdCBkcm1fZHBfZGVzYyBkZXNjOw0KPiAgCXN0cnVjdCBkcm1fZHBfYXV4IGF1eDsNCj4g
LQl1MzIgYXV4X2J1c3lfbGFzdF9zdGF0dXM7DQo+ICAJdTggdHJhaW5fc2V0WzRdOw0KPiANCj4g
IAlzdHJ1Y3QgaW50ZWxfcHBzIHBwczsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2F1eC5jDQo+IGluZGV4IDBjMjdkYjhhZTRmMS4uMjQ0YjRkN2Q3MTZkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gQEAg
LTM2LDI1ICszNiwyNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhfdW5wYWNrKHUzMiBzcmMs
IHU4ICpkc3QsIGludCBkc3RfYnl0ZXMpDQo+ICAJCWRzdFtpXSA9IHNyYyA+PiAoKDMgLSBpKSAq
IDgpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyB1MzINCj4gLWludGVsX2RwX2F1eF93YWl0X2RvbmUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3N0YXRpYyBpbnQNCj4gK2ludGVsX2RwX2F1
eF93YWl0X2RvbmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdTMyICpzdGF0dXMpDQo+ICB7
DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2Rw
KTsNCj4gIAlpOTE1X3JlZ190IGNoX2N0bCA9IGludGVsX2RwLT5hdXhfY2hfY3RsX3JlZyhpbnRl
bF9kcCk7DQo+ICAJY29uc3QgdW5zaWduZWQgaW50IHRpbWVvdXRfbXMgPSAxMDsNCj4gLQl1MzIg
c3RhdHVzOw0KPiAgCWludCByZXQ7DQo+IA0KPiAgCXJldCA9IF9faW50ZWxfZGVfd2FpdF9mb3Jf
cmVnaXN0ZXIoaTkxNSwgY2hfY3RsLA0KPiAgCQkJCQkgICBEUF9BVVhfQ0hfQ1RMX1NFTkRfQlVT
WSwgMCwNCj4gLQkJCQkJICAgMiwgdGltZW91dF9tcywgJnN0YXR1cyk7DQo+ICsJCQkJCSAgIDUw
LCB0aW1lb3V0X21zLCBzdGF0dXMpOw0KPiANCj4gIAlpZiAocmV0ID09IC1FVElNRURPVVQpDQo+
ICAJCWRybV9lcnIoJmk5MTUtPmRybSwNCj4gIAkJCSIlczogZGlkIG5vdCBjb21wbGV0ZSBvciB0
aW1lb3V0IHdpdGhpbiAldW1zIChzdGF0dXMgMHglMDh4KVxuIiwNCj4gLQkJCWludGVsX2RwLT5h
dXgubmFtZSwgdGltZW91dF9tcywgc3RhdHVzKTsNCj4gKwkJCWludGVsX2RwLT5hdXgubmFtZSwg
dGltZW91dF9tcywgKnN0YXR1cyk7DQo+IA0KPiAtCXJldHVybiBzdGF0dXM7DQo+ICsJcmV0dXJu
IHJldDsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdTMyIGc0eF9nZXRfYXV4X2Nsb2NrX2RpdmlkZXIo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGluZGV4KSBAQCAtMTg2LDEwICsxODUsNyBA
QCBzdGF0aWMgdTMyDQo+IHNrbF9nZXRfYXV4X3NlbmRfY3RsKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ICAJICovDQo+ICAJcmV0ID0gRFBfQVVYX0NIX0NUTF9TRU5EX0JVU1kgfA0KPiAg
CQlEUF9BVVhfQ0hfQ1RMX0RPTkUgfA0KPiAtCQlEUF9BVVhfQ0hfQ1RMX0lOVEVSUlVQVCB8DQo+
IC0JCURQX0FVWF9DSF9DVExfVElNRV9PVVRfRVJST1IgfA0KPiAgCQlEUF9BVVhfQ0hfQ1RMX1RJ
TUVfT1VUX01BWCB8DQo+IC0JCURQX0FVWF9DSF9DVExfUkVDRUlWRV9FUlJPUiB8DQo+ICAJCURQ
X0FVWF9DSF9DVExfTUVTU0FHRV9TSVpFKHNlbmRfYnl0ZXMpIHwNCj4gIAkJRFBfQVVYX0NIX0NU
TF9GV19TWU5DX1BVTFNFX1NLTChpbnRlbF9kcF9hdXhfZndfc3luY19sZW4oKSkgfA0KPiAgCQlE
UF9BVVhfQ0hfQ1RMX1NZTkNfUFVMU0VfU0tMKGludGVsX2RwX2F1eF9zeW5jX2xlbigpKTsNCj4g
QEAgLTI3MywzMCArMjY5LDYgQEAgaW50ZWxfZHBfYXV4X3hmZXIoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gIAkgKiBpdCB1c2luZyB0aGUgc2FtZSBBVVggQ0ggc2ltdWx0YW5lb3VzbHkN
Cj4gIAkgKi8NCj4gDQo+IC0JLyogVHJ5IHRvIHdhaXQgZm9yIGFueSBwcmV2aW91cyBBVVggY2hh
bm5lbCBhY3Rpdml0eSAqLw0KPiAtCWZvciAodHJ5ID0gMDsgdHJ5IDwgMzsgdHJ5KyspIHsNCj4g
LQkJc3RhdHVzID0gaW50ZWxfZGVfcmVhZF9ub3RyYWNlKGk5MTUsIGNoX2N0bCk7DQo+IC0JCWlm
ICgoc3RhdHVzICYgRFBfQVVYX0NIX0NUTF9TRU5EX0JVU1kpID09IDApDQo+IC0JCQlicmVhazsN
Cj4gLQkJbXNsZWVwKDEpOw0KPiAtCX0NCj4gLQkvKiBqdXN0IHRyYWNlIHRoZSBmaW5hbCB2YWx1
ZSAqLw0KPiAtCXRyYWNlX2k5MTVfcmVnX3J3KGZhbHNlLCBjaF9jdGwsIHN0YXR1cywgc2l6ZW9m
KHN0YXR1cyksIHRydWUpOw0KPiAtDQo+IC0JaWYgKHRyeSA9PSAzKSB7DQo+IC0JCWNvbnN0IHUz
MiBzdGF0dXMgPSBpbnRlbF9kZV9yZWFkKGk5MTUsIGNoX2N0bCk7DQo+IC0NCj4gLQkJaWYgKHN0
YXR1cyAhPSBpbnRlbF9kcC0+YXV4X2J1c3lfbGFzdF9zdGF0dXMpIHsNCj4gLQkJCWRybV9XQVJO
KCZpOTE1LT5kcm0sIDEsDQo+IC0JCQkJICIlczogbm90IHN0YXJ0ZWQgKHN0YXR1cyAweCUwOHgp
XG4iLA0KPiAtCQkJCSBpbnRlbF9kcC0+YXV4Lm5hbWUsIHN0YXR1cyk7DQo+IC0JCQlpbnRlbF9k
cC0+YXV4X2J1c3lfbGFzdF9zdGF0dXMgPSBzdGF0dXM7DQo+IC0JCX0NCj4gLQ0KPiAtCQlyZXQg
PSAtRUJVU1k7DQo+IC0JCWdvdG8gb3V0Ow0KPiAtCX0NCj4gLQ0KPiAgCS8qIE9ubHkgNSBkYXRh
IHJlZ2lzdGVycyEgKi8NCj4gIAlpZiAoZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgc2VuZF9ieXRl
cyA+IDIwIHx8IHJlY3Zfc2l6ZSA+IDIwKSkgew0KPiAgCQlyZXQgPSAtRTJCSUc7DQo+IEBAIC0z
MDQsMTQgKzI3NiwzMSBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiAgCX0NCj4gDQo+ICAJd2hpbGUgKChhdXhfY2xvY2tfZGl2aWRlciA9IGludGVsX2Rw
LT5nZXRfYXV4X2Nsb2NrX2RpdmlkZXIoaW50ZWxfZHAsIGNsb2NrKyspKSkgew0KPiAtCQl1MzIg
c2VuZF9jdGwgPSBpbnRlbF9kcC0+Z2V0X2F1eF9zZW5kX2N0bChpbnRlbF9kcCwNCj4gKwkJLyog
TXVzdCB0cnkgYXQgbGVhc3QgMyB0aW1lcyBhY2NvcmRpbmcgdG8gRFAgc3BlYyAqLw0KPiArCQlm
b3IgKHRyeSA9IDA7IHRyeSA8IDU7IHRyeSsrKSB7DQpJdCBzZWVtcyB0aGF0IHdlIHRyeSA1IHRp
bWVzIGhlcmUuIFdhcyB0aGlzIGludGVudGlvbiBvciBrZWVwIHRyaWVzIGluIDMgYXMgY29tbWl0
IG1lc3NhZ2UvY29tbWVudCB3b3VsZCBzdWdnZXN0Pw0KDQotTWlrYS0NCj4gKwkJCXUzMiBzZW5k
X2N0bCA9IGludGVsX2RwLT5nZXRfYXV4X3NlbmRfY3RsKGludGVsX2RwLA0KPiAgCQkJCQkJCSAg
c2VuZF9ieXRlcywNCj4gIAkJCQkJCQkgIGF1eF9jbG9ja19kaXZpZGVyKTsNCj4gDQo+IC0JCXNl
bmRfY3RsIHw9IGF1eF9zZW5kX2N0bF9mbGFnczsNCj4gKwkJCXNlbmRfY3RsIHw9IGF1eF9zZW5k
X2N0bF9mbGFnczsNCj4gKw0KPiArCQkJLyogVHJ5IHRvIHdhaXQgZm9yIGFueSBwcmV2aW91cyBB
VVggY2hhbm5lbCBhY3Rpdml0eSAqLw0KPiArCQkJLyogVE9ETzogaWYgdHlwZUMgdGhlbiA0LjJt
cyBlbHNlIDgwMHVzLiBGb3IgREcyIGFkZCAxLjVtcyBmb3IgYm90aCBjYXNlcyAqLw0KPiArCQkJ
cmV0ID0gaW50ZWxfZHBfYXV4X3dhaXRfZG9uZShpbnRlbF9kcCwgJnN0YXR1cyk7DQo+ICsJCQkv
KiBqdXN0IHRyYWNlIHRoZSBmaW5hbCB2YWx1ZSAqLw0KPiArCQkJdHJhY2VfaTkxNV9yZWdfcnco
ZmFsc2UsIGNoX2N0bCwgc3RhdHVzLCBzaXplb2Yoc3RhdHVzKSwgdHJ1ZSk7DQo+ICsNCj4gKwkJ
CS8qIE9uIHRpbWVvdXQgZG9udCByZWFkIHRoZSBzdGF0dXMgYml0cyBhcyBpdHMgbm90IHVwZGF0
ZWQgKi8NCj4gKwkJCWlmIChyZXQgPT0gLUVUSU1FRE9VVCkgew0KPiArCQkJCWRybV9XQVJOKCZp
OTE1LT5kcm0sIDEsDQo+ICsJCQkJCSAiJXM6IG5vdCBzdGFydGVkLCBwcmV2aW91cyBUeCBzdGls
bCBpbiBwcm9jZXNzIChzdGF0dXMgMHglMDh4KVxuIiwNCj4gKwkJCQkJIGludGVsX2RwLT5hdXgu
bmFtZSwgc3RhdHVzKTsNCj4gKwkJCQlpZiAodHJ5ID4gMykNCj4gKwkJCQkJZ290byBvdXQ7DQo+
ICsJCQkJZWxzZQ0KPiArCQkJCQljb250aW51ZTsNCj4gKwkJCX0NCj4gDQo+IC0JCS8qIE11c3Qg
dHJ5IGF0IGxlYXN0IDMgdGltZXMgYWNjb3JkaW5nIHRvIERQIHNwZWMgKi8NCj4gLQkJZm9yICh0
cnkgPSAwOyB0cnkgPCA1OyB0cnkrKykgew0KPiAgCQkJLyogTG9hZCB0aGUgc2VuZCBkYXRhIGlu
dG8gdGhlIGF1eCBjaGFubmVsIGRhdGEgcmVnaXN0ZXJzICovDQo+ICAJCQlmb3IgKGkgPSAwOyBp
IDwgc2VuZF9ieXRlczsgaSArPSA0KQ0KPiAgCQkJCWludGVsX2RlX3dyaXRlKGk5MTUsIGNoX2Rh
dGFbaSA+PiAyXSwgQEAgLTMyMCw4ICszMDksMTUgQEAgaW50ZWxfZHBfYXV4X3hmZXIoc3RydWN0
DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gDQo+ICAJCQkvKiBTZW5kIHRoZSBjb21tYW5kIGFu
ZCB3YWl0IGZvciBpdCB0byBjb21wbGV0ZSAqLw0KPiAgCQkJaW50ZWxfZGVfd3JpdGUoaTkxNSwg
Y2hfY3RsLCBzZW5kX2N0bCk7DQo+ICsJCQlpbnRlbF9kZV9ybXcoaTkxNSwgY2hfY3RsLCBEUF9B
VVhfQ0hfQ1RMX0lOVEVSUlVQVCB8DQo+ICsJCQkJICAgICBEUF9BVVhfQ0hfQ1RMX1RJTUVfT1VU
X0VSUk9SIHwNCj4gKwkJCQkgICAgIERQX0FVWF9DSF9DVExfUkVDRUlWRV9FUlJPUiwgMCk7DQo+
IA0KPiAtCQkJc3RhdHVzID0gaW50ZWxfZHBfYXV4X3dhaXRfZG9uZShpbnRlbF9kcCk7DQo+ICsJ
CQlyZXQgPSBpbnRlbF9kcF9hdXhfd2FpdF9kb25lKGludGVsX2RwLCAmc3RhdHVzKTsNCj4gKw0K
PiArCQkJLyogT24gdGltZW91dCBkb250IHJlYWQgdGhlIHN0YXR1cyBiaXRzIGFzIGl0cyBub3Qg
dXBkYXRlZCAqLw0KPiArCQkJaWYgKHJldCA9PSAtRVRJTUVET1VUKQ0KPiArCQkJCWNvbnRpbnVl
Ow0KPiANCj4gIAkJCS8qIENsZWFyIGRvbmUgc3RhdHVzIGFuZCBhbnkgZXJyb3JzICovDQo+ICAJ
CQlpbnRlbF9kZV93cml0ZShpOTE1LCBjaF9jdGwsDQo+IC0tDQo+IDIuMjUuMQ0KDQo=
