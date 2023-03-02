Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C06A849A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 15:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7A110E504;
	Thu,  2 Mar 2023 14:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D596810E504
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 14:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677768555; x=1709304555;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G5Ok1MnAngFBQ2sAg15v8JmzDhPMjvH1gfghRXQNhVo=;
 b=BgRNNgQlR3xPyycSPd1i8PBEqTHB3/yRX/HrpEMSkw9ZEVuC9iUVFQJU
 kTBySqedy+WUvzE+nub7f7mbwLtXdwNticQd7360bof6QlI3Fc14GZKDj
 Ou9Ki5Or0w260HCfu3ADzqW+XlSDoyyq0rUDxZem8Yrk2nZgOTQ0xdczB
 hFJKXVGghcNWeVR+Rq9ihP0uGQ+WAhChR+dzreImohPFO4r6zVKjaiVPM
 QMT5rdrejQaQcNf5ud7U2/b2u/NDbj5CwiiAmowlyE5BVbDY72gnaWOmm
 +/gIhBe60L42OQnWWONo6eoocvd4uX3P+XzdR1zfIs9W/1IMgxeGLQSjD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="420997381"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="420997381"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 06:49:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="624961490"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="624961490"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 02 Mar 2023 06:49:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 06:49:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 06:49:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 06:49:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TGhb2etMsD5hekaOwYFTLMLHOnhgNBVHxnYIvclVtt6+5gznTjpgypZR0YWYJCEAbwGgkulbKPEHNbR+SwDBjGP44NGhX1xQXK1lhfy+qYV/w0+zg2kh8RMZMs6Xaum2iD9SKqK825DnkhjRYTS9tnXmk7rlclFZj1HZnkUCqM8DcHFrqTdAr1HcKDn3vjUElyceQ8xwwZqTDSiCO5c0CUuk/JwU8nSLQIxvqlowZ0xb6CZ1HNDM94Iq2ZLFzCrqWbyivNFcW56l+BpRoIG1Ss1+fNCSRqfjiWcnGnuTgGyvLIfVumEUnZN2ldLw7CMRxkcYqi2Cv0CsdLKCIS/m3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G5Ok1MnAngFBQ2sAg15v8JmzDhPMjvH1gfghRXQNhVo=;
 b=Rqpkbp358SHjA9dlAZGny1mZxkQSxQaZUP2p8dUCyDg0w6PzQJaqtVArhfHjmUHXp+Ar16mf6etQm4WuT8DVYcpFuP9JhX8TFAds2gU37iWCbBTurlMUKRqYONgatkE7zzkxKXAYMlCgJFqhfNxonHuCipZ0Ogt87jsZgN75VuuunqAaWikHyxnmpYVnN/ZxkzKy2uM1x9B+pPEfbfzVvUQbWFxo4866zpq/RiKhE32bF+xqSt/ByoDibXsHV7tLWCOpH8mAuZlEqggpTs7ToIxzPZo5r1uTL9ZWvwqqtlcZXUXxhvpM0RWI0aZX7y2KoKseuu2YlZesXdq+yhMnMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA2PR11MB5082.namprd11.prod.outlook.com (2603:10b6:806:115::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.19; Thu, 2 Mar
 2023 14:49:11 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::d95b:7e16:dad8:d7bc]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::d95b:7e16:dad8:d7bc%6]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 14:49:11 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH v5 1/2] drm/i915: Migrate platform-dependent mock
 hugepage selftests to live
Thread-Index: AQHZStBJ5MiHlZS4HE6NS3JO70gbeK7kZrkAgALpPoCAAEZ3MA==
Date: Thu, 2 Mar 2023 14:49:11 +0000
Message-ID: <CH0PR11MB5444309069AF49FE29AEF2A6E5B29@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
 <6b08d006-11e2-6797-6d39-06bd0d8a8630@intel.com>
 <9792ed48-7f7b-2a18-240a-c733a13a4911@intel.com>
In-Reply-To: <9792ed48-7f7b-2a18-240a-c733a13a4911@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA2PR11MB5082:EE_
x-ms-office365-filtering-correlation-id: 1893ca6f-2e26-40a5-5cec-08db1b2d48e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M1PxO5xF7SG0T6Vw1F+6Z+GfnoN1Avlp+mO0vy0odSZVmgNH3RW/anYSNUJpfAJ51oRyCrTw1EWSL5ITjkton0Jgs7mu2FJP5ROvvJUziE8iQpLwZ2XUWmzsDLHl2DK6QB/CN4lfSvTB5f8E6gQuxCYYA2Ua6TSYJ8qhIdlCmiQ+ljfG4rViokx6+912GFOR3spxD19HBOQ0atyK/ePqoYxnpKjv/ja0wTvZIfa7txZIkNvuj7dMIC+Cu1B9MwE1eE+TM56MJme6dr8ovKTr7bni7A6BTNVdLIF0BspMEBG3Em0HLZtGapjR9Y4Ta4qWjkjk7xNc5sUgDmlyaXnrKvXppY8MTyxiRKerfanMQySpN4nx4B7ivQqr8g5zo7odcmhAFXjPodE3jw5ffHM+iRfy93x2ZksHYPSwJ8JAIoVne0bfkSlbWQdahxMFzkx1PnpBmo09js0bDYElAuTkAt0kxAxwU26bdiWB7B5FsUgk3V+704G8LC8UT0ighOVDY5BYGUz4kj+m8UY2ZFKp2ZFtPqCMpvc4OxyV7UM4dytwoPA2tU9j+TeabMfS6qaA+ts2WNfeEfrZe336PNrZ/TJ46LR1fCEBsxbe5pNg+bG1Ao7LqICxjwm2E107hk3pOuDM7xOHCEywjPekuPjig9wAuRF3k9RIG4lzOL7xn4zsKHwXvAWtb3IUb9koOBNVROisFo/QkA6MWyRrCqTbtyxOM1upWXvftMmarr/togA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199018)(53546011)(6506007)(186003)(9686003)(26005)(316002)(41300700001)(54906003)(6636002)(4326008)(66556008)(66946007)(66476007)(7696005)(8676002)(64756008)(2906002)(76116006)(66446008)(71200400001)(52536014)(5660300002)(6862004)(478600001)(82960400001)(38100700002)(122000001)(8936002)(33656002)(55016003)(38070700005)(86362001)(83380400001)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGNQeitndHpZMVBTOUtrenhxclA4c2xHTTNtbEhaemc1NVFqbHd5MkpWWUlr?=
 =?utf-8?B?MUd4aVBDZTV5WGp6VlBoZmIvKzlwNzlLdzVrMllFNnBIVnRPVTNwN2NQbnZ6?=
 =?utf-8?B?L2NXd1pGQlk4a1REQXJpVFYvaEJpanJvK0JERTNoSzJlQTJHV20xUTBiaTFo?=
 =?utf-8?B?b1M5WW9GaWlWOU1ZUUY3dFNDdGhMdVl5YklzQmIzcjFGWGRrVWpSdFUzVC9L?=
 =?utf-8?B?T3ZkckUrNUpkVzFyWlJSRU1wQ2lPdVZQQ0V2aWgrTGI4R1RuT3dPL3FvdVNN?=
 =?utf-8?B?SXJ4NHYrOTdMU0tJOG9jaDdrcTlzY3AyTDNnN3AxZ01pZS9MTjRiZU9qNENH?=
 =?utf-8?B?aEw3QUJSN3RJYzM1ME5WM1I5cHc4YytPbkZMNzl1MGJwZVZpeStNKzNpNWhv?=
 =?utf-8?B?dUNuZUVycVMyWjIwV0d0Y0RZa3cxZmVGbXBTeCt0REFnZjhYdU1GSnhJUkF6?=
 =?utf-8?B?VzRGMHQ2MnBnMytPUWtFZHRqV2dLcUZ1NU9NeHA0ell3aDd5T3lXeHhCTjFP?=
 =?utf-8?B?blFWMStKcTRFcGNaVFFaeGFxamtEMkx6VjJINFYzY2p6SkVPVkFpb3haQWRL?=
 =?utf-8?B?aHMwQTNtRWRWc2J5YW0zUzl2YVQrL2YrdEt0MndBbzdJOTVsaVZHN2JsS0cv?=
 =?utf-8?B?QU9GYlhBbUEreDhBeVBZRG4wNUdkUjVOWmMrR3pqTGJKSjFHMGF1YVJ6RW91?=
 =?utf-8?B?dk9vaHpOa2kyV25ZZ3lCNjBZV1hqR0EzN0VOanRKUnVIOWxnc3BvM2pKYjc5?=
 =?utf-8?B?ZkNPdGdYZ0wwZ0QxT0FJSkpaaGgvK005S3UvVVRhNmZNbGZSWHM4c1Q4cWNM?=
 =?utf-8?B?M2wzVFQ1WTZWU20wdkM4eXQwS2RRUHNPU0tINENLSjdEZVBkdS9tNkFveGd2?=
 =?utf-8?B?NTZDaThuVkJ4cTNoVE5mVFdMbDVNWVIzZzZGeDVNY3BoYXBLU1hMVDNHelB2?=
 =?utf-8?B?Q3BrVEFONnppdFJuRStocFFvZzU1QUdTYXVLRjVMMDdDMkpXMnM2MmNKMnJB?=
 =?utf-8?B?L1Nnc2xTdW9wUDBqMXJ4K29DSmlkTkRXNkdmWiszcDk4M3d6VnlsSFgrSm9B?=
 =?utf-8?B?SW5lM1hvaUMvMmljVmpjSGdPZUFWTWkvNGwvZWs1V1VQVS9mcGxPOU0rU3R2?=
 =?utf-8?B?YmdZbGNrbkJLYXd6dlJCODVEWC9ua2ZmTXdQQzllbE55MWRMMk9YM2hMNldT?=
 =?utf-8?B?QmlZUVlTY2VaYmV6TUkra3p2M05tdmEyYW9VU3loVm5ETVJvazJmbUxwczlh?=
 =?utf-8?B?Y0QyL0dxT0dIZVY1dENuZk5WU3lHR201MUJ2anBHanBnNW1FTzVXQ1NIczAr?=
 =?utf-8?B?QkhzUmhQUDJpYzNpczQzMGhFRUFncjBQVThlNHdiN2E2RzR5T1BIMkZlNWVz?=
 =?utf-8?B?aXQ5Z0JSU1R6TTdHSlQreVQ1OHpsUC9CQU5QQXZwMk13QllqRUVIVWFIeHhp?=
 =?utf-8?B?aUJzbCtlZjhQcXBsNzI4VUlZWEtjUVVuKzZld0JYTGg5ZlQxelZLeDk2OHM5?=
 =?utf-8?B?czVMTnAxWnE1UzZKU3FraTBhZHB4cEdqNXA0MEZOVnBBNTU3dTQrWUVCQUQv?=
 =?utf-8?B?RVQvTSszMGVBQXVPZFpUWUEzMFREbE5DRUIxbzZ0bzl2WXl4aEZDZjR4cDVS?=
 =?utf-8?B?SjhYV1FLcFFvb2dkMEFGMUxFMmVmY2p6KzhINHBuNi8ralFyd05sOWN0SkRw?=
 =?utf-8?B?cmhCaFVhdWgvRXNKNHo2TStRN2djZmdMakR3VytzQ3o0QVhTRlFIY2xXanJG?=
 =?utf-8?B?NjNjWXB3RUNNSnV0SC9PcmdFczMwdS94d1hWc0gxSlVaUXgvRmt2eE5DN2Jx?=
 =?utf-8?B?OUd6dDhGYjR5YzNLdW02Z1JFUVFyYUFNb1FmU25oY01zOCtJaUM0aUg3YlJx?=
 =?utf-8?B?ck96MEw4UjVuTEpYakRqaXd3cEtOZHB2L095c3U5aTkvbTd6aXRpbE5rMWU2?=
 =?utf-8?B?RHJHWldSRDNtU1NSZDVTUFdLYlcxeFkwOXIyeXl2YlorOVh4Qy9kMWlMWm9N?=
 =?utf-8?B?dUpTd3REYWpKdHljQ0plSkpwQWRLT1p5RlpoUGEzSHZmczBIV3grMHlaNzlU?=
 =?utf-8?B?VEx6RFdlOFZ2M3lkTjFWeHJrYzRyYUJZUlNYSDRXNXJUS1hXUjVlcWlYVTdF?=
 =?utf-8?Q?cjOJyQIMXAYyhfXme3Y71o1ec?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1893ca6f-2e26-40a5-5cec-08db1b2d48e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2023 14:49:11.3135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fCH2BOJgm3X9wqtO1Qzvglcl/5C/V+6PsecG/srL6i36noQXS3YhFq5OHsRjD/19GfemXLW8REN1AcR0txjmM0TnnEYFyYQUmt6JStJM8qI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5082
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915: Migrate platform-dependent
 mock hugepage selftests to live
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
Cc: "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIE1hcmNoIDIsIDIwMjMgMjozNiBBTQ0K
VG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogRHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0dEBp
bnRlbC5jb20+OyB0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbTsgbWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tOyBWZXR0ZXIsIERhbmllbCA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+OyBEZSBNYXJjaGksIEx1Y2FzIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+OyBjaHJp
cy5wLndpbHNvbkBsaW51eC5pbnRlbC5jb20NClN1YmplY3Q6IFJlOiBbUEFUQ0ggdjUgMS8yXSBk
cm0vaTkxNTogTWlncmF0ZSBwbGF0Zm9ybS1kZXBlbmRlbnQgbW9jayBodWdlcGFnZSBzZWxmdGVz
dHMgdG8gbGl2ZQ0KPiANCj4gT24gMjgvMDIvMjAyMyAxNDowOCwgTWF0dGhldyBBdWxkIHdyb3Rl
Og0KPiA+IE9uIDI3LzAyLzIwMjMgMTc6MTksIEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPj4g
Q29udmVydCB0aGUgaWd0X21vY2tfcHBndHRfaHVnZV9maWxsIGFuZCBpZ3RfbW9ja19wcGd0dF82
NEsgbW9jayANCj4gPj4gc2VsZnRlc3RzIGludG8NCj4gPj4gbGl2ZSBzZWxmdGVzdHMgYXMgdGhl
aXIgcmVxdWlyZW1lbnRzIGhhdmUgcmVjZW50bHkgYmVjb21lIA0KPiA+PiBwbGF0Zm9ybS1kZXBl
bmRlbnQuDQo+ID4+IEFkZGl0aW9uYWxseSwgYXBwbHkgbmVjZXNzYXJ5IHBsYXRmb3JtIGRlcGVu
ZGVuY3kgY2hlY2tzIHRvIHRoZXNlIHRlc3RzLg0KPiA+Pg0KPiA+PiB2MjogUmVvcmRlcg0KPiA+
Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBp
bnRlbC5jb20+DQo+ID4gDQo+ID4gci1iIHN0aWxsIHN0YW5kcyBmb3IgdGhlIHNlcmllcy4gTm90
ZSB0aGF0IENJIGlzIGJ1c3RlZCBhdG0gdGhvdWdoLCBzbyANCj4gPiB3ZSBjYW4ndCBtZXJnZSB0
aGlzIHlldC4gTGlrZWx5IG5lZWQgdG8gcmUtdHJpZ2dlciB0ZXN0aW5nIGZvciB0aGUgDQo+ID4g
c2VyaWVzIG9uY2UgQ0kvZHJtLXRpcCBpcyB3b3JraW5nIGFnYWluLg0KPiANCj4gQ0kgbG9va3Mg
dG8gYmUgYmFjay4gQ2FuIHlvdSB0cmlnZ2VyIGEgcmV0ZXN0IHRocm91Z2ggcGF0Y2h3b3JrLCBv
ciANCj4gcmVzZW5kIHRoZSBzZXJpZXM/DQoNClJldGVzdCByZXF1ZXN0IHN1Ym1pdHRlZC4NCi1K
b25hdGhhbiBDYXZpdHQNCg0KPiANCj4gPiANCj4gPiANCj4gPj4gLS0tDQo+ID4+IMKgIC4uLi9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmPCoMKgIHwgMjIgKysrKysrKysr
KysrKystLS0tLQ0KPiA+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jIA0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jDQo+ID4+IGluZGV4IGRlZmVjZTBiY2I4MS4uMzc1
ZjExOWFiMjYxIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2h1Z2VfcGFnZXMuYw0KPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2h1Z2VfcGFnZXMuYw0KPiA+PiBAQCAtNzEwLDcgKzcxMCw3IEBAIHN0YXRpYyB2
b2lkIGNsb3NlX29iamVjdF9saXN0KHN0cnVjdCBsaXN0X2hlYWQgDQo+ID4+ICpvYmplY3RzLA0K
PiA+PiDCoMKgwqDCoMKgIH0NCj4gPj4gwqAgfQ0KPiA+PiAtc3RhdGljIGludCBpZ3RfbW9ja19w
cGd0dF9odWdlX2ZpbGwodm9pZCAqYXJnKQ0KPiA+PiArc3RhdGljIGludCBpZ3RfcHBndHRfaHVn
ZV9maWxsKHZvaWQgKmFyZykNCj4gPj4gwqAgew0KPiA+PiDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1
X3BwZ3R0ICpwcGd0dCA9IGFyZzsNCj4gPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHBwZ3R0LT52bS5pOTE1Ow0KPiA+PiBAQCAtNzg0LDcgKzc4NCw4IEBAIHN0
YXRpYyBpbnQgaWd0X21vY2tfcHBndHRfaHVnZV9maWxsKHZvaWQgKmFyZykNCj4gPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIEdFTV9CVUdfT04oIWV4cGVjdGVkX2d0dCk7DQo+ID4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBHRU1fQlVHX09OKHNpemUpOw0KPiA+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKGV4cGVj
dGVkX2d0dCAmIEk5MTVfR1RUX1BBR0VfU0laRV80SykNCj4gPj4gK8KgwqDCoMKgwqDCoMKgIGlm
IChleHBlY3RlZF9ndHQgJiBJOTE1X0dUVF9QQUdFX1NJWkVfNEsgJiYNCj4gPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgR1JBUEhJQ1NfVkVSX0ZVTEwoaTkxNSkgPCBJUF9WRVIoMTIsIDUwKSkN
Cj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhwZWN0ZWRfZ3R0ICY9IH5JOTE1X0dU
VF9QQUdFX1NJWkVfNjRLOw0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNV92bWFfdW5waW4o
dm1hKTsNCj4gPj4gQEAgLTgzMSw3ICs4MzIsNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0
X2h1Z2VfZmlsbCh2b2lkICphcmcpDQo+ID4+IMKgwqDCoMKgwqAgcmV0dXJuIGVycjsNCj4gPj4g
wqAgfQ0KPiA+PiAtc3RhdGljIGludCBpZ3RfbW9ja19wcGd0dF82NEsodm9pZCAqYXJnKQ0KPiA+
PiArc3RhdGljIGludCBpZ3RfcHBndHRfNjRLKHZvaWQgKmFyZykNCj4gPj4gwqAgew0KPiA+PiDC
oMKgwqDCoMKgIHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGFyZzsNCj4gPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHBwZ3R0LT52bS5pOTE1Ow0KPiA+PiBA
QCAtOTEzLDYgKzkxNCwxNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0XzY0Syh2b2lkICph
cmcpDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gb2JqZWN0
c1tpXS5vZmZzZXQ7DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgZmxhZ3Mg
PSBQSU5fVVNFUjsNCj4gPj4gK8KgwqDCoMKgwqDCoMKgIC8qDQo+ID4+ICvCoMKgwqDCoMKgwqDC
oMKgICogRm9yIG1vZGVybiBHVFQgbW9kZWxzLCB0aGUgcmVxdWlyZW1lbnRzIGZvciBtYXJraW5n
IGEgDQo+ID4+IHBhZ2UtdGFibGUNCj4gPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBhcyA2NEsgaGF2
ZSBiZWVuIHJlbGF4ZWQuwqAgQWNjb3VudCBmb3IgdGhpcy4NCj4gPj4gK8KgwqDCoMKgwqDCoMKg
wqAgKi8NCj4gPj4gKw0KPiA+PiArwqDCoMKgwqDCoMKgwqAgaWYgKEdSQVBISUNTX1ZFUl9GVUxM
KGk5MTUpID49IElQX1ZFUigxMiwgNTApKSB7DQo+ID4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGV4cGVjdGVkX2d0dCA9IDA7DQo+ID4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV4cGVjdGVk
X2d0dCB8PSBzaXplICYgKFNaXzY0SyB8IFNaXzJNKSA/IA0KPiA+PiBJOTE1X0dUVF9QQUdFX1NJ
WkVfNjRLIDogMDsNCj4gPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhwZWN0ZWRfZ3R0IHw9
IHNpemUgJiBTWl80SyA/IEk5MTVfR1RUX1BBR0VfU0laRV80SyA6IDA7DQo+ID4+ICvCoMKgwqDC
oMKgwqDCoCB9DQo+ID4+ICsNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGZvciAoc2luZ2xlID0g
MDsgc2luZ2xlIDw9IDE7IHNpbmdsZSsrKSB7DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG9iaiA9IGZha2VfaHVnZV9wYWdlc19vYmplY3QoaTkxNSwgc2l6ZSwgISFzaW5nbGUpOw0K
PiA+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKG9iaikpDQo+ID4+IEBA
IC0xOTEwLDggKzE5MjIsNiBAQCBpbnQgaTkxNV9nZW1faHVnZV9wYWdlX21vY2tfc2VsZnRlc3Rz
KHZvaWQpDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCBTVUJURVNUKGlndF9tb2NrX2V4aGF1c3Rf
ZGV2aWNlX3N1cHBvcnRlZF9wYWdlcyksDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCBTVUJURVNU
KGlndF9tb2NrX21lbW9yeV9yZWdpb25faHVnZV9wYWdlcyksDQo+ID4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBTVUJURVNUKGlndF9tb2NrX3BwZ3R0X21pc2FsaWduZWRfZG1hKSwNCj4gPj4gLcKgwqDC
oMKgwqDCoMKgIFNVQlRFU1QoaWd0X21vY2tfcHBndHRfaHVnZV9maWxsKSwNCj4gPj4gLcKgwqDC
oMKgwqDCoMKgIFNVQlRFU1QoaWd0X21vY2tfcHBndHRfNjRLKSwNCj4gPj4gwqDCoMKgwqDCoCB9
Ow0KPiA+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdjsNCj4g
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQ7DQo+ID4+IEBAIC0xOTYyLDYg
KzE5NzIsOCBAQCBpbnQgaTkxNV9nZW1faHVnZV9wYWdlX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCAN
Cj4gPj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIFNV
QlRFU1QoaWd0X3BwZ3R0X3Nhbml0eV9jaGVjayksDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCBT
VUJURVNUKGlndF9wcGd0dF9jb21wYWN0KSwNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIFNVQlRF
U1QoaWd0X3BwZ3R0X21peGVkKSwNCj4gPj4gK8KgwqDCoMKgwqDCoMKgIFNVQlRFU1QoaWd0X3Bw
Z3R0X2h1Z2VfZmlsbCksDQo+ID4+ICvCoMKgwqDCoMKgwqDCoCBTVUJURVNUKGlndF9wcGd0dF82
NEspLA0KPiA+PiDCoMKgwqDCoMKgIH07DQo+ID4+IMKgwqDCoMKgwqAgaWYgKCFIQVNfUFBHVFQo
aTkxNSkpIHsNCj4gDQo=
