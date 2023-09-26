Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5625F7AF28A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 20:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0970310E048;
	Tue, 26 Sep 2023 18:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC89810E048
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 18:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695752475; x=1727288475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=06amNwB1N9l0xPMngYToR7Fm5dxD1RDuiEh51qxA1SU=;
 b=fNzMjElgFc3g/zGmmKyzjUClkgTRsbrVcS+97O3ubJlG2LNM7WbiqMj0
 h9jrbUC2cYBt2d5JeFdpG4MZ/uwP/AFC3QzfsPWiD4b72ExDWslk8LmHL
 DsYy9te2VXxd7nxLUzx4jZGL+QUEMxmGLIuMUMheb8IUcXPLmP/1q6Ebb
 2GQbab7V7CI0YRKQJdULe+vHCBK/Xht0WullpljvvYvEuxgyQ05kulix2
 7y9aXFSSnhkJrytqLsvNjbP8NoENyuO8ulTkvw8Lu3iFbaChFBASQy0a5
 Xqsbfy5/vxiLA2vKjyGiIsUM8J48skkqAQ0qaWXPgaAiI6KTiwMoGkXYd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="381534345"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="381534345"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 11:21:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="742444152"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="742444152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 11:21:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 11:21:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 11:21:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 11:21:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 11:21:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=maVxdoeG3iuceGSYN6YWZnTx2Xm8uCmGruu1a7gUFTm/+vHlDEoua9h9pjDhmsgV0lcOa+M4xZAumOKbh14iOS4OS6xzbvSeB7npnhbFlQckLLXvwgypy+iycvCepy0OhFa2MO1zfNW5pG36zjC15XWlbvO13sN1ccUuAaIxc057hzMQxTf3VPPuzQdBu0mnYoy/JECeIt2Jm3ocDO/Wm0EESdwPnBkm+4z85qid4KMvSGW76+/rknmhwkUCFj69sFY3gq7ksJJIzvsCT4afJY/WgPANRs/XEHjBKbTRkRFc6swCQNdMhG3Ls5jNYwhAvEheIIjWiK+FsERn6mK/rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06amNwB1N9l0xPMngYToR7Fm5dxD1RDuiEh51qxA1SU=;
 b=dfxzeLXv0dbnTueQvMOeJdWNz1GDvA+p6AaFS4ulDPAa586SJlpWx5bbN95fhNVN5FIbjyugtViiEaH3a/h4pGcPPXOKy27P4Buf4nNdswbl6yIO9t1nJU2GhIRFG/JATxn5qZm/QIDMKGR7azdpWm9ZF2GCsa/PylQjx59aCnkZ2FvdsVxuFITlH1oPPvU/ZyX8xeE1yd9nQlHY2k4kDRJbKWa2NdvD0Qe0D6Dv1qfdT7a/jJIWaSETbxOb7dYVMji9slFVVd9/jS4Ny24Nh6N3fhhySOQ5kjU+AXWnZCQE8SlubXQCTq0BhcPXC4cWG/gncO5lPeiE/q5ED5M2Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Tue, 26 Sep 2023 18:21:11 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1%6]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 18:21:11 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH v3 2/3] drm/i915/guc: Close deregister-context race
 against CT-loss
Thread-Index: AQHZ45seqXXI7ubqskaSXVFu9eXSZ7AaesqAgBMKcgA=
Date: Tue, 26 Sep 2023 18:21:11 +0000
Message-ID: <e3595859e5acc81c014c4eecc59c573d95813130.camel@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-3-alan.previn.teres.alexis@intel.com>
 <ZQMoG9nW+3lVj60j@intel.com>
In-Reply-To: <ZQMoG9nW+3lVj60j@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CO1PR11MB4962:EE_
x-ms-office365-filtering-correlation-id: 5c159a6e-d72c-4f9f-cc71-08dbbebd5cce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g/3z4pn5OwRu9nCjOS05imgH60c/K8SJoUGLHmx+CSBSr0rdFSHo+OZkA2g/dIg2cTn28FdS8+S5Vgd3DV1jodKutDQvtroyWHTgYxsORTCD4w5inOFgcZnjgCS+JQv203seZXgMvwIYU1O3am9Ds8V8G7qKYEin6AAS/LaNWs7FUFNHVH2GbAsqccAZb3dX/v2WbJtyFY7khYSpOLB3b2zmoqv4fEMc7THdWiqjpg9SvOAu69maROfbF0ryCw6UJqZc4BDaUTrIHrBFIlaHz8Y0bA2MGxlMkjJFhT/l85VVGsXVhq102HcKXzF30XiwrHLG4KtnKIXi8RDGJWeqYZ2Gq8rdCLk+ZrLS5415gAuCqZ4eYrH+Ecz5qMBxJYrw1EvEo3XU+5/qUgNXH0KDznl28BjJ6cU3G5o7xadmaDLOw0dXn6v6YZ++5d2/f3Cf8ds/x2gWJ9r/5w3coD0PEkBo2/wnCvt2gljwp0ECeYZZJby5ekKEGspFuE2n5EbPZYjmbRUJWpqSynoUnj5mjhPamIEH/lx1yjhKum7LKDJKDU/T4UmHSF6fe72K/3GMz8mPaMJWj/8c9SZOxK2/aHZxJYq/51hb8PxuaMty/CZW0In4tVTSjo10XbUlF+GU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(396003)(136003)(230922051799003)(1800799009)(186009)(451199024)(2906002)(86362001)(6486002)(36756003)(26005)(122000001)(83380400001)(38070700005)(71200400001)(38100700002)(82960400001)(2616005)(6512007)(6506007)(8936002)(41300700001)(8676002)(4326008)(316002)(5660300002)(6862004)(66946007)(76116006)(478600001)(91956017)(6636002)(37006003)(64756008)(66556008)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VFEzd0l1OHNiMWNEeTNCQUpOSVM4M0dlNjJuTTR3TllhcXZRcUx2VlhQMm5O?=
 =?utf-8?B?WmQ3M2taaWlQK3U0NHJlZ05zbVhuQ0NkY0tJWmRldlEyK3dPM1l5OW1uWEcz?=
 =?utf-8?B?ZUR2b0lNNXdtZWJaTCtsYWFOd25oR2xwelZtUDI3OGZ1dWw1UndFdmlxOUtV?=
 =?utf-8?B?L2RyQVRXMVFWRkxpMDBtalljcFJJekFWd21Wdkh3ODhoTVgwQVRyY3hGRkZn?=
 =?utf-8?B?K25lOHhEb1lERDR1T2hQNzFIZFZ2eUdZYlVpbzZOcUl3TGUrS3FndlRYT3lL?=
 =?utf-8?B?RnZOekFQTXRkVnQ3N3grT2VncWxJVnhjNnNjdS9qOHVTUk10OTQ2TURaQ0R6?=
 =?utf-8?B?S3Btelc4UmJjM3F4WUtFNUIyM25wQ25ETEc0bTFSL3ZDOVpmNW1QUEh5Z08r?=
 =?utf-8?B?dDJoNWUxN2JZWnoyOE8wclRSOXdNMThkWWMzVEF3Y2lrRmJTdk9mT2FXd3Bv?=
 =?utf-8?B?MSsrRnRNN1pwVm4wdEsrd0x2QnkycW5QTUxwZUE5NE1RTFJHK3I3SHhuOTlq?=
 =?utf-8?B?aEFZMlg2SHdDZnlSeWV5MzFoUU9KV0VYb29CQWlZdTlrcXI0TVM1RFRiN0Vn?=
 =?utf-8?B?ZnhhdXhPbnBNNE4vY0hibmpYd0I2WXlYOVhHWDFzckFwWVR0Z0dRa1FMRUtF?=
 =?utf-8?B?d0NQN2RINmZNYzRZUk85TTJJdjlWWkJYMTJ1bDlJQlRoYjhvUXpFWmFDUHhv?=
 =?utf-8?B?V0VFNldyN1Z2Nm40RkhLYmhQOEgvdDlRY2FLSytQNUI3eGRhY1RGQzY4dkM5?=
 =?utf-8?B?NWRmTlFmRVZaVmg5eU05RXZZcEtNMXY0QzMyZlQycE9CNHhLN2xnODhKc1E0?=
 =?utf-8?B?TTVKQTZqYTg4RkxhRnI5WVFFSXg3K1dvNnVNd1psOXZrR1VmcEwxeEpMRjlk?=
 =?utf-8?B?aUNMM3ZwcTlsbEwwWDk4SFRKOGU2cmw4YXBOWS9IR1c2bWh5ZHZvdWRLc1Uw?=
 =?utf-8?B?Y0c5Y0VzNm9tMHVkd1oxMDltODVIdEcyOE9nalFRdHNySFltdGxwRVB0MEdQ?=
 =?utf-8?B?QVpTUlorbFBDZGMwR2FSd1gyWTlKVW1QWXJvMjRwQ2UyTjlaUWpMSmUxUCto?=
 =?utf-8?B?UytrSGFCZ3JJT1ROTGMwQmVpNWErQUZnS2lJY3RpVkhBVU1JZFhQcEkzekRv?=
 =?utf-8?B?Z1ltWTQ2MUNXVS90UTV0ZG9jT1RhRjRtUld3Z2dLN3Vhanh3a0padU0rMmlk?=
 =?utf-8?B?YnRBWmx5SUVKazhPWGhsWUlWajZKYjVubk1ldFNEWHZFYmEycWdacWhtTnpZ?=
 =?utf-8?B?VjM4S2FZNHlONVNRcXB0V2NRQjFTdjFWTkZwUkRlZDdHTTREQnFVZnFIcEkv?=
 =?utf-8?B?Ri9veHRCdTNJQllQZmZjU3lZb2VyODlCUm15ZXVXMnkxc2h0UXE2K3AwZDB4?=
 =?utf-8?B?SGtQNFlXUGg0OEYybVFtR0o3YUdmdnA1c283Si9LeC9WZGgvb2QyVlBYeHZz?=
 =?utf-8?B?RWpNa2J4Z0p3UUluMFZsYkxxNnY1WVRNdGNlMEdLUFlQMkdoYm1vamprZUJY?=
 =?utf-8?B?UWRYMmQvVm1kQW1MaEkxcHh2SnVTSDhNZCtkVG1aVC91eUdhTDhLVThqOVYr?=
 =?utf-8?B?MnRMVWNTY0pPK3lSOUpFUDJ4WUViN0xqd0I2TFQzR2tZUVZWa1NMcHh4Ni9n?=
 =?utf-8?B?R2pwWEZlSlNlNzM4RVN0UnZwV2xQdGhGblRIMkJjTnhFT2xFM3FoRGhBdXFj?=
 =?utf-8?B?Sk9ZRHpHNUppbjNuL0R5a204VnBwd3M3NWtTYVN2Nll3UHkvRmlVUjhyL2lv?=
 =?utf-8?B?YnZWMUxNRlBzajJSQW8zYWE1TFZ5bm1NM3lFZ0puT2F2YWs5VGZyV1ZDSkh4?=
 =?utf-8?B?NWVxVmduSFg3akJObzhNanJNSlEyZVpXcXJWSHR3aUMwN3NOR2w0NVRNY25l?=
 =?utf-8?B?NGdNVmZwai9ONzgxeFg5ZTJIcnFidER6WnlJNTJTMGgzTmVKVkdmMUlTajY3?=
 =?utf-8?B?bWI0eTQ3ZnBDZjV6a0lhdHAxQ0toNHk1WGc0N0IvUk1XZWtYako0OGxEZ1d4?=
 =?utf-8?B?RGFYU0xNandMWS9pM2d6bVhHZjVGdHQrRHhMVFZXUS8xNnBwRGkybFpleHBH?=
 =?utf-8?B?SnhlVkJnSzF0aDN1dXdWZzM5ZFFqVmIyaUxOVFpjTmo2NmxaNGVrMUsyR3JT?=
 =?utf-8?B?UXBUekxqYjhaVUdnRW9DR0ZHa0RXMG1kWFViQUVET3RVWFBmMFJEb1FNR1dQ?=
 =?utf-8?Q?NIeRuZr/EJDmEiJi5dyIOrQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1709674BBD67514FAB8CAA6C3F47AEE7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c159a6e-d72c-4f9f-cc71-08dbbebd5cce
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2023 18:21:11.7634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Juf5KPAGE3Dq62o3h02UL1MVg3G/Nv6vTQUfR64pXpGg+FsKzkVEdLSVdoahgadLnRhKyAp4HbWCt994qdovuvDl2vvK/Q53DcaaDYKYfa9S/GQqA6HvMK/IunkH8BRz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4962
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/guc: Close
 deregister-context race against CT-loss
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

T24gVGh1LCAyMDIzLTA5LTE0IGF0IDExOjM0IC0wNDAwLCBWaXZpLCBSb2RyaWdvIHdyb3RlOg0K
PiBPbiBTYXQsIFNlcCAwOSwgMjAyMyBhdCAwODo1ODo0NVBNIC0wNzAwLCBBbGFuIFByZXZpbiB3
cm90ZToNCmFsYW46c25pcA0KPiANCj4gPiArCS8qIENoYW5nZSBjb250ZXh0IHN0YXRlIHRvIGRl
c3Ryb3llZCBhbmQgZ2V0IGd0LXBtICovDQo+ID4gKwlfX2ludGVsX2d0X3BtX2dldChndCk7DQo+
ID4gKwlzZXRfY29udGV4dF9kZXN0cm95ZWQoY2UpOw0KPiA+ICsJY2xyX2NvbnRleHRfcmVnaXN0
ZXJlZChjZSk7DQo+ID4gKw0KPiA+ICsJcmV0ID0gZGVyZWdpc3Rlcl9jb250ZXh0KGNlLCBjZS0+
Z3VjX2lkLmlkKTsNCj4gPiArCWlmIChyZXQpIHsNCj4gPiArCQkvKiBVbmRvIHRoZSBzdGF0ZSBj
aGFuZ2UgYW5kIHB1dCBndC1wbSBpZiB0aGF0IGZhaWxlZCAqLw0KPiA+ICsJCXNldF9jb250ZXh0
X3JlZ2lzdGVyZWQoY2UpOw0KPiA+ICsJCWNscl9jb250ZXh0X2Rlc3Ryb3llZChjZSk7DQo+ID4g
KwkJaW50ZWxfZ3RfcG1fcHV0KGd0KTsNCj4gDQo+IFRoaXMgaXMgYSBtaWdodF9zbGVlcCBpbnNp
ZGUgYSBzcGluX2xvY2shIEFyZSB5b3UgMTAwJSBjb25maWRlbnQgbm8gV0FSTg0KPiB3YXMgc2Vl
aW5nIGR1cmluZyB0aGUgdGVzdHMgaW5kaWNhdGVkIGluIHRoZSBjb21taXQgbXNnPw0KPiANCj4g
PiArCX0NCj4gPiArCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNlLT5ndWNfc3RhdGUubG9jaywg
ZmxhZ3MpOw0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiANCj4gSWYgeW91IGFyZSBhbHdheXMg
cmV0dXJuaW5nIDAsIHRoZXJlJ3Mgbm8gcG9pbnRpbmcgaW4gcy92b2lkL2ludC4uLg0KYWxhbjog
SGkgUm9kcmlnbyAtIGkgYWN0dWFsbHkgZm9yZ2V0IHRoYXQgaSBuZWVkIHRoZSBlcnJvciB2YWx1
ZSByZXR1cm5lZA0Kc28gdGhhdCBfZ3VjX2NvbnRleHRfZGVzdHJveSBjYW4gcHV0IHRoZSBjb250
ZXh0IGJhY2sgaW50byB0aGUNCmd1Yy0+c3VibWlzc2lvbl9zdGF0ZS5kZXN0cm95ZWRfY29udGV4
dHMgbGlua2VkIGxpc3QuIFNvIGkgY2xlYXJseSBtaXNzZWQgcmV0dXJuaW5nDQp0aGUgZXJyb3Ig
aW4gdGhlIGNhc2UgZGVyZWdpc3Rlcl9jb250ZXh0IGZhaWxzLg0KPiANCj4gPiAgfQ0KPiA+ICAN
Cj4gPiAgc3RhdGljIHZvaWQgX19ndWNfY29udGV4dF9kZXN0cm95KHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSkNCj4gPiBAQCAtMzI2OCw3ICszMjk2LDIyIEBAIHN0YXRpYyB2b2lkIGRlcmVnaXN0
ZXJfZGVzdHJveWVkX2NvbnRleHRzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykNCj4gPiAgCQlpZiAo
IWNlKQ0KPiA+ICAJCQlicmVhazsNCj4gPiAgDQo+ID4gLQkJZ3VjX2xyY19kZXNjX3VucGluKGNl
KTsNCj4gPiArCQlpZiAoZ3VjX2xyY19kZXNjX3VucGluKGNlKSkgew0KPiA+ICsJCQkvKg0KPiA+
ICsJCQkgKiBUaGlzIG1lYW5zIEd1QydzIENUIGxpbmsgc2V2ZXJlZCBtaWQtd2F5IHdoaWNoIGNv
dWxkIGhhcHBlbg0KPiA+ICsJCQkgKiBpbiBzdXNwZW5kLXJlc3VtZSBjb3JuZXIgY2FzZXMuIElu
IHRoaXMgY2FzZSwgcHV0IHRoZQ0KPiA+ICsJCQkgKiBjb250ZXh0IGJhY2sgaW50byB0aGUgZGVz
dHJveWVkX2NvbnRleHRzIGxpc3Qgd2hpY2ggd2lsbA0KPiA+ICsJCQkgKiBnZXQgcGlja2VkIHVw
IG9uIHRoZSBuZXh0IGNvbnRleHQgZGVyZWdpc3RyYXRpb24gZXZlbnQgb3INCj4gPiArCQkJICog
cHVyZ2VkIGluIGEgR3VDIHNhbml0aXphdGlvbiBldmVudCAocmVzZXQvdW5sb2FkL3dlZGdlZC8u
Li4pLg0KPiA+ICsJCQkgKi8NCj4gPiArCQkJc3Bpbl9sb2NrX2lycXNhdmUoJmd1Yy0+c3VibWlz
c2lvbl9zdGF0ZS5sb2NrLCBmbGFncyk7DQo+ID4gKwkJCWxpc3RfYWRkX3RhaWwoJmNlLT5kZXN0
cm95ZWRfbGluaywNCj4gPiArCQkJCSAgICAgICZndWMtPnN1Ym1pc3Npb25fc3RhdGUuZGVzdHJv
eWVkX2NvbnRleHRzKTsNCj4gPiArCQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZ3VjLT5zdWJt
aXNzaW9uX3N0YXRlLmxvY2ssIGZsYWdzKTsNCmFsYW46c25pcA0K
