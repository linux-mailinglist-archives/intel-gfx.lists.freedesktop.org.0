Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F03E05F148C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 23:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A856410EDAB;
	Fri, 30 Sep 2022 21:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C3C10EDAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 21:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664572145; x=1696108145;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PfiK20edZwPApWOeYcTO31vn9KdTJc11lote2x8lJGc=;
 b=ScZ5GNrkSOt8trQzFyUgzGxsUcaj6X8jZXlYtl0sUGdcJ5EvWz+UcXyc
 +WegqsoZX5o69vxPSJthnzUeKyxiNA2sbtejjWGzz71ljfVtl5ogKawlU
 Gj7MbW7wFEWLIClFFLlgg8LuW4sEm1SwNbIs7zzQOeFdXPiBj01sVr3sq
 YfNqUHK8/i95ikSGD+MXB7CFCRYCZiRIeJKt7I2sn/N1oQQDAU4bD71v1
 uC22ajUocbERGGJ+kqCtaZKU+TYvw6rgATjZdkFLRfYdNa1uLkCxNeOey
 CwaTax42uRmeAdNl59o5qppCTnpS0K3Fh6NrSmrasE7Kpr3HEg6jqQJLu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="282001942"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="282001942"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 14:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="622902245"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="622902245"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 30 Sep 2022 14:09:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 14:09:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 14:09:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 14:09:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lInc85OxaLCLwd8fJndn9VxmK1GSCD7T8vG0KNenUMG30jrKTQCrapC18mG/0PtR9wRsIMw4E1/Ek70Ay5uzOxDD1zIZP9E+6opfioSW3mnGkwNNI5yg7pGJuMpUOU6C9D29HB69FnMj/r2rj+2NPgaoa6trdC3kKPLIhr3fWpgojZS1ikic460H4ncFsvYcirzE/OB0yTpodfn9fn8xiOdc0r2I4sFV8yLWwBiwneJjoxeVN6wYXy1jPqUjCys7DPgbb4lN0SdVWKbVUirrhqNNDaVfUykRCOMLTWqwH+clvxFXj2cb2XOX0BC4KHukNm+LAH470lB7pRG+tPNJMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PfiK20edZwPApWOeYcTO31vn9KdTJc11lote2x8lJGc=;
 b=Lfqx9xPLhsWJ6BR1JRnb3oN36X/aRyGyhqzuFiqm2Cqi5zivNYB56YMUlQrXvngrMnAcvErQuIY+RtRK6P5iWZKd6l5SxaVFKPDwJrqqn9HQABYrArYrBg1EuaO+BmqluiwsPx5N5bHyu1NBXOrbMWxxQT1n/vC/qmkitinrIgREex3ZL2RcEoo3Hn7+CWvKJG91/Hb21lLMRgmCGd4OLeu5D54dWm7vfP0xGrjBSy/EMDQHo6iY9s9fjqXUOfMlSdx4k0i/p/AgixFA330Po3BH8TOLx4WMwnF0K5l3ez3uYhqco2LSJC7X/YtjyFPXnUkDolLhm3KBZX9x6lBWtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB7097.namprd11.prod.outlook.com (2603:10b6:510:20c::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.18; Fri, 30 Sep 2022 21:08:59 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 21:08:58 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
Thread-Index: AQHY1Gii8wVN8waP5ku0rjVTVFyRb634QOaAgAA4iwA=
Date: Fri, 30 Sep 2022 21:08:57 +0000
Message-ID: <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
In-Reply-To: <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB7097:EE_
x-ms-office365-filtering-correlation-id: b1f277c9-f364-4af4-2dc3-08daa327fdb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f/7ZovRmeetCKkXTeEr+bVVPAnlFh+NMNA09gHAVwwzEtpbUd4jovJ7hJYPqLJ2a1zuO6407enXL34/TRzabWdJZBB29L6AtzSeG1p5K+i+pXtyRDYet8XVrmsLhb13YV/Lk5MQ4wYJ4NbgPni8+RUhxg13hcChu/yLD9Se2sPfPy18y8rvlcNiWc3/FEzv/FGd9fetMwWqdqIDVNDlyG6nstqRjtz5BaZw5kmTNR67lJDraSDSfkzvBsHdAmyCCKI2CeGjGNojxhVO5RLUM5bqJQWwn4Cef1Sh4zXNq1h9l0PWe+JI2wsaUycb4EHd+7SGzL0TtkcnyjnGhAHDTx/AAsJ4WcnuyjIUDQ51tNoxRFPpWW1lps7dyb9dihnCgRQOEicJqMhmhFHb56sbrCc/QZ0NbDXt06x4eF+AGRB1yVP+1UGCL9YNZYOdwqB9HFS2iJcgxeGjWqY9S6s3drA44UAFkgCU9NEB/QR8Qy4bSV7ju599tiESlddiiRouHSpolSCfU6zwlEAoMvcUp6XvUP87VB6rT6pTzOdgQNtQSyC4l6paldZoCiN40mUMv1OTVewAeT53kckjwmMo7asLDWsi6FHqnDRsKxyxyBtztw4p3FKN7OhbokJE2LsEl2f8mQNCblyRTjNzXFPrpsIe3uWde4DsSi7R9DehKAN2pMp3NjXSzRUQUd/Qb+9UqvmeZzeEPzTb5IkaYH690pVOXewzL4hCnwh9w9qVXcRNt2sbG2RENRibdgM8PPcubyNTqmnZL3J8K4P8y1bBG/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199015)(2616005)(186003)(2906002)(38070700005)(71200400001)(8676002)(64756008)(91956017)(86362001)(41300700001)(6486002)(66476007)(66946007)(66446008)(76116006)(36756003)(82960400001)(122000001)(316002)(8936002)(110136005)(478600001)(6506007)(26005)(6512007)(38100700002)(5660300002)(4744005)(83380400001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ai9LY1ZwMUI5OFJFemE2L2N3aEJWQ09pa2hQMnpNdEZ6c0VkdWN4MWc3QXZK?=
 =?utf-8?B?a2ZMS25JQWFZRHVvdVNSS0RWakZCbm9ZWVNRT0VKS0Z6NnI2dmN5cEZRVnY1?=
 =?utf-8?B?VmFPd3ROcFMrOUtyOEpWUjd6cWRoU0R1OGFRd3ZURFdXS1BCdkhvdzJXK3Yy?=
 =?utf-8?B?QlBYdFNFb0dQeHoyTHR5TWU0K2xsRlRKb2NFQ2FIcnJKZnFPRWJaYUFFTEhE?=
 =?utf-8?B?WmtRdmpNRlJRSXoxRVZVOHZyUVA1TzNVb2tneExIQkhHT1MyTTVwcTRFT3c4?=
 =?utf-8?B?UitsUDhPanpZVEtQK29JU25mMzJXd1hlR2xEUFlvdENPSnhrNlQyTWEzT3hq?=
 =?utf-8?B?V2xlQXAwVHJvNWtmZE56RzZsYXN3WnZ1VUlSVXA4MytwVU1xbi9kRG5MRERL?=
 =?utf-8?B?VDlTVUhzendrQURWUSt2RitIMVVPOVlySWFCZEVZNjBZazZXSEZwSlM5QkIv?=
 =?utf-8?B?SUdITytqL3RZSVFkV3BycTBJbWVCTkdVK2ZLaDY2cG0vcHhTbG1ZV1I5ZUhx?=
 =?utf-8?B?RTd2UGFkUnBjZWRNeTVKS1RkdW5vSmFpS3FkLzRQRVh0SFo3MFBiMkw0dW5z?=
 =?utf-8?B?NTQxck96UXNPc09IWDR6dXd2Y05CelVZc2NuNkR5NjZCSGw4UFZmbHNqc2cy?=
 =?utf-8?B?NmRFVGd0YmlyMURBNXFRUGpJTEt6RThodzhXMHZBa1c4RHc4aFJDMXVtY3JR?=
 =?utf-8?B?a2ZhTmd6NjNxSHVxVGJTdm5OWFJBSUVjVkN1ZnphRWNkY2Ryb2R4dEJwNTNw?=
 =?utf-8?B?K3V0SzU2R2VQSTlkVFVKVmsvYmJNMVAwUTdwa2QwSUVCTDhGVXlWYjlhdGNo?=
 =?utf-8?B?TzlPT1lmQkZkZ1FCaU9nQ1dxeWY5QjhJdHVSQlFBL0RoUFdEekZETzd0cmNi?=
 =?utf-8?B?Z2JKU3BrREQvaDZyV1FwYi9SdjVoYmFNSElTUG1ESWhhbXBPWjQzZVQ0ZU5u?=
 =?utf-8?B?cXRXeTk5a2xFWktEbG1INktwNWhYUFpnNmZNZVFNb1l4aW5MM3lSUmVUekg3?=
 =?utf-8?B?YkZKU0d5Q0xlSWhZWGhvTWpUYVBzeGZIcERwR2RxU0pwcTM4WGVlQnB0SU5o?=
 =?utf-8?B?ZldNRW13QzY4NUhHQTdIZjVwVFFrNHNzYlBEclJ5OHFrangyVkczQkVpVENp?=
 =?utf-8?B?QTExUkRiWlBoMDNUN1pScDl1c053VWtTMUFyeHY5dTBOVml3YVFGY3cxNTFF?=
 =?utf-8?B?MmxPNkpBMlhhaGtGbkhPMFJrZFM1NUp6cDFQZHQ5TWEwNVZXVkpJbXVzczA0?=
 =?utf-8?B?VWlmaWdzcU42VzJWdDJkbmF1bGVOMDF0a1FNazZvSlFCV0hNTGROUTBON2FB?=
 =?utf-8?B?U2dWVG9WZWcvckJYK2VZNmNjL3VXSzZEUC9KeDd2M2Jva203WlovY1p6cGsz?=
 =?utf-8?B?VGNrS21WV1JFUEZOQVNwQllXWGZZK2FGVW5Zc0VZZXN1dUhlc2VLcCtLU3VG?=
 =?utf-8?B?MU1rYzlhaW04Y08rbUxhMFBYYnhkRFZRZStHcW9TOXc5eCtBeVR6QWxpdTdP?=
 =?utf-8?B?MUthTlJVblBtWHBwQU8yWGEvQlBiRnJsandWQytDbUhtMDhkcUtycGZ4TDYx?=
 =?utf-8?B?enM3SXpLa29pS01uRXVUUkVHSzR5RWJqcHQvU3BGcG5KTDl1Z2tZY2RpcWI2?=
 =?utf-8?B?SXRHb2ZIM3Y0cUhjaFNPTDZEVnBUcEdIOWh1eTYyZlBUSWV0bEJzQWh1UVVP?=
 =?utf-8?B?TGxoZ0VlWjRVWGhpS0ZYVExsU0NBSWYzOXNuM2o0VUVDaHkraHFCTUhwQlk5?=
 =?utf-8?B?L094Ylg3ZHNZUXVpcUZxWnBrQWIwV0pEUXhSYXplQTZZd1VlcXVsUnorR3NV?=
 =?utf-8?B?SWV3QnJaSFNydjZvNzlseWVIMlFaTEhXOC9aMzlmMmdkYnNucklzcE92K1VR?=
 =?utf-8?B?alpEaVBZQzgwcktjMGxBeTQ1TlhycnFTdkdSSml5LzVZbmdZYTBlbDQwR3RB?=
 =?utf-8?B?RG02U1hJQkdqbXFTWDdka0dPeThHUGZyME4yYTQ1MW1uL1Npdis3S0Y5YnpO?=
 =?utf-8?B?ZGszTDZ6Y1ZYa1hQclhaaHdkNGFIRjhWUWY3ZWd2R2J5aDY1RHlubzBaNWYv?=
 =?utf-8?B?TGRtNlM3T0V2Zy9LVHpTeitWZklFNXZZWSttOXk5cUlEOE1RMTEzdEhSWk9Y?=
 =?utf-8?B?ZkFKTjc5bjlhUkxhR1VjTHdZNExJZ0x4d25Kd0tBWXRVYlJWcnB0dUFSQ29w?=
 =?utf-8?Q?v/wuf9lfdHaZFQiqC8qI32c=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2DA3098E7759FB478A7CF85B7DED74F5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f277c9-f364-4af4-2dc3-08daa327fdb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2022 21:08:58.1439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 82cCrLOGxBxjeB46G0lPOAx5qhjz04Af6OjZ1sOC1bn8+OJfWe48tdkR6a+SRofuWoI16m5GEo9JzlhVErmtse0Koz1QNgw8hxnb7Ne14woSun7rjDH5EujOOBIk3xud
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7097
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

SSBkaXNhZ3JlZSBiZWNhdXNlIGl0cyB1bmxpa2VseSB0aGF0IGFsbCBlbmdpbmVzIGNhbiByZXNl
dCBhbGwgYXQgb25jZSAod2UgcHJvYmFibHkgaGF2ZSBiaWdnZXIgcHJvYmxlbXMgYXQgdGhlIGF0
DQpwb2ludCkgYW5kIGlmIHRoZXkgYWxsIG9jY3VycmVkIHdpdGhpbiB0aGUgc2FtZSBHMkggaGFu
ZGxlciBzY2hlZHVsZWQgd29ya2VyIHJ1biwgb3VyIGN1cnJlbnQgZ3B1X2NvcmVkdW1wIGZyYW1l
d29yaw0Kd291bGQganVzdCBkaXNjYXJkIHRoZSBvbmVzIGFmdGVyIHRoZSBmaXJzdCBvbmUgYW5k
IHNvIGl0IHdvdWxkbnQgZXZlbiBtYXR0ZXIgaWYgd2UgZGlkIGNhdGNoIGl0Lg0KDQpCdXQgSSds
bCBnbyBhaGVhZCBhbmQgcmUtcmV2IHRoaXMuDQouLi5hbGFuDQoNCk9uIEZyaSwgMjAyMi0wOS0z
MCBhdCAxMDo0OCAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3cm90ZToNCj4gSXNuJ3QgbWluX3Np
emUgdGhlIGJhcmUgbWluaW11bSB0byBnZXQgYSB2YWxpZCBjYXB0dXJlPyBTdXJlbHkgdGhpcyAN
Cj4gc3RpbGwgbmVlZHMgdG8gYmUgYSB3YXJuaW5nIG5vdCBhIGRlYnVnLiBJZiB3ZSBjYW4ndCBt
YW5hZ2UgYSBiYXNpYyANCj4gd29ya2luZyBlcnJvciBjYXB0dXJlIHRoZW4gdGhlcmUgaXMgYSBw
cm9ibGVtLiBUaGlzIG5lZWRzIHRvIGJlIGNhdWdodCANCj4gYnkgQ0kgYW5kIGxvZ2dlZCBhcyBh
IGJ1ZyBpZiBpdCBpcyBldmVyIGhpdC4gQW5kIHRoYXQgbWVhbnMgYW4gZW5kIHVzZXIgDQo+IHNo
b3VsZCBuZXZlciBzZWUgaXQgZmlyZSBiZWNhdXNlIHdlIHdvbid0IGxldCBhIGRyaXZlciBvdXQg
dGhlIGRvb3IgDQo+IHVubGVzcyB0aGUgZGVmYXVsdCBidWZmZXIgc2l6ZSBpcyBzdWZmaWNpZW50
Lg0KDQo=
