Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E998FE32E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 11:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF4110E8B1;
	Thu,  6 Jun 2024 09:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKe4ETEW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1467310E8B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 09:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717666920; x=1749202920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xukzgdwul+4BUgifzuNycFZKhQLYHk3S4pWYKfgMPDg=;
 b=ZKe4ETEWSOInBbfbz3pm023W+N1IZPQ2ZEg60mLoL/0S+t5eEq0SUjam
 xAI+1K7HA/6TsrObR0M/oW9sJferasNSmUKmOPVddNLRLjSsEn+IQ9V0F
 NMKVyRjKeOWxk37XIk48A6nzj//4uw/HKzofKf5+wDLgg74UMDJ3Za3Gh
 popFaUFyM7XJQx/RzmpsEcAWjdpVYh6F1Lt+CNLniVixwdxmvCsPEheKL
 Sq9pHh3dxu35y3W5fMeWIy+uVbAheFkAgz6XEFxbYTS9/MN1l110UfWWX
 Ya8HHjZ2q+XgMbqaFpgUSKj//zst3z8pSIdOZKkbbyb9M2a6pQxDyN9cb Q==;
X-CSE-ConnectionGUID: EzVSDdhkTnOAn4bxLe4Xtg==
X-CSE-MsgGUID: TviLvQpaTqu4bjOpQzVnPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14476049"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="14476049"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 02:42:00 -0700
X-CSE-ConnectionGUID: XHsq+NyBTrKFKjp03/yV9Q==
X-CSE-MsgGUID: Hh/brnRRRcWNy2kM/m+KWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="37972674"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 02:41:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 02:41:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 02:41:59 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 02:41:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVe1YNWT+P1z9bYE/IsdQuk3VV2JuvMB3xDZnsOs2ycvHZbLBOjc8lzfwggclmQDSYGofbDV5BYnUG+nqidvL/UFqyKSyujj7ImbnaD7QMmvgAXMb0x3V4nE5eEsYWMJbYuxJ21uu/ePsXXjqd6VZrzzYJ+L/M76Ta15Z2mFE1x90U4JUAyhGbC6XnEkFhzCYKqON7y+/ko/roR1QqncTT6Q5gtk0DE1H4fcvnMPFqJXPuXo+lkq+yLJEFzEf/rLHmcq8vbfDRVpQXYJOw7t7bkfSb+KJXaGDgsfYwXYdBzjaW/LPcJCq4TCT8ff7Su2uvxxUbT+CsJ00wPKmPpKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xukzgdwul+4BUgifzuNycFZKhQLYHk3S4pWYKfgMPDg=;
 b=fMIt+7EI+Noqc73PN9KbUcBTFUlXaA66prDXkbqyEDBhzB/UdCmhk9TkVPiYLggGICYjSuObNKNToZZIRzp0eUwV5wudQqT7aJzIKLAUjfxo/mXSJjDjMMM2LYANRYPkf9p7NNxUJ+6E1B6zOblVXwmoQGX5Vh+ow68VngTdThxjAjt7uSqW/Hr+5RbUkQyxSAX0lFw0deadIMCo6qU6bWd4RyoQtspT1ke498KoZL+YJVt+VxT1JStt6go88h51fv2OFhc8oQmXaFam6Eg1f8NGjmoNfk1snpCgILtt420S7lPkr3GnzGQm6BG4JgE9bGeecawCvrvuVhIjkwR6bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 09:41:56 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 09:41:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 02/26] drm/i915/alpm: Write also AUX Less Wake lines
 into ALPM_CTL
Thread-Topic: [PATCH v6 02/26] drm/i915/alpm: Write also AUX Less Wake lines
 into ALPM_CTL
Thread-Index: AQHatzLVqHwrjL1KaEWksfBffn4wLLG6fP/w
Date: Thu, 6 Jun 2024 09:41:56 +0000
Message-ID: <PH7PR11MB59819FFF248B739695FBC444F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-3-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB5073:EE_
x-ms-office365-filtering-correlation-id: 4821e0bd-d97a-4d1e-51bf-08dc860ce791
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bzdGeHdjSmVROTdqNHFNY1BwNnJGR2ZIY25nLzdiMmo5ZEgzZUUrL1QybEU4?=
 =?utf-8?B?ZGF4MkgwNHVwWHpOTmRiK2ozZk1VbDdkc3BSRXA0eE9ESnV6Qk4vQWE3aW0x?=
 =?utf-8?B?TU1ZNGxtTzFhMDYyd3F3TzdLRlVwdjZ2elB0UksyK0xtcUIrTnI1WklpZ0tn?=
 =?utf-8?B?Tnd4ekY2SGFScmxhTUMxNmhMSlhQVExmVk1USDZPWXRxYlNyMUU5eW0zc1Vk?=
 =?utf-8?B?RGFDb014VG1jS0MveUZOVjErNTFndk9MSkRqdW1aaTNwTGxIRWFwRFhIKzZU?=
 =?utf-8?B?dHNjUjE4ajdtUFFNV2djQzRVZXplV013WjBYZEdOanJKMXUrTmd0UFpGTllC?=
 =?utf-8?B?U043Q09MR2lDOXdvbnV1c3F3SkNGdHREejBjLytpUzdzR1V1Zzh1S3BxTWpG?=
 =?utf-8?B?SVBrV2pseUR0emdKWVovTjJDR0k1Q2xMK1FFWXFGUmRob1NtUEZ2RWNmSTE3?=
 =?utf-8?B?THNGTlQ4QmZrK1FqdWppbHB6NXYvdHNJYnNSSnVIMjNtalZnOGdpVmdBZzcx?=
 =?utf-8?B?K1ZnbldZclU0NG9Tei9NYzZyOXo1bXlhODlMSmdycW1jTk1ORUZBNzN4ZnhE?=
 =?utf-8?B?RHhnY3hSMlhKNXJZRHdRZFhkRy9OS3hnS0Q1VEJ4dlJoK0hYbXV2S0JQTVZ5?=
 =?utf-8?B?RWtKcjh4ekUzU09pY1lDaFJ5dnVzLy9CUlVZNld1aEhTRjlGTkpVUU9KNkJS?=
 =?utf-8?B?NVhiVysxQUlRWk1adWpBNmxtYzhXdlMxcnZjSkg1emRZVDEwYmxXZHNhU0xm?=
 =?utf-8?B?Rm5DTi8yczg1Vk11RXgyN1VIRHVCNWRyYnhuanVRMGZ0TlZlZkxrNG5LY2Qw?=
 =?utf-8?B?RGtuUVhKSjZiVk5yNUl0a243QXY5bXdFR3ZRTG5BK1pwbFpoSnVHMkltS0pI?=
 =?utf-8?B?NFBnMC9CSVdMWDhENC9mYkt2aFJCVE9zdUY4SjBheUk4V0htNGtpcmJCS0Vn?=
 =?utf-8?B?Skl4Z1BsdDVDYUNJaUwyNXBDTlFrNitBaDk5WTBnZ3dKeXVmemlqVVVSblEz?=
 =?utf-8?B?MzNUeWJyQVdNQm1VbDZuV3MvbUdJQlBWS3RFa3dIQUEvVm8xdlhDZ0dUYzBv?=
 =?utf-8?B?SWRXb0R3aWVHRVFxZVVrMzZ0aUFKZHlVVGMzRU83Qk1oRUFwNm9PWHU3Tncw?=
 =?utf-8?B?U1o5OVJrMTUwaXZSaDVpT0Q1Q1U3LzJFSE1DWnBld2dqeGNDV1Bmcm5EL1NE?=
 =?utf-8?B?WUJqM2xXOFd5aDFTR2l3cnp5RE4vaElaM2NMcW9KNkhVS09BYkJxWnVEZFY2?=
 =?utf-8?B?bkMveUI4RDhSRDR6VUE5eDlIQ3JXeUZvNTlEbC9ucWVOSG51eHlJRjRXYjRl?=
 =?utf-8?B?K3F2U01Ib1JMYnlmZlFFUGx6VWo1M2U5dUxpenlYZllKREtxMDJlUmpEdks2?=
 =?utf-8?B?dmdMQWNtRElVSGREQ3Q0dlMvZStobmYrSVBITEZmTzl3b2pUWitGWThJdlZD?=
 =?utf-8?B?YmpaNzFIeUZLRnNVRnFuQVBMbDY5NXd3UUg5U0F5NlJ3TTJ1QkNsTDJyMWVU?=
 =?utf-8?B?Y2RaaWt5cUk0cm1HWlpEQ3RTOEZ1K1IzTjVzZ3NxYWxQVFNrNHpqWER2dDhJ?=
 =?utf-8?B?WHJ2WWdPTkZGYTZGNUIwenZmaFFuRlpHNVQyVTNMYlZlMGFEeWhHTjZ4TlFx?=
 =?utf-8?B?ZU1VMjBaNkplYk1wNUlua2I4UWF4UktxakhPY3pvNVFZMVdDUzUvQWF5cXFF?=
 =?utf-8?B?ZXpWUXQrKzZubXlMNVJBT3pQU0MxWFZ6Nkp0OWJzcTFuT01VRmo3MkUvTVp0?=
 =?utf-8?B?cThVRGN4WVQ5Q0c4b0hLTlBkV0g1cmlRdEp2R1o5SENhYStreG8vZVBVdVlv?=
 =?utf-8?Q?STNnqdJzmWaTpxQAlFNKi/Ag3VPapzpF8qKZw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2M1c3dRQnFydHJtU0Q0c2tIVVdZd1BYTlRPSjV5RGY1c0lHeDVGc1dKalBh?=
 =?utf-8?B?bzRLZE1UeWNvKyt6N0RWOUlaZWQ3aVV5NHZPZjc1bzdaU0luR1NEdFRWOXVs?=
 =?utf-8?B?NnFGMDB0aGYzZGRESDl6MERxNy9nOTczc2tuYXhoTnE5eDBEOVZPZUVrZnE5?=
 =?utf-8?B?QWMvcVllNmVLc2V0ZmZ0MGlIMlVmdkt2M1p4S2kzVlh0cE4xTVpxY1N2eEhh?=
 =?utf-8?B?cVl5Z0V6N1ZuSUxQQlR0bFJUWnVndzVKSFYybk1GUFROSUhacjd0aFhYb0Qx?=
 =?utf-8?B?M1pKdml2dnJlSnQ2QXU3aWFQVy9MTkM4RjR3VDVVTTZGOW1GbjB6Qnlab0k0?=
 =?utf-8?B?bmFLeXFWOVJ6dTdDTXFZcHUzTW5OMWxWUU1YWDBRR3dqRm1lc1VTKzlGamUr?=
 =?utf-8?B?VUgrcm50RTRCZ28ySG8rZUFDd3FHKzU1VURzK2pvbHlFVVh1anV5eVhXOC9W?=
 =?utf-8?B?SXYrc1c4Q3hDVHhHenNRWUFONFgySFk4a2VLdGthNDV6UnJLR053STFEY1o5?=
 =?utf-8?B?Rm41NXNpaEEzSXdFSko2ckc3dVYyTUExa0tZSGtHQ3F4dDYvWnlYQ1UzYllR?=
 =?utf-8?B?T05GVVRaa1JoaUVTUy9PMUQ5YStLeXdhVzFFZm1HMjU2amVvZEh3MFJQUk10?=
 =?utf-8?B?bjM5by8yRGtlbU0rQ3RBcnVvUzdFcmYyQ1V3dXMyNEVHWXV2T1N3cDVQQXpp?=
 =?utf-8?B?SVNjZWRRdWhyNzhBNFlueDg3WnRidklKUit5ODZVRmZTZ0dDNnh0T0tQZUp0?=
 =?utf-8?B?V3B1Q080Vm1ac2s5SmFScllSWWdIVnpNMjkvTzdTWFBud0w2ZGc0cDJjekNZ?=
 =?utf-8?B?RWt5Ym51Rkc5R0M0MUcyTEc0eWxNRFNUcUJLbnBOYzFSYWhpRFNtU1dFWWxz?=
 =?utf-8?B?RnNOQ1RjeUUwTTdNWENsYmN5b3pUdlJzcFAyVVNpOXZpeTBkVW4xRDg1OWNw?=
 =?utf-8?B?NUpmc05ENFhUVmRLR2JyUzlQbzJZOUx4UDN1QlBEY1RUaGJCb0c3dVpnTm5P?=
 =?utf-8?B?eFBvOVdvSE4va0QwK2tkOG5GYmJLbWVPN1I2K0p5SmtQUm55U3dQbHNQWUFU?=
 =?utf-8?B?TFBIb3FHVmNGOWpsY29KL21INVJHTzd4ek93SkZUSDFtYWNEZ1Zxbk9ZYVJr?=
 =?utf-8?B?Vys0Qks1ZmFPV2o2VHcvTDExRGZtVE5ZWExpVm5NdlE2c0VKWUJvUVBDM0ZS?=
 =?utf-8?B?K2hOYW40WkpHNW05VWdEeTVGUmZsLzV5N0NudUhUY1ZNV2NBTnQxM0tXTkF3?=
 =?utf-8?B?VnlUdy95VDg5czlDMlZZWXU4blN2S2tCem1HUGx0Z2tJL2h0NkhETzFkVmRn?=
 =?utf-8?B?d3VlWDRYN0pXSGpudlRicFNJa0pJaEVhVHQyRzZPZGN3eHZMdmViMWRHdEhp?=
 =?utf-8?B?UnZMbHliVTNKbkVPTWtqQTFxVnpMSFd4MDdwWDN6WXArK0IwWEtlSWpicVI3?=
 =?utf-8?B?Z2RHbkpGLzRnejZ4bEdSQi9RK0xpRlVZZ0FWSFAyY0VLWHY4Nmx3VXlyV1BI?=
 =?utf-8?B?dHczaVFyZW1uZ09QK1BMYVBrcFlSMW5RRThpYWVqL2NVTGVsZ3d0TURCb0oy?=
 =?utf-8?B?eWUrQkptNzZhWUp2OHZjQlQvSXRpTUd2T1p0cmNkd3Nzblh5eFJJOFVrbnRX?=
 =?utf-8?B?OUt5S3Z1cDRUV1BiLzZFUlF5RmRpT1V1Z3duMjZvVFhzVk8ranNjLyt3TUVD?=
 =?utf-8?B?dnVIN0wraWN5cmI4cmdjenVuUU9GMGJuNW9tK0NuZnpBUGdlSFAzSk4xRTVh?=
 =?utf-8?B?eFpEcFd1QjczOHhKOUpTeElUQjFkZHpzdG04NlJoa3MxTlg5UmNKVHQ3Ky9Q?=
 =?utf-8?B?RHJiUTU5TzhybTFIZFBCQ0hQaWNKRWRCSzdRS0ptVk5pSFlQd2ZOaDNPaHVW?=
 =?utf-8?B?SDdoR3UxK1VuNFJrZjN5UmJVTGJEbXFwYWRBUU1SZVdndWdORjVoeUhicVdM?=
 =?utf-8?B?THlDbUlycDdEQjB4Z3FQK3l3dzJuamhtMWhSL2pNSk94QnNnWUI0Vjh4aVhL?=
 =?utf-8?B?SHBaUEZaUXFCRjV0RmZHUEdUeFFpMkdWeGRGaHB2M0E0aXh5T29zWDRCNVo1?=
 =?utf-8?B?T0VqTXViSVRvOWtRRjhUSGpMSnMrR2g4QkNOQ3BUTW1uV0xlcmFRTURuQ1ZL?=
 =?utf-8?Q?DhzC1REVQ7hIuf4IdhALoUtHT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4821e0bd-d97a-4d1e-51bf-08dc860ce791
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 09:41:56.2115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: APBoZx7JaaXkyPR9yywrCz6ZxW7LwJNLN9Y1nhan9AZTUCioP1YMYzH8sy7Zx7Paynp+eijE17ohcR7brjRovg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTUgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwMi8yNl0gZHJtL2k5MTUvYWxwbTog
V3JpdGUgYWxzbyBBVVggTGVzcyBXYWtlIGxpbmVzDQo+IGludG8gQUxQTV9DVEwNCj4gDQo+IEN1
cnJlbnRseSBBVVggTGVzcyBXYWtlIGxpbmVzIGFyZSBub3Qgd3JpdHRlbiBpbnRvIEFMUE1fQ1RM
LiBGaXggdGhpcy4NCj4gDQo+IEZpeGVzOiAxY2NiZjEzNTg2MmIgKCJkcm0vaTkxNS9wc3I6IEVu
YWJsZSBBTFBNIG9uIHNvdXJjZSBzaWRlIGZvciBlRFANCj4gUGFuZWwgcmVwbGF5IikNCj4gU2ln
bmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoN
ClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgMyAr
Ky0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4
IDUyYTU3MzM2Nzk3Ni4uMThjMWM1ODAzNjcwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMzIzLDcgKzMyMyw4IEBAIHN0YXRpYyB2b2lk
IGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCSAg
ICAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYgJiYNCj4gaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1
cHBvcnRlZChpbnRlbF9kcCkpKSB7DQo+ICAJCWFscG1fY3RsID0gQUxQTV9DVExfQUxQTV9FTkFC
TEUgfA0KPiAgCQkJQUxQTV9DVExfQUxQTV9BVVhfTEVTU19FTkFCTEUgfA0KPiAtDQo+IAlBTFBN
X0NUTF9BVVhfTEVTU19TTEVFUF9IT0xEX1RJTUVfNTBfU1lNQk9MUzsNCj4gKw0KPiAJQUxQTV9D
VExfQVVYX0xFU1NfU0xFRVBfSE9MRF9USU1FXzUwX1NZTUJPTFMgfA0KPiArCQkJQUxQTV9DVExf
QVVYX0xFU1NfV0FLRV9USU1FKGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmF1eF9sZXNz
X3dha2VfbGluZXMpOw0KPiANCj4gIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsDQo+ICAJCQkg
ICAgICAgUE9SVF9BTFBNX0NUTChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIpLA0KPiAtLQ0KPiAy
LjM0LjENCg0K
