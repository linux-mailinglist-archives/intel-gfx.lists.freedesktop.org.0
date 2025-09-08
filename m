Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98598B48859
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2052510E4AE;
	Mon,  8 Sep 2025 09:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0DNhh+X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF07710E4AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323607; x=1788859607;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AOOioUz9w+4zFKcrD2uxdO3S9SD+uNh0wjAhE8PFiX8=;
 b=K0DNhh+XdIocWgO9KP3QRcTwOKRY7dN6q4HA9SQQWG+4QHAiQCDhDh8o
 UFH5q2UV8FCMJaAQCnO3tUxmMx3seBlWMPs6YY3JOEkCKzWzGelVYr2Dw
 IoTYckglpeYCsvb8mQnNKXecTMH8YS3oeogSersDQQT9KG6J5I8QRBGKP
 jYxz/AGfF+dtXNE86a2J5g7xRHvIilqzXVWGUz2HxXrdchBDEITItUR30
 pXfBlLshaCmf3xDolQ4PoSbRGEgi3+iVngdsVSxghlGVLIRwGLTIjUBS6
 0QfRVKuWenbTEk/AFrzCFBQM/QGxWQ8jpoBgL+ymaGuYI4HI1y3HhSwWA w==;
X-CSE-ConnectionGUID: sXFTRNkzSOG1DaIJDkzmNA==
X-CSE-MsgGUID: DATaOkJ6SLexPYZ1Af1TzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="70279123"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="70279123"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:26:46 -0700
X-CSE-ConnectionGUID: 3bqhl3oDQCWW59iVclGtcw==
X-CSE-MsgGUID: sx5F+J0qQKueYPPDc8ZILg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177972029"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:26:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:26:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:26:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.58)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:26:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z6d060+QLlZFWrqfBX+lPlqlqDlqALIXkjS80tyNU3hd2Os0aAKjSgFXjikpTR5MH7fbgvRUFKsVP5XcqDhFezM7QM4Wrv8s4RHFpMqrJQp28zbkXuUyr1erNIyrY5mRcNY5FxT+i+DLoEXQZG/DIQmohMg8jsykSR/4ZPotBGx6po4t750mPoHnrYNlQsMzASB2ZVlZkmmNHCUymoFPLmVZw1nVJlF+/IRkOWYCj187dFpeZNCiVq9i8EUVah/1sfGMK1OoqSQ1p+WJJJZHe2nOWzeZx9JGyRWa43+oh/VkMEtFVd10EWf25Ms4/RfLHy8qN5XbMl9fhzBxWZI3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t66vLrAsDPPIATqP3tb5CW16vXj/opn8drngzjiRZNY=;
 b=mBGspPQa2CjFG8od5PH6USBLUVDKB8nW+or1JpIGXOFuxQtrnDahzm2xXX0JWWqMTI9D0dcrZNn6XuRqgt6mbKIOxI/YaGr5cGqBgm7yJy0AW/reZH98CyulsLML6R+L0c/fjSgFqXnuXftcoVtouCLFV56VMJgeT00L2MS4uoZxDdeuNL4ToA2SUtxi3yqurXCxDVVHRlyN52w5QiA5v/B+NJ0HHG9JBUHFbzHXsoaLjfgz1ZsyugNeizyzcmq4IyFJ9kMjHkFwJbij5qrMpyz382LKnFg+HnlRaXWACC41aHuFJM8XKur+8Af86W8usbKOb85xqNX3e7mN2JvzzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:26:43 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:26:42 +0000
Date: Mon, 8 Sep 2025 09:26:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 5/6] drm: Do not attempt to round_up() zeros in
 drm_suballoc_try_alloc()
Message-ID: <89eee5fb90e7f1ab9ce45509f01fbd0fbaa100d7.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: BE1P281CA0269.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:86::8) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7990:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e6c4016-f3cc-453d-144e-08ddeeb9d2a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YVhuOGRrdWl4UkM0eHRoYVNxSTNNWHRGUHZMaW1MWHBxcjk1UHhjY0hjd0ZE?=
 =?utf-8?B?dlM0L1RucUtjVEw4Y2R4cEZ4RnJ3bkZxbERINjZHVXdrcFA5ZUV4QUtKY3FL?=
 =?utf-8?B?OGpBV2VaeFhwbGJ6K000NTUxUmcrbmRRUytEemtWdTNPZU4xZlhCTGRMTnli?=
 =?utf-8?B?T0VScVg1dS80a3JmMFBuOXBtdmFNSFpTMWxMbHlreXFRSVo2Qi9NbUUySDZh?=
 =?utf-8?B?SEdSK0tnMU5BSWtvOXRpRzBhdFlMME84WDZseVJSTTRWaWs1VXdTZjFnRWZ2?=
 =?utf-8?B?bjQ1RFVKRy90REE2Z0ZpSWdPVklyUmVodjdBakM5VHFYNno3YzlsajNMZ0Y0?=
 =?utf-8?B?MFl0OGRwcmc3Yi9BbDJOV1UyVjZqRVdNdEFrS3FFTlFUUDBja2pMOGVHY0tt?=
 =?utf-8?B?TENtaGxhQlFkZi9oQnBzTTc5V2M5Zm05bExpTEVGeVYvOTZtbEowaFB2WDZa?=
 =?utf-8?B?ODlvaDhzTU9Xd1lRdkdVN0w5azhyWGMvOWNIWWNnd3NFdmQ3TGwxald1Z0gx?=
 =?utf-8?B?R05vY0RiRlB0YjRoUFd6T2tRaFNIcGxVc3A3bjB6MnRGM29GTjRJT3BKbGNE?=
 =?utf-8?B?ZXV5U1Bwci84aVNob3Y0VnluTWgwSGZMMWRYM2FINlRwQ1BOcEV4RUQxMkFk?=
 =?utf-8?B?TG1jL2daVVhoUnAwSlhjdnJUaE1wWUovUCt1RnBkdXV1K1Z2UHRMSTZjRXpl?=
 =?utf-8?B?eCtJYW1vQVZoSFp0RG91WHdERE4waXQxQ2k5eU94K0xWcEZGQU9NSTJMWXRV?=
 =?utf-8?B?RVc0UUNScFY1N1JBaCsyV3laQ01TdVpvSnBCM3dZWWQycGcvWG04eXF3bkRM?=
 =?utf-8?B?WG9KNHFJZGllYXJjbVBZMUQzYmZSbUpDTDh6V1d4dDVFejhwVTU1bmdEZElK?=
 =?utf-8?B?UnJ3a1hJVGhCVzEyZkVBVmViQ1pIZUxLSFV5S1UreDVHNi82QlhLcm4reFVv?=
 =?utf-8?B?WkNKbUdzaVU2S0djcGpIcXNacjNXSWpiMHl0ZXhleGdJUi9KRnNBT2FNTjlZ?=
 =?utf-8?B?eDkzV2JRb3hIUXlqZDdSMkRHS0N2OHN4UmFTcFB5czU2UUFNNzh5QVdVa0pO?=
 =?utf-8?B?TXF1LzNsTDRnd1ozdkpxbVZXdFQrUjB5Zlhud2hHbjNIQ21MVU9FMDRGeHor?=
 =?utf-8?B?dWx0N29JS2JnSS9HTkdaZU5ZdWlZTlcxS3cwQ2lVRFFYa3EwWkVMdSsyR3hL?=
 =?utf-8?B?RTk2ZkE2bGsvK0ZTVEVjdDZVMGZDcVpDOXZXa3UrVG9WRmFBYWY5bTFEMXRB?=
 =?utf-8?B?UHdwZHRoL1lQMkVkcmo5KzN0Ti9UeEFQNmlYV0tEbjM4aEZBaDFsVWFrbTVO?=
 =?utf-8?B?dUVvcGhRSFd6RkF4OGpNOXNVdS9WTlVHYnZ1NFY4aHJNMXZ2S0lMeURxbTRq?=
 =?utf-8?B?cmRKWjJJMHVXaGViZHJ6SkhmNUZzamwvRnZ2aTZNUVJYMWZiOXJJQ1Y1YTNR?=
 =?utf-8?B?bGNIVmRKOVA2RTAwMkRUalpqRkNuVHFBMTlTRWp5d05FT2Z6QnFRNlNObDdP?=
 =?utf-8?B?b05xSEZ2RlRjTHRjRUY3UWFwVW8xZytUVWh2S0NDZ1lkaFQxSmpnRzFtYkZB?=
 =?utf-8?B?UzVGbm8xbTVSSnh0OU1EZkRNZmlJaWtVRmdUSVRrWEpXVFRneEJONjA4L0pu?=
 =?utf-8?B?RmVSQTVzTGd0dTl6RWZZSUgzYW5ySlMrWnVQVDZhSkFxUnZPeVFjSXVjczZk?=
 =?utf-8?B?OUgwTzJPc0gzazNWVjNkaWY4dU1PZDBLR095eFBGbE54bTJYVmo0Y1Q0VnpM?=
 =?utf-8?B?Z2ZJQ0xEVTI1cjRGaUVEeEc1ZnUzK2Q3ZDJUODJIUW5lbllZMmFEZXppVlBp?=
 =?utf-8?B?VlV5UU9hT2J0M0FaUmhjTkxGQjNiekRGRGV5LzNxY3grSVl0L0pkZnM0bmxL?=
 =?utf-8?B?TFVQSVlWOElzME1td1M4OGRRUkQ3SHV4NjNUTUtDbkhCWUVETmJnZ3RuNGg5?=
 =?utf-8?Q?Xsxtaw31Ors=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1BzZmdQNm9KUW1NVzhIZVlNZ0l1c2xxNGdLS3UyTHNSbFVqYTM4VHpJRTlX?=
 =?utf-8?B?TkFZL3Q1YW1JN2ZkR3dNbkw2WXlJVUpmYWlNMElXTzBtL1lvL2xoL3k5THM4?=
 =?utf-8?B?YVk4NmRsaERwNTRNWWlzT3JrOW1EclNtbDVXWk1UWTh6OUlvMnBqVGdlNXEy?=
 =?utf-8?B?SmlWcFFIYkdJUG0vWmd3L0JZQ2M2YXlndWNpRkZqazM3bEtUaDRTMmlmSS9H?=
 =?utf-8?B?ZENCWERSUEhETXQzN0dBcTdsR0w0Uk01c0hrQjRJd3J4NEg4YzNFalZLSlB5?=
 =?utf-8?B?cGNDS0JtRFJaSnA1Unh2MU01Y0xkeldkRTJ1UkFvWnBtdC9yeWVqclQ5V2JR?=
 =?utf-8?B?K2FaQmkxbHI2WDdDREpRR240NEYyZnJzMUVUUWkrR05RbnlKcU9jaENTaHZV?=
 =?utf-8?B?MWxXcHpqRXUvcXBZN3ZrTkpxazdzU2NPZHZ2eHZPOFBWanZ0MEhQYi9KbXcz?=
 =?utf-8?B?U2VuTDVGR0dXaDlBd2w4T2dBUWVEVVJxTk5TSXF4cFc5NXVVcFhjWHVOQ2Ju?=
 =?utf-8?B?MTVjSXBtQzhtVTVQdDhpeGJ4bGw4ZHRaOC9oTkhYb2loamtZMW51Mkw5Uk9O?=
 =?utf-8?B?ZkRGQU50WjRYVm5ydUtZZWxOeU1NajNUenlIOHVkczl5VjJRUFN1UkFhT0E2?=
 =?utf-8?B?a2QyOEc0eVIxWkt3bXVtT3c3ZC9hUStYc2NlNnpkQVhySmZMOXZHNVBLbTU3?=
 =?utf-8?B?L2NwN29LWDdmTmpzUDNlZ2o1MFF3K0RlZjYyQ010WlV3akMwT1RVSlR4SGdG?=
 =?utf-8?B?cW9yaE1JZU83U01EaFlZaUdBazMyVjdYL0ZqZVp1ZVBobUdmOGJwWkdndUxF?=
 =?utf-8?B?YkN6eDk2TS9KZDV3TUlqc29VWHN2K2d1YTB2T0lMRlkyanlOQkJkYUYxMm14?=
 =?utf-8?B?RklUa3J0ZW5WWXhsbkxCazFoMUlQN2VjNU0rcmZxRVdjMiszQ29iRjdpWFps?=
 =?utf-8?B?ZkExTElmeUxaS0ZDZDdhemY5NE9UMnhXeEJqdFkvZzVxampwMnVyU3grb0ZE?=
 =?utf-8?B?UTlDNHNkUTlFNUtCcnM1UmFhdU9Xc3RtVEZkUnpRbEJoVWZ6R0kwNVBQNllr?=
 =?utf-8?B?Z1JjYlZoSHJaMU15NVlZVVVidWhXL0RsZUM3VDBkMy9TdGNpd2l1M29JSlE5?=
 =?utf-8?B?R2pqS3JvNnVST3ZwQVRZTkdhRkJzempEZHJHVXgrQ1RhaVdjQWJtR3lCeFNx?=
 =?utf-8?B?TUlzdUVTM3pPY3RkYk9iM1B5STRac3FlR3VmbkI1MFlEUjVBVXcxcGx2UkUx?=
 =?utf-8?B?ek8wZ05xNkZVYlFldFZNYzZvVUp5OE9Gc0tua3FkdjdEdS85V05IdnlaUWhu?=
 =?utf-8?B?UGRldkJBWTVwUHhtR0FUWE05bldzOEVwaEl0dXpEN3FORUdiVjdxYkg2QzlR?=
 =?utf-8?B?VURKblA4aUhvM29UVVR5d0xpU1R1ZzFzSlhGbGQvT0RvTXNnZ0w5Y0FYVC9W?=
 =?utf-8?B?V2ZUazlCREdINWduKzd6cVhiYWpucGZHUEVqS0dRaklNNVNtZTF0LzZEdkNq?=
 =?utf-8?B?R0RaWFZiOFRvRDJrUzhQdjdlcGxWN3ZOdmdMMkg0UjYyR0xZbTJWb1hxWWF5?=
 =?utf-8?B?THFHcFF3VkhJeXJPQTR6NkMwN3RJL2NHL0lIeEV2WFlJNnpJY2pHZmR0YytX?=
 =?utf-8?B?YmkvL2Q4M0FRWS92eExJVGh4dXJLWXlrcWRIZUZ0ZzNHNXN6Q2dRTUF2Q3cx?=
 =?utf-8?B?elI0UXVxMDE0VEQzTWloc0ZONWVEbzREaEFSaWY5OGtlQWdoa3MvN0ZQdUdt?=
 =?utf-8?B?ODV5R1BHYWlzQ0RUMmtWY2U1R3pjcjdiOGxRRG8rM2VLbUdYY0IyRWJPN2k4?=
 =?utf-8?B?dU1CbElnK3lhNk1jMzFxYjR0aFkyQ1RBbmQ1U3hxaTQ2QkYvWDNrNzZQQ3h6?=
 =?utf-8?B?dEVlcVRPclg3M1RRZzU0M3VrWktwdW9wVFBZN0RxRy9zTGcxYjZyOGgyK083?=
 =?utf-8?B?QXczTXE1R2NGWlBhNEZqdjhCT3BwOWJzTk5icTFTZ2NZc2QyRWdYTmJPZk9v?=
 =?utf-8?B?VEExMEZ2OE52NityaVl5YzdyNGxZSjkwU2RzWnJrRE9mNjVZd3ZBa2ZNM3Zl?=
 =?utf-8?B?NUR4S1E3WFFDYlpkZTdpbkV2eFRFbENzRlhDT0Y0Nzh0bTZmYUdFbmJnTjBy?=
 =?utf-8?B?T0NNSzVlR3hZTDAvaUdnd0ZTVnJqN2tJL2xNYlc1V0NQcTFkYThFUHN6dHBK?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6c4016-f3cc-453d-144e-08ddeeb9d2a2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:26:42.8388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ouDB6vQ70vHyWK+sELgwXDxTmi6sLSWu3dE6s8srGJYddqb6E7lVeyOgfMuCtlZMCgFAnFEf7quGLvpblblEN2wh0mpX30Kro3a8BM3rTkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

Due to the nature of round_up(), its first argument is
decremented by one. drm_suballoc_hole_soffset() may return 0,
which is then passed to round_up() and may wrap around.
Remedy that by adding a guard against that value.

Fixes: 849ee8a2f0df ("drm/suballoc: Extract amdgpu_sa.c as generic suballocation helper")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.4+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_suballoc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_suballoc.c b/drivers/gpu/drm/drm_suballoc.c
index 879ea33dbbc4..7f01e9d9fcfd 100644
--- a/drivers/gpu/drm/drm_suballoc.c
+++ b/drivers/gpu/drm/drm_suballoc.c
@@ -165,11 +165,13 @@ static bool drm_suballoc_try_alloc(struct drm_suballoc_manager *sa_manager,
 				   struct drm_suballoc *sa,
 				   size_t size, size_t align)
 {
-	size_t soffset, eoffset, wasted;
+	size_t soffset, eoffset, wasted = 0;
 
 	soffset = drm_suballoc_hole_soffset(sa_manager);
 	eoffset = drm_suballoc_hole_eoffset(sa_manager);
-	wasted = round_up(soffset, align) - soffset;
+
+	if (soffset)
+		wasted = round_up(soffset, align) - soffset;
 
 	if ((eoffset - soffset) >= (size + wasted)) {
 		soffset += wasted;
-- 
2.34.1
