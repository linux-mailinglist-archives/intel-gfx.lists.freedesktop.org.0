Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4B6B9583A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 12:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0083A10E5E3;
	Tue, 23 Sep 2025 10:50:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OyG3SqW+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CD710E149;
 Tue, 23 Sep 2025 10:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758624653; x=1790160653;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ho+9vH8eRQjnSh15kXrmN/5UCQFvmXbBjYVCxGN5PSA=;
 b=OyG3SqW+zMqfWAHu5umnaatP+l/VBM8MC+tbCEa/4kWzXbBXxsc5Rd0m
 RkLA+IzlQp9PfTHHJF0rBj/9vyJp4GPiFT01MxU/ram4krJ8391DecONB
 YJA+fCHKa5q/2TovfgmlC14/F26n8a75K8r1Mmqhb8zUDSNInd1+8jSW1
 RKmJVhwjZQfApyBSCaMmJ1kHZMRUf7D1I6HmR8zpaJDnlv58jWUiwnI5X
 UOdNMlT7ynqr8rrxX901wP98ZRALamjKGUAlwcNmGl/o5IyOPaqdQN3hl
 xJznAnbJ2oZCw7DLR7zh0ofXneu9hej5PNLrouO5FaK7K9pmllb62eQnG g==;
X-CSE-ConnectionGUID: CBHVpvRNScm4XwMjljSBtQ==
X-CSE-MsgGUID: Srlw/vQUT8eLS51wkOKE8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60952504"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60952504"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:50:52 -0700
X-CSE-ConnectionGUID: nA04SY57TjexkF0GpXD9og==
X-CSE-MsgGUID: Ink2SCQ8Sny9us667RPhAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="175864831"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:50:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:50:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 03:50:50 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:50:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q1Hz3t/xqwyX5RY5YDsj4rhrPzYt9UA9u43mq0bIao4oQD8MW1BDQZUG6+fGIQi3KL2RdXVBHy8Hc4h0Il767CMpMFSNFvuWs+Ug4HAQVaPb1PEBy08qP096tYH9kr5ZTI1SjT0+jqL9MroFBnss2KAhTnv0uu71wxI5kQHHG1clq6DQ/6x/9QNgvcGMnyctxo8G81dLQlaCBJqZukKkS2oC4QMSBd8iquGbWvfSOu8o/ZXbZ6wcF/5x1EtuDDyvYYV4834MijQ9+69TwT/6BhsRaxDaA+l2m0UI5pAzE/6cKx+rjomiZQ1tlApJsd+KDKg1og38p2rNONQGr5HzGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgxDVV5G11OfbItGaTJIZDu4md3TPx18CmPHoc/+Tgk=;
 b=pFJugW/JJpnWw9EOoXWQlMNjfXxZevd6OXP1+rbDVVrT158WMEXjIAw3ExGvWMef5MCgr8zQGs4CeUY987cmu/DgPH2gisI4sa/+4tYJO6GKcCDmEtUSWEE9JotxFXliYOTFrwqPN5MwR3/caW/TtP91wcCb07jGLDdEZ1/bfMFpmCvNQe2GqepZxaGdWKnqcmdepGC/rXbKNwlRE6MCH6orwq7uc0pQll1GlNGuYOiSw1KVEbGn3KPUbUsY76w5xX15AW9gZqvIhg6kaiK8sdNnofJO2sv3snD/7cVv3ffAybcrRNr9fJgGzg9KThXx8glD66sSHcWngALxzykCLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 23 Sep
 2025 10:50:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 10:50:48 +0000
Message-ID: <9e68c71f-058d-4bf0-9eaa-5f6423c552d6@intel.com>
Date: Tue, 23 Sep 2025 16:20:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] drm/i915/display: Use set context latency in evasion
 logic
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-7-ankit.k.nautiyal@intel.com>
 <aNEiXtXdiEXSxGCn@intel.com> <aNEwywBIvZAhqadB@intel.com>
 <aNEzOW6RiIXguKbg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNEzOW6RiIXguKbg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: 93e73c72-d08b-4f13-9af0-08ddfa8f0e11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2g0NUY2MFRMRGN4dVVDb1JzMXZKQWFoNWZ5aWlmQ1hEVVVVellPN2htMG1I?=
 =?utf-8?B?dFNOZDdBNXRkVmo2b2NxYTJvbWNDbEpFSm9aa3ZzaHZiT2xvdit0eGVWZWRv?=
 =?utf-8?B?VW1sTEJWdDJuTFNMTk9Ga2ZQc0hnc3QxaTI4QlNuREpZNi9QaGV2QnRKbkdY?=
 =?utf-8?B?T3JJK215M0ZZM0FEQkhmdUViSFZBZWFjbW1UeDBGbzFLTENOeGRwYktOczMw?=
 =?utf-8?B?SHgwUFduVFlYUXd5bkhJK2ZsMWZRZ0Zxem1yU2FMb2p3VXM3RForbjR5TGEx?=
 =?utf-8?B?bXl1UDlQZkMyWUtYTEk2V3ZqWmdha0RtdndTQ0lHUWpKbFdaTWRTRTRERkxS?=
 =?utf-8?B?WklHeVVNVkpvTWwxOFdRL1hQTlRlZ3Z3SlBTaG91c0gyNGtOM2xleVZlcTB1?=
 =?utf-8?B?ZHpMa1Q0bzZQZVBYSDVMVHdDWHJWUUJPbTZGaEZLRm1paC8zWXNBMzJyVU1m?=
 =?utf-8?B?U0tTNXh6WDh6bjBpcUVkc3dRMk1JY3JFNFRNU1REUVVVeW5xNkxRNnAzSUdL?=
 =?utf-8?B?bFhwUm90dnJVdGpIQ2JraVg1OEwvNWtuaGt4S0JYUE1CeEtUeHQ0MTJwQnZr?=
 =?utf-8?B?K1E0VXVsYXB1dkJkcWVhNGhhYXBPaTE4c1FROWNINTZ1VGswL0JYbU9lSCty?=
 =?utf-8?B?UHRDd0ltRnZrSFpSVTF2MFM0NnNEVzJFNktCbEdrNjNJdzZRck9ZR1ZNMFRz?=
 =?utf-8?B?aGhDUzNvdEIwZjJsYmVWa21KWmt1RDlwZm5zWUNLT2ZieXhaQmhmQmd1RTdi?=
 =?utf-8?B?ejNBaUJrQVN5MzV0aTFqQUExd2RESU0rT1lMTkN2N3gwdjBMZStIdnoyaVJ0?=
 =?utf-8?B?T1JlbERURGxCQy81SVkrSTZGbEFKTTZYU2QybUkrVXBscjkrYzNBM2xSM25W?=
 =?utf-8?B?Y1p3WGFDUDFwZ2sxck1zM0ZZZTJMV0RnTmxUSjVmenAvbnBuN0ExYTkxd1Zx?=
 =?utf-8?B?Qkp1UEtsQ0tweWZEVVpzTFc3S3VuRlFTZGwxZ2Z5emgvREJ6K0VZdk1iNjhD?=
 =?utf-8?B?NTVMd2ZhMUprYXhXMTNqMTB5V01FZDZzVUJUOTVnR0M1dmxhNUp4RUZlZ1I5?=
 =?utf-8?B?ZTROS3pGOVBsM2wxTEc0QXlnRkFkd2VIU0VjdHNJMFhmZ29iSTU4NWQ0YXFV?=
 =?utf-8?B?Qks3aEFzUzlDYVAwVGVTMDhyMm1wV251Ky92cEZkL0xiK2M2QjQ2K0tIRkdt?=
 =?utf-8?B?MGJOcXJDeCtwVU9kRVVjZnl5VFFsbWlqL09oVGVuUzQ3Q0Uwdys2Mm84NDNs?=
 =?utf-8?B?cHpHZ2xidXU5RHA0dmt2YnlNSkprYnB6YW5SQWkvYVVZWDJveUxaSjR3TG1p?=
 =?utf-8?B?SmdiMkFXcDhQTlE0UTYwWDJNaUtaV1kxT3RIWUErblZNa2lSdmFEUnowL3A2?=
 =?utf-8?B?QzBSUlVSOEZNbUFITFR3MlMrNnRGYzlGanlVblpxMWhDZFN0aFNvdlovTXMv?=
 =?utf-8?B?c2dacDVsUUdRT281ai9qSFdFdXBZV2RSd3dFN2ZEdUhJc1p3dklFVk1zeUs1?=
 =?utf-8?B?dTVRakU3TC9VelFEeHo5TFBvdDZveFVkVWYxTGZvTi80Y08xRnlhdTVBZTI3?=
 =?utf-8?B?c1NVM3B1cU1xMjhoSXZ3akdwRXd6eGg1dzlSb0dXU09KaVc5VjQ4LzMzc244?=
 =?utf-8?B?ZzBQWmVNVFlRMnM5TVBXa2RnVnY5bHdEQnNsUnBBVXZ4QjIwbktUeUdtelFq?=
 =?utf-8?B?RG5VYmhZdi9MZUs5R1ZMSjYzb1BVRTV5anl0eFFDZk5UeDdYUlBQL1JtbFJt?=
 =?utf-8?B?RmRaQ2VYVkloa2dzRDllb01LemxlNjZRcllBaFBJNzI0cTVUMk9ZcHlDUjdv?=
 =?utf-8?B?SXNDa1d6dDNFZGRuZ3hLMlFKRG8zeC9HVllXdTJkY2l0d2xCck42SXcyWnd5?=
 =?utf-8?B?WUZiK1pFaFFacFl1R3g1bFJlU2Y0dVFidExHdEY4a3dDYUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHMxSHpPMmxBMi9pc2kvR1ltVFVNc1hKL3ZZU1BEaEJ1M0xiVk04RHcxYnJ3?=
 =?utf-8?B?Z0JpR3FuRk5obW1GZDRkM1MyRnArTGdwUFhIYkwyK0xJZGx4bWUxa0JJcWQ3?=
 =?utf-8?B?UG1KM2xPUTg3WlZMaEFOaEZJL3ZQUU9Xcy9ldHVLV3dveDBHMjZ1ZXVkRzli?=
 =?utf-8?B?QnZMVmJSb3RNWjlDQXI3VXNFZjRNUnZlclM2QjJpcit1Rm5rS0RuTm9DRHZw?=
 =?utf-8?B?VE9OcUxEN01WMFcyc2dVZW5pK3N2dmY2aFNxOGQ5ZnkwZEZ4OXRVOUxXSmFr?=
 =?utf-8?B?U2kzM0xSVXhYNSs1L1k0TW9sdjlkaFFzZUlyVnlYamZoSi9KY0hEVEZrL05Z?=
 =?utf-8?B?Z0RlWWN1bkFNWnVPTEVhVklJMXNRZ2ZuM1FrU3p4YkM4cjZOQy8xeGhRZUhs?=
 =?utf-8?B?Y2NTUU95R0dWZTgrZndCU0d0Wi9uUWdSanB1MHE3NXdtSEdzNlMyOWNFOE1H?=
 =?utf-8?B?emZkRkpCTU9NYjlHY0hNanJyQ3hCekw1SFJab0xZUVJaTGhZSXhQVTJ3MHR6?=
 =?utf-8?B?OTZDaThZZ1JkRUlGN2tXcVNEM1FlVFJCMWFwaVQ2YTRhSzNSLyt3T0I4eWVN?=
 =?utf-8?B?R3RpMDVTTGZqUzZwRXoxcUl6YzhSdlAxY3I5T1BLellnUmttc0szNVpvTEMx?=
 =?utf-8?B?TkdqZE1VVzNzK0QrU2NKMnBPaUhlcURneWVMbkNKa0ZXMkQ5ZWdTYVZHV3lF?=
 =?utf-8?B?RjIzSGJ2MWFjbHBiNSsxRXBLcS9sbTh5ZzNnbzh2UUNEcnV0NmVDL0RPL0E2?=
 =?utf-8?B?bzV5aG00V0ttVlFtdGE2UnJPa2NJdnhmUTRjUkI2STdsTU04YytoelhkbUV4?=
 =?utf-8?B?WU9OTUdoQy9pN1R6Wkp1OXloT2hpM09sNS92TXJvN0RGeEZmZU9YM205eUFh?=
 =?utf-8?B?RTlZQWxaOTVKK3BQVk1GWFRWbnN0SWxQNGd0dzByeElLVHArYVFQdG0zU3Q3?=
 =?utf-8?B?cEJJNEptdVp5Nkhvbm5ZMWdvcUJ1RE5zMEh5WGJQN0JwMjVlb0Fvam5mQnNO?=
 =?utf-8?B?d28yRDFzS3FadW01c3hxNlhxRklOSVlaM20xOEE4UHZhSTFvWE1GNjN6NEFS?=
 =?utf-8?B?VitvcDV4Mlh3dmtDcm1UTnE2MlVlZGRyamNDaEg3VnhqeDdhYjA5L05CWDEz?=
 =?utf-8?B?NmJYWEU3Zm5nRmdtWHQ4MjhQeE5MaytyUFA2c2c1NHhyaC9wUlVGbUU5TjlJ?=
 =?utf-8?B?RjFMSUhaVE5qc1c5KzF4MTBwTkM3dXFwN1BiTGdLVlFIZWlOQzFYZFdLalow?=
 =?utf-8?B?SkxhR2h6S01tYldKWVMvM2ZTVUJPdjdsREdhdHRnZ2gzRW1KcEllT0JFMHFY?=
 =?utf-8?B?TjRRemJSRU1TbkJxLzJBOGRjOHZ1b2djQjNRbGRFMms4MDhOY2JBN1pidDVJ?=
 =?utf-8?B?V0ZzRFFOTTczYU9mS3FJUUxhRVlqYWREdFczbm9Zd2FMVS8zTFBkbUVtYU9w?=
 =?utf-8?B?ME9KUnpWUnhxSXlyY1k3VFozTTJCVFNLOTNWTS9XNEZtYTBGWGFLSTZUNlJn?=
 =?utf-8?B?NnBQLzY3TjhQd21iazhTbVRlWWd5dmVVdVVqZEsrNXRCSU5DemVRTmM3enhM?=
 =?utf-8?B?cDRSVjBNeWsva1lpdFllZXdLSlVZOFpnemM0dFp5a0RnWklBbit1WXVLWExQ?=
 =?utf-8?B?Y3pCSHBZQnk2bTNnYStWbGNyYndkWXFxbnJOK2pQYjdlcUNoek9SenRvZFEy?=
 =?utf-8?B?bGErdUl5ZWdEVXNZdlgramxLS3ZIeHBITjdrMmFkVlVPRW1GZVRpREV0bk52?=
 =?utf-8?B?V0xGUlpuekdlSkNML1pOMHFuSkx6SkUxakdoczJ2OFhlaUdXUjk3SmtXdy92?=
 =?utf-8?B?MG5FUUEralVJbTBncnRsSS82VmEwMlJDaHhQb0cxMks2S2dwazFNZ0JKRGV4?=
 =?utf-8?B?eXBqT0tqOE11bEVpVTd5cngwNlhjU0x5b2EyVVFRTUhXSWtYbXZTaUE2YTMr?=
 =?utf-8?B?clhkYnY4V0dnNnpqc1djVytYdyt1alRHdWtqL0thcHM3TFRsNXNKUGk1OTA0?=
 =?utf-8?B?eTVTTnVaMXZORVBsazFGSkNsWUlwY0JCMzJYNkdsdTJMcVQ4SWU5b0srcmxT?=
 =?utf-8?B?cDZ4a3dOOUQ4NlNmeDZUZDNUSUx5L0dOY3cxWmxvQytDelh4Z3lUZkdxN3M1?=
 =?utf-8?B?RXFuUXFUdU9yZ00zOUVsQnBiVzM0ZG9JbHRIMFFlZW1DdWVqanUvQkdOSkhK?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93e73c72-d08b-4f13-9af0-08ddfa8f0e11
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 10:50:48.5163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aIFuPQIccfYhAaUbX93mO5aI1MB/zMh36lBQ5DcMZ9vGtXQmw18hGXyVBOtOj35RbMLYVaULGsLkP/obwBcYmnfbPX06AAx13CVwR+Ra0m8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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


On 9/22/2025 5:00 PM, Ville Syrjälä wrote:
> On Mon, Sep 22, 2025 at 02:19:39PM +0300, Ville Syrjälä wrote:
>> On Mon, Sep 22, 2025 at 01:18:06PM +0300, Ville Syrjälä wrote:
>>> On Sun, Sep 21, 2025 at 10:05:32AM +0530, Ankit Nautiyal wrote:
>>>> Currently we use difference between vactive and vblank delay to
>>>> implicitly wait for SCL lines.
>>>>
>>>> Remove the function intel_mode_vblank_delay as we can simply use
>>>> the set context latency instead.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
>>>>   drivers/gpu/drm/i915/display/intel_vblank.c | 7 +------
>>>>   drivers/gpu/drm/i915/display/intel_vblank.h | 1 -
>>>>   3 files changed, 3 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>>>> index ca31e928ecb0..dfe928aefdcd 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>>>> @@ -130,7 +130,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
>>>>   		 */
>>>>   		return intel_vrr_scl_delay(crtc_state) + 1;
>>>>   	else
>>>> -		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>>>> +		return crtc_state->set_context_latency;
>>> I think we want to leave all the non-VRR cases to use
>>> intel_mode_vblank_delay(). Otherwise when running with fixed
>>> refresh rate we won't account for a reduced guardband.
>>>
>>> And for the cases where the fixed refresh rate is handle by the legacy
>>> timing generator we actually need a slightly different delay for the
>>> legacy and VRR timing generators on TGL (due to
>>> intel_vrr_extra_vblank_delay() only affecting the VRR timing generator).
>> Just to elaborate on this, I am thinking that adjusted_mode.crtc_vblank_start
>> should *always* match the delayed vblank for the fixed refresh rate timings.
>>
>> So I am envisioning the following rules:
>>
>> always_use_vrr_tg():
>> 	crtc_vblank_start should reflect the undelayed vblank
> Ugh. *delayed vblank* of course
>
>> 	for the VRR TG fixed refresh rate case (ie. fixed_rr_vtotal - guardband).
>> 	This should in fact be the same for both the VRR timings and fixed
>> 	RR timings because the vmin and guardband should be the same for both.
>>
>> !always_use_vrr_tg()
>> 	crtc_vblank_start should reflect the undelayed vblank
> ditto


Ok, will drop this patch and will take care of this in the series to use 
min guardband. Thanks!


Regards,

Ankit

>
>> 	for the legacy TG (ie. vactive + SCL). The VRR timing
>> 	generator's vblank can be different here due to reduced
>> 	guardband.
>>
>> This is rather important when we're doing a full modeset and userspace
>> has already requested vrr.enable=true. The actual modeset part will be
>> excuted while still running with the fixed refresh rate timings (either
>> using VRR TG or legacy TG depending on always_use_vrr_tg()). So the
>> vblank evasion prior to commit_arm() will need to know the correct
>> position of the delayed vblank for the fixed RR timings. We will then
>> switch over to the VRR timings (and possibly to the other timing
>> generator) during the actul commit.
>>
>> This also means that intel_mode_vblank_delay() will always give us
>> the total delay betweern the undelayed vblank and delayed vblank for
>> the fixed RR timings. And this is exactly what we want
>> for eg. intel_dsb_wait_vblank_delay() since we will have configured
>> DSB_CHICKEN to use the undelayed vblank (as opposed to safe window)
>> and thus intel_dsb_wait_vblanks()/DSB_WAIT_FOR_VBLANK will wait for
>> the undelayed vblank.
>>
>>>>   }
>>>>   
>>>>   static int dsb_vtotal(struct intel_atomic_state *state,
>>>> @@ -733,7 +733,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>>>   		start = end - vblank_delay - latency;
>>>>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>>>>   	} else {
>>>> -		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>>>> +		int vblank_delay = crtc_state->set_context_latency;
>>>>   
>>>>   		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
>>>>   		start = end - vblank_delay - latency;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> index 9441b7bacd27..8c4cb6913ef9 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> @@ -619,11 +619,6 @@ int intel_mode_vtotal(const struct drm_display_mode *mode)
>>>>   	return vtotal;
>>>>   }
>>>>   
>>>> -int intel_mode_vblank_delay(const struct drm_display_mode *mode)
>>>> -{
>>>> -	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
>>>> -}
>>>> -
>>>>   static const struct intel_crtc_state *
>>>>   pre_commit_crtc_state(const struct intel_crtc_state *old_crtc_state,
>>>>   		      const struct intel_crtc_state *new_crtc_state)
>>>> @@ -685,7 +680,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>>>>   	} else {
>>>>   		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
>>>>   
>>>> -		vblank_delay = intel_mode_vblank_delay(adjusted_mode);
>>>> +		vblank_delay = crtc_state->set_context_latency;
>>>>   	}
>>>>   
>>>>   	/* FIXME needs to be calibrated sensibly */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
>>>> index 21fbb08d61d5..0fd6f7aeffd4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
>>>> @@ -25,7 +25,6 @@ int intel_mode_vdisplay(const struct drm_display_mode *mode);
>>>>   int intel_mode_vblank_start(const struct drm_display_mode *mode);
>>>>   int intel_mode_vblank_end(const struct drm_display_mode *mode);
>>>>   int intel_mode_vtotal(const struct drm_display_mode *mode);
>>>> -int intel_mode_vblank_delay(const struct drm_display_mode *mode);
>>>>   
>>>>   void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>>>>   			     const struct intel_crtc_state *new_crtc_state,
>>>> -- 
>>>> 2.45.2
>>> -- 
>>> Ville Syrjälä
>>> Intel
>> -- 
>> Ville Syrjälä
>> Intel
