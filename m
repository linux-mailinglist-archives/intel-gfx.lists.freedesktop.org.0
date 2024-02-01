Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFF2845FD0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 19:25:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2EFD10E72C;
	Thu,  1 Feb 2024 18:25:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjenxKQ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3078310E73E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 18:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706811941; x=1738347941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HR7gO6yOAiHbBLtbZFyT/1DG4NBvXWndm/NGWg8bPZM=;
 b=NjenxKQ194wDbzPMXrCF4etmPsa0VcIJmnF+jKieFcEd+Ns4L1ZwIOpw
 BJJsq/3mQffDNyfh2qhwosKOgX6Pkp5Fi6CpgubPCjfHbkCwUEUXKfOBq
 mXVSEbzaR7BrrW22aFbvfYfFpr5IKxUWSHxoCy+TD6hOnXN3HU682e1qn
 vEeQiu7jBnsZTBLUGWDgM24nDu5OzqFkfumrLEW8Vcr6R58dXcwHPk+uL
 /9j/umxqyGzsZJH9gRKX0ItHqHxdeslZL7g4PF/I1UQc43spdOe0UAgX5
 WCNPyceO41/8AGlR+vO2DSv5tWgAidcHHtdjbek6YNpqEgsKYuJtBXcu6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10717299"
X-IronPort-AV: E=Sophos;i="6.05,235,1701158400"; d="scan'208";a="10717299"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 10:25:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,235,1701158400"; d="scan'208";a="30945355"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 10:25:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 10:25:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 10:25:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 10:25:39 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 10:25:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JsYh8kM1/TMJ0CRoZnC0YfHGz6LzApxbCjidROmNO8z8JF2QIKobROyLferzMiy2nAdSwXNSspjJ1kBTmHdS6QgbPbA6Pvdyzo52dndOnd0wemW4iWGOPRwBs7ncSTSBxHxaw1orQFhnaThAQGX1ojK3dab6erQbTvvkAd6ecjqAfIZRVGz0jN6yRbhj+KbORac4ypL6BmwkAlTONLQX2+Kfh3B1xvreJHC5fyOQ8qo5SR7vR5K4myoLiBytoIc4ZVfylQXSqtGv3mi3Ko3QfKgyNnE6+iKld5YBjQWv+3wQ/Ak4PBWq5K6qmK4mzIlNH0ciF5DBOPRm81Rj02QhBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HR7gO6yOAiHbBLtbZFyT/1DG4NBvXWndm/NGWg8bPZM=;
 b=Mypwgmw0R8sV+oi5vtPgfiDWUPOcx4f/6OnS32s8bqxEzOGZ30Dn1QvaTwMf8xkvdFGUoP6ceb7GOVF1I8QnHioJ3j6Xu7nEomgyeT+TbfhY8XkYFcmB6ONj/wcwLfibFWzo6AXb1h+kArvWmMedDTOGFVhroJq9+s3gBQGUJdw6PiUF2hZhU5yWC9IhYcEf48Z6CODrHapdT9xwosSwYENSTAjP9ewCBkRzKmui5v9IV2LSuVCR3af39v9zA9Yx29d2qY6P82HgUoV/5JveS9cpEMOGxX/vgxIzDmEnb40P8JqQeVp4d1SIwcdKxtw1FUnbHZ7CirCOpzqM6KjzaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by DS0PR11MB8232.namprd11.prod.outlook.com (2603:10b6:8:15d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Thu, 1 Feb
 2024 18:25:37 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967%4]) with mapi id 15.20.7249.023; Thu, 1 Feb 2024
 18:25:37 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "kenneth@whitecape.org" <kenneth@whitecape.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Zanoni, Paulo R"
 <paulo.r.zanoni@intel.com>, "Ghuge, Sagar" <sagar.ghuge@intel.com>
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Thread-Topic: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Thread-Index: AQHaTp4TcTAIbHq1HkWfawaAwwaC27DoqQwAgA0x0IA=
Date: Thu, 1 Feb 2024 18:25:37 +0000
Message-ID: <fe98dc0052a87bf4b916f34813233d7fa69752a1.camel@intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
In-Reply-To: <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|DS0PR11MB8232:EE_
x-ms-office365-filtering-correlation-id: 4ea84dbc-905e-41f0-b69c-08dc23533011
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U8242WPZj20PqUg1DmrhMq5hmEvRJetweGZ2bv0hYr+X4AMvBqjOkKm4ODRdft0lpxYUioDDd96bgp79Cba1Px7T0+7F7k0k+SLfRQlRNVD5kr7CZ4nERD2GqzDIjxJTK9kDGX7wUR9bjdIuxCEfyt0kt/LQ0RjpdrorDOIGBcX5v37MZWf1ZLcV4SG7sWJljWfnApv7o1dJ9YfvcmhXFQtSs9mFl3BRMDELSb8OdOJfJaN7OoMn38y8bcMrvwp1t37s8YvurTK/oSzWRqepEGFxiGjwCWtH/SLy9Ft9O68iBtuBw3oHOsiPu9v01rH2ZT4jIy96Ha+T1pIwB5SsJCssbCaawoT5qBkgfCfazXMvm73DOkxBsmZzX3xnjTlEoCr5WGn7Qv7W6XOdQ/W6KuXH3QSF8ekzPKAmHB4lpa4gfbnFF5HIR5Cw25w/gl4PJXoaDocG0cqJYU9AxO5EHjkiVhdtzvcTdYiB70qJiuXdYTl0/B+JSLiSacYEay+toL6ORbSHela8whGxA2Vfssi2RUdbU5PgAPy3jSAuql/VU27H6yghwFtIGRJHF6euMIAsl0x0BoyS/ukGNYfi/KQk5Gm86gDxwh59oo92pZU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(366004)(136003)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(83380400001)(26005)(6512007)(38100700002)(2616005)(122000001)(76116006)(5660300002)(4326008)(8936002)(8676002)(478600001)(2906002)(966005)(6486002)(6506007)(71200400001)(66446008)(53546011)(54906003)(64756008)(66946007)(66556008)(316002)(66476007)(110136005)(41300700001)(38070700009)(86362001)(82960400001)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFg3NHpOelBZZGFudHlvWXpuNTFDaVV0bndjRzU4V0Y4MndSQys0RWlEQm9k?=
 =?utf-8?B?aGtpVDdyZHFmcTE3clpaZVFrZkFidDJwenhZekZpRGVNbnlkbDAyNHB5MkFh?=
 =?utf-8?B?RlVrUUkwaHJ6bi9xSkhWZVl0OHF1RUd0M3QzZE5KeDY3MHdWR3Y2YU9ubjBj?=
 =?utf-8?B?dEtqK2F3cjhlWHMwNlA5V0kyL2ZkMTZmMWw1b0VXYzRKNzA3TG1UVklKV25l?=
 =?utf-8?B?SFE5MEp4Sk45VkNQVndVUkhhQ1p0Y3F4QitEK1B2Y1FyRXEwYW9UamxPN01U?=
 =?utf-8?B?VUMxR0hVdXUvdGxkajFLYUFzSTdGdjJDZldOcWhzdWh4MG5rWVhxMCs0Z3M0?=
 =?utf-8?B?YURlMmRCMllqRjlQYy9sY2llekdIVUVRNHl2NnB3K3BxZXB5NEJEZzNHZTlM?=
 =?utf-8?B?YVMzK0RaTDQ2Y1U5RVBRa28ycllCck02MGJpWGJ0azVCWVRBdUpJLzZyTnIy?=
 =?utf-8?B?SEFyNHdacExhUlBIaFZsR09aMm8rMFdJSFh2djlHd0NtSDl5V0pySzBmbUdW?=
 =?utf-8?B?ejVnelhIYzZrOUpCbmxNNTJVOUJRSXpWcVBFNHRoVnppR2ZCb0l0NVA3L0hZ?=
 =?utf-8?B?M1Q5eWE4WDF1YUVoTlh2SVJodWhHWktaNDZ0azIycGZjY0ZoUEx3OXdLNlVM?=
 =?utf-8?B?dUQzZWFIM0lPckNpUmVoR05SWUdZMkpsTXltYVhtNHdXd2hpdGl2UmdqWU83?=
 =?utf-8?B?NnQyTnJBZEFrSVZqMUwvR21CQ3ZiOTJKTm9hQzNQalZ4SlpHRWdRT1g3L0hw?=
 =?utf-8?B?UC92d1Z0bHpiOTFhcFpQQzRqa1d3MmRTa1NYeFRpL0FPVlJ5NUZnSVlZdE1S?=
 =?utf-8?B?U0JBblZ6NXRVZWpLMzVQZFBwSjJIa0JrZHBjcWhNN3l5L2xQbmR2cXJXajBk?=
 =?utf-8?B?bTNqUjIyQTAwSUFvNHFnVHpoclJyYWxzM2ZudkhJQUZSOWZmN0s0RnFJSUlH?=
 =?utf-8?B?K2xZTnVQNkphNTEyTjFrMzJnQUc4ajVTc0l1YkJ5eGJEcjZtMkVRR09PWkxh?=
 =?utf-8?B?WEd0UkNCOTBFdXA2STNVUnJZOWVsYi9FZ3lNRy9CZStzSm8yb0Y1SDVMdDNp?=
 =?utf-8?B?MlR6TjNOZzJqY1NJUUd2dHE5WGIzK01VQnY0ZGlmN3JBaER2UXhNWGVvNS9I?=
 =?utf-8?B?ME9WbDJuWU4vUjJlTUhvVXJhRkU1ekxtRjRkRGlGWkxnS1lEaSs0K294M21N?=
 =?utf-8?B?Y0tHdGYzZ2VSUDJVUDZhd1U1eXpxOUx2N0Q1aUJGZUxyVWtQOXJKSmsyeXFF?=
 =?utf-8?B?MmhMblFSTlg0a3YrRS9vK3Jwb1ZkYWVUY3JuUHpKTFFKZnQzZmVlMDFFK244?=
 =?utf-8?B?ZWJKc0JqY25xOEZHVHdQMUl1dlhRZjY4cHd6M2FiYTlkWW0xcDhPVWRQYStJ?=
 =?utf-8?B?ZzhaWWhaUFBVaU1jRlRRN1FkTU9SOVlubnB2UVVCRXN1dVVHNHhKVVBmNjNZ?=
 =?utf-8?B?blIwTUU4elRFK1dOMmNYK3RFZlY5NXREY2pjUldLTml4YVEwMGlGT21IUnFn?=
 =?utf-8?B?cXhaVGNZcHhUeVNVM2c0WmZPR0R1YU5nVjJmV0NSMEl4SmQydGtFaUM2QzNm?=
 =?utf-8?B?Q1BvRmV5a0NIemd5UE1zaWhxOS82Wmd6TW9OU2J5ejFZRlhjU1RodzEvM0JO?=
 =?utf-8?B?Uk9FZzNQTWxqMHlvTzYyWGwwbTdFWGxlcFowTkNRbjFhN3pId2ZoOSs3Rk95?=
 =?utf-8?B?aURobXhjZDJaM0dFa1RuNXpLUVJyTFJlYnZGREFkU0VNMWhBdWZYbzg0anpW?=
 =?utf-8?B?a2tCbkVMRlZKcEVPWjJQcXBieGs0ZUNaQ3JGZjgybE9uQWtWcGlUTnJHSlpO?=
 =?utf-8?B?aTRzSnRNOUFSMWw2VUlHeitaamZlb2FyVmtWczI2eWZBVytEcU9mZWVrNlhk?=
 =?utf-8?B?YVp1U0hUcTR1cFU4aDJoK0lESlFIZDgzdEp2dlpLV0psYVR5U29NN3pCZ000?=
 =?utf-8?B?VElVMWNvV3lXeUorVVJzR3hJc3d3akdTK1NzWCtQRktRQWZSdDZ1VUJsV29X?=
 =?utf-8?B?eWN4WUFvazFlU1MxN1pkdjdteitpVzBPSVNnVm5JTFRHTGxOZGZQaFNTTkpT?=
 =?utf-8?B?NUtMYktTem1CS2N2Z21JV3FrK1F0Vm1JcHZPbmRhYlF1L1pRcTlSdU4zNzdR?=
 =?utf-8?B?bnNjSE1iS3BPdlN0akVPSm1BL2MyOWoxeDBzYUVHVG1ZSlBHbGx0dmNFbysz?=
 =?utf-8?B?YXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DFA5C75482BACF4FAC60585225399247@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea84dbc-905e-41f0-b69c-08dc23533011
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2024 18:25:37.5352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IsNtZ8EZsbPvN3gxZgd5gSbpQe1+O7J2kZsdE1F/6ScWbX+Uw5iHeIzoBP3N7OFSORZu5a5NcTpgtN4bN5eLtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8232
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

T24gV2VkLCAyMDI0LTAxLTI0IGF0IDA4OjU1ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMjQvMDEvMjAyNCAwODoxOSwgSm9vbmFzIExhaHRpbmVuIHdyb3RlOg0KPiA+IEFkZCBy
ZXBvcnRpbmcgb2YgdGhlIEd1QyBzdWJtaXNzaW8vVkYgaW50ZXJmYWNlIHZlcnNpb24gdmlhIEdF
VFBBUkFNDQo+ID4gcHJvcGVydGllcy4gTWVzYSBpbnRlbmRzIHRvIHVzZSB0aGlzIGluZm9ybWF0
aW9uIHRvIGNoZWNrIGZvciBvbGQNCj4gPiBmaXJtd2FyZSB2ZXJzaW9ucyB3aXRoIGtub3duIGJ1
Z3MgYmVmb3JlIGVuYWJsaW5nIGZlYXR1cmVzIGxpa2UgYXN5bmMNCj4gPiBjb21wdXRlLg0KPiAN
Cj4gVGhlcmUgd2FzIA0KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
NTYwNzA0Lz9zZXJpZXM9MTI0NTkyJnJldj0xIA0KPiB3aGljaCBkb2VzIGV2ZXJ5dGhpbmcgaW4g
b25lIGdvIHNvIHdvdWxkIGJlIG15IHByZWZlcmVuY2UuDQoNCklNTyBKb29uYXMgdmVyc2lvbiBi
cmluZ3MgbGVzcyBidXJkZW4gdG8gYmUgbWFpbnRhaW5lZChubyBuZXcgc3RydWN0KS4NCkJ1dCBi
b3RoIHZlcnNpb25zIHdvcmtzLCBwbGVhc2UganVzdCBnZXQgaW50byBzb21lIGFncmVlbWVudCBz
byB3ZSBjYW4gbW92ZSB0aGlzIGZvcndhcmQuDQoNCj4gDQo+IER1cmluZyB0aGUgdGltZSBvZiB0
aGF0IHBhdGNoIHRoZXJlIHdhcyBkaXNjdXNzaW9uIHdoZXRoZXIgZmlybXdhcmUgDQo+IHZlcnNp
b24gb3Igc3VibWlzc2lvbiB2ZXJzaW9uIHdhcyBiZXR0ZXIuIEkgdmFndWVseSByZW1lbWJlciBz
b21lb25lIA0KPiByYWlzZWQgYW4gaXNzdWUgd2l0aCB0aGUgbGF0dGVyLiBBZGRpbmcgSm9obiBp
biBjYXNlIGhlIHJlbWVtYmVycy4NCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBLZW5uZXRoIEdy
YXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4NCj4gPiBDYzogSm9zZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+ID4gQ2M6IFNhZ2FyIEdodWdlIDxzYWdhci5naHVnZUBpbnRlbC5j
b20+DQo+ID4gQ2M6IFBhdWxvIFphbm9uaSA8cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPg0KPiA+
IENjOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPg0KPiA+IENjOiBS
b2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dldHBhcmFtLmMgfCAxMiArKysrKysrKysrKysNCj4gPiAgIGluY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaCAgICAgICAgICB8IDEzICsrKysrKysrKysrKysNCj4gPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMjUgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
dHBhcmFtLmMNCj4gPiBpbmRleCA1YzNmZWM2M2NiNGMxLi5mMTc2MzcyZGViYzU0IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYw0KPiA+IEBAIC0xMTMsNiArMTEz
LDE4IEBAIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsDQo+ID4gICAJCWlmICh2YWx1ZSA8IDApDQo+ID4gICAJCQlyZXR1cm4gdmFsdWU7
DQo+ID4gICAJCWJyZWFrOw0KPiA+ICsJY2FzZSBJOTE1X1BBUkFNX0dVQ19TVUJNSVNTSU9OX1ZF
UlNJT05fTUFKT1I6DQo+ID4gKwljYXNlIEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lP
Tl9NSU5PUjoNCj4gPiArCWNhc2UgSTkxNV9QQVJBTV9HVUNfU1VCTUlTU0lPTl9WRVJTSU9OX1BB
VENIOg0KPiA+ICsJCWlmICghaW50ZWxfdWNfdXNlc19ndWNfc3VibWlzc2lvbigmdG9fZ3QoaTkx
NSktPnVjKSkNCj4gPiArCQkJcmV0dXJuIC1FTk9ERVY7DQo+ID4gKwkJaWYgKHBhcmFtLT5wYXJh
bSA9PSBJOTE1X1BBUkFNX0dVQ19TVUJNSVNTSU9OX1ZFUlNJT05fTUFKT1IpDQo+ID4gKwkJCXZh
bHVlID0gdG9fZ3QoaTkxNSktPnVjLmd1Yy5zdWJtaXNzaW9uX3ZlcnNpb24ubWFqb3I7DQo+ID4g
KwkJZWxzZSBpZiAocGFyYW0tPnBhcmFtID09IEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVS
U0lPTl9NSU5PUikNCj4gPiArCQkJdmFsdWUgPSB0b19ndChpOTE1KS0+dWMuZ3VjLnN1Ym1pc3Np
b25fdmVyc2lvbi5taW5vcjsNCj4gPiArCQllbHNlDQo+ID4gKwkJCXZhbHVlID0gdG9fZ3QoaTkx
NSktPnVjLmd1Yy5zdWJtaXNzaW9uX3ZlcnNpb24ucGF0Y2g7DQo+ID4gKwkJYnJlYWs7DQo+ID4g
ICAJY2FzZSBJOTE1X1BBUkFNX01NQVBfR1RUX1ZFUlNJT046DQo+ID4gICAJCS8qIFRob3VnaCB3
ZSd2ZSBzdGFydGVkIG91ciBudW1iZXJpbmcgZnJvbSAxLCBhbmQgc28gY2xhc3MgYWxsDQo+ID4g
ICAJCSAqIGVhcmxpZXIgdmVyc2lvbnMgYXMgMCwgaW4gZWZmZWN0IHRoZWlyIHZhbHVlIGlzIHVu
ZGVmaW5lZCBhcw0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgNCj4gPiBpbmRleCBmZDRmOTU3NGQxNzdhLi43
ZDVhNDdmMTgyNTQyIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aA0KPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaA0KPiA+IEBAIC04MDYsNiAr
ODA2LDE5IEBAIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2lycV93YWl0IHsNCj4gPiAgICAqLw0K
PiA+ICAgI2RlZmluZSBJOTE1X1BBUkFNX1BYUF9TVEFUVVMJCSA1OA0KPiA+ICAgDQo+ID4gKy8q
DQo+ID4gKyAqIFF1ZXJ5IGZvciB0aGUgR3VDIHN1Ym1pc3Npb24vVkYgaW50ZXJmYWNlIHZlcnNp
b24gbnVtYmVyDQo+IA0KPiBXaGF0IGlzIHRoaXMgVkYgeW91IHNwZWFrIG9mPyA6Lw0KPiANCj4g
UmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiArICoNCj4gPiArICogLUVOT0RFViBpcyBy
ZXR1cm5lZCBpZiBHdUMgc3VibWlzc2lvbiBpcyBub3QgdXNlZA0KPiA+ICsgKg0KPiA+ICsgKiBP
biBzdWNjZXNzLCByZXR1cm5zIHRoZSByZXNwZWN0aXZlIEd1QyBzdWJtaXNzaW9uL1ZGIGludGVy
ZmFjZSBtYWpvciwNCj4gPiArICogbWlub3Igb3IgcGF0Y2ggdmVyc2lvbiBhcyBwZXIgdGhlIHJl
cXVlc3RlZCBwYXJhbWV0ZXIuDQo+ID4gKyAqDQo+ID4gKyAqLw0KPiA+ICsjZGVmaW5lIEk5MTVf
UEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9NQUpPUiA1OQ0KPiA+ICsjZGVmaW5lIEk5MTVf
UEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9NSU5PUiA2MA0KPiA+ICsjZGVmaW5lIEk5MTVf
UEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9QQVRDSCA2MQ0KPiA+ICsNCj4gPiAgIC8qIE11
c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFuZCB3ZWxsIGRvY3VtZW50ZWQgKi8NCj4g
PiAgIA0KPiA+ICAgLyoqDQoNCg==
