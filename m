Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AB086B13B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 15:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E75C10E357;
	Wed, 28 Feb 2024 14:05:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E9jum4ff";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180B310E089;
 Wed, 28 Feb 2024 14:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709129113; x=1740665113;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vcbwmJTs2agQh1kEPolkb2j53GBJlWRDGWl/pSpkXSk=;
 b=E9jum4ffuunPewE1yaIN/FtvEpQfWahA/+LKjBV28q13uCAD+y/l5Cfv
 als9EVYg6FD/65j+lb+2Zw+yAWM1bSwy8z/4CW7dwPapuySTDaWTmh8VP
 cufAL1OL/AdzZgi7zx1pH9aO1HFHPS41Mp24YnC63m5iwzL3ODGrz7qQY
 h+7hcmm7cWsn34K/8ZiE6YWaohaX3PN8HQy5LLtjFL3gkfdZJgU5WEPJT
 D+qsVnCxN/hzz8TeBdI2t1QcQjJfDVXffWNLuks0Ms2IPMzLBBLLSQF6b
 bIKVxn5L6klPFzxe4rJpuy8y2SP8d9KoVOccGN/vZ8AZ+0aCXN17qmPN8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3689673"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3689673"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 06:04:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="38271321"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 06:04:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 06:04:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 06:04:58 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 06:04:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IosCivUzd2yNk+WZrz9pDqLaFGf9oW+or+/N4WAt+Fjj+03C1aUJTbXucPFxMYRwnvnCf2eqFF6dpiTENtfHOJAr1p6swpiy6CewAqsxIRBpgzsJSR1YiIL49G6Yr03L/rw1Uw4JaNhQfpgTOd3KWV1KNX2pOfZqamEkJqKC+lErsdx23qpa3HLjVNK9bGQvTGKBJeQcXN+Mncc+YebwR/kNCv3aDRpIDjX2GLmSiek9G3YkoSmiA/mIdA7kA9ePBZ9g5OgL//RpFTaZyjjoTN2cqhu1fmTrMmWnS1OzkXbxk20fMq5UI4oAvWOSx32MEd45bMIucYVSfXT3oqIOdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcbwmJTs2agQh1kEPolkb2j53GBJlWRDGWl/pSpkXSk=;
 b=Phww4XOYiMR8nr0dC1Zmmx4yqnnnaYKXfIF7CHdG7pZ8eNUoIam6RXUcA81KfmH2TK3nd8xo306lbt1p/ZCp2UZv+9ygbWUmB3Y2zjqjAh123RnpMv6vq8A6ZikY05qODIAa81iy7sAXG+DiipJd8qvOX7SpKBoaZAvD8XimrlXhw4gs0F3uROz7K6UWNIAeIfO8CZhgcnHdARpH2iYgvInXow9uVIDTB6KOONohpqvd77hEL9bqUlpu5/LrvS+UC/lZArYxh4GiV9hpL/rsns7VBlQk+tzEsjq88U/0LrZ1hMmfYr0Nz/iNNajAtwCqwtBU+47uEuEzGKghNpfp2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Wed, 28 Feb
 2024 14:04:56 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac%3]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 14:04:56 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaak7SyehPNIvZvkGXeCdOLcfE4LEfyZaA
Date: Wed, 28 Feb 2024 14:04:55 +0000
Message-ID: <1dcc4bc35070f9da7f3f275e2765edb8f9a20e3c.camel@intel.com>
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SA1PR11MB8279:EE_
x-ms-office365-filtering-correlation-id: f21159b8-9845-4cf0-305b-08dc38663e26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7LO7msTKm29NZQ616ZEbXWsyjUlWDyy6bp/W1upaALtkVp6V+qkaYENxUtAf6+OwniJyghGJImpA2kMFqOzxIJAfms4enOd21fod6T97jo/CEoP7llPTs2g3KF7zyzYj/3Shm7+0YxU8UQNT8FnkOnWrwJsQvmU+C4fE5qEQFK3zNaEFYDh8XYp/i58KMGJJG3uEcqbewAiVFy/lACvnF8EGBXjzGBpE6M8zxOvesFD8j6Fui6Di1RR/hjzHt9Hecgm7JM9t7vGZsCSWkASNWkm6YK1pVO1Y8rZdg7XiRqcmPx4pl1g5w786MfaiZaXtMXIX8btMUwFTT8GOpu3TH2VXoIbn1nM64bBY8YodIM+h4AYyajI2y+LVQ5cLdSTNltiCcrzTDG8ebpGnKL7Cp5LxrivlHfpJt7VaRfUxjAWxl5IHf5pLeav8Q4+Otn8uvUDOlG021T4nYrlg5KqxFMa/QzAuAhttg7z7XYIVKqCCkpsAEGiVLwAnr03nBhaV9PLhMtYRRZtMgaFfTRcicjRmDr5PoiJg9E9tSXx5ODHs3xIFo4+kTah4smgxCD8HWH+jCk800m9vCqM4B6L4YTgA6L+Vfb4OBgVBo2cdZHEHSnq7jwzZiDIFIE9Mpk5EwGQGVlDKGAgpySPxhpTodTZGnjFOma1K/yBnT6haqiNYEW6mi6+ioWEw/v4ScHXdSn6sXsKCMni0CLQ5g1DBHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnpVc2d0RHE2OXpSM3grT0o0Y2QrWEdrNkEzQWFFZTF2V1h3cHFoc2dDakNy?=
 =?utf-8?B?MUFmVk11ejE4TUxvWGVEZGx1R1NFa2c2bHBTQnBBR3VXcTNCZWlEZ0grSDJj?=
 =?utf-8?B?L3ZOVmNlZ1Ewa1Bhd251cEgyZXB3dXpQSHRZQThTNXhEVUk0MEsxSjRmSTN6?=
 =?utf-8?B?MkJiZEpCYkdNNEpqbDRwT0l5cytTeENVTEora2lhVHl4aUN2NHIyVzlkMFYv?=
 =?utf-8?B?YU5YWU9nY1F2dk0xVGVpNzU0SlZhY3JPUlcvOGdCbU83TUxydUFEZjRmWG1U?=
 =?utf-8?B?czNzTVpoV29UekUyZjNteUtmUnVNcWloUEtlVWtXdWFoU1htbk04OGlwQVZs?=
 =?utf-8?B?L3MySXdwM2hsM0R0am9BZmtsUERCUnBKeWdyalRLSEpMYVRpM2YyaXB6d3cz?=
 =?utf-8?B?QzdpTDVqY1VQZG5ld01FdE9PVXVUeUpCdkNwb09oOC9aUjQvdy9WeXEwdDdq?=
 =?utf-8?B?ZjE0Z3NweG9Ob3ZuMW82MWMveDBsZ3AzK3ZZRjRNdVRJc05IQnpKdE5tRytV?=
 =?utf-8?B?QmNFcE9jUkZRQ3ZTbDZHVVo5OHdoN2pLWnlPbzdEWTBId0d6bm95VmRGYWZw?=
 =?utf-8?B?VW5RMUpEVFhSYVpOSXhNejFiVHFxd2tXTG9WQkJpMWpPbWc0SHdYTnpudTB4?=
 =?utf-8?B?c0JzNWgzckNpNUdyVW9KeitkVXh0ckp1bjVvV3NCSlhXQzhaWkx6VERsZXFz?=
 =?utf-8?B?dHFVVFBvNlp1MTIrMUtrRW0xOEh0YTF0WW1xWkhzM2VUSUJ3RnRSQU83K3JZ?=
 =?utf-8?B?OFYybmF1TEVBSmgvK1llY3dUVVZoUDlGc1N4TmVQcU1qZnNpeG1kcFd6ait2?=
 =?utf-8?B?anYyZVFwajhOdXJ2ZGlwSXUyaDBCL3AxRXRPd2lQeiswVVV1Q1NrS2NqTXF2?=
 =?utf-8?B?dmt3dndkazVDaTNPYmozMzZoYkQ1aFpIbVJWZFFDWEJxRFM0V29OdENSN2dk?=
 =?utf-8?B?dENHZVFxaHUvYkI3UWtwcFQ4bFRsQktwdkhNMEMwcEQybm1xVm5jWExNNTRY?=
 =?utf-8?B?UE4xYmZUa3BXV0k5d3RidDlFbUg1NVBWaDJpTkpsOUU4dDkxK25DMVpMY2la?=
 =?utf-8?B?MUxLeUljeG5OcTFHYVh5OFlSbTREOVp0Y1A1SmlqUmVCRlhzTjdacDNzQ1dL?=
 =?utf-8?B?UTA1QVZQeW9wY3NmWEZ4cE5DRkFaWXhQdjhQNXduWm1HbFRzd0hiVjB0d0pq?=
 =?utf-8?B?a0N0Mm1mQXk5RUZWQ2NRdzdtc2NwdUdYeXozc0Y0S0dRekpWbTB0cmYrTHZD?=
 =?utf-8?B?ZGZ4QlM1NDg2SU9ZQlF2LzJONGFpZlVOLzN1Mzhwdm9XOTFjTytjbGZ0RW1j?=
 =?utf-8?B?czdxMjdmNzAvNU45eFl6VFN6R016U0JONEFJclZrYW1md0VBREJRQURVa0hL?=
 =?utf-8?B?UXhPOTZXVDNoZkF3eHZ1ak9URTFoN1MzUEl3dG1aYWI1RE1jQlZ3VmN1QnUx?=
 =?utf-8?B?YlBjNzJGbnhWQTRyWlhIR1hVMjgxRWM1VytWVzdMdTNMdU1nUHhnbkMzQTJB?=
 =?utf-8?B?UGt3U0FTQ0ljc1NNaGhVVlY2K1djT24zamEyNHdEU3pLZGtGZFJnS3ZDUzFo?=
 =?utf-8?B?TUtJQWRHNEFYbWdBU3NVQTZtZDBhSFZlcjQwS0U2K1lHeE5SaGRFSkZ2WDBY?=
 =?utf-8?B?UzFSM25Db0RsYkxIR1pHODFPMjNyV29XMGUzNVRRUFQ2cjF4a05yYnBVakR2?=
 =?utf-8?B?bDBIZmIvMmdJY3RSS2h6eENqM0IrYnF3aE5td0d0aWUxWWQ5dEdlQnNseE5N?=
 =?utf-8?B?TDI0OVNOek9TV3RXVnZxa3QzQXNlbnVVc2N3VGp2SUdqMW5hZ2xPcmNZMldy?=
 =?utf-8?B?M3AzMFBUR2dBME5MU2cwRkROeUlqc0lLY2MrNXpVb3E1cjFUUk0ydm5hWlZ0?=
 =?utf-8?B?WU4zSzhmU1RQMWY2enMvS0kvc3RsRWxkdHNZU0dVR0c1K0NSeldFcHJCc05Q?=
 =?utf-8?B?bmdyTmRhRFMySXlJVDF5UldjakNMQTJWaVZoT3F2cURSNHpxMmxyTmJHcGtS?=
 =?utf-8?B?T2VuSzFhdzR0WmIveGZLczlLZHlLSGJXTVRHTVl6N3BidWEwd1IzTFRneHc3?=
 =?utf-8?B?SkJiaDcxV3ZCWVpndysySTdDdm0vaUdZYVFoaFhKaUxEV0ovN3BoMVh5cWc5?=
 =?utf-8?B?YURVR3Q4YnpTWnJ5dzFFcmpnSW5YUkdjL0RKbyt2bDBWd0F4a2RFWi83aWU0?=
 =?utf-8?B?T0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <639A3ECF7C5E5C499269AEFAE457A4E6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f21159b8-9845-4cf0-305b-08dc38663e26
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2024 14:04:56.0043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZfhkjakUkJMUjQd6zHnJQsttml3SvaAzYw4kkJou0rU/HP797ASZoY51OPBCm90wxVGwjSnnRdFsk5XAp+DtUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
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

T24gV2VkLCAyMDI0LTAyLTI4IGF0IDE2OjAyICswMjAwLCBKdWhhLVBla2thIEhlaWtraWxhIHdy
b3RlOg0KPiBBdXhDQ1MgZnJhbWVidWZmZXJzIGRvbid0IHdvcmsgb24gWGUgZHJpdmVyIGhlbmNl
IGRpc2FibGUgdGhlbQ0KPiBmcm9tIHBsYW5lIGNhcGFiaWxpdGllcyB1bnRpbCB0aGV5IGFyZSBm
aXhlZC4gRmxhdENDUyBmcmFtZWJ1ZmZlcnMNCj4gd29yayBhbmQgdGhleSBhcmUgbGVmdCBlbmFi
bGVkLiBDQ1MgaXMgbGVmdCB1bnRvdWNoZWQgZm9yIGk5MTUNCj4gZHJpdmVyLg0KPiANCg0KUmV2
aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
DQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwv
LS9pc3N1ZXMvOTMzDQo+IFNpZ25lZC1vZmYtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFw
ZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgfCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggZTk0MWUyZTRmZDE0Li44NjA1NzRk
MDRmODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jDQo+IEBAIC0yMjk1LDYgKzIyOTUsOSBAQCBzdGF0aWMgdTggc2ts
X2dldF9wbGFuZV9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCWlmIChI
QVNfNFRJTEUoaTkxNSkpDQo+ICAJCWNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR180Ow0K
PiAgDQo+ICsJaWYgKCFJU19FTkFCTEVEKEk5MTUpICYmICFIQVNfRkxBVF9DQ1MoaTkxNSkpDQo+
ICsJCXJldHVybiBjYXBzOw0KPiArDQo+ICAJaWYgKHNrbF9wbGFuZV9oYXNfcmNfY2NzKGk5MTUs
IHBpcGUsIHBsYW5lX2lkKSkgew0KPiAgCQljYXBzIHw9IElOVEVMX1BMQU5FX0NBUF9DQ1NfUkM7
DQo+ICAJCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikNCg0K
