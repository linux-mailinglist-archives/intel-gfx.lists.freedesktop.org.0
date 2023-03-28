Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1C26CBDDF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B4510E864;
	Tue, 28 Mar 2023 11:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A15810E864
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680003352; x=1711539352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cY3eNCFeWwOFXUKGnWp8IdbsPXk1k1iTD2GyRsRVvr0=;
 b=Ebue1rOEQROzx4NEUvY76qZr+V3BnKAe7QXVy/jqic+4b0uAPCtvtCgQ
 ju20tSi9vkW6+qAiJcnTYIRphgaHR+gWAHCxWo15jDCUVy62SeRciDtCq
 h/DFEFB7V+A5YrZF0yQDBFq1Ep3M9/yWLPymG3WBLjfp5BNJjllMtd+oj
 B9DPoweWw2L2zk9XzgI4//Ji9YzQzQO2tKiyOqPdp0Lgj3782q016OQy5
 rbP3qvSWvb01RbYq0alfO6BqfIAviQbxj7OjsEBCRUyKTmwn6UdcATKcF
 +VsjJzi+wLVnWi1NuuSVVwQWguShJXFmGQekaR0/aW05JRL8nesx9Pwoe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320193248"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="320193248"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:35:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686395163"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686395163"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 28 Mar 2023 04:35:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:35:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:35:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 04:35:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 04:35:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZznlKENmWaehddfoN1/7+Vc7BgqsW2HWjHj75nrptJUzBEd6pjaehCimuq8V3B2pTSK0fZi9a8Ox4gZIWodg8gYDZJoEVA1iBMDfKDHnLwXe1auVpofRLWiJmsXYuKBNoipwcVf1OXhPt82Fvm0YwaQGZuuI77P9wo/+rbN1Uco88f14apBufU0HyhoH2AyXK8T+61E5prXu+4U9pI0ZZG3QHD204q10lUQ7eXhJmjiC9nlYRYfFRCnd730cZUY0zkjzmcMyoP8ipaEowbFuwsr5wCwlr/mWZ89w8mSCdjLIzkFBEpRqECf+uwWbp4y0O/WF6rCx/9SbkMHOT0GSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cY3eNCFeWwOFXUKGnWp8IdbsPXk1k1iTD2GyRsRVvr0=;
 b=OmEPwUlDvt5U/ECTP1EPLxfe/1Sv82WafTMijtVny7j23qbRm5H2NPvK8edOQ45xQe8GkW4Frb3TvpBnrCj2bOQ7tr9Ivsz1gg0ESEmKplVVO8AvuA1HM/DdnIz/H3AUwQgk/iOcqilwYi7/Ds+/pySydMcG++cQzx3/XbGuDER8Ee3Fao28RxGX4aftdEqwuHWJH3teFHZymRpQOtFXa3FIdYZ0OneTE3Fe3dIB4UizNKsmy1CTl6be4EtJMCi+/gE+0qQKoFsSTornGk3Lg6hkbxXyXYQ+ixLARz16THQSidt1BOadHyBw+FSy2ZHH7OiEOM4sW7gUhYyWXYY+GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6972.namprd11.prod.outlook.com (2603:10b6:806:2ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Tue, 28 Mar
 2023 11:35:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Tue, 28 Mar 2023
 11:35:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 6/6] drm/i915/psr: Implement Display WA
 #1136
Thread-Index: AQHZXKnwY/vUCXR8m0yV3iX3Od+uja8QFuqAgAACmgA=
Date: Tue, 28 Mar 2023 11:35:41 +0000
Message-ID: <7af8dc5fadd12ce166428eed859644f1c55b6254.camel@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-7-jouni.hogander@intel.com>
 <ZCLO3ZN8TC3ZpwAj@intel.com>
In-Reply-To: <ZCLO3ZN8TC3ZpwAj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6972:EE_
x-ms-office365-filtering-correlation-id: a91d3a88-fc98-45c5-bac6-08db2f808fee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G0rHx/C2LmTaKk2Y0Paii7flOikOHuG89n6Cx+Xj2zdf3fm5OiV0m/ykLM/wehGd+Wzstki4GohVy/sh/rXGCu2a0rGG+NqQb8yEvHDBjlZzzNrJ+IiuzRTrbYsKknzvqug1b/wSPHOM91tqdZwX3c7pa4FUlIprXKIws4DNxm0A7vM59hmMBzF5kyTfRU6tu5UvNpVNPbSNL06z2IAwMp8zQqNwEU/y4ZcSOQXP6RFcybhh9nEqO4syOt3SJSeC1PHIoTfeXSJXMUc/88+4j/pCFIueiBzBb+t+OCcBDa9IN5v+XVPQ8taaVTPhYLE8gi++GiR1qK6HEhrVq3nEX1CqvB4dlV9ObkSVg/pqedMfgOJ5UKLkIPueWied4OxsU++W/t0m82QBpyYr6695xoC1i5UbSwBgKmDhVGXKKk/yhIdngiplCwCCfWznEzFjgcD3q9b1qGE5oyzZrAj0wd3WZZ4E6/OXYfjFI8qRK+ExkT4I3X2gZuML7vsWDoEznuGW3/uuRYAYujjF7FvBY5/XL5/q0FwjOdFarlIlMIFPxm4tUkIbeRYO0GOveTXdf3dOjMLZ+aW9+LRIcQc4W2MGxlEuIluxHUcriIrgPO6aDiYKq6M0duRl+ZNfzv9T
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(396003)(346002)(136003)(451199021)(6916009)(66446008)(38100700002)(38070700005)(122000001)(36756003)(66946007)(86362001)(64756008)(66556008)(66476007)(8676002)(76116006)(316002)(91956017)(8936002)(5660300002)(2616005)(41300700001)(186003)(71200400001)(6486002)(478600001)(6512007)(6506007)(26005)(4326008)(82960400001)(66574015)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YloxdTdDTkU1Skkya0gzK21zSUZLQ09KSi9NZlFWNmlwNGRyT01MbGlWbEdL?=
 =?utf-8?B?cWk2d0NHYUhjbkxkcmNVK215ajg0ZGdFcjdUaGhvcFRDMFVOQm92ZlB1elBu?=
 =?utf-8?B?b3ViaTZUMVEvSXRFa1pBQ1pBNVh6Z3ArNldkRlRKV0pQN2VZdDFxbmJ5eHJW?=
 =?utf-8?B?c2xCN2J5N1BpVTcrT2JpOTlpYWQ5TFpHTWNvVGYxM21ab0FwRk9PNGN3Z0VT?=
 =?utf-8?B?eGZVbjQ0Mm05WjV5YXMwQy9FNkFNdjRuS2oxQlMyQkFYNGRROEhVVzBJMTB5?=
 =?utf-8?B?cVcrRmh2L2lMcDA5SmpUcS9HQmRjMmMvdWV3dXVVK0dpVzgwQnNoQWcrb3lF?=
 =?utf-8?B?Mm1LNy95NWlOYWtQdSt5cTZwUDkrcHpJTlRXWUhJY29NSmZkeVFSWmFEMk95?=
 =?utf-8?B?MVhSMTNneEJ5cm1ReGdLQ3JZdFlHMkIrZVMvVjF6RnVReVhVcnJsVkhBeWc3?=
 =?utf-8?B?UVFoYVp2TmpMcHE1bnQ2T1M3VG9Nb2tUaTVvZldiWGxPdHNIc0VLcVBnNHZm?=
 =?utf-8?B?cXQ2Tmg3aXRId1p3Zm9ZM1IzVVRmMWV6ZVBwZ3dVY1Q0b1dIbldIYUMxbjhx?=
 =?utf-8?B?VnBJU2dXeUF0RmpPcFVZbGh2RjFyWEZpU2JMMlNRZkxhaTBCTlhJT2VqSnl0?=
 =?utf-8?B?RzBxdzF3Y3k2eTBudTlZT1BmL0NaZVliVFlxM0pkZktNbEx1SWc1a3Z6aExh?=
 =?utf-8?B?L2FXUjdYZ3E0RzIvYU1XWktNN1liaE1JWnNiUy9PT2xPclQxc3Fld24yczh5?=
 =?utf-8?B?N2JkWC9JbGpzMWtObldUdDlmZkRkdExwWFJJUXV2cURXT0RHVlYrTisxalpi?=
 =?utf-8?B?SHZud3NMTFhnMHhXai9DM2NOSnRvdFFUS0x0dU9MODRmMjViRGY5blhqcVR5?=
 =?utf-8?B?Y21VRGc1SG5wdktmM0hPZHEyR1ZKR0txdytyZTNBZXBHNnFtWCt6akUyeWl4?=
 =?utf-8?B?dG1RZk0xdjFVUkVXdGNpaFd0RCtLR0VaVjV4aG5sRUFPOTBycHEraTQzOTY0?=
 =?utf-8?B?RUQvaWJzdTlsRG9NdHVMK0NPN0hybjdzblV1R1BlTjhaellFYTlMMm9peHdU?=
 =?utf-8?B?d1MwaVAwckxPbTdyeHRSS1gwMUt6R3AraDZFNG5PTEQ4ZlVlSlVkcWpVUThY?=
 =?utf-8?B?b2VUeWFHbnJ2SGs4d0ZFU3A3Q0tiTDl2MEV6enNjYlljaGZMc1J6NDF3Z2dN?=
 =?utf-8?B?K2RHNWxrdlpCZnVxTTV4QmZTVGdhbkZDUi9jUjZYcnRrWGx3OElRaU1SMy8v?=
 =?utf-8?B?RXdVQ054RERTZC9KSXQ4bUc1ckhnNW1vQjlVeG0xeXFsaW81WjZrd2tabUk4?=
 =?utf-8?B?bnlLRWVtVUM5Z0xTL0FGajhkQWJFbE04TzFscWNXZ3dUa2hwK0VPdFdqdFU5?=
 =?utf-8?B?SVVld1loam1FYXYwYUYwU0dqMkxZQ1pwaUFnZXMzRjljRFlvY3ovbWd5SEJk?=
 =?utf-8?B?NDZndXFiTDV5MCt0QW9ZbENOdytpeGJFV3lkT2l6Y2Vic29TVlI3QXRpTGV2?=
 =?utf-8?B?SUg5TTV2ZGIyTmRtOW9GY3VRS2c3eWE5eGYrMWpidkhjOVB2VFBNTWZKUldk?=
 =?utf-8?B?cUtyQW5WZHM2TmtzcEZZR1lENE43OWQ0bXBCbExoTEF3WGhQdytzNFVoTnpV?=
 =?utf-8?B?YmJRbWVWaHgvdC9WR25pYTJTdzU4NTkrRi81UEcraldLUEV6RjF3cnd6WnVB?=
 =?utf-8?B?WXJTaU1jL2M2VE5nOG9FcG5abWdpVU5uY0cwWm9oWmdVSFA1YkxOajBCYW1r?=
 =?utf-8?B?YjhMTXRFcTJqUFV3SjIvYTFJa2lpMkNJSmlUQ1BwN05rQis1UC95R25VNitB?=
 =?utf-8?B?ZGhuWERURFhOUVdzcHE3OXkxb1JYMTVwNzNHdmhTYVU2cFpFVTgrMGNoVXg4?=
 =?utf-8?B?c0JtNWM4aUNvYUU0ckZ2NE1XZHFML3JrWTVGTlVUWHdGeGZBYmZ0Skd2Q2RF?=
 =?utf-8?B?Tm9RUk4zWm5ERHVSa0Z3RDZHckRSeE9HZ2Q5VDZSQlZCSXh6UittbVJFaTRY?=
 =?utf-8?B?UmV4YmxVRzFEWFRwQ1NLZ3RwWlF6b1JHQ0didHFBa1JObTRXTXNjVGxHVm9q?=
 =?utf-8?B?Ykc3T2I3d1IyMTRiTFQyVENBeVhxcGRiVm1uU3hDb2QveWg3UnhJS25FYzNk?=
 =?utf-8?B?N3FXS0lTSzdpdzdrc2hEakN1Q0ZVVkdCR3RtcGZ3RHlxZmlMaWdzeXRPeFNm?=
 =?utf-8?B?VHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <56F44020887D74439729663C99E03CCC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a91d3a88-fc98-45c5-bac6-08db2f808fee
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 11:35:41.9659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bt3y8308SR/VmZWATxO2dGQH1Nd4yag4BHeNvOz82UdxhLv7GiDhXk5HYZaf88x1LzuASKC/5X/dkWy79o/Ai6nkfC1K3Sz7d9wGIDJ+VOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6972
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 6/6] drm/i915/psr: Implement Display WA
 #1136
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTAzLTI4IGF0IDE0OjI2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MzQ6MTJQTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gSW1wbGVtZW50IERpc3BsYXkgV0EgIzExMzYgZm9yIFNLTC9CWFQuCj4g
Cj4gCj4gPiAKPiA+IEJzcGVjOiAyMTY2NAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqAgfCAxNwo+ID4gKysrKysr
KysrKysrKysrKysKPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMgfMKgIDUgLS0tLS0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiBpbmRleCBiNTNjNzFjMDYxMDUuLjI0YzNmNzViYjlkOCAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IEBAIC0xOTUw
LDYgKzE5NTAsNyBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdAo+ID4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+IMKgLyoKPiA+IMKgICogV2FfMTYwMTM4MzU0
NjgKPiA+IMKgICogV2FfMTQwMTU2NDgwMDYKPiA+ICsgKiBEaXNwbGF5IFdBICMxMTM2OiBza2ws
IGJ4dAo+ID4gwqAgKi8KPiA+IMKgc3RhdGljIHZvaWQgd21fb3B0aW1pemF0aW9uX3dhKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4gPiAq
Y3J0Y19zdGF0ZSkKPiA+IEBAIC0xOTU3LDYgKzE5NTgsMTcgQEAgc3RhdGljIHZvaWQgd21fb3B0
aW1pemF0aW9uX3dhKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwLAo+ID4gwqDCoMKgwqDC
oMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgc2V0X3dhX2JpdCA9IGZhbHNlOwo+ID4g
wqAKPiA+ICvCoMKgwqDCoMKgwqDCoC8qCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBEaXNwbGF5IFdB
ICMxMTM2OiBza2wsIGJ4dAo+ID4gK8KgwqDCoMKgwqDCoMKgICogc2tsL2J4dCBkbyBub3QgaGF2
ZSBjaGlja2VuIGJpdDogZGlzYWJsZSBQU1IKPiA+ICvCoMKgwqDCoMKgwqDCoCAqLwo+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8PSA5KSB7Cj4gCj4gSWYgd2Ug
bGltaXQgdGhlIGNoaWNrZW4gYml0IHRvIGljbCsgZm9yIG5vdyB0aGVuIHRoaXMgc3R1ZmYKPiBu
ZWVkcyB0byBiZSAnRElTUExBWV9WRVIgPCAxMScuCj4gCgpPaywgSSB3aWxsIGNoYW5nZSB0aGlz
LgoKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+
d21fbGV2ZWxfZGlzYWJsZWQgJiYKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50ZWxfZHAtPnBzci5lbmFibGVkKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHAp
Owo+IAo+IFRoaXMgc2VlbXMgbGlrZSBpdCBzaG91bGQgYmUgcGFydCBvZiB0aGUgcHJlX3BsYW5l
X3VwZGF0ZSBwc3IKPiBkaXNhYmxlLgoKU2VlIG15IGNvbW1lbnQgYWJvdXQgaW50ZWxfdXBkYXRl
X3dhdGVybWFya3MgYmVpbmcgY2FsbGVkIGluCmludGVsX2Rpc3BsYXkuYzppbnRlbF9wcmVfcGxh
bmVfdXBkYXRlIGFuZCBwcm92aWRlIG1lIHlvdXIgb3Bpbmlvbgp0aGVyZS4KCj4gCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+ID4gK8KgwqDCoMKgwqDCoMKgfQo+
ID4gKwo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzE0MDE1NjQ4MDA2ICovCj4gPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKElTX01UTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBf
QjApIHx8Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0RJU1BMQVlfVkVSKGRldl9wcml2
LCAxMSwgMTMpKQo+ID4gQEAgLTE5OTksMTIgKzIwMTEsMTcgQEAgc3RhdGljIHZvaWQKPiA+IF9p
bnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZQo+ID4gKnN0YXRlLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBrZWVwX2Rp
c2FibGVkIHw9IHBzci0+c2lua19ub3RfcmVsaWFibGU7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGtlZXBfZGlzYWJsZWQgfD0gIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7
Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIERpc3BsYXkgV0Eg
IzExMzY6IHNrbCwgYnh0ICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKga2Vl
cF9kaXNhYmxlZCB8PSBESVNQTEFZX1ZFUihkZXZfcHJpdikgPD0gOSAmJgo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT53bV9sZXZl
bF9kaXNhYmxlZDsKPiA+ICsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KCFwc3ItPmVuYWJsZWQgJiYgIWtlZXBfZGlzYWJsZWQpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChpbnRl
bF9kcCwKPiA+IGNydGNfc3RhdGUpOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLyoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogV2FfMTYw
MTM4MzU0NjgKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogV2FfMTQwMTU2
NDgwMDYKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBEaXNwbGF5IFdBICMx
MTM2OiBza2wsIGJ4dAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgd21fb3B0aW1pemF0aW9uX3dhKGludGVs
X2RwLCBjcnRjX3N0YXRlKTsKPiA+IMKgCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiA+IGluZGV4IGFmYjc1MWMwMjRiYS4uY2VkNjFkYThi
NDk2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0
ZXJtYXJrLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jCj4gPiBAQCAtMjI3OCwxMSArMjI3OCw2IEBAIHN0YXRpYyBpbnQgc2tsX3dtX2NoZWNr
X3ZibGFuayhzdHJ1Y3QKPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPiDCoMKg
wqDCoMKgwqDCoMKgICovCj4gPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+d21fbGV2ZWxf
ZGlzYWJsZWQgPSBsZXZlbCA8IGk5MTUtCj4gPiA+ZGlzcGxheS53bS5udW1fbGV2ZWxzIC0gMTsK
PiA+IMKgCj4gPiAtwqDCoMKgwqDCoMKgwqAvKgo+ID4gLcKgwqDCoMKgwqDCoMKgICogRklYTUUg
YWxzbyByZWxhdGVkIHRvIHNrbCsgdy9hIDExMzYgKGFsc28gdW5pbXBsZW1lbnRlZAo+ID4gYXMg
b2YKPiA+IC3CoMKgwqDCoMKgwqDCoCAqIG5vdykgcGVyaGFwcz8KPiA+IC3CoMKgwqDCoMKgwqDC
oCAqLwo+ID4gLQo+ID4gwqDCoMKgwqDCoMKgwqDCoGZvciAobGV2ZWwrKzsgbGV2ZWwgPCBpOTE1
LT5kaXNwbGF5LndtLm51bV9sZXZlbHM7IGxldmVsKyspCj4gPiB7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGVudW0gcGxhbmVfaWQgcGxhbmVfaWQ7Cj4gPiDCoAo+ID4gLS0g
Cj4gPiAyLjM0LjEKPiAKCg==
