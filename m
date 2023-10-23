Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B45B87D2F8B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 12:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8171B10E07C;
	Mon, 23 Oct 2023 10:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF85D10E07C;
 Mon, 23 Oct 2023 10:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698056186; x=1729592186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dr3DMuCMSdsoMvRCJvbP4J3IInIWY72Y7Mdgn++OQpo=;
 b=ArIBJzw0vpN6SztmVg8GXQqp6V14DWfon0w60zkrlwaw+kONPZLDSwTM
 GSBRVG5YrrrVcie3po+xoG/D2vvVsl5mp8IhNx1Q6/KU+yVl/NjKpe8nj
 aYAl9Z9n0xsbF0t2ff2smzG4M5tuLLVNeuxOFSjLZ3p8rpjIID3Ls03Ww
 i94l5cjV1imgHOwpoMBcWyF3JCWIb9A2Vx2rD3LlC2FK+ncemGC/9uv3N
 e9wd+gLZTlr22pjcGpqknot0rqHErw+agQjt88IxWiU7RCJGSystMt1Rd
 4pdXg1zu/MdaLwLa2Ztq1e7NDZA8ccYLZJ/DN1YhzEXAer0SaK5FHNnvY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="371876849"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="371876849"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:16:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="751584417"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="751584417"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 03:16:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 03:16:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 03:16:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 03:16:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 03:16:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FNSYRjQTX/1vQrCAblI29Qcn2DAj3RBa39gMW0hxyiSzei3QviG6nJtb5924fMExrYyd407Gr+kbB+kZnNE6e9SfaDI/VtZFMFZ9S9gh8QYHDD5Yc7P5oc5d526ykp0ZMGWo8XxfCmCLpQtd1S62Bta/n0oLCNqlbomKvhyxIiaout12pwA3t5as6a3Q66nvmHAultWIRtcMsxwC7i69VAzuqz+VgEDQjrM5/7lsyMLMqpjU0U9gAJNKkIbyw1iO6J97w1zdWVrwVV8xcg3mkSlPAAC2rj+7nTph96FlWNX04LRSW31G7Sr6XFhxfS41mjhiPfoweWGZPGnxouhwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dr3DMuCMSdsoMvRCJvbP4J3IInIWY72Y7Mdgn++OQpo=;
 b=K+UQMNiOWlDO4uHEgL4ZRDHBjUnzHL0e4V55DwqEY1d92Mj9/LZlCVnCFOQob+SvHfIPITOkwceXT+oWdndXg4i6J6OcCDkDA+RlKVf57V30QnZJUtcZ38+kWZt7WtOFyRf0b5mFGLQj9GFYg9r1BpgXMmG9GFeJ02qNt5ZL+/3FGthgzS2oNCtBE7GM+53Jj2yl91IjWNDvqgnIQ6kf+0Zg/i1kxKPwbg0iget9OKSjI4sMrDMgYvWZMwKCXipfXnYw/VoST+M79569kjngJEVUtGAZ/06Bwt5DR574hq8tJW4WqBxN+JVKJlH1ZqBAyOs6nbf9+Y4qWxX5Fv8vRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Mon, 23 Oct
 2023 10:16:23 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::a32b:3ba8:43d1:e0fc]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::a32b:3ba8:43d1:e0fc%5]) with mapi id 15.20.6863.043; Mon, 23 Oct 2023
 10:16:23 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaBZDbBOOCk3HlmkG4nyqBkItXJLBXKM0A
Date: Mon, 23 Oct 2023 10:16:22 +0000
Message-ID: <9749798a6af666cc070598169ecf9d0770842c93.camel@intel.com>
References: <20231023084322.1482161-1-luciano.coelho@intel.com>
 <87fs21d7pw.fsf@intel.com>
In-Reply-To: <87fs21d7pw.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|DS0PR11MB6375:EE_
x-ms-office365-filtering-correlation-id: 1efeeada-eb72-4ee9-065e-08dbd3b11b68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Rn49hP/RQF1I1REdGYOm7hS+K3Gj8qwAjk92T943QY2B+WiuHwrfLUs+UxzAcgcj2AlxZVoQB8UHf6kkcH7vfQdxtBWUZlxg++aBv2Rn78YdS7TfjkH3GwYgDJ7KgQrCe4+2uMf/DJ86vG7BpkauV+0rH3TcY6qJhgrSuu64PljesRMT8w1hwPZt9NcJ6maswScR6gU1MlPMKFyZ4pgaco0kYQZpl+QtsxHTXOYQG3sNPkMF2zT4m3S4jIjBiSoZOEZLtyggOuORD3cqQRzJeT5HSS8VGUnDkAtALoAvBIpkxsR93YWl2eL53p+1BzmpBji5Db2AXkNeAkL/lQdpDnSKYhVnBRcDRynGaiw40hji6CLrGCfCicVJjMmDunpEbCjEbIzi/5t5b+ZYy++/B+dD5K9gGQiQ6Zk6dI2XYP3Q8RvDMoHth3z3HMb7LLe/iPObOQKXIylf4bMOk9zPtKX/+iD7LJED3lX8W18EfMMy9owg8JxMsRg0Vd3EK9Lms59Tj0xYsNOOF2VggB/vBgUtNnqhJxKwZTKOouCGpDocCmVREv/I5L6MingGboqJ/170kjXFTTpxlHwBcuqqs+VlhZMA9ZIsbvoC2Y+yUA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(396003)(136003)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(91956017)(6486002)(8676002)(122000001)(83380400001)(71200400001)(316002)(66476007)(26005)(86362001)(66556008)(6506007)(966005)(4326008)(76116006)(54906003)(64756008)(6512007)(66946007)(66446008)(110136005)(478600001)(5660300002)(4001150100001)(2906002)(82960400001)(36756003)(41300700001)(38100700002)(2616005)(38070700009)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTdYMVh2U0hWZnVZdmtYRmQ3OHFSZHN5Qjh0VUhtNmFrQ2JLR291UmthT0pi?=
 =?utf-8?B?VlRUQUwyQjlzTHNwUWQ0MlhrdG1NY0FqNjRWaGpTTmNSQUoxejVjY0lITGtj?=
 =?utf-8?B?ZHdOZys3SnlKK2ZITXJOZmgzTW5DL3Rtb0FBRFlkenhyN1dBWGZFR2tuUTJE?=
 =?utf-8?B?V0NtMkMva0dtNnhYcHZMWWl2ZlQwV0t2R2VoU3JOeHk2eng4MHZYREdmZkRj?=
 =?utf-8?B?bmFhVEMyZHVWMHR0SWZBSkRTZjM4OVM3SlJkUUtjV2hrRGRWV0VwMk8wdWZr?=
 =?utf-8?B?YVBNYWVuY0dYT1FQM0d4STZWUkRYbnlENG5kdDlYWnRMWHhNaHh2N2VDMDN2?=
 =?utf-8?B?cmIvWXBqZjdDVjJGcVZTR3FYZFhKL2wwU2g1YjlKNlEwSmh1bDRCckZDTEpK?=
 =?utf-8?B?U2F6S0tpK0duNE95azV0WXV4aHJUVkYyK2dPdkNxcS9UQVFQMFliZWx0K2o3?=
 =?utf-8?B?NWRhZWxwRFhxOXJ2cGh2TExLL01WRlErNWFveUNOUGF1VU5JZEJDb0tTc3Ux?=
 =?utf-8?B?RndXM3RWcmkxOHVOcFNhelBOcmlWdWFmRkJselgxY2l1RmNrenBQR2cxTG0y?=
 =?utf-8?B?S0NKS1A4WXRWTVRmOTJZOEpyQU81NXVuV1ZvdWI3dXhPOEJ6QnY1Zm56MGw2?=
 =?utf-8?B?MGdyOHZualcxNTloK2NxZjZOVFdVV2RWMmhMRTJuR0FhVlR6R2NaMFhCS2pV?=
 =?utf-8?B?YXJTN1ROc01sTmVGRGRDLzhXMC9iOUtFektuN20zM1NncHRUbFE4OXY5QnhQ?=
 =?utf-8?B?YmgvTW5QUDYzUzJYU3FwNm83QzB2VmYvd0FOdnFUUGRDLy9oN05qOHRrQ3hO?=
 =?utf-8?B?RTd6NlZLL3NyN2JDWXdDd1F6azh2Q3R3Yk1RcUcxUmUvR0hURExLSkhOd0pj?=
 =?utf-8?B?aW5XRDRDTnAydDRkVVN3VXFFdGtNSFlMc1NPTFU0MHpiSktSdVczRkdtOXNB?=
 =?utf-8?B?eHFpWWRPMzluV3h1UW1Tb2c3WlYxSGRrUUdsdzYxNk1PY3NKRGlsNzRDdFRC?=
 =?utf-8?B?V3BxdDZyOFozT2Z2cVZ6UjJHZ1RxRjhwZG05dmVwQWxRaGRYVUVJSjNoK1FH?=
 =?utf-8?B?TSt0eE1oZ3pKNnZka3RxdVVBT0tCTE9yTXJuRkltYjlrWjJudFZTYWt6bG42?=
 =?utf-8?B?d3VpbDQwRFduRDdKaVQyc2R3RWVkQjNBYmdNVGF5ZUhVWEVDc2pRRG1VUUZN?=
 =?utf-8?B?K2Z0TWVralRSK0RDQ2lENTJBTmtJMFdFQkxRZU1kcVpHYTdvYldmRkdoUnRy?=
 =?utf-8?B?ZkJ0d2VxNHNhME5aeFdFeDZndFFpdzd5T2hMK2pLZjVuODMzL0RyOVJqUkc5?=
 =?utf-8?B?VGdHUjhXV2FkMTNSMnN0dXdidzFIeFdhNnc0ZnQ4K1dGeVBtejIrRXVHdHBK?=
 =?utf-8?B?S0g2Qm1hWGRZTnUrUDQ0eEVwS2F0bUl6Y3J1cXltamxmaEZOakE2bGpjRk5w?=
 =?utf-8?B?cnNJYURLS2w1N0hpUXZnMUZyV0JabUhJSUV0cFhhTjl6K0tCTlcxTkc3cjdl?=
 =?utf-8?B?RUIrdjFqOEZEM1kwcCtLRmFNMUZBWnp1RlVsZWg5ajdFV3lzWjBCcFRtSmty?=
 =?utf-8?B?SldEa3FJckpzZXpLL1RocThnOFFnYWtmWUwyQkQ4aHpJOGkvTEkwWk5RNHY0?=
 =?utf-8?B?QzNtRytLdkNJeFRkVmVmdDVpc3hocjJOV0RWVGYyVTB2Rm1Gb1dNSFFENVMz?=
 =?utf-8?B?OCsydHVzWVpkY0tPZDFQOXIxYk1MRjBVR1pWRmUzWGtkcjNqaVd2VlJQUnZW?=
 =?utf-8?B?RW5YRk43Y3lCeXFBMDFLazdOQVRMOWpnMlVQUUVkKzA5TzQxQzVNTnpZUVkx?=
 =?utf-8?B?Q1hkMmtZY0hMdExxa2o2N2FjUW1TSnY3MzVqNzRYM25zY25KaTFpM0pNK0ZC?=
 =?utf-8?B?ajJJcCs1MWM4cEFHUEIzZmR2cXFsbWtvcW9GaVJiN0dydUhXL3kzaVUxRHFu?=
 =?utf-8?B?UUlNTHorYURxRTZ4cEZ4ZUtHMmc0MW52VjZyOVJFOTZmQlJQL1hiMjYvKzdG?=
 =?utf-8?B?ZEs1YURBODU3Tm9JTFE2OTZlemVqNG5iTUt0ZVJ1VVR3QWt1YWV1M2hsZkx4?=
 =?utf-8?B?eVRQYUtBRmZMdHM1TVlTV2lCK3hDaEthYnRGYnh3ZUpOSlhtV0pWYmVsS2Rz?=
 =?utf-8?B?MTRyYWIrTHFWNzF3b3Q3U2NvRE93Q0h0b01XWXBkWGxmb1dJK3RUeElMRXR1?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B7AC27281715F4BBACE2310F10AA01B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1efeeada-eb72-4ee9-065e-08dbd3b11b68
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2023 10:16:22.5169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ksfzA6pQEactqBP1kqB4sWVQWqtyzZk9B0geaI/jKqfuxI2U6B3uxpCCNEtjnWcfUOPHRejR1iYslvH/IKUR4c21XmRNi4mMkkxmtC7L9RY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTEwLTIzIGF0IDEyOjExICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAyMyBPY3QgMjAyMywgTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNv
bT4gd3JvdGU6DQo+ID4gVGhlIHVuY29yZSBjb2RlIG1heSBub3QgYWx3YXlzIGJlIGF2YWlsYWJs
ZSAoZS5nLiB3aGVuIHdlIGJ1aWxkIHRoZQ0KPiA+IGRpc3BsYXkgY29kZSB3aXRoIFhlKSwgc28g
d2UgY2FuJ3QgYWx3YXlzIHJlbHkgb24gaGF2aW5nIHRoZSB1bmNvcmUncw0KPiA+IHNwaW5sb2Nr
Lg0KPiA+IA0KPiA+IFRvIGhhbmRsZSB0aGlzLCBzcGxpdCB0aGUgc3Bpbl9sb2NrL3VubG9ja19p
cnFzYXZlL3Jlc3RvcmUoKSBpbnRvDQo+ID4gc3Bpbl9sb2NrL3VubG9jaygpIGZvbGxvd2VkIGJ5
IGEgY2FsbCB0byBsb2NhbF9pcnFfc2F2ZS9yZXN0b3JlKCkgYW5kDQo+ID4gY3JlYXRlIHdyYXBw
ZXIgZnVuY3Rpb25zIGZvciBsb2NraW5nIGFuZCB1bmxvY2tpbmcgdGhlIHVuY29yZSdzDQo+ID4g
c3BpbmxvY2suICBJbiB0aGVzZSBmdW5jdGlvbnMsIHdlIGhhdmUgYSBjb25kaXRpb24gY2hlY2sg
YW5kIG9ubHkNCj4gPiBhY3R1YWxseSB0cnkgdG8gbG9jay91bmxvY2sgdGhlIHNwaW5sb2NrIHdo
ZW4gSTkxNSBpcyBkZWZpbmVkLCBhbmQNCj4gPiB0aHVzIHVuY29yZSBpcyBhdmFpbGFibGUuDQo+
ID4gDQo+ID4gVGhpcyBrZWVwcyB0aGUgaWZkZWZzIGNvbnRhaW5lZCBpbiB0aGVzZSBuZXcgZnVu
Y3Rpb25zIGFuZCBhbGwgc3VjaA0KPiA+IGxvZ2ljIGluc2lkZSB0aGUgZGlzcGxheSBjb2RlLg0K
PiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gDQo+ID4gTm90ZTogdGhpcyBwYXRjaCB3YXMgYWNjaWRlbnRh
bGx5IHNlbnQgb25seSB0byBpbnRlbC14ZVsxXSwgYnV0IHNob3VsZA0KPiA+IGhhdmUgYmVlbiBz
ZW50IHRvIGludGVsLWdmeC4gIFRodXMsIHRoaXMgaXMgdjIuDQo+ID4gDQo+ID4gSW4gdjI6DQo+
ID4gDQo+ID4gICAgKiBSZW5hbWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0K
PiA+ICAgICogQ29ycmVjdGVkIHRoZSBvcmRlcjogc2F2ZSwgbG9jaywgdW5sb2NrLCByZXN0b3Jl
DQo+ID4gDQo+ID4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC81
NjMyODgvDQo+ID4gDQo+ID4gDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oIHwgMjIgKysrKysrKysrKysrKysrKysrKy0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyAgfCAxOSArKysrKysrKysrLS0tLS0tLQ0K
PiA+ICAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgN
Cj4gPiBpbmRleCAwZTVkZmZlOGYwMTguLjA5OTQ3NjkwNmY0YyAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+ID4gQEAgLTI5LDYg
KzI5LDcgQEANCj4gPiAgDQo+ID4gICNpbmNsdWRlICJpOTE1X3JlZ19kZWZzLmgiDQo+ID4gICNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X2xpbWl0cy5oIg0KPiA+ICsjaW5jbHVkZSAiaTkxNV9kcnYu
aCINCj4gDQo+IEluIGdlbmVyYWwsIHBsZWFzZSBhdm9pZCBpbmNsdWRpbmcgaGVhZGVycyBmcm9t
IGhlYWRlcnMuIEluIHBhcnRpY3VsYXIsDQo+IHBsZWFzZSBkb24ndCBpbmNsdWRlIGk5MTVfZHJ2
LmggZnJvbSBoZWFkZXJzLiBUaGUgaGVhZGVyDQo+IGludGVyZGVwZW5kZW5jaWVzIGFyZSBwcmV0
dHkgYmFkIGFscmVhZHksIGFuZCB3ZSBuZWVkIHRvIGNsZWFuIGl0IHVwLg0KDQpSaWdodCwgSSB0
aG91Z2h0IHR3aWNlIGFib3V0IHRoaXMsIGJ1dCB0aGlzIHNlZW1zIGZhciBmcm9tIGNsZWFuLCBh
cw0KeW91IHNheSwgc28gSSB0aG91Z2h0IGl0IHdvdWxkIGJlIGZpbmUuDQoNClRoZXJlJ3Mgbm90
IG11Y2ggcG9pbnQsIHRob3VnaCwgc2luY2Ugd2UgaGF2ZSBhIGRlY2xhcmF0aW9uIGZvcg0KZHJt
X2k5MTVfcHJpdmF0ZSBpbiB0aGlzIGZpbGUgYW55d2F5LCBzbyB0aGUgZGVwZW5kZW5jeSBpcyBz
dGlsbA0KdGhlcmUuLi4NCg0KSW4gYW55IGNhc2UsIEknbGwgdW5zcGluIHRoaXMgY2hhbmdlIGFu
ZCBnbyBiYWNrIHRvIHBhc3NpbmcgdGhlIGFjdHVhbA0KbG9jayBpbnN0ZWFkIG9mIHBhc3Npbmcg
ZHJtX2k5MTVfcHJpdmF0ZS4NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
