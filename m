Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4334646C83D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 00:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2765E6E040;
	Tue,  7 Dec 2021 23:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F026E040
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 23:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="224970507"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="224970507"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 15:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="580334598"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 07 Dec 2021 15:33:04 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 15:33:03 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 15:33:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 15:33:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 15:33:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qkj3GVdIY6aENWFsEYCGvh4ITCBIH6tihzBfIfYmJa1Ri1ZB/XupeHeyvACg5iwtkFgoOmbwYh/POcgUENd64T0IifpK2NBTjoItq+28twCSUVoP2y2TiZ5kCqIxbtlo9z6fEnf2i5Kgpw7Uq45q6hqLsUHS3km2QjHzoRxbYv3Urvd7aepzyaL7c/i/VmQtJyYQJ8kKnZmq94oK3WicVRFDYvAMwusHWktni0F3GnSjKOKHE2tQHbfJ/fU8KsaYWmpyfLTalzwd8H5n3eJMfuu31SSB8wqV6spt/hTiBRngKo0ijfqSHR4myxMpfgUWQmlbQH44tv6vQdAUfdodhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3F+3NE6x8IJqrcbJdDE4F87/BY9jZzYpEMGAXkZX8E=;
 b=lytsVtJOWle0Zans5ay4DOS6UtrHfv6qzbrQNrMPzWK0brsaLItn2CZyTn00fFOk2wWsUF4dloBZFPYqd+PxBvEWzvTT58OuLLHXm3nOls8pwIMlSmkzfoq79d+BqTrukAg7HO+zKP+kzPjctRfHAn9xYsDstIaw2Y1V7oO/V10mws5WaU8DaHRTjmmQu12w1gqBswl3xmmjxKWgLIK3At3dhAQ9+O1CS4Ybhsk/uaJEzJfI3C5sxhcf0STMBvWKf8h/CoBG0ZuoFOWZn4eyF2gA1NJoMDrGJOXlWvwZQEzCDYXtfZlZ6qTbmuVgPNvqAT+ZypgquvwQrYl7NadlOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3F+3NE6x8IJqrcbJdDE4F87/BY9jZzYpEMGAXkZX8E=;
 b=Mfpbij5qrlRiGb8Qk9HLp1Nr8lyJmokhuLJszkEXEVfBDFEr0QbMfolMLkcX/U15WEbyZK1Fs+rzwkrk24lMGdBoMKjxNOBzsW73cUZb+Bjp+1VBrCp1xRXnIBDfP5LDpmvCyM4dIUoDy12ehYF1MwBXTHBr6C9ygr4UkcnUDQ8=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3126.namprd11.prod.outlook.com (2603:10b6:a03:89::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 23:33:00 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4755.022; Tue, 7 Dec 2021
 23:33:00 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [RFC 5/7] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
Thread-Index: AQHX3/Ud2zxxzxJDKkSM8p44MqwxfawntIQAgAARfAA=
Date: Tue, 7 Dec 2021 23:33:00 +0000
Message-ID: <9339aa7b84050e511e202dcd32a0f2e4c4b282ab.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-6-alan.previn.teres.alexis@intel.com>
 <20211207223146.GA17690@jons-linux-dev-box>
In-Reply-To: <20211207223146.GA17690@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2de456b8-bd21-46d8-9beb-08d9b9d9e871
x-ms-traffictypediagnostic: BYAPR11MB3126:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB312647FEBA588F79AEC4FF208A6E9@BYAPR11MB3126.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NObDifbU3PfiULS8Ix5saRYbvQ+xcEONo5JYEQHnYGNoPmOewX73I38Kx+FRih9d5O3qEV76pVs8MTU/mdHxq9XZ58yAzchwttPAGwXmuBjwBkhKdx7zn8bEMP+2jJQpQJLhrrhQ99GYpfBxWamsBF0VS0nAqipTCkbu2rbCKZ3anCo1UoGT8cWWasrtrhp1BxWyzhOx57m2ycMnNKMMSz+MqJLkMhkhjl6toZ8wiKfokcJzZc4RR3MdFoZGLrQn1MdISUpD4igt9EMyo0C0/CJj1IwPrXl5A964jsGt+8Xa937z7G/TuBH+ztAqt4ut8ZAfyayawqZzRy16sMBpBJ5gZTo9OIn005CROac9NEt798oew8lwAGXgl7WyGb2qClnqwWRtINMm58s1wyJeNajJrH0DRY0i7KYtDZg5HnjI0D7lwpviOvqkJdoLAA3V71RkuVffQmesJIBIzcvLd2sEzQgQ76HKQujU8yXorZ3pV2LScmNJUoJYQk+6OV4GjW/GdIe4m4+DhweL8z+F6zDmpJJKAq8aA2phe3i4dNrPgzsUI3qG+h8o16oYWG5h2gCs5eT0f3iYNmMUVq5LLwkUauSPpvUnMZxIcZDDP1WDouLlxIZ1Q6NGi1RAoDLno+4BH3S2mQLgdMKbAHN82jfYY83t834ro1GIOozlnCZJtjrih8plk6TGmgvIFWP0yehBXjF2QTlj8YXMJJZi8A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(6506007)(4326008)(38070700005)(86362001)(2906002)(5660300002)(508600001)(83380400001)(6636002)(26005)(82960400001)(36756003)(71200400001)(122000001)(316002)(6486002)(38100700002)(6512007)(15650500001)(37006003)(6862004)(2616005)(66446008)(66556008)(66946007)(64756008)(76116006)(8676002)(8936002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEJpMWNDY1NIakV5UjJna2t1cnRPV1BPNisyVlZZZEJZMC9yU3o1bXNPamNJ?=
 =?utf-8?B?L1pLMkRLK21sdUcyblN1MEpIYjdDdjBLbFEwRlFQaWc0WEZLeFdDdHRITi9u?=
 =?utf-8?B?QzFBN0Q2cnZPU2o3TlRWVnpzMDFnVGx0ZlpvMXRWSmtHUnlsWFE2RGFIak9H?=
 =?utf-8?B?S0hQTzV0NkNmRzRCNndnanFKdnhLbDlmSjNUNnpuV0x0VXhtUU9LbzBMM2Iz?=
 =?utf-8?B?SW5YMy9iR0dKdGNDS1Z1aXBDRU1yRjFQNmU1V0lRemtIeXlNUndxb2djY01R?=
 =?utf-8?B?SFFjU2hTdHRrdU9Fd1RVNGVXSHBWbUJqSDFGYXpjTnRIZXdoWkF3VDlTYTFN?=
 =?utf-8?B?bFRTWnFpL0ZWVGQ0SzZYRzR1TmlUK1FFYXNXRkhPQVBYdFZVSERoeHVmYTFL?=
 =?utf-8?B?OEFUKzFmWEVjektCa0crOVh6c3N5Z0ZMdDlLTTVxbGVESHdlUWR3Wm1ZNEE3?=
 =?utf-8?B?azJhS1JxV1FOVitQQURtVkpBTHpmcXZza1ZQUkJ5Sko4d3d5NFN5dzd5MVRO?=
 =?utf-8?B?Z1lMTkNra09XQkYzQU41MDgxb29XSURuNk8rRk5BOHNQekk4cm5LQ1ZZRkV3?=
 =?utf-8?B?Y3hkN2toVHJqbWM0YnpFR2tFKzVkeDBnN2ZGUGFYU2tDNkpQL0RVRlc3R21C?=
 =?utf-8?B?eENaOXlUbzRrQkwwd0FIRkxyRW8rVGh5SGVheEhyT1pvNklsZTZ4ZVNEVlFR?=
 =?utf-8?B?cFBXRThDRDhrL3hnRnVmOVg2UE1UUm5Nc2p1SGNkTGtFQzY5cjlBT0xLano5?=
 =?utf-8?B?MkNtUEwzMlQyT0JGeGM1SE9kOWI1OW5rWEpZb2RRdktHNHU5elpQSjlSYXdY?=
 =?utf-8?B?a1hoVWRqRE1yakJtY2J1K1REekRBa3o0K2FuSVFnTm9qTFpYcEVsU1h5ZGEr?=
 =?utf-8?B?V3VqRFNKd2RyYnF5R1c5c2ZyWlZ4a1RrdjZ0STdHUk9lVjVacmczYlpFRDl2?=
 =?utf-8?B?bHprT3Bnd2tjWkU0U1BXWG1GRUF2S0lnZFZNbW5TbEJWbTRybk11RlB1dVdh?=
 =?utf-8?B?aERkT1FxbktSQXZ1c1VSakUwNm5VdkV4aVRteXUvRDgzL1FRUVdvMnMzY2RH?=
 =?utf-8?B?MzRZamJabE5YSy9tVGVlMU1RemdJeEZjeXpkNzdiUTdZdTIrOHVWdUJOSVVI?=
 =?utf-8?B?cUtWcktlbVliSXBqeHh6MU9hMVRLSXQ2Rm1vOFdhc3kzL25sQUdoSGhRWjNU?=
 =?utf-8?B?N3B2QTRQSU14dS9yOWRMVE1UWnlqNG9FMVV1T2lyM3RjcW84d0NuT09ObERY?=
 =?utf-8?B?WnMveTMyZzRkb0hEblRoYjhBamE1Rm9zTWllQk94VHdhbVB5ajgrM0wwakZm?=
 =?utf-8?B?MHZaYmoxV1JYdkZRakU5QmNMVDRlUUc2anhMQ1hrZVRWd09ja2RKalF2YWZ1?=
 =?utf-8?B?N3c2SHQ1NGZMTy8zeXBjMVovMWdPZThFTTRubVppdzBKV3JsaEdpNGpmOVpO?=
 =?utf-8?B?K202VWJXMVp4YlpXUWJacE56NTgyK2NkQzBNaUZENDhtbFVNYitxQ0cyWTY5?=
 =?utf-8?B?ZW4vdjh3RzRQcEJ2V3ZZMitpVC9Mak9GOWRlQVVUbDJaQTNMV2N3NlhaNHJQ?=
 =?utf-8?B?WG1xOUVBTlg1TUQ0SlBSK29HYU9XM3pwQTFjUEhVdHEzU3FuU2UxcTBHbkIr?=
 =?utf-8?B?MmFkWE13dGVpUThCQWxHb2kycXdCSTR4NUR4NjFMMUVQU253T08rdWxlQXRX?=
 =?utf-8?B?ZGRVZkxna0pJZUhKSkpwSGlXTWlodklMWFJ6WnJCcWJlRXkzeWIvbnlVOW1B?=
 =?utf-8?B?VndEdGZtWE9ZQjhUNGswOE1zZ2pHN0lNTFNCZjlIek9xSm82ZGJaeU00cWtI?=
 =?utf-8?B?d1B2QmlwSEdYL0dKNFJDT0lvdFdkM3ErZUVRbDZ4QTFZS1krdXBOQi9YcHk2?=
 =?utf-8?B?aW9aV1psVFM5dnlycHFaUk03cm5YUUZ5VktxZFNyUGI5SHFqWldlTDBiOW1a?=
 =?utf-8?B?Q0cxMkF2REdCcExCSDJsbHZLL0k1NVhkVWllN1REREN5MkpzMUkyM053SGNK?=
 =?utf-8?B?c2s3YW14MEVHdDNwc1NIR3Vrd1VlU2p0MjFzYWxEMW1sNE82UnErTWNoWXBp?=
 =?utf-8?B?YUFIaVUrdUpwclQ2YjVGR29la3ZUcXFaS1FRUVRERjJCVFB5U2pDaTJwYVor?=
 =?utf-8?B?UDlWUUtZV0FzQU5zOFNGUGJLVlpEKzlHRWh3Nys0MWsrVkdvcGJaSDJRT1Vn?=
 =?utf-8?B?MmozZlZaTklCeDRKVU9CM1czRWFDT2t2azZWYmhOR3NkWVVBRGpNeUsvYWFs?=
 =?utf-8?B?elpGVnM5OXFmQVBiV3QwaEVQU1VkeXlwVE5yN3FKYzdpTzM0cGpPM3U4NjBo?=
 =?utf-8?B?blJXTzljZ0FoYnVUREJ2ejNNNVEvUjlsZUpIOVFCdklMNm54UzNCUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <366D0B4AF6129D45A240C7A7015EC819@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2de456b8-bd21-46d8-9beb-08d9b9d9e871
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 23:33:00.6918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BvaTw/iXkeEU9njV6rYBysj+x2q1Da6ZtUkx0gRvd2zIFtrPsjbjBmYJiOKGbNjoR33qihTvXZ4lAgfR6Z7qB/V4i8I0dnXIp3Dhfosq+xWw1srEPcf9MthwmfO9jLb8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3126
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 5/7] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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

VGhhbmsgeW91IGZvciB0aGUgZGV0YWlsZWQgcmV2aWV3IE1hdHQuIFJlc3BvbnNlcyBhbmQgZm9s
bG93IHVwIHF1ZXN0aW9ucyBvbiBzb21lIG9mIHRoZW0gYmVsb3cgKHdhbm5hDQptYWtlIHN1cmUg
aSBkb250IG1pc3VuZGVyc3RhbmQpLg0KDQpXaWxsIGZpeCBhbGwgdGhlIHJlc3QgLSBnbGFkIHdl
IGRvbnQgaGF2ZSBhbnkgZGVzaWduIHByb2JsZW1zIC4uIHNvIGZhciA6KQ0KDQouLi5hbGFuDQoN
Ck9uIFR1ZSwgMjAyMS0xMi0wNyBhdCAxNDozMSAtMDgwMCwgTWF0dGhldyBCcm9zdCB3cm90ZToN
Cj4gT24gTW9uLCBOb3YgMjIsIDIwMjEgYXQgMDM6MDQ6MDBQTSAtMDgwMCwgQWxhbiBQcmV2aW4g
d3JvdGU6DQo+ID4gLXN0YXRpYyBib29sIGd1Y19jaGVja19sb2dfYnVmX292ZXJmbG93KHN0cnVj
dCBpbnRlbF9ndWNfbG9nICpsb2csDQo+ID4gLQkJCQkgICAgICAgZW51bSBndWNfbG9nX2J1ZmZl
cl90eXBlIHR5cGUsDQo+ID4gLQkJCQkgICAgICAgdW5zaWduZWQgaW50IGZ1bGxfY250KQ0KPiA+
ICtib29sIGd1Y19jaGVja19sb2dfYnVmX292ZXJmbG93KHN0cnVjdCBpbnRlbF9ndWMgKmd1YywN
Cj4gPiArCQkJCXN0cnVjdCBpbnRlbF9ndWNfbG9nX3N0YXRzICpsb2dfc3RhdGUsDQo+ID4gKwkJ
CQl1bnNpZ25lZCBpbnQgZnVsbF9jbnQpDQo+IA0KPiBJIGRvbid0IHRoaW5rIHlvdSBtZWFudCB0
byBkcm9wIHRoZSAnc3RhdGljJyBoZXJlLg0KYWN0dWFsbHkgaSBkbyBuZWVkIHRvIGNhbGwgaXQg
ZnJvbSBndWNfY2FwdHVyZSAtIGJ1dCB0aGF0IHdhcyBvbiB0aGUgbmV4dCBwYXRjaC4NCm15IGFj
dGlvbiB3b3VsZCBiZSB0byBtb3ZlIHRoaXMgY2hhbmdlIHRvIHRoZSBuZXh0IHBhdGNoIGFuZCBp
IGd1ZXNzIGNoYW5nZSB0aGUgbmFtZSB0byAiaW50ZWxfZ3VjLi4uIj8NCihpbSBhc3N1bWluZyB3
ZSBkb250IHdhbm5hIGR1cGxpY2F0ZSB0aGlzKS4NCg0KPiANCj4gPiArDQo+ID4gKwlndWNfbG9n
X3NpemUgPSBQQUdFX1NJWkUgKyBERUJVR19CVUZGRVJfU0laRSArIENSQVNIX0JVRkZFUl9TSVpF
ICsgQ0FQVFVSRV9CVUZGRVJfU0laRTsNCj4gDQo+IEknZCBwZXJzb25hbGx5IGtlZXAgdGhlIG9y
aWdpbmFsIGZvcm1hdHRpbmcgaGVyZS4NCj4gDQpRdWVzdGlvbjogLSBZb3UgYXJlIHJlZmVyaW5n
IHRvIGp1c3QgdGhhdCBsYXN0IGxpbmUgb2YgdGhlICJndWNfbG9nX3NpemUgPSAuLiIgYWJvdmUg
cmlnaHQ/DQoNCj4gPiAgIHN0cnVjdCBpbnRlbF9ndWNfbG9nIHsNCj4gPiAgCXUzMiBsZXZlbDsN
Cj4gPiAgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOw0KPiA+ICsJdm9pZCAqYnVmX2FkZHI7DQo+IA0K
PiBJIGRvbid0IHRoaW5rIHlvdSBuZWVkIGJvdGggJ2J1Zl9hZGRyJyBhbmQgJ3JlbGF5LmJ1Zl9h
ZGRyJyBhcyB0aGV5IGFyZQ0KPiB0aGUgc2FtZSB2YWx1ZSwgcmlnaHQ/DQo+IA0KTWF0dA0KPiAN
CkNsYXJpZmljYXRpb246IEluIHRoZSBiYXNlbGluZSBjb2RlLCBpIGJlbGlldmUgd2UgdXNlIHRo
ZSAicmVsYXkuYnVmX2FkZHIiIGxpa2UgYW4gZW5hYmxlIGZsYWcNCndheSB0byB2ZXJpZnkgdGhh
dCB0aGUgZ3VjIHJlbGF5IGRlYnVnZnMgd2FzIGludm9rZWQgYnkgdXNlciBzcGFjZSBhbmQgaXMg
Y3VycmVudGx5IGFjdGl2ZS4NCih3aGljaCBjYW4gYmUgZGlzYWJsZWQuIFRoYXQgc2FpZCBJIGNh
biBkZWZpbml0ZWx5IHJlbW92ZSB0aGF0IHJlbGF5LmJ1Zl9hZGRyIGJ5IGludHJvZHVjaW5nDQph
IG1vcmUgZGVzY3JpcHRpdmUgZmxhZyBzdWNoIGFzICJyZWxheS5hY3RpdmUiLiBBc3N1bWUgdGhp
cyBpcyBvayByaWdodD8NCg0KDQo=
