Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3414B5FF8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 02:22:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0138210E3BA;
	Tue, 15 Feb 2022 01:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF6110E3BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 01:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644888168; x=1676424168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/0Lj4VMQkR9Ib1QToIT+pwZ0KlBSSUV6/Ruwxl+7FNI=;
 b=RhnWvpLk6AQw4oxoOdEU1WrWZVQUNT1KLdlXjZ7zw3rWMojCF8JsG5Yr
 9jYUrsLYD107ZLAhLgMLhK7dF4DHIskHYG5t0Gc+AFDVPiB8pAwYERY6e
 wIRM74kTaYRCDbOgVKyJP2HXjcqvIyONjacSfbkWPUP/c9AtFCOc16Tvp
 5+RFfO18ZIF5e+MaWYGwKqjUQizfEYpAlP2h6CdheTXtVzPfH0fWCuW7W
 ZRR8ffoNtvyNQjfu5I1TlNvoNiRVV79W+WMgzhcBxRG+W9oS06SLudZ+o
 LuZfN3QOTujj5U51t2hbSDY65w3zYNfHXnLd9BGY1DtKrh/u0PG3RWTnV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="233770411"
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="233770411"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 17:22:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="544018545"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Feb 2022 17:22:33 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 17:22:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 14 Feb 2022 17:22:32 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 14 Feb 2022 17:22:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/WKb3wYfN7+XabLRnxznHcD/EIbmRVffzX/hbLqr0NX21EvGfzGOEOTgwIDNpC1cEI9KWIv8ptcWsf8sEtKEgH4V6FD+Xp4pAm4YYAkgDvoqMzPRo4umcABypLWTQd2b7vZEH+RLxFhSeW2DicXSlX6DM/qrUaaI66jd9TPeoF1CYazn5ModcoIkxgvhif0RGKVcTog1joCabIPZ2qxqQth5ebcrjVnsNIXGxmdiU2kWgafmI5+LEPvld+rnaxRDt+lhmWhmmYmi5XsnhS33r1P/3AonqXwWoafMJnDDIWSzfZWbFB09ckAv1n8JSFjgoZwXl4Bersh0M7YiAORAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0Lj4VMQkR9Ib1QToIT+pwZ0KlBSSUV6/Ruwxl+7FNI=;
 b=fHYyQGZbMgNN8pmt3aougjfxHJGlW8jLos62Faf4bHc9cyRKWgbkuac5qXKxX0P6m+CFxaoiRY1WXpnoVvsegK9WJbBxNCVAXQKBwm/SuoSl8hxg/sC4wFX492r8/Ge1iNaFiljZvt1Majn3EKYgCRLMu4tN2ava64gCtb59q+C0CGWOhb5V3UTrq44f5+AQ9omZazpGxmc43KoadZTi80hdZdwcBoKcH8FUR1zqdN1g1WLGqQR40SAzLIhBL14pYn3hunPFXkmEys4yknVGc97JE50Nw24Xz3S0V44P18MDocHh96x7aKRTi/2ztVC+mgy04EPhGBpmcHaQ3POsEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by CY4PR11MB1589.namprd11.prod.outlook.com (2603:10b6:910:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Tue, 15 Feb
 2022 01:22:30 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::20ea:e883:512e:a34a]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::20ea:e883:512e:a34a%4]) with mapi id 15.20.4975.017; Tue, 15 Feb 2022
 01:22:30 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
Thread-Index: AQHYEqH5/+h2jkBMckGW0JGoCGdjO6yDwjUAgAZf6ICAACwmAIAACt4AgABNh4CAAAUzgIAI3zCAgABlRwA=
Date: Tue, 15 Feb 2022 01:22:29 +0000
Message-ID: <7c1d6752fd99e0649407f308f0e637cde67418b4.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
 <20220204181924.GA18242@jons-linux-dev-box>
 <86faa4f1dd88a52b0ddf13a1e6804d01732b14ea.camel@intel.com>
 <20220208221814.GA24152@jons-linux-dev-box>
 <f3cdc0a3a56eb452216b74bf0a12b112896b47f7.camel@intel.com>
 <20220209033436.GA25278@jons-linux-dev-box>
 <bad2d5ae25604173682960a95d81d2d0debac585.camel@intel.com>
 <f600f42b1b7f1ba0b47133709671da012464eefb.camel@intel.com>
In-Reply-To: <f600f42b1b7f1ba0b47133709671da012464eefb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c67d730-18f0-454f-6edc-08d9f021a280
x-ms-traffictypediagnostic: CY4PR11MB1589:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB15894419179A48D25999AA3A8A349@CY4PR11MB1589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:311;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eav/gKYYeAqC6nV3SPDtEQSK9nObXbznfi3en3Pj3y6xnsPWlA2NYJNm6xdFx4RttC3hgv8QA/tmaXlfaN7RIc252OJk3vBDDaKUCCkthl9ZPDkPD3nqV/KaCpgN7yxIh6l5OwSb4X32EUcd8BbIr4r0mGj4brUXqL/gOSs0xQwj+1pSvXn5xtuBuEORCTGC30tEyhtSSxB5g1GcTy5IyOvzU0thxS0JtKwtiHScogg6fAaxSodIVor/RLsw61TSOu2vARG7NxdIfJ5GGwnrNikiEkn6xOAZDG+cOo2+yq7oHItHdS+c92opCz8kbQytYAivcdqc77IjXnzS9DqFxyKsg6q7wawyLGwx45fPTxYobTeM5lPpIdcTEJWgh+yzwyAX3Vi15+UNSFtRcoOgQ2P43wEXNuH+IMzUhODSJ6YxwCJZOcdVFfBA1T1qXp8iPDoeLrRUbkEpVlicQeQ4UtwprjFRdiTf3CLEPwtGPBPh0azRAV49FlQnTpJIQvdxxwkNQY3vLF6imxN7OsUNsEN1tOYLfNqqC6pncQCbBxbxUg8axXe8HoEwTaI1XRRssNvdgo5Kd+TEsqd7XQbJp33YggJAFvbbdB61Y6koquMOELGg2y//Bo25H/73NhUSNrfZOBcgDpORamYjzT7u2880dkwIiDELm0GPsy9c8vg2W5GoMIhyQ8+0xxBdlJs7St1qzO8HO738JVc3Fqybpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(122000001)(82960400001)(76116006)(8936002)(6506007)(36756003)(38100700002)(5660300002)(66946007)(6486002)(508600001)(71200400001)(4326008)(26005)(37006003)(66476007)(86362001)(6512007)(316002)(38070700005)(6636002)(2906002)(66446008)(66556008)(64756008)(6862004)(83380400001)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djNUZW4yVnByeXJSU1NEUFR1YU55b3BnNmZhN0tqQy9Kc2RoZitNOTJBbVBm?=
 =?utf-8?B?SitRUWdSakVqOC9SK2FQRG5aME45c09pRnByVjhqSmJwK2F3QlpVOWNkN1Jt?=
 =?utf-8?B?YkExUWtGLzRaellwd1l6eXdzVlFEMVRyc2xhZDVXWTZ3NENFamlxcEozSTgr?=
 =?utf-8?B?WEFQOW5JcGFkMmxSVkFtano4V2Zqa3kzT0JTS3dkbG5FYmpIbENKYlFJQllk?=
 =?utf-8?B?Nk5EYU9pNVQ1Wmg1cHBpT1F2L3ZlWkxoM2dNV1NXeTh3bnhHMGlkS1F1elI0?=
 =?utf-8?B?bkJTZWpEWlJmbEZhVHpUckErTXdpZ1hic0xTTVJVK3N4dERhMjRiUFVCY1Jj?=
 =?utf-8?B?WGIwU3IzM3k0RXd4YytaSDJkc3htN1BpbEMzeFFKWElibXNwTjU1dmxZSHU1?=
 =?utf-8?B?QVR6dVMxVm5Ebm83d0hSTytlbTdmR3hUM2JEWGZ4Y3BpTWgzaVRUYnhwVnpt?=
 =?utf-8?B?c0VVeWdGVHIzdmFxcitVeVczMTl1QWd4bTZxdmFYSGwvZVRBLzJCMXpUWUpZ?=
 =?utf-8?B?T3ZWbkJUZjBFUnN1QnpzRVZmL2I2NEMxWnQ0ajViaWk2cVFNWnRGUm9tdklQ?=
 =?utf-8?B?bzgydFBMcGwvalJ2ODdrcW1XSmZDdjhXNUF0b0d1bm5QQThXaStrOFpvNk1T?=
 =?utf-8?B?UEQyeS9MVWYwSlgwZ2ZSYUFpS3hMRTNRSXVIZVpSMU43UkcyaDRleE45ZFRy?=
 =?utf-8?B?WUhROFFha2RnSDJaN1hVN3gyYVhpYkdCMUVJZm5NRWFsVnRrbzkzRFpadjEx?=
 =?utf-8?B?VnVZazlLRzhLc01HSTN3OVNtUjE1QW0xTTdIRnNmZ1UxeE55NW9peXNZVzFh?=
 =?utf-8?B?UjMwWVVaKzJnZjM3UWIycjE3cWNwQksxcFFNNXBwSkxWcGorMzI5VUdQR2Jk?=
 =?utf-8?B?dWZybUhjREM2di9MVjBMbHFEdlZua0ZTZFRncDRNQ0NKUlpGc1E3M3JGdy9o?=
 =?utf-8?B?dmlkaXNMSzE1OUNqZENxTlhWM1l1MDBhRVBSSzh0ZXkrSTRxeE9pZllYYW5m?=
 =?utf-8?B?UWNZS3d4MHZBN21pSnJaVW5xL29mb1Q5cGZKTDgzVStVdGNyd2Fwa2lvU3Z3?=
 =?utf-8?B?a2JmMEUvUkJBd3VRSFJnVDVDOG55U3VkdHlIcHlJd05SVlduanF3WXRSTGpS?=
 =?utf-8?B?MnZxL2l3Y20vTXhuOG1XME01UTA4SG4xc0ppc3BjUENDeDQ3VXdBQUNmcC9a?=
 =?utf-8?B?ckVxbzhVS2VKRnpRbWJGZUp6dE5rRXdjQkVuU2hRTFNoT0svcGIrMnpNcEx1?=
 =?utf-8?B?dXF6OWU4OUs5dElNT2E5ZWoyYjgzRVhlMVlqVlB5NzhrWVp2bTlNWDFGYUo1?=
 =?utf-8?B?cmJCcnFPWStsSjVqOFpWcWI3cHFMU0swUkZYSUJSK1AvVlFmcVcwM01CNy9D?=
 =?utf-8?B?K1FXWmpPK3RiTWQxdkZWMEl2Um1ReVRnYjJtYnl1UmpjcFdiSnRTSXNSdFQx?=
 =?utf-8?B?VXA0dUFvU0pOZ1A4UXNPOHcra3JMMGhpZlRjU1R3TUNjOEIzRTE1a1UvL0JO?=
 =?utf-8?B?V3JOL2ljRU5ma1ZLM0tqUlhaNTVuTWV2dm1aa1o1NDJaeFdWdFAxM2FSSmtr?=
 =?utf-8?B?R1dlNFNpU0p1VVdRMzRYRlUxYjZLa0tnNDdKSUJNTytydWRqQVNCQys2ekpK?=
 =?utf-8?B?VG1wOUtTamNYNFpTNkpaTFdKcmJXNmFGMzJqSmFDaXBlVnN3Z3RPY0ZpY2Rr?=
 =?utf-8?B?Nzd3eUNLNXowQlBGNjIrQldERlN3VEErNWlSeWN5bURlL0hlU3JmZkxudEF4?=
 =?utf-8?B?dVJuNWJEcjlhZC9UV1ZwSSs3c3Rrbll2Smljb0VROFFkUmY1N1AxdjJ6ZS9i?=
 =?utf-8?B?NUxKSklmMXlqZ3I4K1lKRTU4dkVsMEUxMHhSRFRPbjExZEVuc0JrbllvYy9P?=
 =?utf-8?B?THFTbEp2eGdFZEpaQkZmenREdFp3bVpCTFQvc3VyTTArQWdtRUVrL2xKVjlw?=
 =?utf-8?B?anBpWUhVU3lObEcvK0Z5Nk1HQ2dORGlQT0Yza0hMMHBrNmpGbU1LZ2Q5VTBD?=
 =?utf-8?B?ajNMS2lRTDZ0TzA2UXVKSklSbFg2ditEaldwVFhWdGVHc1ZXRnBoY0NzdkJT?=
 =?utf-8?B?UFA4Rm1ieGgwcTRZMGppL0hIaUd6dE1iVEZkUnE1RVp3Wm4vanBKQzVKdms5?=
 =?utf-8?B?K3VKV3BpTWtSY1NqRWs2STF6b2NLZXZJZXczZGtBb1BFN3EyN0QzUHdDeUZC?=
 =?utf-8?B?NlZ3UWJuU1BBQVF1ajNhVUhCNDdWWVhWaXBnUElTNnF4OS9JdHBDM29ON01Q?=
 =?utf-8?B?dzZ5NXNoUEtrc2d2TW9FVGs3RWJhdW9jSjNvZCtQWGpTc3RkVXZlNHQxSnFx?=
 =?utf-8?B?RzdNOTJ6VHd5UzdmRkNwTUZoMjN3d3FOSTVmY0czMVJiTVNGdi91dz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F8F766F171B20F4F855CB78672AB20A1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c67d730-18f0-454f-6edc-08d9f021a280
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 01:22:29.9767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dt3x7xNJecfVKyWppJiwifyvXp2e9JjpRulpW9yU62+BUGKU+1Bs0bkJFQBF+KVGKRTAkMbAu3jY4c9ig9NPgb+orAbPahm9lbOzlutbQMq6uD17s8nmYr+MI3idWncz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgbGlrZSB0cnlpbmcgdG8gbW92ZSB0aGUgdm1hIHVwIGludG8gZ3VjLXVwcGVyIGlzIGlt
cGFjdGluZyBtYW55IG90aGVyIGZ1bmN0aW9ucw0KaW4gaW50ZWxfZ3VjX2xvZyBhbmQgaW50ZWxf
Z3VjX2xvZ19kZWJ1Z2ZzLiBJJ2xsIGhhdmUgdG8gdGFrZSBpdCBiYWNrICh0aGUgbGV2ZWwgb2YN
CnJlZGVzaWduIGkgc2hhbGwgYXR0ZW1wdCB3aXRoIHRoaXMgc2VyaWVzKS4NCg0KSSdsbCBqdXN0
IG1vdmUgdGhlIGxvZ19zdGF0cyBiYWNrIGludG8gaW50ZWxfZ3VjX2xvZyBhbmQgaGF2ZSBpbnRl
bF9ndWNfY2FwdHVyZQ0KaGF2ZSBpdHMgb3duIHN0YXRzIHN0cnVjdHVyZSAtIGJ1dCBrZWVwIHRo
ZSBWTUEgYWxsb2NhdGlvbiBvZiB0aGlzIHNoYXJlZCBidWZmZXIgaW4NCmludGVsX2d1Y19sb2cg
KGxpa2UgaXQgd2FzIGluIHRoZSBwcmlvciByZXZzKSBhbmQgaGF2ZSBpbnRlbF9ndWNfY2FwdHVy
ZSAicmVhY2ggYWNyb3NzIg0KaW50byBpbnRlbF9ndWNfbG9nIHRvIGdldCB0aGUgdm1hIHB0ciAo
bGlrZSBpdCB3YXMgaW4gdGhlIHByaW9yIHJldnMpLg0KDQouLi5hbGFuDQoNCg0KT24gTW9uLCAy
MDIyLTAyLTE0IGF0IDExOjIyIC0wODAwLCBBbGFuIFByZXZpbiBUZXJlcyBBbGV4aXMgd3JvdGU6
DQo+IE1hdHQsIGp1c3QgYSBmaW5hbCBjb25maXJtYXRpb24gb24gYmVsb3cNCj4gDQo+ID4gPiA+
ID4gPiBPbiBGcmksIDIwMjItMDItMDQgYXQgMTA6MTkgLTA4MDAsIE1hdHRoZXcgQnJvc3Qgd3Jv
dGU6DQo+ID4gPiA+ID4gPiA+IE9uIFdlZCwgSmFuIDI2LCAyMDIyIGF0IDAyOjQ4OjE4QU0gLTA4
MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+ID4gSWYgdGhlIG9iamVjdCBsaXZlcyBhdCB0aGUg
R3VDIGxldmVsLCBvcGVyYXRlIG9uIGl0IGF0IHRoZSBHdUMgbGV2ZWwuDQo+ID4gPiANCj4gPiA+
IGUuZy4NCj4gPiA+IGludGVsX2d1Y19sb2dfaW5pdF9lYXJseSBjYWxscyBtdXRleCBpbml0IG9u
IGd1Yy0+bG9nX3N0YXRlIC0gdGhhdCBpcw0KPiA+ID4gd3JvbmcgYW5kIGJyZWFrcyB0aGUgbGF5
ZXJpbmcuIGludGVsX2d1Y19sb2dfaW5pdF9lYXJseSBzaG91bGQgb25seQ0KPiA+ID4gb3BlcmF0
ZSBvbiBndWNfbG9nIG9yIGJlbG93IG9iamVjdHMsIG5vdCBhYm92ZSBpdC4NCj4gPiA+IA0KPiA+
ID4gVGhlIGtleSBoZXJlIGlzIGNvbnNpc3RlbnksIGlmIHRoZSBHdUMgbGV2ZWwgb3ducyB0aGUg
b2JqZWN0IGl0IHNob3VsZA0KPiA+ID4gYmUgaW5pdGlhbGl6ZWQgdGhlcmUgKyBwYXNzZWQgaW50
byB0aGUgbG93ZXIgbGV2ZWxzIGlmIHBvc3NpYmxlLiBUaGUNCj4gPiA+IGxvd2VyIGxldmVscyBz
aG91bGQgYXZvaWQgcmVhY2hpbmcgYmFjayB0byBHdUMgbGV2ZWwgZm9yIG9iamVjdHMNCj4gPiA+
IHdoZW5ldmVyIHBvc3NpYmxlLg0KPiA+ID4gDQo+ID4gPiBZb3UgY291bGQgaGF2ZSAyIGludGVs
X2d1Y19sb2dfc3RhdHMgb2JqZWN0cyBiZWxvdyB0aGUgZ3VjX2xvZyBvYmplY3QNCj4gPiA+IGFu
ZCAxIGludGVsX2d1Y19sb2dfc3RhdHMgb2JqZWN0IGZvciBjYXB0dXJlIGF0IHRoZSBHdUMgbGV2
ZWwuIFRoYXQncw0KPiA+ID4gbGlrZWx5IHRoZSByaWdodCBhcHByb2FjaCBoZXJlLg0KPiA+IA0K
PiA+IFRoYW5rcyBNYXR0IC0gSSdtIGluIGFncmVlbWVudC4uLiBJIHdhcyBjb25jZXJuZWQgYWJv
dXQgdG9vIG11Y2ggb2YNCj4gPiBjaGFuZ2UgLSBidXQgeW91J3JlIHJpZ2h0LCBJIHNob3VsZCBi
ZSBmb2N1c2luZyBvbiB0aGUgZGVzaWduIGNvbnNpc3RlbmN5Lg0KPiA+IEFib3ZlIHNvdW5kcyBs
aWtlIHRoZSBjb3JyZWN0IGRlc2lnbiAodGhlc2Ugc3RhdHMgYW5kIGxvY2tzIHNob3VsZCBiZWxv
bmcNCj4gPiB0byB0aGVpciBzb2xlIHVzZXIpLg0KPiA+IA0KPiA+IC4uLmFsYW4NCj4gPiANCj4g
DQo+IFNvIHRoaXMgbWVhbnM6DQo+IDEuIGd1Y1t1cHBlcl0gYWxsb2NhdGVzIHRoZSBzaGFyZWQt
bG9nZ2luZy1idWZmZXINCj4gICAgLSBidXQgd291bGQgYXNrIHRoZSBsb3dlciBsZXZlbCBjb21w
b25lbnRzIGZvciB0aGUgc2l6ZXMgYmVmb3JlDQo+ICAgICAgYnVmZmVyaW5nLXVwIG9yIGNhcHBp
bmctZG93biB0byBtYXRjaCBpbnRlcmZhY2Ugc3BlYy4NCj4gMi4gZ3VjLWxvZyBhbmQgZ3VjLWVy
cm9yLWNhcHR1cmUgcmVxdWVzdHMgZ3VjIGZvciBhIHZtYXAgYXQgdGhlaXIgaW5pdC4NCj4gMy4g
Z3VjLWxvZyBhbmQgZ3VjLWVycm9yLWNhcHR1cmUgb3ducyBpbmRlcGVuZGVudCBsb2ctc3RhdHMg
YW5kDQo+ICAgIChhbmQgc2VwYXJhdGUgbG9ja3MgaWYgbmVlZGVkKS4NCj4gNC4gd2hlbiBsb3dl
ciBsZXZlbCBjb21wb25lbnRzIGFyZSBkb25lLCB0aGV5IHJlbGlucXVpc2ggYWNjZXNzIHRvDQo+
ICAgIHRoZWlyIHJlZ2lvbiBieSByZXF1ZXN0aW5nIGd1Y1t1cHBlcl0gdG8gdW5tYXAgYW5kIGZy
ZWUNCj4gDQo+IEEgc3VwZXIgY2xlYW4gc2VwYXJhdGlvbiBsaWtlIGFib3ZlIGNvdWxkIG1lYW4g
cmlwcGluZyBhcGFydCBlbnVtcw0KPiBhbmQgb3RoZXIgI2RlZmluZXMgdG8gc3BsaXQgdGhlbSBh
Y3Jvc3MgZ3VjX2xvZyBhbmQgZ3VjX2Vycm9yX2NhcHR1cmUNCj4gaGVhZGVycyAoc3VjaCBhcyBy
ZWdpb24gc2l6ZXMpLg0KPiANCj4gSSBiZWxpZXZlIHRoYXQgc2VwYXJhdGlvbiBjb21wbGljYXRl
cyB0aGUgdW5kZXJzdGFuZGluZyBvZiB0aGUgZncgaW50ZXJmYWNlDQo+IGZvciBsb2dnaW5nIGFz
IHdlIGJyZWFrIHRoYXQgcGljdHVyZSBpbnRvIGluZGVwZW5kYW50IGZpbGVzIC8gY29tcG9uZW50
cy4NCj4gRm9yIG5vdyBJIHdhbnQgdG8ga2VlcCBndWNbdXBwZXJdIGF3YXJlIG9mIHRoZSBpbmRp
dmlkdWFsIHN1Yi1yZWdpb24NCj4gYWxsb2NhdGlvbiByZXF1aXJlbWVudHMgKG5vIHJpcHBpbmcg
YXBhcnQgb2YgZW51bXMgYnV0IG1vdmluZyB0aGVtIGFyb3VuZCkNCj4gYnV0IG9ubHkga2VlcCB0
aGUgcmVxdWVzdGluZyBvZiB2bWFwIGFuZCBpbmRlcGVuZGFudCBsb2ctcmVnaW9uLXN0YXRzDQo+
IHdpdGhpbiB0aGUgbG93ZXIgbGV2ZWw/DQo+IA0KPiBBcmUgeW91IG9rYXkgd2l0aCB0aGlzPw0K
PiANCj4gc2lkZSBub3RlOiBlcnJvci1jYXB0dXJlIG5vIGxvbmdlciBuZWVkIGxvY2tzIGFmdGVy
IHRoZSByZWNlbnQgRzJIIHRyaWdnZXJlZA0KPiBsaW5rZWQtbGlzdCBleHRyYWN0aW9uIHJlZGVz
aWduLg0KPiANCj4gDQoNCg==
