Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 180007F6E4B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 09:36:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC99710E7CB;
	Fri, 24 Nov 2023 08:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E76F10E7C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 08:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700814956; x=1732350956;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UX1kNvbNYPB/030QbuwV3B+FR3qEsQB1mU2RQ5WxLGM=;
 b=DksJ2WYvbYA9MexCrCabYDNHllEItLmZe/Lg/hF4kEo0xD2/TyJvn4BM
 2wUuYXR8+7zLVFRkURs4Wgdvv6zzO6n6mrun8JjLyFCXxMvHHyzghaRF4
 jecN1Bte5HFG+rSDikrqvpYONwi5P+1MwdbZ7bqqKyX1D26+yrmL8fsN1
 B2LJLJP5Kr3JCm9QL0hYr7SN3l9mCEC2Z1rES8zuhXOrWbIaO8tK7mhPB
 pSDSRjYXNf2S7ajeFAIaXSZoBNS2dV3JAYSa1X5em7wa9D716C55VUTLd
 y8E8EKuhCKQ4Ih8nj26oYo1fWXf8GhGMzwjJdt4mXZnNQTfcsVIiDp7rC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="478597695"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="478597695"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 00:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="771199611"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="771199611"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Nov 2023 00:35:55 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 24 Nov 2023 00:35:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 24 Nov 2023 00:35:55 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 24 Nov 2023 00:35:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZNDIBVJBExfQ8mFxc3YzL7UqEyJeUktHNDqLo3KTfvY47iZ05xbyWwTQFReUdzlWwsaBReM7LLG22ncwYFDBQk76TjBc5Y7EIB2/ZuDiFvvotruMb+ThZsBEPR1dS5a1dY1UK43jRt49PxwjLIPUoweeCCEkgp2gxvQseddIpajQhY8RfxtnS5sNdJFzhrZzOWMoriJTiso6OPV1JTOW2ZkycTMCsOxGPdahYp9Jegolz8tTcPXl9b/eht4fXKp3kjOS+Wk7wGfJz1TSNzly0pIbMOe5bNUI4wNIu/SvrEhERrICQxIMskdCDgADBHH8/fMkT4PuMAslqwP/XDoKJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UX1kNvbNYPB/030QbuwV3B+FR3qEsQB1mU2RQ5WxLGM=;
 b=iYJosP+a38cFRUf3qP4+drHW7Ooq/C8LB+lkS4m3x9on+GCle0zbfXFZjBiyWacdp852TLOT2d3X+buwGoZs7HO4D1aFH62LjuVCu0eDGMdpvaNnuO65OnyKcbrEgAC+fbWMZAwls7m+quVeLu0mMu07h+caKwQ4mzR0p9lc5Rlmj2o6Gd8x6EKNFfx5pPLrBIZ3W7HwYxUnBSSXjotVTClrNc7g6TWNbKwsJnEDr8t0X/ZjBpLSarKuTCQB3+EbR0foqebS1UVQ225AS94r+rdioFUCFvFgSWSV9tq22HheQCISHRb4D7kG9WrQzEacNI6v5tzeEdKZ4/4jIjzaQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7454.namprd11.prod.outlook.com (2603:10b6:a03:4cc::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 08:35:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.019; Fri, 24 Nov 2023
 08:35:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/5] drm/i915/psr: Include some basic PSR information in
 the state dump
Thread-Index: AQHaHrAabss6aSb460CQycrWjFQ+27CJJRcA
Date: Fri, 24 Nov 2023 08:35:53 +0000
Message-ID: <ec49cda9f6250ee288c87212f49607d2fcf70f29.camel@intel.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7454:EE_
x-ms-office365-filtering-correlation-id: e2b29c02-dfc2-4662-c0bc-08dbecc85f0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xQZtU2ysqYuzBisJ6G5qknv1vB/e6sUxj3yep1M76Nq2I08YkEcXuoFru6M/Gr1hqD7+XYwdvnTCzFEuzXm225uVD9CNGQ7ALZMU5Tt0nQcPtok5G5xRnYUla+IKwlf/ligkKWTsjj/zj8N5zWJyoKnmlUGQTFR/OaELhncIVYSp5Qv5v/zW+E/oZmfzG82GikLOALKv1FvKYprMRdgq7kgPrpBic8PepX5N6IyExz4sleYEypNdc+KEylksTY+QxFdPzvcsFuaUm+FaRXYtdIgcFxYN0yDng68NWmNBKcLjE1fKWFUeoL49sSWWR4FfCH49WN56oUbBN4YjqL5rAlBVacW5Detont3K9Ly6UQNAswsYMrfEXTBlPg5CvrHo0LaPdKA6T+VeOs9fyZfC7XDAKbFvNRVpuw6vMMBLZauIhc80dY8J9U4vMd1oAjQWdNYdXvC78PXzxaXgirDA1DJxUAe6e2/nWgC9dlu5pljpD0wu54eQ5Syg6lL7hVpJD2DWYmBHT4nWGBXx5EYqxlV9g5XdKL/ySWn2+giKK9t1GmOxpdL9f1vFbJUE01HA5aS9lbC26lnWhm+w+YSydPaWY3kRkgDECyg9pFNUnT2jKrGYtXEVwjRT+itb+J0q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(396003)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(2906002)(6486002)(38070700009)(41300700001)(4001150100001)(66574015)(5660300002)(6506007)(36756003)(6512007)(71200400001)(2616005)(86362001)(26005)(478600001)(83380400001)(64756008)(66946007)(76116006)(66556008)(66446008)(66476007)(316002)(8936002)(8676002)(38100700002)(122000001)(110136005)(91956017)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkNEVmovUU4wcGhpYWlYNkdqWTRBTnhlNHVzRUkrYzhjTXJXT1RTcmVZS2Jw?=
 =?utf-8?B?YlM1RUdXajNKZk82Ty9XRG4xaW40TDZtZzIyb2hkbWZsOTJlUUFTYU5NYks4?=
 =?utf-8?B?ZDlKeGphL1lPT2tYN3dQMW0vTmVSWXhudUNYQ083bXN4VjBpbjhOSUhidTI2?=
 =?utf-8?B?c29SSFBUR21LbVZFQzFiYnVGeHNoblZQRy81THpER2JSWEpXOEdVb0Z4cllQ?=
 =?utf-8?B?VjFKMkZGZVhNeVBEd0NQTjNSMGdiWW01bFJ4ZWUzTjhLQUtGbWJiN3lsYnhI?=
 =?utf-8?B?cWxCQjRZWVAzcit2bTgrMjlDd2hBS0k5NVluQ3J0QVh0NWJKWGJFcmhRRUox?=
 =?utf-8?B?Q0pjY1hJMndjRFBydjZSS3l2Y05zSkxmcis2MVlTS2pMV2IwL0tvWXRab3dE?=
 =?utf-8?B?dkJ2TEQzNVBRYStseWkreUd0c3QzMHF0TjhmeldJZEs1cEJqSEx5dkZYUUdR?=
 =?utf-8?B?QThteHZpSnFON2hocEJqeHEzQ3l6c0RGN3FFSkhDazFFeHFiUXhTckJlUlVY?=
 =?utf-8?B?blVtQnJWU2tGTlIxSTFMWEMwaWY5amZHaVlJemE0Vk04T1czOWpldUkvTDhG?=
 =?utf-8?B?OHRuT1RHZzFGbnZRM09nRHZzMjdweGdDdEUxN2NuRGRmYmN2UjZwaW5YR08z?=
 =?utf-8?B?bEs1Y3E2Y0N1MWlSK2ZzVm1NcTVUSjFFbkxpRmNIOTN3TjZxVGxBemVPZGNs?=
 =?utf-8?B?QzF2bHkyeHFpVGRLZlB3R3JneWFFYURxa29rMGVuUkdzaXZYUzgzUmJDZDlC?=
 =?utf-8?B?dFZuc3JQTEdHU3U1Y2F6MlliR2J1WHIycDJ4VzhZWXJDbEpKZkk2b2c0MTVR?=
 =?utf-8?B?M0tPTmZ6ZW1XRlI2K2ZLK0E4dElzN1pwa1VLakpwa21ibC83ZlY0YUdNZ2Rm?=
 =?utf-8?B?emVwRG9rNWNFaEtLRURKSjNkL0ZKQy9kZG1YcFVoU3dQeUViOEM3SXZGeTFz?=
 =?utf-8?B?MjJGb1JMMUE4bnI4UkR0ZHFKZ1QvVEVNc2RJWWxGMVZtckhCUHVaMkZ2WnZR?=
 =?utf-8?B?dkYxYmFObWtXOU9najhCOXE0R0NPa0E3bmxXUGZaMW1DZERwczd0UDQ1UmZs?=
 =?utf-8?B?cndiOVJBTFBJeitZbzhXeVZXN2lhN2lmUEN0VCt4WFBWalJpUStia2xIRWFQ?=
 =?utf-8?B?cWtaTzlzaURTR0Z6enc2VzFnTVRkUXgvWWdTYzhrTUEyZEZGY2ZSUnh6dVZX?=
 =?utf-8?B?NTNzaHEvUHFNSzB3eEV0a1Y2R1hkSkpaV1luakRKNFVvaFc5VUZsVGR5UEJP?=
 =?utf-8?B?SGpzNDA5elBxWmo3YVF0MFB4WnBvNC9vOW1oTTgrOHRFemRKRWRTYWJLajN2?=
 =?utf-8?B?QTBMSy9IMDNTdDR4Qno1TytzQWJMQzluNHBXMlRZN3FKWDkxbktnZVl4b3kw?=
 =?utf-8?B?SUVNMWdkWFZUM296eUE5QWpGZHVnVWNlVC9ncm5FYjgwMzkwTWJKV2M0TDlY?=
 =?utf-8?B?T0g1USswclBRNUtzM05SRWRTbllQSkpFb21oVDlhcGNMUkFZWC9GbG4wcUsw?=
 =?utf-8?B?WnNtSC9NZTJWQUxNY0hJUHNONERDVEdEYzF5eCtnTDVGeHlqZzhudUdwMVZV?=
 =?utf-8?B?ZHpVdjNyTE5LU25wQUd2UDNlcWUwK0NFTXMzMzdXVEhRbmcyamU4R0s5aEJn?=
 =?utf-8?B?emhGVUhmcUt1YTltZHhtSXRubG9uaHRHOHhORms3YXZRckllWDVITzAxd1ND?=
 =?utf-8?B?VXlLc1pqM2s4aUJrbmNmbnZoOFAwMzk3ODZtM2dsNnBJdTFGYjdsaUFLS2Zx?=
 =?utf-8?B?Q0NtVWZkOGFKRFNsNXYwMnRNblRxc3JnRHdva0M0a3lFblg2NDBiUlZPME5q?=
 =?utf-8?B?TDFHb3JNVmVsZlN0am1lOWIvSFhFMXJxQXl0eXh6bmEvZ0dod2FXOGs2QnJX?=
 =?utf-8?B?eWNDLzFNWTFnLzdBaVlzdUpKM1Mzb0lmWm8rKys3cVhNbFB4bGJ2TVNXd1dk?=
 =?utf-8?B?N3hXOENzWUJ0bXhuaStGcW9CQnFmUzU2SCsxbWhWWDBIaFA1S0FwVEtHNFNo?=
 =?utf-8?B?SzBmQW9SdndVdHBQSmxQQld5VXZYQWxKdmNiVmtkUEdwcFE4T2JPTmhpaHVZ?=
 =?utf-8?B?bmdxL0dEMDh3ZmJwN2g1eUpndlBQY3JtSmVPbURadXhMTVRmYnZmYVBnOUVo?=
 =?utf-8?B?RzRsSzBnM2ZrZ2xmaGtWU1dLY3NNVGFNSzZoT09YdnJlZU9kbHlNSW9vQmlY?=
 =?utf-8?B?MUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F9C558B3573D4C4DA6E854367375BFC4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b29c02-dfc2-4662-c0bc-08dbecc85f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2023 08:35:53.5337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7tjZl6+zbeTdcY9/mwg1yc7j5ACWQBRFzDnFx0wfHgSYSutD5Z3qXaAw03syr5HK6AE0Hh0lAHZbbZNOf3Nq6ZRuo8Ciq3p0ndEean13BLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7454
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Include some basic PSR
 information in the state dump
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

T24gRnJpLCAyMDIzLTExLTI0IGF0IDEwOjI3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQ3VycmVudGx5IG5vIG9uZSBjYW4gZmlndXJlIG91dCB3aGF0IHRoZSBQU1IgY29kZSBpcyBk
b2luZyBzaW5jZQo+IHdlJ3JlIGluY2x1ZGluZyBhbnkgb2YgaXQgaW4gdGhlIGJhc2ljIHN0YXRl
IGR1bXAuIEFkZCBhdCBsZWFzdCB0aGUKPiBiYXJlIG1pbmltdW0gdGhlcmUuCj4gCj4gdjI6IEFs
c28gZHVtcCBoYXNfcGFuZWxfcmVwbGF5IChKb3VuaSkKPiAKPiBDYzogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KCj4gLS0tCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jIHwgNiArKysrKysKPiDC
oDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAuYwo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAuYwo+IGluZGV4IGZi
ZTg5YjZmMDM4YS4uNDlmZDEwMGVjOThhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jCj4gQEAgLTI2NSw2ICsyNjUs
MTIgQEAgdm9pZCBpbnRlbF9jcnRjX3N0YXRlX2R1bXAoY29uc3Qgc3RydWN0Cj4gaW50ZWxfY3J0
Y19zdGF0ZSAqcGlwZV9jb25maWcsCj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJzZHAgc3BsaXQ6ICVzXG4iLAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJfZW5hYmxl
ZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0KPiA+c2RwX3NwbGl0X2VuYWJsZSkpOwo+ICsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgInBzcjog
JXMsIHBzcjI6ICVzLCBwYW5lbAo+IHJlcGxheTogJXMsIHNlbGVjdGl2ZSBmZXRjaDogJXNcbiIs
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RyX2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctCj4gPmhhc19wc3IpLAo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cl9lbmFibGVk
X2Rpc2FibGVkKHBpcGVfY29uZmlnLQo+ID5oYXNfcHNyMiksCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyX2VuYWJsZWRfZGlzYWJsZWQo
cGlwZV9jb25maWctCj4gPmhhc19wYW5lbF9yZXBsYXkpLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBp
cGVfY29uZmlnLQo+ID5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpKTsKPiDCoMKgwqDCoMKgwqDCoMKg
fQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJmcmFtZXN0
YXJ0IGRlbGF5OiAlZCwgTVNBIHRpbWluZwo+IGRlbGF5OiAlZFxuIiwKCg==
