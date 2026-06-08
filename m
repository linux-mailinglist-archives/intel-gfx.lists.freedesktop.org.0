Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gsRCDdtyJmqqWgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 09:44:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905D0653A9E
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 09:44:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="KQBZ6t1/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2830510EE60;
	Mon,  8 Jun 2026 07:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B15B10EE5F;
 Mon,  8 Jun 2026 07:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780904663; x=1812440663;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OVzoqK5L+Q9/LY/lIwtmQwgthtn6ZtOtB0RibAPwmT0=;
 b=KQBZ6t1/t4/NUrvYnCUGStBXn3csFHZqKBoYACVuH1iYBgvVcosUW42s
 om3dTfGjhEMuKu96vfANK8uWumOef/APU4+iQ/DDdO/Md0Wp3dyu12MFf
 ay1O3gX2QP7eCy2+vAaPs2pPiUnNCByJHDy9ZUDkBVouFd8jUYnT9jiWb
 cchg6cjTc0OhpYEGk4Si4WBL7rnPQVLDnoz0c/8iNNJ7p6GV9MVhdBzDG
 uBf+WnwJpyvXpkZFBXYCOhWMfdI5EmMUpLrU7P5LLuW6jbhYlzdjoW6zx
 UiBRqBrX3IPzun8ERTAIqE5IOwIBihjNQcjLi48dEU3FTPFSYNsNSKH3y Q==;
X-CSE-ConnectionGUID: CPhFF4rZS0++BFpk6Wjc9A==
X-CSE-MsgGUID: w7O5nmOISUSjgwwWN0cB8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81754615"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81754615"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 00:44:23 -0700
X-CSE-ConnectionGUID: pvzna7Y9RCmbBE7yj6aG+g==
X-CSE-MsgGUID: 0/yiuCWDRvOI2EJbHT6ebA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="283554763"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 00:44:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 00:44:21 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 00:44:21 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 00:44:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwlGjHZq2P5tRbr//bIQag1JXABrGrVzRtCYf2+GHPI05Td3Xl/P+OeW29lxhmeECUY2maW+XrZUIFHF54PTlHFB2PcAJYMXA1jPFVEtfVGoikTSnzT4DxRyotm3AQsX9dZuqEnrcDDEmLlGwrV0Qeql35q2vS37c3AhZByxCWeDMj+BcGKa5v5DOkLLPmjpEUT4ytK3bZa8N7qjV26pRhbTmu1bVwKJFeLOTngabC98t6eo/uU4Wph5vki8VW/K6E/DvuQ5j5zS16xz8XB5C84DpMU/H/NsxZivfltuUzY3lSWz1inzVYAtCMie/gtwUfuxDl5qlZijKXEQkrim1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OVzoqK5L+Q9/LY/lIwtmQwgthtn6ZtOtB0RibAPwmT0=;
 b=cvh+FKdZtfvlR3OnQgibLtbStbC0EQhtdTbJ/2bW0n7HutMqYWSBS2C28PYCnB50IMFqYr6SInEqzqA0wUaTpxEfNRk4RvY3/CA3uMa3vHEI/BBrSLl/UJkSlFgMZ7q3yZcxVTNF2Uvsv3LfuHV6SZ6p5/8XRswpEcbTQezWQ0QYUup7nWaJkmpc9lQY7VLfC9q1IIQB9Rkeo/bPBGDEJJD9ShHn5yvEDclkYOI8GWDi7htT026XzO3yC/UQ54P/YOjrNNo8N4eeKEHKD9adOmQDQkibVIZ2Eobz+9yPZ79EY88e5PC4ODwCDkRJYkh9U0stwuz8PhVvJn3/JcSgrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB7736.namprd11.prod.outlook.com
 (2603:10b6:8:f1::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 07:44:19 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 07:44:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 14/22] drm/i915/dp_link_training: Add helper to reset
 link recovery state
Thread-Topic: [PATCH v2 14/22] drm/i915/dp_link_training: Add helper to reset
 link recovery state
Thread-Index: AQHc8a4gG5+aWseRqUGf9VgnaPLQo7Y0UcEg
Date: Mon, 8 Jun 2026 07:44:19 +0000
Message-ID: <DS4PPF69154114F76777882C2948C3AB6F8EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-15-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB7736:EE_
x-ms-office365-filtering-correlation-id: f468806d-fc55-4d5b-3f8b-08dec531bf8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|56012099006|11063799006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: VKHP/irINizDXMgr9bMSvRpgptljARpXE5ZdVJE3xAqsA75igTWF47icCO5YtIZ60d0uIyoVNJJYPXHXM0xa/vl9129wEZcqDPPM05fTZVfUUjGeeTaptEu8w6ldhAHCWpi+TwJG+gVg4T/0CyyFfL1UVNOj4VlQ7yFfJTdvYu4ALj/qUo4d4aXJjtDIYvHe4lGIqU/yxn4zXBOxj2tY0bOU6OCunY2NzX5OWbnNf7eT8V05Eut7X0dlMc6YFn5Sry2a9pHG+2x1d1OKomb8B3uJOKlpEBkQMP+NZ+dK1EfiQtpZApXlGqcsOc4wXgH5lHrUMDvYI0JH8yY+425PvrqIgQ8eN6Uo36dxepLLy6FjD4JNEYC8XzHX36XV9yqCLbbesqMT3R5NK9EFEkH47kLapNEu7fEmnFLKgL18+JNaGVWeuF4Kx9zyI6SLc3oF5U7kGo5p2XhTv1mzUuUFI3zqcbt8v2ltYi9uIAsGn80CWu9dXo2oJroN303qZpnNfgpBYFs0SkeZDyw69wcXghVUOZuzoaqZt4kxw7tT6f8R4Aww+LD6o1uvSM1YWEYe9DkHo7t9OsajG72TF8ddsKe9NT5t3wK6SZvBMp8w8FeidOUw1jlobFU/yeni+1S0s2HHdjLQsHwrhG7RETRbQpUOjOlADSfhBxjhOJ4la76kfnqxKfpXQ/x4x8zsVuK/dUFtGrtZePcAxz6SCm9NDfUsOSxEGm3k9q6VxJyXHM9gl35lntOmWXHW5x26ECyw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emZPSnJ3b3pzMk4zcllVejNMK2Z5c3dOQ0xLa21uSEN1WFFuczZhZ0loclZr?=
 =?utf-8?B?NjVOL2x2NEcvdjd0KzFDOWlTT1AzUEJmTGxtdEZsQTBzdk9SQjdwWjhSc1Vv?=
 =?utf-8?B?MlRJdVZmenFFc0hobzVHdG1SMC92cVJpcUY3bDg2Q0JaMFRYNU92Z01tRmxi?=
 =?utf-8?B?c0l2ckJRZ3hvNkZHQVlQRXRqWERCYXcyRXhrdHZ0UGtIZUhGZENSV0ZVZ1Q3?=
 =?utf-8?B?SVZXY2E5QXB3TmFqS0NSeTdlVTlKUU4rczhOTnhBVFBCSCtTKzBiSC9BRU53?=
 =?utf-8?B?Ym9GWHRPRWgxdERLR0VkdHlYSHZwRW5MTFVWWmVPY0dpRzBQSjMvQWFpUFQw?=
 =?utf-8?B?SUgvZ1FQeTBrTFBYWGhaN0h3QlR3MTZzOC9HSDVmYXpEWDhQVGdxNTlKeEg1?=
 =?utf-8?B?OHFHT0kxN1FSWitDTzl3MUlWa0RtT0YrVG82WllWMXFaUzhYQ0MzNFhXeTgy?=
 =?utf-8?B?aG0wMTBrYVg4YmgzVjNLSC9uK0c3RTlGWVp2VkIyUUMrTEx3dFJLTlFISVl3?=
 =?utf-8?B?TWF1N1RzbWZ6OWp3ajYwaU1LZ1pVOTAyanNSMXIrbGxoNEhXMy9Ka09iN1k0?=
 =?utf-8?B?RCtETUQ4TDhVZDI5YXduc1dad0VmS0tRRUZ3d2ZTUysvRG1OUzhDL1ViTkw4?=
 =?utf-8?B?ejI5RXlzQzAvb1VySGFUaHN1Q1ZYOFNTZDgxZkFxUWFXdTJFN1BLMUx5Y2ov?=
 =?utf-8?B?S0duYk1DdHRTQk1WS0RhNitLOHUxemFXZ3Y2enVPWFdTdEJITG0rRjdtNTV2?=
 =?utf-8?B?eU1BbzMzeE54TWpLcGFrWHF3NENGaWQrSDVYVm52NnRBcUErNTZpVVhIVjhs?=
 =?utf-8?B?NVZpcVFuOFg1YnNHQXU4dnI4dlpyaWo4aHN6L201WENpNHk0cHkxRFJkdFVy?=
 =?utf-8?B?dDZBZkhXTi9rZmdONEEyZVU2V2FISjNGNmZJSVduYk9QNytlNGd2Q2JaaXA2?=
 =?utf-8?B?a0Y0cGhlMkFCUVNvQXV3SWYydTd1cENMVHhkZVNvMFpWekpxbWVXZmZ1bXQw?=
 =?utf-8?B?U0tHTWlwaFpmVFdxYThXTmdodXpxOWtjb1U0STZpSXo3VGtFOVJSWkh5ZmFK?=
 =?utf-8?B?S2FVVngxcDE3WVpnTHYvRzgrUng4bko0MDFIYStPRmllczdwYUpvZjdTcE9B?=
 =?utf-8?B?VmUwTkNuRURBb0Y5UjlTbWNsNEVYQ29NM1Fva0wxQUZXQy9rQUhWZHBrTll2?=
 =?utf-8?B?QWVvcjBCc3RMV2k4MUpDaVJzK2REVWoyOUNsKytKNGduZW9iQTBta0t5TTJy?=
 =?utf-8?B?b2hZb0JjOU0zQ28remwyaXF6dWVZZEF2alphQk1QckJQMUpCWDlIeU92ejVZ?=
 =?utf-8?B?anhXcCtITzk5N2Z5SE5PMWdqUlQ5ekxkeG9oV0ZKTmtTR1JvOW4ybmp2andx?=
 =?utf-8?B?M0lBWS9ERlNPcXBPZVVZTTVEZjZoZWkxZTVKeDZyUjJ1dmVDdDcvVEsvSUlT?=
 =?utf-8?B?eUFuektpUXI2SlRRN2haU3FtU3FGOTNmb0FxdzIxVDAxMnJEQnBiNm55eEJZ?=
 =?utf-8?B?NjU2R2dVVkN4MFNvYVZIVk8ybmppNkx1eFJXanhPR0UvVkxYRHNOU2M2U1pE?=
 =?utf-8?B?dkQrVForWnJUZ3c3T2FwZnNnZHp2Z3JCT0MzQktpdXI5TFg4TzBFdkdMS1Y4?=
 =?utf-8?B?ZE82Q3dRM21MNmpkaHlqdXkxeGx5ZkVxTW0vR3Q0NDBTNzhuYzdCQjlPUSs1?=
 =?utf-8?B?U2JkWW1KK0p4UjhaSzFvRllUY3hjUmhMK055VmRxa3hhRUxOOHI2cVNkYkV4?=
 =?utf-8?B?UmFBc2FmeU1PQm50bUtmN1grZ1BlaWQySWo1SzBQWlFqb254OXNjZHA1MGds?=
 =?utf-8?B?L0JiWkVJdTZBd1hhRklOYVpXSlVvQU1reEl3eGNCNzIwRS9aWTVaZTlacW8z?=
 =?utf-8?B?a1VKVmxqVHgxQ2ZKbmsraDBtTkRtTnBWQTNYR0lGdWRLTmV3a3BvNlRXZlJz?=
 =?utf-8?B?djVyOHRXMUdhRHZOdSswMnN1RnBpSS9ONUpUMjFjRmg2WUo4TEJ0NFAwVUtM?=
 =?utf-8?B?QUwvb1NzOWVlM0xlZyt0MTdHdGYwb3BQdzdvWHgraUlEK2Voc1M1RUgxQk9H?=
 =?utf-8?B?YzZaeWRsNkxRQ0lJSzVmUWVDZWV6Qk11UzZpMUozTExVamU0bDgzNW04Y0Nx?=
 =?utf-8?B?UXJkaGh4YW9ZRzdnVnJTdTdOS20wdXNyak5SOUtoNVF1MjdNV2JuYUpVT2c1?=
 =?utf-8?B?dGRLVGs3ZDB0NzBJWVBzMFVaT3JJNXJ3WU54d29FVGhmcjc0VGtwRFZaRXkv?=
 =?utf-8?B?L1VTbXltRXlTVkxOTDhJMEs4Q2Q1VW5OM3BDRjBhc0RNSGMvMVJaL2JhbnFU?=
 =?utf-8?Q?hS8zgtCuC0O1f1VIg7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ry6+DYxS0HqRPxFCEd7UCETsSxO8D8Kjt7I2umH33kXmTBBRsDbiVckIGastkpWyeuYXCssIKbdh3iR+UL/2Pe5dVf/a5xKxk5lRkP8ACHTEgdJrhbpNOco9J/WxK+uSBZk0bLMbiy5S35Kad+bhOEjZT8BakzdFsw6sVHYYnI2mftDKEgv7/6Z0ZXbpSpF7AuX/DM7p6pLhy0u0KmIxG7ryHWGwBIEDqEQZ+t84lpAoYvdN6E6TYqePUlzzbbbctjiHgG+XEEigiOCA8YAF/A2eNaOZq9kSDNoquXen3PGnETFZRtB+CgKAznqf/QH8HbTwlA632dwq1A4Pb/Arsw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f468806d-fc55-4d5b-3f8b-08dec531bf8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 07:44:19.0688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 21CSvNNPyBzFzkg1W6EjUZmGhbC8Y8MDcvMb/ersZQHJwDyVoR2eT2QCe7r1uLFGhcfmQ25LEC/yfHSnt3tX4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7736
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 905D0653A9E

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAxNC8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogQWRkIGhlbHBlciB0
byByZXNldCBsaW5rIHJlY292ZXJ5IHN0YXRlDQo+IA0KPiBBZGQgbGlua19yZWNvdmVyeV9yZXNl
dCgpIHRvIG1ha2UgaXQgZXhwbGljaXQgd2hlbiBsaW5rIHJlY292ZXJ5IGlzIG5vDQo+IGxvbmdl
ciBuZWVkZWQgYW5kIHRoZSByZWNvdmVyeSBzdGF0ZSBjYW4gYmUgY2xlYXJlZC4NCj4gDQo+IFRo
aXMgYWxzbyBwcmVwYXJlcyBmb3IgcmVwbGFjaW5nIHRoZSBzZXF1ZW50aWFsIGxpbmsgdHJhaW5p
bmcgZmFpbHVyZQ0KPiBjb3VudGVyIHdpdGggYW4gZW51bSBpbiBhIGZvbGxvdy11cCBjaGFuZ2Uu
DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jICAgIHwg
MTYgKysrKysrKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRleCBlMGJiOWY0NWIwYzhlLi5k
YzFhZDBmYzZiZDhiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBAQCAtMTMxNCw2ICsxMzE0LDE4IEBA
IGxpbmtfcmVjb3ZlcnlfbWFya190cmFpbl9mYWlsdXJlKHN0cnVjdCBpbnRlbF9kcF9saW5rX3Ry
YWluaW5nICpsaW5rX3RyYWluaW5nKQ0KPiAgCXJldHVybiBsaW5rX3JlY292ZXJ5X2F1dG9yZXRy
YWluX2FsbG93ZWQobGlua190cmFpbmluZyk7DQo+ICB9DQo+IA0KPiArLyoqDQo+ICsgKiBsaW5r
X3JlY292ZXJ5X3Jlc2V0IC0gcmVzZXQgdGhlIGxpbmsgcmVjb3Zlcnkgc3RhdGUNCj4gKyAqIEBs
aW5rX3RyYWluaW5nOiBsaW5rIHRyYWluaW5nIHN0YXRlDQo+ICsgKg0KPiArICogUmVzZXQgdGhl
IGxpbmsgcmVjb3Zlcnkgc3RhdGUgdG8gaW5kaWNhdGUgdGhhdCBubyBsaW5rIHJlY292ZXJ5IGlz
DQo+ICsgKiByZXF1aXJlZC4NCj4gKyAqLw0KPiArc3RhdGljIHZvaWQgbGlua19yZWNvdmVyeV9y
ZXNldChzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gK3sN
Cj4gKwlsaW5rX3RyYWluaW5nLT5zZXFfdHJhaW5fZmFpbHVyZXMgPSAwOw0KPiArfQ0KPiArDQo+
ICAvKioNCj4gICAqIGludGVsX2RwX3N0b3BfbGlua190cmFpbiAtIHN0b3AgbGluayB0cmFpbmlu
Zw0KPiAgICogQGludGVsX2RwOiBEUCBzdHJ1Y3QNCj4gQEAgLTE4NzgsNyArMTg5MCw3IEBAIHZv
aWQgaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gIAkJbGlua190cmFpbmluZy0+Zm9yY2VfdHJhaW5fZmFpbHVyZS0tOw0KPiAgCQls
dF9kYmcoaW50ZWxfZHAsIERQX1BIWV9EUFJYLCAiRm9yY2luZyBsaW5rIHRyYWluaW5nIGZhaWx1
cmVcbiIpOw0KPiAgCX0gZWxzZSBpZiAocGFzc2VkKSB7DQo+IC0JCWxpbmtfdHJhaW5pbmctPnNl
cV90cmFpbl9mYWlsdXJlcyA9IDA7DQo+ICsJCWxpbmtfcmVjb3ZlcnlfcmVzZXQobGlua190cmFp
bmluZyk7DQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiBAQCAtMjU0Myw3ICsyNTU1LDcgQEAg
dm9pZCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvcikNCj4gIHZvaWQgaW50ZWxfZHBfbGlua190cmFpbmluZ19yZXNldChz
dHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gIHsNCj4gIAls
aW5rX3RyYWluaW5nLT5yZXRyYWluX2Rpc2FibGVkID0gZmFsc2U7DQo+IC0JbGlua190cmFpbmlu
Zy0+c2VxX3RyYWluX2ZhaWx1cmVzID0gMDsNCj4gKwlsaW5rX3JlY292ZXJ5X3Jlc2V0KGxpbmtf
dHJhaW5pbmcpOw0KPiAgfQ0KPiANCj4gIHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nICpp
bnRlbF9kcF9saW5rX3RyYWluaW5nX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4g
LS0NCj4gMi40OS4xDQoNCg==
