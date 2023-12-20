Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F20E4819DE7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA07710E537;
	Wed, 20 Dec 2023 11:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3241710E537
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703071236; x=1734607236;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lRZ/GoEkFbcRgymSg1l7HfpzlduNfStkkvLJCaHP6Rc=;
 b=O8ZisLtKf6OswYuLDloBqo3vNc91kmCLz2CffKRLCIPgjN3EJmqjmDLZ
 SpQIpGSL97sbjwl811nB1QZw6/gZl9XdkwOJYKnCwTUH+agLCL1y4oSyw
 Jzq2WYYE4Hpe+jwVUl8f5aMhBAyzOT8QcZW70/7WMKJyR7FoE2d3KkKkb
 ZNEbhxV5OkGZmmuyqk47kc+4vJUDb4cuIzfXpg+t71/YOMNMdJBEOBi1m
 UpXSj3PA6ag8F4MzhoReK24opfLsAWqcOonoEtcyLtZVrtu7r2Gp0f53o
 xnCpdjYOMq+DZy1ICm2AYBo8vYCqP11TGs24yeKVaZST88LRRiqVc/kcZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2637285"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2637285"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:20:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="866940913"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="866940913"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:20:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:20:28 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:20:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:20:27 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:20:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxvXX6ZGRz3fuRJn4RgYkJQTPgCrbjiCQoGnH4HYVgYa5okY1ViNNlrTwAeosI+pI7e5rFKFZRvTv5sIJq+Nv1W7akj2ZE21CETKu28unQkJsc2YfiU2gcNY9xpRKUCu+DmFruwEp57hKqIynXpGKRjMCjLXCJs+Pc+cwRBy4UpOZJ9KHQN2VV8Oscs2U7z5GGO1ns+JRQ/WhTKB1hWVGXvtXi28RvmOcAmJCc51HwN4dp1lKIKDCpSUIliA82lUZrB7RJJcRFgVAmLo9Y9N21xPxGbf+MnQqjhtBbVpGGGkmH5SYV32vyVBjM+Gy3vhxZEECOqNcp3n3gFAaBp2Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRZ/GoEkFbcRgymSg1l7HfpzlduNfStkkvLJCaHP6Rc=;
 b=BKqEQkCUgNqfzXO9MuXDFuNUFFSYlai5UP2Q6MIMhXUrqYo3akhd1eJ5IwzqNIO7TQNKrxmhE+rQtM0XkD3Snjk6qCdaaXi3hMBJgiG6S5cNx65R2vd4XWs/wuz892J3ldBrvNq7kwTa/5kmOunrj0AqcuWLNUC1ulb6ao4sjPeXJbBq6YMtBCRoVvS4jFY02UKGTjN2W2bPX8lbx3CaWZ7k+BZSZ07LYQJFxRr8ywZLEMTQ6AxznedKVD/owYBXFke6RYDbswuNG5t/JeADzRjP9mJ+0UqO4NNR5f1X5NoTklNQGhglsRT63NP/WtM2QCkGtsLrz8zxhyrLbqU/dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SA0PR11MB7160.namprd11.prod.outlook.com (2603:10b6:806:24b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 11:20:26 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:20:26 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/9] drm/i915: Reorder drm_vblank_put() vs. need_vlv_dsi_wa
Thread-Topic: [PATCH 2/9] drm/i915: Reorder drm_vblank_put() vs.
 need_vlv_dsi_wa
Thread-Index: AQHaLa67SsE5eZdqL0qALcNOIqqXfrCyEZEw
Date: Wed, 20 Dec 2023 11:20:26 +0000
Message-ID: <CY5PR11MB634483CB80A1D264772E672BF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SA0PR11MB7160:EE_
x-ms-office365-filtering-correlation-id: 0b7f3519-d46a-4c34-8901-08dc014daa51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OHTe0PRX9ThR1ZXyjWHGtCEzxgClot5is0Uc/oaSFtYA/Fh8pAAnpYLayKJsu5jD3jkdQuc8tasCCUJR74JWhxS8C1lTh2EVY+iQDapVaADVReCYv/YKj8dlP7aL7JwrGu0w8tfG0pJ30MF6n/GWu5BbwuDN3Jee4W1WUt92GoxAFtmhcCXCsUn8dLtBQ36e+KK2A0vKsnCm4ZJJ3yggsnh1iNV1HYrLuIlkL3Rm0sIN9Zxw2VdB4Qf/jUZ70D1GWi5TNkNM9nZzd0qh0W7mRNqlvdgcmzXTTcw0zeIwUZoxg2Fe6/TRJeulMQ5qf1jbsTKKL/DZ6/9y7bFFgBqrtSfAVGP7shFv5oWoxXDJbMP1ysgvghTeLiwl6RVmle6eLH0IXyp4PfU+/wnEJS0K4xGT2NIVRkyHGGqh6F/niqgpbuCKi3zLmFkoBACkFUuR7JPL2HtBU65dWbZoful6MGBTe+VDZDlE/OcaG5rsC3oLD5pBoJJK8Fqib85qOriI5bJS28JPXbZ4u3CFWACS3lLlAbRqRJHt6tiZYbqiuNFFqWSgTzoNs4+exP23PMkmmElPVdVWarWRbRznnpjHBJ03QYcED1IODsTwfgZMq7eXqEZZgElf3jOjAZk2smTx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(41300700001)(86362001)(33656002)(38100700002)(122000001)(82960400001)(71200400001)(110136005)(66476007)(6506007)(8676002)(8936002)(64756008)(66446008)(76116006)(66946007)(66556008)(66574015)(9686003)(7696005)(5660300002)(53546011)(26005)(52536014)(83380400001)(316002)(478600001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2trc1J0NlZ5UmtMbHNVMGY4SEdqdGNmL3QvNmhPbEU2c3hGQ1pWV3dmUUNT?=
 =?utf-8?B?NHZsUURsSTdub1RzLy9mc2hqdnd4N2VVRzYxdVBxVzhOTVBXS1VZTTdFMHNz?=
 =?utf-8?B?SC93UThoMld5QUxBMXFsUUZhSXY4YndYanNpWk81VG8wMXhKVjZiZWtrS05a?=
 =?utf-8?B?cEljMDRqU3R3ZWUzcVJZcytiMCt2WlUya0haNG9tNS9oVzNuV1psb2E2RXpU?=
 =?utf-8?B?T3VmVzJnbjRTVElobTFHSGl3aXZCQ3hycm9oQWd1L0o4NUtlKzRWZEF5UVdw?=
 =?utf-8?B?YTBQckxMUFQ0cG9RVmdnYUZoMUhpbVY1VUVNY3Vscm5ML00ram1tV3Q4S0o4?=
 =?utf-8?B?VVlMcEMxdzZkdWowZ2p4ZzQyM001OFdPbHZrRExzUlY3KzlXOE9oLytTMEw5?=
 =?utf-8?B?VkV4NStFallJUmxsWmxPMU1HQXFKR3FHdVhQMVlyU0V6azZWRWtpMFFraUM5?=
 =?utf-8?B?SVd5cy9EUk9IQWRCT29vVk14WW5oM3J4VmZwTEFFa2FYQi9XZEpZSjNtQlpW?=
 =?utf-8?B?Z29Qc3F1WGg0bWVZZnpYcGtrSkljL2lxVFU1QTBGVU5ONG9URGorYlRPNWNz?=
 =?utf-8?B?VTY0dXFkb01VdE1MbnFSaXVVMGFacVpVZHMrK1R3VHNpV0xEOHdGNDNSNGhX?=
 =?utf-8?B?TXhUa2JMd0JWMTU0WEtubklaTWl2bnFaWDNoSTVDSG9xUFlORTZXRDJxUUla?=
 =?utf-8?B?TDNuUjZkeW5HL3JZd0hKemtMQi93ZFRkbGdpUVFJU2VhenUySGgxTHQ0N2pC?=
 =?utf-8?B?d3h1RVFBWHBwYm9sTk0wVm02ckZQZk5McmZtbFo1THErWlVjdmsrZVN6NVhi?=
 =?utf-8?B?WHREeFd2ZW4wZ2pWM0ZyeE53ekxXZmd6L0dIaGNYMXlNYzQxd01uSGxVZWN3?=
 =?utf-8?B?WjZmYUJyTi85ekZHamtVVGlmenlLVUlvb1FaR1FiVllyb2IrV0xBd01GZC9U?=
 =?utf-8?B?TlBoYXYwY29GcDExbW1UNWNOVG5CRlo1YURpdkVlNEtSVlhVMjBHelkzNzhh?=
 =?utf-8?B?RGk0VzlRemhDZ29yUHBybjdQbHhvSE9wMmd4NzBDaXFxekEzclVrVUVYeHVn?=
 =?utf-8?B?WWUwRWhyN3E0NHVwZlJwWXF3dEtWejVFczA2VVdLeWtRckg4dWNOYURDZEZL?=
 =?utf-8?B?MUpRUjFqbFNKangrTjhSd0svalVhcXdzTjYvUEQ3UlFTNGtmZ3pETGREdHRB?=
 =?utf-8?B?NmhsSWk4THZCWjlVdGw4dmdpN1NuWXFaOHVSNml6WXZMTmpVdjVxVTNVNFFZ?=
 =?utf-8?B?Wnh5bGtTRFZNT2pieUxFRVRUSFRVaEw1VFBabXY2dTZiWXRCMnNDS0tXSzBZ?=
 =?utf-8?B?OWlxOXcwZkZKSUVndUV0c3h0NjBML1F1ditrUC9EaGdnWEoxOEpjWGlnUTdu?=
 =?utf-8?B?eEhVaE5nYzRLZDlBKzJlbHlWSDJDZmpUOW5BQXFFeitxd3pmbmtYL2RYQTI0?=
 =?utf-8?B?ME84b3luMFduaGFwYU1MbHhFQ1B3ME5Hak1oeDRFcFFTSmdYRkRTT2NTaW8r?=
 =?utf-8?B?MmJSd3BJaW9LMmxZUTRCM3E5dVZMTmxKTnJPemJicmZNbDRlZTJyT3NuSjBu?=
 =?utf-8?B?UE1KSk9KTXRnWnRGdFFuNlMwN1Y0WjZWTlRKTU5RM0NBUHV4Ym9lQlEyTDUy?=
 =?utf-8?B?NS8yYy9DTXV2VXlHaUVLeS8xYzREOHhpQWE3ZkdTRkhkWVd3TnIxVitQVC9O?=
 =?utf-8?B?ZEY5TkVtV3RhYlZNZ3I1aFF5RVQ0UTFsU1BLZGJHVnFsU3VLQ0REUkY5d2Zl?=
 =?utf-8?B?L0ppR2lRS2MrZkN4Vm9sRGRKTzlVVTYxSVRMdFdFODVZSERUOERwRytWaFUy?=
 =?utf-8?B?K1ZuWUJoN3ZQNzlhaUpLenBEWld2NDFWOWE0UVhJMHBVWmhzYlFRQlEwem1n?=
 =?utf-8?B?WDZZekxob3pMdGJkVVdvSUJjNzIyRzlBclNiOXNETElSUittTTA0N2F1SWFO?=
 =?utf-8?B?ZWtpcWJLK2hLTk9DY2poR1p2dkwwNVZ4YjB0MFlYeklLblV0b2s1TWN0S1Vl?=
 =?utf-8?B?NUw3RkZNTUhzOGRSQUdBamVISHJzOTlpbFhhN0VGNDJRMVdWMnpqekljejRx?=
 =?utf-8?B?RTRiQm9BUWorNUVmOXNIWUhRbk5NOHcwVjhwQTdNVER4RGFyMGlDdkJPc0FJ?=
 =?utf-8?Q?wS0uQkIx3Ds3CtWcPC3QFcUBr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7f3519-d46a-4c34-8901-08dc014daa51
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:20:26.0901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1JescXQBAJLsAzc9/98b9FCkqRiAVLWZfIas21zXVJBQmZipoy+z/U4T5i7ptAXz36i9w9xepkozFbO6esYDfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7160
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
Mi85XSBkcm0vaTkxNTogUmVvcmRlciBkcm1fdmJsYW5rX3B1dCgpIHZzLiBuZWVkX3Zsdl9kc2lf
d2ENCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IA0KPiBEcm9wIHRoZSB2YmxhbmsgcmVmZXJlbmNlIG9ubHkgYWZ0ZXIgd2UndmUg
ZG9uZSB0aGUgaGlkZW91cyBuZWVkX3Zsdl9kc2lfd2ENCj4gc3R1ZmYuIFRoaXMgd2lsbCBtYWtl
IGl0IGVhc2llciB0byByZXVzZSB0aGUgdGhlIHZibGFuayBldmFzaW9uIG1hY2hpbmVyeQ0KPiBl
bHNld2hlcmUuDQo+IA0KPiBLZWVwaW5nIHRoZSB2YmxhbmsgcmVmZXJlbmNlIGZvciBhIGJpdCBs
b25nZXIgaXMgbm90IGEgcHJvYmxlbS4gSW4gZmFjdCB3ZSBtaWdodA0KPiB3YW50IHRvIG5vdCBk
cm9wIGl0IGF0IGFsbCB1bnRpbCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoKSwgYnV0IHdlJ2xsIGxl
YXZlIHRoYXQgaWRlYQ0KPiBmb3IgbGF0ZXIuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdl
ZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jIHwgNCArKy0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gaW5kZXgg
ZDVjM2Y2MDc4ZTQyLi40ZGY4OTI3YmIwNjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IEBAIC02MTQsOCArNjE0LDYgQEAgdm9pZCBpbnRlbF9w
aXBlX3VwZGF0ZV9zdGFydChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICpzdGF0ZSwNCj4g
DQo+ICAJZmluaXNoX3dhaXQod3EsICZ3YWl0KTsNCj4gDQo+IC0JZHJtX2NydGNfdmJsYW5rX3B1
dCgmY3J0Yy0+YmFzZSk7DQo+IC0NCj4gIAkvKg0KPiAgCSAqIE9uIFZMVi9DSFYgRFNJIHRoZSBz
Y2FubGluZSBjb3VudGVyIHdvdWxkIGFwcGVhciB0bw0KPiAgCSAqIGluY3JlbWVudCBhcHByb3gu
IDEvMyBvZiBhIHNjYW5saW5lIGJlZm9yZSBzdGFydCBvZiB2YmxhbmsuDQo+IEBAIC02MzQsNiAr
NjMyLDggQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlDQo+ICpzdGF0ZSwNCj4gIAl3aGlsZSAobmVlZF92bHZfZHNpX3dhICYmIHNjYW5saW5l
ID09IHZibGFua19zdGFydCkNCj4gIAkJc2NhbmxpbmUgPSBpbnRlbF9nZXRfY3J0Y19zY2FubGlu
ZShjcnRjKTsNCj4gDQo+ICsJZHJtX2NydGNfdmJsYW5rX3B1dCgmY3J0Yy0+YmFzZSk7DQo+ICsN
Cj4gIAljcnRjLT5kZWJ1Zy5zY2FubGluZV9zdGFydCA9IHNjYW5saW5lOw0KPiAgCWNydGMtPmRl
YnVnLnN0YXJ0X3ZibF90aW1lID0ga3RpbWVfZ2V0KCk7DQo+ICAJY3J0Yy0+ZGVidWcuc3RhcnRf
dmJsX2NvdW50ID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX2NvdW50ZXIoY3J0Yyk7DQo+IC0tDQo+
IDIuNDEuMA0KDQo=
