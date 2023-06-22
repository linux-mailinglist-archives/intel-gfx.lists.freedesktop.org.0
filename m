Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA75C73A0CC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 14:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05B810E554;
	Thu, 22 Jun 2023 12:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD2A10E554
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 12:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687436720; x=1718972720;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LAIJENRjL09HHkgrk8FkVzMh5NHSm+kwzfx+Egpfj2o=;
 b=XandaNHWLdTat2CXHrCIxa4R6Qs7rRbIcRFCS4oeTLKkyU3DTFyEhlWv
 1GM3HEcY8z7rLLaQ4RAo64Dxcd+8f8AbC8RQuMMntaWfGhBss8U2ZSCyB
 JSWu5w/DKh5vs3PaQ/XBReR06jaEDAUXDGhV82GoSfAQb7WG6rrbidypL
 YXn2OCkqkvnpoliZZO5l46a1hFP/lHacJJ/qA6kLe2oTiimdKMw6wA64L
 xN653dc1wMQ+ROEyRtbbySa1E91FIWCfyK10FBUp3HRElx74I5gAGvUp0
 c+fG2gEmV1KIQaGtSuOSO2rUeNAmUO7WR0wvvHgBxrcRkVzciIYXklrbt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="360489541"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="360489541"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 05:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="839028344"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="839028344"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2023 05:25:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 05:25:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 05:25:19 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 05:25:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iJVbWuVv/mE//lpmS8kV7oc1wqyRYjNHVlM9XR63++vOobmdsMYTipXlwNcektOL38hRo5aj+i9FcCAej1F5TLV9ZV/F+VmqzbFnEpWBC/cxtBnNzApimafEyB7Ct9g082Bsyt/K9SVwVSeGJUAE91lvEzaBN0YkFgnuvaTH0HsoS34lDSZSI+6BDFyDcZFQSsnzdwosUsbq6WA04Z+U8FvfjRKwhLdf9oW8AbEoscawWIYy8d5LqB9/RBUpMJ7jSrmR79K2G9jmqsFTo33+1k8byMcn6MTP0GAv//vG8NlegnUMxfojdrocvVlFFZsK/i9TkmmcEZsTko0yuI58xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LAIJENRjL09HHkgrk8FkVzMh5NHSm+kwzfx+Egpfj2o=;
 b=Zd004wvCkPFDQ3xop9SLnPStiV6S8z5TILLAYIm46icxVmd0A9yRMy1GVNf+o8pYhlVYQHICedu+IlMU2KSTDWssBFlavVtzgbK6nQnFGq7IE69A4Cuda60nnnve1LZ8MFsGKzzOX2udEOB1nqC2c3x/8mwDvnw5/cY8vcx69qmBShd7dPSqaErCaW6bdXgFdMEdOfxEdp28FIYXKlaDPzcHQS/K5M7tZjD/z1dWMrRaytd44oNJlEBMrmwxoQGk1naGG5EcAGa6+2vNFlmAXDjfj6dQZnFIrbTA5ABQZxR1GTCfKkOScgqbxeLdQoznpeN3TjVoP2h+yHPDBFc+sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL3PR11MB5683.namprd11.prod.outlook.com (2603:10b6:208:33e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 12:25:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 12:25:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915: Prevent needless toggling of
 DC states during modesets
Thread-Index: AQHZoIOLDCEP0ye3UUmMhd+Ax992R6+WmYMAgAApOACAAAVuAA==
Date: Thu, 22 Jun 2023 12:25:15 +0000
Message-ID: <5e0ac504839d6668dd4eceacb5a5097b0c5c1267.camel@intel.com>
References: <20230616185104.2502003-1-imre.deak@intel.com>
 <20230616185104.2502003-4-imre.deak@intel.com>
 <d710121ff42741cd1bf05d60361b731775acbfec.camel@intel.com>
 <ZJQ5HJk2B5G9bzt2@ideak-desk>
In-Reply-To: <ZJQ5HJk2B5G9bzt2@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL3PR11MB5683:EE_
x-ms-office365-filtering-correlation-id: 4c1f3568-eba4-4f3d-0966-08db731bbc1e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DSehreptzWgkVV6lcCpT4YkhJj2J6igPXfhcy9k1q71mRkLfCnIK0UOCANoZkVmXZK8IJzHPcb7Ek8oduymdA1TMPfDZ+NPjc8/TNxM4k45Ztzxek1hFrC+NM6hejcLr9oNowXfYcMbp/rurSRNd4iEZBEg0zXj4j3IPJj4v3oumEyh1eOTuT2ah6a2Ykz4TRsVwxMPxt/lZ2uQkPe/uaelR6JG1ZGxXG+lw7a2ZMob1N9yLbcSLvSwqSoicDPpVV1mjlxqxu8FYEqZl9M5VTEFZp7UFKBIVYPhPcQd0jmnaIfb1BWJTbGqK3gS4CS6MHBC3xXM3uy6D4m0VTOBD0R5kwI0mBpU34BtOn7cbOIgS2V11Kc+iEVYUGjBLDbWyhIRk2PbCvwcP0OSaFMFoXNQdTg190Vd1s57MZK7W1mbnnhOUHi1xe24dn3vdqfd3RruV+qUugSkX3spbHI1wPKsTrH+0zJKnp6Ax+tEqoB1o/rXHQXSUsUOFFhg5MH3Yz8tHm3MzNQwogFZLDevRtHQBox7MEzFK1A8ix2vkhmUdw1ATogShEKtLww1Q+hOV5YuQhvtKmYolfTsPL2X8NJx84jUkXvBXDL6zX78pfo28wx2NheFN3JdOb4UQzZ/s
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(346002)(376002)(396003)(451199021)(6486002)(8936002)(76116006)(91956017)(4326008)(38070700005)(37006003)(478600001)(71200400001)(6636002)(26005)(6512007)(66574015)(186003)(6506007)(2616005)(122000001)(86362001)(5660300002)(66946007)(36756003)(38100700002)(2906002)(316002)(8676002)(41300700001)(66446008)(64756008)(66556008)(66476007)(83380400001)(82960400001)(6862004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2xPcko0a0hia2x2NFgybXBpellwTS9Kb2hCbzBJZCtlT3V0N3hVeTBsTkY1?=
 =?utf-8?B?a2M3VWZrNXlGWHVpdGdQTENTSi9EeTB5TkI2Rlo4eTlGNUlZUDF4b0ZMTWd0?=
 =?utf-8?B?dTFIOEhiK1FVWm1QR091RUE1Mi9QSWxweGhOQUpraHAzTDR1QlhKdy9LanFy?=
 =?utf-8?B?Wk1UYmpPSU4wRlZIeG9aVGVEcE1sSFpqMExBQUNIaUFzdGdiY29xV0JXTm5U?=
 =?utf-8?B?Rk13Q3FrR0hDczJaYjdPQjJtNWNMTnd6K2ozeDlSNlV6dmVkZ2R0eHNIZ1FH?=
 =?utf-8?B?eXE0dDlIbzRHMFZwamlPTjdrc1Y5dnhsU1ZrRXNwUTEvbmxCMWR2c3pzNlUr?=
 =?utf-8?B?ZEN5L0htN3h6bFNPN3dNU25xYUc4aVlmS3kvSGZRM3hSaDFib0dHVU1rbmZr?=
 =?utf-8?B?RlFSdjdPV2RVaHcraUMrZjNwV3hmUmgvUjlKdHUyKzBHQmt0WCthZ0J4VU5F?=
 =?utf-8?B?MlNZczhrb05uZTArSXMya3RyQlVHZ2p1a0ZrWDJhU3FmTHFySWRvTExaMW5C?=
 =?utf-8?B?MFk5eEFZcG5TZ1RNb2c2aGh1cXM4NGpzakZ0TFhzK2FNenU4STZJWW1SYjB6?=
 =?utf-8?B?SmhDbnFrM0hITmpYN1QwY1gxQkpYMkg1TDdRVTFiaCtBMm96L2REZlV4MlZ0?=
 =?utf-8?B?MFAvcDRBWmtDdm1MVnBrRWNNNEp5Ri9GY1pDeURubDJOVkxSZGk5S2JpQWZH?=
 =?utf-8?B?blNGakxOQTFKaFFMQUJjeFdycXl0bVdsMGowaENhTkJKVlZnR3VOOHdQUVB6?=
 =?utf-8?B?M1hvTHhOc3NuRktKSlF2T3pRN0tVN3ExT1lwUGdpUHlJaXhiMUFtK0pqVDhk?=
 =?utf-8?B?ZmF2YmphRnd2VVd5RDV0S0pzOFI5b3lndU05bVhIMVBReXdmRjNGUXFLMG5L?=
 =?utf-8?B?Q2tHNWNCUnA5STB1SGNIRXNjRnhXN2V0QUszTitZaXJvcVdNVUdESkJzM3RZ?=
 =?utf-8?B?UEpsUkg2SklpcXh2RDlFUy9uM2owQWU3L2svdXFkN1FtNWp1ZUppZHVPV0I4?=
 =?utf-8?B?bFMwdmVibnVQN0JNcFV4V3VXU1ppL08reGd0OUJhSTBwbkMvWU5qMFNtS2V3?=
 =?utf-8?B?RU5LRTQ4V1FXS05ycVp5L1g3SFhVR3ViSDVRTHpITnlkVUJjZjVMNWM0alhh?=
 =?utf-8?B?UHZCYzVjdUtTZE9XT1FRUzRYNWN1VVp0OFViUloyTkh1aUdWeEo3TEFNb09L?=
 =?utf-8?B?UGZjN3RuQ3NuOHk4Si9HS2tMUk1tOU5CTUVic1psbkkvZVdzeVVTdEFSUUtM?=
 =?utf-8?B?ZUtudERJNDI5eUxBTEdHQ0dZUVArcE11VjZTejR1Tk5Dcm1wUGdXV3JhTjIy?=
 =?utf-8?B?UjFLQnc4V3krUjdKSHMzaC9BSkNnL2Fqd09FWmF2N2pvaVF6UkR0ZitxMWlO?=
 =?utf-8?B?WlZydndMd3hqQ2krSEUrY2YxYUZZSHdpNHNXQlFrMDlmU085anZFVWoyd1NX?=
 =?utf-8?B?dlFycjc4OVkvbEdhOUV5Sm9Za0pKaTNIdGZKaUJTdEtVT3ZzMk5DWkM5YkJa?=
 =?utf-8?B?MDV2eGZuNEM5TGFweTFHVWNYVGZzN0JRek01VDlpeU9CS2xnemRpSE4rTHFs?=
 =?utf-8?B?SlRuVkdCV1lLM0p2QTFhdU14TXJEMWNVdFZYcytWR1lobnd5NVkweTQxcGZG?=
 =?utf-8?B?NHhVUE9QSDRBN0tnL1FCUE9DV2xHTGJ4ZXdPS1NVaTNWNTRxd3pQZWdhMDR2?=
 =?utf-8?B?RzY2SWZ3MzcybkVnUkFaOUp4d2RnTTRhS3ZoQnZ4T0NsOXkwWWhHUkxNaTY4?=
 =?utf-8?B?WFN4cDhiWW5kc0Z5QkVINnkvRHZOemJpS0NoTTYxZS9iNGpVVVV2eFhVdnQx?=
 =?utf-8?B?SFh0T2l6cEcvVGt5V0toVXhBclV6YjY2UElxZGdsYkdwMExwSlZVcGJGbXJQ?=
 =?utf-8?B?ZGpRc3h6U2hsWGJLTCtFell0YXgwcjFtL0xFUmowNlV6WlczaXR1alM4SmFh?=
 =?utf-8?B?OVBIMWR2TkZJSFJtVnZsYXcwVlAvS2lJUDlkWWkvNU5BQjRRNW9UWjJSTEZ1?=
 =?utf-8?B?VFl3U1dLV3FHdjJoMEFVemRYbmx5UUx1TVBmdCtBbHNtZG96YjM1RGpvY081?=
 =?utf-8?B?dG1WZXdFZExHUzRqVnhSSTdFNWhNMUJ4cW9ZRU5PWHZGYmxZekhqUklFbTB1?=
 =?utf-8?B?QWRGVzUxNGQ4QUFwaTFwRW0xS0oyWjdKeml2czR4NWxYQjJTNzZ6TGdqWmVF?=
 =?utf-8?B?OWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7533233CBA9D88428425703F6386F4E5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c1f3568-eba4-4f3d-0966-08db731bbc1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 12:25:15.9987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6KpNPmc7YKIfdjmFKvMp9o3rEDLQ3z65vTbztDL8aI99J92lE9jlmwm5d1KU1n+GlxvKA+Hxo0TzgF8vJO6M1N7E7grRvHpevez0DCmGLWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5683
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Prevent needless toggling of
 DC states during modesets
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA2LTIyIGF0IDE1OjA1ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFRodSwgSnVuIDIyLCAyMDIzIGF0IDEyOjM4OjE3UE0gKzAzMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBGcmksIDIwMjMtMDYtMTYgYXQgMjE6NTEgKzAzMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiA+IERDIHN0YXRlcyBhcmUgZGlzYWJsZWQgLyByZS1lbmFibGVkIGFyb3VuZCBl
YWNoIG1vZGVzZXQsIHdoaWNoDQo+ID4gPiBtYXkNCj4gPiA+IGxlYWQgdG8gYSBuZWVkbGVzcyBv
ZmYtPm9uLT5vZmYgdG9nZ2xpbmcgb2YgdGhlIERDX29mZiBwb3dlcg0KPiA+ID4gd2VsbC4NCj4g
PiA+IFRoaXMgaGFzIHNvbWUgb3ZlcmhlYWQgYXMgdG9nZ2xpbmcgREMgc3RhdGVzIGludm9sdmVz
IHJ1bm5pbmcgYQ0KPiA+ID4gRE1DDQo+ID4gPiBmaXJtd2FyZSBoYW5kbGVyIGFuZCBhbHNvIHJ1
bm5pbmcgYSBwZXJpb2RpYyBmaXJtd2FyZSBoYW5kbGVyDQo+ID4gPiB3aGlsZQ0KPiA+ID4gREMg
c3RhdGVzIGFyZSBlbmFibGVkLiBUaGUgbGltaXQgb2Ygd2hlbiBEQyBzdGF0ZXMgaGF2ZSBhIGJl
bmVmaXQNCj4gPiA+IGlzDQo+ID4gPiBhdCAzMCBGUFMgKHVzaW5nIERDM2NvKSBhbmQgYmVsb3cg
MzAgRlBTICh1c2luZyBEQzUvNiksIHdoZXJlIHRoZQ0KPiA+ID4gZmlybXdhcmUgY2FuIGFjdHVh
bGx5IGRpc2FibGUgY2xvY2tzIC8gcG93ZXIgb2ZmIHBvd2VyIHdlbGxzLg0KPiA+ID4gQWNjb3Jk
aW5nbHkgZGVsYXkgcG93ZXJpbmcgb2ZmIHRoZSBEQ19vZmYgcG93ZXJ3ZWxsICh3aGljaA0KPiA+
ID4gcmUtZW5hYmxlcyBEQyBzdGF0ZXMpIGJ5IDE3IG1zIGF0IHRoZSBlbmQgb2YgYSBtb2Rlc2V0
IHRvIGF2b2lkDQo+ID4gPiB0aGUNCj4gPiA+IGFib3ZlIG92ZXJoZWFkIGF0IG9yIGFib3ZlIDYw
IEZQUy4NCj4gPiANCj4gPiBJJ20gd29uZGVyaW5nIGluIHdoaWNoIGNhc2UgdGhpcyB0b2dnbGlu
ZyB3b3VsZCBoYXBwZW4gYW5kIGhvdyB0aGUNCj4gPiBwYXRjaCBoZWxwcyBpdC4NCj4gDQo+IEl0
IGhhcHBlbnMgYXJvdW5kIGVhY2ggbW9kZXNldCBpbiBjYXNlcyBEQyBzdGF0ZXMgYXJlIGFsbG93
ZWQgYnkgdGhlDQo+IGVuYWJsZWQgb3V0cHV0cy4gRm9yIGluc3RhbmNlIGEgc2luZ2xlIGVEUCBv
dXRwdXQgZW5hYmxlZCBhbmQgdXNlcg0KPiBzcGFjZQ0KPiBkb2luZyBiYWNrLXRvLWJhY2sgcGFn
ZSBmbGlwcGluZyAoaXNzdWluZyBhIG5ldyBmbGlwIG9uY2UgdGhlDQo+IHByZXZpb3VzDQo+IG9u
ZSBjb21wbGV0ZXMpLiBUaGUgcmVhc29uIHRvIGF2b2lkIHRoZQ0KPiBkaXNhYmxlIERDIHN0YXRl
IC0+IGZsaXAgLT4gcmUtZW5hYmxlIERDIHN0YXRlDQo+IHRvZ2dsaW5nIG9mIERDIHN0YXRlcyBh
cm91bmQgZWFjaCBmbGlwIGluIHRoaXMgY2FzZSBpcyB0byBhdm9pZCB0aGUNCj4gb3ZlcmhlYWQg
b2YgdGhlIERNQyBGVyBoYW5kbGVycyBydW5uaW5nIEkgZGVzY3JpYmVkIGFib3ZlIChhcyB0aGUN
Cj4gZmlybXdhcmUgd29uJ3QgYWN0dWFsbHkgZ2V0IHRvIGVudGVyIERDIHN0YXRlcyBhbnl3YXkp
Lg0KPiANCj4gPiBXZSBoYXZlIFBTUiBpZGxlIGZyYW1lcyBjb25maWd1cmVkID4gNi4gSS5lLiBP
bmx5IGFmdGVyIDYgZnJhbWVzDQo+ID4gd2l0aG91dCBjaGFuZ2VzIG91ciBIVyBpcyBzdXBwb3Nl
ZCB0byBlbnRlciBEQzUvNi4gVGhpcyBpcyBwdXJlbHkNCj4gPiB3aXRoDQo+ID4gUFNSIGdsYXNz
ZXMgb24uIERvIHdlIGhhdmUgc29tZSBvdGhlciAodGhhbiBQU1IpIHVzZS1jYXNlIHRoaXMgaXMN
Cj4gPiB0YXJnZXRpbmcgd2hlcmUgREM1L0RDNiB3b3VsZCBiZSBwb3NzaWJsZSB3aGlsZSBkaXNw
bGF5IGlzIG9uPw0KPiANCj4gREMzY28gd291bGQgYWxsb3cgdGhlIERNQyBGVyB0byBlbnRlciBE
QyBzdGF0ZXMgKGFjdHVhbGx5IGRpc2FibGluZw0KPiBjbG9ja3MvcG93ZXIgd2VsbHMpIGFmdGVy
IGVhY2ggZnJhbWUgYXQgMzAgRlBTLg0KDQpUaGFuayB5b3UgZm9yIHRoZSBjbGFyaWZpY2F0aW9u
LiBGb3IgdGhlIHdob2xlIHNldDoNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNiArKysrKy0NCj4gPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4gDQo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiA+IGluZGV4IGRkNTJjNjg5MjY3ZjQuLmRlNzdkMTMwZDZmOWYgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+
IEBAIC03MTQ4LDcgKzcxNDgsMTEgQEAgc3RhdGljIHZvaWQNCj4gPiA+IGludGVsX2F0b21pY19j
b21taXRfdGFpbChzdHJ1Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiBpbnRlbF91bmNvcmVfYXJtX3VuY2xhaW1lZF9tbWlv
X2RldGVjdGlvbigmZGV2X3ByaXYtDQo+ID4gPiA+IHVuY29yZSk7DQo+ID4gPiDCoMKgwqDCoMKg
wqDCoCB9DQo+ID4gPiAtwqDCoMKgwqDCoMKgIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9w
cml2LCBQT1dFUl9ET01BSU5fRENfT0ZGLA0KPiA+ID4gd2FrZXJlZik7DQo+ID4gPiArwqDCoMKg
wqDCoMKgIC8qDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBEZWxheSByZS1lbmFibGluZyBEQyBz
dGF0ZXMgYnkgMTcgbXMgdG8gYXZvaWQgdGhlIG9mZi0NCj4gPiA+ID5vbi0NCj4gPiA+ID4gb2Zm
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiB0b2dnbGluZyBvdmVyaGVhZCBhdCBhbmQgYWJvdmUg
NjAgRlBTLg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gPiArwqDCoMKgwqDCoMKgIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jX2RlbGF5KGRldl9wcml2LA0KPiA+ID4gUE9XRVJf
RE9NQUlOX0RDX09GRiwgd2FrZXJlZiwgMTcpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqAgaW50ZWxf
cnVudGltZV9wbV9wdXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCBzdGF0ZS0NCj4gPiA+ID53YWtl
cmVmKTsNCj4gPiA+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqAgLyoNCj4gPiANCg0K
