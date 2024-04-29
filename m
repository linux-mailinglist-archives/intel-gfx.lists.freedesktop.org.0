Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 941E08B56C8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 13:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B3C10F786;
	Mon, 29 Apr 2024 11:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WvmXnlYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9F3F10F786
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 11:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714390469; x=1745926469;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+61T01B3yGNtvP38Z4z+yJXyZNklMQC5vfAs34/Wh1Y=;
 b=WvmXnlYordgNyNRSuTOLhdkMciemdoJVJw7lg96TERvsDdNmMhj1wj/3
 9blNrBtez7LWzTNRscClRO3lOLUx0NblZxvh0pBX8tEryFS0nYh8q6VNT
 9uzDSyqJJWpdEY3LzJYjp04W/cdElL+CQ7QTwO7cMVS1G/5U2557awHx7
 m043KoQUR+Ag4tVnQusEF+sJUm2xI40MAn6oIKU3P1JUsDc637hUeuZXf
 vtsYc8cBnLeZlqjbADXszkVLJ7Y//Aiai10OOvxr+r5c3ZLoj6l1lEOk2
 LG48fe4RFIUZSkYAIdlJi3HLlsg2pD9tH8opieG2gGsmAO8i+klbemDE7 w==;
X-CSE-ConnectionGUID: eYWmmAF7T62+ENxdPUP7rQ==
X-CSE-MsgGUID: O4V23PO7R9OyCD3xkWN/hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="32545909"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="32545909"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 04:34:29 -0700
X-CSE-ConnectionGUID: eM9TohAbQj6gOvbTwYqRxg==
X-CSE-MsgGUID: sNj+wf/5RxqVYjxFZ2vO5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26066452"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 04:34:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 04:34:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 04:34:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 04:34:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 04:34:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SJ9K2Q41zhoXLY+S456TmZqmtiMjK6t3jP6ZlVg6r/Qq/HBHKOQ0p8XjfR3rPbUCRE7vgukxfAQ56LndzoZBN4/wi2ypHVVZ5JNplIixxHud///ijalxtQsuOMVMRJNhesS3uI7bbT4CFlevPZ0I2wnJf8wQjIqaZ1SD7bNI3Z8YRv5ht6cRnIGe1+V+b4iqQ3Eu7pocyTGbB+KJRrTVGU5fAQpep2fn1lAdvvPc3ovL2MBpX3MeZfWe0vgYcTZ35sUAEZv/hBIgLBvYpAItEGSfhIStFd9vXRR8vDZek72gcHNyo3NseHgu1KRyWk6Z63O0Wvg6NcHY9bfTRx0SYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+61T01B3yGNtvP38Z4z+yJXyZNklMQC5vfAs34/Wh1Y=;
 b=dJurgd1b9ED7GSFWvDyIzUWM1kFWDDhEc6nNnznTXOVk6Jan0F4DHzvmtgElYBKVzTBJVINw0+LeJaZYU2kFxVhoYN8/oR9y+QlSw+DERDUmenlV38PvmNTxIebfnSa8G7ZJnwlMEeeXAx0hRKvzHIM84yahqcxgDgpcFI1GYLzgnqqmsFc3YDcgtb8bWy8rpNPaE9HoVzzm6lZPofNlMm8I8yDasEMM9ZYPp67/fhuQdua4uZhykKDnesb8FaoUXUbKjZJLsppxOUl2JZeR6uroXhHo70L3DZN3vTjvPOT52myHc34boH/+dwPX4wqslcBSS2QMOedr5x7iyAaL0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB7090.namprd11.prod.outlook.com (2603:10b6:806:299::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 11:34:26 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 11:34:26 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v7 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v7 06/11] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHaklLS6AOHT6NrOEeP6fOj2o8397F/IpaggAAGHICAAAMFsA==
Date: Mon, 29 Apr 2024 11:34:26 +0000
Message-ID: <PH7PR11MB598134A474544762E5A725FBF91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
 <20240419121141.2665945-7-jouni.hogander@intel.com>
 <PH7PR11MB59810085CCECB6DB47C1E2C9F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <7a26db3d48f6410e5b554c4417e397e18635f295.camel@intel.com>
In-Reply-To: <7a26db3d48f6410e5b554c4417e397e18635f295.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB7090:EE_
x-ms-office365-filtering-correlation-id: 11cf4ebb-3b99-466a-fd7f-08dc68405319
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MDZrTG9qUDdQV0ZPc3VUSGtxNnlzVW15R3k1MDcyUU40S2NWYUFMQmV0clBa?=
 =?utf-8?B?djlhQWVJYnZSV2VkendPOFgvamtIOVdQWXo5VkM2am5pSEdnbGN5Vmx4bThn?=
 =?utf-8?B?cFFSbCthTTBrS3BFOGUvZWFmV2d4d2ttaW5pRGRRb2MwaStGcWpvVnZwR1pZ?=
 =?utf-8?B?dEQyRGpUNGQzQ1l0T0dxcVowdzdnZmh3WjJFRmtQRHFjeHRqcENvZDdwaHlx?=
 =?utf-8?B?bmdGSEFVWDg2QUgzNUp2b2cxSkpuTEUzbENub0Y2TnROUFZZWnErcUhwNnpm?=
 =?utf-8?B?OCtKZ01VMkVzQnYzUlZWWGZvTGVUQXpINW1lM1BvMnEzcnJrMGdvWUxqei9z?=
 =?utf-8?B?WjBUOTk2YjFWdm5oZTEzcTRsRW5Ib3FEMXNzZ1RoWVg0QWFId3c4Uk1qMkV6?=
 =?utf-8?B?WW9xcUVHejlob2pKRkxhbTVSN3dWVmlVdzFZSWkwY3BjcjFUZlFUcGNBSEhh?=
 =?utf-8?B?N3dOT1ljdzFqTEcxRkZ3Ym1IbzhCVVBtUmlYYjhWSGJTWldCMUkyZVRaQVZJ?=
 =?utf-8?B?SG5zdFFmVWI3clVwSXFzVnpUcitQZnJzbnBjcGpvU2hLY1h6Sm5BT0ZIS1Ny?=
 =?utf-8?B?MGpTN2NRNVNBdnE5OHhQTDU5dFo3M3Yzbk9FMEJNYnZ4M21WTjdta1FaSDJ6?=
 =?utf-8?B?NFEydUJMaTJ5N3RRZDVudVVpK25rendzU1AyRnUwZzNHZEV2R1hpWm00bEVY?=
 =?utf-8?B?L1lmdXlmTTFHbEFVdlp3bGlNTThhd0hCd2cvWllqL3ovQmpVcXQ3OW9qK2ls?=
 =?utf-8?B?SEo2Y3dDMWdEa2Erb05vQnZOQTR3RVFGL3Q4VHRJMzZaNThnWUFBa3Bpbjhr?=
 =?utf-8?B?a2VPb2pXaXZka1lHaDVGKytFQ3hrbDFjcFVQQTlXL1phNVRHamx6TDhGVEV1?=
 =?utf-8?B?ZFhwc3FXMGd1ZVlycDNBZDIzWXMwYWxjOWtiaW5Zckt5MG90ME1VM1Zvdzdn?=
 =?utf-8?B?eFB5T3ZXSE1SdnJuUUxyaDBLN1VsUkFZamhxOXBieFhmV0tEYWN2ZEI1SVN0?=
 =?utf-8?B?ckZRa2N0a3FMdE11ZDltTytDOER2ZjZkRXNrNnJJSVhvQWtJNU1WL1lNb1l4?=
 =?utf-8?B?SUhkL1BJNVNESVYyeU1qZWk1K2wwM1dDWFhTR1lqR2dDMmNsZ3FEbXJtTi81?=
 =?utf-8?B?U0RtMGhSYWRiNEZWNVcxSnVaRncyRzZlMWFTc3NHb3BmSFdnWGpXRkM3NDR5?=
 =?utf-8?B?VFd3c1NudCtaTWZPaWFUTFNTOENpcXQ5MGJ6d0p0L284RWVjbi9XOGJPdzYv?=
 =?utf-8?B?aWdvWWRmblJybFc1aUhJRmJXcVFPL3FyRm5RWkhLaXdxcDMyZ1N6Z2J6eThV?=
 =?utf-8?B?a0JrTlFndU1EMG01eTdiaGEwOEF0aldQbVZvUUJyRFMzZGI0cEFsVTZCWmM1?=
 =?utf-8?B?dkErb0s5SUlkeGtJa2lGUjJUQURwKzlkTTFZNWk0WUJ0eDFPSUZQNzRXQmUr?=
 =?utf-8?B?WGR3ZHc2YndWV3VTSm5uVmI4QzdMdXdaNktuZWRodWtjQ25teDU1K1FmVTVk?=
 =?utf-8?B?K01obXhIMTljK3N0RXdrWERpQkxiY2srd3V1TWVTTm8zSmhicTNycHJ2Z1kr?=
 =?utf-8?B?cXVjVkdEdEtMeXovSUFSYlVnNFlkTmVNdDk2c1lOWFYrd2tLUCtMVVFPbzl6?=
 =?utf-8?B?SkxGMmFhTXQ1ZTFWTS91b0F3bTFhelBCY2RZeVdzclVNNkxneEs1YWw2a2R0?=
 =?utf-8?B?YnFDdjl2Uzg1MHhnSmJjZG8xM1I4d1RqK0RzZDZuVHRjWXhtaDBEbStuK2lV?=
 =?utf-8?B?RlVWbEcraVpJRnN2T1h1SzQ1ODdRRVAveEpqMk11YzJVL2VOcmRSRThlQkgw?=
 =?utf-8?B?a2FHOWhaMmJZQ29JdnVhZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGl0QkQvK3ZxV0ZpNDkxU0JMSEpXOEIvYmZDUjhqN1l2bW5zZll2d1BQSjQ1?=
 =?utf-8?B?cGk5THJSVytkM0IrUlQ1TncrQmJ5VEc5SmV5QUxIM24wYTBYeXZOclNCVE5H?=
 =?utf-8?B?bWVpcVhxMG9sekwrdVpUTmg0UGZlUUZTOXlsUHdHWFc2SmN5TlRrRXZ1ZTBN?=
 =?utf-8?B?VXBhaTU4NmZTc0hRM2NDWS8yWFRqOUxIMVgyOFR0QjRjejdhd3ZZck5mYVUr?=
 =?utf-8?B?MzBpWkp5ZFJWa2tqSTRxcVZBZmJBWTNnUzlIalFlWFFGUUhycnpQYWRWZjR5?=
 =?utf-8?B?OFZaYWdTTFNNTWVJZTFrRWx5U2wxQmxrenVhNFAyMGZPUVlFTFh3TVNSdUw4?=
 =?utf-8?B?TGFzSTJXQ2ZaTEhqL1ZXcnNzL0Nzc2ZnQ1hWT3dyVG5ZcUFqRUxrVEUrWkFt?=
 =?utf-8?B?cDFKZWtIQzNTL1NpaVIyNFdzZzJWa21ZdGZ3eXBJcU5qT3JJRVJvQ3YwN1NV?=
 =?utf-8?B?eWxEY0Z6ZzRYaDFtUmlkY2xETkNpV2p6ZWZDTDJYS1FoblhNSlFCYjJQZ2tH?=
 =?utf-8?B?N0RPYVB0Mll0UGJiR3lGUDlVcHpUdTFSMGJjS3hPQk9qa2JVQkRMaXhkN044?=
 =?utf-8?B?NEZldDJuZUg2TXB2M3UwWDQxZURmZHF6dW1QODFkdExsVjlkbU92UFU4L3Ra?=
 =?utf-8?B?bEl4dG5zV0xIT0w4N253anRFbFZReHI3NEUrS3ZrbW1SYlE2SDVsZGE2VkJX?=
 =?utf-8?B?M0tUMTI0THJQUlp6VWtrTTJmb2tTM3E0L09vUmhWY092SW44WVVzMy9Od0F0?=
 =?utf-8?B?NEs1U1pmYmVkMUpvbU1LV1E4SVRzUldsOUdKc3FpQXFwdW9BbWxLeG1tMjI2?=
 =?utf-8?B?ZFUya2p5eEVlSFI2R2lmYzZhV0RENGowbVRGZFliL2d5K0lOdWM1Q201QXU2?=
 =?utf-8?B?enM0eXNQa3hENklWSXltQ3BPVzFHcHZLWGZralBhTnRJd3BqR0o2THFSd3F3?=
 =?utf-8?B?VmI5aFk1K2ZRVE8vaHBEdStTeVZ6SXJ6ZTRERUJnOE45MkVTaGZ1OEVDeXFy?=
 =?utf-8?B?OVdoKzUxNnhNL0Z3TSt4bFRNamsxSktLRlk3REdXc0J1VmdrUFNLZjRMUGlD?=
 =?utf-8?B?bjdGK0JqRERLaGoxRW5oUm5adUtxaWh6Q3dwU0d6WEtRTGFEbTc5ZDRBMGx6?=
 =?utf-8?B?aloyZ2NrWFNrZmVaRVV4SzF1aEpqSnBnSm9vbHB1MDl1SFdIZXdSRWdmcEF0?=
 =?utf-8?B?bVVJbWtEMDNkd21admlvWDJNdUFGTEI2OU9tZTVZbExRdU1tUnRTZjJiYUpY?=
 =?utf-8?B?aXZtRlp6YnNvaWdCOFUreDFFQ29NaHNVVkZndSs5KzByN2pBd0h2VUhyMDh6?=
 =?utf-8?B?TnpnNE1zTGFzL2ErZkRKa2lxd3NScVIzOXIvNEVWQi9QdE8rRmNMUUh2RGJp?=
 =?utf-8?B?WWJ2dUFOT0dEYW1EYnBaTmRDOTlmVVZPRkQ4aG9tOVpDMEY2UzF6TDJDVk8z?=
 =?utf-8?B?MXY0YVZnbWQ3U1MzTEo2RGlLRDNjM2JYZGRIZ245cFl5SVdOZEtDbHZkcVds?=
 =?utf-8?B?alo1djhubWJFdDQ0dlRMdTFTZXpHdkMrV3VaZHJka3ljQWg2aTJNaTc0U1p2?=
 =?utf-8?B?ajNoQjc3aENkcHV6MXlXY1pxa2lyQS8wY2xOOEVBbjlOS2E2UFNXY0lqN3Nw?=
 =?utf-8?B?WVB5RlpUamhXc1hCYjgxMjRvMXBYRGd6L05tTjRPTnRDcmN0Vm5ZN0FiaUEy?=
 =?utf-8?B?Z1k5YUtQUmZkUVRUVzVCZCtwUHZFanB0VXN2anJoZGpjbmFvN2locE1zVXRq?=
 =?utf-8?B?M3NzRER0SlVyV2cvSUtIekhaL0t4Q3IwclNzZHViYVNPVGYzeVJwZWh4akdF?=
 =?utf-8?B?eTI5T3ZMZGx2YVRWbmtEVWRJdlBrc3ZLZWxHcGJKRXdJbTduVUpIK0lYMGpa?=
 =?utf-8?B?VzdZSlN5S0o1NE0yU0U4MGtQSi9HYmh6N1dZYzNOVzV1UVlJMjc0Z2N3Qmdk?=
 =?utf-8?B?WTUyc09BN0syYUh6cWdjSC9Cb3AzRHhmVnN6UUp0RDJxRlN3MUVESUFUVTM1?=
 =?utf-8?B?RlJNa0FRWGVoMDk3Ty9YL29MWGtpeUY1eDkxNm4vdEFudFZYc2oxRWRldUt4?=
 =?utf-8?B?MzZObEgzOU1tTG5LU0d6OFdCeEpXd0dvM0FVTHV1amxuN1RPa2J0MDB4Wldr?=
 =?utf-8?Q?6JpITL6Y3xYTUYe6Z0mILC/Od?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11cf4ebb-3b99-466a-fd7f-08dc68405319
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 11:34:26.0757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qtEU5pdnesrsPzbFDnbWgKHp/zB0aKATCJ0qplG05Fd7wZIH5Q+Iix3IsD3QarTi3bEI6RhFui1da5cHb4Dwkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7090
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgQXByaWwgMjksIDIw
MjQgNDo0NiBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQ
QVRDSCB2NyAwNi8xMV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkNCj4gaW50ZWxfZHBfZ2V0X3N1X2dy
YW51bGFyaXR5IHRvIHN1cHBvcnQgcGFuZWwgcmVwbGF5DQo+IA0KPiBPbiBNb24sIDIwMjQtMDQt
MjkgYXQgMTE6MDIgKzAwMDAsIE1hbm5hLCBBbmltZXNoIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IEZyaWRheSwgQXByaWwgMTks
IDIwMjQgNTo0MiBQTQ0KPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dh
bmRlciwgSm91bmkNCj4gPiA+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiBTdWJq
ZWN0OiBbUEFUQ0ggdjcgMDYvMTFdIGRybS9pOTE1L3BzcjogTW9kaWZ5DQo+ID4gPiBpbnRlbF9k
cF9nZXRfc3VfZ3JhbnVsYXJpdHkNCj4gPiA+IHRvIHN1cHBvcnQgcGFuZWwgcmVwbGF5DQo+ID4g
Pg0KPiA+ID4gQ3VycmVudGx5IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eSBkb2Vzbid0IHN1
cHBvcnQgcGFuZWwgcmVwbGF5Lg0KPiA+ID4gVGhpcyBmaXggbW9kaWZpZXMgaXQgdG8gc3VwcG9y
dCBwYW5lbCByZXBsYXkgYXMgd2VsbC4NCj4gPiA+DQo+ID4gPiB2MjogcmVseSBvbiBQU1IgZGVm
aW5pdGlvbnMgb24gY29tbW9uIGJpdHMNCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IFJldmlld2VkLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNjINCj4gPiA+
ICsrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNTUgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCBiOTRmOGUzM2VkMWYu
LjI5NDAwZmFjMTNjMiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBAIC00NjYsNiArNDY2LDQwIEBAIHN0YXRpYyB1OA0KPiA+
ID4gaW50ZWxfZHBfZ2V0X3Npbmtfc3luY19sYXRlbmN5KHN0cnVjdA0KPiA+ID4gaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB2YWw7DQo+ID4gPiDCoH0N
Cj4gPiA+DQo+ID4gPiArc3RhdGljIHU4IGludGVsX2RwX2dldF9zdV9jYXBhYmlsaXR5KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHN1X2NhcGFi
aWxpdHk7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5z
aW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0KQ0KPiA+DQo+ID4gV2hpbGUgcmVsb29raW5nIGZv
dW5kIHRoYXQgZ29vZCB0byBhZGQgYSBjaGVjayBmb3INCj4gPiBEUF9QQU5FTF9QQU5FTF9SRVBM
QVlfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQgKDZ0aCBiaXQgb2YgZHBjZA0KPiAweGIxKS4NCj4g
PiBXaGF0IGlmIGl0IGlzIHplcm8gbWVhbnMgZ3JhbnVsYXJpdHkgbm90IG5lZWRlZCBidXQgd2ls
bCBjb250aW51ZSB0bw0KPiA+IHVzZSB4LWdyYW51bGFyaXR5IGFuZCB5LWdyYW51bGFyaXR5Lg0K
PiANCj4gUGxlYXNlIG5vdGUgaXQgaXMgNXRoIGJpdCBpbiAweGIxLiBTZWUgbXkgZnVydGhlciBj
b21tZW50IGJlbG93Li4uDQoNClNhbWUgSSB3YXMgcmVmZXJyaW5nLCAgNnRoIGJpdCBpbmRleCA1
IGFzIGl0IHN0YXJ0cyBmcm9tIDAuDQoNCj4gDQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+
ID4NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfZHBjZF9yZWFk
KCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gKw0KPiA+ID4gRFBfUEFORUxfUEFORUxfUkVQTEFZX1hf
R1JBTlVMQVJJVFksDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnN1X2NhcGFiaWxpdHksIDEpOw0KPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgZWxzZQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN1
X2NhcGFiaWxpdHkgPSBpbnRlbF9kcC0+cHNyX2RwY2RbMV07DQo+ID4gPiArDQo+ID4gPiArwqDC
oMKgwqDCoMKgwqByZXR1cm4gc3VfY2FwYWJpbGl0eTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4g
PiArc3RhdGljIHVuc2lnbmVkIGludA0KPiA+ID4gK2ludGVsX2RwX2dldF9zdV94X2dyYW51bGFy
aXR5X29mZnNldChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSB7DQo+ID4gPiArwqDCoMKgwqDC
oMKgwqByZXR1cm4gaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0ID8N
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEUF9QQU5FTF9QQU5FTF9SRVBM
QVlfWF9HUkFOVUxBUklUWSA6DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
RFBfUFNSMl9TVV9YX0dSQU5VTEFSSVRZOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0
aWMgdW5zaWduZWQgaW50DQo+ID4gPiAraW50ZWxfZHBfZ2V0X3N1X3lfZ3JhbnVsYXJpdHlfb2Zm
c2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHJl
dHVybiBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQgPw0KPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERQX1BBTkVMX1BBTkVMX1JFUExBWV9ZX0dS
QU5VTEFSSVRZIDoNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEUF9QU1Iy
X1NVX1lfR1JBTlVMQVJJVFk7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gKy8qDQo+ID4gPiAr
ICogTm90ZTogQml0cyByZWxhdGVkIHRvIGdyYW51bGFyaXR5IGFyZSBzYW1lIGluIHBhbmVsIHJl
cGxheSBhbmQNCj4gPiA+IHBzcg0KPiA+ID4gKyAqIHJlZ2lzdGVycy4gUmVseSBvbiBQU1IgZGVm
aW5pdGlvbnMgb24gdGhlc2UgImNvbW1vbiIgYml0cy4NCj4gPiA+ICsgKi8NCj4gDQo+IENoZWNr
IHRoaXMgY29tbWVudC4gU2VlIG15IGZ1cnRoZXIgY29tbWVudCBiZWxvdy4uLg0KDQpBZ3JlZSBi
aXQgcG9zaXRpb24gaXMgc2FtZS4NCg0KPiANCj4gPiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfZHBf
Z2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKcKgIHsN
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRw
X3RvX2k5MTUoaW50ZWxfZHApOyBAQCAtDQo+ID4gPiA0NzMsMTgNCj4gPiA+ICs1MDcsMjkgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdCBpbnRlbF9kcA0K
PiA+ID4gKmludGVsX2RwKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHUxNiB3Ow0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoHU4IHk7DQo+ID4gPg0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgLyogSWYgc2lu
ayBkb24ndCBoYXZlIHNwZWNpZmljIGdyYW51bGFyaXR5IHJlcXVpcmVtZW50cyBzZXQNCj4gPiA+
IGxlZ2FjeSBvbmVzDQo+ID4gPiAqLw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCEoaW50ZWxf
ZHAtPnBzcl9kcGNkWzFdICYNCj4gPiA+IERQX1BTUjJfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQp
KSB7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICogVE9E
TzogRG8gd2UgbmVlZCB0byB0YWtlIGludG8gYWNjb3VudCBwYW5lbCBzdXBwb3J0aW5nDQo+ID4g
PiBib3RoIFBTUg0KPiA+ID4gYW5kDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBQYW5lbCByZXBs
YXk/DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoC8qDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBJZiBzaW5rIGRvbid0IGhhdmUgc3BlY2lm
aWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHNldA0KPiA+ID4gbGVnYWN5DQo+ID4gPiArwqDC
oMKgwqDCoMKgwqAgKiBvbmVzLg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gPiArwqDC
oMKgwqDCoMKgwqBpZiAoIShpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eShpbnRlbF9kcCkgJg0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9QU1IyX1NVX0dSQU5VTEFSSVRZX1JF
UVVJUkVEKSkgew0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBBcyBQ
U1IyIEhXIHNlbmRzIGZ1bGwgbGluZXMsIHdlIGRvIG5vdCBjYXJlDQo+ID4gPiBhYm91dCB4DQo+
ID4gPiBncmFudWxhcml0eSAqLw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB3ID0gNDsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXhpdDsNCj4gPiA+IMKg
wqDCoMKgwqDCoMKgwqB9DQo+IA0KPiBUaGlzIGJsb2NrIGlzIHRha2luZyBjYXJlIG9mIGNoZWNr
aW5nIGJpdCA1IGluIDB4YjEgYW5kIHVzaW5nIGxlZ2FjeQ0KPiBvbmVzIGlmIG5vIHJlcXVpcmVt
ZW50cy4NCg0KaW50ZWxfZHBfZ2V0X3N1X2NhcGFiaWxpdHkgaXMgcmVhZGluZyBmcm9tIERQX1BB
TkVMX1BBTkVMX1JFUExBWV9YX0dSQU5VTEFSSVRZIHdoaWNoIElzIGRwY2QgMHhiMi4gQW0gSSBt
aXNzaW5nIHNvbWV0aGluZz8NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+IA0K
PiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gPg0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgciA9IGRy
bV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsDQo+ID4gPiBEUF9QU1IyX1NVX1hfR1JBTlVM
QVJJVFksICZ3LCAyKTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHIgPSBkcm1fZHBfZHBjZF9yZWFk
KCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gKw0KPiA+ID4gaW50ZWxfZHBfZ2V0X3N1X3hfZ3JhbnVs
YXJpdHlfb2Zmc2V0KGludGVsX2RwKSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJncsIDIpOw0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChyICE9IDIpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiVW5hYmxlIHRvIHJlYWQNCj4gPiA+IERQX1BTUjJf
U1VfWF9HUkFOVUxBUklUWVxuIik7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiVW5hYmxlIHRvIHJlYWQgc2VsZWN0aXZlIHVwZGF0
ZSB4DQo+ID4gPiBncmFudWxhcml0eVxuIik7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBTcGVjIHNheXMgdGhhdCBpZiB0aGUgdmFsdWUgcmVhZCBp
cyAwIHRoZSBkZWZhdWx0DQo+ID4gPiBncmFudWxhcml0eSBzaG91bGQNCj4gPiA+IMKgwqDCoMKg
wqDCoMKgwqAgKiBiZSB1c2VkIGluc3RlYWQuDQo+ID4gPiBAQCAtNDkyLDEwICs1MzcsMTIgQEAg
c3RhdGljIHZvaWQNCj4gPiA+IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QNCj4g
PiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAociAhPSAy
IHx8IHcgPT0gMCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdyA9IDQ7
DQo+ID4gPg0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVs
X2RwLT5hdXgsDQo+ID4gPiBEUF9QU1IyX1NVX1lfR1JBTlVMQVJJVFksICZ5LCAxKTsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoHIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiA+
ID4gKw0KPiA+ID4gaW50ZWxfZHBfZ2V0X3N1X3lfZ3JhbnVsYXJpdHlfb2Zmc2V0KGludGVsX2Rw
KSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgJnksIDEpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyICE9IDEpIHsNCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRy
bSwNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJVbmFibGUgdG8gcmVhZA0KPiA+ID4gRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZXG4i
KTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJVbmFibGUgdG8gcmVhZCBzZWxlY3RpdmUgdXBkYXRlIHkNCj4gPiA+IGdyYW51bGFy
aXR5XG4iKTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmICh5ID09IDAp
DQo+ID4gPiBAQCAtNTg4LDcgKzYzNSw4IEBAIHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1
Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAo
aW50ZWxfZHAtPnBzcl9kcGNkWzBdKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7DQo+ID4gPg0KPiA+ID4gLcKgwqDCoMKgwqDC
oMKgaWYgKGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQpDQo+ID4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoaW50ZWxfZHAtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCB8fA0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9y
dCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfZ2V0X3N1
X2dyYW51bGFyaXR5KGludGVsX2RwKTsNCj4gPiA+IMKgfQ0KPiA+ID4NCj4gPiA+IC0tDQo+ID4g
PiAyLjM0LjENCj4gPg0KDQo=
