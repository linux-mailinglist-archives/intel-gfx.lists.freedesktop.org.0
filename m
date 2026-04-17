Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHmcMI4S4mkg1AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 12:59:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6F641A8DF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 12:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C996510E9F2;
	Fri, 17 Apr 2026 10:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwHbzdCT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA77210E9F2;
 Fri, 17 Apr 2026 10:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776423560; x=1807959560;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aqavKMmyV523fMnhD6LN3/E4aOOON4KcKmTE9/qPfGg=;
 b=MwHbzdCTodl+C+zU3zjC/7izB6xH22UvZgu4RJweVQ7NIucu084UN1zz
 JiIOVO3RC17xkG8fQ4Tq/HkmaDruGQxtflQQGeYj9KbXr0tDJ7d+sbaJt
 EzkZFmPDSK693giYxYE07kJqDfldtX2/XENhzlCcPCLD7TcZkPR2AJYAF
 ysFpgner1V5qDeF0YBwO2vGrcvOIzRzC5VmSE/57SDm08FqS6Yolxymde
 DvGW8bMlGhW9t6vOPG9tpYoWErlkqHAU7FXDNxh1lbTdBxsd9ilaIJ64w
 NCefXsMNaRtKYbD5JFLXg1STfFWbe7s8RSzR7MnkeH354uC+vq+kcVh8Q Q==;
X-CSE-ConnectionGUID: CMiGpo42SDq0g6hdRd0m/w==
X-CSE-MsgGUID: Q0SmKa/OQ8us4XSWvqX8cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77312792"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="77312792"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:59:19 -0700
X-CSE-ConnectionGUID: e4iQjq2OT3C39JbNPGB8tg==
X-CSE-MsgGUID: aZzvkYcUSm2eRoTFQIwjdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="232756092"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:59:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 03:59:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 03:59:18 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 03:59:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dKJ4iwy7iSL7NhNUoxG4vQkQb1M7+B8+q8DCyTxgl0lZFgnk/qdFY2GWmZjmYY7lNsjXKB30TFqNTdUpX/jcSOETqCTzDteDvmablPzlumOA/H27f7t5dge1huezXwLMWmoJ6pouhyOquB8CaXJOQT3tpn+8cLhcJLBfwqM3ITT3jlYCYxBNm5GrkdO7axDaNQHK2EmXCjNzam8MCxkLPadZuS/wP1KnTNFk2tj9LlFodmbArScLr9WCoPOf2+eWtaoMPjsNKD23D35N3tn5iP1o/aMG8YCJdX++A90oQQDJ0bzsBquxrMFo4vPzRbbgGLoGdUNdh82ZRZ+Ki2WLcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aqavKMmyV523fMnhD6LN3/E4aOOON4KcKmTE9/qPfGg=;
 b=BLUoNu+0Xl8LcCo7e/8zY/VdDZzcOWNzuvCMpM9BA96f7+aJxCkuD3KvFr7rUF1T3D+2jm1WPr7WCZyYZf5ULzW6/GVQsBvC/PcX7ZrU6Cl8DFDFzcApdXKyqLq8cEHYKySulbz+QqegyIErTezdZO1mBGxebsqrXTyQ3YJNqtB8fMA9EDwgmLK4H6IvEMZO4WJ2SnJUzGWOwqm6CT7TwifN8vQJvUXRNepzTAw9uFJb0LYOc5pE2ODRetKRdNhDbOeHa0ojBNgNXg6Mbp4MKglfhpSm8T/cd/m6mr6BZVGUwcEYMTQMiZn5cIGDI6y0OCJZdOANh1nZEazgghIlJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB7829.namprd11.prod.outlook.com
 (2603:10b6:8:f1::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 10:59:13 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d%2]) with mapi id 15.20.9818.023; Fri, 17 Apr 2026
 10:59:13 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026
 as a quirk
Thread-Topic: [PATCH v2] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026
 as a quirk
Thread-Index: AQHczlRcr8TuMsx/bUadIrJnH/8qybXjDl8AgAAHTfA=
Date: Fri, 17 Apr 2026 10:59:12 +0000
Message-ID: <DS4PPF69154114F3775436040F9F33D4D29EF202@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260417102350.28328-1-jouni.hogander@intel.com>
 <1cd1f26d7a74c778f2cbc1ddc3dd5e5fd0f3a80e@intel.com>
In-Reply-To: <1cd1f26d7a74c778f2cbc1ddc3dd5e5fd0f3a80e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB7829:EE_
x-ms-office365-filtering-correlation-id: 4eec35f3-7e42-4fd9-5927-08de9c705c3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: LAJxqGOzKU5ELZHRk3cswtyMUxc9SslxWOoRDM920RkuLCLhS3fSGmVSdWTn+d3VigB0COEDzqAf5v28hibPIn4RCDGDsswkbqEfPLsFxrrfCc2T1vHqII6TFOnVmXwPM+fVds9YUvK1rXfgSmDUQqFxkk+xUfeMkJjSj1g9X+dZ8Wr/79ejLlJVIRvnJo81oi7O2/vCRcQRhBspH11rqrtDb6bEU7Yp1+TO1y8lIhfxMi34UXFUPwhxpUD6LN9+xt2TVmVz5uCQNPkUvwxcdyAfEMiJCcd8uVhApP1+5n2wS6LSF8P/rfjjqwnMT8ltABaJH0gLT/uLkac18sotKqhjfX5YwZ8+chE4xkP5VE9yqTBtbfsamwx6xvgPy07nQNUqGlVVsJQkFMvuGHQ4SXhEcGAtktOPaeSbf47LukQP2KfGzNqSb/feQQFPKb30ean4OLfZzp+EO03B0BIPl4rcEcWJXiI6tpG5emOdOTFcyEnce8JzKu6BoZ7+ew93UJfREQwCaeTU213EfKETVFg1OAFIt1zEYYOU7+MlDsWZrSBEDQTcArDh9qghaSrORl/43HS20m0TYv/vwCu3grBV6w8XeEJwz8ULG3IN+SKCaWyrz3ErEsO2FUeavSF6AT64c0NaATH55qZxndCuhlxUmDHGVJgwWBlECXGsWcHleN4cFKQnebYGEinMfuDcBPflzgN2utVfxhgo/+kTe6F6ixBBWUj/6GfDiNwMMm0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVRJcWJqWmp0TzhvNXN1OHJ1Tk16SDFPOFBObEF0dXFCb0lORHdjQTdJYzZj?=
 =?utf-8?B?Uy9YMmQvNitzVmxMK0pqWTRtSEZGWW1NSG5FcFlWMGpsZ2s3YUlORXhJUG1P?=
 =?utf-8?B?T1plQlRrYjBoMGZBdnB2ZGZnQkp1T1BNVjIrWjRBUXBKY3R1VlZhdDFQdUtm?=
 =?utf-8?B?UXFySmEzUFgzUGkzRUtaOEE5Zm80dldROE5hTDRqam92bDMrclp6YWYyQnRH?=
 =?utf-8?B?Z2NWWXVIRXZkT3FBVnBRemNiemEyekQxZXY1MGVSSi9MeU96U1ZOMDBBbFdH?=
 =?utf-8?B?NjRYUUVFUE5uOXd4MEJIZ3pLK0VVeXMvanBpL1YxY1dycVlCTDJtU0svc25V?=
 =?utf-8?B?K09yRnJBWXd3RTRYUmNnQnRxTi9aZi9WWnpiV2UvNXljV05sWjJiT2hCQlVG?=
 =?utf-8?B?S2FHcWlEbFA3dnllWEFXWnpzdldneWJ4cFp3Q0QwOHJPNmpTWUhyM2VOUFB0?=
 =?utf-8?B?cWZ1UzNWU3lHeWpQN2p2OFNOK3BzelBnRGRSOWhmWEZ3ZGNEeHo5ZGpiZ3l0?=
 =?utf-8?B?L2pzbWRzeDgvSjAvTExzbzNISDdxQjVMWDJzWXhBSlNHOG1QeDB5Sy9hYmM2?=
 =?utf-8?B?Wng0Ymd1ZjVoUmdYdGt0MkNydUx3UGtlbTVEQ242Njc2UERiWVpUdndON1pC?=
 =?utf-8?B?S01wV2NhcnBob0c1VmlsNjFIOS9BSjlRdGkzUXU2UC9KRWNZV09xZXdqeW5v?=
 =?utf-8?B?N3RWT095SFIwSC90Y2x2Nm44VG5Jd3I3aTluU2VXcGlRakhFODYxUHNIcGF0?=
 =?utf-8?B?dmUvblZXMnBhOFRRMmcrQkdSbVRoVURCYUxqVmJDTlZFZVJZbGdCMTc0c29T?=
 =?utf-8?B?TVpqS1E1ZWc0anlZVUYxaEdHY20vT2NwRTU2bVQxZW81QlBxaWtNQ1kxM2lr?=
 =?utf-8?B?cEg5QTVaL0pMUVBSUStoWTRsanMxd2szVE1mbm5GdEdPbUN0WVhDM0NrUEQ5?=
 =?utf-8?B?czlobkFXYnRqVU9KeHVVejVIZVhmR0oyMlNkekNIZU5jcXhRNG9nL2hyZ3lo?=
 =?utf-8?B?YWY3dUxvdUVBNE5wMVRMdzR2anRVNXBJU0w1REtUYk9GcVh3azdxZ1k4R0ow?=
 =?utf-8?B?WnQ5TlE0RENpMVh4Rm1DTHQ5WHB0SjN3SUxZRmQ1ZHF4Z0c3Q0dVRWpuMEJz?=
 =?utf-8?B?d1R5a255SUxoWDZHa2ZQbmErL25za2dQOUVmbWt4ZHFmNEhhSmU5RGluRDdx?=
 =?utf-8?B?RXNUdG1PZ2wxRlBxL0liN24zY0NQeEpTMlJIbkJFUUpicFVHUUdFT08zcmEv?=
 =?utf-8?B?dU5rWHZVOS94azkvMCtTdmJ0TzdGNzZZSk9uakU1aGVEWmNMTloxYWwvWmJa?=
 =?utf-8?B?K1NaaEpzVSt5dS9IWXlTNVo5SWJTYWRiU01haEZtYllpc0JmZnJuVjd4TWhS?=
 =?utf-8?B?Qkc5SmpRZWkyS0NzZUxEMVJSS1ZNcndQTDk0aUpMZTk2QXNDS2UrbWFHMHpm?=
 =?utf-8?B?WDBRbWF5cEJvZnJ4WHRuVjcvMjFnOTZ5cEIvOFU5UGpiLzhhS1ZXbTN0UEJu?=
 =?utf-8?B?T0lWNGNNNzQwd3NCYS8yWVlTV3ZKeHhud3oybVhwRmZNWExiN2lFc09yWGJT?=
 =?utf-8?B?b01kM1dpdXNBWEViRmgrbzFVM3F0VkJNaGlDOVpIVlFzRlpkbmpicW1LbDVn?=
 =?utf-8?B?ZSt4VnEybFNpNElXQ290TkVxZUlJeXh0b1o2UFJlNUNNMTFGRHpMU3JTTFJD?=
 =?utf-8?B?ZGpiTmpEaE9Ka1JEazhXV1R6bkdMaDA3aHdrUmt3dDZzZWR6RGNkaU5pTVNp?=
 =?utf-8?B?eXhvY2NHMXZqdGpsTGlVQno2TkcvTHh5aFdoR0dwZmQ4ODRUL2xxSWJ1T3JE?=
 =?utf-8?B?Zm92YmFRb0xQN0YxNHd4Y0p2WFFwNkRNR3EvaU1ab01MVjdJQmFSU1ZVblFW?=
 =?utf-8?B?ZGlmb3ZjVFk4WW55TWNaa2ZLUGlOUFlBUS8veC91TEEvRXE5TWRvVkNrYmg2?=
 =?utf-8?B?SjFqemN1MlBFRnQ4US9mTUx3YVNnUjZRNE5SQXpBSWxVaXZHTmhsd0tRVGp5?=
 =?utf-8?B?QUFYbWZjVG1kdVp4cGxRM0pLNWpJNlA0R1BvSXlyQUxaS0wxbHBDbkhlQ0dN?=
 =?utf-8?B?N094MkgwT3lBbnNOWkw2bCtwRVYrd3NOZFA2RXcyQi9oU3U2RnBTam4xRXU5?=
 =?utf-8?B?Y1F4T3NHa0FGS3dHSmZMZVh2dVlvUlB2enY1ZDcxMlJ6QVlrTWhHVjd2Rmh6?=
 =?utf-8?B?ajdVeXY5NVN4dWo4QUR1MnhleEFJY1pUZXpUYmFxWkdybGwrY0RHTi9vS1R5?=
 =?utf-8?B?K2NsSkFjUjhRc0JWSTUrbW5LUlpBR0xBbk8valhPdzB6OW1kME1LZEpvWVdx?=
 =?utf-8?B?Y3NiYkF3RDlocGZ4Z1BnRGp2K0YxTVlnOVhRM3lNaFVXaVNmYm5ZZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ngVD1hbhwLaQpsxlBLRAlUtPb32EfITQfUu5xEEJzwOOATmHonMuThTd0SRa1WjR3D/wbbpZe1GM2zkGEKC8YiC/qOsl0K7j3uJODvsUf7fu/rI9cger0PV67EvaDcZt2z+HuFQBQdYtoG7SPrMqh9bH/Fbv/ckCqDMWebRCWQsF3zS+cGTBYM7AxsJPs+P4FpKYnAOb9EDCNqVZFo1TxaI8T8donddUua7hc4Hv5JwSbKFuiDS2xFYCoDMrApPKMU6Qr7I7B9nHKbWPQDO3CAcxa/oFEsxMJOHT/jsKyntCM3fkW/yP9GciJw16+Iwz4smKYLHKJv3813Nw0NjCOQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eec35f3-7e42-4fd9-5927-08de9c705c3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 10:59:13.0472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bau1HKHdtXZomg9cGoNYlk9UjBz/WcbRPbiUaERJBzcyHJI3Avr/iKHKC5R4ek/NVhTtLkcZZyFVu0ILJ2mFrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7829
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5E6F641A8DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pIE5pa3VsYQ0K
PiBTZW50OiBGcmlkYXksIDE3IEFwcmlsIDIwMjYgMTMuMzMNCj4gVG86IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0g
ZHJtL2k5MTUvcHNyOiBEaXNhYmxlIFBTUjIgb24gWGlhb21pIEJvb2sgUHJvIDE0IDIwMjYgYXMg
YSBxdWlyaw0KPiANCj4gT24gRnJpLCAxNyBBcHIgMjAyNiwgSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEFkZCBuZXcgcXVpcmsgKFFVSVJLX0RJ
U0FCTEVfUFNSMikgZm9yIGRpc2FibGluZyBQU1IyIGFzIGEgcXVpcmsgZm9yDQo+ID4gcHJvYmxl
bWF0aWMgc2V0dXBzLiBBcHBseSB0aGlzIG5ld2x5IGFkZGVkIHF1aXJrIG9uIFhpYW9taSBCb29r
IFBybyAxNA0KPiA+IDIwMjYuDQo+ID4NCj4gPiB2MjogbG9nZ2luZyBhZGp1c3RlZA0KPiA+DQo+
ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8t
L3dvcmtfaXRlbXMvNzY3Nw0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gQWNrZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IA0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jICAgIHwgMyArKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9xdWlya3MuYyB8IDkgKysrKysrKysrDQo+ID4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaCB8IDEgKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNjNjMTk5NThhOWUzLi5kMWJhZTdkMzI2MTcgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBA
QCAtNjk1LDYgKzY5NSw5IEBAIHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRl
bF9kcA0KPiA+ICppbnRlbF9kcCwgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY28NCj4gPg0KPiA+
ICAJY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5zeW5jX2xhdGVuY3kgPQ0KPiA+IGludGVsX2RwX2dl
dF9zaW5rX3N5bmNfbGF0ZW5jeShpbnRlbF9kcCk7DQo+ID4NCj4gPiArCWlmIChpbnRlbF9oYXNf
cXVpcmsoZGlzcGxheSwgUVVJUktfRElTQUJMRV9QU1IyKSkNCj4gPiArCQlyZXR1cm47DQo+ID4g
Kw0KPiA+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDkgJiYNCj4gPiAgCSAgICBjb25u
ZWN0b3ItPmRwLnBzcl9jYXBzLmRwY2RbMF0gPj0gRFBfUFNSMl9XSVRIX1lfQ09PUkRfSVNfU1VQ
UE9SVEVEKSB7DQo+ID4gIAkJYm9vbCB5X3JlcSA9IGNvbm5lY3Rvci0+ZHAucHNyX2NhcHMuZHBj
ZFsxXSAmIGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcXVpcmtzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVp
cmtzLmMNCj4gPiBpbmRleCA4ODNmMjk3ZDRiODMuLmQxYzQyOGVlYjYwOCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiA+IEBAIC05
NCw2ICs5NCwxMiBAQCBzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX2VkcF9wYW5lbF9yZXBsYXko
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiAgCWRybV9pbmZvKGRpc3BsYXktPmRybSwg
IkFwcGx5aW5nIGRpc2FibGUgUGFuZWwgUmVwbGF5IHF1aXJrXG4iKTsgIH0NCj4gPg0KPiA+ICtz
dGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX3BzcjIoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpIHsNCj4gPiArCWludGVsX3NldF9xdWlyayhkaXNwbGF5LCBRVUlSS19ESVNBQkxFX1BTUjIp
Ow0KPiA+ICsJZHJtX2luZm8oZGlzcGxheS0+ZHJtLCAiUFNSMiBzdXBwb3J0IG5vdCBjdXJyZW50
bHkgYXZhaWxhYmxlIGZvcg0KPiA+ICt0aGlzIHNldHVwLCBhcHBseWluZyBkaXNhYmxlIFBTUjIg
cXVpcmtcbiIpOyB9DQo+ID4gKw0KPiA+ICBzdHJ1Y3QgaW50ZWxfcXVpcmsgew0KPiA+ICAJaW50
IGRldmljZTsNCj4gPiAgCWludCBzdWJzeXN0ZW1fdmVuZG9yOw0KPiA+IEBAIC0yNTAsNiArMjU2
LDkgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF9xdWlyayBpbnRlbF9xdWlya3NbXSA9IHsNCj4gPg0K
PiA+ICAJLyogRGVsbCBYUFMgMTMgNzM5MCAyLWluLTEgKi8NCj4gPiAgCXsgMHg4YTUyLCAweDEw
MjgsIDB4MDhiMCwgcXVpcmtfZWRwX2xpbWl0X3JhdGVfaGJyMiB9LA0KPiA+ICsNCj4gPiArCS8q
IFhpYW9taSBCb29rIFBybyAxNCAyMDI2ICovDQo+ID4gKwl7IDB4YjA4MSwgMHgxZDcyLCAweDI0
MjQsIHF1aXJrX2Rpc2FibGVfcHNyMiB9LA0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZHBjZF9xdWlyayBpbnRlbF9kcGNkX3F1aXJrc1tdID0geyBkaWZmDQo+
ID4gLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+ID4gaW5k
ZXggODMyMTRlYjk0YjBjLi45NzBhNGZlNTJmYWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBAQCAtMjIsNiArMjIsNyBAQCBl
bnVtIGludGVsX3F1aXJrX2lkIHsNCj4gPiAgCVFVSVJLX0ZXX1NZTkNfTEVOLA0KPiA+ICAJUVVJ
UktfRURQX0xJTUlUX1JBVEVfSEJSMiwNCj4gPiAgCVFVSVJLX0RJU0FCTEVfRURQX1BBTkVMX1JF
UExBWSwNCj4gPiArCVFVSVJLX0RJU0FCTEVfUFNSMiwNCj4gPiAgfTsNCj4gPg0KPiA+ICB2b2lk
IGludGVsX2luaXRfcXVpcmtzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gDQo+
IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
