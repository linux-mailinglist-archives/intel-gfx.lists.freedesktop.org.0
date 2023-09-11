Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9194979A5DC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 10:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8D510E18F;
	Mon, 11 Sep 2023 08:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8547410E18F
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 08:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694420373; x=1725956373;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=riU7LRoHG5jwjaGB0eZ/HXzVBz6GG+qTp80RT+EChbc=;
 b=hZMuZlxUC8rHDoHZi+gcZcOaWjNvuZYeTlxQHx6wSBBTt9C1tTudLjn/
 Lyy9PBvhB0R/ddZevYSy7OBBOno020Y9oE2gjfc/KAkPAG0NM47261Vk0
 WK0TA9Nlf/me0K5OzBryLwxmz9Du9HuMdRP8B5iFtrqeH84VJXHy5wbUQ
 vqZQXmA7JfPntL0Jh+WFFaaKpqdVk+AIc9Lf8H4vcCpkjhMGcQmv7bwlG
 qMqFHUoVSBuq14VdYH2q4qmEsv0xco95ANUmvmL+EDMkwLbWtwrJpFzce
 BiVbY5FxC4Q9S+M1Wg6813+AoGmHhXCdfFQtuCKmHMGvoWJFqRF06vTGJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="376940544"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="376940544"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="772501507"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="772501507"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 01:19:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 01:19:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 01:19:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 01:19:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 01:19:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=momXb7iTdQxPlYR5YDy2uD/bnT5TbVkTsTbf7Vhdekvkbt+gwBcSU8zcZVmc0noOlJ0dtkPAuFoVroeFRJwSfW33o7ZB50ovx5tguZK6yDpQz0rJZzABJOnWiisE++n1gxdPJbAow9a7+UlNi4NFrK0bQbiP8kvUXBfmRbPp5it0HsTDSGgXGO9udflH/GQcXLDIyVckB17zy90uoMh2OttrM8f2xkAXrLf/fNcOXu9n6XJDiTZhVtLAwYNeBX6GkDM4/VPhx9qR3OqAuynI5DlG6QSVsBWMyaudnftLixcOBvW7nt44Er+07oZlZ2ZZTUU8csmIKl1ZYxPfswnQTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=riU7LRoHG5jwjaGB0eZ/HXzVBz6GG+qTp80RT+EChbc=;
 b=RWAbYGh4rotkobGz0OY/YE5awJTpA+sApgWvfcIIO8iL69+DytWgByvsbTy0h/C0wab0ffE0usQwBOem2E56GkWHmWMuje+OLTMM8GGyZTi6rjPK9JcJ74hmiU8YEr8+8KA67KROcil5IhnLT15jtc5/WrTmvZiuTgSJEX/zMj1O092RBnpfVU2hjcAeUbKMkbhy6hH6lib5IErxY8+zD3jG8ocaFKpUkzM4OZ/4qeXaQc+aBrlaxHPJmEqxjVw34bNt53mBZAN2v49UR4N+aqJVi9nvQ7jbg+OuTeMNnJ6SddRy88d1emMase+vfZnk6b8QmCU17tZmF0Too11yTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SJ0PR11MB5630.namprd11.prod.outlook.com (2603:10b6:a03:3bb::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 08:19:22 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6745.034; Mon, 11 Sep 2023
 08:19:22 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Only check eDP HPD when AUX CH
 is shared
Thread-Index: AQHZ5Iiq/Pr5aE96GEyIBqGnILhLnw==
Date: Mon, 11 Sep 2023 08:19:21 +0000
Message-ID: <f5bf50d3b7c56f46e96d85a227e214f932550160.camel@intel.com>
References: <20230907121736.23734-1-ville.syrjala@linux.intel.com>
 <20230908052527.685-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230908052527.685-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SJ0PR11MB5630:EE_
x-ms-office365-filtering-correlation-id: 455c613d-43a0-4ad2-0861-08dbb29fcd65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4D2GTsCIQD9NQTMTJ+MGOGSqPfmA5HCPhDB1GtWPPnIgOq9tuh9x83ibssqUAWGfMHYmB1+fsacsGq01P0mZxiGj5d1IjsqI6hO9kaI7MII6FFRm8TJFwqRWLJNB0XOabICWNo8yAvXR+UKTE+qFodZw/FOOygOhDQNFaUtIdZkVGo3C6nM41eGHKEeboI5NOBre5IsozpvhMXC4Zgz8YmZ/4TB4Iiz2MN2jc7NWLlYAdfWwkt40fdaw1WatSzB9xUeXXP8FWaqO6L4Tv7ckXkwB79tI60/dxVyZA3zOOaQ8052ITVNG+IoPHz2HWqZCv03CZ+iWJAj/UP+zPGlHf3tp+lh7xsgmzsJh5sMdnfZUpF1c+YmyN5zHYOA0c8gHiVUu4OWam4pqPz2feChkRcPCKoouVGNAEBwulTjjfSCMMQUaxTI6v8IESQ+gNz0UGxdKQoIY8Oyrg4dt7aNaf27d2XtpZWwm/IK2Usfp/T/jhfQUSNNlhHuHfjDOGiM0qvoLQ7giYrrxz4h04+WHEDCGjOsAC56Bk8bYvAwtd0+uAeYngusF4PmjJb89k4lsJObpDlZBtPGKGoFFiwbqZ1tnIPpesXOPLdo6UM3QXqs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(366004)(376002)(186009)(1800799009)(451199024)(122000001)(6486002)(6506007)(71200400001)(966005)(6512007)(478600001)(83380400001)(66574015)(2906002)(2616005)(26005)(76116006)(64756008)(66446008)(66476007)(66946007)(66556008)(91956017)(316002)(110136005)(4326008)(8936002)(8676002)(36756003)(86362001)(82960400001)(38100700002)(38070700005)(5660300002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NS9INzdBUkxPK1pNcnJGSS9heG9kNmdkMkdRNEhFQ3dGQld0MEFCQ3kycXk1?=
 =?utf-8?B?Y3J5cE5lbTVJeGNmTE1CUVZwZ1ZNTi9XZGtBQWs4MVB0TFZLOWhvdGJkZFJV?=
 =?utf-8?B?NzZCVXE3MXBLUlVUaFd6WGl5UUJpdWlCWHJlMTZuakRDTlN1Tit3clZ5dTdn?=
 =?utf-8?B?WWNYRUNiTzhyYWg0V1Q3YVdVcTlYODZhYXp0ZUdlSXZTTy80WnB2aDRYdG51?=
 =?utf-8?B?MTQ4RE9wb1h4bVhCY1o5MUpEeHM5dzZyc1NrWWhqbEFQQjZZWGZaTmNCaUN3?=
 =?utf-8?B?bnJwcHFML0N1NnJUSjdUS1R4UFloR3oxNXFGV0VFZUxHNktmN1pYQnJtSm5Y?=
 =?utf-8?B?SkNrbkFFY0ZmbDN1dWtqSTY2dm9SbkRUUlFCM2N3ZjZVdUFNYTRlSnJjRUVp?=
 =?utf-8?B?UmNZNlRsTGVCS3BIbzFvOXRiZ3lYSWROMXg3VGY5czVUamY3cnFDdk5ZYldE?=
 =?utf-8?B?ZWVTbmVxTjAwS3JPQ3FLUEVjS3lSZXdTcTA2UUxpc1lQL0VzVjBOOW9EK1RC?=
 =?utf-8?B?SW00YkwzY0IyWnhNZjZHSVRXUEVhNGQxYTBIWTRiMGxocVZNZ0NRWk1OOCto?=
 =?utf-8?B?Skh6Y1dPaGp3ZTVDK01Mem5ydncvUE04YlZTUjJkS2tpK2EvQmtGNlhOc3Ay?=
 =?utf-8?B?N09Ka3pwejZyMWlNM2lpWTdEZU9TSElkdU5waGFtQnc0VlV2WVNpU1drZy9Y?=
 =?utf-8?B?QmRBaVdMMnlGclZtTXJsN1lWZlB1WjFuQUpWb0hmenlsV29Ld1d2MEpoNXlO?=
 =?utf-8?B?QVpMcU1qNjFNUXVpMnV4WGFBT3VyUmRQZ0RPTytaWUZOU3lEY3p6WC9udGl0?=
 =?utf-8?B?MGlGbUdxbnpvd3kyelArMlZ2YThNaUs0KzFkWG9JeXN0SXVmMkgwY24xMVZW?=
 =?utf-8?B?VStnMndjRTZUWTFENGV6YUpoK1ZoZHhQZVl4cnkyR2wrV1Y5bnJYRnFnbVNY?=
 =?utf-8?B?eGlRNUJDaVJLUEYwNEF5bnI2aXlMMC9BSWF6OFd6Wi9pTlNwdHJTbEU0NGVY?=
 =?utf-8?B?NTdLckN6anlFR0NQRG9qMG1CSWR1ZjdMQlBKR1p6Ym5aQW9pV0NWV2FXbnpv?=
 =?utf-8?B?YkJGNnJJd1c5WEFNVGs1Ry9OckNPZDltU09oZFpqTEJaSW5taHc5azVScm9E?=
 =?utf-8?B?S1VxWGF6N2ZhaVBoT1dua2p6TzN6VHBFb3plTDNPN1d1eGU4NGZPNllPbVk1?=
 =?utf-8?B?bTNBSkVFTHA5VEpGL3QwTlU2OTMzQXNVMDFBczVRWFZnaUord0hsNG5nYjQr?=
 =?utf-8?B?a2xlV3kvcFA0cnlIOUNnN1k0NWVMREEraURSZy9DL0JNSDd6RDVHK3JpQnRC?=
 =?utf-8?B?N1A3VXdiTEozNFd6R2FCOVpQVUNhSTJEbnovOGdhTXc4a1RjWnZIeEp4YUE5?=
 =?utf-8?B?eGsvL0c1S2tMdzc5WGRaODFDTVJTd1cvMFhJTlVGNzU3WjBsaS9EZzEvbU5j?=
 =?utf-8?B?S1JaLytOa2pnMVBwcnRrazFjNUhuT0dFblJtb2lsWENWeDhiNnZnWHV4Z2Zn?=
 =?utf-8?B?VUVod3EwRXpFMHJMcmM5ZFZPZTBabit6cEgrZ2p3REdlaDBFTnpoaGdNYVhM?=
 =?utf-8?B?YStmWnFSeFk2UHRBRVdyT3RPM1h6T1Z3VzdrT3JwZmdGT0pqdytOamtydk93?=
 =?utf-8?B?Z1hLZEVldkRYUlZDU1NzOGF0ZTIrd1ZEM1I3Y21VMHFiMEptbEl1aVd4QTE4?=
 =?utf-8?B?MC9LdlhVOFlqRkpZS0FoR0Y5RVVETERKcGtjK1RIeFJ4enU4dzdvS0pkWWRs?=
 =?utf-8?B?dFMreDNYY3l4MWljYUh6YkMvRU5WNkk1OTVYc0NtOGVKT0RYMU9sb01NYndt?=
 =?utf-8?B?VStCVnovKzVxbTg0ak5nNHJQelNNS3p3b2xWNHFxaHV3ZHZzM2dRTjhZdE5Q?=
 =?utf-8?B?T3dHOWlLREJWWld5Wmo5QnFnbDZsS3JDS3E0VW1MOEJnVUI3ZlVPdXBIZGFR?=
 =?utf-8?B?NFpKTFQweGNSTWt0eHlwZlNIWG1waWhjWVUwbkU2N1NycW02VGdSSFZQN1BT?=
 =?utf-8?B?QVNGMkd1d3hJbk11T2FUbGlBWjd3dy9jakQ0SHN2ejcrL21KcjhMUCtLYlFm?=
 =?utf-8?B?RkxQdXBhSVprZ0EyRUVoMFZHOG1XcldtTUk1ZXdyOUNoMGFieUZzTjNFNFll?=
 =?utf-8?B?UlNZb21qakZpa1JtM1JxTitKeXZHU3grdFpvVUpwaUhmN3BYVFRkVHEzbnl1?=
 =?utf-8?B?Q1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <102D8B017D00854BB3C30CAD59D398B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 455c613d-43a0-4ad2-0861-08dbb29fcd65
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 08:19:21.8017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1qQdvsf0TqU/EGqjTohRYTbHFFmfsG2mDVorRXEO+WVV7ui3GhDTsDYcAyWPsIgnSCAThLd8BSyDfV31QBT7A39RSeIreB0GrAnWCE/EsO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5630
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Only check eDP HPD when AUX CH
 is shared
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA5LTA4IGF0IDA4OjI1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQXBwYXJlbnRseSBBY2VyIENocm9tZWJvb2sgQzc0MCAoQkRXLVVMVCkgZG9lc24ndCBo
YXZlIHRoZQ0KPiBlRFAgSFBEIGxpbmUgcHJvcGVybHkgY29ubmVjdGVkLCBhbmQgdGh1cyBmYWls
cyB0aGUgbmV3DQo+IEhQRCBjaGVjayBkdXJpbmcgZURQIHByb2JlLiBUaGUgcmVzdWx0IGlzIHRo
YXQgd2UgbG9zZSB0aGUNCj4gZURQIG91dHB1dC4NCj4gDQo+IEkgc3VzcGVjdCBhbGwgc3VjaCBt
YWNoaW5lcyB3b3VsZCBhbGwgYmUgQ2hyb21lYm9va3Mgb3Igb3RoZXINCg0KU21hbGwgZHVwbGlj
YXRpb24gaGVyZSAiLi4uYWxsIHN1Y2ggbWFjaGluZXMgd291bGQgYWxsLi4uIi4NCg0KDQo+IExp
bnV4IGV4Y2x1c2l2ZSBzeXN0ZW1zIGFzIHRoZSBXaW5kb3dzIGRyaXZlciBsaWtlbHkgd291bGRu
J3QNCj4gd29yayBlaXRoZXIuIEkgZGlkIGNoZWNrIGEgZmV3IG90aGVyIEJEVyBtYWNoaW5lcyBo
ZXJlIGFuZA0KPiB0aG9zZSBkbyBoYXZlIGVEUCBIUEQgY29ubmVjdGVkLCBvbmUgb2YgdGhlbSBl
dmVuIGlzIGENCj4gZGlmZmVyZW50IENocm9tZWJvb2sgKFNhbXVzKS4NCj4gDQo+IFRvIGFjY291
bnQgZm9yIHRoZXNlIGZ1bmt5IG1hY2hpbmVzIGxldCdzIHNraXAgdGhlIEhQRCBjaGVjayB3aGVu
DQo+IGl0IGxvb2tzIGxpa2UgdGhlIGVEUCBwb3J0IGlzIHRoZSBvbmx5IG9uZSB1c2luZyB0aGF0
IHNwZWNpZmljIEFVWA0KPiBjaGFubmVsLiBJbiBjYXNlIG9mIG11bHRpcGxlIHBvcnRzIHNoYXJp
bmcgdGhlIHNhbWUgQVVYIENIIChlZy4gb24NCj4gQXNyb2NrIEIyNTBNLUhEVikgd2Ugc3RpbGwg
ZG8gdGhlIGNoZWNrIGFuZCB0aHVzIHNob3VsZCBjb3JyZWN0bHkNCj4gaWdub3JlIHRoZSBlRFAg
cG9ydCBpbiBmYXZvciBvZiB0aGUgb3RoZXIgRFAgcG9ydCAodXN1YWxseSBhIERQLT5WR0ENCj4g
Y29udmVydGVyKS4NCj4gDQo+IHYyOiBEb24ndCBvb3BzIGR1cmluZyBsaXN0IGl0ZXJhdGlvbg0K
PiANCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzkyNjQNCj4gRml4ZXM6IGNmZTVi
ZGZiMjdmYSAoImRybS9pOTE1OiBDaGVjayBIUEQgbGl2ZSBzdGF0ZSBkdXJpbmcgZURQIHByb2Jl
IikNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQoNClJlZ2FyZGxlc3Mgb2YgdGhlIHNtYWxsIGdyYW1tYXRpY2Fs
IGlzc3VlLCBMR1RNOg0KDQpSZXZpZXdlZC1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhv
QGludGVsLmNvbT4NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
