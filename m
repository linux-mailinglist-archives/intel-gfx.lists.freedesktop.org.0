Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7718D7DA9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 10:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBCBE10E303;
	Mon,  3 Jun 2024 08:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyCc6+mi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D3410E303
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 08:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717404265; x=1748940265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=orXswtdxcXR++39S678NRIR2HPTNciWIlC0U960aLHE=;
 b=HyCc6+miO4QNQxH7RD6uPWlg5c7ZcR2BwE66Nh8XhymsbO5TmqkIlU7V
 Z1UFXRcN6ZyBeAHxQZzwYSJnNdihV0Cfw3gY06PqPgvk/Gd+G2EL13xSt
 HPBQd8cGMmbmjICF2s0KOzf0Ss5KqwaQRiCzyVYIA2PtIq38Mw1OPwEgV
 MnzSFgWZ22PZyJlkQt/Ugsry1foi2XBRyClyJobsRo++AjLMPHi7yEo/p
 QB+tnkPyB7M32xDqwoHjaxmlQ8UNdU4VKSj4PYBsWFM5O8M0XGoy/LB3t
 lti5vzsOCdzHKvc9aNU3UR08AeHLVTDv2aIU8YBJo/DlnHEZe1AnNsxWk Q==;
X-CSE-ConnectionGUID: dRemoBnLRD67zDMIkaqmTg==
X-CSE-MsgGUID: z2ccZF6lTZWz2LO1AC4B0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="13698367"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13698367"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 01:44:24 -0700
X-CSE-ConnectionGUID: BUu7OBCxRqKSEWoA58gmzw==
X-CSE-MsgGUID: sm+x+MV6TV+0aIWR64GFSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41235143"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 01:44:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 01:44:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 01:44:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 01:44:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUth24JfHEbCHyfOYhH7c697f5xpZVIwOqe6gj5IjqSpVFHF7uC2YPRYKyP94GGY8uZAlmfe+fG8dIAUSxyYtCetI3w31SsRTu1SXND2XeEeLLbohsCoFzwD2wpfM+Pod6ZrGOnsaZunkJsZ4p6UZTQ9Y/bhy6KgJVqu7VsAblRDivzI43/s9MD0WmGY+xng19UWlWe+31Gh0kYeHdae2y32bd0nOpiLygwISh4qWgu9ZXTNtlVONWXzl9f+f6aI8VVyAPzpBXaieXpjey2mj7Y3x5B33nMhCz6zFYux6TFi2nNs0SQp3RyrVSWqyzsVmO5QX7STdQ+R+VGVdlDhfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=orXswtdxcXR++39S678NRIR2HPTNciWIlC0U960aLHE=;
 b=jh2RaQc1g4FpKaslUjeRrbxvPz4m/h4odoXkzHpXCR+0fjSa4LTTind/RUxiETEwnoaIJ44Ay0wPhvZl91PixFlKg9HnZB45IRWmCM+4iF4eMgjSkeWcpit9zM/R5cMddNi7aP8BmWu2XzewN8zL8yPUHb8gyxSpCyM+65+LZc1aVFlGB6IS0OFK0H0Oc4fPbHHb4xeAyhhuoeND78AiaH4v5b8SrNaV13PIV0hpsN1T9jMj1A7qOLQW1W3AFKACFj8u8XobiwEUGxrlg7N8CZYFvVm7kT7ztZYh9XzS26yo0S8Aep+tSDKos53AL6HsvYNbH5iZl0ApR8Ts2CL5dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB8061.namprd11.prod.outlook.com (2603:10b6:510:250::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Mon, 3 Jun
 2024 08:44:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Mon, 3 Jun 2024
 08:44:20 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH 0/6] Region Early Transport debugfs support
Thread-Topic: [PATCH 0/6] Region Early Transport debugfs support
Thread-Index: AQHasawMVvj+wweiXEGJwNnBuI3BSrG1rHgAgAAUooA=
Date: Mon, 3 Jun 2024 08:44:19 +0000
Message-ID: <3db78b9cb52597c063b85bb1a9e41d08aecb6038.camel@intel.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
 <PH7PR11MB598103D513DD731195BA120FF9FF2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598103D513DD731195BA120FF9FF2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB8061:EE_
x-ms-office365-filtering-correlation-id: 4e8f37e8-cbf3-4821-ff70-08dc83a95c2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MklTZnp4bVFYaE42aUpZVFZtQXl5cFd1L1JwOThmS25KTU1ZTFZqVmdjamoy?=
 =?utf-8?B?dW55aG5vZUN5eEo5WUNrdExGWnRSbHhpVXYySnc0VjFjRjVwa04vNUhXMFcv?=
 =?utf-8?B?SzRlb3pTYitJYnRyUWRtSitSVmpyREd6YUhWNm1aYjRDaUhOa3BUUktVTE1I?=
 =?utf-8?B?bEtRcFB4aktCeGR2UXdPNnl3aDBsNng3SzN1aEVhTjIwd0lMTXpEdWJkVjJH?=
 =?utf-8?B?RUhtcnhPQU5HWmFldGRDdDF2MW5GV3pXbHBwczBpanVaMUFLSi9vbktoc2xh?=
 =?utf-8?B?WFNYOENoQjRLQTZSUDN2NngwVEVTdEVUWGM3RXFVM2RhRndpdDgvbjZYZ056?=
 =?utf-8?B?aWdpWXgwU08rS1k1SGZLZXJSMU9ZTmxXVDU2NzFXVEpwdnBQdlJrdXJLTU55?=
 =?utf-8?B?ZWcya1VoazRyTVRXTEtWZkRLRzlpYkZTaUtzTkNTZjE3dFRPNWZIQ2QrNUlZ?=
 =?utf-8?B?dGRCZ0tsRnRDQTU2L21oS0xkUUc1cGFuNXRKRzROMFgwMlVEaW9peWpkOTZy?=
 =?utf-8?B?UEtybnM1Z3JnbGh2U2JqTlFCTXhpeWRCYkVoUFFLa0lBRWF2UkRoRnN5ZTh4?=
 =?utf-8?B?SGh2a3hxbXV5QUNzZHRCZkl6TlhTa3JKL2E2NW1jSUJ1RkRYR25pZUZJSU12?=
 =?utf-8?B?MGFUTUZxU3QrT251NWtFZGJpcnFsR1FESndCOG5VVm5tQnIzeVR0N2o0emZa?=
 =?utf-8?B?bHZYbTl5V0dnQ3AvMFdKQ1pVSjIydWxpWFI3WjJpVkJWVXNsdE01aVRhWWF0?=
 =?utf-8?B?NjdHbGkzZWJJSHlVMy9HUTZuK2ZaSkxtbTNjL1VyTG5TTEx4aTdaY2k2SWNt?=
 =?utf-8?B?NkV5dk1xZFdQdnJtRUtmd0tIcjFoVFd0M3FNYUFEbXdNTnBVZDViVmRxZ0JE?=
 =?utf-8?B?dGVVdlg5dEI5OWZsK0lCdStFME1KYWxDWXFENU1HSkdndG9aQ09VdjloeVVi?=
 =?utf-8?B?SFZnc2d6MEd6Q1hqaUpwdEE2ZFhsSy96djI3NCtXRTFicmU5dUZEWEVSS2pJ?=
 =?utf-8?B?S2YyT2FFTDl1SFpQOGt1L1hDVlRMWWM3N3d1SC9acCtDa1NLdWF0YkhWUnZR?=
 =?utf-8?B?RVE0TDJmRGxQSEdsd2ZhazEydXc5SExhc2RveXM3UVVRMjZ5dFFaZ0YvUmNE?=
 =?utf-8?B?UmVoSTU2K3BQdDNaYjRhMTVmYkpyd1RwTGN3Y1l3TncyK09hL1lHVmZyaHcr?=
 =?utf-8?B?WkR2UW43SytDbVRkeTNGQzhNRERUY2VhY2dMUG80UW9Xc1d5MmFyVEtsdjMr?=
 =?utf-8?B?OTFsY0JoNkd4clJPcTJVRVZPWFphL1Nhb1AzTVVSeVZJdWR0V1VaU0FCeldO?=
 =?utf-8?B?ampGNy9WTHN3NUk1QWFDMlFLVXhtRFBHWU9qOXlCTjRERjVLMVZld2Nlb0Z3?=
 =?utf-8?B?aEw0QXI0Z0tacEJqc3M3ODJiend4dExMdlpqR2xPblZQeVUxMjJSejFzTy8z?=
 =?utf-8?B?bE02bVBTZHhxS1pnRSsvM01BVURxcDdKWFhzdnk1K3M3WmRZMGNLWGE3cnlX?=
 =?utf-8?B?SVJVa3N4WGZlUHQreFNLU05kMXlVcGczUlhFOWhicUNzZDZBcFduendDVHQ1?=
 =?utf-8?B?UFhoUnlxWHpxYnJuTk8zOHdmL29QK3FQaW84K1MyRG9SY1NrSlpubWJmMU51?=
 =?utf-8?B?bnpob3dYOFJVTmxDaDdlNTk0SnFldzRKMHNJUXhFMGwrR1d0U3BqNEdCWkNU?=
 =?utf-8?B?ZnJxZmMwWHhwWGhOSVNCaHYyL0Q1cFJEeGEwNWh0ajF0bTVoZWpRc3hwVlNw?=
 =?utf-8?Q?mzOv8DJ5KM9WG00Hy4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WXZmR0hUTlIyK0JBbGVyL3Q0bWwvSW15a00yOS9nbDBtejh0Yk0zNTdRUmJo?=
 =?utf-8?B?ZFZDQWt0dXlJWHZLdmRTdFNmRHB5cGV3cjZ6RlN6RWZhUWNIQjhWd1FkK2lp?=
 =?utf-8?B?LzFPQk1Da29JTTQ4KzFJeVRGa1BxQXRIQ2huK3Y4YzJCamQ5aXlrRlBOem91?=
 =?utf-8?B?dHpQTURjZ2JnSzlFYi8rQjdHSGhPUkVvN3dLcEsyaGNYTCs2T1dWaERpOXpT?=
 =?utf-8?B?TU0xd21xemxZWnlPYUNiQ2NXK1hsRElWYlloT3B4aXV4RHlBZUZjRk9kYnhS?=
 =?utf-8?B?SkhpaDVqaldrQ3VCUWxXSFFzNzhHaGdwTXk2b0xqOW9rMXhxTStJZytlWVlq?=
 =?utf-8?B?ejhJT2VpcG9VTjRlZXZOdlN1bnVlOEhqM1VvZ1pNQVRTU1FkcDBpcUd5dlZ1?=
 =?utf-8?B?RnN4MG05b0FTU2lRR2gzMDhkalR5SnYyQ3ZDZFNzU2FCTTkzMkxtMFo1L1JZ?=
 =?utf-8?B?dGxZMS9kRVc5WFZQZzBjcTBBNGZWKzdYQ0JNS0ZmclNrREZZZHdCdXRQeGZY?=
 =?utf-8?B?UXJNVGZyVnlUTWlJR2xkQWxuUFJKNXZrbTBKbUQ5SnR6Sm95K0w0VUU5UUtq?=
 =?utf-8?B?enJVRCs4Qk5Pb0RjR0RkbEFqRXM2aGkvdk1RQWZuMzV3YlNzcllGUDR4bGlU?=
 =?utf-8?B?c2RvWXd0Y1JVMTJGUzl6STMzTFJhZEJXeWJycHViQzNORHg2RWROOTJKdzAw?=
 =?utf-8?B?RGlEUjBIZlYrWkc1cTRkMTMzL2FSVjhpeG1WVmJjYzVJTXJNSkQyNmd0b3JZ?=
 =?utf-8?B?M0d5SGprSVJQMWt3TTR1cUpRem5IeHBaS1VDRG42ajkxVjZ0L21jTjg5YzZP?=
 =?utf-8?B?QXNEek9lVnRpaS9XR0RqQnJyNS9LSmdRa29XVEZla1ZlRllRVEJ4d0tvRkN2?=
 =?utf-8?B?RU1MVU9vWXMyWGsrUXdYdGM4dDNSWFc2Ym40ZkQwdHhOMnZCODczZXg0UXB4?=
 =?utf-8?B?aWxockRFT1d6NFFHa2dZaWRzb3k0YTdRU0tPaGZjNFZzWjZpOERROXRqaXZN?=
 =?utf-8?B?Q1JmeXFicEVOcTBnYXUwaXlBTElna2ovM3ZXZDYvbXo3SFpreTRIZVArSjhx?=
 =?utf-8?B?dnQ2dzd2Q0RDWUdVQlNhTUhKTkNQbjFIZm8xUWNmdFlQazYwcEtVanRYZkg2?=
 =?utf-8?B?TnJxcElIcWFFWHh2RC9BUXZCWitmOVk4Q21oY09jUmE1ajN4Rk1CRVlrNmhS?=
 =?utf-8?B?V21BYUtXYmdPbGdmSzl6QUt6Yit6K3QxcVkvSU1BLzVWRFFubWhuR0dYN2Zt?=
 =?utf-8?B?b01VRDhVMkpSVHlOWll2bWJmRy9ZSll3L1JUMURNVzFSdFhYOTFESUE2U3BY?=
 =?utf-8?B?UnA2aHZiRVJLcFJwdWhpS3dzTFVKVFk4YnB2NG9TNlVRYVBQVkxtYmQ5d0pD?=
 =?utf-8?B?Vkh6N3ZtcWc2M2JDNnBySzNUSVdaajFnemkxY2czYkpad3JoNWhiWGRSdUt4?=
 =?utf-8?B?VHhrWDdDWXJzeEJpOWQyZklTVllqbjZTcFJEMmFiSVFkK1VFVG9tWFZReXE1?=
 =?utf-8?B?WUdQL2pjU09mbjV5ZzR2a3gzUjlockN6Z2lSVnY1N00xZVJ1TUZsblNRNDl6?=
 =?utf-8?B?YkFQa3gyL2IxVWwwTTVXbm55NTZEZDZHVWw0RTNHSVlUU1Blb0NRbkZQL0Zq?=
 =?utf-8?B?VDRmc09wYXFQWlpJRzA1MjhtQlRBTEZ4ZFV2cjltM09hK1BrZE1tTnVIWkJq?=
 =?utf-8?B?dDlWRzJwQ2FlTE1STkU4WjQzemtQaDR1dUxUcEtKNHpJTTZ6endQN1BZNE93?=
 =?utf-8?B?aW9CMFBjdmRsUXFPQ0ZKejJMWFJ6WjZTaENKN1psMDY1dDFSUGFzTHhJY0xT?=
 =?utf-8?B?bWhRR0Fob3RsUHJJdzd4ZlFDb0I5YmJvamtIdnRrcktXRndyMWhvbnU3RUJV?=
 =?utf-8?B?Qmd6OFBoU1ZJWVN1Yk9PNm8xeE5BVSszK1BOakhMdVB5cmhDaVZhZzJXVFRk?=
 =?utf-8?B?SWQzeGFuMFRUVzQ3N0p5R0NuWG1heExpRlFUSlN6V0t1L0lBNm94TjlHZUE3?=
 =?utf-8?B?aFVrRFRrUHlQY2YxMWVDb1JZSHROd1hacnZCbWNpT09EMDhNeDJPQ2tUZXI1?=
 =?utf-8?B?RVhrbEx4MGgzRGs2VGFLUUdoVmo0WnhKMVMrVVJiK0JmSzhlcDhubzZFdGdX?=
 =?utf-8?B?Skx6NnFkRWpRV0FJMlExUk9KTFlrazNMRkEzZElaL0FBMWdYU1FtYzE4TXRw?=
 =?utf-8?B?ZWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <45A8DCCE58102B4AB3C978173DD5FEC2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e8f37e8-cbf3-4821-ff70-08dc83a95c2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2024 08:44:19.8470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sXvfGAAu/ki6VhA6NxPo8RPOySQMF3tL1ZHE7P7qX15AYhGH1iriy3SF/5SBMbhS2if+yOSHczK9lGwFQ/psi8Yg4EyOLTkRxYmhcqRgRtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8061
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

T24gTW9uLCAyMDI0LTA2LTAzIGF0IDA3OjMwICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBNYXkgMjksIDIwMjQgMzowOSBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggMC82XSBS
ZWdpb24gRWFybHkgVHJhbnNwb3J0IGRlYnVnZnMgc3VwcG9ydA0KPiA+IA0KPiA+IFRoaXMgaXMg
YSBzdWJzZXQgb2YgIlBhbmVsIFJlcGxheSBlRFAiIGFuZCAiUGFuZWwgUmVwbGF5IEZpeGVzIg0K
PiA+IHBhdGNoIHNldHMNCj4gPiAoaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy8xMzM2ODQvwqBhbmQNCj4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzEzMzY0OC8pIFBhdGNoZXMgdG8NCj4gPiBpbXBsZW1lbnQNCj4gPiBzaG93aW5nIHNp
bmsgUmVnaW9uIEVhcmx5IHRyYW5zcG9ydCBzdXBwb3J0IGFuZCBpZiBSZWdpb24gRWFybHkNCj4g
PiBUcmFuc3BvcnQgaXMNCj4gPiBlbmFibGVkIGFyZSBpbmNsdWRlZCBoZXJlLg0KPiA+IA0KPiA+
IEFsc28gUmVnaW9uIEVhcmx5IFRyYW5zcG9ydCByZWxhdGVkIGZpeGVzIGZyb20gcGF0Y2ggc2V0
cyBhcmUNCj4gPiBpbmNsdWRlZC4NCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXIgKDYpOg0KPiA+
IMKgIGRybS9pOTE1L3BzcjogQWRkIEVhcmx5IFRyYW5zcG9ydCBzdGF0dXMgYm9vbGVhbiBpbnRv
IGludGVsX3Bzcg0KPiA+IMKgIGRybS9pOTE1L3BzcjogR2V0IEVhcmx5IFRyYW5zcG9ydCBzdGF0
dXMgaW4NCj4gPiBpbnRlbF9wc3JfcGlwZV9nZXRfY29uZmlnDQo+ID4gwqAgZHJtL2k5MTUvcHNy
OiBVc2UgZW5hYmxlIGJvb2xlYW4gZnJvbSBpbnRlbF9jcnRjX3N0YXRlIGZvciBFYXJseQ0KPiA+
IMKgwqDCoCBUcmFuc3BvcnQNCj4gPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBTZWxlY3RpdmUgZmV0
Y2ggWSBwb3NpdGlvbiBvbiBSZWdpb24gRWFybHkNCj4gPiBUcmFuc3BvcnQNCj4gPiDCoCBkcm0v
aTkxNS9wc3I6IEFsbG93IHNldHRpbmcgSTkxNV9QU1JfREVCVUdfU1VfUkVHSU9OX0VUX0RJU0FC
TEUNCj4gPiB2aWENCj4gPiDCoMKgwqAgZGVidWdmcw0KPiA+IMKgIGRybS9pOTE1L3BzcjogQWRk
IEVhcmx5IFRyYW5zcG9ydCBpbnRvIHBzciBkZWJ1Z2ZzIGludGVyZmFjZQ0KPiANCj4gTEdUTSwg
Zm9yIHRoZSB3aG9sZSBwYXRjaHNldCwNCj4gUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFu
aW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgQW5pbWVzaC4gVGhlc2UgYXJlIG5v
dyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiANCj4gPiANCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aMKgwqDCoCB8wqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jwqDCoMKgwqDCoCB8IDU2ICsrKysrKysrKysrKysrLQ0KPiA+IC0tLS0NCj4gPiDCoC4u
Li9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuY8KgwqDCoCB8wqAgNiArLQ0K
PiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkN
Cj4gPiANCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
