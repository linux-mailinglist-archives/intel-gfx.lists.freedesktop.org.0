Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597079AACC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 20:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D2910E34A;
	Mon, 11 Sep 2023 18:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FB410E34A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 18:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694456321; x=1725992321;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NkXvHjxhoHbJpLsnFxz6Aouuxg1SGQ2Pk6lEesxgl9s=;
 b=BlgqIH0NdqBNkHzypErnYz5cUeceFvecs4OzpfuU1fvuvBsU5DPW+Ue9
 mhrRjCAKbnUKMKXqtTpMkirIWoSlUwZIw9hBxREQUbDEXMRgJkqoseXSU
 UEvy/xDlQYoi0UQEZjoSemReJDtCh9R0/0YKmuOXxWxmzlOXXz/KewlSL
 kGpg6bJ/24FCWeu90lxKNnxW5inszTpw2h2Oh0Bh4chOCdrueqMOMkPSU
 18dP+E8NNjCnbwhf72vWbUmUvDWBrdg+QoqY8fJtpUjMyumDXZVwCE6Pr
 wYUzjfSm7Tj69eKbmP7oeGyqZl7HjHs8n/MFtxS2APgONg6EXkYOGatzS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="380867368"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="380867368"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 11:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="858438471"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="858438471"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 11:18:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 11:18:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 11:18:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 11:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSALYQ0jh9vWnHLSxhBaaYuDU30yp7afyn9xAIrZ/QXEkWQXbjr0BYME2inzWIEfq7V8gn71sfz1qk1eHWITMf4paJzctzdEg+/ciYUn99+xs1aZ4uS2e0wsZYORCYtV5ysmryv5mRsnbANW9K5NlQvLWDNSE9X+Z6JCGn0/7TktjbA/2mpEHKWaUUXEjGFxyplJ2sAEUUzeHVms5g3iqmJYhmfDbdbKbhXmhRGfgFu7Z1SH0zEFoa4/HDkrbOTDbNnbiCmpC7WAOCcRGqG7Fd9TRgG8acFJ18Cr4c3diaBjlin+/UbcKyLs818VIzUGPE5YiThBe8hGblGHnx283w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NkXvHjxhoHbJpLsnFxz6Aouuxg1SGQ2Pk6lEesxgl9s=;
 b=kujT22NZv+wXU3LINpVUmNl4k2gctf2/2QILjwo1q6FBr19fQlvM0evvm2fH+tTMxVK3bcVNJa3sI5HQx2GI3HkNAqpltMlae38p6IMjESrbMenKGEW0KQ7CzAaPBcfJbwWmbYsnmom4drol11nvPdidujRfozka+g+6FgOFPlAVSF+k6l2kFZAO0rrbjRpapjedWuSrgURE3sSsn0+1SzE+cruyPiyiOQabq9uU8RsZ+iY68HgXxmUu1jOXTmen64FncZZ/SHz8JQ8TgjGrmfe+WyMEgwEtyw88R7AEpaV3QNpXb+HTi8HLRkiRP+1EcBpHkue8R8DhK6P3PDiLlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM3PR11MB8672.namprd11.prod.outlook.com (2603:10b6:0:44::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 18:18:10 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 18:18:10 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/12] drm/i915: Extract
 intel_crtc_vblank_evade_scanlines()
Thread-Index: AQHZ3NUHkRK8QBqC+kiwJEnCLwz8L7AV/tZA
Date: Mon, 11 Sep 2023 18:18:09 +0000
Message-ID: <IA1PR11MB63489834C6B98DA64C10658FB2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM3PR11MB8672:EE_
x-ms-office365-filtering-correlation-id: 65e1e985-c14a-4b69-d2c8-08dbb2f3745b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7kGN/Lve3pidA9gHSj3Hn/sHKMC4NDbRyWLWkCAeEpcscjlZAT37t5Blg6uakvjVJC78G6LtxuCdBVLhjEgpqy5henVJ9nHNfxZ2oMpBqU2hOW6yRNmc+IMTsDgADwZjaE239fzxH8o+dOgWP+yH9QRSkEMcGTkKylLGRXHKwDB6PTkyEBon/fT2pZvSs6X5FZRl2D5Py4qA38fxZQnWSB3oQaA3+ky5Jls7jRShJoZx2dHKfcRp08zfgIfZxpLVQJAt0QXihhaDNE2QcRgDwVfn3u6OhNVWnPnQYNlBPkvmThZbs+wBrTdHFya4v7Hcg1toG89Sy9RITPondhrgRXiB9AxRDOaRWfkMFd5xqAGDexcNkeUfhDQ0xNcObmW/fcsIP0x6e5GwirOn6/FjentuV7ULWNzVbTdVV2vetglijBD9Zihs8Wldm0VWg3s+yVypZ67dhONBtpaKqjq/px02Cdulgz1BKs/qC9Kq67CQSQy+C/CzHrhfFdibmtoLRfDseWV3C1MmxA2+UOKXeUJovUE165keyHkKEAF3M0Na1fRRzxqAAWV4HPUrFa8JNDcncNjTyVrn67frFM9qsDw/1fZijqz8NLdN94mb+Af8gLiTotn5AfzhPMAazv7N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(396003)(376002)(186009)(1800799009)(451199024)(66556008)(66476007)(76116006)(7696005)(316002)(66446008)(6506007)(64756008)(110136005)(55236004)(53546011)(9686003)(41300700001)(478600001)(71200400001)(8936002)(8676002)(52536014)(26005)(5660300002)(122000001)(38100700002)(82960400001)(55016003)(38070700005)(33656002)(66946007)(2906002)(86362001)(83380400001)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVVmcjc3VWxKK2c5YVhjSzNvMWtWZlV4ZktELzBVMklaYlV1aktrUHJUUzNa?=
 =?utf-8?B?VXBlbUltdy9nZHBLMkgzcHd6SCt2QXM3N0x5alZYdVhYOHQwT2lCZHVhVWFC?=
 =?utf-8?B?NmNyWUIwOEY4Q2d0VkVYTTY5QndDQVlZNi9lYnZ5bjJkNVlzbDNTWVNhbkM4?=
 =?utf-8?B?Ym4zWTVrSlpzdTNhaFdBTGdEckpFRWN1RFdkUFFuQTEwQlJFSklUUGRlQmZC?=
 =?utf-8?B?UnphSm9QTnJHUkF2cDVFc2xpL2V1U0pkZU9oekFVTHNSRTdRYTdHK2kwVnA5?=
 =?utf-8?B?NHdlU1dxamp5R0JLU1dnYWIrWVNZSmRlUk9RK3ZMZHBHYms0UDgvTWx0NkpP?=
 =?utf-8?B?aFlCSzhLTXUyVVEwaHIwb2NoRE00bHhTemdkNHB1UTVDRUtYWktaWnY1WXU2?=
 =?utf-8?B?MitIVlR1YUJUQ21UL1JLUTJqUWtSM0x2d0RSMnltWkl1R2pEOUxCYlhYWWRU?=
 =?utf-8?B?QWpHUVl2ZFQzZjhxT3c1Y3pIRUdvOTRlTC9vSmx0RXdLRnRaTnZPR3VGR0Jj?=
 =?utf-8?B?Rlgxa3ZuV254L2VKQXJ5TU5XM1drNDdaZ2lzMldVSXMrcGNuaWhZbU1SZTIz?=
 =?utf-8?B?bHlvNGwrVzZHNDgvYiszbGQvRGMySytpV2FpSTZ0ZWNUWGtmOUw5RXVFOTA1?=
 =?utf-8?B?MlpkUjVUWkZnNWt1QlJkNzRFUFhaL2lVUFJ2QXVEejJURit6VStucS8vbWJq?=
 =?utf-8?B?bitjelVyM1JJMFJyM2h2ZWRCNnZRVkFlMk1CdHRFb1VhVDhtT3hjRHl4bmFN?=
 =?utf-8?B?VzZEbDU3OVpSTHl5Qm1ndFlmZ3pEeVF2SnBQdnV6emtsOGxEMVl0L3BPTGNh?=
 =?utf-8?B?MFZUemV2SDFhWFY5aHpVNGxKdWVsYzlpd3RIQ2Z3RnlTUnhWejRWWUVlQ2ZN?=
 =?utf-8?B?U3BOK29rWWhSWUpnS3M3TU1LU01ocWFoZHJERVp1b1h3OE9MYWNqbWtzL1l3?=
 =?utf-8?B?SDd6Rk0wYnN1WXNGWiswbEI0UHdpdHpzcW0zNHE2aTAxVmU3dWJoZExXWTc4?=
 =?utf-8?B?S3Y0Y0ZxTjBoZzkxcTBQRDFqR1pFSTZQSDZTOTVHTEZEVzFibnZ6NmtIcFkw?=
 =?utf-8?B?ZlNhTlhCV3VsOUN2cDgvYzljSVpjNzFTSGtOZUFvV0hlUmw0TlNIYUJpWWNQ?=
 =?utf-8?B?bGF0dmRhUFErYTY4WkNydDNYTjNXUHlpdENNTUdQMFIxcDJ1dGJ5dDRxR2VB?=
 =?utf-8?B?Wnp5OTU2SnQzR2JPcUxiU0sxUE85eU9GOUZTaHhzUFVaQldpK0xrYzI4SUNa?=
 =?utf-8?B?SkRyUG1nZUVNT3A2REdHWmdwUm9iYUZLVXZvY01FZmdPbGxaWEhmRER1S3Uy?=
 =?utf-8?B?VXhDR21LelJVQ21mZUhVTHpneDhBdDB6ZTdSVjI1c2VNb2R5Y2ExNFpXWnhD?=
 =?utf-8?B?VEFqbmxmZGxLdkwwcTRXdklieThMejdZVnVKMmJVQ1lBMmdGdlhITzhIUnBI?=
 =?utf-8?B?RnB2SWFMVUhtdlkvR1BJRGtjcXcyeWxROVFGb2xWUm9UV0FRbzlOMjlLM29u?=
 =?utf-8?B?NW9DZWs3OU1xTU5BVUxkZjdKS0thSng1eExZYkhjOFByUzR4dGxYaVRUd3F1?=
 =?utf-8?B?YTZ5d0JpcFc0Tkhvb0JkODlRa2h0bm5QVmEyMjR3Nnc4RVJsRkVxSGtyc2ZB?=
 =?utf-8?B?SjV5d0dZMGJBSTQ1ZEY0N0hBa0RWR01UMUdzNVkrcnpSTGdPL1JsQnVVa0Qz?=
 =?utf-8?B?M0xCVktvQmVaQXBxL2tTT2pnRFZmYVBFZUcyZk52YkI1NVVZOVM2S2NlSm16?=
 =?utf-8?B?NFZYa0htZm5ZaXZMekh4SnNjeUR3TkNrQXN5YTVRZVl6KzY4NmVYZ0JuTmhK?=
 =?utf-8?B?VkZiTHN1STdOUyt2TjdyZW5KSEtPTEdBQmd2aUdBR0FzbS9XVVZmS0pQSGRF?=
 =?utf-8?B?WEFtQjl1clJ6bWpnWVdSN3M4Wk1aUUFlUmZRWGpKU1NtZDhqdHpLSzVhd2sx?=
 =?utf-8?B?WW0rQlhOeEJoM1FhL1d4amRJOGIva24vS0ttZHZWeWdxRmVtZUVhODRmcGtv?=
 =?utf-8?B?TGppWkFPb2Nha2xsdEo2U0JlVk00NXVPNm9XelozWkl0SVpSdTVBb3lpMDc5?=
 =?utf-8?B?ZTM3VXVjeXdDa1RLcUZNNDljK0N4L0YwR3U0bXdhY0VIbUxNVWdzQ0xvK09t?=
 =?utf-8?B?TVV3NkxlcURFVHdBUTl1SGRHTmIxSExQS0pnbCs1SkVqTU1GL0FPc2YxbjNB?=
 =?utf-8?Q?NzaeoK30fq+wdlcN2bMNNmk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65e1e985-c14a-4b69-d2c8-08dbb2f3745b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 18:18:10.1826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jB7rJd1FX36jSieJelTX2wA/7pnLk+r+e1QwRgpnpD8szGbBqZf3SgD+752C9dAQE1Dz1xJ+l+Lc7cLIFeGO+ZNVfkrJvIRjBk6FsC89AmOGcQ/79Sh5h77vngwS4QdN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915: Extract
 intel_crtc_vblank_evade_scanlines()
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
My8xMl0gZHJtL2k5MTU6IEV4dHJhY3QNCj4gaW50ZWxfY3J0Y192YmxhbmtfZXZhZGVfc2Nhbmxp
bmVzKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiBQdWxsIHRoZSB2YmxhbmsgZXZhc2lvbiBzY2FubGluZSBjYWxjdWxh
dGlvbnMgaW50byB0aGVpciBvd24gaGVscGVyIHRvDQo+IGRlY2x1dHRlciBpbnRlbF9waXBlX3Vw
ZGF0ZV9zdGFydCgpIGEgYml0Lg0KPiANCj4gUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG5h
dmFyZW1hbmFzaUBjaHJvbWl1bS5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCA1MyArKysrKysrKysrKysrLS0tLS0tLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0
Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gaW5k
ZXggNDYxOTQ5YjQ4NDExLi5lNDZhMTVkNTlkNzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IEBAIC00NjgsNiArNDY4LDM2IEBAIHN0YXRpYyBp
bnQgaW50ZWxfbW9kZV92Ymxhbmtfc3RhcnQoY29uc3Qgc3RydWN0DQo+IGRybV9kaXNwbGF5X21v
ZGUgKm1vZGUpDQo+ICAJcmV0dXJuIHZibGFua19zdGFydDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMg
dm9pZCBpbnRlbF9jcnRjX3ZibGFua19ldmFkZV9zY2FubGluZXMoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICsJCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LA0KPiArCQkJCQkgICAgICBpbnQgKm1pbiwgaW50ICptYXgsIGludA0KPiAqdmJsYW5rX3N0YXJ0
KSB7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0N
Cj4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJ
Y29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQ0KPiArJm5ld19j
cnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiArDQo+ICsJaWYgKG5ld19jcnRjX3N0YXRl
LT52cnIuZW5hYmxlKSB7DQo+ICsJCWlmIChpbnRlbF92cnJfaXNfcHVzaF9zZW50KG5ld19jcnRj
X3N0YXRlKSkNCj4gKwkJCSp2Ymxhbmtfc3RhcnQgPQ0KPiBpbnRlbF92cnJfdm1pbl92Ymxhbmtf
c3RhcnQobmV3X2NydGNfc3RhdGUpOw0KPiArCQllbHNlDQo+ICsJCQkqdmJsYW5rX3N0YXJ0ID0N
Cj4gaW50ZWxfdnJyX3ZtYXhfdmJsYW5rX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsNCj4gKwl9IGVs
c2Ugew0KPiArCQkqdmJsYW5rX3N0YXJ0ID0gaW50ZWxfbW9kZV92Ymxhbmtfc3RhcnQoYWRqdXN0
ZWRfbW9kZSk7DQo+ICsJfQ0KPiArDQo+ICsJLyogRklYTUUgbmVlZHMgdG8gYmUgY2FsaWJyYXRl
ZCBzZW5zaWJseSAqLw0KPiArCSptaW4gPSAqdmJsYW5rX3N0YXJ0IC0gaW50ZWxfdXNlY3NfdG9f
c2NhbmxpbmVzKGFkanVzdGVkX21vZGUsDQo+ICsNCj4gCVZCTEFOS19FVkFTSU9OX1RJTUVfVVMp
Ow0KPiArCSptYXggPSAqdmJsYW5rX3N0YXJ0IC0gMTsNCj4gKw0KPiArCS8qDQo+ICsJICogTS9O
IGlzIGRvdWJsZSBidWZmZXJlZCBvbiB0aGUgdHJhbnNjb2RlcidzIHVuZGVsYXllZCB2Ymxhbmss
DQo+ICsJICogc28gd2l0aCBzZWFtbGVzcyBNL04gd2UgbXVzdCBldmFkZSBib3RoIHZibGFua3Mu
DQo+ICsJICovDQo+ICsJaWYgKG5ld19jcnRjX3N0YXRlLT5zZWFtbGVzc19tX24gJiYNCj4gaW50
ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gKwkJKm1pbiAtPSBhZGp1
c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCAtDQo+ICthZGp1c3RlZF9tb2RlLT5jcnRjX3Zk
aXNwbGF5OyB9DQo+ICsNCj4gIC8qKg0KPiAgICogaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoKSAt
IHN0YXJ0IHVwZGF0ZSBvZiBhIHNldCBvZiBkaXNwbGF5IHJlZ2lzdGVycw0KPiAgICogQHN0YXRl
OiB0aGUgYXRvbWljIHN0YXRlDQo+IEBAIC00ODcsNyArNTE3LDYgQEAgdm9pZCBpbnRlbF9waXBl
X3VwZGF0ZV9zdGFydChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiAgCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gLQljb25zdCBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZuZXdfY3J0Y19zdGF0ZS0N
Cj4gPmh3LmFkanVzdGVkX21vZGU7DQo+ICAJbG9uZyB0aW1lb3V0ID0gbXNlY3NfdG9famlmZmll
c190aW1lb3V0KDEpOw0KPiAgCWludCBzY2FubGluZSwgbWluLCBtYXgsIHZibGFua19zdGFydDsN
Cj4gIAl3YWl0X3F1ZXVlX2hlYWRfdCAqd3EgPSBkcm1fY3J0Y192Ymxhbmtfd2FpdHF1ZXVlKCZj
cnRjLQ0KPiA+YmFzZSk7DQo+IEBAIC01MDMsMjcgKzUzMiw3IEBAIHZvaWQgaW50ZWxfcGlwZV91
cGRhdGVfc3RhcnQoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaWYg
KGludGVsX2NydGNfbmVlZHNfdmJsYW5rX3dvcmsobmV3X2NydGNfc3RhdGUpKQ0KPiAgCQlpbnRl
bF9jcnRjX3ZibGFua193b3JrX2luaXQobmV3X2NydGNfc3RhdGUpOw0KPiANCj4gLQlpZiAobmV3
X2NydGNfc3RhdGUtPnZyci5lbmFibGUpIHsNCj4gLQkJaWYgKGludGVsX3Zycl9pc19wdXNoX3Nl
bnQobmV3X2NydGNfc3RhdGUpKQ0KPiAtCQkJdmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfdnJyX3Zt
aW5fdmJsYW5rX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsNCj4gLQkJZWxzZQ0KPiAtCQkJdmJsYW5r
X3N0YXJ0ID0NCj4gaW50ZWxfdnJyX3ZtYXhfdmJsYW5rX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsN
Cj4gLQl9IGVsc2Ugew0KPiAtCQl2Ymxhbmtfc3RhcnQgPSBpbnRlbF9tb2RlX3ZibGFua19zdGFy
dChhZGp1c3RlZF9tb2RlKTsNCj4gLQl9DQo+IC0NCj4gLQkvKiBGSVhNRSBuZWVkcyB0byBiZSBj
YWxpYnJhdGVkIHNlbnNpYmx5ICovDQo+IC0JbWluID0gdmJsYW5rX3N0YXJ0IC0gaW50ZWxfdXNl
Y3NfdG9fc2NhbmxpbmVzKGFkanVzdGVkX21vZGUsDQo+IC0NCj4gVkJMQU5LX0VWQVNJT05fVElN
RV9VUyk7DQo+IC0JbWF4ID0gdmJsYW5rX3N0YXJ0IC0gMTsNCj4gLQ0KPiAtCS8qDQo+IC0JICog
TS9OIGlzIGRvdWJsZSBidWZmZXJlZCBvbiB0aGUgdHJhbnNjb2RlcidzIHVuZGVsYXllZCB2Ymxh
bmssDQo+IC0JICogc28gd2l0aCBzZWFtbGVzcyBNL04gd2UgbXVzdCBldmFkZSBib3RoIHZibGFu
a3MuDQo+IC0JICovDQo+IC0JaWYgKG5ld19jcnRjX3N0YXRlLT5zZWFtbGVzc19tX24gJiYNCj4g
aW50ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gLQkJbWluIC09IGFk
anVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0IC0gYWRqdXN0ZWRfbW9kZS0NCj4gPmNydGNf
dmRpc3BsYXk7DQo+IC0NCj4gKwlpbnRlbF9jcnRjX3ZibGFua19ldmFkZV9zY2FubGluZXMoc3Rh
dGUsIGNydGMsICZtaW4sICZtYXgsDQo+ICsmdmJsYW5rX3N0YXJ0KTsNCg0KUmV2aWV3ZWQtYnk6
IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4g
IAlpZiAobWluIDw9IDAgfHwgbWF4IDw9IDApDQo+ICAJCWdvdG8gaXJxX2Rpc2FibGU7DQo+IA0K
PiAtLQ0KPiAyLjQxLjANCg0K
