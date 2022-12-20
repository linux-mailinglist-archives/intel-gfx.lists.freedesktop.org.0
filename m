Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13236651B72
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 08:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738C210E06B;
	Tue, 20 Dec 2022 07:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC4210E06B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671520793; x=1703056793;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=baGgJYE9AZQfAcG3KJpW/H1LAM2InvH7wbuNEtGdXWg=;
 b=AX5GFmTXkgv6txeC1ev01JbbAlrSMu2i6kyoOW+b5jLWeA9Xyg0CHtAh
 qC1Od3CRPeqLiQqUG0lK4rzDt4sb9uTWUcsrVyeYPGdLiaXDYImKCB3Qr
 ACRXKlSfKMd9jad7qF7NHGIpZFNX8CV2rIrquDOEBeYXWMYQ0jvXZtAIF
 d8EoaGjSi6SVONe6kycRPxh5boSeoWtQXrgv7bnRgf8VPVoE5a4LwKsPH
 0BxaBDKstinb+/dRcQzZUl4ZFqkYnkCZX7UGkdZBMGbNlNq+7Tzff1XHx
 VoT42rzpa7+oQWpfu27yC3nQftS5cwkpVuxU0rIkYkAZw/+lfV/OsfP13 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="317183412"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="317183412"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 23:19:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="650893558"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="650893558"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 19 Dec 2022 23:19:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 23:19:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 23:19:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 23:19:47 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 23:19:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWJBzLcJMILu2YLnfc1pvDmQX1cq0IZ3zw+7LujuphVAUPLfLSCfMI2NLXdpu2x+gKboYULv6L4FTpw1wAWO6fXNFuTC2gViBv5M0imzDaMMOli6DfX7LNoIIhfpdxsTG7kjCyvB5IPhWysDP2r6KEm5w+VnkhZmBIKU0T1iId8+vN74vF0t5xAbo6YFhXpEByZsl4tvufOpccEBbDwmvsTR7YYP3Ph88GZxL6v9uDAWOXh45r7LgN03gFAJkIJfh1wT5pRkSNae3hxDO1kircyaVx6tL4WgXs+EsxnfTyY9cfOTNbAhBGqbL+ZzCvLQDYq2TixJHybaMVdEwVZF3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=baGgJYE9AZQfAcG3KJpW/H1LAM2InvH7wbuNEtGdXWg=;
 b=Lf5XYaAtadFmP/SC+b8nPo44rv01o9Yaqq9YBUE36UeBEI8yKJ2nEsCRD/XyALZR+y5XBJBqLaLKDU6NfNUeLxVxuq/RkkNOGrjNalqGWuobOIhWnOHGierFVeSCu+OSkfIJx5jJeJeI08B1N/dZpet04DvekRc0bndC9gH24lJrqZuCuquCsiVT15cNHpkgSTvOnfnrewvciBNN+f3WdE7a9rS8vADCr7Gk5tyrLGfvjFS4+T4396iiAe05oUAep/gvpawpxwFgM/FxB1OWVwaWEbFLiCYtIwBUWpU33SaV0itCLd0a+0ILje1W7uG/OeZ7eyCsVl58F4UQySUF3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by DS7PR11MB6016.namprd11.prod.outlook.com (2603:10b6:8:75::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 07:19:43 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 07:19:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
Thread-Index: AQHZD5vDxDFpMyXqf0C1ggWGIV9Wfq5vWSQAgAcN2LA=
Date: Tue, 20 Dec 2022 07:19:43 +0000
Message-ID: <MWHPR11MB174179BCC29B8999CB616291E3EA9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-7-suraj.kandpal@intel.com>
 <f3d574fb267345d286721f35e84c6383432921e7.camel@intel.com>
In-Reply-To: <f3d574fb267345d286721f35e84c6383432921e7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|DS7PR11MB6016:EE_
x-ms-office365-filtering-correlation-id: c53f8704-b5b4-4bb3-a327-08dae25a90ec
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ZKri/AmtPePZzPePkbsruYhySeDI3YWSuXs3OcnzsnD5iY/rbKCcvy9j5C6K0cXq5fJTZMo9M8EYM4eiYgQRwCkHJRBB1hgz1QgL1qmUIhNuvLoJe1j8hO1/Gt+9e91uJrlk7qHBgyOVMlOgGhHg0VmILPjIw0DiEmYDnPcevU334qLoyaWfzJBXKNbDpCTNyMPPZ0LgZL3v7YO+elzYn/5XyXkA3PBu81A1ZDw4XuMqxSt2l5RCvk9Pg0s5YM5rGhqj144rYXQTrbhX0ysVAb1HcBqysXnfnM0l7Yn/+tKrtIlarDXbPFpog9XNh4iLP45a97zSTp2JAi/7qqfyBU7dmPNkBLvhOzqUJAD6U491x5iOplVUPNCoehRHEFjcR0VF73FUYdQWSJI7jEGVcVFrUjfd2lcD6NONBIk4eg1gjQHUEb4QJ7kIvaoHWyPQI6T8rRqV5rzzek+L1p4U3RoBPR5ZkYbDQBPJ+9DABLD79gXA0Oyl+3PnWs0jh75aZr3ooeWjYr85mf5C7/TPz83DT6eDjOAqIXC0dxK3qZT/SqTDGNNPm6JwDxgLHavoKkkU1oc0pcPdnazxGcj7R0TbuYbn4nxHjf1jBpbf2PlZPn7ncvOrszdPNH+chqB9Za1iFEl13JzjQq8FsoRv9yp08PATns1dW26Ic6kQYk4Rdmu54WptoWTqlmgdOe6ajjlOYlyUHPhw073p8yfZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(346002)(136003)(39860400002)(366004)(451199015)(83380400001)(86362001)(55016003)(33656002)(122000001)(38070700005)(82960400001)(38100700002)(316002)(8936002)(4001150100001)(52536014)(110136005)(2906002)(66476007)(64756008)(66446008)(76116006)(66946007)(66556008)(4326008)(8676002)(54906003)(5660300002)(107886003)(9686003)(6506007)(186003)(41300700001)(7696005)(26005)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2xidTJJYUpDZXVVNTNCd2VIU3N2MDd1bVVaMGpTdEVydFJkVWFmbkNNZlA2?=
 =?utf-8?B?YU9qazhSUDR1UG1ZYmd6SzczSGJFQVQvYXYvYkk3WXVieGxDaVRIY09jd093?=
 =?utf-8?B?eDN2NXcxS01kQzROS0pLQ3F4NnFDWTdPR1BycXVRdlJLWHF3Q0xpK0ZDWTRN?=
 =?utf-8?B?ZEhNSmd5SEloN3FPZzBXR1dXZ1hMaTVGdzFUd1BySFBJNHJvWWJ6dnFRUGg4?=
 =?utf-8?B?MW9qTU1MeFJDbW9zTG9RMEgvUlExeGhtcnAyanJ6OEkvczZZRGxYSm5Sejl1?=
 =?utf-8?B?WGVncE5uV1lWT0hZVCtaTDZGVGc3YmtvZFJJSVVWTHA0UUo4RzdKek5obUVa?=
 =?utf-8?B?Q0JwRVdPbHRHMU8wWVhZay9SWmg4dDhKRXVTY3M2anR3Mm5mOEJVQ3crd3d2?=
 =?utf-8?B?L0RaKzd4TGY2SkRmQVVSNUhTMlpOcTZFV2pqQllna0YrZ3BqbEZYSFBCWjVX?=
 =?utf-8?B?czJRUDdNOVhVVHY2SEZSV1ZIbzNGZC9HYTJFTnA1TDQ2RXZ0SVRTWElQL2E5?=
 =?utf-8?B?ZGVCRk1GN25qSlh1d2NDYlhRNUF6c09CWHc1eGcySFZWVDFxSDJRcXRaZmNr?=
 =?utf-8?B?MEl6VjJ6dUtSNFNwczViZUlWNjQySVhkZVlkcEpCUU9Wa2hvWFh1N2FxSGd3?=
 =?utf-8?B?LzZWYjA5cUJQdktiYW9BM0hkZU4wR1BqZ2VyOWF6ejdWdUFuVVNtMzNWZENr?=
 =?utf-8?B?S2xaWWhkNXR6cE41SHJZdGxBWjRhekZHYWFEOFIxTWFDL0xFbExUYTQ4NzIy?=
 =?utf-8?B?aFo3cFZtVXZGOElzMCtXdUVsam83UWN6RTVaQjEvMUN6am9FazZjUjlaYnF1?=
 =?utf-8?B?RkU0ZnNtclJDbngycVFNVThybjIraC8rcVNKN1pGbTVGOWIrZU9DQXQwUGo1?=
 =?utf-8?B?L2tqUUUzazBQc1dmWCtRVW1hcTVOZGNPaUJkaW1CV3J6ZTIzakZNTy9helVa?=
 =?utf-8?B?OVFDUlpVL1RvUjNhY3cwRlpzdzBtQTdIb0VHUkl6WmxramcyRFM3MkZhVjFG?=
 =?utf-8?B?ay9OeFV4SWt5NnV6QVV1U2tMejFJMWNDTTlwa2ZTNlBVZWxkWHNnRFU2by9u?=
 =?utf-8?B?WnE4dEsvaXA5UlpIMkhJNG8rYTZ5QWp0UXMrTW92T0h0UVZLQUlobytaMHQ5?=
 =?utf-8?B?eTFWOXVRa2FXMCtrK0grQ1h1bDJGdERUR1FFbXBuTitUY3hKQ0kxLzltaWEw?=
 =?utf-8?B?d1JQVmdiOTJYN25OYU1XMEl0Z21KR3p1L1ExMHA3SXgwNlVGVXVRNDA3NktH?=
 =?utf-8?B?UDVhRS83K0RkcmJuU3JnaFVRQVNBaFBUY092MFU0bm1Dd2ltU3JSQ2hTcXhE?=
 =?utf-8?B?bWxuK2tFNGl6UEVUVFkycnVtT21xV2VVRmZaQ2plRGJZOWNmN2JtUU5nUU1t?=
 =?utf-8?B?WmJVVDd5eU5lYlZwd3JyTno3MkxVNC9xd2RsSVprR2xnZ0RhN2FrZUE1RlUr?=
 =?utf-8?B?ZkRFaDV2d3IwSlpEMjNLR2dkWGlRRzlHMGhjU2FxdXkveitEZ01hQlM0NlV1?=
 =?utf-8?B?QjV1UTk1NXFvTmF4N0lQeG9uUy9Zd05YdW5RUWdaYThmOUV3bjQrbkk2RUNL?=
 =?utf-8?B?azM4TVhuV1JOdXdOZ3hKQzZyZkNsVkVGOFk3QkllUFRKZ0xmMGxvOFJ2MDl1?=
 =?utf-8?B?SHl1WCtpQ3J6akVCOUJOOUc3QUZVUXNuTDBoSXltMHNNbWZ3THVtcEdhYm5R?=
 =?utf-8?B?bUx3RkVHV1RKSHJTVXJUUzVhbHJObHI3YkJkODBuWjdBaCtDTkIxU0pDeTlk?=
 =?utf-8?B?aEU3Vm5nSnBlM0RoS1RTaVlnT1JIU0F6QWw5ci9Vbm5WbDl5ckM2ODA2Sytm?=
 =?utf-8?B?d1RZOW1PRHpKMmFMcW00UTQ4Q0RrMU5weGw2TDVWeklNY1BudFhUdVdLZDRy?=
 =?utf-8?B?elR3dkNhMHJpd3NNRHV2RFI4Y29IY1lDeElldnpnQVJMVHFPUXZGcC9GSVho?=
 =?utf-8?B?M1I0citZZjhhVmNYdzNadnIrSmlUYytjbjVGU2xQMUkybXhDaDhickNBVlpN?=
 =?utf-8?B?NjlsbzZUNGxBZS9UMnUwOThLc01oK1d0L1dseU5WaS96Rzhnb3dSSk9WY3pp?=
 =?utf-8?B?enFkS09Lc2YvcW9zeGpQUnVDNi9WS2JsSTZRM2NmbUt6YzQ1cHBxYkJybXlz?=
 =?utf-8?Q?b3zwcyqT42M1OUk7hW1i12TJe?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c53f8704-b5b4-4bb3-a327-08dae25a90ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 07:19:43.2551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bYw/oiREQJQe6xbtC5Pyry+hcVQiouDu85cXLFTtZWJs0q7UrFKHsWSfgige+dL0EBkxYhBRQt3Bvcl83atQmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gT24gV2VkLCAyMDIyLTEyLTE0IGF0IDE0OjM3ICswNTMwLCBTdXJhaiBLYW5kcGFsIHdy
b3RlOg0KPiA+IEFkZCBmdW5jdGlvbiB0aGF0IHRha2VzIGNhcmUgb2Ygc2VuZGluZyBjb21tYW5k
IHRvIGdzYyBjcy4gV2Ugc3RhcnQgb2YNCj4gPiB3aXRoIGFsbG9jYXRpb24gb2YgbWVtb3J5IGZv
ciBvdXIgY29tbWFuZCBpbnRlbF9oZGNwX2dzY19tZXNzYWdlIHRoYXQNCj4gPiBjb250YWlucyBn
c2MgY3MgbWVtb3J5IGhlYWRlciBhcyBkaXJlY3RlZCBpbiBzcGVjcyBmb2xsb3dlZCBieSB0aGUN
Cj4gPiBhY3R1YWwgcGF5bG9hZCBoZGNwIG1lc3NhZ2UgdGhhdCB3ZSB3YW50IHRvIHNlbmQuDQo+
ID4gU3BlYyBzdGF0ZXMgdGhhdCB3ZSBuZWVkIHRvIHBvbGwgcGVuZGluZyBiaXQgb2YgcmVzcG9u
c2UgaGVhZGVyIGFyb3VuZA0KPiA+IDIwIHRpbWVzIGVhY2ggdHJ5IGJlaW5nIDUwbXMgYXBhcnQg
aGVuY2UgYWRkaW5nIHRoYXQgdG8gY3VycmVudA0KPiA+IGdzY19tc2dfc2VuZCBmdW5jdGlvbiBB
bHNvIHdlIHVzZSB0aGUgc2FtZSBmdW5jdGlvbiB0byB0YWtlIGNhcmUgb2YNCj4gPiBib3RoIHNl
bmRpbmcgYW5kIHJlY2VpdmluZyBoZW5jZSBubyBzZXBhcmF0ZSBmdW5jdGlvbiB0byBnZXQgdGhl
DQo+ID4gcmVzcG9uc2UuDQo+ID4NCj4gPiBDYzogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1
dGl5YWxAaW50ZWwuY29tPg0KPiA+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPg0KPiA+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KPiA+IENjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgfCAgIDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3BfZ3NjLmMgfCAyMDcNCj4gPiArKysrKysrKysrKysrKysrKysgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2MuaCB8ICAxOA0KPiArKw0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZndpZi5oICAgfCAgIDEgKw0KPiA+
ICA0IGZpbGVzIGNoYW5nZWQsIDIyNyBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3NjLmMNCj4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRj
cF9nc2MuaA0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBpbmRleCBmNjRhOGJjNzNj
ODkuLjljYWUwYzE1OThhNw0KPiA+IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4g
PiBAQCAtMjUxLDYgKzI1MSw3IEBAIGk5MTUteSArPSBcDQo+ID4gIAlkaXNwbGF5L2ludGVsX2Zy
b250YnVmZmVyLm8gXA0KPiA+ICAJZGlzcGxheS9pbnRlbF9nbG9iYWxfc3RhdGUubyBcDQo+ID4g
IAlkaXNwbGF5L2ludGVsX2hkY3AubyBcDQo+ID4gKwlkaXNwbGF5L2ludGVsX2hkY3BfZ3NjLm8g
XA0KPiA+ICAJZGlzcGxheS9pbnRlbF9ob3RwbHVnLm8gXA0KPiA+ICAJZGlzcGxheS9pbnRlbF9o
dGkubyBcDQo+ID4gIAlkaXNwbGF5L2ludGVsX2xwZV9hdWRpby5vIFwNCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwX2dzYy5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3NjLmMNCj4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNjg1OGI2MjE5MjIxDQo+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRjcF9nc2MuYw0KPiA+IEBAIC0wLDAgKzEsMjA3IEBADQo+ID4gKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBNSVQNCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IDIwMjEsIEludGVs
IENvcnBvcmF0aW9uLg0KPiA+ICsgKi8NCj4gPiArDQo+ID4gKyNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX2hkY3BfZ3NjLmgiDQo+ID4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVnaW9uLmgiDQo+
ID4gKyNpbmNsdWRlICJndC91Yy9pbnRlbF9nc2NfZncuaCINCj4gPiArI2luY2x1ZGUgImd0L3Vj
L2ludGVsX2dzY19md2lmLmgiDQo+ID4gKyNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiA+ICsjaW5j
bHVkZSAiaTkxNV91dGlscy5oIg0KPiA+ICsNCj4gPiArc3RydWN0IGludGVsX2hkY3BfZ3NjX21l
c3NhZ2Ugew0KPiA+ICsJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsNCj4gPiArCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hOw0KPiA+ICsJdm9pZCAqaGRjcF9jbWQ7DQo+ID4gK307DQo+ID4N
Cj4gQWxhbjogc2VlIG15IGxhc3Qgc2V0IG9mIGNvbW1lbnRzIGJlbG93Lg0KPiANCj4gQWxhbjpb
c25pcA0KPiA+DQo+ID4NCj4gDQo+ID4gK3N0YXRpYyBpbnQgaW50ZWxfZ3NjX3NlbmRfc3luYyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiArCQkJICAgICAgIHN0cnVjdCBpbnRl
bF9nc2NfbXRsX2hlYWRlciAqaGVhZGVyLCB1NjQgYWRkciwNCj4gPiArCQkJICAgICAgIHNpemVf
dCBtc2dfb3V0X2xlbikNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2d0ICpndCA9IGk5MTUt
Pm1lZGlhX2d0Ow0KPiA+ICsJaW50IHJldDsNCj4gPiArDQo+ID4gKwloZWFkZXItPmZsYWdzID0g
MDsNCj4gPiArCXJldCA9IGludGVsX2dzY19md19oZWNpX3NlbmQoJmd0LT51Yy5nc2MsIGFkZHIs
IGhlYWRlci0NCj4gPm1lc3NhZ2Vfc2l6ZSwNCj4gPiArCQkJCSAgICAgYWRkciwgbXNnX291dF9s
ZW4gKyBzaXplb2YoKmhlYWRlcikpOw0KPiA+ICsJaWYgKHJldCkgew0KPiA+ICsJCWRybV9lcnIo
Jmk5MTUtPmRybSwgImZhaWxlZCB0byBzZW5kIGdzYyBIRENQIG1zZyAoJWQpXG4iLA0KPiByZXQp
Ow0KPiA+ICsJCXJldHVybiByZXQ7DQo+ID4gKwl9DQo+ID4gKwkvKg0KPiA+ICsJICogQ2hlY2tp
bmcgdmFsaWRpdHkgbWFya2VyIGZvciBtZW1vcnkgc2FuaXR5DQo+ID4gKwkgKi8NCj4gPiArCWlm
IChoZWFkZXItPnZhbGlkaXR5X21hcmtlciAhPSBHU0NfSEVDSV9WQUxJRElUWV9NQVJLRVIpIHsN
Cj4gPiArCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJpbnZhbGlkIHZhbGlkaXR5IG1hcmtlclxuIik7
DQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWYgKGhlYWRl
ci0+c3RhdHVzICE9IDApIHsNCj4gPiArCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJoZWFkZXIgc3Rh
dHVzIGluZGljYXRlcyBlcnJvciAlZFxuIiwNCj4gPiArCQkJaGVhZGVyLT5zdGF0dXMpOw0KPiA+
ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmIChoZWFkZXItPmZs
YWdzICYgSU5URUxfR1NDX01TR19QRU5ESU5HKQ0KPiA+ICsJCXJldHVybiAtRUFHQUlOOw0KPiA+
ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiBBbGFuOiBBcyBwZXIgbXkgY29t
bWVudCBvbiBwYXRjaCAjMSBhYm92ZSBmdW5jdGlvbiBjb3VsZCBnbyBpbnRvIHRoZSB1Yy9nc2MN
Cj4gZG9tYWluIC4uLiBzZWUgdGhlIGNvbW1lbnQgYmVsb3cgZm9yIGZ1cnRoZXIgZWxhYm9yYXRp
b24uDQo+IA0KPiA+ICsvKg0KPiA+ICsgKiBUaGlzIGZ1bmN0aW9uIGNhbiBub3cgYmUgdXNlZCBm
b3Igc2VuZGluZyByZXF1ZXN0cyBhbmQgd2lsbCBhbHNvDQo+ID4gK2hhbmRsZQ0KPiA+ICsgKiBy
ZWNlaXB0IG9mIHJlcGx5IG1lc3NhZ2VzIGhlbmNlIG5vIGRpZmZlcmVudCBmdW5jdGlvbiBvZiBt
ZXNzYWdlDQo+ID4gK3JldHJpZXZhbA0KPiA+ICsgKiBpcyByZXF1aXJlZC4gV2Ugd2lsbCBpbml0
aWFsaXplIGludGVsX2hkY3BfZ3NjX21lc3NhZ2Ugc3RydWN0dXJlDQo+ID4gK3RoZW4gYWRkDQo+
ID4gKyAqIGdzYyBjcyBtZW1vcnkgaGVhZGVyIGFzIHN0YXRlZCBpbiBzcGVjcyBhZnRlciB3aGlj
aCB0aGUgbm9ybWFsDQo+ID4gK0hEQ1AgcGF5bG9hZA0KPiA+ICsgKiB3aWxsIGZvbGxvdw0KPiA+
ICsgKi8NCj4gPiArc3NpemVfdCBpbnRlbF9oZGNwX2dzY19tc2dfc2VuZChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwgdTggKm1zZ19pbiwNCj4gPiArCQkJCXNpemVfdCBtc2dfaW5fbGVu
LCB1OCAqbXNnX291dCwgc2l6ZV90DQo+IG1zZ19vdXRfbGVuKSB7DQo+ID4gKwlzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gaTkxNS0+bWVkaWFfZ3Q7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3NjX210bF9o
ZWFkZXIgKmhlYWRlcjsNCj4gPiArCWNvbnN0IHNpemVfdCBtYXhfbXNnX3NpemUgPSBQQUdFX1NJ
WkUgLSBzaXplb2YoKmhlYWRlcik7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfaGRjcF9nc2NfbWVzc2Fn
ZSAqaGRjcF9tZXNzYWdlOw0KPiA+ICsJdTY0IGFkZHI7DQo+ID4gKwl1MzIgcmVwbHlfc2l6ZTsN
Cj4gPiArCWludCByZXQsIHRyaWVzID0gMDsNCj4gPiArDQo+ID4gKwlpZiAoIWludGVsX3VjX3Vz
ZXNfZ3NjX3VjKCZndC0+dWMpKQ0KPiA+ICsJCXJldHVybiAtRU5PREVWOw0KPiA+ICsNCj4gPiAr
CWlmIChtc2dfaW5fbGVuID4gbWF4X21zZ19zaXplIHx8IG1zZ19vdXRfbGVuID4gbWF4X21zZ19z
aXplKQ0KPiA+ICsJCXJldHVybiAtRU5PU1BDOw0KPiA+ICsNCj4gPiArCWhkY3BfbWVzc2FnZSA9
IGt6YWxsb2Moc2l6ZW9mKCpoZGNwX21lc3NhZ2UpLCBHRlBfS0VSTkVMKTsNCj4gPiArDQo+ID4g
KwlpZiAoIWhkY3BfbWVzc2FnZSkNCj4gPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gPiArDQo+ID4g
KwlyZXQgPSBpbnRlbF9pbml0aWFsaXplX2hkY3BfZ3NjX21lc3NhZ2UoaTkxNSwgaGRjcF9tZXNz
YWdlKTsNCj4gPiArDQo+ID4gKwlpZiAocmV0KSB7DQo+ID4gKwkJZHJtX2VycigmaTkxNS0+ZHJt
LA0KPiA+ICsJCQkiQ291bGQgbm90IGluaXRpYWxpemUgaGRjcF9tZXNzYWdlXG4iKTsNCj4gPiAr
CQlnb3RvIGVycjsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwloZWFkZXIgPSBoZGNwX21lc3NhZ2Ut
PmhkY3BfY21kOw0KPiA+ICsJYWRkciA9IGk5MTVfZ2d0dF9vZmZzZXQoaGRjcF9tZXNzYWdlLT52
bWEpOw0KPiA+ICsNCj4gPiArCW1lbXNldChoZWFkZXIsIDAsIHNpemVvZigqaGVhZGVyKSk7DQo+
ID4gKwloZWFkZXItPnZhbGlkaXR5X21hcmtlciA9IEdTQ19IRUNJX1ZBTElESVRZX01BUktFUjsN
Cj4gPiArCWhlYWRlci0+Z3NjX2FkZHJlc3MgPSBIRUNJX01FQUREUkVTU19IRENQOw0KPiA+ICsJ
aGVhZGVyLT5ob3N0X3Nlc3Npb25faGFuZGxlID0gMDsNCj4gPiArCWhlYWRlci0+aGVhZGVyX3Zl
cnNpb24gPSBNVExfR1NDX0hFQURFUl9WRVJTSU9OOw0KPiA+ICsJaGVhZGVyLT5tZXNzYWdlX3Np
emUgPSBtc2dfaW5fbGVuICsgc2l6ZW9mKCpoZWFkZXIpOw0KPiA+ICsNCj4gPiArCW1lbWNweSho
ZGNwX21lc3NhZ2UtPmhkY3BfY21kICsgc2l6ZW9mKCpoZWFkZXIpLCBtc2dfaW4sDQo+ID4gK21z
Z19pbl9sZW4pOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBLZWVwIHNlbmRpbmcgcmVxdWVz
dCBpbiBjYXNlIHRoZSBwZW5kaW5nIGJpdCBpcyBzZXQgbm8gbmVlZCB0byBhZGQNCj4gPiArCSAq
IG1lc3NhZ2UgaGFuZGxlIGFzIHdlIGFyZSB1c2luZyBzYW1lIGFkZHJlc3MgaGVuY2UgbG9jLiBv
ZiBoZWFkZXIgaXMNCj4gPiArCSAqIHNhbWUgYW5kIGl0IHdpbGwgY29udGFpbiB0aGUgbWVzc2Fn
ZSBoYW5kbGUuIHdlIHdpbGwgc2VuZCB0aGUgbWVzc2FnZQ0KPiA+ICsJICogMjAgdGltZXMgZWFj
aCBtZXNzYWdlIDUwIG1zIGFwYXJ0DQo+ID4gKwkgKi8NCj4gPiArCWRvIHsNCj4gPiArCQlyZXQg
PSBpbnRlbF9nc2Nfc2VuZF9zeW5jKGk5MTUsIGhlYWRlciwgYWRkciwgbXNnX291dF9sZW4pOw0K
PiA+ICsNCj4gPiArCQkvKiBPbmx5IHRyeSBhZ2FpbiBpZiBnc2Mgc2F5cyBzbyAqLw0KPiA+ICsJ
CWlmIChyZXQgIT0gLUVBR0FJTikNCj4gPiArCQkJYnJlYWs7DQo+ID4gKw0KPiA+ICsJCW1zbGVl
cCg1MCk7DQo+ID4gKw0KPiA+ICsJfSB3aGlsZSAoKyt0cmllcyA8IDIwKTsNCj4gPiArDQo+ID4g
KwlpZiAocmV0KQ0KPiA+ICsJCWdvdG8gZXJyOw0KPiA+ICsNCj4gPiArCS8qIHdlIHVzZSB0aGUg
c2FtZSBtZW0gZm9yIHRoZSByZXBseSwgc28gaGVhZGVyIGlzIGluIHRoZSBzYW1lIGxvYyAqLw0K
PiA+ICsJcmVwbHlfc2l6ZSA9IGhlYWRlci0+bWVzc2FnZV9zaXplIC0gc2l6ZW9mKCpoZWFkZXIp
Ow0KPiA+ICsJaWYgKHJlcGx5X3NpemUgPiBtc2dfb3V0X2xlbikgew0KPiA+ICsJCWRybV93YXJu
KCZpOTE1LT5kcm0sICJjYWxsZXIgd2l0aCBpbnN1ZmZpY2llbnQgSERDUCByZXBseSBzaXplDQo+
ICV1ICglZClcbiIsDQo+ID4gKwkJCSByZXBseV9zaXplLCAodTMyKW1zZ19vdXRfbGVuKTsNCj4g
PiArCQlyZXBseV9zaXplID0gbXNnX291dF9sZW47DQo+ID4gKwl9IGVsc2UgaWYgKHJlcGx5X3Np
emUgIT0gbXNnX291dF9sZW4pIHsNCj4gPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiY2Fs
bGVyIHVuZXhwZWN0ZWQgSENEUCByZXBseSBzaXplDQo+ICV1ICglZClcbiIsDQo+ID4gKwkJCSAg
ICByZXBseV9zaXplLCAodTMyKW1zZ19vdXRfbGVuKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlt
ZW1jcHkobXNnX291dCwgaGRjcF9tZXNzYWdlLT5oZGNwX2NtZCArIHNpemVvZigqaGVhZGVyKSwN
Cj4gPiArbXNnX291dF9sZW4pOw0KPiA+ICsNCj4gPiArZXJyOg0KPiA+ICsJaW50ZWxfZnJlZV9o
ZGNwX2dzY19tZXNzYWdlKGhkY3BfbWVzc2FnZSk7DQo+ID4gKwlyZXR1cm4gcmV0Ow0KPiA+ICt9
DQo+IA0KPiBBbGFuOiBTZWUgbXkgcmV2aWV3IGNvbW1lbnQgb24gcGF0Y2ggIzEgLSBpIGJlbGll
dmUgbW9zdCBvZiB0aGlzIGZ1bmN0aW9uIGFib3ZlDQo+IChpbnRlbF9oZGNwX2dzY19tc2dfc2Vu
ZCkgY291bGQgZ28gaW50byBhIGNvbW1vbg0KPiBpbnRlbF9nc2NfZW5naW5lX3NlbmRfaGVjaXBr
dCBmdW5jdGlvbiAoaW4gYSBuZXcgZ3NjLWhlY2kgc3BlY2lmaWMgZmlsZSwNCj4gaS5lLsKgaW50
ZWxfZ3NjX2hlY2kuYykgdGhhdCBsaXZlcyBpbiB0aGUgdWMvZ3NjIGRvbWFpbiwgbm90IGhlcmUg
aW4gZGlzcGxheS4gSW4gZmFjdA0KPiB0aGUgInN0cnVjdCBpbnRlbF9oZGNwX2dzY19tZXNzYWdl
IiBhbHNvIGFsc28gYmUgcmVuYW1lZCB0byBiZSAic3RydWN0DQo+IGludGVsX2dzY19oZWNpX3Br
dF9pbmZvIiBhbmQgaXRzIGRlZmluaXRpb24gbW92ZWQgb3ZlciB0byAoYW5kIGluY2x1ZGVkIGZy
b20pIGENCj4gaGVhZGVyIGluIHRoZSB1Yy9nc2MgZG9tYWluLg0KPiBJIGJlbGlldmUgaXQgbWFr
ZSBzZW5zZSBmb3IgdGhlIGNhbGxlciB0byBhbGxvY2F0ZSB0aGUgb2JqZWN0cyBidXQgdGhlIGNv
bW1vbg0KPiBoZWFkZXIgdG8gaGF2ZSB0aGUgc3RydWN0dXJlIGRlZmluaXRpb24gYW5kIHRoZSBj
b21tb24gZnVuY3Rpb24gY2FuIGRvIHRoZQ0KPiBjbWQtcHJlcCwgc3VibWlzc2lvbiwgd2FpdGlu
ZyAoYW5kIGV2ZW50dWFsbHkgY2hlY2tpbmcgb2YgcGVuZGluZy1iaXQpLg0KPiANCkkgY2FuIG1v
dmUgYSBsb3Qgb2YgdGhlc2UgZnVuY3Rpb25zIHRvIGludGVsX2dzY19mdy5jDQpCdXQgSSBzdGls
bCBkb27igJl0IHNlZSB0aGUgbWVyaXQgaW4gYWRkaW5nIG1vcmUgZnVuY3Rpb25zIGFuZCBmaWxl
cyBpbiBqdXN0IGZvciBtb3JlIHJlYWRhYmlsaXR5DQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFs
DQo+IA0KPiBBbGFuOltzbmlwXQ0K
