Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DC7498D25
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061B110E93C;
	Mon, 24 Jan 2022 19:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7309510E93C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052813; x=1674588813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7QVsnvRY9egGDmEcE4y9DYgv+JXVitJxjGHV4wZHBPk=;
 b=QqROYKhD2ZTXBkNhUTJOSQbOxBLoGUsWhoq/UxNjHQmLk6u7OEsWEtWD
 WOU8x4NBvDq77L9gTHT0nm+lMnpgu5If/YI/PuB26VLDfqUULmR8S4YBk
 7qi40gnZY4viQR8zkk1LfEnpllf1nlgjOm3LWKYspEN/338kyzbik16NK
 RQvsSUfuqvoPJ5+IKmJ0J0hYnz0gg59zzLdk5YuIlEZE1Rfxz51czSc6V
 YBxemCwInsRawLdvjOdfwCFb/0wVAwfbQs9B6ZBLlo5+6VQWZfiesL+37
 KeAhk4okFazqbd+HhE3O1RFipq0EyOJilVIUCCuhtZxqFA+M+s/RkRsna Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="244964132"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="244964132"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:33:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="617361604"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jan 2022 11:33:32 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 24 Jan 2022 11:33:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 24 Jan 2022 11:33:32 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 24 Jan 2022 11:33:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lp3its286Uk61I1CP38Di9Z7DBj06zQhYwKBTbgqbuX7G7nbA6Rvvkp9GYDpm1CwPMbrshugytZY6Pkquezaq6NXjZZZoG0yjoKm7zquCwYqUTC5wyL4ztSL5aqCBUFftCN7wPMbgx1rtOafrk7XsxOGmOUUGM/zLE0amy4Yy8+8vXsGL18ce9XnCmeobRpurpUxyJvv5UaHWVNGGmK1kOy0q5Y6jmjjsOteOoPI+aoUiGCSQbSg3rxU9o1A4rASBT8pJvpjwoHqk9ZirmfcdpXsQKDBuiTQkkmopw+OGd11GHLeu0wGooblvEsp+Sa4+jgOCYPZO6azUkN/JoSftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QVsnvRY9egGDmEcE4y9DYgv+JXVitJxjGHV4wZHBPk=;
 b=CzUuQF/8qP0znuD7Ynzj7y2S/wvQvRFHE70kgmczrT1VfJOr73kfON/IflD1dSY/l90BISM/fsBWFiK+OiujUtRTa+Mrm7rumQrUstupL8SG95cBFUPw2WLZ8Az1XpqyHZoiSWXWMflbKGRxmzW89hqmYl2i1CQoAX2R5sLDADNGjK/lY7lMIMvZLFgxi132gm2Br7xLbvFmLs+1RCYyDZZRvY1fSMAFlHWEiUeqjMAQj/XkzWH7d/a/bYdW1OggeF7q5VaB2GykC+IYeWwT9f+n501eK0gEwNHgLIG2AmX7M32fac/NRIoTZbx/WiGN4rQQkundnD6joWNiJ8kVGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4102.namprd11.prod.outlook.com (2603:10b6:a03:181::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Mon, 24 Jan
 2022 19:33:29 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4909.017; Mon, 24 Jan 2022
 19:33:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/7] drm/i915/guc: Add XE_LP registers for GuC error
 state capture.
Thread-Index: AQHYDFJ5zDm2Pl3gSEOLOQc2MJvPdqxymnGA
Date: Mon, 24 Jan 2022 19:33:29 +0000
Message-ID: <454ea16f521280803f01d40fc3d92677ed6ad0da.camel@intel.com>
References: <20220118100358.1329655-1-alan.previn.teres.alexis@intel.com>
 <20220118100358.1329655-3-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220118100358.1329655-3-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11a1ea23-913d-40dc-a1cb-08d9df706645
x-ms-traffictypediagnostic: BY5PR11MB4102:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB4102F66D75B46B2485F9BE1A8A5E9@BY5PR11MB4102.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EoW6Z6xoSPz+B2xGs5gQJBHGD8CYbwIf1PggDAfCmU1L1w4QQ9tyQHkLw1PE2R6Q9bF6D5a5ZGwwdkT6IGWrM0c3IuR5mPC9oraSqIZAdqSDXSRhj41FeRbYcN14ex2cbhAIi+OhHLu1qq9K4/odXN6YKNCHSYqLOvwSXXciANGYe5mcwFiHmmTxwNgphO1zAyJVXTPDJnjJbKOnFKVAbtGQ8CLOVfztUKaBCxjLQMIMqJgSZksyxSlb26GI+0shGoJzshGDNSIhDIVz0XRr53+Lq+hbCBDMzKIj9VtacOFREMuDsI4TYsi6nbgkGoY3FFw5TDqhxB0fPdsjnc+eX0fgjBPvuRh0nk0uamdWk7Z2NgCGR/XRDkslBmIVrA3VVCHTYkmwQ/ce0+sYtIRStvVdlwyFs6AJGkMk8vT6w9GhniylokQ/hwa82f9cdzfNIcZlnjKAW6rSK4rlqoe8o5xgBlyepMssWdduUMaru4NJLVaUjtAG+dvJUfz6A/cZXK5S0pcWLw8w2BkCeGjfALPSTRvTtxBzL3G56OptZZAr2DWQlT8KzIboyuZHNZvVAX+isFvDS2rFA20G66rScmV/qF5moUEvGK3+/nvXp8F89TlMRAIRTkq5ha7PYE0sTfRKAUawU2jxrtIs9pEX5eSfXXqaLqJIcYZ9iPel/JBk6MQ6X3DL8DXSIpEIJntjM7S/eIkIN7JYibpb0ToYbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(38070700005)(66946007)(83380400001)(38100700002)(5660300002)(76116006)(64756008)(66476007)(107886003)(316002)(66556008)(6506007)(66446008)(6512007)(54906003)(8676002)(71200400001)(6486002)(86362001)(508600001)(82960400001)(6916009)(8936002)(122000001)(2906002)(26005)(4326008)(36756003)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDlkZC9VRFBjSnF4T3hOcGtmaEFvL2pLUElvUXdsMUVuME1YZTJMOEtzZ1JW?=
 =?utf-8?B?WG92OHJVbTViK3YrM01RVWhFRHZZS2dEcnY0c3AvRXhMeFVuV0NtbmpRMzRx?=
 =?utf-8?B?azVoVHM1NkwyUFZSbmR1T2hNbkw3cUpKd0Z4VTNvem5RcGYyZGdPWUM4ZjVF?=
 =?utf-8?B?LzRtNTN5bWFCU09ISU5wUGhKMEJIWVdQKzJCUjZGbUtxQk5LYzEzRkc0M3Jw?=
 =?utf-8?B?andZeFpkNGZZUmlhUXpQWUNhbU95NFp1aFY2S2tOV21OMUpzRkdNNG83dy9m?=
 =?utf-8?B?akhxY2c3azNGMFF5L3JEbFExRXhBRmdWaGlVcTdSYmtEVFJaUW50VEVYamVt?=
 =?utf-8?B?SUl5NGdWQTJuMHhFVTEvNjE2aEFHbThESkM4Q0E4RjMxTjJHL3BSSWxQS1dP?=
 =?utf-8?B?ZnQ4c2pzbndhdm10Q1JmR05JMnRpRHJCdXA1S0RPc2FpeE5FbUlBc3pLRzJk?=
 =?utf-8?B?ZWx5MjNpZjhnbkpoYkdvcDZQZDFodXdZNStRdmQ1eTNtWWdXM1JjSzk4MW1X?=
 =?utf-8?B?UGwyQ1phVlMxaXE4SmpZTXlmVnFDRlF4aVpVQmpQNWJhaEIwNU9jQitGYmpS?=
 =?utf-8?B?MmxmYWJ6bzFLVGttWnk5NHVkSnZ1aU1KSTVmT3VGVlJST1l3Q0hoMmh1cG5z?=
 =?utf-8?B?UnhCemZXWnVzSmQxVEhsYTdtRFpXU2pCMVFCZmJMWjlibEtVdHNBODdlMmJm?=
 =?utf-8?B?a2JINE56QzVVTkdnNlJ2WFlKdGtYMjZqSkF5M0JWVExQR2FHMmRjVkR0WHAx?=
 =?utf-8?B?SjJmWDNXNFlvU1BzQkp2OVJoRnRDQ0ZtKzhuTEZpZ1FJc2syQU1GbmowS1Ro?=
 =?utf-8?B?ekU2TGN5OXp3N21xTVd0Wk5ESTNET3o4MlNWUm1wQlhTNkpsUnBLdW9VeXhs?=
 =?utf-8?B?cWVBekR2TDFic0loQ084VnhBTktIMWo1NnEyM1Q0QUltOFA4M25xVVZjNFAz?=
 =?utf-8?B?N3FHbHNiNGNETkNzVU1BNGdYVTlCaVdjZEpZR0VLVW81QWFNTXprWmp2Z0w0?=
 =?utf-8?B?dlZNa3VJbEdJTkx1OHAyT3JrUXVkdExIY1FRMjRhY055SFkyejdzL0J2azRp?=
 =?utf-8?B?L2hFSGlyS08xeHJLWFBJTjJuR3NEM2hjVVdmUE5maWl6di9vd1VNMVRNdEUw?=
 =?utf-8?B?YjlDQXB0WXgzdUVCVFpMcHFlay9wZ2FGam9ZZCtKemduTElCK2VycGR5TTZI?=
 =?utf-8?B?Qk9mYXdMcUU3SlEwVG9tanNsS1VwZ0ZwUjNRUGF4cW95enlmeDNKazVMbGxz?=
 =?utf-8?B?V1NyYnExdS9rdmJuczZOTHNPK2swWGRVSVN1WCtxZnlnYjJvMnI3M2RkZGxh?=
 =?utf-8?B?WjF1UmplTWtGUmd1ZjZQSzZvTGsxUnRjNGVVV3V6NUJNN00rc2F1blNsVERP?=
 =?utf-8?B?V2xsUFBtTTlVemE3YUllMlRFUi80allhWlg5Y1FING85YlMzOGZ4b3FJYWJO?=
 =?utf-8?B?aXVNcnN1TkR6eXJsaiswYlQvWlB5cTJ3MEo4VEdpNDNRdGJNN1ppNVNsME1Z?=
 =?utf-8?B?bGVQYm5qeUpESVBWcFhwRlI4ejRIUVNXUHdSSCtHSUNpbWltYUdtS2pJYWpQ?=
 =?utf-8?B?MXZENktsTW9JbTFpdk1HazV6MldQWWdKS05UeFhwSFUwN3EvWDZZTFlvK0hy?=
 =?utf-8?B?TzZBaWVYbVIraUVQWFZqQkF4d2Uwc09abS8yaUxLTjgxS3FQUmU0OENXS1hQ?=
 =?utf-8?B?UFUwRzZOcm95cjV2ZTdncG43OS9MWHdxaVMyM1FRS1c4MG1pbTByQlBXNWd5?=
 =?utf-8?B?TXJtQ2I4YTJ3WEwvdWxCbEcyZFpUU29XYmJvSitXaDkzN2cvUlFvdnNnR1dN?=
 =?utf-8?B?OVhZUkNJa2FWdlBXajZYT1dtT2twVlB5RERZMGgxL2NndEY0QzJ4SXJFMUxn?=
 =?utf-8?B?QVh6L053RmVWSkhSK2xOckppcW5MY1BwZ3RNcEhCNVdkWk0xVFBVaHFiKzNu?=
 =?utf-8?B?VkZYQ3cyV3B6dU50VHN4MmNiRzZoQzNaYkZIc25kS2tVYmxkdnlpVkZlME1B?=
 =?utf-8?B?VkU4dlB0SXlsNlB4ck1CRzF4WFNtR3NaQmo3VU8wN1ZiZzFabzRSdkFlOXZy?=
 =?utf-8?B?eGttZ0twU0dvekFaeGJaQnI3M0hva2lIVUM2TXBKV0pSeU40NGwxaHUxVlRi?=
 =?utf-8?B?L1Z4MVh2V2JLdC9LMFMyOUpBZ3YwYnV3SjB2d2Z4aXhaREtpTmY5Q1ZUM2dw?=
 =?utf-8?B?RDBxZVI0VUJiQktvWnFHOS96Z2ptdDdTcjRZOCtmTDZ3WStuZWFaZ2dzdm9N?=
 =?utf-8?B?OXRIekJUa2F3T2FoRVJ0UmhZTytEZ0tBTmgwb3c0dXNZKzhYeW9BSzcxamY5?=
 =?utf-8?B?emlyUVF6ZHBqQXMwS1lFcGVoUFdyL1R2RFphdUVqNU9hYUtMalZKZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D8A2A254A17534680978ACC9B414F1C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a1ea23-913d-40dc-a1cb-08d9df706645
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 19:33:29.3556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vddJtMEs9juSEFnePVZGe3i6aL0Us3zmRcGpaXYa0+NCdCB3W+ueGUTCPm5P9yAXDE4hlG3dLtukwEBlqgIajdpiuYdXD2h1Xg7bJwKaA4NkI6V8yaZNW2TDm7fr/EGt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4102
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/guc: Add XE_LP registers for
 GuC error state capture.
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

SW50ZXJuYWwgZmVlZGJhY2sgaXMgdG8gZXhhY3RseSBtYXRjaCB0aGUgcmVnaXN0ZXIgZHVtcHMN
Cm91dHB1dCBhcyBpdCBkaWQgaW4gZXhlY2xpc3QsIGhvd2V2ZXIgaXQgc2VlbXMgdGhhdCB0aGUg
DQpyZWdpc3RlciBkdW1wIGZ1bmN0aW9uIGluIGV4ZWNsaXN0IHRhcmdldHRpbmcgdGhlIEdUIHN1
YnN5c3RlbQ0KYWxzbyBpbmNsdWRlcyBub24tR1QgcmVnaXN0ZXJzIGxpa2UgZGlzcGxheS1yZWxh
dGVkIG9uZXMgdGhhdA0KR3VDIGRvZXNuJ3QgbWFuYWdlLiBTbyBmb3IgdGhhdCwgSSB3aWxsIGhh
dmUgdG8gYnJlYWsgdXANCnRoZSBleGVjbGlzdCBmdW5jdGlvbiBpbnRvIGdsb2JhbC1ub24tZ3Qg
dnMgZ2xvYmFsLWd0IGFuZCB0aGVuDQpjYWxsIHRoZSBmb3JtZXIgZm9yIGJvdGggR3VDIGFuZCBu
b24tR3VDIGNhc2VzIChza2lwcGluZyBsYXR0ZXINCndoZW4gR3VDIGlzIGRvaW5nIHRoZSBkdW1w
KS4NCg0KLi4uYWxhbg0KIA0KDQpPbiBUdWUsIDIwMjItMDEtMTggYXQgMDI6MDMgLTA4MDAsIEFs
YW4gUHJldmluIHdyb3RlOg0KPiBBZGQgZGV2aWNlIHNwZWNpZmljIHRhYmxlcyBhbmQgcmVnaXN0
ZXIgbGlzdHMgdG8gY292ZXIgZGlmZmVyZW50IGVuZ2luZXMNCj4gY2xhc3MgdHlwZXMgZm9yIEd1
QyBlcnJvciBzdGF0ZSBjYXB0dXJlIGZvciBYRV9MUCBwcm9kdWN0cy4NCj4gDQo+IEFsc28sIGFk
ZCBydW50aW1lIGFsbG9jYXRpb24gYW5kIGZyZWVpbmcgb2YgZXh0ZW5kZWQgcmVnaXN0ZXIgbGlz
dHMNCj4gZm9yIHJlZ2lzdGVycyB0aGF0IG5lZWQgc3RlZXJpbmcgaWRlbnRpZmllcnMgdGhhdCBk
ZXBlbmQgb24NCj4gdGhlIGRldGVjdGVkIEhXIGNvbmZpZy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2d1Y19jYXB0dXJlX2Z3aWYuaCB8ICAgMiAr
DQo+ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMgICAgfCAyMDgg
KysrKysrKysrKysrKysrLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfZndpZi5oICAgfCAgIDQgKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTg2IGluc2VydGlvbnMo
KyksIDI4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+IGluZGV4IDIwYzUzNzI3NGU2MC4uNmFkZmI1YzA3YmNm
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2Fw
dHVyZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0
dXJlLmMNCj4gQEAgLTE5LDIwICsxOSw4NCBAQA0KPiAgICogTk9URTogRm9yIGVuZ2luZS1yZWdp
c3RlcnMsIEd1QyBvbmx5IG5lZWRzIHRoZSByZWdpc3RlciBvZmZzZXRzDQo+ICAgKiAgICAgICBm
cm9tIHRoZSBlbmdpbmUtbW1pby1iYXNlDQo+ICAgKi8NCj4gKyNkZWZpbmUgQ09NTU9OX0dFTjEy
QkFTRV9HTE9CQUwoKSBcDQo+ICsJe0dFTjEyX0ZBVUxUX1RMQl9EQVRBMCwgICAgMCwgICAgICAw
LCAiR0VOMTJfRkFVTFRfVExCX0RBVEEwIn0sIFwNCj4gKwl7R0VOMTJfRkFVTFRfVExCX0RBVEEx
LCAgICAwLCAgICAgIDAsICJHRU4xMl9GQVVMVF9UTEJfREFUQTEifSwgXA0KPiArCXtGT1JDRVdB
S0VfTVQsICAgICAgICAgICAgIDAsICAgICAgMCwgIkZPUkNFV0FLRV9NVCJ9LCBcDQo+ICsJe0RF
UlJNUiwgICAgICAgICAgICAgICAgICAgMCwgICAgICAwLCAiREVSUk1SIn0sIFwNCj4gKwl7R0VO
MTJfQVVYX0VSUl9EQkcsICAgICAgICAwLCAgICAgIDAsICJHRU4xMl9BVVhfRVJSX0RCRyJ9LCBc
DQo+ICsJe0dFTjEyX0dBTV9ET05FLCAgICAgICAgICAgMCwgICAgICAwLCAiR0VOMTJfR0FNX0RP
TkUifSwgXA0KPiArCXtHRU4xMV9HVUNfU0dfSU5UUl9FTkFCTEUsIDAsICAgICAgMCwgIkdFTjEx
X0dVQ19TR19JTlRSX0VOQUJMRSJ9LCBcDQo+ICsJe0dFTjExX0NSWVBUT19SU1ZEX0lOVFJfRU5B
QkxFLCAwLCAwLCAiR0VOMTFfQ1JZUFRPX1JTVkRfSU5UUl9FTkFCTEUifSwgXA0KPiArCXtHRU4x
MV9HVU5JVF9DU01FX0lOVFJfRU5BQkxFLCAwLCAgMCwgIkdFTjExX0dVTklUX0NTTUVfSU5UUl9F
TkFCTEUifSwgXA0KPiArCXtHRU4xMV9HUE1fV0dCT1hQRVJGX0lOVFJfRU5BQkxFLCAwLCAwLCAi
R0VOMTFfR1BNX1dHQk9YUEVSRl9JTlRSX0VOQUJMRSJ9LCBcDQo+ICsJe0dFTjhfREVfTUlTQ19J
RVIsICAgICAgICAgMCwgICAgICAwLCAiR0VOOF9ERV9NSVNDX0lFUiJ9LCBcDQo+ICsJe0dFTjEy
X1JJTkdfRkFVTFRfUkVHLCAgICAgMCwgICAgICAwLCAiR0VOMTJfUklOR19GQVVMVF9SRUcifQ0K
PiArDQo=
