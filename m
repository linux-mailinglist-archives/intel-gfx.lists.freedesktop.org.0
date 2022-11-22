Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2654F634541
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 21:11:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C1E10E463;
	Tue, 22 Nov 2022 20:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986EE10E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 20:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669147869; x=1700683869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ndWfgksXW0eYwIZfwWJppHSs7gGnO6quj8yLhXtwe4s=;
 b=bMM2T/QbG0v4Ow3JjqCMGC3NnBOmlM+WIx5TxKbDL8TuvRutGQIROmO5
 rHi03vflIZfPejThq643FF1R2pXKbq4r0+DAHFLdJdLE0Be5Ke7ikN2Mh
 O40S0LUew6JhqUhPLQDfcHJmOwwlwkhr/7Xx6+gACDWlyfj+IGMjjEnS2
 fzG9LsToSWHxssLCQ5bvQqTMC7hVjhPwtmhaO+DM9gEWt+RBjFWZ4WLz+
 6YyompEeg7ManUNQslVkLYamuVxG96aeatJWVXdBKVMnny5cWnSxbMmTU
 WPf1Bt23b28Wcapnb4y42naQfLtE4KcGC5uwZGBD4O1b11WvkowFgKt5W w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="312606018"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="312606018"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 12:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="643845716"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="643845716"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2022 12:11:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.13; Tue, 22 Nov 2022 12:11:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 12:11:08 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 12:11:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/qBQobMkL0YM6DBMRsHa8mfJwNu68AuKO8ZoO8mj4hGNWQzf95TjG9d+44tDoUS3M8rrjozXTarFx+Ob5e1dCj6nfP1itfMN0PIeleKwyxPnIS2SBXqo/mT3XICSq3ITCSuR/0h1/nG0uEmXQLl3ztVC1vKLYaZ43ISRfw01V2kSES0hFBIjMBJdsCgL5wt3wxV3nPura2hhWksvTrfBpxZ7LRtmeHlk57GxyhdY1eU6OpiI6uZyNis4KmHZaBUN2rmalXVzn7kameVcTg9a8PWDNhXhb8brmbuThvD8ZsrdAbYgQ0Ev6HcWHAU6r1WntR/4hK5uYF8nTgguPMNAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ndWfgksXW0eYwIZfwWJppHSs7gGnO6quj8yLhXtwe4s=;
 b=U9eZMnhJtAEsHvZXYI9/ld90gl9GrHQiXyJOsT9rguTmTtH864XxrKhPypMcM6C0G31+5eRn3+FMIDahqzX7S1ESm4k7nMYYMuwiRhCmj1Ek646ZaAj1wvbMRvocJz8ITZMtAheAPalxOFKhUJRfXNLe8pbqWKRbdCWtwj6L7JCScSa6L0qtrpC3zxwswEBkSzw67rLS+gm690O3YCaPtUSqBCR5IJSOZ4UDqknsYlKjEwQdj4FLWFVtg1T50BZm42iqiv5KCM+3YyMcV+9EcxZCWy09Tt2uZIsny+i7+sKQaITESmiZkk0Q+RjUnLdQqi6sVptEIiIz0KfOwGlepQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA0PR11MB7305.namprd11.prod.outlook.com (2603:10b6:208:439::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 20:11:06 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 20:11:06 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
Thread-Index: AQHY+huIx9La/ySYfkqX4YmGIxfCfa5DSDkAgAB2CwCABxVqAIAAleeA
Date: Tue, 22 Nov 2022 20:11:06 +0000
Message-ID: <61495b1b093f277d2f231b1fe774c0d9329428c0.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-3-alan.previn.teres.alexis@intel.com>
 <Y3Zbdo5M/ghLb+7n@intel.com>
 <bb14f688b7c8b5738440fc11490cffba0adf1016.camel@intel.com>
 <877cznz1an.fsf@intel.com>
In-Reply-To: <877cznz1an.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA0PR11MB7305:EE_
x-ms-office365-filtering-correlation-id: 6e8613d1-1b37-4088-2b23-08daccc5b076
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2vLbZzfr3ILidkuofA0sJCVUtoo3Vpf3TKkABzlzsTQNgJQ/n0zoMO/YFPKCUS4pEA7tmXB/pVeKJaay1IYZLLAvGKNOxMP7jT/gzfBwBfcpINeYt/FYQGYAMthRMwdpKTlyMEWeHkDdloZlJtDXutYIAmleE5vrmEhhOzaPuoQ7i1IgkQjXDLiijeFk8SKumXebTHBjIbEuQTKxSGbtHCTZZsD8Ya73A7fOUGYxwYG0wcs9O5AIxbWnFjNsTpAw2kImG6Ab71ummqKoMp8YdeE2tGaNrgF2fpzNCIUM7hn7JSUIr2Vi+d8GuQMvE1IdLVxA+M/UFnT7MLWu/vINDhB3uM1QNhCMkur2zcBafLPpHPF/vr2yaiMzJ6yT/iO5pqR4WC39q/a616qlUkOdjVOD4/Cq4iSUIgCo2+GdAooyP0rnnhwDoyIm5nPftrlRkAI0MSF4MS+Dc3EL2bUwGU6lhfrWeF2UFD4ZkPB1uwDsp1Dji5mtah2MPho9sPCcC6SaoeBiKWi/rG8vHhsJy7udRzmRcRiioSUpWxgz3Gh2i1hrnok2drj0BW6FMXicMYg1YrkhHqDmq3tabE2toyzTFZbtolADP1//rT/uf2aUJUx2l+5po0UF+K8N9dFNMMToxrAmEQ1Kc8QCbQoLBxfIZcKR/K5V2dFncEd/0o2YdykVoR9wsOSPOWs115merBq7GDcnFqnJjqsX+quXeA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(376002)(136003)(396003)(39860400002)(451199015)(6512007)(26005)(6506007)(2906002)(316002)(2616005)(110136005)(83380400001)(86362001)(186003)(4326008)(66446008)(38100700002)(36756003)(8676002)(71200400001)(66476007)(122000001)(66946007)(64756008)(4001150100001)(8936002)(82960400001)(66556008)(91956017)(76116006)(478600001)(5660300002)(41300700001)(38070700005)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak00ZzEyMWdmMVNKWVdvbjZPV0pYTDVYRmx3Yy9NU3NEK1ZQcFlkZmJnOTFC?=
 =?utf-8?B?ZjBqL0JmdXVTcE0wWjlIcWF2UmNmUHJHelFJZDJPRDVhM1dRTm51eFM1cmNn?=
 =?utf-8?B?M21oQ2dRQkZHMi9XZ3hWTWk0c1l4cXpkWjliSmpIVVgrVmJGUVJiTExLcW9S?=
 =?utf-8?B?bFA4S0xpZlRicHBFT01jSzJRMHBrL0hlM1pGZnE5bzF0RnJDUXNjc2Y5Yldm?=
 =?utf-8?B?Q0kyVGkxTS90aHprajJVc2o0OUVwcmd0ck5QOWlEa2RrbStPa3JpNTUxeUFt?=
 =?utf-8?B?Wmh1dDZYQWhEeUpGNEtBalJ2MmZBdTlySlIraG5mS1hoMmwyWVVjSmlEQlBB?=
 =?utf-8?B?RnVKZFNkdjgrcjdQQm9ZU1c0M1NFZ2xWTXVOdEFyMGdidE9CL1hOWDF4YzVT?=
 =?utf-8?B?dTBzbDFmRTZUK3JUY2RCQ2NSQWF0alpBdzhLSTFlOFpFZ0dwWXJONnRDYXF3?=
 =?utf-8?B?ZGxUcTNTQk9QODNqTU0xQ0t5K1k1TmsrRlV1WG5HSGtiSkh6ZnNaTzJPYkdL?=
 =?utf-8?B?ajZXS3N5WFNoSjhqQzRIdlRiR2VkMWkvUEx2UG42Yy9WZG1KSDk0dGRQaVhv?=
 =?utf-8?B?M3ZzbHRYRG0yN3FJQlpQekVybVFXQXRJZWNHYjZhTnJXWFlBSWdNZUpiWGRQ?=
 =?utf-8?B?Q1paeVFNdk8vZllzZnk4eDcxSkRkR1hWaWhnTU5ydlQzYTJTRk8vU3VnZC9C?=
 =?utf-8?B?blpNcDBHd1JHTytvM0dVZ01UQXFwazl4SHltMGgvd0x1ZVVWZWsyTjJQRnBl?=
 =?utf-8?B?NFJiRm5ndm9vUHE5NzdjMTRRZlNqc25aelBudXVrWDhjT0xrTFdudnhiTWRH?=
 =?utf-8?B?OGN0blAxZjQwc2JlT085YmZWMWtHNmx4VWNVYWw0QUI2dnFiVC9BRUJ2NGpY?=
 =?utf-8?B?UWc2V2pMQ1VXTGxVUVJzZENzNnR6UzEwUzhKelVpL200QUU2aEk0RTJPem1p?=
 =?utf-8?B?bHh4VVdBYUo4OHA4OTA5TVc5NlRuM29vQjlOTUtxUzhRYXVKZ3RleHh2ZUVv?=
 =?utf-8?B?ZTVKcEwzR0tMNGZaR296Wk53VktBTWRES0MvS0pWQ09JRFhQY2lNeTJOYXJI?=
 =?utf-8?B?bXJpS0svSzFlci8rbDR3ZGcxbXl5bUhEYVhnYkFDM0J0OGF4MXhxOEo3ZjR6?=
 =?utf-8?B?QnFDeGIzRk5KQjA3ck45NFVsRTlLakdnQTZwaWNvaENMa0xaczdhYlRlYUFu?=
 =?utf-8?B?Mjg0c2pZR25lNTZmejRTVXBBSHJ6bXhhWHluTld4VUxTVXpPa2VNenNuOTEw?=
 =?utf-8?B?MlNET1NFUkhkSjdVV1VETEFsSVY4NjFTWjhMVWwvWWduZjJ1cnJCMnVHOTBL?=
 =?utf-8?B?OTFBTC9MTmxxRWdZOUxnYUNoc1kvSXVQcGZLSHh5b0lHZWdEUXgyV3doR1Bk?=
 =?utf-8?B?Z0pKV1hTVmVHVURMMENuWmFJTEUwcjdjU01GelhrdEExMlozRDhoeCtvS1JJ?=
 =?utf-8?B?MjZRdUVrK0E1NEVoUXJSL2pmVkJ5eGF2a21PK1Z1NCtmL1ZuYTVUYU5XZmpV?=
 =?utf-8?B?RmVDOG8yL0lnTTlzS3N0UXR0SUlJR0ZJbllxaTRRUGxuTUNWTzRxcVhBT0w5?=
 =?utf-8?B?U3Q4OStpdWx6QXVHaEtaOW1NOWFpcmdXYmp3Ui9LM29oYlhWQllPQ2ROSlZ2?=
 =?utf-8?B?enJzQTczWm54RklWWllpZHQ2bFdLMkZpWkg0OThUUk5aR1ovRHNBY082cGR0?=
 =?utf-8?B?eXB4QnFlQU83TmpsQldCUEozSUZXY0dOa3J5OHFzMzFUZzJpUkZJaDkzOHhp?=
 =?utf-8?B?NndiOHhPYWJWQ2Fna0dlQTU0ZHpRUTBsd3NCampvOEQzdndlYlNuMDg3R2tD?=
 =?utf-8?B?dVNuQXMrVTVpcjF0T0phWFZ0NDhoZGJsZXVwdHhzK05vdHZVbmRLRjAxNmMy?=
 =?utf-8?B?YTVrWmlhOXNWR2FoMjVJNy9jUWdUTW9CM1orZ0xUM2o1U29iYm5mSWRpbDhj?=
 =?utf-8?B?dUJHbXRUbit6RVVtT2lxcHRIWE1CM053a2JGVzVoYXFFb0dHOUtOYi9BQS9u?=
 =?utf-8?B?aHFTaUtFRnpEaC9aZEplVkp6VEVDVmhDQ0lldWRzSWpPOFRGbG5qQ2hmcWJ5?=
 =?utf-8?B?dXk2YXVycC9aU3MxZWpaV0VLTnRSS3Q2ME9VeE5qcVdJdThuOC9WSm04Q0Zo?=
 =?utf-8?B?Z0hRbUZZaVJTYUZ2WFhjTEV5a0N6b2pSRTZ1V2svZWlnS0luM29GblVaSCsr?=
 =?utf-8?Q?BVpYQA4Q8gGSf2wMF26FiNI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BAAE29D199E9B342A3289193CDC962F0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8613d1-1b37-4088-2b23-08daccc5b076
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 20:11:06.7348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uNcoT1es2L4qBteKN7AWNSKCoMzjjFfMQiJOwKAPEjIJYnXkn1wZ7ciX/4JNCbIoqCUpJTVH9zmJkfrn3xNqITKJkd7w1Zo9KrPNOB1GPKbk/473Bq2U0VjlnlHsW0wU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7305
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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

Tm90IGV2ZXJ5dGhpbmcgb2YgY291cnNlLCBidXQgaW50ZWxfZmVhdHVyZV9hY3Rpb24ocGFyYW0x
LCAuLi4pIGVuZm9yY2luZyBwYXJhbTEgdG8gYWx3YXlzIGJlIHN0cnVjdCBpbnRlbF9mZWF0dXJl
X3QgaQ0KYXNzdW1lZCB3YXMgd2hhdCBSb2RyaWdvIG1lYW50LiBBbmQgbXkgaW50ZW50aW9uIHdh
c24ndCB0byB2ZXJpZnkgdGhhdCBydWxlIGJ1dCByYXRoZXIgbG9vayBmb3Igc3Vycm91bmRpbmcg
cHJlY2VkZW5jZQ0KZm9yIGFueSBleGNlcHRpb25zIHRvIGl0IChpIGZlbHQgUFhQIHdhcyBhIGNh
bmRpZGF0ZSBmb3IgYW4gZXhjZXB0aW9uIHNpbmNlIGl0cyBzZXJ2aWNlcyBhbmQgY29uc3VtZXJz
IGFyZSBnbG9iYWwgYnV0DQppdHMgY29udHJvbC1wb2ludHMgYXJlIHdpdGhpbiB0aGUgbWVkaWEg
dGlsZSBhbG9uZSkuDQoNCkVpdGhlciB3YXksIHRoaXMgZXhjZXB0aW9uIHdvbid0IGJlIHJlcXVp
cmVkIGdpdmUgdGhlIG5ldyBkZXNpZ24gZGlyZWN0aW9uIGZyb20gUm9kcmlnbyBiYXNlZCBvbiB0
aGF0IGxhc3QgcmVwbHkgdG8NCnBhdGNoICMxLiBXZSB3aWxsIGVsZXZhdGUgcHhwIHRvIGJlIGEg
Z2xvYmFsIHN1YnN5c3RlbSAoZGVzcGl0ZSB0aGUgY29udHJvbHMgYmVpbmcgZ3Qgc3BlY2lmaWMp
Lg0KDQoNCi4uLmFsYW4NCg0KT24gVHVlLCAyMDIyLTExLTIyIGF0IDEzOjE3ICswMjAwLCBKYW5p
IE5pa3VsYSB3cm90ZToNCj4gT24gVGh1LCAxNyBOb3YgMjAyMiwgIlRlcmVzIEFsZXhpcywgQWxh
biBQcmV2aW4iIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPiB3cm90ZToNCj4g
PiBSZXNwZWN0ZnVsbHkgYW5kIGh1bWJseSwgaSB3b3VsZCBsaWtlIHRvIHJlcXVlc3Qgd2hlcmUg
aXMgdGhlIGNvZGluZw0KPiA+IGd1aWRlbGluZSBmb3IgZnVuY3Rpb24gbmFtaW5nIHdoZW4gdSBo
YXZlIDJuZCBsZXZlbCBzdWJzeXN0ZW0gSVBzDQo+ID4gb3duaW5nIGNvbnRyb2wgb3ZlciBnbG9i
YWwgaHcgZmVhdHVyZXMgc28gdGhhdCB3ZSBkb250IG5lZWQgdG8gaGF2ZQ0KPiA+IHRoaXMgYmFj
ayBhbmQgZm9ydGggb2YgY29uZmxpY3RpbmcgZGlyZWN0aW9uIGZyb20gZGlmZmVyZW50IHJldmll
d2Vycw0KPiA+IGVzcGVjaWFsbHkgc28gbG9uZyBhZnRlciBpbml0aWFsIHJldmlld3MgaGF2ZSBz
dGFydGVkLiAoaW50ZXJuYWxseQ0KPiA+IHJld29ya2luZyBmdXR1cmUgTVRMIFBYUCBzZXJpZXMg
ZW5kIHVwIGdldHRpbmcgaW1wYWN0ZWQgaGVyZSkuDQo+IA0KPiBEbyB5b3Ugc2VyaW91c2x5IHRo
aW5rIHdlIGNvdWxkIHByZS1lbXB0aXZlbHkgY29kaWZ5IGV2ZXJ5dGhpbmcgaW4gYQ0KPiBjb2Rp
bmcgZ3VpZGVsaW5lPw0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiAtLSANCj4gSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0KDQo=
