Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G6NNFOvNImqWdwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:23:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F48648835
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:23:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=caPQ8Urz;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319BC11A87A;
	Fri,  5 Jun 2026 13:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0AF511A877;
 Fri,  5 Jun 2026 13:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780665832; x=1812201832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zfdsOAWdi2h0cwn6Uz2CdpwgdIlnQ/LkNUvhLC++Wfk=;
 b=caPQ8Urzo3dVYLv10XbNuZuDbNGDoJ23Q1onDW1PYjDtC/FJdYY6VAAS
 A3iBxgAA93lVbSJX1WJRPkeivzhefmSkb7SvRxg1awVO0EryXznf2fgwD
 /vAXgjEwfBUnCg+/11wWNFFuB8oybK6T2AgjkNxQsWVwmGPbXTKskSL9p
 bZpTRHfVizBiFsW8XfS9LJ3hzPxH/k8V/E7JZ3X/wttKC8J4CmsxfQsSo
 RrV7sKeLrV18SogrPtYpSUuD0IFcpb8n+nXMWBa6sPrriBS1u0fA/9hok
 x4TPuUZ4vMVmSQUWsbBtqEFR05bvYvZ01U4uFRsYdMGKt93VK/d4I4kCw g==;
X-CSE-ConnectionGUID: Ys6qe0JLRVGSILLvpjZGJQ==
X-CSE-MsgGUID: Hv01C5QxSom6IfH4mOTscA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="104161499"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="104161499"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:23:51 -0700
X-CSE-ConnectionGUID: S9CdGkBiSRuc+gWs+UQnpw==
X-CSE-MsgGUID: VS+FapuRR2qDHOARg/ItzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="249771997"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:23:51 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:23:50 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 06:23:50 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.54) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:23:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NM9KMaLqN3LIbmZjPuPRtUu1h69khRB5kjWtgla9sl8ouzhYgUSA9/ZR5tDLIjYERnXWb56KBXPiFMW4ir0tOFKvTXbOWhcY5Q7F4nB1OKODFx/XXXX1N6fUeJ9gG37PdLFw+Hy8WGrZ8kkL9Hy95qOncVF1vbHfbZRKqwKN6Glv/tjr089eNZQoZshwZLTThks3spq03TudYDSu+1pgQQbBBvvhqj/0N8RjXPf5JCgZ/h0DHIXAF24t1E92hbhMb/zi9QdJnhnBLCyiDmANHJqIr708Vq/aXyQyeR3sPnAFTGB8LedFUxmhMprruuJMYnZOmQHkhm5ve84EfukDCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zfdsOAWdi2h0cwn6Uz2CdpwgdIlnQ/LkNUvhLC++Wfk=;
 b=pe4gpyfb9285fQrdF0m5VLvZpEdQIF0ntcA3jHPZLjKQhOxx2WsNPtp5iOLitfxD8bvagolJf+2txwPfWq+39uWDhx09HPbE8ecbp47MwWfPmcVhXcXrazmUOFsjVcSL2tq/t/TFed/vXHyd/8yP/XALmGqkuxAtXXpEj0kqs3aY2788VVvDftLad/rl/wLWTM5XMBfGtMWGp6Vidn5m7691inO62oCHx2SQPE1y9S37TWwZ3nhQrECXjjhsHYEYnpwNRV+B3yTHDrD90k2pDYnjm6S4vArLNyeYmFPdb0pkMgTJ0UDCdWc7u4YegEP7DR+lvE8JAYQ2CJIdExGvfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA1PR11MB6076.namprd11.prod.outlook.com
 (2603:10b6:208:3d4::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Fri, 5 Jun 2026
 13:23:41 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 13:23:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 01/22] drm/i915/dp_link_training: Introduce link
 training state struct
Thread-Topic: [PATCH v2 01/22] drm/i915/dp_link_training: Introduce link
 training state struct
Thread-Index: AQHc8aqLUXustLh9x0Oob/gmxLZwPLYvvQowgAAxAwCAAAuCwA==
Date: Fri, 5 Jun 2026 13:23:41 +0000
Message-ID: <DS4PPF69154114F7423C5275719E806B316EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-2-imre.deak@intel.com>
 <DS4PPF69154114F0B34A29CAD6AD32B8A5DEF112@DS4PPF69154114F.namprd11.prod.outlook.com>
 <aiLEFPWzH4pJkDv9@ideak-desk.lan>
In-Reply-To: <aiLEFPWzH4pJkDv9@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA1PR11MB6076:EE_
x-ms-office365-filtering-correlation-id: d970663f-2212-4206-edc7-08dec305a940
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|5023799004|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: OIQVhxDXFolX01EWzGU+nsH/gKG1B+nFKxZhM6er13+0BGO/NQbP4x0fyEAsL+UAkbEbjJ3BKwhnOfm6HYro2pm3FLWSvH5AQtj+q7U9b0muegQ8bGihy5i8lVkFC58n/emG9epCEl4RyDoEYr46sdliywYrjbjyUPLqMwgwxOjl9Uo/zx3GHhBKkGyI8G4N89vxViqDFsmh/jSrE23q11mU/77YcGl6oHKJdRAScV3aKsqmcE55xodK5h9K9mi0amkYicWXKwBLSM9VEkRpu8PGNX2SnLczPNz2+DoRPXgemHGWLIM6mLLxbxHPezfXVx2tSeltwqUsyxoRoUBzriDuXnc5ETF12gOJUhjLD1Pta/65WGtkrdSd35CFxjBzS6exKkw7uv5PUAtHWrbhS3e+/5qozI2JhysA/HaQGwh+RGm4miv44rc8/cYDbFEyOGTFr7GZeowO+JjQZJkCFgJa1vgGjogsWjyneZ60Nz7XKVSWtprTM0n6SZ90DG3Ihgw9Yv9ufZkUT8S+yKMl9HnNpxpDE8HJImjn3LRoiDEAs9mmIvFyvl8HdXn/MCXSUvdpcRluJblg1A2scDj5Jfd4mVpB96IpzIgNUBInuCeLe+Gr7w9RWqQW/yrYxe7yz9YPXAx/lL0QsXRScSWqys2lD+7VzHlFZ4EYip4/ADTVPTloj60RffUpBcJR3CC0HC/95Clw2b7R2W897rxOryY8mx9mTy2W1OWbitSp0no2atm7LCVYKF5UIedLdT8g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(5023799004)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ym82RnUzblVhaGJJYjVKRytXN3EwWjdVb1VvVE5xTlVJZ2FmUG5yRUM3RVh0?=
 =?utf-8?B?aWRTbHQvWUhjU2xEdGVUSi9pN21rQlhrMXl2U0tRQk0vK2IyanR6TitCeGpS?=
 =?utf-8?B?QW1BazdLTU1zZWo0djdqNWlJdG5NN2luR2l2blVvUnJPNFh1MmFYS0t6aC84?=
 =?utf-8?B?VFhuQUgzTTV1ZDlvVE5oZFJ1Z3FFbDhVN3NsSTNKL3VtSHhjRDNSMnJ5Q3Ix?=
 =?utf-8?B?R1dSZ2RTejBpbkc2MUJrUFA5WTMzaWVPUU9mdVN6OE9TaERBenNzZGhJd3Iw?=
 =?utf-8?B?NEV1RTV0LzFqcmN6dU1GTFBUL0pvNVBEblBVZ2wwWHFqRU5TTFVVaE51QktB?=
 =?utf-8?B?cjlkVG14Y2duRm1CZ2hBaXB5U3F6OWZzTytPc05idXFCb0k4L24zVTA4QVVt?=
 =?utf-8?B?T0NuOHQ0cjVQVVRKRUFQN0wyM3FiYVFYL2ZzZlZCQkt5c0RZZzA2Q2lxM05t?=
 =?utf-8?B?bjVTV2FHUzBvalpnODJkanNQUHRCSkEwcVpRQ3FFWXUxVFh3M2lLbGlaR2FW?=
 =?utf-8?B?bmdJMDk1RnBBTHNNYUFIMTl4T05lWDZnMGRaUTh1RFd3WnVwejJjQWJtNTJ5?=
 =?utf-8?B?STdsSTdsNlllTDEzUFFBMW40ZlhvczRQZGhVL3hmR3lYZ21lN1VmVmNpaEJ3?=
 =?utf-8?B?RFRWTnBqWUtRbDA0M1BWaVNSRXNOeUwrM1dNYkxhSzVrSFVlNHVzUENzYklW?=
 =?utf-8?B?UnBEcStjaWdpalNDRk02TUxVZm5icmROR3VFbVlSNzY5Y29mc0dMbjVEeEta?=
 =?utf-8?B?cXNQZm9zN283a3ZYdWpvYjFUMjN5VVZSZkdDeXNvZDJBMFlNekV3bDRVYnZj?=
 =?utf-8?B?MkMzRkdVbnB4MGw4cXlkYTRydWFBWklCOHlLZEhOakdNZlZOR083bm01czQ4?=
 =?utf-8?B?YnVlc29hK3lrMGI1SGFoM0x2RzcxekdxcDl2Mm5mRXk1SVJ5UzJrYVZpMklo?=
 =?utf-8?B?Q29PL2JWMXVrZ3hhYkxGZ3dYZ0RmQXk3VSsrUUJmc0YrOGF3K043T0ViZEty?=
 =?utf-8?B?WHFRSDhRL1dHVGdKSlRvakkxYXBkN3BXajVQNjRoNHdEdGM1K3FTYTBaNERk?=
 =?utf-8?B?NnNyaWg3NW5NWE9uVll2UlQvckJGakljYVBScnN1c0NuMHdIeWhHSENIYit3?=
 =?utf-8?B?UkVGNU1idGhCR0JxSUhHRzBpQjVFNnNUUDczYUxhQTY1MzI5b0FmeXRvUSt2?=
 =?utf-8?B?dyttWFphRUhXTE52MHMwZnhlVjZkanRocE90YlVYd09jTGZkMWE3bjRBcmd2?=
 =?utf-8?B?b2EweWVrUEUzR1lpRTlEbDJGQm9ka1hoTXlqYUNsb2tyOUhkeDY1aUR2YTZR?=
 =?utf-8?B?M1VRWHRhOWlKaUtwaXFaWWxsS2tzWWdvUmZBZnFUWHBoOFowUi92amhTUDBN?=
 =?utf-8?B?UGxFMUtlSkUxTDFEM2tid2w3cm8zVTlidHBldGF4bkdRaHF6SjFKUU5Tc0tI?=
 =?utf-8?B?ekEzeFdSTnlrMnQxQnhwY3IrUnJRYXJNM05VL1VFNE9wMENEQTQ5cjFITUlL?=
 =?utf-8?B?VThKWXRLcU9vOS81ZlB6L1dZWlhyRnJSZmt3MEIvZWZlOVRyZ0xXcFptaGgv?=
 =?utf-8?B?RUNLeDMvTmx4ZEJrNFJKb0xUMWZRMTYySW5xcXlZQklWcmtnNWNFTVhMSmFO?=
 =?utf-8?B?UjdhMmRobDBvWkE5VS9TWWI5aHhZZmdnUG41YVBia2NPQ1JDK3NFejhDdytC?=
 =?utf-8?B?cThNVWkwMUhwTU5pU1hPOFo2d1NHL2x6UmdCdGx4ODRJWXUwV01PRVV6NUJv?=
 =?utf-8?B?Sm9UbUJkNmp4QUxnWjM0ZGE4S2RQYzk2S3hXNWp0ME44YnprNGxyaGhNVnR2?=
 =?utf-8?B?dk9VWGlaMi9zSDE2Q1ZFRWpSNklUWkZoeVEwVG1zK3l5MTV3WnBqR0tZZ3Ix?=
 =?utf-8?B?eTNVVWxTaDUxN0RTNUY5RDVOdzZ2Q1pJbWQ0cDd4TnRrYmhvTkNrbnVmVktJ?=
 =?utf-8?B?OTRtVG92KzR4MGdhVGo2K2kwR1VRc2pTYVd0TlNzSUpOOVluaGxSVnFHS3R1?=
 =?utf-8?B?VHhndDk4Rk5UR1BFRDAvMXFhcHJTR3VLcGhpcUphZEoyT1pzYURZRXkrZEFv?=
 =?utf-8?B?Mk5JUm81Y1RIejIyd1pLK29SL3Jnc3BDNVNCWFJpb1RueGlLSXZ3NGdWVHdq?=
 =?utf-8?B?cjROWCs4dkc3U2hINXd6OVB0S0xoNWFNNU1YUVViQ3k3WmJteGlqR2JNVzUz?=
 =?utf-8?B?V3lpbktQaEo5cmpxWTdNUlhZRkIzcUV0TlFhRUlVSWxEVUYyS2Q2RUxUcllC?=
 =?utf-8?B?L3QyeFVraEcyNnM5RnFET1R4anNzdVhWQWg4UlA3dkl3T3hYek9JVWlKa3VP?=
 =?utf-8?B?M2JQZnJ0ZmUxL0EvMHF6b0Zrb056NDBoRHVIZkxiUnRlbENKRHBRQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dyZ3tz0wkCCeQVVvy+QPfUJz9L6hVDLpOddBSwrU92gBp3LIoEf46sjJPac6etYgUF0BpSd5Fy9XV5Cri07+BJ2CDd4Ay/tF71/56cYLiyhmKjA1HO4PnYHNJTsAQzleotiURAnPcHGPdQTs+5kX+StieHjJsF1Jkn3oKeky+4N4PZC3Sj6DrZovmijkyr5vcgNs/RhSgpZVLTwxtOESBCzYKD+9KpMtT4ZGEahPyqvdo8+sF2YE/4ifmv9ZVvnz6KFqv1YbpkYl+zJxLyqGvzWTMaAwLrkbXJRd/x3HxeUGdTkuM8dDRklHcmKAq2sdxUlzz1TJTRNyjLGCTzC5Ww==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d970663f-2212-4206-edc7-08dec305a940
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 13:23:41.4944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h/NjFXiRojyfcFkCkNa1+aotfwxGRqgTqsPEdlj2KuvvrO3dCybKb7X6XSeATBlmIM8abmKHz3Km+wwCjldy1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9F48648835

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIDUgSnVuZSAyMDI2IDE1LjQyDQo+IFRvOiBL
YWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIg
MDEvMjJdIGRybS9pOTE1L2RwX2xpbmtfdHJhaW5pbmc6IEludHJvZHVjZSBsaW5rIHRyYWluaW5n
IHN0YXRlIHN0cnVjdA0KPiANCj4gT24gRnJpLCBKdW4gMDUsIDIwMjYgYXQgMTI6NTA6MTRQTSAr
MDMwMCwgS2Fob2xhLCBNaWthIHdyb3RlOg0KPiA+IFsuLi5dDQo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gaW5kZXggMGNlMGMwOTgzNWY2
ZC4uN2E5MTU3ODQ5MTU5YiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ID4gPiBAQCAtNzY0MiwzICs3NjQyLDE3IEBAIHU4IGludGVsX2Rw
X2FzX3NkcF90cmFuc21pc3Npb25fdGltZSh2b2lkKQ0KPiA+ID4NCj4gPiA+ICAJcmV0dXJuIERQ
X1BSX0FTX1NEUF9TRVRVUF9USU1FX1QxOyAgfQ0KPiA+ID4gKw0KPiA+ID4gK2ludCBpbnRlbF9k
cF9saW5rX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgew0KPiA+ID4gKwlpbnRlbF9k
cC0+bGluay50cmFpbmluZyA9IGludGVsX2RwX2xpbmtfdHJhaW5pbmdfaW5pdChpbnRlbF9kcCk7
DQo+ID4gPiArCWlmICghaW50ZWxfZHAtPmxpbmsudHJhaW5pbmcpDQo+ID4gPiArCQlyZXR1cm4g
LUVOT01FTTsNCj4gPiA+ICsNCj4gPiA+ICsJcmV0dXJuIDA7DQo+ID4gPiArfQ0KPiA+ID4gKw0K
PiA+ID4gK3ZvaWQgaW50ZWxfZHBfbGlua19jbGVhbnVwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApIHsNCj4gPiA+ICsJaW50ZWxfZHBfbGlua190cmFpbmluZ19jbGVhbnVwKGludGVsX2RwLT5s
aW5rLnRyYWluaW5nKTsNCj4gPg0KPiA+IFNob3VsZCB3ZSBjbGVhciB0aGUgcG9pbnRlciBhcyB3
ZWxsIGxpa2Ugc2V0dGluZw0KPiA+IEludGVsX2RwLT5saW5rLnRyYWluaW5nID0gTlVMTD8NCj4g
DQo+IFRoZSBhYm92ZSBpcyBjYWxsZWQgZWl0aGVyIGR1cmluZyBkcml2ZXIgbG9hZGluZyBpbiBj
YXNlIG9mIGFuIGluaXQgZmFpbHVyZSBvciBkcml2ZXIgdW5sb2FkaW5nLiBJbiBib3RoIGNhc2Vz
IGludGVsX2RwL2RpZ19wb3J0IHdpbGwgYmUganVzdCBmcmVlZA0KPiBhZnRlcndhcmRzIGFuZCBz
byBub3RoaW5nIHdpdGhpbiBpdCBjYW4gYmUgYWNjZXNzZWQuIFNvIEkgZG9uJ3QgbGluay50cmFp
bmluZyBuZWVkcyB0byBiZSBzZXQgdG8gTlVMTCBoZXJlLg0KDQpPaywgaW4gdGhhdCBjYXNlIHRo
aXMgaXMNCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQoNCj4gDQo+ID4gPiArfQ0K
