Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPHnOTGzy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:42:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E758368F6D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7621910EB1B;
	Tue, 31 Mar 2026 11:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O6MpqJRQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C5610EADA;
 Tue, 31 Mar 2026 11:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957359; x=1806493359;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DdUojTkHJSyEAS0ai1rU5Yi7gRnEjb+sTrNzONjVF7M=;
 b=O6MpqJRQPsqqZ+DN//1tCgurN6ck3sJ8E5W/RTk4kDOpYyh0oDjj9reY
 4s1907yCwUpUQZSJeVfQKUDJ7bAe7+gNM2yO/AVOv6qdeZTJoewF3DJQ9
 oN9nYo4lJR1L1/+sDcfJXupA5zs+ihh/LNXB+B59Mf3PCTxeLs9ip5p/z
 DkHPNhO/ytKcbay0SLGRRNDKW56wbih3AmKlgIhtldOGkm0uamhAQRris
 QBDhPqSDVN/v+/FVKfKgX/iWoCcCu/L0Wi2LhO7FJjRbnvKGGbzQcthYK
 wWVI6OpzFvAv8YZck4A9TfqvGe+wptR9fQRTtvtrS1GkvOo7q2VTg4oAN g==;
X-CSE-ConnectionGUID: 0VU7tI7pQPephbHHRueYTw==
X-CSE-MsgGUID: ObzLhUznQEqFFQzNsL7qDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75684354"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75684354"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:42:33 -0700
X-CSE-ConnectionGUID: jWIm8NMNT+uXcqBor/y5ww==
X-CSE-MsgGUID: NIpMbnmOR9aeMZvfvG8UvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226594101"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:42:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:42:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:42:31 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:42:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c2U4eZ76n0lfUeGbIEcvmDjR+MGL2Ki2ZLv7UrkI2WlPhXjzyOion+h4zPO/TJpQDL4aTFRhit2cTAkp5IUQWGLanSjvl+n8jIK0JwGs4pgDBIuzCtHNTnO/eA7Tto2zJqlfGOTQ9AtC79EdUNNm7Rp+JpcxACA2ukMxHlCE8Fib/Jc/JmEf3C6Wbfh3NbRO53xqgdgHhB+laEYWaad+FIlKutjit4vLQ+3Rjqu6g1twL+03aeVi6SKZaZ5IOrXOpd2WCBO7NRqKqZ41JcP3INxVJqWSnS06t1vSKJd3IwbwyFRx+eG+hCZ5DSdEQBa+zHFBNLuf9aeO9roeTaWzyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9q+DrR+3tz9zgEaVwsWbCeO4lhTel+H5iR8hPx3BNBI=;
 b=F6Wd7oeYrCqy7A2iDV+X0IgO2XNLmqVHe5+D5ZV+dEPrwSRAPeE9cLmXJ/yY0Q0oIevxpkKShb0rC0H50vZYIZgLDH5OYS5SXm7rrRjk1aUnBYO3ZM32MXbRibWc6lnmo7IZpGKUpk20a9wlfQLEa6xr4ur2fz3uEVzQr+xDcUepcZ4Kd7J6IeLKeYS2oz/xCFPgM9GbcJZ23riasfot8Crxl6WHsguI+L2AnYckZxei7+k4nCcNkvGGczT29UJUR+1u34fs3KHCSGCY1BV4dox1nrhm+8VaMcTECuswZ+jFxd3olC4PN2hk0obzG6coRsRGQwetIYMyZp+RMsnGDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB9540.namprd11.prod.outlook.com (2603:10b6:408:378::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 11:42:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:42:22 +0000
Message-ID: <91f1919c-c265-478e-a711-8c5c42ea73a8@intel.com>
Date: Tue, 31 Mar 2026 17:12:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/19] drm/i915/dp: Add a helper to decide if AS SDP can
 be used
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-9-ankit.k.nautiyal@intel.com>
 <acq_Nix_LJQYmQHq@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acq_Nix_LJQYmQHq@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0106.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB9540:EE_
X-MS-Office365-Filtering-Correlation-Id: 2df570f0-b0b5-494b-ab83-08de8f1a9252
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: VxMR6NMxNjb1LcJ9KEWLWvZWV/IfH+S+WONXY4DON9vzkOZ/sfrVb1tCyWOR6FbuXykL0FxgkjDPNwvigQj/Xg0p4TpGB4OVPZnQYDWGRTw92MiT9uCerfR6BhgVtl6CcdG37ek0+571hQ3Gy4by0tn//hz/hqLHRI0FHfTxSwdQU7SyNoPOhDvI+cXI8IfVcg6N/PwLaP1doECzv1evhmkWsTs5pSWA+R4ySdVY+Phuj3zDjgclrdezLIvxn7yvFFTj6kfMd1sYa+vDLp0OQWsTomVbQAAfeRCG0WRCm/98E4mIQB3/TZGU44piLsVQEQkWPbbKWriztieCbZy+99/FZHUFzKbxkAUjjs6CQTw9LhxPNxN8QHu+P9n9c6Pq4xlqOB2zOj0oPoRcdf482qU/Ykw4QxOBUG0zthfKXuFYkXNv5sV7uSOajiMchw2zgvJWGu603q1ZGXYlq7nLxb2lCl8vtLs2h780HmtrkMIs8jEhXhLSu5jbSFDUHXbkg/5BeuaNeQZrLSnVqcXy07RK4oOIoxVqGhkJ97+TTQB6fxosOf1Yrngm2W35KDyjaQ9yTP9h2vD1gOkAl/uQjnwm+fFmBacGG1zaayviFOvVNzBsWthQY0Km3awipj4wZHqvDdIVM4CpACX3UJWPey9u8EpKjc6Ly4IxfSnpdTn89W0/YHAfLQQwbONYQtKbuquy2+zZnYJVnvFquW7Imao/TVfaGPA8teYk/J7Q168=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmdpM3Z0NFBVd3ZBZHViSEp0ZHhHckpFMzBQMjBZK3hyQWxtbkZxdUo0TnBB?=
 =?utf-8?B?cTVQaGNJdFFrMFVxbzBMU3NrR0VBSVdVYkJsTERNSXdGRWpjb2xXMFh4TWk5?=
 =?utf-8?B?bDFmVGNTODJZOXhCS3YrTFFZcVEwNjVTcWt0TEd0Z0MrdVNTY0tqb1Yrem9J?=
 =?utf-8?B?cWx3UXc0cGxQVmlTNStRbnkwQW1TSmFVMHMyMGxVRXpwc3pKUjdXSUl0azdh?=
 =?utf-8?B?aTZjMTdYK3ZNbHZDWGw5MEZnQ0xSbk0xcWVrbHFMQWhGcE9yTnZla1l0RlI0?=
 =?utf-8?B?U3U2MkNmaWN1bDl0RFZHUHdjaFhFZXBWSmNFVUpUS0lyT29NY3ZDWUZUT1BE?=
 =?utf-8?B?Ulo4M3V6d0tDOFNGODlOc0xrUlE3a1JlK1hORTVrelV4d3FIbGNIU0lBS1Ft?=
 =?utf-8?B?SVZUcmtuVW5VWC9sa2d3U1pkd3ZBZyt0NkQ0djhUY0RQRGFPOStYT2pYNW8v?=
 =?utf-8?B?UjBodG9DdjRQbklVNGxLWkltUmpOY2RmMjBzSWlpT3Q0QVo1YS83ZmlxR3B3?=
 =?utf-8?B?Mk5jU2FmNzJodFhjOC8raWd2U0dRWnoySjlhMmdINDlEYWcxVHBRTUJxQm5q?=
 =?utf-8?B?NlVwNld2a3E2K1JwOVAxMS9teHMxZURBcWdIVDJ3azJoRG1Wdmp6cmc0eGlB?=
 =?utf-8?B?SkRuKzlaRTdtL2p2UC95UW9LY0RzRW1hVnc5RGl6RFlCUG5PdjQ4MTFkSjNk?=
 =?utf-8?B?S0tyY3NWc3FoRkgyL2hLK1A2eEVyK3NSd2tLVmhQbzdkdlJQOU5vcmdYbjNh?=
 =?utf-8?B?cHY5RUhvdWEyay95bjhCbHBvdllEb2QrOTFuVTYyQ251cmdvK3UyaXpNeFU4?=
 =?utf-8?B?dTBBRTZvUEJ2Nmw4ODBlQzVzK21TQWhQV2ZLRWNINnpBTlNwR1N2c1h0L3ZR?=
 =?utf-8?B?dy8vcUNuWVVLS2sxK29tWUdsTHVHTTR6Q0VhZURLOU5HQVFUVFJuenpSODNs?=
 =?utf-8?B?OUxZY2hKZC9ONHM4SDZQS29VdkNMd0toNmxqUG9oS2hVMXAzWXdLT0cyWHJL?=
 =?utf-8?B?Vk14L29OZHhodFc1ZnFadm04eHNUUmdhUHdDOFBZM1FpVzl2WHBFOVF0eHNt?=
 =?utf-8?B?YUpBdFBMU2I0ZXIreXJOa3RlVUJHSWxGNk5XQzViczdld2Q2dndLOG40b09U?=
 =?utf-8?B?ak9SSW9yalZLV3RSVnZTRE5aYmYvMVN6eVJJTFUvTkJ1QkdTblZrVHFXam5V?=
 =?utf-8?B?MGQ2QjBxa0JPZCtxQWM3dVZiU1lYWEt4YlNzRGNoV2dvYlpHSGdDVGd0WjZn?=
 =?utf-8?B?TS8vbU1TUGpTRzF3Q2djUGNkb1FObGllY2tHMEJNTk9iU1dxeCt0ZUZ3N2xv?=
 =?utf-8?B?dnVVSmRSdHNxc0VyOEI3L2FocVM5dHdXUzY3ekluRGhEZmIrSzdZWmRQZWxj?=
 =?utf-8?B?OUp4UWg2SDYrOWJzYXlWQ21rK01DSllrNEVINDZ5Y3Q4WkZ2ZnEvc2RpeEVh?=
 =?utf-8?B?cmlDOCtRWVlvZkdVVE50N3ppS0tDbm4xVlhxNUtvUTlzNlhzN2Q1NVFxY2kw?=
 =?utf-8?B?WUc0QVRhUWZMajQ1TkZyNTlBekI2WGNWSFpPQ0JRL0pMaUh3UjlmVVU0cWNz?=
 =?utf-8?B?WXcvdUVzc2JYeXgrWUNuQWVjSlRIKzhaMnQ5ZkJGWnJzaUdFNlMrWWxsR1E1?=
 =?utf-8?B?QWpmMlBIQmpNc2FLV2RkeEtuZHZwSmJDeUR2QkhKZlBEM2QxcnBESlZDYVlN?=
 =?utf-8?B?N3h4TUZORXhsaEg0WHptanAzQ0lHYUdpZFZiNkh4L0hrSDgrSmd3U0xpZWdm?=
 =?utf-8?B?dEJBcUFLUjQvL2VNZlhFaG01L0VzamJhQkZ6Tk9WdGNCNFdXZjltM2dpalAy?=
 =?utf-8?B?RlRFWG13SjFhWWQ4U2w1N3dyS0czb1IwS09uL3h4U3cvZlNReTdFcXNvelZm?=
 =?utf-8?B?ZWttampYUlNTZVpMSHRJdHAwYzd6MmxHN2hSaGJzOHBXYlJlMEhNRTM5a0Fo?=
 =?utf-8?B?bm5UOGhvbUNDZ2Y0RWUvMnRrSjZXMlp0akgvZU5BcVF1K3VRbm9kamhERFRO?=
 =?utf-8?B?RlRZaWJuZzI2eEEyaU1TY0VTNm9xV1h0NExWQ1pmMEU0cUg2V1I5OThuN2p4?=
 =?utf-8?B?NklSSFpMdWtPNFN6MHBPWllKcDJyamw3WGxsYk1nWk5lU3RqMnBJbytOWkty?=
 =?utf-8?B?clF6MFBtd2xXbkoxZU9jME01anprLzVWYW5ySDEyaFZ6VHVxcWxKRElUTjY4?=
 =?utf-8?B?UTZRTHdKam1jM0Q4YVVNTHhnRW8vVnVlK3ZmTkRER1dUUVJKZi9SODVsVEJ6?=
 =?utf-8?B?RjNya1l4MVpZSEdNcUsxRktnRkx1WlRiOUtmdkNWbG84TWxxeWR2NnpDY3ZD?=
 =?utf-8?B?UlppUzVrQWZjeUNEZ1k4UXlaWHVrWGFsM2ExUG90NUswc0ZmSmlyNE56elV5?=
 =?utf-8?Q?xxB/roi5NpC6ZeNY=3D?=
X-Exchange-RoutingPolicyChecked: Bi6LOLGfD/S1UUZoJarBlVhyj6TyPcQXvPnY4wvwq5XOeLbOx31BRlihwog2ggWtCW8gimVp6go+0nsetioT5SqJ5LoOk3TEKuRnwg0yctIX2pJ5xXVhBJRyB8R8YJjULvJIdDNr5tI2hrMnoc8YVQHYdy1589Ie2KJbozmapt9xo5SdaeANXZGHrSSO4eeEUOOF7ojHnbIN6P3POh2RUaS347pqE+l4jOySp9LYXfQ28w8sDi5xy/3h4UarP4p/M8YkosFqoZJCVqjacDODJsyoTPzbjvYFWRd3/M1WGYdpN8PhU6pJTLJI26JN+1C6DWEduILh15rN/I13fljU9A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2df570f0-b0b5-494b-ab83-08de8f1a9252
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:42:22.3180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Pip3h3KqezYEW2H8cF5QwY67tT7sXWdpMVs7LmyEffbTrFFrNCSuLNFi1w7QYSwvmDc0qeDOaEeLIk192syWJjMzmk2ArbMoSOeSMKoah0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB9540
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3E758368F6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/30/2026 11:51 PM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:45AM +0530, Ankit Nautiyal wrote:
>> Add a helper that determines whether AS SDP can be used for the
>> current DP configuration. For now this is true only when the sink
>> supports AS SDP and VRR is enabled, but more conditions may be added
>> later.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 499850c2abcf..7ca3f9d583db 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3124,6 +3124,15 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
>>   	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
>>   }
>>   
>> +static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
>> +				    struct intel_crtc_state *crtc_state)
>> +{
>> +	if (!intel_dp->as_sdp_supported)
>> +		return false;
>> +
> Could have a FIXME here about fastset being borked with this. Didn't
> read far enough in the series yet to see if you did anything about that.

Hmm... let me check if I understand your concern correctly.

When VRR state changes through the fastset path, 
intel_dp_as_sdp_compute_config_late() will compute different AS SDP fields.

We do write the new values to the SDP DIP registers during update_pipe, 
but since AS SDP comparison is skipped during fastset,

we have no way to verify through state readback that the hardware 
actually latched the new values correctly.

Is that what you had in mind?

I'll add a FIXME about this.

Thanks,

Ankit


>
> Either way
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>> +	return crtc_state->vrr.enable;
>> +}
>> +
>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   				    struct intel_crtc_state *crtc_state)
>>   {
>> @@ -3131,7 +3140,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   	const struct drm_display_mode *adjusted_mode =
>>   		&crtc_state->hw.adjusted_mode;
>>   
>> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>> +	if (!intel_dp_can_use_as_sdp(intel_dp, crtc_state))
>>   		return;
>>   
>>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>> -- 
>> 2.45.2
