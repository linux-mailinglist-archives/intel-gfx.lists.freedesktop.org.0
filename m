Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B259F8939F8
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 12:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BBB710E090;
	Mon,  1 Apr 2024 10:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESVobTHD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC2310E090
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 10:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711965858; x=1743501858;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AbatmyKsfm0LXjoq8cnh+UbJX3rpbW7YNe8d+7EL784=;
 b=ESVobTHDo/5Kz4pXSCo1Xe8b6aYlw/fnIsgzznN34UokcQCfsKP6eFOQ
 v4GuaJQTHNebdZAwHVm+RbLm0Yg2OFgAKzVrB4OYurntuQgWckd0R4FWJ
 AgU3nylH6yaKe8NZVj3ODNCkkFtqcWYMmvFl/fEaREeJQt20cxB6mq+5S
 LVvJisMkt4/Zx0zhdE+/wSVpbjRx+TUzHzQlVnJRdrSIxVrWVHbuKyFqV
 Te8nqkrtWL41ZuxuQpFIyY1rShJ4Q7iKbvVO7VdWcYrvEUJ24GCFKRd5t
 Xa1eHbYyLy9Ls657DwCwo8YlAaf4sM8QPkm9kXKH7WM+wdlILZV6pCgbY w==;
X-CSE-ConnectionGUID: yEVAzU6bR4GGv2mgmID04w==
X-CSE-MsgGUID: S5iGKtysTxeySEOThahUeQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6920522"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6920522"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 03:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17490201"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 03:04:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:04:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:04:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 03:04:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 03:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bghPF/4ik34rg5T9yFaSNLOe67QY1wffV2xMDSjXap3E4wulEWXN/W1r6n0jIFcXR6eF3XyNbO2J6GZHUhp9VT8/CcJ8E3TVkcbhLSmLT6q398+ZPBHBIyXpWK1gzqs8bi6zVBnd9bFWgf5HuBuoHo1RTdt6pJkmWeyN8cQQu5EcbEdY8ycMn304Hlj+JEs/wm+8wP0zUphHx9ns1yR3wV/msQ90RGtYqKk2sOKbmc9uuonuVI2pkyG5+IgZIHyuSI4ARr6wcJWluBjmrB70oWj0cCf+rWfzFwEk9UvQA7PDt+gmlWfVXu9PZozm+/9HMwqPqB6SD4TfqxRLvoU5ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AbatmyKsfm0LXjoq8cnh+UbJX3rpbW7YNe8d+7EL784=;
 b=BEje604OOgmex2Oe7su/fQPRhoM9K/4IDypeTaqhPE9zFwsr5qdG7Tsnczr4GbF4ehOBJLUEAdFo32VT+3UYQAJ9jiAuuMNqnu9RfeoWoYAhJ4/HqiyFPZCHruuFDdsit7rqxymedVMba/p9mXF7ldJLOn+Kkwt2AVsCYJaL4gzXHaHlFWmTPRF4s7TUbeMBWj4ruf07b72rwAL2I2JNa1I6KGJweDod1jniBSheai/Gmlajd+dWN+4+bWt1CdYwrr3gf8Eky0Ts8d7tjidG9KDKuCLoi4/z8ssFHlwYR1bQFUIJbm98+s8esA2dsAQ8HIQLVuAIhpNHA6r9NdNMGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by DM4PR11MB7256.namprd11.prod.outlook.com (2603:10b6:8:10c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Mon, 1 Apr
 2024 10:04:14 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:04:12 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 04/22] drm/i915/vrr: Disable VRR when using bigjoiner
Thread-Topic: [PATCH 04/22] drm/i915/vrr: Disable VRR when using bigjoiner
Thread-Index: AQHagXZL9RjsFUbe30yFOGqao4AD2LFTNI2g
Date: Mon, 1 Apr 2024 10:04:12 +0000
Message-ID: <SJ0PR11MB67892252540C983EE2220C318D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|DM4PR11MB7256:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YLWLs+P2PlqHXf1rh5vv+x8FjIXzpXvt/kwO/v1IGaOspn9vn1U2ddyasVn01h8WbR7qHO22iQhwgPVeZ56H4jQ9Hrnz0F0Pem84ZIRKWfWONjiMZsuBFRm5WzoXW5dMIo5UuJsTyLtSoMC+Aj2QGSuDcztaAs3IygSwjSN8R/jOf3W8D46UjWmA0ScH/tnHQr+/icQsfrCbBMhJQFEdk34h21beL6AH7+PavuyVDNVTd5cn+aTMbdNRDQiAyHEljDJgNFAI1gb6T8wvRbucanHH6p2eRmsVBeKQO9a4loVzTd5CdfvI1471Buhw/ukCteUMgD2mEha0yzQByJuxpDmR76b8Q0mDeUmN9nNAhmAhOfHe7NQrXDrbbOiUCle8sKFDDRX1ynsoh+vr0cYRETX5B28538MiYuG7w/ZuCysTnshcr306TKN1pRPtwvE7+bFfj4v8khBWsEKUQVvrRFa7z4vlEd5nSYnfQ/Lj4oFc4wxejiRjH4DBUAJH2aSqI91wxZICUJqBGn7Vtzm0jij7QTuozAY+ehan83x8Q9KLp7iQABnJXzlcoI1yiDhchEUfBFtgMFxDRUlxFh0Ruwspbk0yp0ZjxP1PhnvKyoEOf4u63r4tzpTv/lBuN5IGlqNC6zqXmoP4rFvEzotWfTusA6Q6wS50zfFcSaIEW5Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dFNTZnJaWVNjRm51TzJQY2dJeXpIOW96RDFrbEU0aVVCdE5la2M3Mmdjdndw?=
 =?utf-8?B?MDhPWk12YUZYRmg1YVl4aFFyb0VhWDhNeFVHYnp4dXhmS0hDTzFNMlV1SFRj?=
 =?utf-8?B?aC8rWk12akt5ZElmVGI4T3pKeEtadTE0aHFDZjlabDJRRXZYWmpFYXdRb2FI?=
 =?utf-8?B?TktGUFcwTFZmSTI1dVJWQTVyMC93bUZXWXVWSE1TcmZIdlVpT28yTDA3Vkgv?=
 =?utf-8?B?bkU0Q0VmQ295dnlSdHpRRTA2elpzQkN5T2dIR0I4KzBGQVFtblhhUTFFRHVH?=
 =?utf-8?B?L3E2Zmp4SFRrZ2dteWFTNHRWcFJjRUdGMGRvekJpempJS0RXdTZNMHgvc2Rl?=
 =?utf-8?B?Ni82a1hpQ1ZwcWpGK0E0UTgzeGtpaFhyQnAvcHQ1K2pTNllwQXJscjk5d2VR?=
 =?utf-8?B?aWFoMklnRzd2MkVLNjJEb1FGcnFaSmZhcDlJNDFzUXNJT3BXOGVuQ2g5Ukl6?=
 =?utf-8?B?WktFSUNUZ3d2dXptbXVBamxaYTBmRG9lZWtVZGY1a3hEVnl1aE1ENEJ1VlI0?=
 =?utf-8?B?L0RYb0tmMkVMMGNIc2MyVVJEN2RsSEcxZnFHMGRvejRsT0ZqK0J0Y1ZnWXQ1?=
 =?utf-8?B?anV2LzZLVXNDZDc0cm1NQll6eS95UG45SzlQdkxCUlYyOXBONzgwYlJ2T011?=
 =?utf-8?B?K2tzVEs3N3ErVzJXaW1qTWpub2I0OW9GN2pRTG1TSjBDdnh1Zmdjemd5MmpT?=
 =?utf-8?B?cHBSc1Q1TmVvSG9KTFpuZ3JsdTBQNnUvQTVVNVpOTW5GSm1SZFE3a3RjcUdk?=
 =?utf-8?B?emhSU2o0RTh5RzZFZWYyTkgySkQ3RVN6RXo5VCs0S3Q5VWl3S2MrR3NTa2N6?=
 =?utf-8?B?eUo4T3VKUXNiTDF1eFNRc1RMOEowMU9YSTFhRkZ6RFN4TmlpTmlmNWdYV3dV?=
 =?utf-8?B?OVpuVXhmNVNaTERMQnczUXhQcThzKzduNkQ1UmVEeUgwZDRXMEVSREVsSkIw?=
 =?utf-8?B?VTNUcXJ5YU1wUVJUTFpaZ0pRajhBVWZrWVlsRFpZdm5pRDY0cEE0REVtNGJu?=
 =?utf-8?B?YXdkeXl6UDNHYzJMV1FGNUdIYXNHV2FrK005SDRWYUNjUVBTQXB0WHo1dDhx?=
 =?utf-8?B?OHFFdCtoUGNTS0plcFhpeTdtOGxXZkZpbjB6VlpFbTJyUjBLK1pMTXV3RFdp?=
 =?utf-8?B?YTRPYWxIZ1Q4eDM4WCsvSmZheWZBODRoWURUUks3NVZldElYYW1BN2dUK3VD?=
 =?utf-8?B?dlZMZHdrMjFkWEszQ0xIemRScHZBcmt5eVJyR3ZXVUwwamF6dlpFdUplc2kx?=
 =?utf-8?B?amJpRnZTZjFtbGc2NXJrR0RQaDdack8xWUJieCtYdE56UEZRY2VjWFNVOXEy?=
 =?utf-8?B?ZjlvSTBPemc0TXZlK0R5aStNckU0Y3VVL1BVSW41QlJlZW9ZQ1pVRENxQlBs?=
 =?utf-8?B?a3FQOUN6VitybkNYUit4SnZxblhnYWo1NjhuTHNxUDlDRXMwcTJDSzdnUWxP?=
 =?utf-8?B?THlJamZXVElpTWlMd0tnMmdiK0lGOU1HemZEL29IZzJQcUNNeEY0bXY3MkE5?=
 =?utf-8?B?RWdZbGlNamFTaEJ2elNpV1RBbGtsN1NzMWdxcVF0VHlxYUo1eTZiR01wSUF6?=
 =?utf-8?B?Zk1PMjZFTmtsQkN0dlRyRllrUGpwbEpGUGtJTG9ud1VrbTVBcGVZWlRONTZ6?=
 =?utf-8?B?bW5FTnN0MmhGdFNSZm0xdzVtaGEydm9xODd1NDE2Qk1JczFUdXhNaFRkbktR?=
 =?utf-8?B?aHRuZWhDaUh0VkJ1ZmxDQXdZYWE1OUdNUXNqbmxOM3RhZlVRWElDRVF5dVE0?=
 =?utf-8?B?dFRYa0ZNNVhhdVFMeE5sZ2FLK3R6RjFaRFY4bERDem9TZlRwRmhMOWJDMFVH?=
 =?utf-8?B?SGNmSVdXdGZoWmRTSk02RGxNclJYMlVaTEFickFBQ09xUEo4d09xOUo2MW83?=
 =?utf-8?B?Q09YZ0k3YnRKWmdKOFBxeEFxWHRXNitPN1NjMmpYbjJtTzhUY200MGdVWEJH?=
 =?utf-8?B?K0tjcXVtSHRiUVgwNW9wVkt5RmtURFYzL1dJcnkxdUVrd3d3MHQyZlBIQmFZ?=
 =?utf-8?B?N2ZvempISjhUbnJQRUt5WjZjdDMvanY2ZVBjdnN0a29raHFDQ3l5RTBlLzBP?=
 =?utf-8?B?ZGdKWFAweEhEblJJTW5sTVBCdHN5NDBTdHNFVDN6aVZZUVcybU82Q1pVMC8v?=
 =?utf-8?B?bWgrZ250Z000ZmtGMi9SbVQ4SVVyQTMwVE5rVkdUOG9YMXBoWVZSS01qMk5C?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f79b6f04-b8ed-44a2-272e-08dc523314df
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 10:04:12.6180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tlu8dC9dnSXsvSGxT3yMQqKxhcUv21rk6x4yRJl6+4CU7/pOgv9lZQNdGUJjAFoq2xCnQW4LDzerMHYdjpOEFA1vm3RlqegNEQt64huYjiQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7256
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwNC8yMl0gZHJt
L2k5MTUvdnJyOiBEaXNhYmxlIFZSUiB3aGVuIHVzaW5nIGJpZ2pvaW5lcg0KPiANCj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEFs
bCBqb2luZWQgcGlwZXMgc2hhcmUgdGhlIHNhbWUgdHJhbnNjb2Rlci90aW1pbmcgZ2VuZXJhdG9y
Lg0KPiBDdXJyZW50bHkgd2UganVzdCBkbyB0aGUgY29tbWl0cyBwZXItcGlwZSwgd2hpY2ggZG9l
c24ndCByZWFsbHkgd29yayBpZiB3ZQ0KPiBuZWVkIHRvIGNoYW5nZSBzd2l0Y2ggYmV0d2VlbiBu
b24tVlJSIGFuZCBWUlIgdGltaW5ncyBnZW5lcmF0b3JzIG9uIHRoZQ0KPiBmbHksIG9yIGV2ZW4g
d2hlbiBzZW5kaW5nIHRoZSBwdXNoIHRvIHRoZSB0cmFuc2NvZGVyLiBGb3Igbm93IGp1c3QgZGlz
YWJsZQ0KPiBWUlIgd2hlbiBiaWdqb2luZXIgaXMgbmVlZGVkLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+DQoNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJy
LmMgfCA3ICsrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBpbmRleCBlYjVi
ZDA3NDM5MDIuLmY1NDJlZTFkYjFkOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5jDQo+IEBAIC0xMTcsNiArMTE3LDEzIEBAIGludGVsX3Zycl9jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gIAljb25z
dCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3ItDQo+ID5iYXNlLmRp
c3BsYXlfaW5mbzsNCj4gIAlpbnQgdm1pbiwgdm1heDsNCj4gDQo+ICsJLyoNCj4gKwkgKiBGSVhN
RSBhbGwgam9pbmVkIHBpcGVzIHNoYXJlIHRoZSBzYW1lIHRyYW5zY29kZXIuDQo+ICsJICogTmVl
ZCB0byBhY2NvdW50IGZvciB0aGF0IGR1cmluZyBWUlIgdG9nZ2xlL3B1c2gvZXRjLg0KPiArCSAq
Lw0KPiArCWlmIChjcnRjX3N0YXRlLT5iaWdqb2luZXJfcGlwZXMpDQo+ICsJCXJldHVybjsNCj4g
Kw0KPiAgCWlmIChhZGp1c3RlZF9tb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNF
KQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtLQ0KPiAyLjQzLjINCg0K
