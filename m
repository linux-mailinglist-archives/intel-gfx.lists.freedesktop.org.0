Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848267A6A32
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 19:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D210910E13D;
	Tue, 19 Sep 2023 17:51:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5320710E13D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 17:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695145872; x=1726681872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kX+tYrHFxzKL8cOASJ9zsxbur+UB+bLyO3+W4ycucrc=;
 b=CIyAWarUuPOfpZUgWFLeEFDSPPoBKruwE8QpLHD4R1cEz0G3W7Ou89vz
 7/J3bxUQB+FUgaS4DwQfquTfWGlRbkkKz2ekp9Z735fPYQ6BGVLNrws7w
 kToIHYJcYa7ORtx2IUKQt4yPc0b11jPCzlDA2HrOcKFgoIF6a5q09BmO+
 Ty/sYEWscByYDixvXTLcpW9xEL2d1sQxoo8bhllb8wEJXRzxUZ8tsClSp
 UnKuSdFy7gNfPl27xLlGmoi6xPtGAYpN8Ix5He2Rflak06q+7Aval5nIt
 Eiy6OZcuMUpEet1s9kXeaM/gQGEK3zdTBUBxfGYv1zwwWTAh7PHk2RW4R w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370325270"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="370325270"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 10:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="739821530"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="739821530"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2023 10:51:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 10:51:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 10:51:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 19 Sep 2023 10:51:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 19 Sep 2023 10:51:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InQ0IaHasGJ4ay3WDBRM4kkvRXiIpuPzBdawjIj6Wj4oaF6leKirmDLjtrkGof/DcdHZSgBRHaeNWTTxnXkDhQiictFtwGBDmnKGPj+odmccJ0HPnpk3zJOE7NN0tIW2L45cZsfTGaOt21KgmjgHbJZW/rl3rGscCbwcl9eIlYbywm4/eaQbmFRwe5NhyaqF329WOjWozFOMide4WLRYQ3C8ZF6GrrZe8R3jaiAVbZEvzKYRqYn4W//k/49wU4hnixFORT4aRZ9C/P7DZTmy/MM8hHle3mPM+ufTPMpI+lAZ8giELSO6E/lNvnJ6Z036c1JHTsU0ja1R3q4m05JTPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kX+tYrHFxzKL8cOASJ9zsxbur+UB+bLyO3+W4ycucrc=;
 b=Mt1hVELH3+GY7krcozWssXTRXkcZeOm92Zy6VgxSqEUctEoV/IMRoilXxzCnCtmn08U4heyVy4HJkr9X798nJwUPAuqlz8teBKgXqGrtYTnGhI8ykGA6nm3GctQwEbYjhkOemg5pmbd+1niIUrwZQtXRZKTMipKZ9YjBDialC/xm2Qa+v+WnPPt+FoQhWGNJKHDrPnr3+9rsUQlPcjJDQjUfJddg6Foaxlf6KyXBjrUQtPMm+lfV8lvyjKcEoS0SNEjL1JA+mN5rEHhEmdy/4RsjTyieJLZMHyfv/pxlAd5B0US1FtdmVLQjS16T4Ugn2LVe95W4C80WoOSbu+0mVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA3PR11MB7583.namprd11.prod.outlook.com (2603:10b6:806:306::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Tue, 19 Sep
 2023 17:51:07 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531%3]) with mapi id 15.20.6792.026; Tue, 19 Sep 2023
 17:51:07 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1L3B4?=
 =?utf-8?Q?p:_Add_drm=5Fdbgs_for_critical_PXP_events.?=
Thread-Index: AQHZ6Es+jJ5wPlaPq02HP+ANEJ0dWbAicyKA
Date: Tue, 19 Sep 2023 17:51:07 +0000
Message-ID: <ef4675ae9a0ab01323d1f2e4de211f5db1e71fdd.camel@intel.com>
References: <20230915201515.1238771-1-alan.previn.teres.alexis@intel.com>
 <169483376712.10846.3591224164154652933@emeril.freedesktop.org>
In-Reply-To: <169483376712.10846.3591224164154652933@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA3PR11MB7583:EE_
x-ms-office365-filtering-correlation-id: 92522750-a4cb-43ed-38fb-08dbb939009f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ty1M9YED5+X8HouoceOMiQUVumwVz7EPAj20rODIIJYQfmcNZsdIrnAG2mFAtZQpAcsScCeujcQawpqVpnGFyAz9kLjj3YOZDYIwItLP0nToEByCgbCcWpg/cnfY32/7mRymqqzE8HguEnPzQ+o8Y8GWKCirVGQIcIvuEvve0i22rtAALDsKBM53tEHNL243B7vpCC6h8bFd6JWtW2A5cN3OmarRFLSxLAowhRSxzEPe5A+fua6BZ68a0fUyo8RL4VScSRaFMkXq3IHZWKvk9GvmolrS+7eOgkXKOm0w04L9WkkR1AbBy2MyZf5ZZtFdN4BIeLhAgrpLZQRJqwHx7r/43KA5qZX4aZ+6KM24zcY8pOkFNEwbeDp07GMbckW8OJiNLYiubFnrn/2vDdekD2MBAgAhLE317dnNF1ADaCxG7wDTgizgTb3Zeqe1FJrYvMeQV9EzDiY7JgUEv2+q+iUWR7340ads96YSB4QvwpZl7XGmOI55EW8MvujbpBT2RhgNJGgAhIXg6lH68TObcv96xM/lFQ9t21L58v1zBeEazloM36PMlr9rk+PJjRONQ74k79Gms+9S8nTVB+HjUdqmrkDMmXeL3zo7Lunu401cEEiW/0I5Ke8egAhiYcqg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(396003)(376002)(39860400002)(136003)(1800799009)(186009)(451199024)(26005)(82960400001)(8936002)(2616005)(4326008)(107886003)(122000001)(83380400001)(2906002)(36756003)(4744005)(86362001)(6506007)(6486002)(478600001)(5660300002)(71200400001)(6916009)(316002)(91956017)(6512007)(76116006)(66946007)(66556008)(38070700005)(64756008)(66476007)(38100700002)(41300700001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTV6Q29vRzVNU3ZXMlhvZU5nSHUvbTJpSy9Ec0JjNm5tMWZYeUdNOXUvK3Jn?=
 =?utf-8?B?VmJsM1Q0THMyQjlsdUJXOEVsVE5qZElEQm5ENEd5Yy9VS2NvSUV1ZEhyckUw?=
 =?utf-8?B?SzYzVFAvRlJMNnZIdnNBbXIwOEZ1a05GNjBHZE5YVEFWdnFFOWU1RnpyWHg3?=
 =?utf-8?B?VnducGtOVXNNSHdYV3d1RWxNNk9ybU5LOWJvSmJyUENqQnV1U2RZWSt0SE0w?=
 =?utf-8?B?MlJvT2FIQ3ZlK1VCb3VBRzd5Qmk3S2pIM2RjTDR1QmRWa3AraFB3K3VUTkVl?=
 =?utf-8?B?YlFPL1AzMGd5OHVHckc3WnA5MGpZdVEyRkNYcWg1V3hVNWQ4b3hFaGF6VW5m?=
 =?utf-8?B?Ylh1REt6dUE3VUZ6K3E5bHUxa2NIVUZtandvS21zRVg1Qko3WS9CRzlhQW9i?=
 =?utf-8?B?K29oVkNxZWh1OXNxNGV4b2tCN0NZSWVaL3dGS3ZxSmhGd0tHT1NrNTd2UVRW?=
 =?utf-8?B?MnV5OEIxZWlHUDVIem1zbk0rMkZ3d2ZRdTdpSGw5dWs1QVA3elhEbjc4VGdO?=
 =?utf-8?B?eGhYUFh3MmVMZ044aDdlc2tYZFVOM1B2OHh6WkhNMEVOWngrcTRibjBjNzdj?=
 =?utf-8?B?WlNxTVAzaVE5amVoL2MyZzZrNTlGb2FucXh2dVNoTXFyMGlTR2xLRFBod056?=
 =?utf-8?B?b0FvSUhFS3VoRDFqYStORktvZ09ydGl0UllPRVVWbVdSMEdRZlc5MWI3KytI?=
 =?utf-8?B?N1BydENOTVVCOVc0QnMxVFpPbkxVNFp5djVzTFU2UTM0YkpnN1hnVXdadmR6?=
 =?utf-8?B?aHBmWGlzVnVQWlRneDlsbUR1TW8ybHFLOU10S0VsaHhUQzF4SDkzb3NPU3Zh?=
 =?utf-8?B?VmZtSU9qaVZZdTlrWlFBU09XN09pTkwxQUFLd2N3dGxsY1oxWEFQZDVtMzFs?=
 =?utf-8?B?cWg3OUFuQmZrY3Q1OVRQSFJsUWYyelBYUjQrLzZHclpzaDFWbThPSzR5eDRG?=
 =?utf-8?B?Rkp0Vjc3KzRjYWpsRnN2N1VtZ3lUWDFrZk02ekxHL3B1MXUvakVCNXJLYUQ3?=
 =?utf-8?B?NDBDSXZua1lkQjR5RFVGMm1kYWgwTGpjUDVaYnhsckdaTGNNY1BWdmdKUzlp?=
 =?utf-8?B?bElCNkdBWlFINnlaR05zK2NNbWNiR1pZVWM4V3cyQ0xqWStyVGtVQjNMWFY2?=
 =?utf-8?B?Z05paEJqanQrZFVMQVRudjJLY3RsMUI0T2tNYW44cFFNUUpaVnZNa3IxV3Mv?=
 =?utf-8?B?bVZNTzlPK1FrTzgzOGhVd2NFY3lIMklrdDBTZnljVUpSQnhRNUpyZEJ2VW5x?=
 =?utf-8?B?TmoyYVF1Y2tIb1cybzRQaTI1emJtVyt6c1gyaTZGMlVZYnNQUExSOElFNzZh?=
 =?utf-8?B?MkxrVk1odjNmRmNVTFR5VGNWVzVhQjhHcTdORFBUQ2hwVE83UElYaVRYdGZ3?=
 =?utf-8?B?U3hYc3BwMDdNQUpCelRhOXphNDZjT0d6OWc3NUpZL0d3NVVZRVlPTUhJYXNv?=
 =?utf-8?B?ZEhmb0s5MFVCVURNdzhvUEVVL1NGRWJQK3Q5T2hEazBvY1NybjhXOE5oQkhs?=
 =?utf-8?B?RFVyNXR1c1JqTEdWOGhlSzV0OSt1bDRybUthNTJWK01zT1JOa3ZUZjNqeG9O?=
 =?utf-8?B?a0tPbmU1b3JOUXlrY21neHVJbU1aeXVqUDVLOTRlMXFEemIwSkQ1S0pTWmpB?=
 =?utf-8?B?SGFRZi9ydTZ0YjViSENQalF4Ujg0czlJVERBd05LRXRpWG1pdUIvYUFsaWxS?=
 =?utf-8?B?bEVmOWgzdVRTdWNiV1Qzcm5FUFdWTDBRNHYvS2I4RGRBb1pHTUR4TVpMK0Ux?=
 =?utf-8?B?aGQwTVJub0ZzdjdOb0xweHFJTFFxblAraFdLcHc5QW8vbnl0ZkZCakszNUJj?=
 =?utf-8?B?UXdleTUrZlNPSGpqLzFjYmdGWWpzT2liNTF2c3pCcGRJdzJMU0FhR2EvbFgw?=
 =?utf-8?B?SThqMnpDcE9KSzBQKy8zanN4K05vVXZkNTFwSEZBUExXeUpaOHZnTmg2NjlJ?=
 =?utf-8?B?RjIyR0RVSDNpUzVyblhPWXVkR2diOXV2YXdZdXlmVzJDUTJOS0Urc0VEMGZS?=
 =?utf-8?B?c1hZZEF5YnJOR3c1WGxvRlZ3bW1uazRweTBuSThFVXh3UThKcHd3Ujh1UE9t?=
 =?utf-8?B?MHRIQ2d3cHlWYWxHVzdtNE5ScEhINVBFbUF4SGFQc3dBaFczMFkvSHNxbUhu?=
 =?utf-8?B?OEtRVytXai9lU3lrZDNoK2JiSU14U1Bjc2NqRVlqMWs2d0xQdWpYcitWZVdC?=
 =?utf-8?Q?g5B9KhNBFzy1qSiace4qx5s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F1E5BED85196FF459DD817D16F9B0AED@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92522750-a4cb-43ed-38fb-08dbb939009f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 17:51:07.7448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GjAHeky3evm/nB46XkrQnI1ebyemtIdeFq/wrqz7TAnBiO0MW3u09fPOYzMc8jtLoiho5FUhpo3OIP847YDhq6xsc4J3/unCZYsgfAiDV3gFK0ZtIF5CKGh+pjpUqRSs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7583
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_Add_drm=5Fdbgs_for_critical_PXP_events=2E?=
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

T24gU2F0LCAyMDIzLTA5LTE2IGF0IDAzOjA5ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IA0K
YWxhbjpzbmlwDQo+IDJlYWI5ZTRlNjM3YSBkcm0vaTkxNS9weHA6IEFkZCBkcm1fZGJncyBmb3Ig
Y3JpdGljYWwgUFhQIGV2ZW50cy4NCj4gLTo3OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5F
OiBQcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lIChwb3NzaWJsZSB1bndyYXBwZWQg
Y29tbWl0IGRlc2NyaXB0aW9uPykNCj4gIzc6IA0KPiBzZXF1ZW5jZSBvZiBpbXBvcnRhbnQgZXZl
bnRzLiBBZGQgZHJtX2RiZyBpbnRvIHRoZSBtb3N0IGltcG9ydGFudCBQWFAgZXZlbnRzLg0KPiAN
Cj4gLToxNTogRVJST1I6QkFEX1NJR05fT0ZGOiBVbnJlY29nbml6ZWQgZW1haWwgYWRkcmVzczog
J0JhbGFzdWJyYXdtYW5pYW4sIFZpdmFpayA8dml2YWlrLmJhbGFzdWJyYXdtYW5pYW4gYXQgaW50
ZWwuY29tPicNCj4gIzE1OiANCj4gUmV2aWV3ZWQtYnk6IEJhbGFzdWJyYXdtYW5pYW4sIFZpdmFp
ayA8dml2YWlrLmJhbGFzdWJyYXdtYW5pYW4gYXQgaW50ZWwuY29tPg0KPiANCj4gLTo5NjogV0FS
TklORzpMT05HX0xJTkU6IGxpbmUgbGVuZ3RoIG9mIDEwNSBleGNlZWRzIDEwMCBjb2x1bW5zDQo+
ICM5NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9pcnEuYzo0MzoN
Cj4gKwkJcHhwLT5zZXNzaW9uX2V2ZW50cyB8PSBQWFBfVEVSTUlOQVRJT05fUkVRVUVTVCB8IFBY
UF9JTlZBTF9SRVFVSVJFRCB8IFBYUF9FVkVOVF9UWVBFX0lSUTsNCg0KV2lsbCBmaXggdGhlc2Ug
YmVmb3JlIHdlIG1lcmdlLg0KLi4uYWxhbg0K
