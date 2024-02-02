Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DDF84720E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 15:39:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AC610EF7D;
	Fri,  2 Feb 2024 14:39:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JtVabYY9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E2B10EF3F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 14:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706884792; x=1738420792;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9Q6KfbrhDC+uzuz9A/wBxj2ACwfYorX0gmjH42mNHZI=;
 b=JtVabYY940GjQgp3yPRIQmVqG5dOzcRBRNoHPOnfs4NNf1mNj5zi52J4
 MvZodAtVuP852XQ51KWQO5COvSRMU9gDxtc8OVL8QD3H6vi7lDPbeIOLH
 ebRDxfvC+RqHJVhSm8cxo5WO3CYgk3KS8d0ABpupFEemAyVxT87PgUMEY
 Tl+U9SoCO45lfu4ZeCyMAHVgwAZSD2cZ0q+dYLBT3S/M0s2VP93jLb+Ka
 Q9HTPaT9sCEuXw9TFbLFx35vBkFwyh7XJqn7y5jeoZJMjx+FNXccyADnE
 Xf2VODJnxp8UCN78rEep+hXqL2t6kKi0CK+978+EuXWUZsyunRONHiBWD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="11535909"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="11535909"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:39:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="164645"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 06:39:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 06:39:48 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 06:39:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 06:39:48 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 06:39:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXVsdnUMrSsG3qSPaumRjsyR8NjGgff59SZWwus0/rsIPFLP5J8p4PyVsHoXf1gx689+pHS/UNjgVGH/oeNTGGSNkCw2uOaQDstmG/WZYy4aIexPaucNCoKjb2ghd80xYqFQT6wN7J2bqycPe5wKBjyOJ1JwlGdXk1+8Bzn0errs3Gc765GT5O8yiH+1OClKPth+rXr556rZvexjBYPC81IgVh6rxhSfNxhM4GaBz1t6ItRDFV5TXpuDmglHpOR5U+no5fzKnvhk9C39FtGtyDhpQNNRMMU5J7gMZSOe9QAyHZz2FYrMDVdxnvwVD15JzPp1vuJVMb6ZCskgem1WNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Q6KfbrhDC+uzuz9A/wBxj2ACwfYorX0gmjH42mNHZI=;
 b=j9bZFSUN/F8sYq+Hm1O+SvQKFHTc7zbH7033EVL6xbe41EhQhFREIUbG6ZQDBoVoaINBgBs3K9oGbXleK2mezqILYPL/4F0Oe77Erd94gYvmf/tPnqWkHK8xwv1Tck9a43jdLWaOSnlnUZToJBtLMEY2C6r8KYFDBWQ0ZlE9oMCbPSeeSog5QZlIIXKdrTJhLNhiE6e0NFPs4S4QYusS3t4twIUvaijK2N3tiJw2nOVAwNXzlcgBnzoEKUqHfXTy0YxwcQSjat6P747CXFgDpmwl3sj6JDB9bjpuy64XmANIr5FMz3y7rDo1y5m8sfzRXd3F+UsnDQQmAZSSKBOP4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA0PR11MB4654.namprd11.prod.outlook.com (2603:10b6:806:98::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 14:39:46 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 14:39:46 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 15/21] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v3 15/21] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHaSr/fLhBJqIDItUKTTcOtSXlQWLD3NZ5w
Date: Fri, 2 Feb 2024 14:39:46 +0000
Message-ID: <PH7PR11MB598124D4987560692A92083DF9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-16-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-16-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA0PR11MB4654:EE_
x-ms-office365-filtering-correlation-id: 83f81a98-b77e-4871-826e-08dc23fccd49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /cNmRWGNIZH3Rs/ej2EeRbWKUuUBJc09AbJI+hvOpWPfrKpEve6GWMIsjybFuKRKWLI/z+3/uYR1xWzj1p1w+M356887lXNHMDqANM/jQSH6MYuWiQ4hIBbNOY85zZmciTuT4UEKjgMfkLLps/pVL+tG1tUeKHW8MVZuRa9D95bCKJrNugx2tOL/gLU5pI+5m7TLyMFBR61/lXUa+B/EJKzh78ZkC5VgMQR+IV8EoneHjjYY/sFZWjQ+IlryKWZ90CR4j+XTYuM+ubIRYkNOC2XcgTRfTm2h8A6/yCopLr5lfL5dAYiXBzRF6SVE/JyZeb70HgO415v7+Ex3O7j3uXLQV35MrSqCzHTlioz3YIH8mx1bZ63EEi1MLmeD0bcAYINTL1vjiYeNmNS3vnUMVM8Cjv/s45HaL1oIpsB/8WKldoeDseOWwuE8RpLTuUuPpWEezw31dE1Yr1EIt8/SjwLo40CxfnQJp7lMp4ZIcK8pzp29cLVcJLbPkO/o7/1w4LsG9m/+wxHN8INOZISWOlfw47wI+y6MnwHgQzGljCKimqMq31h+hLHvI1sT/JDtuxJhbhluv7tgMZg/u4R/KXuFXGi/7Fm2IhQxaBd2jz4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(55016003)(26005)(66574015)(41300700001)(64756008)(66446008)(38070700009)(316002)(66476007)(478600001)(71200400001)(83380400001)(6506007)(9686003)(53546011)(66556008)(7696005)(38100700002)(66946007)(122000001)(82960400001)(2906002)(5660300002)(86362001)(76116006)(110136005)(8936002)(52536014)(33656002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlZ3THVOanlvZGlJV3FCUVorb1VtbGcwUjJOejNJNGlsVkVRdm1xc0NPQUdT?=
 =?utf-8?B?UitvU1VZTW9EU3pSbldvSXlKSHJqMEhHMkFTVzN6KzdwNzBkZG9HREpOSWtW?=
 =?utf-8?B?ZDV4bVJhajhUUHJPcG95SEQ3Q0RvYmxXVlN3RXNWRTNWa2g4VGc3YVA2MnAv?=
 =?utf-8?B?anBJSUdJZ2xHUyt4YjMvVzk5UzRQTjdsK1Z4eDVtWkNVVUViN2ptdG1mSnJC?=
 =?utf-8?B?OVpFWk5Wc2ZpTnlHb2FzNjZRMUl6NjFvQURleWlPdy9xemRqdE5KZk1xclUy?=
 =?utf-8?B?NUpZMEZCUnd3TFg5RElraFVWRzVuS202ZlZaVFBxYmlldnYxMlk0NHJkTTAv?=
 =?utf-8?B?RHIvNVlsU1d5YjNZN3BXZTROdS95ZmxpSHVDNUIybzYwNHlJaTZnVThHMGJ0?=
 =?utf-8?B?ZTlDSnlCeHFYelBqNnVXM3JhQWpXb3I3bGxyK3pLUWJjLzh4Q21NUGNyUzk4?=
 =?utf-8?B?R29wL3FGSkI0bjAvVWNKOUJnN1RkMEp2WkdFY010eVRUQ1N1UXMyOUpQcnNU?=
 =?utf-8?B?MEFZWnVvN1RCOURaYVhQYWIydk5Sem53YUpYSTQ2bmpQYTJkM3VpcHQ5SlB2?=
 =?utf-8?B?VHpQSmswNUczME55QjZDRFk0cUZYSHRaWHM3Y05WdFR0TXNVb2pVUlNWWHZH?=
 =?utf-8?B?NnF6bzZoVzhjYW0rWHBzNnBRRFZnUm1rS0lQMlVReDNLS2hYRGNiN25ESEJK?=
 =?utf-8?B?S3ZZMVAyN0s5RHNBTm5EZ2RUSXlzcS9pU2N2cmZicW1nMm5HZFltOFU1dFA1?=
 =?utf-8?B?SnAva2NBd2szdXdjbnRRSUtRTC9QODUzMzFYNkNZT01pUDVyVTM3Z3k2MkFR?=
 =?utf-8?B?QkZ0YzdSVDVDNEtmT0lMQkpuSHlKdjg3d1RqZFFtY2R5QWV2T1U2VkNVOG1U?=
 =?utf-8?B?U0xXMVZNTU5xclZvKzhpU2xndUk2QktLci9jV1cvWUVXQ2tJbGxCNlZjMVIz?=
 =?utf-8?B?ZlFIVHBGRDlELy84aWEzTHFESUc1MDNjZmxuU2tiakI0UktWUzRFeFJwRmdO?=
 =?utf-8?B?YWdFS3JJbVZET1E5QnpETWx3RkVPdWNwTUdMSEtZa2JvTkdheHkyV09TMHB2?=
 =?utf-8?B?emszUjVxZ3lBSzZXdjI0c1FwMEpXU1dsVmxEdjBheXZDODdLL3ArOGdxSldQ?=
 =?utf-8?B?cXZMQXVSQ3kvbGFIWEt6Wm1RQXpIek8zSUZlRm9kSVRkSUhSV3NTOGVaU0N6?=
 =?utf-8?B?V25JdlhodXU3eGJ0dDhoSFFMMHorQXA4R1pCb2pVbFhHSkRLWVJUd0FHNDdl?=
 =?utf-8?B?SzhVWTBhTnBZZzBmemZ2Mnl0ZVQ5YlBiejlFR2xZdHpJbjE4dTlsNmIrb1FI?=
 =?utf-8?B?UnRCYW5DUmJUNE9lTEgwU3pCWFNBOHlhc0ZaNmZnSGhSRzU5djVmcXVWbklv?=
 =?utf-8?B?QkxLZkkvTk95MEpjMHU3QVluY1g4TCsrNG9WYWRGTG5KYk9DSFNtenVJelNV?=
 =?utf-8?B?MEl4SktZd2N3Nm03bjg5ZFk3V2N6bE1nOXYvQVhZZ1V5UFd6UXJOYmlIUWo3?=
 =?utf-8?B?WDAwMlEwbldpUzQvbFEvZGlkWGtVdm5FckRoRDhSUG5iRUlISnZSc3UxeENT?=
 =?utf-8?B?b2RlQWtQcktMYUlJQTJzb0NjdHBHU0IvcE5sUTc5NWtSK2ZmRkVUd20yWFhO?=
 =?utf-8?B?UjNUZ096a1ZyZDNUcGxjblArRFkrWVI3ZTd4SFNCN2NWbk1aM0doeGdvcE9I?=
 =?utf-8?B?N3M2VlR0RnpiRFJKekx2V2VJc0QwajFPaXFydmlVc0FFb0lnWVo0MEkxV0Zl?=
 =?utf-8?B?b3dnbW5NL0RHRkZDb25XS28wd0c2MjVvamdCaEQzNHlHckZod0dua1ZneDZ0?=
 =?utf-8?B?SDJQaC81eWViS0piM1dtVkJKdVBxN1NaczQyazFNU0NJVEt3V3RISk5sMTZp?=
 =?utf-8?B?OFVrNGJabzg0TE83SWhaSlY5QkN4NzlhVVJUOE12WVJWTlROTHpZc01wQ3Za?=
 =?utf-8?B?OE9YWEVtQU9ySzkzWTN5dXhMMVp1Q3hRM1l4d3BpZm9uTHVjWE55R0xYKzlE?=
 =?utf-8?B?N0FLYUZDS0VaS1FROGNpbHI2NmV2WDJVYktLS0kxNnhnaWx3d2kzQnZvWDhY?=
 =?utf-8?B?dXRwQnZNcHJ6Vmx4MWREOVdPbUNzZXhrZlpiNVFFdDRFUnZ3NkEyeFlyUWht?=
 =?utf-8?Q?iZQjItIuaBUHk99U3gvuv2vGy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83f81a98-b77e-4871-826e-08dc23fccd49
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 14:39:46.2550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y0LHp7tARoCv71pNTF3pDwpyI2yevzQC6u9MGHz6/5C9zI/bhpe7wlt/Qn5iBcLK4s+S1xDqCASWL+28gsuvAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4654
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDE1
LzIxXSBkcm0vaTkxNS9wc3I6IE1vZGlmeSBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkNCj4g
dG8gc3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gDQo+IEN1cnJlbnRseSBpbnRlbF9kcF9nZXRfc3Vf
Z3JhbnVsYXJpdHkgZG9lc24ndCBzdXBwb3J0IHBhbmVsIHJlcGxheS4NCj4gVGhpcyBmaXggbW9k
aWZpZXMgaXQgdG8gc3VwcG9ydCBwYW5lbCByZXBsYXkgYXMgd2VsbC4NCj4gDQo+IHYyOiByZWx5
IG9uIFBTUiBkZWZpbml0aW9ucyBvbiBjb21tb24gYml0cw0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZp
ZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNjIgKysrKysr
KysrKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCA4YmY2ZDA3NTRjMTguLmI4MzY3ZmI4YjNkNCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC00NjYsNiArNDY2LDQw
IEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9nZXRfc2lua19zeW5jX2xhdGVuY3koc3RydWN0DQo+IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIAlyZXR1cm4gdmFsOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB1
OCBpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSB7
DQo+ICsJdTggc3VfY2FwYWJpbGl0eTsNCj4gKw0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnNpbmtf
cGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpDQo+ICsJCWRybV9kcF9kcGNkX3JlYWQoJmludGVsX2Rw
LT5hdXgsDQo+ICsJCQkJIERQX1BBTkVMX1BBTkVMX1JFUExBWV9YX0dSQU5VTEFSSVRZLA0KPiAr
CQkJCSAmc3VfY2FwYWJpbGl0eSwgMSk7DQo+ICsJZWxzZQ0KPiArCQlzdV9jYXBhYmlsaXR5ID0g
aW50ZWxfZHAtPnBzcl9kcGNkWzFdOw0KPiArDQo+ICsJcmV0dXJuIHN1X2NhcGFiaWxpdHk7DQo+
ICt9DQo+ICsNCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQNCj4gK2ludGVsX2RwX2dldF9zdV94X2dy
YW51bGFyaXR5X29mZnNldChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSB7DQo+ICsJcmV0dXJu
IGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA/DQo+ICsJCURQX1BB
TkVMX1BBTkVMX1JFUExBWV9YX0dSQU5VTEFSSVRZIDoNCj4gKwkJRFBfUFNSMl9TVV9YX0dSQU5V
TEFSSVRZOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdW5zaWduZWQgaW50DQo+ICtpbnRlbF9kcF9n
ZXRfc3VfeV9ncmFudWxhcml0eV9vZmZzZXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgew0K
PiArCXJldHVybiBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQgPw0K
PiArCQlEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWV9HUkFOVUxBUklUWSA6DQo+ICsJCURQX1BTUjJf
U1VfWV9HUkFOVUxBUklUWTsNCj4gK30NCj4gKw0KPiArLyoNCj4gKyAqIE5vdGU6IEJpdHMgcmVs
YXRlZCB0byBncmFudWxhcml0eSBhcmUgc2FtZSBpbiBwYW5lbCByZXBsYXkgYW5kIHBzcg0KPiAr
ICogcmVnaXN0ZXJzLiBSZWx5IG9uIFBTUiBkZWZpbml0aW9ucyBvbiB0aGVzZSAiY29tbW9uIiBi
aXRzLg0KPiArICovDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHko
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOyBAQCAtNDczLDE4DQo+ICs1MDcsMjkgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdCBpbnRlbF9kcA0K
PiAqaW50ZWxfZHApDQo+ICAJdTE2IHc7DQo+ICAJdTggeTsNCj4gDQo+IC0JLyogSWYgc2luayBk
b24ndCBoYXZlIHNwZWNpZmljIGdyYW51bGFyaXR5IHJlcXVpcmVtZW50cyBzZXQgbGVnYWN5IG9u
ZXMNCj4gKi8NCj4gLQlpZiAoIShpbnRlbF9kcC0+cHNyX2RwY2RbMV0gJg0KPiBEUF9QU1IyX1NV
X0dSQU5VTEFSSVRZX1JFUVVJUkVEKSkgew0KPiArCS8qDQo+ICsJICogVE9ETzogRG8gd2UgbmVl
ZCB0byB0YWtlIGludG8gYWNjb3VudCBwYW5lbCBzdXBwb3J0aW5nIGJvdGggUFNSDQo+IGFuZA0K
PiArCSAqIFBhbmVsIHJlcGxheT8NCj4gKwkgKi8NCj4gKw0KPiArCS8qDQo+ICsJICogSWYgc2lu
ayBkb24ndCBoYXZlIHNwZWNpZmljIGdyYW51bGFyaXR5IHJlcXVpcmVtZW50cyBzZXQgbGVnYWN5
DQo+ICsJICogb25lcy4NCj4gKwkgKi8NCj4gKwlpZiAoIShpbnRlbF9kcF9nZXRfc3VfY2FwYWJp
bGl0eShpbnRlbF9kcCkgJg0KPiArCSAgICAgIERQX1BTUjJfU1VfR1JBTlVMQVJJVFlfUkVRVUlS
RUQpKSB7DQo+ICAJCS8qIEFzIFBTUjIgSFcgc2VuZHMgZnVsbCBsaW5lcywgd2UgZG8gbm90IGNh
cmUgYWJvdXQgeA0KPiBncmFudWxhcml0eSAqLw0KPiAgCQl3ID0gNDsNCj4gIAkJeSA9IDQ7DQo+
ICAJCWdvdG8gZXhpdDsNCj4gIAl9DQo+IA0KPiAtCXIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRl
bF9kcC0+YXV4LA0KPiBEUF9QU1IyX1NVX1hfR1JBTlVMQVJJVFksICZ3LCAyKTsNCj4gKwlyID0g
ZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1eCwNCj4gKwkJCSAgICAgaW50ZWxfZHBfZ2V0
X3N1X3hfZ3JhbnVsYXJpdHlfb2Zmc2V0KGludGVsX2RwKSwNCj4gKwkJCSAgICAgJncsIDIpOw0K
PiAgCWlmIChyICE9IDIpDQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IC0JCQkgICAg
IlVuYWJsZSB0byByZWFkDQo+IERQX1BTUjJfU1VfWF9HUkFOVUxBUklUWVxuIik7DQo+ICsJCQkg
ICAgIlVuYWJsZSB0byByZWFkIHNlbGVjdGl2ZSB1cGRhdGUgeCBncmFudWxhcml0eVxuIik7DQo+
ICAJLyoNCj4gIAkgKiBTcGVjIHNheXMgdGhhdCBpZiB0aGUgdmFsdWUgcmVhZCBpcyAwIHRoZSBk
ZWZhdWx0IGdyYW51bGFyaXR5IHNob3VsZA0KPiAgCSAqIGJlIHVzZWQgaW5zdGVhZC4NCj4gQEAg
LTQ5MiwxMCArNTM3LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0
eShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChyICE9IDIgfHwgdyA9PSAw
KQ0KPiAgCQl3ID0gNDsNCj4gDQo+IC0JciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5h
dXgsDQo+IERQX1BTUjJfU1VfWV9HUkFOVUxBUklUWSwgJnksIDEpOw0KPiArCXIgPSBkcm1fZHBf
ZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiArCQkJICAgICBpbnRlbF9kcF9nZXRfc3VfeV9n
cmFudWxhcml0eV9vZmZzZXQoaW50ZWxfZHApLA0KPiArCQkJICAgICAmeSwgMSk7DQo+ICAJaWYg
KHIgIT0gMSkgew0KPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiAtCQkJICAgICJVbmFi
bGUgdG8gcmVhZA0KPiBEUF9QU1IyX1NVX1lfR1JBTlVMQVJJVFlcbiIpOw0KPiArCQkJICAgICJV
bmFibGUgdG8gcmVhZCBzZWxlY3RpdmUgdXBkYXRlIHkgZ3JhbnVsYXJpdHlcbiIpOw0KPiAgCQl5
ID0gNDsNCj4gIAl9DQo+ICAJaWYgKHkgPT0gMCkNCj4gQEAgLTU4OCw3ICs2MzUsOCBAQCB2b2lk
IGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAo
aW50ZWxfZHAtPnBzcl9kcGNkWzBdKQ0KPiAgCQlfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7DQo+
IA0KPiAtCWlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KQ0KPiArCWlmIChpbnRl
bF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0IHx8DQo+ICsJICAgIGludGVsX2RwLT5wc3Iuc2lu
a19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4gIAkJaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFy
aXR5KGludGVsX2RwKTsNCj4gIH0NCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
