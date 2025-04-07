Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E779A7DC0C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 13:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC6D10E42F;
	Mon,  7 Apr 2025 11:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HMrlbP1V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BDC10E42E;
 Mon,  7 Apr 2025 11:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744024610; x=1775560610;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XSCCL1JDBc8cayRLvOigTKzvfy99J7X7eHMJxUhrHdA=;
 b=HMrlbP1VNqlUak91qLgvZgzhi4fYud+sZT1UF/x98cUXlF3aoN6NM6c7
 QQlpdjy8YJY23dpuWkp2VSUBydj9oG+LV8fKdaKmSjo8Hofbw9K+xU/ON
 1z2kavHMmE4iAu3lRrPhlrBt8bSs+pjcD7UPnXWV/GGJxQW14KWHr4sa2
 mK0Bq4ZymE0aQ9eltABG4+4k3bCvnU7B4puDjsU2kN1h+KJOdraZ6QD0c
 /uc+QEvQB+o+ashM+1VQtN5YPA4xxR+eKNp22k+AUzYkNNU9tjni0P3cV
 HRl5v8FcYyqnpZ/tEh/I9z5Kvgiev1ACKfCC7dbVaMHLYUmWoFypJw/0P A==;
X-CSE-ConnectionGUID: wnKzoydQTlycXdIwJVV3tQ==
X-CSE-MsgGUID: TtXkbx1KS9WYpe4e9CWqAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="33007761"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="33007761"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:16:50 -0700
X-CSE-ConnectionGUID: FpDiVqTXQKaYN0EKufzS7A==
X-CSE-MsgGUID: H+mHf2ANTdu6X8sww0E0tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132779823"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:16:50 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 7 Apr 2025 04:16:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 7 Apr 2025 04:16:49 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 04:16:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cL+uzQL230mfM4AbiBPQkh/hRCk5od80zPlTZFvr7ON4hYA0Y/1W346DK0fS1gji7jCizvJDJCa7AMGxxOoMdztYKM5uM6N6PDgTrVdkcZ+AK1BbjhwDa+nFdtEDj2HyXTmf5q7mHjn2eKFQvLVkwD016bgdLaCqmPZSiiUb9u0LrEQFg6ZC5Lfv3PT4+ppXTTtsWdaPUVNy4NdVkgWu7UJfXATgf5gkDb0SakkLqDpnGNorZnjkTU79AudpHS0fNxwopz99YK2qmSwtKC3IajyoJP9KutmGUjIT04wkeNFACInVhkqtWOSCe5NA6NpOSBPUdnm/Xq875a5KasSy+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vK1hiBqioHkuNt7woXtHKjunEhiTVUaMLholdRA+3e8=;
 b=VDn6hIkRC39Pawr34oqfcEAGoD3UxO6FG/3WPW5kqCzdcjaPIW6rb5OWv99yzGFaUdWtvfLKbYHFQuVU1BL/SuSb9ON7lS4/+QFR5Ezux2rZYuBewtTUY2QDiWie0EwuzqIPm8r70PLXLiabX65Y3gVri58cAWJQitbyICyWnKb8JQXo8x9+XDDq44qtc81m/E+vRhb2haYCDLMd1l4asMkm47pIXVq9HQM+x0qhFGumDdqeJX3Q5/REdVddJkkF4vfLeCE9juHyQPuXZ2gY5UCQyc1NFEkXzZ2CQ1+HwDiw/lzaLuYqw8Mb4oUQA6Jo74nD3QeflAzwd1qW93lXxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5762.namprd11.prod.outlook.com (2603:10b6:303:196::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Mon, 7 Apr
 2025 11:16:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 11:16:32 +0000
Message-ID: <ac0c7885-ce03-4bdd-979c-5d1c050b3fa4@intel.com>
Date: Mon, 7 Apr 2025 16:46:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for LNL
 onwards
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250407063758.3131498-1-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250407063758.3131498-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0016.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5762:EE_
X-MS-Office365-Filtering-Correlation-Id: b51f5775-f502-4e1f-cd09-08dd75c5a6c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YkUyZXRpdkt5U1puL09nVmUrU1BqOEE3ZHhUTDdkN3ZFS0VhYW9XSG0xYzNk?=
 =?utf-8?B?R0JQSEkwbXdvcUpmRFVLSUdLYXNSSFFicnJxcmRxa3NjcmEyTDJNWHpxQ3k1?=
 =?utf-8?B?dThtVHNLbFJieFlHajEyd2QyeTZIVS9rNmJHbEtCVVJVNllNU0NFeU03TVI0?=
 =?utf-8?B?dWVUbnArL0xPVStUZWdhdGd0UFZpdFN6dkpuWjh4N29ZN0Q4Y1dEcEpQQito?=
 =?utf-8?B?K2RGOEtIb0pCT3J4eDM2YUFGQ25TVUlaL3dRcUFGSGljSUVaZTRxRXVyZWdl?=
 =?utf-8?B?OGtOMlFYMHQ5aWU1OWNUNUhxeklTODZ3V0hvUTBvQXU1dlMyYVU1TWdWUnBH?=
 =?utf-8?B?TzVhNzc3RVgvcnA4Rm5tUzcwN0IrVHRSZUtEUE5VYktLeDFnYlVINXkydUd0?=
 =?utf-8?B?SDlEK3NzRnN0YXVvQjZVeEJVc3hmSTUrOWpERExxL0dBc1R6NnBucWZ1WnJI?=
 =?utf-8?B?L1NqeFAwb045NEhGNkJ6RS83NWhVNGpVKzNpemx2aGw1OStHNzQvVnZuWE5V?=
 =?utf-8?B?SlJodUlRWUtmQTcwbjhLQkNmaDlXTjlreVN5T1hjVUVQMmZhWnNRKzdRSlVr?=
 =?utf-8?B?NG1va0RjN0xuYlBKbVB6cmxCR1hBUVFRd0UyUWtsMHZ6M2VwQ1VObXpjQmZP?=
 =?utf-8?B?eTRBZlpOVUwzY0l0ZWZJekFUVXlWbVV5SEExaDVOZWNzNGxGNjhOVWFPMWo4?=
 =?utf-8?B?bE1nUkw0QW1CbFQrTm5GTWVWWDFLMU1TQVYrVHVmYy8yN09jaXF4NGxSZGNO?=
 =?utf-8?B?a0Q5UytLZTJjcEdkZ083KzltUU4reG10VlBJdXNLTzdXbVZXbWJXcVRnc0RO?=
 =?utf-8?B?aXVOQUxkR2RWb21jbWVxaHdJSXlRcGkvenMrbHg3bC80Tmk5TXJ0SmhCK0pV?=
 =?utf-8?B?cUFqbmpMVHZaU3B0SE5KME9tRkEyTm9ScEtvcmhTQXBmV2thVjk3NGhuZit2?=
 =?utf-8?B?SjBqS3hKM2pzeGxOa2dtWFZ2bGpIMVQrZHIwdENWQWhteWk5T01DT0Y1eVMx?=
 =?utf-8?B?R2dyUXRYWFdHQXZ1UUN5RTRSQ25EVFFmY25UTVJ5K0x1NzQwMCtCN3BEOWp0?=
 =?utf-8?B?N2N5NU5IYWRpd2ZIMjVIblp0Nkh0aXk2MjhCWUR4d3RYQnIrVkd3c29zdkNU?=
 =?utf-8?B?Q1FYbDBGMjd6ZHZRSTlYNEpHUjZUV3hvc2IzSTFjQWhkeXJ6eXBSdCtHTUI3?=
 =?utf-8?B?Z2czdlNlWVJaRjl5L3JmaUJUdHZTazMrc1F0M3lja09meHNicGxhSWtsVFRo?=
 =?utf-8?B?b2JucmtxMVhvd1RTaG1TV2xjZjJ0TExVNDUvOVM1TmpvMFYxbmRidW9CWkZz?=
 =?utf-8?B?M3FSbXRNWFkvY2lGTm9CczgrM1I4SjJ1UktSY285WkMwRFdyV0RkbzFHWHRE?=
 =?utf-8?B?R1U4VkxEdFUrNTNsUVU4YnNwRmFpcURXVG1NWjNzYWYvN2RpcnF6NEk2UVNH?=
 =?utf-8?B?MFhlSUVGdmg0Q2VYRE52NkxpRnFrNUZpM0k0RkJxdUtJcmIrR1djSnJ3YWRW?=
 =?utf-8?B?Zkxuem9zWEROSlQ3b015WUFuYzlPZmE3OEd6ZmRDS2U1NWZaMDM1SENmcjEz?=
 =?utf-8?B?ckczRkJpQmxHV1daNmFtK0p1VzkvcFJqa0NSazJ0YlN6UnBLRjRWR1lIbGJl?=
 =?utf-8?B?Q1ZxN2hUdCt4Zkw1ZFlRby9PMGZXL3RYWURrUGFaMnI0Zzh1SVZvMjQwRzBl?=
 =?utf-8?B?YldyYVh5cXlvOHowN2JPZmdjdEJCYkZITnM4aDZFeEYvQXM5NnI5MDhCcVhR?=
 =?utf-8?B?T2ROTWQyaEY0WVJyTlpGaGJYUitsREdPMmlCSVNwQWlYT0hjbHc0MTRKdzlw?=
 =?utf-8?B?bnc1TFZaZHFsU1dKdWpCU3N1ZVBkVjVIU3kvMFJqNW1OcWw5YXVIcHl3ZFRV?=
 =?utf-8?B?ekZ1bmtPQ0p0SGRodURUUGN0OW80U3NBVEVraldSdE90amVjN2JkSW16c1NC?=
 =?utf-8?Q?G6Y3PNlimS8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk1WVmRQWWZaZy9kaHlRRGJrRG1SUTgvZFJiS3Fxckh5Vi9mOUJnU3VaMmVn?=
 =?utf-8?B?am81NFJOcEI3eW5jSjZtUWJkSDlpaFF2NEtGU0RXMnhEVWk1SVdoQXRNRVEx?=
 =?utf-8?B?cHVFcHZOTnl2RlFUbjJMNFJPUEp0MHppeU9qOW11UG9nWVZOSmQwaTdJZWhF?=
 =?utf-8?B?Q2dNQkxUb2xxSzRZZExJZ3hZRGxWbVpxNlFMTmJsZXA5TTdQTG9SQTNWcTBp?=
 =?utf-8?B?QXRkT2JteURlcnBvejNRVVlhV2xuT0tFcG5JTlZYV3Z4SC90Z0FhaFgwMFlE?=
 =?utf-8?B?MmljUGZTNkhrWDNNR29IYVlvVG05M015aVZxcVRKcVVzNGppekNQTkJkczdP?=
 =?utf-8?B?a2g5UEFQNDVDa0pIMkczWDNHRUcvTFlPYUJxeHc2cnJEVkRydnpRelFzN3cy?=
 =?utf-8?B?dHh5M1pqdVZqZVVkS2hNeTFaNk9GdnM0ZVV2TlZ4bXViL1pkK3N3b01iZjZT?=
 =?utf-8?B?ZW0xN3hsaHYwQ1hoNXBaY0pQMTN2YVp6RWVJbllkNHd0QzBaOUw4ZUZ0bndP?=
 =?utf-8?B?MnAyT0x6UmNvMEFaQU5HNHNXcWM0aUhIem9Tb01rU2xMcHBxQnYwVlRISGw0?=
 =?utf-8?B?Q2dUZHZmQ21KMkl6Y1h6clJ1c25RcG9RTmtBTUxVZDd2d0xidUVrWVppM1hn?=
 =?utf-8?B?My9uZG9nYnFaanFjN1BrazJpNVJFckJPbWh1Z091ajM2OHFQRGNSRlhTbDZN?=
 =?utf-8?B?RVVxOVlCZEhkQ1N6ci81NWdralFSUnN6VzhBYXRGUDg0RHFLcStYNEVmdlpY?=
 =?utf-8?B?NUZwaUJMUHlaYXZNY2tVTnRlSTJzZFpiVTJ3MlJ0alR2THVmV242Y05NeU9q?=
 =?utf-8?B?ZEkzbFBIOUJQOTRGQmxxSGJabGxaTlpxK0VVT0o1TXh5QlFQY29PSVNlQklS?=
 =?utf-8?B?TjY2bzloZCtaN3k3OUFpcTUwYjhuUUZSci9SczhqRFVlY0xjcGVBREVJb1l3?=
 =?utf-8?B?M3VONVdjc1pleTN1b3BMdm1Vd29SOWlqM1l3NU1LU29aYVZVaW9pQUVZaytq?=
 =?utf-8?B?OG96YUYxVU9obE1BSitsWEZWVjlCTS9ia291azk1Z3J4UC83M1VoemV4VWFW?=
 =?utf-8?B?YXdOd3JZb096c0V5cURSZTV1K3p5QklmT3UwaUxwYXlvcmtCMlVSMk04eWQv?=
 =?utf-8?B?YWdiNmllVU4zWkdONzc3SmFNWXlCaEgwc0p1clNCM0NzdW9zS2ZKNHRaZ3JO?=
 =?utf-8?B?UVU2REsydFppOTl2bGVXeGF3dVYwN1RweUJXbDZWQVNRSDJXdGtVVFhtOUJL?=
 =?utf-8?B?YnJaRGUwaU9qZVdnUGRmNThKdWllTUlOUVpTbHNCQ2VjWDRneGpjSVA1RE5N?=
 =?utf-8?B?RitCVXJaWGpURVpnN0NUd3ovWDIwQjNaQnRvdjBRVVIvVlIxVE1ZNnF1Smw4?=
 =?utf-8?B?OTkyRXpaZnl3bmdScUt4RENqZVoveE85R3o4VUdjTm8zY09QTDczVHBsNldU?=
 =?utf-8?B?YVdzUExzT0VrdzNSTmlnRy9JTUI2QzcwZDhySjlMcklseHMzdXFBTEVkVUpP?=
 =?utf-8?B?cDQ3ZFhocjlnZDBZRFJpeERJaVE1RmtweStHNVd6REJmckpBUDVMLzJyd2hJ?=
 =?utf-8?B?eWRzZFRhV3lXZ2NNakw2eWdOMjM3amJRRzVzSXlLbHFJTnJOVGZ3a0xrd2hR?=
 =?utf-8?B?eE5qTHBsNDU2K3NML2NsQncrZ1hqS2Y5K0tSYlAwcUtVUndVeUNSbGQ0aW5L?=
 =?utf-8?B?UXlIdG5aakQ0eVFnMkszU2lXZkRPdWUrNDZseVZkeUhSQlZxYlNnZmh6dW05?=
 =?utf-8?B?d1hpZXRlT29BNU00WXVqY2hYa1BsL2FWTjdXVlBMcG93OXBDb0pOWkJOR0Nx?=
 =?utf-8?B?Y2Z1Vjk2VXpRRklYWDYwV21aaXdrdksvaG0zb0s0RmR6aUhHWWpwZ2VWcFlK?=
 =?utf-8?B?eTIvdHhSbis5U1hiV0VubWJtSURvbW8xem5FRFMrRjNlU0pldGFqVkV6L3hT?=
 =?utf-8?B?WWtqUWVYQStKZ2ZOWGtNR0JpSytoM3M2cUxORTZEQnhDZnZqYUkvdXVVUXlF?=
 =?utf-8?B?OTNRYnFkMUxRMWVwVGdqa0hYTlkvUTltcEFIcTZIRkZqWWhCaU03TThtcEdV?=
 =?utf-8?B?NklWdktMUkc1bHVnbEpmbGZ4RjczNmFSd0xzd2VueGwxTWliamtrWG9SYXpS?=
 =?utf-8?B?U2VPbkZyN3VrZ1hlc1kzaG5rblhwVS9HVnBlM2hoSjMzQlZKd1FOb3JjQ2Mx?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b51f5775-f502-4e1f-cd09-08dd75c5a6c3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 11:16:32.8235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3yfnvAW+n6z+q8gO4Z086bY+RtYL5QybqA0pdeHLsbEL9fe0EEEcs455E8nHwIHVn3PnHhbCzcGNI9ne5c1OZNiasnYWRfBU7T25Rdr5a4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5762
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


On 4/7/2025 12:07 PM, Jouni Högander wrote:
> According to Bspec VRR_CTL_IGN_MAX_SHIFT doesn't exist for LunarLake and
> onwards. Bit 30 is "Mask Block PkgC" instead. Stop writing that for
> LunarLake and onwards.

Good catch! I Agree with the change.


>
> Bspec: 68925


Should remove the extra line so that Bspec# is part of the trailer.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com

> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 633a66f6b73be..ed59e83a3857b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -444,7 +444,10 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	if (DISPLAY_VER(display) >= 13)
> +	if (DISPLAY_VER(display) >= 20)
> +		return VRR_CTL_FLIP_LINE_EN |
> +			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
> +	else if (DISPLAY_VER(display) >= 13)
>   		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
>   			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>   	else
