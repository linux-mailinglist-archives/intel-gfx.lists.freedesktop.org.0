Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACN+LFGB72nmBwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 17:31:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B86F475379
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 17:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44EE410E7C1;
	Mon, 27 Apr 2026 15:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ROfhvBl8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBCC10E7C1;
 Mon, 27 Apr 2026 15:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777303887; x=1808839887;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0x+y3eWhfFkom/SOTdkclkyjbsPaqJUa3V3Lfa16MMc=;
 b=ROfhvBl8g0R8YAwY4MRjEuHf+KvIf7m9ex6tDy/NXUzps9B10zqk2MV7
 vEJufiajMlqx9XgSyEXhJcj9y04oCJcnc6LXXzaNwb7FddybvVV+AVhp1
 tNgIoLrqnprEhI1yvNjXzTQSzKL2xhDYExvBZ2DBM8jn1XuGWWguo6S+K
 SEbXXR/R1/Th+p1nLXcMZ58kDDGYLCaGueLShcblWQ0jzwpu517G2DKT/
 MRIZhJUCPxsy+3hmfGSVO4Tyd5t1C9fdsdggtDYC1DgWejtz0jM5nfhyB
 eKfccZ5ozLGeeJuixChIuUzhK6yoCAD83ews4R20uD4uiQEEiOq5fVCPS Q==;
X-CSE-ConnectionGUID: D+DNXEyeRxSV2J9RvWvf1w==
X-CSE-MsgGUID: R9gd3aW6R8+J6UYne+rGdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78086581"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="78086581"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 08:31:26 -0700
X-CSE-ConnectionGUID: 8QuFIf7PRoyBOYaT2fVQgA==
X-CSE-MsgGUID: o3ZqtC8xSDC2M6Siw7rQ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="238657696"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 08:31:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 08:31:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 08:31:25 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 08:31:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bi/rJpuhBjztTDx557cEUauXEu2pXIKkhUaHDBuGFqaDejR3K06qKH/jmy3G7pfTajnJyHyZ3x+ElyGAvWvLXm5PVqI/oDeQ65LVN+qcAwcfP5gAGPf0FHy+rcsuDi2L3fabrwRMA/U4wjgkPfK652FMQg6yJFgERCDdC+ONHIojCdADxR6u5biO8xUvu51RoRM8o5QwWkwNvz77pSv48sGqQpS/vVfZKNAsDqbl2xvc52C+Bf9UO8Ir5scvEWvvRA2qAH00lvou/PAsqA8p5AsmBg3Kiw42qz45OaKU9vdE80Cqg+TmXfJkFOwkEAq8Srv8C3mq1fnV4BD7JzWdLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uxe2I9bWJ13bLRwUDsXaDpveUFsnpGGKFftUHsQByHk=;
 b=ZlK5WslVHXMSvkeGj1YR9UYXmiJx9ASQfSLzrfYeI72SanRioOzWPR/sA9VnlGrV8tSFcGRVHTjLDSsSMtlgLXiQc9SyXEqawbhHQ3pNjjEUhyWGVmZcbXDXvaYHcnXlEd3+C/Bvt6SpqrW/Ktdnl0+Fm5m3aSFa9MMeAMejythifWcTinCz+YPoZo93A+4w/yqPigOZWeazeNSUkw6wbSnh/WRZFfxgtCVvWv+IU+T0sZCpqbhCQ/x28Aqx/9eCyrf8KhlaUOkmgnR6y8zLKApmvnuLTMrmkIRzjLt8O3qR3OvsZYiJBKUNYp0O+PvlYJmjoqgZclFvE2SXFjnz8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by BL3PR11MB6481.namprd11.prod.outlook.com (2603:10b6:208:3bc::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Mon, 27 Apr
 2026 15:31:20 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::b706:268e:9753:cdfd]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::b706:268e:9753:cdfd%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 15:31:20 +0000
Message-ID: <ae4ad484-22dc-468c-8755-1dec358b6135@intel.com>
Date: Mon, 27 Apr 2026 21:01:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
From: "Sharma, Swati2" <swati2.sharma@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Nemesa Garg <nemesa.garg@intel.com>, <ankit.k.nautiyal@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com> <acu_T8mBOpfZIJN2@intel.com>
 <3af4af49-5575-4109-8a5a-58c8de5e2c99@intel.com>
Content-Language: en-US
In-Reply-To: <3af4af49-5575-4109-8a5a-58c8de5e2c99@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0115.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::15) To PH0PR11MB5880.namprd11.prod.outlook.com
 (2603:10b6:510:143::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5880:EE_|BL3PR11MB6481:EE_
X-MS-Office365-Filtering-Correlation-Id: dc0c76ce-e9d4-4708-0bae-08dea4720803
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18096099003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: lSb0nbVZMz2PzjAGrz7U0hHX5+BQEKwvqpu44LpwnEGSZVFbM6vQvhE/kprgB6250bPcSsNHMDqCcU+PAb/43LPdRR2N5raauHNGi+y+QcNxId6NTzMIU5Q9UOkSbYElh7DwZjwDuwL2k70DhW03dZReGFxqTKnuLDhJmjGzr4AH2PzQji2TQ1BJcy7nUX3sKFXgutCNLm1W7FGVyV78PGQ98c/pVTBcYcKZ6UcIwF9poDWMy5ktZT/CTad2JJ30PWKH4+mt6quZCYZ2kXO12Yn6aul3M1+B/dfxWO2YyfRjbH5c/Cu8tUFZLIKGTLgyR+W6YBXMcxu5tWxp+LlhNaozOFWqU6oxh7WRUYcR/qfQZsPl3juIsy8uLAyGF3/ccqlD6hPM7Y+jDArns+wqj4OuxyXTzv8V/e0l+7YVVeVVD+xLXFxak5g3aG6YqhCz3icbPDRrwRsPKp5vTB/GS29aFnNf81zHHxlqLLOxWlBfWzClzE+xVn/xJ5rsjb0fvg3MtU4Ju+Rpm5ta5R1tN0bxTADGpiQtQBzGni9AgNRXmVGSmjeFkmGkIE2RW/W+cWfbnY1n8zeSbmPC5du1Qk1/ZvEpjTFcojqBknC2KRr8o3tBXYnLfQNFBoe9W4y+CECPS2RCrCbLB7JFOdVF0YcKWFl+2WAK+5zedBmMigHfdiNjkdplScJ4+CXoQTs2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18096099003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3VyeUM2RjQ3UVMrc3hYQWtiUVczRnpBRmNtaXFVL3BZOUpORzJMYWc5aUoy?=
 =?utf-8?B?alNCTWpLN2JPazFTTm5TbjZDN0JsSWozSnJRVXBNNGU5Q1NoT3g2bTN0WXln?=
 =?utf-8?B?cGVkUXRXWEFmMFlHZWRUOHRTWlJObG0xdEhiYVpWTGRhL1ZvdVlNNXg5SC9j?=
 =?utf-8?B?ZTdIOEFETUlMZ0c0RWo4VWtkWXBBK25jYWdPbGZmTlVrQ1FrYk9iUUVHT2xX?=
 =?utf-8?B?Q1JLdWIrc3lCNFhpVngzem9xNEppTHF4MGpGNWxLaFpOVTR2NUFQYmhIdkRy?=
 =?utf-8?B?UTB4ZE9KeDdPeUxGZVJ5ZGNGams2dEJ5OWYyVXFDbm8zb0ZNQlJKS2ZvaEpk?=
 =?utf-8?B?YU5MbVhvVlBaektrVWtkaHI5VDZqUmZzVHBiL3ROWGlNZk9wNm5GM2dnOTdw?=
 =?utf-8?B?SEs3dGl3bE4wWWE5b2tpSDdMZDJ4b1BZYmY1enpZUFNXaXhIL1lyNk5JQmIw?=
 =?utf-8?B?ckswTXFOYm8vZUR3clYySEVrenpuRkppaU84eDc4aE5NV1RJSytOQkxJcFhx?=
 =?utf-8?B?dmJYNG03aVZac05tVThkcGh6ZnFzY1NiaU1JZHFxYUlwaG9MN09uRlBaTll3?=
 =?utf-8?B?N1NLVVdac3VXa2M2UHAxc29rQkVxTnJlNXpHMURjY3ZJek9nR1RUdlJXUGFD?=
 =?utf-8?B?WHJzSkFEelJ5a1YxVCttWVhYcTNKYnRtUXhBQUNGWUg1amozMFN4NGcxV3lD?=
 =?utf-8?B?RHh4d1ZIbW40bk5SdkhQbEY3MDlPMkw4Rk1Wd2N3ZWsrVUtWSngwcW0raDJU?=
 =?utf-8?B?eVQ2ZmZLdFZZRW81S05rTnI5a09EaDNhVVZpS1ZvMlQ5QS9vWE5VWU1Uemgz?=
 =?utf-8?B?d24yc2pYZjhSY3BwZCtkczRnR2V3aWxKVjFiN2dDTys4dUVvZVZiMzlzV0RR?=
 =?utf-8?B?b0RTM0ZqcGQwZ1EyTmQ3KzY2QnNqYW1CNjI5Slo4NXA5OUlCVTk2Tm9lanFI?=
 =?utf-8?B?TEY4MzQzM3htK2d6bFlvSUIwcGtadTBlblJ2TkxhNVN6MERYenc0ZVN3TmlE?=
 =?utf-8?B?Z005NTVjdkJYT2sxKzhkM3RBTjhxaUk5emx3eGdhUkV2SkswTWIwUmhYY1Vr?=
 =?utf-8?B?NnRjLzE0RmJXUlRSVTVKREN1ZktudGFpV1laOFo5RUtURTllYmkxNE1KZnRr?=
 =?utf-8?B?aXNMZGROdDZRQTJNUmhnYjFlQk02Z0RrbFh2WXR6Rld6aStwcXdtejVMaHda?=
 =?utf-8?B?M3doWVo1U2RuTWtCWjdscTFuMm5peDNxTUM5Sk5WQi9wYzhWN0RNVWM2czla?=
 =?utf-8?B?WnN1T2RFVXZ2WGFzN2RRNmZXTW13Z0lFMVIrSHQ5R3lENzNtakM3ZWNIMVFv?=
 =?utf-8?B?OXhUT3FxRUNUa0RmdldNRmpKS2x0cTY5cEI3bDhsVElHSG9wM2pqMzdTVFVi?=
 =?utf-8?B?TG9nVVMrY2p1YkpWSE1scEJ3T0lCS3JCUTlUYjFZVFV1UFZoUmhXRDhobXdq?=
 =?utf-8?B?SzJTNUdPU1R2YmJGVW9YK2N4WjZONFFwZTkvdjVlOU4vRU1mazd4c05NYjdz?=
 =?utf-8?B?VXovaU56R01DbWhpTjBKaFFYUGx4bEFYNkdJck9vWm9ONnlScXM5bGo4T3BS?=
 =?utf-8?B?WmtLVXN5dkNhZXNrVTVRVXlMazBXRjlZNE5tL21sRzdCWWkzV0d4V3k4dzVq?=
 =?utf-8?B?Tk1rSUZlNTJLOEd3dkJCTkZ3OUtRYkNsS0NUWjVFaitLMjkvY2FSRk5lZ3My?=
 =?utf-8?B?dy93UDNiT0FXRlgyclNEL1BQbm5XWkRHRGxLaHYvb3JZWWRhQ1JvNnlTcDR5?=
 =?utf-8?B?VVlKSkRDQWRTK3FVYnhjbVhHb1pyK1RzakU0TEZLSHZMQnQvUHRHU0hxRzhL?=
 =?utf-8?B?T2plcFU3RDhZZmZWVkIzaUc3Qy9nc3A0VmFHWUxLMHVVZ1RsY1psWHhQMEVm?=
 =?utf-8?B?OVNVNDZzcjM1UjJHcFVsS3ozUmQvT3g2T1Y4eDlyQzF1aENId3o2cWQ0OHFm?=
 =?utf-8?B?dm1QMlJkbEo2MWlOZmllT1pUSW9IbGR2elk4VzYwaFZoSzdneGRPUFEzcnJI?=
 =?utf-8?B?aUJkMW5meTY2dkZEMWJNSm9WVzgzN2JnSDI5OEZFbXVGaDBQZFphZ0lORy82?=
 =?utf-8?B?MTd3b2RmdEFzNGxyZ0dvNGxvTjUrQ3N1SU0zU2NsQkp6bXQ1bzZKUGhQSWxh?=
 =?utf-8?B?cHRyZVZXbnI0aVVUSHAvVW5Ya09BQmdUdXpRTnhPd1JwQmNxYXZlMDVMK0xa?=
 =?utf-8?B?TE1EL1c2VkNESkpidHpnUU1uNG5ldnVyb09YOWRHTlZWaDlkeXFZTTZOQzRL?=
 =?utf-8?B?RWEvWUVRUXhoaW81TkFRYnlwNjNFdUZqdDhxQWg0SC9iV1lRY0dJbWdYczZh?=
 =?utf-8?B?dkJJMGJuYnp0NVB0Y0puREQrUHNDdStqUHVqTlRjaWJWaFNQWEdhMmVvOFBL?=
 =?utf-8?Q?lJt86NfrTzaMV96k=3D?=
X-Exchange-RoutingPolicyChecked: LPxAknd2eiimHOTTuUnkNKFj20P3vSwRPWot/kmAIqY8JDeFMIlCb9O3OuPS96r4ZDfVBovNldRJ3ht1g9YM7wG8YpTup2EWzfz4lLDJnUGs3h9Tto1kvNS/yT5VzP/XNlljshGaJiQDz33+72yF6+SzaJJIvoNnacj2ypO8qRlIElLoyb5qEvuxzC8wbS4uZKlCOeHYPLsuSazHk8K5H2URX84d4YiWIIsUiNK3XuwqMEU7jcm7dCv3dMtT0if5wMiSjaNp2HoLOWUrEyjScd9MosJFGPf+qJ+4ybKIsuLZtA7tNFOCSjV15TBjQatIssENgAgRSH8M4S3Z/wJvVg==
X-MS-Exchange-CrossTenant-Network-Message-Id: dc0c76ce-e9d4-4708-0bae-08dea4720803
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 15:31:20.2835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: voiY49s1IY8Z6KK6mPe8VyhX2SFGShu59bzG3G2iTtje4ywCh6XjPc/JDBMMogeT5kNMfib3zslcHzqBdoRtUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6481
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
X-Rspamd-Queue-Id: 1B86F475379
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,01.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati2.sharma@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

Hi Ville


On 01-04-2026 11:32 am, Sharma, Swati2 wrote:
> Hi Ville,
>
> On 31-03-2026 06:04 pm, Ville Syrjälä wrote:
>> On Tue, Mar 31, 2026 at 05:10:42PM +0530, Sharma, Swati2 wrote:
>>> Hi Ville,
>>>
>>> On 27-03-2026 04:01 am, Ville Syrjala wrote:
>>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>
>>>> The sharpness filter isn't anything special. It's just another
>>>> mode of the pipe scaler, so treat is as such.
>>>>
>>>> This gets rid of tons of special casing all over the place,
>>>> and will allow me to finally land the pending pipe prefill
>>>> series: https://patchwork.freedesktop.org/series/156137/
>>>>
>>>> Note that this will fail some kms_sharpness_filter tests,
>>>> because those tests are basically incorrect. But I couldn't
>>>> decide yet how much of that entire test should be nuked. It
>>>> seems to be doing a *lot* of things, most of which have
>>>> nothing to do with the sharpness filter...
>>> With your series I could see only 1 negative test failing -
>>> invalid-filter-with-scaling-mode-center
>>>
>>> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-163952v1/shards-all.html?testfilter=sharpness 
>>>
>>>
>>> Is it sharpness and scaling-mode-center can work together? Since
>>> scaler-mode-center doesn't require
>>>
>>> scaler.
>>>
>>> You rightly said, all tests are not related to sharpness but covering
>>> valid scenarios for scaler + sharpness.
>>>
>>> Apart from invalid-filter-with-scaling-mode-center, which other 
>>> tests do
>>> you think are incorrect? We tried covering all valid scenarios as 
>>> per HAS.
>> I would probably nuke all these:
>>
>> Nothing to do with the sharpness filter since
>> it's on the pipe scaler, not plane scaler:
>> - filter-modifiers
>> - filter-rotations
>> - filter-formats
> Ack.
IGT patch floated https://patchwork.freedesktop.org/series/165542/

to remove above tests .

Can you please elaborate about sharpness filter vs. scaling filter test 
to be added?

Is it like applying
DRM_SCALING_FILTER_DEFAULT
DRM_SCALING_FILTER_NEAREST_NEIGHBOR
And SHARPNESS_FILTER
and doing some comparison?

>>
>> Doesn't seem to test anything at all:
>> - filter-tap
>
> Intention of this test is to validate different taps. As per spec,
>
> different TAPS will be selected based on different resolution selected.
>
>
> TAP 3: mode->hdisplay <= 1920 && mode->vdisplay <= 1080
> TAP 5: (mode->hdisplay > 1920 && mode->hdisplay < 3840) && 
> (mode->vdisplay > 1080 && mode->vdisplay < 2160)
> TAP 7: mode->hdisplay >= 3840 && mode->vdisplay >= 2160
>
>>
>> Maybe a decent idea, but really wasteful to have these kinds
>> of things for every little feature, as opposed to just
>> some generic "did we restore everything after dpms/suspend
>> correctly" test:
>> - filter-suspend
>> - filter-dpms
>
> True, but we did caught an issue during local testing with this test 
> where we were not able
>
> to retain sharpness after S/R.
>
>>
>> And I guess we're missing a test for sharpness filter vs.
>> scaling filter.
> Can you please little bit elaborate more?
>>
>> And the CRC stuff is really limited, so we have no idea if
>> the thing even works from these tests. But I guess we don't
>> really know the secret sauce algorithm, so generating a
>> reference image is hard :/
>
> Yes, right. For this we created chamelium specific test
>
> tests/chamelium/kms_chamelium_sharpness_filter.c
>
> where we are comparing frame dumps with and w/o sharpness enabled
>
> and you can clearly see difference when sharpness is applied. Though 
> we can't check
>
> degree of sharpness but can check if there was some change wrt reference.
>
> Test summary:
>
>     This test validates the content adaptive sharpness filter 
> functionality
>     by toggling the sharpness property on the CRTC and capturing frames
>     using Chamelium. It ensures that the filter visually alters the 
> output as
>     expected.
>
>         step 1. Display a test image with no sharpness filter.
>         step 2. Capture output (Frame 0).
>         step 3. Enable sharpness filter at mid strength.
>         step 4. Capture output (Frame 1).
>         step 5. Disable the filter again.
>         step 6. Capture output (Frame 2).
>         step 7. Re-enable filter with same strength.
>         step 8. Capture output (Frame 3).
>         step 9. Compare frame pairs:
>                     - Frame 0 vs Frame 1 → should differ
>                     - Frame 1 vs Frame 2 → should differ
>                     - Frame 0 vs Frame 2 → should match
>                     - Frame 1 vs Frame 3 → should match
>
>> If/when we get writeback we should be able vary the sharpness
>> strength and do a diff on the resulting images, and based on
>> that confirm that it actually did something that looks
>> reasonable.
>
> Sure, we do have plans to verify sharpness and colorops once WB is 
> enabled.
>
> So, for time being we are relying on chamelium with frame dumps.
>
>>
>>>> Cc: Nemesa Garg <nemesa.garg@intel.com>
>>>>
>>>> Ville Syrjälä (9):
>>>>     drm/i915/casf: s/casf_enable/enable/
>>>>     drm/i915/casf: Make a proper hw state copy of the 
>>>> sharpness_strength
>>>>     drm/i915/casf: Move the casf state to better place
>>>>     drm/i915/casf: Extract scaler_has_casf()
>>>>     drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
>>>>     drm/i915/casf: Constify crtc_state
>>>>     drn/i915/casf: Remove redundant argument from
>>>>       intel_casf_filter_lut_load()
>>>>     drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on
>>>>       (e)DP/HDMI
>>>>     drm/i915/casf: Integrate the sharpness filter properly into the 
>>>> scaler
>>>>       code
>>>>
>>>>    drivers/gpu/drm/i915/display/intel_casf.c     | 102 
>>>> +++++-----------
>>>>    drivers/gpu/drm/i915/display/intel_casf.h     |   6 +-
>>>>    .../drm/i915/display/intel_crtc_state_dump.c  |  11 +-
>>>>    drivers/gpu/drm/i915/display/intel_display.c  |  46 ++------
>>>>    .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>>>>    .../drm/i915/display/intel_display_types.h    |   5 +-
>>>>    drivers/gpu/drm/i915/display/intel_dp.c       |   9 +-
>>>>    drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
>>>>    .../drm/i915/display/intel_modeset_setup.c    |   1 +
>>>>    drivers/gpu/drm/i915/display/intel_pfit.c     |  13 ++-
>>>>    drivers/gpu/drm/i915/display/skl_scaler.c     | 110 
>>>> +++++++-----------
>>>>    drivers/gpu/drm/i915/display/skl_scaler.h     |   2 -
>>>>    12 files changed, 112 insertions(+), 206 deletions(-)
>>>>
