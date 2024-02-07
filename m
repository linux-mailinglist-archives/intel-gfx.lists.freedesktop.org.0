Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 639D684C8E3
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 11:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C659310E27C;
	Wed,  7 Feb 2024 10:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IXcwhns1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACFEA10E2E9
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 10:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707302779; x=1738838779;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=tceFhXbOKx2qPzOiMlD+SjpLA0E0OiSmIvIF37nU3l0=;
 b=IXcwhns17jXNEEn+6Y1xHV4yTwh45WRnUKC/HkuWT4hw68i1viICwTSZ
 u2Qn9/RSttpcIAc6Hq/+acOMs2cID3ouSmpWKA2/xCl10fEKtgLqavXe7
 9xnv8GEn7iNumt5kWNI2Ka1GKYRXECESfuNBGRH9UF8o5G5sWFzHeDROR
 dP45EiUdzMv66dVO0XQAcuMeiF8KS7fLk0/qHJ52BS5B0t3Al9P2LcLIP
 KkJ2elw1Us2xkWFia35KRkY+6d53XYyfn+NYN2xcMqihbaL3IZo+m8SuI
 LldSJxq5C7dtlgHDutq3mdtafCKFHX2AJX7jRW9nbv1t/q/NAyDY3wivu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12316870"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="12316870"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 02:46:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="32111851"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 02:46:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 02:46:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 02:46:17 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 02:46:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPUPBU/Nkqrc3lGQNky+tGB6jePj6a2ZgnFM09/OWrCtHblt6hAX+9r6oMwIKL13mYFCYRV1IUNBLrfPZYCjqkperBypDRiy2xBhPcOmxlhJaUTJlJYYGLcnLQ8qjv1xuhkygiWC01/+jldHAsiaLdmdH4xlJuiAUxLTf5ium62Wjrb1HCwzSgiiUq3JMC77rWsQRkSbW9Pz9DNxd2P+HEYbf3Sj1Q9RfRcziRQCkLGI2Xoioj+ZcDwkZDJQnArDeeTOURyFi5S5xCYZOxkbJuVndr6uJs/E4885cUq8Bkk7ELlVhL2T9IZ5YcEoQuB3AAfwkc6eadQRpaXus1xs6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tceFhXbOKx2qPzOiMlD+SjpLA0E0OiSmIvIF37nU3l0=;
 b=kg2FxLPAD+JRbsCyCsfhbM2sld9YL3gpKj1qWiSwCuv1Oy9mSf7OG7G0hWhsDSlb29jyFhWq2Xly2isePop2XygVX32eOvZAu9LR02q+L3ZcXGFfe29uVKNZuJuvyQnZyUDZ/Aybg3NuIeH57Vs8dLpM7p0jidFTdhYiPBh+tDQp0jhIkbAsBpXKXdlq4Zi3fS6xS3HkH+Re9FYzMFxM8joC3guU0UAVPTF5FgxRsLZk3zGdBnQA/BvGVvRnjjVL8aF3zQJZxz4ktPOujLh29z7PKdBytiaPdMsa6xKoV/eHiWm79xaUWErIWqRgVPPsPcoz3hu27Nx1AEZ850hGbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CYXPR11MB8732.namprd11.prod.outlook.com (2603:10b6:930:d6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Wed, 7 Feb
 2024 10:46:14 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d%6]) with mapi id 15.20.7249.038; Wed, 7 Feb 2024
 10:46:14 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/lnl: Add pkgc related register
Thread-Topic: [PATCH 1/2] drm/i915/lnl: Add pkgc related register
Thread-Index: AQHaVOxkl7qXzWPt+k6L5wyvPKbJm7D+u+IA
Date: Wed, 7 Feb 2024 10:46:13 +0000
Message-ID: <628601e006a490da22acde31fc01544e4229283d.camel@intel.com>
References: <20240201085158.1000285-1-suraj.kandpal@intel.com>
 <20240201085158.1000285-2-suraj.kandpal@intel.com>
In-Reply-To: <20240201085158.1000285-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CYXPR11MB8732:EE_
x-ms-office365-filtering-correlation-id: 6ed3c51d-baf7-4e25-22b8-08dc27ca015e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3LYjq1djJ0hbm8mf4dW9GHbEdCDXlOqedTY2sv7wCwu8NQ1XOiXFnBJ+h6TQOsRpM1U3ccQuIlFcAVkYW9A707bbbr3KiMePhiuh2AU1FRWjn8L+g+Y6COxwFvr67FO6iB5cz74nMjEqDfnGwzyM3l7YsO2V42jSEzN1DylW1TTM861Q3gudSEUP8ph0EcAGd3il0PooS5+C4vGxPlsBR/O65lCuyHSrxMAMykOGiDIDuHI7XSoPRKy/Gu8ggn517Cc8pTc8TnzDCcS9/+KWxvrFMdW57Div3sR85iS4gBQWrTJRfpn5059ymsT/i780HAj0VAg2YImcQwczXPXhbkBrKFPtm1Z+2it6IbJJmmP4ZcQKjUPOYmAY1JLxvuAp5Et35pMXQS3JKVEeLhjcHh8hls3xTG0u80L7inG5PC3p6yYsf5cJnSrYxqlAxBPOMNrM5PomKEptLL2jVdWnjNRNHbsYuMNMPovfqqUjvX8/wXNLkguNlOe7pO322B6uRlDL2L1qfgVGhn500dzZs5FpmU8yzG/SJkSR8xZzY7U6L1F40mNPDi0G3J8uiigz4v54KZBx2K08w4PPcSQ3c6t/MgnnuGt3/Y46Jc7c7gGcvW6/ojIWWhbGkvbHekVd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(39860400002)(366004)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(38100700002)(122000001)(8936002)(82960400001)(8676002)(66446008)(64756008)(76116006)(66946007)(66556008)(66476007)(110136005)(316002)(5660300002)(4744005)(2906002)(2616005)(6512007)(6486002)(71200400001)(6506007)(478600001)(38070700009)(86362001)(36756003)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NU5Semc5cTNPRWxZZHV4bFRSNjFxNGU0enBaUjhxVnBiMlVHNXZ3QkFaSWJW?=
 =?utf-8?B?ZEpPa1duUXBOb1BzS2RNODAyM1Vob1hMZy85c3hGeUpBK2p2YWJGWHN3WHRu?=
 =?utf-8?B?NnkvV0dKWCtRV3BtUWZDTXJmU3pENHRSdFZtY0EyOGYxSktvQUtNanZiMWdn?=
 =?utf-8?B?cGc5aUoweVFKOHhSbVZ4VnB5TDlvS3REdE83S21JbGJQQmZBZW4reWJrSGhr?=
 =?utf-8?B?OGZ1ZDRXUS9tMkUvdmlUQ1Q5cmphL1hVRjFMN0RJRXdCR01TM1pDUGlWREFW?=
 =?utf-8?B?ek1ueEZ4dzFFa0l6MzVyZHp2K2dqSXcwdU9wVjI5STlXdUF4UVZTcExpWW1M?=
 =?utf-8?B?Nm9pMTRmOC90bitjUTFlazdhQlhQYjh2RDUzRm9FZnJYV0FkNVJPVCtsZjJ1?=
 =?utf-8?B?Tnh2cSt4R1VlOHVqYnN3bUhZSmMvZE9ZdEFNMkR1UFo4V3c3dDB6dmU0YVJY?=
 =?utf-8?B?TVBGeEdGdEJvRXJzSUJnMHFlTXcxbHFaZGlVYmc0eGZGbjN4L0RGRnF1NGIw?=
 =?utf-8?B?VzFwdmU4REs5QWtwb0RiTmRCRklNRTByOGZKanZiWUF4MnFyOGtVQVJ6WXla?=
 =?utf-8?B?RlY1dzAwWmt3L0xUZVh6OUxsT00vb2xocnduTHd1eVU2dTR0WGIwNWRuY2l1?=
 =?utf-8?B?WUllSTBOWWRIaDVpeW1iK20rb3RxeS9PUlQ0b0NQU0Q2bGZlYVFIaTB1cjVX?=
 =?utf-8?B?Ui9wMWc2d1JqMWlCTFVCcWNmMWYxcG5keUxqaWpTTWZ1dEFrSkI0U2ZlczN2?=
 =?utf-8?B?VFdVWndRRkhVcExZRW9KY0kzeUoxemF4Uno1bEVEM200NkYyRS9EZ2QySjkv?=
 =?utf-8?B?b2E2TzV6UjNBaEtqSUoyVXVQWVcwdDBsYnllMG9OQzNZaklWT2cxYThxbG5n?=
 =?utf-8?B?OWpleEVpMlAxNkNrMWVoWGtjR0IybGpaZVVVcEZCTE5pT01kRWFCOGNmcEM0?=
 =?utf-8?B?NXk1UFhOU0dSRFovQTROcCtmSkdiQUozU0U5QXRJV3U4LytnL1VIUzhUcXQx?=
 =?utf-8?B?V2NRYkdnS0VkY0htTlhXdk5CbWM2M2FqR3A2aktwNDMvcEljeFM3eDk0RTNP?=
 =?utf-8?B?c01UTTNSWnBrUzB0RjVkbXA1Q2JJSmdPakFzRHVDUjlVdXVvbURWc2h1NlRn?=
 =?utf-8?B?WFV6WkFjbUQrNDdrazFFUUJsY0Frc3l3T3RlRnFqajVtb0dsYTdqei9mWUp2?=
 =?utf-8?B?V3lBUU9MckYydDJSd3FLVmxrVUNyU1ZOZ1UvQzNKWkhZUTBxQVRFdS9VZ0Fh?=
 =?utf-8?B?eFd5bE95aXB1VjMyS2I3YWk1ZzQ3SGFtbEZvRWxyWFhydTdjNUFPQk9LdkMr?=
 =?utf-8?B?dU1GUVdaS3FvWGdLcEpmN3VOZmhseFJkREM3NzIwZGhjRXBQbnJTQnZ4anZq?=
 =?utf-8?B?Y2k0YTY1cTd2RVBwaGFkN3lkK2RiamxRZVhZTk0zZzhocm1oWm9VRWNDK3hT?=
 =?utf-8?B?NTNCQUIwUkg0cU5vMUxFKy83WWxRVTJGSXQ2VGtBRGY3ODBndUxyeDAvbXd5?=
 =?utf-8?B?K3N6Zmh3Y2R3ejZKYjJDTWorWE5WdU1VZVhINUpUcy9VeTBDVWJCbWxlL1hF?=
 =?utf-8?B?WHhTYU80anVPZS9BVk12c1hWQ2g5Rk1GZUNXeG9qNFh3T0pPMFpMalNYa29Q?=
 =?utf-8?B?VWNQVHp1VkhkZFZ2aXBEb055VTVOSjdRSjQxMDhEdXRab3E1WXJ5S2xFUjRp?=
 =?utf-8?B?bW5uUHc2MHlMTU9Fdlc1THd6bUNmUTQ0dGUwWWJoakxFQzhSLzlXU0RoT2xW?=
 =?utf-8?B?d09rbmlTQkR5bnFiZWl0S3FocTEvTDdsdFVwMWZPYVJwZFZUc2dTQXIxb3dy?=
 =?utf-8?B?SW5EMVFGaWhveHVxZXh6djVyU2tEOWVYemdQWlRxSEJkaUdBZkNTTFpqbnhO?=
 =?utf-8?B?VXBaR0ltZ0VUZXZNMEdlVkhaRjMvcUY5QXllVEJWS1RnKzdyTDN1NEFmVUVI?=
 =?utf-8?B?S3I2ZExUT1RoVGVNRWNwSEF3SFVGbGF2dVFHN3o2VEZPNE9RKzVNa2owTE5W?=
 =?utf-8?B?eE0vZ3dtQTEwcVREVGRKR2EwRXlmVHArRkM1eHV1SzVRSDZ3RDVQT080Tkk2?=
 =?utf-8?B?V1RUdzZFK1FKbW9UUUF2aExRK1BtY2dCeVdYSmJrNCtjRU9EbVhoZUo3c0tJ?=
 =?utf-8?B?eFBkL290a1YzVGhSendCaXVIaDVtSUlKQjlVM3pMaWdVSW9YenF5OEVmUzNY?=
 =?utf-8?B?TW1oZm9QSHAwelc2SHp4Szdma045ZUNXclVkeDMweXVMZk9tL01OREs1aDFO?=
 =?utf-8?Q?H0vP/DztG7UwNZMeQ2DJONytisLm3LKSzvVTC8aKTk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C49ED0C911B9E44CBB2E9D0766F27143@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed3c51d-baf7-4e25-22b8-08dc27ca015e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 10:46:13.9554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ND1pEyqUpt/Z5c31jDMqHXX3mt5mI/pGVPcJ928Io+9bLYl6lhOvl5yAtjg0quAp65F11euWWXNe6IL2KMTP9y96O+VV17GxU50Y5PIuX3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8732
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

T24gVGh1LCAyMDI0LTAyLTAxIGF0IDE0OjIxICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0K
PiBBZGQgdGhlIHJlZ2lzdGVyIHRoYXQgbmVlZHMgdG8gcmVhZCBhbmQgd3JpdHRlbiBvbnRvIGZv
cg0KPiBkZWVwIHBrZ2MgcHJvZ3JhbW1pbmcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBL
YW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrX3JlZ3MuaCB8IDQgKysrKw0KPiDCoDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFw
aWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrX3JlZ3MuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFya19yZWdzLmgNCj4gaW5k
ZXggNjI4YzU5MjBhZDQ5Li4yMGIzMGM5YTY2MTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFya19yZWdzLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrX3JlZ3MuaA0KPiBAQCAtMTU3LDQgKzE1
Nyw4IEBADQo+IMKgI2RlZmluZSBNVExfTEFURU5DWV9TQUdWwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgX01NSU8oMHg0NTc4YykNCj4gwqAjZGVmaW5lwqDCoCBNVExfTEFURU5DWV9RQ0xL
X1NBR1bCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNLKDEyLCAwKQ0K
PiDCoA0KPiArI2RlZmluZSBMTkxfUEtHX0NfTEFURU5DWcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBfTU1JTygweDQ2NDYwKQ0KPiArI2RlZmluZcKgwqAgTE5MX0FEREVEX1dBS0VfVElNRV9N
QVNLwqDCoMKgwqDCoFJFR19HRU5NQVNLKDI4LCAxNikNCj4gKyNkZWZpbmXCoMKgIExOTF9QS0df
Q19MQVRFTkNZX01BU0vCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNLKDEyLCAwKQ0KPiArDQo+IMKg
I2VuZGlmIC8qIF9fU0tMX1dBVEVSTUFSS19SRUdTX0hfXyAqLw0KDQo=
