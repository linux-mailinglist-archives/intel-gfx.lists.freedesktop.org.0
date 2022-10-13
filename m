Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A325FE105
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 20:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8B610E930;
	Thu, 13 Oct 2022 18:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BBC10E930
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 18:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665685390; x=1697221390;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NlFvEd/7+XXYdhcCLSRMkqVOgazcHvwL9XSsf3Wre1M=;
 b=NqAwMxy+vzcNDzSOrHgO0EHhwcOh1RAZAK0qIe//A23R9onzDlJYNugy
 be3CuYxL/QfUp64Y9OfjrOGoX3tR/1cxTd+Xri72RVuYedHiNzehdXeDj
 IVXn2Mq6h4ByG2NtN9XqcXjIoYrLnAYfI4/FU0PPzkkPovdDprZG4RU8O
 iBTO1ZAqEjLP9RGW7cxzBUdUrn5k4TbgP0Lwm6baaf9CBKqaJNOosugri
 X6zkCtxrrlHA/kgMRQ2itlQuuapYlYrDkwY8TIQbyW23s5Kp1lIsBcGqk
 t+Sk58p6qNgRG3esEq/CHaqlZOO7vuFDkxMDOwAQ3E0dKhH3F9KGe6Z6R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="285552966"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="285552966"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 11:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="769735002"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="769735002"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2022 11:23:10 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 11:23:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 11:23:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 11:23:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 11:23:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VwbnW2jyRuOqXhokbgp/+mpXfP9I69ogaO4w3btK37PQWX0ANsQVPjptmmOVxUUHnnTQeGcJ9YZEPPsbZHz2/mic1N4tx9SZl1z1X8RnVdopoc/edhRB1AZSYnx2CWO7Y5f8CSq+EhSJQ28/D22ZQrxYteo4cqVMg4vNPZCbezVfV4SOh9DwGgYfksWrYn/Zb9Koz8gDvxPCoQjvxp6TqsWPE5IkCWLlsAZ9Ia145JqJdeSO4OwA3L246ezHDBR4yUMDGETtm7JAQfHqLsP7eraZ6g8dzOLMjFfjguxEg6G8TjVRHt+28dU03NwLZYFUMU2HWtczGOMxKe1Ta6R7hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlFvEd/7+XXYdhcCLSRMkqVOgazcHvwL9XSsf3Wre1M=;
 b=dApZqogPlRPkoNvHh/QmSmePJMXRXCi4yGBZYWnJcZ35523nwgO2GxlB/Vn4fZPw2BwtT1vpMp6i3605mKpiPWjPqhtndR6NMw38jCYgdT9Zi7iGgGseM5ZgC2A/rtxYOgkDuNXuCPN0G6Xs1qceIKe2QP5R1NC9ZhtCQ2rR9bKkbrM/ypJIH2AST4vORFaTVfWmKzwac/6Se+r8GrhVqrC99S6ZUd+Himf4fW5ZrJJj4rlj5VeNTRVkvwIm8nBWZZW0N1IOr3Yw1Nyvvt05eKpXAJRrYan4V2sUSOAjngjALy8og4hmo3M+v2YaWkM9njcO1qG2GTfXFTv2rGFqRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by CH3PR11MB7324.namprd11.prod.outlook.com (2603:10b6:610:14f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Thu, 13 Oct
 2022 18:23:07 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::2da8:4021:a5a6:dc4a]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::2da8:4021:a5a6:dc4a%11]) with mapi id 15.20.5709.021; Thu, 13 Oct
 2022 18:23:07 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
Thread-Index: AQHY3y+qnl++uy7dWEuEKH8aEScIPa4Mo00A
Date: Thu, 13 Oct 2022 18:23:07 +0000
Message-ID: <e77afa6bebf276952ff6750b7e8ac99623a7da92.camel@intel.com>
References: <20221013181426.306746-1-jose.souza@intel.com>
In-Reply-To: <20221013181426.306746-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|CH3PR11MB7324:EE_
x-ms-office365-filtering-correlation-id: b851fea4-8b25-4170-9873-08daad47f9dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6gPr4EXlwAnBujdv7F2w3gTETD4zZB30SDP1aXEmNuI0yc5yVm+zc816SY6QNn8ZPAXsvNJI97G+L3qI9C8e28EFsTv4p0buYSaqAP8IoxMT4QpomYVFFg4GPiGTE2uPtrsNN43jaGSvdmkK+wIm3u01OGl4cYRQemHFtQdlcUijj/btLa2h959gNOp0jTeRneNxtc1pBGcJCYA/pBbXkaA32QsYSUEFttDiDzLUuMU+6NvfrrwL//Z5z7DCHa7qxwFaHNdBNDJoWdWAGIk1WENM3PNGDtPox+KN7VefT5R1Slc6gOoEdnQlCbt9vTzjFYLD7XCwzx3zhd4kEDJi8zCiBt/PM82oorqScpXD0nL5rQoI9SDSA0YNUgThVfLVkbZjK/fKZOANXPLQyzYwHxhZmrsX6PuQ1vAlA2z0+bRnE4c+PQ11p5xoPPTeQPW+F46XARaBw3q5cR5I0fvQg6BG/OjcMv5YpUBnqNxMI4S3alVdZYeLtDh0RG16KDEexEau3RuKkakboBPWCqNfPSJ+h+NXkWt7ZXKB6YsUddMCkyGcDxlQ7RvbVRDSzGPKyICopXhyP25P6ZTyHep2wjjc3VluQiJCc39BPxsgLR4+P4Nl6MVjKBuj5qY6qJ7cUgoGGX0Zw6EMfezCJrDc4Jyr+FRJ5lYW5uo3WkWNy5xeXb58RinIxIKkX6kiU2jmLbm7smL8/c4mRTScMffRXL6mcOkknG0FdQ6mqkrWe6x5nUgEwf2t6E0rCvpjnLlSOhvjtaD6QfpZJ+T9+S6PgA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(376002)(366004)(39860400002)(451199015)(66946007)(478600001)(71200400001)(6486002)(4001150100001)(2616005)(2906002)(6916009)(316002)(76116006)(66446008)(66476007)(66556008)(5660300002)(83380400001)(91956017)(8676002)(6506007)(41300700001)(82960400001)(38070700005)(26005)(6512007)(38100700002)(186003)(122000001)(8936002)(64756008)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T21HUGtmSHRudTdoTG5qTXdKSkJWQkZPY3A2Z3N6ZFhMY1ZOVG5iSVd1REgx?=
 =?utf-8?B?R1BvalVkc0lDbG5OS1hKc2VKbnVOVFZrd04vUFZJcGpLVTYzREhHZ3JDUFRZ?=
 =?utf-8?B?RndkcGJ0Y0E1VkVpWDU0SGUrT0I1U3poMzVqQU5JN2JYd056c3NQempXejhM?=
 =?utf-8?B?dnVObllZeWduSTQvTlpPQXowc0ZVVHloQ2RwTG9adjNDWEw3N2JwbGpQN1Qv?=
 =?utf-8?B?ck5pUG00bmpCQ09NM1Q4YnZ6d05IYURHZ3NDeUQ1RjFoYXBYZ2xpRXhXZDFw?=
 =?utf-8?B?UFhJOEkxOG84N045WE9PeWR4UEVaYk1MRmZMSDR4YnNWbDE5Z0pBUU80eURF?=
 =?utf-8?B?QXBlL1JGV21JY1Fja0piWTZSWGRwdWxlanFVTkd0RU40eXBDL3MwMU5ERU8z?=
 =?utf-8?B?TGRKcHN3eFRXVWxweG50Wm9yaUMzaFpLYWRzdVZMVHZObzVIWWZMM0V2T0t6?=
 =?utf-8?B?WGRkVzZlYUZRWFhORmN1STQ2aUN1eWJzRDgxMndFMURwdjBwY3MrWEVvVVhY?=
 =?utf-8?B?N3ZPd3hqNW9IdkJoam9hWW1LemM0c1pBMFJWcWs0Vit6Ui85UzZ5ZVZGV1RT?=
 =?utf-8?B?U3JZelEvZHVkWUlhN01KME4vazRzUlJ0QWM5NUNDdDU4VytmZXRsVGlGUlha?=
 =?utf-8?B?NGwyeGo3VHVES1JuS0w1dU5LZDdNL1JnMTU2ZkZ4TlE4b0JtdnRBQ1dwSi9S?=
 =?utf-8?B?MmFUaTNvZ3h3dldXWkNUZVBoeGMwQUNpT1dlM2N3Y2kwN01JUDhYZGFzYXdt?=
 =?utf-8?B?bllqd2dnanJnWjBrMFVMY3lOWnoxMzNaQURZd0ZDTUxvZWswKy9yN1ViZGNp?=
 =?utf-8?B?Si9OL3VMWVozSGxIdWNpYTdFZEo3bmxjcklXQkpoNVNDSDNyejVabG85ZGc4?=
 =?utf-8?B?ZytIaWttQ0ZnUW9EWGpwT2NHUDlKbllUR2dYakFFZ205RTB6RmNZYXY3bFUz?=
 =?utf-8?B?R0pzZC9JNHpMYm10aGRWVjlyUGRvanZnSU1lSVA2M3VheE80NU9mWmdBS1U4?=
 =?utf-8?B?NnorNWgraXJJQWp4aUVGZ1ovcWtyNHBtNVZQWnVsOXo0em0xZGVGa3Z1TlhY?=
 =?utf-8?B?RFZzQTFINk9UM3BqdVY0RWhBeDRISUxZZ1ZHd2NOOStxU1hyT1VMLzI5bDl6?=
 =?utf-8?B?cStzc1M5SVpJd3ZlTkpjOGVVM2ZNQkpXakNRVkRUdS9kUjdCazRkNFB2VWtY?=
 =?utf-8?B?MEkwaFQ1UUNmMDVRaXRjbE1UZE03cm1VWitTYmRIUnN4VU5HZkYxK29oM0R3?=
 =?utf-8?B?SU1qa3JQVmlFN3VpNms1ekgwMFZsQlgzYm1sUEN1K2hRZFI1WTR0Skt0MGx1?=
 =?utf-8?B?ajNRTmlIUWE4QjlkamJyOTVrWnpFTUtvTmtmTkRlb01hY2JoTmxsWC85Lzdj?=
 =?utf-8?B?OTBGTzQ5b3czNzBNOGR5dFVFUk9IVzVvZ2NWcGtVZGFtWEdiTDdXK2psU01Q?=
 =?utf-8?B?bzlJR3R1eWNEbUVqUWs3dzRLVEN1K2J1eWZjYy9HSHJ1UGZqT0hYamxjYkFI?=
 =?utf-8?B?UEYvNFNPMThzUU9vNk1jU05SNFlxMCtwaGhJRnNRaWwwVElWRk9xMVo2UkdS?=
 =?utf-8?B?M3EvWVNKV3dwZUI0QzJDZFU3emkxb2pHRUJxQjdDL2I0UHB0aGtSNkZwNU9a?=
 =?utf-8?B?QWN1a1NqU0JldERzbGtQWEcxS0xGTzRsNmJ0VC9xeGxFOTEwTVIra1FpUDVL?=
 =?utf-8?B?eEtldnBBNVVKRUdsMi9Kc3c5WURGaTI0aGFTbWtHWG9HUm5DSmc1VmR1YXZy?=
 =?utf-8?B?a0FiQjM0QWxuUDhrQTdJVG1iaGxCZEVzRWJjV2g0WlNnTUVheEIvbktDTmNa?=
 =?utf-8?B?eWJ3akZPY0RWaGsxVVVLc1hYQ1FROGdMYjFBVTV0ZnZiaFozSUw2LytlSnRw?=
 =?utf-8?B?TC84QVFpVUNwWjZ6Vnhhbmdlc01jM1JOOG5yUDYvMEt2RXo4QnNRdnloamUw?=
 =?utf-8?B?aG9IeWdGWGdjZ2pzVW95bk81UDZybXpBS1QwaG9GRFBGaWF6ekNhRTJKTnZF?=
 =?utf-8?B?UjNlbU5QL2NEd09wYlc4TGpTSG1mckwyMXF1YWxkOTJQcDlnVzNDUWc2OTU0?=
 =?utf-8?B?Q2MyVG1nbXFod0loZ2pIbjZyT0pXZFBkREFjQzBtSlUvUEpNakloV3ZMeUdB?=
 =?utf-8?B?TEFIWnZXMmxiOTNiOHJzSGM0TzhvSE5jUXdVcmw3TXlwZklIRFN2eTNBNmQy?=
 =?utf-8?B?T1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E6834634D8E3D04E91DD1B2D552895FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b851fea4-8b25-4170-9873-08daad47f9dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2022 18:23:07.2457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9dzOpuMpUFh3n+e3RTgvoXpT/P5taHaXclnHbIF0q5cLi12PRWAIXe/D5KMnmPxw6YNG0jVsq4okMwIl6zZmgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7324
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
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

bWlzc2VkIHRoZSAiZHJtLyIgaW4gdGhlIHN1YmplY3Qg8J+Ymw0KDQpPbiBUaHUsIDIwMjItMTAt
MTMgYXQgMTE6MTQgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+IEJTcGVj
OiA1NDM2OQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jDQo+IGluZGV4IGI4ZWIyMGExNTVmMGQuLmUxZDVkZjNhNTc1NmUgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBAQCAt
MjMwMCwxMSArMjMwMCwxMSBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ICAJfQ0KPiAgDQo+ICAJ
aWYgKElTX0RHMV9HUkFQSElDU19TVEVQKGk5MTUsIFNURVBfQTAsIFNURVBfQjApIHx8DQo+IC0J
ICAgIElTX1JPQ0tFVExBS0UoaTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7DQo+ICsJICAg
IElTX1JPQ0tFVExBS0UoaTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpIHx8IElTX0FMREVSTEFL
RV9QKGk5MTUpKSB7DQo+ICAJCS8qDQo+ICAJCSAqIFdhXzE2MDcwMzAzMTc6dGdsDQo+ICAJCSAq
IFdhXzE2MDcxODY1MDA6dGdsDQo+IC0JCSAqIFdhXzE2MDcyOTc2Mjc6dGdsLHJrbCxkZzFbYTBd
DQo+ICsJCSAqIFdhXzE2MDcyOTc2Mjc6dGdsLHJrbCxkZzFbYTBdLGFkbHANCj4gIAkJICoNCj4g
IAkJICogT24gVEdMIGFuZCBSS0wgdGhlcmUgYXJlIG11bHRpcGxlIGVudHJpZXMgZm9yIHRoaXMg
V0EgaW4gdGhlDQo+ICAJCSAqIEJTcGVjOyBzb21lIGluZGljYXRlIHRoaXMgaXMgYW4gQTAtb25s
eSBXQSwgb3RoZXJzIGluZGljYXRlDQoNCg==
