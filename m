Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996E17EF8E8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 21:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A1310E0BF;
	Fri, 17 Nov 2023 20:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970C710E0BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 20:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700254664; x=1731790664;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=V8pOmikHeK2FVn5Bw+ZZy+WAnqKkxhpVRFo07Fk5tWI=;
 b=ir4Mec7pz06NJ34XHVFMum2yIdfBzncLk/8G7XOlvki5YUt7eIwVfaKk
 +zBLQvHvSSkUxHIj/gdXctWgt5nLWYmV/Y/xSQJB1vR1cUSTaRctLWJPu
 NCJ2BxFHoab3IQgIxqGYhSp6kGAsCYWrhQTIqUun6AfcYLXntWdTC+lFS
 RYYblr5mg0RjmyCLgKxS+hIBlGFlxnh2c2JadqF2oCPgf1Ako8rMgdpWt
 WdhM5JtfiAXa+jBq1wW+sMZZcJv9r7f/teBqz4HFlysker9EsOyjzFRIv
 owjx/muVNscITPhO0PcuvH9In+C3AsJjuMDXuw8kLBehkh3p1CEkGRCnp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="371545751"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="371545751"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 12:57:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="909524037"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="909524037"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 12:57:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 12:57:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 12:57:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 12:57:43 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 12:57:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LY1d8agj7db/PAv3OEK05hNRT7bcb4iOBjrdIUOn9BPjglwMj7EogGR8U0i0GDV4bLaCC6bdSZ9UoeRdN8J2VUYAwfU2ijtGDS2F6UJwaF2dMCLDE8EGetmnZO31ThjbTv/931sqF+Fz59/En1im0GtI531hfkBeMYwqmx7rxmgyPnsaACIxt9ZB9cAaFNdVEIRVfe5MybL/uHfIiudsK+Yg2M8NaPeCRwkvwz41NVC6hBB3N3mwqF36WH0L6ACbZgzW50fFmEOUnJj3PjDebAGdQ0d/7qsag7yjeWUqTGvCc9psBkQ4u8nL50RF7hjvbo2V/nj9RMruY+OuzhQyKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V8pOmikHeK2FVn5Bw+ZZy+WAnqKkxhpVRFo07Fk5tWI=;
 b=jCwxr5sxpPMpQhzWCN6c11IHaWw+Vfl0POj/5QSy7cEbExvYTbkC/GI2+1KJ908kQQ/KEtTIluQyo/vw5GvJ3rZR5CPt0gtKUtYwPJFp8BMY95f1eOsyX8PhlaTHAptT9UhLdn/gd/gIpYNNxJhayn9ekmlBDRgZXFznpyZt0VVD6NxXHJqOzOUdECMEoQQLbkhuR31gJ+XJCSunISLeH12BE5oINDaGYvPXCaI/zilamyWjXZvpYeD8EeqHnEgM195q/lSyrCs5hSnT/2bBzkT8OgcqUOlIG06nSG4PwxYQ5ldFuXg20mZQIW+X9nd3XE0EpR5EgczMi+EjDSHuqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.18; Fri, 17 Nov
 2023 20:57:31 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::8076:c5fe:e0fc:cfaf]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::8076:c5fe:e0fc:cfaf%7]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 20:57:31 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/xe/uapi: Fix various struct padding for 64b alignment
Thread-Index: AQHaGQtxMIFWRmO8akedoaehp+s4NLB+kdsAgABq9YCAAAJzgA==
Date: Fri, 17 Nov 2023 20:57:31 +0000
Message-ID: <6b5e0f6a57bbb8c331066d2968db90dd955e8c4c.camel@intel.com>
References: <3c708b258b65451b231c5671fcb605d777b5b250.camel@intel.com>
 <20231117204843.182563-1-rodrigo.vivi@intel.com>
In-Reply-To: <20231117204843.182563-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|CO6PR11MB5603:EE_
x-ms-office365-filtering-correlation-id: f12e5634-df8a-487e-ece4-08dbe7afd120
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g9r5RH7zkjd/qhdLC6JVH5Zl5+Aoa8vmAqlhaTmAKkP0e+Zif+dRev8U27HxEoV5ZHYLrAgDSdD3mghyeFqia5CPKnAc5yH9JIH3I9/nqA6DXQLLF06GuosUWPiZnbX+MCr7lmlTqUoxF8H78AZXqJuFKT8VF6VsdBQnSJBv+FwHxMKGK2dRvRfnobU3tyZLVTh6Xb2+oEuDwlBU0fKl/OOeBheUo7qrAbwUlh63z0IpDSd37xcbkUcfOD/I/kUu+QNxZ7PjqEWmBz+bNIQufZLRS5ohQr8Z1lA8f3uIC2fnD31Julomx/vfAZ2lczBBzf7Pp7fN7xSmxMJw45cf5hmPFarGdCEBb/tb/bnSBxJ/UNSofOowvN29LlKsA1jo2epK3uwUF1Yp1RT3Sq3UIOMPeiU2PeqMkr5IyqO8bQvkHxAZUtAjW9fVyQK2nzWOwRt/wq/+cKc+oE2yOtMZC5Bl8h0JTu9ENHl6toQHguusWVoTVJcwEXZFO1N1DzPFxhudolXzYIYtYOD2zxXGTOZa427v9HMUaHhmFOLjMN1gr3RcrFqh2GwUgj+xSvykP9g99Y9VQex/lPW6bI7HK7hK7Qq5pI3whCY0dvynq1U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(396003)(39860400002)(366004)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(6486002)(966005)(2906002)(478600001)(86362001)(6506007)(6512007)(4001150100001)(2616005)(91956017)(5660300002)(71200400001)(316002)(64756008)(66946007)(66476007)(66446008)(8936002)(8676002)(4326008)(66556008)(76116006)(110136005)(54906003)(38070700009)(38100700002)(83380400001)(41300700001)(26005)(82960400001)(122000001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2d2aEsvV1h6d1hxR2wrQ0tSRFJZcVBWQ1JzSHlTandQa2dFSHhwRm5uN1Jx?=
 =?utf-8?B?RkQ4Uk13WmZVc0orbU9pR1hyL0pOQ01jQzJJTkxWY0d0WFYvWk5Yb01IajRS?=
 =?utf-8?B?YXN1blFpc0VISit2b0RsM0xqak1pR215OCs3Znl2NGhYa3lqb2YveG9jejU2?=
 =?utf-8?B?SUErcmVETVJmRFVUYmUvUEszem1UaDdNd1IzSTZhdGcxaWdsZTk0Szd6cURB?=
 =?utf-8?B?SDNSWHFZMDBzTUNDSWFIQUdkclZ3YXVrclVrU0dDV0xsMkczemdMdE8zY2U5?=
 =?utf-8?B?b1R0T29ISHI2QklkdlErcWQ5dy9oR2F1dklnR29KejBubUhCME4xaFhuLzJX?=
 =?utf-8?B?cEtIU1lKTXZ3UU5IV1ZxcUYreFJlYVp5Q0VieDRqMVg1YU1uZzdhUjJEalZ6?=
 =?utf-8?B?VDR2VVpTRjRXWU9lcjgwSG9rdzlPbFVuWDhZWkszS2RBV3pwbnROeUxWT1Zz?=
 =?utf-8?B?NThyMmY3azBKL0xxZUdsdXVEazl3Z3hjUzBuYUg1SnJYZGpRbHlZSlB1SytF?=
 =?utf-8?B?VDUwU1pjVXd3WFdHczlsK0s1QlhEK2pKTUZJK1hDVTRMeHZRZHhpSG9lOEF4?=
 =?utf-8?B?bmtWdk5JMk1vWUFpMjBWOWN2blMzMkJMNkYxZUdlL2FpZ2s0R2FMSGJRREw2?=
 =?utf-8?B?ekM4REJsc05wZ09KL3ZvelRBNXFEdmxWaVJ3dDhvVUUreTFZZTVJYitXSkty?=
 =?utf-8?B?Y3NYZStuTUZqU1JjUEVUQjlWSUlGa1Z0MnFtZ2pYaHcySk1VdThudnd5VGVT?=
 =?utf-8?B?ZE42RFZ4Sk81N1pJWWl5S0IzNGNCQWlaOFZaYU4rVVN0UUxCdmh0eFZWcEtY?=
 =?utf-8?B?YXlIcmEvSmZ5WVluZVd4aGtRWG15c3lUN1g2VFRJVkFKb2luR2ZVWFFCb015?=
 =?utf-8?B?ODcxd3dBRHBzeTJMeVlrK1lRREFKSHJiN3FUOGhmQjNoRzFGbEJSdnY2aUNZ?=
 =?utf-8?B?WUp1dDg1TlUwUzRnZVFIMHA5WFRhQm1wUENtZzVrNzhDaDRuL2N4d3Jmci9U?=
 =?utf-8?B?anFDSlZIOHhTRWtSZWM1RGhZQVd4V0F2VG1JTWRoMTlYL2J0WE5vNENEZXFr?=
 =?utf-8?B?UDdXa29IemZiOE1CMC9NMjYzR1BHczJWMndjY3JDZko5SFBkRkNQR0dxSUNR?=
 =?utf-8?B?RE5NNmo3dWVzQStQZ3NFNU56V3B5ZTJEK3M5bzFxM2lYeHNlOHA1YWVlNXkv?=
 =?utf-8?B?UHpucXNUcG9tK1ZzZTZDekdTUTkvNm5NZkhFejFSSFF5ZGlyN3U4aVlpZGI2?=
 =?utf-8?B?VUNYUGh3aXFnVmN2S2NDUE1jZTUxYXErUWQ1NGNlcG4vK0QwVVQrcXgrV3c1?=
 =?utf-8?B?c2xRdE1jRVRzcG5xbGVqNEx6NDE5LzBxQ1BqTHdvSDl0WVZPK2laQjRPWnBi?=
 =?utf-8?B?R3lJK3Y4dTFvbHFCRzliWHpjT0FRZXFVaFdjWFIvY2RvdStUcUY2cjdJRjFX?=
 =?utf-8?B?L0tjcnVuQmtESUJYZW82RVhPYW5WL1JadTRKeWc5THY0L0dHZ3RWL0xBcXIw?=
 =?utf-8?B?SjdoRFN6cXpZWnlkVWFtN1F1VHNvSWljQXNkakdscnFIOGVib1QvdDhMbzk2?=
 =?utf-8?B?LzJLSU1iWEtCZzdNRVlNdnNJQUZiaExXc0l0ODlDcDVyWnJmOGlQUWlLQkph?=
 =?utf-8?B?SkdsYlFQZlVZbGxPK3Nra09uVFYrRS9OeEpkM3hPNlJ4TFB4UFhYbk9OSlIr?=
 =?utf-8?B?MjI3aHpCLzg1MUFlRU8zMHBJTUVKdDE5cUNGcER1cktkOVQ1TjRhZ3pHTEph?=
 =?utf-8?B?UUl6TDMzampzU3UvdWhkdGN1aWhRMjRaYWxqZEkwQnFiRHVSUzBaRUlVZ3R4?=
 =?utf-8?B?WUtjdWVPaVVaYURnSVNwUGp5akFKc0NHNk40akFwRTNkZ0JPa0hEL3pGdFRr?=
 =?utf-8?B?ZHg2RmJXbURleG5FaDNTSEFpMFM0cUMzQVBxQ3RJbFFmRkNLaFJHdlN3LzlM?=
 =?utf-8?B?TCtPNGs0R3RkcmtDVjlSVVd2eXp4d3l1L0VnVFBZb3JaLzVGOTRqZVpwU3NY?=
 =?utf-8?B?YURwRUtFREQrNVpvRWNQbm9zc1RidHUwbk9Jb1d3Q1E1dmdaMDlTd1dTV3d0?=
 =?utf-8?B?WUVxVjRNMmtxU0dTT1piOS9SYWU0QTBQdGRXRk1NRGZZVyt0emxxcU45MnpT?=
 =?utf-8?B?RXJqRFRGTCtiYXBPZXYvemovRHdjbVQ3dHp3R3d5eWo2NjRZRDJaT01YV1VU?=
 =?utf-8?B?dXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <ADEEDFC08AC1E34EBA5275195087083F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f12e5634-df8a-487e-ece4-08dbe7afd120
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 20:57:31.6549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AchvWzNM0uq+48rPdHJIogmbxMPEhWT4ZHSsxxlkI8VL3VbVDPJdqBt/cOnV/vP22LLStZK78iM2RcJo+B2I5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/xe/uapi: Fix various struct padding for
 64b alignment
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
 "Dugast, Francois" <francois.dugast@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTE3IGF0IDE1OjQ4IC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IExldCdzIHJlc3BlY3QgRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2JvdGNoaW5nLXVwLWlvY3Rscy5y
c3QNCj4gYW5kIGFkZCB0aGUgcHJvcGVyIHBhZGRpbmcgZm9yIGEgNjRiIGFsaWdubWVudCB3aXRo
IGFsbCBhcw0KPiB3ZWxsIGFzIGFsbCB0aGUgcmVxdWlyZWQgY2hlY2tzIGFuZCBzZXR0aW5ncyBm
b3IgdGhlIHBhZHMNCj4gYW5kIHRoZSByZXNlcnZlZCBlbnRyaWVzLg0KPiANCj4gdjI6IEZpeCBy
ZW1haW5pbmcgd2hvbGVzIGFuZCBkb3VibGUgY2hlY2sgd2l0aCBwYWhvbGUgKEpvc2UpDQo+ICAg
ICBFbnN1cmUgd2l0aCBwYWhvbGUgdGhhdCBib3RoIDMyYiBhbmQgNjRiIGhhdmUgZXhhY3Qgc2Ft
ZQ0KPiAgICAgbGF5b3V0IChUaG9tYXMpDQo+ICAgICBEbyBub3Qgc2V0IHF1ZXJ5J3MgcGFkIGFu
ZCByZXNlcnZlZCBiaXRzIHRvIHplcm8gc2luY2UgaXQNCj4gICAgIGlzIHJlZHVuZGFudCBhbmQg
YWxyZWFkeSBkb25lIGJ5IGt6YWxsb2MgKE1hdHQpDQoNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQpCdXQgdGhpcyBoYXMgY2hh
bmdlcyB0aGF0IHdlcmUgZG9uZSBpbiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzEyNjUzNS8gc28gaXQgd2lsbCBub3QgYXBwbHkgb24gdG9wIG9mIGN1cnJlbnQgZHJt
LXhlLW5leHQuDQoNCj4gDQo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBGcmFuY29pcyBEdWdhc3QgPGZyYW5jb2lzLmR1Z2Fz
dEBpbnRlbC5jb20+DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUveGVfcXVlcnkuYyB8ICAxICsNCj4gIGRyaXZlcnMv
Z3B1L2RybS94ZS94ZV92bS5jICAgIHwgIDggKysrKysrKysNCj4gIGluY2x1ZGUvdWFwaS9kcm0v
eGVfZHJtLmggICAgIHwgMTkgKysrKysrKysrKystLS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAyMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS94ZS94ZV9xdWVyeS5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3F1ZXJ5
LmMNCj4gaW5kZXggODM4ZjAzNzk1ODQxLi5jNWYyYjNkNjcxNjYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS94ZS94ZV9xdWVyeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94
ZV9xdWVyeS5jDQo+IEBAIC0zNzcsNiArMzc3LDcgQEAgc3RhdGljIGludCBxdWVyeV9ndF9saXN0
KHN0cnVjdCB4ZV9kZXZpY2UgKnhlLCBzdHJ1Y3QgZHJtX3hlX2RldmljZV9xdWVyeSAqcXVlcnkN
Cj4gIAkJcmV0dXJuIC1FTk9NRU07DQo+ICANCj4gIAlndF9saXN0LT5udW1fZ3QgPSB4ZS0+aW5m
by5ndF9jb3VudDsNCj4gKw0KPiAgCWZvcl9lYWNoX2d0KGd0LCB4ZSwgaWQpIHsNCj4gIAkJaWYg
KHhlX2d0X2lzX21lZGlhX3R5cGUoZ3QpKQ0KPiAgCQkJZ3RfbGlzdC0+Z3RfbGlzdFtpZF0udHlw
ZSA9IERSTV9YRV9RVUVSWV9HVF9UWVBFX01FRElBOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3hlL3hlX3ZtLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfdm0uYw0KPiBpbmRleCBm
ODU1OWViYWQ5YmMuLjJmMjJmMWZlYWYxYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3hlL3hlX3ZtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3ZtLmMNCj4gQEAgLTI4
NTAsNiArMjg1MCwxMCBAQCBzdGF0aWMgaW50IHZtX2JpbmRfaW9jdGxfY2hlY2tfYXJncyhzdHJ1
Y3QgeGVfZGV2aWNlICp4ZSwNCj4gIAlpbnQgZXJyOw0KPiAgCWludCBpOw0KPiAgDQo+ICsJaWYg
KFhFX0lPQ1RMX0RCRyh4ZSwgYXJncy0+cGFkIHx8IGFyZ3MtPnBhZDIpIHx8DQo+ICsJICAgIFhF
X0lPQ1RMX0RCRyh4ZSwgYXJncy0+cmVzZXJ2ZWRbMF0gfHwgYXJncy0+cmVzZXJ2ZWRbMV0pKQ0K
PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiAgCWlmIChYRV9JT0NUTF9EQkcoeGUsIGFyZ3Mt
PmV4dGVuc2lvbnMpIHx8DQo+ICAJICAgIFhFX0lPQ1RMX0RCRyh4ZSwgIWFyZ3MtPm51bV9iaW5k
cykgfHwNCj4gIAkgICAgWEVfSU9DVExfREJHKHhlLCBhcmdzLT5udW1fYmluZHMgPiBNQVhfQklO
RFMpKQ0KPiBAQCAtMjk2Niw2ICsyOTcwLDEwIEBAIGludCB4ZV92bV9iaW5kX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkNCj4g
IAlpZiAoZXJyKQ0KPiAgCQlyZXR1cm4gZXJyOw0KPiAgDQo+ICsJaWYgKFhFX0lPQ1RMX0RCRyh4
ZSwgYXJncy0+cGFkIHx8IGFyZ3MtPnBhZDIpIHx8DQo+ICsJICAgIFhFX0lPQ1RMX0RCRyh4ZSwg
YXJncy0+cmVzZXJ2ZWRbMF0gfHwgYXJncy0+cmVzZXJ2ZWRbMV0pKQ0KPiArCQlyZXR1cm4gLUVJ
TlZBTDsNCj4gKw0KPiAgCWlmIChhcmdzLT5leGVjX3F1ZXVlX2lkKSB7DQo+ICAJCXEgPSB4ZV9l
eGVjX3F1ZXVlX2xvb2t1cCh4ZWYsIGFyZ3MtPmV4ZWNfcXVldWVfaWQpOw0KPiAgCQlpZiAoWEVf
SU9DVExfREJHKHhlLCAhcSkpIHsNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0veGVf
ZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL3hlX2RybS5oDQo+IGluZGV4IDg2MTBhYzQ2MTYxOS4u
YzA3Y2Q0YjYxYmFhIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL3hlX2RybS5oDQo+
ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0veGVfZHJtLmgNCj4gQEAgLTIxMSw4ICsyMTEsNiBAQCBz
dHJ1Y3QgZHJtX3hlX21lbV9yZWdpb24gew0KPiAgCSAqIGEgdW5pcXVlIHBhaXIuDQo+ICAJICov
DQo+ICAJX191MTYgaW5zdGFuY2U7DQo+IC0JLyoqIEBwYWQ6IE1CWiAqLw0KPiAtCV9fdTMyIHBh
ZDsNCj4gIAkvKioNCj4gIAkgKiBAbWluX3BhZ2Vfc2l6ZTogTWluIHBhZ2Utc2l6ZSBpbiBieXRl
cyBmb3IgdGhpcyByZWdpb24uDQo+ICAJICoNCj4gQEAgLTM4NCw2ICszODIsOCBAQCBzdHJ1Y3Qg
ZHJtX3hlX2d0IHsNCj4gIAlfX3UxNiB0aWxlX2lkOw0KPiAgCS8qKiBAZ3RfaWQ6IFVuaXF1ZSBJ
RCBvZiB0aGlzIEdUIHdpdGhpbiB0aGUgUENJIERldmljZSAqLw0KPiAgCV9fdTE2IGd0X2lkOw0K
PiArCS8qKiBAcGFkOiBNQlogKi8NCj4gKwlfX3UxNiBwYWRbM107DQo+ICAJLyoqIEBjbG9ja19m
cmVxOiBBIGNsb2NrIGZyZXF1ZW5jeSBmb3IgdGltZXN0YW1wICovDQo+ICAJX191MzIgY2xvY2tf
ZnJlcTsNCj4gIAkvKioNCj4gQEAgLTcyMyw2ICs3MjMsOSBAQCBzdHJ1Y3QgZHJtX3hlX3ZtX2Jp
bmRfb3Agew0KPiAgCSAqLw0KPiAgCV9fdTMyIHByZWZldGNoX21lbV9yZWdpb25faW5zdGFuY2U7
DQo+ICANCj4gKwkvKiogQHBhZDogTUJaICovDQo+ICsJX191MzIgcGFkMjsNCj4gKw0KPiAgCS8q
KiBAcmVzZXJ2ZWQ6IFJlc2VydmVkICovDQo+ICAJX191NjQgcmVzZXJ2ZWRbMl07DQo+ICB9Ow0K
PiBAQCAtNzQxLDEyICs3NDQsMTIgQEAgc3RydWN0IGRybV94ZV92bV9iaW5kIHsNCj4gIAkgKi8N
Cj4gIAlfX3UzMiBleGVjX3F1ZXVlX2lkOw0KPiAgDQo+IC0JLyoqIEBudW1fYmluZHM6IG51bWJl
ciBvZiBiaW5kcyBpbiB0aGlzIElPQ1RMICovDQo+IC0JX191MzIgbnVtX2JpbmRzOw0KPiAtDQo+
ICAJLyoqIEBwYWQ6IE1CWiAqLw0KPiAgCV9fdTMyIHBhZDsNCj4gIA0KPiArCS8qKiBAbnVtX2Jp
bmRzOiBudW1iZXIgb2YgYmluZHMgaW4gdGhpcyBJT0NUTCAqLw0KPiArCV9fdTMyIG51bV9iaW5k
czsNCj4gKw0KPiAgCXVuaW9uIHsNCj4gIAkJLyoqIEBiaW5kOiB1c2VkIGlmIG51bV9iaW5kcyA9
PSAxICovDQo+ICAJCXN0cnVjdCBkcm1feGVfdm1fYmluZF9vcCBiaW5kOw0KPiBAQCAtNzU4LDEy
ICs3NjEsMTIgQEAgc3RydWN0IGRybV94ZV92bV9iaW5kIHsNCj4gIAkJX191NjQgdmVjdG9yX29m
X2JpbmRzOw0KPiAgCX07DQo+ICANCj4gKwkvKiogQHBhZDogTUJaICovDQo+ICsJX191MzIgcGFk
MjsNCj4gKw0KPiAgCS8qKiBAbnVtX3N5bmNzOiBhbW91bnQgb2Ygc3luY3MgdG8gd2FpdCBvbiAq
Lw0KPiAgCV9fdTMyIG51bV9zeW5jczsNCj4gIA0KPiAtCS8qKiBAcGFkMjogTUJaICovDQo+IC0J
X191MzIgcGFkMjsNCj4gLQ0KPiAgCS8qKiBAc3luY3M6IHBvaW50ZXIgdG8gc3RydWN0IGRybV94
ZV9zeW5jIGFycmF5ICovDQo+ICAJX191NjQgc3luY3M7DQo+ICANCg0K
