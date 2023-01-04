Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BD865CD81
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 08:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F49A10E0A3;
	Wed,  4 Jan 2023 07:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99DA10E0A3
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 07:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672816311; x=1704352311;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pZT8WyrrjSVuaVtyHLgVNTUPXi2Cxdk6l0hljRg4xkQ=;
 b=TyBk04f/m18cU6Co9+xebVGULHUvvl3CVGKjnxBogot3hV0FBrCEp025
 k0FX0L1/W69zJ1vAtrTpHYikOujwMNyaap5fefAe9ZclVSYmOifhNDhYt
 h2fgAqy0qDoqqRr7XR8kYUQWrCPtRCQQGh5YDcPfTKmwSynCEj6CN7jHO
 Kt4Sk/CZtL67JTvFZtW1Dzx/PkQJkaUcbKUQc465UTfYR2xIM5hgwAMfv
 Th1yFuU3hVRffsq6pIVxHBRZdipxhzlpEr9I+nIBXalta0Jt93JjM22x/
 93gwZaQ3DVtypwnn1ThJOfSAd96BV8CkeJDVSBVDm8g9x7sNIxfFXo6YY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="302232551"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="302232551"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 23:11:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="687443195"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="687443195"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 03 Jan 2023 23:11:41 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:11:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 23:11:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 23:11:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JsrWLrp5EdAxVdj+Gak/yR65okhSIN1VnF9LdBQM14faj620ySb7z+f6dNhVcuybQYLR7c8lW1gBcwjEKZP4NOSKpNvGpprXfWHZUD7km8E1mPf6X8HGg2/I2GGdCgwjMG2GhBjMY2q7tEt+SSvb8Nyx3qRNV7ciwOsN2Z8h3YJH873YCR8cK9t3KLIhoeGbVs2N3l9tjZ/TuTf2vX3YTFxjSgAmoTf/Hj/lRqcgwWJmxcbEFi2q3N0p2XDUuxVI6cK1Piyd6YGTi9h+nCbhkk4s4pzv7KqXjkwBT4AZByJ/FRibEtnuckh3/CJ7lCAvbqch/Lb2CdxqhFyutUrzFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZT8WyrrjSVuaVtyHLgVNTUPXi2Cxdk6l0hljRg4xkQ=;
 b=nGtaWhoE8BYQoJVJ7nemKtp2QyYJcFQRJBX2X9+Q2Rax+FOw5mqIvirVaHQNoGQyfPQJ8O81oABsaP7T8E3u7EUF1GBqmjIeKJs7fg8YK7Y2CBtQDzSeTxwsXfD7RGgZ/ocxrbXoXbXbUyrvdFYmOEe4QcYg2WXv8ZIpBlId8KM+FEw5YwK14d5aGpLq4tcFGjiCiq9P6gsBf/dN/Q8gyk7BlxnFHYNNEG1b28GkFVOsrlR09+6pgIAtZg04/OpGCjYoA06u0ZnjZL89UEoZOptPUoMFLU8BM8584PRI0Oa54GVG4+dWO7QNDYQenJLb1vEEDqW+NOf5FvN8hH460A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB5381.namprd11.prod.outlook.com (2603:10b6:208:308::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 07:11:39 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 07:11:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
Thread-Index: AQHZEObYtbs3EqJRBk2wnLvGPNg23K6N7aOAgAAHO8A=
Date: Wed, 4 Jan 2023 07:11:39 +0000
Message-ID: <PH7PR11MB598130075CCAB0D67AA10471F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-5-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981820C64B5C70CED4B8522F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981820C64B5C70CED4B8522F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB5381:EE_
x-ms-office365-filtering-correlation-id: bb7f2d90-6dc2-4db9-d452-08daee22eca1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mgPzratdHN3Knkil7ChwcllgJSp78HD2FcA5WN1/oJJheKsvsFZu8g76SEI6OEpFyCAkU3XUosS+tS1kFLabAgOuvcaLNf1QSLG34TtwPA0lb1GdaxEM+Q2K5sN8xHR1wTk0P5zJ6sfjGdmIjuSK8wrA8g8SH5rgVHbI56DK7+PBISf94+uYYdK9Hrc5pLFUUGbIzN618Phgg12Yodj5QzNDvyZuwYHEFMGHrfAcHCo3Rd8q2aUa9zbtinS2k48QmDib4fS0xT/iRW0KPUy27VqM1k/L8evIOTFNMmDdV9Fd/xmkLIzeBHpJSolNH6jV/kbGq1zWgiWCXxZjaEXz/ZJH3A/4KbrmqLQolL/6alYgmeWL8UdYp6gp6FSv4ojZA9jzTX2ZO84wQ4hHQ+NdvFRHR/S0PpNw1HwdEQiMYNol8WkBYLCnn8UU+00CSsw00ty5ZftfyL6jqIsqXY7jiV+Af5WkZDuN46R1CujsPfadpZWI8t5l6BY0C+8s8O0YhBW+2Whfsi+PtD+ww1DH69/SaS4X5YHBB7vv/aFASOh6wH48tiwx1ch38kP/hLhOdpSsfIqKlDwVTa9HpCrbIQ69NWmzF1QH5w5RkjmcQEL7UbAL8I6YsJlaaySTb4M1i6OgtF7wsXq2tHsbbFBvDksg+LxmZuTy5Aiu3rzSBUTCVjKfk3JT6SaSlNyvOSPa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199015)(316002)(2940100002)(38070700005)(186003)(55016003)(26005)(71200400001)(33656002)(478600001)(9686003)(7696005)(86362001)(6506007)(55236004)(53546011)(110136005)(66574015)(2906002)(41300700001)(52536014)(8936002)(83380400001)(5660300002)(66476007)(66446008)(66556008)(8676002)(64756008)(38100700002)(76116006)(82960400001)(122000001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmtPRlZ3Vk52OERqTTRuTUJzbEpvRGx1dlg1MlVKcDdQNEVsRHJwZWp4dWZT?=
 =?utf-8?B?UUo2b0FESEprU3lUS3cxaTZRK2ZHMUg0RTNycnFBdVgyaGRDditZWWREcVJZ?=
 =?utf-8?B?OFViYm5GTCtGQ2FjdW5LWkNtNWErOW0ycEJUeTIwYVM1Q1A2NU5XNG5LWW1k?=
 =?utf-8?B?VGZhMEJ5SllHMXBYdzlTM3VqUTVpV0tMamUyQy9oMzJPeEVjaFlrb3ppS1d6?=
 =?utf-8?B?Q1VHSjJyUE5iaVFvL2ZicWRRaW55WnVMQWJQcXJWKzc0MlNzQ3lISzdBVEt4?=
 =?utf-8?B?Mm1LNS9GTnBNaFJJdzg0ZkRFejQyYWFhNU9md0Y5eUhOeW1QTlVZUlpiWkZF?=
 =?utf-8?B?UEROTGpyZWV4N3JZTzJsT29VdXIzOCtFZ1BzTkVDbEVNUlRQZ3EzQUUyclNU?=
 =?utf-8?B?NnE0L0crRERER21DWTd1ZGNZS1BhdWorQWtNN2RCRzdBbUFVRXcxQUZ2VWd4?=
 =?utf-8?B?bDl3U3MrMGxWa1ZscWVkZGdTSDlFdzFhNTlZRk55a3AwZ3lXcDNXWUErTmVo?=
 =?utf-8?B?VjV0QkRFZHgyR0ZRcEEzWXo1eUxTTkE0OUF0SCs5SUw4T2ZVcFJZRWU3MkQ5?=
 =?utf-8?B?cTlOa3o3azBESGEzbC9YMEIvdlFCcTdkSmFwUmx0c1grMXhleGZOY3JTZ0lE?=
 =?utf-8?B?S2RUUlNPVXljQjl2bHJIbFA1dkJiSDF4QS96WjUzVnl0bnNQN1hNcyt0VzM2?=
 =?utf-8?B?NlNaekpRcU8wNkNmM05TM3hzREUvclp4M3VmL21mZWk0K2x4T2diajVYN2J0?=
 =?utf-8?B?aS9oUjlxc0E3cDBqcEZFMjJRcTZsWGJDWFRKYjhKNjNuU0pxWWZzK2tYenZH?=
 =?utf-8?B?MFJGY1Z6MXVxVUR0R0lzemVBQmdnRlhDNW9idEgxK1ByeEpyYThseXZqMzJm?=
 =?utf-8?B?Z0VKRmR1TDhJWWdZU3NqTk0rbXZSVzVNMjNqd25TZEw1c1hNS0hJL0djQmpt?=
 =?utf-8?B?c3VNbjVkaHdxTDdIcytTU2oxcHVCQ2hUMk5kODYvNEVqK0lNNmgwampqWnRX?=
 =?utf-8?B?OU1iTnBhdG5ONWp3dkcrMTl5WFNKQWcyeVBqWmk4WUpDVy9oL1N4Tjl6YUNr?=
 =?utf-8?B?ZVpBRTdxWU5Ka1BMYzQybUNkd3A3bWoyMzlxQ3V1RVRHLzBzOEJLempMUkdV?=
 =?utf-8?B?Tno1NnFXV0dQN0hKQmtqTWQ1Vm5CWTl4RmtVV2R3M3NYWlpZbUZWdjZKeHBJ?=
 =?utf-8?B?RlJZWmdTbDBnU1AycUNwNkI2TWhsKzlpVERjNHhYV1RyUVhndzU5WVlERFpC?=
 =?utf-8?B?UzRCZE8rMXBqOUs4empaQnBMU0dXYi9kcUU3WDY4czVlZTh6N3BVcGZyUG93?=
 =?utf-8?B?QTRPR08wSUlMbGN2T3lQWCtlcm1DeEtyc3hiRVZYc2pIRzZucnlRUUpobTVH?=
 =?utf-8?B?cklTQzBwSk9ETE92TGkrNHNFNXg5K1RPM3dwL1U2N3RuNkNrcXNEM2FLK1Vl?=
 =?utf-8?B?bSs5SysvbS9aMjdMeDN4NWVzTjVNNkpsanhRL3dDNDIzSWFKTUwySlZyTDRm?=
 =?utf-8?B?bmN2N1R0UVpGak5aRFZQYkYyUHRhYWRlZmZMSWFZRVhXOUdpaHdGNGthSkto?=
 =?utf-8?B?emNmam5ReXAwdmVvZU02aGVJYlBaTU5WcUxadHdCS2NjYVJsZ3YySzFoaW95?=
 =?utf-8?B?alYzemppQjQxT3B2clhBN2xxQ3g0L0VWWHdnOFNmQXZNTFRtblRETmpoN3hP?=
 =?utf-8?B?TkNTWDB1bURmdVFIQzVvbFZMRjZjUG5PaTB2NzJ2aGM2VmE4ZHovUEJ5VlQv?=
 =?utf-8?B?d2d1RG5leGdkdndhcm1aSUpPRWRQZzFZRSs3OVFPTVNQekozNnVQTGQvbG9N?=
 =?utf-8?B?cUplQzVCenBpS3pMUVJpQ2o4WUFYWnNHVWRGSDl4Z09FdWxLUGpvOVBEWXJY?=
 =?utf-8?B?ZVp3eXJ5d2pxQmZNSEV3RkRLdDBjek54cHptd1FMRUgwS1c4bW0xZG5oQjJH?=
 =?utf-8?B?aUlENGRrZ3ZBamErNUEzdGxzdDY1T0planNGZ2pkeGNNUFEzenppeHlmOFpO?=
 =?utf-8?B?dC9yODNoUk40TEkzN2hQdnNqWEN6ZUJzRUlQa09Rbm1xSzdqNFl3bEJzNGdo?=
 =?utf-8?B?dWQvQVlGWTNKaCtQZmxPMWt5bFBDMnVnSGttVHc1T3Rva2Z4MDFTRzBkNWpa?=
 =?utf-8?Q?5U9W2MiJSXfhuPoDgP/NDrixy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb7f2d90-6dc2-4db9-d452-08daee22eca1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 07:11:39.2362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7FwgYKNXSwVGAqx5Zqir/v0+q6H0XbCTQSzLyv7zLsNtT636lSe1j7gok1GjPZ7M3NeUHFlXtHe9uzY2Ab/uVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5381
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDQsIDIwMjMgMTI6MjggUE0NCj4gVG86IFZpbGxl
IFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
NC8xM10gZHJtL2k5MTUvZHNiOiBGaXggRFNCIGNvbW1hbmQNCj4gYnVmZmVyIHNpemUgY2hlY2tz
DQo+IA0KPiBIaSwNCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9t
OiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24g
QmVoYWxmIE9mDQo+ID4gVmlsbGUgU3lyamFsYQ0KPiA+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIg
MTYsIDIwMjIgNjowOCBBTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDA0LzEzXSBkcm0vaTkxNS9kc2I6IEZp
eCBEU0IgY29tbWFuZA0KPiA+IGJ1ZmZlciBzaXplIGNoZWNrcw0KPiA+DQo+ID4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPg0KPiA+IGZy
ZWVfcG9zIGlzIGluIGR3b3JkcywgRFNCX0JVRl9TSVpFIGluIGJ5dGVzLiBEaXJlY3RseSBjb21w
YXJpbmcgdGhlDQo+ID4gdHdvIGlzIG5vbnNlbnNlLiBGaXggaXQgdXAsIGFuZCBtYWtlIHN1cmUg
d2UgYWxzbyBhY2NvdW50IGZvciB0aGUNCj4gPiA4Ynl0ZSBhbGlnbm1lbnQgcmVxdWlyZW1lbnQg
Zm9yIGVhY2ggaW5zdHJ1Y3Rpb24sIGFuZCBhbHNvIGFzc3VtZSB0aGF0DQo+ID4gZWFjaCBpbnN0
cnVjdGlvbiBub3JtYWxseSBlYXRzIHR3byBkd29yZHMuDQo+IA0KPiBmcmVlX3BvcyB2YXJpYWJs
ZSBpcyB1c2VkIGFzIGluZGV4IHRvIGZpbGwgdGhlIGRzYiBjb21tYW5kIGJ1ZmZlciBhbmQgZ2V0
dGluZw0KPiBmaWxlZCBieXRlIGJ5IGJ5dGUuIEl0IGlzIG5vdCBpbiBkd29yZHMuDQo+IEJlbG93
IGdpdmVuIHRoZSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbiBvZiBkc2IgY21kX2J1Zi4NCj4gc3RydWN0
IGludGVsX2RzYiB7DQo+ICAgICAgICAgZW51bSBkc2JfaWQgaWQ7DQo+IA0KPiAgICAgICAgIHUz
MiAqY21kX2J1ZjsNCg0KUGxlYXNlIGlnbm9yZSBteSBwcmV2aW91cyBjb21tZW50cyAuLi4NCiAN
ClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiAtLS0NCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDQgKystLQ0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBpbmRl
eCA2YWJmZDBmYzU0MWEuLmZiY2JmOWVmZDAzOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IEBAIC05Nyw3ICs5Nyw3IEBAIHZvaWQgaW50
ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2INCj4gPiAqZHNiLA0KPiA+
ICAJdTMyICpidWYgPSBkc2ItPmNtZF9idWY7DQo+ID4gIAl1MzIgcmVnX3ZhbDsNCj4gPg0KPiA+
IC0JaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBkc2ItPmZyZWVfcG9zID49DQo+ID4g
RFNCX0JVRl9TSVpFKSkgew0KPiA+ICsJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBB
TElHTihkc2ItPmZyZWVfcG9zLCAyKSA+DQo+ID4gRFNCX0JVRl9TSVpFDQo+ID4gKy8gNCAtIDIp
KSB7DQo+IA0KPiBIZXJlIERTQl9CVUZfU0laRSBpcyA0MDk2IHggMiA9IDgxOTIgYnl0ZXMgRFNC
X0JVRl9TSVpFIC8gNCAtIDIgPSAyMDQ2DQo+IGJ5dGVzLg0KPiBXaXRoIHRoZSBhYm92ZSBsb2dp
YyB3YXJuaW5nIHdpbGwgYmUgdHJpZ2dlcmVkIGFmdGVyIDIwNDYgYnl0ZXMuDQo+IA0KPiBSZWdh
cmRzLA0KPiBBbmltZXNoDQo+IA0KPiANCj4gPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwgIkRTQiBidWZmZXIgb3ZlcmZsb3dcbiIpOw0KPiA+ICAJCXJldHVybjsNCj4gPiAgCX0NCj4g
PiBAQCAtMTY3LDcgKzE2Nyw3IEBAIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IsDQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gPiAgCXUzMiAqYnVmID0gZHNiLT5jbWRfYnVmOw0K
PiA+DQo+ID4gLQlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRzYi0+ZnJlZV9wb3Mg
Pj0NCj4gPiBEU0JfQlVGX1NJWkUpKSB7DQo+ID4gKwlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2
LT5kcm0sIEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDIpID4NCj4gPiBEU0JfQlVGX1NJWkUNCj4gPiAr
LyA0IC0gMikpIHsNCj4gPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIkRTQiBidWZm
ZXIgb3ZlcmZsb3dcbiIpOw0KPiA+ICAJCXJldHVybjsNCj4gPiAgCX0NCj4gPiAtLQ0KPiA+IDIu
MzcuNA0KDQo=
