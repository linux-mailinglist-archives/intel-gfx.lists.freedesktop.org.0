Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD256BDD22
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 00:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDB610E310;
	Thu, 16 Mar 2023 23:47:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793F310E310
 for <Intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 23:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679010431; x=1710546431;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Iss+Pf8tSiRKnuh8+32UoPAbLsLXZqxWjzRKys8lKn8=;
 b=RRPcpFTc/1M8sVS4at+peo0eSyi0njBH2izrX0xa7WT6wCF7MNCtlHOz
 3L0sC+erNYYpvoZ/Mbed3rshkfIa/CGM0kKQL3yq/ewaps/Dm3wy8Dyr5
 mCeYwYRs8MCTSoOCzQ8vTVGkwmb+RV2qMsL8v2s5iyWrVR2IjFrUdR9R4
 j6gTxf6Hql5YPSd5fuM26aWCjrQ0gUm0Qa/THuw+Hppil59hS69+pRqDS
 ximEMWYnd7boGBZdZCF6Rgylx2G7oniCEbS3sTplq3OsZbbtwtmGb042c
 OoPqWX5UflVtwOCpP20p2ALQPi7xgjqhYhRACc3DAatFIx7PmBptY7Xtx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="336831635"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="336831635"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 16:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="854243854"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="854243854"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2023 16:47:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 16:47:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 16:47:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 16:47:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 16:47:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JATPqCbO2KWBLsfdMJh1WwCPHmBUYauOzkBsRQsvBb3CoCEDOPg6PjCod9Z4UGRrC5hUYMlLBA3D9Mjolfz3FYe/7Cq/2+6oNMRy8VbNofuz6zpYsHHEbPJupsviReCQtf5kmE7ZGJkJlBSLyZY369heV/jr1ZAWgaw1rPPnre+VT5Tf3+RIGUf2cvV4ULxX+lTZ4HSushqQyi166rJn9KzbivU7yy3NJPavjjSCTiw7lQ9g80SDPQZuDUjNbGoXe3PAOFhEblwr0YzKjlJAAtGQV9ojfxHuaBCWtdkcAixI6Wu6gFxDbTqH1L+0B8oF/s2jzpZWRY2eQRBpATXu+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iss+Pf8tSiRKnuh8+32UoPAbLsLXZqxWjzRKys8lKn8=;
 b=lqCDhuH5Via0zi0+Fq9VJDaWDeUEF8EAysSrcVZ1a1dE/HAS+LNwdkjqbvYuWwFQZMcQAtSyo10gXWdHrV8wwKLvNsUE2Q9hz3IUkZIuSGBqeF/S3joOvb5SvKbeUUQ1LVgnlzEVZaXXR7kmaTIyw3E1rvMVwiyC0t1n35yEthSqyuSUcWBtSMDQ3U3ALtDBf62F0Nl+Ea9zVwSwUvAlgh1Ju+IVmtG0UrqFYH1kgm1lsAaSL3oFODuj7UqsC239zpZYwRFjqZFfx/TnrTEGPktc/8kQ+qsAEkEoOFOM7kTlGnVLNd+1GKt9x1JD+kNctxzNaaPKlZ3HeFH8gEBSkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Thu, 16 Mar
 2023 23:47:08 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::e5c0:751e:3e59:75fc]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::e5c0:751e:3e59:75fc%4]) with mapi id 15.20.6178.033; Thu, 16 Mar 2023
 23:47:07 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Audio keep alive timestamp
 cdclk divisors
Thread-Index: AQHZWFC810fuTRuSO0mQh3xHo4iVZK7+Er6A
Date: Thu, 16 Mar 2023 23:47:07 +0000
Message-ID: <7e6d8bf4b5ddd2c4dc8c2fe8a56c7193b6868da0.camel@intel.com>
References: <20230316214611.3779575-1-clinton.a.taylor@intel.com>
In-Reply-To: <20230316214611.3779575-1-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|SA1PR11MB6870:EE_
x-ms-office365-filtering-correlation-id: 0c307da1-6338-40a9-ff8f-08db2678c0f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pa04eFHHAY/PUiR33KcQdQHOx+V+azlIJ1fOz/55pLEuCrNl9x/ozt7Y/f+hutFPee0Zhu+ojBDVNPDMDTll+kJjzbFMZ+UuQHMY+dPD/SIMR3pbyohDac0PcpJi5vBsV7eu6LKpafIYzNNonsskRihyyvr4IPpEbFt0znIPTCT4FTbpNdSvzA5EFRfrwdgZ+8SFhcTmCHUeUZZKUG3BSbrA3EIwh2VZvG7aHF+JZVwwp/JmRgyrnTNsvsK7Eb9o7ugdNXTTCZqr5dzEGt8zz3FZnPUoyzz39QA6nqnP6dmCy8A0/PmYJVnkLCde15m56VWfyIJwGRJJNfckDA4/RBnvY6OEaZ6qhfqlSwB7g+1hjH1n199UiDvOgHQ81dQooN3+7AAvSQYSgptEYqn5kJC0C/c+33CpmjrhYyOtBR0Gy56Bp2I3svY9yntM8MNABYDm8YiaP7X5q0Vkn8NBeFAhsA7gZISI7N8k8RmnAExX77827+k1PstkeXEKUHoI0eWKj1w9Fe2F5VChtxGxxCZimebZuBZgxjh1SU7BHLuKeAZ4UAyIKdPeDacRt3VqMdX6+nflf8Ve6na+v6rVE3Mc+9XeWhasAwvuHHs0G7D6GYqeI+wksrJJkmFce1Td9p4dDCsr5T9a2tMEAGPC5OR7DZM1cqyKSYSTpzEz21dmRU3Qd1xUudcpz8Gaojb20jh/N4Aio0QXBNp97lb7IA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(39860400002)(396003)(366004)(451199018)(41300700001)(5660300002)(8936002)(2906002)(122000001)(82960400001)(86362001)(38070700005)(36756003)(38100700002)(478600001)(71200400001)(91956017)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(6916009)(6486002)(66574015)(83380400001)(316002)(26005)(186003)(2616005)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFJtdGhGNDN2N0M1K2JJbGhGTHVhRUFyRUtuUDFJWmxhbnJxdEpldFB2Vkha?=
 =?utf-8?B?UE5oN24wMGwwWmpuNDVmWGVqZndMeEtUTEFCL0VMNEhRMEVwaVpxdkhIUElX?=
 =?utf-8?B?Q0tkNnNLS0RvWURsUDZCWm91K2xVNE9HeW9GUTI3WjNXaS96SFN0QkVPMXFQ?=
 =?utf-8?B?SzY5S0ZDVm1YUkhjaHRBSzZONXNHVkF1M3BveE5JZDg5TFdrRjJleGErckhx?=
 =?utf-8?B?VkNWQ2M5d0p0UllsVFl1MWc1a1JVbnRLUW9teXlXMlNBZVhRNE40RkQvV0tQ?=
 =?utf-8?B?UlA2VDNpM1VYRXdlV3d0cUU4V2tMK0cvY0h2eENpRDR2ZkpJN2VJU0tpV0sz?=
 =?utf-8?B?eUs4U0JhOTJQUU41d0djR0RlWkRSNWh4dGFZN1lBdkQrL1ZVQlUraHQ3bDM0?=
 =?utf-8?B?RSszZDJST3h1LzV2Z3VxK0pRbi81ZGNkWEoxRmpnTUd4bFZRK1ljbVRpcjBl?=
 =?utf-8?B?a3czZlpZMFNtdW14bVZCcVcyZG82ZmpTcG83SWNIZ3oyK3V5bmR1YUVpUTdw?=
 =?utf-8?B?d1liWTUzNUhwQjZqSWszSE55R1hVUEpWV1cxeUl4UXhLQ2pDZWIweHBhZzdF?=
 =?utf-8?B?M2w4US8xVG1hc0t6d3hnTGlvM21sTFdRSUtES1hJMmhnd0Q2cXVIc1hhbHBG?=
 =?utf-8?B?YlZiQnZnOG5XNklZaEZmeHUybUZIRUFxQ3o3bFRZajNlU1QrUjRyaHhjMkJk?=
 =?utf-8?B?QWtkc0lZeFRla0EyZTdmMk4zWlRkVENaeUpNUmlUR2N6ODdudXlubGlNWkky?=
 =?utf-8?B?UW1ENS9BNHhkcHkrV1VlNDBNZGE0SHhmcFNYVlFSaTZHYitCaHptUmFtbEdv?=
 =?utf-8?B?M1g5VWlwU0h3VG9CZzhxN2ExV0E0SFJoTG9sQ1B1WWVSWVJBWHRpQWdQY2ll?=
 =?utf-8?B?SWs3YncrV2ZCemtRTTdWTW14SWhHTWhMNFordkwzbFdsdDAySyt1b3E1aGtl?=
 =?utf-8?B?eGlBY09jRmJjanQrVGtkSVB2L3J2OFFGTVBUMUsxbTA3aFEvWk9ROXlPQ1dv?=
 =?utf-8?B?VDlZbE90UGdCWjFNS3MxWlgzSDNlTTgyOTRKSTB5Zm9CWUZrSEVuT01WdlN4?=
 =?utf-8?B?M0l6ZFZ6dDlkZEFRRGlaT3MyMk5sckJtL21FMWtuN0YrS1JlVG5uTldGdmYz?=
 =?utf-8?B?T1NVZ1E5SzRGdktEcjZhR1NuRGJac3Y2Y2VFbVROemNjUkFpK2xlUDRha1hS?=
 =?utf-8?B?OXFSbm9QSzF1YlF5ZDJGRkVGTmRvaUZESjJQeEUxcDFQSEV5NjVHSWduK0Vx?=
 =?utf-8?B?clViNTRvNFI0SzZ6d1kxN3FEK0pjYVdvV0VFY21kemd1VnhMSGxpV1RHME5l?=
 =?utf-8?B?Q0d3UG1ySWpUM2RXRHc4amF3SytBRWFZYWpDSWxZZk5oTDB4ZWUzSDNoNzR6?=
 =?utf-8?B?WmtyQXVwQlRRajZ3alR3TEhlRS95THZYd2cxOUVaNnh0d0RDM2U4bFcycUZZ?=
 =?utf-8?B?Vm1qRDdxUEtDTUphS2FnZkhhcGtrRkJHZ0tESXo3aDlGMHJwbEo5MG9tU3F5?=
 =?utf-8?B?QTllTjZxTVZDcHhxRnQrV2FmRU9QSG4xK201M2FSOGNacTBmU1dPdVFkRlVr?=
 =?utf-8?B?L3pMbWYyVWlzY1JvMnVNKzNXOVQxWk9iakdnRkczRkIvdmtMZHlPaHlXNys1?=
 =?utf-8?B?Mm5OaFltVCtvOTFjZUk0RW1CVkE3TmpCL0RVbkpBOU1MZ3hpMVJUZ2c3TFZv?=
 =?utf-8?B?Y1p3MURDbkJiazczZzYzMGFWRlFwY2JVK2V2Wkk1bkRKd2RBWWltTGtwSy9z?=
 =?utf-8?B?M0owbFF6b3lrbXEwVFRCSm1YdTN6M21nM1hEaEovNjQvanBkclRyRGplYXlh?=
 =?utf-8?B?NCtFTHpoR205WVdubFppTWorTDRoQmk3bk54ZHNBYlJuNm96dUUyRExrV003?=
 =?utf-8?B?YW96eWhyYm5CcGM0Z1UvOUlqbFV1bDZ2UzlkakJpcEdCNTdRZDNBQzlmQWQv?=
 =?utf-8?B?eHIzQzhaT1JmcDUvS2QxbVR6ZVp6VUV0ZXJjM2duZmRlMFZzcjZxVTBzTjRo?=
 =?utf-8?B?c3Q3cmJDVlYrYXMxWWk5NDdHTzdibTFRU0dTUXVsMnJGSjNBY0JqRHJkazJn?=
 =?utf-8?B?V0FxcG9hTzQxNFlweVR1anhPZkY2ZUpBNDRCSFVycDdtLysrTmdiOUhoZ3pH?=
 =?utf-8?B?c2JaNDVVSkRPMElpdDJyQW8rL2dHYkZkOU1SU3dkVi9iR0VOK3ZDOE94RWpq?=
 =?utf-8?Q?SnyT5EoWgxnzfJaVMeAEIBQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <68FC481277F1AC4ABED2204B13AE65DF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c307da1-6338-40a9-ff8f-08db2678c0f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 23:47:07.7972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g7cQpSfOfIVePSB8aTnAojDP4gUJCCJjGGT0SMX8Ul4qGX2yNjQha26Os+njOEcYaLb7IYYfABp5WcfhGnNPUUkwgQ4RAcokaDOq8WUUOTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Audio keep alive
 timestamp cdclk divisors
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

V3JvbmcgcGF0Y2ggc2VudCBpbiBlcnJvci4gUExlYXNlIGlnbm9yZSB0aGlzIHZlcnNpb24uDQoN
Ci1DbGludA0KDQpPbiBUaHUsIDIwMjMtMDMtMTYgYXQgMTQ6NDYgLTA3MDAsIENsaW50IFRheWxv
ciB3cm90ZToNCj4gRnJvbTogIlRheWxvciwgQ2xpbnRvbiBBIiA8Y2xpbnRvbi5hLnRheWxvckBp
bnRlbC5jb20+DQo+IA0KPiBVc2UgQlNQRUMgdmFsdWVzIGZvciB0aGUgQXVkaW8gS2VlcCBhbGl2
ZSBNIGFuZCBOIHZhbHVlcyBhcyBpbmNsdWRlZCBpbg0KPiB0aGUgY2RjbGsgQlNQRUMgcGFnZXMg
Zm9yIGRpc3BsYXkgPiAxMw0KPiANCj4gQlNQRUM6IDU0MDM0LCA1NTQwOQ0KPiBDYzogS2FpIFZl
aG1hbmVuIDxrYWkudmVobWFuZW5AbGludXguaW50ZWwuY29tPg0KPiBDYzogVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFRheWxvciwgQ2xpbnRvbiBB
IDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgfCAyMyArLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCA3OSArKysrKysrKysrKysrKy0tLS0tLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggfCAgMSArDQo+
ICAzIGZpbGVzIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDUyIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYw0KPiBpbmRl
eCA2YzllZTkwNWYxMzIuLmNiNDViZTVlZGZlYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYw0KPiBAQCAtOTQ1LDM3ICs5NDUsMTYgQEAgdm9pZCBp
bnRlbF9hdWRpb19ob29rc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gIAl9DQo+ICB9DQo+ICANCj4gLXN0cnVjdCBhdWRfdHNfY2RjbGtfbV9uIHsNCj4gLQl1OCBt
Ow0KPiAtCXUxNiBuOw0KPiAtfTsNCj4gLQ0KPiAgdm9pZCBpbnRlbF9hdWRpb19jZGNsa19jaGFu
Z2VfcHJlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAgew0KPiAgCWlmIChESVNQ
TEFZX1ZFUihpOTE1KSA+PSAxMykNCj4gIAkJaW50ZWxfZGVfcm13KGk5MTUsIEFVRF9UU19DRENM
S19NLCBBVURfVFNfQ0RDTEtfTV9FTiwgMCk7DQo+ICB9DQo+ICANCj4gLXN0YXRpYyB2b2lkIGdl
dF9hdWRfdHNfY2RjbGtfbV9uKGludCByZWZjbGssIGludCBjZGNsaywgc3RydWN0IGF1ZF90c19j
ZGNsa19tX24NCj4gKmF1ZF90cykNCj4gLXsNCj4gLQlpZiAocmVmY2xrID09IDI0MDAwKQ0KPiAt
CQlhdWRfdHMtPm0gPSAxMjsNCj4gLQllbHNlDQo+IC0JCWF1ZF90cy0+bSA9IDE1Ow0KPiAtDQo+
IC0JYXVkX3RzLT5uID0gY2RjbGsgKiBhdWRfdHMtPm0gLyAyNDAwMDsNCj4gLX0NCj4gLQ0KPiAg
dm9pZCBpbnRlbF9hdWRpb19jZGNsa19jaGFuZ2VfcG9zdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCj4gIHsNCj4gLQlzdHJ1Y3QgYXVkX3RzX2NkY2xrX21fbiBhdWRfdHM7DQo+IC0N
Cj4gIAlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTMpIHsNCj4gLQkJZ2V0X2F1ZF90c19jZGNs
a19tX24oaTkxNS0+Y2RjbGsuaHcucmVmLCBpOTE1LT5jZGNsay5ody5jZGNsaywgJmF1ZF90cyk7
DQo+IC0NCj4gLQkJaW50ZWxfZGVfd3JpdGUoaTkxNSwgQVVEX1RTX0NEQ0xLX04sIGF1ZF90cy5u
KTsNCj4gLQkJaW50ZWxfZGVfd3JpdGUoaTkxNSwgQVVEX1RTX0NEQ0xLX00sIGF1ZF90cy5tIHwg
QVVEX1RTX0NEQ0xLX01fRU4pOw0KPiAtCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiYXVkX3Rz
X2NkY2xrIHNldCB0byBNPSV1LCBOPSV1XG4iLCBhdWRfdHMubSwNCj4gYXVkX3RzLm4pOw0KPiAr
CQlpbnRlbF91cGRhdGVfYXVkaW9fa2VlcF9hbGl2ZShpOTE1KTsNCj4gIAl9DQo+ICB9DQo+ICAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRl
eCA4NmEyMmMzNzY2ZTUuLjU3MDIxZWNhZDUwOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMzcsNiArMzcsNyBAQA0KPiAgI2luY2x1
ZGUgImludGVsX3Bjb2RlLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+ICAjaW5jbHVk
ZSAidmx2X3NpZGViYW5kLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfYXVkaW9fcmVncy5oIg0KPiAg
DQo+ICAvKioNCj4gICAqIERPQzogQ0RDTEsgLyBSQVdDTEsNCj4gQEAgLTEyMzEsNiArMTIzMiw4
IEBAIHN0cnVjdCBpbnRlbF9jZGNsa192YWxzIHsNCj4gIAl1MTYgd2F2ZWZvcm07DQo+ICAJdTgg
ZGl2aWRlcjsJLyogQ0QyWCBkaXZpZGVyICogMiAqLw0KPiAgCXU4IHJhdGlvOw0KPiArCXUxNiBh
dWRfbTsNCj4gKwl1MTYgYXVkX247DQo+ICB9Ow0KPiAgDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2NkY2xrX3ZhbHMgYnh0X2NkY2xrX3RhYmxlW10gPSB7DQo+IEBAIC0xMzEzLDQwICsx
MzE2LDQwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyBhZGxwX2Ffc3Rl
cF9jZGNsa190YWJsZVtdID0NCj4gew0KPiAgfTsNCj4gIA0KPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9jZGNsa192YWxzIGFkbHBfY2RjbGtfdGFibGVbXSA9IHsNCj4gLQl7IC5yZWZjbGsg
PSAxOTIwMCwgLmNkY2xrID0gMTcyODAwLCAuZGl2aWRlciA9IDMsIC5yYXRpbyA9IDI3IH0sDQo+
IC0JeyAucmVmY2xrID0gMTkyMDAsIC5jZGNsayA9IDE5MjAwMCwgLmRpdmlkZXIgPSAyLCAucmF0
aW8gPSAyMCB9LA0KPiAtCXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSAzMDcyMDAsIC5kaXZp
ZGVyID0gMiwgLnJhdGlvID0gMzIgfSwNCj4gLQl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0g
NTU2ODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDU4IH0sDQo+IC0JeyAucmVmY2xrID0gMTky
MDAsIC5jZGNsayA9IDY1MjgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA2OCB9LA0KPiAtDQo+
IC0JeyAucmVmY2xrID0gMjQwMDAsIC5jZGNsayA9IDE3NjAwMCwgLmRpdmlkZXIgPSAzLCAucmF0
aW8gPSAyMiB9LA0KPiAtCXsgLnJlZmNsayA9IDI0MDAwLCAuY2RjbGsgPSAxOTIwMDAsIC5kaXZp
ZGVyID0gMiwgLnJhdGlvID0gMTYgfSwNCj4gLQl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0g
MzEyMDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDI2IH0sDQo+IC0JeyAucmVmY2xrID0gMjQw
MDAsIC5jZGNsayA9IDU1MjAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA0NiB9LA0KPiAtCXsg
LnJlZmNsayA9IDI0NDAwLCAuY2RjbGsgPSA2NDgwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0g
NTQgfSwNCj4gLQ0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAxNzkyMDAsIC5kaXZp
ZGVyID0gMywgLnJhdGlvID0gMTQgfSwNCj4gLQl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0g
MTkyMDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDEwIH0sDQo+IC0JeyAucmVmY2xrID0gMzg0
MDAsIC5jZGNsayA9IDMwNzIwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAxNiB9LA0KPiAtCXsg
LnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0g
MjkgfSwNCj4gLQl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNjUyODAwLCAuZGl2aWRlciA9
IDIsIC5yYXRpbyA9IDM0IH0sDQo+ICsJeyAucmVmY2xrID0gMTkyMDAsIC5jZGNsayA9IDE3Mjgw
MCwgLmRpdmlkZXIgPSAzLCAucmF0aW8gPSAyNywgLmF1ZF9tID0gMHgzQywNCj4gLmF1ZF9uID0g
MHgxNDAgfSwNCj4gKwl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gMTkyMDAwLCAuZGl2aWRl
ciA9IDIsIC5yYXRpbyA9IDIwLCAuYXVkX20gPSAweDNDLA0KPiAuYXVkX24gPSAweDFFMCB9LA0K
PiArCXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSAzMDcyMDAsIC5kaXZpZGVyID0gMiwgLnJh
dGlvID0gMzIsIC5hdWRfbSA9IDB4M0MsDQo+IC5hdWRfbiA9IDB4MzAwIH0sDQo+ICsJeyAucmVm
Y2xrID0gMTkyMDAsIC5jZGNsayA9IDU1NjgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA1OCwg
LmF1ZF9tID0gMHgzQywNCj4gLmF1ZF9uID0gMHg1NzAgfSwNCj4gKwl7IC5yZWZjbGsgPSAxOTIw
MCwgLmNkY2xrID0gNjUyODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDY4LCAuYXVkX20gPSAw
eDNDLA0KPiAuYXVkX24gPSAweDY2MCB9LA0KPiArDQo+ICsJeyAucmVmY2xrID0gMjQwMDAsIC5j
ZGNsayA9IDE3NjAwMCwgLmRpdmlkZXIgPSAzLCAucmF0aW8gPSAyMiwgLmF1ZF9tID0gMHgzQywN
Cj4gLmF1ZF9uID0gMHgxQjggfSwNCj4gKwl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0gMTky
MDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDE2LCAuYXVkX20gPSAweDNDLA0KPiAuYXVkX24g
PSAweDFFMCAgfSwNCj4gKwl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0gMzEyMDAwLCAuZGl2
aWRlciA9IDIsIC5yYXRpbyA9IDI2LCAuYXVkX20gPSAweDNDLA0KPiAuYXVkX24gPSAweDMwQyB9
LA0KPiArCXsgLnJlZmNsayA9IDI0MDAwLCAuY2RjbGsgPSA1NTIwMDAsIC5kaXZpZGVyID0gMiwg
LnJhdGlvID0gNDYsIC5hdWRfbSA9IDB4M0MsDQo+IC5hdWRfbiA9IDB4NTY0IH0sDQo+ICsJeyAu
cmVmY2xrID0gMjQ0MDAsIC5jZGNsayA9IDY0ODAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA1
NCwgLmF1ZF9tID0gMHgzQywNCj4gLmF1ZF9uID0gMHg2NTQgfSwNCj4gKw0KPiArCXsgLnJlZmNs
ayA9IDM4NDAwLCAuY2RjbGsgPSAxNzkyMDAsIC5kaXZpZGVyID0gMywgLnJhdGlvID0gMTQsIC5h
dWRfbSA9IDB4M0MsDQo+IC5hdWRfbiA9IDB4MUMwIH0sDQo+ICsJeyAucmVmY2xrID0gMzg0MDAs
IC5jZGNsayA9IDE5MjAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAxMCwgLmF1ZF9tID0gMHgz
QywNCj4gLmF1ZF9uID0gMHgxRTAgfSwNCj4gKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0g
MzA3MjAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDE2LCAuYXVkX20gPSAweDNDLA0KPiAuYXVk
X24gPSAweDMwMCB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4MDAsIC5k
aXZpZGVyID0gMiwgLnJhdGlvID0gMjksIC5hdWRfbSA9IDB4M0MsDQo+IC5hdWRfbiA9IDB4NTcw
IH0sDQo+ICsJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDY1MjgwMCwgLmRpdmlkZXIgPSAy
LCAucmF0aW8gPSAzNCwgLmF1ZF9tID0gMHgzQywNCj4gLmF1ZF9uID0gMHg2NjAgfSwNCj4gIAl7
fQ0KPiAgfTsNCj4gIA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzIGRn
Ml9jZGNsa190YWJsZVtdID0gew0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAxNjMy
MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4ODg4OA0KPiB9LA0K
PiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAyMDQwMDAsIC5kaXZpZGVyID0gMiwgLnJh
dGlvID0gMzQsIC53YXZlZm9ybSA9IDB4OTI0OA0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAw
LCAuY2RjbGsgPSAyNDQ4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9
IDB4YTRhNA0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAyODU2MDAsIC5k
aXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4YTU0YQ0KPiB9LA0KPiAtCXsg
LnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAzMjY0MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0g
MzQsIC53YXZlZm9ybSA9IDB4YWFhYQ0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2Rj
bGsgPSAzNjcyMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4YWQ1
YQ0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA0MDgwMDAsIC5kaXZpZGVy
ID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4YjZiNg0KPiB9LA0KPiAtCXsgLnJlZmNs
ayA9IDM4NDAwLCAuY2RjbGsgPSA0NDg4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53
YXZlZm9ybSA9IDB4ZGJiNg0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA0
ODk2MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4ZWVlZQ0KPiB9
LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1MzA0MDAsIC5kaXZpZGVyID0gMiwg
LnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4ZjdkZQ0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4
NDAwLCAuY2RjbGsgPSA1NzEyMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9y
bSA9IDB4ZmVmZQ0KPiB9LA0KPiAtCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA2MTIwMDAs
IC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4ZmZmZQ0KPiB9LA0KPiAt
CXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA2NTI4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlv
ID0gMzQsIC53YXZlZm9ybSA9IDB4ZmZmZg0KPiB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAu
Y2RjbGsgPSAxNjMyMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4
ODg4OCwNCj4gLmF1ZF9tID0gMHgzQywgLmF1ZF9uID0gMHgxOTggfSwNCj4gKwl7IC5yZWZjbGsg
PSAzODQwMCwgLmNkY2xrID0gMjA0MDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0LCAud2F2
ZWZvcm0gPSAweDkyNDgsDQo+IC5hdWRfbSA9IDB4M0MsIC5hdWRfbiA9IDB4MUZFIH0sDQo+ICsJ
eyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDI0NDgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8g
PSAzNCwgLndhdmVmb3JtID0gMHhhNGE0LA0KPiAuYXVkX20gPSAweDNDLCAuYXVkX24gPSAweDI2
NCB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAyODU2MDAsIC5kaXZpZGVyID0g
MiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4YTU0YSwNCj4gLmF1ZF9tID0gMHgzQywgLmF1
ZF9uID0gMHgyQ0EgfSwNCj4gKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gMzI2NDAwLCAu
ZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0LCAud2F2ZWZvcm0gPSAweGFhYWEsDQo+IC5hdWRfbSA9
IDB4M0MsIC5hdWRfbiA9IDB4MzMwIH0sDQo+ICsJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9
IDM2NzIwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAzNCwgLndhdmVmb3JtID0gMHhhZDVhLA0K
PiAuYXVkX20gPSAweDNDLCAuYXVkX24gPSAweDM5NiB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAw
LCAuY2RjbGsgPSA0MDgwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9
IDB4YjZiNiwNCj4gLmF1ZF9tID0gMHgzQywgLmF1ZF9uID0gMHgzRkMgfSwNCj4gKwl7IC5yZWZj
bGsgPSAzODQwMCwgLmNkY2xrID0gNDQ4ODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0LCAu
d2F2ZWZvcm0gPSAweGRiYjYsDQo+IC5hdWRfbSA9IDB4M0MsIC5hdWRfbiA9IDB4NDYyIH0sDQo+
ICsJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDQ4OTYwMCwgLmRpdmlkZXIgPSAyLCAucmF0
aW8gPSAzNCwgLndhdmVmb3JtID0gMHhlZWVlLA0KPiAuYXVkX20gPSAweDNDLCAuYXVkX24gPSAw
eDRDOCB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1MzA0MDAsIC5kaXZpZGVy
ID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9ybSA9IDB4ZjdkZSwNCj4gLmF1ZF9tID0gMHgzQywg
LmF1ZF9uID0gMHg1MkUgfSwNCj4gKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNTcxMjAw
LCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0LCAud2F2ZWZvcm0gPSAweGZlZmUsDQo+IC5hdWRf
bSA9IDB4M0MsIC5hdWRfbiA9IDB4NTk0IH0sDQo+ICsJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNs
ayA9IDYxMjAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAzNCwgLndhdmVmb3JtID0gMHhmZmZl
LA0KPiAuYXVkX20gPSAweDNDLCAuYXVkX24gPSAweDVGQSB9LA0KPiArCXsgLnJlZmNsayA9IDM4
NDAwLCAuY2RjbGsgPSA2NTI4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzQsIC53YXZlZm9y
bSA9IDB4ZmZmZiwNCj4gLmF1ZF9tID0gMHgzQywgLmF1ZF9uID0gMHg2NjAgfSwNCj4gIAl7fQ0K
PiAgfTsNCj4gIA0KPiBAQCAtMjE4OSw2ICsyMTkyLDIyIEBAIGludGVsX3NldF9jZGNsa19wb3N0
X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICpzdGF0ZSkNCj4gIAl9
DQo+ICB9DQo+ICANCj4gK3ZvaWQgaW50ZWxfdXBkYXRlX2F1ZGlvX2tlZXBfYWxpdmUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICt7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2Nk
Y2xrX3ZhbHMgKnRhYmxlID0gaTkxNS0+Y2RjbGsudGFibGU7DQo+ICsJaW50IGk7DQo+ICsNCj4g
Kwlmb3IgKGkgPSAwOyB0YWJsZVtpXS5jZGNsazsgaSsrKQ0KPiArCQlpZiAodGFibGVbaV0uY2Rj
bGsgPT0gaTkxNS0+Y2RjbGsuaHcuY2RjbGspIHsNCj4gKwkJCWludGVsX2RlX3dyaXRlKGk5MTUs
IEFVRF9UU19DRENMS19OLCB0YWJsZVtpXS5hdWRfbik7DQo+ICsJCQlpbnRlbF9kZV93cml0ZShp
OTE1LCBBVURfVFNfQ0RDTEtfTSwgdGFibGVbaV0uYXVkX20gfA0KPiBBVURfVFNfQ0RDTEtfTV9F
Tik7DQo+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiYXVkX3RzX2NkY2xrIHNldCB0byBN
PSV1LCBOPSV1XG4iLA0KPiB0YWJsZVtpXS5hdWRfbSwgdGFibGVbaV0uYXVkX24pOw0KPiArCQkJ
cmV0dXJuOw0KPiArCQl9DQo+ICsNCj4gKwlkcm1fV0FSTigmaTkxNS0+ZHJtLCAxLCAiYXVkX3Rz
X2NkY2xrICVkIG5vdCB2YWxpZFxuIiwgaTkxNS0+Y2RjbGsuaHcuY2RjbGspOw0KPiArfQ0KPiAr
DQo+ICBzdGF0aWMgaW50IGludGVsX3BpeGVsX3JhdGVfdG9fY2RjbGsoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gaW5kZXgg
YjUzNWNmNmE3ZDllLi5jOWUwZDVhMjFmMTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gQEAgLTgyLDUgKzgyLDYgQEAgaW50ZWxfYXRvbWlj
X2dldF9jZGNsa19zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ICAJ
dG9faW50ZWxfY2RjbGtfc3RhdGUoaW50ZWxfYXRvbWljX2dldF9uZXdfZ2xvYmFsX29ial9zdGF0
ZShzdGF0ZSwgJnRvX2k5MTUoc3RhdGUtDQo+ID5iYXNlLmRldiktPmNkY2xrLm9iaikpDQo+ICAN
Cj4gIGludCBpbnRlbF9jZGNsa19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dik7DQo+ICt2b2lkIGludGVsX3VwZGF0ZV9hdWRpb19rZWVwX2FsaXZlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7DQo+ICANCj4gICNlbmRpZiAvKiBfX0lOVEVMX0NEQ0xLX0hf
XyAqLw0K
