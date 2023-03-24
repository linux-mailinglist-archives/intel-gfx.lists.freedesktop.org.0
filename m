Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF836C7BB0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 10:41:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604D610E16A;
	Fri, 24 Mar 2023 09:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4658510E16A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 09:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679650889; x=1711186889;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=52RinB9RAuEXyxqzgLXdAvbfSvpNvm5a9lIgy6DVDNY=;
 b=ZYhLLCkVg/oatCasGCCW2TOGtdUOl2GhUCYFWVoqYkBO1eGpsoqi9cPS
 CZrAAD2dWSfMkFpar3z7Pw7e6TzFW2ErlIYPdLULjan6rb/Zn5RyaBfiE
 MGFWoKVkmeTJIekGHN+DbLncK6PEBGbtlGGQZz3MJ/g2rV01XtD3GD5yi
 sq9R1eLs4kLEuwWLF7VmxXIjb6sp3ohy3uAnG0aX8TVzkbjIbr0jBVHxK
 M6eO19n0L3AaS3buVCw6Yi9Lnhgk+a9l1mF2jGmwRlzbf+jAVrG8LHQgQ
 +6ROTWdN/2uBLqzkXgl4KuuIsZP8mqqv/SuHKBGE8mdIiiRv+as2Vs9m2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="338461117"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="338461117"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 02:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="751842556"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="751842556"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 24 Mar 2023 02:41:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 02:41:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 02:41:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 02:41:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 02:41:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXao3zhzrIkFEHlgqAZ8Il3v79/VkJ1a9bNptrWIC4j3Pq1FF+dzSrcZIdCILlbZj1hZ1SDSbs4V0odCvpZW1Q/GzsX5CFqyDmsjTX5F8/TyFGEU4SGr9IusAlmLpw0LTwlil0Q7AnLMDSM8WLrucj5c8Iwy2hEiNlYtuTn33q0LUw1h0+W73HyUVXHuDYQYHx1Ymt9kJzTFaoWaD/Bu/ZzyuZ2io5cmvADNO/2CEQkT27+GeHHIWh8Q1QUVNTM+SvKKljPvCNM2Ewpgrsh+i+RAcYt0AbsfAK8gUyRZ//9fSq00w+eUC41SnrwDqgXnWO2lszGqMjraKT227YzYeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=52RinB9RAuEXyxqzgLXdAvbfSvpNvm5a9lIgy6DVDNY=;
 b=mH7J6cDTvBdLVGdPbjJXMr23RNFSv2MVjI2ILrcV9AWS2QmeT193WyPfHF/u3pNF18Nz/P6D+1DRY0ImRE9AvWNOzguVX2xB9v14FrC1UqbkeAMl34CbduingHq+KX5fTdA+A4vrVdw4ddiBEh+Bq/x6iE1RvAOzjgNY3ahbf6WKDlX2Q3+0RW5rWq245cfp+NWs4pXZmcOdv7oMtpHiBjazUSpShtkBd8w1pqG0W0zvgkQb0wb+0YnmOLvVNrC9dpBY0a3rjvgPjiHwP7JEnlmjVttY3bz2MJ6P+Sp/8LvzwxmFZAjvF+XQhyRbV4KNp7w88ZW9v64KfaFDXlSGVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA0PR11MB4672.namprd11.prod.outlook.com (2603:10b6:806:96::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 09:41:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 09:41:26 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/29] drm/i915/tc: Use the adlp prefix for
 ADLP TC PHY functions
Thread-Index: AQHZXZK1z3dauitDoEW5hZW7YjcBJ68Jrlyw
Date: Fri, 24 Mar 2023 09:41:25 +0000
Message-ID: <MW4PR11MB7054A2FD869D38449871C0E9EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-3-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA0PR11MB4672:EE_
x-ms-office365-filtering-correlation-id: 96891a00-9eac-4f24-079c-08db2c4befc4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qYTKvUQnCbD4lfmsJri5jhebpZVdH/ZgzUKF0j3FLHBjZWY7RpaoxWgSfCwZAdc2lZeqn62zxMvppMO1/zUZ/LSloAXvu+gWvY30kK3xxSHoZcbq8AFuYcTugZhrlUzhT4wutp/Dv6/dtNgSd87iuQ+FaPlHbG4/W979OdIlgfCWfFYlSPjhOOsBZwX/Fz3noLkymiFtCZyZKN6MfiLcjHMJcXSaSQac7OxkHpTerkyDilpymwy9RSaD4c2ZcIRLoJN0jhvn6Dy4WfimV9L9vgt/i4DwijcN55EeOaAGhezg5AgXH5Zejf4YQ88J79yXZTx3/nr+/ykVY9hfF2T1iREEesWO8jg0tm2uDqYgMEHORgGFU6LWmZq2c5qWg4ZgUjPpB5Af8MOJ9wxw6jSzVr0PWHeK7tVGreTvhIQSY4HhTZuVi14c2imGsZ5iti1Ag8Ihk5D5Lg1mjFJk9nEYOMrRxx0yNNDTjVJPiuWg+UC9hRcjmT/sABoGPYavq9PyZIvX5ZY4trvrmdvP9fvHgWRNY+g/uvRcJ55ghzcb25ahht4+Ev7qCS2M9kejcutBnabsNpqLiJPTCSBTq1P+ciY2omq/1cRopxHlRLz9dYSZeEUCU7o5MOmAaMvMHVJMxGafFva3TFrKqrydEC9/LSxrnxwBuZdxDi7guEwrCryrWSKcT5tkGSDFMisWIEDbXsI4n+ysee05Jty9M2rHtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(396003)(346002)(39860400002)(136003)(451199018)(9686003)(33656002)(66446008)(55016003)(82960400001)(122000001)(38100700002)(53546011)(186003)(6506007)(26005)(83380400001)(2906002)(52536014)(86362001)(8936002)(5660300002)(41300700001)(38070700005)(478600001)(7696005)(71200400001)(66946007)(64756008)(66556008)(66476007)(316002)(8676002)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGZNNlFiNjUyZzVNYWYrNVExeTFWaUhWVzhLeW0xT3VRMytzc2ExaTBtZ1dI?=
 =?utf-8?B?dEZXL1M2VTY2QVoydnhJb21ZbnJqaEVLeDhWdWVITDNnTXRrS2JaOFlvK2Ux?=
 =?utf-8?B?UzlNcW5kV1VTbEpsbEZLaVkvaklZZDZpbnBCL1BOUGd6b2FVN1I2M3FHZkVR?=
 =?utf-8?B?cDVxcFFMTnZYcjYwTitrWVFhTWJKN1kxcytKeVRITm10RnVKMmJDcW9jajJa?=
 =?utf-8?B?NlhNSUJ5MXVZYnlBNVFXZnhYejdkQjR2SEZwa0RITUFRbVdpK2JtclFnR0Ft?=
 =?utf-8?B?aTQwVFVSSjRyZlBOK1VtKzViY2l6a016RDlMbHp3KzE3UFNPUXhzdW1FblNJ?=
 =?utf-8?B?SUl0a0wwb1paMnRQUzdlWC9hZ0pGZnpnY285eXZUdlRxekpuTnExN0xMZm1l?=
 =?utf-8?B?MU9McDkxM1BBSTgyek1jdlJlOFR4R2pOTWZKaUlzdWpvOENTTndXTzJ6RnQ5?=
 =?utf-8?B?VXpSVUgxbkVubm1RUmVQV1B0OHhPTWFxVDJoenBVb1hqQ3d5OWFvOUMxSkpS?=
 =?utf-8?B?N2UybGJWSkw0T0lqNUVlZTZCRUdrVlRva1FxU3FyellHTnhCS3dZQ0w5QXdV?=
 =?utf-8?B?bkhvR25hM2djYlVudmlwTWJWS2loaDZDSUFIU2EzNkdTU0pPQ2RhazZrb1Rr?=
 =?utf-8?B?RzdJTGUydkZlUERORW5XekNlclBTSjd2S0J2eThCWmw3MXdqWWgyOXZGRUhZ?=
 =?utf-8?B?TmlqQmUydGt5YmhhOWpOanBJdVJTdDVBeHFabDZrMDBVdnRMcHhiTm81dStT?=
 =?utf-8?B?KzJPVHk5eUgrM2pmenpTS3B5MjBnMjBGNlZ2VkZhRmFUdGppVzFhOCt6MXRQ?=
 =?utf-8?B?dmhDU2plbUNEamFHT0xwQ2VVVkRQbEFrRlJvaEFWRWNNNTRoY1ovamliTE5Y?=
 =?utf-8?B?T3N0ZWFudVY5Vk9OWFJJYzJFMHJ0VGs5dDcvM1lDdkFidmdRY2R4ZWtBdHpP?=
 =?utf-8?B?WlA4djcwZ2xsZGpxTXBQbUdCZHNmY08yeUdyd2dJL0p0L1RYcXNSTVhqZmNL?=
 =?utf-8?B?SXhPUEtkOFpXRlkxdzJrL1hhQ2lPTHY3UmRBZ3ZHZTJ6YWlBbXpmdmdVaHVl?=
 =?utf-8?B?a2dHMUFWcHpnTnNRK0t6Mk5uUVd2OXgzVUVqd05tL3lFQzd6MzYrVXNRMnVT?=
 =?utf-8?B?am4zYlJKZjZYOTVqTGdpSkVSbWgvY2o0V0pJQUo3c3R3QUxWTTByMVJ2WFRn?=
 =?utf-8?B?WnlETFN5L1dtaThRdE9xNTBLUVFIcUdCVVYzQUdFZ2tOdTk0b0ZIQkNTM2lM?=
 =?utf-8?B?NDZIVGpXbnpDa2ZudU5wbXkrVnM0M1MybnpmT1BQKzRvVTVTMTNseC9NT1ln?=
 =?utf-8?B?UzVpNjRCMFJFNlo0NU5qcU1hWC9YS3V4MDhVVmhUaithMkdWWnAxREg1ZUgx?=
 =?utf-8?B?K3RCRXdEVy9qVlFPcVdEeVA2aVJnczZzNUMyZmZXZkhNVDk4MFMwMlVITmFC?=
 =?utf-8?B?dzFtUHl2ZmUxclp3TCs1SStveklsbkUvUElwMmViN0pva3dNcnIxQ3dBWGtU?=
 =?utf-8?B?YlcxRy9XR3BWcXBuRENhdXlhK2U3enNQSHJ6ZW43MW9RbXlZeGd5MHJHVXcz?=
 =?utf-8?B?ckhid1NQNHFhdERjb05WYlZKejIrTU44U1JaRldhSUVFUVVZdmNIaXp1b0Zr?=
 =?utf-8?B?WHFrNFZEdDVpamsvRWI3K1FsSnJkcWZvL2pXY2F6U2E0RkxZWkljKzNXVDNW?=
 =?utf-8?B?MGZmTkNhTXhhSlVBU0xqTStiR2hMd1BRdVpJbzVHR29KKzk5WStTU05hTHpK?=
 =?utf-8?B?Y3U4TVY1Ukc5NEg1WXNSZFdFL0xiY0N0VWZZWE9ZYysrK1VpTGlneWZLajdS?=
 =?utf-8?B?Uk1aTU1qdHZHdm9NbFdrOEthSWt2OWFWTG56Mm1rZ1pDeTdpeHVoQVdnSXg3?=
 =?utf-8?B?clNtTlhHcTlSNWY1OVRXQXgrTVBPMDVzZWVKblJITVY1emVBR3NlQ0lCUmhZ?=
 =?utf-8?B?VHFpOWlXcjdZUlFoZ284RWJpa1duWnNzdVZ0S3RKMDJzTFB4MzlNZWpYbHR0?=
 =?utf-8?B?YVpDQXByV2N6SWRqcHFnUTkraWMwdWgxMzN0U1pUV1ZJTW0xMG52RXEzKzBm?=
 =?utf-8?B?MlI0MFpTRWY0WCs1YTZ4UTQxeHNJdGtCRC9IZGpuTnNGU1RnVHNvWDlGdXJs?=
 =?utf-8?Q?Z9UM3OKW/VWLiS+aMXxqHj4v9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96891a00-9eac-4f24-079c-08db2c4befc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 09:41:25.9672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J+sQTiVjXpLsw6GLpeFZAxXraYvHAGwRwK/Rvy8FtRypfGe5OL109geDmqsEUB3vN94GKL5agZaDNPCndzEQSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/29] drm/i915/tc: Use the adlp prefix for
 ADLP TC PHY functions
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
MDIvMjldIGRybS9pOTE1L3RjOiBVc2UgdGhlIGFkbHAgcHJlZml4IGZvciBBRExQIFRDDQo+IFBI
WSBmdW5jdGlvbnMNCj4gDQo+IFVzZSB0aGUgdXN1YWwgYWRscCBwcmVmaXggZm9yIGFsbCBBRExQ
IHNwZWNpZmljIFRDIFBIWSBmdW5jdGlvbnMuIE90aGVyIEFETA0KPiBwbGF0Zm9ybXMgZG9uJ3Qg
c3VwcG9ydCBUQy4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMg
fCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jDQo+IGluZGV4IGI2ZTQyNWM0NGZjYjkuLjA5OWIxZWM4NDJiYTIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTQ1Nyw3ICs0NTcs
NyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Rpc2Nvbm5lY3Qoc3RydWN0DQo+IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAgKiBBRExQIFRDIFBIWSBoYW5kbGVycw0KPiAgICog
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAqLw0KPiAtc3RhdGljIHUzMiBhZGxfdGNfcG9ydF9s
aXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAr
c3RhdGljIHUzMiBhZGxwX3RjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0DQo+ICsqZGlnX3BvcnQpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAllbnVtIHRj
X3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkxNSwgZGlnX3BvcnQtPmJhc2UucG9y
dCk7DQo+IEBAIC00OTIsNyArNDkyLDcgQEAgc3RhdGljIHUzMiBhZGxfdGNfcG9ydF9saXZlX3N0
YXR1c19tYXNrKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgICog
RFAtYWx0LCBsZWdhY3kgb3Igbm90aGluZykuIEZvciBUQlQtYWx0IHNpbmtzIHRoZSBQSFkgaXMg
b3duZWQgYnkgdGhlIFRCVA0KPiAgICogc3Vic3lzdGVtIGFuZCBzbyBzd2l0Y2hpbmcgdGhlIG93
bmVyc2hpcCB0byBkaXNwbGF5IGlzIG5vdCByZXF1aXJlZC4NCj4gICAqLw0KPiAtc3RhdGljIGJv
b2wgYWRsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQpDQo+ICtzdGF0aWMgYm9vbCBhZGxwX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiArKmRpZ19wb3J0KQ0KPiAgew0KPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7
DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIGRpZ19w
b3J0LT5iYXNlLnBvcnQpOw0KPiBAQCAtNTA5LDggKzUwOSw4IEBAIHN0YXRpYyBib29sIGFkbF90
Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQ0KPiAgCXJldHVybiB2YWwgJiBUQ1NTX0RESV9TVEFUVVNfUkVBRFk7DQo+ICB9DQo+IA0K
PiAtc3RhdGljIGJvb2wgYWRsX3RjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gLQkJCQkgICAgICBib29sIHRha2UpDQo+ICtzdGF0aWMg
Ym9vbCBhZGxwX3RjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICpkaWdfcG9ydCwNCj4gKwkJCQkgICAgICAgYm9vbCB0YWtlKQ0KPiAgew0KPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7
DQo+ICAJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0Ow0KPiBAQCAtNTIxLDcg
KzUyMSw3IEBAIHN0YXRpYyBib29sIGFkbF90Y19waHlfdGFrZV9vd25lcnNoaXAoc3RydWN0DQo+
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+
IA0KPiAtc3RhdGljIGJvb2wgYWRsX3RjX3BoeV9pc19vd25lZChzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCkNCj4gK3N0YXRpYyBib29sIGFkbHBfdGNfcGh5X2lzX293bmVkKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7DQo+
ICAJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0Ow0KPiBAQCAtNTQwLDcgKzU0
MCw3IEBAIHN0YXRpYyB1MzIgdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKHN0cnVjdA0KPiBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7DQo+IA0KPiAgCWlmIChJU19B
TERFUkxBS0VfUChpOTE1KSkNCj4gLQkJcmV0dXJuIGFkbF90Y19wb3J0X2xpdmVfc3RhdHVzX21h
c2soZGlnX3BvcnQpOw0KPiArCQlyZXR1cm4gYWRscF90Y19wb3J0X2xpdmVfc3RhdHVzX21hc2so
ZGlnX3BvcnQpOw0KPiANCj4gIAlyZXR1cm4gaWNsX3RjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhk
aWdfcG9ydCk7DQo+ICB9DQo+IEBAIC01NTAsNyArNTUwLDcgQEAgc3RhdGljIGJvb2wgdGNfcGh5
X3N0YXR1c19jb21wbGV0ZShzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkN
Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJh
c2UuYmFzZS5kZXYpOw0KPiANCj4gIAlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpDQo+IC0JCXJl
dHVybiBhZGxfdGNfcGh5X3N0YXR1c19jb21wbGV0ZShkaWdfcG9ydCk7DQo+ICsJCXJldHVybiBh
ZGxwX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpOw0KPiANCj4gIAlyZXR1cm4gaWNs
X3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpOw0KPiAgfQ0KPiBAQCAtNTYwLDcgKzU2
MCw3IEBAIHN0YXRpYyBib29sIHRjX3BoeV9pc19vd25lZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0DQo+ICpkaWdfcG9ydCkNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiANCj4gIAlpZiAoSVNfQUxERVJMQUtF
X1AoaTkxNSkpDQo+IC0JCXJldHVybiBhZGxfdGNfcGh5X2lzX293bmVkKGRpZ19wb3J0KTsNCj4g
KwkJcmV0dXJuIGFkbHBfdGNfcGh5X2lzX293bmVkKGRpZ19wb3J0KTsNCj4gDQo+ICAJcmV0dXJu
IGljbF90Y19waHlfaXNfb3duZWQoZGlnX3BvcnQpOw0KPiAgfQ0KPiBAQCAtNTcwLDcgKzU3MCw3
IEBAIHN0YXRpYyBib29sIHRjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QNCj4gaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCwgYm9vbCB0YWtlDQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gDQo+ICAJaWYg
KElTX0FMREVSTEFLRV9QKGk5MTUpKQ0KPiAtCQlyZXR1cm4gYWRsX3RjX3BoeV90YWtlX293bmVy
c2hpcChkaWdfcG9ydCwgdGFrZSk7DQo+ICsJCXJldHVybiBhZGxwX3RjX3BoeV90YWtlX293bmVy
c2hpcChkaWdfcG9ydCwgdGFrZSk7DQo+IA0KPiAgCXJldHVybiBpY2xfdGNfcGh5X3Rha2Vfb3du
ZXJzaGlwKGRpZ19wb3J0LCB0YWtlKTsgIH0NCj4gLS0NCj4gMi4zNy4xDQoNCg==
