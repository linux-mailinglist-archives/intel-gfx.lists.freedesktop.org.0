Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A016F15AA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 12:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5739910ECC1;
	Fri, 28 Apr 2023 10:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAAB910ECC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 10:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682678187; x=1714214187;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=rlyTkOnqeVPt5y1JZ4jsYchk3us6mcOrWXWcCRnSR/Q=;
 b=juhk+DE9iSdYv+Vib9LL4GwP0e3ihQjrKIMizkqvixGdYVmr+uLBtjTa
 XlZeiw/HzcXlspQGSFvcPaPc3+ndi3qlcCZ1ayNDiYtjQJUVYswiKOE0F
 sqz62e5fnGhlkihmuqK8U/+pkHj5QpY3VZsU5qanp5YDpVKek9V3qHX1J
 gjcCaScd7ViOa6q8UUBN4gT1AL+JX65yILBEpFoKSOmLyRVWB0Ob/vxQ+
 FeMoiqky4eBemgQXA2sPNA6/Ajw3TTl41HIkbYM28rPn6StviBBFp5Bxv
 Yr/+ypXJl/vmNn+O1c1vGKMWCSs+gKGgfOFzn7kzYjN3CXRQjQTnumfDm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="350621122"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="350621122"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 03:36:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="784163934"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="784163934"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Apr 2023 03:36:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 03:36:26 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 03:36:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 03:36:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 03:36:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTuKhnckyN3peuvaMVGgO0hNTjd0SAeRKTz7clvIewQDqCzcbNuGEQJmCwZirzcdwyNnjo5T+KvMljmn60L+P8wKMqiNnLIwNW0TgqY2hQdp3aHo2aYLaFkkwSErdmfF5SdfN9aYkx8FxT0ydUo2G3gz9Z2/5P4vsy9s/MsCSKs3xM8IxSiW5ZH3M2XWW1458PZOZ1rVcAMFkhqhLpV4A7ymPyFmmfyrlxae5Db6CZgE9N43bw3+2/CP1/CPCVQhVPl/WcxATKqJzKoSIQPlKwaKZ0ALcOvPh4ofMmNPbonGMac+jBs7BNgGoV39/o2wJUQ1BylVO/IleCjSSSc8qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlyTkOnqeVPt5y1JZ4jsYchk3us6mcOrWXWcCRnSR/Q=;
 b=LhnuT8noq1P9n5zBHMcPz9X8EQ39OAPtmjsA7l2RjipNfC++mlgaW3jEpjpJ2hvoL/ixFEQGyw1i+gPWgU1N+k2VhitDaIxXaBHr4j8Xplju6xTl2KMGMTBOtnl1B5FpfsgRLB00bouZnEnDJXbmrU2Zmiq6mmXMm/ll5v/aEUpU6GhlZ1agAALIBXjGR4hnWuOXM9Mpql4RQlexM10w5pEabgrwXbBXi6mMln7O2ouuiG/p+5UmEJie7F+faBAAe87vcbfBrwcdyGFqYjr9M9Ab6k0D12pwwpcv3hXnSP4VyKRkJ8nai8m5pVqI0j58W5aK5UZwqZN4jgyZNQPSLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6881.namprd11.prod.outlook.com (2603:10b6:510:200::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Fri, 28 Apr
 2023 10:36:18 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%9]) with mapi id 15.20.6340.022; Fri, 28 Apr 2023
 10:36:18 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/13] drm/i915/psr: Implement
 WaPsrDPAMaskVBlankInSRD:hsw
Thread-Index: AQHZdEldGAqspbG0nEW5gugvlwej6q9AkfGA
Date: Fri, 28 Apr 2023 10:36:17 +0000
Message-ID: <6e7980c273586069e0f70de1c9b70cc061b47539.camel@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20230421120307.24793-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6881:EE_
x-ms-office365-filtering-correlation-id: eeee578a-6bf9-447d-6653-08db47d46640
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F6evAMAmmViPxc2mP0aMxHDXnoQXLr1GmL1AQhwFEIYGefoP6LWYGeIOJq4oH6QL2obOLku8u4fW2mlM+M0xvQKAdvU5CDEiVVMtgqkjSNZrwejdgMB2A0kW13t5gA3am8EExuCLIvAW8Z5S/hIbDhVbq2aXJb4TEZcfEXIZTiVr6l4G8SqJ58VMhSRm2elzyJ7mTE88wAxhQyPj9F7lm+iJjeEAAyZ6ch0qdqoZV/AbqwIfK1nvguUGtw5xBXadtwVgtgXTILGqtHaVfu0Y1Px62/5C8Vkmfcy5E/d2WkLvXIJl/hIZ4UFy3U9HF1Xm+MmtkkmqOwwFGkOPKo931bJlPbZZ1Y8KkSm+QgeOz79Ojv4RSpKGVCxvv4/jzrQU51hXekjc5cC6/OzKvKQDszYRFyHwWRBsM29SOGyx8/qYSjL+7nWQWNzpUTQMkvVwGf3s9HN6B7UKmuhokWxho7C5khrI9DG2EeSc1WmK76GQIjAOYKUWYgesNwmFSHdQzeKT7RcKdlilh5GZqeSccIVng5/4kbJriSdgcb6yoXjcSiobQBnoruXmRxVo7eN6OMu+u5Elw2jKhtGgFPrCxK3KtUGa5ifWHblPN+mq3F3ZgLgepNjudPQ1sDC5tjRb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(6029001)(346002)(136003)(376002)(39860400002)(366004)(396003)(451199021)(36756003)(2906002)(38100700002)(5660300002)(8676002)(8936002)(2616005)(38070700005)(86362001)(110136005)(6506007)(6486002)(6512007)(316002)(26005)(186003)(478600001)(71200400001)(83380400001)(82960400001)(122000001)(41300700001)(66574015)(91956017)(64756008)(66556008)(66446008)(76116006)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZE5LeVdMVU96RVFzMXJoOTBrd0Z6MFB0cDY4M0Uya3gzeVB5N1NJejVvWlVK?=
 =?utf-8?B?ZHZWejFMb3NUN0Z3eWhHVFBGdnp6V3BkV3lZa3Qwc1p5aUI0eTdCYTRpaHJV?=
 =?utf-8?B?dHRLMlZTeEU1VGhKV0tCQTl5cWcyTmpOUmw5REd2aUhLMEYycjNjejhoanRJ?=
 =?utf-8?B?NnBTOHJyWjNVcEJhQnBoM2NheU0yRU1JYTIwVWF1Zld4cFZhWkRUWlpTak1k?=
 =?utf-8?B?S0FDS1JGcDF2UDJoWXV0VHg4Tzl2OWZzZW0yL0RrZ29zVmphbmNyNHpVUGo2?=
 =?utf-8?B?Mms4ejFFZzA5RjVTcG5ZbmQ1MDFVdGJTaTJWOFlBMFM0NjlxaDlLS3RuNXkr?=
 =?utf-8?B?VW84WUIrd1V3K3dpRXdRblV4czhLYnd4TGdEV2ViOG9kbWYxTTU0UnZyaFFl?=
 =?utf-8?B?Z05xa3FuSlkxUEwwY09sMDgxVzFqdkJtdndDR1RWdHJ2UTYzNTRVUExRQTVS?=
 =?utf-8?B?N21kUUlWKytSWjFQSDh3SkcxaEd4THQvR1ptQytDa1h1TmJ6SnpIa2FJaUtt?=
 =?utf-8?B?SnpBZ1FWTE4yM3VOc2I5M2t5bitUa1EzNkFEMW85QlovYkFTTXkrVmFkaXEr?=
 =?utf-8?B?UGVUVTJnZGxQR1JuaEY4Yk9OWW96SmcrOU1LYjFVWlhvU1kzbkNMRXNuSjJH?=
 =?utf-8?B?VlhyL0dpWHpGdmhQanlXSzJrdWpNbnppZlpaUkJkdXA1bW1NYllUckwyZjJi?=
 =?utf-8?B?ekFxU3JKOFAwRGZvL1VKTHBoaDlaL1Z4ejJMZHBIR012QlkzUTFHaVFOcmlW?=
 =?utf-8?B?LzlUNklsU2lHK09WcEFyRmFJa1VPNWM3WXA3dVZpdXJCekxybFhVVzZrTmsx?=
 =?utf-8?B?RkdsTmw0bTAxMmJ4WmlBR2kzcDBHTXZNRGpLZFdDTU91elIyNkNEbk93K1Qx?=
 =?utf-8?B?SUZXdXhyUk1VZmVwY3BUcElTczRhSmlFckdQRjV5dkdzUDFUYTZaQmdaZk0y?=
 =?utf-8?B?TXVoRG5mZDEyeG8xdGw4akxvTHd0cFk0RDgyNHBON0ZDdFFmNjBaNW1KWHFJ?=
 =?utf-8?B?aG9mLzczdml0aEl4SGhpWW1nVk53UjVJaE5GdzJXalY2VWxLdWtRQmExQWRM?=
 =?utf-8?B?Y3QrTXdXWkE0c0tZY2loN0Q1Tk54VUZ6ZTBmemRmeWNxQUNRNUhKRU1RajhF?=
 =?utf-8?B?SVRmbzRMRmwwOEphak9pMS9Qc0ZHWUlvM2lQd3dyVGNPLzlkZGd4YmoxdkV2?=
 =?utf-8?B?ZlJqb2NGRGROU0pOQnpyV1R3dm5qeFExOTNyTGpxeEVFQk1FbzEvUWtuTE9w?=
 =?utf-8?B?Tk1lelVrSU9QWUZtMm50TTEzVzVqWTlEYTlFb1pYT2VWWk1nMm5nTEFGYTNw?=
 =?utf-8?B?N0kwRHpjT0NuRDdVd00zTXJCNk12RENBc292M0NScDJwdWMrbWF2dy9pS28z?=
 =?utf-8?B?RGtBcUNKWTRBYzNnRmdldHdMcldxY003b2ptUXVFQ0x1cWt6RUI4WVlEdlZ3?=
 =?utf-8?B?YTRsWXhCcy8vcjFZYnBLbUpwSWlvdE1KU25XZHQ1STVwUDhDamh4M0UzbGR6?=
 =?utf-8?B?dWNzTm0vZGZKVkdXeTBQNlNvZXh3ZnRRWXlVNEVnUjhYUUxyZUtBRW1FNmoz?=
 =?utf-8?B?aUx5QmYxY0FuY21hOXZSSG9SSXVpUE4vMXhkZDZZQ0xCWXR0bnROUTZpZjNw?=
 =?utf-8?B?S1IzR2kzTlB6ZjRIMktZSTVVV05XN2J6TWdYQnN3dzJiZUw1RlNGVExabzRM?=
 =?utf-8?B?YVJDVkI0MFFZTXg3Ynd0R3YvNDgwZlJteU9ITEFlVFp3SHB5TXhXR015dUt6?=
 =?utf-8?B?UzJFYmNzZ3c0UlFVS2dYQkR6L0tQbkduaUd6TUFEaW15SHZJSzJlYlVNYzFy?=
 =?utf-8?B?cGFwaEM3UW9KR3VaZkk0S1JvbHBjVzBZR2FKTFZtUzNOc2s4bmxPQmNidUVi?=
 =?utf-8?B?Mkx4ZjRSZUpVYTE0SzJFRTkxQmxSMGo0STlFR0JVeExXSGtrNE8yc1QrYTNM?=
 =?utf-8?B?dHJEZW5kV3hwdGwzWk00SkxpeThwNit1TlowaFRFVzVDaW92aTBkMXV2eHpo?=
 =?utf-8?B?Vm5Dczdza1lJaWMyZ0JrcDQ4T3hTVjJpNmFUdERCWjhmbE5Vc2IxdW16YUZ6?=
 =?utf-8?B?eDN2Zmdsa3FXbUMwZ293QmxMMEZiV1hKbHgyb2FXbTBSdEJqNk9GOGRrM3ow?=
 =?utf-8?B?WFdHSCtGUUwxQlZSRGdaR043eEplamV1Unovd1k0M0EzSGlTSVRXbklxb0Nl?=
 =?utf-8?B?NEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C40A6F23AF8D4C498A5D31D73590A605@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeee578a-6bf9-447d-6653-08db47d46640
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2023 10:36:17.6654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tjMYu4ef2BxKMXcht6kaqCKaqlSFElrw2oQvUNTlnuFR2XeVh3BTcZidkZUiHCgxPEKUvyrcbtoVQce7QeOy8WTSratxchuRYDKJteReAdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6881
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/psr: Implement
 WaPsrDPAMaskVBlankInSRD:hsw
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

T24gRnJpLCAyMDIzLTA0LTIxIGF0IDE1OjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSW1wbGVtZW50IFdhUHNyRFBBTWFza1ZCbGFua0luU1JEOmhzdywgd2hpY2ggbWFrZXMg
dGhlIGhhcmR3YXJlDQo+IGdlbmVyYXRlIHRoZSBleHRyYSB2YmxhbmsgYmV0d2VlbiBsaW5rIHRy
YWluaW5nIGFuZCBmaXJzdCBmcmFtZQ0KPiBiZWluZyB0cmFuc21pdHRlZC4gVGhpcyBpcyB0aGUg
c2FtZSB0aGluZyB0aGF0J3MgY29udHJvbGxlZCBieQ0KPiBUUkFOU19DSElDS0VOWzIxXSBvbiBz
a2wrIChidXQgZHVlIHRvIHRoZSBmdW5reSBkb3VibGUgYnVmZmVyaW5nDQo+IGl0J3MgZWZmZWN0
aXZlbHkgYWx3YXlzIGF0IHRoZSByZXN0IHZhbHVlIGFmdGVyIERDNSBleGl0KS4gU28NCj4gZm9y
IGNvbnNpc3RlbnQgYmVoYXZpb3VyIHdlIHdhbnQgZXZlcnkgcGxhdGZvcm0gdG8gZ2VuZXJhdGUg
c2FpZA0KPiB2YmxhbmsuIEJEVyBpcyBhbHJlYWR5IHNldHRpbmcgdGhpcyB1cCBjb3JyZWN0bHku
DQoNCkkgY291bGRuJ3QgZmluZCB0aGlzIGZyb20gQnNwZWMuIEknbGwgZ3Vlc3MgeW91IGhhdmUg
c29tZSBvZmZsaW5lDQpkb2N1bWVudGF0aW9uPyBXYVBzckRQUlNVbm1hc2tWQmxhbmtJblNSRCBz
ZWVtcyB0byBiZSBpbiBCc3BlYy4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY2xvY2tfZ2F0aW5nLmMgfCAzICsrKw0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jbG9ja19nYXRpbmcuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Nsb2NrX2dhdGluZy5jDQo+IGluZGV4IGEyNzYwMGJjNTk3Ni4uOTY4MjMyMzUxMGNkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jbG9ja19nYXRpbmcuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jbG9ja19nYXRpbmcuYw0KPiBAQCAtNTYy
LDYgKzU2Miw5IEBAIHN0YXRpYyB2b2lkIGhzd19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFdhRmJjQXN5bmNo
RmxpcERpc2FibGVGYmNRdWV1ZTpoc3csYmR3ICovDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF91
bmNvcmVfcm13KCZpOTE1LT51bmNvcmUsIENISUNLRU5fUElQRVNMXzEoUElQRV9BKSwgMCwNCj4g
SFNXX0ZCQ1FfRElTKTsNCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgLyogV2FQc3JEUEFNYXNrVkJs
YW5rSW5TUkQ6aHN3ICovDQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV9ybXcoJmk5MTUt
PnVuY29yZSwgQ0hJQ0tFTl9QQVIxXzEsIDAsDQo+IEhTV19NQVNLX1ZCTF9UT19QSVBFX0lOX1NS
RCk7DQo+ICsNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFRoaXMgaXMgcmVxdWlyZWQgYnkgV2FDYXRF
cnJvclJlamVjdGlvbklzc3VlOmhzdyAqLw0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfdW5jb3Jl
X3JtdygmaTkxNS0+dW5jb3JlLA0KPiBHRU43X1NRX0NISUNLRU5fTUJDVU5JVF9DT05GSUcsDQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLCBHRU43
X1NRX0NISUNLRU5fTUJDVU5JVF9TUUlOVE1PQik7DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg==
