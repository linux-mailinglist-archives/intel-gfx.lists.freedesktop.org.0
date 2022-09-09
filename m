Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8035B3D26
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 18:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E731D10E0BE;
	Fri,  9 Sep 2022 16:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32AB10E0BE
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 16:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662741557; x=1694277557;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=RZ9Qp4b1DJFWgBtPeDRuusqnh8tFq3KmNJhqej+fDbs=;
 b=BASpflV5G0MrTm1kCA2qKroA966GBWltq5BKHDlfLFkVbVK+/kV8BDGi
 Rb8BaR9cvmhZaafdjJBUENLEeSYq1Uz7COsLt0o1NPCMowilcXwdwpEkH
 27+prIW1jDn+WVkZ3XyH7o7TizbteA/+n9m8Xn0nIfWbGwUiq+uGaRI5U
 m1y09Cx4/3ju/6hVVCEizHL7Ohzlq9D5D0oiDlp7T3fDjNOuWIzB3GQNM
 2OJDERDC1xvy2OsWQQxL/YS8H7ziDfB51kOxA3ajbz3bYW7+xc8C/8MZe
 /IH4+ZdlnUu2l3kZxgutTHGMY2n3Mnru+Iz+BsQn/GAGG6qV/ZIAUaVOW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="323731420"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; 
 d="scan'208,217";a="323731420"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 09:39:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; 
 d="scan'208,217";a="719022164"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 09 Sep 2022 09:39:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 09:39:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 09:39:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 09:39:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ILJi0Upt+fOv+fnARWRvH5ZAB1T79fDEefoSL103bNS8K3dsTqjGZqxEKACXTyRa/dPDN+HLLRF6d5GxXcw98RLs4kiTdEs2tYvI3SJcuSyvhNBRNEz8KR38a1X4bpSWy3fDVZbmYOdY83kDWtIlQ0ri+xRiY6ByBjnNcdu7ftww0InPo+DBnUAfbyF5IROZY1nxFUOGLoi4Fc4vQvoOUWMNUsEyzEAznr25CLjQK+dbwferBNixUpl+TlCWJ4HFl8tzULhdL6XzusV4WQsEj+yryhKt8xEMF0k1wZDMokVy5atEV8G9+xsqU2hLTIBo1tnGvzSAsXF+tRXA2oZsfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZ9Qp4b1DJFWgBtPeDRuusqnh8tFq3KmNJhqej+fDbs=;
 b=APTIPbST0XQxgtzUNiUtYglDZCb+PN1eag+gfRvStbtt9rFc56eBJ3vTAsrOk9H/07PL3tlQZ6LnJb89JIL0i9pPJnkHOOM4+WRTxhMFdSifPdis703Zuadp83HOFQi4OL9st4AvqswK80LRAwiPNyrASO7kaDfHgUTWJ/UDCTUgsoEQnkV9YDLjWEFGkBZ1/k96hUqNqmFOWokyuIGGI5wjCkyRccd6N2msU1f/DzG72R1u7a2Bk+Z6pWls/9KT0+jrjIG7RnSMrLQgEKQ6NQDCx4x91t6fEFp4i3jcun6aHy/uGPMwWW/IDPvH0x1FdLdmeRxI8r3czmB1bdx1og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6504.namprd11.prod.outlook.com (2603:10b6:8:8d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.23; Fri, 9 Sep 2022 16:39:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Fri, 9 Sep 2022
 16:39:09 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 6/8] drm/i915/debugfs: Add perf_limit_reasons
 in debugfs
Thread-Index: AQHYw0MRRUH5sT4DUUmpcygnRFzBbK3W4vqAgABbCACAABDTgA==
Date: Fri, 9 Sep 2022 16:39:09 +0000
Message-ID: <fbd4e87551afce15da8aac496c215b8675648b4d.camel@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <aba9305853caa054dc598a0f559495d3e4e2b1be.1662613377.git.ashutosh.dixit@intel.com>
 <YxsRscHgVHEv9+VS@intel.com> <87o7vo5zht.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87o7vo5zht.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00722a95-5557-4a8a-bc9e-08da9281d18f
x-ms-traffictypediagnostic: DM4PR11MB6504:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0hbCtt4mZtAysBJk4R/VIe1Xeqj7vAuvWBqzKn+abEdujVluYYWiEraJySutNB3FIPJX3q0UQM3JOdvvXAAXVnOUIZDTwEm9jV91BR4sAMimwGHgTZ7ntcJ0hSLnC5SAlV9mCsKVDnnGJ2zRX6A9vaFOXuIpyx36m8m8GCTpsu0wDZoI4AqJ7kziZg0GrFjepgmKNSUwAw1Q8RLfg+pkhwFd6Ourlw3zaRfawJTItyMbjoRSFapxkDwPorwrLDCCHAOnNm4zP+HJtLtalYIHheyU3OvPqJ5cBEuOQJttoTvdgVYhnqhZDRkTcNz6oSst+e2+CaICOWnZ0/ScrY02ma5szawVCNG+KsGUFXKmrlpouS3I2FVLRsVf3fHXR7N5wadMnR3ufCOwuWGRmXOCdFiTJQnka7UdXgQGzsMCMMTTiP29uRfUTu0dhqVwZTFTodkZGWhIY0gbMroCMDtLUYSt5+6O0Ofy9I90FwjMSALuHu47kyMj4P5gXo6sKiH2lIjhG+b1ERT8NC9u2+uEhXLyaxIii0BP8n/hLehfGRjaAk3P22Rjc7xD1zH/jnSjrs7+UrNtIa0fynCuqsiZMGdp8uyweSnJUuL1FLb4ZgP95BxN5JV7GEut9MPxZ7xayQig61zhODb7PkxEPoRKhbZIcvWvybnq6aK77N03DT3O4mgrsl6xl0uBIFKBi8adgTIWqjGTXv3SaF8wxUsikeVPvJdXPy7lrduLtykpTd+Gi9wceA0AfMip5dQcAmgAeqT5n6NAT+Y68PY9YuGh3OdcZqxGe0pKEj34BbDGlrg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(366004)(136003)(346002)(376002)(37006003)(38100700002)(166002)(38070700005)(66556008)(122000001)(36756003)(6636002)(316002)(41300700001)(91956017)(64756008)(66446008)(66476007)(71200400001)(40265005)(76116006)(66946007)(6486002)(21615005)(2906002)(6506007)(26005)(8676002)(86362001)(478600001)(5660300002)(83380400001)(8936002)(6862004)(2616005)(186003)(4326008)(6512007)(82960400001)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1lRNC9sbDdmZTBHblZVWDVOTGlXUmhCSGxFUVlRblhGODJVbWUwVFEwNW1y?=
 =?utf-8?B?OWFlVk5ydFBzY0VqVG1CanA1UnRyUlNaRHF5MEFkaUlYWmhlOHVCank1TS9K?=
 =?utf-8?B?U1BsMHd4RnRjblFFalNPN3FENmRabnV2UitkN3p0ZWhIemdBc25JcStVZHNt?=
 =?utf-8?B?Y2hnN0x0bFNBbEVhUzFIZVlEb0UvQUsvbkw4d2ozT2NXRithcWJySFVRV3lp?=
 =?utf-8?B?STMvekVhNHIweDIzYU9GUDYyM2N6a2ZxTzBEalpka2Jza2FyMDdpWHZLRlNX?=
 =?utf-8?B?MVJORVBKN1AvMkVzMTRRY1JoYWtsZjVYdTBPK3czWmd0eGt0MGhBU2pGVEZ4?=
 =?utf-8?B?cDVVaHBCSlZKRklKZFpiRGpabTZ1L3c5T25oakhBemxneVdjU0R4OVdmQUdS?=
 =?utf-8?B?VzJSOHdZR01NYitKWEM3R1VRREEvcjNscE16TlhCTlpTd1BPZndzOUFtRndE?=
 =?utf-8?B?VUovcE94Rktrejlqd2ppNWVuc1ZUd0FoNnhLUHh6TGJwN3gvRXNQOXM4NWdZ?=
 =?utf-8?B?QldKTjlCSFlMTmxkbzFaR2lkMGlFOVZJbVpXSmYwTW9BRUU3VCtST2FDRVlK?=
 =?utf-8?B?NkRYcnJoSVlXRXJUNmxIdSthVVBLdFBSQ3RLbE9KLzZyeXlqcnlGWThGV0lU?=
 =?utf-8?B?YjN5NW1XTWZBNndZSmgwQ1FpQ0xDVHZZZHNEZ1d0QmtTbFIrTWx5Z0tLNmJi?=
 =?utf-8?B?bTdTamFQcEo1bTk4T01uMmozcjlKK3ZKa09XV0FYZU5HRjFUZEgwOTJVTEFo?=
 =?utf-8?B?M0VBZ1VKaGFOcTQzK3BJdzg3OWlKWkY3Z2l4RERXdTJqVlJYdDZUdkUya2J4?=
 =?utf-8?B?UW53SzZpVUxZVjhsUWIwYXVkN3FoWm42RStndFdkYVVmOFBuVHdBaGpsc2h0?=
 =?utf-8?B?TkxxWFB5a1NiSzIrM3BCcXZlek1xL2pPNjBSdlNXYys3cVNwTjNqanNLeW96?=
 =?utf-8?B?N2t3MGVuZzIrQU81c2xKcFFFc2RPMHAvTjJDQXBSc2dvdEl1ZjlZUGcvVzhV?=
 =?utf-8?B?M0JzeVAwRDRjYS9Wb2pVRE1mTldhdnVkc3JHT2VGczBOV1ZCZzBJczFZSHE0?=
 =?utf-8?B?QzVRb2l2TVZnT3E4TDQwTGp1UTN5TGpLbWxRVHdwdGRWQmI5cXplY0wzQVdz?=
 =?utf-8?B?YWJCT2g2aFpIUFZmYTdPc0lGOFlEVUpsM0hGVnRjZXNRTHJ0WWlJN04wQXV1?=
 =?utf-8?B?R3BvSEpnYXRnTlgwL2hOWGo2UXRINDQ4TWdlUmtHeDd5ZXFrRTdWU05wemJz?=
 =?utf-8?B?cW1ETEpoUzZGWU03ZC8vVG9KakthbkVFNFVlVExkQ3ZQc1dQWktreS9USTMy?=
 =?utf-8?B?V1lZSGtRdW9Lc0l1WTlSOWxRajN4djVITkhGakpsRkhzeFB5N29UVEFkQ012?=
 =?utf-8?B?c2lRUHdPOEhoT2I5UE1jZ3dSKy9JYzVaTjVhM2FRcFFudFIwYy9EVlkxcGVY?=
 =?utf-8?B?eTdrREFQNkdUSENSRUFIdHhPN0o4RTlpdFNwLzlsd0VWVjFrTHVXWVVaK1hz?=
 =?utf-8?B?cU9pQTBMcU5id1Qvb1ZueWsvQmF4aSt4WVJMT3VUakFheVhiMVJzOGEyd1lw?=
 =?utf-8?B?NHpYRHZqbzROZlhnTDBKd21YSldBSWNmTGpDVnl1em1pY3o4REt2QURSZUJV?=
 =?utf-8?B?bmpmQmdmZk5yaW1JSm9TVkpNblRQd2R0b3ZjeFNCSm9ScVltejRsT1N6QWZH?=
 =?utf-8?B?ZFZpQjhsYnBrNGZUUGRGRThSK1I4dTcvZWRibW43d2VTYjl6eDVSOGtiYzZx?=
 =?utf-8?B?UjdZREJONzMvN0Y3MzNlWmhHNGJBb1dKYjExWlB4TU45NSt3TkpHcTdyNndw?=
 =?utf-8?B?WUdXUkd5LzBVNEhxZjRaOHlsMVRKM2ZIeVQzWmVtOVNCZG41MkVFYng3NnRp?=
 =?utf-8?B?ellScXY2eEdQci9wRVkzQ3g0eS9RbWdsRzV0SlV2YVZiS0lxQUZucmxyU1c1?=
 =?utf-8?B?cTlIUWJoWk1sSUpwZ1RIelVVM053OFpONTk3RFRTTXQvOGt6NkJxbHpJZWM0?=
 =?utf-8?B?ZndKdVNhckkwZkQ1MnJtTUNZMFlOMXc3elgvcitFOXJGUjIrVlFDMzkrbVR3?=
 =?utf-8?B?RXY1ZXBNVzNHbndWMWJPTDA1Y1B0UHY5dXJYc1NiRTl0RnhOYTI4K0NobzNr?=
 =?utf-8?B?aGhvbGNXVmtFeU83SlJQUFpnQTJCcGU5Q250Yk9pYWhzQXRLbWFuN2tKbXZG?=
 =?utf-8?B?OUE9PQ==?=
Content-Type: multipart/alternative;
 boundary="_000_fbd4e87551afce15da8aac496c215b8675648b4dcamelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00722a95-5557-4a8a-bc9e-08da9281d18f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 16:39:09.0484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WvVtzYqA+tsqKkxmSS0kEW51Iso0sGFyI1NpaBl+GUwrKCoLKNXdx8vRjNyCeMnvqdJhVHlTFqqo0wIfp+qfig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6504
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/debugfs: Add
 perf_limit_reasons in debugfs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_fbd4e87551afce15da8aac496c215b8675648b4dcamelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDIyLTA5LTA5IGF0IDA4OjM4IC0wNzAwLCBEaXhpdCwgQXNodXRvc2ggd3JvdGU6
DQpPbiBGcmksIDA5IFNlcCAyMDIyIDAzOjEzOjA1IC0wNzAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6
DQoNCk9uIFdlZCwgU2VwIDA3LCAyMDIyIGF0IDEwOjIyOjQ5UE0gLTA3MDAsIEFzaHV0b3NoIERp
eGl0IHdyb3RlOg0KRnJvbTogVGlsYWsgVGFuZ3VkdSA8dGlsYWsudGFuZ3VkdUBpbnRlbC5jb208
bWFpbHRvOnRpbGFrLnRhbmd1ZHVAaW50ZWwuY29tPj4NCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
aW5kZXggMjQwMDk3ODZmODhiLi45NDkyZjhmNDNiMjUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQpAQCAtMTgwMiw2ICsxODAyLDcgQEANCiAjZGVmaW5lICAgUE9XRVJfTElNSVRfNF9NQVNL
ICAgICAgICAgICBSRUdfQklUKDgpDQogI2RlZmluZSAgIFBPV0VSX0xJTUlUXzFfTUFTSyAgICAg
ICAgICAgUkVHX0JJVCgxMCkNCiAjZGVmaW5lICAgUE9XRVJfTElNSVRfMl9NQVNLICAgICAgICAg
ICBSRUdfQklUKDExKQ0KKyNkZWZpbmUgICBHVDBfUEVSRl9MSU1JVF9SRUFTT05TX0xPR19NQVNL
IFJFR19HRU5NQVNLKDMxLCAxNikNCg0KDQpJJ20ga2luZCBvZiBjb25mdXNlZCBoZXJlIGJlY2F1
c2UgSSBzYXcgdGhlIG90aGVyIGJpdHMgaW4gdGhlIHBhdGNoIDUuDQoNClNvcnJ5IFJvZHJpZ28s
IHBhdGNoIDUgaXMgYSBidWctZml4IHBhdGNoIHdoaWNoIHNob3VsZCBwcm9iYWJseSBiZSBtZXJn
ZWQNCnRvIC1maXhlcyBpbmRlcGVuZGVudCBvZiB0aGlzIHNlcmllcywgSSBoYXZlIHBvc3RlZCBp
dCBpbmRlcGVuZGVudGx5IHRvbzoNCg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy8xMDgyNzcvDQoNCnllYXAsIGJldHRlciB0byBtZXJnZSB0aGlzIG9uZSBmaXJzdC4N
Cg0KSSBob3BlIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEwODI3N3YyL3NoYXJkLWFwbDQvaWd0QGk5MTVfcG1fcnBzQGVuZ2luZS1vcmRlci5odG1s
DQppcyBub3QgcmVsYXRlZCB0byB0aGlzIHBhdGNoLiBzaG91bGQgd2UgdHJpZ2dlciBhIHJldGVz
dD8NCg0KDQpJIHdhcyBkZWJhdGluZyBpbmNsdWRpbmcgcGF0Y2ggNSBhcyBwYXJ0IG9mIHRoaXMg
c2VyaWVzIGJ1dCB0aGVuIGl0IHdhcw0KdG91Y2hpbmcgdGhlIHNhbWUgY29kZSBzbyBJIGVuZGVk
IHVwIGluY2x1ZGluZyBpdC4gU29ycnkgZm9yIHRoZSBjb25mdXNpb24uDQoNCm5vIHdvcnJpZXMu
IGl0IG1ha2VzIHNlbnNlIG5vdy4NClRoYW5rcyBmb3IgdGhlIHBhdGllbmNlDQoNCg0KYnV0LCBh
bnl3YXksIHRoYW5rcyBmb3IgaW1wcm92aW5nIHRoZSBjb21taXQgbXNnLg0KDQpSZXZpZXdlZC1i
eTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPG1haWx0bzpyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPj4NCg0KVGhhbmtzLg0KLS0NCkFzaHV0b3NoDQoNCg==

--_000_fbd4e87551afce15da8aac496c215b8675648b4dcamelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <1DFEDB40D1703A418C1D3E9975641613@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdj5PbiBGcmks
IDIwMjItMDktMDkgYXQgMDg6MzggLTA3MDAsIERpeGl0LCBBc2h1dG9zaCB3cm90ZTo8L2Rpdj4N
CjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDsgYm9yZGVy
LWxlZnQ6MnB4ICM3MjlmY2Ygc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+DQo8ZGl2Pk9uIEZyaSwg
MDkgU2VwIDIwMjIgMDM6MTM6MDUgLTA3MDAsIFJvZHJpZ28gVml2aSB3cm90ZTo8YnI+DQo8L2Rp
dj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDsgYm9y
ZGVyLWxlZnQ6MnB4ICM3MjlmY2Ygc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+DQo8ZGl2Pjxicj4N
CjwvZGl2Pg0KPGRpdj5PbiBXZWQsIFNlcCAwNywgMjAyMiBhdCAxMDoyMjo0OVBNIC0wNzAwLCBB
c2h1dG9zaCBEaXhpdCB3cm90ZTo8YnI+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUi
IHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDsgYm9yZGVyLWxlZnQ6MnB4ICM3MjlmY2Ygc29saWQ7
cGFkZGluZy1sZWZ0OjFleCI+DQo8ZGl2PkZyb206IFRpbGFrIFRhbmd1ZHUgJmx0OzxhIGhyZWY9
Im1haWx0bzp0aWxhay50YW5ndWR1QGludGVsLmNvbSI+dGlsYWsudGFuZ3VkdUBpbnRlbC5jb208
L2E+Jmd0Ozxicj4NCjwvZGl2Pg0KPGRpdj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg8YnI+DQo8L2Rp
dj4NCjxkaXY+aW5kZXggMjQwMDk3ODZmODhiLi45NDkyZjhmNDNiMjUgMTAwNjQ0PGJyPg0KPC9k
aXY+DQo8ZGl2Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg8YnI+DQo8L2Rp
dj4NCjxkaXY+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDxicj4NCjwvZGl2
Pg0KPGRpdj5AQCAtMTgwMiw2ICsxODAyLDcgQEA8YnI+DQo8L2Rpdj4NCjxkaXY+Jm5ic3A7I2Rl
ZmluZSZuYnNwOyZuYnNwOyBQT1dFUl9MSU1JVF80X01BU0smbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDtSRUdfQklUKDgpPGJy
Pg0KPC9kaXY+DQo8ZGl2PiZuYnNwOyNkZWZpbmUmbmJzcDsmbmJzcDsgUE9XRVJfTElNSVRfMV9N
QVNLJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7UkVHX0JJVCgxMCk8YnI+DQo8L2Rpdj4NCjxkaXY+Jm5ic3A7I2RlZmluZSZu
YnNwOyZuYnNwOyBQT1dFUl9MSU1JVF8yX01BU0smbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDtSRUdfQklUKDExKTxicj4NCjwv
ZGl2Pg0KPGRpdj4rI2RlZmluZSZuYnNwOyZuYnNwOyBHVDBfUEVSRl9MSU1JVF9SRUFTT05TX0xP
R19NQVNLIFJFR19HRU5NQVNLKDMxLCAxNik8YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+
DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5JJ20ga2luZCBvZiBjb25m
dXNlZCBoZXJlIGJlY2F1c2UgSSBzYXcgdGhlIG90aGVyIGJpdHMgaW4gdGhlIHBhdGNoIDUuPGJy
Pg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5Tb3JyeSBS
b2RyaWdvLCBwYXRjaCA1IGlzIGEgYnVnLWZpeCBwYXRjaCB3aGljaCBzaG91bGQgcHJvYmFibHkg
YmUgbWVyZ2VkPGJyPg0KPC9kaXY+DQo8ZGl2PnRvIC1maXhlcyBpbmRlcGVuZGVudCBvZiB0aGlz
IHNlcmllcywgSSBoYXZlIHBvc3RlZCBpdCBpbmRlcGVuZGVudGx5IHRvbzo8YnI+DQo8L2Rpdj4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PjxhIGhyZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvMTA4Mjc3LyI+aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy8xMDgyNzcvPC9hPjxicj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+eWVhcCwgYmV0dGVyIHRvIG1lcmdlIHRoaXMgb25lIGZpcnN0Ljwv
ZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SSBob3BlJm5ic3A7PGEgaHJlZj0iaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA4Mjc3djIvc2hh
cmQtYXBsNC9pZ3RAaTkxNV9wbV9ycHNAZW5naW5lLW9yZGVyLmh0bWwiPmh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwODI3N3YyL3NoYXJkLWFwbDQv
aWd0QGk5MTVfcG1fcnBzQGVuZ2luZS1vcmRlci5odG1sPC9hPjwvZGl2Pg0KPGRpdj5pcyBub3Qg
cmVsYXRlZCB0byB0aGlzIHBhdGNoLiBzaG91bGQgd2UgdHJpZ2dlciBhIHJldGVzdD88L2Rpdj4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2lu
OjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDox
ZXgiPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SSB3YXMgZGViYXRpbmcgaW5jbHVkaW5nIHBh
dGNoIDUgYXMgcGFydCBvZiB0aGlzIHNlcmllcyBidXQgdGhlbiBpdCB3YXM8YnI+DQo8L2Rpdj4N
CjxkaXY+dG91Y2hpbmcgdGhlIHNhbWUgY29kZSBzbyBJIGVuZGVkIHVwIGluY2x1ZGluZyBpdC4g
U29ycnkgZm9yIHRoZSBjb25mdXNpb24uPGJyPg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2
Pjxicj4NCjwvZGl2Pg0KPGRpdj5ubyB3b3JyaWVzLiBpdCBtYWtlcyBzZW5zZSBub3cuPC9kaXY+
DQo8ZGl2PlRoYW5rcyBmb3IgdGhlIHBhdGllbmNlPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0K
PGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4OyBib3JkZXIt
bGVmdDoycHggIzcyOWZjZiBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxkaXY+PGJyPg0KPC9k
aXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJv
cmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPGRpdj5idXQs
IGFueXdheSwgdGhhbmtzIGZvciBpbXByb3ZpbmcgdGhlIGNvbW1pdCBtc2cuPGJyPg0KPC9kaXY+
DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5SZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpICZsdDs8
YSBocmVmPSJtYWlsdG86cm9kcmlnby52aXZpQGludGVsLmNvbSI+cm9kcmlnby52aXZpQGludGVs
LmNvbTwvYT4mZ3Q7PGJyPg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2
Pg0KPGRpdj5UaGFua3MuPGJyPg0KPC9kaXY+DQo8ZGl2Pi0tPGJyPg0KPC9kaXY+DQo8ZGl2PkFz
aHV0b3NoPGJyPg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRp
dj48c3Bhbj48L3NwYW4+PC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_fbd4e87551afce15da8aac496c215b8675648b4dcamelintelcom_--
