Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJwYODFVc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:02:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFE074BBA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A89A10EAB9;
	Fri, 23 Jan 2026 11:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4ahsB6s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4F610EAB4;
 Fri, 23 Jan 2026 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769166123; x=1800702123;
 h=date:message-id:cc:subject:from:to:
 content-transfer-encoding:references:in-reply-to: mime-version;
 bh=y+0rhnmJ3eOxgZ70nNaMlVmJF/T0IrVMhYiFO2ZMEjY=;
 b=A4ahsB6swt62Ib+rAzEZqW98GFHAPwtdreCD/tZgaQWwhade6vupWR5X
 ySgFpySpNxKnEaDat+TjpaW/43bMvYDzpa0h7mtNYsw81ZBMrpo7kNxLV
 6+D/y6+vjiZNKcMYkgMCBjpsL5Ch+oy1mcstV0LEKehx7cw5JwCoP3EPw
 K7azCeh1ClRI/Y8b83TYj7P7tqxBYe0zyQoqm9Ae9Pny+ZBVyiYkXLS4P
 c0lwBsDNmcZYcLlkQnw0qLDEjbuRG3Trkrxuijtm5k9MyJ48CwRya2YIU
 h73geRUL0HWhbr7xyXihM9xpdM5nPhmlXjeZNdmIHNHbUr24uKhNxl/bt g==;
X-CSE-ConnectionGUID: egT9JR48SWSDTZRWjxUiGg==
X-CSE-MsgGUID: OLcq80WZQXqE9elzJC0b5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74270678"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74270678"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:02:01 -0800
X-CSE-ConnectionGUID: siknMPdSRpCUhKfmvVJKwQ==
X-CSE-MsgGUID: ywGUIt6ZR7igy45lfMax3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="229961189"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:02:03 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:02:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:02:02 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:02:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nuXbWwUISH53Guxn+8Lrnvd+q8u0fJ9sFmQs677f5CjwuPBMp0WY2uUBoULbyux/1rCTELgQuzNRs8F19TGF5Y5oZjsiMqP9Ugozc4jiOvXwtUukJRrubCo3rGQiBhfcaTWA/yIQOwD/+vSQO3bXJ83Xoxvatgt7cGcDbvfOn4rk/2CM0XoOmo86LNZUHurulvfhA1PMKboJmOqk1ku9dlvYaiM0SZmYhqIT9Fpd45TyCeBR8lbKHFuiSirCeK5ON9mnZaEvkQlwpxCxFEn6uxpWOytZnyMnort2LqOvBfgxYbhKfLwnkvv6UNKoebMaaefNYqa96tmSDuRsL7+DFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oBYMUyHu0qKjV0mWsV49QoX234lmtymb10Fy+hbHhog=;
 b=uEqJkPe5G6+87CxJI3IHLQbM6kUHJfbhqJgIdiDFSSVbm+9psukWryv2Mz3wTmyMTcTTrRKrLoEBLcH1rGXdGvCNc/Sbgv+7EtHADMrhlkEpmyyQUoI1Z1Wf/dePB8Ulhhp8gF6eyLL5BPMa3+Oqj3eL2g1m1Z8U5lrgFhfk6g5pmrGz8K43Nz2Xlwn2OVcgOA7fGvdEThrYnWsxRmttX9NhDqO2sfWMo1BVFsvKiJHpJHTo3atXCX50adKT5ZETpPAOk9sizTwy4K+Ncdj+WBonXm2JGohnawtajJ9lEueRPsGkAPinPM7EdqI054QId5dt+OCxPyZbaH7Vz9tLzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:02:00 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:02:00 +0000
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:01:54 +0100
Message-ID: <DFVX1OVYV0MD.35VZJM8STQSXN@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 1/7] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-10-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260121114656.1970684-10-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0045.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::19) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: d8ea573f-a2db-43d7-a224-08de5a6ed514
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejNmeGV1d3ZkeXFZUFhtajl6YkV1eEJkWndVcUdQVFkrN0tENjE4SG9ma2xS?=
 =?utf-8?B?cjBJV1c0WHlLazc0ZG5iM056Uk5pK1hRNUoxOG1lQmt0c2c2Rkl1Y0lkdmc5?=
 =?utf-8?B?MTFWcG9yaXJQb0JEWXZVN094SW9vdEhtVG51dExEUVRoZzNaVURnajRNditL?=
 =?utf-8?B?aXdVTmRsL0QvcFYya0xyOW9tSTlBaUFqRnA3Z0FmdExtUzRIalA1d29zRGEy?=
 =?utf-8?B?WGhNdTZSNGZWazZKdHdzb2dEaG0za2pVd0lxS0l1bzdidEk1U1JmRk02bm5m?=
 =?utf-8?B?bDB0d0FTWXFFcXozTWNwdnQ5d0ZNNEFoakxLd08wb3JYYlBVL0F2M1puUlNo?=
 =?utf-8?B?N01ERnRXcDRhMmdDN2U1emNsdm04enpjTmRyMVRyNFN0YkpjY2w4YVlpeEli?=
 =?utf-8?B?a2JZS05TcEZhVmloT0c3WFhMNVdWNlBNbVpkdHVWU21jTDdzZ1pheVVsejYv?=
 =?utf-8?B?MjBZV2dkcHE5YlE1QU1yazdLcTlMWHo1dG44b3FpUWpkeDJSUUR0K1ZrQlIy?=
 =?utf-8?B?Nk15am12Qm01aFFOenluUmUrNUlqdmdJSElxbzJ2L3pONDFtOTFFamRRTkxY?=
 =?utf-8?B?akxvOWwrang1R21XQW4rV1BYMmtOS0NMcndJZDdZQU8reU9uTjhkOW9WOHVQ?=
 =?utf-8?B?N2VsQzN1NS9RQW5vSE1ZY2o2ZG5RVVZpTnhsZ2R6SzhuVGg5ankvVVFGbHZS?=
 =?utf-8?B?aHNTeFoxeUN6L2tJelpra2ZXQ1JkcDdzdHl3U0hTMHNONldBOUpWQk82L1c5?=
 =?utf-8?B?T2RYYnZPSy9aNUp0bG9udU52SEpsNm5xYllwUUl3di9KRHpLTUx4QWZZbEww?=
 =?utf-8?B?Zm40TTdhZUhLVnREM0dDdklQcFUyMGZqYWpyMkFtaC90eTJ6YlVFRUQxUnVC?=
 =?utf-8?B?MmpnWlZJaWN6ZXlOVlp0YnRlcy8wQTZ2ZGlvR05wTFY2azhjSTFEbURhWE9j?=
 =?utf-8?B?b0NiVjN0MjA0cC91Y0hsVU1CVVlBZVppNlNqVUtrb2RwcjN2eCtCbTRVV2pS?=
 =?utf-8?B?SzN4UnBlVGszaW1jNHk3ZWVjOUZoYU1XNEZCcW5TcnBESitMdEU5bWNiQTZK?=
 =?utf-8?B?bWZQbFBJVW84aFRYaUJDQVBDa1oxMDZETWhCQ2VNdnloOGQ3VUJpcnIyNVF2?=
 =?utf-8?B?VUo4cSt1VXJIYXI4MHo2bTlDbGJLZTZwbEkxRlRvb3NWNkpLUm9MTXpiNHBM?=
 =?utf-8?B?M3VxWWlKaDNGVGtsU1FUWHgzcjZIMXRzOG1zQmF1cERwTTBFeU9nRVRNOENC?=
 =?utf-8?B?QUQ0WVVDbW84cFlpdGRpcnFLbHAzOE43Y0Q1eFpUTG5tNm9mYjhHY2pQMVBq?=
 =?utf-8?B?MzdkV0ViQnk0S0pWRmNub0VTUG41WnBaL0NlWGIzVHcvZnhQNERLeGUwVWZn?=
 =?utf-8?B?ZU5BTm9MbmJGS1Rsb1BUZWNLVzVSNFR2NFFicDFKK3kzN2MwTjhDU3p4S0xy?=
 =?utf-8?B?YVZWQ1daMkJmT3NidFczRHRBUzJwUVJFTnJRdkZQU0xoYlpTMU9aeWVDV1Vm?=
 =?utf-8?B?elY5VXplYW5LbzRrdlZyU0Fxa3lJazcreUJvbU56UTdoaHRmTE5hb2xBVUtr?=
 =?utf-8?B?Z3lPN0twK2ZZaTBOYXgrNU82UXBEUFlFUE9KL0N0M2wvRzJWT2VORkpRajM1?=
 =?utf-8?B?MnR5dnNiMjhRKzVQWXdGSVBjWGFsVXJxcjlMMXd0OEU0VnJ6T0ZvMFdST3c1?=
 =?utf-8?B?eEREZmJCMzRPSDRMeG5KM083Y0hHM003bU9KQ1FXMk1UTFJiKzdqNTdiZkxF?=
 =?utf-8?B?UzgyWEE0VHZTc3JaTnc4RXMrUFdlWmxlL0QxSnUxSFpST3pNVFlKMStFVENm?=
 =?utf-8?B?RFVjMVFTK3cwSFJVaTBEVGhnSmhMU0FHYnlSeHJ0SHNiS3Y3WHBLSGVBa3R6?=
 =?utf-8?B?QXV3aGs3SVd1cklWVzBFYmxQa1UwZERxU2llM1RRUGo4aG1YYy83QlRDSjQw?=
 =?utf-8?B?QjhUaUFTb3c0ZnBQTkdqZEl5cTBXL0pRdy9odFcyT1lwWEhUU0g3QnR5RjZI?=
 =?utf-8?B?bDBiSXZBMWFVSUs0c2M1RnVPMnpMTXR5eUUwMkJSSGhwd3o0d3NZL0Y0YW9w?=
 =?utf-8?Q?B4syL+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjY2bEJFbWh2NGhDcE9Ja2JZUmdJUmJ0R29qOTJtSGpyNmNwcHU4anNNc2h6?=
 =?utf-8?B?blRNZGFPTHpJcW9tWno4eXlzZ2pyQWtnckpsbHJ5R0pHUkJTMEFHVVd2clZz?=
 =?utf-8?B?disyT3Z1SWE4STFPcnNhZDZXc20rYUxrdCtJV25xM3hWdUl4NllwV0ZSV1Z6?=
 =?utf-8?B?ZVl1d1Vtd3JJL2ZaSUp3QmtVazJQTFhibGtVSDk3RVpudTBvMmZ5ajB3M0E0?=
 =?utf-8?B?MHZEd1k5Uk5aWEtTVit2a3JsTSszMnlKTlhwdCtzRUlmRVVpNUo3SnlEdmtY?=
 =?utf-8?B?UkUrU2krVXpPUFZ0WkxVLzE1dEdiRkJNN0toaVdtVHVlY2JpT1hXZVU2anZM?=
 =?utf-8?B?d3QwejNrM2IrYkFXZVFYZG1nUUsvNGxpVklIYzNYbXZudk81WHdTa1c3UG53?=
 =?utf-8?B?VVBUSmVHbHZsVGMzWHlPYnJHT1pWb1RnOEc0SjR1anlCQ1dBcTkyOU96K3Ry?=
 =?utf-8?B?MDBlRmRoei9aVi94UkkwQ0RZY1RSWkk4dktYYkU1MGVxOWFMWWQ0MFczQ045?=
 =?utf-8?B?NG5JRXpxdTVqMVd1L3pmcEpFcWVnb3U1R2RBK2hQVVQ0cUxvSmM5cHlITmtH?=
 =?utf-8?B?Q1I2WHpiVGxHTnpTSHVQS2hwakxPcUR2bkZPVHJGZm9CbjRCdFpvOWVpbWZM?=
 =?utf-8?B?RmtCbWhtRWM0Z01lS3k0bTJCcHNjSUtDcktSSVMzVWNjY2NRWHE0WFBXWEEr?=
 =?utf-8?B?ZElnQ1o4M01jT2c1TTBoa2ZVVGhTSDV0UzhGVzFNVEJJSXdkMDZRQnZ4M1dK?=
 =?utf-8?B?T0ZJNjVubFBzY0dob0dHRGNkK0YxTSt5Q01uL2NRVkV6cFhKekZwTDNXRWJk?=
 =?utf-8?B?ZGR5dmxCc3UzWk4zbW9wUFN3dTV3c3pQcHIzbXRDZ1U5S2VVMHljUkx4RkRp?=
 =?utf-8?B?S052d0JpNmtmdzdpUElNV3lZVFFlNVRBSU8xZXQvczRoNzJsVzBkSG1pd1Y0?=
 =?utf-8?B?Sk5RZnZTeStiRFNiMklETFdyK3NlalVEUTdVR3NvUVR6Z2NpWERCeFBUOUFU?=
 =?utf-8?B?ZmRKd05tTnJ6ZUo2eDMvQ3J0RTFqeFN2bzNUSy8zdU5GRVltTWU4dzdEanRa?=
 =?utf-8?B?UGJWZWxGTnhvbVFnVGc2VFN2R0tyOHZPNkxzaGk4YnNkYWR0NmxaUGRzOHVl?=
 =?utf-8?B?bVB1SGV3eTVja0RvaHEvL3VOTU10M1RvWmtqdGF6bnVheFh4TjVWQ3lqVENj?=
 =?utf-8?B?Y2xxWEo5aFluOXQxR1BCQngyMHNBdFpwRWpBcWlENGlUcHUzaEYvUTFLa3kw?=
 =?utf-8?B?UmdNR25uMWg5LzYyUUsyYlR6TUcxQmRxcnJOU0FJamE3TTJtOVBTZ1RkeS9Y?=
 =?utf-8?B?c1F4M05iZFdpQXhUek96bHAzOXZBOTJxd0xiUWhMV2NSVERydU5tK0w0dmFs?=
 =?utf-8?B?eVV0U201NXdyYUVwYkxQbjZ1T0tKYnY4VTV0QVVwUTZxZ2VCVGk0M0dCY0pS?=
 =?utf-8?B?RWM3dnFYN1dhdVFiRkZoSDAvYlZ4aGFIUS8xRHRjOUJSa1d1SjBybVU1eWF1?=
 =?utf-8?B?cklpeGV0Y2twOHV2MDFDYnB4cGxPbmdWcFVOM1ZxWVdENUdnQlNuOFZWTzM1?=
 =?utf-8?B?R1hSZ2ROeElkUmF5dDdXZXJ6MEpEQThQUDdSN3g2dnNsbFBOdXQ3cWtXQzE4?=
 =?utf-8?B?MU93M1l2VXhPY0V5dkZNdFd4ajdjbW1yeS9KYXJWc0pLMWJKaitGZ250VDRT?=
 =?utf-8?B?VjJidU1hTDJpUDI5VEZ0WkRMWXJaOE5pV2xRN1VQMUpzQ2J5NWxtYXlYeFgv?=
 =?utf-8?B?Skh1U0lwODdMVURUaUNQbjFhZUQwMWhmSVg4SmRhQ25QQjU0OEdmaXBQdDlH?=
 =?utf-8?B?N2x5NW5QS1BzZXhDTkFzTlNMaDdCYmdEWm8yQnI4WGFZVks0Yzl5K0RxcmxD?=
 =?utf-8?B?SjhVMnBSeWU1enNSMFVVUEdUVUV4Wm1ONTExT09OZWl6THNXOG5mVlNyVDRI?=
 =?utf-8?B?NjJIdEhCTU1UZjg3Uk9oMVllUS91bUhKcFV5WUtXZ2F3YlZqNm5FbVUwUVc3?=
 =?utf-8?B?blBiKzhWRWIrSUxzZGU2cGNQazQ3Rm15dlpmMDkreXd6M3RCWVdZbW80RnZZ?=
 =?utf-8?B?dHJxckxKZTQ4aGp1WUtXcE5SZ1NJRkZuSDNEeGpJOGZwQ1RnYjlvOU5EbTFo?=
 =?utf-8?B?a3NROThUejBsakdvNnlFbk9lT2RiQzFMR2tLQnZ4N1I4Nmp2YzhHQmRxOFZz?=
 =?utf-8?B?eDFFUVFaMEJFRFBuSzgyNmk5SUhTTllXN2w4cXdVaEVxbW00RkJZOGQxQXpO?=
 =?utf-8?B?RWhuV3V4bUdjY3FvSU1jTDJOZDVCdWJoWHFGWWp0dEd0NzYvQTBsZXJ2eE1I?=
 =?utf-8?B?QU9wRnhJbGlDdHBicFRhcEFSOXZlRzNKaEpWRGxYeWVmWTZtWE5yWlBUZm1q?=
 =?utf-8?Q?5p28byEDZWrIWpyE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ea573f-a2db-43d7-a224-08de5a6ed514
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:02:00.2620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YQyUzctfINKXqcQsckpilkIya+ZLKpFROOloBQZqd3EXuGhaOkGP+EhVYIJnR78fMa+sY7yjW+TdIWQSvFU3PfJYb6bR/Kvt6KJbm8D5yQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4EFE074BBA
X-Rspamd-Action: no action

On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by tools like lspci or lsgpu.  That fake information is
> unfortunately provided by hardware, Linux PCI subsystem just exposes it
> untouched to upper layers, including userspace via sysfs, and userspace
> tools just report those fake values.
>
> While we can't do much about the kernel side or general purpose userspace
> tools like lspci, we can try to address the issue with our lsgpu utility.
>
> Correct link bandwidth attributes of a discrete GPU card can be obtained
> from the kernel by looking not at the PCI device of the GPU itself, only
> at a PCIe upstream port of the card's PCI bridge.  For integrity with
> content of the sysfs and with output from the other tools, we are not
> going to replace the fake information with that from the bridge upstream
> port, only show that port and its attributes themselves while listing
> devices.
>
> Since the tool uses our udev based igt_device_scan library for identifyin=
g
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
>
> As a first step, exclude the fake data from being printed.
>
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index abd8ca209e..7753262a53 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -613,6 +613,14 @@ static void dump_props_and_attrs(const struct igt_de=
vice *dev)
> =20
>  	printf("\n[attributes]\n");
>  	igt_map_foreach(dev->attrs_map, entry) {
> +		/* omit fake link bandwidth attributes */
> +		if (dev->dev_type =3D=3D DEVTYPE_DISCRETE &&
> +		    (!strcmp(entry->key, "max_link_speed") ||
> +		     !strcmp(entry->key, "max_link_width") ||
> +		     !strcmp(entry->key, "current_link_speed") ||
> +		     !strcmp(entry->key, "current_link_width")))
> +			continue;
> +
Nit: This might be a bit confusing now that the return value depends on DEV=
TYPE_DISCRETE,
especially for a library. I know it=E2=80=99s extra work to keep it generic=
, but maybe we could
move the check to its own function just to clean things up a bit?

--=20
Best regards,
Sebastian

