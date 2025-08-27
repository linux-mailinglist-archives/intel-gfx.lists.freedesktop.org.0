Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E39B38B91
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 23:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0626110E176;
	Wed, 27 Aug 2025 21:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtpGf9GE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E9110E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756330822; x=1787866822;
 h=message-id:date:from:subject:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yBz1zCshSDUwH6/QltivzmLvqiagomWZChnnugzLe7A=;
 b=AtpGf9GEt8nT693BrOkpwaoDdzJHb9sijV4Uddmlb96bT9Mj1hjGeL01
 lm0kgy9FuTGM2ZK2ukcHYb/hXLuxKbsyFPYf+XemFnRlKPnImIzmmXkh/
 d0DCL3hCNUbUHRx6IVEBfuWbXsDkKPb/T/YYpziXFd2TKwxuIhaFCS03Y
 YNa24j/kL4SutoKLdwWlU7kQSZ33SQMhPwvD6r/mcTcSEpSwjAsLxL83D
 a+etXs8uajBODY2OfdCoNgEAMXrjjCucRBCR8bb+ObkwoBR58+pSc4iXv
 D63tSYe78MrENZjV4o8lXBjegzTpWufyq1MoDdG1gNqCb4AyqctEClHrA g==;
X-CSE-ConnectionGUID: sPSIJUDQS3STpA7gl2ZiZw==
X-CSE-MsgGUID: mqnTItWNQ5yn32Tn909U1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57791970"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57791970"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 14:40:22 -0700
X-CSE-ConnectionGUID: KuFjImQWSAyVow6takGe/A==
X-CSE-MsgGUID: SM13Q2RlTEmiZSCkZIWUDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169193720"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 14:40:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 14:40:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 14:40:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.55)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 14:40:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q2kguYRoQ3WAoz/O6EdATFEBLSe5566OTWcafu82iRE7+IGdfE/W1dWFEtT/7vX8YLFdVX090ZgLjgsoLB7O8vNAiUXQCvIcdxbjPbtJhiiNbCJkg3GxxfYmK3SBdWo0rBOWIxAND0IKVcjwiVPsniNh8AlEGiB0XjJShGL1AXvWTxoFMLG8ShUnhg97pgFyK3HlhEB3eEHSaXMU4WtwAaQlsuSrQx9lOSlfoe3KsY0PHrmThegOP/hMFyj0nvvK3XASZoj8zu9r3nuL4tGm7LwnJcLXdm1OmZxXnCgh2QuiCI/v1JiZ8richkn3prHs4VGmzwKIW66BC7ZANfjhLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DguHu1rxYQ6nY45mAb3cMwH/gJ4NXyqq8QjdkNqh7CQ=;
 b=cXfwr8ZRAZlWImdKcCmESrGXwyzO4FGoSMJWoqEAzXu4XwS7iXrBHgEk0iQ2MO4sDFK1OFlg6vEdTLo31dEK711GQOX0jzyKMt90hnwQ+CborORrPXDFz/pUbxilyIJOzyQGLawICC6tP1u6vZlnSuv3YsGXcu/ybnZwYM5W+KdoyVwT5NFzJaUKLCzmIlqL4A3nbeeb+MdvaKbWUDRNbzJRzyTJRC7vzBT/w+NQQS1MiB4B2I31ewSQs3y5wwPPQXqsqWXeax7TA7l2qekpBjhWvt7Z/lEoubhkcEdjs2q9rGvhsFFGELeCgMfDyNKc7Kp8xrImvbYRdB8dwWiUpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7821.namprd11.prod.outlook.com (2603:10b6:208:3f0::22)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Wed, 27 Aug
 2025 21:40:19 +0000
Received: from IA1PR11MB7821.namprd11.prod.outlook.com
 ([fe80::2ca4:29ad:f305:6fc0]) by IA1PR11MB7821.namprd11.prod.outlook.com
 ([fe80::2ca4:29ad:f305:6fc0%5]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 21:40:18 +0000
Message-ID: <b3670f1c-3b02-4b2f-9e58-11c7861aff22@intel.com>
Date: Wed, 27 Aug 2025 14:40:17 -0700
User-Agent: Mozilla Thunderbird
From: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?guc=3A_Test_GuC_v70=2E49=2E4_for_ADL-P=2C_DG1=2C_DG2=2C_MTL=2C_TG?=
 =?UTF-8?Q?L?=
To: <intel-gfx@lists.freedesktop.org>
References: <20250826204922.216812-2-julia.filipchuk@intel.com>
 <175628821745.273644.2070460340075831188@1538d3639d33>
Content-Language: en-US
Organization: Intel
In-Reply-To: <175628821745.273644.2070460340075831188@1538d3639d33>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0163.namprd04.prod.outlook.com
 (2603:10b6:303:85::18) To IA1PR11MB7821.namprd11.prod.outlook.com
 (2603:10b6:208:3f0::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7821:EE_|SJ0PR11MB4896:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b9b0346-10f3-44ba-0330-08dde5b25145
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjlNdDJZZ1UycjljS3N5MVNRWTZZQWxuMWpLZUF2L2I2Z0NVeHBEaFlsaFY1?=
 =?utf-8?B?SXZJbkNVSHk2RVE2L0tDNXE5bzlyL3NGYWNSOThNV1JmcENNNU9UZFF3Q0Yw?=
 =?utf-8?B?T2g0WkhFTm5TVXk3MzhBN1FkR3hMNDE2TnhuYzA1YWhkeWJYVmR4c05sMkZP?=
 =?utf-8?B?R2MxSG14d09KQXByRHZ1Zjl2TUdUV3FJNVlZU2FFS21id1R2MkdqQkFpdFJ1?=
 =?utf-8?B?Z2toRFZJZHV0enVQOXlzZ0hqc0d5dG5Cc2p3OGFpb1FEcmh0QXA1bFVCbmpy?=
 =?utf-8?B?WkQySTNETWR5M1BWTm9vR3pjS3UwdlNlRU9reG5wWnZKQ2FwZ2ozMk5wamtm?=
 =?utf-8?B?a3Fua1llM0hEWVhqZXpCL0NWa205d05IQ0twMDc1SzRJQlNKWUNZS1NjeFFB?=
 =?utf-8?B?cmkrNHdUZGk2YnVaM2lNN1A1Q2h1OUpWZmoreURrN0ZsSDJ3MFZmS1JyNGY0?=
 =?utf-8?B?QnJsU1VwWHRnUGNxWmRaNUpFNzRkWWFwZDNOZW5neTRVN3VvdUl2THlvTkMx?=
 =?utf-8?B?aDRsaDJTVHRJMnB4T2xCTXBZaU9ITDJGUnpHN1AwczBHMXdMSk55WUdtUTI1?=
 =?utf-8?B?L1pvQXNZL2YzSWdJK0FhMDRiOFA0TzI4Vll5WGNKaWRLSlVMOUpGSFVMVHZQ?=
 =?utf-8?B?MElBYVJUbFZUSE1QVTZYVUY3V1VxZEVORjdrSzU1TEs5Wi9JZ2VYMy9zWWpy?=
 =?utf-8?B?alBIZFZ2cG40YXVEY1I3aEJmam1SWFpBRkQ4Uzd4aFl4dm9lM3hSRFVpUE82?=
 =?utf-8?B?VU5kVU1BemQwNnErejBLQUthMEZBV0xuTVppc2VyY3BnR21zdVYwTXloUWZH?=
 =?utf-8?B?S3NGcWVjbFozM3diTmFSUjVkc0U0akdHa04rVjNLaGdWQXNzK3g5bml2Z0lX?=
 =?utf-8?B?bnoyMUo0VkdwcjJoME5JRXRJNVdOeU5ySHkwNXEwNDhiN0UyY3lFODJPQ1lH?=
 =?utf-8?B?SkdrdnUvdXVFSlBZVHBVWEZ3cFJGS0NMTUhjTUNuK1JHaFZqZUFkTzlPbXdY?=
 =?utf-8?B?azlFYzlhNDgwQkIzaE1nZ3R1eitJR0NEWngyb1lWVHQzSnVZK2taWDgwNEsr?=
 =?utf-8?B?N1ZrUEYveFgwS2x5a1A2SG9zRlJibEExK0s3SEphNTg2d05yYnAxcFlvWW1y?=
 =?utf-8?B?b014SVhLd0lEc1JIUW1rSEdQUEw3bHQ5anVhMVBJN0I3YUVrTVVxeDVJWGNn?=
 =?utf-8?B?ckdOVHRVMEFybjhnN1ZzRmlpUU9jRXM1dmNmbmYzQzBHazVSeDg2TjJiUzdy?=
 =?utf-8?B?NS9nNjdGK3YxSjU1azNwU1NNQUhUdDJxQTFzbG5oNGM4d1JoWHNBSVRXdjd4?=
 =?utf-8?B?bERFWVV2MHdncTQ1TU90UXdmQTE5SG1XRk40eTA0VGNZM01wc3dMU21EeG95?=
 =?utf-8?B?SVBROS8ySUdtUnQ1eWhrVmdWd2VXYTVnMGZDcTh5ZEI0Wjhsczl1dFNBMHp0?=
 =?utf-8?B?c1Y1UnZjU0F3VnZxcVpCSjJJTnpkTGwxQlNwWDJRVUpKUDZhb3JPRW15clFX?=
 =?utf-8?B?YjZiZWgwa0NBdFR0Y20yWHByMjdPcHJPUkhUMEwwRzdOSEF5SDhMTDFFSFlx?=
 =?utf-8?B?R2JYQkMwKzM1MlNFbXZ0K3lFY0J5ZzJwM3ZhZDlMZFpKai9rYjY0cGZrQzVC?=
 =?utf-8?B?M2tya3NBUDlMSlNKT1MxZ2ZGWjQ2eDRQRUF1YmsvUk02eW5TWTVvaGIzdExD?=
 =?utf-8?B?QmFJcTJkaGttTURJS2dXaEpRYk1GNDI1M0dmQ0t0NmcrN2Vsd2RGZlI0TFF3?=
 =?utf-8?B?WWxneFgzZzdUdS9vc0ErTmhEdEtXTDVPQzFRbTN3UDBBUndic0wzbi9KbTcx?=
 =?utf-8?B?Q0s2UWh5YTNlK2pDa2JYMjE1UXp2NU5JdUZ2VjFUNCtFcHhQSHMyaVZLZzFt?=
 =?utf-8?Q?fCxA4/LmGG/r2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7821.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDZhdC8xbnMvaW5HS09ZUHZIWWNMczNkY3dqQ0REUU9QQmpUbzZxUmF5ZXVm?=
 =?utf-8?B?MXZsNmkvT3R6RXVadmdXQ0ZHMnZpNG16dC8zWWtFQXFvTDdoTjVMTGRLWlUz?=
 =?utf-8?B?WXc5TnNkZUYwUWlOTy8xZWRoN0RFY1lJbnJ2OHBjdlZQYWdwTjh2WTFpQnA0?=
 =?utf-8?B?cFRPT1BCVEhsTG05VkdyTld4TTZPc2ZxVk5XUDI4UTBwMTdXUDEzL0h1NU5p?=
 =?utf-8?B?OWJGYVd3clVqODRYeFkvTm9UaE15TWlmVGZwRTU2ZHJkMkFjZEVlZUtYdFJO?=
 =?utf-8?B?VFVydC9JWEJvWlg3R3E2VDA3c2NLelVWTlc1cjNkOFkrc01CcDJVeE1UOUhj?=
 =?utf-8?B?ZDNBNTY1UkQ0TmhGRklSZWZqSHlPUmFhTzljQW5FM29IZ1hDWTM0ckFPRDdL?=
 =?utf-8?B?d1VjVzNlQ1hkaUdqZFRoK0crVU5jM21ZdnNLK1hUdGVuNnhwWjFDelIyaWJ4?=
 =?utf-8?B?WTdBaTA2MGFnSUVxR2Y0aGQ0OUM5Wms4Y0lWdi90RFRRbkx3K1pDcHhCdE5p?=
 =?utf-8?B?bFY5ODNCcXpWc0Q3aThzZU9SbUwwcnFGRHRFdi9wTmVIQU1lcml4bVRIVndF?=
 =?utf-8?B?OG1zZFhuMXRCN1JHOGltNEFOc2dQd3ZoKzhRQVZ2ZGdONFZldEJiMklSdGNl?=
 =?utf-8?B?OXNKVEJHZXVLK0o1S2pXN25HUmsrM28ra1lKVlY0d293cDBJY0NBZWVUalFn?=
 =?utf-8?B?dnhpeUdKVFpWcUtVS2QyWlZ2eGVreTl6YmZ5S3M5Y3Njcy95bnFOQ2xZaE1o?=
 =?utf-8?B?N2dZM0ppRGJYbm5UUVJ6cm5WMHFMYVZhcTQza3YyWnBKTDVHSFVjWE9kd1JW?=
 =?utf-8?B?NG9TQW8wUVJuK2NvVG5DRE82WlIzUjByc2FIeWRCVnJRallXL1hTRVduakpI?=
 =?utf-8?B?a1M2ZVJ1aVpGbzRyTW9mUk5HSlVYRlBoanJyTE5xYyt5YnU0V3VrZVIveFVF?=
 =?utf-8?B?dVZ6UlR0RERYSitJb2x2aDMrb0lwVU5QalIyM3JDQjhjY0JTbkMxaTB1NDBR?=
 =?utf-8?B?d00rNXpNQ1kwV004SUg4MlNySy83TVJMd1pOMkxpMG8wNkhnbkppQXZkVHA5?=
 =?utf-8?B?WnZmSkJJRmx6dUNyQzdUNkxML1ZRdGN2WXVZYWUzclFmRnIxUndKODZKaTgz?=
 =?utf-8?B?TXVqV0lOZEM1VXNIYmJrZnFYeEtSTEFCZ3FFZlZIZHpzUG01T1VqNFl5UzFZ?=
 =?utf-8?B?NkhMY3FhdjFCbjBkdm55ZVJkYXRMUmE2OW15L0phWUg1U3drdk91MUpnTVRS?=
 =?utf-8?B?Mm5CUXFpMHRQcURlVXZRakNQc1k0MFhidnBWNXRWOFFWd0hKZ3FKcFZkS2xm?=
 =?utf-8?B?OG5rQzRhUFF6NlpYTUMvVHVHdHNHS0pNNVZ3bHM2cGNScGtpQ2lDanFPRmoz?=
 =?utf-8?B?UVIwempHTERmWStuYS9CWTVkc1Y2TmxwcFZ5emlzSnlra3dWWDl5V1REbmtw?=
 =?utf-8?B?NTBLV2Y0M1djWEllSjNYTU5oS2dFL2NlZWxINmJTZ2ZnMThtRGd3Q3VlWFFO?=
 =?utf-8?B?aEI1YUx5NmlVSFFVWHFDQ2V1MWFmcTRmZ003TWtzek5rZi8yYTk5NjlGMlox?=
 =?utf-8?B?RjdQaEd5WldtUkxtek9Kay8xaStCY25rL0NURWRzNSt6NmNUdExGYS9DUXhq?=
 =?utf-8?B?cmlpekRFNEp1TVBaa3pRNGU5b0o2U2ZncjNGWVczK2RacWVsN2NXMVZLV2Nr?=
 =?utf-8?B?K3o0UVVJTDVxMnJ6M3UxY0JSY2V0dTVUUEhJbGJOWEpjMjRoK3REaEcrS0Fn?=
 =?utf-8?B?bHBqdXp2QW9Bbm1OSDY4bHRYcE4xZ1VNV3RwcXF1bmZJenFYV1FBZmlWRkNw?=
 =?utf-8?B?ZmxXbW1uWVRmcGlnM2pySnU4RTNTTTNENUdaQUxKc2RWeFVYR013ZThPK1dh?=
 =?utf-8?B?d3FPZGI0U0g3VEVaTEFlQTBHNDZFUWVlRytoUnlQNHdZSXNmdXo3Rm9jMU8r?=
 =?utf-8?B?Z0dIS0dsd3Vjd0VCdHprNkVpTGt6UGQxQTl0K3dsL2FqT3RXT2s1Q1lidzhV?=
 =?utf-8?B?UHc4RVRFMHYvWHFJZ1V3YTM3bnZnd0p2WWN2VjBxL29JWVJINDlYTlFJUVJE?=
 =?utf-8?B?dkx6eTBZN2RCdmtxNzROQzhzRURYVWJMMC8vSFdiRGhDRTBGTHE4MEhBNUZN?=
 =?utf-8?B?WGZoc2VZazE0cVFkTGZRWFNBWEVBRnRnZnc3cGtSMDhOQnFwY1djM3hVZ2dW?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b9b0346-10f3-44ba-0330-08dde5b25145
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7821.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 21:40:18.8736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6IgrD2OFUQKe4DHdbsY/TGTA0vzivzyAvtpTg8gZU7dXeqLUikkBHQMk1F86tC7CuxW3l1c/Mcnx1/kzvOEF08EANO/pSiVn6KdUdhs7uPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
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

On 8/27/2025 2:50 AM, Patchwork wrote:
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg1:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17074/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153534v1/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
Unrelated to update as it is a rare failure.

> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153534v1/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4.html
Similar failure to above.

> 
>   * igt@sysfs_preempt_timeout@timeout:
>     - shard-rkl:          [PASS][4] -> [FAIL][5] +1 other test fail
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17074/shard-rkl-8/igt@sysfs_preempt_timeout@timeout.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153534v1/shard-rkl-8/igt@sysfs_preempt_timeout@timeout.html
Failure unrelated as test is often skipped on these machines.
