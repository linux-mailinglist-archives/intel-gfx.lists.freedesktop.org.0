Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726AE82A760
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 07:02:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4887210E0B0;
	Thu, 11 Jan 2024 06:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A1C10E0B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 06:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704952946; x=1736488946;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0ScUBidGFzJpeLflZkoajT73XeChDgxZy5nesbKbTd8=;
 b=nTuQzi8xApIJz4UG8mDfCt1uY92h4rlrlO8V6HrS3YF6V+u6UxdAzaAi
 7fTTokQn1fmjBJQcQiYj6f+uWRlbUMmI5EegXLJUj1xhjvspLZHHhMd9E
 GjVknp1MfqxonDUn2n3yFgNtkYTJLr+duIOMJWYrcBbcKRZlTf6szcmab
 JqHO0nczS093Ok+u6n+dI5yFIQ1kiYsQpLIM95ev7STzSnMU9qxyXxP+w
 Kw51NUbH0zPBhg2EMTeIILEHeBqEnQGjkdUfYnRbpvNJJOyc+cY4+svIE
 Y7PHzSZ3Fj21sczFy5pA2eLjVOv1Yws09mkusAwnUHm6CHnT5hR5eRa0x w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="5482395"
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; 
   d="scan'208";a="5482395"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 22:01:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="24220061"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 22:01:41 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 22:01:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 22:01:41 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 22:01:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XcF4+RkVKyu+x9pK4K0gS20RzQ2oruxWy80FbSA1d1lB6YpbJDRDrBjFJLfV0ee947ld0QszgGIRpekmqKu/pcsN7h036mWwtBTDFNNvMu6YUnb+Uv4dV6E3GKMS16r4pdIzpM4KCN1t22TOfjypr2BxOUWNVfgrRfYBk4stVJ0AofHbY/q5z65Db4vIlWCrMFpcFi7eJILn+BwBPrOQgHG7BBELaO80sSthgz7VHmCZG/Iz1MDnekGy2J41jlNMiF8vhqramvtE0osptew4Ifh+r8iRnFOIzZzy/M1BjLlX1ugaSUAzYWX1PSV0GasyIKBWdcS6Z+1CgDoSe8R+8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ScUBidGFzJpeLflZkoajT73XeChDgxZy5nesbKbTd8=;
 b=Sv4/Gi8TH/RkapE6BWvcrSljUbzXX7q19UPC/0R7Fk7qX1jvFqLFgXNX6HVTHxBYPaJCweVxl8w9bLR3N0nejhgu+arffEXcTW6AtKEE9B6DWEovnwdus7wfzlJ3dXR7uLf3tssOyU0kYVZr9f5TGcyzIApNgqWKMfXg8G5NI49Wzivj0QzvUOhmc9zO4pbaCRMZqQZdIJiz3FF0j3sWhku/xJ4KiGBknAkzlLbL84lsDosEHfkAdCk3Frs7KHO2dxc276jfPo36XkemMeT3KbnE9fHfZMPqGhz4cGKbwTOqWuqbT+GBJpUCpu5+TSFyXPCOCGdIPoq9mFsubLomLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB4950.namprd11.prod.outlook.com (2603:10b6:510:33::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Thu, 11 Jan
 2024 06:01:34 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Thu, 11 Jan 2024
 06:01:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/13] drm/i915/psr: Intel_psr_pause/resume needs to
 support panel replay
Thread-Topic: [PATCH v2 02/13] drm/i915/psr: Intel_psr_pause/resume needs to
 support panel replay
Thread-Index: AQHaQ8bkgKfDflfkmEOsWnaxg1KcebDUH2OA
Date: Thu, 11 Jan 2024 06:01:33 +0000
Message-ID: <PH7PR11MB5981EE7ABB25DE8F8F18DFFCF9682@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-3-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB4950:EE_
x-ms-office365-filtering-correlation-id: 9f710efa-1b90-4309-844a-08dc126ac3bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nkc8In9tn+X7sl89S/gDJE29h/4i6fJzx/oEKQhotRxYErP+zkoXLsYnpPDCKb5lu90hVE64A2NuJ6nlu1aLdrIfT7kcf+DLt691wtCQsmqkTFAXUixgRFC1zJ84rSfvIOLcpatRGaYh2KeGyFDYyYbzZLA15GVO6/JJypnsa/fQsNSDZ4FpjM3+X23F3Cq4brXvcuSaultizoQx1jV1fQDwLjq3nQI4ctI6FyfOLT2UUYGPR8JxoktxGjvFvqtGveHlIeaBlmB8NVmHgH2rwcwxQaKHA725FGkdf2h8nido13OIEfRXM4PcQS/6mmYTGvH0sUGJsLBe3CQXWIotgGY5WUsyFXgDCfoB67uen/kqevwdTCwIr0jknd7tfuD2hSyf1UdilNy878tIaQ0gjoogj94k6Trugi2Om4GOm6zHlZQpVN/uriPGiKJCAdKEjRAVHEK/WsiHnBnRzW0Vh7hyHVVPrOvwkq2XUfKNIRNgTXpE43rGgmlR7bctkzymecHeYv5U5PdHtNHtzc9wI9U1DT2yslbAGPFZLxFQ3VPs7Vl0jTkwtGm7h2GRgvcaphlPLjeQFm/r7Yxf/EYXwFWO7D9Jq1hBmfM2iXOF73L5319LY650DRvUAP/HMnIW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(396003)(136003)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(5660300002)(38100700002)(83380400001)(8936002)(8676002)(2906002)(55016003)(86362001)(66574015)(82960400001)(33656002)(26005)(122000001)(7696005)(6506007)(9686003)(53546011)(55236004)(71200400001)(478600001)(110136005)(76116006)(66946007)(316002)(66556008)(66476007)(64756008)(66446008)(52536014)(38070700009)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MnBtNHJNZ091Z05INURCbEMyQVY5eDlKYXJEby9VZ3NsRlBrOS9HeVZOamlR?=
 =?utf-8?B?WUNhdDl0ekhYTDR0VmFhd2hNT2R6NlRyT1ZRcEoxdE5IaXdxbjRzTGoxVVNs?=
 =?utf-8?B?aGUyYlM1Y3ZnaXNYbUU3L1JBMzJ5ZEQ0Y1hjTjhjdDNZZHFQWXlDaTNST1dq?=
 =?utf-8?B?R1dybHp3UG5sUEIybndDRmxqeWFCUVE5bkVoR09OSjFZQ2dSUTRDYk5ocUJE?=
 =?utf-8?B?amlOdU05ZXpDei9kMU5uRk8xMEJlRUFWUkFPaDR5OE8wV04vSlViYmhQeHBv?=
 =?utf-8?B?SVVNb2lKRnFxOUdmRldsUkNYVzkyc3VrVVNpcG5Uem9OMTF4SHZyK3NDWTcv?=
 =?utf-8?B?cmp5MHhmaDM3VkxWdWlYaEVtYnM0QUNRV0dyT3NNYTV1SEszSVpFR3NrVGFX?=
 =?utf-8?B?WEF5SGw2RndoanN3UGM1cC94SHN4M1QxcmlJZkw3dS9TM2NBSGcyc3lzdGVw?=
 =?utf-8?B?a3Y1VnkzTEM2ajhEUEdkSFozcFdmWGorOEw0V1I5UTZIRnhtYU1pc1pUZlI2?=
 =?utf-8?B?Y2U3OGRYTm5hQXZLVnZaaWZvbURHazRNb2hNUWdkaWJxQlluZW1SZml4R1R1?=
 =?utf-8?B?YkpKOWdSejgvQTFMNTdWUWcrOXlvY3dLTnZHN1hYbCtBZmVpSzVQMXRJY3BR?=
 =?utf-8?B?ck5OelQ2TEhJNUdrc1p6SDl4YmROZVR5ZzUrMlByaHhERGV2azdlUFhwOVFa?=
 =?utf-8?B?QnZlQXNmclQxaTJEdUZyejNidm53bTVqSXJnb25JS2ljK1IxM0Y0dURWeUFh?=
 =?utf-8?B?QU1OMllpK2dNS3dXa2RzRC9ONDVFVy9GZDVsK3REcUdGSEIxdFk0QXZwaHkv?=
 =?utf-8?B?QXM5OHRSMFoxU1VuQ290c25lTTc2Z3ZiUnBRN2pYMjJ5b0ZZUVA0QTNTbllO?=
 =?utf-8?B?clMrMVB3cWFHK3FOVzhxZ3dNaHVHUmp5V3FoVE9pWXdsdURXOGF3QUx6S2ds?=
 =?utf-8?B?VFhrb2FLVlVDWEVxeFVkNlVjZ0JKRmh4c29LUmlYUmYzVnVNclhYN3BOZmJQ?=
 =?utf-8?B?Z2xCQzlTRGhUTnE5ZnUxZU8rY29TYzRtVEJqSHdEZ051ck9Nd2g3N2Y4NGtO?=
 =?utf-8?B?anRSV3NFeFJ6Sm45NTE4cXl6ckgxRjZ2a2wzenQ0blJPb0pzeVZCMkpWM2NQ?=
 =?utf-8?B?VU4rL2hSdTRkRXJFN0tIamwzempBR2NZYThxcmVLYk1GZFdUNTdlY0R4YkhT?=
 =?utf-8?B?SXBUY3ZaS3RLdmkxMnBRalZHMmdyZGxGL2JRK1dJU3c1NkpoMXdGQkRxWjZj?=
 =?utf-8?B?dmpQRFBIRUVsTXBzR0d0YytYVi9mQWZzQjNQcU1TOHRjcThJWGdkSVg0cDFX?=
 =?utf-8?B?VVhUTWJ3SE5ZSUFuNXdRaUpRLzZSVlUva0d2S3F2Z1RUbEx0R3RWbHZCRU5N?=
 =?utf-8?B?TTlqMHVpWlE2VnZWVzhidXdBUm5IQ0x3Wlg0WkVkVzMzdFI3eHBWUVNjWDBS?=
 =?utf-8?B?bjA1UlVNcTZYZzJuV1FoZ2F1Y2p1N1RabGpEUnd4eVpRSXJjcDUyeXAwMytP?=
 =?utf-8?B?N1YxWXNlQm80WHdYY0llRXBQQVdNRHBYZXk2VkRKbTJtcks0QndlekJZTjgv?=
 =?utf-8?B?V0ZhTFR6eDNxb1ZwN3J4T240QVJrY0s0ZHlwQXNqVzBaS3ZtU2xCWkRwWkIv?=
 =?utf-8?B?SDJNOXR5VW5Mdk1NWHlwaVVCcHFvSjZxL3VCeVVqdXBJaStyMUxHLzRjaE43?=
 =?utf-8?B?T2tUWkZIa1Y1cU1mMVBtTTFUUlFjS0Rxc0xuZ0Q3OG5XVnpaQWdIeDR2STY4?=
 =?utf-8?B?dTJVeW9zSEg3ejZ0ajV1N0tpOGR0K0F4NE9mbkFXcVJoTHdkY3hkZ3ppWm85?=
 =?utf-8?B?Nk5GV0s3azk1dXp6WTMwak45akZ1MzdBV3pqaDAvS1ZnODIzQWw0VG5Ja1VL?=
 =?utf-8?B?L3kxV21sRnM0SXdXL2NtWUtNUVJ3TEhRUVh6WXZvZHBaYUdEV3krR04xZklF?=
 =?utf-8?B?b0daZ05weTNtenVMczRRTkk0YXVpQkNtYWZzdWJNQkRsaC9jZTB2M3dGNktk?=
 =?utf-8?B?Nyt1SzVhUFJQSE9XZGRKNzA0VTIrc1psVDdGLzlHeGZuUXd1UTYrM3VhVFE3?=
 =?utf-8?B?UkhXMEpyNUhjQk1lZGhGM2JnSGxrTTRKbkNjOENCYlNGWDNFNkNXVDVaeW9K?=
 =?utf-8?Q?srMB94qoZFw8DKsF2jGSU4Sf7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f710efa-1b90-4309-844a-08dc126ac3bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 06:01:33.9492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: asotiOfytS0mtOPje7Jih7a60tBwqfCGI7Xq96aI1bU9jfRz5vPdcbcAMX671jX0V3+9qMfLMP5jNfztS/aWlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4950
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEwLCAyMDI0IDY6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IHYyIDAyLzEzXSBkcm0vaTkxNS9wc3I6IEludGVsX3Bzcl9wYXVzZS9yZXN1bWUgbmVlZHMgdG8N
Cj4gc3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gDQo+IEN1cnJlbnRseSBpbnRlbF9wc3JfcGF1c2Ug
YW5kIGludGVsX3Bzcl9yZXN1bWUgZG8gbm90aGluZyBpbiBjYXNlIG9mIHBhbmVsDQo+IHJlcGxh
eS4gQ2hhbmdlIHRoZW0gdG8gcGVyZm9ybSBwYXVzZSBhbmQgcmV0dXJuIGFsc28gaW4gY2FzZSBv
ZiBwYW5lbA0KPiByZXBsYXkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KQ2hhbmdlcyBsb29rcyBnb29kIHRvIG1lLg0K
UmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDQgKyst
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5
NzA1YTc1ZTA2M2EuLjNlMjg3YTlmMGUwOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xODI5LDcgKzE4MjksNyBAQCB2b2lkIGludGVsX3Bz
cl9wYXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAgCXN0cnVjdCBpbnRl
bF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiANCj4gLQlpZiAoIUNBTl9QU1IoaW50ZWxf
ZHApKQ0KPiArCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50
ZWxfZHApKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+
IEBAIC0xODYyLDcgKzE4NjIsNyBAQCB2b2lkIGludGVsX3Bzcl9yZXN1bWUoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAt
PnBzcjsNCj4gDQo+IC0JaWYgKCFDQU5fUFNSKGludGVsX2RwKSkNCj4gKwlpZiAoIUNBTl9QU1Io
aW50ZWxfZHApICYmICFDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkNCj4gIAkJcmV0dXJuOw0K
PiANCj4gIAltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiAtLQ0KPiAyLjM0LjENCg0K
