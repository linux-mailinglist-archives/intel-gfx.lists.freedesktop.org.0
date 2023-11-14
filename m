Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAFA7EADED
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 11:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5519010E1EF;
	Tue, 14 Nov 2023 10:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC3610E1EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 10:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699957464; x=1731493464;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=y5AR5hJBtyNrLF/ze7D6aQ2sDjdHRa8Tf7Xeh9nfaUI=;
 b=lpi/dixj6Kz4b0eSlYLcQ29bnOEMrTme00UeE7LjSRk0SToyJ6bLqdsc
 crhum8dhHOnUTKQaX3NHv9UNVAYr2Z8AsZslV0iBscbGuEWOfdYPydecz
 9NnbcH01iRa/HWuQCtBPGKoP2f1biKRP8804AqE6GMiiVaeNbV+v/8jaf
 U6Th3PosgU9pM87GkkBZ4Fcx7whzqca4hETqTToghBypumdtA1uZSGzlC
 icwfDrc6HehDorFfZjF1XZEy6HBSBuENABh1OVl3dTuFExOoJnyVB3sdn
 C0/Kw0lRn1WkSmFht6MfNino7c8C8CZB+XspSFx5NU/zhMKII9m6ngh+o A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="394543233"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="394543233"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="12394926"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 02:24:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 02:24:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 02:24:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 02:24:23 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 02:24:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhe0cdyl9cZMknQ/cEUGkzHWp6cs2O6Pb4PWFRahFHUCqjHHlYYj8Bdmucuh7uix+dEjiQaDYyy/KwMEp6FXIgeP0d25IUu8p628sX4JfcEs8v7k9LgxOeJf+6lNbGxvuCsAMnXNNqNW1eNCZ6RjAgGcHtBmx+bf7c7hOKF4putE7JhJY8CshK5E+rR4C1UOiEWFZ9gNfPySx35h8GwQ76BiSjFPFsilqS+mlQ38RzuygGf11KvbiVgO27P+muuhJHJJGu/RO4eeZLEyXFTEJBzFeAjd2enpErSU1imN5V1pJF8tQpMN0G2G3eAb8SkTJqGvb6F5yBqYI5bPUfKnqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y5AR5hJBtyNrLF/ze7D6aQ2sDjdHRa8Tf7Xeh9nfaUI=;
 b=Co+FjuoqSNnqWQMy+gY1To0Tuic/d/YLGIBlj8/EkOih0GHAeRag4H+sJi/JhA6H5lGTW9ppq+EfpUAMuKiLNmAaU5v2OQpSYzwyCsHrxNjU6hnkbsdSxNIN2JAT534OKznvA2OUfpEEAwbXh+7RuyODLi1Uh8Xesgw66ZwPWKV5XE6SVh8bIEhyAxXaeIrWRPoPuElsPtwEk/4PXwOv46bmyjRKBRZSVUSbGCKeHOdBSOhb3hyuLw6DKKiLL9ZjvCSLdsGp1QO7fOe17zUb9XyWL/zHK+JFnyKAtCrTCaij5UW52UiC/tMGLE5bIQMdHxeTDDAPLu6MToensKXzMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Tue, 14 Nov
 2023 10:24:21 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7002.015; Tue, 14 Nov 2023
 10:24:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
Thread-Index: AQHaFhXtV4piplU910qpDYyj1bUr87B5nK2AgAAAWpA=
Date: Tue, 14 Nov 2023 10:24:20 +0000
Message-ID: <MW4PR11MB705455F1BDFB49BA69C1955DEFB2A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231113093737.358137-1-mika.kahola@intel.com>
 <46edbf6b-f343-4eaf-b8ae-422dd3256fc9@intel.com>
In-Reply-To: <46edbf6b-f343-4eaf-b8ae-422dd3256fc9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: aab2023e-6950-454a-5afb-08dbe4fbdd67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r0rvuuOa9NNW51kb1El58UfPZhAwXtcF+gFVMGMWily6sltivAk2vRXEahUs7/Dmi59Dy0HudI3lSo3nj5WICiklOZKmk0Y6BXpS+l0FteU0e0k1OwMAWTmvL63+sTJFzHVKvt1zFdZKWiLPHUpvDzEaiCd4U1t3WcSFB6hZkgnJN6LfRjB9/pZUweTfweVhBP0PWUzVBr0nI5YPrGsmqxUnaZ+YBiJXqvqNOyPgHwvuxiW4V7RPwEGw57KBktqPLV3BnfIf+1gw5bcvElr9DH1ohuEilC1aY4b/2BoCJjTtNOVx1hpFmlN3sGAlkKj2ICb58ytX5krcZcp+WL30rElnVF6uwcmmKUkM+l4v/ei/O4SEh0W+WmhcLMS91ZGpWZszFeUrdarf0R7vpVKZ6p6GR98tkPSbLAR1q+RHxq0p9CeksPED4AUI2Mj5SjcY95yiGKkQd9vZg53NM5uXaIUDN6DrPi2bLtI3b4R397Y3nB55wDUehAAKTqgfgZUo52t72sa0vIiHsqZFrPU99qyuasIQP5xDApLFx4BwZYXL6iSsPrR/xc8+a6+XQLYJenv7MahlMHBsXICFCHbvbfU0A0bAZANUZj+WBYm03qDORcHosXbFnjBrN0E2HR6x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(396003)(376002)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(9686003)(66446008)(76116006)(66946007)(66476007)(316002)(38100700002)(83380400001)(64756008)(66556008)(110136005)(82960400001)(8676002)(8936002)(478600001)(122000001)(6506007)(7696005)(53546011)(52536014)(86362001)(5660300002)(71200400001)(38070700009)(2906002)(26005)(33656002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0oyeXQ2NEZiUzZuTENUbmZzM0JVb0NlU2U3dDMyTHQ0M0VBM0Rhay9ZOGZs?=
 =?utf-8?B?UmhHV0o4RjRDWjgyMkxRVVhpdDJmTWlxQUcxVk5Ha3J2M0gxVnZBOVdBYk5L?=
 =?utf-8?B?dzBZVk9wZTR4bElUbVFsUytwYzhBbmJEMUJNZzc5UXZBWmZISSs4WUVrbWhC?=
 =?utf-8?B?M1NlMXJIMlNsaWpQTlkvTFkrWi9mRzJnV3MyWnd2Qmp3MEF4SDJVK2ZJRE83?=
 =?utf-8?B?THlYUE5VUzBpNjROdGdCRFJyaUtRTG9TK1FvRmlKaHhBU25RUzl1Sld5d1VB?=
 =?utf-8?B?akdtcjQyYUlrclg3QjFvM0NmSXFZZzlaK2YrcTBMUmhaVUd2ckQzR21uRGFQ?=
 =?utf-8?B?OEcwV1lrOXZUTFQvOWZzYVBMSUlpMk9zQzhwdE1aZTkxSXpuSjJtNFdiVW5x?=
 =?utf-8?B?eEI2V0dZQVBNYXA1bWFHK3liU0RRWXFJbXJOZHRya2JRWm9zOGtJZmx4STJH?=
 =?utf-8?B?TkZrMXhQNEFlbGJ1RDFYYTZNNFlaM1pWV041cUJ2RFVFSzhjRGllbk9EK1Jp?=
 =?utf-8?B?UWdJT1ovL05zVnRrZTBvdXJURytYZ08yTWFYVzlVcndvOEthL0lydG1FT3JF?=
 =?utf-8?B?SVVIbFdjdFl2NlJDS3JkaVJ3VDdhMTZKSE9SLzFGYVNpaUtuMDl0ZHJmRUFU?=
 =?utf-8?B?c1EvbjZTeHNnTTNXOU1yUUFEUEQ0SUJCRVU3VmgxY1orUjFpazhmZFlKcWtH?=
 =?utf-8?B?K3JSZ0swTGw0YXc1WmJvNEtnZS80c1lWbWVsbDkxYlBZekhVLy9oK3pXeWxz?=
 =?utf-8?B?dEtZRm5USm82T2YvOXErQk9mRDgyQWkyTHVYVHBKdlo1a3RBVlNmeDkxVmh2?=
 =?utf-8?B?MTdjcEN1UFdwM29sWHZHNFVZc2RhZWxzVnJUNTA3WTVHc0lPa0tWYVI5b2Fn?=
 =?utf-8?B?UkxTdDZFL3IzVHM5Y1hDUXBjR1I5bzNVOGhxTEpSQzFTMDdkQlZscmZKZ1ZH?=
 =?utf-8?B?Sko3M283R1d1c3d5TTJLeVZDdVUvYkRiR3FGQUdWb3JXRjhGOU8vU0hTYVJr?=
 =?utf-8?B?OXRFNTNIMFNxVzMxVWxZdkFyOGRiYUhqaWlCMjVuMVp3bUJiYVVwS1ZuNmx1?=
 =?utf-8?B?NERhQ3cvOTViOWY4bTJHYWpuamlTdDFNeThpK05uMFZmbW1Nd3FRTjJuRUpx?=
 =?utf-8?B?ZGFPOFNOMVZWYU1DZ3E2SzhIaXgzWkJSRUM4c29tdENOZFNWR3J6QUg5bGVP?=
 =?utf-8?B?bUt6N0svZjZHUkJ1aXNadUtNWkNxNWt1NzlCVGc2YUlRWVBOd0hMVS9FRVli?=
 =?utf-8?B?eWhRb1dGZGxWeGxjV2tCUit5ZHhGdDFMaHhZRlNLMWtNNnZGRFNvcGZWVUdQ?=
 =?utf-8?B?VXVhUVNPeEpnSmtTc05UcTBCUnIrT1F3Ulpsb2ZmQlFVVGVqRTdBR0FlaDYz?=
 =?utf-8?B?cWRKWGdCTHlUTEc0dklMeDRnczFyNGRhK3lLVnpSOVNlMkVoMXdJSVdNM2pm?=
 =?utf-8?B?ZUd5QkpFcXB6a3lmTC9uSWJzcmIxRmhVRVNWdmplZ3E5SzVIUDJrZmFnKzBT?=
 =?utf-8?B?WDdmaHlmME50L0JMVEdFeFlqRXBuazNYeW9NMGp2THRoRzA3SHVLa2Eva1Vr?=
 =?utf-8?B?TnFMVFJ3b29ncFExRFNkRGRXb0VBZzBXRzBoejRGRXNMbEtFUkltRGJsbzRQ?=
 =?utf-8?B?c0g3WTJzRis2MDBHckhNK1VreVFVS1dvdGRJODB4dUlpVlN1aTVSKzNvZW8y?=
 =?utf-8?B?RWxzeG11MHVGRlFOYUpsVjlTTXMwakxPcTVvd0pWek1KNWM2Rms1dkVuUHBX?=
 =?utf-8?B?M2dUaUFZZStZYnFvRkd0TW5vTlpSTk9NSWh3S09IS2RnVDJyai9TNk5YMkUr?=
 =?utf-8?B?UjBMcE04NDNlTmQ1Z2w0NzFVVDQvTWoxcHgzRUJxb3RXM2ZxVUZadzJJak11?=
 =?utf-8?B?dURZMFNhRVNiSlRmekZtNzltRlBEeEtuQ05heC91Y0sxaWc5R2VrdlR4dGxp?=
 =?utf-8?B?cnc0ek1wWnpaWU1ZVEtDc0YvM3Q3SWpuTCszczZFdGRodGdIRlBqUzdHYy9U?=
 =?utf-8?B?ZzR3VytHWlBmbjlIaHQ0ZkU2NnQrVWhGeEdBT1A2L2FGNWk2Nmw4NGxuUm1i?=
 =?utf-8?B?bTdtRWJ3cUtHb2xPNHhadTAzVTBVWkY5Rnp4V2h4RnpZREk2UnE5NEc4WDUw?=
 =?utf-8?Q?sZ7znPf+NvHv9b7/BKwfkw7yd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aab2023e-6950-454a-5afb-08dbe4fbdd67
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 10:24:20.5042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 618FPtw2utKJzwctW8MkZPYeypkYDerdfcXnV50MBro2AoNZlnK/wPeUe6THR+JA/ZpH4O4gzUpJ1IXYlYYSJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIYWpkYSwgQW5kcnplaiA8YW5k
cnplai5oYWpkYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDE0LCAyMDIz
IDEyOjIyIFBNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBVc2UgaW50IGZvciBlbnRyeSBzZXR1cCBmcmFtZXMNCj4g
DQo+IE9uIDEzLjExLjIwMjMgMTA6MzcsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+IEF0IGxlYXN0
IG9uZSBUR0wgaGFkIHJlZ3Jlc3Npb24gd2hlbiB1c2luZyB1OCB0eXBlcyBmb3IgZW50cnkgc2V0
dXANCj4gPiBmcmFtZXMgY2FsY3VsYXRpb24uIFNvLCBsZXQncyBzd2l0Y2ggdG8gdXNlIGludHMg
aW5zdGVhZC4NCj4gDQo+IFRoaXMgZXhwbGFuYXRpb24gaXMgbWlzc2luZyB0aGUgbW9zdCBpbXBv
cnRhbnQgcGFydCAtIHdoeSBpbnQ/DQo+IA0KPiBJIGd1ZXNzIGl0IGlzIGJlY2F1c2UgaW50ZWxf
cHNyX2VudHJ5X3NldHVwX2ZyYW1lcyBjYW4gcmV0dXJuIC1FVElNRSwgd2hpY2ggY29udmVydGVk
IHRvIHU4IGFuZCB0aGVuIGludCBiZWNvbWVzIG5vdCB3aGF0IHdlDQo+IHdvdWxkIGV4cGVjdC4N
Cj4gQW5kIGZpeGVzIHRhZyBpcyBtaXNzaW5nLg0KDQpJIHdpbGwgYWRkIHRoZSBmaXhlcyBhbmQg
aW1wcm92ZSB0aGUgZXhwbGFuYXRpb24uDQoNClRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzIGFuZCBy
ZXZpZXdzLg0KDQotTWlrYS0NCj4gDQo+IFJlZ2FyZHMNCj4gQW5kcnplag0KPiANCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiAr
KystLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGluZGV4IDM2OTFmODgyZTFjMC4uYTQ0MTdlODVmOTJhIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTEwOTMsMTIgKzEw
OTMsMTIgQEAgc3RhdGljIGJvb2wgX2NvbXB1dGVfcHNyMl93YWtlX3RpbWVzKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ID4gICAJcmV0dXJuIHRydWU7DQo+ID4gICB9DQo+ID4NCj4gPiAt
c3RhdGljIHU4IGludGVsX3Bzcl9lbnRyeV9zZXR1cF9mcmFtZXMoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gPiAtCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
YWRqdXN0ZWRfbW9kZSkNCj4gPiArc3RhdGljIGludCBpbnRlbF9wc3JfZW50cnlfc2V0dXBfZnJh
bWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gKwkJCQkJY29uc3Qgc3RydWN0IGRy
bV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpDQo+ID4gICB7DQo+ID4gICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiAgIAlpbnQg
cHNyX3NldHVwX3RpbWUgPSBkcm1fZHBfcHNyX3NldHVwX3RpbWUoaW50ZWxfZHAtPnBzcl9kcGNk
KTsNCj4gPiAtCXU4IGVudHJ5X3NldHVwX2ZyYW1lcyA9IDA7DQo+ID4gKwlpbnQgZW50cnlfc2V0
dXBfZnJhbWVzID0gMDsNCj4gPg0KPiA+ICAgCWlmIChwc3Jfc2V0dXBfdGltZSA8IDApIHsNCj4g
PiAgIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCg0K
