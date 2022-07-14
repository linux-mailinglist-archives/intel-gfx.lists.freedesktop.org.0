Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197AF5745D0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 09:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E9189A1A;
	Thu, 14 Jul 2022 07:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8645CA2F65
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 07:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657783360; x=1689319360;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ZKt+noLYsjO86a045MvKHhErDr8GECTolsLfW5PnXE4=;
 b=BSC6u3lWNUOcNHcr/+NuCKV4UOfDtsvuH7HVxbMYjVw6+TuRJRxpLfYk
 onrxTwH0gl7FgGG+QhHa1cmoj77vkCYx51btBP37P86ibwG4VAv0vkaMc
 2+pHVuS4bkS50gDJLFLtwrl0pq5cuFjTMfH7w18x+dlmNH5udtK3Egn0m
 BHwel9PrVjc1DlVNdEpqLUKlSJlgaNE/VQceEslLYrmcEwpUve1IRSk83
 tDoCjidck6Qk/ukvmdqyM5GyeR0hwHLBy9XfNC2eQkt3fXZi0LWIcUtcO
 4JD+oGXFkxkGZ8/mMPytOv/9y+9m+x5uDGl6Oj4J4PhUTwUumX4JF+zaQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="282993977"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="282993977"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 00:22:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="595994866"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 14 Jul 2022 00:22:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 00:22:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 00:22:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 00:22:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 00:22:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMe3qLOShC+BUfc+RE3Emc3T+mw2YrqceC6mwwXL+kwdDN1OhJc6qJeTdwyTvslX/FVYMaIDGayCVbuu0dqhZl6+M0HG3iAYfFmHQUBkfxwTmjtKVjbdgeNQCT/dfHzjtDOdvPOfbZlYgYgkCZe4kIZHm7gVA2r5bITiQcj1Y9peN08eo6tx+Xv9sSIus6Q91o4SqYZR8jbO8W0kuQdx+YRPZw+VICkHqf9FtKt07N6AgtCLjYTKb1p6TpWqy1qOM/wyeCS1O/ujTGGl5RE6oGVO855rIB3KI4TeyehdV51jYzhIorIxp6/TxxIQImAp6+uS+YuRgZ6fwbzGc7OKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKt+noLYsjO86a045MvKHhErDr8GECTolsLfW5PnXE4=;
 b=NJACuBX9Y9lKQ/pME0g+cQPLNzXaFI+cHi7XsFGZUKTvWq/OsSEaYKQfgU25kpK5EU1KmDE/ZVCqhBl9KYNtQ2RKkeYAbmvHLNlZPqqXkWLrJzPs3uSuIlihcREWyHdO+gjNuLYK/RHg1Nb199o6CHkwLso6oUKUQobfynA8FIzpM8SOMCSxXI3wvOht7QZ7+9bXbIPRUqiDSe7Uao30sYy66+9lIhUiI/sCrtAaJmBRKRMtSbnZCNSkp/Opbyj7xFF9vz2I2oS0jPSYSi8vtSEMMvhlFKYGMtVkBRj1ea2i06/xOaoJKuFBcr7D595LalO0B82HDHFKls2G4WfzHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM5PR1101MB2204.namprd11.prod.outlook.com (2603:10b6:4:58::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.23; Thu, 14 Jul 2022 07:22:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95dc:fd09:6d3f:c52c]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95dc:fd09:6d3f:c52c%3]) with mapi id 15.20.5438.012; Thu, 14 Jul 2022
 07:22:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
Thread-Index: AQHYlRfsPpi7IULtZUmZkRz1v0IqCq18zIOAgAABtoCAAKyRgA==
Date: Thu, 14 Jul 2022 07:22:36 +0000
Message-ID: <bbeeff77860fecedde1092b9595f9f311e2d8981.camel@intel.com>
References: <20220711111750.881552-1-jouni.hogander@intel.com>
 <cafdb8204ea02b0059e0ef4facafcdd338a3ab2b.camel@intel.com>
 <bc4803bb6647f11b9d62ab3cb9d3015fd43aabca.camel@intel.com>
In-Reply-To: <bc4803bb6647f11b9d62ab3cb9d3015fd43aabca.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77b5e053-10e3-40b0-adaf-08da6569a048
x-ms-traffictypediagnostic: DM5PR1101MB2204:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Op+yGusr6tKIK1289F5XyCUKWzryTJZ1S2Tl6xcBCCSPDh530GqL+o0hke5wwX+fgO9ll2U1hbkDiZb2mhET2jjER8slAcDHSRkOfed1ihgCokdGz20RmwmXwPUOC/PFvFh6OVRPQYImnsTKtp6UJel/U5Ycb9Kvdg21gnjd7PBmQqec3SzH+YlATxtQkiNTo71pEr60ijwGbR1Ulix9SjljGV5hYgCwCTtUAfnODsdZnONxkR06sQ+YFwe/u4OyCNx+kMi2mtT4SQo3pHF2EtwahVBJNdHkst2/zLu+YGCfDBP9QwKA+8rFm8ZxNAII1ThRdQ10aVLEjiCx011jzQcaBaC8FLeyH1B03zmzMzb7SOTdfuUlWr3WLR19jRYFQkrUbL4yvN/9liUTTg4dLbFPzMuobQ1D/4qglNQuHFCm31dOwiLVFgu4V4rHZ8C4fM70+ARnY4oEQbGA/jMiRfyDCC352Qjugii3VeF3vxpk6UMwyo/E8RMJttnSvDEOxV7ob74W6YhR489D71scICSEgg/fhsQNagTG/styuXarHv2sGxpOcdu2ly5v11iLB98eoHaDAzajtaMkJJVD2VIWZNcy8mPAJ0X3VTKnUUbHNzg4QfynMW59uLDZqxpC15r5yRKtL3czr5R19fyfbGWe3uxzUXW+4mIDu3WyfsvUUgdWjhE+UK5Vf/09gktYerNK1MYdyK1O3iVqU9oQvuI2B/cnUD7RHB/8+0OWkl6aI/CEbl1j6VUZpFBFfLdPJCARSf8md4AAqz+PdzlluN+wLmizo2IbKdt24/+uuoU6bPTebpkHvMPX8pbT13On
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(396003)(136003)(346002)(376002)(6506007)(36756003)(91956017)(71200400001)(41300700001)(8676002)(6486002)(64756008)(66446008)(26005)(86362001)(66476007)(316002)(66946007)(38100700002)(6636002)(76116006)(110136005)(66556008)(122000001)(2616005)(186003)(8936002)(83380400001)(82960400001)(2906002)(66574015)(478600001)(38070700005)(5660300002)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDR1d29zZ0hhUU5iL1RmaFNVd0VacjJ5RjNQWUszWSt2aGN2LzMyQkVPdjMw?=
 =?utf-8?B?bHZWbUh2Wnl0ekxINVNNQno3bG5OUzZ2VXdLTm0xbkxDc1A5NGkxQ3JwNW1E?=
 =?utf-8?B?MlA2Y0tTRUxvUFIwSHZYbUY3ZGZxQ2x1ekdlVWR4VTk1djVxUHFqNG5zMG9r?=
 =?utf-8?B?TzBEODZEYkU1UXpjckM5cW9yZUNPTFk0U1YxQVN2U1M0NGlCUkU5YjQvallm?=
 =?utf-8?B?L1lLOGJGTkZDbU42dlYwZVUyNllweEtDSGQyWkRuWFYyS0JWclV6clJmNHBE?=
 =?utf-8?B?c0Vuc2ZEUkpCWXZKZG5ZYWxmSnNuenAzQmVnbWFyWGdTSi9lazQ2V3lNYVQ5?=
 =?utf-8?B?RjZMZ3pNQmpHeW1qTnZVZm1ZL2VRMTVjL2NJK0Y0NjhnRXJQL1dPMzhENVRS?=
 =?utf-8?B?b3lGVktHTTRlUzZ5VWZjaUlzazNheldrdGtRK0pwQjJyWlVaNUV3WGJoZFJW?=
 =?utf-8?B?U0RTWE52Rlg1dFdHekt2ckQxZVJKVHpFeHhZL2ZSSGxVYTJOU2E4Tyt1U0NN?=
 =?utf-8?B?TGU3aWhEbk9MVGFsMlVicnROZEdYZHZVbWE1VDVVeGNFdHRQQVh2aGVONzZ6?=
 =?utf-8?B?Q0JPMXdid1NkNTUyM0xqMGZEMnFtMmZMVkVhbDFWcjZLNEkxaUxGdVdhWVY2?=
 =?utf-8?B?MXJPTWk5K2N2VXorUnRuaUV6RDdlWVZ1VVBkYkNwUEdrZlI5cUhSWGNCMlFq?=
 =?utf-8?B?Z093NWJOZnl6bkdNU2RCb0ZyKzdjNWp2STlhMUhHNWplVDIzaWoxOXVtTGdw?=
 =?utf-8?B?cVBXV2c4a1hiWkhza0dTV0hnR1F4UG9rQkNJOTZTUTBhZFhBR1RmK2Q0K0My?=
 =?utf-8?B?YTJkdnJienNYWkxyOGpnVXhqdmF2b2FGbmV0bDJEeEg0QzU1N2NmeGhtdVdO?=
 =?utf-8?B?QTJkTHZoakxqMmgza0ppRExCS2hWYk9MdUsxS21DanV5aGFuUHlLUDN4NUVM?=
 =?utf-8?B?NmM0V3ZNajVxREdkZEVFdmpaVjBnbTUxYSt3OE4rSjZQOE93Vis2Mm14c2t6?=
 =?utf-8?B?c3g4aFdVRFVhK3VGejBQeUgzTFNHdDBLbmJRZFl2dzZBYURpNFZxaGl3MlpE?=
 =?utf-8?B?UUhIVWRHYkg1RldPQmM3NkRVRFFXT0xXVmErNk9GdDV1M3MyNzIwTUFBVTJv?=
 =?utf-8?B?VHlBaFd5NXlFcDk4OTFYTTJiOVA3UittcVh0UzZiSzN4ZFo3K2pEZGhIZnRK?=
 =?utf-8?B?SjNlRVFnUmZ4VU1Wc0dsTkc0bldqRExMdytLbFpDczZKanNGd052azNMcS8y?=
 =?utf-8?B?dGEwR29JRjYyNFp5S0xTVEJOa1RYSm4rV1ZxcXM4blByV3RaZjU5VEJZOUpX?=
 =?utf-8?B?bzBmS3pKTUtXZkxncHhOT3NoK1RMcDdOSnljcFpjTzlwbUtoZ3pnK2VuUzdv?=
 =?utf-8?B?eTRGNXhJdm5TZXJKaXNZbE5ZVUVINktUR21aaEdGWTFMd21BalFPbCtFQUhT?=
 =?utf-8?B?SEd2ZmZkQjJxYlVVazVGbFA1ejR4U0JFVE5heXhmcUhDZW4zTU9CY1Fwd0VD?=
 =?utf-8?B?NE1mNjdwUEU3MVJtUm42cStqWjkyd3ZBcmpTakFlb1pkYWlqaFhta3lxWmsw?=
 =?utf-8?B?djFMZlNkVVkzL0RBRnUzcDUzbFpDWFBjRmlQb3hVNkdDL0dTOGYyUGhWYXlE?=
 =?utf-8?B?K3lHQ0ttQXVTRExmL2xKZ1c3SDY4U3FlbjNxT29DZzJnSUVoRTBRT0dmRkky?=
 =?utf-8?B?eVNvU2UxU1VreWp6cFkxOXZ1TkUvK28rR1lST3dNS0FvSnVBNHNpVEcySVBT?=
 =?utf-8?B?dkErNS9MTUlEcFZyeGxSWjlCNVpxVlZVQnlHV0hyZHBqWWI5QU1qOEt2RmZR?=
 =?utf-8?B?ZXgwOUJaYUhieFp4MXN2cjJYdHlkcXhrRkd1WWVUUzkzVHZzeEd1T0dBWDZH?=
 =?utf-8?B?ZWNLMU1DNXI4STJpWjhVM0NYTW11UHNDbXI5ZlJWV21CTUxWWUxDa1dFMEN4?=
 =?utf-8?B?RTkrbGk2SitvN2piSVBGOHJZaTZoSU1xY1k0anVEUzFONkVzNmZlOFl5Ni9t?=
 =?utf-8?B?UEViZkJzblN4ZklYSFc3Z3Q5RDE0OGZWUU40WnE4ait3WFdGMklCb1NwZlZp?=
 =?utf-8?B?YkhZTUtqMmt4eFhoclg3dzdjRDVwMGpRdjdUd3F6aGQ2UnFUVHlpeW1Da1hK?=
 =?utf-8?B?NkYyN0Rxc0F0bUF0THBQNHhvZUs3TktVMWlGM2IyNElzcTVITHNXQmtSYzVX?=
 =?utf-8?B?Y2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6A209D5D1BA83D4F803EA920504F5829@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77b5e053-10e3-40b0-adaf-08da6569a048
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2022 07:22:36.0654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 83Xjd+XRuqqa5H6GDO+JPtUqC3mcuO618+C+3ZOcGis8ep3CgrUarW/j9U3hoDx2puv75xR3IKn8gDxbrmOCB68wgoIEHM7NW7h9vXbVDN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2204
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
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

T24gV2VkLCAyMDIyLTA3LTEzIGF0IDIxOjA0ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gV2VkLCAyMDIyLTA3LTEzIGF0IDIwOjU4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
PiBPbiBNb24sIDIwMjItMDctMTEgYXQgMTQ6MTcgKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90
ZToNCj4gPiA+IEN1cnJlbnRseSBQU1IgaXMgbGVmdCBlbmFibGVkIHdoZW4gYWxsIHBsYW5lcyBh
cmUgZGlzYWJsZWQgaWYNCj4gPiA+IHRoZXJlDQo+ID4gPiBpcyBubyBhdHRhY2hlZCBlbmNvZGVy
IGluIG5ldyBzdGF0ZS4gVGhpcyBzZWVtcyB0byBiZSBjYXVzaW5nDQo+ID4gPiBGSUZPDQo+ID4g
PiB1bmRlcnJ1bnMuDQo+ID4gDQo+ID4gV2hhdCBpcyB0aGUgY2FzZSB3ZXJlIHRoZXJlIGlzIG5v
IGF0dGFjaGVkIGVuY29kZXIgYW5kDQo+ID4gYWN0aXZlX3BsYW5lcyA+IDA/DQo+IA0KPiBDYW4g
eW91IHBvaW50IHRvIHNvbWUgdGVzdD8NCg0KWW91IGp1c3QgbmVlZCB0byBydW4ga21zX2J1c3lA
YmFzaWMgYW5kIHRoaXMgdHJpZ2dlcnMgd2hlbiBkeW5hbWljDQpzdWJ0ZXN0IG1vZGVzZXQgaXMg
cnVuLg0KDQo+IEkgYmVsaWV2ZSB0aGF0IGEgcGlwZSB0byBiZSBlbmFibGVkIG5lZWRzIHRvIGhh
dmUgYSBlbmNvbmRlci9wb3J0DQo+IGF0dGFjaGVkLCBvdGhlcndpc2UgaXQgd2lsbCBiZSBkaXNh
YmxlZC4NCg0KVG8gbXkgdW5kZXJzdGFuZGluZyBwaXBlIGFjdHVhbGx5IGdldHMgZXZlbnR1YWxs
eSBkaXNhYmxlZCBpbiB0aGlzDQp0ZXN0Y2FzZSBhcyB3ZWxsLiBCZWZvcmUgcGlwZSBpcyBkaXNh
YmxlZCB3ZSBoYXZlIHN0YXRlIHdoZXJlIHBsYW5lcw0KYXJlIGFsbCBkaXNhYmxlZCwgYnV0IFBT
UiBpcyBrZXB0IGVuYWJsZWQuIFRoaXMgd2FzIHRyaWdnZXJpbmcgRklGTw0KdW5kZXJydW4uDQoN
Cj4gDQo+ID4gPiBGaXggdGhpcyBieSBjaGVja2luZyBpZiBlbmNvZGVyIGV4aXN0cyBpbiBuZXcg
Y3J0YyBzdGF0ZSBhbmQNCj4gPiA+IGRpc2FibGUNCj4gPiA+IFBTUiBpZiBpdCBkb2Vzbid0Lg0K
PiA+ID4gDQo+ID4gPiB2MjogVW5pZnkgZGlzYWJsZSBsb2dpYyB3aXRoIGV4aXN0aW5nDQo+ID4g
PiANCj4gPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4g
UmVwb3J0ZWQtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50
ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5
IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbQ0KPiA+ID4gPg0KPiA+ID4gLS0tDQo+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDUzICsrKysrKysr
KysrKysrLS0NCj4gPiA+IC0tLS0tLS0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMxIGluc2Vy
dGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCBlNmE4NzA2NDFjZDIu
LjkwNTk5ZGQxY2IxYiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBAIC0xODYzLDM2ICsxODYzLDQ1IEBAIHZvaWQgaW50ZWxf
cHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiA+ID4gIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gIHsNCj4gPiA+ICBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsN
Cj4gPiA+IC1jb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4g
PiAtaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiAt
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gPiArc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm5ld19jcnRjX3N0YXRlLCAqb2xkX2NydGNfc3RhdGU7DQo+ID4gPiAraW50IGk7DQo+
ID4gPiANCj4gPiA+ICBpZiAoIUhBU19QU1IoaTkxNSkpDQo+ID4gPiAgcmV0dXJuOw0KPiA+ID4g
DQo+ID4gPiAtZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX3dpdGhfcHNyKHN0YXRlLT5iYXNl
LmRldiwgZW5jb2RlciwNCj4gPiA+IC0gICAgIGNydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNr
KSB7DQo+ID4gPiAtc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChl
bmNvZGVyKTsNCj4gPiA+IC1zdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsN
Cj4gPiA+IC1ib29sIG5lZWRzX3RvX2Rpc2FibGUgPSBmYWxzZTsNCj4gPiA+ICtmb3JfZWFjaF9v
bGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsDQo+
ID4gPiArICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4gPiArc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXI7DQo+ID4gPiArdTMyIG9sZF9uZXdfZW5jb2Rlcl9tYXNrID0gb2xkX2NydGNf
c3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrIHwNCj4gPiA+ICtuZXdfY3J0Y19zdGF0ZS0+dWFwaS5l
bmNvZGVyX21hc2s7DQo+ID4gPiANCj4gPiA+IC1tdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiA+
ID4gK2Zvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFza193aXRoX3BzcihzdGF0ZS0+YmFzZS5kZXYs
IGVuY29kZXIsDQo+ID4gPiArICAgICBvbGRfbmV3X2VuY29kZXJfbWFzaykgew0KPiA+ID4gK3N0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4g
PiArc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+ID4gPiArYm9vbCBu
ZWVkc190b19kaXNhYmxlID0gZmFsc2U7DQo+ID4gPiANCj4gPiA+IC0vKg0KPiA+ID4gLSAqIFJl
YXNvbnMgdG8gZGlzYWJsZToNCj4gPiA+IC0gKiAtIFBTUiBkaXNhYmxlZCBpbiBuZXcgc3RhdGUN
Cj4gPiA+IC0gKiAtIEFsbCBwbGFuZXMgd2lsbCBnbyBpbmFjdGl2ZQ0KPiA+ID4gLSAqIC0gQ2hh
bmdpbmcgYmV0d2VlbiBQU1IgdmVyc2lvbnMNCj4gPiA+IC0gKi8NCj4gPiA+IC1uZWVkc190b19k
aXNhYmxlIHw9IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChjcnRjX3N0YXRlKTsNCj4gPiA+IC1u
ZWVkc190b19kaXNhYmxlIHw9ICFjcnRjX3N0YXRlLT5oYXNfcHNyOw0KPiA+ID4gLW5lZWRzX3Rv
X2Rpc2FibGUgfD0gIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7DQo+ID4gPiAtbmVlZHNfdG9f
ZGlzYWJsZSB8PSBjcnRjX3N0YXRlLT5oYXNfcHNyMiAhPSBwc3ItPnBzcjJfZW5hYmxlZDsNCj4g
PiA+ICttdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiA+ID4gDQo+ID4gPiAtaWYgKHBzci0+ZW5h
YmxlZCAmJiBuZWVkc190b19kaXNhYmxlKQ0KPiA+ID4gLWludGVsX3Bzcl9kaXNhYmxlX2xvY2tl
ZChpbnRlbF9kcCk7DQo+ID4gPiArLyoNCj4gPiA+ICsgKiBSZWFzb25zIHRvIGRpc2FibGU6DQo+
ID4gPiArICogLSBQU1IgZGlzYWJsZWQgaW4gbmV3IHN0YXRlDQo+ID4gPiArICogLSBBbGwgcGxh
bmVzIHdpbGwgZ28gaW5hY3RpdmUNCj4gPiA+ICsgKiAtIENoYW5naW5nIGJldHdlZW4gUFNSIHZl
cnNpb25zDQo+ID4gPiArICogLSBFbmNvZGVyIGlzbid0IHByZXNlbnQgaW4gbmV3IG1hc2sNCj4g
PiA+ICsgKi8NCj4gPiA+ICtuZWVkc190b19kaXNhYmxlIHw9IGludGVsX2NydGNfbmVlZHNfbW9k
ZXNldChuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gPiArbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2Ny
dGNfc3RhdGUtPmhhc19wc3I7DQo+ID4gPiArbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNf
c3RhdGUtPmFjdGl2ZV9wbGFuZXM7DQo+ID4gPiArbmVlZHNfdG9fZGlzYWJsZSB8PSBuZXdfY3J0
Y19zdGF0ZS0+aGFzX3BzcjIgIT0gcHNyLQ0KPiA+ID4gPnBzcjJfZW5hYmxlZDsNCj4gPiA+ICtu
ZWVkc190b19kaXNhYmxlIHw9ICEobmV3X2NydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrICYN
Cj4gPiA+ICsgICAgICBkcm1fZW5jb2Rlcl9tYXNrKCYoZW5jb2RlciktPmJhc2UpKTsNCj4gPiA+
IA0KPiA+ID4gLW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiA+ICtpZiAocHNyLT5lbmFi
bGVkICYmIG5lZWRzX3RvX2Rpc2FibGUpDQo+ID4gPiAraW50ZWxfcHNyX2Rpc2FibGVfbG9ja2Vk
KGludGVsX2RwKTsNCj4gPiA+ICsNCj4gPiA+ICttdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+
ID4gPiArfQ0KPiA+ID4gIH0NCj4gPiA+ICB9DQo+ID4gPiANCg0K
