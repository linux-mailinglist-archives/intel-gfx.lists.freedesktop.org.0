Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8956C808515
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 11:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9D510E847;
	Thu,  7 Dec 2023 10:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7217D10E197;
 Thu,  7 Dec 2023 10:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701943388; x=1733479388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tEi3VQWG5x0qFV9E8TIhCcxKya5FXa5PVTFwt5aRWKU=;
 b=VmFPWO6e+ZdHkDaihvIDHq5OemsmyRu6aldSMS1eFjDQ+NJQL5HsDoTE
 MqqGkfqNaCGQ3CD3Vc7gguHJ5B1Pny/NS4+EnV+FhyYZNGdMwqNK7ezZr
 9JYwWs9SHOqaVDNX65wy9Nx8I32EFYsztWS+BIUA/LA8Pm2iNYil7wmXM
 VYeAY8+h9NIADtJ93HN2yvxgN2RxXMyV3ynehcyQz34F8X4/4NYejvC4q
 HEqca5BtypHkJrmkWqb115it5yd2UaSdOkGAZrBTsm120bmTJf0j9mEB+
 a0eJtowZ4J8Rz8zWLtns3OGnl9cDHoRm3Pkheb7dSaXOurZ6mGjHvjA6g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1035722"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1035722"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:03:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="775351759"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="775351759"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 02:03:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 02:03:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 02:03:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 02:03:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYI4Huj/sfLE3qHlE2NinT/dYGMsAhwqmfniaHXie9EvvyYYK/wST7MW5EO7Bl0uOTHTuNjB6mFOGnXR240mgm5JP+ES+aC36XYvDmjFB6hbEdetoqwwPVjtfJD1NretM7mVQYRBo9PSTQd9pmtJFSEZuh6DHFwc1DkH+JXhICnvTDdj471MDUBZ40ELb6I/vo6wQVSZXyV6qbfskxgurKHAQqT7meFaofd5oWwMEcfc6A4Wx355IGMBSA2igYM2MjGvbT5Q5OlKl14k8KkkBsw+pbPhmlMluvayWlDCBWPgf1paESV/iifUebkhWiFD3sBz9LavnXr356j24ZYWZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEi3VQWG5x0qFV9E8TIhCcxKya5FXa5PVTFwt5aRWKU=;
 b=S2SvcLmV71yDoCH/wNK6YT54OzImlfAY6nJQKEANRsYGdW0qGZEo0FpkFRs9hFuxp1+YKFQsjtzkHl0I0Uvfw+7Vkimy+sRxmsFRu3frUiZvhjNh2uSLFboVUBEB49uJrxkl7s4LSu6l9Acbl6679jlvAtgduZR52sEHNJRwXfhBkG9eYuyViED11+kaj6/g4aGDySnE4fb+ucuWCqvLAOuaSvjPuvPUdjQ1/405UTlvJdW0Bw08QHZsINpxUIAb/yMScsqyJKoJXLo/HVeq/2tTXIbNKBLpG3BSbhiQZ1O23sbN72Qq4d8f99HbKAwmIPdFc+8Hjt0k2OkuaV7Y6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7943.namprd11.prod.outlook.com (2603:10b6:208:3fc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 10:02:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 10:02:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH v7] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaJD1nrlEkbEHWek2sMOYpaI+a+LCdhTCAgAASd4CAAAj3AA==
Date: Thu, 7 Dec 2023 10:02:57 +0000
Message-ID: <404db85aeac36655603c8f5c47d355b2d09fdb7f.camel@intel.com>
References: <20231201100032.1367589-1-luciano.coelho@intel.com>
 <804a8a8ea0f69fc6dc7bad571ee30fc774cdbdd4.camel@intel.com>
 <1f378d699c11cbc577d7843fc4277681b3aa8c49.camel@intel.com>
In-Reply-To: <1f378d699c11cbc577d7843fc4277681b3aa8c49.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7943:EE_
x-ms-office365-filtering-correlation-id: 7dfebf67-9089-406f-857a-08dbf70bb06f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 085r3Ld1L46RrMiwY+A6b7GHb8OTtqnhpJ2OpzeZd8dLYGjk0LdtY6WQvG5M0pJ0yXIfjevQcoN6NrODUIWaQ7DA9tvlMIfxLmXKkmGvltSqMI1mR8uUYkRyS/2dHe9Xvk9ZnTV0wxKpfp9t5sVSgUqmo6fKhNaikiWEcGcOy5XDZVd+BCE2dt5OVpjWlVzFbqSFco+sgoNgMfH+OSPs9isw68XJzSDFNg12EBWdsDxjEVOr+b5DXzFuFqq8kpysq2Tqepr3V5q4gEXXd3AMpH7sAfYUoCmmBgfNmGw08jaSzCjDbu8ruwg7d4y6J2Oxa4aKrNAloC3cDz6LIkXskUOzOpD69XDVvTDcqmO4ULzBcs7lVIIPkEQRStXoTtQevGDd+0lH4ktOTdxmQh2H7kHb1RD/bnwJE7Mq+F1+0nTXYC0doB9XyWiloP+Q+2MYKmGelr+0jJERQ/20qLcBHFYjmjMdDorAibCNVNPQL2+uA7Ztp7rwjZvQwLXvzeXsTw/nc4J8kd77KnYauQ1CXVj2KeUYplvePlpbSZhBBc8uRh94mB+04dffciK7mpjADs8JLc5Ijq8Ew09VSAZOCD9rhA5BOARhSBgeCerETKPtyQOszkcgM1gIuIllZsWfvS9TWzw+jG8EV88aIqNvDYaHJt2gNjE+55QboUVxTE4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(396003)(136003)(346002)(230273577357003)(230922051799003)(230173577357003)(64100799003)(451199024)(186009)(1800799012)(66946007)(316002)(66446008)(91956017)(110136005)(66556008)(6636002)(76116006)(64756008)(66476007)(54906003)(6486002)(71200400001)(478600001)(5660300002)(36756003)(41300700001)(2906002)(38070700009)(86362001)(450100002)(8676002)(4326008)(8936002)(2616005)(38100700002)(107886003)(83380400001)(66574015)(26005)(122000001)(6506007)(6512007)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2hVcUFYOTFuS0RyNWptbVlyOEhHR0VMcUY1cWF2TkI5bk1sVHh0K2NEbmQv?=
 =?utf-8?B?d3BNTVUzOGNmZGFoM29uOVJMemxNSExnUkM1WUZIUWNpZTZHVWJkUU8xR29X?=
 =?utf-8?B?ZURxMDE4ZEFNMFVRRjl6N2FvSmtKVXJaWU40Ymx6VStnQXQ4alF5WnJoc2ZH?=
 =?utf-8?B?NjBXUk9oU1lvYUlkQ3JabU1RaUJtR2crYXNoY2FJcnJVV2ozdUg1NzBvaVpx?=
 =?utf-8?B?eU1QL0pIRkRFNlJUK3RIQTYvWlR2Ym0xNXV4KzFvU0RoUzBDSFZ6YlRNMGZY?=
 =?utf-8?B?M29iQ3JQa204Y0N3L1pEeDlZRm5WQ0tHZEppNG15Wjh0VDRNMlZFZmJiV0xQ?=
 =?utf-8?B?amx6cGRFQU1URkxkMG5oSC9JTjRYazM2MDhlMkJLbWx5dTZlRDEzV0tZM2pQ?=
 =?utf-8?B?VE9ob2wvcnB5cWE2WTViM1VPUmFMQURpeWMyRkJ1S2JEM1lPUGduaEw5RTRt?=
 =?utf-8?B?ZzJZOFh0QkFkYldFckxIdXBSY2UyeU15QVg2ZjNxdzdDR0I5ZVhObk9VVExz?=
 =?utf-8?B?aEJLUnlTVXNxc0ZOSy9XVGhXMEVvbExrOGtBVHFCNitMOEp5b0lxRElKTndx?=
 =?utf-8?B?NzFvVlQ3Zyt1UUhKYXNDUkQ0ZHRyZmtjK05Gc3J5bm9KeG1ZcldMTWFvMU5W?=
 =?utf-8?B?cFRkNkdTVGh3RlhNMUhRcG5IZEV1eUF0VHozVU5zckhOanYvMnNObzFVcFZG?=
 =?utf-8?B?QXlmWkdzRTVrTzRNVEpIR1FGeHJRcVJ6dVBoYkJNQUswOFRnWnVRZjlWMi92?=
 =?utf-8?B?U1JBSWNOaUgvK3NsbEptSnFiZDUwU2ZkaDloQk9rUzVvaEFOZ3ZMUkdrelZp?=
 =?utf-8?B?WnFsdnh4UUZsWVpNamNBaWxXR1M3aVdYc3MrSWlFZ2Z4OXNZRlVySklGdHcx?=
 =?utf-8?B?ZWRaY2pMT1JOOEpEcnlXci94cGt0NkhwM2x4VkFOS3RCbWVYMWZ5dXVZWTdW?=
 =?utf-8?B?a2lLazk2eG1oUlQ0RE5zajhEMVM2ekhNWEdzWndUVFV4Ri9GTGZFOFlYckxt?=
 =?utf-8?B?djJTeDNXbjVZWWMrSVRlamxsRG0xMm1EWUVMdnJRUVFmQXpaZGlReWFxNmtO?=
 =?utf-8?B?bUpxMnlHQmRJa1dhOVB0V2RNcHF5L0tVNEV3aWFZNUdsTVYwaUFIdGVlRTdU?=
 =?utf-8?B?cWpTTFk2WWU5cUpGcTYxSVpDcm42emNzQzJPSys0REs3UUllclliUjZxcGhP?=
 =?utf-8?B?TWVxTnlUVWFpdHhLcjAyMkdXcGo0TjEvTHVHZlZobysxNm5RNGJSNmdUY1RM?=
 =?utf-8?B?MkNsaFN5a25IZS8weEJGRGRlelNnNHFUY1NIaVJ0dTdQcm95TzJHeS9RU3J6?=
 =?utf-8?B?ZG9lcGFrWUZ4N0xBZTFtR05PSVUrcWw5WVlkdkxvNjN1R1BMQ0dNeGJ5SjZS?=
 =?utf-8?B?OEVVdmI4N1JlenM4bThsM0lmWUpLMlQyTlVjb0tESm9IMDRpSmdZbVBiSGlO?=
 =?utf-8?B?UlFYRFBWTjh4Z1dMdDR5NDIrNVk2K2JBa3ZzMlRwa3RXSDloQnpld0NlVTQ2?=
 =?utf-8?B?S0pHY2dTZTFNYkJaZUZjaUdGTWdXNjQ2endCVkl2ZHVXTlRwOFJvQjQ5d2kz?=
 =?utf-8?B?V3hPWUNXM3EvV055OUp2ek5yTVZpTXVZMnZVcGlxTjQvL2xPSE04UUFnaU9z?=
 =?utf-8?B?UVFsZWRDVFc0S3dnbUFwVVVlVzJhYjZzMVRQbGdLKzBYUmRFcFVkendMOGxH?=
 =?utf-8?B?aDh5Zm83eCtibUdiaVZWT1pDYUFtMFhzR0Z4Y3VZdGtkTWlvSU01ei9RQ3pF?=
 =?utf-8?B?VHVVamxpVm1tUjF5c2ZESXhWZTRmUWNPRVd3ZVprbUxPUUlSanhGS080QmNv?=
 =?utf-8?B?a0dmWlZmaXhCOGhLUDVFSDZyM2prd2RPZnJJZTM3K2plOE5oUGU1QTVjallO?=
 =?utf-8?B?MzdmbkVQRDR4d3g3S3oySVNuUGF3TFN3WjFIa1kzMmN5SERiOVlHNkk3dXpr?=
 =?utf-8?B?czBUNWNGUGRHaFQ2OGJYci9qUzRWanptZXlZWnRpVE5DNWU0NW9ENHlzQWZC?=
 =?utf-8?B?S1JTSmNNMGdJRk5XSUJKdkpaYnlyMkRqOTJJazVKd2crWURLU2ZwRDMvZUF4?=
 =?utf-8?B?L1NCRGhuK213aFFjR3QzS3FZK2tueDUzSkwyZXFzRTI3NzJYR1hmdk42MHE5?=
 =?utf-8?B?ZFNMLzNtNWpHdmthYktRNU96Ymt0aEF4bUZ4ZkpnTHRIOGFqL2ViWGJKQkM5?=
 =?utf-8?B?TWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9ED96FED0B793B488EA5D208E4E8CCDB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dfebf67-9089-406f-857a-08dbf70bb06f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 10:02:57.9560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L6fMog2Y5XBSG12QY6lqrbmNuhZ3HBssBhZ6PbGnrRh7ULiPHtjStxcoL0hJPR35om0wwjhKWzio4KaW6qqbg1HLY1mxN7DtUZIgTZ7/sqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7943
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v7] drm/i915: handle uncore
 spinlock when not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTEyLTA3IGF0IDA5OjMwICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6
DQo+IE9uIFRodSwgMjAyMy0xMi0wNyBhdCAwODoyNCArMDAwMCwgSG9nYW5kZXIsIEpvdW5pIHdy
b3RlOg0KPiA+IE9uIEZyaSwgMjAyMy0xMi0wMSBhdCAxMjowMCArMDIwMCwgTHVjYSBDb2VsaG8g
d3JvdGU6DQo+ID4gPiBUaGUgdW5jb3JlIGNvZGUgbWF5IG5vdCBhbHdheXMgYmUgYXZhaWxhYmxl
IChlLmcuIHdoZW4gd2UgYnVpbGQNCj4gPiA+IHRoZQ0KPiA+ID4gZGlzcGxheSBjb2RlIHdpdGgg
WGUpLCBzbyB3ZSBjYW4ndCBhbHdheXMgcmVseSBvbiBoYXZpbmcgdGhlDQo+ID4gPiB1bmNvcmUn
cw0KPiA+ID4gc3BpbmxvY2suDQo+ID4gPiANCj4gPiA+IFRvIGhhbmRsZSB0aGlzLCBzcGxpdCB0
aGUgc3Bpbl9sb2NrL3VubG9ja19pcnFzYXZlL3Jlc3RvcmUoKSBpbnRvDQo+ID4gPiBzcGluX2xv
Y2svdW5sb2NrKCkgZm9sbG93ZWQgYnkgYSBjYWxsIHRvIGxvY2FsX2lycV9zYXZlL3Jlc3RvcmUo
KQ0KPiA+ID4gYW5kDQo+ID4gPiBjcmVhdGUgd3JhcHBlciBmdW5jdGlvbnMgZm9yIGxvY2tpbmcg
YW5kIHVubG9ja2luZyB0aGUgdW5jb3JlJ3MNCj4gPiA+IHNwaW5sb2NrLsKgIEluIHRoZXNlIGZ1
bmN0aW9ucywgd2UgaGF2ZSBhIGNvbmRpdGlvbiBjaGVjayBhbmQgb25seQ0KPiA+ID4gYWN0dWFs
bHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9jayB3aGVuIEk5MTUgaXMgZGVmaW5lZCwN
Cj4gPiA+IGFuZA0KPiA+ID4gdGh1cyB1bmNvcmUgaXMgYXZhaWxhYmxlLg0KPiA+ID4gDQo+ID4g
PiBUaGlzIGtlZXBzIHRoZSBpZmRlZnMgY29udGFpbmVkIGluIHRoZXNlIG5ldyBmdW5jdGlvbnMg
YW5kIGFsbA0KPiA+ID4gc3VjaA0KPiA+ID4gbG9naWMgaW5zaWRlIHRoZSBkaXNwbGF5IGNvZGUu
DQo+ID4gPiANCj4gPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydG8udXJzdWxpbkBpbnRlbC5j
b20+DQo+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+
IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+
IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+ID4gLS0t
DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gSW4gdjI6DQo+ID4gPiANCj4gPiA+IMKgwqAgKiBSZW5h
bWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0KPiA+ID4gwqDCoCAqIENvcnJl
Y3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywgcmVzdG9yZQ0KPiA+ID4gDQo+ID4g
PiBJbiB2MzoNCj4gPiA+IA0KPiA+ID4gwqDCoCAqIFVuZGlkIHRoZSBjaGFuZ2UgdG8gcGFzcyBk
cm1faTkxNV9wcml2YXRlIGluc3RlYWQgb2YgdGhlDQo+ID4gPiBsb2NrDQo+ID4gPiDCoMKgwqDC
oCBpdHNlbGYsIHNpbmNlIHdlIHdvdWxkIGhhdmUgdG8gaW5jbHVkZSBpOTE1X2Rydi5oIGFuZCB0
aGF0DQo+ID4gPiBwdWxscw0KPiA+ID4gwqDCoMKgwqAgaW4gYSB0cnVja2xvYWQgb2Ygb3RoZXIg
aW5jbHVkZXMuDQo+ID4gPiANCj4gPiA+IEluIHY0Og0KPiA+ID4gDQo+ID4gPiDCoMKgICogQWZ0
ZXIgYSBicmllZiBhdHRlbXB0IHRvIHJlcGxhY2UgdGhpcyB3aXRoIGEgZGlmZmVyZW50DQo+ID4g
PiBwYXRjaCwNCj4gPiA+IMKgwqDCoMKgIHdlJ3JlIGJhY2sgdG8gdGhpcyBvbmU7DQo+ID4gPiDC
oMKgICogUGFzcyBkcm1faTE5NV9wcml2YXRlIGFnYWluLCBhbmQgbW92ZSB0aGUgZnVuY3Rpb25z
IHRvDQo+ID4gPiDCoMKgwqDCoCBpbnRlbF92YmxhbmsuYywgc28gd2UgZG9uJ3QgbmVlZCB0byBp
bmNsdWRlIGk5MTVfZHJ2LmggaW4gYQ0KPiA+ID4gwqDCoMKgwqAgaGVhZGVyIGZpbGUgYW5kIGl0
J3MgYWxyZWFkeSBpbmNsdWRlZCBpbiBpbnRlbF92YmxhbmsuYzsNCj4gPiA+IA0KPiA+ID4gSW4g
djU6DQo+ID4gPiANCj4gPiA+IMKgwqAgKiBSZW1vdmUgc3RyYXkgaW5jbHVkZSBpbiBpbnRlbF9k
aXNwbGF5Lmg7DQo+ID4gPiDCoMKgICogUmVtb3ZlIHVubmVjZXNzYXJ5IGlubGluZSBtb2RpZmll
cnMgaW4gdGhlIG5ldyBmdW5jdGlvbnMuDQo+ID4gPiANCj4gPiA+IEluIHY2Og0KPiA+ID4gDQo+
ID4gPiDCoMKgICogSnVzdCByZW1vdmVkIHRoZSB1bWxhdXRzIGZyb20gVmlsbGUncyBuYW1lLCBi
ZWNhdXNlDQo+ID4gPiBwYXRjaHdvcmsNCj4gPiA+IMKgwqDCoMKgIGRpZG4ndCBjYXRjaCBteSBw
YXRjaCBhbmQgSSBzdXNwZWN0IGl0IHdhcyBzb21lIFVURi04DQo+ID4gPiBjb25mdXNpb24uDQo+
ID4gPiANCj4gPiA+IEluIHY3Og0KPiA+ID4gDQo+ID4gPiDCoMKgICogQWRkIF9fYWNxdWlyZXMo
KS9fX3JlbGVhc2VzKCkgYW5ub3RhdGlvbiB0byByZXNvbHZlIHNwYXJzZQ0KPiA+ID4gwqDCoMKg
wqAgd2FybmluZ3MuDQo+ID4gPiANCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YmxhbmsuYyB8IDUxDQo+ID4gPiArKysrKysrKysrKysrKysrKy0tDQo+ID4gPiAt
LQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ZibGFuay5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmJsYW5rLmMNCj4gPiA+IGluZGV4IDJjZWMyYWJmOTc0Ni4uZmUyNTZiZjdiNDg1IDEw
MDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiA+ID4gQEAgLTI2NSw2ICsyNjUsMzIgQEAgaW50IGludGVsX2NydGNfc2NhbmxpbmVf
dG9faHcoc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjDQo+ID4gPiAqY3J0YywgaW50IHNjYW5saW5l
KQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAoc2NhbmxpbmUgKyB2dG90YWwgLSBjcnRj
LT5zY2FubGluZV9vZmZzZXQpICUNCj4gPiA+IHZ0b3RhbDsNCj4gPiA+IMKgfQ0KPiA+ID4gwqAN
Cj4gPiA+ICsvKg0KPiA+ID4gKyAqIFRoZSB1bmNvcmUgdmVyc2lvbiBvZiB0aGUgc3BpbiBsb2Nr
IGZ1bmN0aW9ucyBpcyB1c2VkIHRvDQo+ID4gPiBkZWNpZGUNCj4gPiA+ICsgKiB3aGV0aGVyIHdl
IG5lZWQgdG8gbG9jayB0aGUgdW5jb3JlIGxvY2sgb3Igbm90LsKgIFRoaXMgaXMgb25seQ0KPiA+
ID4gKyAqIG5lZWRlZCBpbiBpOTE1LCBub3QgaW4gWGUuDQo+ID4gPiArICoNCj4gPiA+ICsgKiBU
aGlzIGxvY2sgaW4gaTkxNSBpcyBuZWVkZWQgYmVjYXVzZSBzb21lIG9sZCBwbGF0Zm9ybXMgKGF0
DQo+ID4gPiBsZWFzdA0KPiA+ID4gKyAqIElWQiBhbmQgcG9zc2libHkgSFNXIGFzIHdlbGwpLCB3
aGljaCBhcmUgbm90IHN1cHBvcnRlZCBpbiBYZSwNCj4gPiA+IG5lZWQNCj4gPiA+ICsgKiBhbGwg
cmVnaXN0ZXIgYWNjZXNzZXMgdG8gdGhlIHNhbWUgY2FjaGVsaW5lIHRvIGJlIHNlcmlhbGl6ZWQs
DQo+ID4gPiArICogb3RoZXJ3aXNlIHRoZXkgbWF5IGhhbmcuDQo+ID4gPiArICovDQo+ID4gPiAr
c3RhdGljIHZvaWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZW50ZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gPiA+ICppOTE1KQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgX19hY3F1aXJlcyhpOTE1
LT51bmNvcmUubG9jaykNCj4gPiA+ICt7DQo+ID4gPiArI2lmZGVmIEk5MTUNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoHNwaW5fbG9jaygmaTkxNS0+dW5jb3JlLmxvY2spOw0KPiA+ID4gKyNlbmRpZg0K
PiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF92Ymxhbmtfc2VjdGlv
bl9leGl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAqaTkxNSkNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoF9fcmVsZWFzZXMoaTkxNS0+dW5jb3JlLmxvY2spDQo+ID4gPiArew0KPiA+ID4g
KyNpZmRlZiBJOTE1DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzcGluX3VubG9jaygmaTkxNS0+dW5j
b3JlLmxvY2spOw0KPiA+ID4gKyNlbmRpZg0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiANCj4gPiBX
aHkgZG9uJ3QgeW91IG1vdmUgdGhlc2UgaW50byBncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMv
aD8gVGhlbg0KPiA+IHlvdQ0KPiA+IGNvdWxkIGhhdmUgZW1wdHkgZGVmaW5lcy9mdW5jdGlvbnMg
Zm9yIHRoZXNlIGluIGdwdS9kcm0veGUvY29tcGF0LQ0KPiA+IGk5MTUtDQo+ID4gaGVhZGVycy9p
bnRlbF91bmNvcmUuaC4gVGhhdCB3YXkgeW91IGRvbid0IG5lZWQgdGhlc2UgaWZkZWZzLiBJZg0K
PiA+IHlvdQ0KPiA+IG1vdmUgdGhlbSBhcyBJIHByb3Bvc2VkIHlvdSBzaG91bGQgcmVuYW1lIHRo
ZW0gYXMgd2VsbC4NCj4gDQo+IFdlIGFscmVhZHkgd2VudCBmb3J0aCBhbmQgYmFjayB3aXRoIHRo
aXMgZm9yIHNvbWUgdGltZS7CoCBJbiB0aGUgZW5kDQo+IHdlDQo+IGFncmVlZCB0aGF0IHRoaXMg
aXMgbm90IHJlbGF0ZWQgdG8gdW5jb3JlIGRpcmVjdGx5LCBzbyB3ZSBkZWNpZGVkIHRvDQo+IGtl
ZXAgaXQgaGVyZS4NCj4gDQo+IFdlIGFsc28gYWdyZWVkIHRoYXQgSSdsbCBtYWtlIGEgZm9sbG93
LXVwIHBhdGNoIHdoZXJlIGl0IHdvbid0IGJlDQo+IG9ubHkNCj4gdGhlIGxvY2sgdGhhdCB3aWxs
IGJlIGhhbmRsZWQgYnkgdGhpcywgYnV0IGFsc28gZW5hYmxpbmcvZGlzYWJsaW5nDQo+IGludGVy
cnVwdHMsIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhbnl0aGluZyB0byBkbyB3aXRoIHVuY29yZSwgdGh1
cyB0aGUNCj4gbmFtZSBvZiB0aGUgZnVuY3Rpb24uDQoNCk9rLCB0aGFuayB5b3UgZm9yIHRoZSBj
bGFyaWZpY2F0aW9uOg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IA0KPiAtLQ0KPiBDaGVlcnMsDQo+IEx1Y2EuDQoNCg==
