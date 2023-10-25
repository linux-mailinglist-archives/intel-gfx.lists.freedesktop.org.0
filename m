Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 421357D688F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACDF10E636;
	Wed, 25 Oct 2023 10:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A1E10E62F;
 Wed, 25 Oct 2023 10:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698229951; x=1729765951;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=I+WtNhAqGPt7JsJ1QUS0JB9fs8hyTL4WDEMx9cQWfAg=;
 b=UoW6/fWY9i0EdRWIxxBTzeIiVINZ/BS0GvaHh2nJnu0A1Jxfx6H8F/w2
 /B1WJf3SnwzdBfUlBWvtoQztKUYqWSRuAZb6l06+5gp6V4fcxoFjgfihB
 b5vUp6iEyaJs3L5mTIo/NTt0HEWTabhYGGXeeC72D6rRRHiEZMkqRpwwZ
 3R57INWMJZn+zDf4u6bzFdKxgvjAy7BMMjDK7mNrmcybk1hmFRBqyfgSI
 W3O4UdJBkuMimr0WQQOBph+Zwnetrjfz0QDlcjSbshzJ6MmIf52R0w+8S
 hVvGL0Gy7pC+aqGef5MlkN/SWu1+OfULH4PfTU8o8LiD54AKGUqlXnhyL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="391149367"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="391149367"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:32:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="793802435"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="793802435"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 03:32:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 03:32:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 25 Oct 2023 03:32:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 03:32:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3zGshc43uqkPiEJLBN6mbh10n7ZujCxJTaTlFQlHuxwc4ROveHb3uAPpUFU7B2v2So466xFADz6maHUg6rJvSIP0sL93jGMl0a0avm04ewDLtPCarqkTh87szIu8VkHmXgozmfJGc62/+wWeyDfc/foRdzee4qGfEpqyz+7bGsrwrnBgl0o1jRH2fvp3fJkPap+l4HKoNQRNyDpzuqo1smMcvF7siqpznwj1o/hcz9JDb4fjLUYRuvuByGeZ68J9WwUs9NDAWwRcB1v1VzRFmg8JidVSfKplRWwzZrxs1emnClqNPsI+faEVnP/P3ZDcYOcQmeQ7l52CDTtAhcPbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I+WtNhAqGPt7JsJ1QUS0JB9fs8hyTL4WDEMx9cQWfAg=;
 b=Zy3cXAq21TJUxLzzOGv0xwDAlMQVlWu+dNvLsmbYgmYs4L/qgO+mpOs4wm80trLRe70W/WC/KlUycNtdcSf7xJIzGDzaZUSL69HmSt1667l2J70j2Gd31L0PGU4a1PC4nkMJyZdYXeYEUO3yvtfHWfpHGU8/GHs45lzggxHaOUK0qkxQk6IC4hFeonLcscDTKwV38wfMP0dU1P+fU6VPnNB6ZXMfTJ3KubQIN8h3pWij1Q6D8h5odzWkcD5j6mnQ+moYYGuDd7fQ7otLp3hR10tL4K4vcA5CUx7I0FVcH8ooTrJerB12pxFjn5osc5iDka9l1eDYeISHyjw+ShC9Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SJ2PR11MB7453.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Wed, 25 Oct
 2023 10:32:27 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::5c7:6814:f748:f22b]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::5c7:6814:f748:f22b%6]) with mapi id 15.20.6933.019; Wed, 25 Oct 2023
 10:32:27 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaByyY657pE9j2g0eFdsqwqmFEkbBaTK8AgAACDoA=
Date: Wed, 25 Oct 2023 10:32:27 +0000
Message-ID: <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
 <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
 <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
In-Reply-To: <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SJ2PR11MB7453:EE_
x-ms-office365-filtering-correlation-id: 30ae4ef9-ae7a-4275-4118-08dbd545af31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qsm1PQNZBaj5MTiihojt+J8P78ZVkD8QMNTmEZbvcga5EA5Ucm12lepDRZLzrqeJRN+gdrR7X/jjCXA5/BbGuzICCxPUyGbOGTS1LnAJCEs+Ui1/JUlbQA/zMDSA3u6lxDzD/j01DwXkDvK6fIOZs5hPBEj/1Q1z3tnbN3a6VdY4wHmx6LO7+0dUwZwxES5BUUEwTCKpmaaxd5QFc7g8DKM4paD3JmV/klckterHlrEmbybk30yD9m8vZGe7pUYtFLRuYB3v+PYRsCWfdmUuw3s9nCdhKwwjFfi5e4G0BbjQioO6lglrAbsbTL4W9W5wjD8QAdAjLAfXScoXwTbmZuY5TOqmOK0NYtSj0SLSNKzfr8KOmo4XfoP1jSLtsow+BodfDEF4bUFYj3RM8Xb0TauEjn58J6ESzZYvbWpov7/cE2DaboDRxHB9/SI4x9cIJXyUbtqsH5dUsrCK8gRggKRtIDbu9AKt/h8wxqJlZFPQ+jq13jgvoYEdY2IL7gRxL7LCGeUH6pqHgxv4JhJ4AxoHBVoQ+Mw81cYGdKjWOlFNIfoiFhPUzwWuEijo1501T+0tlGgUC1kh8l4M4+p6XNysdOYpO+nUrxJB+zvlsXC/IEwUZaIEbLKpbTLsvfUZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(346002)(39860400002)(136003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(5660300002)(53546011)(2906002)(71200400001)(2616005)(41300700001)(6512007)(6506007)(26005)(91956017)(316002)(54906003)(110136005)(66446008)(76116006)(86362001)(478600001)(83380400001)(66476007)(66556008)(82960400001)(122000001)(66946007)(38100700002)(6486002)(8676002)(8936002)(64756008)(36756003)(4326008)(38070700009)(4001150100001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emkrcTljZ3I3dlJ0MEdsZkFkYkRVOVVJNzd3YWozVmJLazBDV2hRRGtPUFYx?=
 =?utf-8?B?cElOenZjMXMvcFRGcVFqelNDOFp1bjRLMzEycmhOeFNDT29Yc2xiUDNLVzRq?=
 =?utf-8?B?RW1OYXpjRERqTkg1WS9HaUlNSTdwL0JMcDZYbGRla0l1Q21LWnQ0TjdxNlFn?=
 =?utf-8?B?TmZnUmdOeFhzdlUyU21Ta3pOb0kzN0psdWp2WWdBU0h0QUttM2U3dkNRR2wz?=
 =?utf-8?B?dmxNcG9tdWJEUGdQcjVoQ0FSWUFCZzdKWnovc1kwV1lkZ2dLRXVSQzdsK2Z3?=
 =?utf-8?B?NzB4RDVrNzg2VWswM1loakd0dzhpem5mLzlEaEJqTnZ0SXVDQWdRNWhXUG8z?=
 =?utf-8?B?RGtUU1hTaHAwSWRWVTYyYlYwZDdGbWwvdHZNR3NRUHhUazRVak5jNGkvSlhR?=
 =?utf-8?B?alkvM1RCT3pSTEUxdGRyS1IwN3NFSjJGa2xJdWhsRW16NisyU2FsTUg0ek5l?=
 =?utf-8?B?Y3I1bWU5N1ZNdEc0TUhwY2RSemFjVGNYUU5oMW5yR3RneHVydWwrMlZNTkxn?=
 =?utf-8?B?OElnMzFadkVDKzcrbm5GbE0zaFkrd2s0aEk3bEhYVUI3ZTNFVk5zUm1Obkto?=
 =?utf-8?B?bHlQcENzNjRHSk9MK1dvNVQ1Ry9uOWRpZ1Q2bkRGUlZUTG9yUWhqZnR6WTFX?=
 =?utf-8?B?TGcycmtoRCtuQUV3MW9uKzFUeVRyNFNVTkh5WUxEWEhTVkJpNFh3WmlVRHhs?=
 =?utf-8?B?Sm1MUVVKZXl6ejVlamh3cmhtNHBhYmxRMDZCZUlFTktuU2ppTzB4SjVEWW90?=
 =?utf-8?B?V2Nmb0xEb2hVTEtMcVBkTFFVV2NwQWpObFZyWjlvbzZGeEdvSFdEcXVkY2xF?=
 =?utf-8?B?UmdoUnB6NjBjUnJ2WDh2eWY3dHMya0NZcVVTd0dRMGRDZlBRSytZK2hSNm1h?=
 =?utf-8?B?b3NZNHUyaUorMGR4MW1JWXZIaFluSVpaWjYyMWVzVnRrMDFJdFhRZ0dZTVdK?=
 =?utf-8?B?QmMxOEhvU2F5VUZRN2syWDRFVWJ0TTlhR3NUNXVQMnU3WkpzWFRuTDdlM0NZ?=
 =?utf-8?B?bG0vK2Vuajc3RmtJSG9WK1gzVWxZZlZmU1BIaUxKbGpFZW5MOVA1blRkajIx?=
 =?utf-8?B?MjJJUU5UbHJHNzFtZU5UcHhYZHY0Skh4T3pZSlJqcWxJYTJMdlNTRzlIYXdv?=
 =?utf-8?B?MStydjVxYzVXU2liSTMzRThrM3BPWDhGUFJsNkl3TG1FUHpPMWcxM3ZxN2tC?=
 =?utf-8?B?bVhXTEdTT0YxOTNKWlpYWFhBeHhuU2JudnVyYVQzS05VeE9mOXFEZzNBdFhT?=
 =?utf-8?B?ZHR1OGVxZjNac1Q2Nk03M1h0OC90alg0VkdaS0JiT1JmNitXTUF6SnQ1UjFo?=
 =?utf-8?B?Z0hwWGpnZGNWWDBWdldhZW9DZkVnTHUvNHpVUzJnenZMSGRGY0twRGdXTkxw?=
 =?utf-8?B?RWhGcGdOU2VWVHlsVUYvNEtxMUE3cG9aaldKeFFnSDB6Q29WbUJKRjhlaUlJ?=
 =?utf-8?B?TVQ5SS9leFgxWFFhZllkY09UWG5QRTVWOEVRRkYrUWp0UzR2N3YyaTJmVnFJ?=
 =?utf-8?B?QXNXb2FXT3VZa29Ja3BMR3FXYy9HUWdUSnBQMDVGSmFsOUd1Ri9lbVFLUHNL?=
 =?utf-8?B?WXpXUGpOZmpxVTRxR3N1N3JtKy9KZWhxUWtKcGQ5aEttTjI0cTUrVCs0emRm?=
 =?utf-8?B?L2Y0Q0Z6dlpVRXp4STFzdmJrL2Zoc3kzS2lkT1ZINm1wM3dHMzVlczY0czVP?=
 =?utf-8?B?Y0FRMlRlZUVhb3RQclFKVUxLQ0Y3d3J4VGRyL3pkcEJhSWhIcTVLQ3Nrb2s3?=
 =?utf-8?B?akRuc3NOZW1FNWNDSGlTUUJCNGVCNVpGZlJpTytWVEJtT0xTUWl6MERSNUVs?=
 =?utf-8?B?OVBzck1EMzZ2N1hReU4vNEZWeDNIWnhpUElGM3o3NG9TU2p0aTdEQjNPeFlj?=
 =?utf-8?B?KytJTWthMFFFSVlhQ0xBS1lQL1huamJoUitIcEp0TFdaUmw4cEdiUU1ZeVBz?=
 =?utf-8?B?em5wS29oNFJPYW8wMzExLzRLUmdCMmFQVG5JazFkQ1hzQ3ZGOTVvZEQxcWJG?=
 =?utf-8?B?ZlRwNU8yVy83U3pOZWRsWktCZEJReHlRRjJJZnRKK3BEUkZxcDc5cDRQU29U?=
 =?utf-8?B?cWx6MGo0QzZqbzRmelhuOFBJaWRrZ1p3cFd0dlVIVUwrK0JDMTlYVEFCSkY1?=
 =?utf-8?B?NmpVcDhSdWJkRDh2aUJCQzBzeDRJSFpFVXpDMGJQUXlWOS94NG9IR3cvMitV?=
 =?utf-8?B?N1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <526E706DC9D26F4EBC201925BC056AD8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ae4ef9-ae7a-4275-4118-08dbd545af31
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 10:32:27.1611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NRjJp99Niha/RwMy0ZXjXaVcYKTzjcozJepnk6WwPjR2xBCSRgnLyccAB52T5BEbW3xswAJZBrYwopALG4Q77Cfjyrjc53R0Re+gU6UFLSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7453
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTEwLTI1IGF0IDExOjI1ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMjUvMTAvMjAyMyAxMToxOCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+ID4gDQo+ID4g
T24gMjMvMTAvMjAyMyAxMTozMywgTHVjYSBDb2VsaG8gd3JvdGU6DQo+ID4gPiBUaGUgdW5jb3Jl
IGNvZGUgbWF5IG5vdCBhbHdheXMgYmUgYXZhaWxhYmxlIChlLmcuIHdoZW4gd2UgYnVpbGQgdGhl
DQo+ID4gPiBkaXNwbGF5IGNvZGUgd2l0aCBYZSksIHNvIHdlIGNhbid0IGFsd2F5cyByZWx5IG9u
IGhhdmluZyB0aGUgdW5jb3JlJ3MNCj4gPiA+IHNwaW5sb2NrLg0KPiA+ID4gDQo+ID4gPiBUbyBo
YW5kbGUgdGhpcywgc3BsaXQgdGhlIHNwaW5fbG9jay91bmxvY2tfaXJxc2F2ZS9yZXN0b3JlKCkg
aW50bw0KPiA+ID4gc3Bpbl9sb2NrL3VubG9jaygpIGZvbGxvd2VkIGJ5IGEgY2FsbCB0byBsb2Nh
bF9pcnFfc2F2ZS9yZXN0b3JlKCkgYW5kDQo+ID4gPiBjcmVhdGUgd3JhcHBlciBmdW5jdGlvbnMg
Zm9yIGxvY2tpbmcgYW5kIHVubG9ja2luZyB0aGUgdW5jb3JlJ3MNCj4gPiA+IHNwaW5sb2NrLsKg
IEluIHRoZXNlIGZ1bmN0aW9ucywgd2UgaGF2ZSBhIGNvbmRpdGlvbiBjaGVjayBhbmQgb25seQ0K
PiA+ID4gYWN0dWFsbHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9jayB3aGVuIEk5MTUg
aXMgZGVmaW5lZCwgYW5kDQo+ID4gPiB0aHVzIHVuY29yZSBpcyBhdmFpbGFibGUuDQo+ID4gPiAN
Cj4gPiA+IFRoaXMga2VlcHMgdGhlIGlmZGVmcyBjb250YWluZWQgaW4gdGhlc2UgbmV3IGZ1bmN0
aW9ucyBhbmQgYWxsIHN1Y2gNCj4gPiA+IGxvZ2ljIGluc2lkZSB0aGUgZGlzcGxheSBjb2RlLg0K
PiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9A
aW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiANCj4gPiA+IEluIHYyOg0KPiA+ID4gDQo+ID4g
PiDCoMKgwqAgKiBSZW5hbWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0KPiA+
ID4gwqDCoMKgICogQ29ycmVjdGVkIHRoZSBvcmRlcjogc2F2ZSwgbG9jaywgdW5sb2NrLCByZXN0
b3JlDQo+ID4gPiANCj4gPiA+IEluIHYzOg0KPiA+ID4gDQo+ID4gPiDCoMKgwqAgKiBVbmRpZCB0
aGUgY2hhbmdlIHRvIHBhc3MgZHJtX2k5MTVfcHJpdmF0ZSBpbnN0ZWFkIG9mIHRoZSBsb2NrDQo+
ID4gPiDCoMKgwqDCoMKgIGl0c2VsZiwgc2luY2Ugd2Ugd291bGQgaGF2ZSB0byBpbmNsdWRlIGk5
MTVfZHJ2LmggYW5kIHRoYXQgcHVsbHMNCj4gPiA+IMKgwqDCoMKgwqAgaW4gYSB0cnVja2xvYWQg
b2Ygb3RoZXIgaW5jbHVkZXMuDQo+ID4gPiANCj4gPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMjAgKysrKysrKysrKysrKysrKysrKysNCj4gPiA+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmPCoCB8IDE5ICsr
KysrKysrKysrKy0tLS0tLS0NCj4gPiA+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIA0KPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gaW5kZXggMGU1ZGZmZThm
MDE4Li4yYTMzZmNjOGNlNjggMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gPiA+IEBAIC01NTksNCArNTU5LDI0IEBAIGJv
b2wgYXNzZXJ0X3BvcnRfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgDQo+ID4gPiAqaTkx
NSwgZW51bSBwb3J0IHBvcnQpOw0KPiA+ID4gwqAgYm9vbCBpbnRlbF9zY2Fub3V0X25lZWRzX3Z0
ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ID4gPiArLyoNCj4gPiA+ICsg
KiBUaGUgdW5jb3JlIHZlcnNpb24gb2YgdGhlIHNwaW4gbG9jayBmdW5jdGlvbnMgaXMgdXNlZCB0
byBkZWNpZGUNCj4gPiA+ICsgKiB3aGV0aGVyIHdlIG5lZWQgdG8gbG9jayB0aGUgdW5jb3JlIGxv
Y2sgb3Igbm90LsKgIFRoaXMgaXMgb25seQ0KPiA+ID4gKyAqIG5lZWRlZCBpbiBpOTE1LCBub3Qg
aW4gWGUuwqAgS2VlcCB0aGUgZGVjaXNpb24tbWFraW5nIGNlbnRyYWxpemVkDQo+ID4gPiArICog
aGVyZS4NCj4gPiA+ICsgKi8NCj4gPiA+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfc3Bpbl9s
b2NrKHNwaW5sb2NrX3QgKmxvY2spDQo+ID4gPiArew0KPiA+ID4gKyNpZmRlZiBJOTE1DQo+ID4g
PiArwqDCoMKgIHNwaW5fbG9jayhsb2NrKTsNCj4gPiA+ICsjZW5kaWYNCj4gPiA+ICt9DQo+ID4g
PiArDQo+ID4gPiArc3RhdGljIGlubGluZSB2b2lkIGludGVsX3NwaW5fdW5sb2NrKHNwaW5sb2Nr
X3QgKmxvY2spDQo+ID4gPiArew0KPiA+ID4gKyNpZmRlZiBJOTE1DQo+ID4gPiArwqDCoMKgIHNw
aW5fdW5sb2NrKGxvY2spOw0KPiA+ID4gKyNlbmRpZg0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+
IMKgICNlbmRpZg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmJsYW5rLmMgDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmJsYW5rLmMNCj4gPiA+IGluZGV4IDJjZWMyYWJmOTc0Ni4uOWI0ODJkNjQ4NzYyIDEw
MDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiA+ID4gQEAgLTMwNiw3ICszMDYsOCBAQCBzdGF0aWMgYm9vbCBpOTE1X2dldF9jcnRj
X3NjYW5vdXRwb3Moc3RydWN0IA0KPiA+ID4gZHJtX2NydGMgKl9jcnRjLA0KPiA+ID4gwqDCoMKg
wqDCoMKgICogcmVnaXN0ZXIgcmVhZHMsIHBvdGVudGlhbGx5IHdpdGggcHJlZW1wdGlvbiBkaXNh
YmxlZCwgc28gdGhlDQo+ID4gPiDCoMKgwqDCoMKgwqAgKiBmb2xsb3dpbmcgY29kZSBtdXN0IG5v
dCBibG9jayBvbiB1bmNvcmUubG9jay4NCj4gPiA+IMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gLcKg
wqDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFmbGFncyk7
DQo+ID4gPiArwqDCoMKgIGxvY2FsX2lycV9zYXZlKGlycWZsYWdzKTsNCj4gPiANCj4gPiBEb2Vz
IFhlIG5lZWRzIGludGVycnVwdHMgb2ZmPw0KDQpJJ20gYWN0dWFsbHkgbm90IHN1cmUsIGJ1dCB0
aGlzIGlzIGhvdyBpdCB3YXMgaW4gdGhlIFhlIGRyaXZlciBjb2RlLCBzbw0KSSBrZXB0IGl0Lg0K
DQoNCj4gPiA+ICvCoMKgwqAgaW50ZWxfc3Bpbl9sb2NrKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2sp
Ow0KPiA+IA0KPiA+IE15IDJwL2MgaXMgdGhhdCBpbnRlbF9zcGluX2xvY2sgYXMgYSBuYW1lIGRv
ZXMgbm90IHdvcmsgd2hlbiBpdCBpcyANCj4gPiBzcGVjaWZpY2FsbHkgYWJvdXQgdGhlIHNpbmds
ZSBhbmQgc3BlY2lmaWMgKHVuY29yZSkgbG9jay4gT25lIGNhbm5vdCANCj4gPiBjYWxsIGludGVs
X3NwaW5fbG9jayhzb21lLT5vdGhlci0+bG9jaykgZXRjLg0KDQpSaWdodCwgdGhpcyB3YXMgY2hh
bmdlZCB3aGVuIEkgd2FzIHBhc3Npbmcgb25seSBkZXZfcHJpdiwgYnV0IEkNCmNvdWxkbid0IGRv
IHRoYXQgd2lodG91dCBhZGRpbmcgaTkxNV9kcnYuaCwgd2hpY2ggd2FzIG5vdCBnb29kDQplaXRo
ZXIuLi4gQnV0IHllYWgsIHRoaXMgaXMgdG9vIGdlbmVyaWMsIHdoaWxlIHRoZSBhY3R1YWwgY2Fz
ZSBpcyBub3QuDQoNCg0KPiA+IFBlcmhhcHMgY2FsbCBpdCBpOTE1X3VuY29yZV9sb2NrX2lycXNh
dmUoaTkxNSwgZmxhZ3MpIHNvIGl0IGlzIGNsZWFyIGl0IA0KPiA+IGlzIG9ubHkgZm9yIGk5MTUu
DQoNCkkgd2FudGVkIHRvIGF2b2lkICJpOTE1Iiwgc2luY2Ugd2UgYWxzbyBjYWxsIGl0IHdoZW4g
dGhlIGRpc3BsYXkgaXMNCnVzZWQgd2l0aCB4ZS4uLg0KDQoNCj4gT3IsIGlmIHRoZSBpbXBsZW1l
bnRhdGlvbiB3aWxsIGxhdGVyIGdhaW4gdGhlICNlbHNlIGJsb2NrIGZvciBYZSwgDQo+IHBlcmhh
cHMgaW50ZWxfdW5jb3JlX2xvY2tfLi4uPw0KDQpCdXQgc3RpbGwsIHVuY29yZSBkb2Vzbid0IGV4
aXN0IGluIFhlLCBzbyB0aGlzIGlzIHN0aWxsIG5vdCBnb29kLi4uDQoNCkFueSBvdGhlciBzdWdn
ZXN0aW9ucz8NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
