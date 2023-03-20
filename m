Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676486C0C89
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 09:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03D610E291;
	Mon, 20 Mar 2023 08:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A348F10E291
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 08:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679302249; x=1710838249;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=uCPoAA2z9RSUKcw9aMUxfmoXaIllizWz47FNFeywWs8=;
 b=KZVkL5XQkQIJpE3bLL7YERnrMzJwGjf4nK0Dwr6eBLe98JvddqTyvrio
 dQuH7V2kISigAd0qX+15g3bUtpEzpvAVf0oe5RB4xS3Nrr0OJSUz4Y7IB
 UrewcI8FvBVIYlnnetUGnhTgSmuMKeVgC6XuxGfwoLkYkXRxvcde9hlA2
 eyUTmW5FE7EyeWsmz5HUBqg5j/Bun7BPRQeuPOoWcl6mPYG4y2JqaYtJk
 uXq+EUu/KlgaLpTG4IixdXrFY9WFV4x8h25tIRb+2MiZ1qZh9HtsYp62z
 XUpDM/iXdRufNaACrMMJGXfxu/cb2bIYhp5MG7T2752v8kzPg7Dq+C9if Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="336111208"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="336111208"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 01:50:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="683379533"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="683379533"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 20 Mar 2023 01:50:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 01:50:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 01:50:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 01:50:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 01:50:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZNz6D3EeSaR7lA73dcCcIq15qGBR9qkXokfQopTFa82JBJ/MPeRgWCPkU766HEPjE3ZFEn3T09312oS0UJ1MQt5usYePB5W6pw+tdFba1PqVzh8DUxM2eytbW0qfeE2AEuQmpuXu78i9KpBNfA5NUAABA0u1oSQnE9czUbOyz/ZJ3MolPA+3z2wtCvE57yoP0+JMepHGsytJqETH8Ewqedxi7MAN1T/O+NfGiAv/2qZ8/F5wwNRE7jZVevpKZSbtVIUyTNcxVuBV7dTijhE60kNInY21B/jmBQIPxs0l5czEB6YoP0P3cyrlYClC/VH9j1+KXWdyv1nwf9vp96SqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uCPoAA2z9RSUKcw9aMUxfmoXaIllizWz47FNFeywWs8=;
 b=Pa8PEB0+jaEDn8ljU/Ksrz0e30+seg+boREiG+pM7hdfng0dwqQ1D/Dyar2WJh/SunylX3Pik2sSnjzBbVqhVhi9F6i6MxGPDivl3iaRAmneioqhpeAzj/Yb6GJUDc38F06zUTZgS074J0AgAxMyrG1QSv5zTz03Y8iFnkcLC3dgnjajpzbzwkKYRlFD/MK9gLooJYNZF7GOzGmUN791N8UBO5lNDLKeNOtsNLmUtepNj3RgKZ1+unYPhjV5yeS2/rjQNAcr6Ld2bwYeuXomt853rbLJChEV0vMYRT+CoWwC7Nw+jbA7Va0sx4syViL7y2k2aBpWVknIKx8tPA0UvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 08:50:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 08:50:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/psr: switch PSR debugfs to struct
 intel_connector
Thread-Index: AQHZWNZAPzU8H0kKF0+9ENSTeJnD268DYF6A
Date: Mon, 20 Mar 2023 08:50:30 +0000
Message-ID: <cd1b3b54968eb1c955e73f4f154d0453b4bcdeb7.camel@intel.com>
References: <20230317134144.223936-1-jani.nikula@intel.com>
 <20230317134144.223936-2-jani.nikula@intel.com>
In-Reply-To: <20230317134144.223936-2-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB8257:EE_
x-ms-office365-filtering-correlation-id: a1065411-aa3f-4cfc-9c3b-08db292028e2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ANc92QbIuiJztdy2C+oeacg/wBXaWr3gXQNzWeBkkmNLWFPX0BZ9dz4cmWbZPbC3dlGcKbvai1Cj/NS29uMOvmqMY+Sco8wWO9rZ5kRxubYyPc4hwaG3X/InIlRHG0xBz+UhJe+Lopn+nxZj0gUEsw0fegKi+elpJT3VfVb2Gnd29K9zPL02FaNgU6c0Noeib/JEv9pR9IKGV93ndF4Z/FvNDcn4pBzpBy+d6/tug9IcGO0/rSUpw7p0g9lMH9mLUOxjyTGRACPxzGNdYxdUp0eryj9YpfsDhk4dXMMUOxs3E2TuV4UkGr6Un0aIeEvCve6KO8jfb1YG75pNfJKZfr25XVsKbo5T7SnwoWaoRB+2bfwAypFJkn7ZOHm3jGOZj9FX+3R4LMddXjdn8NOdjN4cn8/zndd/OhuLmKsky9Zr8k2hkSO5TblZ2YmrGj3MHrY7LBbF7XwWeXmzVbem4THeif8QjUZR/9Pgkx7zCUEbdt/kjWzNIHaQgFKfntojUoZL5fiRMw1M652H8lt8lndp1S07zHZPEFvOg1KU7nCHYyEzc+Z+SRq3qytStBq4HRMhoZYfFP4N/OhzpU8LpMVL6GflCtnDAuaMTlggK/cd45h2a3+kgZgWYdcPSEgFEOY8GJ7mXZ+K9/YTDpxsHp2WkubLpNbFcRVYSIM289wZ/kUkRHYuSWovOhU5l5Aw6rYDyZUCCzaHsGLT8xCY5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199018)(110136005)(316002)(86362001)(83380400001)(2616005)(38100700002)(122000001)(38070700005)(82960400001)(71200400001)(478600001)(6486002)(186003)(26005)(6506007)(6512007)(36756003)(2906002)(41300700001)(8936002)(5660300002)(66556008)(8676002)(66476007)(66446008)(66946007)(64756008)(91956017)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmxJekxnMEZIMm1MY1RJUm9vMHI1QWFnSDNqNlZVbWs2c1NFZjExRjZKM2xn?=
 =?utf-8?B?RzZTb0JUSnEzNG9Jbm92SDU3eFJUbEQ5bUkwY25QWFltWDJXVFRwSDlaOXVS?=
 =?utf-8?B?NEJYM2ZJZHFqR0xTcU1oRkxLUXJxeDg5Vm1YTEE0eG9LemtaWjBZT2duQmJr?=
 =?utf-8?B?K0RzTU5pYy92eGNpNUJlWGcwbGl0M0lJSE93N25aMmpJWmFjVi8yc1hzM0x1?=
 =?utf-8?B?bDhBV3lSbUQ0R3ZSMnoxUm5kMHNIelYzalFOb3JEQm9iRkdUVFIreXdLMXEy?=
 =?utf-8?B?WGJUbkRQOEhuNkpESGFjdVEraGJqbUNkY0J0ZFFrQVFJRWRLVUtHLzNSRmQ2?=
 =?utf-8?B?VFFSSTdJWjNncjdGcU82TG1YV2tvSnlNNE5NZXpNb1ZMMGhoVHltNkVRSVNn?=
 =?utf-8?B?Y0hjMExjN1pVZG10d0N2VnpnT1k3cXN4Q2RaN3M0MzFNbWhZWWU4OEdCc1E1?=
 =?utf-8?B?cHFwbmRLRW8vdWs2clAxc2pyMjVPNFZhR2I1VWZqdThSV2UvdXZJZzJiVURN?=
 =?utf-8?B?WU8xQ0VPK2JDNUkwOFpaenFMVVhhTVpzSnIwTUhTV3plNXc1NXZIMzR1RDhQ?=
 =?utf-8?B?SnJPayt4by9tVUdmS3p0YmJjT2g2bFdiVjRObVJWcnBDSDhDemZPWmVDakJT?=
 =?utf-8?B?QzNNTXA4NjRCVmgzMmhNU1FmUWpMMlIwMVZYTWRyNDR5bHhHdlNHTWI5YjUx?=
 =?utf-8?B?WmVPSTZmaDAzRmJFS2lZRTFnaVFXNFExbnk1NDI3cFRjeS96UjMxRVo2Vk8r?=
 =?utf-8?B?SGNTUUJlR0JQYk5EaHlVRUdNTnJzY2k3Yjh5eDA4VDJOTFE2ZS9UZzFkUXpp?=
 =?utf-8?B?YjlUV3FISmYvQlpTU1FMUFkxRHN6ekZFUkpZcFc4YmtzRW94TTI0bnI4L3F1?=
 =?utf-8?B?cHNxVkx6T28xMVlvTVVZbVljd1RiY0dEWGxmT0c5SjRDZGhKc04vOGR3SnY3?=
 =?utf-8?B?Z2dJdFRlZE9yQm9nYnJOcUlZdWlrRVJWVXNXbFh4VmpKdEpmRldlVmZaUmpK?=
 =?utf-8?B?MGt6MFdJTFJBL2FPRzdwMlhPNy9tdHBaL1VyaHpMVENoYkFlZ0JRejZVcEE3?=
 =?utf-8?B?Nk1vMnRleDhUbWRoVTluSForSzcxSVd2WDNVV2w1b1MrREw3SU4wKy9tamwy?=
 =?utf-8?B?VUlDaXFhMDI1NXdadE0yQ2pVOWdsd2R5dFl4Vnd6aHY4dTJzSU9LMTYwWCtT?=
 =?utf-8?B?Tk9sZEYrakhnN0hodnpCU1ZWdERpSXBzNlRnSmNLWkZDbWJhay9NT0Nzenls?=
 =?utf-8?B?bHVpQWMrMFJZTEFoc1BJOWk1SStuT1JGb0RkU3lVWDhYRkFJREF3ZTEybFZX?=
 =?utf-8?B?ekNyZm9BaGpTL29GQTR4aThRWUFnT3dEZ0preU5XZldJMmV2RGxkWUI4UVlM?=
 =?utf-8?B?UmVqSExnbTY4aDhNWU1lRjFsdThWWWVwOWxkUnNudjd1TzRkR2J2OFhZS0pS?=
 =?utf-8?B?ckY5cFNNTjMwY0xOMUJyTlh1eVQ5dXNwc24zeXhtL1NNY2pnSERjbHpjVVBs?=
 =?utf-8?B?QkpLK1pwbHJTSEdVMmczL2tnNTFuZ3hISkh2Unl4ZTlKK2tweDNaTjBhNFIz?=
 =?utf-8?B?VC8ybXM3V3B3TVJiZng0aDZGbHNIeVVzcUdrRlozQ3hsRkttNzU2bmlUSjFn?=
 =?utf-8?B?cmp0ZEJQbFBQNlQ0S01PNlNuSnpjYmJ2TWpIN1MyM3NzdkVCN3BraTFvWXR4?=
 =?utf-8?B?T04vdTRkNW5UVmZ0alEycXdoQ0YxV2hOVlNpejJQME1CeERDdWdMdU52S1pG?=
 =?utf-8?B?M3VNYk8wUkNYNURJc0ovU0tRNEFzTlhsK1VSOGVRQWEzcU0wMkJVVW91d0Fv?=
 =?utf-8?B?V0VaOFVsUEdBTng1TmFhYTM0ZmZvYWw1bnZpRVJEM2s2bjBTanMxb09yc2Qv?=
 =?utf-8?B?THFHNlU0WkVDV1BWV205MCtPN2pYYU1mcWNsckE2d0Q3anVPeWptb1hxWkR1?=
 =?utf-8?B?Ynp3SXNyS0Z2YkliaEpPcGJHWXlEK1dYWnRRUlVSR1gwZE9SbEk5bUE5ZkNq?=
 =?utf-8?B?b0R3MEdwZ3ZqVzBweEdseVkyMmtGM0JXTHpaeXNxeHQxbDE3alF6V2NHT1NV?=
 =?utf-8?B?d3hjQXluVmgxUkRwcnRwTW8wNFptS3VqZFR0Qitoc0lybnNqWkwxdktaY3hn?=
 =?utf-8?B?LzUyUUJwbHRvTzlYUS83bEJBL29EeFBZSWM1Ym8wVDZZVTFrbTZQV3Z3NkJG?=
 =?utf-8?B?cVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E8A9D2D6C70991459CE573FC333D1AF7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1065411-aa3f-4cfc-9c3b-08db292028e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2023 08:50:30.4376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PziisuWWD+Jkk+YwW2x0aDMna2BnOSC1R830tsWsDOW5JbvhVJEEBIk0Dz+VPyEwbLHNeVlgf96vPsSV+rFIzzEDJh2fEBG0VTKjVDa2shQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/psr: switch PSR debugfs to
 struct intel_connector
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

T24gRnJpLCAyMDIzLTAzLTE3IGF0IDE1OjQxICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBQ
cmVmZXIgc3RydWN0IGludGVsX2Nvbm5lY3RvciBvdmVyIHN0cnVjdCBkcm1fY29ubmVjdG9yLgoK
UmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgoK
PiAKPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMyArKysrKysrKysr
LS0tLS0tLS0tLS0tCj4gLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gaW5kZXggOWQzMjA1ZDk5YjU0Li5iZDFhMWEyNTI0YjUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtMjg3OSw3ICsyODc5LDggQEAgdm9p
ZCBpbnRlbF9wc3JfZGVidWdmc19yZWdpc3RlcihzdHJ1Y3QKPiBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQo+IMKgCj4gwqBzdGF0aWMgaW50IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0
IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+IMKgewo+IC3CoMKgwqDCoMKgwqDCoHU4IHZhbDsK
PiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSBtLT5w
cml2YXRlOwo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBpbnRl
bF9hdHRhY2hlZF9kcChjb25uZWN0b3IpOwo+IMKgwqDCoMKgwqDCoMKgwqBzdGF0aWMgY29uc3Qg
Y2hhciAqIGNvbnN0IHNpbmtfc3RhdHVzW10gPSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAiaW5hY3RpdmUiLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInRy
YW5zaXRpb24gdG8gYWN0aXZlLCBjYXB0dXJlIGFuZCBkaXNwbGF5IiwKPiBAQCAtMjg5MCwxNyAr
Mjg5MSwxNSBAQCBzdGF0aWMgaW50IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0Cj4g
c2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAicmVzZXJ2ZWQiLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInNpbmsgaW50
ZXJuYWwgZXJyb3IiLAo+IMKgwqDCoMKgwqDCoMKgwqB9Owo+IC3CoMKgwqDCoMKgwqDCoHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBtLT5wcml2YXRlOwo+IC3CoMKgwqDCoMKgwqDC
oHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7Cj4g
wqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Cj4gK8KgwqDCoMKgwqDCoMKgdTggdmFsOwo+IMKgCj4g
wqDCoMKgwqDCoMKgwqDCoGlmICghQ0FOX1BTUihpbnRlbF9kcCkpIHsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHNlcV9wdXRzKG0sICJQU1IgVW5zdXBwb3J0ZWRcbiIpOwo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FTk9ERVY7Cj4gwqDCoMKgwqDC
oMKgwqDCoH0KPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0b3ItPnN0YXR1cyAhPSBj
b25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCkKPiArwqDCoMKgwqDCoMKgwqBpZiAoY29ubmVjdG9y
LT5iYXNlLnN0YXR1cyAhPSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCkKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5PREVWOwo+IMKgCj4gwqDCoMKgwqDCoMKg
wqDCoHJldCA9IGRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfU1RBVFVT
LCAmdmFsKTsKPiBAQCAtMjkyMiwyMSArMjkyMSwxOSBAQCBERUZJTkVfU0hPV19BVFRSSUJVVEUo
aTkxNV9wc3Jfc2lua19zdGF0dXMpOwo+IMKgCj4gwqBzdGF0aWMgaW50IGk5MTVfcHNyX3N0YXR1
c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPiDCoHsKPiAtwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsKPiAtwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0KPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaW50ZWxfYXR0YWNoZWRfZHAodG9faW50ZWxfY29ubmVjdG9yKGNvbm5l
Y3RvcikpOwo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciA9IG0tPnByaXZhdGU7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIGludGVsX3Bzcl9zdGF0dXMobSwgaW50ZWxfZHApOwo+IMKgfQo+IMKgREVGSU5FX1NI
T1dfQVRUUklCVVRFKGk5MTVfcHNyX3N0YXR1cyk7Cj4gwqAKPiAtdm9pZCBpbnRlbF9wc3JfY29u
bmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IKPiAqaW50ZWxfY29ubmVj
dG9yKQo+ICt2b2lkIGludGVsX3Bzcl9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGludGVs
X2Nvbm5lY3Rvcgo+ICpjb25uZWN0b3IpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciA9ICZpbnRlbF9jb25uZWN0b3ItPmJhc2U7Cj4gLcKgwqDC
oMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rv
ci0+ZGV2KTsKPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGVudHJ5ICpyb290ID0gY29ubmVjdG9y
LT5kZWJ1Z2ZzX2VudHJ5Owo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShjb25uZWN0b3ItPmJhc2UuZGV2KTsKPiArwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZGVudHJ5ICpyb290ID0gY29ubmVjdG9yLT5iYXNlLmRlYnVnZnNfZW50cnk7Cj4gwqAK
PiAtwqDCoMKgwqDCoMKgwqBpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSAhPSBEUk1fTU9E
RV9DT05ORUNUT1JfZURQKQo+ICvCoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0b3ItPmJhc2UuY29u
bmVjdG9yX3R5cGUgIT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBkZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlKCJpOTE1X3Bzcl9zaW5rX3N0YXR1cyIsIDA0NDQsIHJvb3QsCgo=
