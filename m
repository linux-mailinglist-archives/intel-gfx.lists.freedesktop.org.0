Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CEB6C36BE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 17:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE6210E7D9;
	Tue, 21 Mar 2023 16:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5670610E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 16:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679415430; x=1710951430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DOmjdmh//Ap981YKNMP0ljOVIxVDEf1ANTnK3PYGCcI=;
 b=cVv9OPC1QYMJlvf3psTTlOIEIz36lFuQwfUwSXkyz2MUicnxo3/UN5z4
 +vl9DZRA9o7BOk1TBfTjRnq6XVqR7adrybp/X11kyoaElxIioqYErGY/a
 KzJTpWgtBb8lL2aGJFJM4SvKjXNUBUMycqydl3bZCNyQxlJDj/9vnscr+
 fmAxwYTvHC/pD/iN4eHQHwmFre56xi6yB36Q/iAdnm/A0RRnwziCIrcAh
 NAAUPcPn1c4uC851I0iEMSC+SmXVVQLKdDdLiDNYPT3c+SYCRys9U5cWX
 mSv53NdMwwIpX+rLk+XjPNUwxTsCQAlgSurkONYWbLQoefFfOXrQKgJh7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336491786"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="336491786"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 09:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="631633422"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="631633422"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 21 Mar 2023 09:15:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 09:15:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 09:15:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 09:15:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 09:14:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqr3u6Z4FeYZ74zYg15E+IKB7n+xHLPL8/eDxZWeBKwYTWiqyjcJ3+CgikVbzjZyvK+OXDZYUUfIaS5lmxogwlpd75Xhif8pEh1eROktMNS4q5pF2usSRdtGOCAar5nROLs6FTGdWBra4+iXBenqZ021RKLryuKt/4zrdV/my58gDIGBYqecqjDGAmnOVLtvuXZDIx7I+uzT5HdmsFl0cAqSPWj+cg3qgKb2Bw+Pg8MXLA47dc+EQEmu3YjVdwMMgvhgm+MdHohSs6sEi7nl8W3rgLqNKeW5w0OCNV2WD67CVSrWn3rjue3S04v0ImxcJC1ZkBDc3vLEwdif7ovEBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DOmjdmh//Ap981YKNMP0ljOVIxVDEf1ANTnK3PYGCcI=;
 b=CwvH2nR76uIBmF4AF8/v210pC8nLip2yvwjKOhxnd4m9A3dhiDq7VZcy0K7fvC2H6xK33kfwD7r6ls1YHx8c+IO7qwYQo42AU2WFB7C5kDv0g6WOxf3bTKOJ8H3rQK2L7dd7mmHuGDmuEvI2L/EHuonmMPIlGjV5cHAB/Zl98gnuVYCaVF7XNc2/3rsyOM3vaYuuIPCojeG7rbsPyOvYVw40Z1o9LwRgTVlTJmykxgQ/hhSr9djjwuW//ftZmH27rsLqZhwB4Unu4ya9K6XEOxVr4z88nGencB1nUqF07JDBW1L0N+QXe7E0NO9GQh4/nQLzRMHOb+hy4qJsURSPQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5625.namprd11.prod.outlook.com (2603:10b6:510:ea::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.37; Tue, 21 Mar 2023 16:14:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 16:14:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 3/4] drm/i915/psr: Check that vblank is
 long enough for psr2
Thread-Index: AQHZW01/cm1T/j0hPEKovlez98HsQq8FYSGAgAAI0QA=
Date: Tue, 21 Mar 2023 16:14:57 +0000
Message-ID: <3949ac3ef5e631323813faac33053d144d02b810.camel@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
 <20230320165945.3564891-4-jouni.hogander@intel.com>
 <ZBnQmxYHDiii0FGn@intel.com>
In-Reply-To: <ZBnQmxYHDiii0FGn@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5625:EE_
x-ms-office365-filtering-correlation-id: c1b010d9-a2f3-4628-6089-08db2a276a04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ziDPsx9/2RQrKAQTIBN9MzmaNXvCAyPXiowmrGE7kr3VkszmR8Xs9HoIUO4ALRpLINJf+8PEPx6TDGR56J3IZyYz4R9u+z/z3DPOJ5EniH0STkFpGE73C4ENrCNi1cYn+LK1YL10Ewj1uvX9RsPBM8+MpHXx1/9RDWyqFAPEqPNTAPx9FBF6lV6m9CTozY0iY4gbc9ki1qSHOl922BOaZb5OrAG4nAY60r2CQFsFGUUTETEs7YYzS6q4Jhbqm9T1GnJSUndUaLJ34PDOsN/31mq8zDMkFy5mxEqoH/DbITwTbeutT7eIj3PmCL05oIhUss6W7FMlKxNJhgMNjazHZLXKfE5kqkixDw1toFxzq5kuMiSmwnY8CZ0c4mY1V3gOkN46/oBuAt8QQ7o4rus5vlDF3CztpK2eb4io4pLHDhB6TmXunYY8QlyM86C5EBg1MrE4Ynk925Cid0+BcUDpVChjouHEu/QttikeBDKg4stuNISAe80zaC5CZZjL/4i/uzQemtlbfygunoHWiaI0/d+eMUOpb9KBo5MIX1hwEHv3b7FhEYu/nYXebcasdpEpOJJ5Qca/zpc3Ne8p1K05UmQ6rz0RPuzWtVTGH5/Ga4vBJl/7tHJXJkZkXZvkmbfZHtWlHuUS6m+LzUJIW5w+AFR/QFMQdFgw1TjkpW2V69q8ZBFqsOLR1iN/sgkB6OrTOqJk/kaoag4GIBkEXDr8bA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199018)(2616005)(71200400001)(66574015)(186003)(6486002)(4326008)(83380400001)(478600001)(66476007)(316002)(91956017)(66446008)(76116006)(8676002)(6916009)(66946007)(64756008)(66556008)(6512007)(6506007)(26005)(41300700001)(8936002)(5660300002)(38100700002)(122000001)(82960400001)(2906002)(86362001)(36756003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aW94UkFORXpnaUJFVzRLM0lNOU5lYmg3RlFGSmcyNEM3RXlYcXNLdkczVXdx?=
 =?utf-8?B?U1dXRmNzQTlpZzZYbTU1bURqanJMc21DM0U2WDd2ZVc5b2FSbzFEUUVTMWN6?=
 =?utf-8?B?dytabVZKWFZ6UkRBb1h3cGo2cTFGL0VDSW1ZMDNYUUY1aWExQmJrNTVhaTZx?=
 =?utf-8?B?OGZMM3lWVENrdnpNcHNRcnRsVHZ4a3laZkRzQTcxc0JTSE9pTU54Q2VBYmd4?=
 =?utf-8?B?NGtLdEptNFN4TEM4WTg5SnlHMHdlSTFOcEc1NWoySG9IZEgxTElyUUJ5bVhi?=
 =?utf-8?B?RkhPdURXUUpSTmRIK2oxTWVtNGMxNWVqeCt2V1BzMW00dCtWMXR2b0ZvTVdu?=
 =?utf-8?B?Ym9BU213SWJ6R3MrOUxaUjFaZUFmeUg0bGxkcVdnUVRTS2d3aDBpK0FSM0JJ?=
 =?utf-8?B?TFZwZ0NKakNhVFV0djZDNnVPdkplMlhHc0JjTmNRYVR3Y2k3SERRbEg4WXRy?=
 =?utf-8?B?SjM5T1RBT1VucmtydEdYTzVaYUo5d1lzcktpTlpVTzIwYmFYK28vNzVEaHpz?=
 =?utf-8?B?WTY5Q1B0Z2hLdWVxWkFCQU52V1BmbTFJcEhuSnc3NUhGT1FYd3pRclg1RXNn?=
 =?utf-8?B?RUUyeDcwRWZ1bWpEaG94ZnE0dTkvaml3cVp2Q3dqLy8wcXdqQmRKTG1EdWVV?=
 =?utf-8?B?WTJRQVJqeVVVOGt0dzRRVkk0Ky9ZcGZwMy82bHpUVHBBWHZBN25NOHJST09P?=
 =?utf-8?B?M2UrRjVpZll3ZnZONERsQnVBNHg4WCtPQUtpcjhNRnVtREVVelFRQm0vVGF6?=
 =?utf-8?B?RnZwSzl6cFA4bXhLMWNoT09tVE41SU1hOXdUQ2YzNUt6WEllK1Uya0VpUHl1?=
 =?utf-8?B?cWhSdEhwcGpoLzdCSFJVRlkzL1RhT0ltcktOOEZna3grTVpKUlIrZnhUVG54?=
 =?utf-8?B?Ym9WZStIQTU2OHpiZXlsODRhZCtNd3hQRzQvMkNqWTRxUWtpNWJIV2t4Vktr?=
 =?utf-8?B?WmlkSmtZbFFDQXpON29OakNFRy9KcG1IaWM2MFFXVmV3Um0rNm1FQ2NpUUJl?=
 =?utf-8?B?elRzV0JqNnEzdXErdVcyWEhubEZUazJEYjg3ckRWVHUybjU3V1hUTkthRE9C?=
 =?utf-8?B?bXhoYWNzUTlaZUE2SDFRNTFxMUk2d3JlZUpaNnBpQlEwVytUOW5ybE9LOGdK?=
 =?utf-8?B?OWZlSy9mc2JPSlZJQ0dTd3R3SzlPUHpKcjVWR2JTTHQ1bGptV2RCd0lGd2hq?=
 =?utf-8?B?bkdtVkJLL2hKMU84NFlEa3A4N2l1QzdodXN1V3NYNnlxYU12NWpDWnA5REQ1?=
 =?utf-8?B?M1VINUR6MW5UMVQwdm0ycTZRTDdaYnh1aXp3cWdKak4yTS9tSlQzaGlZdi9Z?=
 =?utf-8?B?bzY5QWhFUjRvUzAzVkhRanNXeVZEeG1uQXVZczhaSDEraXhXV0QrK0VlcmZv?=
 =?utf-8?B?RGJ2Y2ZoZDNWNXpXV3hQakw3Y2U5MkMraUlsdUhmais3dGF3cDJlcHNzK2JJ?=
 =?utf-8?B?U24vUW5Oc3VrZ21hUTQ5Z25HQ1llWExmNU15UnNKSkV2aERzc0tteFQ5ajBY?=
 =?utf-8?B?YkFscG5NSEtuNkE0YnpubnMySGs2YmJoZUlJOFpMUStEdjkwZUl6Qm4yWWVw?=
 =?utf-8?B?c3pCbUliUGU2eTNWV0FFQTh0UGREL0RnYmpoeGhMYTIyWjJaWk9ja01LTmw1?=
 =?utf-8?B?bFpCSWwvZm1DVVdCdDVWN1ZiUElXWFVFQktrM3dvcm5CYU5LWXYyQ3I2N2pK?=
 =?utf-8?B?eDZ1bjV4WENSYlFoLzVDMWR3L0Rza0NLdDZ2RGwraGxoOWlhY1RQNlpWVmZ3?=
 =?utf-8?B?ejV6SHU1RlVaam5xR3VKWW5iU0xRL3ZUTGJXSGZiT3hXRjJyQnI3bFRqbUxL?=
 =?utf-8?B?bUtmZnVldXQwc2d2NjMxOXh1bXg2NUlsMTQzK1NqelpzcmFjaHQxcjV4ZTNL?=
 =?utf-8?B?Y20vR1J6dmxucEZBUk8xQXBWUGpBMEI5RnJySStsVjVEWXB1ZFcyaXU1SWF6?=
 =?utf-8?B?bzNCV1gwc2w2MDBvYVFoMWNQQXRFYTBrR3Q0NW5Gc3pZL0srdlRTWnBLZDFU?=
 =?utf-8?B?Ykd5Si9TREtERk1NUFE2Mk42aHdmLzk3MXZoOWJNTGlMSWVsQk1CZ1pFdk5L?=
 =?utf-8?B?RGVhb3h5dml5dVU5dWRRNGx2ekZHU2JSbExZemJIM1FIWUNiUDlCWkxqMEMv?=
 =?utf-8?B?WThsV0M4b3ptMG14Yjc0QXhHZVhmK0YzMjhHMFlQL3h6Smk1N0M4Umw0d3V4?=
 =?utf-8?B?dUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <53F0DF75B453B446A64484C85484BE17@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1b010d9-a2f3-4628-6089-08db2a276a04
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 16:14:57.3351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nP19W0VOBJgB75GU4ewZciFhqGTs272VJGlQQBLeGA3qyc2OcxJiuc/DOGMaLjWd4gnvgjLpOP/67AzMOfIjvS/nxzMj3M5I8lPKRUOnkHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5625
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/psr: Check that vblank is
 long enough for psr2
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

T24gVHVlLCAyMDIzLTAzLTIxIGF0IDE3OjQzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gTW9uLCBNYXIgMjAsIDIwMjMgYXQgMDY6NTk6NDRQTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gRW5zdXJlIHZibGFuayA+PSBwc3IyIHZibGFuawo+ID4gd2hlcmUKPiA+
IFBzcjIgdmJsYW5rID0gUFNSMl9DVEwgQmxvY2sgQ291bnQgTnVtYmVyIG1heGltdW0gbGluZSBj
b3VudC4KPiA+IAo+ID4gQnNwZWM6IDcxNTgwLCA0OTI3NAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOCArKysrKysrKwo+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGluZGV4IDEwNTBkNzc3YTEwOC4u
MWI0MGQ5YzczYzE4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYwo+ID4gQEAgLTk1OCw2ICs5NTgsMTQgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9j
b25maWdfdmFsaWQoc3RydWN0Cj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9
Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgLyogVmJsYW5rID49IFBTUjJfQ1RMIEJsb2NrIENv
dW50IE51bWJlciBtYXhpbXVtIGxpbmUgY291bnQKPiA+ICovCj4gPiArwqDCoMKgwqDCoMKgwqBp
ZiAoY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19lbmQgLQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192Ymxh
bmtfc3RhcnQgPCAxMikgewo+IAo+IFdoeSAxMj8gU2hvdWxkbid0IGl0IGJlIGJhc2VkIG9uIHRo
ZSB3YWtlX2xpbmVzL0JMT0NLX0NPVU5UX05VTQo+IHN0dWZmPwoKSSB0b29rIHRoaXMgZGlyZWN0
bHkgZnJvbSBCc3BlYy4gSSB0aGluayB5b3VyIHN1Z2dlc3Rpb25zIG1ha2Ugc2Vuc2UuIEkKd2ls
bCBleHBlcmltZW50IHRoZW0gYW5kIGNvbWUgYmFjayBvbiB0aGlzLgoKPiAKPiAKPiBJZiBzbyBJ
IHdvdWxkIHN1Z2dlc3Qgd2UgdHJ5IHNvbWV0aW5nIGxpa2UgdGhpczoKPiAKPiBwc3IyX2Jsb2Nr
X2NvdW50X2xpbmVzKCkKPiB7Cj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAuLi53YWtlX2xpbmVz
Li4uID8gMTIgOiA4Owo+IH0KPiAKPiBwc3IyX2Jsb2NrX2NvdW50KCkKPiB7Cj4gwqDCoMKgwqDC
oMKgwqDCoHJldHVybiBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzKCkgLyA0Owo+IH0KPiAKPiBpZiAo
dmJsYW5rX2xlbmdoIDwgcHNyMl9ibG9ja19jb3VudF9saW5lcygpKQo+IMKgwqDCoMKgwqDCoMKg
wqBmYWlsOwo+IAo+IGlmIChwc3JfYmxvY2tfY291bnQoKSA+IDIpCj4gwqDCoMKgwqDCoMKgwqDC
oHZhbCB8PSBCTE9DS19DT1VOVF9OVU1fMzsKPiBlbHNlCj4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8
PSBCTE9DS19DT1VOVF9OVU1fMjsKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IyIG5vdCBlbmFibGVkLCB0b28gc2hv
cnQgdmJsYW5rCj4gPiB0aW1lXG4iKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gZmFsc2U7Cj4gPiArwqDCoMKgwqDCoMKgwqB9Cj4gPiArCj4gPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKEhBU19QU1IyX1NFTF9GRVRDSChkZXZfcHJpdikpIHsKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9wc3IyX3NlbF9mZXRjaF9jb25maWdfdmFs
aWQoaW50ZWxfZHAsCj4gPiBjcnRjX3N0YXRlKSAmJgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIUhBU19QU1JfSFdfVFJBQ0tJTkcoZGV2X3ByaXYpKSB7Cj4gPiAt
LSAKPiA+IDIuMzQuMQo+IAoK
