Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F28467FF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 07:26:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93E110E615;
	Fri,  2 Feb 2024 06:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSTExFt6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 06:26:01 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F0610E607
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 06:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706855161; x=1738391161;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=22xxnXmRvQjA8NGZ8xFZFcGwsI0nT7B3XO/bPb3qfzI=;
 b=ZSTExFt6Z4OOesUslK5ANN1Nw/WP7dT2r18ProYoWurXcogDuY3l36Z6
 gGmiJwsS14iPv9uuLRDipTwhhW7mbWTAlPAPboqkcWWggSsjrdmUkeoLP
 8SApvxoudEWuYBxpVrRPmCIFGoZkbYQacER1Ee4wxremWNhcf2lRXKWni
 r5wzD8auWxne5kV1LVVCDWWv3b6scMtK/7HhAeYrGXoifPqAHKnLrArYr
 t/Z80nkpCYHTQpaME36Rjw87GzFXOMwUej8cDUzgbR8jIobfwean3djjX
 dZxnIp4nusqDzw3MLvv1KuZ1BdeLx+bRtM5BPmkDG0nq21YipRauRpixX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="6120"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="6120"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 22:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4606099"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 22:18:52 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 22:18:51 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 22:18:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 22:18:51 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 22:18:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P64THHwi3nngRB8aGv7uUR16vL4SKK/VE+mT7IMcTfxDAP8EwLhh+nqyCETwN41PgbkmA4RiFwGwIBgtNG+H707FdI2aOwz95/YjOET4YNx9RwZ52r4jmascfJ8ufzjd27q+WOovAK64iuEevzje3b9CiE9Mfpnb9y0Lweb1jv4Tf+ZQ0ZRNIp5+6gQKcKz1rDNSnmVwWK+E5X+wYDIcGL/A+6EtKpAVvhEHHZVNPk3mH4spD59DtcXkBHriQvNao3nvD3XOLKOh7nRlmBkAM8j4960tUALwZm31jlNeg/77/9jPIxb8JlyCl4Lfi6iZeDeqqkixGgwuP5cXw7GQZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=22xxnXmRvQjA8NGZ8xFZFcGwsI0nT7B3XO/bPb3qfzI=;
 b=QlsdtLhDko+3fazskOK/1ecP3TWRHTinYE1ZhE2q3FXL+IDL+C2iYyDLRXha6lR1K5yJZ6wBy0qcl1LpufZyrDveG6hsc36/hWepeBQBOqztrfCLWeyissWtXIDD3/a4du3+KAWSxmhPkOCMfdbQr8uwnePU905r4TCVR1o60y6dYM+8WLwEwG+cCc0kveaKLllyrgHMn9ZdMY/8vDUVSAwpVQexbTq/B8y6rF83dUuRbgtBAOicrwAxtS71zVtU3EC4eoCiPrCeg0wFxGDjLQxFyRcEzVfzr0QwtC5Exb+BAmydVwROS7hFvoPWuJfPKXhYmjQ8c7xLn3abSgTSHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6822.namprd11.prod.outlook.com (2603:10b6:806:29f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 06:18:43 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 06:18:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 01/21] drm/i915/psr: Add some documentation of
 variables used in psr code
Thread-Topic: [PATCH v3 01/21] drm/i915/psr: Add some documentation of
 variables used in psr code
Thread-Index: AQHaSr/IPo3NHtdhwUmbZiUq4Q4BQ7D2qX1g
Date: Fri, 2 Feb 2024 06:18:43 +0000
Message-ID: <PH7PR11MB5981438FC45A7C86D8E1CA04F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-2-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6822:EE_
x-ms-office365-filtering-correlation-id: 771fb015-cd56-47f9-8a92-08dc23b6ce74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z18xYrLA+GWtdx4pbS4WWJfJ0ZRUkGZO/zzcuZay80mMmgt3E6K+zOch+5i3TSeK6tZE6GTxP4YIMT42VvLxL1BdGFGX7ffXCof2JGm17NeMPHaT6pOKInwHY912lJS0xqq7q9QAMWAiK4NsotWQQMWlWGs89v2nQRuCirE9Rv1dyZjNZwr9BRWjnFghfTvl0haEaTWYl973oZhnRAES3C96ypXlI0rZAAHhk3gafk4bEyhCHAAGbdUcFu68Ut58wqsGEM8Wytsz03NlXXyjZ2UgQtaaSatrsAu2OsUe9iuKsg9CEPvKX2akzY3sbUYb/Tz51CRCXflN9UXdtZTkhXIkx2zlgRqgpka8LuzqgIqZLIZr1bMh0A3h573zptdTK0KQQAwoRoD8T5BAs0NZGAKc72Xbp0wj/3X/OoZSVNwovJnDT8aXaXYEQ6vWpdo+GWKeQo4aq5r6WdUgygXa/4wWR2+PytkZiNfzajSaFrtjLmB2Q03Ku4qoHUp/j6kJovPKCuE8jwROhtcYHaiN8CKQoQ6XY6JMQSG84dL0GOsreLN05BKWapIB26TxuTFzb2yBxJuy0sAaTuKEYmHcsyhq2wFnjQ0FiFfGF1lAjpLVpzY3QqNb+pyYwgrLdvL0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(346002)(366004)(376002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66574015)(26005)(83380400001)(9686003)(41300700001)(5660300002)(33656002)(53546011)(7696005)(6506007)(71200400001)(122000001)(82960400001)(55016003)(38100700002)(86362001)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66476007)(66446008)(110136005)(478600001)(52536014)(38070700009)(316002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OE1CaWxtb3ZKUmsyWUExNHFkMGUyNzY1Zi9sVEM2anFYY01nNW9idWpZaHBw?=
 =?utf-8?B?SFRvZXZTTU5La1JDU3FnZS9DK1plckxqY3FZVjdKdEVHd2VSeU14elZmMDNa?=
 =?utf-8?B?VCsrc0VNNW1seVBMdG94MXVBT1k1NElqM2VrZlN6R2gzR1VkRngxZmRhM0Nk?=
 =?utf-8?B?bTZaa3ZrU1ZOb1YwQlpIYVR6d3g0RjFUVHFmY0NiNzBoZ0NrYm1IazRUR29I?=
 =?utf-8?B?YkwwNEwyR3pIL0RXcm5KTW1DU0g4akk2VWFveHpLWFQraU10d3J5ZXdVU3JC?=
 =?utf-8?B?NmZ2bnBsQ3lnN2ZsMHJza1FQcUM4Q21jUVFoL3BYNFlnMTVlWHhWNVBrMEVH?=
 =?utf-8?B?czJVZ01BOVhUQkhJZ3VQbXVWR1BvZTBseklnMkxnM0Q5Z3NodkIySlJ0UFdU?=
 =?utf-8?B?Z2laeDVOeTZ6dnljaXhLZDl0cEFkZXp0VlVSdmpaUjdiZ1hCM1hRbXhpV084?=
 =?utf-8?B?YitBQ21JSkNJWVdlZXZJSlRzcVU3Y0c3bTdWMkYreXMxeWtvdHczZVl3SEJD?=
 =?utf-8?B?WXVhQnF5SEVDai84ZTdPdkhkQ0xlTG56Y1ZNRTExTHJrZ01ncklhbmJmSmpk?=
 =?utf-8?B?VFlvb3RPazFla3NVWHh1bGFML2ZndnhIV0lyWHhXcjNjNFRPNk1kVXgrc05t?=
 =?utf-8?B?ZG9ycHkwbnUvRnBpSXljOUxlRmlUMmNieWFURmlaMS9qNU9OeWVvRm9YckNL?=
 =?utf-8?B?Y1NKSVlNbTBjaWJLdjhPUXFxZWVIWWljclhjOG40VWk0QTM4SGVrZ1pHeU1k?=
 =?utf-8?B?K1FEWEIyV0hFWEp5MUhmSEJDeENjUmJxYUNTUlU1dGxFZXhicGpVUUFEZjFo?=
 =?utf-8?B?dlNvc1I4SGJHR3hUWDV0K2xxZkV6eVl1QTJ6WjVNVjdPMVBwWnNGSUZBZTdD?=
 =?utf-8?B?REd6U2Y0REZlUnFFc1BiK05XWG9Ydkl3VWtRZzlqUGxuVDE0anRMaEJGTjFH?=
 =?utf-8?B?bnZSanNpYVRPNnVIVEVPKzJtSEZnZElPamdwYUJyUUpnTzlEUkhvdzF4OCtR?=
 =?utf-8?B?anFNZWF5N1I3T2duT0l6TGtCL2gzVEJ1YmNKS1JoQTVrVUFvczdkVVh3SEVj?=
 =?utf-8?B?VGJQbkVRclZ6UWZDTENjZDNHTFBKQ1hvWGhXMVdpUTJwK3hyRDR5a0ZYQWdw?=
 =?utf-8?B?dlVNaThzcDFKNjd1cE9XMkx2TjFlY2FnSHlaTTlrNDloTEUxOHdOeE9jOC9h?=
 =?utf-8?B?TjJ0S1BpaWpIMy9KRFl2RGVWbWc1U0hWaHRXcmV4WWx6Nng5bWNBZU1YTEJF?=
 =?utf-8?B?QWF2Z3JnRWNzSFVlYi9vRXRWQU5yMXJlMzFZY2p2U0oyaU9MM0tHZzc3NHR0?=
 =?utf-8?B?M1FFeGxWUGFPam15QVhtWEhVUndhbEpiNTJvbHFJbmpDYSs0RmxhNFZUNW1W?=
 =?utf-8?B?QzVXaGpPbW5FaVU4L29EQWlRcEh0ZndBdDlLTXk0cnNyeVkzQ3FBUXMyMUh3?=
 =?utf-8?B?cmozRURKOHl5Q1ZUaHl0b3I4MXNxdWRBMzJ3b0hDMWY2TXdtLzZ0ODBPc21q?=
 =?utf-8?B?bEJPTjRIeTlBY3EwVlNjTjRvbDhQWU1ZbTREOWd1RHl5RVV2cCt0MVd4T21k?=
 =?utf-8?B?TjBEYnNGTFlXSDdWY1VxWi84YWsxSW83ekI0blJSVVpmMmNsSi81dGpvY25G?=
 =?utf-8?B?eXpnY0hoMGtUeXJzbmZVUk1EMGc1ME9tR2REQ3RmaEZPUUY3VHQ3ZWVjWDJo?=
 =?utf-8?B?ZWQ1U0s4NnJsTWM1ZHpKdlJqV1NIaEovYkxLVDJreUxFM2pYNHJvTS9oMG85?=
 =?utf-8?B?LzJPMDVySXN5b3lYWCtpSW5tRlBRYTEzdEJsQkJLd3prMjNCdEFHYnBBWkZ6?=
 =?utf-8?B?SzBEUXMvdzQySkF1VUpuZ0wxR0hjK0VUdjdTVCtrQ2lLMmF1ZmpqOFYwd1hG?=
 =?utf-8?B?Tk1JZHM0UjhLMVBsOEtWQXlCcDQvRkdFTlJ4QWJSMUM5UThQR2RiRzZvZjhz?=
 =?utf-8?B?bWtRdUZjZ09TQldzV1JZQmp3OC81a3YrNkY3NWJwcFVhMnh3d2tjZHpWUUpm?=
 =?utf-8?B?ZVMwb1FOR2FKRlhFekJjTEVqM1pyRUwwZFg0cXBJcUFUNy9pQkprd09pRDVH?=
 =?utf-8?B?UHZnUFR5a0FDVUk1cHFvdXNCL1ZrN0s0L05OaHlDQm9Za1V4R1ZRTFJCVHRI?=
 =?utf-8?Q?TyyJnwTbaVg2lL/7IW4p/rBK+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 771fb015-cd56-47f9-8a92-08dc23b6ce74
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 06:18:43.4460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lY3h+PNbKTMvsY0jmL+m3a3+lOqnBokFT0Ueq8fteGl83htehyyjLRc8v55q6lK1ch9UtadVJRoOEc4ltwRO0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6822
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
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDAx
LzIxXSBkcm0vaTkxNS9wc3I6IEFkZCBzb21lIGRvY3VtZW50YXRpb24gb2YNCj4gdmFyaWFibGVz
IHVzZWQgaW4gcHNyIGNvZGUNCj4gDQo+IFdlIGFyZSBhZGRpbmcgbW9yZSBib29sZWFuIHZhcmlh
YmxlIGludG8gaW50ZWxfcHNyIGFuZCBpbnRlbF9jcnRjX3N0YXRlDQo+IHN0cnVjdHMuIEFkZCBz
b21lIGRvY3VtZW50YXRpb24gYWJvdXQgdGhlc2UgZm9yIHNha2Ugb2YgY2xhcml0eS4NCj4gDQo+
IHYyOiBNb2RpZnkgaGFzX3BzciArICBoYXNfcGFuZWxfcmVwbGF5IHRvIG1lYW4gcGFuZWwgcmVw
bGF5DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCAxNiArKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGluZGV4IDY5NmQ1ZDMyY2E5ZC4uYjlkMmY2Y2ViNTY4IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE3MSw2ICsxNzEs
MjIgQEANCj4gICAqDQo+ICAgKiBUaGUgcmVzdCBvZiB0aGUgYml0cyBhcmUgbW9yZSBzZWxmLWV4
cGxhbmF0b3J5IGFuZC9vcg0KPiAgICogaXJyZWxldmFudCBmb3Igbm9ybWFsIG9wZXJhdGlvbi4N
Cj4gKyAqDQo+ICsgKiBEZXNjcmlwdGlvbiBvZiBpbnRlbF9jcnRjX3N0YXRlIHZhcmlhYmxlcy4g
aGFzX3BzciwgaGFzX3BhbmVsX3JlcGxheQ0KPiArIGFuZA0KPiArICogaGFzX3NlbF91cGRhdGU6
DQo+ICsgKg0KPiArICogIGhhc19wc3IgKGFsb25lKToJCQkJCVBTUjENCj4gKyAqICBoYXNfcHNy
ICsgaGFzX3NlbF91cGRhdGU6CQkJCVBTUjINCj4gKyAqICBoYXNfcHNyICsgaGFzX3BhbmVsX3Jl
cGxheToJCQkJUGFuZWwgUmVwbGF5DQo+ICsgKiAgaGFzX3BzciArIGhhc19wYW5lbF9yZXBsYXkg
KyBoYXNfc2VsX3VwZGF0ZToJUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZQ0KPiBVcGRhdGUNCj4gKyAq
DQo+ICsgKiBEZXNjcmlwdGlvbiBvZiBzb21lIGludGVsX3BzciB2YXJpYmxlcy4gZW5hYmxlZCwN
Cj4gKyBwYW5lbF9yZXBsYXlfZW5hYmxlZCwNCj4gKyAqIHNlbF91cGRhdGVfZW5hYmxlZA0KPiAr
ICoNCj4gKyAqICBlbmFibGVkIChhbG9uZSk6CQkJCQkJUFNSMQ0KPiArICogIGVuYWJsZWQgKyBz
ZWxfdXBkYXRlX2VuYWJsZWQ6CQkJCVBTUjINCj4gKyAqICBlbmFibGVkICsgcGFuZWxfcmVwbGF5
X2VuYWJsZWQ6CQkJCVBhbmVsIFJlcGxheQ0KPiArICogIGVuYWJsZWQgKyBwYW5lbF9yZXBsYXlf
ZW5hYmxlZCArIHNlbF91cGRhdGVfZW5hYmxlZDoJUGFuZWwgUmVwbGF5DQo+IFNVDQo+ICAgKi8N
Cj4gDQo+ICAjZGVmaW5lIENBTl9QU1IoaW50ZWxfZHApICgoaW50ZWxfZHApLT5wc3Iuc2lua19z
dXBwb3J0ICYmIFwNCj4gLS0NCj4gMi4zNC4xDQoNCg==
