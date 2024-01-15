Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C990D82D402
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 06:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A8A10E033;
	Mon, 15 Jan 2024 05:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860FC10E033
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 05:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705298231; x=1736834231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=utn78ez3+wipOtlbfHn9m1IrRpxuFfLWNBdt0NpVnXE=;
 b=gvzU3BLxynvUt5gt3F6ETxOQ3p66SN+hlXJMo6lL4n6M7zcrcaINldsg
 W+5dvzLmWYxL/wanDNNzVZfQ7aO3xumDCotw2q52BfW0Xxs9SCo5z55E0
 gmQ9umf9NW5nn4/OLl1wHds7LCA6JRuch0Rxw5p222b4nDfk+G/BILTVJ
 TFZFBwpO0ZJotYdAGkfxu/4/QbnnOj8ETuiN3xv22fRly3KDrHFpkYsrX
 VQpjD90qlG3SfvSNG86pcdNIipH7decwqHMsE7TE+kWZfHXlmYGjLjEsW
 V29tLr+1CuWzOVH4LGPZN8dD6uTjh9GmibwXUk7OzVZw9CRPl1YV+oFxi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="6633609"
X-IronPort-AV: E=Sophos;i="6.04,195,1695711600"; 
   d="scan'208";a="6633609"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2024 21:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="733210586"
X-IronPort-AV: E=Sophos;i="6.04,195,1695711600"; d="scan'208";a="733210586"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2024 21:57:09 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 14 Jan 2024 21:57:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 14 Jan 2024 21:57:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 14 Jan 2024 21:57:08 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 14 Jan 2024 21:57:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TAuPpfYhYsP67Ek+3Q1FJefFFhAtz89gcV6W/qB8A4rq4nrLxmqtXPlHSf1DOG59OkwsWE8LS+axiuuc6gq665nZrSaVgsBAWnyPyB8k/eRHfm5uqs1251UfyJ/2BzJQvJjx79m60lPABXTevU5V9m9JlYdC1F5UkMCinp/XzmeqXgS088FobnTxxSW058gh+WtmP9T5Bhln/qANYtsiPonmr0DezSx/AuCpF4wdpwbthH9wkF7hMS4yACWWTOwE8e2WD1yjRth8Zvo5O751Bb7CElfSYGBQKp6S0sScxAn0tsFVdq66WdKU0IQJoHttLGBv41y2242Ete0wF3NY4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utn78ez3+wipOtlbfHn9m1IrRpxuFfLWNBdt0NpVnXE=;
 b=APget9pda+82jcGeNX+YESav5dZIr8ZGwK8tKufgQd4aGmDrc6LYSfUO5aK5xILkHxqNrwjVBElpQS0wvIAb2lpjpbibiH/p29vlJKBon2w3pq3ZavX8EXUwuWOV0DT6Wd6Wq0umjoie8h+z2XTdEkS6TAmrDMQ19XLRq7YNs1zr4abhAFrpq/qy/DSTmip2tr3h89kxxaaPv5sk5C+JdUgs577u4f+gs4tYoLJpXG5l8jdmsdjysaDhYgcUorQOOKM7gQPpQKIUoerBg9RQq8usB8QwTQAjNLw+JynQ8v7ITHncUaGR9yW/WlyOF+K2Z78uBTMhpC7KUlH9Dor7iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.19; Mon, 15 Jan 2024 05:57:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7181.026; Mon, 15 Jan 2024
 05:57:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: CAN_PSR and CAN_PANEL_REPLAY can be now
 local defines
Thread-Topic: [PATCH 2/2] drm/i915/psr: CAN_PSR and CAN_PANEL_REPLAY can be
 now local defines
Thread-Index: AQHaQuNjPYmFKOtdMkCRxWdS17kccrDTAsyAgAdmwoA=
Date: Mon, 15 Jan 2024 05:57:06 +0000
Message-ID: <3579a9062207bdb2c0c4da84922d39fdc1b2780f.camel@intel.com>
References: <20240109100517.1947414-1-jouni.hogander@intel.com>
 <20240109100517.1947414-3-jouni.hogander@intel.com>
 <ZZ6TweaFcd7emgMZ@intel.com>
In-Reply-To: <ZZ6TweaFcd7emgMZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5105:EE_
x-ms-office365-filtering-correlation-id: e0c804a2-56f8-4d7e-cbd4-08dc158ece47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6uspwxaxT9+KbIB+2Gspei6wU5/9Z9T4ImGZE/uiR/QJFaEHl0pKnD9v3W+EQPUYP78Mpcgr2nQsWItHp9C5FOqbiMKJpDiwRAcX3XBT3zmikb0UT/NTMCgekZjgHwwMS/DuxEAvwS/e4madD2MTq3Xw1qBOTsn+uAAs0RLOp5LgxFqO9Lzb47GWJyfmaIk+VEeFGzFRMFzmI0HdO8y0huVhXjCL/MkL3waYkBqzYIfq8Caw/8Cf+MJUBrxG2QX1Z8AV2bHj9dUBk6sPbvziNE410eobN1s5bWjIy70hCh3paTwUq0KG8ZVuUgLueYiepOllj/p8MG/1Z7Xbbpx+FzpW7j0K/BCVneii3eO8sinsl5zTA22jRLmU0p7Bp3irtbwEWJ8QrzdR9dpInqoOEM7f7f8zo+EgB+YHY7AOr8At+QxHS/hNFpr4kOoaujgopjeDIBN7hKK5SZJXa+d2ef+cpbvAiTm6T7qIF5b7qdIphqdZLbLGAVx159uSFwjh8X5hDfPUZeq0x62t/ydSJSWnp9h6d+2Ny+Lsb8c6/9qX8IkzFCotvWQ8mP30E9BSX6McGUEYn487hJtkysbsz3zx7UpmVZubuEOCj/qJz+/qmGo92jCq+wOLlmOuxVXM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(366004)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(6486002)(6506007)(6512007)(26005)(66574015)(36756003)(2616005)(71200400001)(38070700009)(83380400001)(82960400001)(86362001)(38100700002)(41300700001)(122000001)(478600001)(8676002)(4326008)(6862004)(8936002)(5660300002)(66946007)(91956017)(66476007)(66556008)(76116006)(37006003)(66446008)(6636002)(316002)(2906002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDVSOHFqRHgwL3hXYmRuRmhZSUEzeEY5ZDBINGZQWHBteVhsSktkeGpIYlU2?=
 =?utf-8?B?dHV4NGIyNjF0RGpWZUhmVk54dFRPRWhkRkx1U1hhck5Xd2p5UFFrelhEQmx4?=
 =?utf-8?B?V1VwVmhuak40N3I4djZnN0VmU2M3TUdUd0VGaGlLRU9EMmttWHUvdVkrQUlH?=
 =?utf-8?B?ZU1pV0JWY3F0WmY1SEpuZEhtYlZPTmlKUkNYSGNFVlVwa1dvWmZMcGZwdUFl?=
 =?utf-8?B?RXlabFNiUnc2NXdOY2tENDM4S3lyc0JNVU9BR2pwS2tLK09hOGZ4YWt1Zjgx?=
 =?utf-8?B?K3BhbHg4ZFV0WG9wcEdidUx6czRzWjg0eldQUWNRUzlLdkNjdGlKSnl6YjF3?=
 =?utf-8?B?OE5UeUtHOHFuR29HVGczWDZ6N2NwaExpall6bXNqZEk2WTNPVVdiaTB6MTMw?=
 =?utf-8?B?YUdxVFRsMzc3M1ZGYW10T0cxNEFMTEd5ZHFEaXhXOUZ2WlRzL01sN0lpVGtR?=
 =?utf-8?B?ZUZCcDlhWVE1OWhKYWpXVHVCTVhoUERZVi81YzBVdG5VenlGcmRhMkFxeEJV?=
 =?utf-8?B?azVPR2haK3EvWjRJeGprTFkzYWR5dXlKMk9OdGJrb1pUemE3b0JHUC84eXVT?=
 =?utf-8?B?cnNzT0hNeFNSTzBZOStEbHhIWlEvWlJGM0VwYThrOUZMMWNJamRKdHdYbXU3?=
 =?utf-8?B?NU5nYm9uMjF4T0pwTm56M1VFdXd1WVZEKzhzYUNwZVlYUzBWTXFVUHVKeHU1?=
 =?utf-8?B?UmFSMVNmSldCOXVGVlJTVXJ4WndxdGJ4RnQzbU51VHlmV0Vzc3IyeVUzVVlK?=
 =?utf-8?B?dys5VjZiV1Vhd3RGaWdBYldaUEdRa3RPTVkyQVR5ZzNTZ3NSNHdncmJOMzRC?=
 =?utf-8?B?aFFtNXdia1FKQ0Q1YUxvU1l0UE9xQUlINkpYb2VBVERlTjhtMWRiMU9sWDFw?=
 =?utf-8?B?c1RnNTF0MnN0amdBWlltRmtLak9oWi9EeTN3clg0bjdjRDVtVDFJVXRYNFlk?=
 =?utf-8?B?TzNRTTdwVE0vMWdGNEluenFVN2JQZGJyMk5hcWN5TmdOMkNzbVRyMzg0YnFX?=
 =?utf-8?B?bngwOE1QU2Frd0l0YkpNVjllRUpIMjRlb1VkSmxiTWcyZWZ0dmZ6VXI1MmJq?=
 =?utf-8?B?R1RLV25pU0g4MGs4Rm9XVkFWMzZ5dExvb2JCT1prejRqQmVLZVRRV2pPVDZN?=
 =?utf-8?B?cWRVSVpUdDYxdGFvOE1LRVBoUkRDQW82a0lHeVNCRVp3YmM0aExuNGcyaTNF?=
 =?utf-8?B?cmdWSmc0RWxPWS9EdVVLR3Vramkrbnd6UllmRnRhZDBHTG4wVHE4YWdaSHBH?=
 =?utf-8?B?UjBjeFRJMkZkWTVIMGVrS2o1eHN0SmdEQ3o5MlJTaGJ5eFIwd0hFUGdEMEYz?=
 =?utf-8?B?VXZGQlZ2bkRJMW5oV2ptR09Bd2xkNUdST1VpZUpNYldxNS9jd21scXNibXYr?=
 =?utf-8?B?bURhS3dOR0ZTZVNRZ1FGTGNyTzZnaFVlT29nZmlnUnNWbEkvM2ZjNnNZcUZu?=
 =?utf-8?B?R3NVVm1YMmNTaTZaRTg3VDJDQ29SQy9zSDNFMWg0ZEtLTXVUUEFLbHY1eHVx?=
 =?utf-8?B?QlVmWmxnMkRrSk5tTVk4NHZWa3NkcW9hb25MeWR4M3VhMjFzTFREYVRXQUVP?=
 =?utf-8?B?UjluKzVvVDNhd3JzN0ZZK0JROGhMdUYzZXFvWHlFak54NHI2dGdtMzJZZmNU?=
 =?utf-8?B?b1haWE5FVTZJcS81UjllR2x0bTlTRWxLRXRNNDhSSGFqSWlPWndXWVE3eU1o?=
 =?utf-8?B?MTBMTE81U0wrQ1QzQThYcnpoV1o2Q3I1WE4zOTdRc25sY2xkbG9HdDgvc0NS?=
 =?utf-8?B?d3lxVUxGeWpocWVib0lOVlFFNzcxQVRFUTUxMk84cWVpVXZiZ2pzd1dJU2Jt?=
 =?utf-8?B?Q0tIamlGOW9hc1VscGhIZXY4OGppOHFFT2UyNlZub1g4Y29Jc0l5TVpEc3NH?=
 =?utf-8?B?VG0ycWZhK0ZVVkNPL0VrajJ0eGdvRm1ORHdDTUtPR2lGT0VUZDZZSEQ5blE4?=
 =?utf-8?B?dTZGR2lQWkFxNWpGZzNVT1VoTkJpeDBFQmx5WGNZa1lKQWNpdDMwUUY5UnpJ?=
 =?utf-8?B?Y0U5L2JtK1p4RzgraXduSi9PWXJBcVMxNHlFd1VNZE8yZDM3MmhSQjVQbXh5?=
 =?utf-8?B?Qkp3WS9IRXg3RVRvTUErQWgwWkZuSTVBTGJ5TkxFQWwvaDFuQTZUNTI5MzB3?=
 =?utf-8?B?cllwSncxdHZSZytnVVdYUE9xQVVra1NsSzVMNVRCMW5mUmh6b2FFV1Z0ZlRs?=
 =?utf-8?B?VGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <96B2899D94250349829E705738F4E8C9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0c804a2-56f8-4d7e-cbd4-08dc158ece47
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2024 05:57:07.0056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xjh968pS8YHTLsSq+HnOI2sJjRioSw54hKBwwWmMpfBdr9OR5TfpD80NWc609X96iRsGhKYjq9IyGo2aKJSTXfm3umKNEDyIWcDHRdB8BNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDI0LTAxLTEwIGF0IDE0OjU1ICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gVHVlLCBKYW4gMDksIDIwMjQgYXQgMTI6MDU6MTdQTSArMDIwMCwgSm91bmkg
SMO2Z2FuZGVyIHdyb3RlOg0KPiA+IENBTl9QU1IgYW5kIENBTl9QQU5FTF9SRVBMQVkgYXJlIG5v
dCB1c2VkIG91dHNpZGUgaW50ZWxfcHNyLmMNCj4gPiBhbnltb3JlLiBNYWtlDQo+ID4gdGhlbSBh
cyBpbnRlbF9wc3IuYyBsb2NhbCBkZWZpbmVzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gUmV2aWV3ZWQt
Ynk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0K
DQpUaGFuayB5b3UgU3RhbiBmb3IgY2hlY2tpbmcgbXkgcGF0Y2hlcy4gVGhlc2UgYXJlIG5vdyBw
dXNoZWQgdG8gZHJtLQ0KaW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDYgKysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5oIHwgNiAtLS0tLS0NCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNTQxMjBiNDU5NThiLi4zNGMwYTVhMTQ0NTUgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAt
MTczLDYgKzE3MywxMiBAQA0KPiA+IMKgICogaXJyZWxldmFudCBmb3Igbm9ybWFsIG9wZXJhdGlv
bi4NCj4gPiDCoCAqLw0KPiA+IMKgDQo+ID4gKyNkZWZpbmUgQ0FOX1BTUihpbnRlbF9kcCkgKChp
bnRlbF9kcCktPnBzci5zaW5rX3N1cHBvcnQgJiYgXA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoaW50ZWxfZHApLT5wc3Iuc291cmNlX3N1
cHBvcnQpDQo+ID4gKw0KPiA+ICsjZGVmaW5lIENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApICgo
aW50ZWxfZHApLQ0KPiA+ID5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCAmJiBcDQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIChpbnRlbF9kcCktDQo+ID4gPnBzci5zb3VyY2VfcGFuZWxfcmVwbGF5X3N1
cHBvcnQpDQo+ID4gKw0KPiA+IMKgYm9vbCBpbnRlbF9lbmNvZGVyX2Nhbl9wc3Ioc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChp
bnRlbF9lbmNvZGVyX2lzX2RwKGVuY29kZXIpIHx8IGVuY29kZXItPnR5cGUgPT0NCj4gPiBJTlRF
TF9PVVRQVVRfRFBfTVNUKQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5oDQo+ID4gaW5kZXggMTQzZTA1OTVjMDk3Li5jZGU3ODFkZjg0ZDUgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBAQCAtMjEs
MTIgKzIxLDYgQEAgc3RydWN0IGludGVsX2VuY29kZXI7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxh
bmU7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGU7DQo+ID4gwqANCj4gPiAtI2RlZmlu
ZSBDQU5fUFNSKGludGVsX2RwKSAoKGludGVsX2RwKS0+cHNyLnNpbmtfc3VwcG9ydCAmJiBcDQo+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChp
bnRlbF9kcCktPnBzci5zb3VyY2Vfc3VwcG9ydCkNCj4gPiAtDQo+ID4gLSNkZWZpbmUgQ0FOX1BB
TkVMX1JFUExBWShpbnRlbF9kcCkgKChpbnRlbF9kcCktDQo+ID4gPnBzci5zaW5rX3BhbmVsX3Jl
cGxheV9zdXBwb3J0ICYmIFwNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGludGVsX2RwKS0NCj4gPiA+cHNy
LnNvdXJjZV9wYW5lbF9yZXBsYXlfc3VwcG9ydCkNCj4gPiAtDQo+ID4gwqBib29sIGludGVsX2Vu
Y29kZXJfY2FuX3BzcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7DQo+ID4gwqB2b2lk
IGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqB2
b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+IC0tIA0KPiA+IDIuMzQuMQ0KPiA+IA0KDQo=
