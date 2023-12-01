Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C9B8013AD
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 20:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E15C10E941;
	Fri,  1 Dec 2023 19:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2364610E941
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 19:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701460045; x=1732996045;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=SjD1Uvv2qaXGhpUfGEEsNSyLwuk2lBUdB5YFd+wvR00=;
 b=QkZfeVQZKaVOOjTNPe9JEKTClpnozF9HfrdLLFneF80XlSp4UEBCja45
 mrf2irJARcSsQNEkErZqxvBkTRfTnox2MtrW5jVRCnKxbIj+2wAuzSoKV
 Y7BVDV6wEd9IjJg1ZphNQh1TNhqtzWqr76vpLmMYNYnkoLfGIxT581fH0
 K5PBLP2ZUoIvfbA4a9SxZmJxukGUO7bOCGMteyypP3OiGruGdTIxHS2tV
 OXHegW7RDqsvJDrutl251wylv22wx8khthNTu8LIsxNfD7yJ3KFLuugqg
 cshP7ALbCekSLLvcPlNANftJeTdPGMjLA15h6yKrfZF53LS+pcPrzLpY0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="396348871"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="396348871"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 11:47:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="769794065"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="769794065"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 11:47:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 11:47:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 11:47:24 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 11:47:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A1jpoSPvBnry6Xv9J1eoZvoJsvZrbzE1atw7Jv/aoVtvFi74n8jawlrafSvTcMDiLP+BrWaCrI8yDuu+JX6u4EfVYXsa9nGizclEz9vrIsUhP8pNU/4z6nIntfWrgRj1VP32skaQt2AsXBOQzdL/n6EQnHj+jLOJwEiH6LcB32wZkq4hy90LKqcARCW6Ddqz5Jo4ofxHt8PAWFet2mPQoOWdZQAMJXnaR/1sh/PedQtRvSqm3kZgd1IVRxOYV/7yBmP7rgCoorgsQ4yuYuhebWrIp4JuMlEcwLiouflGgLISErH57XXsPvbxY/7jQUZl3mXKdPDW+MmHUClMLXPQtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SjD1Uvv2qaXGhpUfGEEsNSyLwuk2lBUdB5YFd+wvR00=;
 b=oLSUQvHit8pkWezJ2XP6EnLZGYKBVLB95kkGTv/Rbjb7XbrK8KeOB6nm4Hx52zWLEP/Deksc/7FHTvrFuxrVLCib/8suMDP86LkiLd6SFZ+OpYGkczOjjALbLy5iNf5zKg9x+WIeV88KV0rxRC94V0CXdViBzXyP6rcRaQiK0Y5uttmGZ9cByJw1eo0y2jNFv82AAuQBFukNbDVhabHvl8/YzUYf+qotHNiOFDJ5F2hG5JqTsaQhoMPZ1O/gFoUdrj6Nxp+Phgte/Wzr2WA6DAmiSHua5k8FTcLwsGiDgSI02+HeyAYIWTWTCKW/LIrRfhKeivsysad4EAd0US0Fzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by PH7PR11MB5915.namprd11.prod.outlook.com (2603:10b6:510:13c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 19:47:13 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb%5]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 19:47:13 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YyLDEvMl0gZHJtL2k5MTUvZHA6IFVzZSBMSU5LX1FVQUxfUEFUVEVS?=
 =?utf-8?Q?N=5F*_Phy_test_pattern_names?=
Thread-Index: AQHaJAGau4DCRDYL2E+jmkdCzzrIyrCU1lOA
Date: Fri, 1 Dec 2023 19:47:13 +0000
Message-ID: <930f69cd57370d05d301e2ba6e71676489677ff5.camel@intel.com>
References: <20231130213103.214915-1-khaled.almahallawy@intel.com>
 <170139921330.19685.13793517854409386877@emeril.freedesktop.org>
In-Reply-To: <170139921330.19685.13793517854409386877@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|PH7PR11MB5915:EE_
x-ms-office365-filtering-correlation-id: 88414db8-ca13-4940-dcc5-08dbf2a6508a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: diayd9SatYOELOrt06AVvgAS6MMtYEzBl33xI9YP/ZraOXo1kSQFwNUP1UVy2vNLjyvqg8vH8AyQU+2rN8cASS94tZ+RUDosS/6T4t9T1zw+SLz7UgW31LqrQR6FQKCC8sy5X/rup8DUzwnGrwmdvfF6hIwcrA48s1l0xc1je+WevZBWvv7HWnm1AcBgn0whR8ZKVgufSp77kNzLX1cLeRf//t979QcMJrNDFNlH37kUmbXgqDoWz9XtwXS5c3nGD/nmam0127Nz1Fq4jh3BnoRyVDdEMd4ati2U0xceaD3Gg+faVFu/DGVYzwvdUOFU3XGE9+cs1bNZe8jNRkUGmGSl36sAV51XiyuieNGslJWDYP10WD+6i3e8U/WNWUCV2MLOjKESHVUuqwxq+cQrIXcNt6AKGKcHjEu6T3rI9HvqcDYMtFvqvexYTuj20VR0geiG6l7pdFX6kosjPBd4U744ua/qTU34sLl2+UuMClPURPu7l0Wx8+mPOEe9YpUTE5Y11cCdFkn45qIB2e7RzHl8UgBxMkWpBFXBtPJOi1vJTK+H/C2zK84JSXhP2fTsY0veqboEFWu5L0TBtTor2ynKSxmZjig/N0HE/V9Kta55kpWls7rTMamu7TMu8nKetrhQrSgfoyEshEIWjQp6woo991Je+jlLlCD0EW5eKxE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(396003)(39860400002)(376002)(230922051799003)(230273577357003)(230173577357003)(451199024)(64100799003)(1800799012)(186009)(38100700002)(36756003)(38070700009)(82960400001)(122000001)(86362001)(6486002)(966005)(478600001)(41300700001)(316002)(110136005)(64756008)(66476007)(66946007)(66556008)(76116006)(6506007)(6512007)(66446008)(5660300002)(71200400001)(2906002)(8936002)(2616005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2prVDhIbGt3YnExalpIdUl1cGpEOFdWSEY5aTBtTk1KOU9ITXdvam1LZ1A4?=
 =?utf-8?B?c1FHdDRIcGRTcmR3ZnZEZDYrNEROVW51d3V4aUpKQ3FkTk5xb2llYlN3ZmM3?=
 =?utf-8?B?QWxjR05XZ1lRdG1yU0hJR1FQeWpuaFF6Wm9LeHNxQmREd2dEVlVZNVlRN1d2?=
 =?utf-8?B?ZXIvditwUTdIQUxkSVFuaGI0b1B5ZXJEeUdoUmwzNXAweXI0M3ZjOTBVT0F2?=
 =?utf-8?B?eHdrNTd4aDkzMVRrUDJ1NFpMa2xja2pLWE9WYkFmTmQ0K0xTTUg4THBQNWlz?=
 =?utf-8?B?RUxRbjY1dFY0MEVTM2RBM0M1NTNnVVhESUdPV29aamdTVW12TnYrcm5ZanNv?=
 =?utf-8?B?TUdKVkszWmk3QW85Y2tFQXUrUk93dU5OdlFHVC9JbmY0YVFJbzkwOWU4YUJj?=
 =?utf-8?B?TFEzN0p6S2FxdU8zU3JMKzZOUHlqbWlIWFRJV1UvY2gwVDI5MXpITWRUbG1o?=
 =?utf-8?B?dW1nb1FjSHh4VWxVU3lGaVVxanJLTmtpLzJsV25KTjJBQ1UzRHlNUnppZTkv?=
 =?utf-8?B?VzNSU2NNSWRRbzNpakpFN2xpaTR3eXl4bHpZNmtzMkhsNHJud1hUYmNvSDVV?=
 =?utf-8?B?cStBZ3UvNUxVZVI0ZG05TmRHeUhRcy9QanRtYnpQQUk3eHdSR082RlZzYUZN?=
 =?utf-8?B?MXlzSTFURncxWFJWZXdWVk9BM1JoT3FHNDhRa2l0VjMwTEpxUllpQ1grRzQ0?=
 =?utf-8?B?M1VYM2lrcWYzaWJiZitnbHlqTUN3Y2pLaDFwa2IxOEZ1cHpISERwNXM4bm1S?=
 =?utf-8?B?cUdJSnVibjVyVEk1bDVSNzdxTVIrZHVoM0s3MG1YTE5SL3R6YTVlSGg4SlBC?=
 =?utf-8?B?MzRhQkpFbjF1MllIa0pSTC9tMWpYUkJSdGVkbTYwZFNlL3dVcExuQ0lwODh4?=
 =?utf-8?B?QVB6d2wrSDF2ZVA0ek84a09vQ1VEUE1ZN211ZnF3V2pxWjF3UVNDQXBjMFlW?=
 =?utf-8?B?RFNNZlB6ZFhNbXI0M3Q4SU5IVUlsOGk1aXZoS2NkTk0vbHZmaEJUZStFNHdh?=
 =?utf-8?B?ZThUdlpTZVlYSlFxVkNYTkdlTkF2djhnUS82ZlJWZGF3MjN6Rk04Z3ZOTnUr?=
 =?utf-8?B?OVAwNDBuQ1BTUlozWGdTWlJLVVFqS0ZPSDlyNWVYcVlTNkdWaW5mOVRHK3pE?=
 =?utf-8?B?ZWl0NVFvNDhuTWNMeTNwSS9mc0k3SkMvcjM5YjNwclNLUThuTkhRcXZEcUxu?=
 =?utf-8?B?b1FMOUE3WW1VelVuN2hPTTg3MUlYKzR4TUNNdUJIaEtTY3FqaUZQVSttWnVO?=
 =?utf-8?B?V0sycFBKU0xyT3dmNjhydFUrMzNvNFZ1d3podkNlSTlMbm1Yb05wMXN2OExk?=
 =?utf-8?B?UktUWjlMQVhGaW5uV2MzNzdCcnZWWk1hdVF1Wng5OUgwWmJ4VlU4ZjBHMzFF?=
 =?utf-8?B?aVczZ0FwSElNVmlwOWFodG5FQkRYaHZDcDY5TWZGWk9HNFByeXJtcmgvN2RJ?=
 =?utf-8?B?UDRMZ0FYVi8vUytvdDFOYW5SSjkrdlFtanFic3JUeHQ0OUVEMCtiWjFMRzNw?=
 =?utf-8?B?bXFHblVNczBaZXhXaC85b1JqcEg4TUpLY21MRGJLdEd6bnVGUDcxK0dsZ2kv?=
 =?utf-8?B?R25MamRZVFp2bkhDNHRRM3J6UXpLTFd3N0JyN3dnR2ZaY3ZRelNxbngvOTJ3?=
 =?utf-8?B?NGM4YzVMRHZIck14MWNwbXJjUk1iN2NYYlFNSjRFRXBDeURQRjRoQzNFSDNh?=
 =?utf-8?B?SVQyQ2dyMzVjR21MZWhxcG9yYUJmb1M1cnRoRWpKNnR2TWJhR3VLTEJjS2w1?=
 =?utf-8?B?K3phek1EMFNxb21KNEU4c2NLNjBUMXdSV0lYdG5peGpianE3UWY5NzZDUzVH?=
 =?utf-8?B?eHNXc2ZNU3J4d2Nhbzh6KzU3RXkyVC9MSGVYU3FNd1hmK2pmYUV3T205ODhC?=
 =?utf-8?B?RE1zaVJ0clM3SVJjYytLYll0eVMzczdDVlI3RTllUy9wSnhKTVJZTHRTbm5D?=
 =?utf-8?B?WTg1VGVZa2xNMkFvbFpMT0xpWFZ4L1dQR2ZQTnZOV2JHdmhvc2F3dGZUdTB2?=
 =?utf-8?B?RXNidEFZeTVVYkgzNVRQamFBSmorTUpaTFJmeHo3Nm9qZ25FMVlsNUFrSnBj?=
 =?utf-8?B?M2gxNEpoVzVTcXQyUWY2TGNXSGp4ZExPc0tpMFNqYndobC9uSjByeHNkMDhk?=
 =?utf-8?B?cVBISCtPYk5aUE9tM2hXWGZBWmVseUxUQmtlS2F0SFBML1h0emgwaFBHVWNZ?=
 =?utf-8?B?emRYZW5jeDgwUkRhR2FqN2JTclk0ZXp2SlN5dGp3TEQ4Q0x5M3BkKzhhaVJo?=
 =?utf-8?Q?5/rafrbSTHkIOWdrbqjp4sAjstf8Ggiq3vbGOcjatE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <65EF137218D7BA42A5E67CF7BEFCC8CF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88414db8-ca13-4940-dcc5-08dbf2a6508a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 19:47:13.2646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3jbSLGEzPTkUVK3+nIzIMvtZDOXGLGWdYyHl6as1Jujj3lT4E6RFeiGB93jAUf+JPpMjW1YLCkHfNIj8+INbsi1fynXj2KpJtcUw5pOtZgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5915
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/dp=3A_Use_LINK=5FQUAL?=
 =?utf-8?q?=5FPATTERN=5F*_Phy_test_pattern_names?=
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

T24gRnJpLCAyMDIzLTEyLTAxIGF0IDAyOjUzICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOglzZXJpZXMgc3RhcnRpbmcgd2l0aCBbdjIsMS8yXSBkcm0v
aTkxNS9kcDogVXNlDQo+IExJTktfUVVBTF9QQVRURVJOXyogUGh5IHRlc3QgcGF0dGVybiBuYW1l
cw0KPiBVUkw6CWh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI3MTQ2
Lw0KPiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOgkNCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI3MTQ2djEvaW5kZXguaHRtbA0KPiBDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMzk1NiAtPiBQYXRjaHdvcmtfMTI3MTQ2djEN
Cj4gU3VtbWFyeQ0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTI3MTQ2djEgYWJzb2x1dGVseQ0KPiBuZWVkIHRvIGJlDQo+IHZl
cmlmaWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2Vz
IGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEyNzE0NnYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKA0KPiBJOTE1LWNp
LWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiB0byBkb2N1bWVu
dCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZl
cw0KPiBpbiBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyNzE0NnYxL2luZGV4Lmh0bWwNCj4gDQo+
IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDM5IC0+IDM0KQ0KPiBNaXNzaW5nICg1KTogZmktYnN3LW4z
MDUwIGZpLXNuYi0yNTIwbSBiYXQtYXRzbS0xIGZpLXBudi1kNTEwIGJhdC0NCj4gbXRscC04DQo+
IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMg
dGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4NCj4gUGF0Y2h3b3JrXzEyNzE0NnYxOg0K
PiANCj4gSUdUIGNoYW5nZXMNCj4gUG9zc2libGUgcmVncmVzc2lvbnMNCj4gaWd0QGttc19waXBl
X2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmNAcGlwZS1iLWRwLTY6DQo+IGJhdC1hZGxwLTExOiBQ
QVNTIC0+IERNRVNHLVdBUk4NCj4gS25vd24gaXNzdWVzDQo+IEhlcmUgYXJlIHRoZSBjaGFuZ2Vz
IGZvdW5kIGluIFBhdGNod29ya18xMjcxNDZ2MSB0aGF0IGNvbWUgZnJvbSBrbm93bg0KPiBpc3N1
ZXM6DQo+IA0KDQpUaGlzIHdhcm5pbmcgaXMgbm90IHJlbGF0ZWQgdG8gY2hhbmdlcyBpbiB0aGlz
IHBhdGNoLiBzZWVtcyB0aGlzDQptYWNoaW5lIGhhcyBNU1QgaHViIGNvbm5lY3RlZCBhbmQgdGhl
IHBheWxvYWQgaXMgZmFpbGluZy4NCg0KVGhlIGNoYW5nZXMgaW4gdGhpcyBwYXRjaCB3aWxsIGJl
IHRyaWdnZXJlZCBvbmx5IHdoZW4gd2UgYXJlIGNvbm5lY3RlZA0KdG8gRFAgU2NvcGUgd2l0aCBE
UFItMTAwLiANCg0KQ291bGQgeW91IHBsZWFzZSByZXBvcnQ/DQoNClRoYW5rcw0KS2hhbGVkDQoN
Cj4gSUdUIGNoYW5nZXMNCj4gSXNzdWVzIGhpdA0KPiBpZ3RAZ2VtX2xtZW1fc3dhcHBpbmdAYmFz
aWM6DQo+IA0KPiBmaS1hcGwtZ3VjOiBOT1RSVU4gLT4gU0tJUCAoZmRvIzEwOTI3MSAvIGk5MTUj
NDYxMykgKzMgb3RoZXIgdGVzdHMNCj4gc2tpcA0KPiBpZ3RAa21zX2hkbWlfaW5qZWN0QGluamVj
dC1hdWRpbzoNCj4gDQo+IGZpLWtibC1ndWM6IFBBU1MgLT4gRkFJTCAoSUdUIzMpDQo+IGlndEBr
bXNfcGlwZV9jcmNfYmFzaWNAY29tcGFyZS1jcmMtc2FuaXR5Y2hlY2stbnYxMkBwaXBlLWMtZHAt
NToNCj4gDQo+IGJhdC1hZGxwLTExOiBQQVNTIC0+IERNRVNHLUZBSUwgKGk5MTUjNjg2OCkNCj4g
aWd0QGttc19waXBlX2NyY19iYXNpY0Bjb21wYXJlLWNyYy1zYW5pdHljaGVjay1udjEyQHBpcGUt
ZC1kcC01Og0KPiANCj4gYmF0LWFkbHAtMTE6IFBBU1MgLT4gRkFJTCAoaTkxNSM5NjY2KQ0KPiBp
Z3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLWZyYW1lLXNlcXVlbmNlOg0KPiANCj4gYmF0
LWRnMi0xMTogTk9UUlVOIC0+IFNLSVAgKGk5MTUjMTg0NSAvIGk5MTUjOTE5NykNCj4gaWd0QGtt
c19waXBlX2NyY19iYXNpY0ByZWFkLWNyY0BwaXBlLWItZHAtNjoNCj4gDQo+IGJhdC1hZGxwLTEx
OiBQQVNTIC0+IEFCT1JUIChpOTE1Izg2NjgpDQo+IGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3Vz
cGVuZC1yZWFkLWNyYzoNCj4gDQo+IGJhdC1ycGxzLTE6IE5PVFJVTiAtPiBTS0lQIChpOTE1IzE4
NDUpDQo+IFBvc3NpYmxlIGZpeGVzDQo+IGlndEBjb3JlX2hvdHVucGx1Z0B1bmJpbmQtcmViaW5k
Og0KPiANCj4gZmktYXBsLWd1YzogQUJPUlQgKGk5MTUjODIxMyAvIGk5MTUjODY2OCkgLT4gUEFT
Uw0KPiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zM0BzbWVtOg0KPiANCj4gYmF0LXJwbHMt
MTogQUJPUlQgKGk5MTUjNzk3OCkgLT4gUEFTUw0KPiBCdWlsZCBjaGFuZ2VzDQo+IExpbnV4OiBD
SV9EUk1fMTM5NTYgLT4gUGF0Y2h3b3JrXzEyNzE0NnYxDQo+IENJLTIwMTkwNTI5OiAyMDE5MDUy
OQ0KPiBDSV9EUk1fMTM5NTY6IGI1OWEwYTY1MjA3NjRmMzZhNzliYTZiNGM1OTBlMjQzYWM2Yjkx
M2QgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gSUdU
Xzc2MTI6IGI1YzQ3OTY2OTAxZWUxMDYwYmNiOWQ0YmNjZGQzY2NlYzk2NTFlZjQgQCANCj4gaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiBQYXRj
aHdvcmtfMTI3MTQ2djE6IGI1OWEwYTY1MjA3NjRmMzZhNzliYTZiNGM1OTBlMjQzYWM2YjkxM2Qg
QA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+IExp
bnV4IGNvbW1pdHMNCj4gNDk1ZmMyOGI2MDE5IGRybS9pOTE1L2RwOiBBZGQgVFBTNCBQSFkgdGVz
dCBwYXR0ZXJuIHN1cHBvcnQNCj4gZTQ5ZDgxZWQ2NjE1IGRybS9pOTE1L2RwOiBVc2UgTElOS19R
VUFMX1BBVFRFUk5fKiBQaHkgdGVzdCBwYXR0ZXJuDQo+IG5hbWVzDQo=
