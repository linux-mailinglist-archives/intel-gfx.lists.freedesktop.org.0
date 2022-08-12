Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A231590C89
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 09:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD67497401;
	Fri, 12 Aug 2022 07:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2756C1124CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 07:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660289277; x=1691825277;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YSD+nPW+KZkgCaLxBUETX8CPbWWMTtsRjloifhlnlaU=;
 b=XhmHSvTQpTzrmwR0z4mlBcLOAGAu92HfD2LQjcCfJLmgFWDeNUG/+FRI
 HqJFUSHEnwL6MfE7BIukbeRaceJXTlWjcsl+iUJPno2it+cTcsqekyN/q
 a0rJcnc9vLD4W3A+Ec1xFC9iNafxvEW9sszTWjg6lf4C7cIxFWvb8d8/x
 1m/v0zjpBqYX8Vtfu9aGfp48JwCs8OM6MrswOZ1ruAIFcAEBUZIS8/PaG
 6zOScqJryx35U+Pi+SgDLvyhqeJINtlZeU6hbz9K4MQvCHzv090ru1SV1
 nG+t+yA1WLwhDqa65YcUpl2xqZOTURTC/yY6mXylh4aDj2k/qxzLMe9gu A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291542252"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="291542252"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 00:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="732146101"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 12 Aug 2022 00:27:52 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 12 Aug 2022 00:27:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 12 Aug 2022 00:27:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 12 Aug 2022 00:27:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 12 Aug 2022 00:27:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmEW3+ukUopGGurUw5IQs6M9kDdAe7kRLgxW37NXioSxloaAKlT0FjY5mKnVUFD14wYA3ysI+SUhbpQbIjbGoMsy8ifbhCbCsPybFWAOwIgU5+G39DpGg37j8dnPVXvqoI9/ataat0pIDPkceCSoevt1Hjj7nWUpAfvuiogE/DwYkDY8mmIKo96JiExlq/1LCpwIJyZSbiUtYqABJbNDnUrnjI8WDyMcWv6n7/EQWqKc4CZpSIBWPbczQDSvub7MthgHkadHv6hMcHSMZ7mIJ6vlV8/ZykjQffkEr+6psiRrAEluk7XnwkC+ve04eHtEDJxPuMT0LzRHAIa6De4Zvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YSD+nPW+KZkgCaLxBUETX8CPbWWMTtsRjloifhlnlaU=;
 b=d01bum7Imw1RqPWJwh+awEFp4OJ1dOOrH7Hs9xtlk3XOjMhYZvlNTPP2BZQgu6N0rchtZdcvUQNlGiEczoqyqs9LgHqFg4nd1UL09brRzyx727eqshKIS9aah1g+vNHSv3qzKdSzhLtIrAqFds0gwTdtfWcJlKqTfVl/FEG8m5V/PHaPBt4pAh6ar70kHvaPTTWkQVXo5V+F1yJlOoyqQQa/6ua0EBd3/X7GXYlVPTxt8OGi0sF4YKuTOZVWLScri5049+bU8ED65Ge4Km5c6LvXoGIrVESgiKhFVVIw6VTGDGaz0pxNK9gf4UUzIfeuvN1y97SL2TrxvSxC5Pb7Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by BN6PR11MB1876.namprd11.prod.outlook.com
 (2603:10b6:404:ff::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Fri, 12 Aug
 2022 07:27:36 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::b0eb:55ef:bb60:bf85]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::b0eb:55ef:bb60:bf85%12]) with mapi id 15.20.5504.025; Fri, 12 Aug
 2022 07:27:36 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tc: Fix PHY ownership programming
 in HDMI legacy mode
Thread-Index: AQHYoPWxOGcn2kGrPkOLrn5vXcQNv62q9/WQ
Date: Fri, 12 Aug 2022 07:27:36 +0000
Message-ID: <MWHPR1101MB215765B4D9908604042FA940EF679@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220726134313.1484763-1-imre.deak@intel.com>
In-Reply-To: <20220726134313.1484763-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e877a7f-02ee-44af-eee6-08da7c342156
x-ms-traffictypediagnostic: BN6PR11MB1876:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +GBhSuBbWxBbTV5f2gXb4N9Hm/8kCz+J4bZB7X/fKx4UyqBoHayTdlf0svyVK9bQgl4elVgmipleWQAwfgUwSU+Ou4r5EXLgr+YzWKKE38vyao30ip1wMmChcjp0lAGIDlk89lvsON74MjQOTBLIlt/JU2ZbPnYqFE9ZOuyL3Clv7Wi7j2gd7Ba44BBdg2bt7YimiDuL0AoCsTbkgndaQl1TUCG3/A57e+f55u5ZqesB9qmW+2nBwevO13ySLBLHRG1w0NtqOT8D0wOlzLreqFGQtPHc2A439rH3WFMd2d5P7hYD6dTVNpJW8PNssaCa6AHypSYZIc0Ypu4AS7VEpWQn27sVtui3IGt18ykXeRyrZBbZaa1jWLn8gRdhx6fsuXeLqiOrKXJ8ZBEViMdqX6adcVy+LqQjBInGHm83N16lN6YOK46gM8X3qoOrUJXCNpuv6blEKW71bZtWgw2BEZe9s8WgzSC8H0CQtTYCFap2YvYz2mzB4U1rP/1WAXOyYGR7Y60Tfhs3NUHN0TMEzwd9Vk1MsiYzM3I/Lv+0N01/NAmdni774nHZlpP595+qu3ve7TKX/fGVaD8hrlLfGMM/Z84M7qwunOiquFHDfnOHDrbvjP8Btwx5U7e5z0BnDH4rXKuY3bnq/DrR9O0bmDV3zdnK/IoT/ufGlZVe/Z3r0S75P3l7H+h7turkj7Ube7xSQxOLBFBWdFiqrc2TDJIFCsS3lY3bCMMLf6Rvu26PuhgmbYUFL6jPdT8KpdR7EsJT/AYs3DSA65W0lNGXJ3j2+7iJUerazu9Y+yXUgqOIqzrO09Om2eeMcW16hFxD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(346002)(376002)(39860400002)(396003)(55016003)(2906002)(76116006)(33656002)(38100700002)(83380400001)(186003)(122000001)(26005)(9686003)(82960400001)(52536014)(41300700001)(86362001)(8936002)(5660300002)(7696005)(6506007)(53546011)(478600001)(71200400001)(64756008)(66476007)(38070700005)(66556008)(66446008)(8676002)(316002)(66946007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UU5KUHRVTjJrWlE2MFhxc0ZjQWhxQXVZWTN2TWowdld0SmlMakVaZlNRSFBi?=
 =?utf-8?B?czRlUVBpTmFvVzA1a2QrYkhISTd1SEVFaitZSHp2emxnMUVVOGJVaVV6V2lV?=
 =?utf-8?B?VytGZStmaHVSS2JjV2QwQTMvOFc3cHBxWkJHQ1RpNVVGYlZsZGEvY3Rzdkh4?=
 =?utf-8?B?QUpKWmpueTVPTGppd3MrWDBoZVVWdlA1dGJuRmlyWGRDTUJKMWdwNEtzcTNN?=
 =?utf-8?B?K2IzVm5ZWTRIdHpZWnByeVZTeVhhMjl6SWJOZlBlSTF4Vm4wc0t2dnI3Ujhm?=
 =?utf-8?B?bklhSEhkRngvcit1eVVlSjJTVGErcUhxdmR1V2pxZFY0NTY2WDdWVmE1N2Fy?=
 =?utf-8?B?Z01zb1JsNHRqN25NSXQ1bGdEL0E4clNKeldkbVBJakZEOWpJMlNJdW5VQVdJ?=
 =?utf-8?B?RGh6dnkyNGRVd1F6NFBqcWNUK0diaDZnVlVCME5mWXFJZWt1OXZPdzgzdDlw?=
 =?utf-8?B?cWRBelZJeTFoYXYzUWNaNmovV3BQb0w5S1hWNVBRdkVDaFdLZUwybk5GMEMz?=
 =?utf-8?B?TjdzZDk0b0pEN29NV1V5bFVxSjJvTHZJZXVnWVFJdGJFRStMY05DaFNCNkMy?=
 =?utf-8?B?VnFpby9WZXRyeDA4QlAyaEc1dFhQNk9UaW5CZWhKV0RyOTBGOVJPMFZsd0h4?=
 =?utf-8?B?aUFiRXA3SUEvMmtUODJHN3pvcHRxa2RqWDRoMCs3Q0I3eVBNYVhzTE10U1Ny?=
 =?utf-8?B?Wk1PZWVkYVJqSUJHUll1bGtkSTR6d1dQaXFUcEpseGFzemcrZTh1ZXZ0UHBa?=
 =?utf-8?B?bFlXaWoxRFhMNmZPc1pGekpPdzdoY3diVWZNdlJTaGJmSW9mT1B6UXFiTXZw?=
 =?utf-8?B?U1lWNmZFZ1BDV3A5QnVnQkx4R05jbitXUi92QVZadi8zdStKa0VKT01sV1p4?=
 =?utf-8?B?OTZiUkVLKzA1RWVpczg3SFI4MjZEdFkrYWNud24reDF1QkJ2MDRjdnRHeFhP?=
 =?utf-8?B?dW9maS9SS1F3cUhKTHBURWNuNkRqQ0pNNkgydHd5emVOckdzdHI1THp0UWFy?=
 =?utf-8?B?UzhybGIybklCbk81ZllCRmNzcDhnZ01JMkhQLzlYdVMxNjIyZHlVc1RHUFRJ?=
 =?utf-8?B?U0UxQXc3R0l4V2tydFNqQ1VSUVJmM0NvWGhjSWpOWDg1YkR4eERyZlg2SmQ1?=
 =?utf-8?B?OGpPaC9UTk84RXZoYkFPN0V0RFpjb0hPdVlDQ24rb0ZySzFDaFRLUU50cEFN?=
 =?utf-8?B?dEl4UmVKQjR3SGhXWllSQjFoTml0NHB2bFRaRDFTWDVVSEd5eXN6WTVNZitV?=
 =?utf-8?B?dkMxQ3pKSFNaeVR3ajBhcWE2RGdEdm94cVJQUW1hdDVNaGxpbUxNM0h0b2Rp?=
 =?utf-8?B?SnpvSkZVZmhvVkdQSnFPZS9JaXZ3cXJQdFg0QkR6aWdQcXYwZTB3MjR5TUJG?=
 =?utf-8?B?eXZFdElZaXhHTnphTzQwZHBNQjltU24vTnJIWXRRTlIvbUhMM0FtOUhVdE0w?=
 =?utf-8?B?Z0VHR3UyM2FBMFBaR0tiZW0wV28zK0VjajlCanp0MmNRdE5xTHUxTmFQdWtj?=
 =?utf-8?B?a3lTTXFCa2g1clRaVmxLYWg0d2k2MllDKzVpci9kN01uOU5Ua1FSS085bW9U?=
 =?utf-8?B?MDk5TkNXaHpDaFdhekRwM2tpOVV6Z1cvb3RtV3JORERGbThMenF3QTRtK2ph?=
 =?utf-8?B?bU9sazVjWSs1YzdyNDJvak0zS1Z6TzNoNlJSL0pzand1U0REaGZXdmVFMWFj?=
 =?utf-8?B?S2dyeDAzZGRvYnl5T0U2bnY3eWNKSnVDZy9VamNubkZPdVl4d0l1Q3hHdHpr?=
 =?utf-8?B?ajhKaktraU1KZTBvWHdGcU5JVllNVEFkM1Q2WFpuTktyWkhlVjJ5OW5MTTlw?=
 =?utf-8?B?b0tVZ0YrbjZ6OVRZcThuSG04Q0t6TStSYk5IMVl4eUw5ME1aM3BJa3NoV3Ar?=
 =?utf-8?B?OFJxNWNRd1pTZ1djNXdRZ0NlMzVSNTJNOE9JK2MzREJxbXJpcHoyOHU1SXdR?=
 =?utf-8?B?QXhIOWFNNkNrWTMrdDQwWXdCQnk0SnVQOW9yOUZDdGt0SEpsMzlZYXQxbVFO?=
 =?utf-8?B?SmUrZFExd1pXczNlU0VXVlFuK3lMVktUSVU2ODhidzM1MlZUQllxRG5oNUVQ?=
 =?utf-8?B?ck9Vd1J0MFl2c3RNN0JpSGJlcStzQTJGYkZCcUpYbzFiQ1NTazlaVTV4K29y?=
 =?utf-8?Q?g6idHrzyYDZPHhazhoifuT5SJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e877a7f-02ee-44af-eee6-08da7c342156
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 07:27:36.5366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YWxkI3bbYxtnrkMikTU8VK9usmTq6SH4m1gLrrld0CuJBOY/PMiGBhbw9uQGIrqI+DAskeWVfo0NcvhGx+yZ1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1876
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: Fix PHY ownership programming
 in HDMI legacy mode
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDI2LCAyMDIyIDQ6NDMgUE0NCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIXSBk
cm0vaTkxNS90YzogRml4IFBIWSBvd25lcnNoaXAgcHJvZ3JhbW1pbmcgaW4NCj4gSERNSSBsZWdh
Y3kgbW9kZQ0KPiANCj4gTWFrZSBzdXJlIHRoZSBUeXBlQyBQSFkgb3duZXJzaGlwIGZsYWcgaXMg
bm90IGdldHRpbmcgcmVzZXQgZHVyaW5nIGFuIEhETUkNCj4gbW9kZXNldCBvbiB0aGUgZ2l2ZW4g
cG9ydC4gQmVzaWRlcyB0aGUgV0FSTiB0aGlzIHRyaWdnZXJlZCwgaXQgZGlkbid0IGNhdXNlDQo+
IG90aGVyIGlzc3Vlcywgc2luY2UgZm9yIFR5cGVDIGxlZ2FjeSBtb2RlIHNldHRpbmcgdGhlIFBI
WSBvd25lcnNoaXAgZmxhZyBpcw0KPiBvcHRpb25hbCAodGhlcmUgaXMgbm8gb3RoZXIgdXNlciBv
ZiB0aGUgUEhZIGJlc2lkZXMgZGlzcGxheSkuDQo+IA0KPiBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5
OiBTaGF3biBDIExlZSA8c2hhd24uYy5sZWVAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEwICsrKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggYTRjODQ5M2YzY2U3Ny4uNmM0M2E1
MTI0Y2I4ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+IEBAIC0yODY2LDYgKzI4NjYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRpX2hk
bWkoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7DQo+ICAJ
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGNvbm5fc3RhdGUtPmNvbm5lY3RvcjsN
Cj4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7DQo+ICsJZW51bSBwaHkgcGh5ID0g
aW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOw0KPiArCXUzMiBidWZfY3RsOw0KPiAN
Cj4gIAlpZiAoIWludGVsX2hkbWlfaGFuZGxlX3Npbmtfc2NyYW1ibGluZyhlbmNvZGVyLCBjb25u
ZWN0b3IsDQo+ICAJCQkJCSAgICAgICBjcnRjX3N0YXRlLQ0KPiA+aGRtaV9oaWdoX3RtZHNfY2xv
Y2tfcmF0aW8sDQo+IEBAIC0yOTIzLDggKzI5MjUsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZW5h
YmxlX2RkaV9oZG1pKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCSAq
IE9uIEFETF9QIHRoZSBQSFkgbGluayByYXRlIGFuZCBsYW5lIGNvdW50IG11c3QgYmUgcHJvZ3Jh
bW1lZCBidXQNCj4gIAkgKiB0aGVzZSBhcmUgYm90aCAwIGZvciBIRE1JLg0KPiAgCSAqLw0KPiAt
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSwNCj4gLQkJICAgICAg
IGRpZ19wb3J0LT5zYXZlZF9wb3J0X2JpdHMgfCBERElfQlVGX0NUTF9FTkFCTEUpOw0KPiArCWJ1
Zl9jdGwgPSBkaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRzIHwgRERJX0JVRl9DVExfRU5BQkxFOw0K
PiArCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikgJiYgaW50ZWxfcGh5X2lzX3RjKGRldl9w
cml2LCBwaHkpKSB7DQo+ICsJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLA0KPiAhaW50ZWxf
dGNfcG9ydF9pbl9sZWdhY3lfbW9kZShkaWdfcG9ydCkpOw0KPiArCQlidWZfY3RsIHw9IERESV9C
VUZfQ1RMX1RDX1BIWV9PV05FUlNISVA7DQo+ICsJfQ0KPiArCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBERElfQlVGX0NUTChwb3J0KSwgYnVmX2N0bCk7DQo+IA0KPiAgCWludGVsX2F1ZGlvX2Nv
ZGVjX2VuYWJsZShlbmNvZGVyLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsgIH0NCj4gLS0NCj4g
Mi4zNC4xDQoNCg==
