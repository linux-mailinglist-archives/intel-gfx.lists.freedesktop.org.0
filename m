Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B982580A2BC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 12:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33CC10EA9C;
	Fri,  8 Dec 2023 11:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1061010EA9C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702036593; x=1733572593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rrn+ZdX4UDf1AGBbBz+vAEQCN1o9SKJnWJMIVfkCoho=;
 b=f1T0cXdkdDCC0ljF5dSMAwLWVhs7BUCi+diRzx2OJP3E7J2uR+q9hH+e
 M3sqWvh81rnjukvgAv5nED0G0Hlu/iHGPtOT/+XqMhi+ZMEc9Z1OGgZCe
 C80TIVWl/3h4PCBzxc2TStB3OxX1UC2MISkpeoH7veNib32WESaXYVARh
 bAbpAyOz6zRs4C0f4QA30oojijPud9o47cnhSjO3W/JSEhV7o+EEsdxHu
 8OIGuZigRRtEYkv2QE6eBtgrhOTkz4GfO0fVTMVQR9ItEcBdSN9isxXAC
 VFO/s41Xp2umJ1t8agmRjjV8CrSLlUFM6UMXNrdRK+MHl9Vbs3xIQsgOW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="15947493"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="15947493"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 03:56:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1103543095"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="1103543095"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 03:56:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 03:56:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 03:56:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 03:56:31 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 03:56:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKQMqJWUrcLFBoGWjH4oK9FbNZuugjwBZqLCS47bv9g6STnHkjs1+/hIlVchJgSRDTQPcMsQ31009OnanZ/8q56ajAN8JVFUZSqbaLEJlawJwA6plBq9LlUyHmRm58YmrkGMFjhC7Q6hFYybJDyL5qjrlr8r4zqdSyUpU7/WuNIOB0hfhN+ymidKIlJHoEUolhOKLJ6aNFr+9QVo/qCX4lZ54I2GX9ZW3+8JZlI9Y3N0ir1aekW8IOsRF4FSCwmWY4AJwgeHMFqrXLtf+8eem+W3JUcBUiGscJzJArOm/xXui66e/MbmcEO0YLBXFkvrrdtijV7CL4d9SXxtU4NbLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rrn+ZdX4UDf1AGBbBz+vAEQCN1o9SKJnWJMIVfkCoho=;
 b=VysBvGAQCjgL012F39nVIazyLI8ZDgcuMQtaLCw2PUIiegW++nO2q9GnpIpFgSoCjEIo8ryh1zaoLxQkhoQKjfBG11Yi8QZEuDN5OfLCNCDE8jHQoqi2NsXUn7xKLU8sCV6PW1XxJ27zqQ+TotaBWKrCKvp33UrK/Ajj/W3z7nMJACk4wGywOPSkiE/198BUh29iKcdledJEgHsMv+JdhpoVSvtqp2MbzLGEByizA1VaW96l1XckQAezVLvb1jWqeQpD3ZlsfzqIK58PolaN34mTJ3k352NaBLQsbAoZb8z4qyLc8w3K4UCv2hK1cQhdApNAxbsGzGGgQpqdL7Afxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 11:56:22 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7025.022; Fri, 8 Dec 2023
 11:56:22 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/3] drm/i915/mtl: Use port clock compatible numbers for
 C20 phy
Thread-Topic: [PATCH 1/3] drm/i915/mtl: Use port clock compatible numbers for
 C20 phy
Thread-Index: AQHaKVpsNzAaNEtgbkafvlHua0vVBLCfSCvA
Date: Fri, 8 Dec 2023 11:56:22 +0000
Message-ID: <MW4PR11MB7054F1F0A2E2A19480BC645BEF8AA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
 <20231207221025.2032207-2-radhakrishna.sripada@intel.com>
In-Reply-To: <20231207221025.2032207-2-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8210:EE_
x-ms-office365-filtering-correlation-id: 065b4dc6-f85d-456d-edd4-08dbf7e4b280
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K9JhOty0p1bUh+WAd6/VTfymwZz2EHDelvs8Arcf61wbLEi8h6FscchKQOIrhIkP5viw7sGGMAbSEVJRJX+SngkntA7jMejMGVRndfbnD+/tR46UCdS/U8R7U1Ej/s+5mPUNUDRLAsghKu/NQEVCLGB12kzhUw2hHeRdent57Ai8p8/ccX2T58TFY2IZIfz6vKRfjq7hbcBZRl52kZ84wRMICxLvTfivgInCUdyDeyX2ENMmOZ/JIRZjcDjIhTXgtydKoHnlDJ/EjaSl58xFHIk4lBnMjyeQTAglrxsNx1KQR4D4W11ddr8K0ppnflRe1Zf+SKsjlhNO928CG/19nWREEq1cVC3Nxd5qdxHB6FB7meffvF2nbiQyBNDsxbYKyo4LmCAawSk3ZGAJqk5kzV9QUvl+t9AvUKgn6IbBnoj4SwvwtM7VIyAVfA7tegIVb5x8OH0mgnOHjgrZpekJw7wsaJ5/tAbY/W4ICQfjcO4hXhNfje9n76WqkozWM/Sf3x37cLaegpH51v6Yfmb4DJKFCK1yQv4x1xQixitCrWNod55a9UejkLfCW8QA4ONLWRWkF20qOx0jv7XqNVMWResRfqPNnQt/JtAmAScPoxGG1OL9jnGK4bRH64oqGrq4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(366004)(396003)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(83380400001)(9686003)(26005)(107886003)(7696005)(33656002)(6506007)(71200400001)(53546011)(478600001)(122000001)(316002)(110136005)(66476007)(66946007)(66556008)(64756008)(76116006)(66446008)(38100700002)(8676002)(8936002)(86362001)(4326008)(52536014)(5660300002)(2906002)(82960400001)(55016003)(38070700009)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXUxdGdnNkZvV3N2TDlBQnEwYkpxdmVvRVN3VW1JTytVcndHc2gxYUoyUUcw?=
 =?utf-8?B?NEh5cTVQUzZqL1AzKzdWdzV0NjQvd1RCbVpnV2FvK3BGYmk5bUV2b2ZxK0oy?=
 =?utf-8?B?bFBxRTRxdTYzenVpYjJXcDkwL0o5MzBiZXZPOS9PSFNTOTk2Tm9GYW5IeWF2?=
 =?utf-8?B?Rm9HTUxIQ3pmUTVabjhwVHdFdjFGUkV2Z3NtelZtdlVYemVXdFZUUWlvWHFP?=
 =?utf-8?B?QkJIV1ovNi95SkUyS1VwbXpBVUtOZlpmcDR4Q3F2NWNZWmNkc3QrS1ZBSkJ4?=
 =?utf-8?B?dUFyN1ozNlB4WlMwYnJ3S0JWSFNtZXFDZERINC9vL2ZvMEk1S0JqMFB1TlA4?=
 =?utf-8?B?d3l3UzBCcWUxaXE1ZnR6NFhkRlAybDQrMEVsUG4xOWJXY1JmSCs4RllwVTE0?=
 =?utf-8?B?S2dJM01nSGRPUVlhQTJKZXZ0QzVySmdBbDdJUFpzazBMYTdjZ2dLSEhvLzJM?=
 =?utf-8?B?bG5rUW1jUi9lbDcyRHJ1T3dkOGo0alZ5S1cxZU1TTE1jUGpuUlhoMm9jMFZE?=
 =?utf-8?B?MDhWUUFmSnFRamVFd0dCVkhOT1gxYlRTMk11aXVzcGNhVDRJSTJOQVJnMjgx?=
 =?utf-8?B?WEloR2J0SDQ2YUg2d3lMZStYeHg1WkNXRUNTSml2MnJseWZNYk5YSjRGR2ZZ?=
 =?utf-8?B?cWs1VHV6N3N0QnRSV0JDZ0tXOTdNMjFBbUdtaENJL0pBVDNCVHpqNXpWeWVq?=
 =?utf-8?B?R0VSYXhtbWZOR3U4U1pZaWFyTlNWd0dRMzBWVHRWK2o1MGVXeUduYWFObCtv?=
 =?utf-8?B?MGkrbUgwNk9VZkVDK0JlaHFodG14SFF6YUpucStJS1NSWlhIajZCdGNROVN1?=
 =?utf-8?B?UmlyQWF1MlFBVjk3MmY1K2l2cEd1K3JXM3BWMWQ4SWM4ek1RMDl6QTErUUh4?=
 =?utf-8?B?V3ZxbHlzSWg3TXdFcjRsanVlSk9rRHJqcXFnT2d6dlM5eGxHQkkyL2h0TlZR?=
 =?utf-8?B?Z29CUExpS3k5NWZoQVY4SHpBWmtOZ0I0K1dGSjhSY1k4MWZzaWZwSDI2amE2?=
 =?utf-8?B?Q05Sbk9lb0FFa1kxajNVd1VBc1JKL3U5Yjc3RVU0V0FZSFFGUXptNE00Q0Uy?=
 =?utf-8?B?d3gwd1dWQ2t5cEZZcUdmN0tTcndHSGh3MG9pdFAwQVhqallKaGlaa2hURk1n?=
 =?utf-8?B?RzNUbUhsNG5zcDFTMXlKdGZhbTgvZTdSSHNkN3VuOFVIRjRVUDNTUVZGU1VB?=
 =?utf-8?B?Nnd2S2dCaTkxUEkwOG1FRWFra0FuUjBCYnZ0UnYrN09scEx2NWNvcElPVms4?=
 =?utf-8?B?MjhLMkJoVHF6Slk4M0IzVlUxY1RuTlBEUDNwdEVpcTczYTZJZ2l3RmE2Z2E3?=
 =?utf-8?B?SzdrNFpvbHZ4eFNUTzg0SWloQXhDUTRaSXNLY0lFZ1BmWDJkZWpmdVVTRVB1?=
 =?utf-8?B?TVhlY1hUSzNrdWY1WkNVdGdCTCtJbkZVMXdzRjUwSHMvd0Z6NnpQL1dSREZl?=
 =?utf-8?B?NjlJeFBrMTErYWRSQTZQSnV6WTdrbS9xSGdzanJyYW5OUjRuNzBualcyS0ZO?=
 =?utf-8?B?VHF6RFBDTjhzdGtZSWdPYThWRWFOZmZhdnVWWUhQZU4vWDZWeXVJWExhWjVi?=
 =?utf-8?B?ZWNCU2FIeGVGdm8vZ0RKTEFKYXZvOWkxcGk0ZHR6L29LRE5IUzVMdmYybHd0?=
 =?utf-8?B?SjZvZGUzSEZmTU9hYmZHUzV6S0Y4MlRyVkcrellUTG1qNXVtQUJKaXlEcStl?=
 =?utf-8?B?SGxlN2ZvUEs5c3FMMGtpMldxRXBBV2JaenpWYXdTVFpINElVR0VENjFwK0hl?=
 =?utf-8?B?UlhKajNHZTh2OXpjcVNrdTNBbEpDa1I2Q1EvekVkY1VMc01uODVLNnpaMWRB?=
 =?utf-8?B?bkZaalUyaU9GbGhmNmNYdVNZekt6SjVXQ1VSeWRUZ09QaEN4ZVlLYkNveEN4?=
 =?utf-8?B?TGZ1K0JsNStWQmtIM25ONk1LNDE1MzQ3RnhrT2I4Qy93S3phUFlENHJObVhM?=
 =?utf-8?B?QjM4UkJuemtuRGVmTVVCeFNXWXIreFFJbmFITzJrcTdSL1M0K3FNMDFUc1Fx?=
 =?utf-8?B?QnVtdVllcmUrUElsNUZUejVjVzRCTytJYVBVTlpnRUZqbmFHN3Uxc1hiTW9a?=
 =?utf-8?B?dGdMdnpMT2EwcXh5QUxsb3VHalZRTExxNENTNDJieWxuNlQ5Yko2QzVQMDFQ?=
 =?utf-8?Q?cbURPb2AYJfm7OdOBYZhZkOY0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 065b4dc6-f85d-456d-edd4-08dbf7e4b280
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 11:56:22.2353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uhFiDmSIlHdE3Gg2EgxlvkFL+Hb9IxLjUfqG8ZLiDRv+9io41wH2YnjPnNPunGACfU4eNB97+AwOvXbSxNmjiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTcmlwYWRhLCBSYWRoYWtyaXNo
bmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBEZWNl
bWJlciA4LCAyMDIzIDEyOjEwIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBTcmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGlu
dGVsLmNvbT47IFRheWxvciwgQ2xpbnRvbiBBIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFU
Q0ggMS8zXSBkcm0vaTkxNS9tdGw6IFVzZSBwb3J0IGNsb2NrIGNvbXBhdGlibGUgbnVtYmVycyBm
b3IgQzIwIHBoeQ0KPiANCj4gSW4gQzIwIHBsbF9zdGF0ZSBsaW5rX2JpdF9yYXRlIGFuZCBjbG9j
ayBmaWVsZHMgYXJlIGJpdCByZWR1bmRhbnQuIFNpbmNlIG1hbnkgb2YgdGhlIGhlbHBlcnMgYXNz
dW1lIHRoZSBjbG9jayB2YWx1ZXMsIHdoaWNoIGFyZQ0KPiBkaWZmZXJlbnQgZnJvbSBsaW5rX2Jp
dF9yYXRlIGZvciBkcDIuMCwgY29udmVydCB0aGUgaGVscGVycyB0byB1c2UgdGhlIG51bWJlcnMg
dGhhdCBhcmUgY29tcGF0aWJsZSB3aXRoIGxpbmtfYml0X3JhdGUuDQo+IA0KPiBDdXJyZW50bHkg
bGlua19iaXRfcmF0ZSBpcyBjb21wYXRpYmxlIHdpdGggY3J0Y19zdGF0ZS0+cG9ydF9jbG9jay4g
VGhlIGZ1bmN0aW9uIGludGVsX2MyMHBsbF9jYWxjX3BvcnRfY2xvY2sgcmV0dXJucyB0aGUgbnVt
YmVyDQo+IHdoaWNoIGlzIGNvbXBhdGlibGUgd2l0aCBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLiBJ
biBvcmRlciB0byBhdm9pZCBleHRyYSBjb252ZXJzaW9ucyBiL3dlZW4gY2xvY2sgYW5kIGxpbmtf
Yml0X3JhdGUsIHJlbW92ZQ0KPiAiY2xvY2siIGZpZWxkIGZyb20gdGhlDQo+IEMyMCBwbGxfc3Rh
dGUgYW5kIHRoZW4gcmVuYW1lICJsaW5rX2JpdF9yYXRlIiBhcyAiY2xvY2siLg0KPiANCj4gV2hp
bGUgYXQgaXQgcmVseSBvbiBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIGR1cmluZyBDMjAgUGxsIHBy
b2dyYW1taW5nLg0KPiANCj4gQ2M6IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRl
bC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQpSZXZp
ZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQt
b2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jIHwgNDMgKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNl
cnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IGluZGV4IDVmYmVjNTc4NGI4My4uN2Q0MTJiZTk5
NmVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4
MF9waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiBAQCAtMjExNyw3ICsyMTE3LDcgQEAgaW50IGludGVsX2N4MHBsbF9jYWxjX3N0YXRl
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCAgc3RhdGljIGJvb2wgaW50ZWxf
YzIwX3VzZV9tcGxsYSh1MzINCj4gY2xvY2spICB7DQo+ICAJLyogMTBHIGFuZCAyMEcgcmF0ZXMg
dXNlIE1QTExBICovDQo+IC0JaWYgKGNsb2NrID09IDMxMjUwMCB8fCBjbG9jayA9PSA2MjUwMDAp
DQo+ICsJaWYgKGNsb2NrID09IDEwMDAwMDAgfHwgY2xvY2sgPT0gMjAwMDAwMCkNCj4gIAkJcmV0
dXJuIHRydWU7DQo+IA0KPiAgCXJldHVybiBmYWxzZTsNCj4gQEAgLTIxOTIsNyArMjE5Miw3IEBA
IHZvaWQgaW50ZWxfYzIwcGxsX2R1bXBfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsDQo+ICAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgImNtblswXSA9IDB4JS40eCwgY21u
WzFdID0gMHglLjR4LCBjbW5bMl0gPSAweCUuNHgsIGNtblszXSA9IDB4JS40eFxuIiwNCj4gIAkJ
ICAgIGh3X3N0YXRlLT5jbW5bMF0sIGh3X3N0YXRlLT5jbW5bMV0sIGh3X3N0YXRlLT5jbW5bMl0s
IGh3X3N0YXRlLT5jbW5bM10pOw0KPiANCj4gLQlpZiAoaW50ZWxfYzIwX3VzZV9tcGxsYShod19z
dGF0ZS0+Y2xvY2spKSB7DQo+ICsJaWYgKGludGVsX2MyMF91c2VfbXBsbGEoaHdfc3RhdGUtPmxp
bmtfYml0X3JhdGUpKSB7DQo+ICAJCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGh3X3N0YXRl
LT5tcGxsYSk7IGkrKykNCj4gIAkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJtcGxsYVslZF0g
PSAweCUuNHhcbiIsIGksIGh3X3N0YXRlLT5tcGxsYVtpXSk7DQo+ICAJfSBlbHNlIHsNCj4gQEAg
LTIyMjAsMTEgKzIyMjAsMTEgQEAgc3RhdGljIHU4IGludGVsX2MyMF9nZXRfZHBfcmF0ZSh1MzIg
Y2xvY2spDQo+ICAJCXJldHVybiA2Ow0KPiAgCWNhc2UgNDMyMDAwOiAvKiA0LjMyIEdicHMgZURQ
ICovDQo+ICAJCXJldHVybiA3Ow0KPiAtCWNhc2UgMzEyNTAwOiAvKiAxMCBHYnBzIERQMi4wICov
DQo+ICsJY2FzZSAxMDAwMDAwOiAvKiAxMCBHYnBzIERQMi4wICovDQo+ICAJCXJldHVybiA4Ow0K
PiAtCWNhc2UgNDIxODc1OiAvKiAxMy41IEdicHMgRFAyLjAgKi8NCj4gKwljYXNlIDEzNTAwMDA6
IC8qIDEzLjUgR2JwcyBEUDIuMCAqLw0KPiAgCQlyZXR1cm4gOTsNCj4gLQljYXNlIDYyNTAwMDog
LyogMjAgR2JwcyBEUDIuMCovDQo+ICsJY2FzZSAyMDAwMDAwOiAvKiAyMCBHYnBzIERQMi4wICov
DQo+ICAJCXJldHVybiAxMDsNCj4gIAljYXNlIDY0ODAwMDogLyogNi40OCBHYnBzIGVEUCovDQo+
ICAJCXJldHVybiAxMTsNCj4gQEAgLTIyNDIsMTMgKzIyNDIsMTMgQEAgc3RhdGljIHU4IGludGVs
X2MyMF9nZXRfaGRtaV9yYXRlKHUzMiBjbG9jaykNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAgCXN3
aXRjaCAoY2xvY2spIHsNCj4gLQljYXNlIDE2NjY3MDogLyogMyBHYnBzICovDQo+IC0JY2FzZSAz
MzMzMzA6IC8qIDYgR2JwcyAqLw0KPiAtCWNhc2UgNjY2NjcwOiAvKiAxMiBHYnBzICovDQo+ICsJ
Y2FzZSAzMDAwMDA6IC8qIDMgR2JwcyAqLw0KPiArCWNhc2UgNjAwMDAwOiAvKiA2IEdicHMgKi8N
Cj4gKwljYXNlIDEyMDAwMDA6IC8qIDEyIEdicHMgKi8NCj4gIAkJcmV0dXJuIDE7DQo+IC0JY2Fz
ZSA0NDQ0NDA6IC8qIDggR2JwcyAqLw0KPiArCWNhc2UgODAwMDAwOiAvKiA4IEdicHMgKi8NCj4g
IAkJcmV0dXJuIDI7DQo+IC0JY2FzZSA1NTU1NjA6IC8qIDEwIEdicHMgKi8NCj4gKwljYXNlIDEw
MDAwMDA6IC8qIDEwIEdicHMgKi8NCj4gIAkJcmV0dXJuIDM7DQo+ICAJZGVmYXVsdDoNCj4gIAkJ
TUlTU0lOR19DQVNFKGNsb2NrKTsNCj4gQEAgLTIyNTksNyArMjI1OSw3IEBAIHN0YXRpYyB1OCBp
bnRlbF9jMjBfZ2V0X2hkbWlfcmF0ZSh1MzIgY2xvY2spICBzdGF0aWMgYm9vbCBpc19kcDIodTMy
IGNsb2NrKSAgew0KPiAgCS8qIERQMi4wIGNsb2NrIHJhdGVzICovDQo+IC0JaWYgKGNsb2NrID09
IDMxMjUwMCB8fCBjbG9jayA9PSA0MjE4NzUgfHwgY2xvY2sgID09IDYyNTAwMCkNCj4gKwlpZiAo
Y2xvY2sgPT0gMTAwMDAwMCB8fCBjbG9jayA9PSAxMzUwMDAwIHx8IGNsb2NrICA9PSAyMDAwMDAw
KQ0KPiAgCQlyZXR1cm4gdHJ1ZTsNCj4gDQo+ICAJcmV0dXJuIGZhbHNlOw0KPiBAQCAtMjI2OCwx
MSArMjI2OCwxMSBAQCBzdGF0aWMgYm9vbCBpc19kcDIodTMyIGNsb2NrKSAgc3RhdGljIGJvb2wg
aXNfaGRtaV9mcmwodTMyIGNsb2NrKSAgew0KPiAgCXN3aXRjaCAoY2xvY2spIHsNCj4gLQljYXNl
IDE2NjY3MDogLyogMyBHYnBzICovDQo+IC0JY2FzZSAzMzMzMzA6IC8qIDYgR2JwcyAqLw0KPiAt
CWNhc2UgNDQ0NDQwOiAvKiA4IEdicHMgKi8NCj4gLQljYXNlIDU1NTU2MDogLyogMTAgR2JwcyAq
Lw0KPiAtCWNhc2UgNjY2NjcwOiAvKiAxMiBHYnBzICovDQo+ICsJY2FzZSAzMDAwMDA6IC8qIDMg
R2JwcyAqLw0KPiArCWNhc2UgNjAwMDAwOiAvKiA2IEdicHMgKi8NCj4gKwljYXNlIDgwMDAwMDog
LyogOCBHYnBzICovDQo+ICsJY2FzZSAxMDAwMDAwOiAvKiAxMCBHYnBzICovDQo+ICsJY2FzZSAx
MjAwMDAwOiAvKiAxMiBHYnBzICovDQo+ICAJCXJldHVybiB0cnVlOw0KPiAgCWRlZmF1bHQ6DQo+
ICAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTIzMDUsNiArMjMwNSw3IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2MyMF9wbGxfcHJvZ3JhbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAlj
b25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlICpwbGxfc3RhdGUgPSAmY3J0Y19zdGF0ZS0+
Y3gwcGxsX3N0YXRlLmMyMDsNCj4gIAlib29sIGRwID0gZmFsc2U7DQo+ICAJaW50IGxhbmUgPSBj
cnRjX3N0YXRlLT5sYW5lX2NvdW50ID4gMiA/IElOVEVMX0NYMF9CT1RIX0xBTkVTIDogSU5URUxf
Q1gwX0xBTkUwOw0KPiArCXUzMiBjbG9jayA9IGNydGNfc3RhdGUtPnBvcnRfY2xvY2s7DQo+ICAJ
Ym9vbCBjbnR4Ow0KPiAgCWludCBpOw0KPiANCj4gQEAgLTIzNDMsNyArMjM0NCw3IEBAIHN0YXRp
YyB2b2lkIGludGVsX2MyMF9wbGxfcHJvZ3JhbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwNCj4gIAl9DQo+IA0KPiAgCS8qIDMuMyBtcGxsYiBvciBtcGxsYSBjb25maWd1cmF0aW9uICov
DQo+IC0JaWYgKGludGVsX2MyMF91c2VfbXBsbGEocGxsX3N0YXRlLT5jbG9jaykpIHsNCj4gKwlp
ZiAoaW50ZWxfYzIwX3VzZV9tcGxsYShjbG9jaykpIHsNCj4gIAkJZm9yIChpID0gMDsgaSA8IEFS
UkFZX1NJWkUocGxsX3N0YXRlLT5tcGxsYSk7IGkrKykgew0KPiAgCQkJaWYgKGNudHgpDQo+ICAJ
CQkJaW50ZWxfYzIwX3NyYW1fd3JpdGUoaTkxNSwgZW5jb2Rlci0+cG9ydCwgSU5URUxfQ1gwX0xB
TkUwLCBAQCAtMjM3MCwyMyArMjM3MSwyMyBAQA0KPiBzdGF0aWMgdm9pZCBpbnRlbF9jMjBfcGxs
X3Byb2dyYW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJLyogNC4gUHJvZ3Jh
bSBjdXN0b20gd2lkdGggdG8gbWF0Y2ggdGhlIGxpbmsgcHJvdG9jb2wgKi8NCj4gIAlpbnRlbF9j
eDBfcm13KGk5MTUsIGVuY29kZXItPnBvcnQsIGxhbmUsIFBIWV9DMjBfVkRSX0NVU1RPTV9XSURU
SCwNCj4gIAkJICAgICAgUEhZX0MyMF9DVVNUT01fV0lEVEhfTUFTSywNCj4gLQkJICAgICAgUEhZ
X0MyMF9DVVNUT01fV0lEVEgoaW50ZWxfZ2V0X2MyMF9jdXN0b21fd2lkdGgocGxsX3N0YXRlLT5j
bG9jaywgZHApKSwNCj4gKwkJICAgICAgUEhZX0MyMF9DVVNUT01fV0lEVEgoaW50ZWxfZ2V0X2My
MF9jdXN0b21fd2lkdGgoY2xvY2ssIGRwKSksDQo+ICAJCSAgICAgIE1CX1dSSVRFX0NPTU1JVFRF
RCk7DQo+IA0KPiAgCS8qIDUuIEZvciBEUCBvciA2LiBGb3IgSERNSSAqLw0KPiAgCWlmIChkcCkg
ew0KPiAgCQlpbnRlbF9jeDBfcm13KGk5MTUsIGVuY29kZXItPnBvcnQsIGxhbmUsIFBIWV9DMjBf
VkRSX0NVU1RPTV9TRVJERVNfUkFURSwNCj4gIAkJCSAgICAgIEJJVCg2KSB8IFBIWV9DMjBfQ1VT
VE9NX1NFUkRFU19NQVNLLA0KPiAtCQkJICAgICAgQklUKDYpIHwgUEhZX0MyMF9DVVNUT01fU0VS
REVTKGludGVsX2MyMF9nZXRfZHBfcmF0ZShwbGxfc3RhdGUtPmNsb2NrKSksDQo+ICsJCQkgICAg
ICBCSVQoNikgfCBQSFlfQzIwX0NVU1RPTV9TRVJERVMoaW50ZWxfYzIwX2dldF9kcF9yYXRlKGNs
b2NrKSksDQo+ICAJCQkgICAgICBNQl9XUklURV9DT01NSVRURUQpOw0KPiAgCX0gZWxzZSB7DQo+
ICAJCWludGVsX2N4MF9ybXcoaTkxNSwgZW5jb2Rlci0+cG9ydCwgbGFuZSwgUEhZX0MyMF9WRFJf
Q1VTVE9NX1NFUkRFU19SQVRFLA0KPiAgCQkJICAgICAgQklUKDcpIHwgUEhZX0MyMF9DVVNUT01f
U0VSREVTX01BU0ssDQo+IC0JCQkgICAgICBpc19oZG1pX2ZybChwbGxfc3RhdGUtPmNsb2NrKSA/
IEJJVCg3KSA6IDAsDQo+ICsJCQkgICAgICBpc19oZG1pX2ZybChjbG9jaykgPyBCSVQoNykgOiAw
LA0KPiAgCQkJICAgICAgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gDQo+ICAJCWludGVsX2N4MF93
cml0ZShpOTE1LCBlbmNvZGVyLT5wb3J0LCBJTlRFTF9DWDBfQk9USF9MQU5FUywgUEhZX0MyMF9W
RFJfSERNSV9SQVRFLA0KPiAtCQkJCWludGVsX2MyMF9nZXRfaGRtaV9yYXRlKHBsbF9zdGF0ZS0+
Y2xvY2spLA0KPiArCQkJCWludGVsX2MyMF9nZXRfaGRtaV9yYXRlKGNsb2NrKSwNCj4gIAkJCQlN
Ql9XUklURV9DT01NSVRURUQpOw0KPiAgCX0NCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
