Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9650465B8F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 02:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465B16E115;
	Thu,  2 Dec 2021 01:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 820356E115
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 01:17:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223472409"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="223472409"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 17:17:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="500485163"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2021 17:17:39 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 17:17:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 1 Dec 2021 17:17:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 1 Dec 2021 17:17:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O5z+OFY3vIXmFCQcNjsY8IZDY/gw/1awAobZ2+yrDAvaW4rfIekjh7dcT80uECyvv9cBL9DDE66ObsMuOO/1V972AuOnSNyNFBlQczJDIV2cUEe8/M/b5QqdMHfMBCIisPTTERF2bAyw8WsC4R/CF1fG9KLO9T5HgZoFWpyPXwgODU9DYn1O0pD0bp3d9YdhSMTKwnmdxi2lY5mH+CcAkTlP24dIpF9IFX2cuVKIk+0NKghdnaGH/TeCYfYislf8mKOSLIohu8NxPjLBidoM/bu6nJ7Xs1Yr3AwPBwDYMkc8I5KjIId7RMlEdv5SWygCJswkSxeDotuvG1HbVj/9Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSBW3YcwGese1A0PQzaJyBMt85AB+TuWdg3LqJQGZtc=;
 b=jrEFtcndNe/5v5DRqE2BMshoNwViizotHWcyIlL8dt3j397E14f+bPsDSBrplIcu193GJH419KJJwzwdNL3kyz/r4pc4zfGf6bmdBqMWukuP4On6z4wZvFyGZmvZWK5cEB4AAOjaCmj32cUQQ73oCqgQ+jnbaECvuqj4DmjlzpsHm3lPIvtWqtl3cZ7qhnscWxRA1wW9UkSUI1rkd4m7wCDrMTCGm28Kile4u+xyoQwDRNIn68eKto/kwrhYf2XDQcO8/CD7f4uaBpV6kx7fdI3UM6imMLds5AUuFDe40LGv/v6fpWwwezOSc7epUqTJLqoqK7OtevqVvC/eWs2vTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSBW3YcwGese1A0PQzaJyBMt85AB+TuWdg3LqJQGZtc=;
 b=TF3Tjt94Ofx+i3+DfXXgb8MOzp1GraoJJHSdolLj/vMurzUtWtku496pj/x++Vv7KQQZ4Iaox7R42xcfqwtHFTlwGj1N58BqrOZLuYlgdrdsEyjYTFfe6qHSXCARd47oDGe0il+GBZAnmDsreSRcmmh3HDCFpK7hiVzYUhEmHfk=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR1101MB2109.namprd11.prod.outlook.com (2603:10b6:301:53::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Thu, 2 Dec
 2021 01:17:31 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca%6]) with mapi id 15.20.4755.015; Thu, 2 Dec 2021
 01:17:31 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Hutchings, Ben" <ben@decadent.org.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "kyle@mcmartin.ca" <kyle@mcmartin.ca>, 
 "jwboyer@kernel.org" <jwboyer@kernel.org>
Thread-Topic: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
Thread-Index: AQHX5xph/f6XAKy2GE6V4WspnPfE+g==
Date: Thu, 2 Dec 2021 01:17:31 +0000
Message-ID: <9d3a16d4327fd6bb0a52cfe8e4bb0857a81494f2.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.1 (3.42.1-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b59f94d6-f647-4749-04bf-08d9b53183cd
x-ms-traffictypediagnostic: MWHPR1101MB2109:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR1101MB2109F326EBE465749A6C1F68C7699@MWHPR1101MB2109.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:651;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L7FK3vPut+tZX3S/kkqxixOvl1EFKmUyeBK8nPAw7RjCFAw6PMeiKruRvsNHy/tvPyh+2oju8AnVCa/iZ2vM9Kh8nkhHZEHNxhrLLVthK2+TggkReswa824dlymWQA5WuhP7XCO52bLZTCdezIthY+Emn1mF38xrmf4jLna/zEw0n3zwl9Az7x1hzE9+Vce35ykbk9zkKi1zTMEDzekaoiX4mpLvtjzT1o+aVG+VN1u4IVRAZ8h+j/F4C8f3IHHdPGU2PvMQUdI1imEu9HVxmsWNpWwPYtnR4mTom2d3OY9d2ziQaEuumGb7AlkLGZ/o5If+JSV4koSLQmhNiABN+H2mmuKoqZfVIXGAE0+CqmVJdrVxTbKhvVsKcw+YaZE45afLZ2LaxtMwb2PYVxa8Al+dkHqLK/FJxid0bXYGgksyUDZHlNtM3ECJtSesDQ/sonm0tFz4iJSusd/q5gBocceKcTbQof7GAHajjaZmkTJY8NAaLv5Yl7uNXR/kcD2e8kMftfI3NJAN8rY46/5EfqFe1gZTTgumx5qXH9cmql3oqEmXzsRGhm5vEd6erZQYnFLEIidcvs97NxfCCoYDmOMJ6pDTxp0oYzyKtUVY0bItNYedOeFUuxIkXj2pahjbgFSf11NLhxSp3Qs2q87XxEzu1SmXoo3uMYJgVqjsFUATi5n6kGT9EOVrsohHDehsUbM9hsYRMAoWv6J6+7rGeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(66556008)(64756008)(66946007)(122000001)(76116006)(5660300002)(508600001)(8676002)(110136005)(4326008)(66446008)(4744005)(2616005)(38100700002)(316002)(38070700005)(8936002)(54906003)(6512007)(71200400001)(15650500001)(82960400001)(83380400001)(6506007)(86362001)(2906002)(6486002)(36756003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDNBVGNScjRUVzFzUklZTVc4SWhmN0FscHY2OTFwWEdyOWVDQUJtWnNrZXoy?=
 =?utf-8?B?TDB1SURFZHR1ODk0MjhHSTRhUTZNa1dzVVh0SXhDQjQ1dXdrUjZuOE1kNjJk?=
 =?utf-8?B?YWUwZWhGY2hsZFd4dEt3UVNaR1UwUjk0bk5UdXBmU1hnSGlDTGJESC8wZGZE?=
 =?utf-8?B?SXB6SlRWMnVJQTlUQW1kMFptRUFrV1VYME1xSWE3SjdEL1NxallzdnBkQ05z?=
 =?utf-8?B?SFRqUlB1cFc5TkdJR3dwSi95NHNMWUNpMnJHWDd1czNLbTFBUVJEMFFJOVl2?=
 =?utf-8?B?YjlscWI1V3NORXpNdndQdWs1clpiODlDazhSbkNKNHcvUzJxTEtIWlpaRmZS?=
 =?utf-8?B?SlE0dG5vRndvUDc3YnZwYWtYSFkycGszSnBqVE03NlZ2Z05ZMTU2UlR3cUVr?=
 =?utf-8?B?RTJKNS9sM21tRnY5WTF0MmJVQ3NvaytFTlBseUlPQk0wYU5ycHJVYytzdkox?=
 =?utf-8?B?aHdBSERJOXRTSEcyclFxWkNoRS91U1d1aWR3bkZXZmszZEl2NldyV3hwUGQz?=
 =?utf-8?B?NWRBZkZCTitoVzFCVEFHSDdwZnNFOFZRRVVNbTdUVEczZFp3QVh5UXMwTFpN?=
 =?utf-8?B?VUtJdGNXcTNrNHI2aCtFYWJUbDNibGorZmVqWmhOa3lvc1hOR090SHBUazdp?=
 =?utf-8?B?V3lrQklYZ1dXNkRWcjRZL0xhaEpmN0dZbjJkY3ZjZml2QXhDVGpxdEZWMjBU?=
 =?utf-8?B?R3NpbEJPOHVqSFJDOENud1F4Ymt1YjhOQng3eTVhVXY2R1oxZ2pMdE82OHE4?=
 =?utf-8?B?MTJpbG5xSDdLeXpqTUtLK2pHME1WSVgySUFZQVJUY0Q3aG1PNlNPSUJtTjJr?=
 =?utf-8?B?SWo4ZlFrUWZmWmRrQk82UDl3MzlBWkJPTi9wcG5IMmxJeS9VdUF3Z1ppTTY3?=
 =?utf-8?B?UU1NSmhhYmdFbkdIMXlNZDdBS2x4dHRrZHYzeFBaVUtyVm1DeW9rL21UZnVH?=
 =?utf-8?B?NHJ6RnBtcC9pYlhHYStVdUVHeDlpL1N0eVJqbEFIb25CVkZIQmhEbDJZWkJm?=
 =?utf-8?B?VTJzK2ZxU1FjaEZ4eXFrOXR3d0ViZHY5Zy9BRlZ1L1owOGNsWjFZd21WeXRq?=
 =?utf-8?B?WHBuWTl6Yjcvalp4M3FtREpLNVNnclNZMDZvZlVZVDR4dFNydDByRHdSbXht?=
 =?utf-8?B?d21hbkVmR0tpRUY5TzlXcm1QM0U4VEkrTS82dnRpaXFqdy81aGdRbW5kVTdy?=
 =?utf-8?B?RXZYampkTjhzS0lZWFpkcmN4eFNZUlhPZHFOR3RDV2dTM0NzTVB5cFJ6dUox?=
 =?utf-8?B?Z2RTSWpTY3dka1V0Snl6M3dTZkxxaWJFeEhqRlZCU0hDb2tUVktMdTF6c0xE?=
 =?utf-8?B?L2NJa3haRG5VNCsvTzVNZlBLZTQ2ZEFLQmRzOW9xZ2ZJMlkvZkQzb2tjOG9W?=
 =?utf-8?B?TE9JS2JPZ0R0TXJQWmpGVDRndFVrVUQ1bVlQVWxFaXdEVFhkNFVaRlVZbHhj?=
 =?utf-8?B?b2d5cllRayt3WkZ4UkRSbExOMEFNMXJnbWxtenZCblo1VGpZOXVpR0lQUHZ0?=
 =?utf-8?B?TFlPMTdPZGF6Wng5ajU2cWJNL2tQM28yMWhHMDZTRWVHa2dUSXpYMjhYK3lD?=
 =?utf-8?B?aDZPNFJnZFR6YTBGYkFyMm9rNm5SSU8yYnd2U1UzbUtGeW1iUmtHWWZHN1FR?=
 =?utf-8?B?T0FEVGdKY0tpSmtBc29lV0RLQmpHaFB4QTJxbWhzcW9Vdm14a213T29zWld4?=
 =?utf-8?B?YzZSTCt0UXNJRlFLRzhGeWxHaTV2M0FnUVFtTVptcktIYXNkSFZxQ2hzVUE1?=
 =?utf-8?B?aG9XcTRLd09VOGFwbmFzdXR2WjdCYm1ZVUlvT01GY3pnMU4yY24zZ1MxUDBl?=
 =?utf-8?B?Z0pWN25md2dwSGplWGhRZ1JoUDhaNVVOZTFFdnZ6bjh0UThRanQwbHQvckQ3?=
 =?utf-8?B?eDdEMVFPSmxiUVBaS3YzRTNYR0txUzNFbE1LMFVna0hBdk9wMWZka3hhaFN4?=
 =?utf-8?B?RDdUUlFrUUdxR0ticmd1MG0xczErNlUwMWxqRnBTTVlyaVZTaUZKMmNLdTBN?=
 =?utf-8?B?YXc5eEkyZ1RXUklzODlEYm9aV0Fuc09RS1RvTGx4V2F0RkR5QVIxZ0ZRUjFz?=
 =?utf-8?B?VWRUbU1YeWhpbERFMnpLM0pQRFdHUEZpWFNiZUxHcUF1QmxRRURQMG4wS0dM?=
 =?utf-8?B?ME9raGtXSSsvMGlKb2NaaXJlOWluSVVQRFJsMWlrSHRTWjAvVWtPZ2YwNDNk?=
 =?utf-8?B?ZUdPN2ErRlhNNitaUnVkV1dadWxGQWpNZWhjOGJlNHRDMXdmN3BXcE1SVXB6?=
 =?utf-8?B?TkMvTmFrTjU1QmRsSFQ4d0Z2VVY4MHFDbmRteUNrcE5QN3M0aisrY2llWTZ2?=
 =?utf-8?B?NXhLYW1TVjREYlNlTWQ5RzNsQ0NuTm53aGYvNktrelBoK3VsSC9PY0tabVpr?=
 =?utf-8?Q?vviJiFicGoLkabY8ah3sNvoNKVxwW8RPrg4Eu/1OGonLE?=
x-ms-exchange-antispam-messagedata-1: YV9fckTpz7HN9vKi9vBOKyNp4vDSImEjesU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC28CE27DAD0F549812DD8D7F735A6A8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b59f94d6-f647-4749-04bf-08d9b53183cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 01:17:31.7757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3wPfpNQzdq67PDupm1sjvkveNXZJUYFVPxmLtYqDGXzgAY+N6B3NC7l9pfhDk2qa5hzXlZ6Pk0ivD3dqvgrpd4ekAe51PtGOsQ9Smwl+03RKK6jtBTNZbo/oyIF6mv1584i/5JVD5PwnQP1Q6RF6vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2109
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
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
Cc: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQmVuLCBKb3NoLCBLeWxlLA0KDQpLaW5kbHkgYWRkIHRoZSBiZWxvdyBpOTE1IGNoYW5nZXMg
dG8gbGludXgtZmlybXdhcmU6DQoNClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQN
CmIwZTg5OGZiYWYzNzdjOTlhMzZhYWM2ZmRlYjcyNTAwMDM2NDhjYTQ6DQoNCiAgbGludXgtZmly
bXdhcmU6IFVwZGF0ZSBmaXJtd2FyZSBmaWxlIGZvciBJbnRlbCBCbHVldG9vdGggOTQ2MiAoMjAy
MS0NCjExLTIzIDEyOjMxOjQ1IC0wNTAwKQ0KDQphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVw
b3NpdG9yeSBhdDoNCg0KICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWZp
cm13YXJlIGFkbHBfZG1jX3YyLjE0X3VwZGF0ZQ0KDQpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMg
dXAgdG8NCjJhMmFhNDEwYzJlYWViZTU4MDdkMWZkMzIxZTQyYjhmNTMyODhkOTE6DQoNCiAgaTkx
NTogQWRkIERNQyBmaXJtd2FyZSB2Mi4xNCBmb3IgQURMLVAgKDIwMjEtMTItMDEgMTY6NTA6MzAg
LTA4MDApDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCk1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwICgxKToN
CiAgICAgIGk5MTU6IEFkZCBETUMgZmlybXdhcmUgdjIuMTQgZm9yIEFETC1QDQoNCiBXSEVOQ0Ug
ICAgICAgICAgICAgICAgICAgIHwgICAzICsrKw0KIGk5MTUvYWRscF9kbWNfdmVyMl8xNC5iaW4g
fCBCaW4gMCAtPiA3NzMwMCBieXRlcw0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
DQogY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvYWRscF9kbWNfdmVyMl8xNC5iaW4NCg0KVGhhbmtz
IQ0KLSBNYWRodW1pdGhhDQoNCg==
