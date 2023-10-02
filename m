Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7197B4B33
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 07:45:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BD910E121;
	Mon,  2 Oct 2023 05:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE7B10E121
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 05:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225549; x=1727761549;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=MVl7aVICxPfF6Lh6RAmt4xVA/OJ8YoRjRKRG35++nyc=;
 b=ajb55f/1cxYEdrSBQRSeECBHxh0+EOo2oSR9VSeDlvpdx4pDNUyqD/qm
 DEwWLG47I0GbwZUT1GnwyoaV5LOQLKdpAc3DyihbHtjIROQFwtEo5+F33
 UrEGTyz4ijRabl2zy0B2TuriJAXBcQ1ZCcXcSrRmPrfJj8jqoUH+/OJZQ
 2tnuHqg2Qcd1/xGkGPXW0eUX7fxHPWDLoRYI69UqG43KcnamMHppdKAwG
 fqp8NT+AawRPO3/FTYIvmX/7/JHEOaLZzbcD6lYjQKcw01ettW0l1dXoE
 8lkDzucNVSKYdFb8Q6JxJom53smZ4TkDIh0vtBuChkMtUYd9JpOUtpqx0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="386459216"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="386459216"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="816190908"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="816190908"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2023 22:45:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 22:45:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 22:45:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 1 Oct 2023 22:45:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 1 Oct 2023 22:45:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKEIYjbCPGlOtXjpQ3IoiTHtWEeqh4H5okq9ZcqUBl7VPMh77Cc5YlwS6TnJ5ZRKkoEEtWcdbe7Sy6raCY93uuW7xAWQfyuESp3Urh9YrL1IiR/jfec3NeU9R5MW7IQ7DkTwtLjikjz///oKO65cPg6qhXxhHvIPSs61Y0YW4EMwUg3CSKn6DAqsBVRRYdownkczDNQEkxru23uUseSb6Kol0sI5TWd5s0pEjcjlSavNR0nu9X9HJFMtoXlgXBFr0EhsXtY3fSx0uYCNTcjhfJa2iVgjgN50lJ/KwDelwwgAWeO2fVpEBuhnxK7Wtu5/5eim+qbC9eBgnd2NOl8+rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVl7aVICxPfF6Lh6RAmt4xVA/OJ8YoRjRKRG35++nyc=;
 b=I+LDsEmgyohPo1f9oMFPQSXHn8xNbEG2TCuAcqAR7IbQmoaIb8sI6hJwZXfKVpCx7PptYtRUKKj0ypCiQfScHPIt0J++7lBooXWXiDhJRjlhoTUO2nYPFpGGpua0lZlzGaBODSOUvdJwhVQgKOOmm2JMF9hd4B02+PTM4JIE/dH3QlKRFYUil2D/sNDZKaHfYq6D3rDCMMyPtZkbRhcvOHET2LtJLFZNvcgDU1vObU8x3wFp5gScSrwk5s5ji2eUPUxkgik+VH6sTHd4uhmgSMogDzR0d+7jGwXfuKlk5Zyj+GMWz0ZnHWmBRNO75y5Lkx/CjY4yFwfg0BsGK/YyYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5433.namprd11.prod.outlook.com (2603:10b6:408:11e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Mon, 2 Oct
 2023 05:45:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6838.024; Mon, 2 Oct 2023
 05:45:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Include i915_active header in
 frontbuffer tracking code
Thread-Index: AQHZ8scNcaeOrdA4JEKQJj9Egq0jXrAxqpWAgARXIwA=
Date: Mon, 2 Oct 2023 05:45:25 +0000
Message-ID: <163b92f98a6988704bd2396aa3c50959110ff075.camel@intel.com>
References: <20230929112047.1151914-1-jouni.hogander@intel.com>
 <87fs2xi5gi.fsf@intel.com>
In-Reply-To: <87fs2xi5gi.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5433:EE_
x-ms-office365-filtering-correlation-id: 83ebb0b3-5370-4008-6851-08dbc30ac714
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J8o/GjlNLl3crG4SujV+AdjXzoEY+QKrutJVSVwSJBoh3wZb1ZkE/Iujf0WStQ7+YadhR45qV5uWEQFc4HGFEhFcLYzjKmWOF27G6InXA89oRCyugvmQSYTMllc3Kx+kHUM2Pk+TZNykfnChJ766aN44Af7u9JIs0VzoIM5hhQMPhsvZpTZnyqSleL1P09VkXtcFNHSJF0zmYiCdKJ4oTVSZiA5/ag4JhVefV6hrOjUdsKDNzEux8NaygLKEPSz4mSyedcE2eaDtkP0HG3dWikMWuUfL3d5+lluuEFJCBT0RiT/3rlMx1SL5ffarbvWncMclG8AHchEq4IPYT/G6ZgwobDNGPrnkxr4FJux6ElXX6orwVKhm2weQBdI9nLfQIDz7f/8dFLe081kt5GLBMndFpToVK9rvyP1sNrAbiEvAXmCWaS1gHL+Fav0F7VOr4vlvQx2fl8GlHyNk/cg3IS7YcDVUWlU7AelytdbXgg2ZyOCmtwrF2gQVrHJCmNT37Pygw/UXvheGBTm4i6+iBsQH3i8W1wOH5DaP0BEo74P222WU/Wg1H/GNEx1P6aTLyGlPahySeOUCaEj4xmB6z+MyrwT9Lt/AePO9b3D+kDWIgnLAGzSQKVJ7lYTzAfTz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(346002)(376002)(39860400002)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(8676002)(5660300002)(2906002)(8936002)(41300700001)(64756008)(66556008)(76116006)(66946007)(66446008)(66476007)(91956017)(110136005)(26005)(36756003)(71200400001)(2616005)(66574015)(6512007)(316002)(82960400001)(38070700005)(38100700002)(86362001)(122000001)(6506007)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWphSTZRS0RaZFR0d01ROENyQlZzNkZwZmVPQlAxalRERGh0bFNIRmZlUEFK?=
 =?utf-8?B?MXh4dVRReFNOOUMzWUc3WDlxdHZubzZ2MEVWaVFTaSsxdnQvd0hEQlhTS05k?=
 =?utf-8?B?ZFpkVHJEa3h6MENKdUM5OUF0cGVaaDk3L0dkQnRheWZmTWsycUV1V3NDL1V3?=
 =?utf-8?B?eXNlem1sTm1zTS9YN08rVG5PUmh6WVNRUHNVWjB3TjBCd2FzaVpFMXhyVU42?=
 =?utf-8?B?M05sYzUrNk9Eb2M1ZE52RkRIZmVyYWdINVF5bVVJMGZpUG9GUEdxVFRYUmU5?=
 =?utf-8?B?NUlZT0E1OXlwU1hmTjZsTFpxY0dGYzRNLytmVHFqVDMveTZncWgyNjhTMnlW?=
 =?utf-8?B?aFV3SmI3L2dFeGtycjU2SmRLN3NtdWxFeVpCaDB2c0d1NUVJYW9OMWF2NlFO?=
 =?utf-8?B?YVVBaldqbk51dUpjalpmUDNTcTAyZGlWUXh5T1NvWENVcGZ6T0FNNUVISXha?=
 =?utf-8?B?NkJLQmlQRmVzQ1docy9iYzd2OUJ2RjROTmkvRnlyUGRrMk9FU29hR08wQmtu?=
 =?utf-8?B?N3hFTEVTNnlmcERDWENKWmRSZDdTOTZkbjVIK2htWFVzaEF3NnRlQVFHWkFy?=
 =?utf-8?B?aUlNS3NtOVpjR1FqenpIZnRES2dGUnppK2hKK2lNSWE1cjFKZ0pmaC9pYjYy?=
 =?utf-8?B?ZUZhWnFhamhpY2puWURoZWFKL1RSVGVZSTBoai9PeHdkYXhteUtqbkRYWG1t?=
 =?utf-8?B?L1FVOWFVeGI5KzU2b2krdlNQOUYveXY3T1VEVUZsZUVPN2lOb1FMY0JOLzdB?=
 =?utf-8?B?VEVoZWR3c01TbTFZRDUvY2ZReTgzbGFWc09FMzB5dDl1aHQxbVZMcTJla05J?=
 =?utf-8?B?cmxjMFJHV3hXdTN1OEtWL1pMbm41WUg0cWh2VXdqOEdUdVN6UVQrV3RMNkhG?=
 =?utf-8?B?d05mczBac2hudlNzdmFTV3JRZXFKMTVkTnl5bHhncEY3Yy85SnJNa3c2Z3FR?=
 =?utf-8?B?NUdIdHJpbW1SeFhLSlBzWnQ0MmpwVStSbFVXbWxSNEUxSEZmdmZkTjQ3a1Jp?=
 =?utf-8?B?S1RhN3gycndsaXhxS0ZZczliU2E4d3orRDc2RjFsQktQdVljZEg0WStiUkRS?=
 =?utf-8?B?cUFoUGdSb2RyWHlML1V1MEhZYkJ6cmdlbzVWL09PTXlYTllzOCt5NXl2blZG?=
 =?utf-8?B?M2IvM2Z4UHVJcTU5dE5ySXNiNmNiTVlzMUpIR2JmTmI3SC80bmlMRCtwc3FL?=
 =?utf-8?B?OWFZejZMNjVXMFAvYkJLa2VIei82V1FuMklHS2h2WXFEcFdhMFpieGlsVVh3?=
 =?utf-8?B?cUtQK3hOSEhwRzQxMUxDd1Qyb1kvZzdQLzZZdmt6czBSVEpwRXpsRVR6bVN2?=
 =?utf-8?B?RldGcTNTRkNMbEo1cmtBbTZCbDFnVGp4WDJ3OHU4a2QvSFNiNG5NcGZQT3hz?=
 =?utf-8?B?b01qcWxhYkpiSUpvZlZtTzFaRWdsM3hERmgvL3VzQ0tIcGo2ODRMcHcwZzU5?=
 =?utf-8?B?Qit4Wk0zTFl4NlErdUp5aFhRU2RMMHgvd0VpcE5kVlJTU2FLK1NDZWEreVlR?=
 =?utf-8?B?TGZ5RVp0WjhpRVZOckF1WWl0eFlpMEJiYTlCZHhaSnF0c0VaYUtpTFkydWdI?=
 =?utf-8?B?SG5aZnBhL3hMRFYwNmxDT3VRdnlPQjIvYmhobjdNZHpJalkyWExEZjJMdG91?=
 =?utf-8?B?ek1BdGRla2trcGRKRUxKOHpRWkJVbE5oUjdEbUVvc3kwKzd4QVNobXRqZFNT?=
 =?utf-8?B?MUF0TU45dUM1ZDBRNGpUUGUvRVRDamVLMUZiVXBiZExCdHhEMTNPbmJiQmZ5?=
 =?utf-8?B?YzhQSFJKMWZVNC8raEhLSFhLaFVqZmlxUVVNY0dyQ3VDOTN2QjRQa2RpYTZt?=
 =?utf-8?B?VTBXYWhvdDNGbzNXaE51M1Y1QitBSi94QmV5SlNqVFY5QW9aUTBocWJGUWE2?=
 =?utf-8?B?VktmM3R1WFN5KzNRT1NUZElDTTd2VDNqWnQ4UmQ3YnRBbDQyaElJd2YvR0JD?=
 =?utf-8?B?ZTZIY2VNa3o2bFJVUDZSWFVXYXNuQktDOW42ZWhLVGZqbzZyWThrd2Q2MS9q?=
 =?utf-8?B?OFlXc2dCTDBIOWR5bC9UakU1SXJrM2lmakhpazFZSFo5Wm8zdUhZckczUFNC?=
 =?utf-8?B?anZpa2cxRE9Qb3F5UWxqUWdnc3Zyd1ZMZjFCZzM0bEZpN0dKNGxNM3JkWnd1?=
 =?utf-8?B?UWEvWkpmU21WelA4Y0E2Ui9KTzFTTGlxYlFGSnorTnJoeEVJQXZLem5ZUVNp?=
 =?utf-8?B?dGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7164EA83C83B4841AD0D2933370BA4B7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ebb0b3-5370-4008-6851-08dbc30ac714
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2023 05:45:25.9967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K7Nz++VEvZcV67i1iNwDKuUV6MxCe6uvYXM55bzb8RoWvFLnYT014t+nFVdyWa//RgIz0tlaL1zn6G8XDCqt7Bv8WkELqJGo98hehOh4Z3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5433
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Include i915_active
 header in frontbuffer tracking code
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

T24gRnJpLCAyMDIzLTA5LTI5IGF0IDE0OjI4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyOSBTZXAgMjAyMywgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEludGVsIGZyb250YnVmZmVyIHRyYWNraW5nIGNvZGUgaXMgdXNp
bmcgaTkxNV9hY3RpdmUgZnVuY3Rpb25zIC0+DQo+ID4gaW5jbHVkZQ0KPiA+IGk5MTVfYWN0aXZl
LmggZGlyZWN0bHkgaW5zdGVhZCBvZiByZWx5aW5nIGdldHRpbmcgaW5kaXJlY3RseQ0KPiA+IGlu
Y2x1ZGVkLg0KPiA+IA0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBKYW5pLiBUaGlzIGlzIG5vdyBtZXJnZWQuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gDQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMgfCAxICsNCj4gPiDCoDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IGluZGV4IDQxMmEx
OWE4ODhhMi4uZWM0NjcxNmIyZjQ5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IEBAIC01Niw2ICs1Niw3IEBA
DQo+ID4gwqAgKi8NCj4gPiDCoA0KPiA+IMKgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9vYmplY3Rf
ZnJvbnRidWZmZXIuaCINCj4gPiArI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiDQo+ID4gwqAjaW5j
bHVkZSAiaTkxNV9kcnYuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3RyYWNlLmgi
DQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiANCg0K
