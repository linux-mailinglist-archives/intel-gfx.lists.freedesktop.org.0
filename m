Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EB1831583
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 10:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CF310E749;
	Thu, 18 Jan 2024 09:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Thu, 18 Jan 2024 09:10:34 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A53B10E749
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 09:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705569035; x=1737105035;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=JkXMYxjSLON9lm1fEKeSsPoRJH/VxeWHS0K0Xo42oVY=;
 b=TzHHATAcjGr0AjThmYFGLoOCqvlQsxuusbvzevYjHYdCD7TjJsKa+gcx
 XEs605c4d2Ok6R/9d2A8Oaqcf5P8oYPkBocf0SBToZ0Ju+0sz/ga1YE0B
 Ez/jIeEN64+QYF1WLq/MD+0Roso22gsYWJ3rBvkoQqqatXj+l+MM/hngE
 cV6yK9tCjzCuh3dDPak132F5nv5IEdeQ8i8Xv2WY2DzJRxFHJt9INe2Bd
 uXe/n36aCpgbdYLQkCzQcD0ABLHb3IPf4iZF7UXk/ZHYW1rdyFXwXrtt0
 hUWZaULH3acdT/duT4X676piTw545KqpCUQVVSL+IY6tPHOjNm2WPFUtV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="295624"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="295624"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 01:03:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="928067250"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="928067250"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 01:03:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 01:03:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 01:03:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 01:03:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/m/v9+Rcq2ymh9iWNzPfWJZ3B6lirXbR2+MpU5FZiU53wBPoPDCMlsexiJgGcYZNGfaSlv3x0h5/8whMmnSO8k/i31mZkbSWJ69NJAXrYKzBNViAxfwPKLrlfm1CI9JnWPLPpSgxGZOqZu8CmMLb/49EiB/S2Aw9KPmgx1OCHWpGDm3IN+lim6CMJPxx0FdHHv2+qEMSwS2xRGItXLiNmfR5q1EZww6r8n3K5Mdx4jb4jpzegJzPOEd4l4asInEWPUFGSuIZZ+dwvwoJsyDwReUnl5Btw9DqFAIKBFC8Lw7vDOEf/3pphuG7iLwOmk6F4b8CYycvaPWpLQgZRf8wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JkXMYxjSLON9lm1fEKeSsPoRJH/VxeWHS0K0Xo42oVY=;
 b=IJ6SLDC4oH6/+pVr5dAbweE3130RlazVtVbsAWpqLUt5T5Pjw3oWlUiRi5XUnQI+S8v9B5GLaLk/R6f6qERjVYwufvcH+uzpu238g3SgPdQ5j1Ai1XfB93lqjTkbun1L/5B4XIWT47NAqTRKDaJ1APip6gsfKQU0pnAr2xLb6mZ5gwjByC8htwH9RGo+lnB2BimdZ/w5vBYqZQfLTAMOVGC/ftB7N2+srMghnhs3T/4vlbZlpYhKmmgFxA5QNjzVgMnHkB02zoZfgLwvH1N0lp1T84DcMzEYtkTCzDTaQHLFG1UoDJAAxDpd+d/+Ey6kVTlxCOZ+DYbqeCt5gPysyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Thu, 18 Jan
 2024 09:03:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 09:03:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Topic: [PATCH v2 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Index: AQHaSL2Pc3RIISX5AUqgjPI1Loy2/LDfSOQA
Date: Thu, 18 Jan 2024 09:03:23 +0000
Message-ID: <5ac03ece7969bd350c96343cc9dc1297ebefba6b.camel@intel.com>
References: <20231213102519.13500-9-ville.syrjala@linux.intel.com>
 <20240116204927.23499-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116204927.23499-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5033:EE_
x-ms-office365-filtering-correlation-id: 04916b95-e5b1-469c-5ef8-08dc18045362
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qFml79F/uAujupoiVZhEvtMZjAOyMNNLWxcteLliC5xaogyQ668QOfvfq4odNWrxo6Is+n3HJhfXB7ioFQgh2Z5VifgnMMzxEnXgW+KostpxTUJ1Mit8Zg/R8BiD9qebBdG7ZL8ZNOUlwY3vdgDp83IOlnwVvZzWdZBOhVbQCak18NqVXkXujLnExmBN6MVMbwFHK8z/d94uNPH41WZvJZHZ/oXW/j2V72ixJhNN3U6Xl3tzIkIxny/PhEOSHQH6Xs/NxlI1m8CzQOuI4aD0x034QK/Vla+Ha/9EnZMYSQbnI1lSc84880Yz+uHD5gmCUiKB/zTkwBAToVhfkBrEps9sAue9CXWog4L44pU6uwaourfAG0OOEqjdaYLJs4dhguhODoh+/tWYMUiHsEII3hIfk/XtT3ujcnOQcAm+GHnOUljoI6w2nzlqwu+WHGiA1FzsmG2r/GQEB/xWzHPc5dA7BQFBptKa+aAZ4JB8kiCP7cvaI3Bp/zbB65jJH1g4PydpryYZ1tdKs2BJV7W/T98cqyH2spGJARs2BAInhf4XMLrzzlrOhX+8rlztcUb4vZliV7dUy5KsgElw6ExRcjJTT/WPYwb5brHubcnB0gkwgK8gRBlhuXofn+4UO6Lm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(376002)(346002)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(41300700001)(122000001)(38100700002)(83380400001)(38070700009)(86362001)(66446008)(36756003)(6486002)(82960400001)(76116006)(91956017)(110136005)(316002)(66476007)(66556008)(66946007)(64756008)(2906002)(8676002)(71200400001)(8936002)(5660300002)(26005)(2616005)(66574015)(15650500001)(6506007)(6512007)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2RHKzRMWGZGam9saEZLUytLS0JwdXVwUDhTTjF3UXBIclk3Mk9tQjFwZlNs?=
 =?utf-8?B?ZGJxbTZUOXp2a1RWL1ZNZlhqbE5mT0tjeDZ0b1RRUlhKRjFpcmgzdnFZQnU3?=
 =?utf-8?B?MUxMNWhaaFBUcm5EYlBXMDNreTBIMGU5dXRwWVppSWtEOE10RndhZ1k3N3Z1?=
 =?utf-8?B?UHRaRDVYU3B3ZXlCdUNlaG4rY0xyc2RQak1zbWtCV0s2U0RvalUzZXFoYzFq?=
 =?utf-8?B?WUgvOGFYblhKVEg2UE5QTmpGbTY3Y3loSWNJdi9TbGkxVGlJRng4UGhScHVF?=
 =?utf-8?B?OWZPVmg2ZE4yRTlJL3lraFdSSis1N1AwTUhKMzlsQW50NmRRS1QzYkliYzBx?=
 =?utf-8?B?S3FvWmt6dVMxSU93dVFmdmhwVWMwQ3V5VnZIUmdTT09aSC9Vb0M0aG5DWlJ6?=
 =?utf-8?B?aTVZVXRrZlB3YVZwZGJ6am1ScjZNMW9wamZYcHZTQWpyWTBBUWZENUhuU2Er?=
 =?utf-8?B?RjN1amlzejNDWGFURUx0c2ROc0ZVYzhWcEJTQWExS3Z5S2VHakRFSC9TT3hm?=
 =?utf-8?B?R3Q4V0d5ZXJiZ2ltNi9KK1Z2dU00N0kwYzBYYVpEK2RacFpFOE1WcC9nOUVF?=
 =?utf-8?B?QS9YdVZYQ2FHcHo4K1ZuWTNjS3oyZnJCQlI3MVRZZUJES252dElFL3pSMUY1?=
 =?utf-8?B?b0JVSldyNldWU1A0ckVGM2xOSVR0b0FtVUxTamdIdE1TTTBoM3RoS1lkZUFa?=
 =?utf-8?B?ZTZZWVhXN3B3K0taL1ZveVA2NFFScDFwbzZMNEZudDdSMnFqMlVwSWV1cDBw?=
 =?utf-8?B?dDJ2RmF6ZXpBbXhna3YxTXhOTUJwcW1scVJPWU90ZlQydldJQjQyU3BhSUJU?=
 =?utf-8?B?MVZVYnVzL2FacU9MT3ZBU2lwUjBDNlFYV0thZHl0aitTemN3QlNQK3RaSFU4?=
 =?utf-8?B?ZmR1OVRackdPZnhYciswUFVwZ2V0ZGk5WjJJNHAyZzRPbWdYNWk5ckF6U0hY?=
 =?utf-8?B?M0xlc0VOZWZGUGFWek54SWN3TmZIeStwVE9kZVJxd1kwbGhVSlcwSFltMTlo?=
 =?utf-8?B?TU1jTHo0dWlBTzBSK2F5NVZRTlNVZFlKK1p5SjFFRGo0U2xTVnRqUzBQK0M0?=
 =?utf-8?B?UGh3eXlTdXpJR0lnMFljdXcxd0RMV0x2QlhqTGR1b3dOTXhuRjJUNmFyQ1gw?=
 =?utf-8?B?SnpUTGM2OUxzNDh3S1NlSDFJZkxKbnBzei9wR2MzTU5xd3ZTNDZnelQ1UVRE?=
 =?utf-8?B?LzE3OU9nR0l2b2pnRjlpVmY0ZUZhM0RjRHlCaitNV0w0MWNkUW5WWjVQdE1a?=
 =?utf-8?B?L3htZUJvVDJ0UmhCUGhiK3YreWhzNmw0alFSejJXVms3ZzAyK1htVkhKVlZ5?=
 =?utf-8?B?V2J0YVlkZjNTTGw5amhtNXBDcnpYemlsMlo5cExkWmtCcEJpSjVodHlrRytE?=
 =?utf-8?B?OHFZTTZVOXh0cDZRVm5hT2NNMlNMUksvemFXWlgvT0JqbnJXOE5MQ2xUbUtH?=
 =?utf-8?B?alhSdUFMY3A0Qm5NRURySmhIajQyNDJjc3JickduZE1rcmM0clU3a1hLbUU2?=
 =?utf-8?B?dk9UZTUzRC9tWVFqUHNRUjVYUEJBdGo0L3JlblRCN3NkL1lNMW53akt3TzBZ?=
 =?utf-8?B?aW9mOHpjWDhVYUh6SUYzeFlQUGVVTC91ZHpDdDhhUmFPU1l1OU40VVdJYkp2?=
 =?utf-8?B?c0F2eFQ4b1VoOGFmc3R6YnpsaHF6ajhINXRDU25VcFk1bFZFdEpDaytMRTIv?=
 =?utf-8?B?SEI2V3h3ckw3dzEwVjZwYWhkam1namhVSkZ2TGlFbTE1bHRHT0k1K2tCN3J2?=
 =?utf-8?B?Q1M3ZC9laFJsNllieFZlMXBRMnlkM2E4djJDTW9WZEhYOFhYZHdoZFVkekZB?=
 =?utf-8?B?eTRUMDZBZTQ3RFJ3ZHhTcGduaXdiL0FYa2o0cnYxdW01Q2xrVlJFa3NHc0cw?=
 =?utf-8?B?Z1htREVyTjdadTVPaWN6QmExNHl0OGlFRzlFMkowMjdQL2dodEw3U3E3Q3VN?=
 =?utf-8?B?WjI5VElva056Nmx2Q2NvZyt1RnQvWDhYMWtyRllNNitmSG9JRHJVcmVLTURz?=
 =?utf-8?B?TEt2Y1lZL0pNQk1xWEFhclVaaGlaRWFEMlNuTG9meEdGc2dYekRKcGpWYmlz?=
 =?utf-8?B?R0RqNHlRRGlmYVVJVlpmKzl1cHNya2ttWkE2bTNRdEUwU2hmSmhPeWlZRE9O?=
 =?utf-8?B?SnJZNFBlWFc1ZU1pRTVyYnlrZmkxQzZzMmdHenJOUklYc3hwbGNkcVF5Znls?=
 =?utf-8?B?RUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4EF82774BB2A4E4B88BB5FB4477C302A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04916b95-e5b1-469c-5ef8-08dc18045362
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2024 09:03:23.7281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6PjupFOFCNyX85Ed/k0+Ek+zV0rAlogbVIjI7oTwsozgzafJNk4AtcD56n+3vC4PS51WGM49lLWfgVkECmfg+mf1rYhwyAIDqickjpMh4rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
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

T24gVHVlLCAyMDI0LTAxLTE2IGF0IDIyOjQ5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gT3VyIGxlZ2FjeSBjdXJzb3IgdXBkYXRlcyBhcmUgYWN0dWFsbHkgbWFpbGJveCB1cGRh
dGVzLg0KPiBJZS4gdGhlIGhhcmR3YXJlIGxhdGNoZXMgdGhpbmdzIG9uY2UgcGVyIGZyYW1lIG9u
IHN0YXJ0IG9mDQo+IHZibGFuaywgYnV0IHdlIGlzc3VlIGFuIG51bWJlciBvZiB1cGRhdGVzIHBl
ciBmcmFtZSwNCj4gd2l0aG91Z2ggYW55IGF0dGVtcHQgdG8gc3luY2hyb25pemUgYWdhaW5zdCB0
aGUgdmJsYW5rDQo+IGluIHNvZnR3YXJlLiBTbyBpbiB0aGVvcnkgb25seSB0aGUgbGFzdCB1cGRh
dGUgaXNzdWVkDQo+IGR1cmluZyB0aGUgZnJhbWUgd2lsbCBsYXRjaCwgYW5kIHRoZSBwcmV2aW91
cyBvbmVzIGFyZQ0KPiBkaXNjYXJkZWQuDQo+IA0KPiBIb3dldmVyIHRoaXMgY2FuIGxlYWQgdG8g
cHJvYmxlbXMgd2l0aCBtYWludGFpbmluZyB0aGUNCj4gZ2d0dC9pb21tdSBtYXBwaW5ncyBhcyB3
ZSBoYXZlIG5vIGlkZWEgd2hpY2ggdXBkYXRlcw0KPiB3aWxsIGFjdHVhbGx5IGxhdGNoLg0KPiAN
Cj4gVGhlIHByb2JsZW0gaXMgZXhhY2VyYmF0ZWQgYnkgdGhlIGhhcmR3YXJlJ3MgYW5ub3lpbmcg
ZGlzYXJtaW5nDQo+IGJlaGF2aW91cjsgYW55IG5vbi1hcm1pbmcgcmVnaXN0ZXIgd3JpdGUgd2ls
bCBkaXNhcm0gYW4gYWxyZWFkeQ0KPiBhcm1lZCB1cGRhdGUsIG9ubHkgdG8gYmUgcmVhcm1lZCBs
YXRlciBieSB0aGUgYXJtaW5nIHJlZ2lzdGVyDQo+IChDVVJCQVNFIGluIGNhc2Ugb2YgY3Vyc29y
cykuIElmIGEgZGlzYXJtaW5nIHdyaXRlIGhhcHBlbnMNCj4ganVzdCBiZWZvcmUgdGhlIHN0YXJ0
IG9mIHZibGFuaywgYW5kIHRoZSBhcm1pbmcgd3JpdGUgaGFwcGVucw0KPiBhZnRlciBzdGFydCBv
ZiB2Ymxhbmsgd2UgaGF2ZSBlZmZlY3RpdmVseSBwcmV2ZW50ZWQgdGhlIGhhcmR3YXJlDQo+IGZy
b20gbGF0Y2hpbmcgYW55dGhpbmcuIEFuZCBpZiB3ZSBtYW5hZ2UgdG8gc3RyYWRkbGUgbXVsdGlw
bGUNCj4gc2VxdWVudGlhbCB2Ymxhbmsgc3RhcnRzIGluIHRoaXMgbWFubmVyIHdlIGVmZmVjdGl2
ZWx5IHByZXZlbnQNCj4gdGhlIGhhcmR3YXJlIGZyb20gbGF0Y2hpbmcgYW55IG5ldyByZWdpc3Rl
cnMgZm9yIGFuIGFyYml0cmFyeQ0KPiBhbW91bnQgb2YgdGltZS4gVGhpcyBwcm92aWRlcyBtb3Jl
IHRpbWUgZm9yIHRoZSAocG90ZW50aWFsbHkNCj4gc3RpbGwgaW4gdXNlIGJ5IHRoZSBoYXJkd2Fy
ZSkgZ3R0L2lvbW11IG1hcHBpbmdzIHRvIGJlIHRvcm4NCj4gZG93bi4NCj4gDQo+IEEgcGFydGlh
bCBzb2x1dGlvbiwgb2YgY291cnNlLCBpcyB0byB1c2UgdmJsYW5rIGV2YXNpb24gdG8NCj4gYXZv
aWQgdGhlIHJlZ2lzdGVyIHdyaXRlcyBmcm9tIHNwcmVhZGluZyBvbiBib3RoIHNpZGVzIG9mDQo+
IHRoZSBzdGFydCBvZiB2YmxhbmsuDQo+IA0KPiBJJ3ZlIHByZXZpb3VzbHkgaGlnaGxpZ2h0ZWQg
dGhpcyBwcm9ibGVtIGFzIGEgZ2VuZXJhbCBpc3N1ZQ0KPiBhZmZlY3RpbmcgbWFpbGJveCB1cGRh
dGVzLiBJIGV2ZW4gYWRkZWQgc29tZSBub3RlcyB0byB0aGUNCj4ge2k5eHgsc2tsfV9jcnRjX3Bs
YW5lc191cGRhdGVfYXJtKCkgdG8gcmVtaW5kIHVzIHRoYXQgdGhlIG5vYXJtDQo+IGFuZCBhcm0g
cGhhc2VzIGJvdGggbmVlZCB0byBwdWxsZWQgaW50byB0aGUgdmJsYW5rIGV2YXNpb24NCj4gY3Jp
dGljYWwgc2VjdGlvbiBpZiB3ZSBhY3R1YWxseSBkZWNpZGVkIHRvIGltcGxlbWVudCBtYWlsYm94
DQo+IHVwZGF0ZXMgaW4gZ2VuZXJhbC4gQnV0IGFzIEkgbmV2ZXIgaW1wZWxlbWVudGVkIHRoZSBu
b2FybSthcm0NCj4gc3BsaXQgZm9yIGN1cnNvcnMgd2UgZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91
dCB0aGF0IGZvciB0aGUNCj4gbW9tZW50Lg0KPiANCj4gV2UndmUgYmVlbiBsdWNreSBlbm91Z2gg
c28gZmFyIHRoYXQgdGhpcyBoYXNuJ3QgcmVhbGx5IGNhdXNlZA0KPiBwcm9ibGVtcy4gT25lIHRo
aW5nIHRoYXQgZG9lcyBoZWxwIGlzIHRoYXQgWG9yZyBnZW5lcmFsbHkNCj4gc3RpY2tzIHRvIHRo
ZSBzYW1lIGN1cnNvciBCTy4gQnV0IGlndCBzZWVtcyBwcmV0dHkgZ29vZCBhdA0KPiBoaXR0aW5n
IHRoaXMgb24gTVRMIG5vdywgc28gYXBwYXJlbnRseSB3ZSBoYXZlIHRvIHN0YXJ0DQo+IHRoaW5r
aW5nIGFib3V0IHRoaXMuDQo+IA0KPiB2MjogV2FpdCBmb3IgUFNSIGV4aXQgdG8gYXZvaWQgdGhl
IHZibGFuayBldmFzaW9uIHRpbWVvdXQgKDFtcykNCj4gwqDCoMKgIHRyaXBwaW5nIGR1ZSB0byBQ
U1IgZXhpdCBsYXRlbmN5ICh+NW1zIHR5cGljYWxseSkNCj4gDQo+IFJldmlld2VkLWJ5OiBVbWEg
U2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpJJ20gc29ycnkgZm9y
IHRob3NlIHR3byBlbXB0eSBlbWFpbHMgSSBzZW50IGVhcmxpZXIuIFNvbWUgcHJvYmxlbSB3aXRo
DQpteSBtYWlsIGNsaWVudC4gQWZ0ZXIgcmVzdGFydGluZyB0aGUgY2xpZW50IGl0IHNlZW1zIHRv
IHdvcmsgYWdhaW46DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5jIHwgMzEgKysrKysrKysrKysrKysrKy0tLQ0KPiAtLQ0KPiDCoDEgZmls
ZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+IGluZGV4IGVjZmY5
MGUyMzNmMC4uZjhiMzM5OTlkNDNmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gQEAgLTIyLDYgKzIyLDcgQEANCj4gwqAjaW5jbHVkZSAi
aW50ZWxfZnJvbnRidWZmZXIuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+IMKgI2lu
Y2x1ZGUgImludGVsX3Bzcl9yZWdzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfdmJsYW5rLmgiDQo+
IMKgI2luY2x1ZGUgInNrbF93YXRlcm1hcmsuaCINCj4gwqANCj4gwqAjaW5jbHVkZSAiZ2VtL2k5
MTVfZ2VtX29iamVjdC5oIg0KPiBAQCAtNjY1LDEyICs2NjYsMTQgQEAgaW50ZWxfbGVnYWN5X2N1
cnNvcl91cGRhdGUoc3RydWN0IGRybV9wbGFuZQ0KPiAqX3BsYW5lLA0KPiDCoHsNCj4gwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShfcGxh
bmUpOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKF9jcnRjKTsNCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSA9DQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmUtPmJhc2Uuc3RhdGUp
Ow0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVf
c3RhdGU7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSA9DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG9faW50ZWxfY3J0Y19z
dGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsNCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVs
X3ZibGFua19ldmFkZV9jdHggZXZhZGU7DQo+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiDC
oA0KPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4gQEAgLTc2MywxMyArNzY2LDI1IEBAIGludGVsX2xl
Z2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUNCj4gKl9wbGFuZSwNCj4gwqDCoMKg
wqDCoMKgwqDCoCAqLw0KPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5l
cyA9IG5ld19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOw0KPiDCoA0KPiAtwqDCoMKgwqDCoMKg
wqAvKg0KPiAtwqDCoMKgwqDCoMKgwqAgKiBUZWNobmljYWxseSB3ZSBzaG91bGQgZG8gYSB2Ymxh
bmsgZXZhc2lvbiBoZXJlIHRvIG1ha2UNCj4gLcKgwqDCoMKgwqDCoMKgICogc3VyZSBhbGwgdGhl
IGN1cnNvciByZWdpc3RlcnMgdXBkYXRlIG9uIHRoZSBzYW1lIGZyYW1lLg0KPiAtwqDCoMKgwqDC
oMKgwqAgKiBGb3Igbm93IGp1c3QgbWFrZSBzdXJlIHRoZSByZWdpc3RlciB3cml0ZXMgaGFwcGVu
IGFzDQo+IC3CoMKgwqDCoMKgwqDCoCAqIHF1aWNrbHkgYXMgcG9zc2libGUgdG8gbWluaW1pemUg
dGhlIHJhY2Ugd2luZG93Lg0KPiAtwqDCoMKgwqDCoMKgwqAgKi8NCj4gLcKgwqDCoMKgwqDCoMKg
bG9jYWxfaXJxX2Rpc2FibGUoKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfdmJsYW5rX2V2YWRl
X2luaXQoY3J0Y19zdGF0ZSwgY3J0Y19zdGF0ZSwgJmV2YWRlKTsNCj4gKw0KPiArwqDCoMKgwqDC
oMKgwqBpbnRlbF9wc3JfbG9jayhjcnRjX3N0YXRlKTsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBp
ZiAoIWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIGRybV9jcnRjX3ZibGFua19nZXQoJmNydGMtDQo+
ID5iYXNlKSkpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qDQo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUT0RPOiBtYXliZSBjaGVjayBpZiB3ZSdyZSBz
dGlsbCBpbiBQU1INCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGFuZCBza2lw
IHRoZSB2YmxhbmsgZXZhc2lvbiBlbnRpcmVseT8NCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqLw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX3dh
aXRfZm9yX2lkbGVfbG9ja2VkKGNydGNfc3RhdGUpOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBsb2NhbF9pcnFfZGlzYWJsZSgpOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpbnRlbF92YmxhbmtfZXZhZGUoJmV2YWRlKTsNCj4gKw0KPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2NydGNfdmJsYW5rX3B1dCgmY3J0Yy0+YmFz
ZSk7DQo+ICvCoMKgwqDCoMKgwqDCoH0gZWxzZSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBsb2NhbF9pcnFfZGlzYWJsZSgpOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+IMKgDQo+
IMKgwqDCoMKgwqDCoMKgwqBpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wbGFuZV91cGRhdGVfbm9hcm0o
cGxhbmUsIGNydGNfc3RhdGUsDQo+IG5ld19wbGFuZV9zdGF0ZSk7DQo+IEBAIC03ODAsNiArNzk1
LDggQEAgaW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUoc3RydWN0IGRybV9wbGFuZQ0KPiAqX3Bs
YW5lLA0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgbG9jYWxfaXJxX2VuYWJsZSgpOw0KPiDCoA0K
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfdW5sb2NrKGNydGNfc3RhdGUpOw0KPiArDQo+IMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9wbGFuZV91bnBpbl9mYihvbGRfcGxhbmVfc3RhdGUpOw0KPiDC
oA0KPiDCoG91dF9mcmVlOg0KDQo=
