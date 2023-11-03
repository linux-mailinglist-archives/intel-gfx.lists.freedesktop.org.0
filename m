Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C37E002C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 11:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522C710E4F4;
	Fri,  3 Nov 2023 10:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9932C10E081
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 10:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699006595; x=1730542595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0U+MWb7bxJSiFUJ2GiqhQ1GZyMotLElIeCii4lOUikU=;
 b=fPZrx/cvB0r3r9O0r3sJCV7EzQdLKqpQSdVvMrjoxEykfxUGo50awpEG
 UzlLKF0P/0evWfekxlq5b/CTm6phU66otCECUVIGBSNYcYNA0FwoLxa3v
 tIOiNDP6QXS5DDA8hliKgM7tE+TKeI+E5oXZIASTnwCtG+q/Pi4WBHHSx
 ImDJmsmEs0iPFOCfc79aaN/fNswotssfhUttJLRYABl5h875ExTrgYvTS
 bshxovQpwi5Xp48QLCwjrnjktRqIVy7fEfT7+5o3g1i6F4u/Ra+vq1eId
 qgyaxUDDF2zEi6f+IJk9MgK64ybHo/CW5cv1MMYYNH1KiTRfy7vXqHoVD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453216663"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="453216663"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 03:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="9335487"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 03:16:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 03:16:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 03:16:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 03:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jtau/Y6Y3IzOZ+6a9wPAqjKRbB76c/wx1YoTuLj05FdKZiNoKpqk+GJ2elVzBgR8ppXexYa81jw396NVXgITIuGVAGbz2qiu5KuH93/mbHVoUmdhrYaGxpRBwXafdq2uiwbT0visk/NO8hH3Nh3wUxbREPjH6gzefdlLdUkdBsJLxwfzteHYxhr1pSppZmCuUiQKRew4vsgxrUWk3N+yWLmoRy5/nkVS9ot031VBnkA1W+9yURxAb6Q/5t1c4q25Gp8WVK6tUflqXoPpv3g5XVWBIJ/+DKcFZ48rOOTkSzPeunKDhkHqiC5+BS62zo1THAu7rCDO9IBORyxrWuEZHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0U+MWb7bxJSiFUJ2GiqhQ1GZyMotLElIeCii4lOUikU=;
 b=jBLedMzWYtkRqvIqgcficfiErNg3lJIIRhU8kT8F0h+xONGEzGd24+dlpEnkkX9KIgc+EbBHuqoGcgbGiNEBrTU4aKf5JBKIyKNqr8x2JJlUYryRzkHVrPRihuukdKmDKCTiCevb2A1bBooQcF/JypUeYhGo2wkiGT8rsXOFUeBKO8Cv6Q0A//FqtMpsk2WcZ8ffS+nALko/s0upGVF2uml0MYkdr6uHYXWctfkaoVp/iI9wKRAGS8k0x77lAl92metQCnJPLIwgQXkTRXvjR1r/U7zMiJwpuIRbI3NyMzaRTIdB5PqIAuhDM0O76uvPTl/OkqvLqmCk6Z+l6TW0Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB6663.namprd11.prod.outlook.com (2603:10b6:806:257::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 10:16:31 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5%7]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 10:16:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
Thread-Index: AQHaDdwm1n52JxgDZkeJWhw+2JJxDrBoUqyAgAAPMIA=
Date: Fri, 3 Nov 2023 10:16:24 +0000
Message-ID: <012689430a23b635e409bbc6b65eed0b985e90fb.camel@intel.com>
References: <20231102222941.144583-1-vinod.govindapillai@intel.com>
 <20231102222941.144583-2-vinod.govindapillai@intel.com>
 <87msvv19ag.fsf@intel.com>
In-Reply-To: <87msvv19ag.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB6663:EE_
x-ms-office365-filtering-correlation-id: 00deb116-83ce-477a-0fe3-08dbdc55ef25
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zVH+KKrgKoukhGilBIrw0skbzWIz4LrL1twuT4Pz8aeJRhqunc+ykumoRM2czkq4NGezK990TL5CZZCYgxaTVgAB6X/6ZQW1Oiw/g1L09GxaXAOetzjcD5m8ZLW+PCQV4N49LKmaGxxyojguke0zcpQ28LVXx8UhgHYfwMPuDT57Po6X73ZsAQThH3XZNNwaX1wslJ/70v0gKiZPBBNYiqqRPQ0NC5rTCF70f3gtOGtKDgg4yu/P2/NlXJl50DUhvzEiS4e9s3rn07E+fsSo4l9d5aIYa+s2qGihPZ8MMjiCzj7yCdJRW/TQke1veru3eli4z2PUh/prwUIakm2cSgY+F4hSNCAUG68NAnvPDhr325Xc9suVjDl6Ni0o3+pZ8nEEbLwIA/T8RVpjWlBIol54Jcx7lRP1YjehGY4xVjDSYj/7HsLMwb5Z7Md7ApdNbyra4WU4SAZ4TjYdkKE+ltL5B753k2etogPwINAl7Bpev5HDIfxv8d9q00BSx18SGy/X8nNa7Qj3J6eyrqhgb7eRSZsdWS0rgLyuWgvNDkUVsub0lAC+wtWmUOrLAHLlE8kRLCk/rBXO2mESWnUhzNAKhAHaxAoyJL70VnueNOo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(396003)(136003)(39860400002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(71200400001)(122000001)(2616005)(26005)(38070700009)(8936002)(4326008)(8676002)(86362001)(2906002)(36756003)(41300700001)(82960400001)(6486002)(966005)(91956017)(316002)(66556008)(478600001)(66946007)(66446008)(110136005)(66476007)(76116006)(64756008)(6506007)(6512007)(5660300002)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2F5aFJUUTd0NGxiM3RHNGdTUmZTMmJXUTlHYzRCVERpbDJ5eVNucytXQVVn?=
 =?utf-8?B?MGtpeG5wWTVYMmZjU2QvS2hkUkdiNnE3cUI1YVFkV1lVZVl2OTl4SGdVZmFX?=
 =?utf-8?B?R0V0M1U2V1ZJUFlHb0UrZFduS2dkSzBMWDkrYkY2TzJZKytFUm9IODMrRHBQ?=
 =?utf-8?B?d3hVT2c5ZEppQ0VDUGdVbUxPWjNTWDI0WFY3aXVwWTJacHJkWmlFR3p2a1hn?=
 =?utf-8?B?aGFnWi9wYzVISE12M3ZNS1ZRUXRnTmZkSmxjSFRLM3F6Y1VhWFZCZUpNUld1?=
 =?utf-8?B?VXBDTis0T3BoZEVDclBiL2Q1RGFlZjVYWHg4TFpoUmVxYzdBaFUreDZ1UHF4?=
 =?utf-8?B?elprZ3J0cmp6Q1h2UEdrSmpSZEd2TXNTWkhnRnJlRExwR2thSGMwZnRDcUV1?=
 =?utf-8?B?YlVEN3Y2Q1daaXFHZnpIODJqaEJuczd6UjA2ZVphRksrNWRXdzA0SUwvd0Vr?=
 =?utf-8?B?SHJNREVpS1lPOVZnUXJYL3BuUi95QmU2aXB5ZTFZbXZIaHBGRTVROWxmNXN3?=
 =?utf-8?B?UnZWM0JqQWxtdEdPc2lueDZ6ZUlFUFdDT04wbXl5cWg4czVjZk1UNGpZdzk5?=
 =?utf-8?B?dmxZb09ZcWROT1Fnc1FuLzdST0dOLy90cUgxZmFCdHYyTjVWNlg3OWpGRng1?=
 =?utf-8?B?blpMcWNPUmFiNUhlNDU4V3gwM0N4SDNGN3RYUlVnaHRFWi9JQTJWOStvMHV0?=
 =?utf-8?B?WHZiTXMzalZnWWI2dTNJYlpHODJwM3BqMVpONkdZM3RZQkM2ampEcy9QRWhH?=
 =?utf-8?B?ZUxZRkRCZlVkYitYVEpwYStpN1R3QzlwSmRHRVpKcUEvV1ZmTTBNSGZxK0Jz?=
 =?utf-8?B?ODFOcWJ6SzRTNTBHWEJtR3VKbDRYU1pkbDFmQWZzbkFSc3RHbWh2NkxrMDRj?=
 =?utf-8?B?TXBMbGI0RFFxVXBUckhXaS9Bb25yRzVsdGNhcW5xdzhUSUt2cW5SL1lsdWJi?=
 =?utf-8?B?TVhFR0JtTjhYQmRCTExQbm9BS29GaUw4V2hLZHZuQVBlN0ZDV3A3bGNlc1hS?=
 =?utf-8?B?YTJmaWpoU01qa2k5QnN6Q3YwaU5ud3AvYnFWbnQxTytDSTF6S0YxNkRIY2tk?=
 =?utf-8?B?TjFFNUhVRXVzbTdrcng3aFJ1ajhiakhZMVNVdXpRcmZhTmRKVXErVDVRUUVm?=
 =?utf-8?B?WG1MSmFmTEU0WjBxNnhqeERtT2NTUERaUXU1RS91eWdDbElLVFlmZFVZa0Ex?=
 =?utf-8?B?U0w3M2t0QnJibGRVQ0JIYUNOTkNBQmMxRDVyaFNDSnB3dnRndElDYTRpZnA1?=
 =?utf-8?B?ZDVxRDI4bDIxM2dMc2s1anV2dHFIcUI3S1NPUGQ5WCtnY2NHNmVUTm43c3ZP?=
 =?utf-8?B?SSs4WUk5UmprMFZYL2NscWJ1ejRiWUhjT0NSUzFaOC9UT3BTZDNSS1I0M3FY?=
 =?utf-8?B?R3ZWVjAxMTQvRkFrN0duL281YWtFOWRGSEFGOVRsYlNZWmtsWEJwMi83V3Jx?=
 =?utf-8?B?WDZzdnN5dERXWTZvZUgwQk5NdnkrREQ2U3kveWhRSCtDZkFzUGx4Y21Lb3Nw?=
 =?utf-8?B?T3cxcWU0TnVsVUs3eXdWQ1RwcDZJUk9ZNzBJb2RGYXFVZFlBUXdRSm1nQXpG?=
 =?utf-8?B?cnAwelp0SXl3RG5hWCtQNkFQdndCNUJTaG1zNWxOUnRhMTNLeWh5QmVtQU9E?=
 =?utf-8?B?LzVCdmd5RE85UkVwQWFqYzhpeXd3alR1YmE0b25BQktTNHBQcjVud3QrNW5H?=
 =?utf-8?B?dDZLSXMyU1dUK1kxSzNoVm55WkhhS0lsTFViSm9DWDc4RlhJc3NCT1FUakRG?=
 =?utf-8?B?ZjV1b3JUSEg1aHEwSXVQQlkyNU9Oa2xGRDRWQkJzd0gzRHprR0hKVDNwZlM5?=
 =?utf-8?B?R29wb0RIYStqTWVjdnpFY2k4SVIrT1pBNTczUlIxL2NET1JBWndQd3NZL1k5?=
 =?utf-8?B?YzUzRE5PSjJSV0xlNE5tWjNZME82TE5Mcm02NVA1UnB4b2JqeXc4OGdHVncx?=
 =?utf-8?B?NkFmWUdhNUFma2ZURS9aZ09ES3ZHTndOS0sxZ3U0Zk5HZU4rQTF5K2ZHR1Bn?=
 =?utf-8?B?TFduSEhpZnFqUFVUa1dkNEt4U2E2VUNZWTVJWW5IazdzQUZMRStRa0lnVmlw?=
 =?utf-8?B?a0h1SnQ0QzFvNkFqYlpVbUd4blNqRVdwemx0MHJwdDFOVkh2aDFBQXVSeHZB?=
 =?utf-8?B?U1AxNjczRnFYV0dKRVlIS21SYUVDWUNIejBWeFZjMUQ0MHFKaUVBdGRBYzhG?=
 =?utf-8?Q?ulb3dq8d+q034zmI6rzeksg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C005548E26583547B8368E4B4BB19146@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00deb116-83ce-477a-0fe3-08dbdc55ef25
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 10:16:24.5581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k3/G60QTkrffZtV0DQgQCVq1TWCf6aV5LqzBzCnfwvc+cYTu0jC/3LFXKo1eR9n1b0IMgpRsMe4n2V4/C7Wn/qL+8cgB/o4iP2h+1LFhSvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6663
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCg0KT24gRnJpLCAyMDIzLTExLTAzIGF0IDExOjIxICswMjAwLCBKYW5pIE5pa3VsYSB3
cm90ZToNCj4gT24gRnJpLCAwMyBOb3YgMjAyMywgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2Qu
Z292aW5kYXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEltcGxlbWVudCB0aGUgYWx0ZXJu
YXRlIFdBIGZvciB0aGUgdW5kZXJydW5zIHdoZW4gYm90aCBQU1IyDQo+ID4gYW5kIEZCQyBpcyBl
bmFibGVkLg0KPiANCj4gQnV0IHdlIGRvbid0IGVuYWJsZSBGQkMgd2hlbiBQU1IyIGlzIGVuYWJs
ZWQsIGZvciBkaXNwbGF5IDEyKy4NCj4gDQo+IFNlZSBpbnRlbF9mYmMuYyBsaW5lIDEyMDAgb3Ig
c28uDQoNClllcy4gSSBoYWQgYW5vdGhlciBzZXJpZXMgdG8gZW5hYmxlIEZCQyArIFBTUiBmb3Ig
eGUybHBkLg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjU5MzIv
DQpJIHNob3VsZCBtZW50aW9uIHRoYXQgaGVyZS4NCg0KDQpUaGFua3MNClZpbm9kDQoNCj4gDQo+
IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTIgKysrKysrKysr
KystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+
IGluZGV4IGJkZTEyZmU2MjI3NS4uYjljZDkyYTk5N2NkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAgLTYwOCw2ICs2MDgsNyBAQCBz
dGF0aWMgdTMyIGl2Yl9kcGZjX2N0bChzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+ID4gwqBzdGF0
aWMgdm9pZCBpdmJfZmJjX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gPiDCoHsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMt
Pmk5MTU7DQo+ID4gK8KgwqDCoMKgwqDCoMKgdTMyIGRwZmNfY3RsOw0KPiA+IMKgDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMCkNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdsa19mYmNfcHJvZ3JhbV9jZmJfc3RyaWRlKGZiYyk7DQo+
ID4gQEAgLTYxNyw4ICs2MTgsMTcgQEAgc3RhdGljIHZvaWQgaXZiX2ZiY19hY3RpdmF0ZShzdHJ1
Y3QgaW50ZWxfZmJjICpmYmMpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9ndF9zdXBw
b3J0X2xlZ2FjeV9mZW5jaW5nKHRvX2d0KGk5MTUpKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHNuYl9mYmNfcHJvZ3JhbV9mZW5jZShmYmMpOw0KPiA+IMKgDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgLyoNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBBbHRlcm5hdGUgV0EgZm9yIEhX
IGJ1ZyB3aXRoIFBTUjIgKyBGQkMuDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogMS5Xcml0ZSBGQkNf
Q1RMIHdpdGggUGxhbmUgYmluZGluZyBzZXQgY29ycmVjdGx5IHdpdGggRkJDIGVuYWJsZSA9IDAN
Cj4gPiArwqDCoMKgwqDCoMKgwqAgKiAyLldyaXRlIEZCQ19DVEwgd2l0aCBQbGFuZSBiaW5kaW5n
IHNldCBjb3JyZWN0bHkgd2l0aCBGQkMgZW5hYmxlID0gMQ0KPiA+ICvCoMKgwqDCoMKgwqDCoCAq
Lw0KPiA+ICvCoMKgwqDCoMKgwqDCoGRwZmNfY3RsID0gaXZiX2RwZmNfY3RsKGZiYyk7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQ0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShpOTE1LCBJTEtfRFBGQ19DT05U
Uk9MKGZiYy0+aWQpLCBkcGZjX2N0bCk7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRl
bF9kZV93cml0ZShpOTE1LCBJTEtfRFBGQ19DT05UUk9MKGZiYy0+aWQpLA0KPiA+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBGQ19DVExfRU4gfCBpdmJfZHBm
Y19jdGwoZmJjKSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBEUEZDX0NUTF9FTiB8IGRwZmNfY3RsKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IMKgc3Rh
dGljIGJvb2wgaXZiX2ZiY19pc19jb21wcmVzc2luZyhzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+
IA0KDQo=
