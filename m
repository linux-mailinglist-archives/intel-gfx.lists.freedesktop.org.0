Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5AE739DB3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 11:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E81C10E52B;
	Thu, 22 Jun 2023 09:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43CC10E533
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 09:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687427424; x=1718963424;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=fadRn8HhMjqLikL3pnNd7UFaGMZ2iIVz13j+1MjUBZs=;
 b=lAKxvXkZQY+EaEcXAqZxBBmLGo9b9to6WE9W3Cjk1oI5Wa8tnjdqhcVc
 p1qr5rkopoElo1cgirwkLJVTvPTGHxWBkZP7rTfXz+RvTwlITHTZ9ls2k
 Hs73Swk5LK2WkAS7lYedFXSxZhXo+H9SIdISYh8ped2I/2FSgJFKY4iHK
 RtK0RJf3a9wis87JpHHRmldPul2bL/jK+ZWn9AhuOB0xXMqDWx30WuZqb
 3+39zR3GHr/YHxgGgaiVzIUu3aZtvUtflhZMB3BuopwXXT3cNb5J0EMAv
 fefF7tbq+pSJWmEdBQyVDvB2JkVIHT+FinZI/HtocLvdZXKnbevukFVDr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="363865291"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="363865291"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 02:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="784844422"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="784844422"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 22 Jun 2023 02:50:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 02:50:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 02:50:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 02:50:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 02:50:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwaVqxynKbsY00+GiAMlUZD0u13N6EISeiEkZjOqzKBrkDtM6fkC5kfzBGxHrC7vlRHktoh0dCnUId7TQs1UHrEBnZWajRHSSKAJXUv/SjSeKRrZzILeiV5/nw33pAwBF2zHqrvf3VS9KVipN4PnwQBlQXwctueTenddKTqU6hS07h/uxqZ4op4yJD+WawtkzKH2g3i0uLdbERVA1WK0TdeZDk0AzUF5JwUi3KZcnUJtKWkPn3UIHRGElb4LfPVRXQa4atpPLn0vh6T7neD+kLNgDiLAGb19F1gUSn8sqcOc+6pZ+Rdh+6Om5jrYFkCEewS+xFnCFAGDXB9zTA66JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fadRn8HhMjqLikL3pnNd7UFaGMZ2iIVz13j+1MjUBZs=;
 b=STpRa/tTFP6+88Kubm4g9R+ee+hGC3F0KtMeVFfMPnGEdJmT4cY7xn/zZSxRdQ3+AqZEYkPqakV0RPYrF260TAYKudoraBL+D5MuG6Edc4pkR6D/j1Gl08dNu6xRBN4xD4cluhZAOOsxm4VqQo7hL9t/0suzMsunUKsIvFax+lH/5OALKNRyaGB+P4K3fOT4svLRfXsLFCFRByC0ktiACzBtQNI4dUaWD/otwDzfi7pyZqZhVqEESQJmNLVGpJA/Qg5+doTkohhGOFu65zyt4UWVuEdVxxiJp+HlBF4Rwcr85YWNtsg16Cgpg72ydBrIs157q/lA1m2ivFH5oxW/Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CY8PR11MB7921.namprd11.prod.outlook.com (2603:10b6:930:7d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 09:50:20 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%6]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 09:50:19 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some values
 in probe_gmdid_display()
Thread-Index: AQHZlGgImCpUUD3SOUiokhfcIc0Y/K+TmcEAgAMbVgA=
Date: Thu, 22 Jun 2023 09:50:19 +0000
Message-ID: <cd448c6eed0d0da17ed21f4c25be3ffb20028792.camel@intel.com>
References: <20230601090338.80284-1-luciano.coelho@intel.com>
 <SN7PR11MB675089A23F9DFA474BF19721E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB675089A23F9DFA474BF19721E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CY8PR11MB7921:EE_
x-ms-office365-filtering-correlation-id: e6379f0a-e64a-4435-7b83-08db730616e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Twv+mR/Z95J3GpIpUPvpXq7ny11Ik0FvPdIQsmBsyosHCjD4ON7UN17aM729SE1nneu659qZwCVUP0mNrMqg60Bj3BBmr0z37gJHFf+TlCrTHSk8JyXEwEkqg2db72GlQVWWVRjYEr4PBCilg67ltn5k+kRIE37iHFsuZBRvGk2c14FI4plfiC1S47WW554eIYG1RhpknyXjBQuTYrsT2nydboEPaoP57f27tqODSC1n+8z3FFKuTBnLG65zm0nXHu8RJOmmQFQJ5Pz5eaaq5CcH+Mvr0RyuLQpohQxbjrJynxD7v1RnpDhttnHpqVwD0nZqSXLlW4Xv4qgHc2EBpJQk1A9X3iwRubvDSqPXXaLAHGzM8LOWUSiEyqcD5ou1wdX6VPzF26kWuW+d4Oytte1jqzByoNQrKLQrV6Dn3A3ENMybE2kX0Mw9nRXlYWC2ck9r5uLekexDX8nvatfW8C8G5YCKGaHbjhsyuydf8u5kSFCzsF2WYN3W0mDJqwLVqaW9Xmnbohfl2nUyX9a2XvRs7GaGs1q8hkeJa3Ixtooh3RAXR9h5OK+k09PIcoi+J0b4MLO88OeRmVK3TWmCfbD50puzymX51G7jQ6Oyt63rHaJmbC/8EsJduGKA3HtG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199021)(38100700002)(122000001)(82960400001)(26005)(6512007)(6506007)(2616005)(83380400001)(186003)(2906002)(8936002)(8676002)(41300700001)(6486002)(71200400001)(38070700005)(478600001)(66446008)(76116006)(64756008)(66476007)(66556008)(66946007)(316002)(110136005)(86362001)(36756003)(91956017)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SW1idkNvUlpTd1FzYUNFTmRXak5ya1d0VkU2dm15NiszbUtLKy9kVFNzS2E2?=
 =?utf-8?B?ZWZaWDh3OWkvK3BiODJJRHRWR1N4UEtGNzloV1dRSHZzaVVmZEhDaDhVMDlx?=
 =?utf-8?B?d1JCdkg3WG5mUzhYR1ZHamM2WWFoMnhyRFRRdGNQc09NZnNxRjVpcW5LOW85?=
 =?utf-8?B?eUQ4MHNiVU11ZnprdU5FWUo1UEkyVEtSaGFsQWEzZXJ0Mk9aRlYzcElBcDRT?=
 =?utf-8?B?Z3NWREtEQkNVN0N1RGtuQjJvZEc0M2pmRUNNUHdkNk00Vy9IN01oa1VPeENs?=
 =?utf-8?B?V2RkZ1E5bFVqMmZxaDUvdnFIUytDeWtqcVVHdVpuZFNxclhZUWV1RUY3dUlk?=
 =?utf-8?B?ejhtdGRZRVdxZWxROE1iWHg2U2FnQzBiUTdSMFdGY0Q0YzR0NDAzRTlMMkZR?=
 =?utf-8?B?TnhBSDlocUFTWWRPR0tFQ1dOZHM1Y0hONDZ0Zjgyd0c0cHNqSGFEOXNlVkRJ?=
 =?utf-8?B?enVoZjZJWjhJV0p6SmRRV0xLQkVpRVNxK0FMeEVKVy9YSFF5elF4ZnpZeStH?=
 =?utf-8?B?cUVrdTczQzNEM3Rtd0E2UGs5WXJpc1pxdWtSNzVEQ1pJYTM3RFAwbFIvM1FC?=
 =?utf-8?B?ZHZjak54V0k1M2hnVmtsQzBKZS9mM014N01wMnRXOVc4eTJFQWNJV0JOSmZP?=
 =?utf-8?B?cW5raUFzTjlzTmN6KzZpMnQ4ejJubWhmWWY3YXlQMmlMT2lLanBsVE4zLzR3?=
 =?utf-8?B?bkcvT0xtcGlwRHdLS0x1VDRnYUJIUzZmU1FBSmhDYWlGL01CU0NTRnVXN01F?=
 =?utf-8?B?alFBN09LK20zZDdpVks2NGNZdTl5Z0gvTENDTHdnZjJJU0Q1MXVlcndIdXA3?=
 =?utf-8?B?bU83MmEybFRCSHhIZmpSU0ZpeXBDaktRNS9kcDduT0pyajJNcmlMWGFDNytC?=
 =?utf-8?B?SmVPUUprUWRLTDRmUVk3emU5ZkFmUWxtb0lwemRUSGZuOVYzd00zQ1cxN2tG?=
 =?utf-8?B?UGdNZEdzakdWSTlDTDRaREc1WmlleGVlVkJFcWR0UzBHWEV1bkRWWmp2K1Fu?=
 =?utf-8?B?M0lhTC90QVEzTTBITVBrNmhzTzdkTEM4WjdpVmtLMkdzZTNFN09aaGwxS3lZ?=
 =?utf-8?B?Q2IxQzh3S3gzeTYrMW5TR29jZDBzSzBuTUlSZ1RmWWR3Rmg5RS93azVSYzlz?=
 =?utf-8?B?N2RxelF6enJYNE5hZENKenRkS1BqMTVaY2dJTHJKQk8wRkdhdmFPNkZ0RVNa?=
 =?utf-8?B?ZzlLUW5rczJuSS9uSzlFUzExT050WDBoVFh0UDNSTGs2OWgyVGpyNEd3Nktz?=
 =?utf-8?B?YzJQQWhHVEx3Z0tvQ2RJcEsxWGlpRFZtLzlna29QWm9WNXFnQVNibzlPRUo4?=
 =?utf-8?B?SjZkUVlEalhaTDRDWGd1WWN1RzVaMDFRSVNCWHB3OU9NYVJIWmdtNzNyMUNh?=
 =?utf-8?B?U2VJTjVMNk5VR2NZL0tqanExelJtOFRNSXA5U1pYa1FsU1pLcEVTbTVzT2pM?=
 =?utf-8?B?bUZpcHhpMjRuTmxQcG1pQVdFRSt0Z21PWGhrcE9la2lvSnBSSmdCaGZLVGk5?=
 =?utf-8?B?bUxaSVpJMG1DSnUrdi85ckV5SC9uakNqbXZFY2lsSDgrelhTQjJJZE1DNENm?=
 =?utf-8?B?Rld6MXhySTZUMURqb1JWWGVSUXhVWk1OSGpnTVltak1nbmNsdEpnditjbzdX?=
 =?utf-8?B?R1h2SjBzbTBlV3NzWDNSM3ZGUWthc2NPTnZLVnR4QlNMZlJRRjlPWU5VMDYz?=
 =?utf-8?B?b3pmcXZtT0V4UkJocDVVQi9weUw1ekZoTDNCdTAvYTNhOFF4b1hhVUU0N3Ns?=
 =?utf-8?B?SWJVcmgvclprOXBoQUs5aDdTUkhzWmk0VzJYTEd6WkNqeTdxbnJ4YXg3c0F5?=
 =?utf-8?B?VEJ1UGNJaXQxeGpyL1pjYTAzcXR5dlpyclNlZW92Z1RCVVRUV3E5cmdwdnVx?=
 =?utf-8?B?UVJ1NU9PV1JRTFlFMS9hRi9FQUplKzZFUTZoajg5bndSaERPbCtsdmg0MnBV?=
 =?utf-8?B?MUVGaFFrcE9RWVpSWSsrOUFuNUdidlNkeW5mbU5id2pJYVQwQlhBekt0VzRQ?=
 =?utf-8?B?SmZVVTVYRC9TcUhjaTZEWFAyTmEvYkNNR25aSGRYeDhsRzdSQUViOUdvb296?=
 =?utf-8?B?NjZDMEErcjI3eERQMXdwemU1RTdnV3J3SzNpaUZQWGFuNS9WNFF3Sm5Wai9P?=
 =?utf-8?B?UWdwYlg2VWdTd200ZmNKNmQ1TXU5Tzl6cWlVbEg5MXZ5YTVINkNyR3R0dTh6?=
 =?utf-8?B?b2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B350534907818E468133F5C897CB17DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6379f0a-e64a-4435-7b83-08db730616e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 09:50:19.3934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ah5SfTJdk4WnGu1Ee5uGp7ntaJdEzotNCvXdaQi7EIQa3jhJgH6jwynBINsmDMyMFFIS4vjhucvmwydEp9Ky9tCg/1bp/530xQolPiV2ZBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some
 values in probe_gmdid_display()
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

T24gVHVlLCAyMDIzLTA2LTIwIGF0IDEwOjMwICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBXaGVuIGludGVsX2Rpc3BsYXlfZGV2aWNlX3Byb2JlKCkgKGFuZCwgc3Vic2VxdWVudGx5
LA0KPiA+IHByb2JlX2dtZGlkX2Rpc3BsYXkoKSkgcmV0dXJucywgdGhlIGNhbGxlciBleHBlY3Rz
IHZlciwgcmVsIGFuZA0KPiA+IHN0ZXAgdG8gYmUNCj4gPiBpbml0aWFsaXplZC4gIFNpbmNlIHRo
ZXJlJ3Mgbm8gd2F5IHRvIGNoZWNrIHRoYXQgdGhlcmUgd2FzIGENCj4gPiBmYWlsdXJlIGFuZA0K
PiA+IG5vX2Rpc3BsYXkgd2FzIHJldHVybmVkIHdpdGhvdXQgc29tZSBmdXJ0aGVyIHJlZmFjdG9y
aW5nLCBwcmUtDQo+ID4gaW5pdGlsaWF6ZSBhbGwNCj4gPiB0aGVzZSB2YWx1ZXMgdG8gemVybyB0
byBrZWVwIGl0IHNpbXBsZSBhbmQgc2FmZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNh
IENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiANCj4gTG9va3Mgb2theSB0byBt
ZSBqdXN0IGEgc21hbGwgc3VnZ2VzdGlvbi9xdWVzdGlvbiBiZWxvdy4NCj4gDQo+ID4gLS0tDQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMg
fCA5ICsrKysrKysrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiA+
IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGV2aWNlLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuYw0KPiA+IGluZGV4IDQ2NGRmMTc2NGE4Ni4uZmI2MzU0ZTllNzA0IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZXZpY2UuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuYw0KPiA+IEBAIC03MzEsNiArNzMxLDE1IEBAIHByb2JlX2dtZGlkX2Rp
c3BsYXkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqaTkxNSwgdTE2ICp2ZXIsIHUxNiAq
cmVsLCB1MTYgKnN0ZXANCj4gPiDCoAl1MzIgdmFsOw0KPiA+IMKgCWludCBpOw0KPiA+IA0KPiA+
ICsJLyogVGhlIGNhbGxlciBleHBlY3RzIHRvIHZlciwgcmVsIGFuZCBzdGVwIHRvIGJlDQo+ID4g
aW5pdGlhbGl6ZWQNCj4gPiArCSAqIGhlcmUsIGFuZCB0aGVyZSdzIG5vIGdvb2Qgd2F5IHRvIGNo
ZWNrIHdoZW4gdGhlcmUgd2FzIGENCj4gPiArCSAqIGZhaWx1cmUgYW5kIG5vX2Rpc3BsYXkgd2Fz
IHJldHVybmVkLiAgU28gaW5pdGlhbGl6ZSBhbGwNCj4gPiB0aGVzZQ0KPiA+ICsJICogdmFsdWVz
IGhlcmUgemVybywgdG8gYmUgc3VyZS4NCj4gPiArCSAqLw0KPiA+ICsJKnZlciA9IDA7DQo+ID4g
KwkqcmVsID0gMDsNCj4gPiArCSpzdGVwID0gMDsNCj4gPiArDQo+IA0KPiBGcm9tIHdoYXQgSSBj
YW4gc2VlIHRoaXMgaXMgb25seSBjYWxsZWQgZnJvbQ0KPiBpbnRlbF9kaXNwbGF5X2RldmljZV9w
cm9iZSgpIHdoaWNoIGlzIGluIHR1cm4NCj4gY2FsbGVkIGZyb20gaW50ZWxfZGV2aWNlX2luZm9f
ZHJpdmVyX2NyZWF0ZSgpIHdoZXJlIHRoZSBhYm92ZQ0KPiB2YXJpYWJsZXMgYXJlIGRlZmluZWQg
bWF5YmUgDQo+IHdlIGluaXRpYWxpemUgdGhlc2UgdmFsdWVzIHRoZXJlIGl0c2VsZi4NCg0KVGhh
bmtzIGZvciB0aGUgcmV2aWV3IQ0KDQpJIHRob3VnaHQgYWJvdXQgaW5pdGlhbGl6aW5nIHRoZSB2
YXJpYWJsZXMgb24gdGhlIGNhbGxlciBzaWRlLCBidXQNCnJlY2tvbmVkIHRoYXQgaXQgd291bGQg
YmUgbW9yZSBpbnR1aXRpdmUgdG8gaW5pdGlhbGl6ZSB0aGVtIGluIHRoZQ0KcHJvYmVfZ21kaWRf
ZGlzcGxheSgpIGZ1bmN0aW9uIGluc3RlYWQsIGJlY2F1c2UgdGhlIGNhbGxlciBleHBlY3RzDQp0
aG9zZSB2YWx1ZXMgdG8gYmUgc2V0IGluIHN1Y2Nlc3NmdWwgY2FzZXMgYW5kIHRoZXJlJ3Mgbm8g
d2F5IGZvciBpdCB0bw0Ka25vdyB3aGV0aGVyIHRoZXJlIHdhcyBhIGZhaWx1cmUgb3Igbm90IChi
ZWNhdXNlIHdlIHJldHVybiBhIHBvaW50ZXIgdG8NCmxvY2FsIG5vX2Rpc3BsYXkgc3RydWN0dXJl
IHRoYXQgdGhlIGNhbGxlciBkb2Vzbid0IGtub3cgYWJvdXQpLg0KDQpPYnZpb3VzbHkgd2l0aCB0
aGUgY3VycmVudCBjb2RlIGluIHRoZSBjYWxsZXIsIHRoYXQgZG9lc24ndCBtYWtlIG11Y2gNCmRp
ZmZlcmVuY2UsIGJ1dCBJIHRob3VnaHQgaXQgd2FzIGNsZWFuZXIgYXMgSSBkaWQuDQoNCkJ1dCBJ
J20gb2theSB0byBjaGFuZ2UgaXQgYW5kIGluaXRpYWxpemUgdGhlbSBhdCB0aGUgY2FsbGVyLCBz
byBqdXN0DQpsZXQgbWUga25vdyBpZiB5b3Ugd2FudCB0aGF0Lg0KDQotLQ0KQ2hlZXJzLA0KTHVj
YS4NCg==
