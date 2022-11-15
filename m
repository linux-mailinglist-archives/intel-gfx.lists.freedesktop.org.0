Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 902B2629163
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 06:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1917310E072;
	Tue, 15 Nov 2022 05:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60ABF10E364
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 05:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668489052; x=1700025052;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=M1TVbKShpY8LZMvgP7zeGcMjvb0tEH/t8V+SoWVvrG8=;
 b=OJ0umlk+iBIHG0jeE6opACs15TYDybhaIZFRaW0Am/GGQKfZSc2sYYnD
 xg068/YdVbHUKaHbDwuax4vuym4LyM7d/fO6LLguPSMOQjv+hmVeavq1H
 pVa56fwj5veOuVtIWFTpqcVXK6613AhQDDBqN3PX/6hS7PmN25jrYA2RF
 7whvwYLudiBEbS8oGaC7PGt4rbpT5FRUeooWrmmcPnBpWhECDFGNMZbCM
 K3RRis3RPntXw2xLqLLS1v+ASOwnkKGj2LLLNl/tJxnEw7b93UH5WNgH3
 9NHu0BeCPekTZ6/H8fCq/03b63t0lmDmOgIIKL+QEvKUESThiCz5Bj3Ed g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313973418"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="313973418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 21:10:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="781212900"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="781212900"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2022 21:10:51 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 21:10:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 21:10:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 21:10:50 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 21:10:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfwXpsezr/2OtiFqPsnXwW8nSJlfcWxcviR+dq8fAi9fhY21cAR2TsgRwMGv+NQc/XNReTxC335wOS9zN/Qxeaer+bj2zW3ZM1c4wR4a7lsXdcijNaCSFpbZrJPTUjAvxHbWTIQEo31PKOiT50Id+VjLyuLBRn2q4OvI4ErGbIXIKL6X5rltzAVTptp++004tcmqqDAGOiGjOdBibGvgAlcdlwUHgQTLbf8RhypOo78pKeDKvkXL8rPi68hHg3qZg3grrS2UDUk5Zuh8noEZiRTwVlGJCXnZO1IQWDEfkq3ozxYZUywi2Lkci9R0kuaGi3PRwkX7hI9TwxEF6cLsIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M1TVbKShpY8LZMvgP7zeGcMjvb0tEH/t8V+SoWVvrG8=;
 b=GVQ18YPmxp+4sCGpt5GhaupZnMv2OcaWuH6mcLeEc35w5d3H0Hzxq3Uwz4B5v3isuN3gtv0ItTfq5Zq5p2hTIvcA8//4hBMFDbD/+iLNkM5CMI1mZlT3fVWnU8L7KJWbXmJ2MWTp6Dp6TV2RdG97fqob45Ayx++siL9fqO+H1/jWKBnNMTOAKgeul5IjjrOmlud53s0COJCSNg8KNQXVf3Fkk+vB6UNk0NRBlCue2PIcAIUJ6L7YhCC7sY/qTBq8FxC0Orf4yrjrpJ4vxs77jIRZgqoxdJR9Cwpq6gOMb35BwXdl398go95CnhV671ClpwXoIzOnXt57O2CTjHSkpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CH3PR11MB7348.namprd11.prod.outlook.com (2603:10b6:610:14d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.26; Tue, 15 Nov 2022 05:10:48 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%9]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 05:10:48 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY5XPnZDsyIziiH0OhmcMOh7ZQfa4/gpoAgAAUboA=
Date: Tue, 15 Nov 2022 05:10:48 +0000
Message-ID: <72873a3e0bdbebe0cc3648034403a63e9e288214.camel@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-2-alan.previn.teres.alexis@intel.com>
 <4961bed7-80af-df2d-2a48-33696b0f7a8d@intel.com>
In-Reply-To: <4961bed7-80af-df2d-2a48-33696b0f7a8d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CH3PR11MB7348:EE_
x-ms-office365-filtering-correlation-id: de799188-0bef-409d-1b2d-08dac6c7c26b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5fnlKXtL4OkD0YXbtDG+BDRghG6D1i78X/cmp1k0QV5lhJej3GpI5t5LcQ8DAVSIu1U2S6CRRt+NWppP103PSBHgcONW45k1/5PmjeW6PPwsE8x7VCQ5xpd7yKC/b5sk4ac2QSO4y1ttSMp62VDLwbV8+xr4CmZZpAYjuqiMzCmniHO6RJS+hvYPTIf605nUVXvvcR9JRj/ACpKvLsvRHjOWk2S1h1XXsrTUxsD2bs19Z091lajsAnkAnfkjqa69Wb0Fvh9otpppU0fwR5K2Scw8pVeSuHZEt7cVlO4dqY2OcpuYtI08AdoECbAvOxc2NEuZovXTJ0fY/mKOOr6KMN/AqabknyRCSHPSzAGoVWNKxqISgExHJzJWIEi8e1XAduafFScFUC0zEs3isfKTJzxXt7u9wGyBvLeWuEvB2U3GbFxQXxm4nN0Ini1JM534kDEN/nx1QrNYBegz8cBhVXOWSYBLWH3AjV5BqvjnnnQzUGE+iimoNdBjC6lXGLNaWSJ4u5PE5lrEEOQ/bB+XchASAoEtw3UlEyIsXKQK97ksAEVeUTcmO+0Fk8O5AdmO9kZtj7SQtgb0Csz8nnccEfx+LyCqJEazTjGG9xYROlGy3KTh992z0XyQe3pwJAe++D/mm6uMRcKLD9iYPeIIkZTS2yV+1yIuT+epggbXQsF0VftlyDKT7V3iCGI5hVazH7B5Fq2dpOuEFrDA92nOQc08bDgN1L05d9jyblFErzFwMAQbPabkugP/sd1MZvgPpV9Grw2aYQqdU8UxFC8I3A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(376002)(136003)(346002)(451199015)(66946007)(2616005)(186003)(83380400001)(66556008)(122000001)(2906002)(82960400001)(38100700002)(38070700005)(4001150100001)(86362001)(41300700001)(5660300002)(478600001)(6486002)(53546011)(6506007)(91956017)(64756008)(8936002)(6512007)(316002)(8676002)(76116006)(66446008)(110136005)(66476007)(26005)(71200400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFkyNlpZVlJXcEtuUDY4R1dJMGNPaUxpdEJHaUVlWEdBQ0hyZy9mdjIyUThK?=
 =?utf-8?B?KzNDbGl4alpqK2trV2FVRFZEYUFqTGtUTUdRVTlzYnFCclBSZUV2SDJmVkZk?=
 =?utf-8?B?SnlaUU1LSWR4dlJHbUVRbG1mZmYyNExacnV6MnUzd2hLNDhvbHFrR2tlVldP?=
 =?utf-8?B?NWZKMjltMFhFNDAvd2p4UHozelh4bFZSd2NMcHhMK0RCdU5SV2FkUGgzakpX?=
 =?utf-8?B?R280eDRjKy9YMnZPT2V0VTVqa2xYV1JtNHl0L0ZGTUtVZDdqL0pPOW1wUU15?=
 =?utf-8?B?QnEyV1hqR1YyN3hoOHlUTUFJTjcrS0pZalIvSmdsT21wUG9iQnd5ekRQWFlp?=
 =?utf-8?B?NnVCekZQUFdQQVUwTk92bVdaS0lnS05RcWJzUEVseEZMaGp6OWphZzlRM2tS?=
 =?utf-8?B?MENHeW14b2R3OFZXbUp6VGQ5KzNZb2FLdmJBMmZ4UnU5eXJnNG5UdmYxdVFM?=
 =?utf-8?B?TjBWR1g0YU4vOTRDNFJVSlpIMU1JLzB1OE1uNFJuam9saGMwRnA3aklCNkpX?=
 =?utf-8?B?UGFIa25UdHF2WHl6aE13b0ErYm1ialhML2xRYmgyQXY5aHpMSFMxT2wyUkR4?=
 =?utf-8?B?WFZod215VWI2R0xGWWJZSzBjL245WTVFTStZeDF1bStudWdXRHN2SVU5Uks4?=
 =?utf-8?B?bmgwSlBIWFVzQzloTitrM2NXc25Salh6elUycmthclBjNEV2dVhiMnBBb3ZT?=
 =?utf-8?B?SkhsSyszYk9wK1U4ajcxNWxHM1lOcmkxd2QvUlZqRERPT3pUMzRBcmJBbzFY?=
 =?utf-8?B?ZW5CYTN3WXBSTEdtakJCQkoyLytDemtreEdGWHNwSEJBUFkrUnNBOEtXV2Qy?=
 =?utf-8?B?MHhCcFRSYjkyNzdNbXFPd2FhbXd6c2xnNk1YVG1IZUgwRytFMGF1dkNGS3Fj?=
 =?utf-8?B?QlVmWVhzTlZSMDZmd1pTaFQxN2hiQnF0MXZEZUFnSGtobG41QS9QeEJVQzQ0?=
 =?utf-8?B?ZkM2ODc4MGQxcVBkQXhPZEZwZFg3THd2QitERGZsUjhLMjNBWG5pay92d1la?=
 =?utf-8?B?eDFlRVA0T3hLOFdZNG44SWdnQzAzZ2l4Nk5ReHFKY01LVWRmZE1JOGZWNlVz?=
 =?utf-8?B?NHBKNXh0TDdjRFloekR4RXMyQXp4ck9iRlQ0M3FzakUrWXhib2haa1dqc0F6?=
 =?utf-8?B?T21ZNWluTnVWUlNJbjJmMjliSStUTjRXTUxXcUFVMDNqd1B0ZnIrWmR3TU12?=
 =?utf-8?B?U0JBSnZSUVljR2ZaZ2NTdU5nU1lTY0xrOTIzUlhCUGdrNVRVTW1GRlVBVXVo?=
 =?utf-8?B?TkNJTkw2T1VhaDg5SVgwcHE4elBTZ2tlOSs3RGRka0VrN0tGMi9oMFNNbkE5?=
 =?utf-8?B?MC81Y0VqaFZXOHlGOEtzUFhaRUkwSWZ1K0ZJSjdUT3NYalI1dTRXSnMzQ0lp?=
 =?utf-8?B?WitGZ2dPZ0VJTVpHRlR1SUw4VWVYMTZWM002bEFlZzdBdXN6M3ppZTZyOFp1?=
 =?utf-8?B?SFdZZ2w1NG5BRldMeldyVjJYQW84NXhLMEZnUkpXS3ZObWxGNUMwc1FHN1FZ?=
 =?utf-8?B?bnVQMkhqVzhJeHR1Q0d1VEVWV01tMmJjbUR0L3NuNHYwU0hMblIxYmcySlpE?=
 =?utf-8?B?bDRnTHM5em53YkpWZ0hyd1cyUkExUEJTbWVKekUzWjBNNzBSSGNnVHVZM1RQ?=
 =?utf-8?B?S0UwN056Sy9GSEpyTGdnNGhCT0hZRUVzWWVHc0FYdm1rUVBFZHBGL3FIZ2tx?=
 =?utf-8?B?ZmkvYUxzNkQ3SGFSK1hLa0lOcmQ1T1pyS1JBUlUxdTNGRENJR3Z6Mm5FR1gz?=
 =?utf-8?B?b25seFdFcmV5MGc0cFBxYWZhL2llNFgwVTU1MU1qbTI3SGdGWFJsK1hVVzM4?=
 =?utf-8?B?bXhadXVMT3c1bUFqc0tkUWdPTVNGbUJja0twSEpYVnE1UkVUR1A0bTd2SnBX?=
 =?utf-8?B?SVJROHIyT2J4MGlNY2RoWmVYVGNCWndJV1FOeXRDSGd6dzNvZFN6NUU1OUNm?=
 =?utf-8?B?dGROSThNMGZFaEttdVFjRUxvcVh4ZWhTRjkwUUNOUGVqWkUzSG9Od3UrZU5F?=
 =?utf-8?B?Z01TRXlFcGFmVVg0RURMUTljMXNLSzV6azhta0pxMmlmTkkvNTBqL1BOU0Rx?=
 =?utf-8?B?YUw2Z2taRVpYUFJJVlg0M1N4b1EvQUZHbENBd3g4TDBaVXgwM3MyU2dWbmZ6?=
 =?utf-8?B?WjJrLzl4NkM5elFOUDRNckxBU054YVpTSFNGWU1ST204SWVIeWNOSEpWUkMy?=
 =?utf-8?Q?OFMC3uBzT4IUOagnX41D+t8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2FD7C014D03D714CBC171164E0030627@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de799188-0bef-409d-1b2d-08dac6c7c26b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 05:10:48.8468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KwacpGtC/M7CUaZdC7mrSSvdrRMWD4EZdYlYHRG27hoOle9jelq6PKCYlawihb7/WJdQtNb/imWrwfyo4K8fAPXf0z20RpCnDgVuEOFkTOdao/PL3EsMmmCVU/deGmut
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7348
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0xNCBhdCAyMDowMCAtMDgwMCwgQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgd3JvdGU6DQo+IA0KPiBPbiAxMC8yMS8yMDIyIDEwOjM5IEFNLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiBJbiBwcmVwYXJhdGlvbiBmb3IgZnV0dXJlIE1UTC1QWFAgZmVhdHVyZSBzdXBw
b3J0LCBQWFAgY29udHJvbA0KPiA+IEBAIC0xNDIsMjIgKzE2NiwyMSBAQCB2b2lkIGludGVsX3B4
cF9pbml0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gPiAgIHsNCj4gPiAgIAlzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gcHhwX3RvX2d0KHB4cCk7DQo+ID4gICANCj4gPiAtCS8qIHdlIHJlbHkgb24g
dGhlIG1laSBQWFAgbW9kdWxlICovDQo+ID4gLQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0lOVEVM
X01FSV9QWFApKQ0KPiA+IC0JCXJldHVybjsNCj4gPiAtDQo+ID4gICAJLyoNCj4gPiAgIAkgKiBJ
ZiBIdUMgaXMgbG9hZGVkIGJ5IEdTQyBidXQgUFhQIGlzIGRpc2FibGVkLCB3ZSBjYW4gc2tpcCB0
aGUgaW5pdCBvZg0KPiA+ICAgCSAqIHRoZSBmdWxsIFBYUCBzZXNzaW9uL29iamVjdCBtYW5hZ2Vt
ZW50IGFuZCBqdXN0IGluaXQgdGhlIHRlZSBjaGFubmVsLg0KPiA+ICAgCSAqLw0KPiA+IC0JaWYg
KEhBU19QWFAoZ3QtPmk5MTUpKQ0KPiA+ICsJaWYgKF9ndF9zdXBwb3J0c19weHAoZ3QpKQ0KPiA+
ICAgCQlweHBfaW5pdF9mdWxsKHB4cCk7DQo+ID4gLQllbHNlIGlmIChpbnRlbF9odWNfaXNfbG9h
ZGVkX2J5X2dzYygmZ3QtPnVjLmh1YykgJiYgaW50ZWxfdWNfdXNlc19odWMoJmd0LT51YykpDQo+
ID4gKwllbHNlIGlmIChfZ3RfbmVlZHNfdGVlbGluayhndCkpDQo+ID4gICAJCWludGVsX3B4cF90
ZWVfY29tcG9uZW50X2luaXQocHhwKTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+ICAgdm9pZCBpbnRl
bF9weHBfZmluaShzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gICB7DQo+ID4gKwlpZiAoIWlu
dGVsX2d0cHhwX2lzX3N1cHBvcnRlZChweHApKQ0KPiA+ICsJCXJldHVybjsNCj4gDQo+IFdoeSBk
byB5b3UgbmVlZCB0aGlzPyB0aGUgZmluaSBiZWxvdyBzaG91bGQgYWxyZWFkeSBiZSBzbWFydCBl
bm91Z2ggdG8gDQo+IG9ubHkgY2xlYW51cCB3aGVuIG5lZWRlZC4NCkV2ZW50dWFsbHkgaSBwbGFu
IHRvIGNyZWF0ZSBhIGJhY2tlbmQgYWJzdHJhY3Rpb24gZm9yIHRlZSBiYXNlZCB2cyBtdGwncyBn
c2NjY3MgYmFzZWQgYW5kIHJhdGhlciBrZWVwIGFzIG11Y2ggb2YgdGhlDQpjaGVja2luZyBvbiB0
aGUgZnJvbnQgZW5kIHRvIGtlZXAgaXQgY2xlYW5lci4NCj4gDQo+ID4gKw0KPiA+ICAgCXB4cC0+
YXJiX2lzX3ZhbGlkID0gZmFsc2U7DQo+ID4gICANCj4gPiAgIAlpbnRlbF9weHBfdGVlX2NvbXBv
bmVudF9maW5pKHB4cCk7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4
cC9pbnRlbF9weHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuaA0KPiA+
IGluZGV4IDJkYTMwOTA4OGM2ZC4uYzEyZTRkNDE5Yzc4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3B4cC9pbnRlbF9weHAuaA0KPiA+IEBAIC0xMyw2ICsxMyw4IEBAIHN0cnVjdCBpbnRl
bF9weHA7DQo+ID4gICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsNCj4gPiAgIA0KPiA+ICAg
c3RydWN0IGludGVsX2d0ICpweHBfdG9fZ3QoY29uc3Qgc3RydWN0IGludGVsX3B4cCAqcHhwKTsN
Cj4gPiArYm9vbCBpbnRlbF9ndHB4cF9pc19zdXBwb3J0ZWQoc3RydWN0IGludGVsX3B4cCAqcHhw
KTsNCj4gPiArDQo+ID4gICBib29sIGludGVsX3B4cF9pc19lbmFibGVkKGNvbnN0IHN0cnVjdCBp
bnRlbF9weHAgKnB4cCk7DQo+ID4gICBib29sIGludGVsX3B4cF9pc19hY3RpdmUoY29uc3Qgc3Ry
dWN0IGludGVsX3B4cCAqcHhwKTsNCj4gPiAgIA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3B4cC9pbnRlbF9weHBfZGVidWdmcy5jDQo+ID4gaW5kZXggNDM1OWU4YmU0MTAxLi4xMjQ2NjNj
ZjAwNDcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4
cF9kZWJ1Z2ZzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
X2RlYnVnZnMuYw0KPiA+IEBAIC03MCw3ICs3MCw3IEBAIHZvaWQgaW50ZWxfcHhwX2RlYnVnZnNf
cmVnaXN0ZXIoc3RydWN0IGludGVsX3B4cCAqcHhwLCBzdHJ1Y3QgZGVudHJ5ICpndF9yb290KQ0K
PiA+ICAgCWlmICghZ3Rfcm9vdCkNCj4gPiAgIAkJcmV0dXJuOw0KPiA+ICAgDQo+ID4gLQlpZiAo
IUhBU19QWFAoKHB4cF90b19ndChweHApLT5pOTE1KSkpDQo+ID4gKwlpZiAoIWludGVsX2d0cHhw
X2lzX3N1cHBvcnRlZChweHApKQ0KPiA+ICAgCQlyZXR1cm47DQo+ID4gICANCj4gDQo+IFRoaXMg
bm93IHJldHVybnMgdHJ1ZSBmb3IgREcyLCBidXTCoCB3ZSBkb24ndCB3YW50IHRvIHJlZ2lzdGVy
IHRoZSBQWFAgDQo+IGRlYnVnZnMgdGhlcmUgYXMgd2UgZG9uJ3Qgc3VwcG9ydCBQWFAgYXNpZGUg
ZnJvbSBIdUMgbG9hZGluZy4NCj4gDQoNCnllYWggLSBvay4NCg0KPiAgSU1PIGEgDQo+IGJldHRl
ciBhcHByb2FjaCB3b3VsZCBiZSB0byBoYXZlIGludGVsX2d0cHhwX2lzX3N1cHBvcnRlZCBiZSB3
aGF0IHlvdSANCj4gY3VycmVudGx5IGhhdmUgYXMgX2d0X3N1cHBvcnRzX3B4cCgpLg0KPiANCk9r
YXksIGxldCBtZSB0YWtlIGEgbG9vayBhdCB0aGF0IHNpbmNlIGkgcmVjYWxsIHRoYXQgZnV0dXJl
IHBhdGNoZXMgd291bGQgcmVseSBvbiBpbnRlbF9ndHB4cF9pc19zdXBwb3J0ZWQgZm9yIHRoZSBj
YXNlDQp3aGVyZSBQWFAgaXMgbm90IHN1cHBvcnRlZCBidXQgd2UganVzdCB3YW50IHRvIGtub3cg
aWYgR1QgaGFzIGJhY2tlbmQgdGVlIGZvciBjb21wb25lbnQgYmluZGluZyBvciBzb21ldGhpbmcg
LSBidXQgaQ0KZ3Vlc3MgdGhhdCBjb3VsZCBnZXQgYSBzZXBhcmF0ZSBmdW5jdGlvbiBhcyBvcHBv
c2VkIHRvIHJldXNpbmcgaW50ZWxfZ3RweHBfaXNfc3VwcG9ydGVkLg0KDQoNCj4gQWxzbywgaW50
ZWxfZ3RweHBfaXNfc3VwcG9ydGVkIGlzIGEgYml0IGNvbmZ1c2luZyBiZWNhdXNlIG9mIHRoZSBu
ZXcgDQo+ICJndHB4cCIgcHJlZml4LiBXaHkgbm90IHVzZSBqdXN0IGludGVsX3B4cF9pc19zdXBw
b3J0ZWQ/IFdlIGFscmVhZHkgaGF2ZSANCj4gcGVyLWd0IGNoZWNrZXJzIHRoYXQgcmVmZXIgb25s
eSB0byB0aGUgc3ViY29tcG9uZW50LCBsaWtlIA0KPiBpbnRlbF9odWNfaXNfc3VwcG9ydGVkKCks
IHdoaWNoIGZvciBNVEwgaXMgZmFsc2Ugb24gdGhlIHByaW1hcnkgR1QgYW5kIA0KPiB0cnVlIG9u
IHRoZSBtZWRpYSBvbmUuIEkgZG9uJ3Qgc2VlIHdoeSB3ZSBjYW4ndCBkbyB0aGUgc2FtZSBmb3Ig
UFhQLg0KDQpJIHRoaW5rIHRoYXQgZXhpc3RpbmcgbWV0aG9kIGlzbid0IGEgZ29vZCB3YXkgLSBp
IHJhdGhlciB1c2UgdGhpcyBvcHBvcnR1bml0eSB0byBzZXQgYSBwcmVjZW5kZW5jZSBmb3IgcHhw
IHdlIGNhbiBoYXZlIGENCm1vcmUgc3RhbmRhcmRpemVkIG5hbWluZyBjb252ZW50aW9uIGJhc2Vk
IG9uIHRoZSBnbG9iYWwtdnMtcGVyLWd0IGxldmVsIGNoZWNraW5nIChpIGFsc28gd2lzaCBpIGhh
ZCB0aW1lIHRvIGxvb2sgYXQNCiJpbnRyYS12cy1pbnRlciBmdW5jdGlvbiBuYW1pbmcpLiBTbyB3
aGVuIHNvbWV0aGluZyBpcyBjYWxsZWQgd2l0aCBfcHhwXyBpdHMgbWVhbnQgdG8gYmUgY2FsbGVk
IGFzIGEgZ2xvYmFsIGNoZWNrDQoocGFzc2luZyBpbiBpOTE1IGFzIGl0cyBwYXJhbSkgYW5kIGlm
IGl0cyB1c2luZyBfZ3RweHBfLCB0aGVuIGl0cyBtZWFudCB0byBiZSBjYWxsZWQgYXMgZ3QtbGV2
ZWwgY2hlY2tlci4gQW5kIHRoZQ0Kc2ltaWxhciBmdW5jdGlvbiBuYW1lIHNob3VsZCBiZSBva2F5
IGlmIHRoZSBjaGVjayBpcyBzaW1pbGFyIChqdXN0IGF0IGRpZmZlcmVudCBoaWVyYXJjaHkgbGV2
ZWwpLiBJIHByZWZlciBteSB3YXkNCmJlY2F1c2UgaXQgYWxsb3dzIHRoYXQgdW5kZXJzdGFuZGlu
ZyBwdXJlbHkgZnJvbSB0aGUgZnVuY3Rpb24gbmFtZSBhcyBvcHBvc2VkIHRvIGhhdmluZyB0byBs
b29rIGF0IHRoZSBmdWxsIGRlZmluaXRpb24NCmJlZm9yZSBrbm93aW5nIGlmIGl0cyBhIGdsb2Jh
bCBjaGVjayB2cyBhIGd0IGxldmVsIGNoZWNrLiBJIHRoaW5rIHdlIHJlYWxseSBvdWdodCB0byBo
YXZlIGEgbW9yZSBjb25jaXNlIG5hbWluZw0KY29udmVudGlvbiBhcyBvcHBvc2VkIHRvICJ3ZSBk
byBpdCBsaWtlIHRoaXMsIHNvIHdoeSBub3QganVzdCBmb2xsb3ciLiBBbiBhbHRlcm5hdGl2ZSB3
b3VsZCBiZSBpbnN0ZWFkIG9mDQoiaW50ZWxfZ3RweHBfaXNfc3VwcG9ydGVkIiB0aGVuICJpbnRl
bF9ndF9zdXBwb3J0c19weHAiLiANCg0KDQo+IA0KPiBEYW5pZWxlDQo+IA0KPiA+ICAgCXJvb3Qg
PSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoInB4cCIsIGd0X3Jvb3QpOw0KPiANCg0K
