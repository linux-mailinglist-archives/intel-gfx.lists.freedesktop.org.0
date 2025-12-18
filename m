Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7934ACCD6DD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 20:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCED10EB3A;
	Thu, 18 Dec 2025 19:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n4w32oXZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A612110EB3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 19:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766087091; x=1797623091;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kPev43lSHb8ZEpgT/B+OTtneC9+9+omRvxtx3sjP8cU=;
 b=n4w32oXZUnyNEh367xd4Dq8lShWE6uHtL0DZK6UFiRhwfSdr/Kzx3TiL
 qkRmvWzZ8ZeiXyRJCvimTOHZIK4O2guQLJFnFRwEu9fhe6n9AHBIb3kiq
 2SMhZ6/EMQpbuOIweijOTe/Z3Y+Gv8vWulj9nws2EqL6cS6tFvWIVbNXp
 dvV4pMdMQSDxDYZxhmFv1AmSBAhDQJplIuHiBiX3XjO98dnyD1B6mPOFk
 YLlL2a1szbWbzQ0Bnz2SMTeP7XYzOJxUBbVLX+mW8QJbEC5nYfcILHk0Z
 kiaYJSpv1MdcA3CDqVe223aV/J+NicLBm5dHwCxE9IgPF3gLoF0kL+aWu w==;
X-CSE-ConnectionGUID: zQ0N26QKSCOJeS9yDdEx+w==
X-CSE-MsgGUID: HzAhkqKwTJWnw1HyoBhxEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="79172613"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="79172613"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 11:44:51 -0800
X-CSE-ConnectionGUID: hCq+hoQNQ9GGTNfoZcik1g==
X-CSE-MsgGUID: Rt2A5sYVRGO17S4h5bLjiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203571669"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 11:44:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 11:44:49 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 11:44:49 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 11:44:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KDJ0QM78WMMgeX1PG1ZXFJbrd//HpoHTaIZQ1mLbYILPkbZLHBzpU+jMYJ5pyU/0yesrAQpohuA7w1gptWNvDX0C10LGVdzIm583IsrNmebq8LSh+4j0UbZDOl6iLeQyrvgMau55OKwW+7UXOzzwPHFscrg02HOIo94mZRfhyOaU4VxrBLfFONmnpJHJF3tqwD8BERe4/lbhu6Q4WzKAQfgsAxQocygP1xGc1BJ8V5IT8+jQgjZW8nnrm1t5sQIHIYYNuBBdsgetVFzyW7MrD3biLAouqnTLMnGJ0oDdKet8BmkLFysZXcBN0LslhuIBvF+qVTGzP8F6eetxPGy9zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S8wWCbnG+/s8LGRJJtguEMKAg6d2TX8FP6mhed/VElQ=;
 b=PPXqOREx8PsCuqlvfE1UoCob39t2C4vN2TIQIPAcyXiHe2+b2Ik1FEGICtnO2JxRaeoFFVUQcN96xY+/bgj2nmpkiYPCJEqZzErJIH8ENV3vxmNnNCN/AImaBf2TEPB8Yy7ovxqtio2sElxu9RhOxaugGm7lkjG0/gnlrwHiH5PN4YwqNUAi1aNNVO9iOYVPB/e8Q4HLr1Yx3HjbV58hy3pLQD+CypDLAcjifhs4AOZTGpd5abh/2sZAQRYl7VbcwDh4A0P0ZkDbiom4qE9dDB79t6O+gvVrQ9KB9GlA9vAM+XN4/JCgGJ1XZGLNqSfWCwxy0JAR6ggRFyf7I+l88w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CH0PR11MB5298.namprd11.prod.outlook.com (2603:10b6:610:bd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Thu, 18 Dec
 2025 19:44:46 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%5]) with mapi id 15.20.9412.005; Thu, 18 Dec 2025
 19:44:46 +0000
Message-ID: <8c3db799-119b-408e-80a4-229519a28984@intel.com>
Date: Thu, 18 Dec 2025 11:44:45 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Recommend GuC v70.53.0 for DG2, MTL
To: Julia Filipchuk <julia.filipchuk@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20251112182606.1470733-2-julia.filipchuk@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20251112182606.1470733-2-julia.filipchuk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0098.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::13) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CH0PR11MB5298:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e74ddde-3bfb-45b3-c6e3-08de3e6de5cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aEZuWHloUUsxMVNCUGlTRDk5bFJOY2pwZytOdW8rZlRITE9hcW9oSG1wL1B4?=
 =?utf-8?B?anh3OC9DVXdSV1daSUFqZ2p3S0hFWDF1ZEFYWjBadlJJeDNoY1NoY3FvaXRz?=
 =?utf-8?B?TmFyTFN5Rmo0TTM1bTFZaWcrSUNoSFY3Vm44MmdGS2tGczhCTEVoZkZvOW81?=
 =?utf-8?B?V0xTVDgxMUNrZ25wUkZNTnFId2l5TktsSGN5WVJuaFVyRHc4dVE0cG5SSkNE?=
 =?utf-8?B?RGljT08xUlE1WDN4Tjk4dW1PV1FUZVJoQ2MrV2tJYVI4QlhrTkFuRDZPVVVB?=
 =?utf-8?B?aXk2eGdhOVAxUGpnNllxL2RCUjlZTzFrLzRJRDBROEdmNmo0N3cwci8ycEpI?=
 =?utf-8?B?WEROa3ZieWN6elc3dHoySDRyS3RxdnA5SnlNL3MxUXkwdGg4SmNaRTJqZ0ZK?=
 =?utf-8?B?YWVhdzlBTUQwYmtwT3VhTDc4ZGZsSkFZbUJpQmxBQkN4SEI0bE5hMGRhWHhZ?=
 =?utf-8?B?Z0hOR08vZ0dxajFxRTJyby84ZVNGTWJRRXBzcmJObGNGVi8wMElJbU5nbWR2?=
 =?utf-8?B?aW1rS0J4N0xDbDJXZCtjaDB0aWpDd3pNR3BOR1lFdC9sYzNmd3hDYkpRYlVl?=
 =?utf-8?B?dHlDQnlPRElaWVlyc1RFdU9xYjFCZUtheEI2NldCalczb1NhcmZYTTZ5TERO?=
 =?utf-8?B?REFTMXh5eDFCNjlUNVdndHZvQVlTMExWbjg5ckxad2N1M2owS2hVWXptWWMr?=
 =?utf-8?B?WXlJeHJQNVBwc2NoWE5oQTFrUjg3WW80cWZOUHc4UG5ySm1GNGZ6T0p4QVhD?=
 =?utf-8?B?OGlDRjdKZklVazJuN3cyOHN6YlJEckZvc25HRmZTeXNOckwwNDZodk9sTllB?=
 =?utf-8?B?R2wxaW1HMVVuZ0lkZUxUMnJBUUFYSG0xN2FDczJnUnFEQjdtbHYzYmY5WUJi?=
 =?utf-8?B?a0l2Ylp3L1JEWVc2bW0wR1hVNVo5dnB0WEVHRStDWGNVajhWTExEM3I4STlj?=
 =?utf-8?B?R0FxQllhTUNoaU9mVGtIVHpGcDMyY0Yyb3pzeStjRXdFditRV3FPeFFUQ1VJ?=
 =?utf-8?B?NE9KRmhOMlVhUkVqL1hwRHBuUUhqT0ppVS9DMnJlRWtFaE9IdEQ5Vk95OGln?=
 =?utf-8?B?bDJlYXBlUUdjVnBmcFI0YXUzUmFtTmZXUlNib2IvVGdWRDM0ZENiS1NHZkpK?=
 =?utf-8?B?WXdPalFyeUllYzJEczBHaXlaZVJYQTRQUExwdmhkQVlMbVh2RUZLYlg3YnJt?=
 =?utf-8?B?b3dZbXVZUjZoR2ZKaHVQL2t5SWNFM3pQQzgvaFp0Z3E5bWdNRURTdHhnSExT?=
 =?utf-8?B?cmo1MEwzVk4vYzQxcmNMVFFWUWliUlQ2YThqS0QrVHRhY3liOFExMGZvUUtE?=
 =?utf-8?B?Z0VkRUFvNzBNOVlRTWM4alZ1aU1vZDJjV0hOYXRnNkdpNVkweExSSzlrVUR3?=
 =?utf-8?B?a1VUNW92cmdoSENBZWFzWVZvZllJUEx2MHNJU3RwKzlydVZOM2VuWmk0YnBn?=
 =?utf-8?B?dVo2WG0zQW5MTHVLSzdvclpwU3IvRUFrd1loRFZqaWpXd1hmYndSZUtyb2VE?=
 =?utf-8?B?d2w5NU9vNkNKb0FhOXN3a1NBVFEyMzhsVXNnTDU4bS96WC9qaXNFSjhwSU9P?=
 =?utf-8?B?NDk1ak1nVXZySFZxYU1xUHE1dDB0QkppTU9Zb3FKby8vM2Q0cFI3U1piOHNn?=
 =?utf-8?B?QjVZQnRkUDg4SDN3T3M5c1ZKa3NRZ0hxWG1GVlRnalpsWkd2YW1LUjFoQ1FY?=
 =?utf-8?B?NnF4T0VtZDFtUHhKZml3b1NTZENrZUptaFRaUllZOHB3aDN5UjlhOUU1Y3RT?=
 =?utf-8?B?aElkOE90cFBuNk9id1R5bWI5QldHZlhLZ2k5TitpTzhvTkJPMUZnZ0l6UExJ?=
 =?utf-8?B?QS9KdEJZVDV4cWtGT0hyT1pzeEFrU0ltQnYyM1RRVFU5Q08yMmFxaEU2Slpa?=
 =?utf-8?B?UG9IN3d5dmEzamFEWDFEbzJTWnNOUlQyODhudERCTG1oRHVvS0xMQ0U0c3Rv?=
 =?utf-8?Q?EhbYSrgfwezbOPJi62z96liYgECq6y5V?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enVRejNTTkZVMjNRangrQ21oU1dVenBrZ2xVRzdPSCtRRkwrNDF0OHR2QTFW?=
 =?utf-8?B?eDFwMm92SVRzOHUzaktzUHl1dktTWGRBTm5kaEwyYlhsakN6OXNpVEdjOXlx?=
 =?utf-8?B?U0hsTE9WQkswN29SSithUkE4LzdrdHl3UW1ad00wT1F5d0pZUnBqcGEvbno0?=
 =?utf-8?B?RG0rejArb203QzJ6eGFRVkFHM01CWDB5K2xKWCt6dmJVZzEwa3AzUWpkRGx3?=
 =?utf-8?B?VnZDTUxSdTNEa1FrNzVBT1dGZ3FGWng2Wnc4bGpnb21DbEUvd3dHYWxZcFZa?=
 =?utf-8?B?c1ZaN1U4Qm9xZEJ3US9KYWlTakdXM29OQ0hKb0VBUGlDR1pFZk9Ed21QY0x2?=
 =?utf-8?B?ajJyZDYvaW52T3N6OU9QbFMxM1dQa1I4Yi9IZFN3WGtNTlZhVS9ZYzJHckFY?=
 =?utf-8?B?RFBqZ2VyakRzRy9uejJ5eUZ0M3JQOXU1VGZoQTJXY1BPMjJtZnBIUXBvclEy?=
 =?utf-8?B?cllQbmJ5QVdvOXl5MFVZRkprZiszY2FSRnVnZ1lLb1F0aG5DRG5XRHpabU1l?=
 =?utf-8?B?K0V2bklxZ1hzNW5ZWldzZzB0VUY0QUhPVjlWWEp6bXhJZ0U1eHpaWjFlQ1BH?=
 =?utf-8?B?aUtkNzN1UjZlekRiUzlqK3FLQ2ZUNnNGVHUxZ3cvUWN4bzdFM0xLcFFFNWtp?=
 =?utf-8?B?ZTkwUkNrMjRudVoxb01Idmk1ZDd4V3V2Y3J1NVpUdGRqSldpMXBSc3AwTHdk?=
 =?utf-8?B?ZkkxSkFwOGx4eDFNYXd3Wk1qS2NJVkdNOWxadEw4RDQzcDQxbngxMjkveTJC?=
 =?utf-8?B?ZG8xK0x3dzNYU2lGKzY2VVYzb0FxZnZxMkdIMEo5Y3BncXF3anU1aUtsYXo3?=
 =?utf-8?B?Q1I3dGMwemtRek1Yd1hsZTNlbWc3OEgwb1ZGcUE1RzdFNmtpenArSmpac2ll?=
 =?utf-8?B?RkxwTHBybGhrZmM0a3pSR1ZDWW5lL1V3MUc3elM2d05NVVNRclFGdmMyZDhp?=
 =?utf-8?B?NWxrZEcyd2diOFFmZ1JKc0lNZnZJWlpESktLbFBCTVBRWEZpR0NiNkFTbC94?=
 =?utf-8?B?c2hRd1lRRXZUU1U2VU9qMHFhZlF5bWQzMkl5bGR3eXZHRThobUV2S2syc3NS?=
 =?utf-8?B?YlNwTG9keC9uNjhPMXZoOUZ1ZXZPS0xPaDBsSGFmeW5xZVc5K2VXSys4TDla?=
 =?utf-8?B?L2EzNUViY0NzL3cyRnNqRWZ3WVV0dlF5SUVuNzF3WC9aMmwxWDlsOGNic2h2?=
 =?utf-8?B?NGhrRzhKcjdmMDFWM25iNHV4WUZwYW9xdXc0WGVaYlFLL0JDaXJlYU9Pa2pS?=
 =?utf-8?B?SEV1UzFRTVo0VFUxbWRkQ0syaVY1aklkeVVDWm9OZGQ5TXo4Q0NlRWJUM3Jw?=
 =?utf-8?B?TFp4Y0RuejJvWDhoamU4UHpIZldFcGFNL05wRWhYSm5RaFhZLzh3bHlmS2JS?=
 =?utf-8?B?L3Zqa2JhcE9VV0YyUXptcXNFVVNXWjR5c2pCczFZM2NYaG9OUUFFVDFIUjE3?=
 =?utf-8?B?RnlKbXFLMmVmU01PaUJOeDI1ejF5SVBFd2w0OGYvdldsZkV3Ny8vZWZkVFVE?=
 =?utf-8?B?dWprWWtLQ1RsS0RGWkxXY2NITkEyRzVjOXhyb2diTU5QVUpFUXRyUVhnZ3Fk?=
 =?utf-8?B?NWQxaWtwNzUvNXJRSk9LK0hJY0sxQkx5MUlGMjZzZDYxZ2JCRGN0NTB2VERE?=
 =?utf-8?B?UTY2cHNCa3lBSzB0ZjJHZ2dlZzFhbXBEcVRETGM5d1g0eEN3WnVMU1NqZlpk?=
 =?utf-8?B?UFRSSHZid3B6Y1Rvdk1Yc04xWGhQS1NNWURLenRjWDJPWlFKNVhneURDT0RW?=
 =?utf-8?B?MTBvNnlZbFRwWE8zbE9Zb2JEY2tHQkdveUszTjFRbC8vcVpPbURaK3NReFFR?=
 =?utf-8?B?VHBrWmkvMGFPaWJDaE55MkRFcmdmMzNYQWR3dnhyNEVEdDdPdXdZd2Fnenpv?=
 =?utf-8?B?c3RvMWVsY0tyTDZPQTA1Y1RUclZwQWJmWDRubndZZTlhYXpjWDM3ZHQ2WXpM?=
 =?utf-8?B?OGc3bi9va3I0K2xsQ09BUndTd2Y0MUtqdFdlcldYZEdlU29GS3FBaGdzMmpa?=
 =?utf-8?B?VHFaaDQ0aUE0eGk4UEQvWmY0SzNsc3VLcERYMC9MdUNZS0lRL2MrM25XL3A4?=
 =?utf-8?B?d2k5QVdGSG9QVDdXbHN6MWR4a3IyVEJnZndSdGUrMW45bTA3ajF4emtCZ1Z0?=
 =?utf-8?B?YWJ0VWYzNWRlVG1pbm4yODZPSm1LalFmUlNkbmJMcndTZ2x6M25lTitRRUVX?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e74ddde-3bfb-45b3-c6e3-08de3e6de5cb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 19:44:46.2359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A9ndPAuU6xtoqLb9i2N3DmmnWcuRoIjpKWb2EPUpycIzz5W+LYG4LCv7Ngv/xSjSA9/cDGFqJdd86BYsc4POzkBggJhmNEpUmDcVh/XdH6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
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



On 11/12/2025 10:25 AM, Julia Filipchuk wrote:
> UAPI compatibility version 1.26.0
>
> Update recommended GuC version for DG2, MTL.
>
> Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index e848a04a80dc..813e58b45d5d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -88,8 +88,8 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>    * security fixes, etc. to be enabled.
>    */
>   #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
> -	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
> -	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
> +	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 53, 0)) \
> +	fw_def(DG2,          0, guc_maj(dg2,  70, 53, 0)) \
>   	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
>   	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
>   	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \

