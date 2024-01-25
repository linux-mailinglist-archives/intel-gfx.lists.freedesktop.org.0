Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2092483C68D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 16:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94BCE10F938;
	Thu, 25 Jan 2024 15:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0639910F939
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 15:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706196535; x=1737732535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=elr9C5ZYyLNwlHk4S0aCR7euMg5Mhk81FXCFB2nny80=;
 b=bkiYQikoILO2o9upq//hmQYab9ztuoEndOpnzVh/3AHSAxRQuDfX9pZc
 PvFB8t4fnFVXwDwVAWTqdG8xX9BOpp280gvuirXVtTxbzeUGlc7QDIlN5
 68ifMSCVeunxnO6zdDua0WW1eSVLPlGxY05WpMaPhZLzQxBTh1onSOvv2
 KgVM3JpN/vJiZt+GKuZ1A/nrPf5tELaxTeU8yxzumVrMF4h7UtiCU2se1
 YHcxj2XNccrDmpYKTx9uoawL1aBgry91kGyvBMRlvC269/440eSpWJD+W
 Yrc/J//YTMEtpL8i96Eoui043OGmfoUejcPgeEmzOUf6z/nTR9nQizfHt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="23652070"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="23652070"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 07:28:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2273044"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 07:28:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 07:28:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 07:28:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 07:28:53 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 07:28:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P33rOnqhDzxH6QFkngnsJ4v+1g4e3qFCI2Chb6b2hX8s6C8Sx6BQpesBm6I1Ss79HYtOMyw5WklyKQq+klwxw4bhPHC06alSt/eFDA3pIbdJ4+Q71Byxf7Xu5Z7T5G72ocI6C+UoGF2dYfPQpxeOGqxY9cLx56e9o8VAqMniPxfvuX99Uas8EKxZ0tgc1ziUTdQDZE6/78NS4rwGMTXxDtDU4wvOlfTj16h5uGdBT4bfq66jwZrHrXHm+PkHEcTkmX7xd687Gjp51Fual4h37Y1JsF+FJJAQ8H6E9DmoCmIEawjhxqIbPgTHfZy+pjAhbpaJQKthzuRhjFMF3f0z2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elr9C5ZYyLNwlHk4S0aCR7euMg5Mhk81FXCFB2nny80=;
 b=TWdKbDnaQyi2rDN9nCZ3RUlcKPSvBPkAq31S08RSMtd2uSuG0RELTrE54HGj3khMh//4d4mYuoHTyVaqJ9T8BaODW11wQCxbJRv2ssVLGt6x2zCSucWxYCvQdTa95Y20SxpRt9+ZU5GTQSgoQq0VEGTMnZG6EiiO2bXyy0oBiXLL2CFHj9po1A9TRsLcubZXgrv3XLNR1nLjrQXjgFDw7dTKW5g7q5p9x9Vb4HZuRgZTKYUgQWC5nj7njHAd6PHHmyXBEhrRTv3j48UMlrmHZobJ0YC+cQ9XLDoWO+eXruQFLnyUVGCEbfJHKD3iqWkjhBN2L5f/T5li6rJQcUBtwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.26; Thu, 25 Jan
 2024 15:28:50 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967%4]) with mapi id 15.20.7202.034; Thu, 25 Jan 2024
 15:28:47 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaT6LAvEsnEI7RAEOrEiVG2hUjGLDqpxiA
Date: Thu, 25 Jan 2024 15:28:47 +0000
Message-ID: <c7209d47d99a35d08a96e6a302595e4854b1d543.camel@intel.com>
References: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: cd0b13de-6a3f-4ee9-7ecd-08dc1dba5344
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ep9/dfuGVXp7e/R9ZjLeVNwsJzMCSMEUzcPuvIFNyB1G7mCbnOIemsUCjF7qSnUHQr5u8gr3RIhCxP2Im41Qoj057P5MONiaXdsYX+SQ+UCcBzFKsFN+bpbyXzL4aq6KdGHa5cfxZEu7Hk5V6+YIW6ilNQvH3lyBYgun3rK89S9fm01a3C6UU5B/YdjWABnLdTr/iLwy+jupnHztPL/wLBTiF79v9Pz8AuNYG3MQHU51oHAP5KtpqAOcOLq9PtggvgCpaY+gTXA3lEIg35iqm4JynDgna/AHJ2TNecFuXH0fWW1fnA4upeNOgE/ZYqi7P07IUpXCi6p3BRCzjDSvo+iVWbShA2fwcRReWS56rdV4Zdk8P5Qq/JLpi0gDy1GGzTsbxXxzJOVIGvNT62JdqphmWdJ4EzA6Ou7chi+cckF66x95/fVxEAP5dBCmNkTWCz8wopLCZsTZmLvvjSZl4Pv+hHNuK9ekhUgcSPKUTCCztrM/FpCPhiTidvqzKNuFcIIKGWxJV3VACgqOJO8PSmgT5M+xZzJJBn5xa7XUN6afNUV17XPa1er8UDg73p1V24F7FkPtRAovZdncQsNGbnQJg7bU6NgtJD4WimOrMkw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(366004)(39860400002)(376002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(41300700001)(26005)(2616005)(966005)(38070700009)(316002)(36756003)(64756008)(6506007)(71200400001)(478600001)(6486002)(83380400001)(6512007)(38100700002)(66476007)(82960400001)(122000001)(5660300002)(2906002)(66556008)(76116006)(91956017)(66946007)(86362001)(66446008)(110136005)(4326008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TE05L29maHBaemtNWkdDajNjZE11VzRnWURIYmFlOTBPUnRNYkFZRERWUEox?=
 =?utf-8?B?cHZsVXZuWFFHNmZOSnRKTTRlNk1MTDk1TE9wQnB0aGR0MFZYc1QrVDNmYkwz?=
 =?utf-8?B?OTEzZjljdHdxS29xUGhxemJiOGZYMWdiaFpIcUMwY0FiQmR3d2lraXVnc1V5?=
 =?utf-8?B?Q3V6UC9YLzRLM1VLajcwUjFkcTlKcGRKUXp2TGl0OXcwM3VscXg5TUtOSXpZ?=
 =?utf-8?B?Zkt4S3Exc21OeGNYMnJZZWd1V0tZS3pUQVdmZzl6emdxTzRhMC8xZGN0YlFq?=
 =?utf-8?B?eEdYcFFoUlNRZEtPQlZKNkVNVHh6YnBNcGtiNXlrWmIwSnlHdGl6TWxjZ09L?=
 =?utf-8?B?WUhURzNvOXpYdlRMMFFlcnRnTHZsZ25YdEgrWTFVSHVBZjlCTGNjUk8yWHRP?=
 =?utf-8?B?QUdBQ1ZRR0d0N1kvL1RHZXc0U1JMYW53SCs4MFBHMGpTcUdIa0tER0xXMGFs?=
 =?utf-8?B?anFtZUpPSXFoVEVDV20zQWxaK093Q2pEQUo2dFRSaEdlU3lKWWY3V3lIZCtM?=
 =?utf-8?B?RXZSd3Rna2trRi9tZy9TOXQvV3pXdVU5T0R5WXFoUmNkTDBiRzJvbVl2RytU?=
 =?utf-8?B?T2czZW1NZUZaUFR6aUJ4K3JGNmdaQTZpRHcvN25vaitjWEh3Q0UxY0FQbTZn?=
 =?utf-8?B?UGE0dWFSMHhWMjJMWk9kZ1JndDdsaExhczZuNlIrakcxNFF0WUs3cEYyTlVD?=
 =?utf-8?B?YjJxcEhFZDhqYU9QQ3dVWENjNEFIZ053NnBaeEwvaGltNzFVZ0lYQzIvTW9E?=
 =?utf-8?B?elNodHlBamlOQU5SaG1jdThsdkZWdmFaczg0dDdGOXJaaSs0WmVuK0lVbjlW?=
 =?utf-8?B?VDVTNzA4dGJyQVFyN3VoUDhLeXZZcmhENmFzV2hCSXNoWW1ncThvckxyNk9R?=
 =?utf-8?B?QkQ3Y1JVZHEzV29FYXFvQnpuMW9qVmZJM3hsLy91V3hHUTJWNDhGRi9tVndR?=
 =?utf-8?B?dGtqWVk4bS9rbEJmMW5NQjEySEhPbCtib0hsbkZKL3Q0YnZRQ2pGOVY1MWJT?=
 =?utf-8?B?ZUJTMFRhUkVFMmczZkFubUR3WG54ZyszSmZwM0I1RnVISDR2U05mTU1sSU11?=
 =?utf-8?B?bkFab2p2REQveVRRYmVXMmN4dHV5c3N2YmhiNDdUQlF2emdLeGpSVExlcUxK?=
 =?utf-8?B?UVp3L25YNFpUQmI1V1VLem9Ma0hQa3pHRWpaWUFHVnNRL0QzK0pITlExNDlt?=
 =?utf-8?B?amExTHdTOHBoTXpxK0FDRy9lQ3RoRkRRbk9pMXRlRUdBc1V1TlF6c1BEajNH?=
 =?utf-8?B?N1g0MWtTWGFHQkJqU2t1bER3cWsyWFN2VDVzMGxsNlBjd09vVXBhRmFnSi8x?=
 =?utf-8?B?MUhrRjNzZEtOZmkyV3E0Zkk5dFUzcGhtSUpuT1RIYnU3akFlb3JYTDcwcVdu?=
 =?utf-8?B?UTM3SFZ4UmpPUTV2YUJKMlJjVGk1eWl3UElaWDF6QUxPL0RVekM3SVJOYm5M?=
 =?utf-8?B?U1d6bHpISHNVWEZhQ21IekZ0cUhCWEU5MmtTQnZJSzNrbEtFdkY2L1dqUjlP?=
 =?utf-8?B?NTYwWFl6aEJmR3Fwd1RvU1FVTHRGTGRMbW5mc3FJb2Y2Ymo1cEdPYldUYlpG?=
 =?utf-8?B?YitzaElWaUw3ems1N2VmZ1N2Q3hTQTI4S1o4U3orVS95c3RIbmFkUVkxY2lU?=
 =?utf-8?B?SDI5ck5Ja0szTWxWcEFTUTFyRE5oR1gxeDBoZi8rLy96QzlrNEFrY2I5TEpU?=
 =?utf-8?B?clY0bHhnMnpRVkJJNTVVRVpkT1lHZ3lpT2xmNjNZTGlodDc3ZjZlMVNiWmlN?=
 =?utf-8?B?aDZQU3UzZFBQSzNtMnRNZUIvVlVFQ3VlTVVtN3VaeEN3UlliSXJBMXhaYjhJ?=
 =?utf-8?B?Q2luTkJZWEoycUt5cnVBVXJmMzUrZGRCMTBBdjI1UXpNWVc5bERCQ0o3N0hP?=
 =?utf-8?B?L2JvdmJwTTg1L3Y2MFFyQXZEY2xDcXVCalRsYnRQYStvc2N5R0E4RTNNb3lO?=
 =?utf-8?B?LzRiT1RhWGRXVFMrdU84ZXpFalZVeURjRlVVSm4vbEptVDhBamVhZHZKaWtO?=
 =?utf-8?B?NGs2L2JOT2Qzc2x6aDA1b3pFR3Ayc1ZjV0txODczYVIxaE1oZVFqam52TGl6?=
 =?utf-8?B?SUdnSnp2MzRjaDV3by9Kc29IMkw2V2gycy9NOVFGTklFQ0U5NE92YVAwQXJN?=
 =?utf-8?B?YjBWbFdBdGxWcGlLdnM1NXBsSHZYYTVucTlmQ1BraXltNEh1dzIwY0wyOXhs?=
 =?utf-8?B?VlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4DF145AD9DE3834BA709C3E9CB23B4F9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0b13de-6a3f-4ee9-7ecd-08dc1dba5344
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 15:28:47.7298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gaEagoWbOHwPTNLcE9NC8YN8cXNs+tdBUdnbzhULcBVE/Q195M8Eq4iIvdcx3cHroZk8ziHTWsA3qC317RIsWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
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

T24gVGh1LCAyMDI0LTAxLTI1IGF0IDE3OjI1ICswMjAwLCBKdWhhLVBla2thIEhlaWtraWxhIHdy
b3RlOg0KPiBBdXhDQ1MgZnJhbWVidWZmZXJzIGRvbid0IHdvcmsgb24gWGUgZHJpdmVyIGhlbmNl
IGRpc2FibGUgdGhlbQ0KPiBmcm9tIHBsYW5lIGNhcGFiaWxpdGllcyB1bnRpbCB0aGV5IGFyZSBm
aXhlZC4gRmxhdENDUyBmcmFtZWJ1ZmZlcnMNCj4gd29yayBhbmQgdGhleSBhcmUgbGVmdCBlbmFi
bGVkLiBDQ1MgaXMgbGVmdCB1bnRvdWNoZWQgZm9yIGk5MTUNCj4gZGVyaXZlci4NCj4gDQo+IENs
b3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1
ZXMvOTMzDQo+IFNpZ25lZC1vZmYtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5o
ZWlra2lsYUBnbWFpbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgfCA4ICsrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBpbmRleCA1MTFkYzE1NDQ4NTQuLjE1MjFkODI5
NTI1YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gQEAgLTIyOTAsNiArMjI5MCwxNCBAQCBzdGF0aWMgdTggc2ts
X2dldF9wbGFuZV9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCWlmIChI
QVNfNFRJTEUoaTkxNSkpDQo+ICAJCWNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR180Ow0K
PiAgDQo+ICsJLyoNCj4gKwkgKiBGSVhNRTogQmVsb3cgaWYoSVNfRU5BQkxFRChDT05GSUdfSTkx
NSkuLikgaXMgYmVjYXVzZSBYZSBkcml2ZXINCj4gKwkgKiBjYW4ndCB1c2UgQXV4Q0NTIGZyYW1l
YnVmZmVycy4gT25jZSB0aGV5IGFyZSBmaXhlZCB0aGlzIG5lZWQgdG8gYmUNCj4gKwkgKiByZW1v
dmVkLg0KPiArCSAqLw0KPiArCWlmICghSVNfRU5BQkxFRChDT05GSUdfSTkxNSkgJiYgIUhBU19G
TEFUX0NDUyhpOTE1KSkNCj4gKwkJcmV0dXJuIGNhcHM7DQo+ICsNCg0KZnVuY3Rpb25hbCBidXQg
bG9va3Mgb2RkLg0Kd291bGQgcmF0aGVyIGFkZCBhIGNoZWNrIGluc2lkZSBvZiBnZW4xMl9wbGFu
ZV9oYXNfbWNfY2NzKCkgb3IgJ2lmICgoIUlTX0VOQUJMRUQoQ09ORklHX0k5MTUpICYmICFIQVNf
RkxBVF9DQ1MoaTkxNSkpICYmIGdlbjEyX3BsYW5lX2hhc19tY19jY3MoaTkxNSwNCnBsYW5lX2lk
KSknDQoNCj4gIAlpZiAoc2tsX3BsYW5lX2hhc19yY19jY3MoaTkxNSwgcGlwZSwgcGxhbmVfaWQp
KSB7DQo+ICAJCWNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX0NDU19SQzsNCj4gIAkJaWYgKERJU1BM
QVlfVkVSKGk5MTUpID49IDEyKQ0KDQo=
