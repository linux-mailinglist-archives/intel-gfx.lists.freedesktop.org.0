Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C3D800E9D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 16:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9F810E8C7;
	Fri,  1 Dec 2023 15:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F55410E8E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 15:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701444701; x=1732980701;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xCykM9pyUdrcPs9erWfK0VqUMHP5g7pjQ4W5tQ19x04=;
 b=ClXXlnFz7fE7I9b6cGrat4opkaWQdX1hHryma6R331q3EZ0FECh7jPvs
 vBc3I2pawqL3AsOa9J6xbNQqxx1Di021740iMV/BLk7bMIZNPUDQ6hFjj
 pDIFv35dJ6KQPdstv1yLWS8BwhIqeJ4G47FpRoKVNIDhC24kEU6gqyt4s
 x20KSA/W0i3PPjMCLk77EepCEbG+1gGAsKt+efdKAVDKz0p2n58q9804p
 yzi1fwDhpXhCggTvInFKTOBFl7UgwHTYYyMawcywlUHYwzdx9wsB7x7OU
 qCzhOcH/PbiJlfQ05u6ew16kXuYqKBpx3YFLr4t+IRiVi0gveUb7QVMD2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="372899687"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="372899687"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 07:31:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="719557715"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="719557715"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 07:31:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 07:31:38 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 07:31:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 07:31:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 07:31:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KpEUtdBX1Y7xQVwKXq/n8K0g+lq/rlt8Gpx5GYp1qgc6iEG1m9Ej5HNMFQpmY9ks35ibx62/Fx1pE2Bod4/IYeTuSFxXRXmH7SXiMRY/8AR8gofxesLJbtzhp6O57SWZrtm/ne1JieOk61Aq+Dlo72bbxxS5mML4GqaVaj9K8CBRkCE810qMoWqyF0K0qeg5AW73FBiWoYwV04xgrOXZ21RWfYsw0aq2oPMoNcwcDqq1l0bm/nTuUIjqtecfVYmFRWQXkhGw6GBG/H4CXJgfIVVln5UIrh9wgRutjjsQ6NZBlrVnVtjm6d07Rg2uxYRSAZTdWIg8Ml3hadtSc9eeXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xCykM9pyUdrcPs9erWfK0VqUMHP5g7pjQ4W5tQ19x04=;
 b=SGkx2fD4UODBLYpU36eCtmyjIVrLHhFQP065iBn+Qvz2EpP2QGFZC+vw4mp7A12MsBrYG8GmgaG2lGi2f3gN9tRBfkbYkd/Uvw2sMam/kg8BzWmxKUUIa5YmyJ21Yq5uwfVe/OcCAAxsxG31c/GI3ihS9gY0U5CYQ+lrOqWZK1ozy3XGonSFhwzpi24zzvdtjf/RARXzD8KUpxzkvWgarh2Nj66JlynDgbFuTAMDCPgTBf/khwr1IpDHU4FBdeNIwbzAvUl5nSbAD7fOAhqsjBigMxqnvHEeEWKNSNdFBnYjY3osfOtVXUYD1mck6cAh9nu/9HPr/ifO/SjQqM8FIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ1PR11MB6130.namprd11.prod.outlook.com (2603:10b6:a03:45f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.23; Fri, 1 Dec 2023 15:31:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 15:31:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display: use intel_bo_to_drm_bo
 in intel_fbdev
Thread-Index: AQHaF6M2OFXjDchiGkmQc6nsoDSUFbCUjK6AgAAa+QA=
Date: Fri, 1 Dec 2023 15:31:35 +0000
Message-ID: <9b0851da5a40b773a9c185d7b4810d67ef78075a.camel@intel.com>
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
 <20231115090719.3210079-3-jouni.hogander@intel.com>
 <1f087cb48e0916997cf0eed770c153fecc793acb.camel@intel.com>
In-Reply-To: <1f087cb48e0916997cf0eed770c153fecc793acb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ1PR11MB6130:EE_
x-ms-office365-filtering-correlation-id: 76c1f60b-9619-49e8-315c-08dbf2829a85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MYHGmenIH/fprkyvjVxtjc02glIWVELtqQUVyllMhJAs1gO3VqEAjEdSuxLb8N6SaesCc2w4CoSeA7ZozpqCbKscgBC+Qn/2lFVwqmPPIalZ9V9pgSyZrUcHZgeHt8eeuZwqHa1ZGy9FH/H/0l84oxUPfMLw3JV9EPqnULSKMbTGiryusDxon9rbwfuEtuMzvxl3TcmNmKzQf3maBQ/5+++P50eozPU8ndb3BacfR6Vv1eJGH/D5qqxYzp0sFZF7yFm3c7FZhNETmsewargs63Lb2kTFfu0pqQfleRQVogYKJ2PREMDc3zBNOGgaNsccJj16zu8sPwusQUlurlAxEu/XwrDHGPWgcS26bkABklxgDZAQvRlb0OWz1WMfY8fwFK8ZjAxUuBTf0RIh8GsoQF/fWvp6zenMev9TK2wxt9frXa9wxiaP5ahlpQeaj44XwxA223wvyFLDb8ezxlO988QCUdZibXSvSg7AgBhDeVUrbRSLYATPs2wt44SEELPMiBwvclCpN3wA32LVQpi0wjP1Omwd2XLYo+kkI1UoQ2Y7VZaOoevx50f8fFTH8wOBfwVaa4DQB6Ok0rq9ApgXPA0v8VBhXNjuqSsI4wUNdtlw6cphBaeNARwjl9NWzfsc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(136003)(346002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(316002)(83380400001)(86362001)(66476007)(38070700009)(2616005)(26005)(6512007)(66946007)(64756008)(66556008)(2906002)(4001150100001)(91956017)(5660300002)(110136005)(8936002)(8676002)(478600001)(6506007)(71200400001)(66446008)(36756003)(41300700001)(76116006)(6486002)(82960400001)(6636002)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDlQVFhqd0p1NTkyRFp4RGczZ01ZTmlScGtVaHJFcEFaRjZNNDI4ZFlWWXBw?=
 =?utf-8?B?NlNkTDZnNCtNMG8zQ0FvV1l4ZVQ3cDQzNC9sdWFRc21zTEZZWXVyMDBTNmVw?=
 =?utf-8?B?bTY2clBqKy9POUJ0TEpPSkVBb01NbmRZckFnR3dJK1I5bnU3R3FBZFNJRnhk?=
 =?utf-8?B?TngzdVhkcDhHRlhNRmhoWlZ5dnZOR0h6eGtHMzJVdFNxbStPMStWcUw2SjV1?=
 =?utf-8?B?UFhwc3c3clQ5N2xmeDRCUFZqeVJVaE1wUjlxcE5hcy9sbU10aGVROTE2bzht?=
 =?utf-8?B?bzBVaVl4Rk9kVVlVd1BER2JVNkM2VnhGbDZKUS9ianpxeFp1OVdPaGNEbUo5?=
 =?utf-8?B?R2FJdzZqQnZGUVZERlhyanNPQXRNWjhsa2xHMjAxTlM4L3EvbGhJRDhUaUhS?=
 =?utf-8?B?MVlRVXp0NFRZTlJ3OEFPWEZkUzFFdW1NeHh0ZjdNZGZ2eXpJVG84VUltWXh4?=
 =?utf-8?B?MGVXclk0YTJvMjdRa2VLci80K21YSnVnMHdqRTAxTVRnTm9WWEszWk5saGF4?=
 =?utf-8?B?UnBuWVdOV240d1VZb0FqVW1PSmp6WWMvQ3hPRmJLdmM3N2FJZVBXRUY0U21s?=
 =?utf-8?B?Qmx5eGhLK0U0YXo3c0F2Y2FyQXdYQlpVRk5mTEx4OU90RDV1T1FTQ056OWh4?=
 =?utf-8?B?bWpRa1BaUE96UUEzSThITlN3LzFwYmM2UjBydWx2b2NQSFFSUkVjMTNWbkNx?=
 =?utf-8?B?YWRzN3owdlBRZ3ZWeEFSTlNlMkxjWUkxNWZUMFJvS1V3RURaaEhPcCs0Rnd6?=
 =?utf-8?B?UUEyMjI2eW50emgwRHBYdmJpT3VDZ3BYVzhOaU55cTZMTG55RXE0M3lNVklk?=
 =?utf-8?B?K2JlNG9YMzRXdk5OSTNMd0w0dnIvcThNb0VNcXZXNGpWMUxYQ295R2s1LzVw?=
 =?utf-8?B?d1ViRDAwS0hmeDE0d0w5T2YzeEhRc3BlYW5wczV3a1ZsNmMrc3FUbUZGVTdG?=
 =?utf-8?B?aEdEUjArSGxPOHRacDdzLzB4VXl1YVpOZzNkQ3dkOGhSUEpCTFg4WWQ4Vldn?=
 =?utf-8?B?eGVYeTdGdGNWVDdLUFNCRkZWMHJtcWl4Y2xyWkZIN0lsS052blkzellySnV0?=
 =?utf-8?B?WmpSVmNNNnB0cm54ZS9Bcm1pUEJicFpmZ1RBcDVwV2c4dXpIcUJCRm5RU01O?=
 =?utf-8?B?RHNIV3dsR00vKzJXQm11eG5kYlFienU0a3pGOTVYVEFMVnViMGhJQU5zSDdn?=
 =?utf-8?B?bHBMYzhOZkVCcXpyblRNL1pHcnRCY09HNzk5S0MvNTJQN0JlYkFxUmdUczlM?=
 =?utf-8?B?UEtIcERud0JPQ0RCSU43RjhlS2ZrcmdkWGVZNys2cHIxMlpTQ3kzUWxCdTdr?=
 =?utf-8?B?TzQ1bklnU0U2R0wzZ1I3NUpGOVBWeUZNUVJOV2ErdjVoQ1JiZURJZkNwcWQ4?=
 =?utf-8?B?YzZlTDVlL1dwVWZxZ25RNjA1MlFOYmllNTJQVWpZZExaRWc1RDFBRnh4bXlm?=
 =?utf-8?B?WFU1Myt1aWxSTitnTkd1eXY2M3JnUWx2MmhPSkU4YytnVXdqYk0zTXcvcDZV?=
 =?utf-8?B?YU1OZ0g0WTNuSTNHc0VSby9VNkZvQ2w5OXR0dmk5YVUxY0dlRjJtVE9KL3FP?=
 =?utf-8?B?Y0N6NnFIWmFHSTZodEZqZEVvaUJhM1g2bkdOMWtRZmV4b201UHloVG8rSERQ?=
 =?utf-8?B?ODFhbUVHdEVsdlBrRlU1VTc3QTdXTnJqUnFDQ2RQc0xaditEQWIwRmkxU0p0?=
 =?utf-8?B?QXluM1FTQXhEQjhOTUlwcWh5TzNHZjhuZHZydlpNamxCN2tkWlU2WHhIRS9E?=
 =?utf-8?B?WFJzNEQ5ZVlmbFNMRWJGRnZGamlhWHBIM0VMSldURTZaV3pYMGUxOEphU0xS?=
 =?utf-8?B?RzRZcFgxRlBGaHFpYU16K2lsT3lkK0Z0UWlTU2hhdUg3N1hteGE4SFhtU3Ev?=
 =?utf-8?B?SDFRaURoUHVVQ3NoTTFXUWUyOUE0czRCWmZVbDl4VThZM3g0NmF5eG84Q0tn?=
 =?utf-8?B?cGRyWkZJSmsyaDNLaTJ0V0ZmRW9Ec3k5OUFUcjJuaXJ6RUlzL0tzeGNXSFgr?=
 =?utf-8?B?ekJvU2dvdUNMU2NXL0ZhNEo0a252UW1DM1I1TlZPb3ZheWJZM211YTBpR0FC?=
 =?utf-8?B?L1VvMkt1elZMMXd4Y2RMVTV6ZGJyNzhPcDVjak1jT0JJZ1lYcVBXenlsNU81?=
 =?utf-8?B?eFZQU0ZBWW02OHFLT2lSckk1VWVOOTAvOFVVbW9yOTVOVytzaDNXWnRmZGhY?=
 =?utf-8?B?Vmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0718FCA39B5635429AAFE0F1192A0E56@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c1f60b-9619-49e8-315c-08dbf2829a85
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 15:31:35.4594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 55Y6azq3+7pMk1aaC/PlBJjU36rVmczlHCHSIw2jyeRy3K8AGlQdPuF9gwPbgu1wbF/SvCB2Owy/XNpJxqWRQoGCl7v1nAXPGdQZ4dgYqzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6130
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: use
 intel_bo_to_drm_bo in intel_fbdev
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

T24gRnJpLCAyMDIzLTEyLTAxIGF0IDEzOjU1ICswMDAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToKPiBPbiBXZWQsIDIwMjMtMTEtMTUgYXQgMTE6MDcgKzAyMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToKPiA+IFdlIGFyZSBwcmVwYXJpbmcgZm9yIFhlIGRyaXZlci4gSTkxNSBhbmQgWGUg
b2JqZWN0IGltcGxlbWVudGF0aW9uCj4gPiBhcmUKPiA+IGRpZmZlcmluZy4gRG8gbm90IHVzZcKg
IGk5MTVfZ2VtX29iamVjdC0+YmFzZSBkaXJlY3RseS4gSW5zdGVhZCB1c2UKPiA+IGludGVsX2Jv
X3RvX2RybV9iby4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3Jz
dAo+ID4gPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA0ICsrLS0KPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBSZXZp
ZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+CgpUaGFuayB5b3UgVmlub2QgZm9yIHlvdXIgcmV2aWV3LiBUaGVzZSBhcmUgbm93IHB1c2hl
ZCB0byBkcm0taW50ZWwtCm5leHQuCgpCUiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKPiA+IGluZGV4
IGI3ZTRiNzgzMGU0NS4uOTk4OTRhODU1ZWYwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKPiA+IEBAIC0zMzIsMTIgKzMzMiwxMiBAQCBzdGF0
aWMgYm9vbCBpbnRlbF9mYmRldl9pbml0X2Jpb3Moc3RydWN0Cj4gPiBkcm1fZGV2aWNlICpkZXYs
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250
aW51ZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gwqAKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAob2JqLT5iYXNlLnNpemUgPiBtYXhfc2l6
ZSkgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9ib190b19k
cm1fYm8ob2JqKS0+c2l6ZSA+IG1heF9zaXplKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAiZm91bmQgcG9zc2libGUgZmIgZnJvbQo+ID4gW1BMQU5FOiVkOiVzXVxuIiwK
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcGxhbmUtPmJhc2UuYmFzZS5pZCwgcGxhbmUtCj4gPiA+YmFzZS5u
YW1lKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGZiID0gdG9faW50ZWxfZnJhbWVidWZmZXIocGxhbmVfc3RhdGUtCj4gPiA+dWFwaS5mYik7Cj4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9zaXpl
ID0gb2JqLT5iYXNlLnNpemU7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoG1heF9zaXplID0gaW50ZWxfYm9fdG9fZHJtX2JvKG9iaiktPnNpemU7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9
Cj4gPiDCoAo+IAoK
