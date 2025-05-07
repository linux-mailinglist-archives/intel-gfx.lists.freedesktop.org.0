Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B01AADA35
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 10:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B568410E78D;
	Wed,  7 May 2025 08:33:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m04KyJ+m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6959410E77E;
 Wed,  7 May 2025 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746606779; x=1778142779;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q8dpKwxCHvcA2yZcZWjqmPWbrI0mCFgXFSwvv3nGKJY=;
 b=m04KyJ+mL3vksPfhfpbBMUIoJKHstro47cTr3nAjwtm1DTYnQk+enBid
 qFmjQDC5mQntYvizPXjGLy/Z5w19VyB5eMELz+aBVOqGq/b8Jk8CSu1gm
 ia5+bic0J6lcHJW1DMABdbg2TqpT1CVL66dqlyIFDiTdg8vpHqq7Z7q69
 QiUt78KAqlSobe1ejKb5PNslJtAAk4WJGOs/1qFIbAlR+CyDz+WK1K5PV
 C2WOUmQkm4qZRXTJt7/uc8kcmgaJlgLUq9SEJFH/fF1XC6Bx1muGB3fSX
 /RjyfheLYRcLKNqvr8Y3spJHhn6oOBboxtsFRkIbZGA5EMFdGm9vWYe2o Q==;
X-CSE-ConnectionGUID: esdIdZzeSd+cHeCOH4pULg==
X-CSE-MsgGUID: Gox0WstTRjehzUWgMjjUuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="51975902"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="51975902"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:32:44 -0700
X-CSE-ConnectionGUID: H4MnbwkCQx2VyTAcTYBlCg==
X-CSE-MsgGUID: I8Bmtoq5TTG9H6mBYHpwFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="166928819"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:32:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 01:32:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 01:32:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 01:32:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HUC+h40CysfCXlqaVf6Syq83OtzBO0KasmUro24HgWLJM+YdYy9tsrmUGA03W7L1Chvr1XS8sjpnCup6hjIVBFEY4w4pN4Z7hqJHIh/eZLKlp+3tL2qyQ1L2//hnSzVX9Habd3Hk3T83wo7+AQwyxeD1e+MIzZd9Nn1XAOEEIZ9efbLHTVTRH13APvH8PwiLG07PUHAPVYGMGZC7Z41cChC0qvdWyYzfgeR989H6VMGL8k2ge7u1HMEdiX490O0SlovZuByZJA/ohRVrt/0TkCTjsPhPG0uJa/2JLXFzL5mXweRbqJ0Dp2x4zPVN3BoHNgOqyYTwrscD5gIMThyR7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChF/6tnM6xwekKya+zB9kFWQ9UMx0rWCEg1tNOSMNQY=;
 b=NGWQB/WdCk7jzzo1l87bOxzTklNfLiSk9C4ZUyElhi3HfWPRAmVQDthU/hAZocR/K8o7bj/yfLHJYRb1uWMfEEn7wB0AJBADGevzx0+1V1/4aJvVcqwfQ26BmIfVQ62pp6+VQviOKPJOcgoE1k2mQA1b3xeU0cevpDCsyAc5p66NXn5wcojMwqQH8mjFSH7Wpa9l1//CV109g+5vqDoc9YyXGxWekE5SyHpNgeHx/JGFKA1eQ6Z1+q/ckeVvwggRc/QYBI8zUakf0L+xMFndu/zkJ2HXUWqyr3vQ2z1Ygi34vXgRafcUqyvzAr1IhwzlAioKhrUugg84mj8qVfbx2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4809.namprd11.prod.outlook.com (2603:10b6:806:112::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Wed, 7 May
 2025 08:32:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 08:32:37 +0000
Message-ID: <43358624-2673-40a5-bea3-a20958520e86@intel.com>
Date: Wed, 7 May 2025 14:02:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/17] drm/i915/vrr: Add compute config for DC Balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250506145517.4129419-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4809:EE_
X-MS-Office365-Filtering-Correlation-Id: d984883a-7014-48ca-288e-08dd8d41b8e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXM0UGJwNG5IWmtQcWx1RkJ2aG5nQjY5enNHcmpvazdQRlhsdjR6YU1hanFV?=
 =?utf-8?B?a0MxYUNYTUpWK3F1aytVR1dMQmV6TXhvNkRmOFFTbWNDcXR2dVpXZUNRZEZO?=
 =?utf-8?B?dmZnNTVYWGQ1am1uN3hpT05Sb2VzNkc3SFNQaTI4RDg0eDlkbkNBVHozeHMr?=
 =?utf-8?B?cXpGa1NiVkJDL2hQUFZ5VWNGVVQ3VE94Q1pnbm04SE9Wc1Q1cnNWWFVRNW1l?=
 =?utf-8?B?czdrbHgrRzFMYmUrUjB2WXM0WGgvWUxrZHQxc2EyTll5ckx2bStnUU4wVEFS?=
 =?utf-8?B?b3RJTTR0V1hlc0F5RXJlL3c2UEd6TTRObFBiZnFnWU9yUlZLZFRRbnJUOWs1?=
 =?utf-8?B?ZXhxZFpVdGJkWXg0eVhUZ3RXMmttWkZtTzVzcmY2enVQS3FRQWxSdXB6V3NG?=
 =?utf-8?B?MUNoM3dFNUtwblFzT3lKS1JZYlBiM1NJYWRyMTJNd0FyV3dydlpCWU93UHp3?=
 =?utf-8?B?dDdlYTcwTDI4bjZaazBqenBEbE1nYnNSL0s2SWM0K1dvVlZMcTkrTzZ6VnRQ?=
 =?utf-8?B?bm5LTnBiZkwwejZMRlNXU2wxcU1HcEl3NEdrcG1IZ3VPK3M1bXhlektCZTlt?=
 =?utf-8?B?VzVoN2V4dlVZZ3ZyODhpQVNINVVodXdKR0FBditPOUpvQWtiTnJ5NXB6YVZm?=
 =?utf-8?B?UVVONjZOYVRQazA4T2xrL2Fnb3Awa2xtUGEvZ3MybSthLzBlSmpTdnhDMTBn?=
 =?utf-8?B?L0I5dnhBYlNNaC9LMmR6YlM1Y1BnbmJtQXN2NHhEaC9EanExU2srdTlnTFgy?=
 =?utf-8?B?QllsU2pNZUc5S0t0ZHRoYmpZWC83NEhZL2V6dGIzK296SGZEaUNZamh2OVBJ?=
 =?utf-8?B?eG4wVThHSzRabzRxdWp4SnFCUFNEWmx1Vk1lb2ZTWTV4bVVFTHpuMDNSTnM1?=
 =?utf-8?B?Kyt0dmxzNTBHMUNGUm1HVmZZa1Nxa3Flb3hpTmtreXVZc21FaGVyZDNSc2I3?=
 =?utf-8?B?d3JOQVVPNUVvTXlrVWR3YVB2bmV0RWVMNXhvNU9KZ0t2a0JySjl5NDA0dEhF?=
 =?utf-8?B?K3pVRmIwVDdKdDVvd2syc2VXeitCOGxmUCt2cDBzbU10VVZqL0VuTWYwdUFt?=
 =?utf-8?B?QzNCRGVMeEQvQTdVa0tYcmRFL0VhVExpTDJtdDFmVUNOc2g3SHpDb1piT09U?=
 =?utf-8?B?czh1aXdLamN5YzBtdjZhK2ZzYmlJbmM0ZnhNaGRJeGRkeUozdXVqaG9VZ3RZ?=
 =?utf-8?B?cnhyTkduY3RINnJPQmN6aUF0TGJpQU0wVWdVWDhOUE1qeHk1Y2RGRGl1RXI5?=
 =?utf-8?B?RnNxYUJvNjhPUXluYVQ1a2t1bGFBRFlkUzM0NTQvSVJUT2d5ellPeVFUV2Ir?=
 =?utf-8?B?ajhKRFlrVGM4bldON2IzK2NnMDZYZVYyd0VMak4vN2FCTlIxSVVuTzY0aWhQ?=
 =?utf-8?B?NndONG9lL0RkMVVTOFdiYkswR3Q2MXp5aEpGVmpnQXVUN3o2bE5uUDlpNlg0?=
 =?utf-8?B?L3krVzJZYkEwMDVyK1oxMHNQVWhGa1VsL1hOSldJVExwZEV0YjNiRzFwbnJj?=
 =?utf-8?B?ak9oWEgxY2p3RUZjUnNtaFFSVWptbnFkTzRsWVVyZ25NMHBJZGNSYm1EWHpC?=
 =?utf-8?B?Nmtra05DT0JsaUkyZ09Ea0ZpTnpPdVpOMkg4RFJ6eVc3THRRMWlaQnlSeDRD?=
 =?utf-8?B?TWNKdWtydnlNQ0tZMUh1Y0JNb3lsYk5lZlFsZDJkMVFCYnVYRGRRYmhJRE1v?=
 =?utf-8?B?TDJGY3pqeTROdDBERVcvU1Eva0M1S3dRMDlBVHVhcG1MSjBQRXFSdXNCSTU2?=
 =?utf-8?B?YWhUNnNUMHpEWENGdW5tczNQbWJ0bVJyM0x4VEREOGRDQUZGa21lR2tsUW1h?=
 =?utf-8?B?c1RCM21EMnRLaWNFbExvQW41eUl4VU5Ka052aitneFNoVWErZG9uU1BVT29o?=
 =?utf-8?B?UGF1YTlaUnhUU0xHSXo5QVRlZEZ0ZXRzTUhUK1FQenVmUEVMUlBpYTV1Wi9X?=
 =?utf-8?Q?FRpfEhyL9gM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0JjNHNMNWxnRlBNczBzM0Mza1JucmtTNDJIVHJwNUtiQ1NYRTJUb0k2SzlE?=
 =?utf-8?B?WmtERXV0TUt5c24yVThyYW9pQ2swQ2hkN1hUbXJ2NWFJWDFWWnhoU0M2bnVv?=
 =?utf-8?B?aFlDOExtNHFSTlBBUmpyUlhBdWN3YmxndXNIOE5YeW9jMmhRcU1lSmNhR0FK?=
 =?utf-8?B?SDhWZTlsdi9mQ0w4N042UHI5cUQ5UTJKRUxzVlUxcnFleUJvcmFiU0doVmdE?=
 =?utf-8?B?Y1p3UzJlNm0wSk5hL2xoa0ZJd1BRd0NpNDBzOUtxdUFwMC94UXEyS0FIb1VC?=
 =?utf-8?B?dHYvQngzN1N4Q24zRU9jTllwWE5zaG1UM3VHQlBoc3ZwSG9uL1B4cGVPYmVz?=
 =?utf-8?B?c0ordTBrWkFPTEdPWDRoT2pHNUlnbDU5UmhwWEpHc3RaTisyQUkvdzFETU1X?=
 =?utf-8?B?c3FpNEwwZE9LM0F4b0RLVU1UdHJQU1k0UXI2QTNHMVlzbWJVZU54ajRSeUtj?=
 =?utf-8?B?QTN1ZHNHQklZdjZMMFpTUFBLZWtSQm5qbVVsbWZMMzNoVlBzK1hYblFmdHo4?=
 =?utf-8?B?ZjdIU3FBSDJteGUwbDFSSlVHMkFoYzVVbW44QUNvajkxOEt4TVdyY2VYMXhB?=
 =?utf-8?B?VjlEMWlxNnVqcm9rRnZRSUZ0c3h1MGVrK2xsR1dxSjJxU21ZMVZEMDE1KzB1?=
 =?utf-8?B?TEo4Q253OFdlYmVUeTR4bzdjQWkwMjNiS1BXdFJKeng5WmxlaW9CUXFwOFNH?=
 =?utf-8?B?WUswdE14ZC9qRkk1OGpDZ0NDZGZKMllFemJWNUp0ZnoxSkMxU25PQ2NFOS9P?=
 =?utf-8?B?cVNKb0VXeWpLVTFUSjVVc2lnbHpwK001UE5IODJCL1UybUpQSys1QUUvRUNI?=
 =?utf-8?B?eHFmTit4M2xIR0F4OVRmU055djZmUDZZWUFaclZmb0VtZ3lEaE81UHZRcU5w?=
 =?utf-8?B?NWZFTElnSEYydU9ZZmhoTFdTTFZXQzdWbHYvNW4wZWVSZi95WU1yejZ2Y3hU?=
 =?utf-8?B?SldtUklhTmFQSnVna3F2S2MrZXJNank1Z3AxUnZVaHhXdll5aCs0Y292R0lC?=
 =?utf-8?B?bFkvVFh2bFJiT1JXc1FkdzJydlVHZFNvRjZ3TDJqV0pJQi82cE1NM2d4YWdt?=
 =?utf-8?B?WUlLZjlYa3I4bThXSlgwQWFGTjlyYmdlMEpUb2xrYXRwQmZKa3VuSk1rUjlu?=
 =?utf-8?B?ejM3SWE5REtLSWN0ek5kTjlLOVZtNjZzdFhNZzVGSFEvSnc5cllURkZRTEE1?=
 =?utf-8?B?ZkNqQjdaVzd0S0k1MDdBbkZnY0k3ZkpYRFRJeFNXUDZVakdjK2pXMFZVUCtJ?=
 =?utf-8?B?SlBJUVgvU2Jva3ByWEt3N0hTdVo5YzdabHZlL1d2WUFvR3UyaVhMYU5XMndu?=
 =?utf-8?B?ME1JS0c4dkVSMWppeFJybUM5QjhIeVBHMWpLc1ZRbHpWT1VJR3hsWnkzMWFE?=
 =?utf-8?B?cG96Q21oUnprS0pHUk03eEN2c05lQzFrNTUvQXBTcUo5QUljRG1nbStNWlRy?=
 =?utf-8?B?TFN3ck5HVDJDRllsUStpaVh3bWhUSEFQNHd6L3k3bnRIK0lyZFhWZXYwUE9R?=
 =?utf-8?B?NXJqbzlBSjY4OHA5U3FmcXNPcUJrSUVCYm1MSFh1bzNJblo1TGhvWXV3VmZy?=
 =?utf-8?B?OVM2ekU0TmI0QnF1ZkVwdURydjVIbGJwUkZIeVprcElzTE93alJsb2c5dzhB?=
 =?utf-8?B?Ti9sWnVMaGpsR1c1N0VNVjIxcFh1WVd3TWY0VDVOeG91dXFpb0FkMml6QTZF?=
 =?utf-8?B?Y1lpdFVWdEpLazNVRWZFbWVad2xmTGEwMFJoTnI1ZmRJRCtvWkxMM2Ztdkpv?=
 =?utf-8?B?d0RzU25jSG1OdjkvYnE2OGJyNFRQTzcvb1BUOUpTZ1VuVmRqVWk4QzZlQ2Z2?=
 =?utf-8?B?dlRHZ3hDSkN6d0g2ZEx3TWl1dEhiaGxEU1FMR2lZQkluQXRDTE1oSDlRdXhi?=
 =?utf-8?B?VFRBcWpBTmRNRFA3K0ZxenpWOE5ibmNhN0x1YlJLZnlnY1FYUGk0OEZCRVov?=
 =?utf-8?B?OTl4WCtZamZ1K2hlRUlDS1lWdmlLSHhlQ05CL1o3aW93WmZYYjUrVE9DUzh2?=
 =?utf-8?B?ZzNRZGtWRzJmRzVVVS82akpROHY1cGZnOHR4U0MwZ041ZUo2U1phbkdSYU4v?=
 =?utf-8?B?SGp5VW9MZlBzRGQ4bllTYXlUOHdON3pmTS9hR29nRjVnRTdYNmI4eXNxRVRE?=
 =?utf-8?B?VnZ0WXdsQTJVUjZhRG5WdGRaRGdGbVA1eElhWWJ5YUlZS210MnRrc08rVnVS?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d984883a-7014-48ca-288e-08dd8d41b8e4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 08:32:37.4445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RFFtnXI19/fhY0ajs4CEiyUnYv5hYaymMP3dZxfrUx8Z5qVXReFBblYm9CPsSTCQvt8JvFfMfFCoTutkm1N/GDgpc4dt4qTPkTLb8id4FTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4809
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


On 5/6/2025 8:25 PM, Mitul Golani wrote:
> Compute DC Balance parameters and tunable params based on
> experiments.
>
> --v2:
> - Document tunable params. (Ankit)
>
> --v3:
> - Add line spaces to compute config. (Ankit)
> - Remove redundancy checks.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 726fa49558d1..dcaae7631b0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -16,6 +16,13 @@
>   
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
> +/*
> + * Tunable parameters for DC Balance correction.
> + * These are captured based on experimentations.
> + */
> +#define DCB_CORRECTION_SENSITIVITY	30
> +#define DCB_CORRECTION_AGGRESSIVENESS	1000
> +#define DCB_BLANK_TARGET		50
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
> @@ -409,6 +416,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_end);
>   	}
> +
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> +		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_increase =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.guardband =
> +			DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
> +				     DCB_CORRECTION_SENSITIVITY, 100);
> +		crtc_state->vrr.dc_balance.slope =
> +			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
> +				     crtc_state->vrr.dc_balance.guardband);
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
> +				     DCB_BLANK_TARGET, 100);
> +	}
>   }
>   
>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
