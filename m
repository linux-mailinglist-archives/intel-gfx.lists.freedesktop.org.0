Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 470DAABD29C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D303210E3CA;
	Tue, 20 May 2025 09:01:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eXrABVAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1033110E3CA;
 Tue, 20 May 2025 09:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747731681; x=1779267681;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ugk83jFAEVuevMJysdKdQUDlzi7bjJl2Hi+ECX9H8TA=;
 b=eXrABVArCCjYnaerPbcWYMmrFQeitpWRrIh7cFr4BhWjIn5UAbrWhQYS
 oLKCcIcp5CMXmEUz3N+emARk6U7YkQBRo8BD6L4fO7ZoYiZ1vLZfcBTX1
 S7qu301DIvO8xpEgXANRfp1A9IL9E4KdysfwDVDjGR8PF25rgOvvcUVw9
 sVfvUV1X/NS+xgcxRefk1w/efpXSoabQSVVwr1qYdUH1srpGooTbpobC5
 w0eSAyUu1w7YyxXmq5dWdXnDZqgltu3UgDiqAqs4/deRf7RRseqa83MQH
 vNjOMexO+ZiCSmgQ9YmbnHfxzHvitLP86CNI3VQzgWTV0dnzmDqzwyCgZ w==;
X-CSE-ConnectionGUID: qdFufDudR6G/9evHy8zOIQ==
X-CSE-MsgGUID: K4D7S973SrqJNXObH4BZAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60291582"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="60291582"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:01:20 -0700
X-CSE-ConnectionGUID: GuHDftQGThGagzvPjos3zA==
X-CSE-MsgGUID: yWSEcvyaTseZ+JbN5aU02w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139354302"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:01:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 02:01:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 02:01:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 02:01:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AuLNQOnG5o4D8fpHMprMo8KsAazt54N/TrDq6gqPy7nAWmyJKTr49BSnXG9m8uIcPXG2bXqkAS8F2bDVWvFUrUZC5ezZnPbBes+aUacrmMh17wFj7SHL0B0HSzydQ9xUc6+CupyClM3/W9bEbEg+mSnx3LJCgjuoiUKURV3UYYGWY9HWl3Rr53GDX+7GPeNTlQaAKkn2pQa5hARX89nkZEPeCpcvTE8zIkFkCqCsFdnBy/cxQTllFQwnJpq4rFalUrW/en/n6sV2aGVw4T6BWSglbfuoo2JH5ui2/6LK8wzPItS3ajsLIBziF2tcZvX020Krc5GzBJIVLUziaXeaaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhaB/DqaEyotVKXDwq6Jma42iFRQnkHjLvVsHVR9/hs=;
 b=eU90cJR2VLBISIBZJArN1FE3nUYlDc3LXTzLkrLU2YgiUWawwMxXR0JF3YePxE7s6S53WcoiOcxITkLv2UqcZQS10F+f+CM9OGwlB9p9F00ZXDEjd1qQoVmFY9IBSCOnoSZRXgqCMP+AYV4Ga9V+8cfAKX5WG3tLkfeJKrHfX3TR1V3NYjsIO9paqTiBGg+H8lZ5tnLguv/ltQivN6AMlw0YdPsXM32ZXnJ7mGwzrXCx6qL2xO4X2Aa7y3EFbyewBWsjz4jHbSM+Hy4X0wR1Czb1D3cWrQ914bzUmB5y9kMwz7BXZRsGQc9QY2hGJTzBEHzC3z1LXT/k1Z64YgqmoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPF6EA6DD735.namprd11.prod.outlook.com (2603:10b6:f:fc02::2d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.32; Tue, 20 May
 2025 09:01:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 09:01:04 +0000
Message-ID: <eae1ec28-109a-41c6-a17e-3a45b50e6a0e@intel.com>
Date: Tue, 20 May 2025 14:30:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] drm/i915/alpm: Move port alpm configuration
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-8-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-8-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPF6EA6DD735:EE_
X-MS-Office365-Filtering-Correlation-Id: de6dbe47-5020-4e62-a2d8-08dd977cd97e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlNla1JmaTl4QUI0MkV2ckZGRmpnc21Sc1lFeXNDT0VCNG56eDlqZmxTVFBB?=
 =?utf-8?B?Z3BRT08zSUFvcEc4WDFURGVmNjlxVGtxVXJ1SjVzWS9POHlON21JME8rS0ln?=
 =?utf-8?B?RlpJWDlJYm5vaVNpSXpqRXNRZlpmZ1JxcjFYWHp0UXd3ZGxnY05nYUdKU3dv?=
 =?utf-8?B?Z0FxYk9rRXdpem9ENnFtR3BmMldJdy9BMmZ1T0FQdE1nQktCazRRMXZJeUFH?=
 =?utf-8?B?UUxEcU9XSnR4cHJRV0ltblZqT0VUNmUxVktwMS82V05CdTRjN3JSQkVkNkda?=
 =?utf-8?B?SVJqNERmd3Y5aW1EeTh4RlY4dXljRlJJQkdvRGhnMjhGbkF2SStwbm9PbC9G?=
 =?utf-8?B?OG9UWFI3ZHhiazJnVytWQnRFYkJTOEdHcUJkaSszb1ArV0Q0dUJKQmR2dlRn?=
 =?utf-8?B?NXEvRmVCS09uSFU3SWxvZ1MySFdoQ21TWnNYT2d5QXZRUGdFMk9VczNmT1ZV?=
 =?utf-8?B?TzNvNHIrZUVIdEFYT1p2ZXdMVzg3OTZBL0M0QmJuT2hnenZ4OUlpU3ZveWsw?=
 =?utf-8?B?a2oxcHl3L2NJeDBvY0o3N0o1OEdyUjJXRTA1UG13dTJvREZzclpuR2xFT1BC?=
 =?utf-8?B?R1dGOE9EQ2FxaEhqbEIvNGwxNlQ1S1MrYThnbG85dTREUm1NZFdrWEl5bnRE?=
 =?utf-8?B?MUcyUEJYUEZoSnNaNXdnZ0ZBLzBpd1hmYzRjUktpeEhUbFhaK3I3NGdHZEpP?=
 =?utf-8?B?LzBMN3IrcndLakNxenlCSERIT2lhSTNwdm5oV2VpRk5BVkdRUEhJakNkUmJ2?=
 =?utf-8?B?NkFUMDZUK0Z6RXAxNzY3UFJ6NW5tcUlNZk5xUTczdkxSVWR5K0MxcTJhM2Nu?=
 =?utf-8?B?RGZjRXFLcExxN29jVnZGSWlvdkYzbDlyMFRFQlZrRStNc0doMTZ2aEhZbUpp?=
 =?utf-8?B?Ny9DMCtISFVNUy9XYXNoN2RkdExpdHdOVmE0Q1NINjVuNjFpbE85a0t2bVNN?=
 =?utf-8?B?NUd3aEJ5V21jR2FmTXNxTlBRMVlJMTZmR1VFcU4vM3RKUnlqYWR0cVg5K044?=
 =?utf-8?B?dklXNFlydEsrNVl5bTcvWjhjaGgvZkxrOTU2aWUvWkI1QkxkZUNoMU95a0hW?=
 =?utf-8?B?R2xRK0hiS0MyeEtncGlwOURYNGVZVXdKYjRDU1NOZWh2WmFDdS9wdXhLb0s5?=
 =?utf-8?B?L09IUjlMaVN0Q1A4dW8vWXZjeTc2RlBvRlpOa29ZZkcxdFovZ3krQkhiZ3R2?=
 =?utf-8?B?WW1oK3pNSWdKUGYrTnZLVlpxS1p3aHRyVzRmbDZYbWNDMFpodHJ1ZjJ6dHdo?=
 =?utf-8?B?N2xzSklUQ0dveFl3Sk92MU1MMDhKMVNiSW9wcDBXcDNiaVdsSXBtVFFxN0ZX?=
 =?utf-8?B?eVQvb1dSOXpHWUxyWkRKTDBYTmo1OWNNTlBDdnAzb01DT3ZlU1lnQlp0cnJM?=
 =?utf-8?B?YUxFZk1mOGlvYnpWRTE2QjVIU0FDa1RaRVBIOTFzOUNibkhGOWFuVHlJU1ht?=
 =?utf-8?B?TGZXVUN2NlVZM3RLS29JNkQ4amNTYW45by90MWs2VVhyOVE0WkN2OTh2NzZ0?=
 =?utf-8?B?ZXpITUNvRmMyWmtJelJjSVlLTUlsTG1EZWtzR3dOYnFZczhuT3Y0a21tZm1i?=
 =?utf-8?B?NWppdGpUVUtaZ3plOG5uazVUTmhTbUw4NjVFd0cyNWRhK1BxSTBvejZmNzhC?=
 =?utf-8?B?MnovbytqVnJHa1RHbUdjbjMxMkt4UTkxNUw0NUoveHUzalJUdWs0RkRXK01K?=
 =?utf-8?B?LzhtMVd4T1ZDRlMxZ1o5N0hQRm91NHMzV0paeTVQTXJ2bmpPbzZaSFpRMlc1?=
 =?utf-8?B?MjhBdzUvbHN1NzlydUpCM3pPSWc2aWI2Z21BOFJrVjRXUFdWUndMR0VmdXpR?=
 =?utf-8?B?TDBYaGZyNlhlZExBNi8yUVVQN3dyVjlPYWp5SEpGcHEwK0NDRWZ6MnFBZWdL?=
 =?utf-8?B?emw3cFZqQ3BxK0wxRWIxL3dwR202T3RaZ2JoUlVZMlVReEtrY3R0Ym5qMjhs?=
 =?utf-8?Q?6EuBku486A4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzBiRm01alhpRTBMa1IyQTdZbGtZV2xqVVZLUnVYcFBMTlZPb2laRURzZ2g0?=
 =?utf-8?B?c1BYSzdCQ3EvNWlqSi81WE1IaWtLbmJsMUQ4cjE0RWQ1dGdJTFcvODRKd0Qw?=
 =?utf-8?B?ZjMwNEttR3ZJUnZpZlgrNWptaGk0a3IycDJoRkRVMlNoZUxxMm0wSVpuRlRF?=
 =?utf-8?B?VGZ0czA3R0ZZYTZZU1ViM3pDc2prWEsybUtpRW9wc29WNW9xdFRPdDhxRER3?=
 =?utf-8?B?KzM2L3FpUjFnbDAyT0NyTjAzVjVGNHRReExBT3ZVaW5qTlh3Q0VJTEJ1MVlj?=
 =?utf-8?B?Tm1QNVFnMFgybVZmNDJNbVRaaGlnNys5QUtXY2RncXdpWHhJNTQ2R2dCSnBM?=
 =?utf-8?B?UlVocFJEV1FXWGp4YjVTeUoxcGpuSGlQMlZoRGVpbnF0SnpUSk5VN3lyQzhy?=
 =?utf-8?B?c0dtcC8rZXNZU3NKTm1ZT1Q2N0tCaXZqR0lKUEMxR2gxV1B0dTdPWlJZSjVv?=
 =?utf-8?B?a00ra0tmT0c5NTVoUnFoMzJLTHpyTEdxY25oc0JwRStscVlOdUxPZ1NFeUdp?=
 =?utf-8?B?ZDJFNnJTOUZKR1V6YXpzUlVheTN3Zy9vNFl5YmJRV0w1azd3SG1NVHVYc2Rn?=
 =?utf-8?B?VUMwU3F0cUcrK1ZkN2psVENyaWYrYUFobHg2V1REVmVUcEJBcDZjaTBEcVZZ?=
 =?utf-8?B?OFFyUUZ5bG9waUdDbXRPeU9JUkE1UUk1bTM5Z2FObjg1Mmd2YXprdkJkbS9B?=
 =?utf-8?B?R2x0aUluWWMyemRUWldRR1pzRVZYUWtFditCTW1zTnpmZUUwS3hEbkZsK0VQ?=
 =?utf-8?B?dW5tVmVEU1BySklneldjeWNDbTJ4NEVkVHQ0SG9zNzV6ZDgyT0dsMlpTZXBp?=
 =?utf-8?B?ZStCbzhoVkY2OEpTTFhlVmJrZ3dIZlJoK3plR3dqUitQK1RqdjFJS0pyR3Rw?=
 =?utf-8?B?RzNMWThhajBaZFFaVUlDd2lIekJYazhPYkFlUVYvaFlyTXN4bStOdGhldXBI?=
 =?utf-8?B?MkF6U0lCK044cVREUksxS0FTSklIVE4wcjJ4MUx2VXdad0hvbS9YNmhOSGVV?=
 =?utf-8?B?OWxqN3BTYnU2bjZ1YzlvRFlpUjlXQnRHdFBlTXoramUvRnVPRU1LVE0wUWt2?=
 =?utf-8?B?VWV6Zk1vcUJ2MmxKVUQ0SG9ETUpUT1EwVTVMUmhyMHhBb2xDR2ZxMjJPWW13?=
 =?utf-8?B?ZzBWV1Y4cXpadmJLQ3FvRTYyc2swR0NyVWlsSnM0UnFaN1kzeTNUNzkzOU5H?=
 =?utf-8?B?dUQ3NEpjeU1SMXNSY01nVjluK3M0eGtrbE9NWmxkM2tVZDJCYWM2STYrQTdx?=
 =?utf-8?B?ZVhONnc2Z3d3WXQvbkFYdEVtVERUSThIekJMWk95dk1vT3Q1cFNLUjJWRmwy?=
 =?utf-8?B?WmJtcHI4VnErTDZpNytLRnBablE3NVpjanFzRm01TENTVDk1cXI0eGRSQ3FG?=
 =?utf-8?B?S0h5U3NETjdveW1DRmswSlRkUm9CMEtma1pYUmV5WHc4UERNaXRiOVROU3ZQ?=
 =?utf-8?B?bDdiYldoTnNuYnFIQmpnT1ZKdUdOdXlwOHBudDVDRW1odC93Y2lCYTZUTjUw?=
 =?utf-8?B?aFdXajBwTjV2ZjBtb2oxbS8yQnlXcUJxbjNDdTQ2ekFXSzRUY3BxbFNheTNP?=
 =?utf-8?B?WVBZVVN2d2Ivcmh4c2x1cERuNlh3V0ZOMUgyNFEyQ3JwVEJLYXRlVktYWnBi?=
 =?utf-8?B?b0U4YW4wSEVTR1NkN284V0ExZ1UwWkNLYTZST0d3eDBrdWQwOEttSXRlSlQv?=
 =?utf-8?B?cmRJUVB1Uk42REl1eWh0dXo0eS9VVk9hK3RSSFNhRGZZdHRCYklSb2J6YWN2?=
 =?utf-8?B?TFJJMzhNMVBKWVBnM1g1QUh3M21zQ2hWbGJOdWRINlhtT3J1dkVRZkErdytQ?=
 =?utf-8?B?OEVtNUNicmgwSkF3SUZDMnkwMEgrR2hpUFBjbTU4Vnk4NFcxc0h6WmxMaU1w?=
 =?utf-8?B?b2JmeEVSSC9ZRWpMcDl5d2VEYW50UzdOWGtwS0orVHhnamVlQm9xVHJ4Vjl2?=
 =?utf-8?B?aEtFRlhGUTlPU3JzTThWYXRLeW95eUh4eC84eXFxL1lscUVvYjFkdndLL29I?=
 =?utf-8?B?YmwyU1U4QTMyamw3WU1hczNPWk5OUFU2QUg5R1I1UEZpK2lLMkF1YzVhSlJi?=
 =?utf-8?B?eXNHcGZCQmRoQjE0QVlkUGMrL3FxWHdQdmdQdERxWlo0cG9HT0diR292akJI?=
 =?utf-8?B?OVBuNDRoa2s4YzN4aDUxOXJvWGxxTnR1c01heUx5ZGcwL3JmeXRpRlgzWHps?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de6dbe47-5020-4e62-a2d8-08dd977cd97e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 09:01:04.0520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2k7CjjaZpk1pMxz9eDfbXOmhi7tl5iHFP/70WUniB5XuzvzQDbT5xKomiAD1DQjWZq/1yfo/NG/UlUzad/XUDCYkccFCLdAq2b2u4d0iiZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF6EA6DD735
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> It is specified in Bspec where port alpm configuration is supposed to be
> performed. Change accordingly.
>
> HAS: 14012758795
Lets drop references to HAS and add Bspec: 68849
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_alpm.c    | 53 +++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_alpm.h    |  2 +
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |  1 +
>   drivers/gpu/drm/i915/display/intel_ddi.c     |  6 +++
>   4 files changed, 44 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 4a8d4b34fa89e..857ce83075d8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -344,7 +344,6 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum port port = dp_to_dig_port(intel_dp)->base.port;
>   	u32 alpm_ctl;
>   
>   	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp, crtc_state) &&
> @@ -374,23 +373,6 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>   				       pr_alpm_ctl);
>   		}
>   
> -		intel_de_write(display,
> -			       PORT_ALPM_CTL(port),
> -			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
> -			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
> -			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
> -			       PORT_ALPM_CTL_SILENCE_PERIOD(
> -				       intel_dp->alpm_parameters.silence_period_sym_clocks));
> -
> -		intel_de_write(display,
> -			       PORT_ALPM_LFPS_CTL(port),
> -			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
> -			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
> -				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
> -			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
> -				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
> -			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
> -				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms));
>   	} else {
>   		alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
>   			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
> @@ -414,6 +396,41 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
>   	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
>   }
>   
> +/**
> + * intel_alpm_port_configure - Port ALPM configuration
> + * @intel_dp: Intel DP
> + * @crtc_state: CRTC state
> + *
> + * Perfrom port ALPM configuration based on crtc_state setup. This is called as
> + * a part of link training preparation.
> + */
> +void intel_alpm_port_configure(struct intel_dp *intel_dp,
> +			       const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	enum port port = dp_to_dig_port(intel_dp)->base.port;
> +	u32 alpm_ctl_val = 0, lfps_ctl_val = 0;
> +
> +	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state)) {
> +		alpm_ctl_val = PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
> +			PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
> +			PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
> +			PORT_ALPM_CTL_SILENCE_PERIOD(
> +				intel_dp->alpm_parameters.silence_period_sym_clocks);
> +		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
> +			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
> +				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
> +			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
> +				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
> +			PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
> +				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms);
> +	}
> +
> +	intel_de_write(display, PORT_ALPM_CTL(port), alpm_ctl_val);
> +
> +	intel_de_write(display, PORT_ALPM_LFPS_CTL(port), lfps_ctl_val);
> +}
> +
>   void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>   				 struct intel_crtc *crtc)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 83bbe0b7ff100..c9ddb2113fe0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -25,6 +25,8 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
>   			  const struct intel_crtc_state *crtc_state);
>   void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>   				 struct intel_crtc *crtc);
> +void intel_alpm_port_configure(struct intel_dp *intel_dp,
> +			       const struct intel_crtc_state *crtc_state);
>   void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>   				  struct intel_crtc *crtc);
>   void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index b09f724c3046b..1318886e34dd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -10,6 +10,7 @@
>   
>   #include "i915_reg.h"
>   #include "i915_utils.h"
> +#include "intel_alpm.h"
>   #include "intel_cx0_phy.h"
>   #include "intel_cx0_phy_regs.h"
>   #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 74132c1d63858..ce7a4765b10ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3743,6 +3743,12 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>   
>   	intel_ddi_buf_enable(encoder, intel_dp->DP);
>   	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> +
> +	/*
> +	 * 6.k If AUX-Less ALPM is going to be enabled
> +	 *     i. Configure PORT_ALPM_CTL and PORT_ALPM_LFPS_CTL here
> +	 */
> +	intel_alpm_port_configure(intel_dp, crtc_state);

I think we should add a check to ensure this code runs only on LNL+ 
platforms (which supports ALPM).

Otherwise, we might end up writing 
|PORT_ALPM_CTL|and|PORT_ALPM_LFPS_CTL| that are not defined on earlier 
platforms, which could lead to unintended behavior.

Regards,

Ankit

>   }
>   
>   static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
