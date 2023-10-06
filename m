Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A617BB1BE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 08:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EFD10E200;
	Fri,  6 Oct 2023 06:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC28C10E200
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696575053; x=1728111053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SzmMq5cUuE3/qyQ3jHB/V6dux2MXbeMye0CUNW4w7k8=;
 b=LzGTMRxDbLiQzsj5CBXvdDWQih0HlVNe+dyDUwz0Uwjx2luPUg3zG+id
 nwVJNjyYwHpSVEtFGwg1EOGlMmyb2cLU4lJ7+mML7sSwFWSusoWSeEsJp
 8uxc0jvhakrqSRawRwnAIKXhLfMdYxKsloGtItI+xXJkMFMEdhmR0g74x
 EG0Qp9SLkGwTf158cjP7Ld+QKApu97GkWdPqT7z18cvJrTc0EbOBLg9sZ
 F6ZSKbMWlfE4I/h9Y2iP9T71Qkr0mwfRdSWaOIKgEUiyVdEU0Zfz4VUSK
 xBV/xUQEaxOC6GhhjEN30GxrkNcihFt5xpeenmyAhCvxg8v+zsZPl8n8R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="469959728"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="469959728"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 23:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895768961"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895768961"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 23:48:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 23:49:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 23:49:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 23:49:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 23:49:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctQdln7xDx9TqwFPCDxMWnpv8jjejxrtil8D5LpVvX48WwynsoxGa88ZuKkhIdEbA3ZvZTUAsAgJUCZtUnVT0XV6zSK7LnSTVyMgo3aMK+SyoeZ+3yPTK7Gm49WO8Ce1Sq/ZMsVpyNjSdvSVKZM6hwJHpGpUYKZudyVa6A5LCiz1EkMt2Rppa/anUCas5Tw3nwunoqXCvd4XjDg3hHiZBtwcbHbcUysis8WQYzHlQPca1zF1XsIledN7DjosHGASn/UyBLIy0POAQ1Rb0Rg9Gd9RImw19WfkZQhw9VAsUjX8xI+xAAcXwfK8DmiE7gf7l9YSWGTi+lmNdpDGluj5VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SzmMq5cUuE3/qyQ3jHB/V6dux2MXbeMye0CUNW4w7k8=;
 b=K1qWXiFe+VgkzzMV09N+dJml0jbcNDISGk6jXpAXRTwbBxoRk0Agx8QGgR4kHqkqO/U+UcKdZ1NAsYXR9aXX5dm7D7aFzjJGSwbzQcI7PSbxA3FffOrSY+oOCf3Nrtnz1u4NCW0m0esxRFDa7VSRu2s0Zfuh8XC0AwVj3vMxNYxhp0Z5egoEkxrDo5wkBIsdThVkhIMGjkT1BW1L/pkblLI0cRN/mL5+LQWzY99tq3kvbmjegmwq1Y5GTVOhBIXKC1zPDJreAegFVuPEYYLO20RHom7iK7GYJ4fxwv30Z+R2vNAUydsnmAe/DSFzJJq2ZeYJ38JXdz1Mx6htuF3vtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by IA1PR11MB7856.namprd11.prod.outlook.com (2603:10b6:208:3f5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Fri, 6 Oct
 2023 06:49:34 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::97a1:1c1:c0e1:ee42]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::97a1:1c1:c0e1:ee42%4]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 06:49:34 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
Thread-Index: AQHZ9q3pfAfY5aw3hUqs4kawTievoLA5ltuAgAEtbaCAAItfAIAAB42AgAAIU4CAAO/5MA==
Date: Fri, 6 Oct 2023 06:49:15 +0000
Message-ID: <SN7PR11MB70414488B8785812D9D0EFC7EFC9A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
 <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZR7Snm5Fnt9hOFEl@intel.com>
 <169652043551.1601.10514040093231401136@gjsousa-mobl2>
 <ZR7f7zs+ZvcQYfc7@intel.com>
In-Reply-To: <ZR7f7zs+ZvcQYfc7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|IA1PR11MB7856:EE_
x-ms-office365-filtering-correlation-id: d319dc82-5099-4857-3d3a-08dbc6385b51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zyf2jC8PW9Nj4KLG9qvcRx6yEgZHYU784EZG14LvwUP1m5WZKb52bcxAj2xYGEeQVCImI5zyO12LMRE/Cft9FIP2Wgb+PNnZ1sIUyVCkJNIHt9QoRPpQM9t9Jz+2SF29ZTq+pAe6jcYfhqyCcoZca2WQibKwWEvkbwlbyDyVE7Dl7rzJ4d3ppUqjkeBz6rdjavtiDaZZ1sgjZw+VyGnLiYafcjXqMjGtKbvCTlaot/63P1BIkJiKGgOHhgdOO09BzX9s9c0Ab182GUwgKf5hxqfKqvRIgZ7y1cJA+q90gLRKqYfBlrwXckbyY+dSszIzdocna5sED5Q0sY7lVi15jKxH3tZibGrsGLIdLgIJOKnSwl0orRZmvqYQQhqgvm4tfBuR4PaaxB48UgX6BnmHeVpI9WNpJS5WDf7AyTaOQjfUxdnDBqIrCrRq+MFiyJB6pBJ2HSwIsvIVzB4Cp70jB8UxE6VIee78Zx0n3AZ4smpM2VM8c53rxbSfqZ1dt+ASHa7AafdqS7+hUpUQp/L8EMsbeu5TiZJGNfEvMVny2roXIhdV5JX7K8rbk0oeHeDVHUXjTB1QmogDSyBcP2n73HcBnz4Vhg3NK0CVr9tne759S7JSXMrWLGbmWySuxzRt5bfQKUnOD3/ZBSKhVKnYlw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(39860400002)(366004)(136003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(15650500001)(5660300002)(8676002)(52536014)(2906002)(8936002)(4326008)(41300700001)(316002)(66946007)(66556008)(6636002)(66476007)(66446008)(64756008)(110136005)(76116006)(55016003)(26005)(71200400001)(6666004)(7696005)(53546011)(6506007)(33656002)(86362001)(9686003)(82960400001)(83380400001)(122000001)(478600001)(38070700005)(38100700002)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTlFUU1vVXNVWjZwTmJ5MnQyclNEZzQ1WG1YeFM1cUZyRVczR2pIeVc2OFpP?=
 =?utf-8?B?SWJtTldjcWxOOGtqQ3pmRy9mZHVGd1QvM3J1eFd6R2dIMFpockVGR2RMUVNw?=
 =?utf-8?B?NEJKMGZnQTRZWVJHOVUwbDF6bmpDQmJEZC9QQnl1cXhXMTkzMDRZR2p2WjFp?=
 =?utf-8?B?ekhBbTRCUFl1d1BPM0NuYjdSMkMwNzFMS2YxTGY4TVJXK1B5UGM3UmJtb3RO?=
 =?utf-8?B?MDM1R3A2VUtTa3lZVEVPOGhUR3U3djh2d2lWd2xsNVRPS3RmRStpU0hGblNz?=
 =?utf-8?B?NUJKZ0N4N0RqdkU0bXQ4UUVjeW1KNVcvWWlaMWJvUURmYVlOb0JkaVREZ3lp?=
 =?utf-8?B?cjFBbTNSUmN3S05CcEhWMW9tV1hTaTB1NU9PRTJ4ZHkrMlRRbmgybk5WbUk4?=
 =?utf-8?B?aTE5eldQTmFZcmRZSkpvV0t2VWhtMXFLNUl1OE8wU1crbkVHNkRoK25tUkR3?=
 =?utf-8?B?ajhtaC9qa1BHbU5hQ1VLaDcwY1hIWCtBWC9pVEttdm02TXBiclNEdk9EMndv?=
 =?utf-8?B?eDQ3VURmaWgwUi9oWWNPUGl2cHpERURxdlE3dDN3N2k4UFlXbnVRdmU3Wjhj?=
 =?utf-8?B?WS9QVkV1ejBZMkRmME1XWTlWeTBTQUVCYk9nK2U2YUllR09jUHFEZHJFMy9i?=
 =?utf-8?B?TnNJSWVSMHJKVW53Ly91NXFGZFEvK3o3Y1lmaGtLYXNMZnE1ZkdZZmE3Q1VH?=
 =?utf-8?B?cHpYdWl5WTZhbGxEbUljTTFhZUVneGU3TGxoU1hteEtIRFdaZkxzYjNNRFZL?=
 =?utf-8?B?NjRUZENKWXk1Szl2ZUZKV002N3FzVnBXZDd1b1gzdmM5TU9nR05ubWQ4d3BU?=
 =?utf-8?B?YmxKUGRUVkd4blpkK2c2cTNyVzNBR3duL0tKTXpuQXA5L0VjanNkSDNaVC9M?=
 =?utf-8?B?S3d0SHg3SjJsbGs4QzZxMXBDRDBnSnlWSnZSV2JFemhEajJDK1FzNXFCY2pz?=
 =?utf-8?B?YnlobGNzN1lFeG5uR3RxbEsraFNNWHhvbWFoUEkvdEpkQUtacDZyeVdWV3Ix?=
 =?utf-8?B?RGs1SlFiMjc3UFUvd1JEOVFUZXVmUkVkYkVIY3pZeXlkU3AwbXNBdHBJOHdE?=
 =?utf-8?B?cUVBeTViWjNsT2xXTW1MU0kvVW1lWnhLdExuQlhmeUFXTG1SeTVndnJwTisx?=
 =?utf-8?B?bW1VWGI1cHVoeVIzU041cGN3QnQwSGpxM3BCdlFUcVBHMjBWWFRyTFR2Ulh4?=
 =?utf-8?B?OEpyRVYxZHpTTTAzUmZwTnpsazVmQW5iZ2FmdDk5VXF0Ti9udWdVMlQvWUox?=
 =?utf-8?B?MERyb3Y1SGlZRTNXbC9RQTFreWZ6RVRUZXl3QzUrV3o5STNRZVpYY0JudzY2?=
 =?utf-8?B?UmxhWWJ5UFlIQjIzMWhkUTZhVnpHeTBGbXpHVEZLdU1iR0JSY0xMVHhIYWJj?=
 =?utf-8?B?TVg3V1E1UnFwM3hpbEtIbjhRbzlTaFhualJuYjB5dXNMYWtuWjh5ejF4UEIz?=
 =?utf-8?B?ODRvS2EyRXM0cmRMY2FvVUtEM3kzVmgxODJWK3o2V2RlZTcvaWNXMUhrRWRr?=
 =?utf-8?B?REZIbnFBcGRONFB5eWFzV3ZQUVFYK0p4TEZMUlkvVTg3SURnMVVrM3poWFU1?=
 =?utf-8?B?a3dHaUl6dDBtVUlIQzBzS1NPaVo3SUhBR3oyYmREUll5UXFMRDF3T3ZSYnZX?=
 =?utf-8?B?SGlUNmQyRzhVR1d5NUt0LzZBdGZOeDZHajNNbmFGUTkvTlpvVk9NRTAxZGF3?=
 =?utf-8?B?ck9IMmZDSmovVGF5aUIzajQvL2U1UkNEQUNzQ2dMbEFLWjFqYytiYXFWNWp5?=
 =?utf-8?B?RjRTTS9wNTd4eloyaldISzZZbjkzdXloOTM4Q25tYllMTVJiYXVWckdOSFNL?=
 =?utf-8?B?UExSa2dvemNDdjJJZ1BmczA5dmlOZlRnZ09CSUl3YkJ1TW9LOXlCRjJvSCsz?=
 =?utf-8?B?S0hQQVdXTkh5VmVwVmJnQk9Id1lSVUdSRVZ6RXNWd2FQK3dGaXhXRkVScE5q?=
 =?utf-8?B?SFAxOTcyTjhZdXNxWnpzMk85ZXVEcHh5RnQ5Y2M1UXBvaDJGVGNxTnRyT1pa?=
 =?utf-8?B?UzNUSEY2OWxXZnRPSUtOSEwzYldjMGVTNFlUWld1S2NsRERxdktJcDZXUXh0?=
 =?utf-8?B?bnpoa0RuQms3TEJ5Tnd2amJXT0RiTWNIMjN1RW0xSUo2aTNzSGxFNU5MY25I?=
 =?utf-8?Q?3KRh23bZUTQyznrWwyaFOkHAj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d319dc82-5099-4857-3d3a-08dbc6385b51
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 06:49:15.5372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4tVJhhVMJY3SyIAUVKrmUjOQYg7tgTMDloYrLx9DWVbCKav7OwL1o6PcgQ6REXE7dl8FltE13x50qDpQAwSYhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7856
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaXZpLCBSb2RyaWdvIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgT2N0b2JlciA1LCAyMDIzIDc6
MTAgUE0NCj4gVG86IFNvdXNhLCBHdXN0YXZvIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCj4g
Q2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0v
aTkxNS9kaXNwbGF5OiBSZXNldCBtZXNzYWdlIGJ1cyBhZnRlciBlYWNoIHJlYWQvd3JpdGUgb3Bl
cmF0aW9uDQo+IA0KPiBPbiBUaHUsIE9jdCAwNSwgMjAyMyBhdCAxMjo0MDozNVBNIC0wMzAwLCBH
dXN0YXZvIFNvdXNhIHdyb3RlOg0KPiA+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDIzLTEwLTA1
IDEyOjEzOjM0LTAzOjAwKQ0KPiA+ID5PbiBUaHUsIE9jdCAwNSwgMjAyMyBhdCAwMzowNTozMUFN
IC0wNDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+ID4gPj4gPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiA+ID4+ID4gRnJvbTogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4NCj4gPiA+PiA+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA0LCAyMDIzIDM6NTYgUE0N
Cj4gPiA+PiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+
PiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPj4gPiBTdWJqZWN0
OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBSZXNldCBtZXNzYWdl
DQo+ID4gPj4gPiBidXMgYWZ0ZXIgZWFjaCByZWFkL3dyaXRlIG9wZXJhdGlvbg0KPiA+ID4+ID4N
Cj4gPiA+PiA+IE9uIFdlZCwgT2N0IDA0LCAyMDIzIGF0IDAxOjI1OjA0UE0gKzAzMDAsIE1pa2Eg
S2Fob2xhIHdyb3RlOg0KPiA+ID4+ID4gPiBFdmVyeSBrbm93IGFuZCB0aGVuIHdlIHJlY2VpdmUg
dGhlIGZvbGxvd2luZyBlcnJvciB3aGVuIHJ1bm5pbmcNCj4gPiA+PiA+ID4gZm9yIGV4YW1wbGUg
SUdUIHRlc3Qga21zX2ZsaXAuDQo+ID4gPj4gPiA+DQo+ID4gPj4gPiA+IFtkcm1dICpFUlJPUiog
UEhZIEcgUmVhZCAwZDgwIGZhaWxlZCBhZnRlciAzIHJldHJpZXMuDQo+ID4gPj4gPiA+IFtkcm1d
ICpFUlJPUiogUEhZIEcgV3JpdGUgMGQ4MSBmYWlsZWQgYWZ0ZXIgMyByZXRyaWVzLg0KPiA+ID4+
ID4gPg0KPiA+ID4+ID4gPiBTaW5jZSB0aGUgZXJyb3IgaXMgc3BvcmFkaWMgaW4gbmF0dXJlLCB0
aGUgcGF0Y2ggcHJvcG9zZXMgdG8NCj4gPiA+PiA+ID4gcmVzZXQgdGhlIG1lc3NhZ2UgYnVzIGFm
dGVyIGV2ZXJ5IHN1Y2Nlc3NmdWwgb3IgdW5zdWNjZXNzZnVsDQo+ID4gPj4gPiA+IHJlYWQgb3Ig
d3JpdGUgb3BlcmF0aW9uLiBIb3dldmVyLCB0ZXN0aW5nIHJldmVhbGVkIHRoYXQgdGhpcw0KPiA+
ID4+ID4gPiBhbG9uZSBpcyBub3Qgc3VmZmljaWVudCBtZXRob2QgYW4gYWRkaXRpb25hIGRlbGF5
IGlzIGFsc28NCj4gPiA+PiA+ID4gaW50cm9kdWNlcyBhbnl0aGluZyBmcm9tIDIwMHVzIHRvIDMw
MHVzLiBUaGlzIGRlbGF5IGlzDQo+ID4gPj4gPiA+IGV4cGVyaW1lbnRhbCB2YWx1ZSBhbmQgaGFz
IG5vIHNwZWNpZmljYXRpb24gdG8gYmFjayBpdCB1cC4NCj4gPiA+PiA+DQo+ID4gPj4gPiBoYXZl
IHlvdSB0cmllZCB0aGUgZGVsYXlzIHdpdGhvdXQgdGhlIGJ1c19yZXNldD8NCj4gPiA+PiBZZXMs
IHdlIGhhdmUgYnVtcGVkIHVwIHRoZSBkZWxheSwgZmlyc3QgZnJvbSAweDEwMCB0byAweDIwMCBh
bmQNCj4gPiA+PiB0aGVuIGFzIHBlciBCU3BlYyBjaGFuZ2UgMHhhMDAwIGFuZCBJIGhhdmUgdHJp
ZWQgMHhmMDAwLiBJbmNyZWFzaW5nDQo+ID4gPj4gdGhlIHRpbWVvdXQgcmVkdWNlcyB0aGUgZnJl
cXVlbmN5IG9mIHRoaXMgZXJyb3IgYnV0IGRvZXNuJ3Qgc29sdmUgdGhpcyBpc3N1ZS4NCj4gPiA+
DQo+ID4gPndoYXQgaXMgZXhhY3RseSB0aGlzIEJTUGVjJ3MgMHhhMDAwPyB3aGVyZSBjYW4gSSBz
ZWUgaXQ/IFNvIG1heWJlIHlvdQ0KPiA+ID5jYW4gdXBkYXRlIHRoZSBtZXNzYWdlIGFib3ZlIHJl
bW92aW5nIHRoZSAnbm8gc3BlY2lmaWNhdGlvbiB0byBiYWNrIGl0IHVwJy4NCj4gPg0KPiA+IChS
ZXNlbmRpbmcgdGhpcyBiZWNhdXNlIEkgZ290IGEgZGVsaXZlcnkgZmFpbHVyZSBub3RpZmljYXRp
b24pDQo+ID4NCj4gPiBJIHRoaW5rIHdlIGFyZSBjb25mdXNpbmcgImRlbGF5IiB3aXRoIHRoZSAi
dGltZW91dCBwYXJhbWV0ZXIiIG9mIHRoZSBtc2didXMuDQo+ID4NCj4gPiBUaGUgUEhZIGhhcyBh
IHJlZ2lzdGVyIHRvIGNvbnRyb2wgdGhlIHRpbWVvdXQgcGFyYW1ldGVyIG9mIG1zZ2J1cw0KPiA+
IHRyYW5zYWN0aW9ucyAoQlNwZWMgNjUxNTYpLiBJdCdzIGRlZmF1bHQgdmFsdWUgaXMgMHgxMDAu
IFdpdGggY29tbWl0DQo+ID4gZTAyOGQ3YTQyMzVkDQo+ID4gKCJkcm0vaTkxNS9jeDA6IENoZWNr
IGFuZCBpbmNyZWFzZSBtc2didXMgdGltZW91dCB0aHJlc2hvbGQiKSwgd2UgaGFkDQo+ID4gaW50
ZWdyYXRlZCBhIHdvcmthcm91bmQgdGhhdCBidW1wZWQgdGhlIHRpbWVvdXQgdmFsdWUgdG8gMHgy
MDAgaW4gY2FzZQ0KPiA+IHRpbWVvdXRzIHdlcmUgb2JzZXJ2ZWQuIExhdGVyIG9uLCB0aGVyZSB3
YXMgYSBCU3BlYyB1cGRhdGUgd2l0aCB0aGUNCj4gPiBmb3JtYWwgdGltZW91dCB2YWx1ZSB0byBi
ZSBwcm9ncmFtbWVkIHRvIDB4YTAwMCwgd2hpY2ggd2FzDQo+ID4gaW5jb3Jwb3JhdGVkIHdpdGgg
Y29tbWl0IGUzNTYyODk2ODAzMg0KPiA+ICgiZHJtL2k5MTUvY3gwOiBBZGQgc3RlcCBmb3IgcHJv
Z3JhbW1pbmcgbXNnYnVzIHRpbWVyIikuDQo+ID4NCj4gPiBJICpiZWxpZXZlKiB3aGF0IFJvZHJp
Z28gaGFzIGFza2VkIHdhcyBhYm91dCB0aGUgdXNsZWVwX3JhbmdlKCkgY2FsbHMNCj4gPiBhZGRl
ZCB3aXRoIHRoaXMgcGF0Y2gsIGlmIHdlIHRyaWVkIHRvIG9ubHkga2VlcCB0aGUgdXNsZWVkX3Jh
bmdlKCkgd2l0aG91dCB0aGUgYnVzIHJlc2V0Lg0KPiANCj4geWVzLCB0aGF0IHdhcyBteSBvcmln
aW5hbCBxdWVzdGlvbi4NCg0KSSBoYXZlIG5vIGdvb2QgZXhwbGFuYXRpb24gd2h5IHVzbGVlcF9y
YW5nZSgpIGlzIG5lZWRlZC4gV2l0aG91dCBpdCwgdGhlIGttc19mbGlwIHRlc3QgZXZlbnR1YWxs
eQ0KdGhyb3dzIHRoZXNlIHJlYWQvd3JpdGUgZmFpbHVyZXMuIEFzIHRoZXNlIGFyZSBhIGJpdCBz
cG9yYWRpYyBpbiBuYXR1cmUsIGl0IHRha2VzIHNvbWUgdGltZSB0byBjYXRjaA0KdGhlc2UgZXJy
b3JzLg0KDQpUaGUgcGF0Y2ggaXMgYSBoYWNrIGFuZCBteSBpZGVhIHdhcyB0byBzZXQgbWVzc2Fn
ZSBidXMgYXQgcmVzZXQgc3RhdGUgYWZ0ZXIgZWFjaCByZWFkL3dyaXRlIG9wZXJhdGlvbi4NClVu
Zm9ydHVuYXRlbHksIHRoaXMgYWxvbmUgaXMgbm90IGVub3VnaCB0byBwYXNzIGttc19mbGlwIHdp
dGhvdXQgdGhlc2UgZG1lc2cgZXJyb3JzIG9uIHJlYWQvd3JpdGUuDQpIb3dldmVyLCB0aGUga21z
X2ZsaXAgdGVzdCBpdHNlbGYsIHdoaWNoIHRyaWdnZXJzIHRoZXNlLCBwYXNzZXMgd2l0aG91dCBp
c3N1ZXMuDQogIA0KQW5kIEkgbWlzc2VkIHRvIG1lbnRpb24gdGhhdCB0aGVzZSBlcnJvcnMgc2hv
dyB1cCAoYXQgbGVhc3QgbW9yZSBmcmVxdWVudGx5KSB3aGVuIDJ4IDRrIG1vbml0b3JzIGFyZQ0K
Y29ubmVjdGVkLiBUaGVzZSBtYXkgbm90IGJlIHZpc2libGUgd2l0aCBvbmx5IG9uZSBtb25pdG9y
IGNvbm5lY3RlZC4gRm9yIHN1Y2ggYSBzeXN0ZW0sIEkgaGF2ZW4ndA0KYmVlbiB0ZXN0aW5nIHRo
YXQgbXVjaC4NCg0KLU1pa2EtDQoNCj4gDQo+ID4NCj4gPiAtLQ0KPiA+IEd1c3Rhdm8gU291c2EN
Cj4gPg0KPiA+ID4NCj4gPiA+T2gsIGFuZCBteSBlbmdsaXNoIGlzIGJhZCwgYnV0IGl0IGxvb2tz
IHRvIG1lIHRoYXQgJ2VtcGlyaWNhbCcgbWlnaHQNCj4gPiA+c291bmQgYmV0dGVyIHRoYW4gJ2V4
cGVyaW1lbnRhbCcgZm9yIHRoaXMgY2FzZSwgc2luY2UgeW91IHJlYWxseSBkaWQNCj4gPiA+YSBs
b3Qgb2YgZXhwZXJpbWVudHMgYmVmb3JlIGNvbWluZyB0byB0aGlzIGZpbmFsIGNvbmNsdXNpb24u
DQo+ID4gPg0KPiA+ID4+DQo+ID4gPj4gPiBoYXZlIHlvdSB0YWxrZWQgdG8gaHcgYXJjaGl0ZWN0
cyBhYm91dCB0aGlzPw0KPiA+ID4+IFllcywgSFcgZ3V5cyByZXF1ZXN0ZWQgdHJhY2VzIHdoaWNo
IEkgcHJvdmlkZWQgYnV0IGJhc2VkIG9uIHRoZXNlDQo+ID4gPj4gdGhlIHNlcXVlbmNlIHdlIHVz
ZSBpbiBpOTE1IGlzIGNvcnJlY3QuDQo+ID4gPj4NCj4gPiA+PiA+DQo+ID4gPj4gPiBJIHdvbmRl
ciBpZiB3ZSBzaG91bGQgYWRkIHRoZSBkZWxheSBpbnNpZGUgdGhlIGJ1c19yZXNldCBpdHNlbGY/
DQo+ID4gPj4gPiBhbHRob3VnaCB0aGUgYml0IDE1IGNsZWFyIGNoZWNrIHNob3VsZCBiZSBlbm91
Z2ggYnkgaXRzZWxmIGFuZCBpdA0KPiA+ID4+ID4gZG9lc24ndCBsb29rIGxpa2UgaXQgaXMgYSBo
dy9mdyByZXNldCBpbnZvbHZlZCB0byBqdXN0aWZ5IHRoZSBleHRyYSBkZWxheS4NCj4gPiA+PiBU
aGF0IHNob3VsZCBiZSBlbm91Z2guIFRvIG1lLCBpdCBsb29rcyBsaWtlIHdoZW4gcmVhZGluZy93
cml0aW5nIHRvDQo+ID4gPj4gdGhlIGJ1cyBtYXliZSB0b28gZmFzdCwgdGhlIGh3IGNhbm5vdCBo
YW5kbGUgdGhhdCBhbmQgd2UgbmVlZCB0byByZXNldCBhbmQgbGV0IHRoaW5ncyBzZXR0bGUgZG93
biBiZWZvcmUgdHJ5aW5nIGFnYWluLg0KPiA+ID4+DQo+ID4gPj4gPg0KPiA+ID4+ID4gd2VsbCwg
YXQgbGVhc3Qgc29tZSAvKiBGSVhNRTogKi8gb3IgLyogWFhYOiAqLyBjb21tZW50cyBpcw0KPiA+
ID4+ID4gZGVzaXJlZCBhbG9uZyB3aXRoIHRoZSBtZXNzYWdlcyBpZiB3ZSBhcmUgZ29pbmcgd2l0
aCB0aGlzIGhhY2sgd2l0aG91dCB1bmRlcnN0YW5kaW5nIHdoeS4uLg0KPiA+ID4+IFRydWUsIEkg
d2lsbCBhZGQgdGhlc2UgdGhlIHRoZSBwYXRjaC4NCj4gPiA+Pg0KPiA+ID4+IFRoYW5rcyBmb3Ig
cmV2aWV3IQ0KPiA+ID4+DQo+ID4gPj4gLU1pa2EtDQo+ID4gPj4gPg0KPiA+ID4+ID4gPg0KPiA+
ID4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
Pg0KPiA+ID4+ID4gPiAtLS0NCj4gPiA+PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jIHwgNiArKysrKysNCj4gPiA+PiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykNCj4gPiA+PiA+ID4NCj4gPiA+PiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPj4gPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+PiA+ID4g
aW5kZXggYWJkNjA3YjU2NGYxLi5hNzFiOGEyOWQ2YjAgMTAwNjQ0DQo+ID4gPj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4g
Pj4gPiA+IEBAIC0yMjAsOSArMjIwLDEyIEBAIHN0YXRpYyB1OCBfX2ludGVsX2N4MF9yZWFkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBvcnQgcG9ydCwNCj4gPiA+PiA+ID4g
ICAgICAgICAgLyogMyB0cmllcyBpcyBhc3N1bWVkIHRvIGJlIGVub3VnaCB0byByZWFkIHN1Y2Nl
c3NmdWxseSAqLw0KPiA+ID4+ID4gPiAgICAgICAgICBmb3IgKGkgPSAwOyBpIDwgMzsgaSsrKSB7
DQo+ID4gPj4gPiA+ICAgICAgICAgICAgICAgICAgc3RhdHVzID0gX19pbnRlbF9jeDBfcmVhZF9v
bmNlKGk5MTUsIHBvcnQsDQo+ID4gPj4gPiA+IGxhbmUsIGFkZHIpOw0KPiA+ID4+ID4gPiArICAg
ICAgICAgICAgICAgIGludGVsX2N4MF9idXNfcmVzZXQoaTkxNSwgcG9ydCwgbGFuZSk7DQo+ID4g
Pj4gPiA+DQo+ID4gPj4gPiA+ICAgICAgICAgICAgICAgICAgaWYgKHN0YXR1cyA+PSAwKQ0KPiA+
ID4+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHN0YXR1czsNCj4gPiA+PiA+
ID4gKw0KPiA+ID4+ID4gPiArICAgICAgICAgICAgICAgIHVzbGVlcF9yYW5nZSgyMDAsIDMwMCk7
DQo+ID4gPj4gPiA+ICAgICAgICAgIH0NCj4gPiA+PiA+ID4NCj4gPiA+PiA+ID4gICAgICAgICAg
ZHJtX2Vycl9vbmNlKCZpOTE1LT5kcm0sICJQSFkgJWMgUmVhZCAlMDR4IGZhaWxlZA0KPiA+ID4+
ID4gPiBhZnRlciAlZCByZXRyaWVzLlxuIiwgQEAgLTI5OSw5ICszMDIsMTIgQEAgc3RhdGljIHZv
aWQgX19pbnRlbF9jeDBfd3JpdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0g
cG9ydA0KPiBwb3J0LA0KPiA+ID4+ID4gPiAgICAgICAgICAvKiAzIHRyaWVzIGlzIGFzc3VtZWQg
dG8gYmUgZW5vdWdoIHRvIHdyaXRlIHN1Y2Nlc3NmdWxseSAqLw0KPiA+ID4+ID4gPiAgICAgICAg
ICBmb3IgKGkgPSAwOyBpIDwgMzsgaSsrKSB7DQo+ID4gPj4gPiA+ICAgICAgICAgICAgICAgICAg
c3RhdHVzID0gX19pbnRlbF9jeDBfd3JpdGVfb25jZShpOTE1LCBwb3J0LA0KPiA+ID4+ID4gPiBs
YW5lLCBhZGRyLCBkYXRhLCBjb21taXR0ZWQpOw0KPiA+ID4+ID4gPiArICAgICAgICAgICAgICAg
IGludGVsX2N4MF9idXNfcmVzZXQoaTkxNSwgcG9ydCwgbGFuZSk7DQo+ID4gPj4gPiA+DQo+ID4g
Pj4gPiA+ICAgICAgICAgICAgICAgICAgaWYgKHN0YXR1cyA9PSAwKQ0KPiA+ID4+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ID4+ID4gPiArDQo+ID4gPj4gPiA+ICsg
ICAgICAgICAgICAgICAgdXNsZWVwX3JhbmdlKDIwMCwgMzAwKTsNCj4gPiA+PiA+ID4gICAgICAg
ICAgfQ0KPiA+ID4+ID4gPg0KPiA+ID4+ID4gPiAgICAgICAgICBkcm1fZXJyX29uY2UoJmk5MTUt
PmRybSwNCj4gPiA+PiA+ID4gLS0NCj4gPiA+PiA+ID4gMi4zNC4xDQo+ID4gPj4gPiA+DQo=
