Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EB2484864
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 20:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD8D10E239;
	Tue,  4 Jan 2022 19:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7E010E234
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 19:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641323781; x=1672859781;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=dLP1HzPxEkgFqVeA4SY5kiZsZhvcPNOotMLMjU9evMI=;
 b=Egatm3AHprn4CC00uiBlZo3UvDCJVE6PNH6PNcQi5eTtwzPQwdBUwM6+
 o9Llx2gVaGef7Me9g3GTHBswcxXWAWjSI7jYg9Xu/4RolDO7XVn6L2vf8
 Yib2tzv297mVMfYf0ytdr04kbNQwlLFwDAiM8RQ2gfRnnoObBXAIfHqi1
 qo8M3198jRZ+4WOLzMLKZ9Ejn8qVVClnB3zSLgLG6ifaQkxeyeycNHfTW
 cYGrZAO+qL0XlijtrNvdM6SLhOwKqS5Jqmr44je/aE9kOF0jbrVEVZ1hj
 VaomnnCWzFLAMoAbH8Vc0t1nLEL1NR1vteDEwsMoU0VGI0TzW4IBXyiUB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="305634893"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="305634893"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 11:16:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="470262204"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2022 11:16:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 11:16:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 11:16:20 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 11:16:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8ADnj0y/irQUhPjHeEd+sE5iJRb7EI8V5wKKkj1rRwho8RVMwP3eXTMWVp9GM4ZJsdN52twFuut+Wx7cLYhSH8+i1/qsB/ymrAfD+GzqFR9fPzendBat3xicl76kBDlnEFiGuaRxq8xLIzMpcTQHGKJtvk3VPOF565D8k5kqg5XaSPYUqS1z5bIKabOqytLeQJHIJ73+JBbPlMi5bEGUe8lqTKbXDKLBcVqlK3QvkUzcbxJlYM8bQIc0zRRJPjhqwEA0t2f4xIq7D+Kcu20a1h8d2H1OxsXT547ZAIP4A/g+aRCJ8smCqWXkz109wTIFidgG+9b4Y4cK1FHVSl+wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dLP1HzPxEkgFqVeA4SY5kiZsZhvcPNOotMLMjU9evMI=;
 b=nOCTBqNAvG6O33OOQa0IoeyyuZXWbTZscX1TchZv9aCv9AQLDDzkcCmM4cNFqQUy6xsActuVsYLYLz9gdvpewaLDYij1C6oAa5TiUtggdaLpuZTtlx67HlOhOTHKmKUDuUyKfDxpDpKO8m2PcCoLw98vDkwW8nTir0/QbCAZBSCuUZpkbMyukagsLJ95CJOfok3W/sfGUC6JK2cILLYcYbQ7Z0ap1KQBDOVqcZHPUstJm40Nqsgrr7hKbsLD7IxF8RK7p9vZ503w5lS8sHNYOEBKU7vPNyY5s6tmyGbqsbFxHdkg0/7h4d2Zpe0lZ85usgymtfLjLElyag5i1LUI8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by MWHPR11MB1725.namprd11.prod.outlook.com (2603:10b6:300:2a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.14; Tue, 4 Jan
 2022 19:16:18 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6969:18ef:2c3e:7cea]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6969:18ef:2c3e:7cea%6]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 19:16:18 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
Thread-Index: AQHX8vhQ1pkKW8VhYESX1NZZDFZZW6w3NqiAgAg7C4CAE+d0gA==
Date: Tue, 4 Jan 2022 19:16:18 +0000
Message-ID: <01a844d3840976817723ef5b89ff90257bd9e625.camel@intel.com>
References: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <4c02824ccbb7d40c15fc20ea272013c41e9aa54a.camel@intel.com>
 <2a4cc866a3c24ccfb55dab8bdfc18547957332f1.camel@intel.com>
In-Reply-To: <2a4cc866a3c24ccfb55dab8bdfc18547957332f1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d92ba955-65a8-45cc-4fa7-08d9cfb6afaf
x-ms-traffictypediagnostic: MWHPR11MB1725:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1725E45B03D9B6FB368B716E9F4A9@MWHPR11MB1725.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PFAwfmPp1v1sIMlA9GRvthb7Iu0w8cfh7c7hiD3c6mhl+1CA2+6RB7qyFrL00xbrNap0m0DXUlEJP/ZF0PhEkeE5394lKrbp9JEWnOsUgbWPxuXGntv+RfapPBXzkTUNB6eDWd6Z49PaVUH/TmzYTRwmtcywwEqMpR9RKZYJULmYfLfYwMdGjMq8H7K/pvH0eV1SDY3IIbhPeRrAU1PFvE8t6+RCn8m5QyZT8//FHo4tT9mOcUUmpgpRX9X4UJwM9R/AQtqYX+AiIb0lP93U8cx4r3oTN43TCFR58EZHuSR/YXOVVUiK5ryoA+QQ5Gnabfx5OerXzGlj9qTpRtYJZY869eQhWvfgqBCdCOKkijydETAn5FzkXFEESnH+1ZVErm5r2A1C71UHLtxfqFUy3xTErSRybiuPtYHfHBZWyAUe4CHa3CvSQ1naHtpVrps1yCkk1xEXzAungDWk2Uw37aOZLAvOpu6eHW9ZGrAQk/TUjSGFAuHUWWt0uVghR1T1FOYZoTJiJPO6Wqp+iUpKHD1oxGLfTi+PnHwnpt2PR72IKqIik+44Z8H0fXEr9yy2yGtGfoI7vnKqzJy5x0xeB3OOKiHDByfehEHICoDKvbATLmIwxVJdl6HF8pkyXzryQvQbPMng8y1dFb6GhErmr4pOxARvKaK1GmzBQGuQyGNhIFDqI9LdSoeU+OuHQ4muFRPuOoq94DD7XPJ+FZthsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(186003)(83380400001)(6512007)(2616005)(6486002)(6636002)(38070700005)(110136005)(6506007)(26005)(122000001)(86362001)(4001150100001)(66476007)(66446008)(76116006)(36756003)(71200400001)(64756008)(316002)(66946007)(508600001)(8676002)(2906002)(66556008)(82960400001)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkFVcEdQamlYUE9MNDJpcjlnTlJLbmo3VzFjWkxWaGk5U0FQSnRDakJCNnVv?=
 =?utf-8?B?TDRQWDYvSTdPSGtMaUk1TDgxQ1pNUVl2aUpmaTNHdUpWUTE5cDBCb1dkbERu?=
 =?utf-8?B?UUtPZC8vczgzOGg1RUJxK1VSazY5YTJKNGRkRFhBRW1teGNDQkZ1VjE2dkdo?=
 =?utf-8?B?TmNYVWZaSkw2NXNQNzk0UmJvY3gybUNYbUVxV3pNd25MeUNyZkx5cU9rZkZM?=
 =?utf-8?B?OVlJWkQ1aHVqS3NOZi9pWTRaSDdqY3lYNU5wNlJrS0pWOUo4cExkaFBTMDB4?=
 =?utf-8?B?WnFlZ2NBbzdQWms4aDk0WXNBL3k0akI3ZWluUTRSbzMzNU1CQ0F3WEJPdlVL?=
 =?utf-8?B?Q0c1MDRZTUxuNUJWSGlLbHI4WEF3d0dORGt1QlM4UTB0Q1YxNmJhL1JBYXJz?=
 =?utf-8?B?bjEvQkJkNHNSY1ZUR21iam91SmFQTXJLK1EvZ01TaHpRVlJrMS9wclhmRzgw?=
 =?utf-8?B?bWNVUEhiUzVCUHlqM2NVUVdtMXc5WTVGVFd1eThlZUtGSzlySjh5VGpjVVc5?=
 =?utf-8?B?WGdOZW9nWjVrT1pJVi9MNUsyODlzSjN4dG9aNXVpeDV3Y1VHeEk5a3FrUWFI?=
 =?utf-8?B?Zjl6VWVrTkF5MU9WWS8rSkd5ZkM0RFM1WG0xVlVRMVhMcGJWY0luYU9qaHha?=
 =?utf-8?B?bi9IRjRGM0NEWkMyN2dWcHdBZXhTTFFQMmlpRENsOWNYaVI1Q3F3a1pFTkNi?=
 =?utf-8?B?enF0U0Y3ZTlHOGk5aXJ1WmtkTzhCWkdNNmY0UEZtQW1oVnFTYlpaUHZnbERj?=
 =?utf-8?B?REcwOFhNQUNYN3FDZDR5OElGVnZDT2tNd3RCbm5oZHFkUHpLRjJtV1NRdGsy?=
 =?utf-8?B?U3Zrb3lHd0o0VEFQdDhiSjBzNC9BTEdJcVMrU1E3bWFMTjdxQ2lIOERGWnlI?=
 =?utf-8?B?Wnh1RXpLei9mYVBWckREaTJGSkttdlNXNkcxRzNMcmhMUWo5NGUxazhJOXlw?=
 =?utf-8?B?N2MvL2dBZ0pWSzdWeUFSSk9qVXB5Yjc5UlpESFJ6UEJnRi9MWWlqWHZhU0N5?=
 =?utf-8?B?Y0dYU3V0bEYwNEtxT0FiSk9hSDh4bk43WmlHR1BEamtHRGVYSnBoMVFqNXJ6?=
 =?utf-8?B?Y1VBclpQdEVOR2ZQUEFMN0VZYVlXTFBXamdOR2UybjI2d2dMYVFzRHoydUNt?=
 =?utf-8?B?alcvU0ZOcmpRcG1oYnU5MzZERzBRRldxb2h6cnBhR2N0eDVrdlpJRHF3djZz?=
 =?utf-8?B?QTROSDVmTW9DVVRVVUczbTZxZ2xaS3h5VDB2UHQyOW13ZlRXR2o1NlA4Rzln?=
 =?utf-8?B?SzA5dkF6L1R4RDJLVVB0ek1HZ2s4c1dFK0FyYkkyeitNZTJJWjBpSFhIaUdz?=
 =?utf-8?B?K3dsTVJmTzhvVzJhQWx4YlJ5SzJkRVhhc1NMQ3Z3VFNYM2p6YlVtVUdnT2hw?=
 =?utf-8?B?R09DQ3VtQ0xiRUJoak5aSjVYWVVFT1d4UW9rMHdLZmJlaEZIaG95MS9SeWJn?=
 =?utf-8?B?SFNsSWg4S1EzQ0NFWmpKMmVpaXFPWWVvL3dJM1NJcW9wRk9MMjIrajR6d3lR?=
 =?utf-8?B?bzdXK1ZPMEQvU2twTjltb2hxYXY1YlZoUlo1K3VVYWovdDZmY2tBdlZ0bCtn?=
 =?utf-8?B?MWk0dXE0RE1ZS3JsRWg2eWRZT1MzYU9ma1VOTUxBR0tlVnhDektydUlJZTQx?=
 =?utf-8?B?VDg2dnphRnQrWXVJY2JoNWErWEg2anZzaFpVMWNHMkRjM3UrbW5BcnhlcmdP?=
 =?utf-8?B?VnczUnlOMjRPN3Zva0tLcDhPdWpFdG9GZDc2TWZueHlkb1l2NGxZUnN4WXEx?=
 =?utf-8?B?K3E0MVNDNGRnTDF0elRuRGpaRlQ2MHpmYWQ5YndhNmpHSE04WjZFQWpZTS9P?=
 =?utf-8?B?dFVuQ2NMWThTR3B5UE1IYVhvK2NJRXFPaitYTktrczZuTnBoNXg1aS9HNDMx?=
 =?utf-8?B?RllXN2I3Qi9DRXFlYUxSVytZd3A0RTJXNDhidTd2bUhNOG1kVXJkSHFVOUxR?=
 =?utf-8?B?ejVVYlQ2ZEJJKzRCd0FZck1uOGhNN21HV2FQYlo5QnF3aGkwYWNvank2Y3ZN?=
 =?utf-8?B?NVZ3cE5PQ081N2hkZlRxVDVJWDNZMGlRYXJmV25PTlVYQ1dFRUxQOHZGZ085?=
 =?utf-8?B?WkZIdXFSQStza3NJTXZ3U0FEbFNHK3RWaXd2MXNCeFZIN2FwdWdVQU0xMnNq?=
 =?utf-8?B?d1F6cDM2b2xlUWM4SnlvVDJOWmhONDhzR21zY1lDOEoxWHV2a1VmZ1dyOC9F?=
 =?utf-8?Q?lV4w56P2tHHjxHOKRtGJkK4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <03EF87EEE32F384888D5E1DD3B38B34E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d92ba955-65a8-45cc-4fa7-08d9cfb6afaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 19:16:18.7189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PucxXuJuT1P9w3Zd0MLLtLt1ISojdUJ+67qohokjbphAslKxtT62WWoIsmAWAP9MSx59EJ9XZGt68BHNQALzCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1725
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
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

UmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCi1jYXoN
Cg0KT24gVGh1LCAyMDIxLTEyLTIzIGF0IDAzOjE4ICswMDAwLCBUb2xha2FuYWhhbGxpIFByYWRl
ZXAsIE1hZGh1bWl0aGENCndyb3RlOg0KPiBPbiBGcmksIDIwMjEtMTItMTcgYXQgMjE6MzcgKzAw
MDAsIFlva295YW1hLCBDYXogd3JvdGU6DQo+ID4gT24gVGh1LCAyMDIxLTEyLTE2IGF0IDE5OjQx
IC0wODAwLCBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcA0KPiA+IHdyb3RlOg0KPiA+
ID4gUmVwbGFjZSBHRU48bj4gd2l0aCBESVNQTEFZX1ZFUjxuPiwgaW4gbGluZSB3aXRoIHRoZSBu
YW1pbmcNCj4gPiA+IGNvbnZlbnRpb24NCj4gPiA+IGZvbGxvd2VkIGluIHRoZSBpOTE1IGRyaXZl
ciBjb2RlLg0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYWRodW1pdGhhIFRvbGFrYW5h
aGFsbGkgUHJhZGVlcCA8DQo+ID4gPiBtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBp
bnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RtYy5jIHwgMTQgKysrKysrKy0tLS0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gPiBpbmRleCBhNjliMjhk
NjVhOWIuLjc2MTZhMzkwNmI5ZSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+IEBAIC00Myw5ICs0Myw5IEBADQo+ID4gPiAgICAg
ICAgIF9fc3RyaW5naWZ5KG1ham9yKSAiXyIgICAgICAgICAgIFwNCj4gPiA+ICAgICAgICAgX19z
dHJpbmdpZnkobWlub3IpICIuYmluIg0KPiA+ID4gIA0KPiA+ID4gLSNkZWZpbmUgR0VOMTJfRE1D
X01BWF9GV19TSVpFICAgICAgICAgIElDTF9ETUNfTUFYX0ZXX1NJWkUNCj4gPiA+ICsjZGVmaW5l
IERJU1BMQVlfVkVSMTNfRE1DX01BWF9GV19TSVpFICAweDIwMDAwDQo+ID4gPiAgDQo+ID4gPiAt
I2RlZmluZSBHRU4xM19ETUNfTUFYX0ZXX1NJWkUgICAgICAgICAgMHgyMDAwMA0KPiA+ID4gKyNk
ZWZpbmUgRElTUExBWV9WRVIxMl9ETUNfTUFYX0ZXX1NJWkUgIElDTF9ETUNfTUFYX0ZXX1NJWkUN
Cj4gPiBXaHkgdGhlIG9yZGVyIG9mIEdFTjEyLzEzIGFuZCBWRVIxMi8xMyBpcyByZXZlcnNlZD8N
Cj4gPiBPdGhlciB0aGFuIHRoYXQsIExHVE0uDQo+ID4gLWNheg0KPiANCj4gSSBoYWQgZmlyc3Qg
ZGVmaW5lZCBHRU4xMyBiZWxvdyBHRU4xMiwgaW50ZXJjaGFuZ2VkIHRoZW0gdG8gZm9sbG93DQo+
IHRoZSB1c3VhbCBjb252ZW50aW9uIG9mIGxhdGVzdC1nZW4tZmlyc3QuDQo+IA0KPiAtIE1hZGh1
bWl0aGENCj4gDQo+ID4gPiAgDQo+ID4gPiAgI2RlZmluZSBBRExQX0RNQ19QQVRIICAgICAgICAg
ICAgICAgICAgRE1DX1BBVEgoYWRscCwgMiwgMTQpDQo+ID4gPiAgI2RlZmluZSBBRExQX0RNQ19W
RVJTSU9OX1JFUVVJUkVEICAgICAgRE1DX1ZFUlNJT04oMiwgMTQpDQo+ID4gPiBAQCAtNjg0LDIz
ICs2ODQsMjMgQEAgdm9pZCBpbnRlbF9kbWNfdWNvZGVfaW5pdChzdHJ1Y3QNCj4gPiA+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ID4gICAgICAgICBpZiAoSVNfQUxERVJMQUtFX1Ao
ZGV2X3ByaXYpKSB7DQo+ID4gPiAgICAgICAgICAgICAgICAgZG1jLT5md19wYXRoID0gQURMUF9E
TUNfUEFUSDsNCj4gPiA+ICAgICAgICAgICAgICAgICBkbWMtPnJlcXVpcmVkX3ZlcnNpb24gPQ0K
PiA+ID4gQURMUF9ETUNfVkVSU0lPTl9SRVFVSVJFRDsNCj4gPiA+IC0gICAgICAgICAgICAgICBk
bWMtPm1heF9md19zaXplID0gR0VOMTNfRE1DX01BWF9GV19TSVpFOw0KPiA+ID4gKyAgICAgICAg
ICAgICAgIGRtYy0+bWF4X2Z3X3NpemUgPSBESVNQTEFZX1ZFUjEzX0RNQ19NQVhfRldfU0laRTsN
Cj4gPiA+ICAgICAgICAgfSBlbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpIHsNCj4g
PiA+ICAgICAgICAgICAgICAgICBkbWMtPmZ3X3BhdGggPSBBRExTX0RNQ19QQVRIOw0KPiA+ID4g
ICAgICAgICAgICAgICAgIGRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9DQo+ID4gPiBBRExTX0RNQ19W
RVJTSU9OX1JFUVVJUkVEOw0KPiA+ID4gLSAgICAgICAgICAgICAgIGRtYy0+bWF4X2Z3X3NpemUg
PSBHRU4xMl9ETUNfTUFYX0ZXX1NJWkU7DQo+ID4gPiArICAgICAgICAgICAgICAgZG1jLT5tYXhf
Zndfc2l6ZSA9IERJU1BMQVlfVkVSMTJfRE1DX01BWF9GV19TSVpFOw0KPiA+ID4gICAgICAgICB9
IGVsc2UgaWYgKElTX0RHMShkZXZfcHJpdikpIHsNCj4gPiA+ICAgICAgICAgICAgICAgICBkbWMt
PmZ3X3BhdGggPSBERzFfRE1DX1BBVEg7DQo+ID4gPiAgICAgICAgICAgICAgICAgZG1jLT5yZXF1
aXJlZF92ZXJzaW9uID0gREcxX0RNQ19WRVJTSU9OX1JFUVVJUkVEOw0KPiA+ID4gLSAgICAgICAg
ICAgICAgIGRtYy0+bWF4X2Z3X3NpemUgPSBHRU4xMl9ETUNfTUFYX0ZXX1NJWkU7DQo+ID4gPiAr
ICAgICAgICAgICAgICAgZG1jLT5tYXhfZndfc2l6ZSA9IERJU1BMQVlfVkVSMTJfRE1DX01BWF9G
V19TSVpFOw0KPiA+ID4gICAgICAgICB9IGVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYp
KSB7DQo+ID4gPiAgICAgICAgICAgICAgICAgZG1jLT5md19wYXRoID0gUktMX0RNQ19QQVRIOw0K
PiA+ID4gICAgICAgICAgICAgICAgIGRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9IFJLTF9ETUNfVkVS
U0lPTl9SRVFVSVJFRDsNCj4gPiA+IC0gICAgICAgICAgICAgICBkbWMtPm1heF9md19zaXplID0g
R0VOMTJfRE1DX01BWF9GV19TSVpFOw0KPiA+ID4gKyAgICAgICAgICAgICAgIGRtYy0+bWF4X2Z3
X3NpemUgPSBESVNQTEFZX1ZFUjEyX0RNQ19NQVhfRldfU0laRTsNCj4gPiA+ICAgICAgICAgfSBl
bHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsNCj4gPiA+ICAgICAgICAgICAg
ICAgICBkbWMtPmZ3X3BhdGggPSBUR0xfRE1DX1BBVEg7DQo+ID4gPiAgICAgICAgICAgICAgICAg
ZG1jLT5yZXF1aXJlZF92ZXJzaW9uID0gVEdMX0RNQ19WRVJTSU9OX1JFUVVJUkVEOw0KPiA+ID4g
LSAgICAgICAgICAgICAgIGRtYy0+bWF4X2Z3X3NpemUgPSBHRU4xMl9ETUNfTUFYX0ZXX1NJWkU7
DQo+ID4gPiArICAgICAgICAgICAgICAgZG1jLT5tYXhfZndfc2l6ZSA9IERJU1BMQVlfVkVSMTJf
RE1DX01BWF9GV19TSVpFOw0KPiA+ID4gICAgICAgICB9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA9PSAxMSkgew0KPiA+ID4gICAgICAgICAgICAgICAgIGRtYy0+ZndfcGF0aCA9IElD
TF9ETUNfUEFUSDsNCj4gPiA+ICAgICAgICAgICAgICAgICBkbWMtPnJlcXVpcmVkX3ZlcnNpb24g
PSBJQ0xfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7DQo=
