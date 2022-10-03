Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E51A25F2C40
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 10:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBF510E26B;
	Mon,  3 Oct 2022 08:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12E410E26B
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 08:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664786651; x=1696322651;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G6dbaqInGCUM+SKi23ntMmYQRMWda/yFn2v5f/ZZ7xY=;
 b=Wz1QfABa7eu+39vmYjtO5xOQdcyD3PkGaHNBWY6VL6/h1+kD1Mi87KML
 S4CxhxqqKPYxN1n15PieX+/4sLYDSLmet4cthugv8i43/JnmxSsmHaLPE
 UsHCXO6S4qA/MP+kXv7RTI+e/c7Z2Tl3qzgsfzB6NT3/LlkyH/+25HA8g
 sOUZ0zCPMqnQNgCjifK+46BWcTA+AA663BoDfMAs0vBEe0JdltidDh5z9
 XNcNU5KznSiB/1en+gphF6V2z+gNdTN/O4PQg93B8BRtgiCxT4BEgpm9q
 k5BUg/2S0TGWmx5gnTX1fs8GTa5Cfm6h7kCZILAeXJ8pDEgnVtnK2rZSf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="388871588"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="388871588"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 01:44:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="654274497"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="654274497"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 03 Oct 2022 01:44:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 01:44:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 01:44:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 01:44:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dta1yXwZZe6l+nKuetfp1pJ9FUDaoQc+JIe4O8ibzKPZC4l/mEeNLR61I8/7GuNmoF5f2kNhq/LN7IHTIq9Udc/y2T3i+J29/osOGEz9k3i8Vd9OqbeLA9i1T9H9CcGnMsNcRZLzqu1mH5catjodO0P6wHdeVmmSonPZVx/sjzkA+3PsPm0KBwbpRa9+af6JBLF7kaPIhbwisuFTEnH9CvPdpLaZZ9uD13p7ThrrF/ZYdTonSo5WKsVQkcvwOsGrELGMR3s8gDPft/27r6qwk4SaCjEsy2JY+tDjenDMETzievSj1Uhd/bHYyUZiDzfGgp0kb/OEK3iWF3PkNaxe1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G6dbaqInGCUM+SKi23ntMmYQRMWda/yFn2v5f/ZZ7xY=;
 b=QTyl7WlkSxqqW9/pHufm4vC5t2q7kOb3JDk2JqC+sPDzz7Yo3pP+O9c8nvSRRm2c+ljNLebCNanINrOlNgeELPy0Ztm2tMaIWKIGE+RtRLzvz2u13YhSLkeKdbF+DZavlT1ijyDDWxLVNsr3y8QgxY1U1t/BADtqrMOPK2mqKqYRLd4gN7uHlD25MlXOFhlhrJJfceKuWemZA7CBnEAZ0wAR1SjmCcXiy+RtJt9o1UP/EdTxmO4K/QduIiyygHI0PIGuWqB3Fc71eIE2+Ta1BQbAsNaF+METd+0leAeKRim04UhhiZgIZhoEqUZQ9YX9/R+6T6qDYjKJiFfDiiwfpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Mon, 3 Oct
 2022 08:44:07 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::9d82:e13e:9df2:6529]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::9d82:e13e:9df2:6529%5]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 08:44:07 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFBlci1jcnRj?=
 =?utf-8?Q?/connector_DRRS_debugfs_(rev2)?=
Thread-Index: AQHY1wNsFK+ebExkMUeClklgQChIta38WaQQ
Date: Mon, 3 Oct 2022 08:44:07 +0000
Message-ID: <CO6PR11MB5636F07BE1591E37F5801C6CDE5B9@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
 <166466659715.32391.15847655821384807172@emeril.freedesktop.org>
 <YzqfVR8RjL06e20Y@intel.com>
In-Reply-To: <YzqfVR8RjL06e20Y@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5636:EE_|DM4PR11MB7277:EE_
x-ms-office365-filtering-correlation-id: 8ecd2b51-ecba-4590-3ad3-08daa51b6f5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YpWqXEifPWJekTJhDOolL9bZwr43BO3MfErOBKUEqGZVU39OF02h7X5/Vvp0eJlJUJNSu/EmvQarAKDtLi9Z1e3AJLNEaN0SP1FTyjl/6n22po7NHwaFf9PiP3Qcd3w3iFC671ulQ4ri+7yDsiePgRJxveoKOewOZoad296kIYA3m4pgN0sUSHiGbg9u3dtsfSZvVd52+kJZyyhKr+7prNcYGFkUm9ouf49PtRaqS20FmD1xe+L5+BQLpUbaTihb7CaGqU3einCsxQhOOpkrqCHCPt84v/uRtKB0PIq2xGNNHxD7yq9q97yjN2adIgEh/UTSsOROA8LY0JEoOJ3xWdOir+ibTQBDY2D3Th3BuZoE+Sm7VZqy+zxswF1N5SAb2lcDEL8//1C1QSJgZo/5t3xDffllwG5BOHyB6RoqOC4G8okSZs+rq88uf7/VWcMCzzh6V5UFwWXEjk5s7HDa2K/qzmJWQ3k2QzESvsex7Mmql7MyXjhmBeKdtiL1YcF5dtQFpYa68/lPv6NHAckHDQzj8XTgwai7lQ+cRHrwcAQUPcjJeVHAStpJ3OV3b3Ot3x5RycPRU2DOaYEIux3DXqQVvWTUBX3zcgrvf5zbfbuhogvnj91w4k7AGHYuaXDxY+a3MLGsXwUg6vvdjNpfI387GgxTGLKGW810dEpVkA5uE0q44s+5+D1cqk8EBLQNPc9SUkkZYeKT7yIEf/hHY7xWEY3FJ7uPjZ+f+BxbF7MYPqQfePk3h1CGHg+BF7CZf+Zcv5hosf9KEF2f+YZXg2PWm4XF3WBzeKHzaAK29MZC0s5N1rPSWrx0zuDHr8qFpAv63lZ7bkYFSVz0Xp1DIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199015)(52536014)(2906002)(5660300002)(41300700001)(33656002)(316002)(122000001)(186003)(82960400001)(38070700005)(66556008)(110136005)(55016003)(66446008)(66946007)(64756008)(66476007)(76116006)(38100700002)(966005)(478600001)(8936002)(86362001)(71200400001)(6506007)(26005)(7696005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0dULzhUQm9VK09IVjg1TGxrU1Bta2lLVW5nTFpFTjFGZE5NYWI1YUZxYk1y?=
 =?utf-8?B?Kzg2cVBLQ0VyOG5WZFl2U09QcXNSSFdVYXdkL3RxQlNRVXV0RVVXbG9QZ1FO?=
 =?utf-8?B?NmxzZTlmMS9UbUR2SHpMc2xQTDFkYXF4aUloR3hYeW1PVWpWWVBGOHNzYU1L?=
 =?utf-8?B?dk82MmxMaS80cHgrWnIvREhTZCsrOFNua2hXTUxwU1AwSmk2c2pCc2RWQ2M1?=
 =?utf-8?B?RHNkb3hTeU95SzRwTFk1MXlhNmhDLytKVHB4eTVrcnM1a1owNTMycEREM0RZ?=
 =?utf-8?B?bzJCZnNMNjArcDJucVlJWU5Ramt3dHorZ0lRY0doT0xqM0Q4emNpSFFpaVI4?=
 =?utf-8?B?c0xyN3dhNStjRVllV1BTWVNFZjJLUVY1Zit0UHp5cUUvekVhRnl0QzFDL0Jq?=
 =?utf-8?B?aWsrYlZZcTdqWHU1dDFQMk1PWGNUV2ZUYWw2dzJMWmZuQ1Q4amowYy9acFV3?=
 =?utf-8?B?SUREMWw2RzhuMWdtSkFobTVkS3doRGxOTlliS0sxZXVDOWdxRC9jOU13SW1K?=
 =?utf-8?B?cEtEMFlTa21PNDVtQWQ1dlhWSFRVdHhqak9wQ2pVSjU2eVdkcDUvZnVmbmNr?=
 =?utf-8?B?WW9SYW9LUmJrRm5pblh4Tlg4QUNKWGFlS1M0NWtpYnJMdUl3VTMvczRPRDR4?=
 =?utf-8?B?ek0ybUJJTjZwMzdGTWtrNjV4d0xPZ1B2Q3YxMnJXd29OdFZBMWJKUlpmZytL?=
 =?utf-8?B?d2ZwV1V5UHNQejRVTTNuS0RJL3h3UW80V3VvQUFBOGc0emowcUJxdi9LMTFT?=
 =?utf-8?B?UUxremtiaTZpSjJLb0VBRkJveWlxZzI2QUFPVXB5ZHJIZjJRZ0c4UCt6am5S?=
 =?utf-8?B?c1oySGREQkIva21JSUE5bkRhb3d5UFFVODg0QTZScWJnNmJrN3hCNlk0R0tN?=
 =?utf-8?B?bDdRN0pmNVNDT1IzSHZOYmdUU1V1eDhlcWZqSEdvRXN0dVpLbFR3RG9heEMy?=
 =?utf-8?B?SnYrWG5vbURNajk1M0xJeGFtd2dmbXdOeUJTOGxIN09za2ZMTVpaazFDRFgx?=
 =?utf-8?B?VWJHak5FaTBOemZlWjQ3UU9NVGV6dEp3UitmY2V2dllqZ050dkN0aXpzT05X?=
 =?utf-8?B?NkpuTE1LazFIZkFuTHlGVXZlWEk0T1hXOU94NXNDWXVoOGVEaVdPbW1CTlEz?=
 =?utf-8?B?VmdrRlBTZTdCZnNZdno3QkdRcEEvdUYrVFl2ektwc3RxU3BqUElwNHhIaXpE?=
 =?utf-8?B?ZEJQeVBwTGFZeTNMbFZCSnlBMmJuU2tvd1U4anBCNTY3cTQyV2FrdUhFVXhh?=
 =?utf-8?B?TE1pK0E2R0htSWlCVDlRcTh4M1JtN0Z0SDcxRWFYQ1J0N3JMbVd3T2lSWUJ4?=
 =?utf-8?B?WCtkOFNrQlZpQk9wWEh5dWJCbzJlNWVzSFRKTE5PNExjeXNNNlRPRThrQ3JJ?=
 =?utf-8?B?MVY5VENuRGZ6RTh5L1FqOG5nd1ZLblhld25yQUFNOGRwem95cG9IcloyMUQ4?=
 =?utf-8?B?bUpjeU1xNUNkblRYK1NKcHVqT1hncmIreG1PMFdaenpWNzNNM3pNT2FWWmtP?=
 =?utf-8?B?NTR2UjBQTlhjSGplR3EyZjNXU1lEejZ1OG9kZXpSZWloM2VQZXJWZWIzMGVl?=
 =?utf-8?B?Um1yaXJRb01MclNzc0ZsV0ZTN3BrUnZ0d3dTd2RxVFFPb1orRlF4VVVVTVE0?=
 =?utf-8?B?aDYvNG5tTUsrK2lHbUhIc29DenFpYUVXY3VKVHN5YWRyN3U4K3lqZUdJY3c5?=
 =?utf-8?B?R2Y1dHowTkgvSC91ZHBDMEoydlJldVdVdFQyTk9SbmFpcDJTNWxJencxYjll?=
 =?utf-8?B?dWxvVXZJdFR0Y0hkcTEwTjc4QkV6S0hEbnJwVDZpYzJvWFBYdGxNT3krbjcy?=
 =?utf-8?B?Sm9UR2tSMEdwb2s3cEh5a0luRWEvdWluNjVoQ293Z3FyR1lXZlpBT1FoWExk?=
 =?utf-8?B?VzY2WjhLVkg0clJWQWo3RjRHWmIyVm1qVkw5RHJTMWVMZnZJMU53MWlxcG5Z?=
 =?utf-8?B?Zy9zM2ltY3JSL3V5cm8xQ2Y3b2wwYWtEVzBwNFhjbndUc1htYjVjc1pJVGRI?=
 =?utf-8?B?emhzOUtwWHhWam5iQ0pLWjhVeC9MWC9Qb3pVOW9jZTNMazl6Nm0xTXNBNkhh?=
 =?utf-8?B?LzRGbTlDVnMzdWVkZyszWWU0bUp2TlFTUU5WeHpLMEhBR3VycTZsTTlpbzd4?=
 =?utf-8?Q?cBqFu6lSaTEMMB9Q4mW6Jey3r?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ecd2b51-ecba-4590-3ad3-08daa51b6f5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2022 08:44:07.6736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K2jYuq/Sm2PO1MO1Y9uR0eIgw4jyVwe0NAUXIVFJDJPwJUtYS22fluSyuLXsw6OJjk0ltPOVNZTerQf8s8iNmMyNGI62QfjroT3aEn1Z+Os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Per-crtc/connector_DRRS_debugfs_=28rev2=29?=
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

DQo+IE9uIFNhdCwgT2N0IDAxLCAyMDIyIGF0IDExOjIzOjE3UE0gLTAwMDAsIFBhdGNod29yayB3
cm90ZToNCj4gPiAgICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHBhcmFsbGVsLWJhbGFuY2VyOg0K
PiA+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzU4XSAtPiBbU0tJUF1bNTldIChb
aTkxNSM0NTI1XSkNCj4gPiAgICBbNThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xMjIwNC9zaGFyZC0NCj4gaWNsYjIvaWd0QGdlbV9leGVjX2JhbGFu
Y2VyQHBhcmFsbGVsLWJhbGFuY2VyLmh0bWwNCj4gPiAgICBbNTldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDkxNzV2Mi9zaGFyZC0NCj4gaWNs
YjUvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHBhcmFsbGVsLWJhbGFuY2VyLmh0bWwNCj4gDQo+IHNo
YXJkLWljbGIgc2tpcHMgbW9zdCBEUlJTIHRlc3RzLCBidXQgZG9lcyBleGVjdXRlIGEgZmV3IHdo
aWNoIGlzDQo+IHdlaXJkLg0KPiANCj4gSSBzcG90IGNoZWNrZWQgYSBmZXcgb2YgaGUgbG9ncyBh
bmQgc2F3IGF0IGxlYXN0IHRocmVlIGRpZmZlcmVudCBwYW5lbHMNCj4gYmVpbmcgdXNlZDoNCj4g
MS4gdXNpbmcgcHJlZmVycmVkIEVESUQgZml4ZWQgbW9kZTogIjI1NjB4MTQ0MCI6IDYwIDI0MTc1
MCAyNTYwIDI2MDggMjY0MA0KPiAyNzIwIDE0NDAgMTQ0MyAxNDQ4IDE0ODEgMHg0OCAweGENCj4g
Mi4gdXNpbmcgcHJlZmVycmVkIEVESUQgZml4ZWQgbW9kZTogIjE5MjB4MTA4MCI6IDYwIDE0MTAw
MCAxOTIwIDE5MzYgMTk1Mg0KPiAyMTA0IDEwODAgMTA4MyAxMDk3IDExMTYgMHg0OCAweGENCj4g
My4gdXNpbmcgcHJlZmVycmVkIEVESUQgZml4ZWQgbW9kZTogIjE5MjB4MTA4MCI6IDYwIDEzODc4
MCAxOTIwIDE5NjYgMTk5Ng0KPiAyMDgwIDEwODAgMTA4MiAxMDg2IDExMTIgMHg0OCAweGENCj4g
ICAgdXNpbmcgYWx0ZXJuYXRlIEVESUQgZml4ZWQgbW9kZTogIjE5MjB4MTA4MCI6IDQwIDkyNTIw
IDE5MjAgMTk2NiAxOTk2IDIwODANCj4gMTA4MCAxMDgyIDEwODYgMTExMiAweDQwIDB4YQ0KPiAN
Cj4gU28gdGhlIERSUlMgdGVzdHMgd2VyZSBvbmx5IGV4ZWN1dGVkIHdoZW4gdGhleSBlbmRlZCB1
cCBvbiBtYWNoaW5lIHdpdGgNCj4gcGFuZWwgMy4NCj4gDQo+IEhhdmluZyBkaWZmZXJlbnQgcGFu
ZWxzIGJldHdlZW4gdGhlIG1hY2hpbmVzIGluIHRoZSBzaGFyZCBwb29sIGlzIG5vdA0KPiBncmVh
dC4gV2UgY2FuIGdldCBhbGwga2luZHMgb2YgcGluZ3BvbmdzIGRlcGVuZGluZyBvbiBob3cgdGVz
dHMgZ2V0DQo+IHNjaGVkdWxlZCB0byBpbmRpdmlkdWFsIG1hY2hpbmVzLg0KDQpJQ0wtc2hhcmQg
aXMsIHNhZGx5LCBoZXRlcm9nZW5vdXMgYnVuY2guIEluIGFkZGl0aW9uIHRvIGRpZmZlcmVudCBw
YW5lbHMsDQp0aGUgQ1BVcyB0aGVtc2VsdmVzIGFyZSBkaWZmZXJlbnQgZXZlbiBpZiBmdXNpbmcg
aXMgZG9uZSB0byBtYWtlIHRoZW0NCmxvb2sgYWxtb3N0IHRoZSBzYW1lLg0KDQpDb25zaWRlcmlu
ZyB0aGF0IHRoZXJlIGFyZSBub3QgbWFueSBJQ0xzIG9uIG1hcmtldCBhbmQgd2UgZG9uJ3Qgc3Rp
bGwNCmhhdmUgZ29vZCBjaG9pY2VzIGZvciBwcm9kdWN0aW9uIENJIGhhcmR3YXJlIChhcyBvcHBv
c2VkIHRvIGVnLiBUR0wNCndoZXJlIHdlIGhhdmUgYm90aCBwcmUtcHJvZCBhbmQgcHJvZCBoYXJk
d2FyZSByZWFkaWx5IGF2YWlsYWJsZSksDQp3ZSBzaG91bGQgY29uc2lkZXIgdGFraW5nIHNoYXJk
LWljbGIgb3V0IGFuZCBsZWF2aW5nIGNvdXBsZSBvZiB0aGVtDQpmb3IgQkFUIHJ1bnMuDQoNClRv
bWkNCg==
