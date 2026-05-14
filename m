Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMNGCzWgBWo1ZAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 12:13:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED03A540320
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 12:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE8110E3B3;
	Thu, 14 May 2026 10:13:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bh31if21";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F091410E38E;
 Thu, 14 May 2026 10:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778753584; x=1810289584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7aTeBqidfg5EPhypiPKi53IcgqjZynm/9bBzY5YeGJg=;
 b=Bh31if21BvAD+fw0k20bz5pKg5JQ69GmkLwDoYT25j+BEehg74VQF8un
 4SPLFPa6kOErKI7sHzXlk1rkh09t20T72A8HTMiPGMoLS/pziw9I8sCTo
 MRJi7DjFl3L9+DF+rZkovEcdf3iIUtvBr0gCdtTk2FqJhop0sh+KHlNwJ
 6MVokKn0+8rRoDWx+W1ekBfjajXWXR2KVOu6hgOJHRvX7Qdo2VzaOu7rH
 zP6hl8xYty9eYL7oVer0J5W0H4XBkcSb4hkV/ly1TmYmVKHyJO5X0QWF0
 WPdqMuTIjJIj9nH8k/s+EWNsbPBVvgMUfpXUwUtrDAwuKMle2PGR02kyQ Q==;
X-CSE-ConnectionGUID: Rzp/8IqNSpWQciOEZbZHbA==
X-CSE-MsgGUID: +0BNGqyTR3KBr4rxms5MvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90796691"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="90796691"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 03:13:03 -0700
X-CSE-ConnectionGUID: QV7zV0LkQ4e56tryIR8QrA==
X-CSE-MsgGUID: zHj5O2PeR+ia5II3XUE6nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="243326151"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 03:13:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 03:13:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 03:13:03 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 03:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YGFblKnLB2rObMoI0NedbmJME4g4VTUHV5AwrSy6Ts6ziTVKijYdl84coygD/3H73NChRB9KXHuKd3LQgBOmWCLYX7fBWYaC7FbHorfF0Ucw6yUGfioBzK56woqnLo0R21jLD4uJBBl+FV80PRR59NhgqqsBtxmzfb34famSSUHzqBqWgqU6oFPLepjhgC4r4chrsTekI1gynDnw4kZHINAjlCvTJZWLEEKeY41NF6/doVKJebfbw46a6nO2ryZW80qLUrnFndEXn2kZNcK/cft9gKBtc6Tdp365dd4iu77DXoQHvy7k9BEIt/ZatlyAW1noX+Y01m/ciKM+wZIRNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7aTeBqidfg5EPhypiPKi53IcgqjZynm/9bBzY5YeGJg=;
 b=OVz93tLBQUUY7WxZWUttepB4YhsdcybbuqjHzUPE/W2dePvZqz9G6fQV8Vs0vj5PcTzw7UaJMHzsPLpLYiFuup7vggQUyg2PTaD3GnXgG3RbcxhOF0EgfWWKwMta2/QltcPUrhFloaEnLx9g33MUxE5ZceUzyjhrV3dpWw5Fw5ZlmnwU7KAhPWrFBp3c+1Cxe8iXavtPFFuCyD+CXl/mCs0XUWAuxaS2Q4mYd+1nkx83Y1Z36slk5gqQurJz+Al8BmUMhsOIsGyElxcs2xocp3sUYN0cVvVxUdgT8rOMgVv5HXOjAHHQ6iuhYqY16IFBxMNOVfatowfSY9teLGwefg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6267.namprd11.prod.outlook.com (2603:10b6:208:3e5::8)
 by SJ0PR11MB5168.namprd11.prod.outlook.com (2603:10b6:a03:2dc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 10:12:52 +0000
Received: from IA1PR11MB6267.namprd11.prod.outlook.com
 ([fe80::748e:f6e9:c380:ed94]) by IA1PR11MB6267.namprd11.prod.outlook.com
 ([fe80::748e:f6e9:c380:ed94%5]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 10:12:52 +0000
From: "Brandt, Todd E" <todd.e.brandt@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 0/2] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Thread-Topic: [PATCH 0/2] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Thread-Index: AQHc44o5gXxQf7VcvUW80kpQoOytTA==
Date: Thu, 14 May 2026 10:12:52 +0000
Message-ID: <c1c8fbd30bf30f6369bf6b8c5c6926b8ccbadd82.camel@intel.com>
References: <20260514055848.871938-1-suraj.kandpal@intel.com>
In-Reply-To: <20260514055848.871938-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6267:EE_|SJ0PR11MB5168:EE_
x-ms-office365-filtering-correlation-id: bd74466d-8a8d-4eb0-7685-08deb1a15c16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021|11063799003;
x-microsoft-antispam-message-info: f3AON3TFJY/SB711vFVto2OLO0V4DR82LlXe64DgEmiLw+8webQAE+uSctDt7pievriJKAZQxIBzGMFhwMls6yUGFBHmt8XAS+BaGmwRJHyoIyiuZG1lw/1OQSnrmCzgYg839FGdoPgtF0tS1LofNWqr/NqoO+9tL40wea/2YW2P6PCFTVLAR3N2ORH0rItsGheoTS8Y5IaEUKj9P24DZpmLw2uNQEjK3bAxPdjsKIp9m5wkeZNu58m+7KXzD37FpQ89sC5A5k+3wCF+1JVE9v1aaGBF6ZJN+j7jEfdbnCUyGhDLZOaGcCfKIbqEhOtkR9CcGPQf5tMBPA6+uNkAZPRwxwzLKdi9rslh8iZFFS2T2qqoqy0IOJU+wqY92laPH36qBofVANvZ/7AbJmensY9ySZAKq4MZGI3xjyHY5D/3yow/9LMv7RdYsWwf0GyaK/TdOlG4lPDUKzjZJoNmyKnVNR7iDuLPXpZgjOYlKCXY95vdkKGpxToTWK70lh1+a84nIGrN4+oUtjKnHgKQRtSh9NmgW4rXA6At2p02FWHQepZxeQgRb0fWpukTNW1Hvr1aeWxakknO69hxdhez+53A92YCRDzdOpzTspTHNjakOjBQDWZOoZHO0C8M1wVNyDNstcXB2+JgTf+Jl8NjvaJag9jEw+fGX4rQ1pTjsgSFgcdTWkvlOmnzKK1Ho1EK7SnbMNhOS0DIZ0cnopH0kA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6267.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1AwdkVuNlMvUFhLUU5IMU9oYk5XYkZFY0cxZTE2b09NbExmaXdKcWdVYm1J?=
 =?utf-8?B?TXdKQnBxb0VjaHhTcjBWS1lqUGc2Yk4xUTVsS04yUERhdG9SaVVqMzBaaTVC?=
 =?utf-8?B?LzNSandkNnMvNkgzVHlpRkJ3NXk1UWJXeHFML21HbFAydEZHNi9GOXBmMXl6?=
 =?utf-8?B?Q2pFQU5Od2tFWmhVeFpBeVRaRUE1eVNGeVNlV0Jocjc5bXE0Qm4xRllQd3ZW?=
 =?utf-8?B?NDMwemxYYlZjOHQyN3NVdGRDZEptc2RqdTF0RWdKVUFlZWRXRHhVVTdUNUth?=
 =?utf-8?B?bXBHd04vV25DaStxdUs1Y0xpUW1PMWRFYmQ4a3B6ZTc5QUxsd1p1LzNOUzd2?=
 =?utf-8?B?bHJZZEhHVkxyb0J1WXYybkN0MWpYODgwS2xwdG1ENVNJYllTbG5zd0pTMEJD?=
 =?utf-8?B?YTRERkVjdVZLRCtteTlubGpTcDdnSHI2QlpIUUMrcXRkNnN2RWx5T1IzbnZQ?=
 =?utf-8?B?VytlVU51VFFDYi94ZGFZSnJNb1pHSGdLUERxUmUvWHhqZmp3bWVLQ0JKc2F3?=
 =?utf-8?B?QW5rSVk5ZWZDVmxQaDdOOXlPS3FxcEZCSkV2ek56Wjd1bTd6RUJyVExtaElZ?=
 =?utf-8?B?WUQrdXdnOUk1N2RSczhXRkxuN1FVcHhNOE5IT3ZiQTlwbjN0UTBJY0xTejJY?=
 =?utf-8?B?amFRSmhEUGNDNHE0aWlIdUJieGVaOVJwcFdNN3R2dDdVU2lTbzViZ1RDdE5V?=
 =?utf-8?B?N2QrOFBzTjBtSE9HaFR2ZjY1VFZLLzEzQ1o1QmxNL3dvcHVPdWdkenR4Nm1C?=
 =?utf-8?B?TXh4dm00elNDSExyc3JHZjZjTEgrU1pTSThFaXBpaU8rdTdWcEpySTlpeHNa?=
 =?utf-8?B?Y2x5RTdHK0FsWVUwMkF0NjVEYlZZS2FzNWZjNGgzL0N6bTQ4TWs1UmhrNnVj?=
 =?utf-8?B?R0VRYldmQVl6ZzJPcmVrNlN2UDYrbk9BM29tOFpnMjNYbmJBWE9oaHgwa0JC?=
 =?utf-8?B?bjRXa3NKY0V0UEdpUWZtbC9SZ3Bpd3kxeUloZ296aFhYSzFRaGFBbWltb0tN?=
 =?utf-8?B?TythUmRPQ3pQUmNiQTVtWHVLQy91M1JSY2NFeGxrQ0E0QnpWMm5aNGpTRkZi?=
 =?utf-8?B?cE5RU2hLMVRTRFB4Q2NnMGh3WnU3TUJXK3dzdnJXNkFTc1FIanJERGRNZ2ND?=
 =?utf-8?B?Y0VLVGdLbUhDbzQyWmlUcUhzV3pUWExyQTRzMzJPdWRWRzB4NUVPTEJkYmxq?=
 =?utf-8?B?Yi8vVE9yc2pveGZ4NGhsWS84bkQzUGI1QnhOYnlFSEtjcndaRFN2Q3FEdjZw?=
 =?utf-8?B?OVNWNjg0cUtlWGJMNG9GMVY2THk3cHpaSHhjM1o1TDk3NkNxcUk0ekZtdUp5?=
 =?utf-8?B?M1pkSnJEOWVneSt6NEo0Tzh3dHRYOXU2NkhwSmRrNzRDVktiZ1FWYTMzWTlX?=
 =?utf-8?B?UmFyWXBFS25iU3hTMVFRTWpGWERpMjZ0RnlIQlZtcElGNW5xeHRESWo5ZnZ0?=
 =?utf-8?B?WFNsSHNMaTc2RmRyZHFIQ1NsWWNnZXFRZ0h1SnlFRkljV2FMMzFTT0gxdlk0?=
 =?utf-8?B?cVRFTlBQbzVsVjlnK20va3dhSWFIL21ERTdSMmFtY1I5L0lYUkVWVVUrZWtr?=
 =?utf-8?B?VmtZam4vWjIvUzN6MmNrTTdMNEZmeGpOTU1hZGh0S3hJQ0NpVXdnZzFETUZn?=
 =?utf-8?B?NWdNRDk4Y2dKcUg3WVk3TFQ4VjN3ZkdiZ0ZXRWgrTXF6M3J1anI5ZVdmSnQv?=
 =?utf-8?B?T21KNDlWMVljdXFiVUUvNnNDcSsxY2JHL2VPVnFkVFBpYlQyUGNZTUlOWUZs?=
 =?utf-8?B?bUR0NG1nS0RkR2xLS0xuUU16aHhaL3JZWG1jK2krVnprand5ZnhMTDNnS3hs?=
 =?utf-8?B?ZEwxemtjNFJxc2ovSTMzUGdrV0JjdWxJdUNyVXRpUDNKOGpFNEFQQmNNSXRo?=
 =?utf-8?B?OGhEdUcxRGorbmhabHJTOVlhc3RFSlFhbHV6ZW45c3ZhTlp5L3hXVGdMdS9l?=
 =?utf-8?B?S2EzcjJ2bDlBc1I4V3N1Y01jeitjR1hHbldqZ3BJU2o0Z0RCRU1WdU5QTTRQ?=
 =?utf-8?B?NmFmU3dLaldTT1A2NXlJOWxVd2NOdEZCQmNSZVNkbzEwSEd1MGhuVkxxemRw?=
 =?utf-8?B?dDVFaWREcm1MeEczWFJYWlllcUpsSDBjazl2V004YmZxT1FEVEQ0NmRsc1Fx?=
 =?utf-8?B?OW1WL1pucEFjcVU5Rkx2NDJUSGdFQXBST1JXOGp1OG5BYnJ0WmZPcVhzNzJq?=
 =?utf-8?B?b2cxVklqMGlYV3ViZTQwdGcwNEtpRXVsSWttNjR0UjM0OU1YbDh3SVRRcGFR?=
 =?utf-8?B?RngxeGtIK2xMY1Q3NXptMDRLRTFwWC80d3EzMEJyaURqSkN4ejd3KzU0VVVB?=
 =?utf-8?B?Sll6b2oyQnVhMDVxOWduTFJXT3dwdnhHWTR5MWxmYW5hQ0dhQWUwWUpMTnBR?=
 =?utf-8?Q?cQx9WIfX55ifU7mA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <195B0B20C3C3F744A841AAB86E0259E0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WlQpX0T/FKHEl/+A5k8szfbZR4ZDQC7QKmJvHV6g5usE5uzW2AudvfM1150Kl9STQyBlLqINQosfhoItrKVCbrf5HKJeqajT9Bfp3EkbnqAd6bczue8Ra/lf8y3l+iyl6NDm4ouLKm4XPXdhgQOh3cRXhwFEnAJE2D2UhGIzBJRQVvzwOW9zP2lLs4CLO8cNj9/UX6ddXYq434lDZUUKbtmFruUXq72+IjvPuT3E1Rd23I7bNysbv/DHE5V91WvTXNPMS4ODEDWJbUCOZtA0/Xqd0JXEUYMS9FOVRLOdvctK/I5P+JjsIUNt5lE8oSnoZVRsiODD7sArX2Y3hocMnw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6267.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd74466d-8a8d-4eb0-7685-08deb1a15c16
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 10:12:52.5767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GZi5mAgohKUjWIHRImXxdYru9b23WUUCjfyZ4MO5jrmhi0sSeuBoCBwmLQL9XU8EpXiax+81f7eL9pcS9AIcCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5168
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
X-Rspamd-Queue-Id: ED03A540320
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim,gitlab.freedesktop.org:url];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[todd.e.brandt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gVGh1LCAyMDI2LTA1LTE0IGF0IDExOjI4ICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0K
PiBJbiBmdWxsLUFVWCBWRVNBIG1vZGUgKGF1eF9lbmFibGUgJiYgYXV4X3NldCkgdGhlIGRyaXZl
ciBuZXZlcg0KPiB0b3VjaGVzIHRoZQ0KPiBuYXRpdmUgUENIIFBXTS4gSWYgQklPUyBsZWZ0IHRo
ZSBQV00gQ1RMIHJlZ2lzdGVyIGVuYWJsZWQsIHRoZSBQQ0gNCj4gUFdNIGtlZXBzDQo+IHRoZSBz
eXN0ZW0gYWxpdmUgZHVyaW5nIHMyaWRsZSBhbmQgYmxvY2tzIFMwaXguIFRoaXMgc2VyaWVzIHNh
bml0aXplcw0KPiB0aGF0DQo+IHN0YWxlIEJJT1Mgc3RhdGUgb24gZmlyc3QgZW5hYmxlIHNvIFMw
aXggaXMgbm8gbG9uZ2VyIGJsb2NrZWQsIHdoaWxlDQo+IGtlZXBpbmcNCj4gcnVudGltZSBiZWhh
dmlvdXIgb3RoZXJ3aXNlIHVuY2hhbmdlZC4NCj4gUGF0Y2ggMSBpcyBhIG1pbm9yIGRlYnVnLW1l
c3NhZ2UgcmVuYW1lIGNsZWFudXAuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gDQo+IFN1cmFqIEthbmRwYWwgKDIpOg0KPiDC
oCBkcm0vaTkxNS9iYWNrbGlnaHQ6IFJlbmFtZSBkZWJ1ZyBtZXNzYWdlIGluIHRoZSBzZXR1cCgp
IGNhbGxiYWNrDQo+IMKgIGRybS9pOTE1L2JhY2tsaWdodDogU2FuaXRpemUgQklPUy1lbmFibGVk
IFBDSCBQV00gaW4gZnVsbC1BVVggVkVTQQ0KPiDCoMKgwqAgcGF0aA0KPiANCj4gwqAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmFja2xpZ2h0LmPCoMKgwqAgfCAxNCArKysrLS0tLQ0K
PiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDMyICsr
KysrKysrKysrKystLS0tDQo+IC0tDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQrCoA0KSGVyZSdzIHRoZSBpbmZvIG9uIG15IHRlc3Rp
bmcsIEkgb3BlbmVkIHRoZSBidWcgaW4gYnVnemlsbGEgYW5kIGdpdGxhYg0KYW5kIHRlc3RlZCB0
aGUgcGF0Y2guDQoNClRlc3RlZC1ieTogVG9kZCBCcmFuZHQgPHRvZGQuZS5icmFuZHRAaW50ZWwu
Y29tPg0KUmVwb3J0ZWQtYnk6IFRvZGQgQnJhbmR0IDx0b2RkLmUuYnJhbmR0QGludGVsLmNvbT4N
CkNsb3NlczoNCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwv
LS93b3JrX2l0ZW1zLzE2MDQzDQpDbG9zZXM6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MjIxNDg2DQoNCg==
