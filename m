Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCDeNsSohWnUEgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:39:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A0AFB9CC
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:39:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCFD10E0FB;
	Fri,  6 Feb 2026 08:39:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiCRTZ+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EE310E0D3;
 Fri,  6 Feb 2026 08:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770367169; x=1801903169;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6FILLNMkNhTXaDuPDg/mHVwxJwUnMlXn8EKeLZ39sW8=;
 b=fiCRTZ+PrB6W5dqDbdd9CUgn5mDMD2NDPDXLvshLLe/DSCKtqWIAemHZ
 4dn/9ZVXq1cUEKJREvu4Aw5P4BBJ04XZp2F6lOIVupmyRUzkLeWH6/zky
 FgFp4Qw2ElembDv17ZfApClSW7j4fi7uHglipXPx8jjuv88KWPelKngQc
 kpsUDLf/4aK5bvo10drhyHps5Skxgacakn6KY0HItEqXKq03czCCffiES
 wWyA9uG9Y420yvBigw7j6DA7Hcmzu2qX6ElOKWd5mJkGA4iKgLJbUccvP
 4CURqws6LpaNTwyzWEftQ555MDmSqyYX6F3V4Bj8TbSGibNW3K5xBXrQX Q==;
X-CSE-ConnectionGUID: SEkXh2DxTxeYrI/JpGuJow==
X-CSE-MsgGUID: 8+HGKcHwSGaSK6lE8XE52g==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="81890447"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="81890447"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:39:28 -0800
X-CSE-ConnectionGUID: KuIFuygpSvWtn7eIH7wzbA==
X-CSE-MsgGUID: vMKXc+YcQc+cjjuTT5rQzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210644669"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:39:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:39:24 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 00:39:24 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:39:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q5PhoXRqy8wL8nzwR/bI+eaieWOxwg5JS3FqmBzeWuhRf/gApyw+12za12hX6cwGv6Dvsm54qOM4mm3QPjjLe81qoQznDTPKHePG6K9HND8RBFeQEZXiRU5wcpYHp1gUrYKUUjTzdBYZyG/DV+rvzUfg66vFO5cD3fyJ65d9mdRy/QWP+7R+bJDn/Otpthlpir5OYprL7GzfTTgbNCE2aH4q/hYzaap2hVzox3sfurKOaiOfyqx+JPN3TSZN3tl4UvEUoHV+Smfn4HwiBLQTcw4PaiqPpdT7K5htn4is7edOEqOcFNhupt6aGsqMXeQvZo1tVYGjKkAFKMNrSr5CSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2MqVHeLi732M2ISsFWNiJIcDv9GAqlPg2ZYW9loRcaE=;
 b=gVp3ajVsyypeU4tiliF+STV0EkMtfDzoxICMzX2VStTdj7Sro1QBsM1QPtkVhSDI1Z8IPU2ygiMRL/k6xRRoBNxGr5F8RlbJg66UgMyopz44LFJTeoFb/mHV9PQ09fnOo5+XpHrEAATzQYKGz9L3c20dIqUao+9WW0YbeQhMfwRoyfJtSuVXiPtphS5wQdLzwzq/m/ycv5qwGk0isGCyjmfR9C1Q7m3MLOySHfcf+e/P9tIF5NhY5iOnsOFpFnvAbRZ2YiV+fP4FxZWP3cTsQhbUTz+AULnd1QK2O84P9qhVYN0CH0iQ+dbol2iPehjThsB4g0QIxkNtjVg5aDzMBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 08:39:22 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 08:39:22 +0000
Message-ID: <c69715ae-d8fd-429a-b157-8c6bfca03751@intel.com>
Date: Fri, 6 Feb 2026 14:09:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] drm/xe/nvlp: Bump maximum WOPCM size
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
 <20260205-nvl-p-upstreaming-v2-15-9ec14f00cc6c@intel.com>
Content-Language: en-US
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20260205-nvl-p-upstreaming-v2-15-9ec14f00cc6c@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::14) To IA1PR11MB6266.namprd11.prod.outlook.com
 (2603:10b6:208:3e6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6266:EE_|BN9PR11MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: 55739d85-b729-487d-766b-08de655b39e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFZ2bHhjRUkwZEVCYTBQZEVZUm9McnRlYTRFa1Zkdjl3V0Z3akxVTWdiUmoy?=
 =?utf-8?B?WFRSUnFzUUJLWFVBNkVyMGQ3Rmo2dGQrMHN3YmR5M0dGSGNnWGhHS2hVRmxB?=
 =?utf-8?B?dTNDQlFEZEQvaUwwOFB4YjFrS1o4V2dNU3o3bTdNV1hCWHUvdFg3eWxzK21Q?=
 =?utf-8?B?ZWF0T1FzRDNVWmpadlBPajNMLzdBbEtRRTI0R3dhUTNvNlc0OFBJUHFFTzV4?=
 =?utf-8?B?WThjWTNvY0pOcnNnSUE3M2ZWTTVJVjRWUVR2R1hhZzRVWVU4SytQNmFPend0?=
 =?utf-8?B?bHNpc09pVk81YTArcmw2eWdoZWdmd2M1ejhCaytEZVc3aHpYVXhxN04zdnhn?=
 =?utf-8?B?RzVwRFdjK1N3TWxodnhCT0YyUzR2Znk5Y29kQks0M3JDU01zRlF2MXNYRDV0?=
 =?utf-8?B?N1UvcWRXZlZEbndHK0hhSU1MU1BHUmdHYVl2SjRHWXZnR1owcjNaNTlqNTlT?=
 =?utf-8?B?RzR5ZGV5TFZCTXRYd09vcFYwN1F4N0hkNUNycFVoTGJrOFdOT2xCcjdxYmhw?=
 =?utf-8?B?dlRid1p5ZlJQMXhRSExCLzJMUTdqdVlUMUliYWlsSTEvcFB3MXlZOHA1QjFj?=
 =?utf-8?B?WkN4Uk1DZC9xL3JaemlBOVlQSzBia0VreU1KVjRrUEV3QVZrek9OTU9zdWE4?=
 =?utf-8?B?eVpNL2RuNnNPemFQTlp1bFROUExMS2VraW5nbG51ajArVkhEbzhFYzZYT1Rv?=
 =?utf-8?B?a0RzUXZzTnBHaGlEUU85WndvWngvLzlHdlVramNIODRCY3lHaEFzUmp4YXhQ?=
 =?utf-8?B?ZGVzTUNOTXBXY3BnbkdNS2MyeXZ4MEZqcXRpU1N3M0RLZ2xjdXRabVJvazh3?=
 =?utf-8?B?dG1reEVFNmY4cW44dFd2SDF1dW12TmFTMmVXN0YvUzlrQ2ZPSzdlSHdNNlFh?=
 =?utf-8?B?OGI2c2VWYWt5SVQvK1R5NDYxc3BkajlQLzdOMStackUxT3lndFhFL3ZNajdN?=
 =?utf-8?B?YzdDcWNyVVhMK3F6dHhBaHlyTzBtSEovM0lqa1hXZGxjS1dlOHhCMVBYTlc2?=
 =?utf-8?B?V04vOWx3ZEwvdndyd1VQdXdIRVkxN3hVUnRQb0JpUGlqaFVXTm42cnVVaXUy?=
 =?utf-8?B?NUhQSW9zdjVka1dPcWVsa0NybkdIZUw2aWw0TVRHc0hHemUyVWJzalViTVpu?=
 =?utf-8?B?Q2FIQVJvNTRoWjg3dDF0aExITmpMSExnWlh5SGY3NFkrK0pVT1hPSzg5aXJW?=
 =?utf-8?B?V0hDSytiMXRRM1dWU0RxSk5KMDk2VFhtWlhScHVQR1haMDlUa1gwd3o0QjB0?=
 =?utf-8?B?V3JyQUdieC9XUTRrbU1DbS85Tjd2NHN4b3BhaEZNMDVjK2ZaQWt6ZmtXd2hn?=
 =?utf-8?B?Y0dqUXZma24ySkxRWFhSd1E5QnFhd0p2SmZ5RUg4T1F4ZWF3OWVuUDltaWU0?=
 =?utf-8?B?QXhHeTUyRHBWNWpqY3QrSzVkR2Y4VkhhRjlXZmVKWUFEcUorM2U3UHRyV1pN?=
 =?utf-8?B?cTd0Skd1THV0WE5ud3FMRU1ZdWZCMXpmMXM0Zy9CYzVIeEhDV2x0S1JmN09O?=
 =?utf-8?B?K2tETEhHSTRuWGRielQrek45SEpPcXZhS1lqMitvcHdhN1N2NHp4ZXVxOU5C?=
 =?utf-8?B?allxQVU3Q0VxQnBlbHZJU3ZnK1I0RGx2UDdpQzBKdlIvNG9jRHlvR0lwKzdm?=
 =?utf-8?B?dEZueDFpb2ZiWElCLzhkbkFFZmZMdlM0REF6NEw0cm9sV1h4N2NlR1o2VjhM?=
 =?utf-8?B?R1RuMG95eWdCQms4clhGWTJURmxpU052a3JEdGxKcGVTWGEzd0UxcjA1WktB?=
 =?utf-8?B?Qm5NREJDM1ZoeDVGYzFqTzI0NjErb09iYlc2ck5ieDdKTG13TFI0cjE4akFO?=
 =?utf-8?B?K2laMnpsRkZsY0lsRGtGZ0FjT3RXc0lqQjlJdnJnT3RnYkFmU2lqU2pPN0V1?=
 =?utf-8?B?eFN6bUdjZ20ybzlPTUkremxYakNwRVFtbkptaFJxWTBVVVJyTlVCQmFXQXJY?=
 =?utf-8?B?OVhQRlVaQzFLVWlHQ0l3WFJrb242WVRtRkovWENSRWpGQ0Y3Q0Zyczc3MjVw?=
 =?utf-8?B?OXM5VTVVSCtwcFlOY1FUcy9SM1Q1RjRRSXQ4UWhpd1FVRENHVDN0VEdLaUJu?=
 =?utf-8?B?SjF4b25ZcTBobXpZd3ZiUWdjVVM0VGl5T2F5YnBWMlNYQnhmSE9BOHh6Z2py?=
 =?utf-8?Q?Pwok=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFdiWFZETWtwdVlVRkFRd1AvT0FhL2huVzhHNzYyc3pIa1JkZWdDMFQwQ2xj?=
 =?utf-8?B?ZERDU09IajZRdDFmdldpbkc5MVpuOWVlWXNpZHBLTGlTSzcvNFJ2QTRja2F1?=
 =?utf-8?B?ZFMvczlhallPZklTSFQ1NlgwQm5Kei9DOHFLZlEzM1JZenlHbXJ2MFpocDRq?=
 =?utf-8?B?eTNzVHRpMDhZdDcvSlkwcnFrcjV5KzZJV2FUbHVCWFZmTzF2K2VSa3hXU3RN?=
 =?utf-8?B?MHBub3liNzlwK3lzbEtDci9IZ2dFNWx4VldvYSt5YlUxSi9oUkxSZURmdjFl?=
 =?utf-8?B?Rk56YktXSUk4WDRwNk5ud0hmZ1UzeDZDOGxuc3lBMlNYTTJpblVwNjlLbDkx?=
 =?utf-8?B?aEk4MFRva2ZKMXg3aHByVW1PNTNQNk9PSkFvemh4SlVaWXgzKzd5VVEyaG5F?=
 =?utf-8?B?cEcxK3ZwZkxOeHQ3a2txdmF6ckJDdlVYQ0xKeVVvSDB6V2F5dmJVZUhNb3VR?=
 =?utf-8?B?RTRyZ1lJUGMyUXRrT2ZRcTQ1TnlmMzVNVlB5MmI2SFpoK2FUR3JTSklYVmls?=
 =?utf-8?B?WjJaUkhZOTdPeUxQeU5SeXVsMXN5cnNPT0FPMzRRTktLeExPTUI0a1NlWUc1?=
 =?utf-8?B?Q1l1RFZPbkw4OGZ3dncrRWZBRHhSY0JFVXBnWDlnaGdFMmRyVyt6WWVReG5x?=
 =?utf-8?B?Nm9sMUN6NlNaWDVwZHpsdFdBekgxeTVsZEl6MC9KdDRYR3hwYjRmQ01LUjcy?=
 =?utf-8?B?d0E2LzR3V3lQYnRaNmxQSTY0ejRPUTJqMHdZMjNjTWI3UkZwTWRXVDU2ZDIr?=
 =?utf-8?B?c0RGNFRROHNKVnN2d0UwN0l2SE9TRnFtTUlrRnM4MkZaZDhTNG1uQTE4ankr?=
 =?utf-8?B?ZVY3Mi81bnQxNE5KZk1XYnJkVmNCRjlpRlFqM2x4Vmp0SEVFZHd1UG1FZE5v?=
 =?utf-8?B?SEJSOUNXWGs4cFhpVnFsSE1BTmkycGkwZlpEVlZYM2ZCL3RSTVMwamZRdG53?=
 =?utf-8?B?TTZUdm0xM1czcTZCVTVReXdhd1pxcGdYWHlkQlBuQmtrNEdzV2RaK0dtcXRD?=
 =?utf-8?B?ZGZ5dzZXWFVFY1gya21OTVJsYTJtZ0h1eVZEenQ2VGNERjdtTEFnS2ZUNVJU?=
 =?utf-8?B?OC8wMVNrMG5mcTV2ODlidUNOWW9LZ0Uzb0Vwemg3WjFGRVQ1K1hvZ2E4bGNU?=
 =?utf-8?B?V3JTbjR4V2MxOUw4NGg4azFjMnQxUlRRSEtOVnpBcnYrd3FVbkdwNXdvZ0w4?=
 =?utf-8?B?VDZ6azFOS0EyQkNEeHFlZzVsNE5zQ1BNc29ibUV5dmRaNEV2S0phUkowMkdI?=
 =?utf-8?B?aTFaTmNPQmRCOTlycFlaNHJuc2xLZ1Jvcit0SjdIVitiREFWcm1iSSt5bmJQ?=
 =?utf-8?B?aU5wbmIzeFl2V0JVVG5zdjFiT2FhWDBDSU5Jd0x4NzJGY2hXS0tHSlRxMEpy?=
 =?utf-8?B?WVNKalNpTHRld1dwa2pLQ05uN2xuK2tJMnloTzNKNjhjNmRrM1V3dFh3WTVv?=
 =?utf-8?B?eFpjSGVTRGs5bi9uYlVWU0lvclUvY3Z6dkMzaWh0WG1pcVMyT0hxUU1NZkgw?=
 =?utf-8?B?d3dPYVNUd2J3dHpVYlU3RS8rWVh5My9mWUFya3M3NUF2QTJnQWtCZzJXajgy?=
 =?utf-8?B?cmdycjRValhla1YrQUppWTJVLzNlMDBJcmtmUUQ2M1gzcjNHVWtWN1FxdFZt?=
 =?utf-8?B?QkVsSFpOc0tJK3JIN3pDcUtmNE43U0JjWURyc0xuU2hjWnVkOU1aUlRLWHFF?=
 =?utf-8?B?d1llOEJCYmFnKzEvbmZZa25PaGllZXlQRkhjSUpuZHJURWdIU3BlUDNMby84?=
 =?utf-8?B?VmhnOEdnV0FLclhCTEMza1BuSTZ3NjU1YTltK1NyOXlLeDdiZGNBbm5nWlh1?=
 =?utf-8?B?b0haQ3UzRXVZTGUvMVpEYUhuVXNEOXY0T2dzVEVENVRVNHd6cXk3S0VMd1Fa?=
 =?utf-8?B?QXdMbTBMME1LSmVjU25FQkRyREpRWWtseHBJUG9zeHRLVFNMM0ZmWkI2ZCtl?=
 =?utf-8?B?Ukx5NFlNOXo2ZnJGTTI0RkpLc05FekF2K01KNmtJL2w3THJ3YThyRFJaY2JO?=
 =?utf-8?B?azJDWWtRK1JsUk85SmhzVjlGMTlobGdqaXc4TnZpbkRCMTNMTFE4RGpvN05F?=
 =?utf-8?B?TkNTVWxkWHNnV1RWdEFDNUxKcHNudExZSDN4ejlSdFNwLzdXUUZJQ0VpSm9V?=
 =?utf-8?B?ejZJNndhV1ZjREhlcFp0WnJjM2huN053UnQvaUNkeHhweFE2cHZjRHNBSFVX?=
 =?utf-8?B?SXpadVBaY0dJdDVESjV6SE1kd1M0bmFxUDdKOTd0VmdiVmpqUFFvNGRYYkxw?=
 =?utf-8?B?S0pZZXNIMjI1dzI5NjlneHIvWk5LRSt4cVVrYlNZZ0lVSFhWcGtCcEVGQmYv?=
 =?utf-8?B?S0lweFFaZE44ZW15dENQSHB2Y3N5YUtxWXJLdGZnQWJNaUx3bWlMQ1NXT0oz?=
 =?utf-8?Q?CRF5b3szAkqnqfpg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55739d85-b729-487d-766b-08de655b39e0
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 08:39:22.4324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UemOHR6TlakDIdS2jpBQtsJx4w55XOpNh53byjedEbv4XutXdjZYzfzCxmS9b46nE8wTk9KupDjO2kqDXgQVY8Gcbj/yxmTOlL4wWf3Ilvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
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
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dnyaneshwar.bhadane@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 51A0AFB9CC
X-Rspamd-Action: no action



On 06-Feb-26 5:09 AM, Gustavo Sousa wrote:
> On NVL-P, the primary GT's WOPCM gained an extra 8MiB for the Memory
> URB.  As such, we need to bump the maximum size in the driver so that
> the driver is able to load without erroring out thinking that the WOPCM
> is too small.
> 
> FIXME: The wopcm code in xe driver is a bit confusing.  For the case
> where the offsets for GUC WOPCM are already locked, it appears we are
> using the maximum overall WOPCM size instead of the sizes relative to
> each type of GT.  The function __check_layout() should be checking
> against the latter.
> 
> Bspec: 67090
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
LGTM,
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_wopcm.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_wopcm.c b/drivers/gpu/drm/xe/xe_wopcm.c
> index dde4f4967ca3..900daf1d1b1b 100644
> --- a/drivers/gpu/drm/xe/xe_wopcm.c
> +++ b/drivers/gpu/drm/xe/xe_wopcm.c
> @@ -55,8 +55,6 @@
>   #define MTL_WOPCM_SIZE			SZ_4M
>   #define WOPCM_SIZE			SZ_2M
>   
> -#define MAX_WOPCM_SIZE			SZ_8M
> -
>   /* 16KB WOPCM (RSVD WOPCM) is reserved from HuC firmware top. */
>   #define WOPCM_RESERVED_SIZE		SZ_16K
>   
> @@ -186,6 +184,14 @@ u32 xe_wopcm_size(struct xe_device *xe)
>   		WOPCM_SIZE;
>   }
>   
> +static u32 max_wopcm_size(struct xe_device *xe)
> +{
> +	if (xe->info.platform == XE_NOVALAKE_P)
> +		return SZ_16M;
> +	else
> +		return SZ_8M;
> +}
> +
>   /**
>    * xe_wopcm_init() - Initialize the WOPCM structure.
>    * @wopcm: pointer to xe_wopcm.
> @@ -227,8 +233,11 @@ int xe_wopcm_init(struct xe_wopcm *wopcm)
>   		 * When the GuC wopcm base and size are preprogrammed by
>   		 * BIOS/IFWI, check against the max allowed wopcm size to
>   		 * validate if the programmed values align to the wopcm layout.
> +		 *
> +		 * FIXME: This is giving the maximum overall WOPCM size and not
> +		 * the size relative to each GT.
>   		 */
> -		wopcm->size = MAX_WOPCM_SIZE;
> +		wopcm->size = max_wopcm_size(xe);
>   
>   		goto check;
>   	}
> 

