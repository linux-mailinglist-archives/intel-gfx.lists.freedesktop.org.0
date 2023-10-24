Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B62E7D49E1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 10:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 054C110E2F0;
	Tue, 24 Oct 2023 08:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DD210E2F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 08:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698135745; x=1729671745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OJrPFBLz2fj56LigFBqyESDurUEVVK/b25JXjTw2KKA=;
 b=jfayvcDFk9+RuCZUX+qLWmctsZiDagVCO+VTkz/3J2hCAMn1CNov1bA6
 n7sIFBXzgKc+JJfFG9hGmebRdaOdJm7b4iTb9UvcxeZ9rhR58tVs4nTEE
 Ke27DOzNZH2687rj4d+Tgd+bgZnYoqfXHvsc60wjJlecRIOw82z9oB6L/
 iQojPqa/XQtWfefr5dreKHkm4VMSP2D4qWYpm/8j8id1bs5C9uQAxaaJW
 VndpLIFm3I2/Zgu2ac9UGxFh2XJa+IOI4YqN00rl9mr4e4Qau+a0luGwm
 Fs3nEIKAjPaGuCAUmkJRb409defejk6d9qcNw6qf1Pg8/LXEFONgs9bfS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366355062"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="366355062"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="874992986"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="874992986"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 01:22:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 01:22:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 01:22:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 01:22:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 01:22:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iufJBA9tYZW3nhEW1FutNSb9s44Zg8/geSBozRi8wts6OcSKYYDXr1YXuEWSC6p8I3sRtUH2I0RDuu2ZYttDcXSQhqw05Rq/X66Z1FXcPtKbncmoaRaiV4EpdQ74QxZtGdjsrSwj/Q8nwyOoC8a0AZPGU8ARs37/P8MCN5uS/9tbORRoeKvsWdr1pK2UGUqg7ifEHeiW7Ebigj0Eb5+er7a8BE5LjM+922W+MqFV+Q852HR6A1cURpkSpPhWoywg9Mw0GGyoG5QPEuyK2L6JSlKwo5RN7jFNivRl0uXa4OHD3lejUhbomKx7jcsf1/lSS4fSFOM96zOxNBkE5CvLuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJrPFBLz2fj56LigFBqyESDurUEVVK/b25JXjTw2KKA=;
 b=V3ijDhAu5X+QuDm8OSjklggsJ6ih+dRfDGDF3iVpjG6id3ZZIZ8QYpi1n9c67zP6jGRoScl4Fv7VqfCgufCYoBzye8WgiA43PUSbPGTyOaxk9sEbVyVTUmZr+Jlhn5cqQyoKNcDKnnePB55D6/6BN9dWs8HIAlTVAhxdpqYFmQK5P5itINXHC9ikL6vUCbekY4242Lm0rL/a+m9YQvwPDy7SpbBIy5ne5SFPing2meEh2B8BQnWothztXuOlSKAfy/kn4t0LGjhw5lWdXFAOdXwNk9Dydz20bZ4RbLWC6chzmI++0VF8wDA26nPV0lJhwhATlS8RqL/rQGSnIWC6xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6111.namprd11.prod.outlook.com (2603:10b6:208:3cd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.29; Tue, 24 Oct
 2023 08:22:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6907.028; Tue, 24 Oct 2023
 08:22:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 21/24] drm/i915/display: Move
 verbose_state_checks under display
Thread-Index: AQHaACJq9chEcHq6DUK5UyumHmU7B7BXckQAgAEz4AA=
Date: Tue, 24 Oct 2023 08:22:21 +0000
Message-ID: <f68c3d2669013b16f3bf3263dacbc13f267d2572.camel@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-22-jouni.hogander@intel.com>
 <daf1bc85a60793a55c5c9371778bb4e17319e8da.camel@coelho.fi>
In-Reply-To: <daf1bc85a60793a55c5c9371778bb4e17319e8da.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6111:EE_
x-ms-office365-filtering-correlation-id: 346e9d39-bad1-4e2c-8377-08dbd46a583b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0HjHfdj0fyJhyABGg/SrmkyqQa7VIENzegjPnb15eu5n/z9C045s4z/4A7+5krla11nWfeOc5dlFcKvYVbi3/k42gc7MYstpMewkeZfW7p8vhvD1MrlJPEFM2dF4E56bLcrrzKLyhtcwRw+zTqGTcCVIahl+65ZdPyfVIfjNEw8CBwVPrFkXsoGoukhQeBL/7PBweVhGNp3HeRlKJqElADmzbJR/k4fisyeGhcGxbTPzDO1Qh6iSMXc/T/Ub/8zH8uSRKmDo3nnGbV6XkCVQB2fEQ9DgUi0u2taU6tncBO5unpOAoLWSLmo0DLvldE3bT3W995PTkkGL6RDneBCot1lopynJHJwNq0GKvnM9JTiZaupOjH6qNmoLO/RCd0jJI2rEHx6cP6oLG3QiSp3MzHZdWoZTqO/Rx8JXDmpZKFa0K9E+WI2qqGMdw2hMujylO2W7W9ShGV4lWLpJPxKKbbxtFOLgoHDnXJ2PV1pQxLZwOp39huksWQerXDPGvhGtogQv8PfdQRVZz4UO1dQZF88zava0m+LdNHb30Fe4O+6MIPXD+GVkS2wc/YAQsfOMj2/q8GVl0EILrno8UazBmSn2AmhelBpTHfHjli7cgJk4OwHQfqqHvtATnimFLfcV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(376002)(346002)(396003)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(38070700009)(26005)(4001150100001)(38100700002)(2906002)(41300700001)(86362001)(5660300002)(36756003)(4326008)(8936002)(8676002)(2616005)(6506007)(66446008)(478600001)(107886003)(110136005)(71200400001)(91956017)(76116006)(66476007)(82960400001)(66946007)(66556008)(122000001)(316002)(64756008)(6486002)(66574015)(83380400001)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YlB0dlNyMGJISlY1OUYxZTJ5VGxLSkFFUEpIRk9LM2J0Rm9oSUF5NUFBQlIx?=
 =?utf-8?B?WkJiWjNPMCs4cHlZOXJMQ0tLbDZxRExFSll5YjVlZGEvRXRjdU9rZG9QYnZq?=
 =?utf-8?B?NklSYVJ1U0tVelBvK2ppek0xOHUzZnk0Q2QzdzhyeVdDT0xpMlZYT3N0Rmc1?=
 =?utf-8?B?bTRNSnNIVXBPUm5pbVo2WFc1aGFSMDhMOWNRQkJkcHhidDhnMEZqNUxEQ3F0?=
 =?utf-8?B?eDJpaCtqcFNkY3N4YkNNb1NOR1FJeml4MXFUTUpTOWhYQ01YNVdacDVnc251?=
 =?utf-8?B?S1FrYStDQVFFYTRJQytLVDdMNjZFZWtHeml3bzc3N1FMejlBQXFtdnd3cUFk?=
 =?utf-8?B?MFNxbXNYTjk3MGRSYUV1VlRTR1g5bWo4bWlnb3J3azFUdmo3cklQU3cxUVVy?=
 =?utf-8?B?dmoxUEZ3VlpQUUhlMThQdEVreVp0MUYvd3JyTHNwUW5NTEpoOUlkeDJMV1Rj?=
 =?utf-8?B?MGpSZ1R4N0RuWFBkbVowSFN5dDdqME9kcjAxbU0vZVRUenNtRGJleTZWYkc4?=
 =?utf-8?B?TzVEUlZDT0pvTTlPa2xYYVZneVVNbm1LbGVWKzV1WGdwRkF3TXFsQ09kaUdG?=
 =?utf-8?B?Rk5EK3FHRGNsZ2VGUk9YWDBQOEJwK0J3QkkybkhiRmlpTlJUaFkwYWdNVmpS?=
 =?utf-8?B?MkRWRnhiWVJkc25sOC9WdENCUm10dWl2dHlNc1dRTmtLSy9zekE0L0FhYlBE?=
 =?utf-8?B?TDJOazZUeUVUQ21ESTM2NEc2em04dGFibnlSdVRKM0svZkVrNWQ2cXh2aWVu?=
 =?utf-8?B?L3hwTG4wdjhZdWFxM0t1ZDh3akNTUktjaWVrUTl6cStRUTVURmlpdldsRndq?=
 =?utf-8?B?TEVNcEhoejJvaGQ2SFpCUm5hNDAvZi9ycDA3c01MVDc3K2JNN1ZjVDE1T1dr?=
 =?utf-8?B?K1BRRDlYZ0haMUV0Y3htaWkyWjJiNHpnempYV2tnUnliWFZSUDcxNHBxWGVF?=
 =?utf-8?B?c2pFTnhiV2MvK3B5dW04eTlxamZsN1hKUXF6SjRHUjhFM0twV0Z4ajdZbWJX?=
 =?utf-8?B?bHc4R1JrSDhrcy83OGp5a1U4M1kyTTlPUnVoWXZURTJkeG4zRzFlUHJaMkxM?=
 =?utf-8?B?THRpOXp5cnFUSTVWUDdrTkRlR09qNGZQcE8rTm51OWFWeFo3REFxMjc2RnBB?=
 =?utf-8?B?WU5nc210a2gxSDIrWTJqUUlqcHRVZ2l6N3p1eW9PU0xtYUNRVlhRQnFGU3gz?=
 =?utf-8?B?QlJhTlEyV0dnb3NnMjFFT0RYRi9ZUzczcll1dDJwQ0pLZ1RIbDgxaWk5RldL?=
 =?utf-8?B?QzV6UHFQc2dBZHRzcEZKNkNzRGJ3YmNRNzM0ZHJGQlVjYTkvRGl1bGIvUGx5?=
 =?utf-8?B?dWpIckt3UXBuOHNqRlhPOTJmK1UwZzRRdllyRWw2T3BWSVE5MzlQUUlCSmVO?=
 =?utf-8?B?MHYxRng5KzB2SmdyUEh3dmxEOThqdVZBTHMrb044ODJZKzk4RnAwRngzdDZt?=
 =?utf-8?B?bFRYeXlJQk9Hci93cExCUndFWW55aHd4THVkSHRyQW95SCt3U01pVyttUjc4?=
 =?utf-8?B?Sng2RXpSdEtPTEFnZXdIdEd3MTAyN0I3b1VFWW4xMitvZStvQnpYWHVqUGs5?=
 =?utf-8?B?UjZhU3Y0NTNMbDdrY1RiTVErNzAwSXpUR3pLR3haZUdSWVhyb1lZdjhleGJq?=
 =?utf-8?B?cHg5ZWZnUWgvMElxSjhIYllENi9UcjZtQjB5b054NXBJR0JOaEpYOHJzR0R3?=
 =?utf-8?B?THNjMlFOc0x6cXFqNEtFOExVUW03MFJMekk0NWVtKzJXNjRlSVdBVGwwcTlO?=
 =?utf-8?B?SnRQY21UcGJyV1BLOTZlTExJMHllQTdFSjdTcHVKRW4zQVpJYkhqN2d1T2xW?=
 =?utf-8?B?bWQ4bzYrMllZQWgxbGMvellvY3hRbFJGYThzbVpWVGxnSUFxZWNtSGVmQ2Ns?=
 =?utf-8?B?WW9DenlKZVZVUm1weUxnU1BTaDhWSVpxYTJzSUlCSC9GVmdmRDQ4Y011TVl5?=
 =?utf-8?B?cXpJcWpxL2x6bmNWejAvY3R4MFFhM1Z2SEJvcFdKTkJBM1V2TnppRk5wMTdr?=
 =?utf-8?B?aElUQlc1WmFWeEM2QlBYZERPQ2tLL1dtT0FYR1NIR2ppbXpXclNjVlZTNno4?=
 =?utf-8?B?dHo2ZkFSUE11YzF6ZzFrUVVSWnpLcmpaRllTOEQ5eGZ5MlkzOFhoMjkySXhY?=
 =?utf-8?B?TUFpc3RKTldyYWhHTUh2elk3aEh3bnVZR3lIcHpsWlpFSUpXajhod1FzZlJE?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0AA759490EB3D946A84AD807D23B0A65@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 346e9d39-bad1-4e2c-8377-08dbd46a583b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 08:22:21.4517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FypfQpLnT9hDnSyq66VaYwJezISJIJL6lYkpNG2upfsErMWFhTdz/zafB2k47gkyH/PTJonK0CLV7yDeKydPn+Db639z9XcK6X209OnlGkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 21/24] drm/i915/display: Move
 verbose_state_checks under display
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTEwLTIzIGF0IDE3OjAwICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToKPiBP
biBNb24sIDIwMjMtMTAtMTYgYXQgMTQ6MTYgKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToK
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5owqDCoMKgwqDCoMKgwqAgfCAyICstCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuYyB8IDMgKysrCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuaCB8IDEgKwo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDMgLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSAtCj4gPiDCoDUgZmlsZXMgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiA+IGluZGV4IGJhMzU0OGY5
NzY4ZC4uYmM5NWZiMzc3Mzg2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gPiBAQCAtNTUyLDcgKzU1Miw3IEBAIGJvb2wgYXNzZXJ0
X3BvcnRfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUKPiA+ICppOTE1LCBlbnVtIHBvcnQg
cG9ydCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9kZXZpY2UgKmRybSA9ICYoX19p
OTE1KS0KPiA+ID5kcm07wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgXAo+ID4gwqDCoMKgwqDCoMKgwqDCoGludCBfX3JldF93YXJuX29uID0KPiA+ICEhKGNv
bmRpdGlvbik7wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgXAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmCj4gPiAodW5saWtlbHkoX19yZXRf
d2Fybl9vbikpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgXAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmICghZHJtX1dBUk4oZHJtLCBfX2k5MTUtCj4gPiA+cGFyYW1zLnZlcmJvc2Vfc3RhdGVf
Y2hlY2tzLCBmb3JtYXQpKSBcCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KCFkcm1fV0FSTihkcm0sIF9faTkxNS0KPiA+ID5kaXNwbGF5LnBhcmFtcy52ZXJib3NlX3N0YXRl
X2NoZWNrcywgZm9ybWF0KSkgXAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZHJtX2Vycihkcm0sCj4gPiBmb3JtYXQpO8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFwKPiA+IMKgwqDCoMKgwqDCoMKg
wqB1bmxpa2VseShfX3JldF93YXJuX29uKTvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiDCoMKgwqDCoMKgXAo+
ID4gwqB9KQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wYXJhbXMuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcGFyYW1zLmMKPiA+IGluZGV4IDA2ZTY4YzdmZWMxYy4uZTg2NzY2NjM5Mzk2
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3BhcmFtcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcGFyYW1zLmMKPiA+IEBAIC04Nyw2ICs4Nyw5IEBACj4gPiBpbnRlbF9kaXNwbGF5
X3BhcmFtX25hbWVkX3Vuc2FmZShmb3JjZV9yZXNldF9tb2Rlc2V0X3Rlc3QsIGJvb2wsCj4gPiAw
NDAwLAo+ID4gwqBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkKGRpc2FibGVfZGlzcGxheSwgYm9v
bCwgMDQwMCwKPiA+IMKgwqDCoMKgwqDCoMKgwqAiRGlzYWJsZSBkaXNwbGF5IChkZWZhdWx0OiBm
YWxzZSkiKTsKPiA+IMKgCj4gPiAraW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZCh2ZXJib3NlX3N0
YXRlX2NoZWNrcywgYm9vbCwgMDQwMCwKPiA+ICvCoMKgwqDCoMKgwqDCoCJFbmFibGUgdmVyYm9z
ZSBsb2dzIChpZS4gV0FSTl9PTigpKSBpbiBjYXNlIG9mIHVuZXhwZWN0ZWQKPiA+IGh3IHN0YXRl
IGNvbmRpdGlvbnMuIik7Cj4gPiArCj4gPiDCoGludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWRfdW5z
YWZlKGVuYWJsZV9mYmMsIGludCwgMDQwMCwKPiA+IMKgwqDCoMKgwqDCoMKgwqAiRW5hYmxlIGZy
YW1lIGJ1ZmZlciBjb21wcmVzc2lvbiBmb3IgcG93ZXIgc2F2aW5ncyAiCj4gPiDCoMKgwqDCoMKg
wqDCoMKgIihkZWZhdWx0OiAtMSAodXNlIHBlci1jaGlwIGRlZmF1bHQpKSIpOwo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMu
aAo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1z
LmgKPiA+IGluZGV4IDYwZDljM2Q1OWZlNC4uYjM1NDQzZjUxMzc1IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5oCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmgK
PiA+IEBAIC0zOSw2ICszOSw3IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwo+ID4gwqDCoMKg
wqDCoMKgwqDCoHBhcmFtKGJvb2wsIGxvYWRfZGV0ZWN0X3Rlc3QsIGZhbHNlLCAwNjAwKSBcCj4g
PiDCoMKgwqDCoMKgwqDCoMKgcGFyYW0oYm9vbCwgZm9yY2VfcmVzZXRfbW9kZXNldF90ZXN0LCBm
YWxzZSwgMDYwMCkgXAo+ID4gwqDCoMKgwqDCoMKgwqDCoHBhcmFtKGJvb2wsIGRpc2FibGVfZGlz
cGxheSwgZmFsc2UsIDA0MDApIFwKPiA+ICvCoMKgwqDCoMKgwqDCoHBhcmFtKGJvb2wsIHZlcmJv
c2Vfc3RhdGVfY2hlY2tzLCB0cnVlLCAwKSBcCj4gCj4gV2h5IGlzIHRoaXMgb25lIDA/IFdoeSBj
YW4ndCB3ZSBldmVuIHJlYWQgaXQ/CgpJIGZvdW5kIHRoaXMgY29tbWVudCBpbiBvbGRlciBjb21t
aXQgbWVzc2FnZSB3cml0dGVuIGJ5IEphbmkgTmlrdWxhOgoKIjAgbW9kZSB3aWxsIGJ5cGFzcyBk
ZWJ1Z2ZzIGNyZWF0aW9uLiBVc2UgaXQgZm9yIHZlcmJvc2Vfc3RhdGVfY2hlY2tzCndoaWNoIHdp
bGwgbmVlZCBzcGVjaWFsIGF0dGVudGlvbiBpbiBmb2xsb3ctdXAgd29yay4iCgpCUiwKCkpvdW5p
IEjDtmdhbmRlcgoKPiAKPiAKPiAtLQo+IENoZWVycywKPiBMdWNhLgoK
