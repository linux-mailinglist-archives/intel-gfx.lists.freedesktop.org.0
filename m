Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0F66CBFAB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D3AE10E46E;
	Tue, 28 Mar 2023 12:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83FE510E46E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 12:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680007745; x=1711543745;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PNFvCbFED826gpX+EtjY4fR+HADFYIivFnSx8aEn+XQ=;
 b=ilmRFFVDvEapWRNaAN1888QnslGRzqyQi466SM+DwJoO0Qzj2flKh9hm
 ey3kdEG3RuS5xOVv3YkvvPRGnONG9UUWdMANFcWsmQsL0PdjyqBxLkW5U
 QeG2oPNDdLns/AIv5VpKitXBpmPLV381+WLgIw1o5b44HvO4lT54rsrhv
 2+DwPTLa0tr8ZwkNXvjfo0edRHwYZeHN3ycVrRUVI3hhT9BbvzFpyfV8u
 UKb2DhFUARl00wXgBlO0xHTeNAvzIAVqXG7GBJgu/WKZWbgweiQ+MU0cI
 tute9TnEqvR42k/YQBtAWeoEPHJg11xHF3fsE+V8ROy0EZY26CCE94gKd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="329012878"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="329012878"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686410544"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686410544"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 28 Mar 2023 05:49:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 05:49:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 05:49:03 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 05:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqkIm2RYSDFlToafj9BdX3VrzY0koLjuycstdQn8GhPd9sraV9/5/AhudJf+XcrH9ZgoqjyyLk7JUmB3EC9n9rT3Ubjrst+LTJ90iLkkdgxN48HqcVK0ByTinZmRJyOlVqb4/MZ4a4beWNXTb2aEJYOinSfU+C+g0L7MIQpBoMCSATXoq4YHgNFHRBIvy8rZfHjhk3sipbJDjSGsUd60uadar2FjrEjJjAy4mgu6zKqHUINWFBWs/Py9kAFsEsZdsvcnUPwoGAebvl0hvgVxf5ilYCJ2n8NU+tNqvLRUjqMdrUxtIngwUaMJ5qL3PmeMU6Yoh7+y57GamWBKv8ka6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNFvCbFED826gpX+EtjY4fR+HADFYIivFnSx8aEn+XQ=;
 b=WganE1UCQ00eLd1Mc0u4FmP4Id0w52K6ZgFQjVMpLqaeEv9nEkYSrfaQdihF/R6YFGok3ltRmM4TTK4DzAR729AL2XMhmr2+6Dl/StDJ4nkKxTUQ5EVFUCiiYAv09x+DmxN50p3MEBDudTlBNgdRD3L4OzdFpDUawltuNdQq/VjL16IQjDjKkwN+Oe4AWp5aB/wgzDpjpnEK47DKvfNnsnFrqRcQHnOhbkEmP2z+MyTii4b2SFSRk5jT+c7iIyHXmUaY5t4Z1ibvQ0YDQg9Q9aPv2JpAD6Cegsoq674wHMr0zCnE0YsdyFDmuXh47QUjsfY4FbD2BcBlexYwYSFIWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH7PR11MB6978.namprd11.prod.outlook.com (2603:10b6:510:206::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.28; Tue, 28 Mar
 2023 12:49:01 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ce2a:ef6b:bc63:1467]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ce2a:ef6b:bc63:1467%9]) with mapi id 15.20.6222.033; Tue, 28 Mar 2023
 12:49:01 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/mtl: Add DP rates
Thread-Index: AQHZYKlB/A3uEJFnH0uWRmnE4PWm5q8QJgKA
Date: Tue, 28 Mar 2023 12:49:01 +0000
Message-ID: <75bcc97c71d5cb8898e5d63bca994155112c0cc4.camel@intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-3-mika.kahola@intel.com>
In-Reply-To: <20230327123433.896216-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH7PR11MB6978:EE_
x-ms-office365-filtering-correlation-id: 3ef8da12-07c1-4f37-2b3b-08db2f8ace06
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i1x+yByqZRGv6tDiUsm/u22p2kQa73elJpRSWGdab4OVOyucRLAa+RnVBas74+z0TP9GSXEmNDzcAxK+likMpTgLOSJmMP4YZwsShPR1DxVRLzmBMb5s3FEUFLvaIsoZRmNxdvtHjXNM8RZkg8kOap4JHPq+aI/5q1TH4+9dEF7xgWeesYRAoiH3j5EXr9uPc6ocxhTyPjTFmDVJuyEykmg4jmrtVlB6ZROYDlUpIy03I4v60DQG/r+hV15yTOrGDeDlhv8SQnXxGBSLkhT8iJTPmuD38hjWoCw26/Z/NNn8Nfn7J36e+0UWo0VwXwgcbA49I+5gQDuQY3dk3DbDDL7dbrePSw2YaDxRf8XomBvMa1RfWP4MtzMsY7WlIW4fsiej3PuXH9de58zkZ2pOkpcI+aqMr8lGsxGm5BuYhsiT9gnNqq9E9fDM+9dIdlhXmY7oJ7z1y4cnkb7+GsPE4RQrAJUBJ3avk8y7V/1TSx9XxMmH+t7Za64Qr3Kp3lDqzh2A/ISb8SKqaT8PjzJLLyaHpGIRK2lw6W5pnVWx6jfSUEV1EtTr41gFX4pwjBQ5hl0M0Zw9OYswjaGGK3nCHqGl+Cvk/cdm6V/FrAniq65JGpgaJ57AM0e1dL8JhJIv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(39860400002)(376002)(136003)(451199021)(91956017)(83380400001)(2616005)(41300700001)(36756003)(86362001)(38100700002)(5660300002)(6486002)(122000001)(66446008)(8936002)(82960400001)(478600001)(71200400001)(76116006)(66946007)(66556008)(64756008)(2906002)(8676002)(66476007)(6512007)(6506007)(186003)(316002)(110136005)(38070700005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGVnaFlvZy9hYU15UWJJang1SkVXbnlidnR2anpZeHpSWW1zK294WnpVNDVa?=
 =?utf-8?B?NWo3M1UxdDdJTnloZmMvN2phZ1Y3TzlRT1I3QVNvUmQyemJqUHV3b3NmbXlF?=
 =?utf-8?B?SmdvQkpZOFV0UkxyZmNmcEwwSGViQTE2a2J0emk1UW51bG9TTkxUV1pwK2NE?=
 =?utf-8?B?b0Q3WFhEakQ3OFY2YnRPc1FEQmNJMytRd0MvaHZCVFozYnNmYzZzK2FPdldD?=
 =?utf-8?B?TlBaU29zczh1MEltN1lxRDljMHZuTHdZNUpzVFhjVFFidUdVMUxrS0F2MXZV?=
 =?utf-8?B?V3VuTkhNby9uVUR1UnhzRzdtcHZkbGduZGx5VXB5WFp5L0RNMnpWaVZvRFRU?=
 =?utf-8?B?WHd0dkF4aDBWUzVPYkNrM1JmbkxRSmp5TWpsOWRLbCtLSnlLZDJlQ2piTnVk?=
 =?utf-8?B?Zy9YVCtkL3k2UXFFQmxwL0lGTFFNSzNiY3lWTnRpbHU1YkVVNEFVelVpZE1x?=
 =?utf-8?B?cndGamZQWlMvdnl1WjVYb2RSY0VpS1ZkQVJYRzFaS2NHc2Foc0xOaG1EZTdp?=
 =?utf-8?B?OFE4c20zWEhjUTRiN0pNN3o5RlF5RFl5cGZDMUM3U283MTEwMXFnM1oxRmFB?=
 =?utf-8?B?OUJPcjJjVGN1cHRjUWtpZ1RZUnFkRVhlR1ZvWWZYdkR5Z0c0bDEySG9WTVpm?=
 =?utf-8?B?S1pZZ3JXVmZtTFdCRXFlZ3FxNXUxMWxJVUNNemdiL3BwazkwOWFnRUxmYWhD?=
 =?utf-8?B?T0VhUmFCZFNkeVBTRGNzdjduQmoxWWJ6U2FzZktyalE5UkJsL3lGZVVYVXRv?=
 =?utf-8?B?SGh2OThhc0M3S2RNNkI4V0ovdEpvQ1EwOEYzb0ppZ1c5ekZkeGNlUEJ3bXJB?=
 =?utf-8?B?VVpweDdHUFRGbGNXVi9DalVyUUtGRk96TGl5T0lMMkhtcWt4WFB4dEtxOTJZ?=
 =?utf-8?B?ZzBoZE5jY3pkcldQd3doRnBkK2cvWlJpRkFoQzlhK1dncXJjY2dTOXNiRmhV?=
 =?utf-8?B?dVA1WUdJMDR6eEpMUW45QTNnQzZqbmVhZlY2K1VTM0RKUVliM28rb1N6c3lD?=
 =?utf-8?B?NUFEa1djVGlZVGx6cUNQSjVJR3BJNXI3K2pob2hYcjhGS29yMVdmMVNiYUpp?=
 =?utf-8?B?S0kzVkxoNWMvcVlqam9rUUcvSWVKUW1hRmNSTkgvc1lBclpPL3RUa3ZjK0R1?=
 =?utf-8?B?MEhtejFSWjdnQkx3YmFFYVoxTjhheEdrYlRlQlBnRkl0TzVwUGZKd2FYWjBz?=
 =?utf-8?B?U0xybFpCeGxFZHRPUncwVm4xQnVUS1B4OHpRM0ErajNWWEZCM1BnN0lzdi9y?=
 =?utf-8?B?dFE0Y216UnJVQWpJeXkrdGZKZWlmNmNqaDUwSTBwN3NjWTVITU1KbzFBV0Rw?=
 =?utf-8?B?NGxlaGR0b2VoQkoycGozUThtNUFHenJEaFFKN3g3SXZTdHlCaUFGejZaYmRu?=
 =?utf-8?B?SVhzUzUwRGNQdjNEZzFUbWo4WWdSZW5RaVpoZXpoREVZYnJDSHRKUGRER0pQ?=
 =?utf-8?B?TjcvZWtvZXlkWXg3cTZmUkJOMjlLMDluUnZnbnFOdUdieFU5c0VWY0JkSC9K?=
 =?utf-8?B?Y3A5aEZPdlc2NlhSYVlKRHFIN2lqdGpZZmJTTkJPZDRpaHJkeXUyMDN0MWNB?=
 =?utf-8?B?bnZJTjZwYmkwVlMrWkszOGJNN20rYUlQUzNKN3UzTXpuNmJXdG5lL3RxOGFS?=
 =?utf-8?B?amg1Q2g0VzVRWHo3RUllRk1VYWRpK2JFdXpScVBmajJUWmFhMzQ4YXN3bHNO?=
 =?utf-8?B?enFpaTIvYWlyVjhSUEdJRkc4OGFSVUxTZnRBK0hnTEtFOGhyS2tlbk84NkdL?=
 =?utf-8?B?eFFCYlpGaUoyL2lTdGdiWnU1bis4SDVJUW8zc3NSQ0ZWSDRjQitaR1QvR0No?=
 =?utf-8?B?MXg1dHo1cnAzT1QyQ01BamlpeFM3ZEVVTlBTVllkdWdQRnNpb3l6QjRqalRC?=
 =?utf-8?B?NUdXQWthd1pBK2o2SG9hbWt2WGNWcWxoaC9OV0taazdBTUoxdVhXQVdZODJw?=
 =?utf-8?B?NGdMdGFCdjgrcm9IWDM3WGUwNEptbVpzQ3YzSFFvNXNXS0lZNEdEM2JLSjRz?=
 =?utf-8?B?N2FNU2lROXI0TWNmelRMMThLMlB1RnZHL3dNYWJGTnZOY2lXcFMvQlZZY20y?=
 =?utf-8?B?VmQ1VW5RL0lRVkhZTFRsaUFmUUFRdGJ6cGFzUHk3MEc4WWd0NjNjTzBRMWNC?=
 =?utf-8?B?MlFEU29Gc25qNFZsR1p6U0xaczJrNnRsT05LNkdmUmNWOFNGcTJ3M2toMlc4?=
 =?utf-8?Q?irdQrFysAOFbHTYJhOiirhQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6695311BE364B542867EE9B9A1E3AF0D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ef8da12-07c1-4f37-2b3b-08db2f8ace06
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 12:49:01.1004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CwPxuZrsgB0eLQnWD3LNWdvQdqYtuQvDC5jdgk6KTCAGlKMA+UNedQpyruy1f1+/2lv97gOlQA2d5WhO/u+wwwO+KcFhQInXogjO2+MOrUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6978
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/mtl: Add DP rates
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

T24gTW9uLCAyMDIzLTAzLTI3IGF0IDE1OjM0ICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToKPiBB
ZGQgRFAgcmF0ZXMgZm9yIE1ldGVvcmxha2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlz
aG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+IC0tLQoKUmV2aWV3ZWQt
Ynk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoK
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNSArKysrKysr
KysrKysrKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IGRh
MWMwMGVlOTJmYi4uNDkyN2FlYjY0ZjIzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwo+IEBAIC00MjAsNiArNDIwLDExIEBAIHN0YXRpYyBpbnQgZWhsX21heF9z
b3VyY2VfcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gODEwMDAwOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyBpbnQgbXRsX21heF9zb3VyY2VfcmF0
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJu
IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgPyA2NzUwMDAgOiA4MTAwMDA7Cj4gK30KPiArCj4g
wqBzdGF0aWMgaW50IHZidF9tYXhfbGlua19yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Cj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0g
JmRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZTsKPiBAQCAtNDQ0LDYgKzQ0OSwxMCBAQCBz
dGF0aWMgdm9pZAo+IMKgaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqAvKiBUaGUgdmFsdWVzIG11c3QgYmUg
aW4gaW5jcmVhc2luZyBvcmRlciAqLwo+ICvCoMKgwqDCoMKgwqDCoHN0YXRpYyBjb25zdCBpbnQg
bXRsX3JhdGVzW10gPSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDE2MjAwMCwg
MjE2MDAwLCAyNDMwMDAsIDI3MDAwMCwgMzI0MDAwLCA0MzIwMDAsIDU0MDAwMCwgNjc1MDAwLAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqA4MTAwMDAsCj4gK8KgwqDCoMKgwqDCoMKg
fTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RhdGljIGNvbnN0IGludCBpY2xfcmF0ZXNbXSA9IHsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDE2MjAwMCwgMjE2MDAwLCAyNzAwMDAsIDMy
NDAwMCwgNDMyMDAwLCA1NDAwMDAsIDY0ODAwMCwgODEwMDAwLAo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgMTAwMDAwMCwgMTM1MDAwMCwKPiBAQCAtNDY5LDcgKzQ3OCwxMSBAQCBp
bnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gwqDC
oMKgwqDCoMKgwqDCoGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5zb3VyY2VfcmF0ZXMgfHwgaW50ZWxf
ZHAtPm51bV9zb3VyY2VfcmF0ZXMpOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAxMSkgewo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTQpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc291cmNl
X3JhdGVzID0gbXRsX3JhdGVzOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzaXpl
ID0gQVJSQVlfU0laRShtdGxfcmF0ZXMpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBtYXhfcmF0ZSA9IG10bF9tYXhfc291cmNlX3JhdGUoaW50ZWxfZHApOwo+ICvCoMKgwqDCoMKg
wqDCoH0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKSB7Cj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzb3VyY2VfcmF0ZXMgPSBpY2xfcmF0ZXM7Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzaXplID0gQVJSQVlfU0laRShpY2xfcmF0ZXMpOwo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKElTX0RHMihkZXZfcHJpdikpCgo=
