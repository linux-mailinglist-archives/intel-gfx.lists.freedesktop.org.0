Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CA76A0881
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 13:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42CAE10E204;
	Thu, 23 Feb 2023 12:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8BF10E204
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677154924; x=1708690924;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=AHpq6oX1DqtxzHy57oa2a0rlpcJkU2l3ZN/DzFoeag4=;
 b=lWMClINjMMSRpcGpYRkcGJvKlZPqnBJJLVqAllx0PRKA8ddVNUu7ESj/
 1E4ncj8verNzw/iTmmTM+5NGRoIqiM+O3LPt17d1WsDgLkMRv1hhuJOkC
 DCYoGERtbjeZDCkdvDnWUgEf3RnweuzvAb7cND8b0HsqvoU9tBEtbfi2v
 DGvykhrxeKLo1VFQG3YqnD4eqjss+0eLjg48GqQ3e3SKsjM5qCSO6My+s
 2r8pXdAN/Q5B2gp6W98y4Te9D7pWv5VuTjWhIWMwncjyvUh4rhV3xtMYO
 HnhTnYMHtIiJv5eTWWP4jzPHBngKtR3vURT7IaF3vOYoA3uij4kjs/QTu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="334567611"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334567611"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="781861614"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="781861614"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2023 04:21:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 04:21:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 23 Feb 2023 04:21:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 23 Feb 2023 04:21:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWc4vOs/HWchdbwakR/2OxKZq9MI1MgokJy5/nYMK69prbNj+IVEzEINnjfd7Vc5V7KTdP9siGajcdBSBvsLXgvVI0GW5HSeuQqWOKKKhJdb6JhFm2pIl1S+eWYi/VxvxQZ3pPlaBrRceGeFNipd4DW5z/LSlKZD4jFFcElDUY9yLk6aJ1pgf5ZMHeja2Np8jKGBvQuDJUXZyQbSGRKlBJCipdZ+NSiXyTrrVmMiaDoyTH9Tn2A0c/QBaURsIzqPHMEBQayRlbg/8nYFEOrDQsj90V78hh/zze/rkPWaneswf1WI7tcSdUjcDdTsSEZkKYkeQk1DUzXqGtGpLHVOMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHpq6oX1DqtxzHy57oa2a0rlpcJkU2l3ZN/DzFoeag4=;
 b=RffiveVP1in9dYbjVAPNCVg2ivOxiWMdQUibTGwrFDKDDOZtz9ZJdysI6z1iePGXEHTE485DRd3S4Y4JI+rcLAlBFk2F9LygzcLgmtPvD6ZJdq1VTHOacO5a+QjN0MUChAfeErqSU2o6Qktb8has4VHH/oLFKJRXTtvLMWbZ0K94gyhYtxby2MGl7GWfGJW6Me/ZUpab/T11QGGISACfqVOjcXZUw11Pqx8NRTedJUVE3ziXCwwl/fx4y1pn48qBxX2+EGaoGTpJGEJdOCS1LXyGbcFptXwzi4jMv8kdFD8C/25A9f8P1/4+FiTkjVB4yJ+GcVEgHYohtUVvd+evBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CY8PR11MB7797.namprd11.prod.outlook.com (2603:10b6:930:76::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Thu, 23 Feb
 2023 12:21:29 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6134.021; Thu, 23 Feb 2023
 12:21:29 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/5] drm/i915: Undo rmw damage to gen3 error
 interrupt handler
Thread-Index: AQHZMO5A4Wztj1eiA0ma55N2E8l3wa7coNeA
Date: Thu, 23 Feb 2023 12:21:29 +0000
Message-ID: <bb2c9c20b6d79a47090ebae8085c285c173fee4a.camel@intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
 <20230125185234.21599-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230125185234.21599-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|CY8PR11MB7797:EE_
x-ms-office365-filtering-correlation-id: 05bb3a94-ec9f-4fff-39f5-08db15987dc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FoQYxV+Kp1wLfRIU/C16Y3peAStv3trGTbaEj//9fZ60ZmnQv676vtSRLuh9oagVanuHT7XvYEkHz32cZdhVgM/iVEtAfA6N34qMJ+eV+ihAvCx3jJHRh6DLcMkpBXY+Y6PGRW6kCgho99Lv5W97puzB2vrY02Lauwp08YtJ7KkgHzwWx6W6jnfIfEC5LV2XXG1GOAnwERlPNAjMkqjQTwb9l/TvxvZ4QNqy19RiHED5mVq/sWfGna5xoIMR2umpa1Ks5eju3O5cfRmiC1/LxKui7yUthWhieRXURPdY7WKHdTauxs+BD/1RAiIQPnTWD1nTMNojQFBxJcaCQNXGYXjGDBR/BDMUv9gnCG+xMRYZ/+TB50tKsAAUpTP3v1idh9i00c3hXqBnS9sEg+cV+AVU3wGcMZOFfcj0anFKxVdbEpIFKWwqcK+Yu20mnlWaIQDyS720r6+8zokd2czx1A+82tn4aRGCpXjvm6Sl+2utu14J8Gnb3YDCDPV7WzLoIscLJ7bV+JqhZURzwCA7/rcJr3WqNBVJWt4VTx7hprDnOwl08COi92QvzPm4IV31WmLq2+jev8mux8JnE6pMdEhXzOfypmGIcZo5TrIR6Ag/mUr6aS4Hb43B4MG84JUUvkyzOq5UNYFR3bRE6SF4uJqsAseA9yWNuulbboOh09GmkoAOOBamZxrQlAz0nVvk7VOzPfeeedFQdOnsxH/Tjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199018)(2906002)(5660300002)(36756003)(83380400001)(478600001)(71200400001)(66574015)(186003)(26005)(2616005)(6506007)(38070700005)(82960400001)(122000001)(38100700002)(91956017)(316002)(8676002)(66556008)(66446008)(66476007)(66946007)(64756008)(76116006)(8936002)(86362001)(6512007)(41300700001)(6486002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXhqSmFETVRoazNzTldVYUc5VWl4aVllOGFRc2h0dDI2M1lhWlV4UFVBbGpj?=
 =?utf-8?B?UGt1U3MzblF0eDVZekhuNWRGdll3aFArUFN6dElzUVVYQjRXRkZBbXB0dHBW?=
 =?utf-8?B?bHN0Q3BiQWNvVk14dUNtaDRGWW5rQ0pQVzltV2FSRFl2NHlsRWh1dXpKWWRE?=
 =?utf-8?B?NHRtS2wzQTJzdnRoTm5ISEtTT3BiNVNhUkVEMFJvcXIzcThNVkt4czZWZFE5?=
 =?utf-8?B?SENFdjgwQ0dYWXd4d0dkMzJCbGMvcjQ1UHo4cnozSU43Z2dCQWVjU0I5T0pj?=
 =?utf-8?B?YWFnT20wWlNZaUlWNmcvTk81dEx2dU5vR1pLb2JLODhSZDRVWE9JQVNRbSt2?=
 =?utf-8?B?MzNFWDMyVy9BUE45cDJHZXlQZ1dxQU4xWGhNQTNqcHcrcFpRNjAyNkRnc21E?=
 =?utf-8?B?ZERDMXozQ2tyMUs4R3QvK2YzTmhsME9QdVFOemxFeHY5ZTRCRVNFUVYzdTIy?=
 =?utf-8?B?NHVZVElMV09ZZXY3Vks0NEpYWG5TdUNUeXNkOWhxVkpZZHlkdTUvdkJwOTRP?=
 =?utf-8?B?aG5uVVNsZHBGZUh0VzBGQ0tBWWhtZDNqMmlGV2hvSTlsZDVDb1VxSEhiSW8z?=
 =?utf-8?B?Q01QMDJ1aFlCM3hMdURBTnEyb1hjSjdTNjFra2JGeHhsUm9UQlAwaHFGOXkv?=
 =?utf-8?B?dW9sS2paZUFlVW5WYnRyUG9UekMrOVpjQXpHdmlXcjZDSTBsSzVSaGhpc3h6?=
 =?utf-8?B?VDJxVy96Q3RpQUtWZzFvZGU3Rm5EWk1KN0hsLytCblVjZ0E2VW93WTNmWHdR?=
 =?utf-8?B?MkhTcXBVRWRwMXdxV0NKTjJrK2toZHNCVTNHb3NwUVdBekNLdVdOS2M1cGp1?=
 =?utf-8?B?ZVRrOEpkclkrMXJoMzRqdzdjWDVEZ1owNEdFT2dCQnpFQi9GdXdyVDAwWWZR?=
 =?utf-8?B?NDFCeW1mRHZZN3lkUmVYNDhRb0F1OWEwZ2lnZ3lmSlZvWUJsbXYzY1JiRVJi?=
 =?utf-8?B?OHVxMldIeGN5ZFBPZnFWNzRBVWVOOWR0RG9XSTh0aEdaeEI5a2lsQk5vQnU0?=
 =?utf-8?B?dmN5UTNzb0FtU0JjRGpVRTVLNER1cTVxWVpFYjZuVmE3d0t2eDArYnJxNDIv?=
 =?utf-8?B?QkxxVmRoWUJJbDZyVkcrN0xUUFBzUHQrazZmcG95ZTJCOVJhdkIzT0MzVkdH?=
 =?utf-8?B?ajUyMmVVZllhZUt5V01RaFAydFZTaGZ2ckxzclZsSEowb1VXMm1pdm54V0tj?=
 =?utf-8?B?Mms1RExFR01CSEMwVjlmMStTVmhwUGRYVldSM29ib1RsOXErcVhQV20ra0Ez?=
 =?utf-8?B?V1lQeUhDRmhFUHFmbXdKMEdIQ0RvQVh6MG5PeU95aWE0Ly96V2p2SCtHcUR5?=
 =?utf-8?B?cFM2ZnhZUTZRZXl5MFpmSHQ4clRqakdOaWhXcVMzT3A5S1Jya0dzZ0QzelFM?=
 =?utf-8?B?VUF4Q0Q5VWJWY1EzR3dkTFRIb1FsU01Na3czT29RcDQrb0JUZ2JMdWJqOFpx?=
 =?utf-8?B?cGVkNVMvR0RtdEl2S0F1M0swYWdPVnZQQVUyTGJjQzBQQVo1VVk2bENZMVlL?=
 =?utf-8?B?R2ZlTGU0akNIZlVTRzFjRzZRcyttWWNSYWlqWGVKbjl3VVRHazRacWRJKytt?=
 =?utf-8?B?clpGVHRCUXhTZ0lXcEh2N0RjNjJUNms4b1lGM00rRDA3MkM1YVJEME5DMUtG?=
 =?utf-8?B?MjYvMFJnOTJHbFBqcDZkNnVJeVRjSTQ4SHBldi9vcGpsS1cza011WFFoQUZ3?=
 =?utf-8?B?NkxxTlJ2ZEhoZi9qSGRiM0ZZYVdCbU8vOFFYeXowSmViTjcwRTRWaDNIZkJ1?=
 =?utf-8?B?WldwUDlJUm92eXFpZm5KYzVDa1QzY0tRV2Q2VEIrUk9HTkwrWGVsSTE3K2oz?=
 =?utf-8?B?bDg0RWlwNm9GU3B2ZEVTZkx3Q3FtS25aOUNuNyswMCtPOWpyMmZ3cmFDT1pa?=
 =?utf-8?B?ankyY1RrLzNCNkM4WFB4RDUzZEhGT3licEh5Ym5DM2JLdW9KZHlTZjJrU1pj?=
 =?utf-8?B?ZWlYY1hXUlFZKzI1SkVBRC8yTkRDVHdaOXJ1ajc1TkNwWm84eG54a05JcDJV?=
 =?utf-8?B?a3JualJVMEtxcWdxUjljMXUyTDZNeUdzWUsxbGFCQk9NMXc0MXA2SDUwUnFx?=
 =?utf-8?B?ekNuV3RVd2dvNjJVOUJpenRGOGUxR1lydzdkc2tIMWRVWkFCendGVU9NV1NJ?=
 =?utf-8?B?QXBxQWYwU1pVNUd3dy9rTGo4REM4SFZTWWV6bmsvR05HYUhiNm01eFNLbkN0?=
 =?utf-8?Q?T1bTJfUBnyQh9wj10y6gxZQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EAA7DF142A9BC84EA3D48A5377CB6FF5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05bb3a94-ec9f-4fff-39f5-08db15987dc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 12:21:29.1918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kOCPbQMCJG69BbAW1bVNWWHZtEfcceApW6H3IVGlga7pJT4q6knwr/n9s9wD0GJtjyFf0cO50O2HiE8azfbkXg4/2880kSKktE3sRqjLRUQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7797
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Undo rmw damage to gen3 error
 interrupt handler
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

SGVsbG8NCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFw
aWxsYWlAaW50ZWwuY29tPg0KDQpCUg0KVmlub2QNCg0KT24gV2VkLCAyMDIzLTAxLTI1IGF0IDIw
OjUyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIGdlbjIvZ2VuMyBpcnEg
Y29kZSBpcyBzdXBwb3NlZCB0byBiZSBpZGVudGljYWwgYXBhcnQNCj4gZnJvbSB0aGUgMzJiaXQg
dnMuIDE2Yml0IGFjY2VzcyB3aWR0aC4gVGhlIHJlY2VudCBjaGFuZ2UNCj4gdG8gaW50ZWxfZGVf
cm13KCkgcnVpbmVkIHRoYXQgc3ltbWV0cnkuIFJlc3RvcmUgaXQgdG8gYXZvaWQNCj4gbmVlZGxl
c3MgbWVudGFsIGd5bW5hc3RpY3Mgd2hlbiBjb21wYXJpbmcgdGhlIHR3byBjb2RlcGF0aHMuDQo+
IA0KPiBBbmQgd2hpbGUgYXQgaXQgcmVtb3ZlIHRoZSBleHRyYSBlaXIhPTAgY2hlY2sgdGhhdCBz
b21laG93DQo+IGVuZGVkIHVwIGluIHRoZSBnZW4yIGNvZGVwYXRoIG9ubHkuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTAgKysrKyst
LS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gaW5kZXggMjQwZDVlMTk4OTA0Li5iNDVk
NDI2YTViZDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBAQCAtMzUxMCw5ICsz
NTEwLDcgQEAgc3RhdGljIHZvaWQgaTh4eF9lcnJvcl9pcnFfYWNrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LA0KPiDCoMKgwqDCoMKgwqDCoMKgdTE2IGVtcjsNCj4gwqANCj4gwqDCoMKg
wqDCoMKgwqDCoCplaXIgPSBpbnRlbF91bmNvcmVfcmVhZDE2KHVuY29yZSwgRUlSKTsNCj4gLQ0K
PiAtwqDCoMKgwqDCoMKgwqBpZiAoKmVpcikNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGludGVsX3VuY29yZV93cml0ZTE2KHVuY29yZSwgRUlSLCAqZWlyKTsNCj4gK8KgwqDCoMKg
wqDCoMKgaW50ZWxfdW5jb3JlX3dyaXRlMTYodW5jb3JlLCBFSVIsICplaXIpOw0KPiDCoA0KPiDC
oMKgwqDCoMKgwqDCoMKgKmVpcl9zdHVjayA9IGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLCBF
SVIpOw0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCplaXJfc3R1Y2sgPT0gMCkNCj4gQEAgLTM1NDgs
NyArMzU0Niw4IEBAIHN0YXRpYyB2b2lkIGk5eHhfZXJyb3JfaXJxX2FjayhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+IMKgew0KPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGVtcjsN
Cj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgKmVpciA9IGludGVsX3VuY29yZV9ybXcoJmRldl9wcml2
LT51bmNvcmUsIEVJUiwgMCwgMCk7DQo+ICvCoMKgwqDCoMKgwqDCoCplaXIgPSBpbnRlbF91bmNv
cmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgRUlSKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxf
dW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLCBFSVIsICplaXIpOw0KPiDCoA0KPiDCoMKg
wqDCoMKgwqDCoMKgKmVpcl9zdHVjayA9IGludGVsX3VuY29yZV9yZWFkKCZkZXZfcHJpdi0+dW5j
b3JlLCBFSVIpOw0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCplaXJfc3R1Y2sgPT0gMCkNCj4gQEAg
LTM1NjQsNyArMzU2Myw4IEBAIHN0YXRpYyB2b2lkIGk5eHhfZXJyb3JfaXJxX2FjayhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+IMKgwqDCoMKgwqDCoMKgwqAgKiAob3IgYnkg
YSBHUFUgcmVzZXQpIHNvIHdlIG1hc2sgYW55IGJpdCB0aGF0DQo+IMKgwqDCoMKgwqDCoMKgwqAg
KiByZW1haW5zIHNldC4NCj4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiAtwqDCoMKgwqDCoMKgwqBl
bXIgPSBpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBFTVIsIH4wLCAweGZmZmZm
ZmZmKTsNCj4gK8KgwqDCoMKgwqDCoMKgZW1yID0gaW50ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2
LT51bmNvcmUsIEVNUik7DQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV93cml0ZSgmZGV2
X3ByaXYtPnVuY29yZSwgRU1SLCAweGZmZmZmZmZmKTsNCj4gwqDCoMKgwqDCoMKgwqDCoGludGVs
X3VuY29yZV93cml0ZSgmZGV2X3ByaXYtPnVuY29yZSwgRU1SLCBlbXIgfCAqZWlyX3N0dWNrKTsN
Cj4gwqB9DQo+IMKgDQoNCg==
