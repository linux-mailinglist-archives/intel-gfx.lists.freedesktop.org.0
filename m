Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342D065502C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 13:12:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA0F10E187;
	Fri, 23 Dec 2022 12:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34AC10E187
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 12:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671797563; x=1703333563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FxrKwSDAQ0azrdXb/db2SL+SFF9YVlcTrzB2gesqj3Q=;
 b=WOPYcXUIpoRmFipDtHjei5Aea5wrQzyOVv49Ae/acasSCuryZAnvotvj
 p4j8BOqMV9zedKq5SD/+XcNKg1S3PL6KUVhIWMpnG+FKUqqMVD4o5qDoC
 CbL4T9kEXhL9zDsznCPQkk/VeENkpkdm50V6XCEBiSUqjSdh8pCfdEHAL
 j4Z1kQewP/VQNGeCOFgAFZrWNXDn8fcaydk7bBe3H3dX/6iV0ErHOSe5O
 jvmTjo8UgctAq2U0mdB3vWF/7e38x0gcru/EfzXvq5gBTEEsBICWYxoIg
 mh0fIcKWnVpMHXvdCdS+8kiBfqmqt7AHUDZA3e1Z2IwCyQBo1ZIeRvwEU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="347480376"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="347480376"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 04:12:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="776334741"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="776334741"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 23 Dec 2022 04:12:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 04:12:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 04:12:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 04:12:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kgPkno1hmWr71gFa0GbF29MPD21qG2jjrFgzfHBReKJ8CoF1/voQctwuHwQmAo/V1VlH42P48+43hsA/3JyKjO47brqbBYlxNuztGZd/AerTJO0IKsmmdvE4wNuVMzQAUPLuukpYYtXE7n1xwIgCJLihL52mV45zEFWM7h/3AUaMOCG5j/82jJylZ2HeV1DxnyXyIfy0WwC0TNTcCcpoM4DcT8/SQuVxvvZ66Kk3+Pk/6Evx9f5RjY2MI0/ESOrwZEoaWvADoJC63jM7qm6BiPsew+k+t0bPu/Qu3Kpf+77cZC+/33lGtV3chkQBZGR6QEvFAtFCLZCk2iUyYllvzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxrKwSDAQ0azrdXb/db2SL+SFF9YVlcTrzB2gesqj3Q=;
 b=MmHFVK75152TDFwFU7BgPp2cZhod5RmTl3XqbzY0Q97NuAQYnRs6yb59BNNAy52gzPWWoJJNNElChnG3qdbNURSDWRu84Ids9mA3YwH2ihNOitmZJom+n83EplRjft7MqKXQQ6sajRiq2aJam1BtwiVMgv4mzU80oik3Imvn3ZN8YzbrQs6UZJkN9J75ReFr0swNHG3ZTRMJ8/XYr3n+cNOj6Lwm94h9xzWFTwd/KmsxE1Uu4Omp0SiPkU0/XuHrIafhF2v9wGTSVew98VqUBf/Qpytz9z/LrCOfC824rOxNTQXKaz86U6OQfh8NA4wMkobUKrsxupbX8AHb7+P3lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by DM4PR11MB8180.namprd11.prod.outlook.com (2603:10b6:8:18d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Fri, 23 Dec
 2022 12:12:39 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f%4]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 12:12:39 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v6 1/2] drm/i915/mtl: limit second scaler vertical
 scaling in ver >= 14
Thread-Index: AQHZFLY0TrNizkVlaEaP1ZQrbxhx9K57ZkSA
Date: Fri, 23 Dec 2022 12:12:39 +0000
Message-ID: <45191f155707abf5a8224eb96ff5819c7c7a69eb.camel@intel.com>
References: <20221220120724.196570-1-luciano.coelho@intel.com>
 <20221220120724.196570-2-luciano.coelho@intel.com>
 <Y6IigxnW4salMgXB@intel.com>
In-Reply-To: <Y6IigxnW4salMgXB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.2-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|DM4PR11MB8180:EE_
x-ms-office365-filtering-correlation-id: 56be4adf-9260-4c34-676c-08dae4defc74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4piZB4wM1gOdDsGKiINSKF58Eevc/oxDmjqAvtT0+d87oo18CDsMD2rGZKYwS4A5HN8fNcoLU5pO+lTbgdY/pt0QLfDFx0PCdmhafbWlnLp3OeDbul23LthlVB1YUMeGIzO1dL4bI4oLQN/Y+MKL8aHzYmjRU0qkhW8jE7PkupuEuy/g8yGOQrXbBHk0YEWmgcBsTZSk6xVtEe0qNeytDeoOm7/mIG5AiDvgDpBiuzu1nj49LTY1MIHFbx/V2/uhJPOMto2Tr2kK47YgkzTIVWfSd6lJ//ykb7JTpgY348X1Gu0al1SBayGMJ89+Hp46sTbDXPB1QSLgrcRb9RrajUSOkODiovBXS9XJs9Q9ps9pt1pOlRL4PGwGX7YTWbe3eqxzHu/ZxTseTtv66kCx0SpZ3M1GWvkDSsau8o7HL3E4xYtkVIZzvz368NqLi1ETVAFYsCFIN9bSaUUaNMHUul6rGmHmLS3jogmGoqiT+k+KAxHlnRo25cbmEVifIeHHVf6IJgf+SsYXWjs9afQzMddrgD4JX6DLYyjR2F8nU7UkykZeeyIqhqRhHYF8BhxQkrWwsjWgng9eo4H8GPhppVJHsi+vv+xyyDxja5Rofr1QOEfqws0Co3CNg9OqZYLM55ARirNNOX/0CgqoNghr74acYKBCp6x0Hyr5f0mbv/UNZmQ1Kc8/xNHtwEbe3j21WqeX4U2MdeXTz5SHnvqVew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(39860400002)(366004)(376002)(136003)(451199015)(478600001)(6486002)(6506007)(71200400001)(64756008)(122000001)(38070700005)(6512007)(186003)(26005)(6916009)(4326008)(76116006)(66476007)(8676002)(66446008)(66946007)(66556008)(86362001)(82960400001)(91956017)(316002)(2616005)(36756003)(38100700002)(66574015)(41300700001)(5660300002)(8936002)(83380400001)(2906002)(4001150100001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXlaMUYzUWRLTXNXU3AvYjh2VlRrZzQ4Q0haMSs4dmMranE1b2ovTVcxS05K?=
 =?utf-8?B?RlVKVTdJOFBldmFSMDdxOG5qRCtMMEZVcysrNnhiNE0xZVBJWjJWQ2lIeTFC?=
 =?utf-8?B?VGwzN1ZMVmIwU3VDbk5hdExaN3dtS1ZUZGh1a2VGMktXejQyMDNIRXdya0U2?=
 =?utf-8?B?WGZvWHpNNkkyUmtBd1l4MTBROXBJSmlGQTBhNG1wTjlYYTRvZzUxdmVHWlBB?=
 =?utf-8?B?YUJUMEF4WWZTUk54U0lwbHIzU2kveHUrTEJSYWNtcWVNZmlqNkQxUitBZ2pI?=
 =?utf-8?B?MVhvekNtaXVuRUVLSWs3VlNzMWZabXpveWdyZGJ5cW5PdmNKc0ZHczBxcXJ6?=
 =?utf-8?B?ZTFwMU5sQ0VrSU5UUXY5WEVzZWpQYW5GZjI1bXd2dUFMaktVaHpVN0x3dGJu?=
 =?utf-8?B?K2NjTkZLU0MvQldOWDhzTzM1VDMrOTFMTnh2RVBmM3JmUUJGN1lrN2xjK2wx?=
 =?utf-8?B?TXVndjBjK1JSb29QdXdtci80Z0dzUGNpeVhoQTdiVjJkRUx4dVdSWklWTVl0?=
 =?utf-8?B?cHhNUWFocUlzTklIaGVZQ2JXMGF0cVFLYjhWK0lQakZGbDZIbk9Ycy9QNzA4?=
 =?utf-8?B?TjBNbVhnMys3eitsaG9LMzZzRjA4cldZcFdWYzdxWmlaaFdUZnVwRXFRV3RP?=
 =?utf-8?B?WTJ2OXlWUzhjMkh3Z1NlVFh4KzVLY3hiY0hFKzlVbVpTenlUbGFmTGI0TWhj?=
 =?utf-8?B?WFVxQTVBVnNqa1NDTUE2eElsVUdSKzhjTFkzcyt3MFd2MHQrUWlKZS9iczFP?=
 =?utf-8?B?aUlnU0p6UEc0WDNWeEh5RHRSRm1vYmg2VmdKQm1HOEkxa3Y3YkZDR3JPZThX?=
 =?utf-8?B?UEhSN0tKbmxURFZRZ3BmUGFrRzdDdEZJRHJIT3lwNGhySHNaT0tlUU9LTlNL?=
 =?utf-8?B?TVNNWGd6NXM0Ym1PcGZCVzc3Mks5ejYyVHZ5UHpkUFNrQ1dESnhMWDdzSlRj?=
 =?utf-8?B?Z0JIektWbnpQZXVucDdIcmZkc2laM1hHMmF0M3JqZG1mcENwNW9FRllsUlBC?=
 =?utf-8?B?Q3l4Tlh1ODdBUmROdjA0YWorQzhScjJvZ3hmaEhCMTdpNmtoSzVOUC95SnVi?=
 =?utf-8?B?SjhHZXZLcVpqZ1QxWEJwcTQ5UjJ2TzF6NkJGMjVnNllER3VhRWxOYisyRXZF?=
 =?utf-8?B?WDhTeE9KOEhxcG4yd3lhMk9JQysrbGNHZDQrTXp5Uks3Vi8zUEVrak81ZUp4?=
 =?utf-8?B?UkRTVmpNVG5TOVYwVUJXRlJXWkJVWHpwZXVVWXJEbHBQYzJPVE1IZkhxY1Zn?=
 =?utf-8?B?MnZxVHdiODBlRlp0SXNKU3RPK3l5Z1ViMzZQWlZLamRQYzFvbldGZzEzekt3?=
 =?utf-8?B?WjhubDlEWk0xdmc5dXc0SEU3OGV3MmdXV21kQ1kyekVPWldFLzdPVEYvWW5z?=
 =?utf-8?B?Z21MRHNFVVBEc1JCS0NJWkk5ZEFsRW1VWlBoT0RUMDZzTzNRSUVoN1lRS1M5?=
 =?utf-8?B?cnZTdCtSY3k0YUprbGhkT3lqRTF2SkVRcnNna3lOVEtOSm90S0dpWU5aWUNL?=
 =?utf-8?B?S2toczNYT0hjWTVCM0NlUDBEUGttdWxDZnNwMGZ4Tmg3VXkyelp6L2FTNFRE?=
 =?utf-8?B?bmRTemxoVXFsL3hLOUI3cmpRc29TM2NLOWtkRW1TNmFaM0lCcDJjdFNiUGVy?=
 =?utf-8?B?bEJkaXZ5elNhdHFhYnZZTzdHVDVsT3hXZ3RiM3lHZmkra0U1RWR6cElKSkFv?=
 =?utf-8?B?ZjlqSEdYNTJIRlJWT0xRSXY1V0xSTWdiQTFXdDNMODlQb2dPUWg3c3dMOFBs?=
 =?utf-8?B?SStoK0hzTGx2VzdSa3JqUkk1ZW5HN0gyVC93dzJXeFFMN2hPL1R0dkxEMzh2?=
 =?utf-8?B?ZktsNldwK0xwOWRCTUd5elZjWU5VZ3I0SURtT2E3eEJVMCsxNUh3N2FaMXpR?=
 =?utf-8?B?Q2NTQlJTQ3VncDJYNXFabnZJakZzeTNETk81ZzIrU1lQY1FEMHJuVVgzaWJl?=
 =?utf-8?B?SWtIc24xN3VtWi8rV3UvaEVzb3FyMHhvdjRtNEs3bmMydEhxa1BvOFlTV0wr?=
 =?utf-8?B?UG4xZk1ZTnlobVFhbG9uZWNlbHZKalJzWUtodTVaVjFJdG11M243VW96MzJa?=
 =?utf-8?B?NmdZN1NETjMvanZpNEdjZDQweUhuSWRTNkl0RlRXVGowNDNlTnVueWNrL0ZL?=
 =?utf-8?B?YU0yN0tkemtzVU00bVNpekg0SXJGVzk0Z0FaVDVHbVg2ZitnMWNLTi9LZjNh?=
 =?utf-8?B?SXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F0678FE41143649913ABE85E69F7895@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56be4adf-9260-4c34-676c-08dae4defc74
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 12:12:39.5393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s6w39CEizeMJ0+uK+3qfJ72nSN5KEM1ouZBWmScRtacx89f39hEfH4m8Vs9Wa8zoz+NiaA7aJscxVyxy3Kj76xCoD8zMwecz0anlDMxUprg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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

T24gVHVlLCAyMDIyLTEyLTIwIGF0IDIzOjAwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRGVjIDIwLCAyMDIyIGF0IDAyOjA3OjIzUE0gKzAyMDAsIEx1Y2EgQ29lbGhv
IHdyb3RlOg0KPiA+IEluIG5ld2VyIGhhcmR3YXJlIHZlcnNpb25zIChpLmUuIGRpc3BsYXkgdmVy
c2lvbiA+PSAxNCksIHRoZSBzZWNvbmQNCj4gPiBzY2FsZXIgZG9lc24ndCBzdXBwb3J0IHZlcnRp
Y2FsIHNjYWxpbmcuDQo+ID4gDQo+ID4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgdGhl
IHNjYWxpbmcgbGltaXRzIGlzIHNpbXBsaWZpZWQgYW5kDQo+ID4gb25seSBvY2N1cnMgd2hlbiB0
aGUgcGxhbmVzIGFyZSBjcmVhdGVkLCBzbyB3ZSBkb24ndCBrbm93IHdoaWNoIHNjYWxlcg0KPiA+
IGlzIGJlaW5nIHVzZWQuDQo+ID4gDQo+ID4gSW4gb3JkZXIgdG8gaGFuZGxlIHNlcGFyYXRlIHNj
YWxpbmcgbGltaXRzIGZvciBob3Jpem9udGFsIGFuZCB2ZXJ0aWNhbA0KPiA+IHNjYWxpbmcsIGFu
ZCBkaWZmZXJlbnQgbGltaXRzIHBlciBzY2FsZXIsIHNwbGl0IHRoZSBjaGVja3MgaW4gdHdvDQo+
ID4gcGhhc2VzLiAgV2UgZmlyc3QgZG8gYSBzaW1wbGUgY2hlY2sgZHVyaW5nIHBsYW5lIGNyZWF0
aW9uIGFuZCB1c2UgdGhlDQo+ID4gYmVzdC1jYXNlIHNjZW5hcmlvIChiZWNhdXNlIHdlIGRvbid0
IGtub3cgdGhlIHNjYWxlciB0aGF0IG1heSBiZSB1c2VkDQo+ID4gYXQgYSBsYXRlciBwb2ludCkg
YW5kIHRoZW4gZG8gYSBtb3JlIHNwZWNpZmljIGNoZWNrIHdoZW4gdGhlIHNjYWxlcnMNCj4gPiBh
cmUgYWN0dWFsbHkgYmVpbmcgc2V0IHVwLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2Eg
Q29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gDQo+ID4gSW4g
djI6DQo+ID4gICAgKiBmaXggRFJNX1BMQU5FX05PX1NDQUxJTkcgcmVuYW1lZCBtYWNyb3M7DQo+
ID4gDQo+ID4gSW4gdjM6DQo+ID4gICAgKiBObyBjaGFuZ2VzLg0KPiA+IA0KPiA+IEluIHY0Og0K
PiA+ICAgICogR290IHJpZCBvZiB0aGUgY2hhbmdlcyBpbiB0aGUgZ2VuZXJhbCBwbGFuZXMgbWF4
IHNjYWxlIGNvZGU7DQo+ID4gICAgKiBBZGRlZCBhIGNvdXBsZSBvZiBGSVhNRXM7DQo+ID4gICAg
KiBNYWRlIGludGVsX2F0b21pY19zZXR1cF9zY2FsZXIoKSByZXR1cm4gYW4gaW50IHdpdGggZXJy
b3JzOw0KPiA+IA0KPiA+IEluIHY1Og0KPiA+ICAgICogSnVzdCByZXNlbnQgd2l0aCBhIGNvdmVy
IGxldHRlci4NCj4gPiANCj4gPiBJbiB2NjoNCj4gPiAgICAqIE5vdyB0aGUgY29ycmVjdCB2ZXJz
aW9uIGFnYWluIChzYW1lIGFzIHY0KS4NCj4gPiANCj4gPiANCj4gPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIHwgODMgKysrKysrKysrKysrKysrKysrLS0tDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA3MyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMNCj4g
PiBpbmRleCA2NjIxYWEyNDVjYWYuLjgzNzNiZTI4M2Q4YiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0KPiA+IEBAIC00MSw2ICs0MSw3
IEBADQo+ID4gICNpbmNsdWRlICJpbnRlbF9nbG9iYWxfc3RhdGUuaCINCj4gPiAgI2luY2x1ZGUg
ImludGVsX2hkY3AuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX3Bzci5oIg0KPiA+ICsjaW5jbHVk
ZSAiaW50ZWxfZmIuaCINCj4gPiAgI2luY2x1ZGUgInNrbF91bml2ZXJzYWxfcGxhbmUuaCINCj4g
PiAgDQo+ID4gIC8qKg0KPiA+IEBAIC0zMTAsMTEgKzMxMSwxMSBAQCBpbnRlbF9jcnRjX2Rlc3Ry
b3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiA+ICAJa2ZyZWUoY3J0Y19zdGF0ZSk7
DQo+ID4gIH0NCj4gPiAgDQo+ID4gLXN0YXRpYyB2b2lkIGludGVsX2F0b21pY19zZXR1cF9zY2Fs
ZXIoc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUsDQo+ID4gLQkJ
CQkgICAgICBpbnQgbnVtX3NjYWxlcnNfbmVlZCwgc3RydWN0IGludGVsX2NydGMgKmludGVsX2Ny
dGMsDQo+ID4gLQkJCQkgICAgICBjb25zdCBjaGFyICpuYW1lLCBpbnQgaWR4LA0KPiA+IC0JCQkJ
ICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gPiAtCQkJCSAg
ICAgIGludCAqc2NhbGVyX2lkKQ0KPiA+ICtzdGF0aWMgaW50IGludGVsX2F0b21pY19zZXR1cF9z
Y2FsZXIoc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUsDQo+ID4g
KwkJCQkgICAgIGludCBudW1fc2NhbGVyc19uZWVkLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxf
Y3J0YywNCj4gPiArCQkJCSAgICAgY29uc3QgY2hhciAqbmFtZSwgaW50IGlkeCwNCj4gPiArCQkJ
CSAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gPiArCQkJCSAg
ICAgaW50ICpzY2FsZXJfaWQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoaW50ZWxfY3J0Yy0+YmFzZS5kZXYpOw0KPiA+ICAJaW50IGo7
DQo+ID4gQEAgLTMzNCw3ICszMzUsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfc2V0dXBf
c2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YQ0KPiA+ICAN
Cj4gPiAgCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwgKnNjYWxlcl9pZCA8IDAsDQo+ID4g
IAkJICAgICAiQ2Fubm90IGZpbmQgc2NhbGVyIGZvciAlczolZFxuIiwgbmFtZSwgaWR4KSkNCj4g
PiAtCQlyZXR1cm47DQo+ID4gKwkJcmV0dXJuIC1FQlVTWTsNCj4gPiAgDQo+ID4gIAkvKiBzZXQg
c2NhbGVyIG1vZGUgKi8NCj4gPiAgCWlmIChwbGFuZV9zdGF0ZSAmJiBwbGFuZV9zdGF0ZS0+aHcu
ZmIgJiYNCj4gPiBAQCAtMzc1LDkgKzM3Niw2OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNf
c2V0dXBfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YQ0K
PiA+ICAJCW1vZGUgPSBTS0xfUFNfU0NBTEVSX01PREVfRFlOOw0KPiA+ICAJfQ0KPiA+ICANCj4g
PiArCS8qDQo+ID4gKwkgKiBGSVhNRTogd2Ugc2hvdWxkIGFsc28gY2hlY2sgdGhlIHNjYWxlciBm
YWN0b3JzIGZvciBwZml0LCBzbw0KPiA+ICsJICogdGhpcyBzaG91bGRuJ3QgYmUgdGllZCBkaXJl
Y3RseSB0byBwbGFuZXMuDQo+ID4gKwkgKi8NCj4gPiArCWlmIChwbGFuZV9zdGF0ZSAmJiBwbGFu
ZV9zdGF0ZS0+aHcuZmIpIHsNCj4gPiArCQljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpm
YiA9IHBsYW5lX3N0YXRlLT5ody5mYjsNCj4gPiArCQlzdHJ1Y3QgZHJtX3JlY3QgKnNyYyA9ICZw
bGFuZV9zdGF0ZS0+dWFwaS5zcmM7DQo+ID4gKwkJc3RydWN0IGRybV9yZWN0ICpkc3QgPSAmcGxh
bmVfc3RhdGUtPnVhcGkuZHN0Ow0KPiANCj4gVGhvc2UgY2FuIGJlIGNvbnN0Lg0KDQpEb25lLg0K
DQoNCj4gPiArCQlpbnQgaHNjYWxlLCB2c2NhbGUsIG1heF92c2NhbGUsIG1heF9oc2NhbGU7DQo+
ID4gKw0KPiA+ICsJCS8qDQo+ID4gKwkJICogRklYTUU6IFdoZW4gdHdvIHNjYWxlcnMgYXJlIG5l
ZWRlZCwgYnV0IG9ubHkgb25lIG9mDQo+ID4gKwkJICogdGhlbSBuZWVkcyB0byBkb3duc2NhbGUs
IHdlIHNob3VsZCBtYWtlIHN1cmUgdGhhdA0KPiA+ICsJCSAqIHRoZSBvbmUgdGhhdCBuZWVkcyBk
b3duc2NhbGluZyBzdXBwb3J0IGlzIGFzc2lnbmVkDQo+ID4gKwkJICogYXMgdGhlIGZpcnN0IHNj
YWxlciwgc28gd2UgZG9uJ3QgcmVqZWN0IGRvd25zY2FsaW5nDQo+ID4gKwkJICogdW5uZWNlc3Nh
cmlseS4NCj4gPiArCQkgKi8NCj4gPiArDQo+ID4gKwkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSAxNCkgew0KPiA+ICsJCQkvKg0KPiA+ICsJCQkgKiBPbiB2ZXJzaW9ucyAxNCBhbmQgdXAs
IG9ubHkgdGhlIGZpcnN0DQo+ID4gKwkJCSAqIHNjYWxlciBzdXBwb3J0cyBhIHZlcnRpY2FsIHNj
YWxpbmcgZmFjdG9yDQo+ID4gKwkJCSAqIG9mIG1vcmUgdGhhbiAxLjAsIHdoaWxlIGEgaG9yaXpv
bnRhbA0KPiA+ICsJCQkgKiBzY2FsaW5nIGZhY3RvciBvZiAzLjAgaXMgc3VwcG9ydGVkLg0KPiA+
ICsJCQkgKi8NCj4gPiArCQkJbWF4X2hzY2FsZSA9IDB4MzAwMDAgLSAxOw0KPiA+ICsJCQlpZiAo
KnNjYWxlcl9pZCA9PSAwKQ0KPiA+ICsJCQkJbWF4X3ZzY2FsZSA9IDB4MzAwMDAgLSAxOw0KPiA+
ICsJCQllbHNlDQo+ID4gKwkJCQltYXhfdnNjYWxlID0gMHgxMDAwMDsNCj4gPiArDQo+ID4gKwkJ
fSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwNCj4gPiArCQkJICAgIWlu
dGVsX2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKGZiLT5mb3JtYXQsIGZiLT5tb2RpZmll
cikpIHsNCj4gPiArCQkJbWF4X2hzY2FsZSA9IDB4MzAwMDAgLSAxOw0KPiA+ICsJCQltYXhfdnNj
YWxlID0gMHgzMDAwMCAtIDE7DQo+ID4gKwkJfSBlbHNlIHsNCj4gPiArCQkJbWF4X2hzY2FsZSA9
IDB4MjAwMDAgLSAxOw0KPiA+ICsJCQltYXhfdnNjYWxlID0gMHgyMDAwMCAtIDE7DQo+ID4gKwkJ
fQ0KPiANCj4gV2UnZCB3YW50IHNvbWV0aGluZyBhbG9uZyB0aGVzZSBsaW5lcyBpZiB3ZSB3YW50
IHRvIGhhbmRsZSANCj4gdGhlIGhxIHZzLiBkeW4gc2NhbGVyIHN0dWZmIGNvcnJlY3RseS4NCj4g
DQo+IGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpIHsNCj4gCS4uLg0KPiB9IGVsc2Ug
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkNCj4gCW1heF9oc2NhbGUgPSAweDMwMDAw
IC0gMTsNCj4gCW1heF92c2NhbGUgPSAweDMwMDAwIC0gMTsNCj4gfSBlbHNlIGlmIChtb2RlID09
IE5WMTIpIHsNCj4gCW1heF9oc2NhbGUgPSAweDIwMDAwIC0gMTsNCj4gCW1heF92c2NhbGUgPSAw
eDIwMDAwIC0gMTsNCj4gfSBlbHNlIGlmIChtb2RlID09IEhRIHx8IHNyY193IDw9IDIwNDgpIHsN
Cj4gCW1heF9oc2NhbGUgPSAweDMwMDAwIC0gMTsNCj4gCW1heF92c2NhbGUgPSAweDMwMDAwIC0g
MTsNCj4gfSBlbHNlIHsNCj4gCW1heF9oc2NhbGUgPSAweDMwMDAwIC0gMTsNCj4gCW1heF92c2Nh
bGUgPSAweDIwMDAwIC0gMTsNCj4gfQ0KPiANCj4gVGhvdWdoIHdlIGNvdWxkIGxlYXZlIHRoYXQg
Zm9yIGEgZm9sbG93dXAgcGF0Y2gsIGluIHdoaWNoDQo+IGNhc2UgcGVyaGFwcyBhZGQgYSBGSVhN
RS4NCg0KSSBhZGRlZCBhbm90aGVyIEZJWE1FLg0KDQoNCj4gPiArDQo+ID4gKwkJLyogQ2hlY2sg
aWYgcmVxdWlyZWQgc2NhbGluZyBpcyB3aXRoaW4gbGltaXRzICovDQo+ID4gKwkJaHNjYWxlID0g
ZHJtX3JlY3RfY2FsY19oc2NhbGUoc3JjLCBkc3QsIDEsIG1heF9oc2NhbGUpOw0KPiA+ICsJCXZz
Y2FsZSA9IGRybV9yZWN0X2NhbGNfdnNjYWxlKHNyYywgZHN0LCAxLCBtYXhfdnNjYWxlKTsNCj4g
PiArDQo+ID4gKwkJaWYgKGhzY2FsZSA8IDAgfHwgdnNjYWxlIDwgMCkgew0KPiA+ICsJCQlkcm1f
ZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiArCQkJCSAgICAiU2NhbGVyICVkIGRvZXNuJ3Qg
c3VwcG9ydCByZXF1aXJlZCBwbGFuZSBzY2FsaW5nXG4iLA0KPiA+ICsJCQkJICAgICpzY2FsZXJf
aWQpOw0KPiA+ICsJCQlkcm1fcmVjdF9kZWJ1Z19wcmludCgic3JjOiAiLCBzcmMsIHRydWUpOw0K
PiA+ICsJCQlkcm1fcmVjdF9kZWJ1Z19wcmludCgiZHN0OiAiLCBkc3QsIGZhbHNlKTsNCj4gPiAr
DQo+ID4gKwkJCXNjYWxlcl9zdGF0ZS0+c2NhbGVyc1sqc2NhbGVyX2lkXS5pbl91c2UgPSAwOw0K
PiA+ICsJCQkqc2NhbGVyX2lkID0gLTE7DQo+IA0KPiBUaGVyZSBzaG91bGQgYmUgbm8gbmVlZCB0
byB1bmRvIHN0dWZmIGxpa2UgdGhpcy4NCg0KUmlnaHQuICBUaGlzIGlzIHJlbWluaXNjZW50IGZy
b20gdGhlIHByZXZpb3VzIHZlcnNpb24gb2YgdGhlIHBhdGNoLA0Kd2hlcmUgd2Ugd2VyZSBub3Qg
cmV0dXJuaW5nIGVycm9ycy4gIEkgcmVtb3ZlZCB0aGlzIG5vdy4NCg0KDQo+ID4gKw0KPiA+ICsJ
CQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+IA0KPiBXZSB0eXBpY2FsbHkganVzdCBnbyB3aXRoIC1F
SU5WQUwgZm9yIHByZXR0eSBtdWNoIGV2ZXJ5dGhpbmcuDQo+IEdpdmVuIHRoZSBudW1iZXIgb2Yg
dGhpbmdzIHRoYXQgY2FuIGdvIHdyb25nIG5vIG9uZSBjYW4gcmVhbGlzdGljYWxseQ0KPiBmaWd1
cmUgb3V0IHdoYXQgaGFwcGVuZWQvaG93IHRvIHJlc29sdmUgaXQgYmFzZWQgb24gdGhlIGVycm5v
IGFsb25lDQo+IGFueXdheS4NCg0KT2theS4gIE15IHZpZXcgaXMgdGhhdCBieSBoYXZpbmcgZGlm
ZmVyZW50IGVycm9yIGNvZGVzIHdlIGNhbiBhdCBsZWFzdA0KaGF2ZSBhIGJpdCBtb3JlIGNsdWUg
YW5kIG1ha2UgaXQgZWFzaWVyIHRvIHRyYWNrIGRvd24uICBJJ2xsIGNoYW5nZSBpdA0KdG8gLUVJ
TlZBTCwgYW5kIHRoZSAtRUJVU1kgSSBhZGRlZCBlYXJsaWVyIHRvIC1FSU5WQUwgYXMgd2VsbC4N
Cg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCj4gDQo=
