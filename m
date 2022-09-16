Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5235BAEBD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 16:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF14010E3A4;
	Fri, 16 Sep 2022 14:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B0E10ED46
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 14:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663336855; x=1694872855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=734rBbVrhtFVQ1Ss9zZ4gO6alcOGmgn5FUItqKRBYf8=;
 b=QjztOyetanKQjdwkMdTS8Vrhqt0NAGxao1npW/5yvj1BYtUKgSj0d2IT
 7D2K7XoXtDLMJvTRPe1LkQNwKLPRhG3aalW6cenRrb48jQNUXTgUwLo+7
 wpT4lxeExPJ3/gq7qyZppTn0xg19JMlmhFI+HLUxiegDQYZbiKvumpLru
 TSo2gYOQTdxEs1naWmUecNrlPeFBM7qD0zFGEaTnDxpWFLJZwokYlNXiq
 cnKPHnr7C05xXxAfZwHS6hT11W1z28aBJwzXwbPsvL0Z09re8RZr6QoqQ
 B9A9x1Xk96BACK7rmqrK0p3pQSrVjRnNhrXRkrv7wyiYBJ4QatM24mH2z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="299818226"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="299818226"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 07:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="617680951"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 16 Sep 2022 07:00:49 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 07:00:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 07:00:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 07:00:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nsYfYvk/8px8bTWR5a7tHws5sQLFPjC/wmJk+zjzcb5r/J8AoG+dAtt6qiu/wnxwFoKtlzZXlIZ5/XB9PrHUmVJPyr/1mEpa1FDqbyELy+yX8QPFNYHZU0h//VVl099eo/6/q9uJCyREoSV7r66sPFKzaIjkA8C4RjkG9evit+vaKXbGO+tmEKp9eg0OAzN2+3oHImH3BYDVTvCWEZNo8wv/6oQUpa1a1dPQ3lSvSC/6+YL+jAfme81azfdfpiTnNnd9wVvGDYVj0wFBmHhJGbFXMgRowdm+pkaK/WNtrDLro0WV3VL2JfUKRSvhOm5f/OESVzzum+mRNCQuPLZY1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=734rBbVrhtFVQ1Ss9zZ4gO6alcOGmgn5FUItqKRBYf8=;
 b=fYu0GZELbr9DC4H8nbJXA9S19IZYz0F9lhHFni/aKpy7Jo0jhPJ7pPrzJdbUg1f9M4L1Sh1gIQzV7veBtZoRVUqjJ1QXnHnYRN17YWua3BKRAmtwjctQww8U3Fs3gvQ8fAKl+nP+OXljImQX+rdQ6hmIXzUXukZmnrlau83XP4QLAou+5w7v/DlPSOlXEnzd3LopobiA5/91Q/shfEHO043nj1r6Z4xeB2gWX+BvIVFl472IYREkgCrKsnyKvzUrLqK/HISzGf+LOmC4QgFnJFHB3PZx6NHYDAGqH/FdnUsVQlt09+llNsxez+ulbd9o6MtMfE3Zh5LsvcsmVmJeZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.15; Fri, 16 Sep 2022 14:00:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bc57:8e8c:b573:5365]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bc57:8e8c:b573:5365%5]) with mapi id 15.20.5612.022; Fri, 16 Sep 2022
 14:00:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Do not re-activate PSR if there was a PSR
 aux error
Thread-Index: AQHYybzJ3xAWAuUEJkuvjGPGbYGfGq3iC18AgAAKkIA=
Date: Fri, 16 Sep 2022 14:00:44 +0000
Message-ID: <9703475c0f07a84d6eaf0369014c91fe4a955027.camel@intel.com>
References: <20220916110804.233449-1-jouni.hogander@intel.com>
 <651a0f14baeaa338738015d02927db86bcb07acd.camel@intel.com>
In-Reply-To: <651a0f14baeaa338738015d02927db86bcb07acd.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5454:EE_
x-ms-office365-filtering-correlation-id: 470e7363-ec80-42fa-d09a-08da97ebd992
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jWklZuc8yhNSX+THu/zd2Lc6cFP7oPC1B1F+tGzDTNgbU1mYW+YzqcdhG9EeBw/dNP6W7zyYxT/DtAn4cArmmx1bF4Cm6bowV0vnyPf3lYV6Os+v88M94DgGrAJy3t0hKDmR9p4qysYEdOkToFIBlLsBJCCLOLM6mkeZ3rapJdywUnv9Zkjy4zD7QKOasTndgnmZ85yL0PRV+P+A5dX4qqEHxrYQxJJl5iDbQfpOlTA38GCCZ0MuaaoFQ+CuKkAIsFsevJLJiZikkQ4jUhwLf8zm2X4eeJa8RpYmMKOd+7WEAw47spt3qg7ujr/RZ1EAhQrhZ16nZJ7S4ctu9P8FDFMjIvEmAWRP4wj0aplbPFqli3i+y6agEdiS2wzm4BpD/7B2hEEiPgBW9kxcw3YDOi9LTrzWQey6WXSOSIYK+puqwHo0FeGrMCnO80wZlkrPIf+3WJ1mNhMbSwQtzO0Ka9LnpVs+clANMNpKtDxdgdWj/956QcXIIdO7792t5UKlF4VPElPdiKLy377lGWZZnasqflRRxigqxuSm1qmxjrL9fn7S22uUj3FzK5PnRNXL36O9DyMkN9wx25MI8H2/UXweXg5oWj3yFd5O9fuSNnF5pvhuvSivPesjs+Jhet8/EJnP7p0bKd0CRpO1h1qEzPR6bS520y4xaoSTb4Ul9JqfXZPC0HxiFqg0dK2/hjtOj+EQxcychAIpCcsGpABF9cYY6QR3ombCVPcTF2EYAzS0ra+TSlLUC2VaqJRp8lnkEbUPf6H2O1L6I7sv391AFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(346002)(136003)(396003)(451199015)(316002)(5660300002)(54906003)(6512007)(66574015)(38070700005)(36756003)(110136005)(2616005)(71200400001)(186003)(86362001)(26005)(8676002)(122000001)(8936002)(82960400001)(83380400001)(41300700001)(38100700002)(2906002)(66946007)(66446008)(66476007)(64756008)(478600001)(107886003)(4326008)(6506007)(6636002)(6486002)(76116006)(66556008)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGxldmZSVXFadFgrdmowMHBFTklHaytzWlF0ZzlwRVJSMG9wcDRoMDlhSFQr?=
 =?utf-8?B?UzZ4SlhGV2xZaXlQVUlwR2RkcHdaWUE2RUcwSnlUWDMwUFF1Y2RCSlQ5d3da?=
 =?utf-8?B?dTNsN1RRT3Q2MkV1cjY0OFoyU3BwL2EyZ1FWMlF5VlZPUEVzbDIrSmw5WGhu?=
 =?utf-8?B?R1lWS0U3Y1Qwem1sdE5ZT0lUK0pJcUp6MngvdnRMQ1VYTDdIbHpyN2lhN0s5?=
 =?utf-8?B?OHNVczVuOG9oMU12aVZ4d0toM3VVM0pHUldCQ3paOWxVVW9GYjV2Y1dpZ0Nt?=
 =?utf-8?B?Q044QW1mM01TUGpjQVhFKzlKd3ByV3ZWTmUyQk9Ia1VqSDg0cDVYQ1RmdXJZ?=
 =?utf-8?B?U3hzU0ltRU8zVmhSc3A0Uyt6MTN2QTdmTnAxbVpTakltdHY0K3RKVkVPVllp?=
 =?utf-8?B?MExzTlcxVURWSDhXQTN1aHk4YWJ2WC9sRG9UdGZQcDBhYjVZT1kycTlwMmZ2?=
 =?utf-8?B?V21WRCtEaXRXOGhEOHA1MjVtWVlIeVY0WVhIOStueGhMakhDeDdQQ1RGUnhp?=
 =?utf-8?B?VjI5V0NWSGxFenZOaWdqZHptbFQzL1pJSGpvUEpTdTBMMDNXendqNm5ZZmth?=
 =?utf-8?B?NWlXMzZBMDZOSVhqN0Z2SHNvMDMwdnRVRThHYlA2Q1BVNVBWRUdyY0U2NFRV?=
 =?utf-8?B?S01TOFRDUDVWU2czQW1iTWpIVEtmS2YvQnZJTjdhdEhBTUxoYzU1TmR6VFla?=
 =?utf-8?B?eU9OYjM2bCtDMXFwY3dqZFBnM3g3UmpPQmhVMkNkK1ZFeUJQWUNkcFFzZFNx?=
 =?utf-8?B?dHNJVlpoQjZmRGRKMFVVTHRGRWNTV1RJV1l0NFFBM1JvNHFxWC92MGc5Nitw?=
 =?utf-8?B?bjZ4V3o0VUY1N2pYMXBacWdBNGY4TmNMS1ZRNUFVOHJoOVdIbEwvYmxHYWg2?=
 =?utf-8?B?eldaK01IY3puSEdrT0p1L0ZBYUp1aTgvN1l3MWszVVNwM3Mrc1JnQ2RxR0ds?=
 =?utf-8?B?N3lPSUhrK1NBclNlYW50WWllYk43cFV1cmlCTDdKNURreWNIRGFrSXgya1pB?=
 =?utf-8?B?Z00rejN6ZEZGS1lZcjREVllGMGs0QXZyWGRVQ1JDQUd6QUpLTUtiakFrbUpJ?=
 =?utf-8?B?eEYrcEhwU3MrYjNPbVdWeUQrYndNNGlnMStydk5mRDNVT3BEanJtWm9Uc0dC?=
 =?utf-8?B?Q1I1Mm55VDlOMko5ZFhMc1ZqWHZnUEE2cXorVmp6ZzZwUUhCdjRoSG9mdnJp?=
 =?utf-8?B?STFReGdsUWdKV3gycXFFek5GN09zL2tXN09FTEpwSnRHQkxtRUdzSU1rUFBQ?=
 =?utf-8?B?QXNDdVBjdnkzZ1VmNzNpNEZBZ3ExZ3FUaDkyVWFhdXN1a0V1dGM1cGQyTkZ0?=
 =?utf-8?B?VUd0dTJ2YzU2QlpscmhTa2p6YW9KQmYvdFFibnJITG8yeEN4WVhuWE1Qai8v?=
 =?utf-8?B?eUZxQTNmdmxzcjNHQVVrMk1iTmJKWjdHRFBDTUd1RTZyNXhCcXFUSHBLTTBL?=
 =?utf-8?B?M2wrNnRBR01MZUNLVEp5R2FRazhhM0MrY055NGdlQjNsMHE5RlpMSGJpeWMz?=
 =?utf-8?B?U1ZiT3RKcmNjeTFsYmY4N011R01TYnFocThRVDRYeHRHVStTbG5SQ0JJR3Qw?=
 =?utf-8?B?TGl0SlQ3dE1LOUkvUkp0WEprcjYxNE11VlpmbWZLU2ZLc2pPSElnampYdUpz?=
 =?utf-8?B?MUdQMjZUOUwxOGQwSmFiUmhsZlZwS0d3UEZIWWdNaC91ajNGajQvWTZPczhR?=
 =?utf-8?B?K3hrMlRnY2ROTHFWb05tblNrdWNlOEI0U2MrTWtXeWxBZVRVTTR3OWhKbFVF?=
 =?utf-8?B?RlJybjhEN3h4Z2E1c0NjMG5MQVNJZU9OZXVyejZwM2I5SnZKb21taXIvQkw4?=
 =?utf-8?B?RzlNdHRSUmYwYWRZUUZ6UGo0aXVmRmMwY0VwdDBMc0tGdkhkL2tUNDZPb3Rv?=
 =?utf-8?B?UWFFNDZRN3RoQXo4VWJEWVZlYVE1YzBhWVNoNmJkWnJmZEFwc0t6RHZXU2hk?=
 =?utf-8?B?STdaTDV6ekp1eUxhQXd1bUg3UkZ6QXNGSWdqNTBUa3VBa1FHQjhuY0hkK2lX?=
 =?utf-8?B?cWR5dGRqclBaZjd4YktEMWJtMktUVW5OZlM2dkM4QXhqcHkwVVhMU1dWek1s?=
 =?utf-8?B?d2Y4T0UyOStKTDdjaHBaMEVIU0JtRk13TVJLUWMyYWlpNXJac0tTdGsyVmNT?=
 =?utf-8?B?TWQ2VzQ3UGY3UU1LRXhuT2dSWm41S25FOWRzMnBzVThKaDlzM2R2cjJzd3RF?=
 =?utf-8?B?NGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0C82E2506BDF6A4AB76FE3C7E73C8F94@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 470e7363-ec80-42fa-d09a-08da97ebd992
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 14:00:44.9420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bfcyK/5sp8i8yNP3O4jLgF9JR7yNJw6lZgYy7R9zPZU8Ed3/oBUpWdUV73ByPof1im4wRBieCMwjYan1mDJ2ZMLbxUWPzdlrf78aZheQLF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Do not re-activate PSR if
 there was a PSR aux error
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA5LTE2IGF0IDEzOjIyICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTA5LTE2IGF0IDE0OjA4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gSWYgdGhlcmUgaXMgYSBQU1IgYXV4IGVycm9yIHNpbmsgaXMgbWFya2VkIGFzIG5vdCBy
ZWxpYWJsZQ0KPiA+IGFuZCBQU1IgaXMgcGVybWFudGVudGx5IGRpc2FibGVkLg0KPiA+IA0KPiA+
IEN1cnJlbnQgY29kZSBpcyBhY3RpdmF0aW5nIFBTUiBhZ2FpbiBldmVuIHRoZXJlIHdhcyBQU1Ig
YXV4IGVycm9yLg0KPiA+IEZpeCB0aGlzIGJ5IHNraXBwaW5nIGludGVsX3Bzcl9hY3RpdmF0ZSB3
aGVuIFBTUiBhdXggZXJyb3IgaXMNCj4gPiBkZXRlY3RlZC4NCj4gPiANCj4gPiBDYzogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gUmVwb3J0ZWQtYnk6IENoYXJs
dG9uIExpbiA8Y2hhcmx0b24ubGluQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsrKy0NCj4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDlk
ZWY4ZDlmYWRlNi4uNDIzOTAyMDNhZDE5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTIxNTMsOCArMjE1MywxMCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wc3Jfd29yayhzdHJ1Y3QNCj4gPiB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQpDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIHVubG9jazsNCj4gPiDCoA0KPiA+IC3CoMKgwqDC
oMKgwqDCoGlmIChSRUFEX09OQ0UoaW50ZWxfZHAtPnBzci5pcnFfYXV4X2Vycm9yKSkNCj4gPiAr
wqDCoMKgwqDCoMKgwqBpZiAoUkVBRF9PTkNFKGludGVsX2RwLT5wc3IuaXJxX2F1eF9lcnJvcikp
IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9oYW5kbGVf
aXJxKGludGVsX2RwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byB1
bmxvY2s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiANCj4gQWxyZWFkeSBoYW5kbGVkLg0KPiBf
X3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQoNCkFoLCB5ZXMgdGhhdCBp
cyBjb3JyZWN0LiBUaGFuayB5b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0LiBTbyB0aGlzIHBhdGNo
DQppcyBub3QgbmVlZGVkLg0KDQo+IA0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoCAqIFdlIGhhdmUgdG8gbWFrZSBzdXJlIFBTUiBpcyByZWFkeSBm
b3IgcmUtZW5hYmxlDQo+IA0KDQo=
