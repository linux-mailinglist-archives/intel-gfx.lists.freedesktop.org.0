Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6718268E6
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 08:51:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8247C10E08A;
	Mon,  8 Jan 2024 07:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA07F10E08A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 07:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704700292; x=1736236292;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=R0faL/XubRHzM2pSOK4Yu0J+Y7rhwWgkENMgsR9iR4Q=;
 b=UZuH71nweMB1BgoO4l7aP3awI/I9lMe4VRPNMuIDWPiHjOJepp0DN4t3
 ULR20cvOK6wdt1DVQF4QFfReifNQ4u47zBtyNpSXoH2FIuDBQsK4KZVSS
 FFYPxGos4dC2w8dL5rDngJQFnNOA7scYs2pgfsrnWQuf02un36WZmWqwD
 UO76qUc02uLmAjAP1uaEVfM0g6G0RSMB8UHrFfXmzqNV2uR4A3APBcUCG
 nEpXXxK+zhA8F9LrBJbhg9JbhNbGvpJYUjg5UKxadNcoekV/qP5+yWjYC
 fSe6MfFLVWDD0Cbxq/IvRg9XVckn7yTkvIwe+bNTKqVpX5+iHHW5SvNjx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="4898928"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="4898928"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 23:51:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="851710258"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="851710258"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 23:51:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 23:51:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 23:51:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 23:51:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 23:51:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gg38z8PG2C4uMjgW2Waoxpwbc67ONzfIkHMPIEnpVkQPSbKSRbAS7zbi0bI+7joiZdWOksYK3SdSi2rk/UHapcn83lv+a2QtbYdKgB+6cbRWgHfzb1FkqxKbekEQBmN6gU83Cvg1l5Rscf9uVlbWenKE2EQJnHZui23DkbnfZF+QVvHgOXqGLaJVq5YSfAQ0yXng27G5tL0lX50sQ9gO/0q/9vyBPQiZXsryfMwj5n27SVrwV7vs6/FGYVtOEOcD6m6mrZ4+d2uCZcC5udllpo3JBjio0TT/WsWewQ1e0kjyj5iAdXRBrIedFQWfDJnCu/VXAeLRICR+OJk/8sVZHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R0faL/XubRHzM2pSOK4Yu0J+Y7rhwWgkENMgsR9iR4Q=;
 b=VeIc3DreFi9yQjEtVibnC+ACnYfOGFhXaQRgPSvaEjuZtWBfwj/DDVFz8BHukrvWuq4z9kWEjabl94556TLy6H0r7UEjk5bznvOJH5pQ4ddmXy1A+UyQfByDwGoLMO6X7KhsGxrQ2sTQF8i+Hby/ss1Nok3ZCJnmBQnrGqkbzGlDAEMMsFEKtomhSlqKylOQwtDBR4iajjF/nQZ+ahLri2hhF5badyaEaOPTSQBgW5JoTw8ER34iIVXMLM3Kaynp8G2Y/GXIpZHWBxaO1Ed9P5Mv3Z3yyk6kNekIH7/qLlBAnwZ/0XgUrZZU+K1hnQVjO7UH3NUsDg5FHkkhAB8/Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.21; Mon, 8 Jan 2024 07:51:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 07:51:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 05/12] drm/i915: Suspend the framebuffer console during
 driver shutdown
Thread-Topic: [PATCH 05/12] drm/i915: Suspend the framebuffer console during
 driver shutdown
Thread-Index: AQHaPuhOsGE0JaqilkSzcqqHI0YZ1LDPkQyA
Date: Mon, 8 Jan 2024 07:51:08 +0000
Message-ID: <4b258f25965b3844444f43e9ff0e10ae68296ecc.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-6-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA0PR11MB4718:EE_
x-ms-office365-filtering-correlation-id: 0ecde2e0-429f-4e42-a828-08dc101e936b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Voy3h502r6d56Xj3L9CjaxhDnnC9Z2/UvnROqOK8LHd1v4aZwgGDp2Z5GW4P6/8vss3s4JjV1vZjiTRdKTJf7SzUwZXoxotIcXL6nhEIVeTW1lPfg1IYHUOdgunpsuizRMI0y0d6J9kSFr15q5u+f2AyaOfjdsB7LL1HgmGM6/CalK0OgMPPkqQ6CWcSauFJV08BuZWzukHK72gDhgqo6IBk1+XzdP3vUuRlMtCHYZSGCBZOKfbqTGxbYIxVu/GZzicTjVCqHmmUgWDGiZiADAVg+HzHWmiJiRWMcWRF305ULe5Yat6L38dmMDNq9rBl2EzKxE2N8UMHX4JFJM/FQe2KHTBoeRGvGUGmR+0U974xUjk40wLlUWzl/11vO5wVX/sH1SYymDlV2nWOSPlIoOL20tA07QR4ec8VpI3Pme5D/NxkqrvXgrGvB9d7HpMWibk8FibBWbEU4giIKspwYr51OI74HGtOC3tJiPW9MiOjd0tguS9h4NDwLwz+0PekAvlWrHE7mMZloNmt0j3+/rXmI9iQ4CPY4KzwAR14vglHvAm3XIWVzlZiee3RMiALbrCe2TWmkqvJJGee3f7Us34T1lOSx99eXe3QrMCogkqAUc+vsQN9v8D/B93jfsW+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(376002)(366004)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(26005)(2616005)(71200400001)(478600001)(6486002)(6506007)(6512007)(83380400001)(66574015)(5660300002)(15650500001)(2906002)(41300700001)(64756008)(66446008)(66476007)(66556008)(6636002)(76116006)(316002)(91956017)(8676002)(110136005)(8936002)(38070700009)(66946007)(38100700002)(122000001)(36756003)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUowV21YVURjVnhpbTVUK2RBbkZFSVNEZVJCYzJHUjF1S1hjQmZlNXNIQlo1?=
 =?utf-8?B?QkU3RE44ZEVkYm5WUmQrbmxwcVpwK1NwSElCeDdjZVRaRFh5UHA3SHhoODBp?=
 =?utf-8?B?aW16Ymc0QllSRUdjc1cyWnJzYWRNTHlBYTdveGJ3blBtUG9VOGhpTzhqVVpC?=
 =?utf-8?B?c3VNN0NFVVlZcWRrTWltZjZEaDgxdlBnb2lXS0NwVEhTUUpXYThoc2lCTFFM?=
 =?utf-8?B?cDBHNmFMV0M1dXZxTndPVVZQa2xSenlON1JlckNIZEFDWFI2cXN2Z1dNQm15?=
 =?utf-8?B?V2FqcUlQOXRrNEZGU0hJNnh1eEYvNUNLcmJraTJVVnlTbm1OOUM4ekFnSmJt?=
 =?utf-8?B?Q29ZY2FoaHh5VVAwZCtlS1h3bHJleUpJcytzWk04cEV6VDZLKzJhZWJ2MUhr?=
 =?utf-8?B?KzNEb29uaytpVEZsZ2dqWTdPandvaWVRUTc2a1haa3lZYU1FTE9meUQwaHFQ?=
 =?utf-8?B?YUZCWDlqcUlIOVJkTDdlUDZIaTdNWlVlUDZOVTg3RWgvMyt0ZXpVNEJtQzVI?=
 =?utf-8?B?a0VSSnlBMkZCYjQ2Q3BYd0YvaitJSDBuWm9DVGVYQU8zNVZCWUZLUDhITitS?=
 =?utf-8?B?Z0hFbWdSaDJhSnFDRmVVZ1dYcDk5LzRNc3dUVTc4Zjc2V2dvV21JNGk2N0Mz?=
 =?utf-8?B?YVQvOEpVeHBrQmw4VFU2MUVnTXRwSm8yTkdoS04yMWduZzY2MndEUmw0ek10?=
 =?utf-8?B?ZzEyNm1UcjRGVVJLQ3QyNUtuVGQzYmtIN0RoY05ySVdOVDQzZkdrOGFUSkR2?=
 =?utf-8?B?c005SnlxWE1UK0l3Q2REWGpjWU5INlU4bkRVd1JUL1ZnVnVsMjg1L2s0MlRC?=
 =?utf-8?B?V1ZXV3cvUUE2QTNZRkxnbHd0UGtoZ1Y0WHp2bm1EdUIzazJsYXpHU2pxSUpM?=
 =?utf-8?B?ajE4R1dUd3hSWGY4QXhXRTlMeEhYUWMzRkVLYURCVjNsRUlDTE5ITEFIeTlI?=
 =?utf-8?B?dUpHMDRyb3VZT2ZXbWVCSWl2T0hkbklJZWVUZW9IY2hIOVNTbTlQRjJORjBp?=
 =?utf-8?B?T3QwRXJUQzhaVGtKUy9BT0pucmUyS1RkWkUycnM3T05KL0dxdlFMaDR3VjFy?=
 =?utf-8?B?L2RDVzdFdER2TE1rZlVlVHBaSEhDeXUrM2dJN1luN3BuUXJ6OWhlVjBvTTYy?=
 =?utf-8?B?K0l1L3RjeUY3ZmlHSTV1MHdQcWlqSHQwZlZsNW1DSU12M21DOXNkamFNbnd5?=
 =?utf-8?B?Qmo1UFA5VzZuTDg5RVZwazNOdUpvN21kNFlFWldveSt0Mk1leHl3TGowbHQ3?=
 =?utf-8?B?Y2JIbXkvYmlJNkoxS0J6RWVsSE13M0pWNWFIcXdDb3dJM3Q4cE1ERkhuQ0hw?=
 =?utf-8?B?UysyTVRqY1ovTzMyZEpKU0oxTE81TXFzWWorSEg3c0pRczhUUkVxVUNqRmJz?=
 =?utf-8?B?dDNlM3VocExuSkJ5MmkrT1lpK09zM3ptcjdrQWlpTTZMV0tHYmpNRWxGOXZk?=
 =?utf-8?B?NkRwcWdkdG1yK05Oeks3SExURFpRQnBRbkxHRnI0djdaRFlNcUs1b1RoS252?=
 =?utf-8?B?Y0t1NmxwRlRCenBhZTFiY3VmYUpNVlpKaHlMNWFDRlZScHdHMGptUTZZL1Vs?=
 =?utf-8?B?VGY1NG8yQWVGOTlCT2wxT3JCL2ZORGNxL1gwODZlY3Q3d2hRTktFYlVUakRm?=
 =?utf-8?B?K1FpYTFhUE9SYWN2L24zTWVsZ1pvS0drTHRuTVNKZGNVdkc5bE1XbDZhb3Q5?=
 =?utf-8?B?SFV6Q3N4MkJqZ1NBTUkremFwUVdoTmVmMXVpT0djUEU1UWRpVnlKdmFHTnBF?=
 =?utf-8?B?ck1od0RzeWlEL3YweVlxOUJ3YnlqZGJVVUcrRlNuSFF4MFhDNTBWQ01uZGRh?=
 =?utf-8?B?a2RESFk2SmNORDNuVjRXU0cvZFA0Yy9GSit4Q0VYZlZNRjJWU2dOUkJNSDYr?=
 =?utf-8?B?eWh1Q01UcHA5M2phZlo1WFpwRk43eExzNzVwUHNnUGUxTy91dFhaenNYWlB0?=
 =?utf-8?B?ZHF4OEU4T3JsT2FNQ3lTTncvTm9jWUEyd1ZxZWY2WUdudUFydy9TaHFVTUo4?=
 =?utf-8?B?aEVwSkFuZDhFeFRqODhoSXZ3YzZIUEVvOVpnZXpRejVQbitXUk9BTGY1dDZI?=
 =?utf-8?B?NTlHTGx1Q0pKZGpHVUJWZE85VnhxWGJaVXFDZ1pkVWVXTVMyWEk2Z0lmUDMy?=
 =?utf-8?B?d1gzbC94c3BObmEvekZwajJ3QXgxRTU2eGo5T1prZWZXOEJ1dnJ3dnN0eDBp?=
 =?utf-8?B?dmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <78A3A767051DF1448FC467E01ADE9E7F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ecde2e0-429f-4e42-a828-08dc101e936b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 07:51:08.7876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rpEVwnagMwHPM3km9M5PhoWUeHRksSXxMxGZlEwIOsnAiYa5VrChD6tuh/hFoS6FyKe6LhgX+PtG/8HOEBaGCaFTKYi3hM6vTUV+seUIJG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjMwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFN1
c3BlbmQgdGhlIEZCIGNvbnNvbGUgZHVyaW5nIGRyaXZlciBzaHV0ZG93biB0aGUgc2FtZSB3YXkg
dGhpcyBpcw0KPiBkb25lDQo+IGR1cmluZyBzeXN0ZW0gcmVzdW1lLiBUaGlzIHNob3VsZCBwcmV2
ZW50IGFueSBIUEQgZXZlbnQgdG8gdHJpZ2dlciBhDQo+IG5ldw0KPiBGQiBwcm9iZS9tb2Rlc2V0
IGN5Y2xlIGhhcHBlbmluZyBpbiBwYXJhbGxlbCB3aXRoIHRoZSBkaXNwbGF5IEhXDQo+IGRpc2Fi
bGUvdW5pbml0aWFsaXplIHN0ZXBzLg0KPiANCj4gQSBwcmVjZWRpbmcgRkIgSFBEIGV2ZW50IGhh
bmRsaW5nIG1heSBiZSBzdGlsbCBwZW5kaW5nLCByZXN1bHRpbmcgaW4NCj4gYQ0KPiBwcm9iZS9t
b2Rlc2V0IGxpa2UgdGhlIGFib3ZlLCB0aGVzZSB3aWxsIGJlIHByZXZlbnRlZCBieSBhIGxhdGVy
DQo+IGNoYW5nZQ0KPiBpbiB0aGlzIHBhdGNoc2V0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyB8IDEgKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJp
dmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+IGluZGV4IGJl
ODY1OTZhODkwNGQuLjkyNjliNDg1MTM3Y2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cml2ZXIuYw0KPiBAQCAtMTAwMyw2ICsxMDAzLDcgQEAgdm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93
bihzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX3J1bnRpbWVfcG1fZGlzYWJsZSgmaTkxNS0+cnVudGltZV9wbSk7DQo+IMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9wb3dlcl9kb21haW5zX2Rpc2FibGUoaTkxNSk7DQo+IMKgDQo+ICvCoMKgwqDC
oMKgwqDCoGludGVsX2ZiZGV2X3NldF9zdXNwZW5kKCZpOTE1LT5kcm0sIEZCSU5GT19TVEFURV9T
VVNQRU5ERUQsDQo+IHRydWUpOw0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKEhBU19ESVNQTEFZKGk5
MTUpKSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2ttc19oZWxwZXJf
cG9sbF9kaXNhYmxlKCZpOTE1LT5kcm0pOw0KPiDCoA0KDQo=
