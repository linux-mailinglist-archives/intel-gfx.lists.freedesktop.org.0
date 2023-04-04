Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A416D5E65
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 12:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5463F10E201;
	Tue,  4 Apr 2023 10:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB63810E201
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 10:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680605794; x=1712141794;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xJ4pJSs/zFx3DWG6eqhY3gpww9N5RurKAuMgLorav/8=;
 b=mgVdxoqRNEiZqTjkFgd36tzHFWtEt8YT0NNDo4XS/okSRG1VrErh3C4o
 LT9ZFoeFsEsgEGPKUsIkKboSoFQJj6fPemZ3fu98f7XJ3AfEbrWWltu7p
 JpFW6kTDnw1hjDeMgNg9F7KyMBCNqym7rI6HSTjDjgj8E3jb5TD81Wtck
 8r9t/6U2tbz59YucSihZRfIKC6k8bMfC1ktnbE2cE6Psw2dcE42xD4zHm
 2iCVPX+8rJfpY4MKxh6naIENlFGc4tgcqybol2C4hKOzBAj1LP1uCJITf
 Vltt4Np88u1/QpHxvG201jmbtJf7p50SglP5sU7+QChAvXdrrI6DNpOWM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="342174627"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="342174627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 03:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="679844949"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="679844949"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 04 Apr 2023 03:56:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 03:56:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 03:56:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 03:56:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 03:56:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jotu1AF2hzJ06CbrvML4BEvTVEa/KUqvkOhn8BpOZwbH0f5Z6hUKQI859abo9fdfA6WJwBw08sfxVypu9Fcdmrh2B5DDuRfE3Nuex8kzvc6z0/N3cZVSzCkKrEQmAjpIB65mo8LbykhQ0fj9cLEXFqeUajAyc/HAQpX7Z1HzuAjQip+Z23WgmfdSaATAQ7x612yYq3mxOmoicjzKOg1mpl/pXSBExm7Bp8XuBlzAcHNNziDbOapMFNABK64OQXn91hdtnfZA7ct+YJu8oKO5BcQKJpchiqTjY+b/pBngadjgdwTDWzYZo03jUeKbrnQkewHDtnPRQ8aujUZv84zigA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xJ4pJSs/zFx3DWG6eqhY3gpww9N5RurKAuMgLorav/8=;
 b=arqeu81RiEYkVYAOKet+DQL8V7nmph6TsH9BDEG+867xyoLqj+ThxsU7AZMKjQX+JAidr00u2I2E9xas7PyYNrJEXmR9Xy35/7RGhqh3L4cHQVtgjMWSB9MfgqpEijYvm15vjH3I5axfoz5gwS64JTMj+zsR//v/93TLtd3vCPOrbP6WUB3NoWz7K2n1OvnEOC3ti9pdAdr/2JGgvZ2iMc3ZV3/QXt1kNSSByZP9165X3Kciq5iy4tU0h96D2de2Lnmt26E8avxiXb8XbycSCxqo1lYHpwcO2Xuy6sfASy5ZJiTJtUO7Ur5L18KunzeiqSzCW4FPUog6ZSunN/59bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH7PR11MB6356.namprd11.prod.outlook.com (2603:10b6:510:1fc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 10:56:25 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::a3ee:8739:9c99:4b17]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::a3ee:8739:9c99:4b17%4]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 10:56:25 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Implement UHBR bandwidth check
Thread-Index: AQHZXlfC2hNFX/G3zk6JWJwVn6ls468bC4IA
Date: Tue, 4 Apr 2023 10:56:25 +0000
Message-ID: <e0d5ca530510ebde7f5ce3225c03296528949109.camel@intel.com>
References: <20230324135125.6720-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230324135125.6720-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH7PR11MB6356:EE_
x-ms-office365-filtering-correlation-id: 9e4b8daa-ec2a-4bc0-d4f5-08db34fb3c12
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pJuc60bMyxwjcacD+4ml6Q1t3VPD4GBbPo6hamv+WUzm+fO1JaOmSXlyIXqnaTY/1ceMXH1PHr1+M1yewiCH632Vr/GaXUMcjL+1NdkrAKNXZEN9oz5WBVj91Ol2ylrnozhRGzRkusuPc0gF9hAXlXm6rDuLgQtQ3Gx0BVhT+amMz8bdMVg+MM/1xPR6qbDAQsuYGQfJU+bReeCc19S5SYVLsMF96GQmwgqfo3JEd0CPrRcqXGYSFeQwegGI2y03HjObE6fmwrjo0mzBi12zWnndg4uaRomSSRdMtB+RwmVwLJ1naDZooWEDzvrEHvIx+anh5Xc2Z4VA9SlWdZORDN7DMvcvmGrxm6DaE3CBHNkCLJorZlHUhMZwEVlHD6r3+gB854s0+yhbjHFwxmeXoSTVKzGVw3mvkzcbqcjlpcc6Zw7KO/+uzjHNkQWXCkUjqJ672dU/1u3RVURDhx+OO/vn+53qKtrfxCF64yS0kWxwQFIfxi7rx71g16OK2s0UhYHrHmr7mXPew88BH9phOGfsJNhnOo4pLHe8T03Z5vrOQH+1dWRptDqOpHXypKaH84dPeoIa+beE7CfT1/viov1Mihc3tLdNsqeOOc/IjWeSM7S4H9mx5wk9x7Y2s3sG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(376002)(39860400002)(346002)(451199021)(26005)(186003)(83380400001)(2616005)(6506007)(8676002)(82960400001)(478600001)(41300700001)(4326008)(316002)(110136005)(66556008)(66946007)(91956017)(6486002)(66476007)(66446008)(71200400001)(64756008)(76116006)(38100700002)(36756003)(122000001)(86362001)(2906002)(8936002)(54906003)(38070700005)(6512007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGxoQlRCZXJRU0RKQlZ5d2JHdXQ2VHoybnZxZkhPWEpiM3RKRmw5QzRGMnJB?=
 =?utf-8?B?SDc2dk94S0lsZ0RMV3I1ZlhKTXpJRVZESDc4ZWtOZ21nNmxkazlJWnRsV25L?=
 =?utf-8?B?TG1lN2txSGZ5R1pmd1orZ21heUZuYWJxMjRtVXY1YlV6R0ViUmNQYnRwaFdM?=
 =?utf-8?B?aFhDVmpnUm43ZGxzaXp6RW9KUDZESmNVRzFCUmRENGhXRUgwSWgyaTNFQlND?=
 =?utf-8?B?aWZSeXNZOHYwMUI4UVAxUGttYWhEaW5OM0hyUzNWRERqVVNYYjFZRjd5L2ww?=
 =?utf-8?B?MzlNaEVnUDloU09mWkdqcTJjVWNXL041MStzNURWQ2lNZWpEN1pHMEJkWjBu?=
 =?utf-8?B?UTBaMjJQelRlQUxEcExHaDRMZ2IzNVRkZ2dZbTBNcHJLMTZwUFl4SVFhekx2?=
 =?utf-8?B?M1Z5UUtmSC9SWmkvV0swc0hWaGt1UUhRbEV5S1VDMXYrSUQyM1dNVjNqMkFp?=
 =?utf-8?B?WHNud1BHN241UG43L0IwQ0VtLzR6MC9scWkvRVlIaVJHdVBDM05EQm1hR3l3?=
 =?utf-8?B?emVXcUo1Rm1kWTltWjFkZlZMdTdWSlJwbkNXMlpGcU1DMUYvb3krNjJZVnFv?=
 =?utf-8?B?Q3h5QnBEcGdEbzMxTXdJVENrTUxqcnRXK0Q1bkRYMjFhYW9vSzVTNVVoTzEr?=
 =?utf-8?B?enQrOG05T0t2KzdiMUdCNVJ0WVFlTE9lMWc4OUJLL1pveTBjcjVJQmVseWJC?=
 =?utf-8?B?R0JIQitvdWp0cGZjUnBWV0hVdzl0dmpYZnVnMTdEU214WmxRQTdJWjFKajNk?=
 =?utf-8?B?QnBQVFdXSXVNUjhIR1ljaUc4VTZrWUdPc0NoODM2U0ZhL0RxMHE5OEtFN3Yy?=
 =?utf-8?B?b0xGL2V0U2k2MTh0dVNGOXB3REpxbkJTenRMWGRWcVJURmtsNHo0Z3o5bFpG?=
 =?utf-8?B?azVIa2xhQmorNEdISWtTMzM2STk1Q3d6ZWhpdkEwa3ZubGpoK1NydEc3bGox?=
 =?utf-8?B?RVF4ZmhrRUUweWlXNXBRQ3pFMUtzd2t1OUxCMUdCR1RoSG5IVkRZdEtuSnJC?=
 =?utf-8?B?RS9LdUNvVzI5MWxsbFBCQk1RSFNlaVYvb2ZlUlVXb0xlaFZOeFZEZU5McUpl?=
 =?utf-8?B?ZTN0VTlDcHRidFppVmNMS1FwK2krbFdjOWtybzVMVFludkFhZ1NaNUFXd0ZZ?=
 =?utf-8?B?QlBabUpLWTl1NDJmbXdWZTFoTGlnM3BkeGQ5aWt1T2pJMkoycnhTMVRYamM0?=
 =?utf-8?B?eVB1WnRCZkZjaUVTQnJOSWpWRDhjVGlXSTZTTzdMbTNoTmF5MWtabnIzUU1P?=
 =?utf-8?B?UExsT2R4KzFEZDhFWEJqaWZ4QVhSdkNZR3Q0YUVTUG9LVEdOSmtneFNvVUph?=
 =?utf-8?B?REZ6bWtSaHBLcWRZQjVEQ05kVmVuM29iNkNqQldSU28wOER0cWFYRWRDVDhY?=
 =?utf-8?B?QkxibjFmMGNaMTZtc05iaHFoVEQvWHpsR2NkR05iYW9aTDhZMHBxR2hBZlpq?=
 =?utf-8?B?SVNIZkYyeXJLNVNFNzVLV3NVaTZiTGtrcTNMTVZ1ZjA2RkNNYk9mQ1h6dkdJ?=
 =?utf-8?B?L2NrSXUybU1TZmp6SDYvZ2oweThJSXhXOXRHWGduZERVekpxRWxMc1ZRQ094?=
 =?utf-8?B?cm5Ndmx4WVlHbTZhOGY2d2d0UEhMTkFKNGE1VlFYeFlYd0wzRHFMQ1l3bTZU?=
 =?utf-8?B?L3ozZnpWK3VIUyt3eW5OMmwxRG1IdmdKa2tKY0hid0U2S2JDMkEwUDcwSmNT?=
 =?utf-8?B?MmpYMDcxQ1NvNFh2eDJ4M1p3RmZ4MDduVWZNdDZpQmVYdi9QNFE2K1U5blQ3?=
 =?utf-8?B?OTdhL2FVRUc4TDdpNzZuRTlRcTBTSmZwcy94Z2lxaklvK2IvMlBzMTRBMi9r?=
 =?utf-8?B?WkxtVnJucll1ZklEbmNjOTZYdytwVm41NGxxOGJ4U0NvcXpzNk5ldk1MQmtw?=
 =?utf-8?B?czJpbVJ3TkdPK1hZUkh5QTdOOTBjUjhlNnRmVXpBL2c1ZFZzZ2l1aTE1Vzl0?=
 =?utf-8?B?TEZKc01qWXkvR1NKMHJnaTM0bWJZbTBhN3N3UlpPVWpKZ0lOaHRKbmo1TjFu?=
 =?utf-8?B?WERReUdvMURkWmdEUGJ1VExiMmdnczc1NlVEaUY1V3czQmRSOGE2cFhMK0lm?=
 =?utf-8?B?ZjMrTDFtYjdJalJzYmI3Q2lPTXgvcTN1SExxZ0EzNGZZZVozTHQ0ZERZTmM5?=
 =?utf-8?B?YldtdVhaZG9nc3BYM1MzUXZDM1BwcGE1VE5pMVkwOXl4K3BmdGMxUzJRY3lZ?=
 =?utf-8?Q?9ehbtUbc4XP3vy2YV0rFyHU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8D87CEBB569B6140853A41896903C1A1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e4b8daa-ec2a-4bc0-d4f5-08db34fb3c12
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 10:56:25.1826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kUZOukkMf6d3Ne+6PzzRwRk/keejz4UNcsILKI1OMq6o+hhmKpUCzar9rnzWKqpLVc9w2BZ6dRrZa2ChcvSBQVOonmO6LIM4wnWmOyUyX/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement UHBR bandwidth check
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3RhbiwKCk9uIEZyaSwgMjAyMy0wMy0yNCBhdCAxNTo1MSArMDIwMCwgU3RhbmlzbGF2IExp
c292c2tpeSB3cm90ZToKPiBBY2NvcmRpbmcgdG8gc3BlYywgd2Ugc2hvdWxkIGNoZWNrIGlmIG91
dHB1dF9icHAgKiBwaXhlbF9yYXRlIGlzIGxlc3MKPiB0aGFuIERESSBjbG9jayAqIDcyLCBpZiBV
SEJSIGlzIHVzZWQuCj4gCj4gdjI6IC0gcy9waXBlX2NvbmZpZy9jcnRjX3N0YXRlLyAoSmFuaSBO
aWt1bGEpCj4gwqDCoMKgIC0gTWVyZ2VkIHByZXZpb3VzIHBhdGNoIGludG8gdGhhdCBvbmUsIHRv
IHJlbW92ZSBlbXB0eSBmdW5jdGlvbihKYW5pIE5pa3VsYSkKPiAKPiB2MzogLSBNYWtlIHRoYXQg
Y29uc3RyYWludCBjaGVjayB0byBiZSBEU0MtcmVsYXRlZCBvbmx5Cj4gwqDCoMKgIC0gTGltaXQg
dGhpcyB0byBvbmx5IERJU1BMQVlfVkVSIDw9IDEzCj4gCj4gSFNERVM6IDE0MDY4OTk3OTEKPiBC
U1BFQzogNDkyNTkKPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyOSArKysrKysrKysrKysrKysrKysrLS0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gaW5kZXggYTg2MGNi
YzVkYmVhLi40YzBlZGI3NjBiOGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMKPiBAQCAtNDUsNiArNDUsMjcgQEAKPiDCoCNpbmNsdWRlICJpbnRl
bF9ob3RwbHVnLmgiCj4gwqAjaW5jbHVkZSAic2tsX3NjYWxlci5oIgo+IMKgCj4gK3N0YXRpYyBp
bnQgaW50ZWxfZHBfbXN0X2NoZWNrX2NvbnN0cmFpbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LCBpbnQgYnBwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3Qg
ZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJvb2wgZHNjKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwX2lz
X3VoYnIoY3J0Y19zdGF0ZSkgJiYgRElTUExBWV9WRVIoaTkxNSkgPD0gMTMgJiYgZHNjKSB7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBvdXRwdXRfYnBwID0gYnBwOwo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBEaXNwbGF5UG9ydCAyIDEyOGIvMTMyYiwg
Yml0cyBwZXIgbGFuZSBpcyBhbHdheXMgMzIgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50IHN5bWJvbF9jbG9jayA9IGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgLyAzMjsKPiAr
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChvdXRwdXRfYnBwICogYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19jbG9jayA+PQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3ltYm9sX2Nsb2NrICogNzIpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJVSEJSIGNoZWNrIGZh
aWxlZChyZXF1aXJlZCBidyAlZCBhdmFpbGFibGUKPiAlZClcbiIsCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG91
dHB1dF9icHAgKiBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLCBzeW1ib2xfY2xvY2sgKiA3Mik7
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
LUVJTlZBTDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ICvCoMKgwqDCoMKg
wqDCoH0KPiArCj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gK30KPiArCj4gwqBzdGF0aWMg
aW50IGludGVsX2RwX21zdF9maW5kX3ZjcGlfc2xvdHNfZm9yX2JwcChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2JwcCwKPiBAQCAtODcsNiArMTA4LDEwIEBAIHN0
YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2ZpbmRfdmNwaV9zbG90c19mb3JfYnBwKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiVHJ5aW5nIGJwcCAlZFxuIiwgYnBwKTsKPiDCoAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBpbnRlbF9kcF9tc3RfY2hlY2tf
Y29uc3RyYWludHMoaTkxNSwgYnBwLCBhZGp1c3RlZF9tb2RlLCBjcnRjX3N0YXRlLCBkc2MpOwo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7Cj4gKwoKT25lIHN1Z2dl
c3Rpb24sIGlmIHlvdSBtb3ZlIHRoaXMgY29uc3RyYWludHMgY2hlY2sgdG8gdGhlIHRvcCBvZiB0
aGUgImZvciBsb29wIiwgeW91IG1heSBiZSBhYmxlIHRvCnNhdmUgYW4gdW5uZWNlc3NhcnkgImRy
bV9kcF9jYWxjX3Bibl9tb2RlIiBjYWxsIGluIGNhc2UgY29uc3RyYWludHMgZG9lc24ndCBtYXRj
aCBmb3IgYSBicHAuCgpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292
aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c2xvdHMgPSBkcm1fZHBfYXRvbWljX2ZpbmRfdGltZV9zbG90cyhzdGF0ZSwgJmludGVsX2RwLT5t
c3RfbWdyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29ubmVjdG9yLT5wb3J0LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+cGJuKTsKPiBAQCAtMTA0LDggKzEyOSw4IEBAIHN0
YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2ZpbmRfdmNwaV9zbG90c19mb3JfYnBwKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+
IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqAvKiBEZXNwaXRlIHNsb3Rz
IGFyZSBub24temVybywgd2Ugc3RpbGwgZmFpbGVkIHRoZSBhdG9taWMgY2hlY2sgKi8KPiAtwqDC
oMKgwqDCoMKgwqBpZiAocmV0ICYmIHNsb3RzID49IDApCj4gK8KgwqDCoMKgwqDCoMKgLyogV2Ug
ZmFpbGVkIHRvIGZpbmQgYSBwcm9wZXIgYnBwL3RpbWVzbG90cywgcmV0dXJuIGVycm9yICovCj4g
K8KgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHNsb3RzID0gcmV0Owo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChzbG90cyA8IDApIHsKCg==
