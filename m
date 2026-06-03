Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5rNIEJscIGoowAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:22:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95030637724
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:22:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RXIwvCnS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC13110FD22;
	Wed,  3 Jun 2026 12:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A4B10FD21;
 Wed,  3 Jun 2026 12:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780489367; x=1812025367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tsYuYGyh6u7pD6B1vmNxngDCZEVg/Ti0r3GSqFY5L10=;
 b=RXIwvCnS4r/nW/fqmSmvHkIE+x5a1DaC7yFf0Z8N7dVfcWrVm+zR5De6
 MzFxoAzhuEbKYg2UpjOrJ2r7+KYsTJEaS6r0rpUQj5wSHvOA598U0PCnl
 Xa/t9UJKtPFjkqJqtqj20dimxUnUATaaGAFjVjxAzOE5wuZQY4BW6N+T0
 gA37tuhKkzv6XsgZkj38DOSiSkfVIuTr5cDZaB3svNTfTMkMr2YwpSIbX
 783caQXxi3Rd66ARyFi2qYI7RLRaLDIG79+X7nMh6pRLuG/J0Xaq1akLG
 MkhH/9dOSVCnX6hbD+gJn2JXJIy1oJNPnm5fBuSd4CfdOAFZxIF/YWGl6 Q==;
X-CSE-ConnectionGUID: qNQGW1mxQvGJt8b91cDKRQ==
X-CSE-MsgGUID: pH+f7fccRletIdihscIHqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81477985"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81477985"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:22:47 -0700
X-CSE-ConnectionGUID: v5SiFbnlTUqP9LIQkH4hWA==
X-CSE-MsgGUID: jYpYSoe7QOqV+aQ8u7j/YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="282333136"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:22:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 05:22:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 05:22:46 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 05:22:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EM7zacJppb74P63SWRfGp5qhOnJZYD5udnfhlo8Wxiri8G1gHtZ/BWGe1vkS3CVwtbxGJt83ZiR3lpJsrHWFXkLtsAeZtLBo9Q3BNpyihLIRd95mqqxQwIZfGt3GQVnf+F+LDFZNGahEvx4qulPMP43cYW/xMkFbkTfwebwYBI2mDKys0mIDBmInf+pyJTgu9BK7wco/gKt+BjNuwsTYtqtwVRQTRIRHT6verPq1+6IWX5C0e9P4spiXBh6XrRwF12/9sDVdNZvYp9ldcsI/o4dEwOvu3+DP+c+cAjN0cJfRgCyGPPTtC0h/t8LNaf1QPwHPU3WG9DHMgWcJB1vOUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tsYuYGyh6u7pD6B1vmNxngDCZEVg/Ti0r3GSqFY5L10=;
 b=REj8S5bvrfb6PVR8bpt5zOyc+WOnhFYH8UCL6Qs91nSzayxpAjOe8uukF0iySIzzC4ivppu7iRrVMxwm74iXEqfW+EkVeE3NcReXFBoWXV6JsfnVwWiBZPlOkai5bGinrCYWJtRjDeCUpG0UGF4Gbk4beJlGb6fC91aVm4Dm15TxHqGahUu2Az2T/A6kp6s6i+hoWqbN93m95mLEIKrrssXasmYxrFs1wOaKcSK/BFZD/lA0qH2UL9wf4DcDonI9zL8DZUbo3EbjvbLXBG+PcCFRaLFEVj/w56KpGFrQuJ0wlYTY6HYxqTKFPmK5+b6l1bHbn2/ffEDvmW8VrPVX0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CH3PR11MB7676.namprd11.prod.outlook.com (2603:10b6:610:127::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.7; Wed, 3 Jun 2026 12:22:42 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 12:22:41 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 10/15] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Topic: [PATCH v7 10/15] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Index: AQHc7RlgOsf9459kaUas7Z+CpOi9gLYlERoAgAe5QvA=
Date: Wed, 3 Jun 2026 12:22:41 +0000
Message-ID: <DS0PR11MB80496A3F71CAB5709EAC788EF9132@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-11-animesh.manna@intel.com>
 <d0ca69d0-9f7d-4baa-aac5-07e84d8ae49b@intel.com>
In-Reply-To: <d0ca69d0-9f7d-4baa-aac5-07e84d8ae49b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CH3PR11MB7676:EE_
x-ms-office365-filtering-correlation-id: 73094089-91e2-4304-bdb5-08dec16acecc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|6133799003|18002099003|22082099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: YcNNQ5GX+ZNtlX9KlWdOzLvbIwC027cHEZ0yuZoZlx9Rt8NpaTZ3HFD3mOWf4gjKJYxt881y8K4V2JwmvsjNVsahAC3ouQ3Ec0gkIwFBoTB4lPRXD/peYp+qmNCxcJl/qUOZUgcQYAEJnEs0g4NkOz808EzYjsraDA2OpVle+dYgkCeQKvY8kWD/O+Ei0wwbYLcqFlteWVNcKkVuk4QkvvMReG/CK3q0jTnutC/Z8TcPynuK2J5Hkf8zDqGaNz8LroghtpUhxslIlAW90eDr6fxq/7yOTG7vfVxZPureJaPb8EcD2TQvtNmH47p6039dajCTCJdA6/Y9fxVZ3P6kD9wg0oS2sNanOIhTGg7qMcBLNqVfI9X0/BgMQ/qRLcYIG2foi8xVdf9sXbC0yGBYb1g5tU6y4WgsCyaC++PGeALYxwg6dBIoTWNXzo8aCA9MrRlJIhH/GpdS+KlwEI4Nv8RsnQKCSOxKnS+q8IsyZgr9b9Z2GdLAXU9t48FoSk99Fc10jsN5x1IhcdW2srXmqzT2btuwT+tiqFygdzG9fwuHcg5OoXIosZKktP9I6x2hU4XKjcpucb9AEIxmcYGdUCO4p3JKxiKpPsiy6tG13QY8WJUqmrq+MRKQcjbMUtdF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(6133799003)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEkwaXY5Z1JzZk53UFNSYlFHSUZBR2d6ZkRNUytYUWliT1pxNWV6d1lZd253?=
 =?utf-8?B?d1dWL1ZoUG5kVE4zL1RjV3lrL1h2dHlWNDVCb0lKenQ5cHNCVGp3cXB2bzIx?=
 =?utf-8?B?Y3BCVTJyWHBIMXk0Vlk5VXNma3Q5U3l1MzAwRE4zbEtGS0RSbmhOcVQrR1hL?=
 =?utf-8?B?VnhOUEZadDBuR2xIaEV0ejVtLzV1UWV6b1FFd0Z3SzFFLzdOLyt0RGtsVjFK?=
 =?utf-8?B?Yzl6RzRwSVB3M2hSMWM3dG4wY3U5KzlTSlk4OXBZSDYyelArWmc0bnJkaXB1?=
 =?utf-8?B?M2pOb2NVQkVnSFl5VkFPTHc5UzZiTFFwM095TmRSd0NlTWFBZGRDZXJCTy9T?=
 =?utf-8?B?Sks5VFVUVFZSVUN0NUF0NXpaSHN5OFB6a3RXaVhxbHVvUWd6QWs5N29JN3Br?=
 =?utf-8?B?ZXB6bDZtRGNodklrU3FzT01PUmNobGN4U3ZqSHJFckZRR2E5NUQ4RG9VV1Fn?=
 =?utf-8?B?am53bTcvQkhRSEpaa3VTak9OVWRMVk9Ja1F3bXBzam43SDA2RnpHTnNRZkxQ?=
 =?utf-8?B?L0kySXBqaUs4anJXVzU2QXhiSlZiUVZWbFpGNmdhUnJDTU5rVEFwbGtHQlFK?=
 =?utf-8?B?Q1dGWFhWNXVZUXZHZ3F5NjFjOXNUNjY3WlZUNU55VkxxdTlUOWNtcEg2amdW?=
 =?utf-8?B?c2pLVXB4QTNGQTlXZXBBNDl4eUpSV3RGNGRLYk9VRlZrR1czdEdFS0Z0ckpk?=
 =?utf-8?B?MmFBNy9kcEdsL1Ryc3duakMvQnVrb2h0MnNPdm4vYlV6dUZ3WHVlNHowc3p2?=
 =?utf-8?B?clBWSlVJL0cwZUZRQnM4ay90cTBEalhDNEEwc1MzKzcxWTB2amRpd2FQWHoz?=
 =?utf-8?B?S1cwVDRnQXpjQ3ppMkJ4dno5b2Rnc1pydEZ0U0V1R2hLWklRRmU4NSs0RWNP?=
 =?utf-8?B?M2FWQ3hLcmkweGJoQi8rWk1XQjV6NjRTZ0tkdzhHdmk4QlRCVVc5Z0d4KzUr?=
 =?utf-8?B?TGZ0czlWK1kwdFJtdTB5WUUrWHo2UlNIbTl5SWt5TTdhRjAxdGtoVjg3Z201?=
 =?utf-8?B?VktKa20vMStGWkhJVlhrTTUyUjhpMEs0cnRvb09oekxaeGIrdGkvRTF3K1B6?=
 =?utf-8?B?a1kybENUQmJlQloxNFJWT2ZNUTZneDNROFpYb0Y5NW1mNnhDSHZxZDV5ZTBm?=
 =?utf-8?B?bVdDVHFnc2FVazVJb0pNdVljMThpQVJJOGUyOFFHZXhxKzM0KzBEcDdrU09T?=
 =?utf-8?B?dlBmUFZId0hYN2JiZ2MxSGJQeStPU0tydzlIanhTNmErUEtQd3hrN3dJMmdq?=
 =?utf-8?B?dmh4bmlyekh1dlM4b2tXOWlEemd2NzFBRC9md0ZiQW9rdGpQSFBpRjY0MHZi?=
 =?utf-8?B?UFhHTVJDd3V6YkV1cVpGNGJtMVp4VXYxT3dDV1lpWWpKNGpVVDkrV3o5WnZV?=
 =?utf-8?B?alRsQysxYkI4djlFeTBncXFCS2RsMGZ6ZmYrUjZrOEJZY2g4eWhKRUkvZDA5?=
 =?utf-8?B?YmN5YTRMSVhHNDFwU0NWdjhEV0JDVEtFL1FFdzFSTnhIdUxPSE9wQkU5c1Jn?=
 =?utf-8?B?MzcraUIvM3hNVUF2TjBLRjhPYzA4WUhZL0lQSnFlcktZa0tuUGIrdWFsVC9l?=
 =?utf-8?B?VHRZZm1HSDJnRG9xSVJUcWRkdWZ4S21MSm5wN0xmY25HRDBQSFE3dU51WThI?=
 =?utf-8?B?bHV3MElpSUd6eFJlRjMwQ1ZjcEl5MHkxd1Y2UHgwOHFMWDFrMGtwNml1TkMx?=
 =?utf-8?B?WWZUVzQ1eFduNk03S0JoNk9Ob2RZYnhxWVBqcnJydkprRGlmUys1eHlQemFu?=
 =?utf-8?B?eXVjYUxSRDFCV0pxSDdvNlZudWpSMlk1a3QwU1NsWWpSUUZVUHRHOENYVElu?=
 =?utf-8?B?WUFneGM4dnd2NXJrckEzMWF3VldaTWpiUjZDUUZ3SGFOeDNkQUdvZFdENzJ2?=
 =?utf-8?B?anA0UkxCcndTNTJOZGZrQkxyMWxtbTZMTUJtUjZzZWNYMDBUM3V3Y0IxbmJB?=
 =?utf-8?B?akloT1VVbXB4TGdSUThVamFHdEJNenBKVzJvUkZoZXRkMUQ1RFI3dTh2ZUY1?=
 =?utf-8?B?NWZHRFpVVHJKQWFDWlNQNzVqd1pYdHpNaFIwOENVVXA5NHR2bU9ZOUt6Smxn?=
 =?utf-8?B?dXBjSFhGWUpTbWNXNzZYUWtZZkVKRzlSSnBWN2RoVndseVhKTlBiTDJqeVZV?=
 =?utf-8?B?NGRDV2c3TmY0cndOZ2NrWERmWkl5SUQ0VTRyY21QeEhyTUJDU2dJdjFYK3JB?=
 =?utf-8?B?RjczUGhucW9QUjVBT0tPWUR6dEpzcXd3bjAvWndlRThXZ1JNcFo0VDBXUy9r?=
 =?utf-8?B?ZTF5ZmxJUG5TSHo0aEllYmdidHVXMitnV3dvZ3BkeEpPanFRd0l3SVhOaWg1?=
 =?utf-8?B?ckpUS0NKQjJSMXZSakNNK0FLaW5abGZmNVVBcS8zZEQrQjEzOWRVZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: is2Z2R5g2iwFmQSQAWzyGI3+h11epqGFmM4TWbyPdSg7Fxxygf6bxhAzKpEV/G22AZ4bivp37va8K9tKzOCacKJ4LEurUxURhjWK1rK6SUWVkSIVgzXE3fKRPU26SlabB/9JRpBs/j/oRNvMsyXlwcVj45Affz2nKg2zn+frA1Y5HONsMOpU+aeEvyo+JzXw/W92Fi+U/AOB4erLGMMEhKjEuvf0QGD/natERoOuRwxUTV54XSBZC1bOdhFCMfDJyuRq/IpUPrKHgRLGXPXqXnMI/B0yUTY0137k0LM6U/mWTF1vcIyy6GQxwcHAoeFDplV8VoEUCtmVqJroDvnf6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73094089-91e2-4304-bdb5-08dec16acecc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 12:22:41.2799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fvPLUoRkVUhFVhephT3eJ1Rkbb6yf/nTjH21nc87xOodk2dFc/lxmPdz7OOm1iAbjyxselktG/kIrNf9qyvBQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7676
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95030637724

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogRnJpZGF5LCBNYXkgMjksIDIwMjYgNzo0NiBQTQ0KPiBUbzogTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmth
ciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbTsNCj4gTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjcgMTAvMTVdIGRybS9pOTE1L2NtdGc6IEFkZCBDTVRHIGludGVycnVwdCBo
YW5kbGluZw0KPiANCj4gDQo+IE9uIDI2LTA1LTIwMjYgMTk6MDgsIEFuaW1lc2ggTWFubmEgd3Jv
dGU6DQo+ID4gQWRkIHN1cHBvcnQgZm9yIHZzeW5jLCB2YmxhbmssIGFuZCBkZWxheWVkIHZibGFu
ayBpbnRlcnJ1cHRzIG9mIENNVEcNCj4gPiB3aGljaCBhcmUgcGFydCBvZiBERSBwb3J0IGludGVy
cnVwdC4NCj4gPg0KPiA+IHYyOg0KPiA+IC0gVXNlIGNvbnNpc3RlbnQgREMzY28gY2hlY2sgYXMg
dXNlZCBpbiBlYXJsaWVyIHBhdGNoZXMuIFtVbWFdDQo+ID4gLSBVc2UgZWxzZS1pZiBpbnN0ZWFk
IG9mIHNlcGFyYXRlIGlmIGJsb2NrLiBbVW1hXQ0KPiA+IC0gTWVyZ2UgbWFzayBhbmQgdW5tYXNr
IGZ1bmN0aW9uIGFzIGl0IGlzIHNpbWlsYXIuIFtVbWFdDQo+ID4gLSBNb2RpZnkgRElTUExBWV9W
RVIoKSBjaGVjay4gW1VtYV0NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMgICAgIHwgNDIgKysrKysrKysrKysrKysrKysrKw0K
PiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmggICAgIHwgIDIg
Kw0KPiA+ICAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMgIHwg
MTIgKysrKysrDQo+ID4gICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9y
ZWdzLmggfCAgNiArKysNCj4gPiAgIDQgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y210Zy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0K
PiA+IGluZGV4IDY0M2UyZTg0NmQyNS4uMTdlOGRhNGZhN2VlIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiBAQCAtMTMsNiArMTMsNyBA
QA0KPiA+ICAgI2luY2x1ZGUgImludGVsX2NydGMuaCINCj4gPiAgICNpbmNsdWRlICJpbnRlbF9k
ZS5oIg0KPiA+ICAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfZGV2aWNlLmgiDQo+ID4gKyNpbmNs
dWRlICJpbnRlbF9kaXNwbGF5X2lycS5oIg0KPiA+ICAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlf
cG93ZXIuaCINCj4gPiAgICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gPiAgICNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gQEAgLTQwMiwzICs0MDMsNDQgQEAg
dm9pZCBpbnRlbF9jbXRnX2VuYWJsZV9kZGkoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPg0KPiA+ICAgCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwg
IkNNVEc6ICVzIGVuYWJsZWRcbiIsDQo+IHRyYW5zY29kZXJfbmFtZShjcHVfdHJhbnNjb2Rlcikp
Ow0KPiA+ICAgfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgaW50ZWxfY210Z19tYXNrX2ludGVy
cnVwdChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICsqY3J0Y19zdGF0ZSwgYm9v
bCBtYXNrKSB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29k
ZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gPiArCXUzMiBpbnRlcnJ1cHRfbWFz
ayA9IDA7DQo+ID4gKw0KPiA+ICsJaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfQSkN
Cj4gPiArCQlpbnRlcnJ1cHRfbWFzayA9IENNVEdfVkJMQU5LX0EgfA0KPiBDTVRHX0RFTEFZRURf
VkJMQU5LX0EgfCBDTVRHX1ZTWU5DX0E7DQo+ID4gKwllbHNlIGlmIChjcHVfdHJhbnNjb2RlciA9
PSBUUkFOU0NPREVSX0IpDQo+ID4gKwkJaW50ZXJydXB0X21hc2sgPSBDTVRHX1ZCTEFOS19CIHwN
Cj4gQ01UR19ERUxBWUVEX1ZCTEFOS19CIHwNCj4gPiArQ01UR19WU1lOQ19COw0KPiA+ICsNCj4g
PiArCWlmIChtYXNrKQ0KPiA+ICsJCWJkd191cGRhdGVfcG9ydF9pcnEoZGlzcGxheSwgaW50ZXJy
dXB0X21hc2ssIDApOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCWJkd191cGRhdGVfcG9ydF9pcnEoZGlz
cGxheSwgaW50ZXJydXB0X21hc2ssDQo+IGludGVycnVwdF9tYXNrKTsgfQ0KPiA+ICsNCj4gPiAr
dm9pZCBpbnRlbF9jbXRnX2VuYWJsZV9pbnRlcnJ1cHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gPiArKmNydGNfc3RhdGUpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gKwlpZiAo
IWludGVsX2NtdGdfaXNfYWxsb3dlZChjcnRjX3N0YXRlKSkNCj4gPiArCQlyZXR1cm47DQo+ID4g
Kw0KPiA+ICsJc3Bpbl9sb2NrX2lycSgmZGlzcGxheS0+aXJxLmxvY2spOw0KPiA+ICsJaW50ZWxf
Y210Z19tYXNrX2ludGVycnVwdChjcnRjX3N0YXRlLCBmYWxzZSk7DQo+ID4gKwlzcGluX3VubG9j
a19pcnEoJmRpc3BsYXktPmlycS5sb2NrKTsNCj4gPiArfQ0KPiANCj4gSXMgdGhpcyBpbnRlcnJ1
cHQgZ2V0dGluZyBlbmFibGVkIHRocm91Z2ggYEdFTjhfREVfUE9SVF9JUlFgIElFUiA/DQoNCkN1
cnJlbnRseSB0cmFuc2NvZGVyIGludGVycnVwdCBpcyB1c2VkLCB3aWxsIGNoZWNrIG9uIHRoaXMu
DQoNCj4gDQo+ID4gKw0KPiA+ICt2b2lkIGludGVsX2NtdGdfZGlzYWJsZV9pbnRlcnJ1cHQoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiArKmNydGNfc3RhdGUpIHsNCj4gPiArCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRl
KTsNCj4gPiArDQo+ID4gKwlpZiAoIWludGVsX2NtdGdfaXNfYWxsb3dlZChjcnRjX3N0YXRlKSkN
Cj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJc3Bpbl9sb2NrX2lycSgmZGlzcGxheS0+aXJx
LmxvY2spOw0KPiA+ICsJaW50ZWxfY210Z19tYXNrX2ludGVycnVwdChjcnRjX3N0YXRlLCB0cnVl
KTsNCj4gPiArCXNwaW5fdW5sb2NrX2lycSgmZGlzcGxheS0+aXJxLmxvY2spOw0KPiA+ICt9DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuaA0KPiA+IGlu
ZGV4IDc5Nzg1YWZjY2M1MS4uOGZjYjQ0ZDYzOThmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmgNCj4gPiBAQCAtMjEsNSArMjEsNyBAQCB2b2lk
IGludGVsX2NtdGdfc2V0X3RpbWluZ3MoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsIGJvb2wgbHJyKQ0KPiA+ICAgdm9pZCBpbnRlbF9jbXRnX3NldF9jbGtfc2Vs
ZWN0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiAgIHZv
aWQgaW50ZWxfY210Z19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+
ID4gICBib29sIGludGVsX2NtdGdfaXNfYWxsb3dlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiArdm9pZCBpbnRlbF9jbXRnX2VuYWJsZV9pbnRl
cnJ1cHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiArKmNydGNfc3RhdGUpOyB2
b2lkIGludGVsX2NtdGdfZGlzYWJsZV9pbnRlcnJ1cHQoY29uc3Qgc3RydWN0DQo+ID4gK2ludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+DQo+ID4gICAjZW5kaWYgLyogX19JTlRFTF9D
TVRHX0hfXyAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9pcnEuYw0KPiA+IGluZGV4IDg5OWEzOGMwYTdiNy4uZjdmNjcwZGQ1OTAw
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9pcnEuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9pcnEuYw0KPiA+IEBAIC0xNDY5LDYgKzE0NjksMTggQEAgc3RhdGljIHZvaWQgZ2Vu
OF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgdTMyIG1h
c3Rlcl9jdGwpDQo+ID4gICAJCQkJZm91bmQgPSB0cnVlOw0KPiA+ICAgCQkJfQ0KPiA+DQo+ID4g
KwkJCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAzNSkgew0KPiA+ICsJCQkJaWYgKGlpciAm
IChDTVRHX1ZCTEFOS19BIHwgQ01UR19WU1lOQ19BDQo+IHwgQ01UR19ERUxBWUVEX1ZCTEFOS19B
KSkgew0KPiA+ICsJCQkJCWludGVsX2hhbmRsZV92YmxhbmsoZGlzcGxheSwgUElQRV9BKTsNCj4g
PiArCQkJCQlmb3VuZCA9IHRydWU7DQo+ID4gKwkJCQl9DQo+ID4gKw0KPiA+ICsJCQkJaWYgKGlp
ciAmIChDTVRHX1ZCTEFOS19CIHwgQ01UR19WU1lOQ19CDQo+IHwgQ01UR19ERUxBWUVEX1ZCTEFO
S19CKSkgew0KPiA+ICsJCQkJCWludGVsX2hhbmRsZV92YmxhbmsoZGlzcGxheSwgUElQRV9CKTsN
Cj4gPiArCQkJCQlmb3VuZCA9IHRydWU7DQo+ID4gKwkJCQl9DQo+ID4gKwkJCX0NCj4gDQo+IEkg
Y291bGQgc2VlIGBpbnRlbF9oYW5kbGVfdmJsYW5rKClgIGdldHRpbmcgY2FsbGVkIG9ubHkgZm9y
DQo+IGBHRU44X1BJUEVfVkJMQU5LYCBpbnRlcnJ1cHRzLiBEb2VzIGl0IG5lZWQgdG8gYmUgY2Fs
bGVkIGZvciBhbGwgdGhyZWUNCj4gaW50ZXJydXB0cyBoZXJlPw0KDQpZb3UgYXJlIHJpZ2h0LCBv
bmx5IENNVEdfVkJMQU5LIHdpbGwgYmUgc3VmZmljaWVudC4NCg0KUmVnYXJkcywNCkFuaW1lc2gN
Cj4gDQo+ID4gKw0KPiA+ICAgCQkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDExKSB7DQo+
ID4gICAJCQkJdTMyIHRlX3RyaWdnZXIgPSBpaXIgJiAoRFNJMF9URSB8IERTSTFfVEUpOw0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9yZWdzLmgNCj4gPiBpbmRleCA0MzIxZjhiNTI5ZGEuLmYzOGRjZDliNmM0OCAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVn
cy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3JlZ3MuaA0KPiA+IEBAIC0xNDU4LDYgKzE0NTgsMTIgQEANCj4gPiAgICNkZWZpbmUgIEdFTjlf
QVVYX0NIQU5ORUxfQgkJKDEgPDwgMjUpDQo+ID4gICAjZGVmaW5lICBEU0kxX1RFCQkJKDEgPDwg
MjQpDQo+ID4gICAjZGVmaW5lICBEU0kwX1RFCQkJKDEgPDwgMjMpDQo+ID4gKyNkZWZpbmUgIENN
VEdfVlNZTkNfQgkJCSgxIDw8IDE5KQ0KPiA+ICsjZGVmaW5lICBDTVRHX0RFTEFZRURfVkJMQU5L
X0IJCSgxIDw8IDE4KQ0KPiA+ICsjZGVmaW5lICBDTVRHX1ZCTEFOS19CCQkJKDEgPDwgMTcpDQo+
ID4gKyNkZWZpbmUgIENNVEdfVlNZTkNfQQkJCSgxIDw8IDE2KQ0KPiA+ICsjZGVmaW5lICBDTVRH
X0RFTEFZRURfVkJMQU5LX0EJCSgxIDw8IDE1KQ0KPiA+ICsjZGVmaW5lICBDTVRHX1ZCTEFOS19B
CQkJKDEgPDwgMTQpDQo+ID4gICAjZGVmaW5lICBHRU44X0RFX1BPUlRfSE9UUExVRyhocGRfcGlu
KQlSRUdfQklUKDMgKw0KPiBfSFBEX1BJTl9EREkoaHBkX3BpbikpDQo+ID4gICAjZGVmaW5lICBC
WFRfREVfUE9SVF9IT1RQTFVHX01BU0sNCj4gCShHRU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9S
VF9BKSB8IFwNCj4gPg0KPiBHRU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9SVF9CKSB8IFwNCg==
