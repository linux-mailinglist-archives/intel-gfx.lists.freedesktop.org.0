Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B398C434EAC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 17:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DEA6E9C3;
	Wed, 20 Oct 2021 15:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159B66E9C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 15:09:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="215967403"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="215967403"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 08:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="720449043"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 20 Oct 2021 08:09:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 08:09:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 08:09:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 20 Oct 2021 08:09:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 20 Oct 2021 08:09:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UjZOr1NDPh72nJyMfQ2K2KCP3UUjs2GYGeFXO8WnptDZlprJIwNUXiBIzN07HKWY1tJtNZ7E/rwdLxfEOJVBNL3wnEUopKpSOkDeu35m1a5JFKXoLCSCEcj9ywxr/9q3shlfdADJo7U+Q48bjQbxeLtmuOxldGIOpnnNpXIIMZGJKkHax2ym1DJ2gXMJcFfqRZ4iGro8w6me981Qwcbj3zy8HcQ+Fyg1fK5778sNgmnPB7NBcc0KPVOYY3seEmfNMVqW0ARRDRJoHoiqV+sFtDHm+kJoD/GvaSz96I8YjtYaN7hcCXaD6lldsuxzXzpLVCL2SOrrNRbH6LoK4ITflQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L6CYTpFYQsbvk0eqa82X9g4r+cp7SL2fVASOdi6Bfz0=;
 b=DjoCuErfTWxvQGub0XmSQD9nUt0iOQc2UBgy/VKC0Rw+FdybXVHlRV4mGR1un8TTIz2KRvfoSp2PdHwfTEnm5cY0nIjqzF6y7ZJZJQwsLUBioRK4nsDx8DOvn0rtGwY+waj6Lkztfsrst7wP6UJ2fXoiAfxrvqD86Ju/s9DZnCLQ1sN5DngqiA5IrBLR8rei7kS1YAZ47aWNld9A7iAtd4df06OSdJa8udbyn3/SXAy7BtLM89nkslec4/iN+lTe0mMcVmpu2l+WxVjCTSKYPSgf1W1EvTJxm7VwQiCLGP1PMQqt7IkyabvFddHt51a9tyHqBTeM9YYEmfj7M+mlWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6CYTpFYQsbvk0eqa82X9g4r+cp7SL2fVASOdi6Bfz0=;
 b=M7izGq2t4xFL+DFysv47xj+8acKwrn+gUb92gt+6lrwZN0Po6VhgApaa+F/LgEzdHeKEuPGY7kwAG1g/7SQRMW43olYDWXBAK7Px9AXY+MXJ5RjiIuq3EASZa32TdA83so9XMqFH55EYv99QeufTipZVSmPF98e8LkZCUXAiLgY=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL0PR11MB2898.namprd11.prod.outlook.com (2603:10b6:208:73::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Wed, 20 Oct
 2021 15:09:30 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379%3]) with mapi id 15.20.4628.016; Wed, 20 Oct 2021
 15:09:30 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
CC: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: Rename
 POWER_DOMAIN_DPLL_DC_OFF to POWER_DOMAIN_DC_OFF
Thread-Index: AQHXxUmeh71B5n2pZ0+UHTCbtArXAavb/mAA
Date: Wed, 20 Oct 2021 15:09:30 +0000
Message-ID: <8e9f8fecda3a25653dd85a8747b5fd292da0215f.camel@intel.com>
References: <20211020003558.222198-1-jose.souza@intel.com>
In-Reply-To: <20211020003558.222198-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68b37423-bb17-4849-144c-08d993db9db5
x-ms-traffictypediagnostic: BL0PR11MB2898:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB2898D05D4331275E29860B719FBE9@BL0PR11MB2898.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9RIHdFDzePAxgNQ7yDON8dCDiTfCYCz58AWb5C2Nagao2RTt/JZh49TzJSNq8M3hKj8k3YeGWQDoqVzZpTPF/8rtMgEqz8Z0JHl+uqzUF7Agfh+0VD+PRElIYA59OMhTzOxT69G8/m1um8VW7MwO7zAVjAsYdvAv7wir0kUQx95muH5ZHa08TLw+xvY97d0bjmBZbNUlFuILYcM0p4YTZUHnKiaeiK9yX1y28qnsoaFwYyVO+VOrSXgAY7bt5iYcQ6BVbMdT354lnsku37HgMjRhUJ1n0eIzveGIMfy7XOiytF5Ip+qtPQrf2fxiNZtVqAkmzB8+c2b7xD3/LFTnHWgTOFNkliQz2SeKi64xvWzj9TnCckKz7rrhaVi95lHSz1Fz06dx8wegxHbVx5aL21Ft1GVGJoHzGu/2FNBUu/2xGi5iXomS508nA5dmlCd70V2OrUDA7sN3Mnb4/XFGbk1K3tD0V4TZm1YG6vn+ZN+osb3DW/H7bcx9gYCN49nJHd4q1HfTPD13P5FgVSTti4VUwXMJ5JbENzlDEYFe5+gcnp3VdScCuSAISRPeY14Al5h+1n3yC21LAiQUWzmkKFTi/pFRGAry5bvgDx/05dRvblR5Amn00ZrJvMZFJItq5O+6i5rPW7WZe5mp5QSCMgASHEnhBA4v46krm11wiUI1DFMjwXoURVNp1vGbHQFTF6XsSvFVvYgAWxhsps4UJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(122000001)(38100700002)(66556008)(64756008)(38070700005)(66446008)(2616005)(5660300002)(2906002)(107886003)(8936002)(36756003)(54906003)(8676002)(71200400001)(83380400001)(82960400001)(6512007)(76116006)(91956017)(6506007)(26005)(6486002)(508600001)(86362001)(6636002)(110136005)(186003)(316002)(66476007)(4001150100001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXJRQTMrZkFCRHh5YTIyTlpOOTZlVE9UQysvNWFKRU5xYUxBT1hhSVJlNENw?=
 =?utf-8?B?OXE2VTgwRUJRK0xQdTdaSWpmenpvT2V4MElWbG1OWHdDVEw1VDZia1pMcmFq?=
 =?utf-8?B?dWxOUCtlLzNqYWhSR0ZQNENydEtCM2FRdExmV0JPWTFYUittSnhSN0Qxb3Ns?=
 =?utf-8?B?cmlQcmV5SVY5cnlFTDEwSVZXTUMyNEpxbmhaVXFsb29KYUZYV0J3WjVBOG43?=
 =?utf-8?B?UlJ2TFBtZ1ZxSzNKZFR3NUhna29kaEU3VWllaHNSSWFHQ01kbGdPUHZoZjE1?=
 =?utf-8?B?QjRJOHEzODBFVEZtVFE4TmIrSTZDZjNHL3ZQU2VOSlFuYmdmZDJ4YVI4bTVo?=
 =?utf-8?B?RVo0LzRqYUtiWDJmUUhQZkUxMlFJWDFQYzBJUDhlQlRmVXNQOXNxc25HK2x3?=
 =?utf-8?B?aFQ3cXBwUmRSVTE4bjB1ZjFqN0t5RzlVRlJYdXU4aHN2alZqQi85N2RBRlRW?=
 =?utf-8?B?dVYyVFkrOStmdzlYdTk4WWFWOXUxTDU1T0QvSmFUSXNjTEtPY2pnc0NTTThv?=
 =?utf-8?B?TFdMbGt1Q3Nmc0JBTCtpT24rM0UwNXFLSmZ1eURhVE9oNkhUZnRTcm0xT2J3?=
 =?utf-8?B?UDgwSjN5Q3VzdjJkSVZueTNualFWdDlpbDRpMTlKR3J4OGU0KzNkZzVSbnRi?=
 =?utf-8?B?ZnR5OU10OHNReFBnaXY4eTFjSWJncS9vMUFwOTBseFZQcFh0UGdUbUc4ZmRH?=
 =?utf-8?B?QXpuVkdHVlR5MDhhYm45MmRRS2lTVWhNR0VXblMzeUNBOElPMzlCNmx2ejIw?=
 =?utf-8?B?MWRLVytHSnBLUS9VMmkwNjFQZ09OR0dLVTBqd2U1ZkkwaUVVMVFYYlhmTjNL?=
 =?utf-8?B?TVpMRmVpQjhLQzlWRC9BMEl3YWJtRWl0elRDRUpwUU81R2NuOWlmQVVFMXFt?=
 =?utf-8?B?eDVTbjl0MjZQTmlQeDN5VzBHSmVNcXNUemdLOFZOOEtIOTBKczNVSFM1R2xD?=
 =?utf-8?B?YW9jVC8wOXAxYkxmaGRHNEtuV25EdkZYeXRUQVdwZHVNRWhQUjdaTURoZ2pW?=
 =?utf-8?B?dmFMTVVyMjh3eWVHNHBsWlJtSXFJcVVkclZUc2dwODJ4WWU2dmZmZzlqMUtV?=
 =?utf-8?B?ZWxxWnFIREhFKytYVGFmZjgrTzFoZWQ0OFA5aW1jUjdNOG9QcVExaGdkenVs?=
 =?utf-8?B?c1BPY25JQlRnWDhGQXZXUDUvUDI2K2lmRSs1eG9nK2NCN2RoWXpNTVhUeDkw?=
 =?utf-8?B?ZWJmblRhUXBoVzh5MTlQQ1NabnA4N1M0b0MvRnd4a2ZpMmttMTA3dXJwWTNv?=
 =?utf-8?B?cG9aaEtlQnM2V2d5OUkyUHkxZS9RaUlodHRxSklYSXpkYktKdVJmNTV6RnUw?=
 =?utf-8?B?VTkrVVl6RGwzK1NJOXlXSytld01FbWlONXg5c0NwY201eWZmUmNmOS9SNUVr?=
 =?utf-8?B?czRjUHBveHRmQ0N5eEg5M3dGbmxOWnhFV0RKandKSlY2WThOY09YWm9lUndj?=
 =?utf-8?B?b0h5eGt0dHR3UnZrVEM2VWluczNhRHliSEpTVXJCWW45TXlYYldMeStJQy8r?=
 =?utf-8?B?amlGYnJkaUNybDJ3dGltU3o2am5pay9xK2VnTnNNcUViOXJ0S3RpNUZBUE45?=
 =?utf-8?B?VElhTWJMOHFlLzc1K094YjFTZVR1OTBQbGFXUldFUm9BREhhb0NRcEoyVko0?=
 =?utf-8?B?UkJPUWxTS3ZFaWZIaWtRWWZFZU11aU91TXN2V29UNGgxZUUvbDBvTGt2K0di?=
 =?utf-8?B?Y29NYzlOdmthT3JUblFDZXliWEVaV1ZBYmtFbkFYTDQ1MG9PTFlHbUduS0g2?=
 =?utf-8?B?aVdpYVpiWVJ2Rml3aHFoYml5RkYrdGtKWGY3Qmg5ZHp1alVyZW5hRTJNMVpH?=
 =?utf-8?B?azFCejcwWUlONTMwamlKZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <460C974F2832C542A28D3D39D40B8913@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68b37423-bb17-4849-144c-08d993db9db5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2021 15:09:30.1710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: caz.yokoyama@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Rename
 POWER_DOMAIN_DPLL_DC_OFF to POWER_DOMAIN_DC_OFF
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

TG9va3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBDYXogWW9rb3lhbWEgPGNhei55b2tveWFt
YUBpbnRlbC5jb20+DQotY2F6DQpPbiBUdWUsIDIwMjEtMTAtMTkgYXQgMTc6MzUgLTA3MDAsIEpv
c8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+IFRoaXMgcG93ZXIgZG9tYWluIHRvIGRpc2Fi
bGUgREMgc3RhdGVzIHdpbGwgYmUgdXNlZCBpbiBwbGFjZXMgb3V0c2lkZQ0KPiBvZiBEUExMLCBz
byBtYWtpbmcgdGhlIG5hbWUgbW9yZSBnZW5lcmljLg0KPiANCj4gQ2M6IFJhZGhha3Jpc2huYSBT
cmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+IENjOiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNiArKystLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oIHwgMiArLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jICAgICAgfCA2ICsrKy0t
LQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYw0KPiBpbmRleCBkODhkYTBkMGYwNWFjLi42NjM3NzYwZDI0ZTBjIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiBAQCAtMTU1LDggKzE1NSw4IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluX3N0
cihlbnVtDQo+IGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbikNCj4gIAkJcmV0dXJu
ICJNT0RFU0VUIjsNCj4gIAljYXNlIFBPV0VSX0RPTUFJTl9HVF9JUlE6DQo+ICAJCXJldHVybiAi
R1RfSVJRIjsNCj4gLQljYXNlIFBPV0VSX0RPTUFJTl9EUExMX0RDX09GRjoNCj4gLQkJcmV0dXJu
ICJEUExMX0RDX09GRiI7DQo+ICsJY2FzZSBQT1dFUl9ET01BSU5fRENfT0ZGOg0KPiArCQlyZXR1
cm4gIkRDX09GRiI7DQo+ICAJY2FzZSBQT1dFUl9ET01BSU5fVENfQ09MRF9PRkY6DQo+ICAJCXJl
dHVybiAiVENfQ09MRF9PRkYiOw0KPiAgCWRlZmF1bHQ6DQo+IEBAIC0yODAzLDcgKzI4MDMsNyBA
QCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwNCj4gIAlJQ0xfUFdfMl9QT1dFUl9ET01BSU5TIHwJCQlcDQo+ICAJQklU
X1VMTChQT1dFUl9ET01BSU5fTU9ERVNFVCkgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJ
Tl9BVVhfQSkgfAkJCVwNCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9EUExMX0RDX09GRikgfAkJ
CVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9EQ19PRkYpIHwJCQlcDQo+ICAJQklUX1VMTChQ
T1dFUl9ET01BSU5fSU5JVCkpDQo+ICANCj4gICNkZWZpbmUgSUNMX0RESV9JT19BX1BPV0VSX0RP
TUFJTlMgKAkJCVwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gaW5kZXggMDYxMmU0YjZlM2M4MS4uZDU0Yjc1NzRlZDM3
MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmgNCj4gQEAgLTExNyw3ICsxMTcsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlf
cG93ZXJfZG9tYWluIHsNCj4gIAlQT1dFUl9ET01BSU5fR01CVVMsDQo+ICAJUE9XRVJfRE9NQUlO
X01PREVTRVQsDQo+ICAJUE9XRVJfRE9NQUlOX0dUX0lSUSwNCj4gLQlQT1dFUl9ET01BSU5fRFBM
TF9EQ19PRkYsDQo+ICsJUE9XRVJfRE9NQUlOX0RDX09GRiwNCj4gIAlQT1dFUl9ET01BSU5fVENf
Q09MRF9PRkYsDQo+ICAJUE9XRVJfRE9NQUlOX0lOSVQsDQo+ICANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBpbmRleCBjYTY5YjY3YmJj
MjMxLi5mYzhmZGE3NzQ4M2FiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5jDQo+IEBAIC0zNzQxLDcgKzM3NDEsNyBAQCBzdGF0aWMgdm9p
ZCBjb21ib19wbGxfZW5hYmxlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwN
Cj4gIAkJICogZG9tYWluLg0KPiAgCQkgKi8NCj4gIAkJcGxsLT53YWtlcmVmID0gaW50ZWxfZGlz
cGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsDQo+IC0JCQkJCQkgICAgICAgUE9XRVJfRE9NQUlOX0RQ
TA0KPiBMX0RDX09GRik7DQo+ICsJCQkJCQkgICAgICAgUE9XRVJfRE9NQUlOX0RDXw0KPiBPRkYp
Ow0KPiAgCX0NCj4gIA0KPiAgCWljbF9wbGxfcG93ZXJfZW5hYmxlKGRldl9wcml2LCBwbGwsIGVu
YWJsZV9yZWcpOw0KPiBAQCAtMzg0OCw3ICszODQ4LDcgQEAgc3RhdGljIHZvaWQgY29tYm9fcGxs
X2Rpc2FibGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgDQo+ICAJ
aWYgKElTX0pTTF9FSEwoZGV2X3ByaXYpICYmDQo+ICAJICAgIHBsbC0+aW5mby0+aWQgPT0gRFBM
TF9JRF9FSExfRFBMTDQpDQo+IC0JCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LA0K
PiBQT1dFUl9ET01BSU5fRFBMTF9EQ19PRkYsDQo+ICsJCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0
KGRldl9wcml2LCBQT1dFUl9ET01BSU5fRENfT0ZGLA0KPiAgCQkJCQlwbGwtPndha2VyZWYpOw0K
PiAgfQ0KPiAgDQo+IEBAIC00MjMyLDcgKzQyMzIsNyBAQCBzdGF0aWMgdm9pZCByZWFkb3V0X2Rw
bGxfaHdfc3RhdGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJaWYgKElT
X0pTTF9FSEwoaTkxNSkgJiYgcGxsLT5vbiAmJg0KPiAgCSAgICBwbGwtPmluZm8tPmlkID09IERQ
TExfSURfRUhMX0RQTEw0KSB7DQo+ICAJCXBsbC0+d2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93
ZXJfZ2V0KGk5MTUsDQo+IC0JCQkJCQkgICAgICAgUE9XRVJfRE9NQUlOX0RQTA0KPiBMX0RDX09G
Rik7DQo+ICsJCQkJCQkgICAgICAgUE9XRVJfRE9NQUlOX0RDXw0KPiBPRkYpOw0KPiAgCX0NCj4g
IA0KPiAgCXBsbC0+c3RhdGUucGlwZV9tYXNrID0gMDsNCg==
