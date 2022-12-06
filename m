Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A893F644BBE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 19:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A4210E342;
	Tue,  6 Dec 2022 18:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD6810E342
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 18:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670351412; x=1701887412;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HJc2G+3dcn2lSfAquRPe8IXY613f74SCOuGI8sF+PEY=;
 b=EvmY/8Mm5pHquu0l9LydHcVygx4aFnmw61BxIzfwtxkPn0Y0AVi9zZUt
 Hvt6nPf6LnvewPtbqlYmKB/BaPWsaLA0vAFAQAqBknivV7yoN44tM88eK
 HRcN4ZrsMiecjJg+eCC/sKCyE+N/NNd24Cy+QWp4HxyPaAEuko+xRwOmP
 F3XdZoJ97NP/79H3Xgdpl4F6Wtdvt88zFi9MtxFFTGEc5wAmzgXnAF9Px
 XLr8DZTfDlSgBWTFtkIYSFX4KsHtNfovoTF8C0G/v2nvGYx+K4gJNP8rj
 B7k9egeqFFWmOtpHQsRLbcGhmwIO/2LVt2d64KT+FdZxxXpwcRGyl6IGm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="296390935"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="296390935"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 10:29:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="752747260"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="752747260"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2022 10:29:53 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 10:29:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 10:29:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 10:29:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 10:29:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ItQQ1jClkxfciNKYaTckTzBsDJYzbEp3nA8WpOMbjOCJT/8OdkhaA4k6kx15AAk6Jta1z9KMY9p8Jg6o4S1fN0EHZNge37owMAxm3PvsX+sFdvT3aZeXnGkvyExbsY2T890XkJyqxp5dez8K7VIIQiuEk3yy5bzMEDcAH0pIxDTpfXprLmbHHpG7exlu2zcGZhTsSZ5Pa6nrbsdTNhLHCjWtsYn4VZHheoGtDekafei3/Hie8D2EksMJ9dTMqCAczXShbJmmneaUyvg68leHHJU1ZHuLQ4WPiTb6md8as4QA6/cv/OSlC1bbNwXkUw7cX2yKgWLR/UgkB/LP2Kxn2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJc2G+3dcn2lSfAquRPe8IXY613f74SCOuGI8sF+PEY=;
 b=MANxvbsy8Pqv0eZoxHLngMTJlrvCrgiAeJcus2bJroKp/sIbWpN2My5NOgkzPyXQ4XCcI0WFViUaKlAy8qE9HSb54RsIcvhXX6UwX7DigpQWux0AJ8ethr/JYtBpq53IzWw3fi6ujiCXU4T5eSTmJ8qOHa1SusWX3aqWMuRhQ5GqLJ/32tSwFwLPplhAgFbswhfgvBRLfKC7OJ6zDQozhFd/F4k6fCGUOx35mGIN5Vrh6TP1BbbGONv23k1gUKA/+DXoL+i4XYTvIxRR2XAq0PFeHqDuNgMriw6Dv96Nx7x+nFqmqWYC/0srulOPW4Fhd3VVs431qSSDHXGc1eJF2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 18:29:48 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 18:29:47 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZCQXngJLmpxYcEEGWV0CABsX/5K5gTwwAgADhIQA=
Date: Tue, 6 Dec 2022 18:29:47 +0000
Message-ID: <016146e00a5097da3007c72d74d4e1bf222336fd.camel@intel.com>
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
 <e8305b0f-b59c-2406-92a4-58254d9b6701@intel.com>
In-Reply-To: <e8305b0f-b59c-2406-92a4-58254d9b6701@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|MN2PR11MB4536:EE_
x-ms-office365-filtering-correlation-id: d2c84c13-0320-4b8d-a052-08dad7b7dafc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ire8MleyY7xeKRjZxKFdRF9fh6j+PzuIRjYhW45NrIvxSdadaE7zEzKpe6/GdZPSwkrYRQUtdC7oKHtPHoqItKTWozAmHZDU7t6nUUTzOHBgOd5MZl3anuRq2hkTHa/zCa3eSuG3/tQUJAqYJrUM4gItXg/Dreo/PWsSMyY0plMBWl1FE0/ZvNcNUAzSrPOVtas+zRa7ytpNvUIKRBVwXO7h6tjp2HZWZz87AhDi73mRXlbAUyhy7pNfN7TPXbAoNr8fKdxUpJIs10lSKw4CVtMYTf4Pczzo6lrU8ly+u7tHZHUIsX/4812z1mHKXsapLZ5qzNwH0AnEg/JxeFni81EixKXyRKyfNXjKuyEpEJyPGcC6UIqbudffkOs8HlhIquJfGLIwgTdM9TRclld9YFbMxX2YqNHBk2HI7o4DJx9Y+hBho34uUsuBZ7Toaq9gZEsJayqXuNvzE7SI9Hlr6BfPNa3iDcyJlY71X7GWkfwUN800XT4lXjm3/mgg5kHgFqDNWntj1lhGcXwKBxPN4FSRccYC+SF2TB2w/UF8fn4HhnXle2ya51NyoZL4EY1M+zyTtohetjWlBHzaOPVWxKmbnMszxqgC/VuTYY7Axya6qPX0WWeMkPahfVPPztlp9JyXbo3pgUjfRFjlJUsOkEP9nEHfVpqV/0MWIWGDYIH+DBC3x1DquJtlDYTWKWN6QO55skXJ+gOXpxqDLVAb1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(376002)(396003)(39860400002)(451199015)(122000001)(83380400001)(38100700002)(8936002)(66446008)(76116006)(38070700005)(91956017)(2906002)(66556008)(8676002)(66476007)(64756008)(41300700001)(66946007)(5660300002)(478600001)(6512007)(6506007)(26005)(53546011)(71200400001)(186003)(110136005)(316002)(2616005)(6486002)(82960400001)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjA0dUMyK3JXalBVYklIZ2RMTlBlWklqM1lrbnkrVlBXWUYvTjVOUnNWalN3?=
 =?utf-8?B?am12QkM0ekEva3lVSVdaRjc4TDFhdUlKZkNmTDU4aUt0c0gxbTlHMXYwMzdB?=
 =?utf-8?B?Z2xDdWh3Q3pRUVpQWjUvNU1BbFoyTHFZM3BqV3VyRUlBV0Fpd21qUUptempZ?=
 =?utf-8?B?bWIwQ2kvNnhlWENwWkF3bkNnNzl5N2FYOEJEMm80OU9uSDdCV2JaWXU1ajFY?=
 =?utf-8?B?OWt5ZlJPRWZPZUtEYkhwS0toZThGQU1XUGRxb1BTMkkxa2FuQ2dDeFpORUhD?=
 =?utf-8?B?YXdsRGJtTmJ5MGZ2a0FIQ0JuZzJNTWs1Y3BxV1lQb1I5U3NKK1BxM0hpcW4w?=
 =?utf-8?B?ZjdtY1RQalVNYVUwLzg2MTJIZWRtaFdvKzhhTXFGczZ0YUswajJ6aEtFdEFJ?=
 =?utf-8?B?c3lua3duTkxOMkFURTIwUjRVQWp6RkxvZjlaVnR6NFJCVmJBUitiYzdoT1JE?=
 =?utf-8?B?dXZTZFl4cnBTOUtobHRxWjBzMSttWE4wZUdOaTMxMXNJb005cU9iSVNZaWlB?=
 =?utf-8?B?c3RDMzllMldETUdsdk41elAzRzJNSExIdkJvUUNqTTA1bkNya1EvZ2FmdWkv?=
 =?utf-8?B?TUNyT1dacjhYOUkzV2dMTGxxakcyenBLa2VvNW0wNXlyU2ZkT1JkU0JWdWJQ?=
 =?utf-8?B?bnN4YWF3Mk9UZkszeUkrY2VEM2lmbnBxaEJjdG5RemdGbFNCbnM5c29Ed2ZS?=
 =?utf-8?B?NERNVFkwNkZ4di9GT1JsWW5DNW5vaHRPQjhjRVo2elRtNWw5UmxCV2Vyb1Rk?=
 =?utf-8?B?eGhpbmdHOGFtZkl3OWxEMjBtODJNbGdFVWRDRnNGNGMwYkszQ21KTFJxYXdZ?=
 =?utf-8?B?U2FIWkMvamxKWW8vZ3Zjdm41QXIrU3ZKMC8zZkVXWkdNVG0wL1R4MElqT3FG?=
 =?utf-8?B?MHUwanJka21aa0dTUndVaGQyRjIrU013cDRvaFAyK0lnOHNQK2NFd3ByNnha?=
 =?utf-8?B?YnhqUFIxV2plRHQzY1dCTkdtdVBvdFliUVJSQXRaMDI1RGdxZlVkN0Vuamo1?=
 =?utf-8?B?ZnpJcEFOTkJwaXJIYUpBbXQ4Y2JtM0xhbjZuZmVQOXE5U245UnZwNTJXRjNM?=
 =?utf-8?B?R2s0Y3BPV0VGUmJQR1dmVW5qMDhpSElqR3VyWVhTbDZDcm5zekp5U1ZhdWFS?=
 =?utf-8?B?d1ZVRnl5TWhHNENLQ2RVdkRmR1lDQlRxL3VEWDFYNXNtV2xXc0RIMDkwb0dR?=
 =?utf-8?B?T3ZxUzVrdG41bXc1VlBSaTE5MzJ1VnUrM3VsdFNhZ0lvSlFSejRoWTdWNDBh?=
 =?utf-8?B?MFBpNnVaeVgyK3YrbG43VGsvOVVQYXE1UlU3QkwvQXJyM3Y2bi9Cbmg0dGpU?=
 =?utf-8?B?d3lwbzNFL0djNGphMUl5RjZnUERVSmg2NHMrSEVHYzFhdGh1ZnozVUtqajhk?=
 =?utf-8?B?OG1yem42MDVzRVJGNmxxcWd5dlgyQVBFWDlPWFhhSi9FdkRnbnc0VVAxWDlQ?=
 =?utf-8?B?WnJ2MlRjdFZ2L1NOb2RmTEFWcjhJa1RIbmtGNDU4RjRrK3N0bTdlaW1xREdD?=
 =?utf-8?B?czdlNGNqVWd6WEFlbXArcURrZDJpbEI3dm9xeFNTbEFtcjBST3RicDJHSVpz?=
 =?utf-8?B?U2JvcE56V0dSSFRTcmZUTnljUE5tUUlNOXg0WGRlajNBbnJ4SmdXV2FDT3Vh?=
 =?utf-8?B?WWw3OWx5TWQxNmFRbHUxMnZoS09QYWF1bEVWTW4yVitNR3Y4NFBJdVZ4MGFD?=
 =?utf-8?B?aTBrUXlIUktzekI1S1dLRi9hSG55MWh4eDlXR2laWmRuLy93L0JzRUZPUmRp?=
 =?utf-8?B?L0ZVWkt1dUJ4K1RYem5MNUNjU1BYbTJ4dEpnWHhUZTkyQUFTMzBRZXJHTHc1?=
 =?utf-8?B?clFqVDBMejJZaHFLY2JDenJTNVAwWnp6ZDkrUkYwY0h5cUZJV1ZDU2EvK1Vy?=
 =?utf-8?B?OWhPRUlhbnRBNkF3alhib3R5T2V2cGU3UEdWa09tYnY1ZG8vd3hVWHVSVi9o?=
 =?utf-8?B?TFRaNFpPbWF2RnYzaUNrcFMwTTJpRTJiUC9uQ1pIeS9iVzg0dzRTbXUvVVRQ?=
 =?utf-8?B?aHFOaGRUdDU4NjZUVTg0NEZ4WDB5TFZ0blIvbnlxVnp5MEhFY2xsYm91WmZC?=
 =?utf-8?B?Y1R1ZjVuYXpTMWprSEM1Y29zLytacFJYUXNzUmJmS1V2WStkbElsYmEzVzlk?=
 =?utf-8?B?UkxXUTUzT1pnelIyWVAxWTFzcG51TUVMdDhta3c3V2YrQzVpdnorcnRYRHpz?=
 =?utf-8?Q?oXo7XNiKvRWAmge+NuQqyG0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <67208EADC461A841A04303D053FEADF1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c84c13-0320-4b8d-a052-08dad7b7dafc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 18:29:47.8853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y4GgE3iWMZdN+2nlPLGAbSHkEyVKasyU55bQZ+1l+dloj1XtNrtI4G1lOls2c11A6qMUgQyjBzvdT9U/1TU0C9+PVBnDfG12qTbo20Ot7edl5INIwoP6qok0mUFyZweQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

DQoNCk9uIE1vbiwgMjAyMi0xMi0wNSBhdCAyMTowNiAtMDgwMCwgQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgd3JvdGU6DQo+IA0KPiBPbiAxMi81LzIwMjIgNDowMyBQTSwgQWxhbiBQcmV2aW4gd3Jv
dGU6DQoNCkFsYW46W3NuaXBdDQoNCj4gPiBAQCAtMzksMTggKzQ1LDI2IEBADQo+ID4gICAgKiBw
ZXJmb3JtZWQgdmlhIHRoZSBtZWlfcHhwIGNvbXBvbmVudCBtb2R1bGUuDQo+ID4gICAgKi8NCj4g
PiAgIA0KPiA+IC1zdHJ1Y3QgaW50ZWxfZ3QgKnB4cF90b19ndChjb25zdCBzdHJ1Y3QgaW50ZWxf
cHhwICpweHApDQo+ID4gK2Jvb2wgaW50ZWxfcHhwX2lzX3N1cHBvcnRlZChjb25zdCBzdHJ1Y3Qg
aW50ZWxfcHhwICpweHApDQo+ID4gICB7DQo+ID4gLQlyZXR1cm4gY29udGFpbmVyX29mKHB4cCwg
c3RydWN0IGludGVsX2d0LCBweHApOw0KPiA+ICsJaWYgKCFJU19FTkFCTEVEKENPTkZJR19EUk1f
STkxNV9QWFApKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArCWVsc2UgaWYgKCFweHApDQo+
ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiANCj4gbml0OiB0aGlzIGNvdWxkIGJlIHNxdWFzaGVkIGlu
IGEgc2luZ2xlIGxpbmU6DQo+IA0KPiAgwqDCoMKgIGlmICghSVNfRU5BQkxFRChDT05GSUdfRFJN
X0k5MTVfUFhQKSB8fCAhcHhwKQ0KPiANCj4gbm90IGEgYmxvY2tlcg0KPiANCj4gPiArCXJldHVy
biAoSU5URUxfSU5GTyhweHAtPmN0cmxfZ3QtPmk5MTUpLT5oYXNfcHhwICYmIFZEQk9YX01BU0so
cHhwLT5jdHJsX2d0KSk7DQo+ID4gICB9DQo+ID4gICANCj4gPiAgIGJvb2wgaW50ZWxfcHhwX2lz
X2VuYWJsZWQoY29uc3Qgc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ICAgew0KPiA+ICsJaWYg
KCFweHApDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICAgCXJldHVybiBweHAtPmNlOw0KPiAN
Cj4gbml0OiB0aGlzIGNhbiBiZSBzcXVhc2hlZCBhczoNCj4gDQo+IHJldHVybiBweHAgJiYgcHhw
LT5jZTsNCj4gDQo+IHNhbWUgZm9yIHRoZSBpc19hY3RpdmUgYmVsb3cuIG5vdCBhIGJsb2NrZXIN
Cj4gDQo+ID4gICB9DQo+ID4gICANCj4gPiAgIGJvb2wgaW50ZWxfcHhwX2lzX2FjdGl2ZShjb25z
dCBzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gICB7DQo+ID4gKwlpZiAoIXB4cCkNCj4gPiAr
CQlyZXR1cm4gZmFsc2U7DQo+ID4gICAJcmV0dXJuIHB4cC0+YXJiX2lzX3ZhbGlkOw0KPiA+ICAg
fQ0KPiA+IA0KPiA+IA0KDQpBbGFuOiBva2F5IC0gd2lsbCBoYW5kbGUgc29tZSBvZiB0aGVzZSBu
aXRzIHNpbmNlIGkgbmVlZCB0byByZS1yZXYgYW55d2F5DQpBbGFuOltzbmlwXQ0KDQo+IA0KPiAN
Cj4gVGhpcyBjb21tZW50IGRvZXNuJ3QgcmVhbGx5IGV4cGxhaW4gd2h5IHdlIGV4Y2x1ZGUgdGhl
IGNhc2Ugd2l0aCANCj4gbWVkaWFfZ3QuIEkgd291bGQgaGF2ZSBwcmVmZXJyZWQgYSBsaW5lIHRv
IGV4cGxhaW4gdGhhdCB0aGUgbW9kdWxlIG9ubHkgDQo+IHdvcmtzIGZvciBwcmUtbWVkaWFfZ3Qg
cGxhdGZvcm1zLiBub3QgYSBibG9ja2VyLg0KPiANCkFsYW46IE9rYXkgd2lsbCBhZGQgYSBjb21t
ZW50Lg0KQWxhbjpbc25pcF0NCg0KPiA+IEBAIC0xOCw3ICsxOCw3IEBADQo+ID4gICANCj4gPiAg
IGludCBpbnRlbF9weHBfaHVjX2xvYWRfYW5kX2F1dGgoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0K
PiA+ICAgew0KPiA+IC0Jc3RydWN0IGludGVsX2d0ICpndCA9IHB4cF90b19ndChweHApOw0KPiA+
ICsJc3RydWN0IGludGVsX2d0ICpndCA9IHB4cC0+Y3RybF9ndDsNCj4gDQo+IFRoaXMgaXMgY2Fs
bGVkIGZyb20gb3V0c2lkZSB0aGUgUFhQIGNvZGUsIHNvIHdlIG5lZWQgdG8gY2hlY2sgdGhlIHB4
cCANCj4gcG9pbnRlciBiZWZvcmUgZGUtcmVmZXJlbmNpbmcgaXQgKHNlZSBhbHNvIHB4cC0+cHhw
X2NvbXBvbmVudCBmdXJ0aGVyIA0KPiBkb3duIHRoaXMgZnVuY3Rpb24pLiBJdCBkb2VzIGxvb2sg
bGlrZSB0aGUgc3RhY2sgaXQncyBraW5kIG9mIGNpcmN1bGFyIA0KPiBzbyBpdCBzaG91bGQgYmUg
c2FmZSAocHhwIGJpbmQgLT4gaHVjIGxvYWQgLT4gdGhpcyBmdW5jdGlvbiksIGJ1dCBJTU8gDQo+
IGJldHRlciBzdGljayB0byB0aGUgcnVsZSB0aGF0IGFsbCBmdW5jdGlvbnMgY2FsbGVkIGZyb20g
b3V0c2lkZSBuZWVkIGEgDQo+IGNoZWNrLg0KPiANCj4gV2l0aCB0aGlzIGZpeGVkOg0KPiANCj4g
UmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+DQo+IA0KQWxhbjpUaGFua3Mgd2lsbCBkbyAtIHdpbGwgcmVzcGluIHJldjEw
DQpBbGFuOltzbmlwXQ0KDQoNCg==
