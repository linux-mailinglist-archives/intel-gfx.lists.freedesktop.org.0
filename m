Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BFC9C6CB3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 11:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D8A10E0D4;
	Wed, 13 Nov 2024 10:20:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ghATtLIe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98AF10E0D4;
 Wed, 13 Nov 2024 10:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731493204; x=1763029204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=giyuBjYmxQST8PJtuZUhnwI6ZnyFLiqNNjBisBFeWzs=;
 b=ghATtLIe1XNWDgsC1wfyrWlMJMueTYKklc157CtYiKdA//k82w1mx4mh
 7UArPcxVXwBP3v/PjuFLJrlhniKbXk0nLGpu4pmsF83qkvZgeOSjhVykz
 GWeB6tyOAnz4YE1Azfn6lmJL1QnBOijil+BCd5ogMiK46K6s7su8ptmqy
 g9jANLPdRj3Gvf4zj0GxjGYdkL3ug4ovEGOK8kjGCRGykoZCU690qM/ua
 Wb1FbtkmTjt2yzL78uugm/CDOKE5Y0ckPSfQNyTbRHOHIxaWbvuiawQ3Y
 xvc6OOw9GM0TgylTeFpdUtuR+lvx0zOztOBc/Iy9udPkuLNKVp5uf8Pho Q==;
X-CSE-ConnectionGUID: Tv7MLJ5ERCKSkAG+iNUAHw==
X-CSE-MsgGUID: JgJwiqeGSrSYW+sgOvsxQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="48885131"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="48885131"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 02:20:03 -0800
X-CSE-ConnectionGUID: yg6sVlLgRBqnB2E+zzNyqQ==
X-CSE-MsgGUID: UQm71XXrQDGX87ejAl8Giw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="88236182"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 02:20:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 02:20:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 02:20:02 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 02:20:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yMXa3qi04gJgFUYr56+QOG8oPZpeK8Ev7SF7WEebxWXszcybHPSOQgnbozZwZhq+9EaNjsk+J+jxdydbheME1Iy7k6R8iwjwW7Y2hDrZ8WtxujyGV4yTF0TNEI8L9mpWC1WpZajYL4YbUdaTPsoyFgzJtOaSk4wfawQIQA6AkcdJmh5NofrpZ1AzrwmBqbnynhxCFd/mqQujZNJJ/ve9HubRP3uB+h5krySO0Ah2hXoE2o5wv2Akk5a/74lS9uUEvzhkzNQ07pGn0enG0+FhnqLJzAHSHcoYEqFQNKAwUqOpUoq0UN3hoxfInYZ+0i6dqiAeyrg5QY+dBedoiNZW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=giyuBjYmxQST8PJtuZUhnwI6ZnyFLiqNNjBisBFeWzs=;
 b=xwmIupNBQ85BTGY789dL27g676O6xpdd/oRzGr1UyNNglxedIvalLoXghuhla7IH/v5EWNXaDbz5B4yin9W1w33+TM4KgQQoc+q80m6w+uxwR/HD7u/UrnIIZyXIrBEC2W+NtY4DtmSqUG8j1YY1yeQOR7seBdlUEWfQhyAfAWp0UehQXvcVHYHZEUow1sCsuRItDGjvCA0RaCnOpsigxtQNGQItpiThC75L81V7kBkL0FBRYEnJJ2O12VhYRWkiBOD9NPZ79dVffoIFzN33yJlj9Koqlu5yuMYE3KavdZio6vZ1ISGZy3W9ikomh2nZwxpcfqPHbmvckJ6EHkhLqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 CH3PR11MB7321.namprd11.prod.outlook.com (2603:10b6:610:150::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8137.28; Wed, 13 Nov 2024 10:20:00 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%3]) with mapi id 15.20.8137.027; Wed, 13 Nov 2024
 10:19:59 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH 6/6] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 6/6] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbNN9UWd0L7c7Ipk6J1iM/tD/Y77K1AW8A
Date: Wed, 13 Nov 2024 10:19:59 +0000
Message-ID: <33818a260742e351dab2dbdb4499870eb17ce88b.camel@intel.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
 <20241112084542.1337314-6-suraj.kandpal@intel.com>
In-Reply-To: <20241112084542.1337314-6-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|CH3PR11MB7321:EE_
x-ms-office365-filtering-correlation-id: 19b21c8a-65e4-41f2-ca8c-08dd03ccbab5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NzBoTjNVdnJTNGtnOFpKNmt4bm5DY0FINDlEclBGTTh6MWdORUROZFVVeHRF?=
 =?utf-8?B?OFNFcm5FVG5SZ3ZWWElERDR1NWgrUTRqNWJrOUpBWFcxbkZMazdKNncycWRp?=
 =?utf-8?B?Z3NWSnVoTk1vWHh1MWVLVWQ0amRZeE11Nll0UFdNeVh4em4rRXFTR0pXWlAr?=
 =?utf-8?B?NWtMb0hHeUd3TXp6dXgrZWxoZ1RlRklUYzdSN1ZQODV4QzhsRCt5Qno3eEVI?=
 =?utf-8?B?Vm95dGhKTC9UNjFQVGxqcXZGS1JzRHZhaWJleUpRTVEwdDNBZko4MHlRcURQ?=
 =?utf-8?B?QXNlT3MxeUtrL2IxelZqNzhVWWpLQ0V5Skk2RCtsVDRqQ3NYUldocCtaNllN?=
 =?utf-8?B?NXlJVEVHMTdFeG16Mll2eFc4VGNrdWF5RFR3K0NSTmFyY0JIRVlJT1N5V2VR?=
 =?utf-8?B?bVFrQTJhT2lzZVgzYmFIYlFpcURPb25ZRXo0STFoYWtVWitYRUw2OXRpT0s2?=
 =?utf-8?B?c3FtdkdFQWpQOVFwUWhBdis5VTVXc3NuTTlxaEMrdE5lVXd4WjRmN2JNYTFp?=
 =?utf-8?B?anhJcUp4MTRIeTU0SzlkNTJTKzBZWXFrc0JRak9VVGxHd1JrZkgvV2J3SzQ4?=
 =?utf-8?B?a294eVFwNEVGYmxkNzJBS3hxQUpTc2NNeWFUTDlCSUFSN1VBWGpHY09rMGdi?=
 =?utf-8?B?aGxLQko4RDFqdkRBdlpONUxuQlBhQ3JnNHpzLzJoaUprWmJwclF3MkZtcENI?=
 =?utf-8?B?bzZzbFp3N0VxVVRFNytmcVFvU3BycW01KzNiSWNyamtSVzRjRWZ5bHBDeThQ?=
 =?utf-8?B?eGRnRFVVdlpZRVp6SlVLeUJ3S2VnQWZ5SlFJNHFLN2ZVS0NLNHcvNGczcGJZ?=
 =?utf-8?B?OUZ6aVRKNDdPb3pSU3dScUFxSE82YWJOTHRXeW5EdU5oZVFxVGM0YTk5Y0tR?=
 =?utf-8?B?Qkg1L2prNWw3dEhaenN1ZWNWL0J6TEphbVhmVTcrUzBINFlTZGZVc2tXQmJJ?=
 =?utf-8?B?UW9nMkp3L2NWUENyeFNOUVh1cU5Ga2diUlpuMjY3Y3VMOTljZ1dwN21XaW40?=
 =?utf-8?B?NHJSaEhRSVE1dHpsYlprZFVlc1MxVTkwRHBMZEdna0lyamQvT0dMd1hoRUlG?=
 =?utf-8?B?SFc4b0JvanVnTjlOcERxVmdlT0dpR1BCQ01HcTVsNWFCMTJXNStOc0NtQnpk?=
 =?utf-8?B?MEJtTDQ3bUxRVWljUmJBT2ZKVDJSTVRnTDZIYmRyS3lDZGNJY3kzQ0wvMFdx?=
 =?utf-8?B?aVpBODhSVTF0L0NEUjlXd2Nxb2x4eDhlay82djdjNXc0RnU4SjAxVnRQSThp?=
 =?utf-8?B?Nmx5Z25nYzNzTnVrd1pVU3RlWkp3czZ4MkxRZE1tRitJT2JaNVFrZzUwVVdW?=
 =?utf-8?B?VkRjekpnSWU2cjhoUzJoU3NPN2dYdk54akhxWFVoOW5yTHE0UzZtMFJLTk9X?=
 =?utf-8?B?eUNGcXRzbHEzQm5TUFh6a1BnNzVvNU5OWWx4a3BDWWhjZU5RTXh4aG90MWEx?=
 =?utf-8?B?MXpEdEU5bXl2MXFiQVlEVHlMeVlQM1hEOW5NMG1sUHdEVjY3Y1g4MmJ0S0RF?=
 =?utf-8?B?ZWZnTzQ1MUJjMmN1emx4WVAwRW0vL2NKVWI2OWR6cEp3dnZONnRraG0xRExr?=
 =?utf-8?B?UkVzdDEvcExBc2ZwVkJITitOQjdBRGVHQUJzblg5RXVJWXhwZ0p5V1RUOFNy?=
 =?utf-8?B?YjFwNTM4aU5NSEh5Z0NUblRWTTVqc0hWQkhYVUFwZFppWkJyTTJCL2lhbnkv?=
 =?utf-8?B?RyswdVBQMlRCUHV3SU1WUitRMmYxKzBRVW50NGoyaCt6ODQ5UWxyNjd6QnNG?=
 =?utf-8?B?dEpmc3Y1NXliOEhBTVc3b080WnNrSmV1Q21TZ2hHbHcwMWF6S2Z4VnhaN2dM?=
 =?utf-8?Q?5Rnk5uDaMtUPp9ZrXNWzFgJIjeq1OnT7n71iQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1I3Tk40SEN5Q1dXNDdiZWNYVTVSSVI2YUtEcHBkRi9XYzlITVVKNjlWQzZR?=
 =?utf-8?B?ZkFRbjhMWkdtVE5UVndGbGVCZ21FL2NJeDhIcTJIbzlLeU1ZZFdJRk5nRG5Y?=
 =?utf-8?B?UkFKWmhENDkxSHJNbFhMV1FnWXhad0htVkx5a1dISUczb25TalBmTmVtYmZJ?=
 =?utf-8?B?aFo2N2lpbG9jcDNrbXc5bXNZVHpCRFo4UmN0Sm1kYUNBd3hRU21TbzFITFJi?=
 =?utf-8?B?QWRHdThRNG5CRmtzZlBVSXNOa3B3MVVFTXRzNnlWb09NaU45dWhGaHIxamJk?=
 =?utf-8?B?R0orWFoxVTg4cFpsU2YrUStWVG9wcVhzcURLazZUSnBVQys0STZtdTBJR0Mz?=
 =?utf-8?B?elI4VlBUQ3lyMkMvM1lqamkvbUNKRGt6Z1lTVjlXZkQ2cks4eG1RUi9RU3Zy?=
 =?utf-8?B?UnQ1bUgvSXRLZURDVWpFeURaRUlHRFF5M0dpTStBODNUdnM5aXc4NzZpNWlD?=
 =?utf-8?B?V2t0bEpFYm1jaGIxK3RBVHI1dXd5Sm5CYzlvWTUxS01QZHUzdFhiVzZtVDZS?=
 =?utf-8?B?TUhqZ25FbEVabk9BczJwMVZJcUVOSENTQ0tXK0FCK0wwb3ZBaDRIdHZ1Z3lI?=
 =?utf-8?B?OEhGVDVLNHhIV3JVNUlrbnRmY1V0dVl0NzY1Vldsdklnek4yOHRESmttbU1L?=
 =?utf-8?B?aktDeHVNQWZRNTk0cjkxRjQxNmxzWThCeFphOUQ3cVpsbzJCeGpEeHlpVlUv?=
 =?utf-8?B?YUtJenZiWVNONmdLYjV5V3ZzaTl5RE50cndrTkhPWGNUVFVRLzVFVCtqdW5T?=
 =?utf-8?B?bzNqMHcweHlUUzFRYVJUS0ljcm5halBnQjlkdlBHWlNMSGdsVWF6Y1B2dnJF?=
 =?utf-8?B?Q0QxRkFCMkFFZGpEZzVjdzlyUmN3UzJNTXozbFl1U3dnY3h4VlRmMFVrTnc5?=
 =?utf-8?B?Y09yUkd5WVVEQlBCN0liM1BFeEVaT05Ea3BPVVVJYlJROUkvMUVCRGNvaEVk?=
 =?utf-8?B?K0QxSWx0Ymo4WHJ0bDJUeVUzYVRzeWlTYmRtWVZSWnl6VTR1MHpCV3R2WmFq?=
 =?utf-8?B?aDRtTGVMOWJPZUNpYVNxak0vam83MWc5ZS96UktrSnRQUU1ZWUVYS0lHSFNT?=
 =?utf-8?B?VVFGc2NyL1dCWUJKMHBBdGJ3M2lDZmsxTlFGRWFwTk9nTUZhc2Y4am1yM3Mw?=
 =?utf-8?B?a3Z1engzRloxUmZaSVgwUnl4OVUwMjRGczJPTGNVamhvNlF6a2JzdElpK2F4?=
 =?utf-8?B?UzgyNG51aU84SFJESjFHMEUzMzlITGdpZVVkRHZjNS9WVm5hU0hyOHJBSjZn?=
 =?utf-8?B?Vy9xeXVJL21ZRkNtNkRLSlBFYWNCRElZL2RNVEc1WE1xSDhEY1BVUzlXRW53?=
 =?utf-8?B?WWdmYndYN3pYY2JFM2grcDZyTWtUWGpvT1U3VHF2K29IKy9nQitCandBVFhu?=
 =?utf-8?B?cWZVSU9WWFo5ZzVndFhRajJlcEtHRzJwQnd2Rjl5WTVONXE5WVBOZkFMRDVT?=
 =?utf-8?B?dXY0ZDVrSkNpZWxUOWVrejI5Z0N2TkREbUc5WU12Z2lKeCthWG00Yjc0UVkw?=
 =?utf-8?B?Q0hKRkV5NEcyRXpXV3ZyYU5IWUs2OXpybW8rN254VmptUGZQSzhRSUhNeFZ1?=
 =?utf-8?B?VDc5emRLaUhLNlMzTDFXSUtWQm43NGs4OHNKaWFJeUhtbU5MeXlnL2NLTFU3?=
 =?utf-8?B?bG5tMFpkVi9LSGZSWERIWlJmaDlueUpuZ1VrYnJLK1RsT1BYREdGSTlmb0FW?=
 =?utf-8?B?NVVQaVYxb0x0Tk9JYy82SjJGcVc5eUJXcnQ2N2oxbVZwcjhEMzNvU25pS2Rs?=
 =?utf-8?B?MWJjRGQyMG1NVVVPbVVIUWEzcVpvcVhKcjhCR2hleS81dlg3ZnEwNmtidXZs?=
 =?utf-8?B?V2pnQUxnZnBYY3hZV2svOEhVT1NFV3E3UnlNOTU1Mzh0MjhhYjA3RzQrRTRw?=
 =?utf-8?B?THUxZWFGVnA0Y0VVcnFFMUtvWlkwR3hGeEdNZWRraHFOL3ZVb2dzRFpJS2w4?=
 =?utf-8?B?azl4bUg2a2JucUdoV2wvRFQxdTA2Y2ZYR05sNERjclZoZTFtSXA5RktEdGFD?=
 =?utf-8?B?QnlSeU9JTlhlWHhYMnNyV1o2dG9NY0FVRkprdHo0TWhYcTQ4Rnk3MXRoU2Ev?=
 =?utf-8?B?Nmt6TlRsc2VTMGlKSWdidnByVXpYaWtLMVppVUxscnpOa0dVTWJmYnZTS0JG?=
 =?utf-8?B?N1JFSDB3OVVudy9ObUROeFRzbWtVS3lQWVhScmxRVnIxZmZkWGg4ZkRqRXZD?=
 =?utf-8?Q?yzQ3aAgTF7027oofxPQnI2E=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C8947FFF00EFD4EB07D0B1B64E6712C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19b21c8a-65e4-41f2-ca8c-08dd03ccbab5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2024 10:19:59.6811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nmJowd+UXgq9dNFJk9G06bkeeaTEpubC4t0FoANWNJfCXGdoGnCjk/gHGFX/BSlXggf4vAguMfezYjmdG/t8bO5oW5k7/y7ISi8a7beZgpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7321
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

T24gVHVlLCAyMDI0LTExLTEyIGF0IDE0OjE1ICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOgo+
IEluY3JlYXNlIHRoZSBsYXRlbmN5IHByb2dyYW1tZWQgaW50byBQS0dfQ19MQVRFTkNZIGxhdGVu
Y3kgdG8gYmUKPiBhIG11bHRpcGxlIG9mIGxpbmUgdGltZSB3aGljaCBpcyB3cml0dGVuIGludG8g
V01fTElORVRJTUUuCj4gCj4gLS12Mgo+IC1GaXggY29tbWl0IHN1YmplY3QgbGluZSBbU2FpIFRl
amFdCj4gLVVzZSBpbmRpdmlkdWFsIERJU1BMQVlfVkVSIGNoZWNrcyBpbnN0ZWFkIG9mIHJhbmdl
IFtTYWkgVGVqYV0KPiAtSW5pdGlhbGl6ZSBtYXhfbGluZXRpbWUgW1NhaSBUZWphXQo+IAo+IC0t
djMKPiAtdGFrZSBpbnRvIGFjY291bnQgdGhlIHNjZW5hcmlvIHdoZW4gYWRqdXN0ZWRfbGF0ZW5j
eSBpcyAwIFtWaW5vZF0KPiAKPiAtLXY0Cj4gLXJlbmFtZSBhZGp1c3RlZF9sYXRlbmN5IHRvIGxh
dGVuY3kgW01pdHVsXQo+IC1maXggdGhlIGNvbmRpdGlvbiBpbiB3aGljaCBkcGtnYyBpcyBkaXNh
YmxlZCBbVmlub2RdCj4gCj4gV0E6IDIyMDIwMjk5NjAxCj4gU2lnbmVkLW9mZi1ieTogU3VyYWog
S2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMgfCAyMSArKysrKysrKysrKysrKysrLS0tLS0KPiDC
oDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMKPiBpbmRleCBmZmM3ZGRlODY2Mjku
LjQ3YzgyYWEyYWRmOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3dtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dt
LmMKPiBAQCAtMTU3LDggKzE1Nyw5IEBAIGludGVsX3dtX2NvbXB1dGVfZHBrZ2NfbGF0ZW5jeShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsKPiDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKPiAtwqDCoMKgwqDCoMKgwqB1
MzIgbWF4X2xhdGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOwo+ICvCoMKgwqDCoMKgwqDC
oHUzMiBsYXRlbmN5ID0gTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsKPiDCoMKgwqDCoMKgwqDCoMKg
dTMyIGFkZGVkX3dha2V0aW1lID0gMDsKPiArwqDCoMKgwqDCoMKgwqB1MzIgbWF4X2xpbmV0aW1l
ID0gMDsKPiDCoMKgwqDCoMKgwqDCoMKgaW50IGk7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgZml4
ZWRfcmVmcmVzaF9yYXRlID0gZmFsc2U7Cj4gwqAKPiBAQCAtMTcwLDE3ICsxNzEsMjcgQEAgaW50
ZWxfd21fY29tcHV0ZV9kcGtnY19sYXRlbmN5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbmV3X2NydGNf
c3RhdGUtPnZyci52bWluID09IG5ld19jcnRjX3N0YXRlLT52cnIuZmxpcGxpbmUpIHx8Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIW5ld19jcnRjX3N0YXRlLT52cnIu
ZW5hYmxlKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGZpeGVkX3JlZnJlc2hfcmF0ZSA9IHRydWU7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBtYXhfbGluZXRpbWUgPSBtYXgobmV3X2NydGNfc3RhdGUtPmxpbmV0aW1lLCBtYXhf
bGluZXRpbWUpOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KGZpeGVkX3JlZnJlc2hfcmF0ZSkgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBt
YXhfbGF0ZW5jeSA9IHNrbF93YXRlcm1hcmtfbWF4X2xhdGVuY3koaTkxNSwgMSk7Cj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChtYXhfbGF0ZW5jeSA9PSAwKQo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2xhdGVuY3kgPSBMTkxf
UEtHX0NfTEFURU5DWV9NQVNLOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYXRl
bmN5ID0gc2tsX3dhdGVybWFya19tYXhfbGF0ZW5jeShpOTE1LCAxKTsKPiArCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzIyMDIwMjk5NjAxICovCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChsYXRlbmN5KSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAg
fHwgRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMzApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGF0ZW5jeSA9IG1heF9saW5l
dGltZSAqCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERJVl9ST1VORF9VUChsYXRlbmN5LCBtYXhf
bGluZXRpbWUpOwoKbmV3X2NydGNfc3RhdGUtPmxpbmV0aW1lIGNvdWxkIGJlIDAuIFNvIHlvdSBu
ZWVkIHRvIHByb3RlY3QgZGl2aXNpb24gYnkgMCBoZXJlPwoKQlIKVmlub2QKCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYXRlbmN5ID0gTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ICsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGFkZGVkX3dha2V0aW1lID0gRFNCX0VYRV9USU1FICsKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5LT5zYWd2LmJs
b2NrX3RpbWVfdXM7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGRp
c3BsYXktPndtLmRwa2djX2xhdGVuY3kgPSBtYXhfbGF0ZW5jeTsKPiArwqDCoMKgwqDCoMKgwqBk
aXNwbGF5LT53bS5kcGtnY19sYXRlbmN5ID0gbGF0ZW5jeTsKPiDCoMKgwqDCoMKgwqDCoMKgZGlz
cGxheS0+d20uZHBrZ2NfYWRkZWRfd2FrZXRpbWUgPSBhZGRlZF93YWtldGltZTsKPiDCoAo+IMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKCg==
