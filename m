Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F9D7FE0F0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 21:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A50610E674;
	Wed, 29 Nov 2023 20:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935C710E670;
 Wed, 29 Nov 2023 20:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701289477; x=1732825477;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7m5qjllucgOA8HPoKzEI+X9WOmtiexzN8ISNCPnogWM=;
 b=FuC74zLsDm7fwYLfeJmFzSYB/NOyywkCtG0r3tJaQ/tz4wv9M6xKF6GI
 t/laQARKi1jkhP/XUSjwMUqwoEcmmiQxpEAp1KIqXQ78MR6ZQDGfJ4bPT
 5tSvmh7ATM42bSPmqTE48FZ++QKAZUzKsLbfqspdn7DBui+/j2pJNYdBj
 dvzvX31J1WqAAXN0r8OMkmHdymjh76oFhztQwwYfC/QDVpuZUzb7Fkk6L
 ZFQC2ESMPeCum14slCR2qBANXyHYfX81NU4opNnK7kG25pMUJd04dlXvS
 6A/p3/hhD2ELOmUsJkLlzgwEPpRC8AaHgCusRgxFYJI8phPo4fp/HV203 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="396030834"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="396030834"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 12:24:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="769041470"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="769041470"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 12:24:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 12:24:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 12:24:36 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 12:24:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBMQ0Sayu1Q2zCqr/fUMryOzJ/CwH/yrrJ+pCubdiL8+e260LiccOkpxhI/OOoadZxDL6HQC59ux44+j0uXrghDvMJbnCOnu3glw6Fg7LpYhjAkWvlMkl9MDsvDuu4MF6Zjr17lzgEmdnCpl3PiSj3xCoQNK95a9DMGiJy8m5/LLKljcU2Nu5e7RMSyEePYEEXfHh1YwSG+aSb11soKgsMyirUUwjBp1bBF1o6oOK1wzrTGsLhSsGEwN08D9/hS1/xWILTwYxJKnBxaw6koGepwysLSxDCAf+5GBL4UI2FXELUWIiE+9gW7CeL6+5PCHG2z/KXB3n1D1RsPScDDzPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7m5qjllucgOA8HPoKzEI+X9WOmtiexzN8ISNCPnogWM=;
 b=B+yQCz5uoOFFBeb71d7uIC4tvW5CuwaOzxBU5Yawv3uszt7XGqb5LG680ZlgIAvxIJzAT6pne+v5soPKYON7kqIU2I3yCilpHmN7GShfWM9Y4mWme09AmTD+W8m7xvvd6jXqRbVGc6J/nfEf7LFDDUxhzquPx9qBFnloU6y9T9Jo5O8GIS90cxjqlejD9AXy1vF0MZb06vpQcAAV4nx1Dxgh3VBBy3Gb8hej9raXj1blitDhkdw3CbrpuYyWxqxd3x2fC98E/yEqhl7e9O2oTh/81/yMKt/yo8ZAhimo15Kt6tTITvSML8cJ2EyEB2Y7XaLDI5+4OvbDQo6iQdBbpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Wed, 29 Nov
 2023 20:24:33 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 20:24:33 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaIu4OdAAvXvFn4kaB7DtsSgu8nbCRvkGA
Date: Wed, 29 Nov 2023 20:24:33 +0000
Message-ID: <54d7d0a3c53c61191aa811784c9671688722aeba.camel@intel.com>
References: <20231129091728.1272876-1-luciano.coelho@intel.com>
 <ZWd8aYses2mJmBqD@intel.com>
In-Reply-To: <ZWd8aYses2mJmBqD@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH7PR11MB7499:EE_
x-ms-office365-filtering-correlation-id: e515f6f5-d628-4285-b7e9-08dbf11932b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cAzDGa7Korhs2h3oPOhv5klSFuZo4bx8dL6T/OdKoNt67XVFm3VccFtRN8wRo1FwteOIiSyWDr98zZOom5Ki2PZk06WhwaB3T2zuk+IxU7UJQmeL866YO75cEy65ZR7UhJ2ohCDPdFZUFMonqhyug9CxSX3/3pwQyHV6cr13EPv7SlRodEk6gcDyjRv8KYtXe06WnSBwKscDvB/B4HB1vFw15mTXTKcgLCQ312AGmW1FOJMDVCPZtGyzP84riK6MvEwdwKDqywxt/dSGsyvWMLBdYe1cq/p41PtxvFhh2ntPp6IVkQ4OxsnC3NLDThuEZNESmK73E3LSxLTSxFz2keoZFF3SW9sHP9mR7i4v9aDpBvs3y5sSuA4zGKiZdTH6JATlPA2vIkWY5QjHA+U93uk9B6LZ8xiUV+z5fpnWUnOm1ADrm6QMBS2pqeyPgfjBuaICqGyUx0H/tcsi3uacmWu0atjQzqJSOeWuqjfOLlaji3tqLBz6b5StG+ueQvMw2jhh9yBUsA2YR5QRPus83e245pZrpQZq0ER0JmbJzVYDTqORx2v/K68PMQyAtenK0KqeZScsY8fwo7H0nAQ40DIMmhutVRI77JS97hB16BkgA5gWof6Lhd26lJsrnBryxO9zqFxUw2pb6SCHi0NtD6wkMg3ks3mUk9nNtbVbN0U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(376002)(366004)(346002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(26005)(38070700009)(6506007)(36756003)(6512007)(71200400001)(2616005)(122000001)(82960400001)(202311291699003)(83380400001)(41300700001)(6636002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003)(37006003)(91956017)(5660300002)(316002)(2906002)(4001150100001)(6862004)(86362001)(8936002)(8676002)(38100700002)(4326008)(450100002)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2lxbnMxd0lnUlVwYVlCQzEzTjJ2ZFBTSklqSnZ5MFo2U0FRaGtTQTFzTzhM?=
 =?utf-8?B?bDNUTmhobUhMVFlMM2VJV0k5SUtiMkVLbk1Ydzl0a210b3lCanZxclpPWWti?=
 =?utf-8?B?Z2RVYzhBaUVzWForc3p1dnZUUC9WRm1kMlJTWFpvc05WbkZRUWpGQUtYRUVz?=
 =?utf-8?B?NElyM1RxdllSYWJhNURLb2JGKzQxdHg3QWxBL1NxM2l1QkhLNTFLNkNqaHkz?=
 =?utf-8?B?RE1uaEpVTWRRR2N3NDZvQ1daR2xEWWp6SHRPdTZ5MHNPeHdGTENHNVl0aFR6?=
 =?utf-8?B?VHAxZWUvL3VqQUJqZEw5Rlg4blBKZ21QaHZWSW4vSjk5d3pPOEE1enoxYU93?=
 =?utf-8?B?UUNrMm80c2ZORTB1a25Ib1paRHc3V1Y3SlErc0UyTFNiZXdMZEJPTjZiU2xV?=
 =?utf-8?B?L24xOEo3RDZ3N3ZMYXJJQmhBNG1aNjdTY0hxaW52Mk80ekM0THJxY1NRUmRh?=
 =?utf-8?B?NmhYWnlGcWNvVjZiMFJ3N3VjWE4rM0Y5L3NudHN2NTZZOEN4cHlGWDROZDMz?=
 =?utf-8?B?aE00bnd6YWdvNzJ1YlJrS09iSG4wbkx1QWhoeVBWWk5DVTI5SVhrQU5udmZs?=
 =?utf-8?B?VjYyRGhnS3Z1YjUrR05lZmRkZ0swVXBVYUludXhwbUhVMXhSR3JNZ0hhTkp3?=
 =?utf-8?B?THM5dkJKSHFINUN4OG4waFlvQVplYXdRQUNVZldtL3ExMjFDeDd3OXBYcTEr?=
 =?utf-8?B?QVN3ZHA1ano0dHJrR2IwTFpKNFMzcEFCdktDR1JtS0hOS0pFWXNicW9tK3ZK?=
 =?utf-8?B?WTBQUmVsejVYc3B3dCthVS9OcGZkL0prRG1aYWdlOG0wOEZIbzBiV2w0TWFI?=
 =?utf-8?B?NytSc1VBNkkwUUZSeit0eml5bDNGUmhzeTBLRG9mSDBFdkhIT2prOTNENENp?=
 =?utf-8?B?OU9BZW9xRUo1VzZXQkFoOHhVaDZ3N1pVZUdiYnVDRmNWOUxEVVNycDMyTUFj?=
 =?utf-8?B?TDhBUUxRYVhhejBSNUZvUm9Nd0VUZTBqY3lCeHFiVEltOHlwRmdMOUg2dlNX?=
 =?utf-8?B?akwybTFuRTZ5OXpCRWFUSDJWUDJiakx2S0ZKbENXQkN1K01Ma2pDbW9FMVow?=
 =?utf-8?B?V1BabVUvQndaSUkvbk9oVkVjQlFpQlgyVUlDWWg4aVV4a0dTcFIxM1FEb1F3?=
 =?utf-8?B?MkFRUFhFdU1OTyt5akxKOEtBZnptYWEvUDlGclVQQ1lVRjlpWmY0Tmtnd2JM?=
 =?utf-8?B?am5tdCt0aGRkVmhrNjVTZ0xPQ0JxQlpVVkt2RW81WCtYSjVJSkJZeUNTOFND?=
 =?utf-8?B?R2VrMXBjdmx4Zk0zUDg5S2Z0bmRtVVkvdmkvT1MwM21mVHBoVWVKeVNMOFhC?=
 =?utf-8?B?QkxmMjNpYWtudmZoa09JdUJiQ2IyU0F6c3FOTXNKeFB4VVRPcW9uN3FlVmsv?=
 =?utf-8?B?dVBLUU1pQXE1RXBKay9PNkhqUkdjZzBlajd2dU8vL2F0TDZQa2VuM0l6RTBQ?=
 =?utf-8?B?RFV2RCtHaEIrOEN5RG9FUDZwNWlES1JQays3aGcwYUtGQXAvWFNTMWliY2U5?=
 =?utf-8?B?eURETjBJbkk3WVIvdDVUTGh4Z0lIVEpqMjdtMEd0Z3VPUnoySHdVZ0VIWTZo?=
 =?utf-8?B?VGkvalRXeHp4M09UYWQ0MG9wc3lRaVF1SlNxL0dwNHRyaG1RVFgrb2srcGtj?=
 =?utf-8?B?eUgwSWFoMlRHWmFQQ2FPUUVGOVlmbmR4TVFzK0hJZmFZaGZicGFIMytxdGNh?=
 =?utf-8?B?b015TkpIQkVDMm9GaEpqU1pDZEdrd1dlUm0zNjI5UU1NdUhhbEFpZXMwQmZs?=
 =?utf-8?B?alFNZ3BRQ2wvaG1iVXZIcVZHOWdMZ2FuYzRNWFhqRERlRlg1N1BPLzFSWmJp?=
 =?utf-8?B?Mm9mZGNSeDh3czZlRXVEdnRPZTBUSjRyd1ZFaUJSMURqTERjVUhCTVlRYVdT?=
 =?utf-8?B?aEZQU0NYWlpmalVyNUZMMlU4MXlMbHpESHA4cVVmMVdDNTNoQlltWlAwdExK?=
 =?utf-8?B?WVdqZHY5UFJUMndzemZLTHlyK2dxYWduWWVNWVJiTmZLRzlTM2VJdWNmdzBa?=
 =?utf-8?B?ZHZMU3FLTHRJYzA4WWNiR3pzRWdkWjR5SnpIdTFTSUlXTEhsdUJvaWxZQ2wy?=
 =?utf-8?B?eGFjNXlVVTc5STVnbE9yc1hNWUlLOHBTOHFDeFJUN29RS0swNWUzMXBnZDd6?=
 =?utf-8?B?akxobkMvbVFTS2hXZzhWQ2xGYXo2NWRjOTZ5VkJqbEE4dEZIRVVOYXdYVlVK?=
 =?utf-8?B?Mnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0ED33F4E53F47C4FAE278A24CD02E195@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e515f6f5-d628-4285-b7e9-08dbf11932b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 20:24:33.0395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1IuT+t7EOMuEyg0HyxeraZ4iw2zHvrKVgfqcFH+vtFyzXCUBfNbRm1XeIm7MqmBC+YExgiv+Xukv7BQqLOMWPts2TYjZdvmV+hhfJmymQkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: handle uncore
 spinlock when not available
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTExLTI5IGF0IDEzOjAxIC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFdlZCwgTm92IDI5LCAyMDIzIGF0IDExOjE3OjI4QU0gKzAyMDAsIEx1Y2EgQ29lbGhvIHdy
b3RlOg0KPiA+IFRoZSB1bmNvcmUgY29kZSBtYXkgbm90IGFsd2F5cyBiZSBhdmFpbGFibGUgKGUu
Zy4gd2hlbiB3ZSBidWlsZCB0aGUNCj4gPiBkaXNwbGF5IGNvZGUgd2l0aCBYZSksIHNvIHdlIGNh
bid0IGFsd2F5cyByZWx5IG9uIGhhdmluZyB0aGUgdW5jb3JlJ3MNCj4gPiBzcGlubG9jay4NCj4g
PiANCj4gPiBUbyBoYW5kbGUgdGhpcywgc3BsaXQgdGhlIHNwaW5fbG9jay91bmxvY2tfaXJxc2F2
ZS9yZXN0b3JlKCkgaW50bw0KPiA+IHNwaW5fbG9jay91bmxvY2soKSBmb2xsb3dlZCBieSBhIGNh
bGwgdG8gbG9jYWxfaXJxX3NhdmUvcmVzdG9yZSgpIGFuZA0KPiA+IGNyZWF0ZSB3cmFwcGVyIGZ1
bmN0aW9ucyBmb3IgbG9ja2luZyBhbmQgdW5sb2NraW5nIHRoZSB1bmNvcmUncw0KPiA+IHNwaW5s
b2NrLiAgSW4gdGhlc2UgZnVuY3Rpb25zLCB3ZSBoYXZlIGEgY29uZGl0aW9uIGNoZWNrIGFuZCBv
bmx5DQo+ID4gYWN0dWFsbHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9jayB3aGVuIEk5
MTUgaXMgZGVmaW5lZCwgYW5kDQo+ID4gdGh1cyB1bmNvcmUgaXMgYXZhaWxhYmxlLg0KPiA+IA0K
PiA+IFRoaXMga2VlcHMgdGhlIGlmZGVmcyBjb250YWluZWQgaW4gdGhlc2UgbmV3IGZ1bmN0aW9u
cyBhbmQgYWxsIHN1Y2gNCj4gPiBsb2dpYyBpbnNpZGUgdGhlIGRpc3BsYXkgY29kZS4NCj4gPiAN
Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRvLnVyc3VsaW5AaW50ZWwuY29tPg0KPiA+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IENjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gQ2M6IFZpbGxlIFN5cmo/bD8gPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhv
IDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gDQo+ID4gSW4gdjI6DQo+
ID4gDQo+ID4gICAgKiBSZW5hbWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0K
PiA+ICAgICogQ29ycmVjdGVkIHRoZSBvcmRlcjogc2F2ZSwgbG9jaywgdW5sb2NrLCByZXN0b3Jl
DQo+ID4gDQo+ID4gSW4gdjM6DQo+ID4gDQo+ID4gICAgKiBVbmRpZCB0aGUgY2hhbmdlIHRvIHBh
c3MgZHJtX2k5MTVfcHJpdmF0ZSBpbnN0ZWFkIG9mIHRoZSBsb2NrDQo+ID4gICAgICBpdHNlbGYs
IHNpbmNlIHdlIHdvdWxkIGhhdmUgdG8gaW5jbHVkZSBpOTE1X2Rydi5oIGFuZCB0aGF0IHB1bGxz
DQo+ID4gICAgICBpbiBhIHRydWNrbG9hZCBvZiBvdGhlciBpbmNsdWRlcy4NCj4gPiANCj4gPiBJ
biB2NDoNCj4gPiANCj4gPiAgICAqIEFmdGVyIGEgYnJpZWYgYXR0ZW1wdCB0byByZXBsYWNlIHRo
aXMgd2l0aCBhIGRpZmZlcmVudCBwYXRjaCwNCj4gPiAgICAgIHdlJ3JlIGJhY2sgdG8gdGhpcyBv
bmU7DQo+ID4gICAgKiBQYXNzIGRybV9pMTk1X3ByaXZhdGUgYWdhaW4sIGFuZCBtb3ZlIHRoZSBm
dW5jdGlvbnMgdG8NCj4gPiAgICAgIGludGVsX3ZibGFuay5jLCBzbyB3ZSBkb24ndCBuZWVkIHRv
IGluY2x1ZGUgaTkxNV9kcnYuaCBpbiBhDQo+ID4gICAgICBoZWFkZXIgZmlsZSBhbmQgaXQncyBh
bHJlYWR5IGluY2x1ZGVkIGluIGludGVsX3ZibGFuay5jOw0KPiA+IA0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8ICAxICsNCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyAgfCA0NSArKysrKysrKysrKysrKyst
LS0tLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5oDQo+ID4gaW5kZXggODU0OGY0OWUzOTcyLi41ZmYyOTliYzRiODcgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+IEBA
IC0yOSw2ICsyOSw3IEBADQo+ID4gIA0KPiA+ICAjaW5jbHVkZSAiaTkxNV9yZWdfZGVmcy5oIg0K
PiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9saW1pdHMuaCINCj4gPiArI2luY2x1ZGUgImk5
MTVfZHJ2LmgiDQo+IA0KPiBwbGVhc2UgbW92ZSB0aGlzIGluY2x1ZGUgdG8gaW50ZWxfdmJsYW5r
LmMNCg0KT29wcywgdGhpcyBpcyBhIGxlZnRvdmVyIG9mIHNvbWUgdGVzdHMgSSB3YXMgbWFraW5n
IHRvIHNlZSBqdXN0IGhvdw0KbXVjaCB3b3JzZSB0aGluZ3Mgd291bGQgZ2V0IGJ5IGFkZGluZyB0
aGlzIGhlcmUuDQoNCkFjdHVhbGx5LCB3aHkgZG9uJ3Qgd2UgbW92ZSB0aGUgZHJtX2k5MTVfcHJp
dmF0ZSBzdHJ1Y3R1cmUgKGFuZCBtYXliZQ0Kb3RoZXJzPykgdG8gYSBsaWdodGVyIGhlYWRlciBm
aWxlIHRoYW4gaTkxNV9kcnYuaD8gSU1ITyBpdCdzIHJlYWxseQ0KYW5ub3lpbmcgdG8gaGF2ZSB0
aGUgZm9yd2FyZCBkZWNsYXJhdGlvbnMgZm9yIGl0IGluIG1hbnkgcGxhY2VzIGp1c3QNCmJlY2F1
c2Ugd2UgZG9uJ3Qgd2FudCB0byBpbmNsdWRlIHRoZSBhY3R1YWwgaGVhZGVyLiAgV2hlbiBJIHdh
bnQgdG8NCmZpbmQgaXRzIGdsb2JhbCBkZWZpbml0aW9uLCBjc2NvcGUgYWx3YXlzIHJldHVybnMg
dGVucyBvZiByZXN1bHRzDQpiZWNhdXNlIG9mIHRoZSBmb3J3YXJkIGRlY2xhcmF0aW9ucy4uLiBU
aGlzIGlzIG9idmlvdXNseSBvcnRob2dvbmFsIHRvDQp0aGUgY3VycmVudCBwYXRjaC4NCg0KDQo+
ID4gIGVudW0gZHJtX3NjYWxpbmdfZmlsdGVyOw0KPiA+ICBzdHJ1Y3QgZHBsbDsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPiBpbmRleCAyY2Vj
MmFiZjk3NDYuLmQ5NjI1ZGI4MjY4MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiA+IEBAIC0yNjUsNiArMjY1LDI2IEBAIGludCBp
bnRlbF9jcnRjX3NjYW5saW5lX3RvX2h3KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBpbnQgc2Nh
bmxpbmUpDQo+ID4gIAlyZXR1cm4gKHNjYW5saW5lICsgdnRvdGFsIC0gY3J0Yy0+c2NhbmxpbmVf
b2Zmc2V0KSAlIHZ0b3RhbDsNCj4gPiAgfQ0KPiA+ICANCj4gPiArLyoNCj4gPiArICogVGhlIHVu
Y29yZSB2ZXJzaW9uIG9mIHRoZSBzcGluIGxvY2sgZnVuY3Rpb25zIGlzIHVzZWQgdG8gZGVjaWRl
DQo+ID4gKyAqIHdoZXRoZXIgd2UgbmVlZCB0byBsb2NrIHRoZSB1bmNvcmUgbG9jayBvciBub3Qu
ICBUaGlzIGlzIG9ubHkNCj4gPiArICogbmVlZGVkIGluIGk5MTUsIG5vdCBpbiBYZS4gIEtlZXAg
dGhlIGRlY2lzaW9uLW1ha2luZyBjZW50cmFsaXplZA0KPiA+ICsgKiBoZXJlLg0KPiANCj4gbWF5
YmUgd2UgY291bGQgYWRkIGJyaWVmIG1lbnRpb24gdGhhdCBpdCBpcyBvbmx5IG5lZWRlZCBiZWNh
dXNlIG9sZCBoYXJkd2FyZQ0KPiB0aGF0IGlzIG5vdCBzdXBwb3J0ZWQgYnkgWGUuDQoNCkdvb2Qg
aWRlYSwgSSdsbCBhZGQgaXQuDQoNCj4gDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgaW5saW5lIHZv
aWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZW50ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpDQo+IA0KPiBsZXQncyBhdm9pZCBpbmxpbmUgaGVyZS4NCg0KT2theSwgSSdsbCByZW1vdmUg
aXQuDQoNCg0KPiA+ICt7DQo+ID4gKyNpZmRlZiBJOTE1DQo+ID4gKwlzcGluX2xvY2soJmk5MTUt
PnVuY29yZS5sb2NrKTsNCj4gPiArI2VuZGlmDQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBp
bmxpbmUgdm9pZCBpbnRlbF92Ymxhbmtfc2VjdGlvbl9leGl0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQ0KPiANCj4gYW5kIGhlcmUNCg0KT2theS4NCg0KDQo+IFdpdGggdGhlc2UgY2hh
bmdlczoNCj4gDQo+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+DQoNClRoYW5rcyBmb3IgdGhlIHJldmlldywgUm9kcmlnbyENCg0KLS0NCkNoZWVycywN
Ckx1Y2EuDQo=
