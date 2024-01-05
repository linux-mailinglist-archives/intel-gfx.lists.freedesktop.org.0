Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D85825494
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 14:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5994B10E012;
	Fri,  5 Jan 2024 13:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9759910E012
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 13:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704462135; x=1735998135;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+PBFLfrHd/ggbQwwpfMzYPP8ra8qpz437GAAcSkJVAs=;
 b=d6hHEsy0RK+ueWcyJ5WDbYYgGKnyd+hQO632W8kQydEjJJ7dfGZYA8zq
 BLQvEeYKMiHZTBbhsmymUasEWyPGgU+uHfMaS0U8cpC/i9coUxVBwF8Mm
 yawEcTt1KAsgoJNR9It7JnEmxprBuFLTtwztDFkxViN5I6RXSaupEXoIu
 iDbvw0WHkdo4h0t1E8i90YgYGaDZkiqRB2BESmQoQw+3NMwugXQ53AFI7
 ym614YwmFvt0NKoyqsrDMtxrJ6S0oXdRpvVAmbdDGpN68cP7s3go9/AZL
 Q6BXI7ThEeX15OPQ9XBPPeceje4b78WS40NwM24i7bhPyUhtBkJsp1BpA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="19019522"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="19019522"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:42:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="784201078"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="784201078"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 05:42:13 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 05:42:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 05:42:13 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 05:42:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWBq2bBVLE8GyyZZWY4kEvK/KUieQ8v+Y1o8oxgj5HJzk/X/+UloTQmbcs96OzVwEy4KlEN9C567VxW8JaHgKg8BkbESKNugedqSaJndfEQG9TxJ8Zmw26R/qtblXEvTrkWpczkifsY50HGddePLvoxSDvarhIcscgklAO7KNLaBxBZlBdcMVtFI2R0ylhwzFKugKlTIWdQTtXxgQLOCBvcxyFnO2IF6I9PyKZgYegd5+SeELKrvjGqk7Q796FSgwU3ZLzUQiBzYYhw/6+m4T24n8puedcrba2VMrjybA3GqOSRCQR/ZcpviEtNwKNcNc2mrzhmBkXRDBWeed/fJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PBFLfrHd/ggbQwwpfMzYPP8ra8qpz437GAAcSkJVAs=;
 b=Cru6TMk3f5yaN8FCMHEzB/uM1JhsgCgT6tWiYf2Zc+XBbpFAp3pyJ5NA1r/emJFJ67cnHwRAlJMFBHKQPEPYRERl7GJNgooO/d989+oeWlx836+ANgX1KJdvLuXW3Ahw5OumnLKOWkrv/4ZOuiFneiV549H2H2gu4KG/c4w3xuwUAX/MHcMU8L8FKQ6pJWqtBtotjd33tQnAG6irO3jFGSsRkncE7ra+SHqOm/aI2mJc6A0k2zH8peluwdPki1L86TcqEVuhPoEBlfWf3Yj8RwnlLHlISCfeJFUVk3MgTcL1PgnzwNaxAtRS3v0x09BkbCNZmErnOzV/8E6qn/uv4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4980.namprd11.prod.outlook.com (2603:10b6:303:98::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.17; Fri, 5 Jan 2024 13:42:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 13:42:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 03/12] drm/i915: Move audio deinit after disabling polling
Thread-Topic: [PATCH 03/12] drm/i915: Move audio deinit after disabling polling
Thread-Index: AQHaPuhTV1oVUHkQfUS1mDgzzw6qNLDLPCUA
Date: Fri, 5 Jan 2024 13:42:11 +0000
Message-ID: <349887aca18588feb985fc36ff0b64c0b4ccd47c.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-4-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4980:EE_
x-ms-office365-filtering-correlation-id: 05e5a37e-bba6-4e61-0997-08dc0df41e77
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qsbmSfcjN2+FAe7qPUgvlpymf7QS1xoF3XWswd+fYco5K7VN/pozHkISkVF/NfTP+sblAgE08KRVovq6ungNZY/bZgWiKW2xF8O4U5XEXVOf0uwnws+JmAVjhdhR/cNP+IHOC+T/XZSK8rgIMN9lpPTmXlMSeYHIhNqsMSk3ZkrVmCigMhVyEf4X+2FfCNDqzBtWOFAa4CGL8RkKu/fpNiCz6rXdIvb4kGNyczHUXedDpadjAnP6Z8fNEcKsW3rjL9vleMZF27VMxEZt/sA1WmMj2TcCLgSRSKqIV4eXzTbAdoPzgG3bCApy85Th88VbqOfXTA7z4OIVj9N3xboNa66Lu7cHnfWa5CN7grImdA29ZQwDttsvqI1wEwaVBPqaLRrFkyv1csWSyGlsqK9Pngg3OYSMXlHtJI5MEXqgaf72lI9i5j9Opn2IWZAUtAQEJaUXwHYS6eBI73hXJJcsBffu5/RKTs9fmo/J+BnuUfsm/194ZpPCmBP8CGpApNfi8cFctEtwGp1eqmI48ejsK3eqlVEHg9eKHRNPkI9Tv9BP6M7wxzSsucMk1yWrHQGukarhZCUwuBmc8EIdGw1z1lCQf5081BFHeZnUKm/z8fUyKlT6bp2GUgIvhsH8u9/rEQIEFXtD5rF4YzSyJTu/sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(366004)(376002)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(26005)(2616005)(6512007)(71200400001)(6506007)(478600001)(6486002)(2013699003)(122000001)(38100700002)(86362001)(36756003)(82960400001)(5660300002)(2906002)(41300700001)(83380400001)(66574015)(38070700009)(91956017)(110136005)(66556008)(66476007)(66446008)(66946007)(6636002)(316002)(64756008)(76116006)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0VTY2ZjODVBSFVHY0FaWjQxT3JySU81anluL1c5UEFBaXc0NE92T3hNNitD?=
 =?utf-8?B?MVRlUXdnVlpISXNQd3dRc0xkdWR6ZVpta0U1MXhGQWc1UG82V01IRzJFZEhk?=
 =?utf-8?B?L3BFYytpeWV2T1ljcmFRa01oaktDY3dRY0FpYmdVU2ZaSTlzekxaOVZPaGpK?=
 =?utf-8?B?RWYzN1oxSmtvZ2I1Q2NTRzZRN1hwc3MyVzFYdVJocklEUVZBR0x3MEp3SjZu?=
 =?utf-8?B?R1BWRS9FR0EyQVplcDcySmtHYXRkU2E2SUUrdGY3ckVhOE5sa0c2M2ZWeXUr?=
 =?utf-8?B?enhEc0J2MWI3d2V2MDRXd2pLNEpWNnZQY3FLSVJIcktKOEwxMTRVYUFFMHFP?=
 =?utf-8?B?V05VRVlFSkk5RkJEazFhUFBnYkZMWm9ud2hKbmtSTjA4ZXpJRDNNQjV5aW1x?=
 =?utf-8?B?WGtSTEJ2R3Z6aDVRZlhZM21zcHowa3FUUmVSUTRvbjg0WDRSWkVFeEROdkZj?=
 =?utf-8?B?NlgvT2pBeS84YnZYZTQ3STYydWVCY0hSZzdxcjJlNzRPbmhQSEpPeEQzQ1hh?=
 =?utf-8?B?cWczV3FDSVRjS1o1Ynl1RXFmdnlTQ3FVeHpuOWhwbEZPSWM0S1ZDL09naDgv?=
 =?utf-8?B?cW9sQWNUaVB4R0hjVVh3TzFYckxJRktWNEFsRlNhdXArdVZEdkc5UFYxTUh2?=
 =?utf-8?B?TDhlSVlVT1p2eEZEb0luRnVSUjNodXhNb2p2YmNmNktOTGlod3JIUXYxVG5I?=
 =?utf-8?B?L3RMZ0lvVkRRR1NCSW4yVlJTQlRzOWFDbVJoN2h3d1lyNWY4S01rdUhlUTNm?=
 =?utf-8?B?Z3RyNWlxNmkvaGJLWU5TTkRTZVAvaWtDU1FPUnhiSGxJU1hVc0cxdVBJU01p?=
 =?utf-8?B?c05xZTFwSWdrSVA1cFVVTjFJUlZOQTNKS1FTNFlpVGFKQkgvWjhPNzFpRU8y?=
 =?utf-8?B?MTZOZTZVSmtzMXVZWlFIeDR5RWZoTXhhOVNHQ0lpa3BEWDBtZXh0SndGRnNI?=
 =?utf-8?B?S2V3UXJGTktjR1YrcVlPSExQdHpDcHZMQTEyY1dZaGdPbm9Vc0R1YVVTN1JJ?=
 =?utf-8?B?NExqbFVaT01vR25aNnVuRk5mUGZzTlU3Y3lpZnMwUlBsWUVIRVUzWGg3d1ZW?=
 =?utf-8?B?UllXbkttaG5BVGg2YWdsZzJOcFNXREZYd0ptN0xqNkcxaXpMZ1VLSXRoanJZ?=
 =?utf-8?B?Tm5GMVhEamN1Y29XM3AzZnVkeXpXVUhiRzlpNlVsMnZWcWVZbHhHMytSSzlm?=
 =?utf-8?B?WVh6bWdmMXIwSEkyTDA1KzNVSUhoZGZOV3M2UXd0eWZpRHMybWJtSG05cWRw?=
 =?utf-8?B?cStnaENpVGI5QU4xeXFrWnBUajBhSXc5aHY5c2xPbjUzL1Uva2VaaHZyNkJi?=
 =?utf-8?B?MVY3c0Y0TXBtWXJTTlNUWG1ReTd3c3RvdEpEbXBBOEpWVU1Ta28xaUFWRmsr?=
 =?utf-8?B?d0JZQURJS3htZFNGcFgyaXI2bkVwdXVJNTExL3pYK3lBNGdkNWxqUVZRTGx3?=
 =?utf-8?B?bzNjNnNpSkRlT3J5UTBmVkM3YUgySHFMRkN3N2g5ZjJhQmQ5a2tiemlTK1hK?=
 =?utf-8?B?Vm5kUEdiM3kxMDBkZGErSi9JcU03cDBOYkJDR1k1RzAyckp2LzZWWXVyQm5z?=
 =?utf-8?B?Z1A0emVIWW9MbHZOTHArR1AvdTRialJ6dzFxb1Z0SnFtbUQ2MmNuT2VFWkR0?=
 =?utf-8?B?MUJmeVNBbVhIZ0VvbCsvQlRFeWJ0MzJ5cUFZblllSkZUU21zUVMzeTVqREVo?=
 =?utf-8?B?aFZVbXZQOE50akQ4WnZVTXJYN2dwNnBibkRXUUVNelMyRzFoV2Q5RnU3Ykl6?=
 =?utf-8?B?dWJ1eWNnamJMZ3d6ckk1REFTNXVsaUc5S3R0NXZsK2NHSWp0R3RuWDZHS0tl?=
 =?utf-8?B?Q0RpL1Y0MDJ2YjdjU2QwbUZ4UEpubTE2TDNpcGd0N3h5UWxUVmdLcE5iS2Rn?=
 =?utf-8?B?dnJSUFA2c2RVV3Ntb2gwcGw5VHkyMXhqRHNNYURLNGJWa3ByNmk3RWxLbkZH?=
 =?utf-8?B?eDJOUjIzYWVFMkQwYno0eG1rN0ZPQ1E5bUxHSXUxS0VDNDJ0K3Z1Slo3M2ho?=
 =?utf-8?B?RFZ0T09CSCtEUkVMcU1id2s0cEkvVlJOek8yckRJL28zdXJSckdUU25pR0Ev?=
 =?utf-8?B?cjFYSG9NZ2ZaTStFTG40RC84aEwzOUhCQlpJR1lqZEM3aXUvdEE4bERrT1Nz?=
 =?utf-8?B?dE9aQXJNZmNleUkyZXpNeEwxMGlnRGxMYlo4NlduUkdwOFBzYkxLVjdQZFEv?=
 =?utf-8?B?UFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4ED052DA7A95A5499A3C2D65292E3553@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e5a37e-bba6-4e61-0997-08dc0df41e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 13:42:11.3553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tT1fjKOnS4+gPMOlzRozciXn/dB+mwc3KQhu6ACz1D7xGEnX/SUAH+DAc03VyDAjVYp8Ou9/P4iobhlaDJnog+hLiujWgZnZUJQk9XK0vLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4980
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjI5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IERl
aW5pdGlhbGl6ZSBhdWRpbyBkdXJpbmcgZHJpdmVyIHVubG9hZCBhZnRlciBkaXNhYmxpbmcgcG9s
bGluZy4gVGhpcw0KPiBpcw0KPiBpbiBwcmVwYXJhdGlvbiB0byBkbyBhbGwgdGhlIGRpc3BsYXkg
SFcgaW5pdC9kZWluaXQgc3RlcHMgYXQgYSBwb2ludA0KPiB3aGVyZSBubyBIUEQgSVJRIG9yIHBv
bGxpbmcgaW5pdGlhdGVkIGNvbm5lY3RvciBkZXRlY3Rpb24gb3IgbW9kZXNldA0KPiBjYW4NCj4g
Y2hhbmdlIHRoZSBIVyBzdGF0ZS4gVGhpcyBtYXkgc3RpbGwgaGFwcGVuIGhlcmUgdmlhIGFuIEhQ
RCBJUlEgLT4NCj4gaG90cGx1ZyBkZXRlY3Rpb24gd29yayBvciBhIGNvbm5lY3RvciBzeXNmcyAo
c3RhdGUvZGV0ZWN0KSBhY2Nlc3MsDQo+IGJ1dA0KPiB0aGVzZSB3aWxsIGJlIHByZXZlbnRlZCBi
eSBsYXRlciBjaGFuZ2VzIGluIHRoaXMgcGF0Y2hzZXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJpdmVyLmMgfCA1ICsrKy0tDQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJp
dmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJp
dmVyLmMNCj4gaW5kZXggOWRmOTA5N2EwMjU1YS4uZGE1NDk5NjJmZWNjZCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kcml2ZXIu
Yw0KPiBAQCAtNDg2LDE0ICs0ODYsMTUgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X2RyaXZlcl91bnJl
Z2lzdGVyKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGludGVs
X2ZiZGV2X3VucmVnaXN0ZXIoaTkxNSk7DQo+IC3CoMKgwqDCoMKgwqDCoGludGVsX2F1ZGlvX2Rl
aW5pdChpOTE1KTsNCj4gLQ0KPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4gwqDCoMKgwqDCoMKgwqDC
oCAqIEFmdGVyIGZsdXNoaW5nIHRoZSBmYmRldiAoaW5jbC4gYSBsYXRlIGFzeW5jIGNvbmZpZyB3
aGljaA0KPiDCoMKgwqDCoMKgwqDCoMKgICogd2lsbCBoYXZlIGRlbGF5ZWQgcXVldWluZyBvZiBh
IGhvdHBsdWcgZXZlbnQpLCB0aGVuIGZsdXNoDQo+IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGUgaG90
cGx1ZyBldmVudHMuDQo+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoGRy
bV9rbXNfaGVscGVyX3BvbGxfZmluaSgmaTkxNS0+ZHJtKTsNCj4gKw0KPiArwqDCoMKgwqDCoMKg
wqBpbnRlbF9hdWRpb19kZWluaXQoaTkxNSk7DQo+ICsNCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9h
dG9taWNfaGVscGVyX3NodXRkb3duKCZpOTE1LT5kcm0pOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDC
oMKgYWNwaV92aWRlb191bnJlZ2lzdGVyKCk7DQoNCg==
