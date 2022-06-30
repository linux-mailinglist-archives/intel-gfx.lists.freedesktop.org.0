Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC6E561FB1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2F510F53A;
	Thu, 30 Jun 2022 15:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E15910F53A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656604223; x=1688140223;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xNVf6JXJcKw+d7AjzeGUBk3x6mitAeLEq2DoYOa0JME=;
 b=ffpI7uMZsykkRQd18GvjCbUZNij+RYLFlLkIc7O1qIURYnc78kcfJXfk
 z624VGyngk3d8gZ7Ou/axe+9kI0igclDUPXvFQcCR8l/TNT7faIAaqD9n
 bXb3xStKnVvXNmFa5jt7JaiRU9Xd5fqBt998PD57Q9zjJ6/e9ZGr0zqj/
 DYBd4klW0VD8HIOTluyLYRdPcSXdi0POE7Hq3Ml/tu3Ens2LhLtW8Gk3T
 6mhKZYYq2vqP6OYYaTVeus5dglUGB0smj7wtoIXPj67aHbR+gFgRktb0/
 jl9fOTZ+Qg3O2W4o96fXIT7jmJeTrzGsYx1I2hysTiQkN6tFZQh3Fjf29 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="368700103"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="368700103"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="681021872"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2022 08:50:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 08:50:22 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 08:50:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 08:50:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 08:50:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EIXgCmHS9ANZtdOLcntzpkBRp2j/6/yQwgvQmbGrcpEd24n/KLn9igCNTGwfoFsLdpL2iaIR3BtzRmIGod5+hVCI9jDk+/as1j/Kqwo6l6UACt5F+zqYlnb9RGy3PQCAid2JzvIobckLZMrcxJ/RM19Uho56gjv5I5pCjHuJJ8SFkpobCspcpxF6nExGkXPveipWrfsTShiRSDVTyMQIE1G/TYMJwUM5M1QlWLW3u/Pz5RYgUAkEIdTjazWNvDdMLbIeTVgvfIuISsQfPL3KL4s5oUSTzjMFg6i3ET7AWzASwbcbHLATIuNwXJAcqVVI1Fb9ZOug93QP3mFKWVKD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNVf6JXJcKw+d7AjzeGUBk3x6mitAeLEq2DoYOa0JME=;
 b=Q+VsZEXDfMs+GqSvRczoMpSuslOCQ8DtNp3Vx94ac7dJLuRzWgSyIEE6uraqI+bVd5fEaDXKBmGW2e+x7OJuDP1PurA2VrbIxiIB/AXCPrrSyELY1G30QHJIiSI3EbVlSmWVR4elpiX3CRZbq5s905rTB4UdmXeHWqrXz7+X5eteXfoz+r1qNlqaTeD93Uy8s1SjjZ4sPp9UjOLpefElq9ixiK9bHSb45I9azeIVFmfPe/vft0Wl7s235AmkGhTqThRykJ5zSJGJOzzJeM3fofawubl3LuYd3/UoQcJLJvgzyROdi6vgU1BvX2q5ygRTltB5jVO1+KjWUvoA6A13dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH2PR11MB4200.namprd11.prod.outlook.com (2603:10b6:610:3d::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.18; Thu, 30 Jun 2022 15:50:15 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 15:50:15 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Use short PCH names
 consistently
Thread-Index: AQHYjJMF1uD0Wp1YnkO4tirvmFmJW61oGD8Q
Date: Thu, 30 Jun 2022 15:50:15 +0000
Message-ID: <DM6PR11MB31770ECA020E77AE853627C7BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20220630150600.24611-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4d99f77-5bcc-4e0e-c7a8-08da5ab039d1
x-ms-traffictypediagnostic: CH2PR11MB4200:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: emow/a6B9oet0W9MHM4L5G28q5Wkb0LzdqXaXV5Yyr/uUN+RRe1nmHZCnVYfvr5hgx/Iyv10r1LmOl+4F0ff3R61ufpxXOpkLyey/ngtAH35ATx+9bsBrve8k9ZJ4AP0fkpyCj/s560cT6wIi0BD5Rtv9K48obgrmp/pv1za3McPa8ajqslGFDeGT50+gAjKWu7LZ3yZ4u4HjUxzQtvISa7esQIEgYUsPnoq++lRGNFUHIZXeDw4n4TDFg2PFC9lGDj/MbrMZ/uAOsVPLihIYvXenasN7QyGCEqag2B8bXXN9xCnYjRYvjsTiQEpC7anVoZnoofgtOsJy9IybaFOzItMekc4SQ+rVzk4n2lh8K1yn1mf0KNXFWkerDT7XUuA68NTSOR4hPYX7U7JKqTjE2r3OShrh9a43FLF3dbJCU/pUhC6/alpx/UcXz9vQeHY4tMtQE54tfUZpZkuFHPrkkaVdyFje8KOaeSysrSKDuj0eYxe/ZOl1KtygMfPJKvCh5ZlAeX8BZFERtWqJ1zRHB65phkUxcgLLfTqjMbON44u2uF7E4+/upfAcXInE+TEi2oAOkDK+gT4MDE5sLlQLg6w6cSBv3mH3ZiSQ1LXe6j58iA3wYoRnwF1uJsHMiMwmoriMHkqelkNiuYZ5IKwqFjLvPb/Aak90wlzjduMu1WlhUn55GXcAiSKE7ysHAYPymJHimI+jOpguD1+VxYtL5x3/SE7NzUYjOlxcBPjPdr7ouGr4l3b8S28G0VYNzih0gviMf7WKUvbhBiK75bNZeo/SCX9cCnhLUVGiWDuaZU3kxY4yN2Ga0o9dauxRfdmQtBB4TNSEWcfv884f6rmtUuYqNrWK8nHlE4TGk//ih8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(136003)(346002)(376002)(5660300002)(66574015)(76116006)(86362001)(52536014)(66446008)(38070700005)(6506007)(66556008)(66946007)(83380400001)(478600001)(9686003)(64756008)(8676002)(26005)(33656002)(66476007)(41300700001)(8936002)(55236004)(38100700002)(71200400001)(55016003)(4744005)(110136005)(122000001)(2906002)(82960400001)(186003)(316002)(7696005)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVZHWVFHcHpVVXlBaXpEOEVuR2orUEVqcmhkRmJsZWR4dDZVbWNwMWF4TEJr?=
 =?utf-8?B?Z253MWNjRncvM2srMFNHUXlNckhSQkVDNURSZ1F2VXJ5a3R6anhKbzNrdnly?=
 =?utf-8?B?aUF3RmtpcURTSFJ3eGNRS085Um81SUNIWjU0MFRraCt2S3VZajAzSmViZWVa?=
 =?utf-8?B?cG5nRTRVckkwMEh6dnBqeXQwVzNCejBKTUYyaWM5d3FWZk9PZ0tHYXRMb3RZ?=
 =?utf-8?B?NXJSSnF5a3EwTlNPYnQ5OHJRT0ZGRW93bXhtUHBENzhack5MLzY4MlB0QnQ2?=
 =?utf-8?B?Y0lmaFZvSVM3TWRDOUpxNjU5K1U4NDZQVGhJUlcrSTNDaE14VTl4ZUV0Zkc1?=
 =?utf-8?B?NE12bGtFMnk3bjRwbjVtenl0M1JjaHRVcWtGc0VPSVByVW4vbWxqQ09td1VC?=
 =?utf-8?B?czVWdThqSlNiR3dldG1OWEtkTU5rQnY0bGxqQk5Lblpscmw0eUduS2xjK1pm?=
 =?utf-8?B?YzYyZENKUXJhSUxkdFF5RjNtZjh2SkJuRkFya1NKd2hoR25sYWF1TkZQODBa?=
 =?utf-8?B?QitPTk1sZTdKYlRzQUVRMEErQnFoRkxQVGhVMmhUaTlXbmNFMjF6bms4Yjhz?=
 =?utf-8?B?WHRGL0ZJYXdtYklubGdFaENRQmVwd29XcUpCcVlkM1NTTnpBNVRwRlp3TzMy?=
 =?utf-8?B?dnRJOHEvWnlxM1RBYWJnWGpKeEVSa2ViZlhLbWNONUtqU1hMclk5VWtjZkhr?=
 =?utf-8?B?Yi8rdTI1TGQwaGlORDZqa3l4dmdMVFBvZElGL2oxR2NTWjUzOXZGcG1HREJw?=
 =?utf-8?B?Rjk5TmNhajNuaFVzck1DN0lKWVFUNXRGcHpHL3ZiUUtjZFZQVzZiVkhUY2o0?=
 =?utf-8?B?SmpOTjB5bFhDUDBRR1BySFJWcWQ0OWQ4WExGbjF2bEM2bS9Xc1FPNCsvTjE0?=
 =?utf-8?B?VUZ5bEpEblBiaGsrc3EwNWVhRGs0RFJuM3BwOHpENDhTcjRpYllZamxXd24w?=
 =?utf-8?B?bTB4WEpoQ1AzeXE5em51b0Rnc1dUcVl1ZU9sVTR3dHoyeC9ISHh5aUpkaG5l?=
 =?utf-8?B?bXVqR00raGZzTCtlNWkvbTAzdnM2a0xyRStxV3JMcDVQSEJQNHhkVWM3dCt6?=
 =?utf-8?B?TXZRZ1VGUFQrajJxUndjc1p0U1hkblJuM1ZlSWRyeWJMQzVVcUduS3U3bTF5?=
 =?utf-8?B?V25aRk9WalRNQ2VPb0tFc1AzdkZiYUF0ekIwSXNpVFNuOC83YUxvVmNKTkRG?=
 =?utf-8?B?ejBNNFUreU0xS3BwL3RxYjVRZW1pSDFJZFdYV0RabkJ1VU81MnhEK05CaTJK?=
 =?utf-8?B?alRUVklwSlNIeEJIaGh4d3h2Zmt1SGQ5MmpDaE5nWDU2QlRZUkUyYzZWeXgw?=
 =?utf-8?B?MlVwU2hHNnM5WWZOMlowRGhaOUR5U254WldpaXFSSEQydzB6TTB2NVhZWHQz?=
 =?utf-8?B?RXRjK0xMQ0J0dTVBRmFBajBZeDFrODRtTDRoYmpUa2w5cXFNenl1NEE1dEVD?=
 =?utf-8?B?MENmdnVNQTZEdzJ4aCs0Z2V2QnQxdGFFdjZTaXhFUWk4am5sRTNkR1pHMjc3?=
 =?utf-8?B?b2FmQ3pCbWVQUG4rV0hmejRvTVNoeGtZRUJ6dnRjZEo5S2h6Tkp1Q00wTHQr?=
 =?utf-8?B?Wk1NeTVtRklKZzBESWJ4MWxqZGIxUXRITlhzRmtPSk9vNFlnZGcwQ0t6RExK?=
 =?utf-8?B?UnUyVDZHcmgvSk5YZ3d0N2M1MVcvRFpwT1Rhd2J6VXJjSHR6TXFJVmpRanFu?=
 =?utf-8?B?dkhSc0RwdGtxS1UxaTJFMXlBNDRvK2FDUVZFeEZUNVlYQkgvUmdCaHB0bm9B?=
 =?utf-8?B?cDlUOVR4LzRZZGhqTDdzUkRGZWFOSlRyemMyWEJ4OU5kZjJQVHZnck9kam1H?=
 =?utf-8?B?SEsxUTdxalJNWnM1OVBVc2tOamxPeG5IVlMra014KzNkT0NwNEtldzBicksr?=
 =?utf-8?B?WkFXRzQ5YzhWNUhXdWUzU1ZTL1F2cHpELzIxQXVjY2dOY2xJZXc4Vmg3R01S?=
 =?utf-8?B?ZGFHbmlwVmQ4bi80N2c4RE1mZlFvRERPZFgrZ2ZMbnMyNDh3eVZNYmhWNkFD?=
 =?utf-8?B?cW5kQ3BXVnladHhXTTQ2K0t1T1E4RFJyRDllV1habzAyY2NmUFNUU3VFUWJK?=
 =?utf-8?B?eDBEWUx0K2t4OWdoaHVTT2dOYmJ2V3M4YithVC9GWVNyMGpieFUzT2xrS2c5?=
 =?utf-8?Q?CtB3EXproGqfYM8PDuUd5bshn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4d99f77-5bcc-4e0e-c7a8-08da5ab039d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 15:50:15.6514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ghzMFar8XBBS3Hkd5eUIlJ5isKCyGkAMJ9kXON4aI3IcjQskGhGBY8gpLfwIaJbsizQvvnkTWT3eKr34A5a5MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4200
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use short PCH names
 consistently
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

PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGNvbW1lbnRzIHJlZ2FyZGluZyBQQ0ggY29tcGF0aWJpbGl0eSB1c2UgbG9uZyB2
cy4NCj4gc2hvcnQgbmFtZXMgaW5jb25zaXN0ZW50bHkuIEp1c3QgdXNlIHNob3J0IG5hbWVzIGFs
d2F5cy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmMgfCAxMCArKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BjaC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMNCj4gaW5k
ZXggZTJiMmJiZGMwNzE0Li45NDQ0NmNhYzY2MDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BjaC5jDQo+IEBAIC0yNSw3ICsyNSw3IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpDQo+ICAJCWRy
bV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiRm91bmQgUGFudGhlclBvaW50DQo+IFBDSFxuIik7
DQo+ICAJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLA0KPiAgCQkJICAgIEdSQVBISUNTX1ZF
UihkZXZfcHJpdikgIT0gNiAmJg0KPiAhSVNfSVZZQlJJREdFKGRldl9wcml2KSk7DQo+IC0JCS8q
IFBhbnRoZXJQb2ludCBpcyBDUFQgY29tcGF0aWJsZSAqLw0KPiArCQkvKiBQUFQgaXMgQ1BUIGNv
bXBhdGlibGUgKi8NCg0KDQpUaGlzIGlzIG5vdCB0aGUgY29kZSBidXQgb25seSBjb21tZW50LCBJ
IGZlZWwgZWxhYm9yYXRlZCBuYW1lcyBtYWtlcyBpdCBtb3JlIHJlYWRhYmxlIHRoYW4gYWJicmV2
aWF0aW9uLg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0t
LS0tLS0tLS0tLQ0K
