Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA1F846EC7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 12:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FEE10EB95;
	Fri,  2 Feb 2024 11:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZjWGFBC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 11:18:46 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B22F10E4A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 11:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706872726; x=1738408726;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WlJQoFfN8fy4yiejhZYehwLyB9uMk9lNx3jADyjKCQk=;
 b=PZjWGFBClew6BniN3s164n9kkumWR0HkMqioYGfR+Q/wl4YG4/S7Kgun
 1vb8yTxDDWIYPaSK2LqmiupF3pbkjEt9kmNPvbNVgs36wZDG5tFic5qj/
 nUHrMtreg7ciZYHV9rXo6LhZ5nhQj9jW40hjGzlrfNOvHLMdmlD0+u56D
 0WnoiWdKNuvMxO5yf6ZoRhq7Zuwvp89OBkKuneIUPyGZJPen3R3oi38LB
 ucu5OIN4Ycgfib4jO1oRw8mAiVEijVzlOFZZvKgk4NjmSzSt2+xW0vLLy
 E5sc4/9UO5dQ1sbk1ZeVjE1kfwjiQPZATWSS/Yb8oFgb9b6CDCyp9LjRn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="365211"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="365211"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 03:11:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="31153106"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 03:11:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 03:11:40 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 03:11:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 03:11:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 03:11:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sc3A0rbY7aAWbIGz74c2Kk2XqX7ViW6a5GpcKBtnFcl8uelc7OnfaIejWTpvxaSEupRhgkwEhwdOe9N/aszt+cpfEPT7aB0vAMXCSgQ0D11NxbZsSjUROkE4Yx2IzuJfp4ywQm7F7fzn07CjOkB458sR9yHGWsZUwXe0e8rfeXZZLjPlFHmjDd4eXYKTOVG5SAvuTMUE0fqm8WgaaBqzLwympCNFmApepOjik5SU4BjN6ndSSpfbRvw9I0ZJEiOR3PHsLA0igIKKDWqQCkfA8YefzDMlKlM6NlMgG7/c6f5eqte8/okeE0D//b4RrEomW7WcCnAvc1/ADH0Fvc53vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WlJQoFfN8fy4yiejhZYehwLyB9uMk9lNx3jADyjKCQk=;
 b=FIoEUjE3lRh3QlxDGfewXyjLgynvIjbTUDokUVfJOz3dXXTDn4ISCM1ueLS6il/sdc1U/7U/e5rrKdNQwEBDWMID0GrZLp16a1Gp2H7Lrpk5L11vlH/gE5IZaXnOYAyuRiiw0OTjcnNJVjl17FfFbTsVMVIIvOuSqFpJ0pm2nMBH945ZPed73EGsms+fIB+sMFZi++YRBbn9H9ZF9iuEboXQqJZew3uMw6NPT5jq2XRObYBChVMUPHh/BCHj9I3uZmQMznScRlJHfHD7zq37DSPToNIL0cMl5ur8MJf0ZbYgnig8pGC9NaPvWy9rlCG2CCSVlPML0E4N4FS8bGVq4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Fri, 2 Feb
 2024 11:11:37 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 11:11:36 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 08/21] drm/i915/psr: Unify panel replay enable/disable
 sink
Thread-Topic: [PATCH v3 08/21] drm/i915/psr: Unify panel replay enable/disable
 sink
Thread-Index: AQHaSr/T/f5oyIyNo0Ghoh3BRI8WDLD2+4FQ
Date: Fri, 2 Feb 2024 11:11:36 +0000
Message-ID: <PH7PR11MB5981D571D71D3B6AD16F144FF9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-9-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4833:EE_
x-ms-office365-filtering-correlation-id: 121bb239-bf90-4203-c1cc-08dc23dfb8eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yweEIoXMo1UPIP0dEARyc7RlFhroi3m5F3m5WX25OHtC1idskIgOay+SG5vWQHBtyzxVQXwmgPeIrOhUZORoHiO4qgklWF8+kYXA2dFlNlpQhgeH/iQsJ0x0xGfRPzjJbqb4+sMCP2evfHojMlnHoNpXwP/ox9Ingq2KCYiywvpT7DwuwU7JuCy4Lv/e5t1InZZK38AhUjTLNQiEx6RJuacMyLpFgumy4ZUbNW9d2OWHYtSpg9m7rXGSZ1bocks688pahDHQojn9D39+DHyldvucfvu4H3cWq9hZm+NMTworb8Q0cylOG0fo1RXUMzn1Q6n/otXYL1S5BcPXCB98sELIK1atjRnCfp87eDCad9dPROf/UCDDmB7syvPKD392C49IIj320Artx5s4+E8bvQJWLgnx/uWDAJDy8Rkcs/fJ2hWS2N62J9DkZTuT4QFO5I16JuibYRNa8JV18Ug1Jod2bxFkS7nZ7l2mYoxm+itC5yA03oZc0LBeKXMT577I4RRvbbheRKyEeZaK36RIeJSNxZli0pnzCWboGUjdvN1NPBs92o3ipWcVy/OtCnpiUMSnzJ0Z7m336GITLYE/xXjcjpdG9MwH52a6yaeBcez3ABrYvupDNDGkS1EQmdbp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(376002)(346002)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(26005)(66574015)(38100700002)(9686003)(122000001)(8676002)(5660300002)(52536014)(66556008)(8936002)(64756008)(66946007)(7696005)(76116006)(53546011)(6506007)(2906002)(71200400001)(66476007)(478600001)(316002)(66446008)(110136005)(38070700009)(33656002)(82960400001)(41300700001)(86362001)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWxSMEtGOUIvbDBWZzdJKzZlZlRhdDNDYWlJODdzRzZXR242ZWJJQ1VCSHFB?=
 =?utf-8?B?NFQzdlBDQ3Z4VjgwS2hpOTFwK1c5VEx1OFkreEh3T0MrN2xOMkoxcWhpaXZj?=
 =?utf-8?B?WGUwakZjZUZ1eCtrNmEzZ3BHQ1lNNnB2SWtET2x4ZUM0cFN4T1lGZkorQ2g2?=
 =?utf-8?B?Y3pCZ3lsYTh1NUduYXhIWkNYcjFLVEw4bjZqSXhTOXkzVVFqQllmSjRVYmRJ?=
 =?utf-8?B?clBjQXJlV0pEek1TTXVESFBVbFg0Z3JuYS8zbDI3bFU5b28rejlTOUJQVlBP?=
 =?utf-8?B?cGpFRXoxOHo4N3ZNcUltM1o1dllhWTFQMHFYRE5BNHJjak1JTFdUKzVLcXBU?=
 =?utf-8?B?VVZUZG4rSytaSEtGbkRVTUE3RDZJMWVJeGJpcjlMbU0xamxOWERhZTJUQkxZ?=
 =?utf-8?B?b1BCR1pST2V0WkVHM2g3a1pwK05EUVd2MGVXSVZSSUFkTzNTc2tZZDg3Wnlh?=
 =?utf-8?B?WXdxZEhwV2phaGJRR3YxQlAva2tscExaUFVOWnpnWjFiK2l6MDU4QkxBUmJa?=
 =?utf-8?B?YlVGQ1hqVzdGQ0FCb2UvNXZ4a2Y0b1NTeFN5RHRvdmo2RFc0ZFhTbE1LRmFC?=
 =?utf-8?B?K0w5akR6OEhUMVZhNW1HOFBHV053empnLzl4L0F5Rkw2YXdleVBBMkxDMDdX?=
 =?utf-8?B?TkdINGNRRmVPQ0pxTmZlYkRNSkVmQXZNZkpkN2V6VWZSaVUxRi93VlZsSXcz?=
 =?utf-8?B?Tnl3NWszdlpZd2NHT0QvNnBIQlhERXlMUWxkK0dYZC9qYXprQ21EeWg4Vy9B?=
 =?utf-8?B?d1NYNFZqOWdSalNlbnpHRjNxeS9YOWUzU09aMkM2cVA3bDRqdGxHSlg0R1h3?=
 =?utf-8?B?Y2loVlZ6V0pSdTVXbzhTQ3V2NVZTYVNJZWhmSVEyL3RvNVNBWS9VU2RZS2dX?=
 =?utf-8?B?b0FmK3hON0V4SFFzM3M5UmVHc3B5a1pDZTFOMDNxOEdkbVhkck80dXR6TWRD?=
 =?utf-8?B?MGNsMWJDN3hYUXhERVJKTmVIenRvTkFBTmk3UHNTQzJQZThBeWhscEttSFMr?=
 =?utf-8?B?ODRma2pmWEtXRmF0M1U2N3Zqb0FrVjJLOVA0cHRRSFpQczgwMmJVMnJtSmFS?=
 =?utf-8?B?S29iUCtkcW1MZUUxM0MxVDhPTDA5RDQwSjg2WXR0WEFJSnhWOC9uUHB2T29j?=
 =?utf-8?B?M0xJbm0rbW1GaFYwMHQ4MVZacGF4cHI2Qi9jVDdjbnJGQVZoREFDQlhaOG1u?=
 =?utf-8?B?U0d6K29sU3FSSHRybUF5RkkwTkQ0cklsS1JhNXl2bXZBdHRLUzhSaHJGQWVw?=
 =?utf-8?B?QWc4Y1dyUWVnSTdxc0tFOXBhdFhXMU5oSUxPeWlVb3htcE5DWWlrbUZvUGJS?=
 =?utf-8?B?UUY1cWJhbFQzMlRYOGdvb0E1b2ltSWN2bVNuaHpIMUd2SnBTcExnc0JBMGI0?=
 =?utf-8?B?QU14WmNmVzNUY2h0Zmowalp0eENXWldVZ1NvOWFEdDNGRENDam1JeGc3VlpB?=
 =?utf-8?B?dUNoM1VRZElEQktJL2xxUi9Fc0h3eS96VFVnRkFNRXJjcGpZeElZeEFiaXFa?=
 =?utf-8?B?eExuVHBIM203aVJPNnVqRHp6dGdvVVBiVWI5b0F5YVhxZGtFWVRyVVRLOHZn?=
 =?utf-8?B?TlBINnMyWUQ1NzFMcFAzZnJ5cWtqNFJsT2x6T1BydmhEQjFuZmRWUko1T202?=
 =?utf-8?B?YWhxdzlacE1FdEw5VnlJMHVWVjFDNnc5N0x4Zk9FOVgrbExTOVdZdVR1S3lE?=
 =?utf-8?B?eEhPcC9WQ2phVHl0L1FCSVluT0t4WHJYQThBeS8vZng2Q3U4eVNjYXpwbjFn?=
 =?utf-8?B?ZGFZdFh4YW96MURHWEZhUWplRy8wdkszUE1FRFZRUitxOGRzQ2c2R3d1bE93?=
 =?utf-8?B?cktQV0VBUVFSRW9MRkx2bmVpRnZsK1RZWG1tKzE3ekxVUHhLSGpiUi9KUTUv?=
 =?utf-8?B?Si9YOHI5OTg0S282bUVwV21BYmhTYmNtSytOK0ZydmkxeVFQVitXTDR3RlhQ?=
 =?utf-8?B?alU5NXFJbjlLaTlnVFlQNGZTcnJIaEVFeUZlMVNCbU80TCtpMlBBRHZjOTg5?=
 =?utf-8?B?MWJ3Rll3eWxPV2xyVHlrOWtSajdJMzR6bEtEWVNnR2lWQ2xpVms1eXcrSTJr?=
 =?utf-8?B?K1E3UmlwbFF1VGlrYWhoUUorMVpWM2pwenB0VUxZV2dwcmErcG5xaTBkOHc0?=
 =?utf-8?Q?WenfE8sDP1X4agvQJKcX1qHkB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 121bb239-bf90-4203-c1cc-08dc23dfb8eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 11:11:36.6410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kyL+38nZP5YOsiICNtY/J4qzfIZDo68isLilh2j8IGrw6eBh3kc0Q1lapzVatwHX1yliLqbrUkHoTQ7kWQ3Wqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4833
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA4
LzIxXSBkcm0vaTkxNS9wc3I6IFVuaWZ5IHBhbmVsIHJlcGxheSBlbmFibGUvZGlzYWJsZQ0KPiBz
aW5rDQo+IA0KPiBVbmlmeSBlbmFibGluZyBhbmQgZGlzYWJsaW5nIG9mIHBzci9wYW5lbCByZXBs
YXkgZm9yIGEgc2luay4gTW9kaWZ5DQo+IGludGVsX3Bzcl9lbmFibGVfc2luayBhY2NvcmRpbmds
eSBhbmQgdXNlIGl0IGZvciBib3RoIGNhc2VzLg0KPiANCj4gdjI6DQo+ICAgLSBlbmFibGUgcGFu
ZWwgcmVwbGF5IGZvciBzaW5rIGJlZm9yZSBsaW5rIHRyYWluaW5nDQo+ICAgLSB3cml0ZSBBTFBN
X0NPTkZJRyBvbmx5IGZvciBQU1INCj4gICAtIGFkZCBEUF9QU1JfQ1JDX1ZFUklGSUNBVElPTiBv
bmx5IGZvciBQU1INCj4gICAtIHRha2UgY2FyZSBvZiBkaXNhYmxlIHNpbmsgYXMgd2VsbA0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIHwgMTEgKysrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDU0ICsrKysrKysrKysrKysrKysrLS0tLS0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oIHwgIDIgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNl
cnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCA5MjIxOTRiOTU3YmUuLjY3MjFhNDc4YTYzMyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0y
ODAwLDE1ICsyODAwLDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgICBjb25zdCBzdHJ1
Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiAqY29ubl9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4g
LQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0K
PiANCj4gLQlpZiAoSEFTX0RQMjAoZGV2X3ByaXYpKSB7DQo+ICsJaWYgKEhBU19EUDIwKGRldl9w
cml2KSkNCj4gIAkJaW50ZWxfZHBfMTI4YjEzMmJfc2RwX2NyYzE2KGVuY190b19pbnRlbF9kcChl
bmNvZGVyKSwNCj4gIAkJCQkJICAgIGNydGNfc3RhdGUpOw0KPiAtCQlpZiAoY3J0Y19zdGF0ZS0+
aGFzX3BhbmVsX3JlcGxheSkNCj4gLQkJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1
eCwNCj4gUEFORUxfUkVQTEFZX0NPTkZJRywNCj4gLQkJCQkJICAgRFBfUEFORUxfUkVQTEFZX0VO
QUJMRSk7DQo+IC0JfQ0KPiArDQo+ICsJLyogUGFuZWwgcmVwbGF5IGhhcyB0byBiZSBlbmFibGVk
IGluIHNpbmsgZHBjZCBiZWZvcmUgbGluayB0cmFpbmluZy4gKi8NCj4gKwlpZiAoY3J0Y19zdGF0
ZS0+aGFzX3BhbmVsX3JlcGxheSkNCj4gKwkJaW50ZWxfcHNyX2VuYWJsZV9zaW5rKGVuY190b19p
bnRlbF9kcChlbmNvZGVyKSwgY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTQpDQo+ICAJCW10bF9kZGlfcHJlX2VuYWJsZV9kcChzdGF0ZSwgZW5jb2Rl
ciwgY3J0Y19zdGF0ZSwNCj4gY29ubl9zdGF0ZSk7IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyZDVkMWMyY2UyNDYuLmI5MDVhZWUwZWM4MSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC02Mzgs
MTkgKzYzOCwyOSBAQCBzdGF0aWMgYm9vbCBwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCXJldHVybiBmYWxzZTsNCj4gIH0NCj4gDQo+IC1z
dGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfcHNyX2dldF9lbmFibGVfc2lua19vZmZz
ZXQoc3RydWN0IGludGVsX2RwDQo+ICsqaW50ZWxfZHApIHsNCj4gKwlyZXR1cm4gaW50ZWxfZHAt
PnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCA/DQo+ICsJCVBBTkVMX1JFUExBWV9DT05GSUcgOiBE
UF9QU1JfRU5fQ0ZHOw0KPiArfQ0KPiArDQo+ICsvKg0KPiArICogTm90ZTogTW9zdCBvZiB0aGUg
Yml0cyBhcmUgc2FtZSBpbiBQQU5FTF9SRVBMQVlfQ09ORklHIGFuZA0KPiArRFBfUFNSX0VOX0NG
Ry4gV2UNCj4gKyAqIGFyZSByZWx5aW5nIG9uIFBTUiBkZWZpbml0aW9ucyBvbiB0aGVzZSAiY29t
bW9uIiBiaXRzLg0KPiArICovDQo+ICt2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICAJdTggZHBjZF92YWwgPSBEUF9QU1JfRU5B
QkxFOw0KPiANCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4g
LQkJcmV0dXJuOw0KPiAtDQo+IC0JaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+
ICsJaWYgKGNydGNfc3RhdGUtPmhhc19wc3IyKSB7DQo+ICAJCS8qIEVuYWJsZSBBTFBNIGF0IHNp
bmsgZm9yIHBzcjIgKi8NCj4gLQkJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0K
PiBEUF9SRUNFSVZFUl9BTFBNX0NPTkZJRywNCj4gLQkJCQkgICBEUF9BTFBNX0VOQUJMRSB8DQo+
IC0NCj4gRFBfQUxQTV9MT0NLX0VSUk9SX0lSUV9IUERfRU5BQkxFKTsNCj4gKwkJaWYgKCFjcnRj
X3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5KQ0KPiArCQkJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRl
bF9kcC0+YXV4LA0KPiArCQkJCQkgICBEUF9SRUNFSVZFUl9BTFBNX0NPTkZJRywNCj4gKwkJCQkJ
ICAgRFBfQUxQTV9FTkFCTEUgfA0KPiArDQo+IERQX0FMUE1fTE9DS19FUlJPUl9JUlFfSFBEX0VO
QUJMRSk7DQo+IA0KPiAgCQlkcGNkX3ZhbCB8PSBEUF9QU1JfRU5BQkxFX1BTUjIgfA0KPiBEUF9Q
U1JfSVJRX0hQRF9XSVRIX0NSQ19FUlJPUlM7DQo+ICAJCWlmIChwc3IyX3N1X3JlZ2lvbl9ldF92
YWxpZChpbnRlbF9kcCkpDQo+IEBAIC02NTksMTkgKzY2OSwyNiBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJaWYg
KGludGVsX2RwLT5wc3IubGlua19zdGFuZGJ5KQ0KPiAgCQkJZHBjZF92YWwgfD0gRFBfUFNSX01B
SU5fTElOS19BQ1RJVkU7DQo+IA0KPiAtCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDgp
DQo+ICsJCWlmICghY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSAmJiBESVNQTEFZX1ZFUihk
ZXZfcHJpdikNCj4gPj0gOCkNCj4gIAkJCWRwY2RfdmFsIHw9IERQX1BTUl9DUkNfVkVSSUZJQ0FU
SU9OOw0KPiAgCX0NCj4gDQo+IC0JaWYgKGludGVsX2RwLT5wc3IucmVxX3BzcjJfc2RwX3ByaW9y
X3NjYW5saW5lKQ0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5KQ0KPiArCQlk
cGNkX3ZhbCB8PQ0KPiBEUF9QQU5FTF9SRVBMQVlfVU5SRUNPVkVSQUJMRV9FUlJPUl9FTiB8DQo+
ICsJCQlEUF9QQU5FTF9SRVBMQVlfUkZCX1NUT1JBR0VfRVJST1JfRU47DQo+ICsNCj4gKwlpZiAo
Y3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiAgCQlkcGNkX3ZhbCB8
PSBEUF9QU1JfU1VfUkVHSU9OX1NDQU5MSU5FX0NBUFRVUkU7DQo+IA0KPiAgCWlmIChpbnRlbF9k
cC0+cHNyLmVudHJ5X3NldHVwX2ZyYW1lcyA+IDApDQo+ICAJCWRwY2RfdmFsIHw9IERQX1BTUl9G
UkFNRV9DQVBUVVJFOw0KPiANCj4gLQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgs
IERQX1BTUl9FTl9DRkcsIGRwY2RfdmFsKTsNCj4gKwlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVs
X2RwLT5hdXgsDQo+ICsJCQkgICBpbnRlbF9wc3JfZ2V0X2VuYWJsZV9zaW5rX29mZnNldChpbnRl
bF9kcCksDQo+ICsJCQkgICBkcGNkX3ZhbCk7DQo+IA0KPiAtCWRybV9kcF9kcGNkX3dyaXRlYigm
aW50ZWxfZHAtPmF1eCwgRFBfU0VUX1BPV0VSLA0KPiBEUF9TRVRfUE9XRVJfRDApOw0KPiArCWlm
IChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiArCQlkcm1fZHBfZHBjZF93cml0ZWIoJmlu
dGVsX2RwLT5hdXgsIERQX1NFVF9QT1dFUiwNCj4gRFBfU0VUX1BPV0VSX0QwKTsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgdTMyIGludGVsX3BzcjFfZ2V0X3RwX3RpbWUoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkgQEAgLTE3MDEsOQ0KPiArMTcxOCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3Jf
ZW5hYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJICAgIGludGVs
X2RwLT5wc3IucHNyMl9lbmFibGVkID8gIjIiIDogIjEiKTsNCj4gDQo+ICAJCWludGVsX3NucHNf
cGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUoZGV2X3ByaXYsIHBoeSwNCj4gdHJ1ZSk7DQo+ICsN
Cj4gKwkJLyoNCj4gKwkJICogUGFuZWwgcmVwbGF5IGhhcyB0byBiZSBlbmFibGVkIGJlZm9yZSBs
aW5rIHRyYWluaW5nOiBkb2luZyBpdA0KPiArCQkgKiBvbmx5IGZvciBQU1IgaGVyZS4NCj4gKwkJ
ICovDQo+ICsJCWludGVsX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+
ICAJfQ0KPiANCj4gLQlpbnRlbF9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHApOw0KPiAgCWludGVs
X3Bzcl9lbmFibGVfc291cmNlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gIAlpbnRlbF9kcC0+
cHNyLmVuYWJsZWQgPSB0cnVlOw0KPiAgCWludGVsX2RwLT5wc3IucGF1c2VkID0gZmFsc2U7DQo+
IEBAIC0xODEzLDkgKzE4MzUsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9j
a2VkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCWludGVsX3NucHNfcGh5X3Vw
ZGF0ZV9wc3JfcG93ZXJfc3RhdGUoZGV2X3ByaXYsIHBoeSwNCj4gZmFsc2UpOw0KPiANCj4gIAkv
KiBEaXNhYmxlIFBTUiBvbiBTaW5rICovDQo+IC0JZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9k
cC0+YXV4LCBEUF9QU1JfRU5fQ0ZHLCAwKTsNCj4gKwlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVs
X2RwLT5hdXgsDQo+ICsJCQkgICBpbnRlbF9wc3JfZ2V0X2VuYWJsZV9zaW5rX29mZnNldChpbnRl
bF9kcCksIDApOw0KPiANCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpDQo+ICsJ
aWYgKCFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkICYmDQo+ICsJICAgIGludGVs
X2RwLT5wc3IucHNyMl9lbmFibGVkKQ0KPiAgCQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2Rw
LT5hdXgsDQo+IERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLCAwKTsNCj4gDQo+ICAJaW50ZWxfZHAt
PnBzci5lbmFibGVkID0gZmFsc2U7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaA0KPiBpbmRleCBmN2M1Y2MwNzg2NGYuLmI3NDM4MmIzOGY0YSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IEBAIC0yMyw2ICsyMyw4
IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsNCj4gDQo+ICBib29sIGludGVsX2VuY29kZXJf
Y2FuX3BzcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7ICB2b2lkDQo+IGludGVsX3Bz
cl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ICt2b2lkIGludGVsX3Bz
cl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJICAgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiAgdm9pZCBpbnRlbF9wc3Jf
cHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJ
CQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICB2b2lkIGludGVsX3Bzcl9wb3N0X3BsYW5l
X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gLS0NCj4gMi4zNC4x
DQoNCg==
