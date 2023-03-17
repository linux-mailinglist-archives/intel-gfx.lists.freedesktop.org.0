Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381FA6BE195
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 07:54:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B8810E096;
	Fri, 17 Mar 2023 06:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752E310E096
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 06:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679036051; x=1710572051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0CcbXIGPErlO3k59zQWUU6gmSBjMyZMicm6yELqc5Dk=;
 b=mS9yXpYaH0xgsjgKRO83rSTQ4DeImnNPYJplLNwSZEbeSdSoZgzMt9i8
 pD1IgcM08ipZooQXSsfPBtjIPm2iFxUfVycF/awy5vFCk4+jtRnCxnRh7
 JhF/5LIAgo5NYUEl+TtOywCNPS+jtf5rtOzacqdcz7Sep4WyhJF8Wi31N
 n7RQkjAS6L5ITDi/seGMtQUOz2G6xoT90dEA7VsSZkPwrvFCRkCkswaw7
 SWwRHMHLOjmVSnSThL3uK9AVEk6fV3wHslgPOZ24SLtvYWPITOue9/aoO
 ehwfoiABOYA7fcpBQXLXP9/Jrcs14XnvNQEOlgiJ5ap2C7tJ933k7e97C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="424467669"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="424467669"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 23:54:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="682577487"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="682577487"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 16 Mar 2023 23:54:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 23:54:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 23:54:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 23:54:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3m7ATWs939uyeFjmtbRKnBiYtf7lw8s8HxWuqlp2c7wcZjGJxXZ9lq+1wiEx0Wh4wh4og/B1CI5DG6Cmw+yxczn8C94B2gb6J3lUhD25oA9LgkjB0susuTT6VAt7t0Rpm9BGkkrzANzmh+l5r8VxKk5L0hN2TJ14MHjrgQ3sdEogStcYeGMujSkYug1fNZJbvOGMnjlTihQf7vgFhhG4F9k93gmOd30ETbItNvGcCWvQ7w0rLjwkb1YmuPLx1hnk9CpyLoW9PoDdkw93maTuIHM33+j1unwKXvwByhxZtG4en4lOf4OQjFJGKq03dnDbwO2PyUTKZYD4iHfwDJmTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0CcbXIGPErlO3k59zQWUU6gmSBjMyZMicm6yELqc5Dk=;
 b=WrT4yp9lHOFXrtwBkp507A7zdotVAR6vGclG1CKAOHlqk2pbiFJWCTJAKlydAHZXPJMpQc9+PzbN9226QVD18YS+zu5BfTtlbFiniF5AHBs+HhJFgKsNBtOdkb1VQPi7cANUgpyLt+WsNNyAC3Y2xPNlwvBVaCDsH5hlZ/S+hQQCBAUOxlTeLcDUu4CsqFDTiR8IMHqKULkxYzZJcl5e47OKwYUgQ2lWnfQxecn8F4IE18etgiO6tLzaKj6qpI6CE4XafkwyFPyfp0v5/D0yG29Onmfn/lHUN9X8SkvUUPYIoT7XzG2WID3b2A9a1lbKYaC2JikAhRo7WNrYHuJkxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6920.namprd11.prod.outlook.com (2603:10b6:806:2bb::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.31; Fri, 17 Mar 2023 06:54:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.031; Fri, 17 Mar 2023
 06:54:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
Thread-Index: AQHZVlOu03Fu/cKbD0K2xrqsNro0Bq79u5oAgADSQIA=
Date: Fri, 17 Mar 2023 06:54:02 +0000
Message-ID: <f3c5b7509a64d4d677bda6c896c782aff31d9435.camel@intel.com>
References: <20230314090142.947764-1-jouni.hogander@intel.com>
 <20230314090142.947764-2-jouni.hogander@intel.com>
 <ZBNeKlSPGaCkqn2q@intel.com>
In-Reply-To: <ZBNeKlSPGaCkqn2q@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6920:EE_
x-ms-office365-filtering-correlation-id: 25404a08-3160-4c84-b845-08db26b464a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MweUHt+bEcoxFY6HOpMZd5leh++Qzl8GD0n+ilF3bC1OyRmbNbw6ArKVOU06mBeljxJAWyFiMtmbMn87Cs8l4ZRGUrabMyEMsHMrtSt5XTvP5qVSN3FHUWzyHpTFskvVJtPRyjNr6G+GTD4g7MF3VJhsx8G7C3H7RKxdIaLxml/TtLAcJqHbXQTs5kAhkh+aE5j7DpXL41VwHiyP3tgp0UALsdiRIhaUg+gWPmTYCB+YfjisC4+3nMUSQek8NONQcnl1EzQ+WS6cY68URwapt0zWWs9OyorHENgxkEKvJGwzwZoPbH10m3xryXKSzUw0fhvKwJr8h52epXD+Pd3yktymK/xmrWFwwVfsRb0zrGDjbSQQlZ4o/BBJkM4tKvDWZ5aTwaXYGlD6J53d6S0eByO0AQdic2WVven/5cacsu3D9uo9p4Vey4USaIp/fIxo1xNUGTeqgdG6+0VE4U9L6+lJT0atQx6Tuali6useVbBL6ggD/Xu1rnvlXjqdqrcUpqz5IuAeyPmrLYzjrgfnzM5Tm8VsvWAKZj/ACcUy6toIynM8hAiCMaBBB83oLDXYQKKSX61hmj7owTf9vQc9WIZxKq88IyOVyzjmgS8tpRfLi+LoTd2k/beD2io9cqGvF6j5jKZM71EKyJI6udYuN0GhnmD4TE7bGEOOA5cufL5h4FbZiEMpOTE/77BY3n5pOC7R63Q3bL0sGXxHU7tFWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(346002)(136003)(376002)(39860400002)(451199018)(5660300002)(2616005)(186003)(8936002)(26005)(6506007)(6512007)(66574015)(6486002)(38100700002)(83380400001)(2906002)(41300700001)(66946007)(66446008)(478600001)(66556008)(76116006)(316002)(64756008)(122000001)(86362001)(4326008)(6916009)(8676002)(36756003)(91956017)(66476007)(82960400001)(38070700005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWMrMXpyUTluUmZjelRtVjdYS3BxRGFTMms1cHRuMTJvWm9wYS9iNzVPQnJP?=
 =?utf-8?B?TVRLK255KzkxT0tWWTYrL28vVmV4Q3BlbTUzWUcwY1gyY214MTdZSi9wYURZ?=
 =?utf-8?B?SXhJTHF0SmdKbHduQkF6cUFtU1hWYVRoMzZrMHZUZUVkTlpVL1R3VUhkcnVa?=
 =?utf-8?B?Wm55SndjV3FldklSK2g0Q3ZOU1VMb0FrdVJwUFBEajVVTjRjRThyV25uek8v?=
 =?utf-8?B?eWJBMXdCTG1PRVdjOEtWZWRMVDBQVyt4dS96dTdtNEEvK2hyR0xpYkdMV2dS?=
 =?utf-8?B?a1dXU1B2YjgrMkhxL2xocXRRaVlYaGEra2Q3TURadWRvMzRxa1RwS0kvMncx?=
 =?utf-8?B?VHpuSzNUdXpVWDE4ZDliYVhNNjhhMkpiM3hSOFVueXMreXd2SWI1NFJaRnJt?=
 =?utf-8?B?NXJTTERHUmNiLzA5RnA3c21HOXd5ZndySmhkWklpeENrRmZJSksza3NmWFpM?=
 =?utf-8?B?YTBXR1U5R1ZnbjlRdEdyR0lVblNXQ1JYT1BCSzUwdWZwaStxenBwNWZGMG5m?=
 =?utf-8?B?amw2VlFTNHdwNTFMaG9HK2UvaTZVdXBESE1xRlRYK2JiR29GWUp4OUdtc3RE?=
 =?utf-8?B?YnlmQ3BaM2FVSVNlVllpamdYZjNTNjczSElDaFdrYW1WcG8xNWl4N1NINFA2?=
 =?utf-8?B?T0hVbUhiYWt4bGpoN2RBdGVtYzIrbEpaOXNvaldpUDZiWloxT2xZbDFDdmpo?=
 =?utf-8?B?Z2x1dEFsWWh5WWVrMkJHVWVNYURGZXpyZFpPRm9wemJsbGpCSVg0QU92b1Zq?=
 =?utf-8?B?cWdzTlMzYjh6OG9nK0xzVzFWcHFmWkJYWnMwZHIrRE05SjJxQXhYZFhnb3Jn?=
 =?utf-8?B?RmxhUis1ZW5LZ1lzU1E2TTRQbWQ0V1l0cFRac054RlZ1REVHQ3dTRTRSb3J2?=
 =?utf-8?B?WnJSWmN5ZFMwVDI3OVhEMDdqakhkdzdoWTNhclFVOHY1VmVtdVV5Sm9KOXd3?=
 =?utf-8?B?WnQyblF4UW4vSEpUcCszYWFFL0UwLzNsbzl2V1lYTk0zMEZpNnhITjlQSkNw?=
 =?utf-8?B?dXM3K1RqOEVTajRTZ2I5dVBPWEtjVW1DR0FJVEV4OUpYWDBlV2tLazJGNU5C?=
 =?utf-8?B?OFRpbXllbEZ1ZWhSNkZ1YmhxcFhXdzhYdlNieXZIV3o3c2pRWSttNERBYjRo?=
 =?utf-8?B?L0dWc0dwRTZuMUJHNUFFWVZDK2Q0Y3VCY2cvWCsrZHRyakFuUEJiUXBvUktn?=
 =?utf-8?B?d3IySy9GR2d6OXJaRm1Cd2QrZXJWdlgwM2hUWnpOTzFnMnJLSXNBRTlRTjZL?=
 =?utf-8?B?VFlwcER4dXFpMkl4WVJHYlpzK2kvWnlUVlhoSHQybml6S2RCZ0VFbDlQOTVU?=
 =?utf-8?B?QTJ4UTlncTNscTd1KzhMSFkzRE81L3pZcVlLdThoRzE2V1F3dGJlbUQwd3hv?=
 =?utf-8?B?aWxKbmRiYkNlT1NSVVg5ZUw3eWU0ZTI1MFFUTk96MWRGV2szUElLU3U3VEl4?=
 =?utf-8?B?dEo0bC96U2pTVnJIbjJYa3AvclZlSElQY0JoKzlWMkk2REVodEtxaFpqUjRH?=
 =?utf-8?B?dUhKcDNJNm5Pa1pMT0hGbnRrQ05FaG5MeVN6SGd6Y3dZRFB2YnhSM2o0OVpk?=
 =?utf-8?B?cXJpM0tWUGFCRk8wZTFlSmlXZlNzZlE3THRpT1p6WC9uOC9SR2ZaaXpJQWp6?=
 =?utf-8?B?bGUxYVNGTEEyVU9sWlBRS2VKTW1xbVlybkFnQnRoU3R6YWhPTUtLQ0JNeG1Z?=
 =?utf-8?B?T3Q2aTM5Q20rYVhRUHAwKzRqSEt2Rm0xQUVuUHJoaC9CWDJHcU80NG1MTjRL?=
 =?utf-8?B?VU53RDBma3M0S0lBeXNQL1psbEpCSUxoLyt2RXh6eVBreVBkTWgwNG5nTGRK?=
 =?utf-8?B?cGJNdlQ4a1ExdjR3T3lsQld6ekVEQ1Mrdkx4aXBUNHVDVUEyT1p4bkx1Y05E?=
 =?utf-8?B?eEthMkJpNis0V1pZdW1NNkZDeUJjY0VqMjc5UktjQjJqcFRCMm90MWZadHBW?=
 =?utf-8?B?UncvOFFJb3JydUZ4Vk4zWHlnUGR4TnFGTlo1Q3h1NDg2RzRlNDZiam5jVFZ6?=
 =?utf-8?B?NEdBYWl4Q2FWRTlCTkhBVDJ4b1RxNUc5bktpVWN0cWZMbEZEZFUyeVJBcktB?=
 =?utf-8?B?RmlGRytTVjBmdmxHTHZOUk1jcm1BV1FLTUtDenVLOGttRDhwbWxvV3pWUkQ1?=
 =?utf-8?B?d0ppaFovaXhtT2NYUGRxZS83aGxRelYwRFlvcFV1clAvblJxL0VvSmFKUURC?=
 =?utf-8?B?aHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2F20A2E37D39C447B06CA3DFD8885085@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25404a08-3160-4c84-b845-08db26b464a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2023 06:54:02.7008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fgGw7cvq23LyNRLWWmGtaKG+ipHO6elC0xy8AHbJRNIBBk+UHO7+KumfvBb2Pgzvc/0g2jUZSj1GYnIDoJWew6EbKgud0SJaIKy9JBuhDpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6920
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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

T24gVGh1LCAyMDIzLTAzLTE2IGF0IDIwOjIxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVHVlLCBNYXIgMTQsIDIwMjMgYXQgMTE6MDE6NDFBTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gUFNSIFdNIG9wdGltaXphdGlvbiBzaG91bGQgYmUgZGlzYWJsZWQgYmFz
ZWQgb24gYW55IHdtIGxldmVsIGJlaW5nCj4gPiBkaXNhYmxlZC4gQ3VycmVudGx5IGl0J3MgZGlz
YWJsZWQgYWx3YXlzIHdoZW4gdXNpbmcgZGVsYXllZCB2YmxhbmsuCj4gPiAKPiA+IEJzcGVjOiA3
MTU4MAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8wqAgMSArCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEyICsrKysrLS0tLS0K
PiA+IC0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5j
wqDCoMKgwqDCoMKgIHzCoCA3ICsrKysrLS0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGluZGV4IGMzMmJm
YmEwNmNhMS4uNjA1MDRjMzkwNDA4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiBAQCAtMTE1Miw2ICsxMTUy
LDcgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgewo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wg
aGFzX3BzcjI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFibGVfcHNyMl9zZWxfZmV0Y2g7
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCByZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmU7Cj4g
PiArwqDCoMKgwqDCoMKgwqBib29sIHdtX2xldmVsX2Rpc2FibGVkOwo+ID4gwqDCoMKgwqDCoMKg
wqDCoHUzMiBkYzNjb19leGl0bGluZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB1MTYgc3VfeV9ncmFu
dWxhcml0eTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2RwX3ZzY19zZHAgcHNyX3Zz
YzsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGlu
ZGV4IDQ0NjEwYjIwY2QyOS4uYTZlZGQ2NWI4ZWRiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTExNzcsMTMgKzExNzcsMTEgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0Cj4gPiBpbnRlbF9kcCAqaW50
ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogV2FfMTYwMTM4MzU0NjgKPiA+IMKgwqDCoMKg
wqDCoMKgwqAgKiBXYV8xNDAxNTY0ODAwNgo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gLcKg
wqDCoMKgwqDCoMKgaWYgKElTX01UTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNU
RVBfQjApIHx8Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNfRElTUExBWV9WRVIoZGV2X3By
aXYsIDEyLCAxMykpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19zdGFydAo+ID4gIT0KPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+aHcuYWRqdXN0
ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5KQo+IAo+IFRoYXQgbG9va3MgbGlrZSBzb21ldGhpbmcgd2Ug
d2FudCB0byBrZWVwLiBUaGUgZGVsYXllZCB2Ymxhbmsgdy9hIGlzCj4gc3RpbGwgc3VwcG9zZWRs
eSBuZWNlc3NhcnkuCgoxNjAxMzgzNTQ2OCBhbmQgMTQwMTU2NDgwMDYgYXJlIHNwZWNpZmljYWxs
eSBtZW50aW9uaW5nICJsb3cgcG93ZXIKd2F0ZXJtYXJrIChsZXZlbCAxIGFuZCB1cCkgaXMgZGlz
YWJsZWQiIEkgaGF2ZW4ndCBzZWVuIG9yIGNvdWxkbid0IGZpbmQKYW55IG9sZGVyIFdhIHNwZWFr
aW5nIGdlbmVyYWxseSBhYm91dCBkZWxheWVkIHZibGFuay4KCj4gCj4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3JtdyhkZXZfcHJpdiwg
R0VOOF9DSElDS0VOX0RDUFJfMSwKPiA+IDAsCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gd2FfMTYw
MTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCkpOwo+ID4gLcKgwqDCoMKgwqDCoMKgfQo+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKChJU19NVExfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBT
VEVQX0IwKSB8fAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNfRElTUExBWV9WRVIoZGV2
X3ByaXYsIDEyLCAxMykpICYmCj4gCj4gSSB0aGluayB3ZSBuZWVkIHRoaXMgZm9yIGFsbCBLQkwr
LgoKRG8geW91IGhhdmUgV2EgbGluZWFnZSBmb3IgYSByZWZlcmVuY2U/Cgo+IAo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPndtX2xldmVsX2Rpc2FibGVkKQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3JtdyhkZXZfcHJpdiwgR0VOOF9DSElD
S0VOX0RDUFJfMSwgMCwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgd2FfMTYwMTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCkpOwo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpIHsK
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA9PSA5KQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3dhdGVybWFyay5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dh
dGVybWFyay5jCj4gPiBpbmRleCA1MGE5YTZhZGJlMzIuLmFmYjc1MWMwMjRiYSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+ID4gQEAg
LTIyNzMsOSArMjI3MywxMiBAQCBzdGF0aWMgaW50IHNrbF93bV9jaGVja192Ymxhbmsoc3RydWN0
Cj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gbGV2ZWw7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoC8q
Cj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBGSVhNRSBQU1IgbmVlZHMgdG8gdG9nZ2xlCj4gPiBMQVRF
TkNZX1JFUE9SVElOR19SRU1PVkVEX1BJUEVfKgo+ID4gK8KgwqDCoMKgwqDCoMKgICogUFNSIG5l
ZWRzIHRvIHRvZ2dsZSBMQVRFTkNZX1JFUE9SVElOR19SRU1PVkVEX1BJUEVfKgo+ID4gwqDCoMKg
wqDCoMKgwqDCoCAqIGJhc2VkIG9uIHdoZXRoZXIgd2UncmUgbGltaXRlZCBieSB0aGUgdmJsYW5r
IGR1cmF0aW9uLgo+ID4gLcKgwqDCoMKgwqDCoMKgICoKPiA+ICvCoMKgwqDCoMKgwqDCoCAqLwo+
ID4gK8KgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQgPSBsZXZlbCA8
IGk5MTUtCj4gPiA+ZGlzcGxheS53bS5udW1fbGV2ZWxzIC0gMTsKPiA+ICsKPiA+ICvCoMKgwqDC
oMKgwqDCoC8qCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogRklYTUUgYWxzbyByZWxhdGVkIHRvIHNr
bCsgdy9hIDExMzYgKGFsc28gdW5pbXBsZW1lbnRlZAo+ID4gYXMgb2YKPiA+IMKgwqDCoMKgwqDC
oMKgwqAgKiBub3cpIHBlcmhhcHM/Cj4gPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gCj4gQW5kIHRo
YXQgaXMgbW9yZSBvciBsZXNzIGNvcnJlc3BvbmRpbmcgdy9hIGZvciBTS0wvQlhUIHRoYXQgZGlk
IG5vdAo+IHlldCBoYXZlCj4gdGhlc2UgY2hpY2tlbiBiaXRzLgoKT2ssIEkgd2lsbCBjaGVjayB0
aGlzIGFzIHdlbGwuCgo+IAo+ID4gLS0gCj4gPiAyLjM0LjEKPiAKCg==
