Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7320686CF85
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 17:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A032710E163;
	Thu, 29 Feb 2024 16:45:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UPqaKUzf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8154310E092;
 Thu, 29 Feb 2024 16:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709225102; x=1740761102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=W1VM0X8O08MY0KKCEXU7xGJe0VYR70IwuxkgNLOcNOc=;
 b=UPqaKUzfjstLXaUBEefWFKgqvBOBHx1K/twVE/D7WPnbGbw+iODIuRZ8
 4xrsC2E+O+UFG64/t7vPvInmW0EVCkRfSNqcGXKFtOX1AhwSTDfYFtpCP
 ebF0oDEDOnPAmn8aSKtF1f6yXc3rwmlhJtueEqcZyHzzwh6e5g4V3rRyG
 WsYN1v68LUzj7T2A4J3Gv7BntkEN/SMpe0Ji2yx5OmoELUQ80csmfc2BR
 P9EPbdfjru7sIpRTbKfcBTwuB7XtdBXd8vc5LHgMoM2yd2Jwn+3NO//01
 mPioqMUcZFpVfboT3WBREbwSKiGaeEeSznkQEtwkTySBuVgJSS1EdwQmA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3877203"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3877203"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 08:44:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12540109"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 08:44:53 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 08:44:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 08:44:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 08:44:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IMAthKTfz8Q/LUEAlPv9jUVf1fqOMQFjXAk6edeXuNtCPEtYi3fhpZ1HWofymt/5t/hzwMEmK3K0joSo9orQk6XSRAo0ncQzQrOBH8D+ZOMCidhK+v8qbImuLfyW7myhzIE5r4o7HEiF0s8M7eWgTUNAIW3/31sr/ADcvF6cbu4/UCqQfsBoXBIrRmAVInHLNQ1U0EVtbr4Qy6sxLCisrywEa5bDDiQLxNeMsQoJLbRa02faxryLZaVPW1zkUjdD3JKwapXic0j8KlBxkX67xIqt6u+iaFFQA9FinoVcreaQiBZf5KJtEdUpGBCjI+LnGZm0Frvjhkky2AOaa4W3qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W1VM0X8O08MY0KKCEXU7xGJe0VYR70IwuxkgNLOcNOc=;
 b=U9idtMWCeGYU2Rfi1zaAD+c5rxVp6FNwilHuE5Vd/469Ewzs0Gp62GI5llbTyFlGSJwM2tjHYp7D2QYObw9AdX9PazsTKCB295AC2PsUxmr8R/Z5Qmzv45VKGQ/bXv4mCsG2dYYYvhLzbuyuDLemjCa+mHEGEzI9InlSAJApABEQswZZIzhK7LYIlVOcd8CDkh2uOWeg1Qzl6rSoI10wmJHN+exmnxTPYyOy4M2nDeVe9nod4c8fnITrd7FaLT4gQNrOB8hxbLJtNje+APkoYXTl4ND2N+iLBYk8iaB4w3xDGZxAgmNK83Atp4o8mdo3Wm1Hv9LpA0lAGETn6w4WcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SN7PR11MB7994.namprd11.prod.outlook.com (2603:10b6:806:2e6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Thu, 29 Feb
 2024 16:44:48 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac%3]) with mapi id 15.20.7339.024; Thu, 29 Feb 2024
 16:44:48 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaak7SyehPNIvZvkGXeCdOLcfE4LEfyZaAgAG/AAA=
Date: Thu, 29 Feb 2024 16:44:48 +0000
Message-ID: <70165ba67dc882f9171fdc9d6807f0cd60ebfe19.camel@intel.com>
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
 <1dcc4bc35070f9da7f3f275e2765edb8f9a20e3c.camel@intel.com>
In-Reply-To: <1dcc4bc35070f9da7f3f275e2765edb8f9a20e3c.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SN7PR11MB7994:EE_
x-ms-office365-filtering-correlation-id: ab2d3419-944e-4762-19f3-08dc3945be4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E7OxnF90YBI57IF4MWEEoEVlU3fTlefkI+zNSGu8rd3cpKwBTtpbLi6jCvHjNXS/Y/bCfSwv+1VN54bEesYWMOrxjasR6ijlB8MRCXJ3Kx2uTvkizvJCZcRJDWd0AKyE9nL/xq1/nSLdzf++eMOkV0dimhUMvhQTLfWBhyb7/LfYetm8LtTBBDpr9MujiLHimPyKl7ouhOWau3IvxT8XwV/USJ5Djm8J3f3M369D9CtnptFrJS2Guuo1rDZ3YISjJ6sUe06FWIH1a865vDb+wqTaP/7jFMlAzuerG8TBTq2ezHojNDhHd7tzvS5ALdqbakgB5b3lP0ohjxPYGDe/9J5dEZU9PH1dOLBs2pc2WoproMXCWGZKzoXZoiXSo9M5NL4lvyuE2B0ukuyEs++cQdFnpTDJJWStsoa+/RNnFt1/Z7kdtnu+92VEZ9bPfN5LRrYU8qcpfjF2rWT25rYvc2wPrFfd6aTbs7FGG2JP1PfYAXrIM1YsivXhNta/NUqglWzxe838BOx4OMU6f+7xnsbv29VBgk+8XPdE75TjnUKAggY2VRiNiGbcvKmni/xv2JIIMQfAU2ExI1uQtrtp9CBJpF9UR2Nr3uNdHz3fdL3ouTGCRWgVAAI2Wi3hXWJ1IUom5NrvQvVckFA3UNnhCgg4UmeZ2PgkSnCfW4WsPyg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHFuMXJBK2h5ckNRMmFrUUdUeFY0d1dpaGZ2UnlyVTY5U1hSTU9jTVB3dDNX?=
 =?utf-8?B?MUd0QjZXRGJ5b0tjcUJRZHUzWks2dlZuOHphZ1AyVjJ1eWhqR1I1NUx3NEI0?=
 =?utf-8?B?NFhtTk9oODJKWk5FcDdHOXVveFZmVFRadFZXb0JaanFBWnVCQlRIbG9laDF0?=
 =?utf-8?B?cmxDRlVQQTJGZjd5U0VoZE5mNVNOWlBSRTBJeit2eUR3azN3WHQyb0lpQ0Jv?=
 =?utf-8?B?eitua1YyWXlJcWdaKzQrMFRkbHB5bG5lUzYzZENWYzREQ01MTFZJRWczdHlH?=
 =?utf-8?B?SkhWZ1c0ajlBd1g4SW5TMXNRUzdncUdYN245ZitHTUNmeW9PWDBvaXpNVEFu?=
 =?utf-8?B?ZENMeXJCR2QyaGpTdkgvT2t6aCtDZWtxY0I5MUNNaEsyejJ2T3puNEM3aEZ5?=
 =?utf-8?B?N3FCNEt4TEppTXJGRVpyL1dKRk05RjB5MW5MRnVhNWxmNHJrQ3VyNjUvZVNh?=
 =?utf-8?B?eHpsd1V5S3FLeDlUeG1FNkpCUFJBaEtZNFNYVDZlRzI1RGt1dmd1UVE1Tzkv?=
 =?utf-8?B?SThRUkZESWRWQ0NjUWdNVUoyUjl2emlZRmErQjhyT3hMSlhBZkFZTWR5U2tp?=
 =?utf-8?B?c0NDRDhCUCtGcmxkNkNRRjJEeUFneDJGWGlCOGdIRTlISGlERjVkSCtOcGZQ?=
 =?utf-8?B?V0ZsZEdob3g5Wmk2bUhHaSt2R0hldEI5dEs5WUJuMWIrT3prSnF5dk15TFcr?=
 =?utf-8?B?aFpBaHhoT3BTNUNSZExxS1ZuSjBBd3g4LzZaVFc3VmZMU0FVMjh1V0VnUXF2?=
 =?utf-8?B?YjhaVEkzS3JjVjEzaTBSNUNqNTRqQ2VOU25sUHdNTDNmemFjUW9pUlB1d0s0?=
 =?utf-8?B?aVZibnRoVDA2a2xsWGpkM2poYWpYU2ZaZGlTVXAzUG1GQ3Zray9lak9RVmJL?=
 =?utf-8?B?bGFraW5yZ0M1OGJJK2UyclEzbit6cFpvSGFuTlFwczNXQjBUNUVzQTI4UWZu?=
 =?utf-8?B?NGxyMUNRN1VtN2lZRUc4bFh5R0QxVnJPUUw1WjgwN0tPWlIwNnBPSzRoTlFV?=
 =?utf-8?B?b2hFbkExTU5wYkRLendFUFZKUEc1bGNNcC9GR2o1dnRnVjIzaC9CUEdVSnF6?=
 =?utf-8?B?UVZ5SWtwM3piU3NjVWFVRlU4ZGhTR0J1RHZQS0l4RjZaK2VMK2Q1ZnQrSTZU?=
 =?utf-8?B?Y0I4d2YyYUF1TCszYVorSEx2REpqUnFJeEhHTjlwc3pia0hLRGEzVTlBb0xE?=
 =?utf-8?B?VG1jTmJpRDN3L1gwVVZNejdKNmxOZUU1RERLUVMzQVNFbmkzekFWaDBienJR?=
 =?utf-8?B?bUtvYXV3UDdsTmIrZ1ZoM0gwTVJYSFY4Q0FNa0sxUUsrZlUrTVRCRDVRb0V3?=
 =?utf-8?B?cHo3Uzh1M3NRUUU3S1hyYW1jazg5UW1JL0Q4YlowRUJCRTFBc1EzNERmY0Zu?=
 =?utf-8?B?QityN3BZWGliQnpqSnpDNEYrN245L3hXOTc3eCtOV3V4YWwzcFRVTGZ1SHNx?=
 =?utf-8?B?NHdwQWNURGc2eWtJSnFJaTY2SGx1ZFF2b1dXTU1DdCtoVVRFZm5QN2JCbGxX?=
 =?utf-8?B?a0ZsZTQ5RCtmdzFKcFMzdmhTVUVwZDNqeHU3OXd6d0swSVQ5QTBmYjRPbXAy?=
 =?utf-8?B?MTZHdUxuMXQ3S1pVdStNb1QraVgzZVJna2lWd2FCRkdnRVRSSjZibnZPUlQ3?=
 =?utf-8?B?T2JWOU0wVFhER0dVdHV6U0lFaVNObFF1cUo2eEVXNFlWT2MzanpnVnQ2V2JW?=
 =?utf-8?B?RHdSTWV0TGFOeEdNZForbVJObE92dU8vMmhxdithREQrTUVsM0xSUWxmVlN1?=
 =?utf-8?B?SkxFOGsyQkZDTjdvWGllRElPaVlPUTZwU2xWQ3RZbkZ0VHB1MC9UcHBJTmhy?=
 =?utf-8?B?WFFmTFJBNUhHY0k2TmN4enM0bys0T09rR2FmRk1XWlczQ210SktXWlR0aXNm?=
 =?utf-8?B?aVpOY1VPclNRNThZaWhqaEIyWVlqaW5SbHBZSS9DSEdrMUFESXlyVWptRXBm?=
 =?utf-8?B?OCszOVlCQ0tiaVdqL2EvTzhvMS9iVUZOY3UwQVBZZExiQnI3bHNjcjFaUEds?=
 =?utf-8?B?SUloUlN4cUhicStjalhFWDhBOWRLRlJhK2xnbnp4ODBua3Y0N3crYmJCd2Vy?=
 =?utf-8?B?UW8wZTc2Y05lOEprSjF2dnF2U1JVSzIzcWdUK1IrRmM4QlhkeHZFZXJWbTFu?=
 =?utf-8?B?RWJqU3NpWjBObytIL0pnWjBuUnd0ZzBTSDRFQnNaNmtQVng4YWdSZjl1VGlF?=
 =?utf-8?B?SFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D865A4E912308245BE7A8AE061A54C6D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab2d3419-944e-4762-19f3-08dc3945be4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2024 16:44:48.7720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XKlUqEdO2PXx7OdvZAKc/3b+dAR0MCtE2B8ZQ7wrZS84wXX+ETkMAvOUXlj+1JueGeMSMv4Nm0cRPM813oMBCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7994
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

T24gV2VkLCAyMDI0LTAyLTI4IGF0IDA2OjA0IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBXZWQsIDIwMjQtMDItMjggYXQgMTY6MDIgKzAyMDAsIEp1aGEtUGVra2Eg
SGVpa2tpbGEgd3JvdGU6DQo+ID4gQXV4Q0NTIGZyYW1lYnVmZmVycyBkb24ndCB3b3JrIG9uIFhl
IGRyaXZlciBoZW5jZSBkaXNhYmxlIHRoZW0NCj4gPiBmcm9tIHBsYW5lIGNhcGFiaWxpdGllcyB1
bnRpbCB0aGV5IGFyZSBmaXhlZC4gRmxhdENDUyBmcmFtZWJ1ZmZlcnMNCj4gPiB3b3JrIGFuZCB0
aGV5IGFyZSBsZWZ0IGVuYWJsZWQuIENDUyBpcyBsZWZ0IHVudG91Y2hlZCBmb3IgaTkxNQ0KPiA+
IGRyaXZlci4NCj4gPiANCj4gDQo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KVGhpcyBuZWVkcyBhIEZpeGVzIHRhZyBzbyBpdCBn
ZXRzIGJhY2twb3J0ZWQgdG8gTGludXggNi44Lg0KDQo+IA0KPiA+IENsb3NlczogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvOTMzDQo+ID4gU2ln
bmVkLW9mZi1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWls
LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmMgfCAzICsrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gPiBpbmRleCBlOTQxZTJlNGZkMTQuLjg2MDU3NGQwNGY4OCAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJz
YWxfcGxhbmUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+ID4gQEAgLTIyOTUsNiArMjI5NSw5IEBAIHN0YXRpYyB1OCBza2xf
Z2V0X3BsYW5lX2NhcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gIAlpZiAo
SEFTXzRUSUxFKGk5MTUpKQ0KPiA+ICAJCWNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR180
Ow0KPiA+ICANCj4gPiArCWlmICghSVNfRU5BQkxFRChJOTE1KSAmJiAhSEFTX0ZMQVRfQ0NTKGk5
MTUpKQ0KPiA+ICsJCXJldHVybiBjYXBzOw0KPiA+ICsNCj4gPiAgCWlmIChza2xfcGxhbmVfaGFz
X3JjX2NjcyhpOTE1LCBwaXBlLCBwbGFuZV9pZCkpIHsNCj4gPiAgCQljYXBzIHw9IElOVEVMX1BM
QU5FX0NBUF9DQ1NfUkM7DQo+ID4gIAkJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0KPiAN
Cg0K
