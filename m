Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405A384CB86
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 14:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FEF10E774;
	Wed,  7 Feb 2024 13:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QnfK92O9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEFF411324C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 13:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707312399; x=1738848399;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PjcrcsxPPfdQ3eq9ePBCQPQy2rvelTsZ98tSMt/s5n0=;
 b=QnfK92O9q+Rp2+Lknx9Uq6J7onBcuoCLkyTdBnNDKp2GQtVRkgH85iS/
 MTy0h+3c3ECuSZNf8vOLL4Kv5Zh9H8koRmjrMTbWIC1oS9ekICSrWvRH7
 BQVs4pcbA9jCNoEFDn8/H5a0iTxMN3eKBJSk0mQaZW44kli1Tj4HXGBnE
 2kxDFXmC6PwNugbhXjZzFV6ynz1EtnS0hk/IreoptUqj2oLV1wIXOE/WW
 Si2nKjyFpa2nnVMHR6qE03tZ8mbGTh5zgmdsAaXortAFLQ6oLmWDAycGU
 I2YmKWS03F00h8R6LgtDQ3b/wWTzriulyJDot8keWkPCbtHqvXZgjDwUt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12343972"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12343972"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 05:26:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="909994295"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="909994295"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 05:26:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 05:26:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 05:26:38 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 05:26:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N9PNXnUGDoeLLDHl8M3PEwceVtBx/JtaXCgtptE46ZrT1FhlPuAN6C5tjU1THfvLxsZseFoZdQEPnPb71eip0VJUE2C5xO2b0MokvZsaoxV45qFBwHKHlsfMJXFMhjcrfSyxkdWEy2+Kkc6X2B9N9fbnQT5oaVdz56ruyyPMjP5vENGSxvQ4ht+TAByFjLK+bH7ZkIyTcE3zSv02yGsXK4lzObhY3jby25Rz/qGG+oddIc1dWGw879Di5vI/WqA2hbbtjaTk0Ii3g7eUDwQCPQ5pe26Vo9+6D8afxmMbHPuMiqOvmgVsYgt9p3BAGQXZDFyRHxzZjYF0MNai9PHOlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PjcrcsxPPfdQ3eq9ePBCQPQy2rvelTsZ98tSMt/s5n0=;
 b=L7dMPXIG6cSC+P4PDc4HT8s70BWUwP++VOs29RCB8e4PlG4yFuJEz4Bi6mUY4xRheG0d1PU1KfJxJKqFOkAjqOJsA1+hAmj3LdzZKKoLJrcEdVcM6nIm1HR5cUcpZ9L5+hi3F/IoR78JGMycIGEoTIz5MygQrqbHIs4AXIAJunWiwGqUHzhCCxeR+AsDJ5DXiaxFx5o6HmhtTdf3FvmjZT/9Dj+KuRIAch/2nucrGhCQ4WF5JuIRF0svo8t5RYw7LWuDJ8+M+WEZMqxOJ32Gki8NC52TQBefjeiRNqvrE4q3LnKp3QWYeCyliJLwzgx/DYsHfSVbZYzmLn7wyJPf7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW5PR11MB5929.namprd11.prod.outlook.com (2603:10b6:303:194::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.29; Wed, 7 Feb 2024 13:26:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.037; Wed, 7 Feb 2024
 13:26:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Thread-Topic: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Thread-Index: AQHaWRKwjV0b7aKvkEOcrObXXnc/m7D+4GWA
Date: Wed, 7 Feb 2024 13:26:36 +0000
Message-ID: <47fac05618fb85725f9c0cfa694fb601c82b2a7f.camel@intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
 <20240206153910.1758057-2-imre.deak@intel.com>
In-Reply-To: <20240206153910.1758057-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW5PR11MB5929:EE_
x-ms-office365-filtering-correlation-id: 29e8ec7b-23f6-4c72-5647-08dc27e068ec
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R2xLIPK051KZ793B3Pdi8Mll+IMTq4b9uLREwYT3nSB6gIRGcGu4bhwdFG2fkw/+6oh/Y21GjDPo/2JsoqHI1JVgvxWsx1mEfxMdFBF+2vc6TN4nbk3veOAXIRHakPsGM+1E+RVT6hLLgmvf7VjPRhYWeGPmafhybyioGpyiAnK1r+ukV+Z1w8maSWa2/yobDM+1apxl4YD9XE28jnONIRz7JQHi/awCgJmgfkByzztkFE+gX+iyvlJxepSX7s2e4jQD5Gq+CEcXl9B8V5f3C2C0ndt4vxK4bL8eS8I6OU+kTKAN2abSv9wc245s37pimdUqOkV5X48JGo+fgvLDZbSEMGj0b5wHfrwZ2OljowK5YHrQBRmzuQH768GTVqX+cWsoKuJRTUGZ6Y+GroFggkKvpGd22yVFBcVUh+yAsHCZcFBfCF7KRhilxoaGqPZS7c5q9hC72HiYd3lciXqm9hSlFysCrGZai1EiziU/6leUMLRpjsehd+FtUg457inVizDHdApLVutNOqqMtgirgYEwBmhN+QLr4TNY77E7fJ1aCV29q1DC+xcRpeiz9ykEiqSLNzGDwy2LLWteU/vqnC4ApEiaEWcUaplK9HF8r3nC3n16ZZ3WkOfPrOCt5p/p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(136003)(396003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(41300700001)(38070700009)(66556008)(66446008)(26005)(8936002)(2906002)(6506007)(316002)(6512007)(5660300002)(8676002)(76116006)(6636002)(66476007)(66574015)(110136005)(64756008)(71200400001)(86362001)(2616005)(122000001)(6486002)(478600001)(38100700002)(36756003)(83380400001)(82960400001)(66946007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UytJMHR4R0cwdWpkYWpSRzArMS9rQmlkd0NIN0t5NkdHcHVWeGxyZVVZc3c2?=
 =?utf-8?B?Y2QrRUpOWFFuTm1rb01uRFhBQzVIc1A2Y3pueURUenZpZFVGeUp1S1l1cDhO?=
 =?utf-8?B?NlZHNjVPTUJXeGpyV1FyNTdUdFRvUFRmeTdocjJIUmt4V1FCZUUwRHBMcG5t?=
 =?utf-8?B?RnlZZW42ZldZeFluYWs0bUYzWDdEcWtYeGoxc0lFTVI2Qlp3QmJYTy9qRzFF?=
 =?utf-8?B?VjQrb0hMZEFjY3U3MWZVTHpkcXl2NnpmL2lmV3pqMldYRDQ3UDRBQzg5anBN?=
 =?utf-8?B?YTRWRTl2azJUTDczWkloSG5ZejdFUnlFVXZERmlndVpqTldERWlDdVhGQ05s?=
 =?utf-8?B?RW5Ta2NJR2g3WnpyQ2ZrYkdCZlA5MkJyVldaeVlTNTlCM1hPWUtNbXVDQ2NP?=
 =?utf-8?B?ZU4xZ1JkdjhwdjdFTEd5TFAzNnNzd29EZk1FRmZSRVZCa2pETDk4d0lEcHJ1?=
 =?utf-8?B?azRndGZHNUozdTN1OUR5VEJQVnYzYXlubzdoZyt6MTB6RFdKT3Y1SWJhVGI4?=
 =?utf-8?B?c2VaZVhTZWhKZlpabTlzMjhiczNCQmU1L3NGZStqZjkyTGlsVDZJME4xbzhJ?=
 =?utf-8?B?MVJhNm1ReEpxdFVGL2NxWHBYSjlBTlV5dHBLUkc2eHhLdmpwTE9RMEQ0T2hH?=
 =?utf-8?B?c2Z2SXI4eUlwVFZyZjg3U2RYUGd0WHR0eEJLYkFIaHBTYSthWWVEdmdNazRZ?=
 =?utf-8?B?MWNmM1orUU9md3FxaHJkUXBxQzQ1eE16NjI5NDcwWjFlUDBpWjZncmpZYktW?=
 =?utf-8?B?bEpTdDZrYTZQUDFPRW5RWkE5Y2JPeVNQQjYvMzFlNHI4RU5sdHBmenE2N0sv?=
 =?utf-8?B?SmdRTEpGN2cvdkVLcmxjUTFYeXBTdGRXbDdlTkF1SzhtQ3kxcHFibkw4cWIz?=
 =?utf-8?B?aWtOSDJiZHYwcVAwUjBZd1dNN0tiQ0ZDMGF0VkNYdEJ2OUxITkUvbmtsYlJl?=
 =?utf-8?B?K2o3cDlwaUFDejNzL2I3bkZrOU1IZ2FFeWF2UGdUSXhBbGJ4ZllkRUg3cktC?=
 =?utf-8?B?enpSc1JBWlFzOVV1ck1XUG1OWEhQdWJQczd1bXljWEJGWDhVUGlqTWhSQnJB?=
 =?utf-8?B?SnBnZk1HOXVySjc2RUI4VXdSSmdYRllEYitGQnlPaGFUWnlZWUZxQmVsZ0ZY?=
 =?utf-8?B?ZDk1ZVFMQVFyMjNyYmpXd3UraXlwbWl2amlzV1Fmampudmx5bWFjRmQ1bEpt?=
 =?utf-8?B?QzYxNDdNZXRRMDRIdUpDbWxTdkNNMVh3NHZCVnZPMjVkQUpSUXJOS2NINFhZ?=
 =?utf-8?B?eUZUSWFWWnp1UE9kRU8wbjRMWVN1d3E0cTNsZkxEbTI0cjNuNDhGQndyWktW?=
 =?utf-8?B?SVpKTmx3K1hGOFhyODlHSmdLeUJvLzNLNGNOdDNZVFBJWnc3QjE4QTdrRmlY?=
 =?utf-8?B?YTVtd1NjRWtZVHIrOU5PbTJhSXBSL1BzaEV0aXUwSmk4V3plTWlVd2t3ZHBJ?=
 =?utf-8?B?eHE4VUV2ZWhNbkJtQXdHcVV5d3RmZ0pZeVVvUWJFTmNvVTV0Uy9aS2JvU1do?=
 =?utf-8?B?c0ZFMFkzd0QwK0w3WUhxNnRFelViY0tySStpTkZnaDkwRTNpeUFDWWpSb0M2?=
 =?utf-8?B?MzFYQ3ZoVEFJV2I4dk1IUUhtS1lHVXdPK2hzM3FTU1VKYkJaRUhHalBPdXVx?=
 =?utf-8?B?QlM5S25ZNUxCdFZNUHZ4V2g0L1htSmtjb29KWFhZREpLVGdjRjZWUkZsTUFh?=
 =?utf-8?B?UlBOS2FwRXBPMi8wY0JaWG44NkhuQ1VjaTMwNzE3R3ZiWDZwVUo5Qy9FVEE1?=
 =?utf-8?B?N3ZiMlVZa29vWWluR0lxSGs1Ni9hNlFMUUN2UmM1cDE0TkdwYSsvdEsvM3dJ?=
 =?utf-8?B?ZjNUaHZ0aXNWV0ZlNndGNEZBN21qd29uaGZRVldNTDd5aVpLVWVwbXVuU1kv?=
 =?utf-8?B?K3hiRmdqYitFN3dHRUpCY0M0b1pxTTVMR2t1UFZLTTA1eWc5ZWFWNysyYlF4?=
 =?utf-8?B?VFQwUDlvbW9Wekk1eTZZeVBKc0FCcjUwVFF5ZXhSeHdLVmJRbXpXSUQ1SU1D?=
 =?utf-8?B?am01eTg3RjhpSElZSmNtbmVkbGE0UTlIR0Q5UnVOaEplcHJxQWVMd3pYSm9W?=
 =?utf-8?B?b3RjeU54RFFpbzB4T0x6d2xVdTZVYkpkTTNVUzQ2Y3pDRzRHR2czc1FUVW1y?=
 =?utf-8?B?RHVVbmNYZWJkV2VZMXlXaUZxOGRXd0laY1RlcHNUNkpMWWs3bTk1K04ybkF4?=
 =?utf-8?B?MFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5F454453CF48184E8BFB0F948821973F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e8ec7b-23f6-4c72-5647-08dc27e068ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 13:26:36.6119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E4/awLd61QWAPJMF0v1l/2xgEy6ohiVvg1JKfLwJVCgzII9Je0JJquff4T+shq6dESZ9ROkbntNkCW2dCgY9yGRN28eKvgdiZFka2/5+Vng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5929
X-OriginatorOrg: intel.com
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

T24gVHVlLCAyMDI0LTAyLTA2IGF0IDE3OjM5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFBy
ZXZlbnQgYWNjZXNzaW5nIHRoZSBIVyBmcm9tIHRoZSBTRFZPL1RWIGdldF9tb2RlcyBjb25uZWN0
b3IgaG9vay4NCj4gUmV0dXJuaW5nIDAgZnJvbSB0aGUgaG9vayB3aWxsIG1ha2UgdGhlIGNhbGxl
ciAtDQo+IGRybV9oZWxwZXJfcHJvYmVfc2luZ2xlX2Nvbm5lY3Rvcl9tb2RlcygpIC0ga2VlcCB0
aGUgcHJldmlvdXNseQ0KPiBkZXRlY3RlZA0KPiBtb2RlIGxpc3Qgb2YgdGhlIGNvbm5lY3Rvci4N
Cg0KSSBkb24ndCBzZWUgd2hlcmUgdGhpcyBpcyBkb25lPyBOb3Qgc3VyZSBpZiBsb29raW5nIGF0
IHdyb25nIHBsYWNlLCBidXQNCkkgc2VlIGl0IHRyaWVzIHVzaW5nIHNvbWUgb3ZlcnJpZGUgZWRp
ZCBhbmQgaW4gY2FzZSB0aGF0IGZhaWxzIGFzIHdlbGwNCnVzZXMgZHJtX2FkZF9tb2Rlc19ub2Vk
aWQ/DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMg
fCA0ICsrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiBpbmRleCAyNTcxZWY1
YTFiMjExLi5jY2VhMGVmYmQxMzZmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nkdm8uYw0KPiBAQCAtMjI4Nyw2ICsyMjg3LDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlDQo+IHNkdm9fdHZfbW9kZXNbXSA9IHsNCj4gwqBzdGF0aWMg
aW50IGludGVsX3Nkdm9fZ2V0X3R2X21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IpDQoNCkkgc2VlIGludGVsX3Nkdm9fZ2V0X3R2X21vZGVzIGlzIGNhbGxlZCBmcm9tIGludGVs
X3Nkdm9fZ2V0X21vZGVzLiBXaHkNCnRoZXJlIGlzIG5vIG5lZWQgdG8gZG8gdGhlIHNhbWUgaW4g
aW50ZWxfc2R2b19nZXRfbHZkc19tb2RlcyBhbmQNCmludGVsX3Nkdm9fZ2V0X2RkY19tb2RlcyBh
cyB3ZWxsPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gwqB7DQo+IMKgwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2byA9DQo+IGludGVsX2F0dGFjaGVkX3Nk
dm8odG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOw0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoaW50ZWxfc2R2by0NCj4gPmJhc2Uu
YmFzZS5kZXYpOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3Nkdm9fY29ubmVjdG9y
ICppbnRlbF9zZHZvX2Nvbm5lY3RvciA9DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgdG9faW50ZWxfc2R2b19jb25uZWN0b3IoY29ubmVjdG9yKTsNCj4gwqDCoMKgwqDCoMKgwqDC
oGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlID0gY29ubmVjdG9y
LQ0KPiA+c3RhdGU7DQo+IEBAIC0yMjk4LDYgKzIyOTksOSBAQCBzdGF0aWMgaW50IGludGVsX3Nk
dm9fZ2V0X3R2X21vZGVzKHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpDQo+IMKg
wqDCoMKgwqDCoMKgwqBEUk1fREVCVUdfS01TKCJbQ09OTkVDVE9SOiVkOiVzXVxuIiwNCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+YmFzZS5p
ZCwgY29ubmVjdG9yLT5uYW1lKTsNCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9k
aXNwbGF5X2RyaXZlcl9jaGVja19hY2Nlc3MoaTkxNSkpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gKw0KPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4gwqDCoMKg
wqDCoMKgwqDCoCAqIFJlYWQgdGhlIGxpc3Qgb2Ygc3VwcG9ydGVkIGlucHV0IHJlc29sdXRpb25z
IGZvciB0aGUNCj4gc2VsZWN0ZWQgVFYNCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGZvcm1hdC4NCg0K
