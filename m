Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A5CA04175
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE27A10E268;
	Tue,  7 Jan 2025 14:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pbt1Z+JZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F6710E268;
 Tue,  7 Jan 2025 14:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736258532; x=1767794532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/C/ZKddzBVSUWDiNOwScmEHqYn+eGr5QsTdyY+XMHg=;
 b=Pbt1Z+JZaspwx5Rqp4vcsHkzowPvYAyqQ8mISwxlX3PpZWQT9F8tf7Yc
 2QX5o0ZS6f7f0ezvPJyTvQRQYW+IlvyBVOnOY7pLNuN4zB1k8LyskmJ0w
 l6sdZKhwM40AE6/ChzPT+SCROWadZadyFNZIrqfXaKpm+TfwlyIG3BqeW
 kzMenPLu+eKdUo8QAXBlauYMgmkmh7NiC79t7lLAIiOEP8AKn/BEr+Jvz
 9mMFWNukI7wA1HN0x91IJ9PGpZO9oaZ5tzF7pftaEYawDTUOwH+O9J0n/
 463Bp7CfAoBgaX5ei2gn5ZBD4RlykOUsveTgh+DboeZUm5ODg3QDs0s6e A==;
X-CSE-ConnectionGUID: FAc7BqpZRqifsGyfmKAOJg==
X-CSE-MsgGUID: bF0md8igTs+0TSARk3MlHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36321143"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36321143"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 06:02:12 -0800
X-CSE-ConnectionGUID: IiUpcbWpSce3O8o7rvK4vA==
X-CSE-MsgGUID: erlrwnPUSuaAwvPwhOmEhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102598873"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 06:02:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 06:02:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 06:02:10 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 06:02:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=votiFaRoAu94eYxqvsyJiIhAWxg/dF2fHZmWL2RI2qjlLzoKQ4TR7FnQjh7kNhJsO1k1nXAl+mWVBrEjdcMQAO8moHdG8UVK9IKJn8Np1pCNGdRwi8pntvoUVdcz0WYE7diBzX2Lj0V7eN8v3OAs8bcE0RFRBO0uyB+vmiDzIFZlFOQ7NEcIaJ8W332qn3VlAhMIa4IKARpHklSLsDhZkOkag/zKHaLkHXa48Wc9i3gJnyUoOkuKU3npjqSQSMmnyj2Jaj2e3zMZuqALSdn5sKR027CGGyypfi84jw/h720hQOQEbLjGKk9X52gR3HsiYRkxRutVNkR4XbxCcy3INg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RvRWHU43BvUXPkoQ6rzdM6QUoqVlmjkkQvNhyTwP0sU=;
 b=LCfFkVjscsQr7JoHshfzlC/pi66ZathKKezNten6WAM9utmfc2+g9+yaf9yPhIttPBc6wLjx0lQ1wEYt8mdgeJuElMOYG/SJpDB91US4J6HkIUjUmmREYXxFNhzBmldXIvX6dpCr/xkSFK5XMIC/ACwuu8cv9fLUcJYQIeVGVWeVVmYpSDWjm9ISsdIlDcnk9Bpy9qJV8vqUZDepjekMAjGMtP9qEoRHmuafjl5SK2mvcsPD11143h3pGPn5rzcZDurr67ZizSRsNCqDXlkT/jDLHB8t4hfMBFVAN1ik3Ht9iITigpd1HFAQgZue5AftX/pxKSgkQjeMvs1DWZSkWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by MN2PR11MB4709.namprd11.prod.outlook.com (2603:10b6:208:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 14:01:53 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%2]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 14:01:52 +0000
Message-ID: <6044f5cd-a5a4-485c-9db8-ead5d4339fa7@intel.com>
Date: Tue, 7 Jan 2025 19:31:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250106165111.1672722-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250106165111.1672722-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0106.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::14) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|MN2PR11MB4709:EE_
X-MS-Office365-Filtering-Correlation-Id: f492854d-ba7d-48ae-6cfe-08dd2f23d676
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUJJaUVzenRTTXp0cm9Bb0JPUFJMc3FGajI2eGpDeUNMUlVrL3ErVXNWQlo1?=
 =?utf-8?B?TDlacSsrbGJ0akNjbzJhNFFNTXdXVVVjOGpMODBCVXc2Tld5NElSaWtwZTJj?=
 =?utf-8?B?VnZNWnJzRCtjR2RnT2lBME5kNGg1V2NOc3huV0JOR2tpZTFjMUlUUVlUaFI2?=
 =?utf-8?B?bm5xWXlmaHMyQTE0ZC8yV3kxRWhNZTlVL3ltbUNWaTRiNjJad2FBeTY1dU9D?=
 =?utf-8?B?MGkvbHlPQWFxSy9KV3pTejM4WmNXTkhnMmlQTjFCa25yN0oxVGxZUjhwczN0?=
 =?utf-8?B?Rmd4YVQ4QXFrZGhnbk9JZ1hWZE44T0h6VkhaMkYwMFJHbjZJdkpZUkdOeitG?=
 =?utf-8?B?WGdTaTh4dXh5YWNxcVRrRUk1UFZvdE9RM0QwQ2lCZ1lRZWZPSjBoR2lVQ3lv?=
 =?utf-8?B?dUVTSmpmcU81U204YzkvVVVjVERFeXZrOUJuOHdLcXJ4SzNSR3J0blZlb1k3?=
 =?utf-8?B?dTNRckRTTDNwYkxTMGx6OFVsdEJuWWQ0UzhiM0pNOUN6bEFWaGZXLzlLcUc0?=
 =?utf-8?B?OHg3UXBSKys1QWE4ZnlMdHZMeC84YTdrMWhoV09xYWRxNHpoOFJkV1paWVo0?=
 =?utf-8?B?UnBzcjkxMG5lU2lBY0k0aG1FRFJJVGtJTUhnbGVwU3NRd05CRGdKN0Rrajht?=
 =?utf-8?B?alUyM2J3Sm9lVjlJaDFqQVdCN3BvbndjWkJ6cW9XV2FyV0hJUVRWWEo4S3FM?=
 =?utf-8?B?eXpyY1JFMEU4ZnVnQ3pNVUJCQkJ6WG1CZHVYc0J5MHFtS1UvMVNFQWoyYk9C?=
 =?utf-8?B?emRxa2llenNQS0UrRFBGcmg4TUhyUFhzNXpxdkVySUwwZnJzMmh0d1lQRm1S?=
 =?utf-8?B?VG9aQ0FyWG9jd0VRRXlpODFzUWRLVkJ1RFoxVmZldnUwV2tVbjExam9kNVlv?=
 =?utf-8?B?QzdMaW4vM2JZeVEweUFUUlJ6WjZLSEY0YjdIS1I2aVA1dHlrZ0FCUUtFRUV3?=
 =?utf-8?B?Uy9BNm41bitPSzdkb2pudWdTTVhaZk41bnFTUmVGd1F3V0YyNXlLWm5KVmlq?=
 =?utf-8?B?OTl0bmMxQkJ3UmpPdWZIZnhhWHRCVU1WQUlXNUxzZEVuQjBicHQwTFJKN3la?=
 =?utf-8?B?YW5udHJZVVAvQzU0SDdIWFFhWVpXYUJ0ZWYzdmsrL2gwbzViYU8zK2FRODNz?=
 =?utf-8?B?WE5sajFqdFlMRER0dzVsaEhOOWEzNVBKdTFKZmlGa0tCR0t2UGV4MG1RbnQx?=
 =?utf-8?B?d1BiYlBlNDhwdDN0RUExU1ZKNGJWU0pUR1poc1RKckx5RVVVMTl2emR6aHpP?=
 =?utf-8?B?MWJxNXJaZmk2RXNNMDV0U2ZRSWxlSGVYbWZjcit5RlY2a2ZsbitrVFdqRG90?=
 =?utf-8?B?Zk9xdjh5RXlhL01PL0pObExUWXZOM1UrQ2w1S0E1cnhWMm5YTXF6WXlHRktV?=
 =?utf-8?B?WnlIcDhmL0owUW5GQXVTVjVGeW9YREhaSHBkeGt2aWtCYmRTUjRCR3JaUFhN?=
 =?utf-8?B?TlZMdDZ2QW1HME9XQTNCbjVpeTZZUURKV3JITXhLOTFpdUpWVjk4Mll3VDgr?=
 =?utf-8?B?Wkp6cXlwTHBiQ2ZRZWRVVE5uNUE5N091N1VLdnZLMkh2dThTREFKQzkyV2Nz?=
 =?utf-8?B?V1llNWdXQnFpa1NiOVUzZE9yM2U3R1gwMDRESng1bjdPUzA4ekdkMFNaYXRj?=
 =?utf-8?B?ZjVuc0xoS0tKbzBRcWMvM2JLOFZJaUkvbUduLzhjVGYvWGVSMG9zcEUxRWpZ?=
 =?utf-8?B?Z0RhelRSQk1ESGZoQzVieDV6ejVwYzhyRTczSUUxR0l0WVlFR2pSUDJpSzlC?=
 =?utf-8?B?UjJ6ZkNwSk5MMHA1ZXg0VUVmV3A4UTdneDltRi9OUWlxWnJ2TC9heE15WmZG?=
 =?utf-8?B?aXFKbnJGL09JeWdoSy8yVDUyMklKOE8zdUdQRXVsQmxsd3dHdkg2RHZDZGhN?=
 =?utf-8?Q?LQDUlAQeCdmDu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFloKytOMEd4RTdxYUtxblVhOFRJUURQb0ZPWmt3VHprNWFJcDVZUE9pZUMv?=
 =?utf-8?B?M09WWW5sQllWaHROeDdFL0t2TFMyZmNYNEhhdjd0KzFkaGRibnk5c2xkZDZy?=
 =?utf-8?B?dHozcHVzZE8xWW5YYWdTMXBHZUlvTElLQ0hzcmRmTFpiek01UGtlY2N0KytF?=
 =?utf-8?B?Z0w2SzFpU2JFbU0xbzJza29uV0F2MkdDWVppLzhqbmZRUHMyclFBQXJmWlY1?=
 =?utf-8?B?WW1QYmF2MDYvQ2UzRFNONlpxYThDdkFLdlk1a2ZNTGRmK2dJWEkwQjZZenYr?=
 =?utf-8?B?bnZ6YmpNSTQ2OUloWGNDOHpveVVPUHJ6M3h6VDZkZW1kWDFScWRiekRyY3FK?=
 =?utf-8?B?RnJUM1hHYVJDdFN5WDlBSlNSeFhnQ3pJVlFPeENHcmt6eGptK2xhRDRrZlJS?=
 =?utf-8?B?OUtUdWlIdjBveE5EQnljd1BJRWRBYm9aSmM0allwTko1OThOdDJURWp1b1R3?=
 =?utf-8?B?akZZWnlJUDFheCs4enlPOHBCR1l2cEtDT0o5ajFGcCtyTVQ1anl6NThRQjBw?=
 =?utf-8?B?T1BCdlJzMVJyWHV6TktCRExCUmlOYTB0cHpQYStBaStkSklWNm9YUmhIYmVi?=
 =?utf-8?B?aDZrLzZET1pxRXh6MG9Ga3BJK2p1SlF6ZSsvdmhMMkp4SHZiMkhmc3FpMkVu?=
 =?utf-8?B?bmRnMUNPam9wTGhqZ0M2T0hVWkREZm1pWm93bW5OWmowZFR3NGg1VkNUWlN4?=
 =?utf-8?B?NkR3TWVKTHhOcWcxVUVkYzByZGFTWER1OXdSVmN0dVJ0ZWsvN2xPUEdJM1BV?=
 =?utf-8?B?S1c5amZvWlBkYndjdWlIdHlETlRVSGRlOWF1WG5QQkFNTjNFL3B0Q0Z6eUdz?=
 =?utf-8?B?UUhPZ2JCbHpqWi94WE9qdE1NL1lVOUFqaUhiUGhrRmFSdW9NWitpOVFUOTQv?=
 =?utf-8?B?MjFCQUlsd2ZvQmt0U0xPTWN0L2dQUW5HeXV3UVYxSExiL205Z2VEOWFscE05?=
 =?utf-8?B?RlM4S1l3VXVlUzlsdlBIYTIzZzJtT0VUSzNkVE1xVjV0anFMZnE0eUZxVXl3?=
 =?utf-8?B?dGRKdmgrTkdxR3k5R09SL2pKMGFqVkNLN1ZRQmtZT3dCZlViNUl6SVVDNmpC?=
 =?utf-8?B?ZDBFd3Y3UVNOd2FDVTR1TGJXdVpoZEp1N2tWUEVuSW9DR3VTcEZXNmptcEJu?=
 =?utf-8?B?bzhGL0g2VG9oS25xT0YzaHVLczcvdDU0aS9tOXR0a2hLMXpFaVhzN2pVMEM4?=
 =?utf-8?B?d29sRlM2RmQ5NzZIdGlTZHIxd1pIeDlvMHpFRlJ0WEFONmllb2sxbFdscC9w?=
 =?utf-8?B?QlgwWUMxdG1GdFphM2xpN0hVNWtVU2ZUQlVsRXhTK25oWlBJS1ZYWk0xQUo1?=
 =?utf-8?B?UURvQUpmUDlMVkpFc1cybWFvOHZRYkRoaTcrQ0NwNVVZTThMVFppRDhydkw2?=
 =?utf-8?B?M25BRnN4NWhpSlg5QkJZNWdiWExOUjJtcUljczEyQnBkUUVSN2w1RTIwZGZR?=
 =?utf-8?B?dDhSOU5KSWJpNExWbkhNdkV3VDFQNUR2bUlSeU5iREtOUnMrc3c5MGlNSGNQ?=
 =?utf-8?B?QTFzYzI1Ni9DWlo4cmpQWm9LTjVmZlpmaGx6ODBBWDQ3Z09RMkpXOS9oNkNW?=
 =?utf-8?B?U3IvTlNUU0RVeENmWFRjc3Zldi9Cc2NkRDFCbkVMK3VTSlpHOFZUSVY0U1pt?=
 =?utf-8?B?N0FSSG5lMUpsSGs3MTVQRzVNZGEvUXBJUm1GRUNZM1c5Z3Mwa0xrd215YTBP?=
 =?utf-8?B?YTlaS1B6dFRaVkVaMHlnY0c0ZmZDcU9ROWIzQ0l5U0Jaem1Kcm1QWWh1T2Rh?=
 =?utf-8?B?RWpHS1hTTEZXNnRiWUV2U2loSHVDTGtwNkQvZlBHRE1kVjdpa3BWOUVKWjRD?=
 =?utf-8?B?QVVzbWtNdmk4ZzBLTVo0SGlYKzY4Q0VIWGxpSFpzUktKTGVEL0V4QTJWYTJU?=
 =?utf-8?B?ZXJyL0pKZTJTNllwM2Q5cWt5aUY0NGJzek9TejM0RUM5cjlQWHVIRFZvYVJs?=
 =?utf-8?B?c1pMOUVWeE05eGl1TkRMSC9hbWdpSndZeGhTVERsYXJJbjZDQzBZekRPTVFY?=
 =?utf-8?B?eFBQa2Fwb0JCMUhXY2svZGZ1TWxzS3k5UUwwNm9wT3pEM2lHV08rSU1EZGVD?=
 =?utf-8?B?b0VnUnlIMUNaek90aml0eU5SNDJ5OFNrZGV3VnZmclZlRnFoMStxSFdKUFZl?=
 =?utf-8?B?YnZROFQ2eWQ4dkd3dDZEUWZrRVNzZzJoWGZjTkQrdWN0eVVHNVQvcmhOcW1m?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f492854d-ba7d-48ae-6cfe-08dd2f23d676
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 14:01:52.8413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ffsml0D51k5nknXlpUocBeC5XYjCrM8jpb2XwiJZ/s8PJZPhenMnYpC8MEOsPxM74Tv+cjOd5onzvTeWsiR5VLeXxC+dg+W3GwCeNy9yzXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4709
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


On 1/6/2025 10:21 PM, Mitul Golani wrote:
> Check if vblank is too short for scaler prefill latency.
>
> --v2:
> - Use hweight* family of functions for counting bits. [Jani]
> - Update precision handling for hscale and vscale. [Ankit]
> - Consider chroma downscaling factor during latency
> calculation. [Ankit]
> - Replace function name from scaler_prefill_time to
> scaler_prefill_latency.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
>   1 file changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 29e8ea91c858..95f60819fe0a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,36 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int count = hweight32(scaler_state->scaler_users);
> +	int latency;
> +	long long  hscale_k =
> +		mul_u32_u32(scaler_state->scalers[0].hscale, 1000);
> +	long long vscale_k =
> +		mul_u32_u32(scaler_state->scalers[0].vscale, 1000);


I understand you want to retain the precision so multiplying by 1000 
makes sense.

But these values are left shifted by 16 so to do any calculation need to 
right shift by after you are multiplying by 1000.

> +
> +	if (!count)
> +		return 0;
> +
> +	if (count > 1) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 ? 2 : 1;

This should be YCBCR420.


> +
> +		latency = (4 * crtc_state->linetime) +
> +			  (chroma_downscaling_factor *
> +			   DIV_ROUND_UP_ULL((4 * crtc_state->linetime * hscale_k * vscale_k),
> +					    USHRT_MAX));

Need to divide by 1000 * 1000 here, since you multiplied these earlier.


Regards,

Ankit


> +	} else {
> +		latency = 4 * crtc_state->linetime;
> +	}
> +
> +	return latency;
> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2302,6 +2332,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	/* FIXME missing scaler and DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
