Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2216CB303
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 03:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE3910E285;
	Tue, 28 Mar 2023 01:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8020510E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 01:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679966088; x=1711502088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=haWUN1ZunWtmI+U95mPPYOKtXswqpnyKiSz9peulRJE=;
 b=N6An+jOQ5qresQQrm4XxkeaQFtLNfU2ZDxKcGmyxJZNmfFEXxAbh5u3v
 kksVFfoT5tEBRIXujmX9vnJ4txLVjIRfoqJCREO5YAG0Oi1E35hoje85Y
 EYAYwfw2IgryuqAZGQBPs3zCNh8f8HA+nzKC06XPLzAsn8zih6jf7xSwX
 2Iklz+TQxJi9gOtcCvHjH7v/NMIlYambcE5P8yfwsqiaKobzMeBbtxxk6
 S0jijntHIHzeCCYdBKYuwrNKJMkYyIwc1EwY3JaVPcGhCqxyGtaLBI+2U
 9FQyKICWtLampdTl3aVc3rU1ClO2ZARQSC5A16AEhMbdHTgIBJqe8wZNC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342839942"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="342839942"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 18:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="683660251"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="683660251"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 27 Mar 2023 18:14:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 18:14:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 18:14:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 18:14:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 18:14:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UARgJaXvVdFtItCHc4ePHP/oSgxlyP3lSIdcKzKOhEpEHOIa2pTCQJeAvjRri4SGRAfVJURu/vNGeS4+5hYOleqNs4TsvjkjgWh3pBS/kgJBLQtF+RDCfO4gFMrOiB/2g/B30CpWiMIWWYMNBAAZoL7LqHcQD7zEYNTjlbPZqhtQXB2U7Q8h1cheaebjyB4L1dJM+JxH7Gs3jKqak9skg1l7hKzAzDS1+YSBqBrjKRGsREvADGzJFGP0Swq0jlkaBwN9gTM5IfBBI88y143EC2SOmbzROFyhIL1kHKAQbndGIhhvCigv1BDxA6ML2npz97Agj38BtXS69p8qHPWEMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=haWUN1ZunWtmI+U95mPPYOKtXswqpnyKiSz9peulRJE=;
 b=oF5+EuU5/KZGUiQrRZkgaVgubxkJf49KO+8w9PJWSzkmwxxRJyiY/dE5JGiFNvZi56sRuVfAZDi/wOGD/QjTPU4mQBjZYKPxwStwH0EqyNUw9SPno7AuF574qLa92jH2/gN1NkfldtZNYrNg8aWDWKte7X1z+d33MnNol83bIooYj/hzDfQCc301t2eH2k108HXzwpEaQ/FChNJFZ//frvMRz2vj0YmcCO4YTaNDJ3fk/wY8C/kZQkUpOoIFtYpre4jtjyQ7K/Jd2tyiTZ4QDTW2uaMrp4ovd0kojkJevypPGz03qtRmbeAWCHqzxD5usH7JyDnd0RbHiib5dwPQrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6605.namprd11.prod.outlook.com (2603:10b6:510:1b0::16)
 by SA2PR11MB5018.namprd11.prod.outlook.com (2603:10b6:806:11a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Tue, 28 Mar
 2023 01:14:38 +0000
Received: from PH7PR11MB6605.namprd11.prod.outlook.com
 ([fe80::968d:9383:aae6:175c]) by PH7PR11MB6605.namprd11.prod.outlook.com
 ([fe80::968d:9383:aae6:175c%2]) with mapi id 15.20.6178.037; Tue, 28 Mar 2023
 01:14:38 +0000
From: "Zhang, Rui" <rui.zhang@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgeDg2L3RvcG9sb2d5OiBmaXgg?=
 =?utf-8?B?ZXJyb25lb3VzIHNtcF9udW1fc2libGluZ3Mgb24gSW50ZWwgSHlicmlkIHBs?=
 =?utf-8?Q?atform?=
Thread-Index: AQHZYPLVMArKSOas5U6KP+nMq46fMK8PY22A
Date: Tue, 28 Mar 2023 01:14:38 +0000
Message-ID: <9f995e8adb40255e5c9668d48cf04be180871092.camel@intel.com>
References: <20230327121116.1785979-1-imre.deak@intel.com>
 <167994374538.32630.158002195269097607@emeril.freedesktop.org>
 <ZCIKCkGXLxlNXvVT@ideak-desk.fi.intel.com>
In-Reply-To: <ZCIKCkGXLxlNXvVT@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6605:EE_|SA2PR11MB5018:EE_
x-ms-office365-filtering-correlation-id: 0d671e1e-d1e7-4d85-15f9-08db2f29cd40
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n1PqLBrerTLQoHCAyQg97xvQ1TUMxgyF2KbwHrt2/2pHVQkVUDmxJabMN5THfgf3XHKyimEm1cVyyHGw7HIQcd9NurbdNuvK4NziSKIdeFMZO3I+D1Ez9nOa7X05FKfz6bEJpMjiuwRTsMRvAjPyYvy06ZiRVsWDh+IqbU3f2NWniPTgkGtmcukK3sGwKYhBF4Jy9PGbowYyTviXwhWE+XXWSuE94xCGDl05FLY/o3WlnABDxJdszH+ZE2qV3vFhirwk1iOjB15MWMshBeMIJEgLPNZpZlF+540i/Oe6zXO6+y6/xacd1MAD0v1BUOHJsHzZGmZCYzvH6FUXM4sj1Qgv+AkAYmE9nuuFXziUq/sdszH6csBOj7pjNWpKU0dx32yVICaes1E2+sy46aGYpQABf4krIWxKv12UIicxyvvl1DDn8S4/1kz5KFKcc3WAhvkYLIXVu7iWbxaRJgK+DlfJ5QU/GC/Y5hn2/cEAZFDRyogD/1Drr73SYckPhdXPmzbR8yQ4SFRkZkeSk/JRXBlLB7zONZX24MI+TrfVzez/3VW1LEmftObOA1mCyzC/7WIeUrTfZbKRgPzj36cfa/wR/D1xkFwmQ5o/xx2LJ8AiPQBaEmwiqBnQFT2DBMb+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(122000001)(38070700005)(8936002)(6862004)(5660300002)(71200400001)(36756003)(186003)(6506007)(6512007)(26005)(2906002)(86362001)(2616005)(83380400001)(966005)(82960400001)(6486002)(41300700001)(38100700002)(37006003)(76116006)(478600001)(91956017)(66946007)(6636002)(66446008)(66476007)(66556008)(64756008)(4326008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzBycERRZ3FsM0pjTDMxajNPMnRETzhoY3FFc1pYUUgzNGRDN3A4K3ViQWlM?=
 =?utf-8?B?RlhycVVpVHoxUEdBbFoyK3RLNWQvNDFwQ1E5ajhLNzRpcS80eEppbGZvN2Fq?=
 =?utf-8?B?Sm8xSjVRbWt2aEZ0cUl6eXhud0RBSzRoOUJUSzdWUVZTSnk3eWhFZ2FheHhV?=
 =?utf-8?B?MXBndmpFSGtVUUtYU1FDd0VlQVdzWFNJTVNLVTc2OThBcnhaTzYrUlFEMXBD?=
 =?utf-8?B?bEoxYlZYMkU3RkNlZnpnL0hqWmNxeHNkVExNME9MUFVDNGRNcVJaOWE3TjJX?=
 =?utf-8?B?NlFxSGVBQmJVVTNELzR3OGViaXVuZ0xyTXkrcW1KbmU5RzlMSlQ3YWE4QWpM?=
 =?utf-8?B?M3dtR2YwbHlHMFdmQ2dOeVlqUXZkd0FRWk8ybkwxV1pnbjljMjZ2dmllNzdP?=
 =?utf-8?B?UEgra2hVajFRblIrWG0wSzdYc2dBN0xuZGZ1aWRrYmNFcjV3MFRwRUMvcWRK?=
 =?utf-8?B?OHpYVnVmSGpMOVRsbFg1QkFCY3pQTXdEekhhemJnUG1nQzJGOVRrWlpzMzZz?=
 =?utf-8?B?K0ZTbjBLYnUvZng4NUhvUWlaY241OXJWSWpoaDZWbDZ3bUJmMWJXSHgyWTBv?=
 =?utf-8?B?a0VsRkV0TXluWnhVSEtPRWpQVGN3NmljZ0pCdkYvT2tFcEhJd3gxZ2l4MGxj?=
 =?utf-8?B?cHdSMkxRcWZETFVTN1ByeGxmd3g2cDBtYVR3TWt5eXlLS1h0Tyt1QW93T2gx?=
 =?utf-8?B?T1poQTgxSjRCanJsNnBLeG5UTVJiOGhXRlhPZy90WE5iUHdxMHZaeEpSUCtk?=
 =?utf-8?B?dUJTZHZ4a3lWdEVqUUxYdWVoVDY0WXpUM2I1UG9QMFY4cEV0Sit4cnBvN21m?=
 =?utf-8?B?ZDBiWTB3OEJNYmQyZ0RTcGgramY1QUcxVitPOXJSWEM0NzlNOU5KNVl4RzZQ?=
 =?utf-8?B?T2t3bHE4YjBBM1dDMHBpRE1jRlVGNTNxS1BCNWdIU1BrL1NBL05LcHpmZk1N?=
 =?utf-8?B?TkNQcnlqR2ovVm02Zzk5SnJQNVB4SE9rMTZJbzZHa0hSYXBPZUlVTkJFSlQ3?=
 =?utf-8?B?OHZyVzhjOTJWZGpyNm5UYWZCc3RFWk12NTlJU1QzeTNTNlpUQjhxamErSEdq?=
 =?utf-8?B?YktFejc1aS91RDhDa1NCR2h5eVk2VnlKQVpDRklSbTN4VmRyUXVwb3Vrc1Zn?=
 =?utf-8?B?K3lKUDBtNTNhWmRqT0Q1a21UMXB6eTk5a1NTVGpacGlyc3hBaTVFUC9QR0dq?=
 =?utf-8?B?UVNqaEE5RHhQNklwQjZtSTJJT1IwNGJUNkZzMVcrRnRZczgrS1cvZjd2QU8v?=
 =?utf-8?B?aHoxTXZkRUdySlRjSVpzY1l1VTZuOWlJYWphbnB1S1JDSnNvUFRzMjN6RHVo?=
 =?utf-8?B?SnUwRk9CZkdiWS9SRGJxVGNOcElicjFjTnJ5UjVqdElFVmlpUXdPZGEvaXRv?=
 =?utf-8?B?N2g4RFNpMHFtWFZKbkR0a1lyN3FHK2k2NXhGbDB2cEJTUFZpR3BlcjRGeDM3?=
 =?utf-8?B?WjBTVjlxN0pqaXNsKzZFSjBKNXBnMWFoSTlnSkF5cU5XYUJKYWRPL0ZtTDUr?=
 =?utf-8?B?ekUzWms2a0ZNZmtpQUFTcEhKVzVJNVE1cmV5QnZMZE43UnhCcW1BaitKWGh6?=
 =?utf-8?B?OXEyeGtIMDE4WWRIUTAvOXVxc20waTNKelB3dzZQdWJjNExNTEV5ZE5wekhQ?=
 =?utf-8?B?eXZTTElFdnR2cUo4SnJNTzZZckRPcFlyeVYvMGorNnBCTnlzeDYxUGV2UDRz?=
 =?utf-8?B?djNBNlZrbWVXTEtOS0JJNCs3b3lkSHFRdXhkTUVHUnovcTBUMU1WQVpsZFpt?=
 =?utf-8?B?dkc0UVRXbGtCR3RDOHhaODBQenM0ZnRZUE81OTVrQk45VWdCWVZNWGdZZnFU?=
 =?utf-8?B?S1RnZkQzbDVGUHh4THJ1WS9vbEl0Wjd1aE4wQitHSEI2OHNlRXAzaWxCUXVW?=
 =?utf-8?B?Z2IxM1lmR3h5OUQrYjB0dU4vSE00K090bTdlbHhDME5TWHppOFhuenVmN09I?=
 =?utf-8?B?dUlBRXJuWGR2NFJ0bW41MVcyK1RGUXp4dWdGWGZoSmhtTHYzcjBMTkRDWHhr?=
 =?utf-8?B?eUVsQ2ZQQjYxTlNZMGFjV041UzJuOEsrL3VxUkRLMy8yTkNMaUtiOWRYMEJH?=
 =?utf-8?B?ZXVmM1NaSlVVbHhWbHZoSGgvUjBKaUg1R1gzeW5LQXM1b1ZBUmVVSzNFODRx?=
 =?utf-8?Q?xBL6OXLrBvFfKEpMN0IYiAdDw?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E0AA1B4A1CD9A4FB998E62C50A947D1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d671e1e-d1e7-4d85-15f9-08db2f29cd40
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 01:14:38.6594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tFTzEqCiCUJCLAY1E/LoavTbfRvAAwiKPauV3ybz4cI7wZSWP+F5zz6uqXKgi+37Q5FzCER+SgJ/5NVeAFQzlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgeDg2?=
 =?utf-8?q?/topology=3A_fix_erroneous_smp=5Fnum=5Fsiblings_on_Intel_Hybrid?=
 =?utf-8?q?_platform?=
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

SGksIEltcmUsDQoNClRoYW5rcyBmb3IgcmFpc2luZyB0aGlzLg0KDQpPbiBUdWUsIDIwMjMtMDMt
MjggYXQgMDA6MjYgKzAzMDAsIEltcmUgRGVhayB3cm90ZToNCj4gSGkgUnVpLA0KPiANCj4gYWZ0
ZXIgYXBwbHlpbmcgeW91cg0KPiAieDg2L3RvcG9sb2d5OiBmaXggZXJyb25lb3VzIHNtcF9udW1f
c2libGluZ3Mgb24gSW50ZWwgSHlicmlkDQo+IHBsYXRmb3JtIg0KPiANCj4gZml4IG9uIHRoZSBk
cm0tdGlwIHRyZWUgKHNlZSB0aGUgcGF0Y2h3b3JrIFVSTCBiZWxvdykgdGhlIENJIHRlc3RzDQo+
IHNob3cNCj4gc29tZSByZWdyZXNzaW9uIG9uIGEgSFNXIGFuZCBhIEtCTCBtYWNoaW5lIChzZWUg
WzJdIGFuZCBbNF0gYmVsb3cpIGluDQo+IHRoZSBpOTE1IGRyaXZlci4gSG93ZXZlciBJIHRoaW5r
IHRoZXkgY2FuJ3QgYmUgcmVsYXRlZCB0byB5b3VyDQo+IGNoYW5nZXMsDQo+IHNpbmNlIG9uIHRo
ZXNlIG1hY2hpbmVzIGFsbCBjb3JlcyB3aWxsIHJlcG9ydCB0aGUgc2FtZSBudW1iZXIgb2YgQ1BV
DQo+IHNpYmxpbmdzLg0KDQpSaWdodC4NCg0KPiAgQ291bGQgeW91IGNvbmZpcm0gdGhpcyBhbmQg
dGhhdCBpbiBnZW5lcmFsIHRoZSByZXBvcnRlZA0KPiBzaWJsaW5ncyBjYW4gb25seSB2YXJ5IG9u
IHBsYXRmb3JtcyB3aXRoIGJvdGggRSBhbmQgUCBjb3JlcyAoQURMLVANCj4gYmVpbmcNCj4gdGhl
IGZpcnN0IHN1Y2ggcGxhdGZvcm0pPw0KDQpSaWdodC4NCg0KSSBkb24ndCB0aGluayB0aGUgcGF0
Y2ggY291bGQgYnJpbmcgYW55IGNoYW5nZSByZWxhdGVkLg0KSXQgb25seSBhZmZlY3RzIGh5YnJp
ZCBwbGF0Zm9ybXMuDQoNClRoYW5rcywNCnJ1aQ0KPiANCj4gVGhhbmtzLA0KPiBJbXJlDQo+IA0K
PiBPbiBNb24sIE1hciAyNywgMjAyMyBhdCAwNzowMjoyNVBNICswMDAwLCBQYXRjaHdvcmsgd3Jv
dGU6DQo+ID4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gPiANCj4gPiBTZXJpZXM6IHg4Ni90b3Bv
bG9neTogZml4IGVycm9uZW91cyBzbXBfbnVtX3NpYmxpbmdzIG9uIEludGVsDQo+ID4gSHlicmlk
IHBsYXRmb3JtDQo+ID4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzExNTY2MS8NCj4gPiBTdGF0ZSA6IGZhaWx1cmUNCj4gPiANCj4gPiA9PSBTdW1tYXJ5
ID09DQo+ID4gDQo+ID4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTI5MjEgLT4g
UGF0Y2h3b3JrXzExNTY2MXYxDQo+ID4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQ0KPiA+IA0KPiA+IFN1bW1hcnkNCj4gPiAtLS0tLS0tDQo+ID4g
DQo+ID4gICAqKkZBSUxVUkUqKg0KPiA+IA0KPiA+ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMg
Y29taW5nIHdpdGggUGF0Y2h3b3JrXzExNTY2MXYxIGFic29sdXRlbHkNCj4gPiBuZWVkIHRvIGJl
DQo+ID4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gPiAgIA0KPiA+ICAgSWYgeW91IHRoaW5rIHRo
ZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZQ0KPiA+IGNoYW5n
ZXMNCj4gPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzExNTY2MXYxLCBwbGVhc2Ugbm90aWZ5
IHlvdXIgYnVnIHRlYW0gdG8NCj4gPiBhbGxvdyB0aGVtDQo+ID4gICB0byBkb2N1bWVudCB0aGlz
IG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlDQo+ID4gcG9zaXRpdmVz
IGluIENJLg0KPiA+IA0KPiA+ICAgRXh0ZXJuYWwgVVJMOiANCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9pbmRleC5odG1sDQo+
ID4gDQo+ID4gUGFydGljaXBhdGluZyBob3N0cyAoMzcgLT4gMzcpDQo+ID4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gDQo+ID4gICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRp
bmcgaG9zdHMNCj4gPiANCj4gPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+ID4gLS0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiA+IA0KPiA+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1h
eSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbg0KPiA+IFBhdGNod29ya18xMTU2NjF2MToNCj4gPiAN
Cj4gPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+ID4gDQo+ID4gIyMjIyBQb3NzaWJsZSByZWdyZXNz
aW9ucyAjIyMjDQo+ID4gDQo+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNr
Og0KPiA+ICAgICAtIGZpLWhzdy00NzcwOiAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJO
XVsyXQ0KPiA+ICAgIFsxXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fMTI5MjEvZmktaHN3LTQ3NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBo
YW5nY2hlY2suaHRtbA0KPiA+ICAgIFsyXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEvZmktaHN3LTQ3NzAvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2suaHRtbA0KPiA+IA0KPiA+ICAgDQo+ID4gIyMjIyBTdXBw
cmVzc2VkICMjIyMNCj4gPiANCj4gPiAgIFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20g
dW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3INCj4gPiBzdGF0dXNlcy4NCj4gPiAgIFRoZXkg
ZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuDQo+ID4gDQo+ID4gICAqIGlndEBmYmRl
dkBpbmZvOg0KPiA+ICAgICAtIHtiYXQta2JsLTJ9OiAgICAgICAgW1NLSVBdWzNdIChbZmRvIzEw
OTI3MV0pIC0+IFtBQk9SVF1bNF0NCj4gPiAgICBbM106IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEyOTIxL2JhdC1rYmwtMi9pZ3RAZmJkZXZA
aW5mby5odG1sDQo+ID4gICAgWzRdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9iYXQta2JsLTIvaWd0QGZiZGV2QGluZm8u
aHRtbA0KPiA+IA0KPiA+ICAgDQo+ID4gS25vd24gaXNzdWVzDQo+ID4gLS0tLS0tLS0tLS0tDQo+
ID4gDQo+ID4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTE1NjYx
djEgdGhhdCBjb21lIGZyb20NCj4gPiBrbm93biBpc3N1ZXM6DQo+ID4gDQo+ID4gIyMjIElHVCBj
aGFuZ2VzICMjIw0KPiA+IA0KPiA+ICMjIyMgSXNzdWVzIGhpdCAjIyMjDQo+ID4gDQo+ID4gICAq
IGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzQGxtZW0wOg0KPiA+ICAgICAtIGJhdC1kZzIt
MTE6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XQ0KPiA+IChbaTkxNSM2MzEx
XSkNCj4gPiAgICBbNV06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzEyOTIxL2JhdC1kZzItMTEvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMt
czNAbG1lbTAuaHRtbA0KPiA+ICAgIFs2XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEvYmF0LWRnMi0xMS9pZ3RAZ2VtX2V4
ZWNfc3VzcGVuZEBiYXNpYy1zM0BsbWVtMC5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAcmVzZXQ6DQo+ID4gICAgIC0gYmF0LXJwbHMtMTogICAgICAgICBbUEFTU11b
N10gLT4gW0FCT1JUXVs4XSAoW2k5MTUjNDk4M10pDQo+ID4gICAgWzddOiANCj4gPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjkyMS9iYXQtcnBscy0x
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVzZXQuaHRtbA0KPiA+ICAgIFs4XTogDQo+ID4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEv
YmF0LXJwbHMtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlc2V0Lmh0bWwNCj4gPiANCj4gPiAg
ICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBzbHBjOg0KPiA+ICAgICAtIGJhdC1ycGxzLTI6ICAg
ICAgICAgTk9UUlVOIC0+IFtETUVTRy1GQUlMXVs5XSAoW2k5MTUjNjM2N10gLw0KPiA+IFtpOTE1
Izc5MTNdIC8gW2k5MTUjNzk5Nl0pDQo+ID4gICAgWzldOiANCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9iYXQtcnBscy0yL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVAc2xwYy5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBpOTE1X3N1
c3BlbmRAYmFzaWMtczMtd2l0aG91dC1pOTE1Og0KPiA+ICAgICAtIGJhdC1ycGxzLTI6ICAgICAg
ICAgTk9UUlVOIC0+IFtBQk9SVF1bMTBdIChbaTkxNSM2Njg3XSAvDQo+ID4gW2k5MTUjNzk3OF0p
DQo+ID4gICAgWzEwXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEvYmF0LXJwbHMtMi9pZ3RAaTkxNV9zdXNwZW5kQGJhc2lj
LXMzLXdpdGhvdXQtaTkxNS5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBrbXNfcGlwZV9jcmNfYmFz
aWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlQHBpcGUtZC0NCj4gPiBkcC0xOg0KPiA+
ICAgICAtIGJhdC1kZzItODogICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbaTkx
NSM3OTMyXSkNCj4gPiAgICBbMTFdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV8xMjkyMS9iYXQtZGcyLTgvaWd0QGttc19waXBlX2NyY19iYXNp
Y0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2VAcGlwZS1kLWRwLTEuaHRtbA0KPiA+ICAg
IFsxMl06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzExNTY2MXYxL2JhdC1kZzItOC9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2Nr
aW5nLWNyYy1mcmFtZS1zZXF1ZW5jZUBwaXBlLWQtZHAtMS5odG1sDQo+ID4gDQo+ID4gICANCj4g
PiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4gPiANCj4gPiAgICogaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUBndF9oZWFydGJlYXQ6DQo+ID4gICAgIC0gZmkta2JsLXNvcmFrYTogICAgICBbRE1F
U0ctRkFJTF1bMTNdIChbaTkxNSM1MzM0XSAvDQo+ID4gW2k5MTUjNzg3Ml0pIC0+IFtQQVNTXVsx
NF0NCj4gPiAgICBbMTNdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xMjkyMS9maS1rYmwtc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
Z3RfaGVhcnRiZWF0Lmh0bWwNCj4gPiAgICBbMTRdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9maS1rYmwtc29yYWthL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4gPiANCj4gPiAgICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXNldDoNCj4gPiAgICAgLSBiYXQtcnBscy0yOiAgICAgICAg
IFtBQk9SVF1bMTVdIChbaTkxNSM0OTgzXSAvIFtpOTE1Izc5MTNdKQ0KPiA+IC0+IFtQQVNTXVsx
Nl0NCj4gPiAgICBbMTVdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xMjkyMS9iYXQtcnBscy0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVz
ZXQuaHRtbA0KPiA+ICAgIFsxNl06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNTY2MXYxL2JhdC1ycGxzLTIvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUByZXNldC5odG1sDQo+ID4gDQo+ID4gICANCj4gPiAgIHtuYW1lfTogVGhpcyBlbGVt
ZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuDQo+ID4gY29t
cHV0aW5nDQo+ID4gICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NF
U1MsIFdBUk5JTkcsIG9yDQo+ID4gRkFJTFVSRSkuDQo+ID4gDQo+ID4gICBbZmRvIzEwOTI3MV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQ0KPiA+
ICAgW2k5MTUjNDk4M106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
aXNzdWVzLzQ5ODMNCj4gPiAgIFtpOTE1IzUzMzRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81MzM0DQo+ID4gICBbaTkxNSM2MzExXTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjMxMQ0KPiA+ICAgW2k5MTUj
NjM2N106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzYz
NjcNCj4gPiAgIFtpOTE1IzY2ODddOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2ludGVsL2lzc3Vlcy82Njg3DQo+ID4gICBbaTkxNSM3ODcyXTogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNzg3Mg0KPiA+ICAgW2k5MTUjNzkxM106IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzc5MTMNCj4gPiAg
IFtpOTE1Izc5MzJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lz
c3Vlcy83OTMyDQo+ID4gICBbaTkxNSM3OTc4XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvNzk3OA0KPiA+ICAgW2k5MTUjNzk5Nl06IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzc5OTYNCj4gPiANCj4gPiANCj4g
PiBCdWlsZCBjaGFuZ2VzDQo+ID4gLS0tLS0tLS0tLS0tLQ0KPiA+IA0KPiA+ICAgKiBMaW51eDog
Q0lfRFJNXzEyOTIxIC0+IFBhdGNod29ya18xMTU2NjF2MQ0KPiA+IA0KPiA+ICAgQ0ktMjAxOTA1
Mjk6IDIwMTkwNTI5DQo+ID4gICBDSV9EUk1fMTI5MjE6IDNkZTYwNDBjZTk5MDBhOTRlYzYyNjY2
MmQ1YzZhMjI3YjM3ZWViMWMgQA0KPiA+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dm
eC1jaS9saW51eA0KPiA+ICAgSUdUXzcyMjE6IDRiNzdjNmQ4NTAyNGQyMmNhNTIxZDUxMGY4ZWVl
NTc0MTI4ZmUwNGYgQCANCj4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ln
dC1ncHUtdG9vbHMuZ2l0DQo+ID4gICBQYXRjaHdvcmtfMTE1NjYxdjE6IDNkZTYwNDBjZTk5MDBh
OTRlYzYyNjY2MmQ1YzZhMjI3YjM3ZWViMWMgQA0KPiA+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eA0KPiA+IA0KPiA+IA0KPiA+ICMjIyBMaW51eCBjb21taXRzDQo+
ID4gDQo+ID4gODNkOWU3NjYxMGQ1IHg4Ni90b3BvbG9neTogZml4IGVycm9uZW91cyBzbXBfbnVt
X3NpYmxpbmdzIG9uIEludGVsDQo+ID4gSHlicmlkIHBsYXRmb3JtDQo+ID4gDQo+ID4gPT0gTG9n
cyA9PQ0KPiA+IA0KPiA+IEZvciBtb3JlIGRldGFpbHMgc2VlOiANCj4gPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9pbmRleC5odG1s
DQo=
