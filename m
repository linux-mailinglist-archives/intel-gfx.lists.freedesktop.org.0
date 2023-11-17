Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7A07EF29E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 13:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DA710E757;
	Fri, 17 Nov 2023 12:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AE910E2F1;
 Fri, 17 Nov 2023 12:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700224100; x=1731760100;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=F6Z62FaZEFAkY4/bpieYXCkqIGByFTgQ/MHtA13NZrU=;
 b=I3foogMTFv62xiFR/+qjWDDVVUmTtTlIiwLNQhBvVSMOrIyLPMTDzpK9
 ugcHEgddZoeD5lJaxf6WTsks+qPeGZ0IHbSNwBouhe31tiIueykWjAR0P
 cLDknqeLFXGm6mhrW2AsXSETB1SS3fFTD4EO6mPSHbLHrNT1x9Pdp+7Ww
 OKDtW8quCxgb1HOnP99QRfQ0f5l5rP0bw2lO/0bK9G8Z5JohZrBFnUvYm
 7RtRBlH702NSRAXR4iP8fuWZsZ3TlSc+Ft3TCXSigmztI0fd1WbubdfeJ
 t2xorP0KA3V80V6mCDOWVgEFJhofLGQwVLIiqKEHq82eB2YKLwSxpunFN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="4377985"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="4377985"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 04:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="13911507"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 04:21:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 04:21:29 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 04:21:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 04:21:28 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 04:21:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ua2ssOlRNfEJdmUZiQTUj/Orrah46CD08IGG5qNiITeM6qqgaw91xrOpeWYCgVk7CuvkvZP1X5+VbOyCbZPkwUxznzYYOWXU1mMmXUopkXd5OvSx0STnwl2J8xEJA7FXBwYCmU0vLRJx7PRTOm5x+ZtIgyBTZFz2ROGTrKBS6aRuMxXjnDeoZedYPbEmjBDe+cxHnAYC3G2ViI6I+23XgKpfsNscPktCcaqavkxXaTH3deeMHzQdUb4ZayV/W0bmraYcuD9eduO0Iwloj4BJ43KnW/98yOD43orwW9zg2atFfH0VWceOyWEDlSwqB6jifCJZyU//ejIGCiIRBTQmGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6Z62FaZEFAkY4/bpieYXCkqIGByFTgQ/MHtA13NZrU=;
 b=OR+OEoDqmCjUO3W4hiVnuS1eA8gobLsDsBIvqvxIq/SoGhLfgcr3EvR6+12wuBcWpZZgrsmqTqUq/iuRKXTpU7iTW8PYJB0GMgS0oF45tNMJEcYL/tmXRDvpPLfmm69iH53weMUAa8yXg4axfdvDjZ+EPxwcPeFJtTphkAzXJ0rqfciofLWYKR61/lh1v3Cj7Eg4Qr023sM0xHPOvmrn0o53Fhz+GotcR+OdIo0a0BkdYqe/QkXhqDc1+OhKUqa0IQpgxDCbHtVLQD5sRSdyg8juqsvdb8kMsRAYykSAzxZdJBkUuCeITb8YyPUEFyUYiwIG5zwYAPyAFXShddM/+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 12:21:26 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7002.021; Fri, 17 Nov 2023
 12:21:26 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
Thread-Index: AQHaGVCVju5YShLEa0GW0QrIew9Syw==
Date: Fri, 17 Nov 2023 12:21:25 +0000
Message-ID: <b5b7c522527332eb54be2dfa6da5b0ad7cc25a07.camel@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com> <ZVcx1MSvP0UgZ14o@intel.com>
In-Reply-To: <ZVcx1MSvP0UgZ14o@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MW3PR11MB4556:EE_
x-ms-office365-filtering-correlation-id: 43495e5e-3040-46b8-2aff-08dbe767b81c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h+qT8w+8nJcU+TvSUmwXMGKNMmkgOkYDj4QpSzGnxJ/phRkFEBrk3Py0e3FDJOpgvkZnsG7cr0qPNBOcKPPCbEgs/Y0H8AtoLHxQXpkacWXrHk4y0Ux3QxZRoQiBIW3bh5lwCrBa11nG0tSWNWLIFsbcFuqbfb49L5ql7eFznjJbGVCoCEgYv/w/MsU9CFIMx09uXm2/fFzU5BZ6Z4TDO+rgJZqys/O4ZAuGJb/aCKRC/NWEgHSZnRTcM69RhsyivezfinCMWM5O34HikNCFIhxmymjtKMqrwb9QNHYhEP+MotARQFWumOjPCpQIR+R8kRkCa1h0RSk4FY3uP0U1s98f3XA20opQkni8CoHj6eWxvmn+1r8YKqh44PmjKadPjdOPMXCyU2iwL2JfOZqb40tn2LavE2xpiDUDyV5v3of4QkX4zarF4i0+PVv4r/L6HFgBfNeOIFkdMnUV8uAualjbtz3CRgNaGfsQgClRAUVk2P4iKaS0JziYKPK1V2mS3ybf2dBrrhUhF5IofWvgdPFf4LFtNwOwO1D8+2YqF2gYlwpSN5Cyz/X+386WRN3qAntAIb6I/lASbo1kfLKoDNTU5PyFyO+zg6gcfHJPiIYJVzA1hcLDejQmblQE8OeM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(366004)(376002)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(83380400001)(38100700002)(38070700009)(26005)(122000001)(71200400001)(6506007)(478600001)(86362001)(6486002)(316002)(6916009)(36756003)(2616005)(82960400001)(66556008)(66476007)(66446008)(54906003)(64756008)(66946007)(91956017)(6512007)(76116006)(66574015)(41300700001)(4326008)(8676002)(5660300002)(4001150100001)(2906002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1oxQkZtam93RzNFTGV0N1VQb044L1RybHl6KytPaTJLYWZjaUVqRmptVzQz?=
 =?utf-8?B?ZDZ4N3FXU3p6NHMvdEFqT3RlVGh3dTNESEdsZXZpdmNvWlA4d1ZMdHh4b3JU?=
 =?utf-8?B?cFNhUUFZbUNuYzVGRHhSdHAyUHp2M2pVaW1iSmtsMHd1Sm1BanpJK1c5ZnhY?=
 =?utf-8?B?OG1rUDV1eDNISmhlRGFHc2xGeWVLMU1xQW9KMWRRNk00NEJmMGkrcFJmeDlE?=
 =?utf-8?B?S1c3bExYUU9tYU52QlZiTVZTNlUzZ21QUzFqYk1OZHVOemd2RG40cU9zSElS?=
 =?utf-8?B?VUVQYXZVazZjVHBFMHdTcUd6OW5UNmRtN2ZTcE81SzgzcTYxUDQzVVlsSHBB?=
 =?utf-8?B?c0o2MVhrQW5iMFNNODdoWVVDcHR4YnF4YzlIZFFqUjJCTHZCL2Y2L3U2Z2M5?=
 =?utf-8?B?YWppZGNxNS9wMUxISUoxTCtNN1M2SmZSMjh1MEJubExUNVBOdjZrM0FMRFd3?=
 =?utf-8?B?VXpOdUpKS1YzbVd5UVIrbnBFRXdwN1pWU2pBZlpPcFFJRU5KNkdNa0FzQXlw?=
 =?utf-8?B?WnBsekJ2dkFuU3FyUDl6M2lxYVNPYVBMRUk3RFRuWFJwT1hQY3ZZWmJMSlBx?=
 =?utf-8?B?L1hSU2tnVkc4VUxLRy9NT21Pczh2S1o1QUk3OVBFeGMwbVFKYVF2b0hJem56?=
 =?utf-8?B?azE0SC8zNHBiYUx5SXAvM1hJVkZVV1YwQlF5Rkd0N01nTUE3U3drc1BOclF4?=
 =?utf-8?B?b0NwU1gvcTNQYUtPNnZENlNDaWdEWEdNOWRnSndrUlBCZ3owRlIvM1JncDlw?=
 =?utf-8?B?ek8yS2ZJVmp1RnQ5cXR3aGlqVUIzZWhtNnpka21zS0lNY0xRamRNY1dRZ0sz?=
 =?utf-8?B?UVVGd0IwTmtoN2xDZFFNMmdadTMrVzY1UFlrRCt5OFl0M0t0NkZlTVJRYkNn?=
 =?utf-8?B?dHpPejB0a3pDM2JvVXNzR2M0Y09UT1RnalcwUHhXMUFDWjFxcWRSWWpQNmsv?=
 =?utf-8?B?U3gxMkJwdmQ1dHJTOHlzMi9Wb1NXTEpXU0l5Wi9zM0xKMGZERWlSaTRLOUM2?=
 =?utf-8?B?aDhQcDlmNUZ0NmR0SnNXT0ZadEd2TllJSWluWnZaUzJ6T2N1Nys2R1c4cnFI?=
 =?utf-8?B?azhDNUduUGRhWis3dnFKQWxza3V0eGlSWTFXQ2YzOFZXOGc5OWZqZnB5U0Nu?=
 =?utf-8?B?Y0xnRDlFQnZkK2xlbnVna1F2dGxtSWdyb1A2dkQrM0RsU2I0aXB3WU4vTUkx?=
 =?utf-8?B?M3JCK1B6K0V0SGcrSE1DNDZUd0dURHI3RjdqckJDQTNjT3RjSUZHdkZNcG11?=
 =?utf-8?B?WFdheHVwSVpSdWpZeTExVGI4M1NYbXpEYklkQmNvaUtwWStsKzM3UWJndS9Y?=
 =?utf-8?B?TjNtRlhjNkRrOFlRSnBoMjVaSWhLMjBsVTBTWndiZDR0RUFsRWRJUk9zcUtx?=
 =?utf-8?B?aXpXZnl6TnZOS3J1RzE2TURaNkhhMjRTdGRXM0x2NjY1dEtTaTlBbWZLS2I0?=
 =?utf-8?B?UXBGWWdXNnZzb1prUHc5bk9vUWN0eGFJTjJNRmRKZ1J4YURSUUwzRkpGaFZD?=
 =?utf-8?B?MXJQdEVwd1hCdlFvRUVWV2RnOE1XelJBZHBjNnBZM0srNE9MMmdEVEVHWTcz?=
 =?utf-8?B?UGNTU05RbEZob2dYTmJvRHNnOTdtanQ1RUg4Ujh1NVhNQ0JHdHl0OUFUK0Ri?=
 =?utf-8?B?UVp5WG5VZGRYK3kzL3VMYnZ6bFc2bnNqbVVvei92bkI1QThSbkZFRzNMSWgv?=
 =?utf-8?B?MWJNQzNCbGF1Wnd1WHEyNUFjcXRYeUUvQ3pVNWpWRHlaN0NXZ2pDTklLNUVr?=
 =?utf-8?B?aVpkbnp3YjZHL2Y0VTgzSzVSNGhjaFUxeWNFYi92L3NWYlgzVlUvd1UzWko2?=
 =?utf-8?B?NEM1WmNKN1pzSUtxOVhqYXNHdWVyT3JHbmVVZTJHaU1SeE42YjJQcFVUZFhv?=
 =?utf-8?B?dnJQdXA2U0JTV0E2UVBXeGs0bW9JejdFc1VrR0VieDE2ZWN3SXliZzM3U1lK?=
 =?utf-8?B?OEtldVRzbEdMVDUxR3dBK1I0M2ZzakVGWk1BcndrZU9QMUoxWTg5VVlybm5l?=
 =?utf-8?B?c0hvWHh6NzdXb0lQSldVWGJvdzdYamt0U3lwdWZmS3dtTFp5blMrNjNhRXV1?=
 =?utf-8?B?aEJnZFVmMks1cUE1ejU5SnpQVEhQWXNCWElPQmhTOVVQS0ZNRU1iR2VuTmZp?=
 =?utf-8?B?ZVByV2w2TTBBd25Rc0dsNHV5N0dhY2xSanlpdU81eVlKUzFtakYyWm1ES24v?=
 =?utf-8?B?L3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C16397BDB71D6442804FB0638E763435@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43495e5e-3040-46b8-2aff-08dbe767b81c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 12:21:25.9438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wgN1zwTDT2tk/TvCrR17kQt1kPoT5P3VDipiN6FyTKeUS4U62iTyTxmSIFzBO379cMlUEkRxFcsVHNu4NnAeRBQOi4AOsXbl80uBjhhyNqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIFR2cnRrbywgZm9yIHNvbWUgcmVhc29uIGhlIGRpZG4ndCBnZXQgQ0NlZCBiZWZvcmUu
DQoNCg0KT24gRnJpLCAyMDIzLTExLTE3IGF0IDExOjI2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6DQo+IE9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDEwOjQxOjQzQU0gKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiBPbiBGcmksIE5vdiAxNywgMjAyMyBhdCAwODowNToyMUFN
ICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6DQo+ID4gPiBUaGFua3MgZm9yIHlvdXIgY29t
bWVudHMsIFZpbGxlIQ0KPiA+ID4gDQo+ID4gPiBPbiBGcmksIDIwMjMtMTEtMTcgYXQgMDk6MTkg
KzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gT24gVGh1LCBOb3YgMTYsIDIw
MjMgYXQgMDE6Mjc6MDBQTSArMDIwMCwgTHVjYSBDb2VsaG8gd3JvdGU6DQo+ID4gPiA+ID4gU2lu
Y2Ugd2UncmUgYWJzdHJhY3RpbmcgdGhlIGRpc3BsYXkgY29kZSBmcm9tIHRoZSB1bmRlcmx5aW5n
IGRyaXZlcg0KPiA+ID4gPiA+IChpLmUuIGk5MTUgdnMgeGUpLCB3ZSBjYW4ndCB1c2UgdGhlIHVu
Y29yZSdzIHNwaW5sb2NrIHRvIHByb3RlY3QNCj4gPiA+ID4gPiBjcml0aWNhbCBzZWN0aW9ucyBv
ZiBvdXIgY29kZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBZnRlciBmdXJ0aGVyIGluc3BlY3Rp
b24sIGl0IHNlZW1zIHRoYXQgdGhlIHNwaW5sb2NrIGlzIG5vdCBuZWVkZWQgYXQNCj4gPiA+ID4g
PiBhbGwgYW5kIHRoaXMgY2FuIGJlIGhhbmRsZWQgYnkgZGlzYWJsaW5nIHByZWVtcHRpb24gYW5k
IGludGVycnVwdHMNCj4gPiA+ID4gPiBpbnN0ZWFkLg0KPiA+ID4gPiANCj4gPiA+ID4gdW5jb3Jl
LmxvY2sgaGFzIG11bHRpcGxlIHB1cnBvc2VzOg0KPiA+ID4gPiAxLiBzZXJpYWxpemUgYWxsIHJl
Z2lzdGVyIGFjY2Vzc2VzIHRvIHRoZSBzYW1lIGNhY2hlbGluZSBhcyBvbg0KPiA+ID4gPiAgICBj
ZXJ0YWluIHBsYXRmb3JtcyB0aGF0IGNhbiBoYW5nIHRoZSBtYWNoaW5lDQo+ID4gPiANCj4gPiA+
IE9rYXksIGRvIHlvdSByZW1lbWJlciB3aGljaCBwbGF0Zm9ybXM/DQo+ID4gDQo+ID4gSFNXIGlz
IHRoZSBvbmUgSSByZW1lbWJlciBmb3Igc3VyZSBiZWluZyBhZmZlY3RlZC4NCj4gPiBBbHRob2d1
aCBJIGRvbid0IHJlY2FsbCBpZiBJIGV2ZXIgbWFuYWdlZCB0byBoYW5nIGl0DQo+ID4gdXNpbmcg
ZGlzcGxheSByZWdpc3RlcnMgc3BlY2lmaWNhbGx5LiBpbnRlbF9ncHVfdG9wDQo+ID4gY2VydGFp
bmx5IHdhcyB2ZXJ5IGdvb2QgYXQgcmVwcm9kdWNpbmcgdGhlIHByb2JsZW0uDQo+ID4gDQo+ID4g
PiBJIGNvdWxkbid0IGZpbmQgYW55IHJlZmVyZW5jZSB0bw0KPiA+ID4gdGhpcyByZWFzb24uIA0K
PiA+IA0KPiA+IElmIGFsbCBlbHNlIGZhaWxzIGdpdCBsb2cgaXMgeW91ciBmcmllbmQuDQo+IA0K
PiBJdCBzZWVtcyB0byBiZSBkb2N1bWVudGVkIGluIGludGVsX3VuY29yZS5oLiBUaG91Z2ggdGhh
dCBvbmUNCj4gbWVudGlvbnMgSVZCIGluc3RlYWQgb2YgSFNXIGZvciBzb21lIHJlYXNvbi4gSSBk
b24ndCByZWNhbGwNCj4gc2VlaW5nIGl0IG9uIElWQiBteXNlbGYsIGJ1dCBJIHN1cHBvc2UgaXQg
bWlnaHQgaGF2ZSBiZWVuIGFuDQo+IGlzc3VlIHRoZXJlIGFzIHdlbGwuIEhvdyBsb25nIHRoZSBw
cm9ibGVtIHJlbWFpbmVkIGFmdGVyIEhTVw0KPiBJIGhhdmUgbm8gaWRlYS4NCg0KT2gsIHNvbWVo
b3cgSSBtaXNzZWQgdGhhdC4gIFRoYW5rcy4NCg0KU28sIGl0IHNlZW1zIHRoYXQgdGhlIGxvY2tp
bmcgaXMgaW5kZWVkIG5lZWRlZC4gIEkgdGhpbmsgdGhlcmUgYXJlIHR3bw0Kb3B0aW9ucywgdGhl
bjoNCg0KMS4gR28gYmFjayB0byBteSBwcmV2aW91cyB2ZXJzaW9uIG9mIHRoZSBwYXRjaCwgd2hl
cmUgSSBoYWQgdGhlIHdyYXBwZXINCnRoYXQgZGlkbid0IGxvY2sgYW55dGhpbmcgb24gWGUgYW5k
IGltcGxlbWVudCB0aGUgZGlzcGxheSBwYXJ0IHdoZW4gd2UNCmdldCBhIHNpbWlsYXIgaW1wbGVt
ZW50YXRpb24gb2YgdGhlIHVuY29yZS5sb2NrIG9uIFhlIChpZiBldmVyIG5lZWRlZCkuDQoNCjIu
IEltcGxlbWVudCBhIGRpc3BsYXktbG9jYWwgbG9jayBmb3IgdGhpcywgYXMgc3VnZ2VzdGVkIGF0
IHNvbWUgcG9pbnQsDQppbmNsdWRpbmcgdGhlIG90aGVyIGludGVsX2RlKigpIGFjY2Vzc2VzLiAg
QnV0IGNhbiB3ZSBiZSBzdXJlIHRoYXQgaXQncw0KZW5vdWdoIHRvIHByb3RlY3Qgb25seSB0aGUg
cmVnaXN0ZXJzIGFjY2Vzc2VkIGJ5IHRoZSBkaXNwbGF5PyBJLmUuDQp3b24ndCBhY2Nlc3Npbmcg
ZGlzcGxheSByZWdpc3RlcnMgbm9uLXNlcmlhbGx5IGluIHJlbGF0aW9uIHRvIG5vbi0NCmRpc3Bs
YXkgcmVnaXN0ZXJzPw0KDQoNClByZWZlcmVuY2VzPw0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
