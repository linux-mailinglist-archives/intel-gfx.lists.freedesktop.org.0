Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AC4B0D8A3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 13:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648EA10E662;
	Tue, 22 Jul 2025 11:57:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X7Uotnzy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE3D10E662;
 Tue, 22 Jul 2025 11:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753185458; x=1784721458;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=eVmGRy3unzNj2KzHIc2oFJYgAtChDIPm8vof35FeGkI=;
 b=X7Uotnzy2IW41oWL1qMu6XTt+fP57XK9Lc9n4Xx/7yQsClsD3gpf4e1o
 72o/JHQG1b/IM7Z5hnE7hhJT4zH8ZzxGmSK9buomyGjuNY6uBO30Cqn0K
 9M8Kxgt/56Gudl4lxmD5YMpN/r46cUqtpOzl9FgovROWbJlmCdJzwIP38
 yVc2zYEXT51WhkS5T8wuTAvJof/crXMVAGoaZLJ2UHeKbxem9+b1LI8Jp
 S5amrvBpvlsJ5dAoITQ6FrY7jIPAHDhPCIDnVybEHLova2oNH4SONpOpl
 ig32lZUolFqRy09x9xR5haFxjeluQDjqG73+6q1s5mReVPyptHk3+KiO1 w==;
X-CSE-ConnectionGUID: iHvg0rRDRWCK+j3/MOJ0Yw==
X-CSE-MsgGUID: wJ87Q8BoTjyqBwld99MdiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59229017"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59229017"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:57:37 -0700
X-CSE-ConnectionGUID: usFAN99dSZm6RqV3BF7vGQ==
X-CSE-MsgGUID: k2hIUdGzSiaYRP1l17bEMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="158435109"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:57:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 04:57:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 04:57:37 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.77)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 04:57:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xAxkl5CFFavwDWO+Bvpk0HD9LriZQKpg9MVZ3PzpPL8nmklC4qtnxrH95kj8olDgCQrSFqma4yVsKkkle14hOs4f11oqyOIW9Z3XWfHcWBnvkcjYsPNskb3SX6nt/15DUeJhhbaNzjzufRC95lzgVbWQ+geuCjuqEZxcIx1yxILiF3KYKqz041pmbZQEqZZZzgj7dLtI2vxTv56RvmUfKqRUADgnXydWBpoNFZBSkTy7B2+UNuHkpGFdHpMcv0r/wQN+8BYP0+3tUJsJSA4BhjHpXDwTm/aERs+4jzIOT7PJjozbzK89EAJVbMqbaVzbN/K+kX+EXzg+/sipjojcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dcFwbyhD4KpqJ2uUw5/A3p9kK3sA4x/K+z+imMgYBA4=;
 b=jjcMqyH7YdMtop2uv9ANwKNEoT5CSVemmtl4MBavagLMr4Kic2Bwli5XvArdghq1UAaYZFOjxW9Hd8xh/qaDDcIOpxdmXxNguytl0hSouSu1YTE1jiJnveV7P4pTFDEyeQ0JUpeGrWGjtTgrtz8Y5Occ7/KP/t5TOLjB+YsjWN6BTJxXfU52yMD4ZGCmP+GWschVVNjN4bbZK/XA9EIMl4iS+2CxMFh8gOjflbwVLrfQHJOP/fjcMNt0brPmlqtTXXU9vXOGY73YonzrnE35A2deWakfhQdvY1rSE3vFSQ6A5BqMMU4QB2MQfGX8wItkTLtX/kNFUBxVOj7vYyT28w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 11:57:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8943.028; Tue, 22 Jul 2025
 11:57:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250722101317.1728499-2-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
 <20250722101317.1728499-2-jouni.hogander@intel.com>
Subject: Re: [PATCH v2 1/4] drm/i915/display: Write PHY_CMN1_CONTROL only when
 using AUXLess ALPM
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Jul 2025 08:57:27 -0300
Message-ID: <175318544750.16862.14298552021054861249@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0187.namprd04.prod.outlook.com
 (2603:10b6:303:86::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7924:EE_
X-MS-Office365-Filtering-Correlation-Id: d37dfc42-fa24-442f-da2e-08ddc916f1aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UW14cU1qejVSZWRncFJzK2RobnFaRFlpbU1FYnhhN1V5aFZhWDhITjluTmFP?=
 =?utf-8?B?RzdPbjlKSEgyblVlYjNraVVQZUkrYW5RN1FoVDNORG1iUk1YM0lFS3B1N2ov?=
 =?utf-8?B?MFVNcmpVRGtWL25RNlRlSGVkVWJQUFowNktPWjBzNFQveGhIdGYvOHQ3OGJL?=
 =?utf-8?B?eENlUHlIQXFSY0lyRzh2NThtT2ZNRFVUcDBBclk0Y0hSb2FXSWFXcXlkaHVy?=
 =?utf-8?B?ZUpuRnFEbzVMbXFKVHVjRitmTG82NUo2eFY0N3UrMC9EeDh0NUNIRzR6bUhs?=
 =?utf-8?B?cXdTemxQSzAvU3N2Y0Z6SDlnOFovZlYrWFRCeU9NTnZtNW1mSCtRb2pMdlRC?=
 =?utf-8?B?L3lnYmNCTDVtU3ExUERRMFV6eUlhYXFhWW9SUTErbllIam9CQWZiZ3dZc1FO?=
 =?utf-8?B?bEM3aExlK2VOb0Z2MUFJS2hMWko4bXE5bEN2bW01ZXlDMkhFZWxSaXFmZUlL?=
 =?utf-8?B?Snl2YVNYdnV2SGhJSEFPSGdkSEg3T0l5dURGZ09YSlFjQWlVMkZ3bGJ4T295?=
 =?utf-8?B?eXhma3lYTERpOVQrQkZmbVN2Tm0reUtaNGtKbTlzZGF3Y2JtNjBaSFUwOExM?=
 =?utf-8?B?c2JXR2w2aUV0U1U0MFJEZWlWeUVGazJhd0RJbUZlUjFnaW1SZWdOUm5OVFJ5?=
 =?utf-8?B?SDVGbXdyMFZCczRVTTdKWVN6QlFrbm9OakI4M0QyamlCU29SUWtlZFlNaTFR?=
 =?utf-8?B?NGQ4eDd6YjdsSU9Ec0NrS1ozWWZ0bW1FTHNWMlJrOThQNDdOVGlRSFRlYktr?=
 =?utf-8?B?UWxOSTJrZW9CZEJuTUFFR094TlZIVEhoMExjWXlmZzVPeUZsQ2ZkczhzZUow?=
 =?utf-8?B?bUthRTRiMnlUc2hGMFNGY0FkTWhINEtIOVVab29IZmRBQlY2RFpIVmxZa3Fs?=
 =?utf-8?B?alJNTVdEQVJmNDh0SU95NUgvWnJrU1pvb2hmRTFjYWJLMjgyQ0hwWUxJVHU4?=
 =?utf-8?B?dkRmWU8zQ2phYnNQb3lCbUl4bU1uTnFTZGdTSVF5bmhTcDhPUjFBZnplS0RN?=
 =?utf-8?B?VTdzZndPWk0zZVE4QmsvZVpueExpZFFQTEpEeTV3SCt3dzZBdFdYT0l5bkVn?=
 =?utf-8?B?WnowY1JwNWZvRmNQVm04aVNpb21QcE01TjRuSTFnNTJSTmt4SWwrQlRwdVVi?=
 =?utf-8?B?K2ZsUjFQOWtzZEU0eUdBVk1TQWJjRDQ5dTB6OHNPNTN3ZXcrRGwzb0h3enE5?=
 =?utf-8?B?UU1mLzFJQmtUNm1ZWkJ4M25OVXh4NmFmWjJYRE9EUmZxTzNRRFRnOFdLQWR3?=
 =?utf-8?B?dmhad29kSTh1TDA1TXphVHdtQmVXM3NpOUlqSG9JT0U1ZW9Wa254TEVSUDRr?=
 =?utf-8?B?ODFnampuU05zd2xxeWhoZTN3Mmp6bGRhNXZsWHRNNUZVSUR6WGtENGlHTkJI?=
 =?utf-8?B?MnozK0p3SnNFRlorQkFNYjFHUEFLaTJoZ2tRUXhaTDlKWlNJSGMzVUdqZHBP?=
 =?utf-8?B?MDN1dmg2ck9WY1FmcHJvOGhGbndzam00Q25qYzZlbGc1OFRwYnRKdGpydFln?=
 =?utf-8?B?YUl0MlF1VC9KOW52SUZEN2Q4c1FoaHgrcUNhVDJhdVluSi9jK1p0T0RLRUpm?=
 =?utf-8?B?bE9hTzhKT3E4UHNXVzZZVWlsWnhWN2JkNTZWd2tQeE4rWFZrSnlYa0tRZkNW?=
 =?utf-8?B?T3pYQUprSWxLQkRvbnlaYmhORXB5b1F5c1JqbWF0eWFNTkNUUWhxQXFmYk9J?=
 =?utf-8?B?TjRWTzd1STcvdnpyV2pjckNrVnVUVVAyb05qTFMydlQreHFVUllwbm5ydWc1?=
 =?utf-8?B?aEl2c0d2SldMd3djQk5mUEUxT0dmTzVZU0RxanRIVzZPSGZVZGViaEV4WUZt?=
 =?utf-8?B?Y04rZ0ptSmE2ZzZFRVVnNEdoeXVjaFpSUHhsYVBtb3VDZUQxR21jVno3VEE0?=
 =?utf-8?B?TUJvR2JxT1ZHUlVrVjVuVTA1SW5HWG1NSGovdHk1bm1TQzh3RVI5RnpuUGFO?=
 =?utf-8?Q?WnTZWQnzu9M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkxxNTd0bjUvZUV3Z3V5MFpqR1lJL01RRWVZWVEvRWl2aXg4d0hNL3JRMVBJ?=
 =?utf-8?B?a0ZBZENlT25rdWZsVHk4aU0rRmtaZ1lFWWpXTlNWb0NDSGx6cFg1RjAzWHhj?=
 =?utf-8?B?VHBnOE1xcDZ6V3dyT2F6MXBLQnBXUXplZkd6TnpLK2ptdzFJR0NZSHAzZGxx?=
 =?utf-8?B?OThMMGJMMHlpSXFhZnczVmtiTXU1L2JFRzlhM0tFbHZrVDRROWdLMnNRaElu?=
 =?utf-8?B?Qm4wd1dTRDVCMXgyR29obHdURlp0Z0VVM1VIcnhHaEU1dVNmM2ZhNCtzRHMv?=
 =?utf-8?B?d2cvSnB2VXIrUnIvemRpMUpLd3htbnFWVDFkbG9yMW95ek0xV3ArKzlvS1pN?=
 =?utf-8?B?TnJrZVdJSC9iQlFpbk1BUkZxQVBYRE44ZjFZbTlJQUxiUSszWnNubmlCbXgw?=
 =?utf-8?B?SER4MEd3ZGRvSDNQSE9ScExLYmVnakdJSWVtWWFCWHh1SEZGaUNweGs1NFFu?=
 =?utf-8?B?YVNHbVJxM1dnSW1LSmtGdWczZ3dlUWtWbW9sU1drL3FNdlgvRXZRb01pb2Zr?=
 =?utf-8?B?Z3Iyd3hjSTZqSU9pN0ZrN29IaFNYenFDdklCZVFCbzlvam44cXV5ZEdNb0tM?=
 =?utf-8?B?U09vQ1hvcG0wRSsvVXpRekw4dHVnWEx4Z3lha2UzdG1OczlsRDhDSVlnV2F1?=
 =?utf-8?B?clYwTkZpNE5wR05kNVp4ejFrZnMydzNic0hiZnUwZ2xZN1NrbThxR1RUMmlZ?=
 =?utf-8?B?T0JUYytyVWZDeDVsR3NQR3VYVnU4ZTNOa2dFaEsxd2JrbkxDQVkveGNXdXpv?=
 =?utf-8?B?bGk0dDNOVE53a1NiZzdSN29mNmdtUHhFVkd3WkNEbVk1Nlg0by9xcFZOS2dB?=
 =?utf-8?B?Q0ZmbkdBV1BLTU8rbFk0UnlJdUVnMUhWWjlUVEdkSzk3ODl6MytzN01TdHhk?=
 =?utf-8?B?d3FDRzRpb1RrRzEvSkxsSDlwNS80bENRYkRUVWEwU3dSc1RTZ2lZREU3dXRl?=
 =?utf-8?B?NHBVaDI1RHBRNmtWL2tIM1JUcWxuNEplem5rNzl0RkorY0YvVGNtNmZ1aHY1?=
 =?utf-8?B?ZUhSN0FBUVhkZzJvUjRYT3FkK1R1ZGVsbzNIUTlxL3NIdjdMSWhmUWo5YkVl?=
 =?utf-8?B?VDQyMjQzbjdweXhJY2s4N1E2T0dTQnVTNTdPbGlkaXpHTU1kaks4TUI2N0Vi?=
 =?utf-8?B?ZkJPOVpVME8vdEFqVnV1Um12d0U1NkJLdWlBRXM1cjUvSmNjTDBYcmRieG5v?=
 =?utf-8?B?NHE4b3Fycy9MZ2lwU1Mrc1JjeUd2akpZZDBaUWlZUFJUUWJBVTZneXBqSXBP?=
 =?utf-8?B?VkczYmpvRU8zMzI0cHR3MEhBVTdPZWs1UUZ2UTR1YlN1dWYvZmF1ZWxDVWFj?=
 =?utf-8?B?WjU4dW9NeWdLMlJTamhCMGxIdk4wOENBTmRlWFVJSnhOZGUyekJWT3ZPVENz?=
 =?utf-8?B?ZmtNOG43TGpLSnJMd2xRNXZNV0pnMGFmcXhjS3g5WGE1NUcwOVFBVlBpWEht?=
 =?utf-8?B?YTlHaEVmeUhZY2p1STY5dUxNZnVPemlEaWpHbzZOZkZ2VXo5Z1ZLbnNNTHE0?=
 =?utf-8?B?U01jZDVsK001Z1lNZSt6NUxkMWZpSWUyd0RvTEVPamxiSWZqRWJYRE5mdmFY?=
 =?utf-8?B?Vy80SUgwTTNtUXg1c1lyRE9uUCt2UFl4Rnl2dGZJQWhMVzdqZ0duVndYelBD?=
 =?utf-8?B?ejVEY3VRckVYemdiWGJURjIzRkJaSXpLYUxsR296UDYvSkhMcDYwWDU0ZnVt?=
 =?utf-8?B?bk9wajRRZHdDZzdJL0lDYVBrbjgvcXhOVklMckJXZkFxRW4yWWluQURwRDll?=
 =?utf-8?B?V1RURklidTY1S3pMenAxT3dyOGJrRzNjeXhpajJzcUo4ako2MFB2NUJqaWxj?=
 =?utf-8?B?aHplb2hwcW02aHQ5YnFFWFZJYWlPbnVGdGRQd3hqNTJEbWo1RGhkamJOMGhR?=
 =?utf-8?B?MnprWW9zVFVHU0g3dTJxV3c1N3FCNlNPWVpLQmkwL3p0QjhVYU9qc3B2azhF?=
 =?utf-8?B?M0hvWE1XZlc5K285T29KZlY0L0VGQXVZdWhoWjJyejF4VHdkeUNNdnhrSmd1?=
 =?utf-8?B?UmdHTzN5VTJlK1JsZVBDc2FFaHYzdGRDT1FKUDByc0lRbjEwdk1ZZUJsWlVI?=
 =?utf-8?B?Vml3UmlYZEw3TFRzVWNuUVhrMjdhNkNKeUhLdFBEOXZ2Y0loVHVROWdSN1ZP?=
 =?utf-8?B?UDlQUXlobjBUdk9jbHVuRGdIMmpacU9QMk85bTNEM3k3Zm5XQ2lIZTl4dlkr?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d37dfc42-fa24-442f-da2e-08ddc916f1aa
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 11:57:33.9048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EAy9mP37Udf7fyuYdrV7V8LxT6T28UHmhwaI3nG9U9zw58moc0d2a9w5iASlWr7M/DNPtFcI7/dn/X+4uJB3+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
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

Quoting Jouni H=C3=B6gander (2025-07-22 07:13:14-03:00)
>We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3 retries"
>since we started configuring LFPS sending. According to Bspec Configuring
>LFPS sending is needed only when using AUXLess ALPM. This patch avoids
>these failures by configuring LFPS sending only when using AUXLess ALPM.
>
>Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sen=
ding")
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

I'm really curious if the programming works on the AUXLess ALPM case...

That said, this matches the spec, so

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Could you also put the reference to the respective Bspec page in the
trailers? That could be done while pushing, I think.

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++-----
> 1 file changed, 3 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index ed8e640b96b0..2b0305bb04cd 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3240,11 +3240,10 @@ void intel_lnl_mac_transmit_lfps(struct intel_enco=
der *encoder,
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>         u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>-        bool enable =3D intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encod=
er),
>-                                                  crtc_state);
>         int i;
>=20
>-        if (DISPLAY_VER(display) < 20)
>+        if (DISPLAY_VER(display) < 20 ||
>+            !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_s=
tate))
>                 return;
>=20
>         for (i =3D 0; i < 4; i++) {
>@@ -3256,8 +3255,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encode=
r *encoder,
>=20
>                 intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0)=
,
>                               CONTROL0_MAC_TRANSMIT_LFPS,
>-                              enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
>-                              MB_WRITE_COMMITTED);
>+                              CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMIT=
TED);
>         }
> }
>=20
>--=20
>2.43.0
>
