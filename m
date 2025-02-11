Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43E8A3025D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 04:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EA110E415;
	Tue, 11 Feb 2025 03:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlyOcUGr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F8710E415
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 03:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739246006; x=1770782006;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=i5J3h9L+idXrDZ/EoqHPaXUy1Hk/5rThgDoZ6vBf4iw=;
 b=mlyOcUGr3fqF5c4vZ+4MOd3adqJoW+kovZXgaGic6bdwOGYFOpjXFNN3
 SEVwR2XhZdZ9tzjJiSL1FYS7lPpYRSbRxYQm68+gIa3RXet79pq/AV56a
 jM6+pveYTprW1Csd2Ycs/IIvA1jXx9KlNNqIHeiS9VcnzOSMMU7bAhdEd
 22g9XKee0Iu+Ikk7epdJpMljG3EjRsWzELa92hRoF2t1xStZQEu3uGF8a
 tB04qcyNfUjejKWWhXGOerLZpXXy0nzIsB9cEHszJE/3tRJ2RGzYruHSF
 40LPFC/qvOsnuON+Qnu3f8X8hvq9+84e3bOlIiViJajVfrgEmUhvnKOsv Q==;
X-CSE-ConnectionGUID: J5ZLqiHzQNOtYWigSHPsDg==
X-CSE-MsgGUID: k8c3KGJZRcW/vyQhBbvaRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39715119"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="39715119"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 19:53:26 -0800
X-CSE-ConnectionGUID: warIyB4JSHyYyyiP9TppEg==
X-CSE-MsgGUID: ACA1mFXuSmOMeqP65B7o9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112845298"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 19:53:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 19:53:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 19:53:25 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 19:53:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q8ZNtP8tpDTb7Fwpa89YrapNWm27VLix+GhLkGx/UbuwIEuie9oUbFReIws/XVZcpTqtXcC0LB/ufukrg6ZMYGGzrGcc8wirK2VS5ZHPIJmKGWJBqNdI1wSC6T9D0YCMJXhJzaic6eqa2tMRZB5QDLFhCt1CAApRGMULscpkjONXQtFkE5hkjs8IwC2UCEf1qhSNdrq54Np0+f/dWCnaYPZQcdz7x+BSeBroMY6aaexcBWeKNc7wDGmP1SU+6yeUYRjF0/2455qfSkAzRPYOC5XpkRF7+W2AI4GsYuvHOxA3YkkLvOO5lfdmvyO1zV0JRYHuS/RAJJQELUSARYk1jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s70PTVp/OeNeIJxPAIMXD3PlHbR/Jeu9C+J8jFlhdf0=;
 b=G64e5EIwiKDki/+o5Q2Ep2pZN+yOOq6euWtJ8w/iX6FILI1LdHcm7SWWPn2MnaxRJZrcls3PzenEEZAazGvBCkjYsLxhMt7ZqUoe+pIESSVuEUbfoDn0WDB6wGLa8vF3m5tFGRWbHQbcsYgsESYc54xZJAsgRCmvb0/AS6Ou0ebXc+ZbjSoxabtydoFJ+9nwOqwwlO20aF23XTbLeYV5ew5UtKWCTWWIRT1NMs4xz19LjYgTWNQ4/GJ1NrtvJWsD47JbCqjUTO6HxXsdHFxcFTyzTtWq+ca5KWBCyOoVdErv3fqfHZr6cZum4c9CzBL7ubuAGaFpBjkig8mSdQDI2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by LV3PR11MB8694.namprd11.prod.outlook.com (2603:10b6:408:21b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Tue, 11 Feb
 2025 03:53:22 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 03:53:22 +0000
Date: Mon, 10 Feb 2025 19:54:22 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <niranjana.vishwanathapura@intel.com>,
 <ayaz.siddiqui@intel.com>, <tomasz.mistat@intel.com>
Subject: Re: [PATCH] drm/xe: Add per-engine pagefault and reset counts
Message-ID: <Z6rJ7l1hCE5d+c6e@lstrano-desk.jf.intel.com>
References: <20250210193545.96003-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250210193545.96003-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR03CA0295.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::30) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|LV3PR11MB8694:EE_
X-MS-Office365-Filtering-Correlation-Id: b2058dc6-56c0-41b1-4887-08dd4a4fa10d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bUxBellGK0RBelpGaVdDMHZ5eFB2Q2h2TklZditXOE9yOTdUMCtGbHU4Y1By?=
 =?utf-8?B?TkJlaXpJby81Y3ROOFViU3QxcjBuZFNWcTdTSGU2dUg2TVBaMkZSVUo4eGU0?=
 =?utf-8?B?VWN4MmYvR3l2akNIVG94RE1Dc0NLRGpmNWI4bjNsTjJkRksyN2drejNNK2NJ?=
 =?utf-8?B?c3AyeGlRWFZEelEvKzM2NCt5OU01aDZQSEE0akJEenVneWg1czNWVFV5clR5?=
 =?utf-8?B?V01seFBFOEVwWTB6S0hLdEo2cHNpK1RWZEh0ckdiWGN1MXRLQ0l5c1FySmdN?=
 =?utf-8?B?dGZPbC9oUTBnYlJKR21GMUdTY0ZJUnQwTy9UaWFBRDB1bU4yMk8xc0tqLzlh?=
 =?utf-8?B?c2dVcjBhbk9Id3FzMlZ2WHFpN01IVUprS0FhbXhFK2xTdk4zUXFpNFdnQ2M2?=
 =?utf-8?B?bDR5bXgrbmNwSHZhYUpsWWkwNWdiQVZFM3ZHdXBHbS9jM2R6VXFxM2ZXOTli?=
 =?utf-8?B?TDhhS3liTG82Q002Q3E3VzBGUTFWaEQzbUpNL2loOEZMTHlSN0lqRGs1TUFi?=
 =?utf-8?B?Yld3dFA2c2FKTVFHdXI2bG0zTjNBbjdtaHUwZ1Vac1ZrQzFuTUIxUmtpVmlC?=
 =?utf-8?B?Vnp3ZjgyZzhCMWlvR0RpVzFOYS8yenE5WUhsYmFNVlVqOUQ5VWRWQm96Rmxi?=
 =?utf-8?B?MS9kZ2FSaGZHcHZreEVhSG55MkROVmVPYjBzck5uS3pKS1MyaC8rbkk1aHk2?=
 =?utf-8?B?bDY4YVB5K0FxWko5a3plOW9iOHlUZWlpNUI4SU5OOTFwaDBGY1E0ZHhwamQ4?=
 =?utf-8?B?K1RKOG0rdkxGOUUreUxZN3pJdklISUllUGtOT2srMXVRTFVxUEFlTHgyMTVl?=
 =?utf-8?B?T21BRWloVGpLTjBLSG1TQXdlcjdBTDRYaEJyWXh6eHAxdjNCT1ZqOVlqNkxk?=
 =?utf-8?B?bUV1WGYrdmlpazVTUUo1Zkp1TGF1anl5VVhMbTBhUHRNSUhuaU9WRkJSeGx2?=
 =?utf-8?B?TUNnTVIzZGo1UFc3RTJ0TlhJSVFLWktnZVB4enZVMDBrK1Qva1Z0SmlSVVNV?=
 =?utf-8?B?UEJwcDVJMmV1aW9OWnJ3OGxqVWxWQ1RSL3RaNVhNSTJST3NGYjk0QlZydVdR?=
 =?utf-8?B?em9FY3oyaUhhd3k0RUI4WFVpaEFwOU9IK2FON0tKb1dIRm5PMmM0U1ZhQWZv?=
 =?utf-8?B?VUhnR0tPeG84TUlkamJtaUtCOUVqK1ErU0pDNy9COFN4akI1VkhjaTRZdE9U?=
 =?utf-8?B?b2pza3VGaWNxaFZrWnBiNFRhWGlWZWpXV0lCdklYZ0hrSjVXSTNxMFJVVExE?=
 =?utf-8?B?WktHck1iQUI1YVI0aGZ4U2tndzFVQ3huV1JjcHJleUhJVGx2QTlKMVV4WnJE?=
 =?utf-8?B?bHlCek8rZHFLL3ZqTis0R3hMSmhXNUxwQzN5VjBKRllpMnlwMk50RGtQRHJy?=
 =?utf-8?B?WlJzRUlMY0hwZE82QlBOYVhIUUZLNjh5ejU1enVzVGJmVU1BSFRVM3pJcDZH?=
 =?utf-8?B?Q3NmanFhSWphanNWV2pnaU85cXNtK3BONnY2OXhRU1RLUWRsakJlVjVYRjdj?=
 =?utf-8?B?bEc4Z3pETFpmd1VQYnp1MEJTaWhQdUhBRHBsY2o5OGUxeTdRbHdKdEYzMnNy?=
 =?utf-8?B?TWlrdHJsaUpBYTltR3ZpUDJpaTZEQjQxRWJJQW5WbTJSNFlRcE5KZEhYWFdT?=
 =?utf-8?B?K2Z0RU9BNElLNWZGQ2krb2RHUUs3d0lLRVZMWnR3V2JtSElPMllHQ3VGSmlo?=
 =?utf-8?B?a3FUY3hhRzRPZmJPSlU1Y2dQcWxJUzArMlE3OEVkZWRCOW5BcUhBcUlIS0RK?=
 =?utf-8?B?UnBtTEl0b1ZzOE9SUDZDQWJzdnZUTnRzTStIemdvMFBlME4vZUJvOTd3WGRJ?=
 =?utf-8?B?VTVmL0R3a1RSQ3drV2psdjV1OW12Nm9GM3RFRUtJdFZ4UGd2NWNxMjZXNkM1?=
 =?utf-8?Q?REPOdSJ4MZ/ZF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dW12QkR1RnUwR1hCWDdwNWNZRktXMU5hOGMvdnhUUE5neURVNWhOVEdrYjJP?=
 =?utf-8?B?ZFZwVlN5WHlyem1pWnRNSDQxTlYzNlFEcmp4VFlQM2FXMkhqT0cwMy9QcWgv?=
 =?utf-8?B?K2R5eTNwN3BCYlhJdWRKZFJqRzBpQnFTTEJZZFlHZUZYd1c1T1k2cmh4bGxI?=
 =?utf-8?B?YUl5di9RcFYxZCtRWEIvRFJKKzJMdy8rdXBOL3lKYmRQZXN0T2tCK0lTZWhH?=
 =?utf-8?B?bjhlSnEyeDdML3czRWVPYm8vSzZ4OE1CMzhoR2xlVU02TnhGaTlrZE1sZ09W?=
 =?utf-8?B?dTZzUnBROXpudG84aEEyVlRaVEN6b1NnYVVmTFZKYjg5WkNpSlp1MGFEZkRW?=
 =?utf-8?B?ai9Ic1NLQ21FNFZicTNNdW9Idm43NW9jdVkwUEVhK0FkSFZoZG00dHdNc0Ri?=
 =?utf-8?B?NmY4WmFKUEI5WDJHcmtBcWJIL2UzR1VEMCtKdnk2dUFFRXJTOXNHMUxjSTRN?=
 =?utf-8?B?aGE0UUdTRGR1M2ZuQllVK2pxZWNVbUxUOVZkVEcyOW9peTMyQW1rMU5QWjVR?=
 =?utf-8?B?RHZlNXFocEYrdTcwNzdPQnVDN296UjUzSldMNjVxcDBBeU1YNlF3bmVxQkNp?=
 =?utf-8?B?VjFyd2JEK3krRlpaRHUzb3dja2tGNk9mdk9tSmdJVWJ5RWYySzFPUFM4VHc0?=
 =?utf-8?B?S3c1VHlJWUFQZEhLUXZOTzlrckhZL2V0WVBwNFVVaGRZSGJ4em5uRDdFMlRh?=
 =?utf-8?B?UnRBazh6OHpxUjFPUmFmd2N5VENVS2RPdnZjTzN5MjlQemRDdEZ4akRqMmRV?=
 =?utf-8?B?ZEQvU002YktTdFFSNTZ4aEx4cVBmTTZRMHMvRm53M3RlbTVHZjFuK01uWG94?=
 =?utf-8?B?S0ZLbzd6WXhkV3h2R1R2SUIxc2NuSll5Q0VxaXhCTGdtelBSWVUvM0RPVTkr?=
 =?utf-8?B?VmdwQTR1QU1SdFB5dGdxbzI2WU13Smd3QTg5WTZoS1dCc2E5U2Z3S0xaQWk1?=
 =?utf-8?B?UlpPQVRvRWZrMGFaOVZQUW55ZGpSNVhWNTJPdlZUZkJtQ2NvdURtY2JjZkgz?=
 =?utf-8?B?QmVxbDh2cU5Qd21BZjhVRmp1bFRESUI5ei9hR2NSY2Z5YzkyS0tsWjVaUExY?=
 =?utf-8?B?T25jbXR4WUY0NWpubkYwYUpZMXRiZk9ockExWlMrSXlyTmdxT3hSWEVYeEth?=
 =?utf-8?B?QXNFNnlmd3oyaXdQeTVrYmoweHU0TEZPcXJwTVlReUlySTV2bUc0UUpndEh3?=
 =?utf-8?B?azVrZnVKQ0Z5WmgzVDQ4bTdla0Vla011WHFVNXFoWU1FM1IvbGxROFhEK2po?=
 =?utf-8?B?S3A5eURUeE05Z0dUR1UvYUJvSmlxcEU5Q3RpaW5GRzFubkhFUzByL1VzeFpS?=
 =?utf-8?B?bmc5OFlwOW5yNmFIMng5bWRUbmxJSy8vNGV5ZDQwVDM1cXhsYy9YdnhRODlM?=
 =?utf-8?B?em1tUWZLS0xLT0hUcXdQQStHNFlqUnNwemN2Zi9XYlFuV1JXeXhySG83NFo2?=
 =?utf-8?B?QW14ZFUzOVgyVjl1aTNMVURLT0NVMHRNNk9KaWtVRDkxU0tBL0VteEl3WlZ6?=
 =?utf-8?B?ZW9XdGFhQXV1NlhDaGNNTDdnb0QxdHp2akVDQ1JMM1UvR2RPQXRVL1FvOXIv?=
 =?utf-8?B?bjE3aHRPamNUeS9Kei80ZzBCSklEUVk4ckphRHVvL2NpL0tQYzhnUUpyVGhp?=
 =?utf-8?B?TDkyUEsxQS9DMkwvOG9IR25XSnZxSnVpOEZYQ0NCc3dYOHZjbmZnUVJWeS9X?=
 =?utf-8?B?ZkdpRkd3SVRYdUNGZTVGWGZObjBCckFEME9ZWUVReDlrWXNzMjdJaHJ6ZDFw?=
 =?utf-8?B?M3ZGclFidWNCb2NYRlo5a3B3c0tCc2dHWjZ5RlZWWm9GWUhod214aVk3MFdZ?=
 =?utf-8?B?S2JicFY3bGFoZ1hVL3MvbWxHbTZ4a3orTlJsYlFOT2xzb0g2QWNSbFYrNFNV?=
 =?utf-8?B?R0MwNURyR3FyRFdMcW5mUUU4YWlRdVpNTGRmRFpHcDBqUzdDcHJzeEpubEwr?=
 =?utf-8?B?QXZGY0ZQRU9sRnliaHhkdS9SV0dFd3ZkMXlaQzdTNnZLbmpFSDk2YlhSWVZs?=
 =?utf-8?B?SUhZTFZoZmlCTTlkK25Ob3l1emswWVd5SUhMdjUwd1h5WnVublhRR0NLTjll?=
 =?utf-8?B?bUx3MUF1ZTViOFU1NVg0V0NHNzZ0REpLNDFibStST0ZiUTJDSWFqZDUwUmZF?=
 =?utf-8?B?RHU5RUUyODFlWVBYTjMwNWRqS3N1V3VIZXJrOUZWcVdhMHVuWXo5MmxTWHh3?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2058dc6-56c0-41b1-4887-08dd4a4fa10d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 03:53:22.2992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: edCVC9rryAMfp9i/W7JWFXMKbNPQVrh1RtUaljx+ihnoMz3za8wmVKabERFSAHy5y5c5v5Jwb3ehxBVBRl8/RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8694
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

On Mon, Feb 10, 2025 at 07:35:44PM +0000, Jonathan Cavitt wrote:
> Add counters to all engines that count the number of pagefaults and
> engine resets that have been triggered on them.  Report these values
> during an engine reset.
>

I'm not opposed to adding stats for engines, but if we do, I think it
should be done in a generic way. See xe_gt_stats* for an example—that
is, do not use specific variables for counters; instead, use an array
indexed by an enum. I'd also probably wire to debugfs while here using
the aforementioned example as a template.

> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Tomasz Mistat <tomasz.mistat@intel.com>
> CC: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> CC: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_gt_pagefault.c    | 6 ++++++
>  drivers/gpu/drm/xe/xe_guc_submit.c      | 9 +++++++--
>  drivers/gpu/drm/xe/xe_hw_engine.c       | 3 +++
>  drivers/gpu/drm/xe/xe_hw_engine_types.h | 4 ++++
>  4 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt_pagefault.c b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> index 46701ca11ce0..04e973b20019 100644
> --- a/drivers/gpu/drm/xe/xe_gt_pagefault.c
> +++ b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> @@ -130,6 +130,7 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
>  {
>  	struct xe_vm *vm = xe_vma_vm(vma);
>  	struct xe_tile *tile = gt_to_tile(gt);
> +	struct xe_hw_engine *hwe = NULL;
>  	struct drm_exec exec;
>  	struct dma_fence *fence;
>  	ktime_t end = 0;
> @@ -140,6 +141,11 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
>  	xe_gt_stats_incr(gt, XE_GT_STATS_ID_VMA_PAGEFAULT_BYTES, xe_vma_size(vma));
>  
>  	trace_xe_vma_pagefault(vma);
> +
> +	hwe = xe_gt_hw_engine(gt, pf->engine_class, pf->engine_instance, false);
> +	if (hwe)
> +		atomic_inc(&hwe->pagefault_count);
> +

Page faults are a critical path so anything that is debug related (e.g.
stats) likely should compile out in non-debug builds.

>  	atomic = access_is_atomic(pf->access_type);
>  
>  	/* Check if VMA is valid */
> diff --git a/drivers/gpu/drm/xe/xe_guc_submit.c b/drivers/gpu/drm/xe/xe_guc_submit.c
> index 913c74d6e2ae..6f5d74340319 100644
> --- a/drivers/gpu/drm/xe/xe_guc_submit.c
> +++ b/drivers/gpu/drm/xe/xe_guc_submit.c
> @@ -1972,6 +1972,7 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
>  {
>  	struct xe_gt *gt = guc_to_gt(guc);
>  	struct xe_exec_queue *q;
> +	struct xe_hw_engine *hwe;
>  	u32 guc_id;
>  
>  	if (unlikely(len < 1))
> @@ -1983,8 +1984,12 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
>  	if (unlikely(!q))
>  		return -EPROTO;
>  
> -	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d",
> -		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id);
> +	hwe = q->hwe;
> +	atomic_inc(&hwe->reset_count);
> +
> +	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d, pagefault_count=%u, reset_count=%u",
> +		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id,
> +		   atomic_read(&hwe->pagefault_count), atomic_read(&hwe->reset_count));

Can you explain why this information is helpful? A better option than
dmesg might be a devcoredump too. I'll need a little more background
here I guess.

Matt

>  
>  	trace_xe_exec_queue_reset(q);
>  
> diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
> index fc447751fe78..0be6c38fe2a4 100644
> --- a/drivers/gpu/drm/xe/xe_hw_engine.c
> +++ b/drivers/gpu/drm/xe/xe_hw_engine.c
> @@ -516,6 +516,9 @@ static void hw_engine_init_early(struct xe_gt *gt, struct xe_hw_engine *hwe,
>  	hwe->fence_irq = &gt->fence_irq[info->class];
>  	hwe->engine_id = id;
>  
> +	atomic_set(&hwe->pagefault_count, 0);
> +	atomic_set(&hwe->reset_count, 0);
> +
>  	hwe->eclass = &gt->eclass[hwe->class];
>  	if (!hwe->eclass->sched_props.job_timeout_ms) {
>  		hwe->eclass->sched_props.job_timeout_ms = 5 * 1000;
> diff --git a/drivers/gpu/drm/xe/xe_hw_engine_types.h b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> index e4191a7a2c31..635dc3da6523 100644
> --- a/drivers/gpu/drm/xe/xe_hw_engine_types.h
> +++ b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> @@ -150,6 +150,10 @@ struct xe_hw_engine {
>  	struct xe_oa_unit *oa_unit;
>  	/** @hw_engine_group: the group of hw engines this one belongs to */
>  	struct xe_hw_engine_group *hw_engine_group;
> +	/** @pagefault_count: number of pagefaults associated with this engine */
> +	atomic_t pagefault_count;
> +	/** @reset_count: number of engine resets associated with this engine */
> +	atomic_t reset_count;
>  };
>  
>  enum xe_hw_engine_snapshot_source_id {
> -- 
> 2.43.0
> 
