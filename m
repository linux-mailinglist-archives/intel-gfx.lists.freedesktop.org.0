Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FBA873833
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 14:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6321B1131E0;
	Wed,  6 Mar 2024 13:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAXNg5nC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 381DE1131DF;
 Wed,  6 Mar 2024 13:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709733481; x=1741269481;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=5+E1VnRrg5D+tTMLW8tr22aCocZrxCVfekII1zq1N7o=;
 b=GAXNg5nCbGjTPNW1heIDHp2knhV4Ue34eOnXLIl16NbowX2XoGBSav7+
 8OioTU/uZhyyM9yhzpufj0fqDdXzWXnFBMk8PWV9WMaXGpO77+Zq1MK9d
 UGITszphPCNLXkObF/xTVdTnjTCAjxxxL8yHUieL4hDLz96gURVe3widc
 51Ri1xCoWNlVTyW/8rc0TIX7Fv/VpekRZAiJdybpEIo122FM+UrMH0Hsv
 rwmf5HTwssoHUmyP3hJXQgB3PRURk42MJcZSfljETdSJGIHU0eKaCHKVK
 8XGZnSrt6cD9zHHi02s/yxN+KiYxv+D3gsaLJ7Z5yXr3FuwYMDChjwnHB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4462934"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4462934"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 05:58:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14425080"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 05:58:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 05:57:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 05:57:59 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 05:57:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=is6T9PjIrqJ/IT0mxJ2oi9UA585PTTZWgjaVeZiJGPYKeI8FGrWHj5/sTsu31zLPziGHQGnKZB13343PB/vdn+Vd4Pt5PVSJpWXXso8oYst9x6lZoESX+C1jsOeL/iKlgnEw9VT3LP7sHnXubJHwpdw4Ufmz4kxArWB/9VpqZvq58JvnFazxRbb5k/shMaeYrmPXQ8bRNBmz06girF57Hmh9girww8scquEcSpnAqqTNj6Yrd2KKOFOCWj1SztSssNBMGXcZZ/4KKw73HlrTHhwFVP7s1AwFFkpNKxvwAijjpJD5UxL/minDo2BT5t9+SruULpTzlKTpBkQQo3/4Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+E1VnRrg5D+tTMLW8tr22aCocZrxCVfekII1zq1N7o=;
 b=EVfGn2Z80C6An1J+cLJuKyr9sRsCc+1NFmxiRWQS9w2yZTKOZ7+eiwv1F5mWrjSZQjpBsUsWvpKR291Ah8tmp9EtYgz1ExV6kT0ARvPREYDfPAuQpiZ4pqoMYqFq3E+AgONrgf7wtdmaVIRHDGDlp5hkU7SqgwdtPxgu7SjJ1wnKr+Gn3pKp8WiV16o1oR86Svday8c3s2JP0DVGiwjUM3rzgj4eIIED/5Y3+rb/nPNwNDo78FqZciuWNeFkWeOiwH73oOwnAj6sbqu/iOBe5nTKfkb/wTVzEnEHgFzKTy4eOR3HC3r9zg515k8xqNNkoooIjLC1iUEBNlwrl4UciA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SA1PR11MB6944.namprd11.prod.outlook.com (2603:10b6:806:2bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 13:57:56 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac%5]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 13:57:56 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaak7SyehPNIvZvkGXeCdOLcfE4LEqx/OA
Date: Wed, 6 Mar 2024 13:57:56 +0000
Message-ID: <e12082da5c52d6fc303ca9a77b93dd2d2e976229.camel@intel.com>
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SA1PR11MB6944:EE_
x-ms-office365-filtering-correlation-id: 90b88a19-d487-4827-6362-08dc3de56cc4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jL4Gu1ZLBTEoaAB66zqw4otpLQDdoRQTG7TwXEBctJmKlCMMuCEcdxDo2N+LPskqL2ICai8/7HXCXwgUHrmG5GKiBCg0kUafYy0pMImLdbOIhx38Fa61hRNHKe1fmm0oO2AShCsNZ6CnZ0Db9+wgyPDQrIQLOu1xKeneMDBzIdpFiskwhBoiY1U5Fw6BWB4BvXoIo8pPsSliLKfvaLhI1yVvfOx2uc9+DXFpFx1unMpT9NSr11wucvgnf4Pm4DnIF4OPTT8bgWO9MEsqvzrd51peHgo7zZpZXHFHPaf9k78x8G25zvOy+/b9RmSa4WXeKaqSYI2TxKOoxZUYUEtRhg29i1GcJqTNgyWUNrFVI7uv3Z7zgUlbcbnDCjC1TIzjnqL4iPzuPDSTSpZi+mxpDauLd3Oq7DbI1pwtRYP4BZq+1afVnzXMAWTl7q+/+lVM6PLv6SIhBOzfKhyQLKld7AEh7a+3jEW0WQIUGctbHSmXWrwNcqiAlgheEAEGxtWQ3oPY5e6QoFMsiowE9qiZgGtCPztP/M6Uy+YswTeHtuYmmVWvpBVyXANCt9nSt4C0cYb3p6GKK1ZZ9ui8lmmK+l7LxUseb50Y952eGpCxlcusz7mfnCmIvs6/YWxUc0598AC4uy0PrAQx2Gh4egErfzDjfMeY+ASKXDsG/87bkBI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0puTUFGeTlnMHJPaTJrOFBxQ3Q4UE1ydE0wWVFKcWwyUmFEaDY1SnBNMjFS?=
 =?utf-8?B?MUdWRHR6NUZZeHZnai82Sk5kbjhWZWZWNmhObS9Bd01VWXF4QU5CYmxyQ2xm?=
 =?utf-8?B?VWdkWmVBdUo0YWhiVklvV3hmY2lKQ2RoRURXcG9QemVjeGVlejg0a3RNaUU5?=
 =?utf-8?B?bXZORmlGSlBzWXZTR3lhRGFvSE9LbzQxZGc3aU9BSHhJamY4SGJmb3B5WkJo?=
 =?utf-8?B?NUsrK3BxN0JNc0pBSk5tL0JJc2ZHTVREV0x1aG5rbC9WSGtnL1ljaHJRK3Vx?=
 =?utf-8?B?bkVQbTBVYTlBK1UyeVAwQ2M1NUFRSllRK3ZGSWZIZXpYZm5STUJ2NS9tSUlU?=
 =?utf-8?B?VC9DdGdkVkdqRy9pRjBUNi9XQmVzeWFuYkxNTzdlUDNvcDZuUWhkODBUZVNl?=
 =?utf-8?B?VlhzSlJ2V3ErZmExcENPWEdVMWxZL2gxckR6TEFqMmM2S2pxbVgybzVMWDlJ?=
 =?utf-8?B?QzhBL3pZNTFTUEZOM1pSblN2a2Mvb1VOalNqUktPSW51UHBZMHdHalBzSzBN?=
 =?utf-8?B?MDUvN3FSY2pvZjd2Qm1iVW9xZGNNNjFxZWJURWZ6dUoxRzcvbDIvYUxlWGd0?=
 =?utf-8?B?YVYwRmU4WURLcGZBVHgzUzlWcDV3dWxQdTR0SkFxWlFxTUR2QWl6a2kzM2FE?=
 =?utf-8?B?UUV5bDN5NUFiT091ZjczUUVPVUoybTRzUlNOcWZOakdBYVl5a2VxcTRIdDc4?=
 =?utf-8?B?a25wSWpRNnBPbzhNeEpMWE1vajlsbDM1YkdCSEs4cUYvSnhiQUJGaDJJV1Va?=
 =?utf-8?B?a01pdGQ4NEJDZ3ZjV1ZXZ21xSmR5elZ6Wk5RUWZ4c2l6a05kTTZmRE8xdi9J?=
 =?utf-8?B?QkpJWHUrdXdyeWhTc1dMMDlCWjA3NkRaRUh4M1RTY1JYSTFVOTJndVRjcTEy?=
 =?utf-8?B?b0NTYzlUS3lCMkZHUVNmVHV0QmovQlpkYTREb0xmMTdESEUxVUVDQndYbkMr?=
 =?utf-8?B?SUtYRVZOeW9MWEVKY2NuNlNsYUtnU1Z1TncxekIwbjdWWnlYdnpLNzk0c3NW?=
 =?utf-8?B?R1FyYkFiSjNjUXRqRWhpWG43a2hEOHBMVWMrc2U2bGtYTm5oWDRMc0p4WjJq?=
 =?utf-8?B?NFp2eGF0MUFhLzBieWRQc3d5bXBGaHNzbDNhODI4QzI1QnlDY1hVWC9rYUdM?=
 =?utf-8?B?SGtTRW9KMXpBSjdsV0NWZHNUeGRJdFRqNXkrZDA4RUpnekJqQXV5Nk41ZjBD?=
 =?utf-8?B?ekhqT0hydzBCYXZsMTNuY0txWVRmd2N6S3U1d3RWVXRjbHFRYURzc0tYMFUv?=
 =?utf-8?B?aHcraEg2ZHludEthQjJDOVpNL3QzaXEwSWR3UW1YTjFKZmg2R3lrckZxaFZ0?=
 =?utf-8?B?VllVWWRGKzhNbWNLRElzeDcrWnMzUG9tMkJaV0FiQXRJZ2R1R1hRcFQxSWtT?=
 =?utf-8?B?bU12emdhK0NZdHhiTENTWDdZWWxibkQ4aTE4cjcxOW9OU1E4c3dlb2VGRGto?=
 =?utf-8?B?endNVmpRclB6OXV2WVg3bElHTHZ1UHA0aTByeGRHYi9ZK1RTU2tQdktzeXV5?=
 =?utf-8?B?dUp0Q1VUTHR2UlU0Rk5HWUk4RjdnMldjOG05VUhYSnBFRHNaRk9OOFlJOURB?=
 =?utf-8?B?UEIzdHc1TDVGbXJzdlpMTEdpWnFkVDRMUUh0VUFRekt6WUJ4cTh0eDBqL1Bv?=
 =?utf-8?B?dEtYcjN2YTE3VFMzM0tPQ1B1dFVqVDBaY1FoRytuWnVadXR5VnZFQTAyRzJ0?=
 =?utf-8?B?M0ZuL3I3L2pldlBPbWtZZ090VUc2OU0wK0crVFpwMnlUbWxFZlArbHVCY2E1?=
 =?utf-8?B?MDJwd0tSbG9qNytEMFFJS1o4a2RFeTd2NlE1dnNyYjFiMXRFWHpTT2N5N0FF?=
 =?utf-8?B?K1FZWFdvSjZyc281eVZpQXlrWmQ4M3MvV09SNldQVWRKNlhDSTNlUmZnaWpv?=
 =?utf-8?B?M3Z1eXp5RXpHbkdwWG1BazRkRnZXRlFEbVFSVVpSYXFmQSswRmZZVFpMMVhv?=
 =?utf-8?B?emFYN0MrN0g0bWFYNEJxSGNuUUJZV2RNMnRHaGpuazEzV2VveEp5WEFKNW5v?=
 =?utf-8?B?a2t5TXBFSnRmR0lYZ1VuZHREckFxckdUUURteFZaQVBwY2laVHF4WWY1LzVx?=
 =?utf-8?B?ejR6KzVqWnJVb1l3cncralZrODNBNzdjdWh2T0dpaFNwRHZkOWVLcU9pQWov?=
 =?utf-8?B?UXMwcE41TFNZcGI5TmM1N21ZcTl0MTRuWlJTS0dLeW5SUXJ1VW9zU3MyY0hR?=
 =?utf-8?B?MFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E8CA7231BECB6F4885E5E0A3B43E536D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b88a19-d487-4827-6362-08dc3de56cc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 13:57:56.0775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hLzMuKIEmF9p75fw7cbXl6fRV7MrkYZtt7teSV6qKIqZwD1yeTgdF6OtvG9tjgWxWYM1gYuein0rJGL7qi3TMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6944
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

T24gV2VkLCAyMDI0LTAyLTI4IGF0IDE2OjAyICswMjAwLCBKdWhhLVBla2thIEhlaWtraWxhIHdy
b3RlOg0KPiBBdXhDQ1MgZnJhbWVidWZmZXJzIGRvbid0IHdvcmsgb24gWGUgZHJpdmVyIGhlbmNl
IGRpc2FibGUgdGhlbQ0KPiBmcm9tIHBsYW5lIGNhcGFiaWxpdGllcyB1bnRpbCB0aGV5IGFyZSBm
aXhlZC4gRmxhdENDUyBmcmFtZWJ1ZmZlcnMNCj4gd29yayBhbmQgdGhleSBhcmUgbGVmdCBlbmFi
bGVkLiBDQ1MgaXMgbGVmdCB1bnRvdWNoZWQgZm9yIGk5MTUNCj4gZHJpdmVyLg0KPiANCg0KRml4
ZXM6IDQ0ZTY5NDk1OGI5NSAoImRybS94ZS9kaXNwbGF5OiBJbXBsZW1lbnQgZGlzcGxheSBzdXBw
b3J0IikNCg0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUv
a2VybmVsLy0vaXNzdWVzLzkzMw0KPiBTaWduZWQtb2ZmLWJ5OiBKdWhhLVBla2thIEhlaWtraWxh
IDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgMyArKysNCj4gIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4IGU5NDFlMmU0ZmQxNC4u
ODYwNTc0ZDA0Zjg4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAtMjI5NSw2ICsyMjk1LDkgQEAgc3RhdGlj
IHU4IHNrbF9nZXRfcGxhbmVfY2FwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4g
IAlpZiAoSEFTXzRUSUxFKGk5MTUpKQ0KPiAgCQljYXBzIHw9IElOVEVMX1BMQU5FX0NBUF9USUxJ
TkdfNDsNCj4gIA0KPiArCWlmICghSVNfRU5BQkxFRChJOTE1KSAmJiAhSEFTX0ZMQVRfQ0NTKGk5
MTUpKQ0KPiArCQlyZXR1cm4gY2FwczsNCj4gKw0KPiAgCWlmIChza2xfcGxhbmVfaGFzX3JjX2Nj
cyhpOTE1LCBwaXBlLCBwbGFuZV9pZCkpIHsNCj4gIAkJY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBf
Q0NTX1JDOw0KPiAgCQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpDQoNCg==
