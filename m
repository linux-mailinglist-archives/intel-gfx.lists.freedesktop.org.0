Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id A1eCE2Jm8GkITAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:48:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B8E47F39D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE4A10EA51;
	Tue, 28 Apr 2026 07:48:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELFoyCx7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C991110EA4F;
 Tue, 28 Apr 2026 07:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362526; x=1808898526;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WaTro8MCrLQWnK3LGukfu8NSVP3mS0h/I3qXX0Ca1ts=;
 b=ELFoyCx7AwHYJbdEjm/r/02cvgySC3L7ay6N8dGpRpld6OIGzC2me6tW
 a+1LxTw/4XX/GTX9OtQHbZHHd/Fm36QgRKZy5Lmys3pb4gVm1tEuDxYs2
 VLt9+QgKvSVkP//v8ML57IlTeNlr94eBmx1WuFnvWiNQJVOZjZufBil8a
 gUKtgylKTHhnWzn2lovPpoaHZU14XJhLqNAObexJlB5Zy6+URocpzaYEN
 wsosymS1y/qnIgKtXdK3R7Kje812DunS9HwTrYogXb3BYJjtp5loSxirx
 rjaucK7WmjI/1WolLc9uXr4SaIjVqWo6VZ4/xBPKryLQVgj0N+WkyHvJL w==;
X-CSE-ConnectionGUID: dmchdko4Qv6n/RoUo7mdug==
X-CSE-MsgGUID: memPc6wrTUmR8e9tAAEBFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78284314"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78284314"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:48:46 -0700
X-CSE-ConnectionGUID: UnzzVTkUQrOuXtnfS3GZYg==
X-CSE-MsgGUID: jkBpqWToTJapVuelCTygHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="229525535"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:48:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:48:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 00:48:44 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.52) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:48:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WwZsgdF1rBXq7V45brx3ltlN7QeqDutOI11a2/AeoMfFi9lXqQ98S9HOivlYVSWq4Qy8vxQtVHuqwOcbHwPhHGP2mxfaXpetpZ5mdPcg6wJXa0/HFAomjFeFF1qKPyVy73M6gZmImePYp9OxHF+ZJmeb41TToGYsUp4h2yJ+Bb4Z2aRCIpOxvxBiS9R29xzJZx3JMqQu/bYpmMYKIyi3TH6ZQub2USrJC5Y8vG1zcj1EAwzZNRAZ9on3SF0b9zO6Gr7XH4oTWQ/SkSjSpQ9kWGQL/iu2Bq9PCwvQgOIfqKOCz+Cy6qJQkRv1M4OszeA6nUBUUtF1Q3b3WeozLBHm9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+kqZe95H8HTHMyu+R+UeQFQemqTaM/98XbvllnlMSg=;
 b=FIFte92Z15+HaVuoiv/NKLpdXo5utLQR+5FeEJZleMyAJRq1P+jih3NAYDEk5Bz53vLDEbPLuaBZvS2XhooUrK1bAbzqayCRar/C9GQw7t37gsuC88ISICO7ubi3PMU4RnHDn+WSJME/2vA1hDiVIabsTPg2NL7py9/7/QQzv/CDE9+eakceg7gTMbtljx/hw6/OEK6AXAP/IjwXAJfJsZQMEX4o3rthQT5Or2nXgrwBWujksZ0C0lpnBBj6cjCjiiK9BvB0qzkKR/vCsVQW7t9pzzVHFthowI+HbyKoy2lxz8KvYIgju/ZNFRalgozcg1NrPCC0rc3sERRytf1hOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 07:48:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 07:48:36 +0000
Message-ID: <4b0fbf94-dccf-4403-9105-5c4ed4aea29e@intel.com>
Date: Tue, 28 Apr 2026 13:18:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 5/7] drm/dp: Store coasting vtotal in struct
 drm_dp_as_sdp
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
References: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
 <20260424093424.3060805-6-ankit.k.nautiyal@intel.com>
 <ae9Zzw8dEms2NODz@intel.com>
 <7fea9950f85c0316c6d784048fd6c461a6ba4432@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <7fea9950f85c0316c6d784048fd6c461a6ba4432@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0207.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4618:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fdbdbca-b31b-4f43-a4b4-08dea4fa8d9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: rlm2kd8tKSCzrVp/WumdP4kOh3DcHNH44KteRV5zqv9/F0VlW3eBdByl2GkL2shaysKFiXTIfKbWkamBHau4kbqW7N9+B5JJW6Y8hR/jAkxUOmpSKttHWus0LxY7HI59uK6bzazzKbwclh0lbOpUuDSSMJAPnNXhgW3bfX+IihRBme0tKSGI33Bsb3OPIXPeBiv4q2roqAzUJPOc/0EZMFVO+R2qiCUmAoPKicZmsIcBuR9ansPJjHUfoG3UqsZym+tByWwxxcwLxi0/x6NHgKADGdbL+ZLKjs0i6SVYOxzJ1JNF1rconELG2S9ivlx/MIbwrxgOvNYIgpcKv33W7IbfQlRsBPkLSWDZ4oTwq3zSkaoTOMcZiytwLvICA5+TLE047Ms1tAO05rC32QUlpbLLZ/6vq7Z6Ylm4rnGi5LxtZNgiRHZBUNJHtbQUnfrWpEH65xj7f0HR1nWEx7YYGVngFOQs9OkYvpPzfinlSt67sVcnnxAVQjemtnAEgjfc6SHZ4U4ued4nXqqFXNYK6QcPMfAosFG5DAeY4C2Vhuk9oAcIXeTxtZ5c1WXv5uIblSaUMzkTmdc3RH9ArWdZs+fQqsEeIDkzIJZO4NAlOiwROOSm/UabewoTeU44NQHCoPqmW3F7IUmbZ6Cf2P/6Y7sVbXyBTyGQZOHRIPNVqDEOM1SMEOJou9CV1euYrJ3EkAVHE5a78jsvYg87OBbyByigkgOsOeIIfSk5zLLlpi8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDFBZmVyeXE5amw2eThLUWE0WTNwV0pBTllVTDFQeUU0NFNhWVppNzJ5NExx?=
 =?utf-8?B?MHhoZzZpUHR2M0VzSEpwbmQvL3BhZkNIK3dRNFl6TFJsZ3BKYjI1NVJHNFFG?=
 =?utf-8?B?UlBzOXpTVlRVNTRTQ2lGejZUZmo4WmhQTGJiVGNadWNFYWo5a1NnOExNV1Vi?=
 =?utf-8?B?cTlKWUxmQ2JMMm5VZE9qOU9MUFl2dDN3RGlGRTZqWkJweXV0NVFxR1pxbWFM?=
 =?utf-8?B?OHVzdDlGRWtGcy9Cb2JFYzZTc1ZKbEFoaDV2eSt3VEJ4QTZ4UjFkMmZEdUw1?=
 =?utf-8?B?WCtxWVFWbHhjeHRqdkpuRTNGSGN6b2xOK2N5Rnp3L2R4VlU4cUxSRTlJWncr?=
 =?utf-8?B?ZysyaTI0eEYrZmw1eEJra3BOVDJuZDA1cVVHMzkyZDJpTnZOMkxjMkNoVkNL?=
 =?utf-8?B?Mk1MekJvSnhtK21tT2hwUmlkZUZvTmIxYzkwV3VaQnhDUjMya05zVHozcXBt?=
 =?utf-8?B?Vnl0N2ZSeXhPaEJ2eFJOQTVzV2I5Y2NxVjB1c2RqOVF2QWNOZGNuMGxoK3F1?=
 =?utf-8?B?ZnoxOVpLTk5MdVJtSjFhUXIzck5EMUtuUkV3a3VsMUVDdFl2aEI4WHJ1SXBn?=
 =?utf-8?B?Tm1sZUpMK1BxcDVodXNrRDRGS2hicE5Eb2xJbzk3VytIZThrbXJhUllQTE1Y?=
 =?utf-8?B?d1U4ZUkzOTVFVDNKQWpGeVh5RkRWK0U4OVB4OGxCQm5UdFluSUl1QXFWaGdO?=
 =?utf-8?B?STVTcTdJSGlVd21QWWhBWWZvL05JaHVqVEQ1bnZFMms5NXdER3pIUEV4QkI0?=
 =?utf-8?B?QUtDd2tRenBwNXRDcFhUT2tUZkhHVm5IdkM1NVIrRlJXcjlpbVoxZzlPSGdB?=
 =?utf-8?B?cEZlUm12ZnlhTm9PN0Urd0pwdmdRdWZ3MkJ3d3dTMEJUSnQ0MmlkR0Y1SlRT?=
 =?utf-8?B?MUJyb0ZqN3V0TWJOZmtGK1RmUGg4M3UwWS9RMnUwclFnNkFlS0xnMVhrM3VW?=
 =?utf-8?B?OU9CSDZYbUdtdjIzTEtTY2hqdC9WYkd0bXF5RHRIN3J2VTFCMUoyanoreWgw?=
 =?utf-8?B?NjFneEpuQVczRGJQZXVOTjZvNTNWTFhwdU5FbVBiMjF4V0tmL3NXcmUrYU05?=
 =?utf-8?B?dXlaL0l4NWx0R0NPTmU2UUdXM0g1dXB5MjlDVzVWS2dLZWVJR2VWQ1p3L0xi?=
 =?utf-8?B?NDJWNi9vbnBqQ29sZzArRWJqMElSL1dNMFVOa3JtcGJBc3g2WFRwaU16V0xU?=
 =?utf-8?B?QytZcHlGcmM0bVNIdGc4SnpLS1JpNTBwNGV4UzNqN0dISGJUKzRCeTBXVTl5?=
 =?utf-8?B?eXNMYy9vM2ZmaTYxTnI0Z2wxVEd6YytOL1ZaRW50cjI4eXVTN2hxWlJXejF1?=
 =?utf-8?B?c2NaeHlUaXo5NFdqV1ZIRXdQNXJ6VW9UZ1p1YnpPWjRsbVlhRERpM2drQU8x?=
 =?utf-8?B?SnNtSHptNGdyWUl4cmpFQ012ejVISnFhV1FEY1dkQUxXcjcxQTM5MndaU0Qy?=
 =?utf-8?B?WEdZVmk0SC9vY1RoRW95Q2xQNWNFL0J3Z2sxQU5qamlFczZETkVDMkMyYU9i?=
 =?utf-8?B?ZlN2OGsveElhTTZHYnR5azVmL0RaeEUzbU9EZWVGUUdJVXpPTlAwS29QeWFX?=
 =?utf-8?B?emttaE42ZWZsR2lSK1JIbUI3Zjc1RkFObTNWbHpZY1E2ME9mUFZIbmp1YmFn?=
 =?utf-8?B?STc1czRNVjU0T1Qzc21PNkx6WjJDUHFZNkRkWUlIYVp1bHVoK3RIcVppRkdI?=
 =?utf-8?B?RDJYMWsvSGh3TEZmK0tmTWhnVldvS0hxTTYxbnl3bm5ub0g0b25qTkFDY3dI?=
 =?utf-8?B?aktzYjBoQmdhdXNRMC9FTUpIVlRBM1lJaVRDdlhoblRpWFJCL1BIaTBEM2Fr?=
 =?utf-8?B?aUtzVm14cFFsV0VIV0oxdFVMS1JkbkZ1Q0tHVmVYY1ZRb0lHQ0wwckZOQkph?=
 =?utf-8?B?djVYODZZNDZQOEtYTVFCUWl1V1RYeFltMVZyazI2Q2ExOU0wVXdGcHhIT3Zm?=
 =?utf-8?B?SHFteTE4Lzd3T1c3eVZaMTdzUEdyak5PRnNxSUFWMHlJMk1TQmJXZkFWcG5G?=
 =?utf-8?B?dCtka1BjdHZHUEVPejZHc0E1U1h0SDk5bDFVUW5CSzl5R2hCOHRlbHltWnZD?=
 =?utf-8?B?RUFLR2tIcVBUZjJhT1FycXBQbXpMNXRUZndlckFMcC9yR1dzU0NVdzBUZlhj?=
 =?utf-8?B?b3BSeWRBMUtKODAveXY0aVFaZ3pkdUg5WmE1c3N0MG5jYWloR3FtL2lPK0Fh?=
 =?utf-8?B?T2VUcmRqNHo2R1BJTHZ2Nm5reUdyWHFBTHZncVh2WmcrTEpaaHVMNUExRk9P?=
 =?utf-8?B?Wm1UWVRSUHRuNXVEOGdYa2wrUXZXNWJicjFrTlk4cERrNVR4UDluMVEwVlkz?=
 =?utf-8?B?KzFlNmxEd1V0U2h6YnVmL28wSU53UVh5UGp3V2d5d0YwZEJpU0RLSUN1VW05?=
 =?utf-8?Q?KTwZjF5wQfg1Fu/k=3D?=
X-Exchange-RoutingPolicyChecked: P9Ako7ycLzhBfpqg11TMQxDox7sQfIBH7AN2HS/hr+V6AkVGHfwjpK/Ocj/efX2kcpG/gMkNYm7utIPr/Ogm7/VbbhsBowzaXAX+XcKfV7/aiq2sB31fLCnHWUlz0zN1Wa0ZDu3X495ka0tPLDd+rE+0ETauCawhSa0ZuAFhhUfk8qvkEXi5txO9XVCG7utWxOCfcEA/ERKY+0UMn1XM6RSTVtoQSZxmjd2RSu2Rniquwb9ng0NnC/elcRmJpGZvLFQv8i3yZvd2Sm7EzdS1tUH777ZUSuLFaLn+wmvbih/ZDCdNf6PxI0CrXIK8QNCYURfV5pyxGPAYPUE8QB4EyQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fdbdbca-b31b-4f43-a4b4-08dea4fa8d9d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 07:48:36.1460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /MosX8PDwFLly9OrvxbMkwNEAFcG3Jt3hEd/bLMS9bHQBYulcrVbgVez1ilhlhiE2lDC4uiuEVRrG2sR5NO/PwwkepiqmbQb0dCYw9SXmWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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
X-Rspamd-Queue-Id: C6B8E47F39D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 4/27/2026 6:22 PM, Jani Nikula wrote:
> On Mon, 27 Apr 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> On Fri, Apr 24, 2026 at 03:04:22PM +0530, Ankit Nautiyal wrote:
>>> Add new field in struct drm_dp_as_sdp to store coasting vtotal.
>>> This is used by the sinks that support Panel Replay and Asynchronous
>>> timing during PR Active to derive refresh rate, when AS SDP transmission
>>> is stopped by the source.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/display/drm_dp_helper.c | 1 +
>>>   include/drm/display/drm_dp_helper.h     | 1 +
>>>   2 files changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
>>> index a697cc227e28..e29958f8b0b6 100644
>>> --- a/drivers/gpu/drm/display/drm_dp_helper.c
>>> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
>>> @@ -3512,6 +3512,7 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>>>   	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
>>>   	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
>>>   	drm_printf(p, "    operation_mode: %d\n", as_sdp->mode);
>>> +	drm_printf(p, "    coasting vtotal: %d\n", as_sdp->coasting_vtotal);
>> For some reason the existing fields are using '_', this one ' '.
>> Looks like VSC uses ' ' as well. So the existing stuff in
>> drm_dp_as_sdp_log() should be fixed to conform to the common
>> style, in a separate patch.
> The indentation should be switched to tabs, and should be done using
> drm_printf_indent() which keeps the format strings readable.
>
> Can be done in follow-up.

Sure. Replacing the spaces with drm_printf_indent makes sense. I will 
use `indent` as 1 in these helpers as this will work for existing callers.

Later, if we want to pass the `indent` from the callers we can change 
the callers and extend the support as a separate change.

Thanks,

Ankit


>
> BR,
> Jani.
>
>
>> Otherwise this looks fine
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>>>   }
>>>   EXPORT_SYMBOL(drm_dp_as_sdp_log);
>>>   
>>> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
>>> index 1d0acd58f486..8c2d77a032f0 100644
>>> --- a/include/drm/display/drm_dp_helper.h
>>> +++ b/include/drm/display/drm_dp_helper.h
>>> @@ -126,6 +126,7 @@ struct drm_dp_as_sdp {
>>>   	int duration_decr_ms;
>>>   	bool target_rr_divider;
>>>   	enum operation_mode mode;
>>> +	int coasting_vtotal;
>>>   };
>>>   
>>>   void drm_dp_as_sdp_log(struct drm_printer *p,
>>> -- 
>>> 2.45.2
