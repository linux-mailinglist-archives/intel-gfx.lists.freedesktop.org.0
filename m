Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE9B680EB4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 14:22:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1A910E248;
	Mon, 30 Jan 2023 13:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8998810E248
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675084953; x=1706620953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RokghcEA+uSJ9B1XNDm46lUCmvNMG0Ay7EUnr5VHKRc=;
 b=f/9dgAg8QvZh/7Dlj5ZQDbnl7edCNZScIs6zdJrHPtRNjbMuK0L6HgFk
 6qGUW0/BVIEarUYbZkudugLGoUEanMcLd5vVZgbwuXGv8IfRxG6V3tlc6
 o3esNgjrAywWaEUzKgYsgCCefAMqcgdlTqaAtvJcrpJHJK7/unqEDdYAx
 D//t62xMQah10ju8ZdEfuiHkZo5y1GaLeWz19/PuCDFQ9RJiiTxuSGOv4
 J9fPBH700IMrDWEEiyRvnQFjIdqdtrRn2fBC7evuMYS4jUIq2bsVPW0jg
 AGIKkEFyE7O1T+8/oAfbYX09vRYvdb2tjQ2BoZElEY44J5/On8TbUS7gR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392101614"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="392101614"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 05:22:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696396416"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="696396416"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 30 Jan 2023 05:22:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 05:22:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 05:22:31 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 05:22:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lt7RwO1b4kNekhNkNf3K1nPdznrZbRw4dIVYRM6FFlVriHL9nEMk1dn3w1ikEcCSPLQyBEWqHgOnpOp5DGdONISv+ECAIgYH5/jru4mpoaGAVzq7b3rjObL28RQu6l3mvTS4+PHvyxk7RNYXH/+MpF6ebFl0AWNkufaLcOfh16cDRZLhLGuNVt56oLX9k2MB+ZEvh0ruSbKaEsyLn+vBhGqiIpvWZswv1d25LLI3udjEhFM4np0gjiyQ/7j8jzPHE08ziMqkdV1gh34jCUAh5rDxTmQE2mASs82s0YbIq9sr+JmWrdEdxW6fHsLcW2gECVOEcYEdQOjtV1d/Lq93kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RokghcEA+uSJ9B1XNDm46lUCmvNMG0Ay7EUnr5VHKRc=;
 b=be2ZfkapHaOX3EcN6pfyhkGQkmLID/53spFGvWtlJWB5/Y4V77d2hwjLtoMwtGNGgP7WyCYpYJkQxnVf2p42ztG0L8AYarkjQ9fQNZxmFpao1iBk8yckEM+qrfbJz9nWdkIuC1OltTid81iPf5BlQxXHzRq+M3Kzs+44QqNpKzdls7gUcssOojx5KyTM146qCsaywIPmWmP9lyvo8xX5DbOUmxzg8h7pNWBD5S//3vUvXFQX/QGv/2Zf5hd9ljhRXTOx7zS5rp8NPrcyf3HD6pH0oKr7qbCfoWKr8p55GMy5gx9JRrOi33WdZZsvxDQo8E1g1JqiYmRGlDwWG9+BjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by BN0PR11MB5694.namprd11.prod.outlook.com (2603:10b6:408:167::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 13:22:28 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb%7]) with mapi id 15.20.6043.023; Mon, 30 Jan 2023
 13:22:28 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v3] drm/i915/psr: Split sel fetch plane configuration
 into arm and noarm
Thread-Index: AQHZNIHn3QQRb58rq0SZFYdYuKazaK628seA
Date: Mon, 30 Jan 2023 13:22:28 +0000
Message-ID: <07ecf9c1d76883b72de8d7047d69d829132d0496.camel@intel.com>
References: <20230130080651.3796929-1-jouni.hogander@intel.com>
In-Reply-To: <20230130080651.3796929-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.3-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|BN0PR11MB5694:EE_
x-ms-office365-filtering-correlation-id: b4501291-76d6-48a2-9090-08db02c50908
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0mvliicLht8+ZpriN4+oxd1nLgQ9GSqfh+UwgVk9+PPK3Uz92e5INe7uX55uXtiSMqJrM05XCFhbtK74PfFkXLM/+Ze4C5gEhYDUS1e/CjbzdcegS3BHpD6Jp+2E4EkP1c7RiyBTCF7CQ531qOHS4mScouio2/Y0dXr+zkZkp0f5ZCMWq3QyBcao3wO9bcWXeXvQvJhe7pdVWUE7BFdg0f9VDQcJhcwiKkbiA3X6F4/hY9CCllte3gjvvVJXJu4xdFENDfhZqFLmnsaf7jbgcFY4jm1oYgpF33N6WQdzcSlLGfIPXitx+Dj3fI/1EamGJxqbEIThYHfSROlp8DaKjEMclQVyEpa+ZZo16qDukD/swV0jbdV13akVwxPJm6PZbces2rvJDvXJGuUpAirMAACxY06yFxzKAqJm+/rx0wW63Q6Y8dkEOegCT4TpjCKM4l22FBZiDZMt+5jCTaT61cMUkAJnk0rhsMC/BxsYWo2Beb6TLyCz8redS0fQ/4WGVVRNxCLH3Gj888XDP+m316XXgTkv8rDmCuiyZY3appsctNuYqYOsu5UyRP45RXbScqT/vUVTCSRse75pc1FQARgtv9GwCZmD0Q51ei2DwmkMo26sn35GFuXIzEjNX7DEH3e/xSgpj6NJ26ThzF6tj6ipd89FpbVdC76LTH+9MjHBpJmAxx3yl/aeuv3GOuCFG2r+1lP0vt5BwKoacJNu3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199018)(2906002)(82960400001)(6636002)(26005)(6512007)(186003)(478600001)(6486002)(316002)(54906003)(110136005)(38070700005)(36756003)(86362001)(122000001)(38100700002)(41300700001)(8936002)(76116006)(2616005)(4326008)(66446008)(66556008)(66476007)(64756008)(91956017)(66946007)(8676002)(66574015)(6506007)(71200400001)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1R4MFRoS1JQZksweHo0SS93NlVTUldTWWRpTmYvZi9HRUJ2cTFaSGVhM2xQ?=
 =?utf-8?B?Y1hoOElwR042WC9tb3J5cDNVWE9EQlNvQjN2ZW1CTFNOWDgzSHlCcHdLRE9I?=
 =?utf-8?B?M2x1dy9VS0xNVnpMVXR4YU9OakVXUFRpK01Ba2lhcklxQkV2dUt2ODNweVJB?=
 =?utf-8?B?Mzk5bGxKcFR4QkxwOUdpU2pUZzhaNDRzMkplQkxrK0c1RTNSNDJQL0hQYmlL?=
 =?utf-8?B?eFlxdVlRYXR0NDVsRDlTeDYwekkzT3pGOHNDU0FaVzYzNUdaYUc4UVBYdGk3?=
 =?utf-8?B?ekNQSXRISjVSVjNWa1JjVm9UQm4rWS9RcXUvZ2xQeHlpY3Jqa3Jvb0ZVenB5?=
 =?utf-8?B?VnpKQVVWdUxDMDFydWNGaW9pQzRCZU85dHR5bGFaRHJ2dUFjOU1SRHRweTh0?=
 =?utf-8?B?ZWp4QXJOZ2piWUdOdGlFM0RTQ2tLYXdEYTF2UkRPc0VJWWl4Z1hqUWI1MVVk?=
 =?utf-8?B?RGNDR2ZUQVFLN0E0cTJmSUZNQUFRcHZmZUc4VHJQNTJjdU00UXRuRGtWUTc1?=
 =?utf-8?B?cytIclBHaVNoU2NJL1ZyT1ZQK1pmZVB1MnpNMFdlQUN2QVV6YTMxd3dsT3o3?=
 =?utf-8?B?WTV1UnpZcTNjaFAwajhVWkNmRW96UERwQ3orTk5tMVpXeDBoako2aDhPeHpS?=
 =?utf-8?B?QUhLWU1aYTdZa3BsSGhIQ0pqRU1WZitIUFZuTG1UTjBaMktKODdMSklYSnE2?=
 =?utf-8?B?OEhmRFN5dUp1cHQ1bFljaVAyc0Fmam1DQmg1S1ZXMERQNGlWYkJTcER0UHBr?=
 =?utf-8?B?ZUFseEU4aUhiQ3pGS2t1ODMyK2lxRUlKZ0lrL1dPNjBqWE05WDVjeG5ueXgv?=
 =?utf-8?B?S3Y2aW5ST1JqZFYxckh6ZGpsN2JrSXRRZ29xZVIwaDBoMWU1WU93V2F3QWJR?=
 =?utf-8?B?b2pubkdiL01MeUhxcTlLNmRRVVNnR3hrOUhsczNWT21JV2xjd25obTk5VnVQ?=
 =?utf-8?B?WmJFeVlJYjdPQzV2NGlLN3ozT3kxczVXK25wcHpXNjU1ZWY1RElnS0FxRG9U?=
 =?utf-8?B?S1AwVSttd0UwNTFPN3Q0SnllazRLYXNTdjVqU1ZWNnRPSzFGWUZHcGlrVU4r?=
 =?utf-8?B?NUFYZUdieFNjeEZMNEhCM2I5N1dCL2p6VnI0K0pNVzhkb0xNUEF4T3UvWktV?=
 =?utf-8?B?RWY0NDdhUVIrdzZMcmdPSDdVRFBlNzRuNTg4VWFOd1dvTkdUd3c3Qno1OGU2?=
 =?utf-8?B?aGJwWVZYc1FKbXFpWTJjUGh4d1h6ak5PUmxJSXpNN2FOUmF2bkd5WUF5VDk3?=
 =?utf-8?B?b0tlc29PSyt6eTJ2NG0xSGJuS0orY0RVUlo4RGxUK3NGUDhwUE1CaWhKcVVL?=
 =?utf-8?B?Nkk5MTY4Z0dBbzFXSk95bDFNRTV4TUlSNzVpdUNhZks0MzJ1MGdqbUl0WWtY?=
 =?utf-8?B?aDVXZnNEUStQTmNnakVIR0FKOXdLSTNmMTVic2ZOSm1ueHMyc3pjcUQvVDBM?=
 =?utf-8?B?NmZETkN1NWM0YkJ4cnhhellDQm0vOWJ0cTBxamlYWnVjYlFjcjNoNVRMVHdq?=
 =?utf-8?B?MUxrbGxXRUhHSE9QSHcxbXFUalBxc1dUdFQvSXo4TlRlS2VsanFLMWV4WE1T?=
 =?utf-8?B?YTBkY05aRTJHVkI3ZGFnWFhKWHpxYVgwUHJQU1Y0cXlUSDlUbmJBL1hHTlN6?=
 =?utf-8?B?QzZJYXkwdktTWE1qbU1Zb3BMQzFMZ0pVdjdWN0w5ZmgvNHZLZTlRL1R3OUpQ?=
 =?utf-8?B?bmRseTFFNjdvMjlMRVVRamVnUnNJNXUzUzJOTXhyRU5WWWk2dVNmdTB2VXBK?=
 =?utf-8?B?Y0pqNEVBOVVTU2tlbUdnUFE1V09OVUZqQVlGSU9WS1Y2dXRWQnVnZHlydFJX?=
 =?utf-8?B?aC9RYnRMcm84NWhXODJrSVRaWmMrSVhvWDdFOWUraWdQeVBsWWJENmF5Z2Vy?=
 =?utf-8?B?VVFnR1l2SUNNeEd2aS8zR1B5VlljL1FtTmh2Q1ErZHM4U1lsUHcrbDNSMEQz?=
 =?utf-8?B?cGZmbnpmNmppM2l4L1UxaXc3amZYRmdGNGpTVlNrM1MwYjl6T0g2NGVBa0VL?=
 =?utf-8?B?aDZ4UHFybitCZFA1ZVJpd0lyZlNjcjFXQmFxYk1jaGZzSTVyai9IdnFiMmlE?=
 =?utf-8?B?QXdoOWxLVmkwYXAwMHFQd05Ic24vSzE4UDJNOEh5RzBlUzNsdHA1MWdXN29i?=
 =?utf-8?B?Ymg4SUxuQmJzV2N2S1hEUnlIa2dKZ0h0cCtnK09HS1RobXN0SVZUQVhxOXNx?=
 =?utf-8?B?WVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <452B730B03840A4597A8E422813F0F71@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4501291-76d6-48a2-9090-08db02c50908
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 13:22:28.5957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OasRb5Nj2yLkx7JrpYPGTb2/J68dQtz45Zab22EdUZkJooa4huX7kvTZwt1G66iuAoFBrHI0DGidE2wkXyEeNVnYBSv5htxRCFcheG3OroE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5694
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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

T24gTW9uLCAyMDIzLTAxLTMwIGF0IDEwOjA2ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFNFTF9GRVRDSF9DVEwgcmVnaXN0ZXJzIGFyZSBhcm1lZCBpbW1lZGlhdGVseSB3aGVuIHBs
YW5lIGlzIGRpc2FibGVkLg0KPiBTRUxfRkVUQ0hfKiBpbnN0YW5jZXMgb2YgcGxhbmUgY29uZmln
dXJhdGlvbiBhcmUgdXNlZCB3aGVuIGRvaW5nDQo+IHNlbGVjdGl2ZSB1cGRhdGUgYW5kIG5vcm1h
bCBwbGFuZSByZWdpc3RlciBpbnN0YW5jZXMgZm9yIGZ1bGwgdXBkYXRlcy4NCj4gQ3VycmVudGx5
IGFsbCBTRUxfRkVUQ0hfKiByZWdpc3RlcnMgYXJlIHdyaXR0ZW4gYXMgYSBwYXJ0IG9mIG5vYXJt
DQo+IHBsYW5lIGNvbmZpZ3VyYXRpb24uIElmIG5vYXJtIGFuZCBhcm0gcGxhbmUgY29uZmlndXJh
dGlvbiBhcmUgbm90DQo+IGhhcHBlbmluZyB3aXRoaW4gc2FtZSB2Ymxhbmsgd2UgbWF5IGVuZCB1
cCBoYXZpbmcgcGxhbmUgYXMgYSBwYXJ0IG9mDQo+IHNlbGVjdGl2ZSB1cGRhdGUgYmVmb3JlIGl0
J3MgUExBTkVfU1VSRiByZWdpc3RlciBpcyB3cml0dGVuLg0KPiANCj4gRml4IHRoaXMgYnkgc3Bs
aXR0aW5nIHBsYW5lIHNlbGVjdGl2ZSBmZXRjaCBjb25maWd1cmF0aW9uIGludG8gYXJtIGFuZA0K
PiBub2FybSB2ZXJzaW9ucyBhbmQgY2FsbCB0aGVtIGFjY29yZGluZ2x5LiBXcml0ZSBTRUxfRkVU
Q0hfQ1RMIGluIGFybQ0KPiB2ZXJzaW9uLg0KPiANCj4gdjM6DQo+ICAtIGFkZCBhcm0gc3VmZml4
IGludG8gaW50ZWxfcHNyMl9kaXNhYmxlX3BsYW5lX3NlbF9mZXRjaA0KPiB2MjoNCj4gIC0gZHJv
cCBjb2xvcl9wbGFuZSBwYXJhbWV0ZXIgZnJvbSBhcm0gcGFydA0KPiAgLSBkZXZfcHJpdiAtPiBp
OTE1IGluIGFybSBwYXJ0DQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cj4gQ2M6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29t
Pg0KPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5j
b20+DQo+IENjOiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiAtLS0NCg0KUmV2aWV3ZWQtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRl
bC5jb20+DQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
