Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB9C8CE0D6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 07:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7787D10E090;
	Fri, 24 May 2024 05:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/CBxrgo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEF510E090
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 05:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716530359; x=1748066359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AjOviQwuDYoUhJxoxHD0kn9prKfRtmhATxG6+kILVfk=;
 b=C/CBxrgo6iMj/RCKFcG1HqnHSQAsbe4BvuyXYq1tggNTvi2NmFoyfPgz
 ROfVibyZpZhsZ4N0A3npBkC1RtpH/JncHvcKQPEuw95OlTR/oBptw+Qys
 hABYTAvphLAtNbA6oAhkxbS6M4obYv1AxZKBqZAfa9i89N+rd/A/4wxDW
 jNXA1eo09Zhe30QZJie6NY7olFhTyx4LlXRXWw1n+F5Uw68AfH/+pSOkb
 dtsRQrPHbmkGSNVqGvOIZ0QQ/x1qle9Ei3U+pCx1zCBwHNdy81owyBaQq
 aTdjmTYjK0EMM+5LFZeqCqEMahRge4Igzs1WVCY+0+tQMGv3LAplqjV2P Q==;
X-CSE-ConnectionGUID: vy8G53qFR8ix126FW7HqLQ==
X-CSE-MsgGUID: xZ1tip8MQvWySaLFFeHj4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13012600"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="13012600"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 22:59:19 -0700
X-CSE-ConnectionGUID: fruyulefSIagmWfF+JHi2w==
X-CSE-MsgGUID: pHnBqPHqTT2aVz9ex2RtWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="34514524"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 22:59:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 22:59:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 22:59:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 22:59:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L1pPg47L+BlHYhn/mRZDDTICv4ee6P0E1JhmC79jdDQFGRjygc8ScEXfdKdbOTCep4WpfBLLyphcXk1tfJXhbb4UDSypsRe0ChgpiQKHaU85CsFG2v4tZxOa1Y/cynG3rnkN6vZYTtUbS5OgktrjJEwGYacPKpat/5l9VNKKkVeuut6V9DCbgoVXWaRw4CBgZCjFSFdtMcKrX1mCJR7VTXfwVbxeIgZigV6z/JBe4qu+vugx1qBy1YIBjwc9d8PtRwQHxU5E4ygN9mpHiMksy48XPK85DDJd9/mZ8IvmoGueyGEwlpmHzhqbQxG7FZDBaC8KCE+51/R1BYV2obvwnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AjOviQwuDYoUhJxoxHD0kn9prKfRtmhATxG6+kILVfk=;
 b=C+N56xeB0gLHb3yRZkxGXgVK0D9TCezdtDrHlB/mdk3yTrCsZLPvebhi+HnYxqyKTgvWEI6EN06tL7FXm4e/aky0b7mRrz7B4Bg8NlpZKAtJpAYos8/3xUEaTypmuCBs6y16MQNiwURCJhoEQZRiFhssvEb+BZ7AprIM047bTbAEH7dk1xu8GKH4s2O12lxzTiI8X6WkNAjBMimqD2nfWQrWOD7/Nv+lYUgSLUmPQ0trh6vWTKVgG6BFy597J+W925R+pmQ8Y1j3Ib2kVTB32gavWnsCdX1bOkiI7gOxphQvSWE6ip4G41ouGfBwFnkTsiuACqrn95gus8d+RrBQ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA0PR11MB4576.namprd11.prod.outlook.com (2603:10b6:806:97::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 05:59:16 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 05:59:16 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 04/17] drm/i915/psr: Move printing PSR mode to own
 function
Thread-Topic: [PATCH v2 04/17] drm/i915/psr: Move printing PSR mode to own
 function
Thread-Index: AQHaq1uFYC444fKssUOUdJlIgBt9H7Gl595g
Date: Fri, 24 May 2024 05:59:16 +0000
Message-ID: <PH7PR11MB5981DAFE17919361964D086BF9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
 <20240521084648.1987837-5-jouni.hogander@intel.com>
In-Reply-To: <20240521084648.1987837-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA0PR11MB4576:EE_
x-ms-office365-filtering-correlation-id: 20d431e0-5e2c-4501-18ee-08dc7bb6a527
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ajFoc2I4Mk5SUEgzME0vSTJrWlFHRFMzSDRCb2dONkFQaW5pc0wwL1U2Q2RK?=
 =?utf-8?B?NUxPMjlrZ0RyKzZ6U2E0bzdFTnVjd2hBK0tNVXFCN1NxMXRwYjF3SCsxcUcx?=
 =?utf-8?B?dXRYbGVYS1JWR0dtWUNKS243TnVRNmhJVEcyNXQvZ2tQYkc1d2R5WVp4OVVT?=
 =?utf-8?B?UmpLTE9IMUJjQjlXWnRubHExZDJmSGxhaHRxbzNYTkFaNjZGVGRyL2R2a1Nh?=
 =?utf-8?B?RUlTbGI0eTR3Q3Y1cG1zd0lhYnlMcjFvak8yeWhUYlFpaUNsWENoYzFVd21y?=
 =?utf-8?B?QVhJVkQ4TTlGakZTVXJPT05TbjhSVEIrZGR2ekkvckhubzRubUFtQmUvS254?=
 =?utf-8?B?YmxGc1Q3OFhteXZOYW5qWW9FMEdXeVcvSGRyTlJHTmZIVlpQMDIwZHFINnhs?=
 =?utf-8?B?eVdpakJucE9ub04rd3VEbTBtRXM4OFN4eWV5TjV0cFh3em8zQnlGU2F3OE0r?=
 =?utf-8?B?bGlEMzhSQTN2ejBaSzNoQnpNQzdhYnpUbDNUVlRFNXNYY2cybDA2SEVXNzhp?=
 =?utf-8?B?WGJ1TDgyRlNWSC8rZ2xMZU1iNllldEFoajVMUVJmOVFyczRyZG82S3l1V1kw?=
 =?utf-8?B?M0JHZEFkbms1N1BSQmtJcG9Xd05HMDBCNG0rQVV5UElEckFWSFJxUzA3ZlF3?=
 =?utf-8?B?UFkxZ3RBVHgrNGQvWmFQVHFCRG93bnpWLy9WTTR4T1JUT2Z1dGdkYm5rRStR?=
 =?utf-8?B?cmw4dHd1Mm9SbUdTVGM2bnpRV0s4Si8vVlJLRUJXRGVpZTY2eWRQbnYyWkxj?=
 =?utf-8?B?U291R0ZOQ2NlMU5Eb0lWTjJoVUdtR013aXkrN3NOeDMyV2JoZEhXMlBPa04y?=
 =?utf-8?B?M3VGRkxmcTU5Qjl0K3NxSzBkaU1zOXNSRDlsVjJzUkNnQmN1b09XdWFKZzVm?=
 =?utf-8?B?M2h6S0tER2YwYy9QUkxuZnlFVlEyVHhnZnMwVmhUR0VVaEhLY2MzbEpXaHN3?=
 =?utf-8?B?UVBDQkNxbS94WVp2NUppVGIrZWFsZGlqR1VPSGdkN2I4UURTVnFHRjE0cXhi?=
 =?utf-8?B?dE1VUVplYytFV3FlKzNnTE54VXEydDJGUFdhVG9yWkc3WE54aWZUREpHakRR?=
 =?utf-8?B?RDlpK3E3cDBFUEJnOGhzZVpyUzNiZVdNU1Jwd29SdlJMcm9IKzRzbXd0WDdY?=
 =?utf-8?B?V0tobytGeGMvZ1dQQmRkZnQ1VWFLclg5SHhWOXA5MjNZbnVCYjRYSW1oQ29K?=
 =?utf-8?B?b2dUQlloNEdaeTM1eFBlVFNwOWhLdGFQMjhFcmVxaFFHTXJHSlRIWUZOSGxo?=
 =?utf-8?B?UHFUeUs4allNMEhVYjU0dm1GZi9xbHNjQ2x2Qkpsb1dEa0tKbmRibjFqc2NC?=
 =?utf-8?B?SVpEc01jQXNac3FlcjExRTh6dnIwRS8zZmtqVmRlTkNjOGRvZnF3dFpNUW96?=
 =?utf-8?B?bi91U1lOTU14bEtwd2ZNUGZLcSt6S1NjTDJ3dEpZSDJ4OTQxdDJFOFIwS3pS?=
 =?utf-8?B?SmJrV2M1Z2pvdmdvZ1YvUU1tQWRVUS9zbEFTekoyMmRySytBMDIyODJtTEdQ?=
 =?utf-8?B?Uk1FUGZJWCtnK0pEdE9iM1o5elpKSTlNZmFTQjFxK2lJZkJvZ1gwZTJCY0wy?=
 =?utf-8?B?eVo0SS90OTRSZzlzLytJYklieGFBN3llUHpsU3AwWStiSDZWKzUvV21zSDNw?=
 =?utf-8?B?WjZGOVo1Vlo4QTVGcktjQlJ3RHR4TWJuVGRRTGcxN1Mvbm5ldFdyekJzeHJS?=
 =?utf-8?B?UW5Tb3VPclY4RzUxSG1xSldDUVIwRy9USHNNUzZGT1BEM0JZR3FZeU93dktl?=
 =?utf-8?B?VEdYcFZ6ZXAzNHJEWDZnMVRsRWt2Y0RyYU5KeUN0b2cvS0p5enpKL3B3SURG?=
 =?utf-8?B?QWJ3TllBblp5NXgzQWY0Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T255RDg4WFZ1TVp4dmFYbW9VTlhuWUh6WnNacDBZY3JuS3pCcEJEa1ZucEFi?=
 =?utf-8?B?Z0ZzdlBPYThBdjBzMEtEeDY2VXIyNTBMTWJHNmhtb3RLSm5Mekd6SEhQYVNn?=
 =?utf-8?B?MThUdm9zTUFWU1psZFFiVTE4NnZPei9BSHViWVF4Z1ZDa3l5YTQva01KY0FN?=
 =?utf-8?B?Z0dDNE0yNG45L0NBV2dvTGx5bmdvbEhNNjRGWU1SSmxSeWJMSHRvZVY3Q09H?=
 =?utf-8?B?ODZYeEVQaVhzdEdwSXRsWmt0dUFaR1UybmhadFBtV1JWQXF1eHJqWEZFL1pF?=
 =?utf-8?B?Zk9PSk4vNzl0blpLZWpOdVMxRmkwYmlSdjhBcm9OdmNKNjZBMFBqeEdvTkYz?=
 =?utf-8?B?Sk92clZLMm5HcUE5ZTdHcXZ1WmpnRTAvT2VYSE0ya3FOeVdrTEIwS1NEMUdN?=
 =?utf-8?B?dnZtd3MxVTJ1SmdZT2VLS2xhRENVeEFzSEZpaW1rcUJkdWo3ZHNjUmVBTm5l?=
 =?utf-8?B?aFowRVl6NkpVSmZ0M3l2dHh2VWQ4TnJhSGgwVUs4cFRKbGZ2OUh1OG9qd1E0?=
 =?utf-8?B?QVdScUZBRTMrNk81Q0JVUE5FRjc1K09qQzZaK3o2aFZYRS8vK1lBV25DMk5F?=
 =?utf-8?B?QUFyTVNUZEhJNFNLVFRlcmlPT1pab2pRTmcxNys1VHZPVUtySnp1eGFuR05W?=
 =?utf-8?B?UjRiVVB3eVZaQkpHZkNxSHNZZ1lna0NXWDdYZ040ZEVWS2tIUmFYblBjOUpI?=
 =?utf-8?B?NVZCN2licnJHQUlaeExIZTBDWU1QWVpyR3lHVTh6WWdiYzNoVFI3RXdWOW40?=
 =?utf-8?B?OXpON25WYm52SWw1M2pJOERqMnZXRkJrYm8yQ2JJd095bzdZZnVudHZVbDlx?=
 =?utf-8?B?VUxxSEhzVURuNFB1cWVyVnBpL24xT1psbytabjVqK0Uwc3RqQ3pDTG5Ocmpx?=
 =?utf-8?B?M3p5dWxTNDFMWTZVdkhRcUhTVEFlSm9OdThyUmxxNXYyQmhrS3YwWFpqSlMz?=
 =?utf-8?B?V2xYK2ZZTkt4SVJOakVqcUF3MGlpc3ZNZ0h4STErdStuNGZ0RDBOUXJvQk1S?=
 =?utf-8?B?TVZ0V1J4ZHNveHo0QkhiRW5DTGpiUmZkWGF6QkxIQWI5dTA5cS9LN01JTllW?=
 =?utf-8?B?WEQreTVheFBCbmFZRkRoTzhWUmJSazhFcFJCRFQrYW03SkZaLzZLb25qNFVm?=
 =?utf-8?B?MUpsMVlRNW16QlRKYVpNdVVLUDV5KzROSGRid0ZrRDNPelE4eVRETGFGMFZW?=
 =?utf-8?B?bmZpcjBkQnZVVTJhVy9UTVl2dlpjajRiUlJ2dm5EWk04YkpQUFVaTkhlcjQ0?=
 =?utf-8?B?TlkvZmlwdU1weWpnV3ZtaWdVQTZrVVlRaTNLa1ZCcmlOenFURDlUTjdrd3dF?=
 =?utf-8?B?ZkxJL3BkUi9MclBCdFgyUHNKMGZzdGh0K3Z3TWpiRG94cUQweHk4ZUd0aU1F?=
 =?utf-8?B?ZGxLV1IvbEFhWngxTDkxUEQ5V0hBNHREQjErWFRpY2FiaDY2VGxqK3FmQ1VN?=
 =?utf-8?B?TEZ1NTV6SHJUNlEwZ3NJQkhGcHFhcDdOdkxtYnhFczNoc1NOczArVTIrZGMx?=
 =?utf-8?B?dzdsNjMrY3kyLzNhbnRUbGZvMG9tS0xkS1JqOFlNT0o2QjlmZlBlOGpvdnRE?=
 =?utf-8?B?VDNNM0hlUjBOZ1VOalFWM3A5ZXQrSTh6dnhSZkQxbHpmd1kxOXg5S1VxS3Bo?=
 =?utf-8?B?eFJ3YXB3dU5hRjFBcDhyazg3dUs1TktUWE9GS2EwcTk1L2RpYWY2aDBIelIy?=
 =?utf-8?B?NUtCc0xvcXlvWjJRK3ZiTERuUlVHRjc2QmJVV1JiZkxQbHY0Mi82YURURGls?=
 =?utf-8?B?WGh6akFKWlBTSWpGSFNGVTNaYmN1OTl0RTlMUXNXK1JQczZ1SnlzM0I1ZEpl?=
 =?utf-8?B?LytXRjcrdkF3Y1p6TDd5OGRBTFMrcWp0NjE1T3RRMHNUZ3lDb2tuRDhjRmVj?=
 =?utf-8?B?VUxnMzFob0M2TWkydTVPOHoveGM0Z3lzVm5ueHNHUlU3cDRldUhrVkxVZFBV?=
 =?utf-8?B?OWdBZDYxU0s5dkhKeEk3a3I0akJGMWVyL2U2RElqOStOMis3Z1o3VkxDQjFB?=
 =?utf-8?B?OWU4VDlwbTUyb3gxS2RMZEcydzM1Z1VNekR0azQ3SzlKRnluRmxDbUtnMDlX?=
 =?utf-8?B?clM2L3o0OHV5QnhqakgrVW5Vb04rdldOU0NZeUVEWWYraklJbzh1YkJXMjZP?=
 =?utf-8?Q?ISlSeYzS0rdc+YPdjMMO415+f?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20d431e0-5e2c-4501-18ee-08dc7bb6a527
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 05:59:16.4442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VvHEbpZCuclHBpwLN3yJ0SQIRqe0aRTqbPqHVvHB/GVS4Z9ErqSneivqeQihyw3/c58h3sYd38vRzGdDdP9qtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4576
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAyMSwgMjAy
NCAyOjE3IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDQvMTddIGRybS9pOTE1L3BzcjogTW92
ZSBwcmludGluZyBQU1IgbW9kZSB0byBvd24NCj4gZnVuY3Rpb24NCj4gDQo+IGludGVsX3Bzcl9z
dGF0dXMgaGFzIGdyb3duIGFuZCBpcyBhYm91dCB0byBncm93IGV2ZW4uIExldCdzIHNwbGl0IGl0
IGEgYml0DQo+IGFuZCBtb3ZlIHByaW50aW5nIFBTUiBtb2RlIHRvIGFuIG93biBmdW5jdGlvbi4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCAyNiArKysrKysrKysrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDJhZTVjZGNhNTc4Ni4uZGUwY2U1ZjNhMzJj
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAg
LTM2MDUsMTMgKzM2MDUsMjggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3NpbmtfY2FwYWJpbGl0
eShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkgICBzdHJfeWVzX25vKHBzci0+
c2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lk
IGludGVsX3Bzcl9wc3JfbW9kZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJICAg
ICAgIHN0cnVjdCBzZXFfZmlsZSAqbSkNCg0KcHNyIGtlcndvcmQgcmVwZWF0aW5nIHR3aWNlLCBo
b3cgYWJvdXQgaW50ZWxfcHNyX3ByaW50X21vZGUoKT8gDQogDQpSZWdhcmRzLA0KQW5pbWVzaA0K
PiArew0KPiArCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiArCWNv
bnN0IGNoYXIgKnN0YXR1czsNCj4gKw0KPiArCWlmIChwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVk
KQ0KPiArCQlzdGF0dXMgPSBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCA/ICJQYW5lbCBSZXBsYXkg
U2VsZWN0aXZlDQo+IFVwZGF0ZSBFbmFibGVkIiA6DQo+ICsJCQkiUGFuZWwgUmVwbGF5IEVuYWJs
ZWQiOw0KPiArCWVsc2UgaWYgKHBzci0+ZW5hYmxlZCkNCj4gKwkJc3RhdHVzID0gcHNyLT5zZWxf
dXBkYXRlX2VuYWJsZWQgPyAiUFNSMiIgOiAiUFNSMSI7DQo+ICsJZWxzZQ0KPiArCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOw0KPiArCXNlcV9wcmludGYobSwgIlBTUiBtb2RlOiAlc1xuIiwgc3RhdHVz
KTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFf
ZmlsZSAqbSwgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gIAllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+
ICAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+ICAJaW50ZWxfd2Fr
ZXJlZl90IHdha2VyZWY7DQo+IC0JY29uc3QgY2hhciAqc3RhdHVzOw0KPiAgCWJvb2wgZW5hYmxl
ZDsNCj4gIAl1MzIgdmFsOw0KPiANCj4gQEAgLTM2MjMsMTQgKzM2MzgsNyBAQCBzdGF0aWMgaW50
IGludGVsX3Bzcl9zdGF0dXMoc3RydWN0IHNlcV9maWxlICptLA0KPiBzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiAgCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmZGV2X3ByaXYt
PnJ1bnRpbWVfcG0pOw0KPiAgCW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+IA0KPiAtCWlmIChw
c3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiAtCQlzdGF0dXMgPSBwc3ItPnNlbF91cGRhdGVf
ZW5hYmxlZCA/ICJQYW5lbCBSZXBsYXkgU2VsZWN0aXZlDQo+IFVwZGF0ZSBFbmFibGVkIiA6DQo+
IC0JCQkiUGFuZWwgUmVwbGF5IEVuYWJsZWQiOw0KPiAtCWVsc2UgaWYgKHBzci0+ZW5hYmxlZCkN
Cj4gLQkJc3RhdHVzID0gcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiUFNSMiIgOiAiUFNSMSI7
DQo+IC0JZWxzZQ0KPiAtCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiAtCXNlcV9wcmludGYobSwg
IlBTUiBtb2RlOiAlc1xuIiwgc3RhdHVzKTsNCj4gKwlpbnRlbF9wc3JfcHNyX21vZGUoaW50ZWxf
ZHAsIG0pOw0KPiANCj4gIAlpZiAoIXBzci0+ZW5hYmxlZCkgew0KPiAgCQlzZXFfcHJpbnRmKG0s
ICJQU1Igc2luayBub3QgcmVsaWFibGU6ICVzXG4iLA0KPiAtLQ0KPiAyLjM0LjENCg0K
