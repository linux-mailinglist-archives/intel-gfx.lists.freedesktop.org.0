Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CFDBEC5C8
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Oct 2025 04:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C8910E2EB;
	Sat, 18 Oct 2025 02:45:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FBcJg9Sj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBC710E1DC;
 Sat, 18 Oct 2025 02:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760755524; x=1792291524;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=LXLIcuC441VUaL5u3blHtaJMXLZ7N8pR4gAQTsRHxRk=;
 b=FBcJg9SjFHl6mILSgOuBVfUKuwmSqUmqgM64vPlu8DMee37ipVNhpt1/
 N2o2RgPqgGmZrTMvNFJP3AMTOOfbU2wXSKiTD2Li7a4/S+Qvj6Gbwuaup
 lOq5NHHy38x3kKJBK1/BzkJOvv5XO5yCZZHVbSTkBL9YM14Q69PaE/7BQ
 Dm2vj47YyRTiRRdWLAmYMKCRXUPPgIqNKRQ2a6pFOinYfzbuJAYM/xrhK
 yUAabk9ShU5l4hVY8QPKjtdT2mQq5bHLwACBmMBUo2cJzF0VdZjFRLCjg
 3Zmhue+d1eG+vCaPHeOqDBQoF1ja1m+FnlCfjvs0wm9QuvXpThP4Dh26R A==;
X-CSE-ConnectionGUID: ihxHoCraQ5Kcb5RjQj0rwA==
X-CSE-MsgGUID: ddXCXTYJQJ6R6RtfYQGb7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="66837557"
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="66837557"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:45:24 -0700
X-CSE-ConnectionGUID: 4KqnhWi8RY+C3fso7TxAbg==
X-CSE-MsgGUID: V1A3TcbyRVSNF+8zRxaygQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="182569149"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:44:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 13:20:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 13:20:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.54)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 13:20:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tPNRL0QW83Zn0Yvv8a/mgtvNLhqs3Bja+3VWE/hx1eZvohPWaxijXIklYf8M6DNh75tI4iivptRTZByFryXV86l0/UMuig5kkgaubewhBcpiSB8JOJBk6ZK6dLeXoew2AmPDw8YxDBKYMT+MUIIDHsguHUExk9bFRhjIm9B5jr0CU+ZfFcvgSRix3V3JTMsvpJ19N+OJwbFUoK4QDhWyZD7QWZ0tHhWaSnsw0mVXhyAZoCDGdoroPoVzTvyOaMYOHPPU2BUTVxp3Os5b8Ioxo5zyiCpOofDAzfo5FE1E875ywDBLscFBib7fdV/riX2UR0LEJuFIAb+ZvZNGk1pH/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cNFUd6NNI56GJv+3VJpt9EeLgWKtpumtNfWwWKJNKfA=;
 b=Su+ffCExh/y6EmKfP/Lk0pHCbbuj0N/Hl4ycmUkldPD1UJWZ7YfUEk7ruDldxSAjK1q0Iat1inMcj1qbcgUc+o90zZvF2Oz8raZ9YOLD5yzqVly/ruiWvsm9Seojk4icWKywcA4EfxTJOcund2P9l3umTgGfpdn+Hez2gfB+drkg50vCZ8+havDMzpkrNVTy3QfJk5kXXTkfIWWdjf/dLA8O2T8iIPk6oOVlTFY+THWyZ4ZIYTTqA8NnZ1HDMk1DsKRZypE0typERKXX9ahms9w4IqM/CgYpeS6U3qzhBRYYgX4p4EMbtr2QZ41ibntS/5JgFMagWi4DBjlpGeEF6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB9473.namprd11.prod.outlook.com (2603:10b6:8:258::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Fri, 17 Oct
 2025 20:20:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 20:20:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <d02b6f306e3b503066dcb4cf7d1a8c1fdf626e30@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-27-d2d1e26520aa@intel.com>
 <d02b6f306e3b503066dcb4cf7d1a8c1fdf626e30@intel.com>
Subject: Re: [PATCH 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 17 Oct 2025 17:20:49 -0300
Message-ID: <176073244932.2362.18113914581478817061@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0123.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB9473:EE_
X-MS-Office365-Filtering-Correlation-Id: 319d0a27-1298-437f-158c-08de0dbaabc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXZKbGhOVFNJOXZmNHgxdzRJVGNtTERTYUh6bW5mMjBnMmhRYytabDcrU1l5?=
 =?utf-8?B?TE1yQkovbi9rRjd4Z3NIVnZPREthbjh1ZVN4VXh1alNJV3hkVnpOUmFha1Mv?=
 =?utf-8?B?OWI3TmVRUUl3VGptN05MeTljbUZqaDF0VzRya0pmak42SHBMZmRtQ21nWWpU?=
 =?utf-8?B?TjlaY0dQN1dscU1nU1YxcmVnSERrUGV4bjZPYkNJSnA5WWpVNnV2TEZlc3Fs?=
 =?utf-8?B?QlhKbzJZL21MQTFTYXhycTJmZjZraSthWG5aNFNjVmJvbkxEb01xd0tDVW1N?=
 =?utf-8?B?ekp3dWhYMXBVeThsYURLcDhoVFY5RFkrbW94dnY0REs3b1U0TzdmcEd0MDRZ?=
 =?utf-8?B?YUQwWDd6TDZWeXdiMnI2dVNXL0F6VWxwM053Ykt1MUs3TTZDTXRKcEViUWJ5?=
 =?utf-8?B?eEZLdnNVQlplKzJmbHo0d2k1OU1XSVhneFovVTdVTFk3RElOb3hUeFpLNkNo?=
 =?utf-8?B?R3VhcGxtMnFUQXVtL2JLUE0wVkltVzREeEFWUWJIZFFOY0Y2NXF3ZnF3eEM1?=
 =?utf-8?B?a1NSNVNmVW9MbFpSbVRiVTdremZDeTVub2c2S0hYaHMyVkU0N0d2dmNGM1pI?=
 =?utf-8?B?akQxQnJoVS9FcytTdllJYnNiN2p0ZHQ2bU4rRitqOHdJbi80R1V2MSt4MlpM?=
 =?utf-8?B?Skd5NEtqZkFTckZJeVRlTnFZYmFrbnlsQ2NuVzFQRXZZVnFrWTR3Z1BnZ3RH?=
 =?utf-8?B?dFd0TlBjcG9PMDZxRWk2cjV5R0xrUzVoSTR5Rjlhb0Q2TERHdXdBR2k0UXZs?=
 =?utf-8?B?VGVVd0F4QTZpaWVZVUcxSFB4Mld4RGJGWWp4bklYMmxjeXM0SmdvMTI1ZVhT?=
 =?utf-8?B?Q0NCS2tRcTRyUW5Qa0ZmMVlXQ0xEVE1hd3JzNXhxOGRIRENSTnZhM2VaQTgx?=
 =?utf-8?B?TDR5NTNzdW9aYjVHSmlwMGFJY3F2UG1Za1JpSUpaMmZ0THkvZ2FzQTl1TWUw?=
 =?utf-8?B?Y1VTdzNOcUZyNTIzeS9yNi9zQ3AzVVFFNHFEWnVLTzJVUmFaeG16Y3duYkhR?=
 =?utf-8?B?dHFSY0ZoUkdJczN1YnZrYzEvbmhnM0l2RlJHY1U4b0hBN3JBNXRRU2NlUEx5?=
 =?utf-8?B?eUFNSkRxOXFEdFJCaGt6Y21pYWNmcVZZZ2RFd3UxS2JTSG5EdFFiU2pHSGkr?=
 =?utf-8?B?QURoV2JCN0lpdGJlcGFpbUJ3Q2tmSWd3TitzS3FML3RxSlJUSER0bjV6UzNG?=
 =?utf-8?B?M1h3SnpCQlR5ZEdPdGdmZGJDWGFrS1RBbkhrbExRTHVWa0I2Z2JFTXNQeUlG?=
 =?utf-8?B?aSsrZ1NpRGYzNzFmSWh5bFdSUG84YXFROHRhVTdTZlZOUkJGWG9DUlhSQ24r?=
 =?utf-8?B?RU9qYXpmTlQ3UG00aVhsOXprVXF1bnV4OGllbkphWW8zNlprYTdJQXNoZjVV?=
 =?utf-8?B?MHFkeUJvZVM5ZGZzZ25PY0p6a3hJRWI4OUxkczlUQ2hlZW84bWcvUEtUamNl?=
 =?utf-8?B?a1dkTjNMdWFybVBaYWg1WVpvOVdpY1dFd2NOMldNMWx3Mmcrek1EQ1Jzakwv?=
 =?utf-8?B?QmIvTUJleGhMdkxPL3FwRDJYYUM5ZFFBZWZqdU9DdW1TZ05zNTM2TTR5UHZx?=
 =?utf-8?B?MndMemxDRE5Za1pocUZjRHV1VWRjK0JJd3lPNG85SFY4NmhrOFZzS3hXLzlx?=
 =?utf-8?B?Rjl6ajZ0b0RrZWdKd3Y2RldYM090NWpmY3FMWTB2cEJNMk00SFlUUXhqbkJs?=
 =?utf-8?B?REVmUFIzdENqazRmTWtpNVQ1T2cxT3U4NE9Db3RzSjNnc291U3Q4VnRBRkdt?=
 =?utf-8?B?Y2JCckhBc2VyNjFmMDFIdjl3Z3dXSFlmT0pLNG9lRFJXYmc3Zk9sT05lUFBl?=
 =?utf-8?B?TStlNUI2eDlWLzhDQjhVUGJnV3VXMXh1TWdxWHFxMlZ2WXl4NkRDZURIRDVv?=
 =?utf-8?B?N3c1eTF0ZzhDM0pWT2RDZlVKM2lCR295YkxOR3RoY0lOWkhSNFV1NmZiYlR6?=
 =?utf-8?Q?aWWHf2st6hopj2UDcxvHVnitREYfKc4b?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0l2cS8wUjZBOTVvQ1l2Y3hRNjB0UGJkZUo3Wk9ZTG1CYnlvbnJRTGdCanIx?=
 =?utf-8?B?Qk4yTXp0c09CSyt0SU5IVlczQUJkMlZJSms0c3hzL1dXdXF1SzFDR1ZDRGdC?=
 =?utf-8?B?U2ZkUms1eU9vQVRTKzVoSGFicTArbjlmVGNLWGVTSHZUOWQ3aDBkSmY1NHBm?=
 =?utf-8?B?SDF6dlhDZDJBaitIOTFaTFFuNWVHajg3cHRTeUVGS3VXQldvVTV3V2t2ZDJj?=
 =?utf-8?B?bk5zOVB3NXpPL0pWSlIwWGFiYkV5aTE5TFM5bE9zcVlXMTlDZ0J5TVVGTm5u?=
 =?utf-8?B?aURFSVlvM1B6TENKbTRXaGsrWFJYUFYrMzBwNkEvcyt2TUF2TWdZZjNzQTJL?=
 =?utf-8?B?UVJ3b0NRb1dPaExjRlBISVNQQVk0TlB1UTYySEhDSkViYTZ5MXBEUXpNY2Nq?=
 =?utf-8?B?S0NQQm5ka1hxUkpZbUErZWNsSmgxTzc0eUw4WU1YcUxQSXljN3RhZkNNN05D?=
 =?utf-8?B?MnhucTNjdlUyOUtvbmZ4THJNUWpuYnA2ZHF0eS9vOUJYTXVTOC8wWmtDT0Zr?=
 =?utf-8?B?U1lDbm12UTMvZGd4b01FcDh4T1lXT1Y1KzRsUWdKSGtyK2VJVkNxVjFWSnl2?=
 =?utf-8?B?WXpUV0VNVW5IS1hWYy94czB2bkxIdmF3NHZ6RWtwZE1HKzg2UVUxYWNwVzZY?=
 =?utf-8?B?UmVFbzB1a2ticnRUdTI4cndPeDhTNUxtZjNFTXRnRGZxdDc0bnBBMWdSWUdP?=
 =?utf-8?B?ekZzOVlhU1d5YVFrdVZ4NjltMFlpeGRhWUZwTzc0STNpSmxoVWM2ZS9rbzFZ?=
 =?utf-8?B?ZG1scWVHSVJMajh2dU9rUE5WSUlqVjBhaWQ1cmFPVGpYNUhDanAxb1hZVXZY?=
 =?utf-8?B?azIweldDbmIwWkdJQXh4dHUyYU51VU1QZU9LWkJVc0phS2hvSXViaHBuY2lR?=
 =?utf-8?B?RWo1ZUQxN2tqQjlPem4zbWNKeEtpUU1CUkI1akhqZlJqQ2Nsc0NYT2VBQ0VK?=
 =?utf-8?B?U2xCSzJuRTVBV1dXbXZTcXlxR2s5dEtZc3JZRVJlbTNWTzd4S1dROHIvZ0c0?=
 =?utf-8?B?K1hMc3RGaXdYL3NxWDNLaFZYVFZDZTQzWEY0dElkYXFYMUFRRFpJT0RidGVj?=
 =?utf-8?B?ZXZNOTNHeGdNSjd6TTc3U0N6SXRjdFBxSEZ4MXlGYU1mcGxjZzV3aU1vQ0R6?=
 =?utf-8?B?ODVoM2NTRWQ0cjNVSzJyd245a0VUUXBEdzUrRHR3N1NjS0pGUk9jNEtwZGpD?=
 =?utf-8?B?OEhnWm1iYlNiU0M5V2lORDYwSnFkcDV3b05Fa3JHdnIvZUNMQzFsSGVkSW1w?=
 =?utf-8?B?eUhZeCtLcXZZMGxvL2hKbVdnMlRqZ21TSHB3Z1ZoQVp2MWEyZGU1ZGs1NFYy?=
 =?utf-8?B?UTNveWxWRXNjUUh5RkFXUzBYdFc1RmE5bW1NQklKcElGYzdwRXlxUjlhb2dZ?=
 =?utf-8?B?ZzI0bS80Snlwa25TWElvdGxRZnZyZWNiQXdMdGVXajA1MlZURXZtRFllQmox?=
 =?utf-8?B?Nm93RTdYQ0U4UkNCYndpSXMyK2VlRXpzdUtnK3FmbzUwZTdoUXcvYlljQWJa?=
 =?utf-8?B?U0tyTVdtc3MvV0dGc0dyUzc1K2wrQlYwU3VZUDhmQ2tJZkdDdEJWTEprRmZO?=
 =?utf-8?B?dzNId1VXcDNqcDdtc3BEelRabmRoRHZsU2YyWnd4MENQa1hjeW1WWTR6akFy?=
 =?utf-8?B?SmppUDNNaHFPOVN4QXRJZDhobEw5c09LUjMrV290T2pZUDBaUWJvVEFIeXp4?=
 =?utf-8?B?T1lzYnVPTk4zekcvSHQ5c25aUnNndTlpc3VibVd1RXVQTW5ZcDBrbFhVRHN0?=
 =?utf-8?B?aEJzUnBIOUVCVUVsN25xeGNTTGhMdVVkemx6bXhsTktzOVFhV0UzSUNsR3Qx?=
 =?utf-8?B?djJvWENhbVBUR0phN2ZCUFQ4WUp3UlhKL0lJbnBXVjhmU01wOFpyVmpDRjdH?=
 =?utf-8?B?d0ZsR25xTFYvcmdySmpLZllodjczY21lMWwxN3lqQ2s1WHVnTnA4SmIydVdM?=
 =?utf-8?B?ZG1pUkJyT1dwREVBZzQya21RWlJjcjduM1FLSzNlQ2NObEhtT0R3Rm5rdjJj?=
 =?utf-8?B?ZFBXK3FSMG1DL1hSaW5jM3QyaWk2V3I1eUJ2WS85aWdKNE5uU09hdmowR2l1?=
 =?utf-8?B?NjRaOG9ON2VwWEpqOVNtaW41M0NoUU1LZUEwaktEQkR2SHl4MlV6Kzc4WXVP?=
 =?utf-8?B?SElyTk5RWkFGSlVaS0xVcjZpT1MzWnNUSHFsaXpreUV1MU4zTHIvMnhXRlZE?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 319d0a27-1298-437f-158c-08de0dbaabc6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 20:20:53.1611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BKyUStt0oGXW3REWNJ8RxsnLxgk2Byv8zrDZQpdioEmLeLkmdG2WhUV0+KxILtwqff8Yr3/9B4ZyNYC+EXbQ5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9473
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

Quoting Jani Nikula (2025-10-15 12:29:00-03:00)
>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
>> configuring SoC for TC ports and PHYs.  Update the code to match the
>> updates in VBT.
>>
>> The new field dedicated_external is used to represent TC ports that are
>> connected to PHYs outside of the Type-C subsystem, meaning that they
>> behave like dedicated ports and don't require the extra Type-C
>> programming.  In an upcoming change, we will update the driver to take
>> this field into consideration when detecting the type of port.
>>
>> The new field dyn_port_over_tc is used to inform that the TC port can be
>> dynamically allocated for a legacy connector in the Type-C subsystem,
>> which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
>> that field in order to handle the IOM resource management programming
>> required for that.
>
>We probably want to add the info to print_ddi_port().

Yep.  Good idea.

I'm currently looking at print_ddi_port() and the one-liner is already
quite long and I don't know we would be able to come up with a good
abbreviation to put there.

Probably just print on its own line?
E.g.:

	dedicated_external =3D intel_bios_encoder_is_dedicated_external(devdata);
	if (dedicated_external)
		drm_dbg_kms(display->drm,
			    "Port %c is dedicated external\n");


Do you think printing for dyn_port_over_tc is also useful?

--
Gustavo Sousa

>
>>
>> Note that, when dedicated_external is set, the fields dp_usb_type_c and
>> tbt are tagged as "don't care" in the spec, so they should be ignored in
>> that case, so also make sure to update the accessor functions to take
>> that into consideration.
>>
>> Bspec: 20124, 68954, 74304
>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++-
>>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  7 ++++++-
>>  3 files changed, 27 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 3596dce84c28..e466728ced0f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2777,7 +2777,7 @@ static int child_device_expected_size(u16 version)
>>  {
>>          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>> =20
>> -        if (version > 263)
>> +        if (version > 264)
>>                  return -ENOENT;
>>          else if (version >=3D 263)
>>                  return 44;
>> @@ -3714,14 +3714,32 @@ int intel_bios_hdmi_ddc_pin(const struct intel_b=
ios_encoder_data *devdata)
>> =20
>>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_enco=
der_data *devdata)
>>  {
>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>> +                return false;
>> +
>>          return devdata->display->vbt.version >=3D 195 && devdata->child=
.dp_usb_type_c;
>>  }
>> =20
>>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_da=
ta *devdata)
>>  {
>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>> +                return false;
>> +
>>          return devdata->display->vbt.version >=3D 209 && devdata->child=
.tbt;
>>  }
>> =20
>> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_e=
ncoder_data *devdata)
>> +{
>> +        return devdata->display->vbt.version >=3D 264 &&
>> +                devdata->child.dedicated_external;
>> +}
>> +
>> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bi=
os_encoder_data *devdata)
>> +{
>> +        return devdata->display->vbt.version >=3D 264 &&
>> +                devdata->child.dyn_port_over_tc;
>> +}
>> +
>>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_d=
ata *devdata)
>>  {
>>          return devdata && devdata->child.lane_reversal;
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm=
/i915/display/intel_bios.h
>> index f9e438b2787b..75dff27b4228 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel=
_bios_encoder_data *devdat
>>  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_da=
ta *devdata);
>>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_enco=
der_data *devdata);
>>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_da=
ta *devdata);
>> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_e=
ncoder_data *devdata);
>> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bi=
os_encoder_data *devdata);
>>  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_da=
ta *devdata);
>>  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_e=
ncoder_data *devdata);
>>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data =
*devdata);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu=
/drm/i915/display/intel_vbt_defs.h
>> index 70e31520c560..f07ab64a8d97 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -554,7 +554,12 @@ struct child_device_config {
>>          u8 dvo_function;
>>          u8 dp_usb_type_c:1;                                        /* 1=
95+ */
>>          u8 tbt:1;                                                /* 209=
+ */
>> -        u8 flags2_reserved:2;                                        /*=
 195+ */
>> +        /*
>> +         * Fields dp_usb_type_c and tbt must be ignored when
>> +         * dedicated_external is set.
>> +         */
>> +        u8 dedicated_external:1;                                /* 264+=
 */
>> +        u8 dyn_port_over_tc:1;                                        /=
* 264+ */
>>          u8 dp_port_trace_length:4;                                /* 20=
9+ */
>>          u8 dp_gpio_index;                                        /* 195=
+ */
>>          u16 dp_gpio_pin_num;                                        /* =
195+ */
>
>--=20
>Jani Nikula, Intel
