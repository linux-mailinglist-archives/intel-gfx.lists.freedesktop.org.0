Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5559264E1B0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 20:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8C710E51C;
	Thu, 15 Dec 2022 19:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D056610E51C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671132085; x=1702668085;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=PYxjMAf6w79N9k670l1PslAEAJZ5uoWSmKST4FCKbJ4=;
 b=AyY1XAJ993iK+CpMWLzZqrOFnTGpWwBl5RQJnKGSyTQ2NLTn10iORr0o
 66iE9ZlrYPWxHftUsR3yda/xb0A1d48MpN55Iv4vRq0h64E1wF5xP2KWm
 QOqQuOriVL+oaWJdrb9Z0Go4Iz6wfvVuglmkAWRarMX4bH1SzKe2dGswy
 WugdLkAz4UWccEXILr+M6Sn5VKh0ZStIzSYQU1ezTqTdmlcsv+Woswk5m
 CCcP1GXKxIeZeBBirIu5qxqx+bUDhQbXF74fuhpgwpeP8LzAAJk53zrVo
 e3/sx6zORgbS8vPYkNP4BBFBqLjrNP2ZLRpQPGgrp8wlnY8SaDUa68yX5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="306444866"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="306444866"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 11:21:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="651636265"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="651636265"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 15 Dec 2022 11:21:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 11:21:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 11:21:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 11:21:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2uGOGrK2L+CXHPsFJ47l1btOqrNBFMcrKurwvq+0vD6LTqsbkFHCayBXkoOuqqB3uxIkn0dxwMgQcWvcGHlYt+PzOha1Z4+1L+I3ohhRhi2W307dYmbATONRemhTGz8QVXqoUwSo4Q6Sob7zO6kMnLcBe479ToeRr4uIzNUp7DhvR0dhijLVbybPdta0cOgVxipvgW62sen/FYXyCh/nJu7bJJUbM6M0tUATPJvGQ872iL8EJHM57P7gk80YUoqR65oQpaYnVFHKVc97LKrsfzOW3UHya1MuebEpV9chzMrivPlRa7tllbAPg3UuEbYsLpnJV0b0TmIaJMb9+71wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYxjMAf6w79N9k670l1PslAEAJZ5uoWSmKST4FCKbJ4=;
 b=JlphUlxvJuNZUV/ACwu7qNuWVybzwFJnLC1a/BmEDJTyspCpSjhxCoV3+nBbWCzNvoz3qNJhRmsuakIF9tV/VgJUO886+2y4CkVLsq8cZMVZRYhSCDyJzZ2PD2WL5ZX2P6srpLZI1pJ5Kj3pX0agRAc7I1Vkmf1aNDTWC98WUsJa9R3rCVlAL/75VTh4I80NVBm9+L2AMdmRUTFXIHwm6nFmcUl3kDegQjKbHrxQjq1/qIzoDgMZquyV1grv/xk603u+SmcsfzfwaEwxNvWC1/cU3xGIcpK1Y7/3/Ew13r9iX0o6y95YQW43cgFhPMQVQbNFMVAA4tXCJY8r/3+8fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5305.namprd11.prod.outlook.com (2603:10b6:408:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.12; Thu, 15 Dec
 2022 19:21:07 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.012; Thu, 15 Dec 2022
 19:21:07 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 1/7] drm/i915/gsc: Create GSC request submission
 mechanism
Thread-Index: AQHZD5u7uAijxZNHE06XVo4PbhoZe65vVlaA
Date: Thu, 15 Dec 2022 19:21:07 +0000
Message-ID: <29c51b99784f84c81e8155c6c7d35029c728dde8.camel@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-2-suraj.kandpal@intel.com>
In-Reply-To: <20221214090758.3040356-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN9PR11MB5305:EE_
x-ms-office365-filtering-correlation-id: 7cdea30e-6a9b-4ea4-a73f-08daded1844f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NNTjK1voF4n2cLgkancmIeb621CbPha9NrBLG6MxdmC3WoDtqYyLM9r1omLxQXDtTtwLVQ93BVlV0qi6fdEDlkYRlD0G+R1RKJFQ5PFQpmrOLf4vszMuve9ajtl9BdQ9e280lgaaQ3OJWi5jdBXtuGbzu9uHTJ+Imox+ODDzfzzO1S2PpuAY0KKkkdeHuAMvOLEQjgLz9hOYVz35Iz4eAYFwwhN+b8OXo4zhvj4/jdl2qT9EJRaJWYNGEAUwC5rBnjZJysw851FlDwjF40I3CerIITpvy5lDJ3VQvlreANeqJhUBQYfFxwjym2CQlPzLSmN/dNz1tZPRA3qaHCA/OoFuAxLM+pjj3N3b14Z7CyxzIqi5ArnN8mJKcqIGjnlq5IP7jNgOCPe1UFBN8ZMZ965lm/fC3mchCLsEXldMnh/WTorlNCnoqCGNRHgdnUTkPbWo8e0X8UPi5L63shWFe7E4CG3i739nAkZVx05RlO2P+iC1WRP3oaFjIupJ16W6XLLB0D9qMt9X9JU6CDxLul5YhDJlmVqR3n5vR+LuiD/aZlPnpQfJFyEvPtG8GoNbUZX9Lv8JAq401HN+sIg1pZ/xwdqc5KLC1J5kUj+2uY9fCePbP40poiRWflf6yc6Hl0BC3RROTkKf0oZRatXu0ecJ0cvsvC7MduUScJ+EeuRPmihgFQB4eM+XLi1NOoH+iB08x3W/khOyR3+eMyh7hQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(346002)(39860400002)(376002)(451199015)(2616005)(110136005)(86362001)(54906003)(316002)(478600001)(36756003)(38070700005)(83380400001)(38100700002)(6506007)(82960400001)(122000001)(26005)(6512007)(186003)(71200400001)(2906002)(6486002)(66946007)(41300700001)(107886003)(5660300002)(4326008)(8936002)(91956017)(66446008)(8676002)(4001150100001)(66476007)(76116006)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MnBpWEV3b3VtWjJHTzlrNzFuTTExN1I2NStwcUtDUmNvQm5ybWU0NWFmT2Iw?=
 =?utf-8?B?Mlc3VjhjYnh5SHNxajczYytPTUdIL2g4YUJFa0pkZDA0azdGVS9iQU9vL1RD?=
 =?utf-8?B?QVlwOGJWbDNzOUhob1BYUVlTT1VCMzUxbzBlR3NmaDNZT3p3UUdVQnhUUC9U?=
 =?utf-8?B?dDUrMnM0MWlnNzg0WGVyZjUyYkFWbW9iR0ZlQWUwR0RZaUl2RVh5RU9pcmd4?=
 =?utf-8?B?N2ZoSGwxVDhRWE8rQ2NvQTZJU0VBS1FhSTltV1ZFK0NUaW1YNURLUGhqZGxO?=
 =?utf-8?B?em94YTR1QUQ4dmdtQ21WemJYOUNzY3pIcFlXTnBnS1BaTmh5aFZITTZpdkJE?=
 =?utf-8?B?K0tIa1UrWHNYOGEvMFFSMmhJQUE5dTkwKytwZlFoMlhzbStTakNjRGZxTVJt?=
 =?utf-8?B?cnJMbHRHTGhhbVJ1MnF3bG1zU0FjWGdESFVQUHI1YnArTk9Md25zVytlcEpt?=
 =?utf-8?B?ZnNPWGRaQjR3bUlpanM1bEU1aStIY0Q3aDdhZC9SSVJZNlB2L0VySWdvSVBL?=
 =?utf-8?B?RU5YSDA3b1hMYlR1VVRSOUxaaytDSlRjUytGdnVLd2xBV1IxckVDNGs4cUZP?=
 =?utf-8?B?cTllZGo3Y0RzdXNXWTA5NDBBOS9mTDc1Uy9SRUNVWkdieEtnT2NvSjQ3K2M4?=
 =?utf-8?B?eGZJdjJvZW5UZndId0Q2cEpjQ3hyTUlRQTNsdEZqVG9GSHZYWVo4dlg0dmNu?=
 =?utf-8?B?SjNVRThiVmVEZDFBS1grWWNCSGovbUN0RVZWNjc4UzdoMmdPUDdkMzhzbG9X?=
 =?utf-8?B?NmhlVXlmQTJqd0VNTVJWT2p0ckNnSE9QUEJqZ2V5QXgzcVkxNktacFB0WWJ6?=
 =?utf-8?B?cVREYUt3cXBkalZ1K2c5UkEzSEcyZGhPV1ptbWg1bHRCZGdXT1Exc2NZeVJN?=
 =?utf-8?B?ZmphZzdSeUx5dlE2RGNtY0M3VzZ6VHRwekdDN1JrV2d2N0ttazJseU45cGFO?=
 =?utf-8?B?L1J6Z21OUWo4c21zMUUxMFQ1RXJqVDRSQ0I1a0UxN3o3c2N5bUx1OU50NEZ4?=
 =?utf-8?B?dHp5RFRsUVpPN28zQWNBY3MvekZMVy8ra1lINDhocWZndlJDRG9TT3ZxMk1L?=
 =?utf-8?B?djlRU09IL3p0QUdWd09QS0s5dng4U05tNDBCTmVJYUJibFd3cUl5VWliTXIy?=
 =?utf-8?B?U2xxNlc1alQyWGdEWVpaa1ZHMXo0T2hCdUNGYTRNS3IrY1pYOEVXSVFHRHZm?=
 =?utf-8?B?VW5aTDE0MnE3SHhtNWxJaU9odlRWL1NOTE9pRFVxRm5zcmk5ZSs1VUNQVEVy?=
 =?utf-8?B?OThrNFhPTVM0T0lCTFMzK2wvdEd1b1lRSW5DbkdHR2kwQmgyVjk4djcwLzRQ?=
 =?utf-8?B?Z0lmVE4xaEJ6TTBqamJmY3dQcWtxKzBlN2p1cVZNb3hOL0p5dUNFMXpFVjZF?=
 =?utf-8?B?NW16WEN5WE5nb0Y1VzFWeXlKcktQMjRSYm56emhKZTJWMmRoVWZwR0c3Y2cr?=
 =?utf-8?B?OGIyZWZpL2ZFUHRINk93SUdWS201VVNBVytuNHNITHhRUk1BRUMzM1p5Qzhk?=
 =?utf-8?B?OVdOOWpkL0VHb0s3Zzl0WEJPZFJybVRIYVZvWmU5VS9WZ05FSHNOZDFkYkxQ?=
 =?utf-8?B?ejlYMnd4RWVCUUhqRlJmWi9rQXJCSVNKaEZEVVg3QUlobkpOdytkRGtRSlFW?=
 =?utf-8?B?L1llQW0xclJaaTZoOCtFbkRWSmp3NFRvUXNvRlhJcVF2RWpFWEZIRTNNWXdV?=
 =?utf-8?B?UlZKRno0bUEzeDhBa0pUeDZWbGxzWnIyK09hSDVzcnQ1MmRQMXBXOFpDVWZz?=
 =?utf-8?B?MjFtYXdod2tNMUtVTzRMT1QwTko3aVJSbERQS3E3SzExYmhuTWg4TmlzZFJL?=
 =?utf-8?B?dnMxalNqWEFMbnN1VzhzYzBQRXdMbFFZb3gvQlpJODNIc3BXY1drVlhsOWZq?=
 =?utf-8?B?R09abUw1eGN1VS9CS1JsMzJURmRrR0hWUFhaZ1hxOTlMMTdFanVNUTJPTDNJ?=
 =?utf-8?B?ZU1RNHkzSXFvR1NQYmdSWmlVSFVNY0lHRjU4TmxwdG8zamZ0Sk1kRkFIb1hj?=
 =?utf-8?B?QktJN2pJNHV3czdHRHlENnd6RXhYYU5hd2tNMGZHc2J0eHp3SHRWeUNNMUZD?=
 =?utf-8?B?SEI5MFZXWEdIZTFlWEh6WEYzSzlNNkw0NVdmRVNmZnNvbFJ0MnNvUGR5b1BH?=
 =?utf-8?B?UUVmQTRZa2l5N1F3dmhjQm9wQXdXMlNTNlNYOXBrRUxMejZzakFpNStieTFh?=
 =?utf-8?Q?3D+WbSK4NQyM+Fa89Qga09Y=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C75C215C72BAB4A92D5C7FD82C7B6AC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cdea30e-6a9b-4ea4-a73f-08daded1844f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 19:21:07.5377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AYQ3vBr0OSGkFVWLuJVy1hThwksj0JRT4yKuN/ApRm4sIBvrjp91H8uBno/Pv8MtWMbLoGM5PV/3BdBbGFkPb+CZMIIxEWML03kL3OuzqSyEnjObozqX9Hho3JYQ+diI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5305
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/7] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCk9uIFdlZCwgMjAyMi0xMi0xNCBhdCAxNDozNyArMDUzMCwgS2FuZHBhbCwgU3VyYWogd3Jv
dGU6DQo+IEhEQ1AgYW5kIFBYUCB3aWxsIHJlcXVpcmUgYSBjb21tb24gZnVuY3Rpb24gdG8gYWxs
b3cgaXQgdG8NCj4gc3VibWl0IGNvbW1hbmRzIHRvIHRoZSBnc2MgY3MuIEFsc28gYWRkaW5nIHRo
ZSBnc2MgbXRsIGhlYWRlcg0KPiB0aGF0IG5lZWRzIHRvIGJlIGFkZGVkIG9uIHRvIHRoZSBleGlz
dGluZyBwYXlsb2FkcyBvZiBIRENQDQo+IGFuZCBQWFAuDQo+IA0KPiBDYzogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4NCj4gQ2M6IEFsYW4g
UHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBTdXJhaiBLYW5kcGFsPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgIDIgKw0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX2Z3LmMgICAgfCA2MiArKysrKysrKysr
KysrKysrKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX2Z3Lmgg
ICAgfCAgMyArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZndpZi5o
ICB8IDQxICsrKysrKysrKysrKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTA1IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX2Z3aWYuaA0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgNCj4gaW5kZXggMmFmMWFlMzgzMWRmLi40NTQxNzk4
ODQ4MDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21t
YW5kcy5oDQo+IEBAIC00MzksNiArNDM5LDggQEANCj4gICNkZWZpbmUgR1NDX0ZXX0xPQUQgR1ND
X0lOU1RSKDEsIDAsIDIpDQo+ICAjZGVmaW5lICAgSEVDSTFfRldfTElNSVRfVkFMSUQgKDEgPDwg
MzEpDQo+ICANCj4gKyNkZWZpbmUgR1NDX0hFQ0lfQ01EX1BLVCBHU0NfSU5TVFIoMCwgMCwgNikN
Cj4gKw0KPiAgLyoNCj4gICAqIFVzZWQgdG8gY29udmVydCBhbnkgYWRkcmVzcyB0byBjYW5vbmlj
YWwgZm9ybS4NCj4gICAqIFN0YXJ0aW5nIGZyb20gZ2VuOCwgc29tZSBjb21tYW5kcyAoZS5nLiBT
VEFURV9CQVNFX0FERFJFU1MsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9nc2NfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dz
Y19mdy5jDQo+IGluZGV4IGU3M2Q0NDQwYzVlOC4uZjAwZTg4ZmRiNWQyIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuYw0KPiBAQCAtMzAsNiArMzAsMzUg
QEAgYm9vbCBpbnRlbF9nc2NfdWNfZndfaW5pdF9kb25lKHN0cnVjdCBpbnRlbF9nc2NfdWMgKmdz
YykNCj4gIAlyZXR1cm4gZndfc3RhdHVzICYgR1NDX0ZXX0lOSVRfQ09NUExFVEVfQklUOw0KPiAg
fQ0KPiANCkFsYW46W3NuaXBdDQoNCg0KPiBAQCAtNDksNyArNzgsMTIgQEAgc3RhdGljIGludCBl
bWl0X2dzY19md19sb2FkKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaW50ZWxfZ3Nj
X3VjICpnc2MpDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+ICANCj4gLXN0YXRpYyBpbnQgZ3NjX2Z3
X2xvYWQoc3RydWN0IGludGVsX2dzY191YyAqZ3NjKQ0KPiArLyoNCj4gKyAqIE91ciBzdWJtaXNz
aW9ucyB0byBHU0MgYXJlIGdvaW5nIHRvIGJlIGVpdGhlciBhIEZXIGxvYWQgb3IgYW4gaGVjaSBw
a3QsIGJ1dA0KPiArICogYWxsIHRoZSByZXF1ZXN0IGVtaXNzaW9uIGxvZ2ljIGlzIHRoZSBzYW1l
IHNvIHdlIGNhbiB1c2UgYSBjb21tb24gZnVuYyBhbmQNCj4gKyAqIGp1c3QgYWRkIHRoZSBjb3Jy
ZWN0IGNtZA0KPiArICovDQo+ICtzdGF0aWMgaW50IHN1Ym1pdF90b19nc2NfZncoc3RydWN0IGlu
dGVsX2dzY191YyAqZ3NjLCBzdHJ1Y3QgZ3NjX2hlY2lfcGt0ICpwa3QpDQo+ICB7DQo+ICAJc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlID0gZ3NjLT5jZTsNCj4gIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycTsNCj4gQEAgLTY4LDcgKzEwMiwxMSBAQCBzdGF0aWMgaW50IGdzY19md19sb2FkKHN0cnVj
dCBpbnRlbF9nc2NfdWMgKmdzYykNCj4gIAkJCWdvdG8gb3V0X3JxOw0KPiAgCX0NCj4gIA0KPiAt
CWVyciA9IGVtaXRfZ3NjX2Z3X2xvYWQocnEsIGdzYyk7DQo+ICsJaWYgKHBrdCkNCj4gKwkJZXJy
ID0gZW1pdF9nc2NfaGVjaV9wa3QocnEsIHBrdCk7DQo+ICsJZWxzZQ0KPiArCQllcnIgPSBlbWl0
X2dzY19md19sb2FkKHJxLCBnc2MpOw0KPiArDQpBbGFuOiBUbyBiZSBob25lc3QsIGNvZGUgZnVu
Y3Rpb24gbmFtZXMgKyByZXNwb25zaWJpbGl0aWVzIGxhY2sgcHJvcGVyIGhpZXJhcmNoeSAtICBk
b2Vucyd0IGxvb2sgcXVpdGUgcmlnaHQgZnJvbSBteSBwZXJzcGVjdGl2ZSBmb3IgcmVhZGFiaWxp
dHkgLyBzY2FsYWJpbGl0eS4NCkluIG15IG9waW5pb24sIHdlIGNyZWF0ZSBhIHNlcGFyYXRlIGZ1
bmN0aW9ucyBmb3IgbG9hZF9mdyB2cyBoZWNpX3BhY2tldC4gQnV0IGhhdmUgYSBjb21tb24gdXRp
bGl0eSBmdW5jdGlvbiBmb3IgdGhlIGFjdHVhbCBzZW5kaW5nIHRvIEhXIChlbmdpbmUtPmVtaXRf
Zmx1c2gpDQphbmQgd2FpdGluZyB3aXRoIGEgdGltZW91dCAoaTkxNV9yZXF1ZXN0X3dhaXQpLiBX
ZSBrbm93IGhlY2lfcGFja2V0IHdpbGwgaW4gZnV0dXJlIGJlIHVzZWQgYnkgUFhQIGFuZCBwb3Rl
bnRpYWxseSBhY3Jvc3MgYm90aCBjb25jdXJyZW50bHkuDQoNCg0KVGhlbiB3ZSBtaXJyb3IgdGhl
IHNhbWUgdGhpbmcgZm9yIGdlbmVyYWwgaGVjaSBsb2FkICh0aHVzIGFsc28gYWxsb3dpbmcgZGlm
ZmVyZW50aWF0ZWQgZGVidWcgbWVzc2FnZXMpOg0KDQogICAgICAgIGludGVsX2dzY19lbmdpbmVf
c2VuZF9sb2FkZncNCgkJfCAgICAgKGFsbG9jYXRlIHRoZSByZXF1ZXN0LCB1c2UgdGhlIGdzYy1j
ZSkuDQogICAgICAgICAgICAgICAgfC0tLT4gZW1pdF9nc2NfaGVjaV9wa3QgKGZpbGwgdXAgdGhl
IHNlbmQtaGVjaS1wa3QgY21kKQ0KICAgICAgICAgICAgICAgIHwtLS0+IHN1Ym1pdF90b19nc2Nf
ZncocmVxLCAuLi4gdGltZW91dCkNCg0KICAgICAgICBpbnRlbF9nc2NfZW5naW5lX3NlbmRfaGVj
aXBrdA0KCQl8ICAgICAoYWxsb2NhdGUgdGhlIHJlcXVlc3QsIHVzZSB0aGUgZ3NjLWNlKS4NCgkJ
fCAgICAgKHdlIGNvdWxkIGV2ZW4gcG90ZW50aWFsbHkgY3JlYXRlIHRoZSBNVEwgQ1MgSEVBREVS
IGhlcmUgaXRzZWxmDQogICAgICAgICAgICAgICAgfCAgICAgIHNpbmNlIHRoZSBHU0MtQ1MgbWVt
b3J5IGhlYWRlciBpc250IGFuIGVudGl0eSBvZiB0aGUgY2FsbGVywqANCiAgICAgICAgICAgICAg
ICB8ICAgICAgc3Vic3lzdGVtIHN1Y2ggYXMgaGRjcCBvciBweHAsIGJ1dCByYXRoZXIgaXMgdGhl
IGVudGl0eSBvZiB0aGUNCiAgICAgICAgICAgICAgICB8ICAgICAgKEdTQykgY29tbWFuZC1zdHJl
YW1lciBwYXJhbSwgc28gYnJpbmcgaXQgaW50byBpbnRlbF9nc2NfZncgZmlsZSkNCiAgICAgICAg
ICAgICAgICB8LS0tPiBlbWl0X2dzY19md19sb2FkIChmaWxsIHVwIHRoZSBmdyBsb2FkIGNtZCkN
CiAgICAgICAgICAgICAgICB8LS0tPiBzdWJtaXRfdG9fZ3NjX2Z3KHJlcSwgLi4uIHRpbWVvdXQp
DQoNCiAgICAgICAgICAqIGludGVsX2dzY19lbmdpbmVfc2VuZF9oZWNpcGt0IGNvbW1vbiB0byA+
MSBjYWxsZXItc3Vic3lzdGVtcw0KDQoNCkFkZGl0aW9uYWxseSwgb25lIGxhc3QgdGhpbmcgbWln
aHQgYmUgdG8gbW92ZSBvbmx5IHNldHMgb2YgZnVuY3Rpb25zIGludG8gc2VwYXJhdGUgZmlsZXMg
d2l0aCBjb21tb24gaGVscGVyczoNCmludGVsX2dzY19mdy5jIDogYWxsIHRoZSBmaXJtd2FyZSBs
b2FkaW5nIHJlbGF0ZWQgZnVuY3Rpb25zDQppbnRlbF9nc2NfaGVjaS5jIDogYWxsIHRoZSBoZWNp
IGNvbW1hbmQgcGFja2V0IHNlbmRpbmcgcmVsYXRlZCBmdW5jdGlvbnMgKGhlcmUgaXMgd2hlcmUg
d2UgY2FuIGFkZCB0aGUgR1NDLUNTIG1lbW9yeSBoZWFkZXIgcG9wdWxhdGlvbiBhbmQgaW4gZnV0
dXJlLCB0aGUgaG9zdC1zZXNzaW9uLWlkDQphbGxvY2F0aW9uIGZvciBQWFApLg0KaW50ZWxfZ3Nj
X2NzX2hlbHBlciA6IGZvciB0aGUgc3VibWl0X3RvX2dzY19mdyBhbmQgb3RoZXIgY29tbW9uIGZ1
bmN0aW9ucyB0byBib3RoIGZ3LWxvYWRpbmcgYW5kIGhlY2ktcGFja2V0IHNlbmRpbmcuDQoNCg0K
QWxhbjpbc25pcF0NCg0KDQo+ICsJdTggZ3NjX2FkZHJlc3M7DQo+ICsjZGVmaW5lIEhFQ0lfTUVB
RERSRVNTX1BYUCAxNw0KPiArI2RlZmluZSBIRUNJX01FQUREUkVTU19IRENQIDE4DQo+ICsNCj4g
Kwl1OCByZXNlcnZlZDE7DQo+ICsNCj4gKwl1MTYgaGVhZGVyX3ZlcnNpb247DQo+ICsjZGVmaW5l
IE1UTF9HU0NfSEVBREVSX1ZFUlNJT04gMQ0KPiArDQo+ICsJdTY0IGhvc3Rfc2Vzc2lvbl9oYW5k
bGU7DQo+ICsJdTY0IGdzY19tZXNzYWdlX2hhbmRsZTsNCj4gKw0KPiArCXUzMiBtZXNzYWdlX3Np
emU7IC8qIGxvd2VyIDIwIGJpdHMgb25seSwgdXBwZXIgMTIgYXJlIHJlc2VydmVkICovDQo+ICsN
Cj4gKwkvKg0KPiArCSAqIEZsYWdzIG1hc2s6DQo+ICsJICogQml0IDA6IFBlbmRpbmcNCj4gKwkg
KiBCaXQgMTogU2Vzc2lvbiBDbGVhbnVwOw0KPiArCSAqIEJpdHMgMi0xNTogRmxhZ3MNCj4gKwkg
KiBCaXRzIDE2LTMxOiBFeHRlbnNpb24gU2l6ZQ0KPiArCSAqLw0KPiArCXUzMiBmbGFnczsNCj4g
Kw0KPiArCXUzMiBzdGF0dXM7DQo+ICt9IF9fcGFja2VkOw0KPiArDQo+ICsjZW5kaWYNCj4gLS0g
DQo+IDIuMjUuMQ0KPiANCg0K
