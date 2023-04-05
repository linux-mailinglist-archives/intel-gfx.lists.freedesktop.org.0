Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C5C6D74CD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC34810E839;
	Wed,  5 Apr 2023 06:56:22 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CC210E2DD
 for <Intel-GFX@lists.freedesktop.org>; Wed,  5 Apr 2023 06:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680677780; x=1712213780;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+KXsFBk9khPvFH6iUjspkEPwRRnuKcyJoqHx8dmTv5o=;
 b=WS6AV/JE5788jCtw4RCZjXY9QTm7g0iBt9icMLpt3+IIL+sHzTqU8RZL
 KyhFrFUV4bRq8fR02j6M46GrLJ+wJqp5EKuTqgEIOJAgGra/s7vCZjIlT
 ruDOZ1xyBPZNlmqOwhWxUL5Gsh+dP+McDG+OW1SwOznyZm0FMb2i5tNDs
 s5gd3k86JFOmgCaKEKO5koJxiTgu1WDEhkmZq7scdOkB2us3dJexKVBCm
 vY5m1zu91lYh/ToaYaOlGlgo841sYE5fbCxcD5DoW+cTJfQ6bYIAzlVo/
 kgVfJdVXcrRyDtwKFxJ2hdSEI5bAIBd/0iOoWUr9D3vj0B75LVRI/1Omt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="339879843"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="339879843"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:56:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="680181464"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="680181464"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 04 Apr 2023 23:56:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 23:56:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 23:56:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 23:56:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 23:56:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjw2Bn1KPfea5BCHklV+1Gh6Du7fe591kY3gTyZkn7znbFmXN2a55XN+pr13VKnINhsMWuUL5rk+cdYvwEbviy/EMBBDBihKVwOeMHqpEHQfpxV9/dZ01tFD3c1fMRPQnU+mQthvXrLO2EznKgPKqoYisJgC4YHcdCQawTOJpCsagAoIUZEVFgN/Hdqr3moTMNxWhtiI3+E+84iRRftgjvKnYAfvpN8IUUAjU5EgYTPdw/8MkjeYbRZZLM4zAuvzrb6gBLsp71bpbE3hKiYunxEeEh3Jb2HiiJMVXYAiTGCdF9T7CZ2JFzJnSYqQx9J6A330JDZsLFa0MApfiV6I3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+KXsFBk9khPvFH6iUjspkEPwRRnuKcyJoqHx8dmTv5o=;
 b=OJdw0Ed1iFuXfqTW/o+Nh987Q1BzDLIwdB3LmS9vIjLxiaZn7aSRh3EsrpG+V8P6a2nkRXhSvz1h52x7K2TdpB9b3lE6sVnjFmojs+Nvfllwcy56bVgRnICLAAc0ILZHkqB4GLNrHE/hP//JXXpka5x5V7+s90Fn6VUX6fqFZxZy50cdUde0UK5wPYg6GV3HH9LZH1EZPMNvUNJndDqBqI5L9PJ5MmwBSl9mm4QyNPgk6oZMYNWicNtReFLgaOICAfEfarDMFCYD74Lt69OB0hu8pAE6GHd7cW9A7FbdOj8aZPtpT1RU9uWlB6hE3NZmpVTxPHICE8iu+YmtBPZCLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by BL1PR11MB5239.namprd11.prod.outlook.com (2603:10b6:208:31a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.28; Wed, 5 Apr
 2023 06:56:11 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::8bac:7778:ee91:d0eb]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::8bac:7778:ee91:d0eb%6]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 06:56:11 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
Thread-Index: AQHZWJQlqDegZ6/OFUKTEZR5tzfWf67+sQ2AgB2w19A=
Date: Wed, 5 Apr 2023 06:56:11 +0000
Message-ID: <SJ1PR11MB620468D7F5DCD777F71D04E981909@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
 <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
In-Reply-To: <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|BL1PR11MB5239:EE_
x-ms-office365-filtering-correlation-id: e4fe56d9-7dd4-41d0-804f-08db35a2d745
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Xp5QAAR63wMuwRulUP6/dlim5FirWklUgCJxjF83cd6ezdngIJP0fjEk5Yl20JvyL3oiuTK8hQ3j5Y10cCWGec18NSjHhtJsRgkFhUmwKMLeZk4XXHkhJijrtHZcx4KU+r02ux0Yty8xH83JIBqPMXR56auJJh+fQvJjLsNisnELAT1vbqDEKyhnG8zRa0ffo/Zkx7YsJiSGeFuyT04bDtkBenxIiMyIM5KN68EiHtKvrRwtmzisFDZ2weki/AymWN2hct0N6nYJiClJ+1K9lrwQQg+zr8cI/PK/hejs4adwRTBI0cwsS+f1GhJM3+0WwBg15PigzFnl/20zvT4VBjNIff7YuNd+lTsgAyXm/3uNwbt4Tqj2OwXpJ05kMypnMZ/aMXjyfsBrJRTna9p5Rlx+dfmPVeRuMm3ZOlHbRguDmfUANe+rhIReOMIOIZZgEDcSjkfaO7CNy0CkCMuTzs1ayxqaunWTkD/RyBOMExcBRtg0NAAzsKt7hBsIFsoqYOFOOGY4dT9W5J3y8oWb09d0obQW0zes9SSsLnf/NnAseR0M4wB3LT7FkeRlynpSjjt52iqaWnPkuRhzSGREB5ihMXT+M0sYaWuN47bp+1iTLmSZaFCahEL9PaCt9xg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(39860400002)(366004)(136003)(451199021)(8676002)(316002)(110136005)(66446008)(66556008)(66476007)(64756008)(66946007)(76116006)(55016003)(478600001)(71200400001)(7696005)(8936002)(41300700001)(52536014)(2906002)(5660300002)(82960400001)(33656002)(122000001)(86362001)(38070700005)(38100700002)(26005)(186003)(6506007)(9686003)(83380400001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eStDNGNUL3FBUUNjNTlEMHVqZkllQzVlemZmTFNzV3BQZ1l3TGswem1KYUNG?=
 =?utf-8?B?WkVvWWlJQ0s5VEc4ZGhDT1pVNW41YVpvMjFYcmdjYjVoeWdieWpubVhaTnpy?=
 =?utf-8?B?Ny9mUVVXYmhlZXpPUmhlR2JwNmxJeDNDWTNNQTdaNnlXWldKaG5ydnAxdTFl?=
 =?utf-8?B?aDN6ZXY4dk5mWFpXT1RsM2JBbUJvbENBaW9JMzlHWDZ0NG54L0NoTXljSy8z?=
 =?utf-8?B?WTNVTnZTYlpFb29yZVFPRGI2Z3lwamJKNHhiejVvUHA1SmdBaEVlejJHRjUw?=
 =?utf-8?B?ZlRhUXd6TXliazJvK21wY3lWRDc2dXg5QnZFWHRNV2k4WDd5Y2dURnkyTWxG?=
 =?utf-8?B?NCsxTksxU2kvQkhPQ2FOc20zaEgvVlo4YTdDWVpTS3BJY2pwLzV6elVPd0Fz?=
 =?utf-8?B?ano0Z2xoVUF0TFhnZWZOblVoVzhSUEsrMUlrejBJYllVeWhFL0hiRWkwME0v?=
 =?utf-8?B?cUczQ2EwMDF4N0dYQ2I1RnVqU0EwalFsT2VLUFVoYWFJRjQrR3JYV08vMGI3?=
 =?utf-8?B?blN0dHpoRWNpQkxsN0FlenczTFRxZkttSVdSbG0yVEFtSjV4RFlIcXZ6eWcr?=
 =?utf-8?B?ZjRseHV1ajRuT3locCtsc1BweFhTajhCZTEra3paTUlTTlVjWVIrTDM4REYy?=
 =?utf-8?B?M1h1YXRYYlRydkowS3pCYXRhOFZnRnBHVjYzUUhxQlY2RFQrbHNxR2h1dWFh?=
 =?utf-8?B?UDI2K3JpWGJYK3hBczhldG85VHc0K1NnM3Q2ZTRXdDNZOFdQZDFBVUg4MXl2?=
 =?utf-8?B?ZE5kWFRSUEN5OUw5ODJSRk01bXFZQXVBYTNtdGE3NGtKT2UwcjhtcHhhSDk4?=
 =?utf-8?B?cEhvYlV5WjEvZVNOY2pXRS9CMEZUSGRWbkNWd291OEdUbDJuMjFrT0FPaXJD?=
 =?utf-8?B?UlY4NElLREdFZG1pVkpRL3JjcHNYTmt3K2gvOEhQQjRuSjMzZmlZYklzeW9M?=
 =?utf-8?B?b1dRWjF0V1ZxRkZMSkhKODZZa2p2Z0hmSlZ6bDZzcENBSmdUT3ZGNDJRWEtR?=
 =?utf-8?B?ekt0K1J0RUI4REhTTXJ6dW5sMWF3aTFEUVVPQkcxalRnQ3dlQkdNek11dXo0?=
 =?utf-8?B?OWlZU1pGVU4zM0s1czFBaVlFblhTdVBaN3NtR2NyYXBkMUF5cTBMM2o0bm1p?=
 =?utf-8?B?UHdIN0ZpU2NZNHhSSDV1bnVUZWloK3BTU1cyYXVXOFRnTHo4NXVFdEZzT2hr?=
 =?utf-8?B?L0xaMjdiZktZRlB5SnNkVUdiczc1cWllcmJ2VUwzSEFFSnZpdmpVcnFzdzdZ?=
 =?utf-8?B?dVZIcnYvZ2RjMzRxcXJXbDNZUHM1YXQ1NkJmNzRuOEIxTWVWUmduMnFuZnZN?=
 =?utf-8?B?SWZ4aTV4emxyWFdoWmUxWWR2VmtxOWJEUktLbWRURko1MmJMWHJwa2hWMXZG?=
 =?utf-8?B?SHRQV3Fya1BVN0ltNHl5bXZYaWRmeTV0cUsxelRHcGJadDlhSTNyOHJ0M3c5?=
 =?utf-8?B?U0Q3YmJ2aTFHTzNVeS80bFVTSUxyaS9OcW5zY08xN2JpbVdxNEQrTVlHcThW?=
 =?utf-8?B?eVN0RGFrTityMktRdVdWeEwzWXVob3E3L1NjSzBpeGNHWFJObUkxcytqd0cr?=
 =?utf-8?B?QlU2amIzUkZqTVM4c0lHM2RLMWRxT0pYRDc3NDQ3MUpFbU9NaHZiRkoxVks2?=
 =?utf-8?B?SmhrR3YrK1N5VTlOMnlyVFpWeHMyZmhORExxTHJMbzk2dkZvWlU5UFpvT0Er?=
 =?utf-8?B?YVpIcUw1VkVyZjhYRHJlMFpsNXNLRFRDTndQbDg0bkRBTHpEOG90SnRuRTRE?=
 =?utf-8?B?M0c3U29wS3daMUwwRm5ZVElxdjdpOU81TDFDQXNBRVhXTWpyTDNSRE5CeEta?=
 =?utf-8?B?b2FicXhqdzhKUzJwZWx0bjNuWXNaeGNHNkJhckZXd00zNWtIK0tiMmZPYmlw?=
 =?utf-8?B?c0lWcXhrOEJTc3hDa2RyUkdHZGRyUHVKVW8vditlNDU3NzFmWkNqamErdzZt?=
 =?utf-8?B?QU5WS1Z6dGNxbWFVZTFON2doWWIzakdRZ0l1NjQvbDFnWTQvV2M4RWQ3ZVBX?=
 =?utf-8?B?UE1sOWQzaWlJVGFacnpxU1dBSEFYLzFKaXFxdTg1ejRSdEoyOFFsYjl3Ukh4?=
 =?utf-8?B?ZkVLT2FMT0diK21LOW82NHkzQ0NPMnRyUmZwVEhHMFEzOXhQeE80UVFwN1RR?=
 =?utf-8?Q?qRnT47cZ3MFG6TYRUUToXqUkK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4fe56d9-7dd4-41d0-804f-08db35a2d745
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 06:56:11.5200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G97dMke7f/uogEttcu7WrwSkuPLpa5N21PmfZ+5ewCjTL+bIWnkROQv53naKB599BhpwLnSb8bZE9d/tazP2zWh4N8jd13xB8LmnHn7969U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5239
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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

U29ycnkgZm9yIGxhdGUgcmVzcG9uc2UuIElubGluZSByZXNwb25zZXMgYmVsb3csDQoNCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBNYXJjaCAxNywgMjAyMyAy
OjQ2IFBNDQo+IFRvOiBVcGFkaHlheSwgVGVqYXMgPHRlamFzLnVwYWRoeWF5QGludGVsLmNvbT47
IEludGVsLQ0KPiBHRlhATGlzdHMuRnJlZURlc2t0b3AuT3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2d0OiBDb25zaWRlciBtdWx0aS1ndCBhdCBhbGwgcGxh
Y2VzDQo+IA0KPiANCj4gT24gMTcvMDMvMjAyMyAwNTo1MiwgVGVqYXMgVXBhZGh5YXkgd3JvdGU6
DQo+ID4gSW4gb3JkZXIgdG8gbWFrZSBpZ3RfbGl2ZV90ZXN0IHdvcmsgaW4gcHJvcGVyIHdheSwg
d2UgbmVlZCB0byBjb25zaWRlcg0KPiA+IG11bHRpLWd0IGluIGFsbCB0ZXN0cyB3aGVyZSBpZ3Rf
bGl2ZV90ZXN0IGlzIHVzZWQgYXMgd2VsbCBhcyBhdCBvdGhlcg0KPiA+IHJhbmRvbSBwbGFjZXMg
d2hlcmUgbXVsdGktZ3Qgc2hvdWxkIGJlIGNvbnNpZGVyZWQuDQo+IA0KPiBEZXNjcmlwdGlvbiBp
cyBhIGJpdCB2YWd1ZSAtIGlzIHRoaXMgZm9yIE1ldGVvcmxha2UgaW4gZ2VuZXJhbD8gV2hhdCBp
cyB0aGUNCj4gInByb3BlciB3YXkiIGllIHdoYXQgaXMgYnJva2VuPw0KPiANCj4gPiBDYzogQW5k
aSBTaHl0aSA8YW5kaS5zaHl0aUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
VGVqYXMgVXBhZGh5YXkgPHRlamFzLnVwYWRoeWF5QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDEzICsrLS0N
Cj4gPiAgIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDI4
ICsrKystLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNl
ci5jICAgfCAgMiArLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZXhl
Y2xpc3RzLmMgIHwgNjggKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jIHwgMzYgKysrKystLS0tLQ0KPiA+ICAgLi4u
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5jICAgIHwgMTAgKy0tDQo+ID4g
ICAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbGl2ZV90ZXN0LmggICAgfCAgNCArLQ0K
PiA+ICAgNyBmaWxlcyBjaGFuZ2VkLCA4MSBpbnNlcnRpb25zKCspLCA4MCBkZWxldGlvbnMoLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jDQo+ID4gaW5kZXggOWRjZTI5NTdiNGU1Li4yODliNzVhYzM5ZTEgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMN
Cj4gPiBAQCAtMjQ0OSw5ICsyNDQ5LDkgQEAgc3RhdGljIGludCBlYl9zdWJtaXQoc3RydWN0IGk5
MTVfZXhlY2J1ZmZlciAqZWIpDQo+ID4gICAJcmV0dXJuIGVycjsNCj4gPiAgIH0NCj4gPg0KPiA+
IC1zdGF0aWMgaW50IG51bV92Y3NfZW5naW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiArc3RhdGljIGludCBudW1fdmNzX2VuZ2luZXMoc3RydWN0IGludGVsX2d0ICpndCkN
Cj4gPiAgIHsNCj4gPiAtCXJldHVybiBod2VpZ2h0X2xvbmcoVkRCT1hfTUFTSyh0b19ndChpOTE1
KSkpOw0KPiA+ICsJcmV0dXJuIGh3ZWlnaHRfbG9uZyhWREJPWF9NQVNLKGd0KSk7DQo+ID4gICB9
DQo+ID4NCj4gPiAgIC8qDQo+ID4gQEAgLTI0NTksNyArMjQ1OSw3IEBAIHN0YXRpYyBpbnQgbnVt
X3Zjc19lbmdpbmVzKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAgICog
VGhlIGVuZ2luZSBpbmRleCBpcyByZXR1cm5lZC4NCj4gPiAgICAqLw0KPiA+ICAgc3RhdGljIHVu
c2lnbmVkIGludA0KPiA+IC1nZW44X2Rpc3BhdGNoX2JzZF9lbmdpbmUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICtnZW44X2Rpc3BhdGNoX2JzZF9lbmdpbmUoc3RydWN0
IGludGVsX2d0ICpndCwNCj4gPiAgIAkJCSBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpDQo+ID4gICB7
DQo+ID4gICAJc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2ID0gZmlsZS0+
ZHJpdmVyX3ByaXY7IEBADQo+ID4gLTI0NjcsNyArMjQ2Nyw3IEBAIGdlbjhfZGlzcGF0Y2hfYnNk
X2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+ID4gICAJLyog
Q2hlY2sgd2hldGhlciB0aGUgZmlsZV9wcml2IGhhcyBhbHJlYWR5IHNlbGVjdGVkIG9uZSByaW5n
LiAqLw0KPiA+ICAgCWlmICgoaW50KWZpbGVfcHJpdi0+YnNkX2VuZ2luZSA8IDApDQo+ID4gICAJ
CWZpbGVfcHJpdi0+YnNkX2VuZ2luZSA9DQo+ID4gLQ0KPiAJZ2V0X3JhbmRvbV91MzJfYmVsb3co
bnVtX3Zjc19lbmdpbmVzKGRldl9wcml2KSk7DQo+ID4gKwkJCWdldF9yYW5kb21fdTMyX2JlbG93
KG51bV92Y3NfZW5naW5lcyhndCkpOw0KPiA+DQo+ID4gICAJcmV0dXJuIGZpbGVfcHJpdi0+YnNk
X2VuZ2luZTsNCj4gPiAgIH0NCj4gPiBAQCAtMjY0NCw2ICsyNjQ0LDcgQEAgc3RhdGljIHVuc2ln
bmVkIGludA0KPiA+ICAgZWJfc2VsZWN0X2xlZ2FjeV9yaW5nKHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
ZWItPmk5MTU7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZWItPmd0Ow0KPiA+ICAgCXN0
cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3MgPSBlYi0+YXJnczsNCj4gPiAgIAl1
bnNpZ25lZCBpbnQgdXNlcl9yaW5nX2lkID0gYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfUklOR19N
QVNLOw0KPiA+DQo+ID4gQEAgLTI2NTUsMTEgKzI2NTYsMTEgQEAgZWJfc2VsZWN0X2xlZ2FjeV9y
aW5nKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXINCj4gKmViKQ0KPiA+ICAgCQlyZXR1cm4gLTE7DQo+
ID4gICAJfQ0KPiA+DQo+ID4gLQlpZiAodXNlcl9yaW5nX2lkID09IEk5MTVfRVhFQ19CU0QgJiYg
bnVtX3Zjc19lbmdpbmVzKGk5MTUpID4gMSkgew0KPiA+ICsJaWYgKHVzZXJfcmluZ19pZCA9PSBJ
OTE1X0VYRUNfQlNEICYmIG51bV92Y3NfZW5naW5lcyhndCkgPiAxKSB7DQo+ID4gICAJCXVuc2ln
bmVkIGludCBic2RfaWR4ID0gYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfQlNEX01BU0s7DQo+ID4N
Cj4gPiAgIAkJaWYgKGJzZF9pZHggPT0gSTkxNV9FWEVDX0JTRF9ERUZBVUxUKSB7DQo+ID4gLQkJ
CWJzZF9pZHggPSBnZW44X2Rpc3BhdGNoX2JzZF9lbmdpbmUoaTkxNSwgZWItPmZpbGUpOw0KPiA+
ICsJCQlic2RfaWR4ID0gZ2VuOF9kaXNwYXRjaF9ic2RfZW5naW5lKGd0LCBlYi0+ZmlsZSk7DQo+
ID4gICAJCX0gZWxzZSBpZiAoYnNkX2lkeCA+PSBJOTE1X0VYRUNfQlNEX1JJTkcxICYmDQo+ID4g
ICAJCQkgICBic2RfaWR4IDw9IEk5MTVfRVhFQ19CU0RfUklORzIpIHsNCj4gPiAgIAkJCWJzZF9p
ZHggPj49IEk5MTVfRVhFQ19CU0RfU0hJRlQ7DQo+IA0KPiBUaGUgaHVua3MgYWJvdmUgSSBkb24n
dCB0aGluayBhcmUgY29ycmVjdC4gRXhlY2J1ZiBpcyBpbiBwcmluY2lwbGUgYmFzZWQgb24NCj4g
dWFiaSBlbmdpbmVzLCBhbmQgdGhhdCBpcyBub3QgYSBwZXIgR1QgY29uY2VwdC4NCj4gDQo+IFRo
ZXJlIGlzIGFsc28gbm8gZnVuY3Rpb25hbCBjaGFuZ2UgYWJvdmUgc28gSSBjYW4gb25seSBndWVz
cyBpdCBpcyBhIHByZXAgd29yaw0KPiBmb3Igc29tZXRoaW5nPw0KDQpUaGlzIEkgdGhpbmsgeW91
IHJlbW92ZSB3aXRoIGJlbG93IHBhdGNoLCBzbyBubyBtb3JlIGRpc2N1c3Npb24gcmVxdWlyZWQg
Og0KY29tbWl0IDkyN2ZiOWM1ZWY2YWUzODVjNjVhZTA0YjE4MWNjMmVlOTQ2NjNlMjgNCkF1dGhv
cjogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4NCkRhdGU6ICAgVGh1
IE1hciAxNiAxNDoyNzoyOCAyMDIzICswMDAwDQoNCiAgICBkcm0vaTkxNTogU2ltcGxpZnkgdmNz
L2JzZCBlbmdpbmUgc2VsZWN0aW9uDQoNCj4gDQo+IFtzbmlwXQ0KPiANCj4gPiAtaW50IGlndF9s
aXZlX3Rlc3RfZW5kKHN0cnVjdCBpZ3RfbGl2ZV90ZXN0ICp0KQ0KPiA+ICtpbnQgaWd0X2xpdmVf
dGVzdF9lbmQoc3RydWN0IGlndF9saXZlX3Rlc3QgKnQsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+
ID4gICB7DQo+ID4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHQtPmk5MTU7DQo+
ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Ow0KPiA+ICAgCXN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsNCj4gPiAgIAllbnVtIGludGVsX2VuZ2luZV9p
ZCBpZDsNCj4gPg0KPiA+IEBAIC01Nyw3ICs1Nyw3IEBAIGludCBpZ3RfbGl2ZV90ZXN0X2VuZChz
dHJ1Y3QgaWd0X2xpdmVfdGVzdCAqdCkNCj4gPiAgIAkJcmV0dXJuIC1FSU87DQo+ID4gICAJfQ0K
PiA+DQo+ID4gLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCB0b19ndChpOTE1KSwgaWQpIHsNCj4g
PiArCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkgew0KPiA+ICAgCQlpZiAodC0+cmVz
ZXRfZW5naW5lW2lkXSA9PQ0KPiA+ICAgCQkgICAgaTkxNV9yZXNldF9lbmdpbmVfY291bnQoJmk5
MTUtPmdwdV9lcnJvciwgZW5naW5lKSkNCj4gPiAgIAkJCWNvbnRpbnVlOw0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5oDQo+ID4gaW5k
ZXggMzZlZDQyNzM2YzUyLi4yMDliMDU0OGM2MDMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3QuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbGl2ZV90ZXN0LmgNCj4gPiBAQCAtMjcsOSArMjcs
OSBAQCBzdHJ1Y3QgaWd0X2xpdmVfdGVzdCB7DQo+ID4gICAgKiBlLmcuIGlmIHRoZSBHUFUgd2Fz
IHJlc2V0Lg0KPiA+ICAgICovDQo+ID4gICBpbnQgaWd0X2xpdmVfdGVzdF9iZWdpbihzdHJ1Y3Qg
aWd0X2xpdmVfdGVzdCAqdCwNCj4gPiAtCQkJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
DQo+ID4gKwkJCXN0cnVjdCBpbnRlbF9ndCAqZ3QsDQo+ID4gICAJCQljb25zdCBjaGFyICpmdW5j
LA0KPiA+ICAgCQkJY29uc3QgY2hhciAqbmFtZSk7DQo+ID4gLWludCBpZ3RfbGl2ZV90ZXN0X2Vu
ZChzdHJ1Y3QgaWd0X2xpdmVfdGVzdCAqdCk7DQo+ID4gK2ludCBpZ3RfbGl2ZV90ZXN0X2VuZChz
dHJ1Y3QgaWd0X2xpdmVfdGVzdCAqdCwgc3RydWN0IGludGVsX2d0ICpndCk7DQo+IA0KPiBCYWNr
IGluIHRoZSBkYXkgdGhlIHBsYW4gd2FzIHRoYXQgbGl2ZSBzZWxmdGVzdHMgYXJlIGRldmljZSBm
b2N1c2VkIGFuZCB0aGVuDQo+IHdlIGFsc28gaGF2ZSBpbnRlbF9ndF9saXZlX3N1YnRlc3RzLCB3
aGljaCBhcmUgb2J2aW91c2x5IEdUIGZvY3VzZWQuIFNvIGluDQo+IHRoYXQgc2Vuc2UgYWRkaW5n
IGEgc2luZ2xlIEdUIHBhcmFtZXRlciB0byBpZ3RfbGl2ZV90ZXN0X2JlZ2luIGlzbid0DQo+IHNv
bWV0aGluZyBJIGltbWVkaWF0ZWx5IHVuZGVyc3RhbmQuDQo+IA0KPiBDb3VsZCB5b3UgZXhwbGFp
biBpbiBvbmUgb3IgdHdvIHByYWN0aWNhbCBleGFtcGxlcyB3aGF0IGlzIG5vdCB3b3JraW5nDQo+
IHByb3Blcmx5IGFuZCBob3cgaXMgdGhpcyBwYXRjaCBmaXhpbmcgaXQ/DQoNCkZvciBleGFtcGxl
IHlvdSBhcmUgcnVubmluZyB0ZXN0ICJsaXZlX2FsbF9lbmdpbmVzKHZvaWQgKmFyZykiLA0KDQot
LSBCZWxvdyB0ZXN0IGJlZ2luLCB3aWxsIHJlc2V0IGNvdW50ZXJzIGZvciBwcmltYXJ5IEdUIC0g
VGlsZTAgLS0NCmVyciA9IGlndF9saXZlX3Rlc3RfYmVnaW4oJnQsIHRvX2d0KGk5MTUpLCBfX2Z1
bmNfXywgIiIpOw0KICAgICAgICBpZiAoZXJyKQ0KICAgICAgICAgICAgICAgIGdvdG8gb3V0X2Zy
ZWU7DQoNCi0tLSBOb3cgd2UgbG9vcCBmb3IgYWxsIGVuZ2luZXMsIG5vdGUgaGVyZSBmb3IgTVRM
IHZjcywgdmVjcyBlbmdpbmVzIGFyZSBub3Qgb24gcHJpbWFyeSBHVCBvciB0aWxlIDAsDQogICAg
IFNvIGNvdW50ZXJzIGRpZCBub3QgcmVzZXQgb24gdGVzdCBiZWdpbiBkb2VzIG5vdCBjb3ZlciB0
aGVtLiAtLS0NCgkgICAgIA0KICAgICAgSW4gdGVzdF9iZWdpbiwgYmVsb3cgd2lsbCBub3QgcmVz
ZXQgY291bnQgZm9yIHZjcywgdmVjcyBlbmdpbmVzIG9uIE1UTCwNCglmb3JfZWFjaF9lbmdpbmUo
ZW5naW5lLCBndCwgaWQpDQogICAgICAgICAgICAgICAgdC0+cmVzZXRfZW5naW5lW2lkXSA9DQog
ICAgICAgICAgICAgICAgICAgICAgICBpOTE1X3Jlc2V0X2VuZ2luZV9jb3VudCgmaTkxNS0+Z3B1
X2Vycm9yLCBlbmdpbmUpOw0KDQotLS0gVGhlbiBiZWxvdyB3aWxsIGVuZCB0ZXN0LCBhZ2FpbiBm
b3IgcHJpbWFyeSBHVCB3aGVyZSBhYm92ZSBtZW50aW9uZWQgZW5naW5lcyBhcmUgbm90IHRoZXJl
IC0tLSANCmVyciA9IGlndF9saXZlX3Rlc3RfZW5kKCZ0LCB0b19ndChpOTE1KSk7DQoNCkluIHNo
b3J0IHRvIG1lIGl0IGxvb2tzIGxpa2UgaWd0X2xpdmVfdGVzdCBmb3IgZGV2aWNlIG5lZWRzIGF0
dGVudGlvbiB3aGVuIHdlIGhhdmUgZGlmZmVyZW50IGVuZ2luZXMgb24gZGlmZmVyZW50IEdUcyBs
aWtlIE1UTC4NCg0KUmVnYXJkcywNClRlamFzDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtv
DQo=
