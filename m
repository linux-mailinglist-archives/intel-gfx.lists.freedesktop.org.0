Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C598939AC
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE0A10F033;
	Mon,  1 Apr 2024 09:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eMkef2FL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD53910F033
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711964730; x=1743500730;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=otxyA0WVLRHL2ZQGqKsGC65JnKcpgwQi1YOFgDUgy1c=;
 b=eMkef2FL/ODfgo8zW68BNif+4+35XKY/Gsd9eUcFR/R2UqtOEcOI0oxM
 X/tSD8KImf1u3yLzIzbvvKNXbPO47G3XzfQdXLZLXL3O3arL855AGxalS
 /5QlJgPO/aezNo5GNZ71cxb5P3XvHcB/kWFOZ/QPUykx5za4jjkr06IvK
 bTVX5+JjFCnkw+AU+loBg0Nm/m9UuQvyAqgEc3Nr3xq27J2pWlmgKH92A
 RPuVYIRtp5eEJEXtMyEibzsXI6i0GkDsfTqjDHM3Th6d0mgsyRCcw7qYI
 YPhl6SO/yF7gPBjgxfPk4F1OSxdLDa12FCWRdzofy6vGpm/vpz53escR1 Q==;
X-CSE-ConnectionGUID: k0oGCZ1RTzOT0B7GUGDPKA==
X-CSE-MsgGUID: HrAbMCzSRSmH5pwZJf20JQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7199953"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7199953"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="55143719"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:45:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:45:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:45:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:45:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:45:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/DjQOQIJhEkEUSmzQNA6vfvYXPO+ERiY6LGdV8ul3VpZgAjGMdaYaInU2pb3oV4HRuI3v+TcPfZnR5T+/t0yaBGaPlZ3u5XAjgrfO0due3D7BYMWFY/qeRc0CGYfc4VSCal0eyVG/h6HeE0J5Nc+JDG5xQjbMIVltFE/LP1IGQaJNMc+gvH+YUQbsU+mvcAkZV2L68eT+xOP8wU2mlEijTuklA2V16gnkmfDN6bXZ75xWp3sk+aro/EVF51aQ4tSTxxxfBqoCRRp3pmxRkSFvB7CVCcWcvMTf80+S+JOcIBF7FwMeTxYE0U/oTqS55CrjjpZmqM/KP8UT0YqYla9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=otxyA0WVLRHL2ZQGqKsGC65JnKcpgwQi1YOFgDUgy1c=;
 b=KYWYFeZ+3VxuJoVlMyj00TX39FgpnX1NcvIMbID4MpX4QZ15O/iwG6ppBfD7o1bYyBAFRBxFEQ5sh8xZd7a47b3r8/pxAB0a0vWU36ygm2gO4ZpWwhYS0EUF5QUrdvbEBci4UHzlrro5YqqWxONfd6/aWdz3hOExc+6Ze31F4/sgg9FXxphLRIdiNOBKAQTes9ASEjsK05ARCL/s+6LGOs3bFNLXN5TSvbEMqsILBbEBXrkzV8smXchP91EUkDNvngk/lsU23TgS9AOIo9P1YaF+C5uZyDW6mOU0+mCwM1dPsmH41TgVAKroI5BenkM972uJu327lfNzV8rZkJPcAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8773.namprd11.prod.outlook.com (2603:10b6:610:1cb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Mon, 1 Apr
 2024 09:45:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:45:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 14/22] drm/i915/mst: Reject FEC+MST on ICL
Thread-Topic: [PATCH 14/22] drm/i915/mst: Reject FEC+MST on ICL
Thread-Index: AQHagXZeBFQ0rVfhekisyDVNug5DLLFTL6Pg
Date: Mon, 1 Apr 2024 09:45:21 +0000
Message-ID: <DM4PR11MB6360A450534D9436765B8B9FF43F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8773:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eUQ696L5uzmj1BziP9MrKzihiS0eaV9wtf5xqY+W1AZYIPkjirZVNZ8uzlEgP+/vPKiPx1X4wBrE1y+olvg02XNlnzGCl92EkHIVdDHLEEDbB/hE/oP48umjtJHxSinulifheqtAbgUcmg86KoGQBQTBlPecIIvgGQCFLWMbOayvtlH0dgPmJpaE0Xxer0ceozlycQV66XIBdQW8fAE68htQ+TF8WfJGBhAlCbWOQcxw5NlPb5fgGQZe8XIovqYz63vEO09LTeDYFMYmpND1z0YpSr8lgtWeZUrbs0uXANE8HA/cWNlMOeNkvo0804sEX+22wTm8mVgfE7194AtDIcRh2F2h0bh3ROLe13tL5b6CjCUaB/E4vVcQunxXL8WA6NkndjKY1UPT1cxAB9QaObfoWXYqKzzZzefjLfcm+crSw/pDkPQh2C+TxgkEWXu6/M6Rx6yXvhe39t55LQeiyAvDB9VJFcCobdx3c5N9t8qbRGGoKznhE4UtyeLtBhVcfj7BSqSRITx9axMwJlSwprf1wYY+OigR5/f+mZmTKYGxXf1QAUcjaGh8TlVzu7i7TIt2ZeyBu9RnwlN0vTOv9H/4zLcKlAxBjmM5WcrPbjHB4PdOnMjDoH14IYc7NH4jwyVZ0J3zF7BMm1wkv/PWmqZCwAjhOXeLUhTWoo22PZc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0xoWC9ZSUNOaXpBWktMeTJ5bWVCdUJ1SXkvQUlHVkQxTU1XMFpXalI3eHp3?=
 =?utf-8?B?SnQ2cUVJUGp2Mk9wQmtBcUhUbDVSY0FrNHR6UG1Ya2xkQW1YclBYZzJ2dEtM?=
 =?utf-8?B?OFZBdThNb0NNL2dMQnhwa1BCNjV2bGRjN05FYkM1MnN4MnM2WXhlQTFFRDV5?=
 =?utf-8?B?V1l1VHViUk1ONTRnRStSVlAvUzIxV2Y0Y25GSENVcWJjRHR5aEppeDNvSTVL?=
 =?utf-8?B?aW1DTC9BR1JpY1g0ZWNZYXhXU0VWRWhCTlE5NmdCTDErb0tVdXRKbkNNTG5U?=
 =?utf-8?B?amp5d0RpMVVKaUs0M2Z2SnJNSmZkRW04WnJ6WURRMGwwY1VSekFhY2lzeDZw?=
 =?utf-8?B?WFFNdTd2MzFQdnhNK1l2cUM2dGIxbkJRK1ZKUFVSUk45NGc0aG9JZjFzMlVu?=
 =?utf-8?B?VmhIRVdNVDNobEVsTGM2RFhMV1dFejcybExDRjhiQzRwaWtITVE3Q2lLT0Fn?=
 =?utf-8?B?b3JVT1JKU1pnRU1GZXBncnNSaStUdHkrOVBTNGRGTXJzd2J5QUMxcENXWHNP?=
 =?utf-8?B?cVJDUHRrQnp5aTlNSjc3eHl2TWZRMi9OdElCWnB2RU1OVm5rSS9waWxuWkcr?=
 =?utf-8?B?cjFrSEM2UUtkL0U1RVA0Z1orN05kK3dDNVJ3Vm1rRmNqWXlwVTZCczQ3UEx0?=
 =?utf-8?B?R0lQNmN0ZlA1cms1TnZlc3p1U05pdWN0OU44VXV6TDhlVE4wTm9DUmROSEZX?=
 =?utf-8?B?SXVtY1J5SDcvdVRQSmt4Q2o3aHdVOUhsaGJtWDlMbHUxa0NqZk9yVjlzNHlG?=
 =?utf-8?B?bGtWR3QwWFdIaTVldTc0TVlxaUpBR3c1eFY2VUh3Qis2ZHBaNzdWQjhTdCsz?=
 =?utf-8?B?VHQyL1N2dWQzNVBTYk9aRkZ1WGx1ZlVjZGdBbjB3dzRRU0VJSmk4QkN6bVE2?=
 =?utf-8?B?Y3RHelZGM0o3a2c2NEFoL2dYVHg1YXo0dlBFc0p3eGU1RjZVWTlGbG0xWFdT?=
 =?utf-8?B?QXJ1WFp1eWR4bWlEUVFsZ3k1UDVuZnJPUWdMTkEyd2pQTGZHSk1ZcE94cEpr?=
 =?utf-8?B?ZTJWT0pURk14R1h1M0daWUp5K2V5MXU2bTF1dEdydEdQOUVTajV2Z1kwQ28r?=
 =?utf-8?B?M0ZydXJhZ3JKQUNLY0V2TnVsbHpQemEwS2ZXemFSNFQvQXF6Tll2K3ZmWEtv?=
 =?utf-8?B?cEhGSUJid04vY1BFS1AvU1BLYWltOENBeWtrdS9udEVtNHRlTmFlN3RMQ2h2?=
 =?utf-8?B?eWRkV3VibUQxRzNZQkJ2bVBEZ200S1JjQ1RHck1FL25HTXpoVjVqWmdsUkk1?=
 =?utf-8?B?d0R1ZHgwTFZhT2dEVVhzWGJocVRiMUVnOUFmaHBabUFHcTNyK0dsZGllSW1L?=
 =?utf-8?B?QUs5Q2doUkVPbzJ4ay9iaWdRV0tGemJwSGxKNUhSaHJTaHY3Y0x6UHBjSEE5?=
 =?utf-8?B?Zm8zMmpUaUJtem4rTWtIR2lwK2ZpcGk4dHQyMzJKekRWOHN1eVFndFZ2M0xY?=
 =?utf-8?B?TEY5MEdqK1lBWGR2eGtGQ3dpNGVtNkZHMHk4TVFqa3U3eUUxNUFNdXluWTRI?=
 =?utf-8?B?amd0VHR4a2JnK0c2UHNYWUhtUmVNUUQrOGNNM1dLRDl5bUJaY24xUHJuM3ZO?=
 =?utf-8?B?VmZ6Y1VnNGFlM212T3QzK0wySy9JaWttdjdVcEtzcmNlUWsvL2FPSFVuU2dv?=
 =?utf-8?B?d2w3MUFmZmJJdnhDd1ZlbTZBNE45cE8zOEJmaWNzOFRTN0l1SlorS2NybFR2?=
 =?utf-8?B?S2J3ZnF3MnI4TEhCUVZkSDdabFMwdUtRU04rUFNDbll3Zy8xNjNqOGU0UTd5?=
 =?utf-8?B?b2poMmhINDRRbSs5YmdXNkRvSmJxOTBwU29XSVViNnpJMDY3QjJ2UjdOR050?=
 =?utf-8?B?a2JvazJtNis2cnFqTk43QTl3RjhGbDhTWk5VMUE2Qko1d09PYXBnTHA2eXJ0?=
 =?utf-8?B?VDM3SzdybjFGbjVhT01CZ1dOaVBYWTJzOTNta0VhR3VvUlZJQXdab3A1eFdE?=
 =?utf-8?B?U1I0amFsM3ZsV003bnNlbGYwcnRlN29vUTlSSm1OdVlwdjV5VUFLMENiL3Vz?=
 =?utf-8?B?Q0RPeUtVaWlMcFJRSE5zV0ZxWGRpNlRtaHRyQ3ZERXNQeHByZ1dXc0NwaDBw?=
 =?utf-8?B?T2J1QVZOQmtHWXpQekJFTlNPYjkxZlVmTXJTZEswRW92NE9QL0FtNXdsbmUz?=
 =?utf-8?Q?+1jrciQaCAkNZ2ZmJCMJ2Zl1c?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e154f12e-8cf4-4294-1d4d-08dc52307265
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:45:21.0611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sw7g9dEh1WxTFE7yrjIdxh4DNRJQa0B5M9lzpjz4EnzuEpT/C2pvscNzBdR96X8FTnaVst/um2OinVzsVszb4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8773
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjksIDIwMjQgNjo0MyBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTQvMjJd
IGRybS9pOTE1L21zdDogUmVqZWN0IEZFQytNU1Qgb24gSUNMDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gSUNMIHN1cHBv
c2VkbHkgZG9lc24ndCBzdXBwb3J0IEZFQyBvbiBNU1QuIFJlamVjdCBpdC4NCg0KTG9va3MgR29v
ZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gaW5kZXggY2JhYmQxOTI0NDc0Li44YjgwNTliNmJiMjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTE0MTUsNyArMTQxNSw4IEBAIHN0YXRp
YyBib29sIGludGVsX2RwX3NvdXJjZV9zdXBwb3J0c19mZWMoc3RydWN0DQo+IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQ0KPiAgCQlyZXR1
cm4gdHJ1ZTsNCj4gDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMSAmJiBlbmNv
ZGVyLT5wb3J0ICE9IFBPUlRfQSkNCj4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDEx
ICYmIGVuY29kZXItPnBvcnQgIT0gUE9SVF9BICYmDQo+ICsJICAgICFpbnRlbF9jcnRjX2hhc190
eXBlKHBpcGVfY29uZmlnLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkNCj4gIAkJcmV0dXJuIHRydWU7
DQo+IA0KPiAgCXJldHVybiBmYWxzZTsNCj4gLS0NCj4gMi40My4yDQoNCg==
