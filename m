Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0163E6C7E80
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 14:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAD910E0DA;
	Fri, 24 Mar 2023 13:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D2D10E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 13:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679663515; x=1711199515;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7NiO14DiJAJNYih7Y2CAtKjIe/fnFeqVYIVzlRcY990=;
 b=QFzVBpE0lVFyIF3odcDMsKNbiYNqhHPRGc4RGByenSUHtC2Y8aDFBMyI
 /y4YKrJcbc25xxU7ZqHQ1GQxNDIGIqhjGqh/cSaf6eWJMmMq5n6sCpuzV
 35S2ubL9V7HhPHfiD2yJrB/v8aVnHNy0Cb6+/vlMpezyHSzwVr4ONjky8
 k1C8yUMuMSJBa59xRfcENEYNLwqf6SuxEaSNlLD6KTIfVYguGxoJsiuzY
 +NF5Sj2nO1twYtnAmYlKb2dlD1M7VjCB4ZV68SLzbcVnGDF3noiFUqQLZ
 ODVHCjeqb/iTOSZvzAu4kA+wWGejhdVnoU2FKyCHi2aDm/PVwWyznumkr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="402360645"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="402360645"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 06:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="747152564"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="747152564"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 24 Mar 2023 06:11:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 06:11:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 06:11:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 06:11:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNVTcGEhyeacPuWxdXMKtxFJmvV06smqAbDdNOAT939hoREUBL/VLLfYHrC38Mw1J47unoCc8Nrck6Bbi5Ecr5WhHs0NYwu5l+lBV8JD7RXUI1f5nrjh0qDGev1TKo1YN8k4YsssbhxEmzBjwLjh9bEKiHBkBAyKuilq0gXVNgBN3Bq2NOqu+X/mlevhdg+AgQPPFifbAgAfoFFF1gk+OLVUETc5yb0FsC4gMJGAtLdTOh6EqT7s4TY+tKInFrn83mqOpui7yQ8ym4UT678pdZFWOBLwZeluoz6XFse04y9qwHEDHMgQmk40rAX7oVwFoQxAp2lZDffZoYvHqEdDkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7NiO14DiJAJNYih7Y2CAtKjIe/fnFeqVYIVzlRcY990=;
 b=XBrkKTameIzLY8W2P6z0blfIF7Hcqk6T7gFRylGXIo5/T5BdJNyLJ7lDXeZGArhhIiG2K7ruL/S/RTRDC53sjEu8qUjKF1IWhQjWNhWxZzYnOq+kD4mgZ8HH34npLOaeO4m5hHpugXA2HQWFeQA2QnSZFnEnLhVebmK+dWM0FDByU857e6kM9WBNrV5xw+udgEj3iKWto433kMxv9uTpTvEzmZ9Zmd9EnS+yj4T0r0MBHlvze8zniiJgt6emZZrjPBav1jYQ+TJN0fuPcxOtSjmvFuRjvFf9cuwVZC+4FIsGu+zy5pZbMBoXS7idyEExl9CaXk895j4FdQdfKOKJHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB6359.namprd11.prod.outlook.com (2603:10b6:8:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 13:11:52 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 13:11:51 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/29] drm/i915/tc: Add TC PHY hooks to get
 the PHY ready/owned state
Thread-Index: AQHZXZK+VUs7JGenYEyveXjzkWcVRK8J6Sxw
Date: Fri, 24 Mar 2023 13:11:51 +0000
Message-ID: <MW4PR11MB70545CBD15758D497553079BEF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-10-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-10-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB6359:EE_
x-ms-office365-filtering-correlation-id: 36447c28-efd7-49b5-bf5f-08db2c695560
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: COV4gc+tc3OxBANJBEjNaL9HGtjZi9W7+i4feh8whghV9aGj1I2+5XtpKEsgCAFvTDdyRFwACIgHT70cjzJOKRbvOk1+To86pkgxQN2jlpO8bdYrgJwEdHsttrIDYPSqHcotwM8dNHt1t+YbaGk3cg7bmrqQObUo1auykKrhWzpyWrF+ctAXMMY1PEtH7dWZ1CktqSt1MfbZu0rRM3P2/lKKNoTDL/g2dlV1m2X9pNJlin/AMoUCeSiBX+Mqczv0gpC0Cm0k5fM3640ipITsRTIQHrpF8YIVjCTB0xcCQ6STuE0fKHZ8uVjx2DcrZuUKqLtY0tdVhxjYJ3fW7c52rxNjq9tFkkRHysrn+bmROZJk3bItDVFbb1IeUHfiGQPiYcp3D81zBZIGNS5b2roglZLV0X1vndETkxxff6b8w839mNKGOUckcJMRATmzigV63CUNjT3D2I/2aEO4G9JDSiOIFrYF2VHC6rSfXP7ssrPSbwe8K70g/6wFip3q7yZ3zfUR2vfD8nU38O9eHSfldeYm6hsCVcgaBOXdeHQGSYRS8nCr4gl5jaiX1ASB/FtpPjzQj31XRu+E4/0ZebvgpNTSFWe9IMlAMQE/J04CVkXY4LOu/Hk21ljjQG9+7cDzo+OTpA26clxoehlYn9xGZrx7qUoowCFxhp8jqZ6+RZQl5dE4EIjqnB+ey2ysVn///Oec3zNK382lHZ4bt/fAKM24fBZOC2okE/io4C/zslbZ2ptFx5ImYKduYyMHhMFe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199018)(8936002)(52536014)(41300700001)(55016003)(478600001)(71200400001)(7696005)(316002)(110136005)(86362001)(83380400001)(33656002)(76116006)(66946007)(66556008)(8676002)(64756008)(186003)(2906002)(122000001)(66446008)(5660300002)(66476007)(38070700005)(9686003)(53546011)(6506007)(26005)(82960400001)(38100700002)(115813001)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1ovOXVWeDRUeXZKYjZkcUMwWEtDZS9Sb0hXVC9ISGtLV1dtdXhUbEVsWXBZ?=
 =?utf-8?B?UFI5K0ZEMlBoalovNnNER2FXODFCamM3a2JKaEdaRGUyOUpaVnRDNG01ZGRY?=
 =?utf-8?B?MTZDeVRXeXpTREhkNlNmbW9SRGVJNU5VcGFRNjd5aVF6SjhEeU14RzlEc2Q4?=
 =?utf-8?B?bzRxVmlBWWt4bWFteThhTm5PbHErK2FvUEovK251cWVjbmFLbkZiT0dPWEs2?=
 =?utf-8?B?dktQeUhuUU1FVFZjTlNVQkU1UVJPM25BR0tsZ0tkemdZNUtpajQvZkhNb2Ns?=
 =?utf-8?B?dzdqU2dBL0Q0bUFUMUJqZ2tkSVZQSFBSWmU4STloMjJUeWN2TzlQMUozWFFa?=
 =?utf-8?B?MUdmZlVTdU5OdXFxcENTcENhempRaklFSm5vdUx5YmxLMU5nYlZwWUJhTHNP?=
 =?utf-8?B?V2x3QUR0T2lKNWlab3BGeENqRU1MMmhSZHFLOVV2ZHI2WmZnZExTeUFsem9U?=
 =?utf-8?B?YTFXcThybFV3YVBpemZrcWdQRkRzdUV5eUJMNmwzMk83ZmljVEY2a0I1WUhD?=
 =?utf-8?B?WTFBcm8zMmMxYXpud3poQ3JSczdtWGlybkxKWnJqb0xzRjBvYktBaUM4ZXUz?=
 =?utf-8?B?Z2Q5TjE3dHR3Q3FiVzEvaTlzMElQUW94VmZwR0hTMkY2L3ljRElsRU4xUTN1?=
 =?utf-8?B?NkgvVkxUQ1h4MXNybDRZUDROaUs3TjlybkNIaU96Q2VGOVE1MFNRQmhuUExR?=
 =?utf-8?B?Sy9PWUFoUkkvSWxyd2J1VTVTNGtNdGptSVFoZzZkd041Wi9QQjhxY29hRXlq?=
 =?utf-8?B?by9HR3pqVjZ3MTROd0NrMVFvTWFKbWlJWDJlYnhXU0tEeTR1QVFLNWgxOVU4?=
 =?utf-8?B?bDdCeGFWdFdKdGkrWE10dVFISDYraDhHWGhkbUFCdldMMVBqVVhNMjd2RTQ0?=
 =?utf-8?B?WEpVcERMa00ycEM2QXViUklWK3dLR3BxdHV5K1k4SUpnMThrRHNDeGRwY29h?=
 =?utf-8?B?aXR4SzR2K0dPNnc0R2JtNUNrRGZET2tJSUoraHh2OStlUjlIejRUVXgrVW1K?=
 =?utf-8?B?aFBvRjY2elRtS0pvaG9TQ0RaRHhSc1JaQ1JadGJiZXNNVGFtRGh3VEloYmtu?=
 =?utf-8?B?azVneDE3T1lTdHIxeEdpdGUwRDYvb1pJL3lsZVM5bG5qbkRaM2hrSGRDRGcz?=
 =?utf-8?B?YTNpZWdwN1E1dHVaTUpIanV3Mm9DZXBnemxDdzZVTEVPK3MxVnpXNGY2TG5s?=
 =?utf-8?B?eFpoTUlqUUE1TzhLcFhjZ01wakZFZUgvVmt2SXNtTVlHYS8zRDdtSnZmQ1dV?=
 =?utf-8?B?N0UyTTRaeC92eWtHNHlHYzZVWGJ4WFN3Ynp6R3NzT1lZU3c3MFAyTUV3MnQw?=
 =?utf-8?B?cVFxdUc1VWhTdVF5VWdSbTVrblRQWXp6TUxFcXFqa2ZtTkYzN2lxdWFzSThL?=
 =?utf-8?B?ZHZ0SnBFa09SMjVHTmJCVjVwWTkrZld2cWlhMktPUTBEWE1yd3NHWmdVK0dT?=
 =?utf-8?B?NlJyKy9VRlFPTlJuWTVNWER3N1ljSlE3OTVXRHpsb2RMMEV0ZU5lWXN0RTF4?=
 =?utf-8?B?T09iK2pGbmw4clVHZXVVY1hXbmlhdS91Q1VaMUNkcWJtV1FYQlNaZWhOUUUv?=
 =?utf-8?B?djUwSWNpejlpb0ZMbytGaCtMbkoyb3BqdkFBV1RtY1BIcVlpRDYrR2FpYXZ0?=
 =?utf-8?B?N1BZd1Z2WEI5ZEh2U1dMOHFtdjlXMUtuSWU0eUJyRDV2Umk0MlNUNnc4ZnEx?=
 =?utf-8?B?Vm5YMDY3MU5wY2JlU0VYS1l6U2NNQitVUHVxQUNxSkJzR0JUZGRsQ1F5OGRw?=
 =?utf-8?B?dWV3T1FIL002Q1hUVmN5dlRvTG1rL2M4aEI3UVV3bUJtUmc0NDU3MVRzQzB6?=
 =?utf-8?B?NnJaenVja1hBZkpiV01tLzhJNmF2QXVGblZ4cC85cnI5RUhJeFNZR0VVYkRy?=
 =?utf-8?B?NFZrTlFFMHVMeHpSOHM0OVNVQkZOckhDUlAwdmZ4aS9tbXBSSTZYMzlkK2dz?=
 =?utf-8?B?aDFCcm00dkNsZHlxbmU1K2Y0cUVrSVJWVXI4dlBLNitMaWtxRU9xb0FRV0di?=
 =?utf-8?B?LytER1laYW1NTTg4aUpMdm1TVGlCTkVsVDE3bm9zUlp5NFlOMGFiT25tSTBF?=
 =?utf-8?B?THovN0x2ejNUYU9IdzVMT3NTTHRRUGVDZEwzSjNGN0dOUUhGeFJxdi8vcS9h?=
 =?utf-8?Q?DS5M64hikJtlcd5+xilsVgNTJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36447c28-efd7-49b5-bf5f-08db2c695560
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 13:11:51.8024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a05zw3BAQ5xqW7UTgVprhJ40+3aKgbE0JSEnC7De8CyFqZWElvthOhgUi1g8yO2P6AJQc4O2Mz1ckiWTSFQ8Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6359
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/29] drm/i915/tc: Add TC PHY hooks to get
 the PHY ready/owned state
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
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDkvMjldIGRybS9pOTE1L3RjOiBBZGQgVEMgUEhZIGhvb2tzIHRvIGdldCB0aGUNCj4gUEhZIHJl
YWR5L293bmVkIHN0YXRlDQo+IA0KPiBBZGQgVEMgUEhZIGhvb2tzIHRvIGdldCB0aGUgUEhZIHJl
YWR5L293bmVkIHN0YXRlIG9uIGVhY2ggcGxhdGZvcm0sDQo+IHJlcGxhY2luZyB0aGUgY29ycmVz
cG9uZGluZyBpZiBsYWRkZXIuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jIHwgMjAgKysrKysrKystLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCBhMDUwOGUyMTczMDA3Li43ZDY0Y2IzMTBjYTNl
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC0y
Niw2ICsyNiw4IEBAIHN0cnVjdCBpbnRlbF90Y19wb3J0Ow0KPiANCj4gIHN0cnVjdCBpbnRlbF90
Y19waHlfb3BzIHsNCj4gIAl1MzIgKCpocGRfbGl2ZV9zdGF0dXMpKHN0cnVjdCBpbnRlbF90Y19w
b3J0ICp0Yyk7DQo+ICsJYm9vbCAoKmlzX3JlYWR5KShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMp
Ow0KPiArCWJvb2wgKCppc19vd25lZCkoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKTsNCj4gIH07
DQo+IA0KPiAgc3RydWN0IGludGVsX3RjX3BvcnQgew0KPiBAQCAtNTAyLDYgKzUwNCw4IEBAIHN0
YXRpYyB2b2lkIGljbF90Y19waHlfZGlzY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiAq
dGMpDQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF90Y19waHlfb3BzIGljbF90Y19w
aHlfb3BzID0gew0KPiAgCS5ocGRfbGl2ZV9zdGF0dXMgPSBpY2xfdGNfcGh5X2hwZF9saXZlX3N0
YXR1cywNCj4gKwkuaXNfcmVhZHkgPSBpY2xfdGNfcGh5X2lzX3JlYWR5LA0KPiArCS5pc19vd25l
ZCA9IGljbF90Y19waHlfaXNfb3duZWQsDQo+ICB9Ow0KPiANCj4gIC8qKg0KPiBAQCAtNTgxLDYg
KzU4NSw4IEBAIHN0YXRpYyBib29sIGFkbHBfdGNfcGh5X2lzX293bmVkKHN0cnVjdCBpbnRlbF90
Y19wb3J0DQo+ICp0YykNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX3RjX3BoeV9v
cHMgYWRscF90Y19waHlfb3BzID0gew0KPiAgCS5ocGRfbGl2ZV9zdGF0dXMgPSBhZGxwX3RjX3Bo
eV9ocGRfbGl2ZV9zdGF0dXMsDQo+ICsJLmlzX3JlYWR5ID0gYWRscF90Y19waHlfaXNfcmVhZHks
DQo+ICsJLmlzX293bmVkID0gYWRscF90Y19waHlfaXNfb3duZWQsDQo+ICB9Ow0KPiANCj4gIC8q
Kg0KPiBAQCAtNjAzLDIyICs2MDksMTIgQEAgc3RhdGljIHUzMiB0Y19waHlfaHBkX2xpdmVfc3Rh
dHVzKHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+ICp0YykNCj4gDQo+ICBzdGF0aWMgYm9vbCB0Y19w
aHlfaXNfcmVhZHkoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAgew0KPiAtCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7DQo+IC0NCj4gLQlpZiAoSVNfQUxE
RVJMQUtFX1AoaTkxNSkpDQo+IC0JCXJldHVybiBhZGxwX3RjX3BoeV9pc19yZWFkeSh0Yyk7DQo+
IC0NCj4gLQlyZXR1cm4gaWNsX3RjX3BoeV9pc19yZWFkeSh0Yyk7DQo+ICsJcmV0dXJuIHRjLT5w
aHlfb3BzLT5pc19yZWFkeSh0Yyk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wgdGNfcGh5X2lz
X293bmVkKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykgIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiAtDQo+IC0JaWYgKElTX0FMREVSTEFL
RV9QKGk5MTUpKQ0KPiAtCQlyZXR1cm4gYWRscF90Y19waHlfaXNfb3duZWQodGMpOw0KPiAtDQo+
IC0JcmV0dXJuIGljbF90Y19waHlfaXNfb3duZWQodGMpOw0KPiArCXJldHVybiB0Yy0+cGh5X29w
cy0+aXNfb3duZWQodGMpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIHRjX3BoeV90YWtlX293
bmVyc2hpcChzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsIGJvb2wgdGFrZSkNCj4gLS0NCj4gMi4z
Ny4xDQoNCg==
