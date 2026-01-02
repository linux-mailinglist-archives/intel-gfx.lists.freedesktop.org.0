Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E795CEE00D
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 09:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A340210E084;
	Fri,  2 Jan 2026 08:01:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FImdL5a3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F45610E084
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jan 2026 08:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767340910; x=1798876910;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5tF5Q0odV81bJAFDPYCBu5w2Uks6ABDiW1bkNxa53BU=;
 b=FImdL5a3ipF6Yfx/oi+5YyCz5DBvztGseMGHFpYZUEFHGtnQEf3i5P7+
 mCP7McO9GgVBEpVwnsBVTIn3eoP4txRchcb1wJKQR1LHTvEPfanJpxAnf
 0qyoqKUVeKMRV4AdX4Wrsb2jGgM5N0o2yJ+UOAx4osCeMRCSQzKfj/sTo
 bViWscZs6yILLXpTh2Z/X8CBXdX+5DM7YT7x6hyeLkoJrzkxIBEI08gaA
 VOb5yh8yfU948+eqHZqWIKaojKG3xqC+S1vSraEsVGJQ6Ss7Yi6Oghruq
 8daPhtQlp139+T5eZvp0unY6YerwZPC6T14GfyqPhytZ3IF9I2uz66r6v g==;
X-CSE-ConnectionGUID: JBz/rL1QRuqMvLML/b7a7Q==
X-CSE-MsgGUID: FD/0P7AwRyqnLnQdN3wK5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="69000107"
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="69000107"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 00:01:50 -0800
X-CSE-ConnectionGUID: +s49tX2PRqeVQpYDLIpEzw==
X-CSE-MsgGUID: 51HOFprnTe+BP9MnPpIBHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="202731474"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 00:01:49 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 00:01:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 2 Jan 2026 00:01:49 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.69)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 00:01:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dre7JmRcTnAlWIxMDU3WIE+2TGF9jJGtkN1x8K75n3lMB9rjIUmwerub6ShFl2CpmaUt1wl3XWpklUdTLkBZtkk5IlS6rwWl+f3zfPW0j3DkhiGAjtWB3pnx95lZAGFXWyFvLz/zGDsd5qU2K5f3HiFz2oaKs0CdyVLzyV7PF21QBhoVM57InlMx0AFwgnYFPD9N3ZUXdpQwQ2L8BX8BrKrUhfKXphQSb1Qmm+MlcHfCugO8TZgj2am3jxZIkBxM6M+3F0KsbJ4A7ja0F/slNdvkod84ghNIWzoIXsYTOas3XkQXyA6NogJP4IY8bWdkWHbwHzrMOsbclOvnsw7hYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hj15rkUtNrX5E0v+IxZhP4m8DAQKd6sk37DA8zjvpwE=;
 b=JkkWe//hlGYIrlBH63KsdyYDp0VEc/FJQD1hdtIOFY0ckJK/KK9OnbtZc8r/OVkNfqBfnwBcwulJfAsohcJRDmlGrYW8w8Utj9aIAMN8IAnSHmYu6CXwdAPaHhvVGUhr1Y81nZ+rMEiycWzxlQGKbe3ja65ilG8ztky1zFjfj3k/xPx4TC7f4jfA05xj+e/Wm1O8MyZn4N2RV33Xe677VIRvZOeIp4hIF7Z9xTNC7ySINuI8EusXok+svuSwzv6489Sz6rlbProTMLtHM8oROIgIjpidqoZONPSIJWOh1yamZqNQ/Hzsq8iFRdwkljHwsYwhLn/tJg4W/9UfoN/P6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5174.namprd11.prod.outlook.com (2603:10b6:510:3b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Fri, 2 Jan
 2026 08:01:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Fri, 2 Jan 2026
 08:01:41 +0000
Message-ID: <2707e264-f822-419b-bd48-e24d57c91a27@intel.com>
Date: Fri, 2 Jan 2026 13:31:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/gvt: include sched_policy.h only where needed
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1767180318.git.jani.nikula@intel.com>
 <2807f82cf571ed6e736242bdfad786efcad50f02.1767180318.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <2807f82cf571ed6e736242bdfad786efcad50f02.1767180318.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5174:EE_
X-MS-Office365-Filtering-Correlation-Id: e1abc613-8e61-465d-99fa-08de49d529f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3hYYWFKQnlqYkN3SmpNbVhOQlgzdjhLNXFXQUJLbUhEWGxySTRUeDdtRjhK?=
 =?utf-8?B?K2k3Si9ZWklhd1o2REwxTTJ3eGJDZmN1WnhPVVh6ZVJLVEM4SGVMQi9Ka3hG?=
 =?utf-8?B?UHNvcWxzZnlKZFl3SXBXYldnUlRuQnVyYTh3UkVKT1dFMmdkN0tvZnJTNWVw?=
 =?utf-8?B?MkJXeG00NzhiNFNDbFZ1cjR0M2hFUzF6WDM2SExFWVdjQkQ3THoxNEhJT1dF?=
 =?utf-8?B?RHhxNlRrcXJYWnhnS3pnZUtCNHhvcWxRcW1tSEZNVXRXOVlDSkcrOG5sT3V6?=
 =?utf-8?B?TXJtRC9McHNnUGRCM2tzWS9udWd2d2dYSUFVV0dacVhOd2FZdTd3d0hqTlBr?=
 =?utf-8?B?WEFvcE1SemdQcG43OGlLREttYlR3RGJ3K05LejVFSlQ0VUhBSzI5U29CQmc3?=
 =?utf-8?B?dlJuT05KY1Vheng0Q1E3bkpFVVp3VHhsQjFRRUdDejV2M2oveGlpSDZIQWRX?=
 =?utf-8?B?NzhPd0dZNGQ5ak5jSFp4eXlNM1BqcU1mN21ZcXlzQi9EaUlKRkprc3N1di95?=
 =?utf-8?B?QjlFRzViZ3c2My9VZUcwOWFnQWh5L0l0dVVGT2Y2aUlNcDdIYWo1ajBJK3BC?=
 =?utf-8?B?anhJeldGeUhwZ05nNFhpRlRtWjNhdW1MVkxBcHFvWURvU3ZPWjJaRVJzMk5H?=
 =?utf-8?B?WEFEaCtKTWF0S1VYYzFZL3hDak01NE5IS0dhYUNZYjVjNVJmbVFLaWIvMkhS?=
 =?utf-8?B?TG9UaE9HbkJ5UVNkNUd6VUxZeFNubWZlaEVQSmtOYUsvTGRYUEUyWnpYbE1k?=
 =?utf-8?B?SkhOenlBNHR2QmZ4N0pWdzVPM0RtOUwwMmJpVzloekJWa1VxTDgvclFkLytw?=
 =?utf-8?B?UXFxMUlVaHRtK1ljUms2eEVUZ2NlZXNONnFFbUdURzBaY0ttM2FFTUtTY1JW?=
 =?utf-8?B?c0ZKdUNwYm9ET0RWL2lkN0pCSlRpMkdicmhsUFhSSXhDZkEzaGFjSk96emVY?=
 =?utf-8?B?SThOb1VEcFNQVmRYSXRIK1BVTEZKU3RSUlp3UUtrQ2IwU0ZqSHNrZVBlUENw?=
 =?utf-8?B?bFJVem5PTE1ZaEp0dVhXbjRvQkNnaW5jV2lIdTY3aExQbXM4NFh1eXFxQXRU?=
 =?utf-8?B?QklJSkt4NzE1U3B6N1VvYjgxb2o4VE9BbU9yS0xibndoYWxBNEFvOUJKNnFy?=
 =?utf-8?B?SlMrK0o3cmVWZEQzbUgwcnB3S0ZWRytHd2hmQlJWcy9IWmRTbHBEYTRIZ2tI?=
 =?utf-8?B?YUJoMWlCQ0dXY3RMZUM1cDA2L0daMVJ6emRISFJ0OEZ0aU8xeUc4YjQ2Uk53?=
 =?utf-8?B?OGdZSXpJTjBaTmtERmVLbWQ4QytCQUN0WDBwbFFBNzkvMElLak5kVWNZWVhR?=
 =?utf-8?B?Z0hrMXNZcWRXcUp4Rnl1Qk8yNE10bnRsdmN5N0xTTlVWeU44NVNvS3N6QXBV?=
 =?utf-8?B?MjU2NS9oR0Ivb0VCM1dVbERVZTU5ZUxFYkxSWVZ1Z1BoZm45Y3ExRFp1ZnJ2?=
 =?utf-8?B?VWNiempkVXhLQTJubG9BVmNSdTZLVVN5clB0UHZDYUQ3OWpucWNTZ3FmYUoz?=
 =?utf-8?B?VDg0NktsWFJPVm5mSi8vN1pJeEhUMWNjbWQ0SjUyMlFyYjMwYzIrRlB5azl3?=
 =?utf-8?B?RFRoSm1CVlE5RlgxbVVMNG43VkpML1JHMnFiWFBzcG5BL3NsYzVyTUxNQjhP?=
 =?utf-8?B?ZHcrNzh0bUw3NVI3WEFTc0lQbFNQTHQ2bFBqOGY4STJLOElpalFrbW5NMlJL?=
 =?utf-8?B?QzlXZTdJcG1EWGZGZWt4TGhQdFM3MXZtaXFJa0puMHNKQy8yM081NExYYkkz?=
 =?utf-8?B?d3FJNTkzeDZObVV5amQ0Ky9WTlR2WFpvZnNwZldGNFhEVXMvYXlzUmpKMXg4?=
 =?utf-8?B?aUx1QWRIalNrakFzL2VEWHpVeHdsM3NPWWxSU1NJSjRUc0xIQ2QySkMyT3pO?=
 =?utf-8?B?UVRSdHhTYXpmcmI2R2RPTWxtemlMOEpZeWd1TDRhR3ppTWJUVlZESGtqTU03?=
 =?utf-8?Q?Z5NW/1TToyMoSjbrJ3QsyQetJYISEzCs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qmcvak41QzZ0N0toVlB3VXNZVnpBTUh4Uit6WlFPcGJpU0hDcFhBaGhZOU5Z?=
 =?utf-8?B?ci91cUgzcjZTU0xyenRwQUM2QjZ1SWJScTA3aUIvWHNMODh4RFlHaTl1d1k5?=
 =?utf-8?B?Y1VGelJvUFdyamFlYS9yeXBQTGN3ZzRzU0d3MXcwdGU2V25oRmNNS0xkYlYx?=
 =?utf-8?B?Qm1zVkNiekM5L0YxNUQ0SzJQSjVsUTBsUUNGcHdNZEZrWVc3K3R5dStyM1g1?=
 =?utf-8?B?d05zb2tya01KTTJrT2lXQ1M0eVlLcjltM2xvdW54ZWpFZWNxakJObEhUV3M1?=
 =?utf-8?B?QlE2SVVUTHp2OUtqbDAvVnEvN0dIMFBGRXRxcHpSVE04M2hlSmRHR01Sc0cy?=
 =?utf-8?B?a29Yb1lFbTZjcXY1MlVTd0IySm1tczVza3dtTFA4WTNxejJUZDNNSHAwb2VC?=
 =?utf-8?B?cFRWa0E4eUxiN3FDZTFLTHBSUmdMZTVIYlY3OHdvcStPVllEQi9CZjJpTDIx?=
 =?utf-8?B?eXM4RFZZRVpleGEwb2JLdlc5b3lFWm93NktDSXFpRHc5S3pETm4vM1NXU3Fz?=
 =?utf-8?B?QUppYVBXeXNDV0NCL08yaHhsTFlWeEExMExPbkEzK3lGV2tjV2tLOVg2QStP?=
 =?utf-8?B?ODdaYzh5ZmxndFBJUlJHSFJTSEhiYXJpeEgzakhXOTBiV2VRZ0NlSlRCZGts?=
 =?utf-8?B?Q2pYdGoxc0xvOU8vVFMvRWNpRFlpK0dUd092RVdPeDllekZKNGdoSDR3aHZL?=
 =?utf-8?B?R1BtTUQ4UTZaeWdEWmVUL3IvSjFxa3lIelJpWE5kajA0RDdSZHZtMENkc1lM?=
 =?utf-8?B?UmlFSnVYRUYyWHhxUlo0L3pZY1psUm8rUE96djJkeWw2dzA0YStxb3FBWjli?=
 =?utf-8?B?aXFmeC9xRmJaemFHYXUxeS9IZmRsM01PYzZOTHNLcVpNWlkyNW52NktSUldk?=
 =?utf-8?B?WEtoQXBqKzVXbUZCR2loTnRwald0dWNWR1gwUVoxV2xobXNRRWRBZkpmVHdQ?=
 =?utf-8?B?MURIWTVSR2Nlam5OYkpuQzFPSXBtL1VpemlGUllvYVJrL0dlNUdJTm52cUFo?=
 =?utf-8?B?N3hTYXFTaXhDU3pnNzdQQktGK1puNHdrb29XdVpKQkxNeFdMbTdYN0MxUWFN?=
 =?utf-8?B?UlZoNGxnNFF3QmxPdXlWQTg2LzhrS1JrUVVJd0tVSmtuV05RTnpYN0pLUW5k?=
 =?utf-8?B?aWplUmRPaGVWdnZqREJqUENYRkNneDRlUG9zNnBiMHpUZlQ3Mk1BQ2pnbEpD?=
 =?utf-8?B?YlFIc21mV0YrUCtCRzZBWGxRL2VYZ2ZYSHJFcTRyVmltdjcweXFDTFNuZnZJ?=
 =?utf-8?B?QmcwLzg0N0NERTBTSVJFU1kyQkp5azZBMGdCRlBNVVpad0tOaXJnaFM0MzJ0?=
 =?utf-8?B?eCtkSGNTOFdiOVZuZm81ODhlL204VDZ1UTRkbDVZSTBvVElYTmdwSllhRlFX?=
 =?utf-8?B?YWkzKzN5eGpoRGVPVDJycU1SeDgrUjVwbkpLczhuc2l1SDZCVjN3ZHM5bU9D?=
 =?utf-8?B?bldGdzF1eU1BREY1MXZ3UklEYkVLTk5NcDZIMTVzKy9xMkNqbTZtZ09ldWVh?=
 =?utf-8?B?ZjNsZk5GQVRxdEpybHBZOENBQ3Y5RVhHb2Vqb3BFdHZzNW9qMHN6eUJZcjM5?=
 =?utf-8?B?eU9lOWMyc1NHcTB0NXhXejN1OHVLdXJ6b2tJcUViYjRJTk8wTkczYUNiRGJ1?=
 =?utf-8?B?MHFUVUQ5MXliVVFYWHAyMTRiWGpaenNzWTQ3VFBIMkp0V3k2YUI1bVAwYlNL?=
 =?utf-8?B?cElld3FzQWpzVGNlVnZhbEpiOEViUVZxTVpOenJUZlBwV1ZxZWhrekF0eVN4?=
 =?utf-8?B?RWZiNFVxZUsxTExDb2owdXUwWmpESjlwcmV5TGQ3L3hRdU9WbkhqY1l3c0xr?=
 =?utf-8?B?VzdnQUVsY3ZhY0dyUlpONE9NamRpQmRVRDZzb1FvTytjR0tlUFZiS1JpUFl1?=
 =?utf-8?B?M0Q5SC9pV0M1RG15aVhxc0IyZlBRRmpnQWdiTXBCaXorVVQ0REwwYjVkUHF2?=
 =?utf-8?B?OXBrZlJxNVNXb0dWdkIzU1NZVnFYTmwvUGQ0YXA1bUsxMVZteWJFenltMEJt?=
 =?utf-8?B?aVhRYWtVOWk5ZDJRdFNBeWRwOExCWDdhLzZTTS92Z2l5NFJSNkwrSzJMQ0p0?=
 =?utf-8?B?UzVRQytUNGNUNUZxR0hnZTVHTHorMnRNNUFFS3pYbWRpYWdQNU9LTS9haDlv?=
 =?utf-8?B?Zk5mRWluTVlMVWhscDM2aTltVVdvS002dXN4aFZjVnBvdUpKc1Yyd1I2OUQ2?=
 =?utf-8?B?aUtqdmMybXl0cnVKQy9BTDRIZFRYd0pzY3ZEUi84OGdia0ZPTUZCZzhXbjVN?=
 =?utf-8?B?NG5NL2swRjdKbTVUc0UzR1dGZFVOQ2FoSGFxbkovYzBidVFSTTZvM3NZNlFt?=
 =?utf-8?B?eko5akJueGFVdGsvdGcyWG9BQVlUTUh4TUdEbTZ0QVFMQTh6SlNtWUM2bGtR?=
 =?utf-8?Q?iTuOrCD2365fWtVE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1abc613-8e61-465d-99fa-08de49d529f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2026 08:01:41.7828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NzcDmTYMFyO1pv1VOYN4GfY8Y16bWrSaXvccCSq3NK5hoqgzS5RK/m7etQ3qnjiKGMdvf2lgoxRKxnqcSy/qNuuX9arvTpbIFh7ymTpqTmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5174
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


On 12/31/2025 4:56 PM, Jani Nikula wrote:
> Not everything needs sched_policy.h. Drop it from gvt.h, and include
> where needed.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/gvt/gvt.h          | 1 -
>   drivers/gpu/drm/i915/gvt/handlers.c     | 1 +
>   drivers/gpu/drm/i915/gvt/kvmgt.c        | 1 +
>   drivers/gpu/drm/i915/gvt/sched_policy.c | 1 +
>   drivers/gpu/drm/i915/gvt/scheduler.c    | 1 +
>   drivers/gpu/drm/i915/gvt/vgpu.c         | 1 +
>   6 files changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
> index 965d94610d56..9adcdecadaa8 100644
> --- a/drivers/gpu/drm/i915/gvt/gvt.h
> +++ b/drivers/gpu/drm/i915/gvt/gvt.h
> @@ -54,7 +54,6 @@
>   #include "mmio_context.h"
>   #include "page_track.h"
>   #include "reg.h"
> -#include "sched_policy.h"
>   #include "scheduler.h"
>   
>   #define GVT_MAX_VGPU 8
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 04cfe0997cde..68afd9b046d4 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -69,6 +69,7 @@
>   #include "i915_pvinfo.h"
>   #include "i915_reg.h"
>   #include "intel_mchbar_regs.h"
> +#include "sched_policy.h"
>   
>   /* XXX FIXME i915 has changed PP_XXX definition */
>   #define PCH_PP_STATUS  _MMIO(0xc7200)
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index b3739c9fcc48..009aa2df7958 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -52,6 +52,7 @@
>   #include "gvt.h"
>   #include "i915_drv.h"
>   #include "intel_gvt.h"
> +#include "sched_policy.h"
>   
>   MODULE_IMPORT_NS("DMA_BUF");
>   MODULE_IMPORT_NS("I915_GVT");
> diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i915/gvt/sched_policy.c
> index df787472b1cf..9736a15a896f 100644
> --- a/drivers/gpu/drm/i915/gvt/sched_policy.c
> +++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
> @@ -33,6 +33,7 @@
>   
>   #include "gvt.h"
>   #include "i915_drv.h"
> +#include "sched_policy.h"
>   
>   static bool vgpu_has_pending_workload(struct intel_vgpu *vgpu)
>   {
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index a91accfd371d..6b5ee40a4386 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -49,6 +49,7 @@
>   #include "i915_drv.h"
>   #include "i915_gem_gtt.h"
>   #include "i915_perf_oa_regs.h"
> +#include "sched_policy.h"
>   
>   #define RING_CTX_OFF(x) \
>   	offsetof(struct execlist_ring_context, x)
> diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
> index a12011410874..96d0bd1fa337 100644
> --- a/drivers/gpu/drm/i915/gvt/vgpu.c
> +++ b/drivers/gpu/drm/i915/gvt/vgpu.c
> @@ -38,6 +38,7 @@
>   #include "gvt.h"
>   #include "i915_drv.h"
>   #include "i915_pvinfo.h"
> +#include "sched_policy.h"
>   
>   void populate_pvinfo_page(struct intel_vgpu *vgpu)
>   {
